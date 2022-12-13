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
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:12 GMT +00:00\00", align 1, !dbg !840
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !845
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !851

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1161, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i32 %1, metadata !1162, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i1 %2, metadata !1163, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1164
  %4 = icmp ugt i32 %0, 1, !dbg !1165
  br i1 %4, label %5, label %8, !dbg !1167

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #13, !dbg !1168
  br label %7, !dbg !1168

7:                                                ; preds = %5, %7
  br label %7, !dbg !1168, !llvm.loop !1170

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1171

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1172
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1175
  br i1 %2, label %11, label %13, !dbg !1177

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1178
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1178
  br label %21, !dbg !1180

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1181
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1181
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1183
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1186
  br i1 %2, label %17, label %19, !dbg !1188

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1189
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1189
  br label %21, !dbg !1191

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1192
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1192
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1194
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1195 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1199, metadata !DIExpression()), !dbg !1200
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1201

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #13, !dbg !1202
  br label %4, !dbg !1202

4:                                                ; preds = %2, %4
  br label %4, !dbg !1202, !llvm.loop !1205

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1206
  %7 = or i32 %6, 1, !dbg !1206
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1206
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1209
  br label %16, !dbg !1210

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1211
  %11 = or i32 %10, 1, !dbg !1211
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1211
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1214
  br label %16, !dbg !1215

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1216
  %15 = or i32 %14, 1, !dbg !1216
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1216
  br label %16, !dbg !1219

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1220
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1221 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1223, metadata !DIExpression()), !dbg !1224
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1225

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1226
  %4 = and i32 %3, -2, !dbg !1226
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1226
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1229
  %6 = and i32 %5, -2, !dbg !1229
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1229
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1230
  br label %18, !dbg !1231

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1232
  %9 = and i32 %8, -3, !dbg !1232
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1232
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1235
  %11 = and i32 %10, -2, !dbg !1235
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1235
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1236
  br label %18, !dbg !1237

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1238
  %14 = and i32 %13, -2, !dbg !1238
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1238
  br label %18, !dbg !1241

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1242
  %17 = and i32 %16, -2, !dbg !1242
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1242
  br label %18, !dbg !1245

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1246
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1247 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1249, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i32 undef, metadata !1249, metadata !DIExpression()), !dbg !1251
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1252
  %3 = and i32 %2, 65535, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %2, metadata !1250, metadata !DIExpression()), !dbg !1251
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1254
  %4 = and i32 %2, 1, !dbg !1255
  %5 = icmp eq i32 %4, 0, !dbg !1255
  br i1 %5, label %6, label %9, !dbg !1257

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1258
  %8 = icmp eq i32 %7, 0, !dbg !1258
  br i1 %8, label %13, label %9, !dbg !1260

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #13, !dbg !1261
  %12 = load void ()*, void ()** %11, align 4, !dbg !1261
  tail call void %12() #13, !dbg !1261
  br label %13, !dbg !1262

13:                                               ; preds = %9, %6
  ret void, !dbg !1262
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1267, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %1, metadata !1268, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1269, metadata !DIExpression()), !dbg !1270
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1271

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #13, !dbg !1272
  br label %6, !dbg !1272

6:                                                ; preds = %4, %6
  br label %6, !dbg !1272, !llvm.loop !1275

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1276
  br i1 %8, label %9, label %13, !dbg !1277

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #13, !dbg !1279
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #13, !dbg !1281
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1282
  br label %13, !dbg !1283

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1284

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1285
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1288
  %16 = or i32 %15, 1, !dbg !1288
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1288
  %17 = shl i32 %1, 2, !dbg !1289
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1290
  %19 = or i32 %18, %17, !dbg !1290
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1290
  br label %36, !dbg !1291

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1292
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1295
  %22 = or i32 %21, 2, !dbg !1295
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1295
  %23 = shl i32 %1, 2, !dbg !1296
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1297
  %25 = or i32 %24, %23, !dbg !1297
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1297
  br label %36, !dbg !1298

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1299
  %28 = or i32 %27, 1, !dbg !1302
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1303
  %30 = or i32 %29, %28, !dbg !1303
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1303
  br label %36, !dbg !1304

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1305
  %33 = or i32 %32, 1, !dbg !1308
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1309
  %35 = or i32 %34, %33, !dbg !1309
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1309
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1310
  br label %36, !dbg !1311

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1312
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1313 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1317, metadata !DIExpression()), !dbg !1319
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1320

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #13, !dbg !1321
  br label %4, !dbg !1321

4:                                                ; preds = %4, %2
  br label %4, !dbg !1321, !llvm.loop !1324

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1318, metadata !DIExpression()), !dbg !1319
  br label %8, !dbg !1325

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1318, metadata !DIExpression()), !dbg !1319
  br label %8, !dbg !1329

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1318, metadata !DIExpression()), !dbg !1319
  br label %8, !dbg !1332

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %10, metadata !1318, metadata !DIExpression()), !dbg !1319
  ret i32 %10, !dbg !1336
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1337 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !1339
  ret void, !dbg !1340
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1341 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !1342
  ret void, !dbg !1343
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMResetAll() local_unnamed_addr #3 !dbg !1344 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1349, metadata !DIExpression()), !dbg !1350
  %1 = load volatile i32, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1351
  %2 = or i32 %1, 8, !dbg !1351
  store volatile i32 %2, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1351
  %3 = load volatile i32, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1352
  %4 = and i32 %3, -9, !dbg !1352
  store volatile i32 %4, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1352
  ret i8 0, !dbg !1353
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMClockSelect(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1354 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1358, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 0, metadata !1359, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 0, metadata !1360, metadata !DIExpression()), !dbg !1361
  %2 = icmp ugt i8 %0, 2, !dbg !1362
  br i1 %2, label %9, label %3, !dbg !1364

3:                                                ; preds = %1
  %4 = zext i8 %0 to i32, !dbg !1365
  %5 = load volatile i32, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %5, metadata !1360, metadata !DIExpression()), !dbg !1361
  %6 = and i32 %5, -7, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %6, metadata !1360, metadata !DIExpression()), !dbg !1361
  %7 = shl nuw nsw i32 %4, 1, !dbg !1368
  %8 = or i32 %6, %7, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %8, metadata !1360, metadata !DIExpression()), !dbg !1361
  store volatile i32 %8, i32* inttoptr (i32 -2097109504 to i32*), align 512, !dbg !1370
  br label %9, !dbg !1371

9:                                                ; preds = %1, %3
  %10 = phi i8 [ 0, %3 ], [ 1, %1 ], !dbg !1361
  ret i8 %10, !dbg !1372
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMEnable(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !1373 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1377, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %1, metadata !1378, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %2, metadata !1379, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 %3, metadata !1380, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i8 0, metadata !1381, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 0, metadata !1383, metadata !DIExpression()), !dbg !1384
  %5 = zext i8 %0 to i32, !dbg !1385
  %6 = shl nuw nsw i32 %5, 4, !dbg !1386
  %7 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %6, !dbg !1387
  call void @llvm.dbg.value(metadata i8* %7, metadata !1382, metadata !DIExpression()), !dbg !1384
  %8 = bitcast i8* %7 to i32*, !dbg !1388
  %9 = load volatile i32, i32* %8, align 16, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %9, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %9, metadata !1383, metadata !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value)), !dbg !1384
  %10 = icmp eq i8 %1, 0, !dbg !1389
  %11 = or i32 %9, 48, !dbg !1391
  %12 = and i32 %9, -61, !dbg !1391
  %13 = or i32 %12, 16, !dbg !1391
  %14 = select i1 %10, i32 %13, i32 %11, !dbg !1391
  call void @llvm.dbg.value(metadata i32 undef, metadata !1383, metadata !DIExpression()), !dbg !1384
  %15 = icmp eq i8 %2, 0, !dbg !1392
  %16 = and i32 %14, -13, !dbg !1394
  %17 = select i1 %15, i32 0, i32 8, !dbg !1394
  call void @llvm.dbg.value(metadata !DIArgList(i32 %14, i32 %17), metadata !1383, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551603, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1384
  %18 = icmp eq i8 %3, 0, !dbg !1395
  %19 = select i1 %18, i32 0, i32 4, !dbg !1397
  %20 = or i32 %19, %17, !dbg !1394
  %21 = or i32 %20, %16, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %21, metadata !1383, metadata !DIExpression()), !dbg !1384
  store volatile i32 %21, i32* %8, align 16, !dbg !1398
  ret i8 0, !dbg !1399
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMDisable(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1400 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1404, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8 0, metadata !1405, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1406, metadata !DIExpression()), !dbg !1407
  %2 = zext i8 %0 to i32, !dbg !1408
  %3 = shl nuw nsw i32 %2, 4, !dbg !1409
  %4 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %3, !dbg !1410
  call void @llvm.dbg.value(metadata i8* %4, metadata !1406, metadata !DIExpression()), !dbg !1407
  %5 = bitcast i8* %4 to i32*, !dbg !1411
  %6 = load volatile i32, i32* %5, align 16, !dbg !1412
  %7 = and i32 %6, -17, !dbg !1412
  store volatile i32 %7, i32* %5, align 16, !dbg !1412
  ret i8 0, !dbg !1413
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halPWMKick(i8 noundef zeroext %0) local_unnamed_addr #0 !dbg !1414 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8 0, metadata !1417, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1418, metadata !DIExpression()), !dbg !1419
  %2 = zext i8 %0 to i32, !dbg !1420
  %3 = shl nuw nsw i32 %2, 4, !dbg !1421
  %4 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %3, !dbg !1422
  call void @llvm.dbg.value(metadata i8* %4, metadata !1418, metadata !DIExpression()), !dbg !1419
  %5 = bitcast i8* %4 to i32*, !dbg !1423
  %6 = load volatile i32, i32* %5, align 16, !dbg !1424
  %7 = or i32 %6, 1, !dbg !1424
  store volatile i32 %7, i32* %5, align 16, !dbg !1424
  %8 = tail call i32 @hal_gpt_delay_us(i32 noundef 125) #13, !dbg !1425
  ret i8 0, !dbg !1426
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMConfig(i8 noundef zeroext %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 !dbg !1427 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1433, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 %1, metadata !1434, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i16 %2, metadata !1435, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %3, metadata !1436, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 0, metadata !1437, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8 0, metadata !1438, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 0, metadata !1439, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 0, metadata !1440, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i16 0, metadata !1441, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i16 0, metadata !1442, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1443, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 0, metadata !1444, metadata !DIExpression()), !dbg !1448
  %5 = zext i8 %0 to i32, !dbg !1449
  %6 = shl nuw nsw i32 %5, 4, !dbg !1450
  %7 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %6, !dbg !1451
  call void @llvm.dbg.value(metadata i8* %7, metadata !1443, metadata !DIExpression()), !dbg !1448
  %8 = load i8, i8* inttoptr (i32 -2097109504 to i8*), align 512, !dbg !1452
  %9 = lshr i8 %8, 1, !dbg !1453
  %10 = and i8 %9, 3, !dbg !1453
  call void @llvm.dbg.value(metadata i8 %10, metadata !1438, metadata !DIExpression()), !dbg !1448
  %11 = zext i8 %10 to i32, !dbg !1454
  switch i32 %11, label %47 [
    i32 0, label %21
    i32 1, label %12
    i32 2, label %13
  ], !dbg !1455

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2000000, metadata !1439, metadata !DIExpression()), !dbg !1448
  br label %21, !dbg !1456

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8 0, metadata !1445, metadata !DIExpression()), !dbg !1457
  %14 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1458
  %15 = lshr i32 %14, 13, !dbg !1459
  %16 = and i32 %15, 7, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %16, metadata !1445, metadata !DIExpression()), !dbg !1457
  %17 = icmp ult i32 %16, 4, !dbg !1461
  br i1 %17, label %18, label %21, !dbg !1461

18:                                               ; preds = %13
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.halPWMQuery, i32 0, i32 %16, !dbg !1461
  %20 = load i32, i32* %19, align 4, !dbg !1461
  br label %21, !dbg !1461

21:                                               ; preds = %13, %18, %4, %12
  %22 = phi i32 [ 2000000, %12 ], [ 32700, %4 ], [ %20, %18 ], [ 0, %13 ], !dbg !1462
  call void @llvm.dbg.value(metadata i32 %22, metadata !1439, metadata !DIExpression()), !dbg !1448
  %23 = udiv i32 %22, %3, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %23, metadata !1440, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i16 %2, metadata !1441, metadata !DIExpression()), !dbg !1448
  %24 = trunc i32 %23 to i16, !dbg !1464
  %25 = sub i16 %24, %2, !dbg !1464
  call void @llvm.dbg.value(metadata i16 %25, metadata !1442, metadata !DIExpression()), !dbg !1448
  %26 = icmp eq i16 %25, 1, !dbg !1465
  %27 = zext i1 %26 to i16, !dbg !1467
  %28 = add i16 %27, %2, !dbg !1467
  %29 = select i1 %26, i16 0, i16 %25, !dbg !1467
  call void @llvm.dbg.value(metadata i16 %29, metadata !1442, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i16 %28, metadata !1441, metadata !DIExpression()), !dbg !1448
  %30 = icmp eq i8 %1, 0, !dbg !1468
  br i1 %30, label %31, label %39, !dbg !1470

31:                                               ; preds = %21
  %32 = getelementptr inbounds i8, i8* %7, i32 4, !dbg !1471
  %33 = bitcast i8* %32 to i32*, !dbg !1471
  %34 = load volatile i32, i32* %33, align 4, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %34, metadata !1444, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %34, metadata !1444, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !1448
  %35 = zext i16 %29 to i32, !dbg !1473
  %36 = shl nuw i32 %35, 16, !dbg !1474
  call void @llvm.dbg.value(metadata !DIArgList(i32 %34, i32 %36), metadata !1444, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65535, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %36, metadata !1444, metadata !DIExpression()), !dbg !1448
  %37 = zext i16 %28 to i32, !dbg !1475
  %38 = or i32 %36, %37, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %38, metadata !1444, metadata !DIExpression()), !dbg !1448
  store volatile i32 %38, i32* %33, align 4, !dbg !1477
  br label %47, !dbg !1478

39:                                               ; preds = %21
  %40 = getelementptr inbounds i8, i8* %7, i32 8, !dbg !1479
  %41 = bitcast i8* %40 to i32*, !dbg !1479
  %42 = load volatile i32, i32* %41, align 8, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %42, metadata !1444, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %42, metadata !1444, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !1448
  %43 = zext i16 %29 to i32, !dbg !1481
  %44 = shl nuw i32 %43, 16, !dbg !1482
  call void @llvm.dbg.value(metadata !DIArgList(i32 %42, i32 %44), metadata !1444, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 65535, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1448
  call void @llvm.dbg.value(metadata i32 %44, metadata !1444, metadata !DIExpression()), !dbg !1448
  %45 = zext i16 %28 to i32, !dbg !1483
  %46 = or i32 %44, %45, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %46, metadata !1444, metadata !DIExpression()), !dbg !1448
  store volatile i32 %46, i32* %41, align 8, !dbg !1485
  br label %47

47:                                               ; preds = %31, %39, %4
  %48 = phi i8 [ 1, %4 ], [ 0, %39 ], [ 0, %31 ], !dbg !1448
  ret i8 %48, !dbg !1486
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halPWMStateConfig(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !1487 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1491, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i16 %1, metadata !1492, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i16 %2, metadata !1493, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %3, metadata !1494, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 0, metadata !1495, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1496, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i32 0, metadata !1497, metadata !DIExpression()), !dbg !1498
  %5 = zext i16 %1 to i32, !dbg !1499
  %6 = and i32 %5, 61440, !dbg !1501
  %7 = icmp eq i32 %6, 0, !dbg !1501
  br i1 %7, label %8, label %27, !dbg !1502

8:                                                ; preds = %4
  %9 = zext i16 %2 to i32, !dbg !1503
  %10 = and i32 %9, 61440, !dbg !1504
  %11 = icmp eq i32 %10, 0, !dbg !1504
  br i1 %11, label %12, label %27, !dbg !1505

12:                                               ; preds = %8
  %13 = zext i8 %0 to i32, !dbg !1506
  %14 = shl nuw nsw i32 %13, 4, !dbg !1507
  %15 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %14, !dbg !1508
  call void @llvm.dbg.value(metadata i8* %15, metadata !1496, metadata !DIExpression()), !dbg !1498
  %16 = bitcast i8* %15 to i32*, !dbg !1509
  %17 = load volatile i32, i32* %16, align 16, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %17, metadata !1497, metadata !DIExpression()), !dbg !1498
  %18 = and i32 %17, 253, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %17, metadata !1497, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !1498
  %19 = shl nuw nsw i32 %5, 8, !dbg !1511
  call void @llvm.dbg.value(metadata !DIArgList(i32 %17, i32 %19), metadata !1497, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 253, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1498
  %20 = and i32 %19, 1048320, !dbg !1512
  %21 = or i32 %20, %18, !dbg !1512
  call void @llvm.dbg.value(metadata !DIArgList(i32 %18, i32 %20), metadata !1497, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1498
  %22 = shl i32 %9, 20, !dbg !1513
  %23 = or i32 %21, %22, !dbg !1514
  call void @llvm.dbg.value(metadata !DIArgList(i32 %21, i32 %22), metadata !1497, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1498
  %24 = icmp eq i8 %3, 0, !dbg !1515
  %25 = select i1 %24, i32 0, i32 2, !dbg !1517
  %26 = or i32 %23, %25, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %26, metadata !1497, metadata !DIExpression()), !dbg !1498
  store volatile i32 %26, i32* %16, align 16, !dbg !1518
  br label %27, !dbg !1519

27:                                               ; preds = %4, %8, %12
  %28 = phi i8 [ 0, %12 ], [ 1, %8 ], [ 1, %4 ], !dbg !1498
  ret i8 %28, !dbg !1520
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halPWMQuery(i8 noundef zeroext %0, i8 noundef zeroext %1, i16* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3, i8* nocapture noundef writeonly %4) local_unnamed_addr #4 !dbg !1521 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1526, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i16* %2, metadata !1528, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32* %3, metadata !1529, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %4, metadata !1530, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 0, metadata !1531, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 0, metadata !1532, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1533, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1534, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i16 0, metadata !1535, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i16 0, metadata !1536, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.IOT_PWM_TypeDef* null, metadata !1537, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 0, metadata !1538, metadata !DIExpression()), !dbg !1542
  %6 = zext i8 %0 to i32, !dbg !1543
  %7 = shl nuw nsw i32 %6, 4, !dbg !1544
  %8 = getelementptr inbounds i8, i8* inttoptr (i32 -2097109248 to i8*), i32 %7, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %8, metadata !1537, metadata !DIExpression()), !dbg !1542
  %9 = bitcast i8* %8 to i32*, !dbg !1546
  %10 = load volatile i32, i32* %9, align 16, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %10, metadata !1538, metadata !DIExpression()), !dbg !1542
  %11 = and i32 %10, 16, !dbg !1547
  %12 = icmp eq i32 %11, 0, !dbg !1547
  br i1 %12, label %18, label %13, !dbg !1549

13:                                               ; preds = %5
  store i8 1, i8* %4, align 1, !dbg !1550
  %14 = load i8, i8* inttoptr (i32 -2097109504 to i8*), align 512, !dbg !1552
  %15 = lshr i8 %14, 1, !dbg !1553
  %16 = and i8 %15, 3, !dbg !1553
  call void @llvm.dbg.value(metadata i8 %16, metadata !1532, metadata !DIExpression()), !dbg !1542
  %17 = zext i8 %16 to i32, !dbg !1554
  switch i32 %17, label %52 [
    i32 0, label %28
    i32 1, label %19
    i32 2, label %20
  ], !dbg !1555

18:                                               ; preds = %5
  store i8 0, i8* %4, align 1, !dbg !1556
  br label %49, !dbg !1558

19:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 2000000, metadata !1533, metadata !DIExpression()), !dbg !1542
  br label %28, !dbg !1559

20:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 0, metadata !1539, metadata !DIExpression()), !dbg !1560
  %21 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1561
  %22 = lshr i32 %21, 13, !dbg !1562
  %23 = and i32 %22, 7, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %23, metadata !1539, metadata !DIExpression()), !dbg !1560
  %24 = icmp ult i32 %23, 4, !dbg !1564
  br i1 %24, label %25, label %28, !dbg !1564

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.halPWMQuery, i32 0, i32 %23, !dbg !1564
  %27 = load i32, i32* %26, align 4, !dbg !1564
  br label %28, !dbg !1564

28:                                               ; preds = %20, %25, %13, %19
  %29 = phi i32 [ 2000000, %19 ], [ 32700, %13 ], [ %27, %25 ], [ 0, %20 ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %29, metadata !1533, metadata !DIExpression()), !dbg !1542
  %30 = icmp eq i8 %1, 0, !dbg !1566
  br i1 %30, label %31, label %37, !dbg !1568

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, i8* %8, i32 4, !dbg !1569
  %33 = bitcast i8* %32 to i32*, !dbg !1569
  %34 = load volatile i32, i32* %33, align 4, !dbg !1569
  call void @llvm.dbg.value(metadata i32 %34, metadata !1538, metadata !DIExpression()), !dbg !1542
  %35 = and i32 %34, 65535, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %35, metadata !1535, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1542
  %36 = and i32 %34, -65536, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %36, metadata !1536, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1542
  br label %41, !dbg !1573

37:                                               ; preds = %28
  %38 = getelementptr inbounds i8, i8* %8, i32 8, !dbg !1574
  %39 = bitcast i8* %38 to i32*, !dbg !1574
  %40 = load volatile i32, i32* %39, align 8, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %40, metadata !1538, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %40, metadata !1535, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %40, metadata !1536, metadata !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1542
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %35, %31 ], [ %40, %37 ]
  %43 = phi i32 [ %36, %31 ], [ %40, %37 ]
  %44 = lshr i32 %43, 16, !dbg !1576
  %45 = trunc i32 %42 to i16, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %44, metadata !1536, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1542
  call void @llvm.dbg.value(metadata i16 %45, metadata !1535, metadata !DIExpression()), !dbg !1542
  %46 = and i32 %42, 65535, !dbg !1577
  %47 = add nuw nsw i32 %44, %46, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %47, metadata !1534, metadata !DIExpression()), !dbg !1542
  %48 = udiv i32 %29, %47, !dbg !1579
  br label %49, !dbg !1580

49:                                               ; preds = %18, %41
  %50 = phi i32 [ %48, %41 ], [ 0, %18 ]
  %51 = phi i16 [ %45, %41 ], [ 0, %18 ]
  store i32 %50, i32* %3, align 4, !dbg !1542
  store i16 %51, i16* %2, align 2, !dbg !1542
  br label %52, !dbg !1581

52:                                               ; preds = %49, %13
  %53 = phi i8 [ 1, %13 ], [ 0, %49 ], !dbg !1542
  ret i8 %53, !dbg !1581
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1587, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 %1, metadata !1588, metadata !DIExpression()), !dbg !1591
  %3 = lshr i32 %0, 5, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %3, metadata !1589, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1591
  %4 = trunc i32 %0 to i16, !dbg !1593
  %5 = and i16 %4, 31, !dbg !1593
  call void @llvm.dbg.value(metadata i16 %4, metadata !1590, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1591
  %6 = trunc i32 %3 to i16, !dbg !1594
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1594

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1595
  %9 = zext i16 %5 to i32, !dbg !1598
  %10 = icmp ult i16 %5, 27, !dbg !1598
  br i1 %8, label %11, label %46, !dbg !1599

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1600

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1602
  %14 = xor i32 %13, -1, !dbg !1605
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1606
  %16 = and i32 %15, %14, !dbg !1606
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1606
  br label %44, !dbg !1607

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1608
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1608

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1609
  %21 = and i32 %20, -3, !dbg !1609
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1609
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1612
  %23 = or i32 %22, 2048, !dbg !1612
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1612
  br label %44, !dbg !1613

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1614
  %26 = and i32 %25, -3, !dbg !1614
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1614
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1617
  %28 = or i32 %27, 2048, !dbg !1617
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1617
  br label %44, !dbg !1618

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1619
  %31 = and i32 %30, -3, !dbg !1619
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1619
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1622
  %33 = or i32 %32, 2048, !dbg !1622
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1622
  br label %44, !dbg !1623

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1624
  %36 = and i32 %35, -3, !dbg !1624
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1624
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1627
  %38 = or i32 %37, 2048, !dbg !1627
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1627
  br label %44, !dbg !1628

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1629
  %41 = and i32 %40, -3, !dbg !1629
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1629
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1632
  %43 = or i32 %42, 2048, !dbg !1632
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1632
  br label %44, !dbg !1633

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1634
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1634
  br label %97, !dbg !1635

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1636

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1638
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1641
  %50 = or i32 %49, %48, !dbg !1641
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1641
  br label %68, !dbg !1642

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1643
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1643

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1644
  %55 = or i32 %54, 2050, !dbg !1644
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1644
  br label %68, !dbg !1647

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1648
  %58 = or i32 %57, 2050, !dbg !1648
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1648
  br label %68, !dbg !1651

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1652
  %61 = or i32 %60, 2050, !dbg !1652
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1652
  br label %68, !dbg !1655

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1656
  %64 = or i32 %63, 2050, !dbg !1656
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1656
  br label %68, !dbg !1659

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1660
  %67 = or i32 %66, 2050, !dbg !1660
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1660
  br label %68, !dbg !1663

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1664
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1664
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1665
  %72 = zext i16 %5 to i32, !dbg !1667
  %73 = icmp eq i16 %5, 0, !dbg !1667
  br i1 %71, label %74, label %87, !dbg !1668

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1669

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1671
  %77 = xor i32 %76, -1, !dbg !1674
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1675
  %79 = and i32 %78, %77, !dbg !1675
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1675
  br label %85, !dbg !1676

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1677
  %82 = and i32 %81, -3, !dbg !1677
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1677
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1679
  %84 = or i32 %83, 2048, !dbg !1679
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1679
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1680
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1680
  br label %97, !dbg !1681

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1682

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1684
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1687
  %91 = or i32 %90, %89, !dbg !1687
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1687
  br label %95, !dbg !1688

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1689
  %94 = or i32 %93, 2050, !dbg !1689
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1689
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1691
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1691
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1591
  ret i32 %98, !dbg !1692
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1695, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 %1, metadata !1696, metadata !DIExpression()), !dbg !1699
  %3 = lshr i32 %0, 5, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %3, metadata !1697, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1699
  %4 = trunc i32 %0 to i16, !dbg !1701
  %5 = and i16 %4, 31, !dbg !1701
  call void @llvm.dbg.value(metadata i16 %5, metadata !1698, metadata !DIExpression()), !dbg !1699
  %6 = trunc i32 %3 to i16, !dbg !1702
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1702

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1703
  %9 = zext i16 %5 to i32, !dbg !1706
  %10 = shl nuw i32 1, %9, !dbg !1706
  br i1 %8, label %12, label %11, !dbg !1707

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1708
  br label %19, !dbg !1710

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1711
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1713
  %15 = zext i16 %5 to i32, !dbg !1715
  %16 = shl nuw i32 1, %15, !dbg !1715
  br i1 %14, label %18, label %17, !dbg !1716

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1717
  br label %19, !dbg !1719

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1720
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1699
  ret i32 %20, !dbg !1722
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1727, metadata !DIExpression()), !dbg !1731
  %2 = lshr i32 %0, 5, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %2, metadata !1728, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1731
  %3 = and i32 %0, 31, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %0, metadata !1729, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1731
  %4 = trunc i32 %2 to i16, !dbg !1734
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1734

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1730, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1731
  br label %6, !dbg !1735

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1737
  %9 = lshr i32 %8, %3, !dbg !1737
  %10 = trunc i32 %9 to i8, !dbg !1737
  %11 = and i8 %10, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i8 %11, metadata !1730, metadata !DIExpression()), !dbg !1731
  br label %12, !dbg !1738

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1731
  ret i8 %13, !dbg !1739
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1742, metadata !DIExpression()), !dbg !1746
  %2 = lshr i32 %0, 5, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %2, metadata !1743, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1746
  %3 = and i32 %0, 31, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %0, metadata !1744, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1745, metadata !DIExpression()), !dbg !1746
  %4 = trunc i32 %2 to i16, !dbg !1749
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1749

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1745, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1746
  br label %6, !dbg !1750

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1752
  %9 = lshr i32 %8, %3, !dbg !1752
  %10 = trunc i32 %9 to i8, !dbg !1752
  %11 = and i8 %10, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i8 %11, metadata !1745, metadata !DIExpression()), !dbg !1746
  br label %12, !dbg !1753

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1746
  ret i8 %13, !dbg !1754
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1757, metadata !DIExpression()), !dbg !1761
  %2 = lshr i32 %0, 5, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %2, metadata !1758, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  %3 = and i32 %0, 31, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %0, metadata !1759, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1761
  %4 = trunc i32 %2 to i16, !dbg !1764
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1764

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1760, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1761
  br label %6, !dbg !1765

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1767
  %9 = lshr i32 %8, %3, !dbg !1767
  %10 = trunc i32 %9 to i8, !dbg !1767
  %11 = and i8 %10, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i8 %11, metadata !1760, metadata !DIExpression()), !dbg !1761
  br label %12, !dbg !1768

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1761
  ret i8 %13, !dbg !1769
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1774, metadata !DIExpression()), !dbg !1777
  %2 = lshr i32 %0, 5, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %2, metadata !1775, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1777
  %3 = trunc i32 %0 to i16, !dbg !1779
  %4 = and i16 %3, 31, !dbg !1779
  call void @llvm.dbg.value(metadata i16 %3, metadata !1776, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1777
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1780
  %6 = trunc i32 %2 to i16, !dbg !1781
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1781

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1782
  br i1 %8, label %9, label %12, !dbg !1785

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1786
  %11 = shl nuw nsw i32 1, %10, !dbg !1787
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1787
  br label %49, !dbg !1789

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1790
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1790

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1791
  %16 = and i32 %15, -29, !dbg !1791
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1791
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1794
  %18 = or i32 %17, 2052, !dbg !1794
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1794
  br label %49, !dbg !1795

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1796
  %21 = and i32 %20, -29, !dbg !1796
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1796
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1799
  %23 = or i32 %22, 2052, !dbg !1799
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1799
  br label %49, !dbg !1800

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1801
  %26 = and i32 %25, -29, !dbg !1801
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1801
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1804
  %28 = or i32 %27, 2052, !dbg !1804
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1804
  br label %49, !dbg !1805

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1806
  %31 = and i32 %30, -29, !dbg !1806
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1806
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1809
  %33 = or i32 %32, 2052, !dbg !1809
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1809
  br label %49, !dbg !1810

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1811
  %36 = and i32 %35, -29, !dbg !1811
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1811
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1814
  %38 = or i32 %37, 2052, !dbg !1814
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1814
  br label %49, !dbg !1815

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1816
  br i1 %40, label %41, label %46, !dbg !1818

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1819
  %43 = and i32 %42, -29, !dbg !1819
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1819
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1821
  %45 = or i32 %44, 2052, !dbg !1821
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1821
  br label %49, !dbg !1822

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1823
  %48 = shl nuw i32 1, %47, !dbg !1823
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1823
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1777
  ret i32 %50, !dbg !1825
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1826 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1828, metadata !DIExpression()), !dbg !1831
  %2 = lshr i32 %0, 5, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %2, metadata !1829, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1831
  %3 = trunc i32 %0 to i16, !dbg !1833
  %4 = and i16 %3, 31, !dbg !1833
  call void @llvm.dbg.value(metadata i16 %3, metadata !1830, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1831
  %5 = trunc i32 %2 to i16, !dbg !1834
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1834

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1835
  br i1 %7, label %8, label %11, !dbg !1838

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1839
  %10 = shl nuw nsw i32 1, %9, !dbg !1840
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1840
  br label %48, !dbg !1842

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1843
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1843

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1844
  %15 = and i32 %14, -29, !dbg !1844
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1844
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1847
  %17 = or i32 %16, 2048, !dbg !1847
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1847
  br label %48, !dbg !1848

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1849
  %20 = and i32 %19, -29, !dbg !1849
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1849
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1852
  %22 = or i32 %21, 2048, !dbg !1852
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1852
  br label %48, !dbg !1853

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1854
  %25 = and i32 %24, -29, !dbg !1854
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1854
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1857
  %27 = or i32 %26, 2048, !dbg !1857
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1857
  br label %48, !dbg !1858

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1859
  %30 = and i32 %29, -29, !dbg !1859
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1859
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1862
  %32 = or i32 %31, 2048, !dbg !1862
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1862
  br label %48, !dbg !1863

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1864
  %35 = and i32 %34, -29, !dbg !1864
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1864
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1867
  %37 = or i32 %36, 2048, !dbg !1867
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1867
  br label %48, !dbg !1868

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1869
  br i1 %39, label %40, label %45, !dbg !1871

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1872
  %42 = and i32 %41, -29, !dbg !1872
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1872
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1874
  %44 = or i32 %43, 2048, !dbg !1874
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1874
  br label %48, !dbg !1875

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1876
  %47 = shl nuw i32 1, %46, !dbg !1876
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1876
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1831
  ret i32 %49, !dbg !1878
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1881, metadata !DIExpression()), !dbg !1884
  %2 = lshr i32 %0, 5, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %2, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1884
  %3 = trunc i32 %0 to i16, !dbg !1886
  %4 = and i16 %3, 31, !dbg !1886
  call void @llvm.dbg.value(metadata i16 %3, metadata !1883, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1884
  %5 = trunc i32 %2 to i16, !dbg !1887
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1887

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1888
  br i1 %7, label %8, label %11, !dbg !1891

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1892
  %10 = shl nuw nsw i32 1, %9, !dbg !1893
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1893
  br label %48, !dbg !1895

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1896
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1896

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1897
  %15 = and i32 %14, -29, !dbg !1897
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1897
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1900
  %17 = or i32 %16, 2048, !dbg !1900
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1900
  br label %48, !dbg !1901

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1902
  %20 = and i32 %19, -29, !dbg !1902
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1902
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1905
  %22 = or i32 %21, 2048, !dbg !1905
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1905
  br label %48, !dbg !1906

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1907
  %25 = and i32 %24, -29, !dbg !1907
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1907
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1910
  %27 = or i32 %26, 2048, !dbg !1910
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1910
  br label %48, !dbg !1911

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1912
  %30 = and i32 %29, -29, !dbg !1912
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1912
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1915
  %32 = or i32 %31, 2048, !dbg !1915
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1915
  br label %48, !dbg !1916

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1917
  %35 = and i32 %34, -29, !dbg !1917
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1917
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1920
  %37 = or i32 %36, 2048, !dbg !1920
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1920
  br label %48, !dbg !1921

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1922
  br i1 %39, label %40, label %45, !dbg !1924

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1925
  %42 = and i32 %41, -29, !dbg !1925
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1925
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1927
  %44 = or i32 %43, 2048, !dbg !1927
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1927
  br label %48, !dbg !1928

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1929
  %47 = shl nuw i32 1, %46, !dbg !1929
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1929
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1884
  ret i32 %49, !dbg !1931
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1934, metadata !DIExpression()), !dbg !1937
  %2 = lshr i32 %0, 5, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %2, metadata !1935, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1937
  %3 = trunc i32 %0 to i16, !dbg !1939
  %4 = and i16 %3, 31, !dbg !1939
  call void @llvm.dbg.value(metadata i16 %3, metadata !1936, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1937
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1940
  %6 = trunc i32 %2 to i16, !dbg !1941
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1941

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1942
  br i1 %8, label %9, label %12, !dbg !1945

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1946
  %11 = shl nuw nsw i32 1, %10, !dbg !1947
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1947
  br label %49, !dbg !1949

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1950
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1950

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1951
  %16 = and i32 %15, -29, !dbg !1951
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1951
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1954
  %18 = or i32 %17, 2068, !dbg !1954
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1954
  br label %49, !dbg !1955

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1956
  %21 = and i32 %20, -29, !dbg !1956
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1956
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1959
  %23 = or i32 %22, 2068, !dbg !1959
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1959
  br label %49, !dbg !1960

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1961
  %26 = and i32 %25, -29, !dbg !1961
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1961
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1964
  %28 = or i32 %27, 2068, !dbg !1964
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1964
  br label %49, !dbg !1965

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1966
  %31 = and i32 %30, -29, !dbg !1966
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1966
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1969
  %33 = or i32 %32, 2068, !dbg !1969
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1969
  br label %49, !dbg !1970

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1971
  %36 = and i32 %35, -29, !dbg !1971
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1971
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1974
  %38 = or i32 %37, 2068, !dbg !1974
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1974
  br label %49, !dbg !1975

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1976
  br i1 %40, label %41, label %46, !dbg !1978

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1979
  %43 = and i32 %42, -29, !dbg !1979
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1979
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1981
  %45 = or i32 %44, 2068, !dbg !1981
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1981
  br label %49, !dbg !1982

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1983
  %48 = shl nuw i32 1, %47, !dbg !1983
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1983
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1937
  ret i32 %50, !dbg !1985
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1988, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 %1, metadata !1989, metadata !DIExpression()), !dbg !1992
  %3 = lshr i32 %0, 4, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %3, metadata !1990, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1992
  %4 = trunc i32 %0 to i16, !dbg !1994
  %5 = and i16 %4, 15, !dbg !1994
  call void @llvm.dbg.value(metadata i16 %4, metadata !1991, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1992
  %6 = trunc i32 %3 to i16, !dbg !1995
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1995

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1996
  %9 = zext i16 %8 to i32, !dbg !1996
  %10 = shl nuw i32 3, %9, !dbg !1998
  %11 = xor i32 %10, -1, !dbg !1999
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2000
  %13 = and i32 %12, %11, !dbg !2000
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2000
  %14 = lshr i8 %1, 2, !dbg !2001
  %15 = zext i8 %14 to i32, !dbg !2001
  %16 = add nsw i32 %15, -1, !dbg !2002
  %17 = shl i32 %16, %9, !dbg !2003
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2004
  %19 = or i32 %18, %17, !dbg !2004
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2004
  br label %131, !dbg !2005

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2006
  br i1 %21, label %22, label %35, !dbg !2008

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2009
  %24 = zext i16 %23 to i32, !dbg !2009
  %25 = shl nuw nsw i32 3, %24, !dbg !2011
  %26 = xor i32 %25, -1, !dbg !2012
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2013
  %28 = and i32 %27, %26, !dbg !2013
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2013
  %29 = lshr i8 %1, 2, !dbg !2014
  %30 = zext i8 %29 to i32, !dbg !2014
  %31 = add nsw i32 %30, -1, !dbg !2015
  %32 = shl nsw i32 %31, %24, !dbg !2016
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2017
  %34 = or i32 %33, %32, !dbg !2017
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2017
  br label %131, !dbg !2018

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2019
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2019

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2020
  %39 = and i32 %38, -449, !dbg !2020
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2020
  %40 = lshr i8 %1, 1, !dbg !2023
  %41 = zext i8 %40 to i32, !dbg !2023
  %42 = shl nuw nsw i32 %41, 6, !dbg !2024
  %43 = add nsw i32 %42, -64, !dbg !2024
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2025
  %45 = or i32 %44, %43, !dbg !2025
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2025
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2026
  %47 = or i32 %46, 2048, !dbg !2026
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2026
  br label %131, !dbg !2027

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2028
  %50 = and i32 %49, -449, !dbg !2028
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2028
  %51 = lshr i8 %1, 1, !dbg !2031
  %52 = zext i8 %51 to i32, !dbg !2031
  %53 = shl nuw nsw i32 %52, 6, !dbg !2032
  %54 = add nsw i32 %53, -64, !dbg !2032
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2033
  %56 = or i32 %55, %54, !dbg !2033
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2033
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2034
  %58 = or i32 %57, 2048, !dbg !2034
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2034
  br label %131, !dbg !2035

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2036
  %61 = and i32 %60, -449, !dbg !2036
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2036
  %62 = lshr i8 %1, 1, !dbg !2039
  %63 = zext i8 %62 to i32, !dbg !2039
  %64 = shl nuw nsw i32 %63, 6, !dbg !2040
  %65 = add nsw i32 %64, -64, !dbg !2040
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2041
  %67 = or i32 %66, %65, !dbg !2041
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2041
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2042
  %69 = or i32 %68, 2048, !dbg !2042
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2042
  br label %131, !dbg !2043

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2044
  %72 = and i32 %71, -449, !dbg !2044
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2044
  %73 = lshr i8 %1, 1, !dbg !2047
  %74 = zext i8 %73 to i32, !dbg !2047
  %75 = shl nuw nsw i32 %74, 6, !dbg !2048
  %76 = add nsw i32 %75, -64, !dbg !2048
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2049
  %78 = or i32 %77, %76, !dbg !2049
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2049
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2050
  %80 = or i32 %79, 2048, !dbg !2050
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2050
  br label %131, !dbg !2051

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2052
  %83 = and i32 %82, -449, !dbg !2052
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2052
  %84 = lshr i8 %1, 1, !dbg !2055
  %85 = zext i8 %84 to i32, !dbg !2055
  %86 = shl nuw nsw i32 %85, 6, !dbg !2056
  %87 = add nsw i32 %86, -64, !dbg !2056
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2057
  %89 = or i32 %88, %87, !dbg !2057
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2057
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2058
  %91 = or i32 %90, 2048, !dbg !2058
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2058
  br label %131, !dbg !2059

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2060
  br i1 %93, label %94, label %105, !dbg !2062

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2063
  %96 = and i32 %95, -449, !dbg !2063
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2063
  %97 = lshr i8 %1, 1, !dbg !2065
  %98 = zext i8 %97 to i32, !dbg !2065
  %99 = shl nuw nsw i32 %98, 6, !dbg !2066
  %100 = add nsw i32 %99, -64, !dbg !2066
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2067
  %102 = or i32 %101, %100, !dbg !2067
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2067
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2068
  %104 = or i32 %103, 2048, !dbg !2068
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2068
  br label %131, !dbg !2069

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2070
  %107 = zext i16 %106 to i32, !dbg !2070
  %108 = shl nuw i32 3, %107, !dbg !2072
  %109 = xor i32 %108, -1, !dbg !2073
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2074
  %111 = and i32 %110, %109, !dbg !2074
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2074
  %112 = lshr i8 %1, 2, !dbg !2075
  %113 = zext i8 %112 to i32, !dbg !2075
  %114 = add nsw i32 %113, -1, !dbg !2076
  %115 = shl i32 %114, %107, !dbg !2077
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2078
  %117 = or i32 %116, %115, !dbg !2078
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2078
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2079
  %120 = zext i16 %119 to i32, !dbg !2079
  %121 = shl nuw i32 3, %120, !dbg !2080
  %122 = xor i32 %121, -1, !dbg !2081
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2082
  %124 = and i32 %123, %122, !dbg !2082
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2082
  %125 = lshr i8 %1, 2, !dbg !2083
  %126 = zext i8 %125 to i32, !dbg !2083
  %127 = add nsw i32 %126, -1, !dbg !2084
  %128 = shl i32 %127, %120, !dbg !2085
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2086
  %130 = or i32 %129, %128, !dbg !2086
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2086
  br label %131, !dbg !2087

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1992
  ret i32 %132, !dbg !2088
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !2089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8* %1, metadata !2094, metadata !DIExpression()), !dbg !2098
  %3 = lshr i32 %0, 4, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %3, metadata !2095, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2098
  %4 = trunc i32 %0 to i16, !dbg !2100
  %5 = and i16 %4, 15, !dbg !2100
  call void @llvm.dbg.value(metadata i16 %4, metadata !2096, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %6 = trunc i32 %3 to i16, !dbg !2101
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2101

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %8, metadata !2097, metadata !DIExpression()), !dbg !2098
  %9 = shl nuw nsw i16 %5, 1, !dbg !2104
  %10 = zext i16 %9 to i32, !dbg !2104
  %11 = shl nuw i32 3, %10, !dbg !2105
  %12 = and i32 %8, %11, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %12, metadata !2097, metadata !DIExpression()), !dbg !2098
  %13 = lshr i32 %12, %10, !dbg !2107
  %14 = trunc i32 %13 to i8, !dbg !2108
  %15 = shl i8 %14, 2, !dbg !2108
  %16 = add i8 %15, 4, !dbg !2108
  br label %89, !dbg !2109

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2110
  br i1 %18, label %19, label %29, !dbg !2112

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %20, metadata !2097, metadata !DIExpression()), !dbg !2098
  %21 = shl nuw nsw i16 %5, 1, !dbg !2115
  %22 = zext i16 %21 to i32, !dbg !2115
  %23 = shl nuw nsw i32 3, %22, !dbg !2116
  %24 = and i32 %20, %23, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %24, metadata !2097, metadata !DIExpression()), !dbg !2098
  %25 = lshr i32 %24, %22, !dbg !2118
  %26 = trunc i32 %25 to i8, !dbg !2119
  %27 = shl i8 %26, 2, !dbg !2119
  %28 = add i8 %27, 4, !dbg !2119
  br label %89, !dbg !2120

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2121
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2121

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %32, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %32, metadata !2097, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %33 = lshr i32 %32, 5, !dbg !2125
  %34 = trunc i32 %33 to i8, !dbg !2126
  %35 = and i8 %34, 14, !dbg !2126
  %36 = add nuw nsw i8 %35, 2, !dbg !2126
  br label %89, !dbg !2127

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %38, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %38, metadata !2097, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %39 = lshr i32 %38, 5, !dbg !2131
  %40 = trunc i32 %39 to i8, !dbg !2132
  %41 = and i8 %40, 14, !dbg !2132
  %42 = add nuw nsw i8 %41, 2, !dbg !2132
  br label %89, !dbg !2133

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %44, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %44, metadata !2097, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %45 = lshr i32 %44, 5, !dbg !2137
  %46 = trunc i32 %45 to i8, !dbg !2138
  %47 = and i8 %46, 14, !dbg !2138
  %48 = add nuw nsw i8 %47, 2, !dbg !2138
  br label %89, !dbg !2139

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %50, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %50, metadata !2097, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %51 = lshr i32 %50, 5, !dbg !2143
  %52 = trunc i32 %51 to i8, !dbg !2144
  %53 = and i8 %52, 14, !dbg !2144
  %54 = add nuw nsw i8 %53, 2, !dbg !2144
  br label %89, !dbg !2145

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %56, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %56, metadata !2097, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %57 = lshr i32 %56, 5, !dbg !2149
  %58 = trunc i32 %57 to i8, !dbg !2150
  %59 = and i8 %58, 14, !dbg !2150
  %60 = add nuw nsw i8 %59, 2, !dbg !2150
  br label %89, !dbg !2151

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2152
  br i1 %62, label %63, label %69, !dbg !2154

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %64, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %64, metadata !2097, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2098
  %65 = lshr i32 %64, 5, !dbg !2157
  %66 = trunc i32 %65 to i8, !dbg !2158
  %67 = and i8 %66, 14, !dbg !2158
  %68 = add nuw nsw i8 %67, 2, !dbg !2158
  br label %89, !dbg !2159

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %70, metadata !2097, metadata !DIExpression()), !dbg !2098
  %71 = shl nuw nsw i16 %5, 1, !dbg !2162
  %72 = zext i16 %71 to i32, !dbg !2162
  %73 = shl nuw i32 3, %72, !dbg !2163
  %74 = and i32 %70, %73, !dbg !2164
  call void @llvm.dbg.value(metadata i32 %74, metadata !2097, metadata !DIExpression()), !dbg !2098
  %75 = lshr i32 %74, %72, !dbg !2165
  %76 = trunc i32 %75 to i8, !dbg !2166
  %77 = shl i8 %76, 2, !dbg !2166
  %78 = add i8 %77, 4, !dbg !2166
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %80, metadata !2097, metadata !DIExpression()), !dbg !2098
  %81 = shl nuw nsw i16 %5, 1, !dbg !2168
  %82 = zext i16 %81 to i32, !dbg !2168
  %83 = shl nuw i32 3, %82, !dbg !2169
  %84 = and i32 %80, %83, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %84, metadata !2097, metadata !DIExpression()), !dbg !2098
  %85 = lshr i32 %84, %82, !dbg !2171
  %86 = trunc i32 %85 to i8, !dbg !2172
  %87 = shl i8 %86, 2, !dbg !2172
  %88 = add i8 %87, 4, !dbg !2172
  br label %89, !dbg !2173

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2174
  br label %91, !dbg !2175

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2098
  ret i32 %92, !dbg !2175
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2181, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1, metadata !2182, metadata !DIExpression()), !dbg !2185
  %3 = lshr i32 %0, 5, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %3, metadata !2183, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2185
  %4 = trunc i32 %0 to i16, !dbg !2187
  %5 = and i16 %4, 31, !dbg !2187
  call void @llvm.dbg.value(metadata i16 %5, metadata !2184, metadata !DIExpression()), !dbg !2185
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2188

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2183, metadata !DIExpression()), !dbg !2185
  %7 = trunc i32 %3 to i16, !dbg !2189
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2189

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2192
  %10 = shl nuw i32 1, %9, !dbg !2194
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2195
  %12 = or i32 %11, %10, !dbg !2195
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2195
  br label %32, !dbg !2196

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2197
  %15 = shl nuw i32 1, %14, !dbg !2198
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2199
  %17 = or i32 %16, %15, !dbg !2199
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2199
  br label %32, !dbg !2200

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2201
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2201

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2204
  %22 = shl nuw i32 1, %21, !dbg !2206
  %23 = xor i32 %22, -1, !dbg !2207
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2208
  %25 = and i32 %24, %23, !dbg !2208
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2208
  br label %32, !dbg !2209

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2210
  %28 = shl nuw i32 1, %27, !dbg !2211
  %29 = xor i32 %28, -1, !dbg !2212
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2213
  %31 = and i32 %30, %29, !dbg !2213
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2213
  br label %32, !dbg !2214

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2215
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 %1, metadata !2223, metadata !DIExpression()), !dbg !2225
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
  ], !dbg !2226

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %4, metadata !2224, metadata !DIExpression()), !dbg !2225
  %5 = and i32 %4, -16, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %5, metadata !2224, metadata !DIExpression()), !dbg !2225
  %6 = zext i8 %1 to i32, !dbg !2230
  %7 = or i32 %5, %6, !dbg !2231
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2232
  br label %187, !dbg !2233

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %9, metadata !2224, metadata !DIExpression()), !dbg !2225
  %10 = and i32 %9, -241, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %10, metadata !2224, metadata !DIExpression()), !dbg !2225
  %11 = zext i8 %1 to i32, !dbg !2236
  %12 = shl nuw nsw i32 %11, 4, !dbg !2237
  %13 = or i32 %10, %12, !dbg !2238
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2239
  br label %187, !dbg !2240

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %15, metadata !2224, metadata !DIExpression()), !dbg !2225
  %16 = and i32 %15, -3841, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %16, metadata !2224, metadata !DIExpression()), !dbg !2225
  %17 = zext i8 %1 to i32, !dbg !2243
  %18 = shl nuw nsw i32 %17, 8, !dbg !2244
  %19 = or i32 %16, %18, !dbg !2245
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2246
  br label %187, !dbg !2247

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %21, metadata !2224, metadata !DIExpression()), !dbg !2225
  %22 = and i32 %21, -61441, !dbg !2249
  call void @llvm.dbg.value(metadata i32 %22, metadata !2224, metadata !DIExpression()), !dbg !2225
  %23 = zext i8 %1 to i32, !dbg !2250
  %24 = shl nuw nsw i32 %23, 12, !dbg !2251
  %25 = or i32 %22, %24, !dbg !2252
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2253
  br label %187, !dbg !2254

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2255
  call void @llvm.dbg.value(metadata i32 %27, metadata !2224, metadata !DIExpression()), !dbg !2225
  %28 = and i32 %27, -983041, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %28, metadata !2224, metadata !DIExpression()), !dbg !2225
  %29 = zext i8 %1 to i32, !dbg !2257
  %30 = shl nuw nsw i32 %29, 16, !dbg !2258
  %31 = or i32 %28, %30, !dbg !2259
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2260
  br label %187, !dbg !2261

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %33, metadata !2224, metadata !DIExpression()), !dbg !2225
  %34 = and i32 %33, -15728641, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %34, metadata !2224, metadata !DIExpression()), !dbg !2225
  %35 = zext i8 %1 to i32, !dbg !2264
  %36 = shl nuw nsw i32 %35, 20, !dbg !2265
  %37 = or i32 %34, %36, !dbg !2266
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2267
  br label %187, !dbg !2268

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %39, metadata !2224, metadata !DIExpression()), !dbg !2225
  %40 = and i32 %39, -251658241, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %40, metadata !2224, metadata !DIExpression()), !dbg !2225
  %41 = zext i8 %1 to i32, !dbg !2271
  %42 = shl nuw i32 %41, 24, !dbg !2272
  %43 = or i32 %40, %42, !dbg !2273
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2274
  br label %187, !dbg !2275

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %45, metadata !2224, metadata !DIExpression()), !dbg !2225
  %46 = and i32 %45, 268435455, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %46, metadata !2224, metadata !DIExpression()), !dbg !2225
  %47 = zext i8 %1 to i32, !dbg !2278
  %48 = shl i32 %47, 28, !dbg !2279
  %49 = or i32 %46, %48, !dbg !2280
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2281
  br label %187, !dbg !2282

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2283
  call void @llvm.dbg.value(metadata i32 %51, metadata !2224, metadata !DIExpression()), !dbg !2225
  %52 = and i32 %51, -16, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %52, metadata !2224, metadata !DIExpression()), !dbg !2225
  %53 = zext i8 %1 to i32, !dbg !2285
  %54 = or i32 %52, %53, !dbg !2286
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2287
  br label %187, !dbg !2288

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %56, metadata !2224, metadata !DIExpression()), !dbg !2225
  %57 = and i32 %56, -241, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %57, metadata !2224, metadata !DIExpression()), !dbg !2225
  %58 = zext i8 %1 to i32, !dbg !2291
  %59 = shl nuw nsw i32 %58, 4, !dbg !2292
  %60 = or i32 %57, %59, !dbg !2293
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2294
  br label %187, !dbg !2295

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %62, metadata !2224, metadata !DIExpression()), !dbg !2225
  %63 = and i32 %62, -3841, !dbg !2297
  call void @llvm.dbg.value(metadata i32 %63, metadata !2224, metadata !DIExpression()), !dbg !2225
  %64 = zext i8 %1 to i32, !dbg !2298
  %65 = shl nuw nsw i32 %64, 8, !dbg !2299
  %66 = or i32 %63, %65, !dbg !2300
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2301
  br label %187, !dbg !2302

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2303
  call void @llvm.dbg.value(metadata i32 %68, metadata !2224, metadata !DIExpression()), !dbg !2225
  %69 = and i32 %68, -61441, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %69, metadata !2224, metadata !DIExpression()), !dbg !2225
  %70 = zext i8 %1 to i32, !dbg !2305
  %71 = shl nuw nsw i32 %70, 12, !dbg !2306
  %72 = or i32 %69, %71, !dbg !2307
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2308
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2309

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #13, !dbg !2311
  br label %187, !dbg !2313

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %76, metadata !2224, metadata !DIExpression()), !dbg !2225
  %77 = and i32 %76, -983041, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %77, metadata !2224, metadata !DIExpression()), !dbg !2225
  %78 = zext i8 %1 to i32, !dbg !2316
  %79 = shl nuw nsw i32 %78, 16, !dbg !2317
  %80 = or i32 %77, %79, !dbg !2318
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2319
  %81 = and i8 %1, -2, !dbg !2320
  %82 = icmp eq i8 %81, 4, !dbg !2320
  br i1 %82, label %83, label %187, !dbg !2320

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #13, !dbg !2322
  br label %187, !dbg !2324

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2325
  call void @llvm.dbg.value(metadata i32 %86, metadata !2224, metadata !DIExpression()), !dbg !2225
  %87 = and i32 %86, -15728641, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %87, metadata !2224, metadata !DIExpression()), !dbg !2225
  %88 = zext i8 %1 to i32, !dbg !2327
  %89 = shl nuw nsw i32 %88, 20, !dbg !2328
  %90 = or i32 %87, %89, !dbg !2329
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2330
  %91 = icmp eq i8 %1, 6, !dbg !2331
  br i1 %91, label %92, label %187, !dbg !2333

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #13, !dbg !2334
  br label %187, !dbg !2336

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %95, metadata !2224, metadata !DIExpression()), !dbg !2225
  %96 = and i32 %95, -251658241, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %96, metadata !2224, metadata !DIExpression()), !dbg !2225
  %97 = zext i8 %1 to i32, !dbg !2339
  %98 = shl nuw i32 %97, 24, !dbg !2340
  %99 = or i32 %96, %98, !dbg !2341
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2342
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2343

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #13, !dbg !2345
  br label %187, !dbg !2347

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %103, metadata !2224, metadata !DIExpression()), !dbg !2225
  %104 = and i32 %103, 268435455, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %104, metadata !2224, metadata !DIExpression()), !dbg !2225
  %105 = zext i8 %1 to i32, !dbg !2350
  %106 = shl i32 %105, 28, !dbg !2351
  %107 = or i32 %104, %106, !dbg !2352
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2353
  %108 = and i8 %1, -3, !dbg !2354
  %109 = icmp eq i8 %108, 4, !dbg !2354
  br i1 %109, label %110, label %187, !dbg !2354

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #13, !dbg !2356
  br label %187, !dbg !2358

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %113, metadata !2224, metadata !DIExpression()), !dbg !2225
  %114 = and i32 %113, -16, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %114, metadata !2224, metadata !DIExpression()), !dbg !2225
  %115 = zext i8 %1 to i32, !dbg !2361
  %116 = or i32 %114, %115, !dbg !2362
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2363
  %117 = and i8 %1, -3, !dbg !2364
  %118 = icmp eq i8 %117, 4, !dbg !2364
  br i1 %118, label %119, label %187, !dbg !2364

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #13, !dbg !2366
  br label %187, !dbg !2368

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %122, metadata !2224, metadata !DIExpression()), !dbg !2225
  %123 = and i32 %122, -241, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %123, metadata !2224, metadata !DIExpression()), !dbg !2225
  %124 = zext i8 %1 to i32, !dbg !2371
  %125 = shl nuw nsw i32 %124, 4, !dbg !2372
  %126 = or i32 %123, %125, !dbg !2373
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2374
  br label %187, !dbg !2375

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2376
  call void @llvm.dbg.value(metadata i32 %128, metadata !2224, metadata !DIExpression()), !dbg !2225
  %129 = and i32 %128, -3841, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %129, metadata !2224, metadata !DIExpression()), !dbg !2225
  %130 = zext i8 %1 to i32, !dbg !2378
  %131 = shl nuw nsw i32 %130, 8, !dbg !2379
  %132 = or i32 %129, %131, !dbg !2380
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2381
  br label %187, !dbg !2382

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %134, metadata !2224, metadata !DIExpression()), !dbg !2225
  %135 = and i32 %134, -61441, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %135, metadata !2224, metadata !DIExpression()), !dbg !2225
  %136 = zext i8 %1 to i32, !dbg !2385
  %137 = shl nuw nsw i32 %136, 12, !dbg !2386
  %138 = or i32 %135, %137, !dbg !2387
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2388
  br label %187, !dbg !2389

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %140, metadata !2224, metadata !DIExpression()), !dbg !2225
  %141 = and i32 %140, -983041, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %141, metadata !2224, metadata !DIExpression()), !dbg !2225
  %142 = zext i8 %1 to i32, !dbg !2392
  %143 = shl nuw nsw i32 %142, 16, !dbg !2393
  %144 = or i32 %141, %143, !dbg !2394
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2395
  br label %187, !dbg !2396

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %146, metadata !2224, metadata !DIExpression()), !dbg !2225
  %147 = and i32 %146, -15728641, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %147, metadata !2224, metadata !DIExpression()), !dbg !2225
  %148 = zext i8 %1 to i32, !dbg !2399
  %149 = shl nuw nsw i32 %148, 20, !dbg !2400
  %150 = or i32 %147, %149, !dbg !2401
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2402
  br label %187, !dbg !2403

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %152, metadata !2224, metadata !DIExpression()), !dbg !2225
  %153 = and i32 %152, -251658241, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %153, metadata !2224, metadata !DIExpression()), !dbg !2225
  %154 = zext i8 %1 to i32, !dbg !2406
  %155 = shl nuw i32 %154, 24, !dbg !2407
  %156 = or i32 %153, %155, !dbg !2408
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2409
  br label %187, !dbg !2410

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %158, metadata !2224, metadata !DIExpression()), !dbg !2225
  %159 = and i32 %158, 268435455, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %159, metadata !2224, metadata !DIExpression()), !dbg !2225
  %160 = zext i8 %1 to i32, !dbg !2413
  %161 = shl i32 %160, 28, !dbg !2414
  %162 = or i32 %159, %161, !dbg !2415
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2416
  br label %187, !dbg !2417

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %164, metadata !2224, metadata !DIExpression()), !dbg !2225
  %165 = and i32 %164, -241, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %165, metadata !2224, metadata !DIExpression()), !dbg !2225
  %166 = zext i8 %1 to i32, !dbg !2420
  %167 = shl nuw nsw i32 %166, 4, !dbg !2421
  %168 = or i32 %165, %167, !dbg !2422
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2423
  br label %187, !dbg !2424

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %170, metadata !2224, metadata !DIExpression()), !dbg !2225
  %171 = and i32 %170, -3841, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %171, metadata !2224, metadata !DIExpression()), !dbg !2225
  %172 = zext i8 %1 to i32, !dbg !2427
  %173 = shl nuw nsw i32 %172, 8, !dbg !2428
  %174 = or i32 %171, %173, !dbg !2429
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2430
  br label %187, !dbg !2431

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %176, metadata !2224, metadata !DIExpression()), !dbg !2225
  %177 = and i32 %176, -61441, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %177, metadata !2224, metadata !DIExpression()), !dbg !2225
  %178 = zext i8 %1 to i32, !dbg !2434
  %179 = shl nuw nsw i32 %178, 12, !dbg !2435
  %180 = or i32 %177, %179, !dbg !2436
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2437
  br label %187, !dbg !2438

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %182, metadata !2224, metadata !DIExpression()), !dbg !2225
  %183 = and i32 %182, -983041, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %183, metadata !2224, metadata !DIExpression()), !dbg !2225
  %184 = zext i8 %1 to i32, !dbg !2441
  %185 = shl nuw nsw i32 %184, 16, !dbg !2442
  %186 = or i32 %183, %185, !dbg !2443
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2444
  br label %187, !dbg !2445

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2446
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2451, metadata !DIExpression()), !dbg !2452
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2453
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2454, !srcloc !2455
  tail call void asm sideeffect "isb", ""() #15, !dbg !2456, !srcloc !2457
  ret void, !dbg !2458
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2463, metadata !DIExpression()), !dbg !2464
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2465
  ret void, !dbg !2466
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2467 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2472, !srcloc !2479
  call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()) #15, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %1, metadata !2471, metadata !DIExpression()), !dbg !2481
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2482, !srcloc !2485
  ret i32 %1, !dbg !2486
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2489, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %0, metadata !2491, metadata !DIExpression()) #15, !dbg !2494
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2497, !srcloc !2498
  ret void, !dbg !2499
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2500 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %1, metadata !2505, metadata !DIExpression()), !dbg !2507
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
  ], !dbg !2508

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2506, metadata !DIExpression()), !dbg !2507
  %4 = trunc i32 %1 to i8, !dbg !2509
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #13, !dbg !2510
  br label %5, !dbg !2511

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2507
  ret i32 %6, !dbg !2512
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pwm_init(i8 noundef zeroext %0) local_unnamed_addr #0 !dbg !2513 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 0, metadata !2518, metadata !DIExpression()), !dbg !2519
  %2 = icmp ugt i8 %0, 2, !dbg !2520
  br i1 %2, label %8, label %3, !dbg !2522

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @halPWMResetAll() #13, !dbg !2523
  %5 = tail call zeroext i8 @halPWMClockSelect(i8 noundef zeroext %0) #13, !dbg !2524
  %6 = icmp ne i8 %5, 0, !dbg !2524
  %7 = sext i1 %6 to i32, !dbg !2519
  br label %8, !dbg !2519

8:                                                ; preds = %3, %1
  %9 = phi i32 [ -1, %1 ], [ %7, %3 ], !dbg !2519
  ret i32 %9, !dbg !2526
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pwm_set(i8 noundef zeroext %0, i32 noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2527 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2531, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %1, metadata !2532, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i16 %2, metadata !2533, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 %3, metadata !2534, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i16 0, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i16 1, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i16 0, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2541
  %5 = icmp eq i8 %3, 0, !dbg !2542
  br i1 %5, label %6, label %15, !dbg !2544

6:                                                ; preds = %4
  %7 = tail call zeroext i8 @halPWMConfig(i8 noundef zeroext %0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %1) #13, !dbg !2545
  %8 = icmp eq i8 %7, 0, !dbg !2545
  br i1 %8, label %9, label %28, !dbg !2548

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @halPWMKick(i8 noundef zeroext %0) #13, !dbg !2549
  %11 = icmp eq i8 %10, 0, !dbg !2549
  br i1 %11, label %12, label %28, !dbg !2551

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @halPWMDisable(i8 noundef zeroext %0) #13, !dbg !2552
  %14 = icmp eq i8 %13, 0, !dbg !2552
  br i1 %14, label %27, label %28, !dbg !2554

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i16 %2, metadata !2537, metadata !DIExpression()), !dbg !2541
  %16 = tail call zeroext i8 @halPWMEnable(i8 noundef zeroext %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13, !dbg !2555
  %17 = icmp eq i8 %16, 0, !dbg !2555
  br i1 %17, label %18, label %28, !dbg !2558

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @halPWMConfig(i8 noundef zeroext %0, i8 noundef zeroext 0, i16 noundef zeroext %2, i32 noundef %1) #13, !dbg !2559
  %20 = icmp eq i8 %19, 0, !dbg !2559
  br i1 %20, label %21, label %28, !dbg !2561

21:                                               ; preds = %18
  %22 = tail call zeroext i8 @halPWMStateConfig(i8 noundef zeroext %0, i16 noundef zeroext 1, i16 noundef zeroext 0, i8 noundef zeroext 0) #13, !dbg !2562
  %23 = icmp eq i8 %22, 0, !dbg !2562
  br i1 %23, label %24, label %28, !dbg !2564

24:                                               ; preds = %21
  %25 = tail call zeroext i8 @halPWMKick(i8 noundef zeroext %0) #13, !dbg !2565
  %26 = icmp eq i8 %25, 0, !dbg !2565
  br i1 %26, label %27, label %28, !dbg !2567

27:                                               ; preds = %24, %12
  br label %28, !dbg !2568

28:                                               ; preds = %24, %21, %18, %15, %12, %9, %6, %27
  %29 = phi i32 [ 0, %27 ], [ -1, %6 ], [ -1, %9 ], [ -1, %12 ], [ -1, %15 ], [ -1, %18 ], [ -1, %21 ], [ -1, %24 ], !dbg !2541
  ret i32 %29, !dbg !2569
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pwm_get(i8 noundef zeroext %0, i32* noundef %1, i16* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !2570 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2575, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32* %1, metadata !2576, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i16* %2, metadata !2577, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %3, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 0, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2581
  %5 = tail call zeroext i8 @halPWMQuery(i8 noundef zeroext %0, i8 noundef zeroext 0, i16* noundef %2, i32* noundef %1, i8* noundef %3) #13, !dbg !2582
  ret i32 0, !dbg !2583
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2584 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #13, !dbg !2585
  ret i32 %1, !dbg !2586
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2589, metadata !DIExpression()), !dbg !2592
  %2 = tail call i32 @get_current_count() #14, !dbg !2593
  %3 = add i32 %2, %0, !dbg !2594
  %4 = xor i32 %3, -1, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %3, metadata !2590, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2592
  %5 = tail call i32 @get_current_count() #14, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %5, metadata !2591, metadata !DIExpression()), !dbg !2592
  %6 = add i32 %5, %4, !dbg !2597
  %7 = icmp slt i32 %6, 0, !dbg !2597
  br i1 %7, label %8, label %12, !dbg !2598

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %9, metadata !2591, metadata !DIExpression()), !dbg !2592
  %10 = add i32 %9, %4, !dbg !2597
  %11 = icmp slt i32 %10, 0, !dbg !2597
  br i1 %11, label %8, label %12, !dbg !2598, !llvm.loop !2601

12:                                               ; preds = %8, %1
  ret void, !dbg !2603
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2609
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !2610
  %3 = add i32 %2, %0, !dbg !2611
  %4 = xor i32 %3, -1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %3, metadata !2607, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2609
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %5, metadata !2608, metadata !DIExpression()), !dbg !2609
  %6 = add i32 %5, %4, !dbg !2614
  %7 = icmp slt i32 %6, 0, !dbg !2614
  br i1 %7, label %8, label %12, !dbg !2615

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %9, metadata !2608, metadata !DIExpression()), !dbg !2609
  %10 = add i32 %9, %4, !dbg !2614
  %11 = icmp slt i32 %10, 0, !dbg !2614
  br i1 %11, label %8, label %12, !dbg !2615, !llvm.loop !2618

12:                                               ; preds = %8, %1
  ret void, !dbg !2620
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2621 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #13, !dbg !2622
  ret i32 %1, !dbg !2623
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2628
  %2 = shl i32 %0, 5, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %2, metadata !2627, metadata !DIExpression()), !dbg !2628
  %3 = mul i32 %0, 7, !dbg !2630
  %4 = udiv i32 %3, 10, !dbg !2631
  %5 = add i32 %4, %2, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %5, metadata !2627, metadata !DIExpression()), !dbg !2628
  %6 = mul i32 %0, 6, !dbg !2633
  %7 = udiv i32 %6, 100, !dbg !2634
  %8 = add i32 %5, %7, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %8, metadata !2627, metadata !DIExpression()), !dbg !2628
  %9 = shl i32 %0, 3, !dbg !2636
  %10 = udiv i32 %9, 1000, !dbg !2637
  %11 = add i32 %8, %10, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %11, metadata !2627, metadata !DIExpression()), !dbg !2628
  tail call void @delay_time(i32 noundef %11) #14, !dbg !2639
  ret void, !dbg !2640
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2641 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2646
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !2647
  %3 = udiv i32 %2, 1000000, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %3, metadata !2645, metadata !DIExpression()), !dbg !2646
  %4 = mul i32 %3, %0, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %4, metadata !2644, metadata !DIExpression()), !dbg !2646
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !2650
  ret void, !dbg !2651
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i1 %2, metadata !2658, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2660
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2659, metadata !DIExpression()), !dbg !2660
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2661
  %5 = icmp eq i32 %0, 0, !dbg !2662
  br i1 %5, label %6, label %7, !dbg !2664

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2665
  br label %8, !dbg !2667

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2668
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #13, !dbg !2670
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #13, !dbg !2671
  ret void, !dbg !2672
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2673 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2675, metadata !DIExpression()), !dbg !2676
  tail call void @GPT_Start(i32 noundef %0) #13, !dbg !2677
  ret void, !dbg !2678
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2681, metadata !DIExpression()), !dbg !2682
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2683
  ret void, !dbg !2684
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2685 {
  tail call void @CM4_GPT2Init() #13, !dbg !2686
  ret void, !dbg !2687
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2688 {
  tail call void @CM4_GPT4Init() #13, !dbg !2689
  ret void, !dbg !2690
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2694
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2695

2:                                                ; preds = %1
  br label %3, !dbg !2696

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2694
  br label %5, !dbg !2699

5:                                                ; preds = %3, %1
  ret void, !dbg !2699
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2700 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2702, metadata !DIExpression()), !dbg !2704
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %1, metadata !2703, metadata !DIExpression()), !dbg !2704
  %2 = lshr i32 %1, 13, !dbg !2706
  %3 = and i32 %2, 7, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %3, metadata !2703, metadata !DIExpression()), !dbg !2704
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %4, metadata !2702, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %4, metadata !2702, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2704
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2709
  %6 = load i32, i32* %5, align 4, !dbg !2709
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2709
  %8 = load i32, i32* %7, align 4, !dbg !2709
  %9 = and i32 %4, -2048, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %9, metadata !2702, metadata !DIExpression()), !dbg !2704
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2711
  %10 = or i32 %9, %8, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %10, metadata !2702, metadata !DIExpression()), !dbg !2704
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2713
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2714
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2715
  tail call void @SystemCoreClockUpdate() #13, !dbg !2716
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2717
  %13 = udiv i32 %12, 1000, !dbg !2718
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #13, !dbg !2719
  ret void, !dbg !2720
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2721 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2722
  ret i32 %1, !dbg !2723
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2724 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2725
  ret i32 %1, !dbg !2726
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2727 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2731
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2731
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2730, metadata !DIExpression()), !dbg !2733
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2734
  store volatile i32 %3, i32* %1, align 4, !dbg !2735
  %4 = load volatile i32, i32* %1, align 4, !dbg !2736
  %5 = lshr i32 %4, 28, !dbg !2737
  %6 = and i32 %5, 3, !dbg !2738
  store volatile i32 %6, i32* %1, align 4, !dbg !2739
  %7 = load volatile i32, i32* %1, align 4, !dbg !2740
  %8 = icmp eq i32 %7, 0, !dbg !2742
  br i1 %8, label %9, label %22, !dbg !2743

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2744
  store volatile i32 %10, i32* %1, align 4, !dbg !2746
  %11 = load volatile i32, i32* %1, align 4, !dbg !2747
  %12 = and i32 %11, -16777217, !dbg !2748
  store volatile i32 %12, i32* %1, align 4, !dbg !2749
  %13 = load volatile i32, i32* %1, align 4, !dbg !2750
  %14 = or i32 %13, 536870912, !dbg !2751
  store volatile i32 %14, i32* %1, align 4, !dbg !2752
  %15 = load volatile i32, i32* %1, align 4, !dbg !2753
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2754
  br label %16, !dbg !2755

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2756
  store volatile i32 %17, i32* %1, align 4, !dbg !2758
  %18 = load volatile i32, i32* %1, align 4, !dbg !2759
  %19 = and i32 %18, 134217728, !dbg !2760
  store volatile i32 %19, i32* %1, align 4, !dbg !2761
  %20 = load volatile i32, i32* %1, align 4, !dbg !2762
  %21 = icmp eq i32 %20, 0, !dbg !2763
  br i1 %21, label %16, label %22, !dbg !2764, !llvm.loop !2765

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2767
  ret void, !dbg !2767
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2775, metadata !DIExpression()), !dbg !2776
  %2 = bitcast i8* %0 to i32*, !dbg !2777
  %3 = load volatile i32, i32* %2, align 4, !dbg !2778
  ret i32 %3, !dbg !2779
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2780 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 %1, metadata !2785, metadata !DIExpression()), !dbg !2786
  %3 = bitcast i8* %0 to i32*, !dbg !2787
  store volatile i32 %1, i32* %3, align 4, !dbg !2788
  ret void, !dbg !2789
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2790 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2794, metadata !DIExpression()), !dbg !2797
  %3 = bitcast i32* %2 to i8*, !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2798
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2796, metadata !DIExpression()), !dbg !2797
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2800
  store volatile i32 %4, i32* %2, align 4, !dbg !2801
  %5 = load volatile i32, i32* %2, align 4, !dbg !2802
  %6 = lshr i32 %5, 28, !dbg !2803
  %7 = and i32 %6, 3, !dbg !2804
  store volatile i32 %7, i32* %2, align 4, !dbg !2805
  %8 = load volatile i32, i32* %2, align 4, !dbg !2806
  %9 = icmp eq i32 %8, 3, !dbg !2808
  br i1 %9, label %38, label %10, !dbg !2809

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2810
  store volatile i32 %11, i32* %2, align 4, !dbg !2812
  %12 = load volatile i32, i32* %2, align 4, !dbg !2813
  %13 = and i32 %12, -262145, !dbg !2814
  store volatile i32 %13, i32* %2, align 4, !dbg !2815
  %14 = load volatile i32, i32* %2, align 4, !dbg !2816
  %15 = and i32 %14, -16777217, !dbg !2817
  store volatile i32 %15, i32* %2, align 4, !dbg !2818
  %16 = load volatile i32, i32* %2, align 4, !dbg !2819
  store volatile i32 %16, i32* %2, align 4, !dbg !2820
  %17 = load volatile i32, i32* %2, align 4, !dbg !2821
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2822
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2823
  store volatile i32 %18, i32* %2, align 4, !dbg !2824
  %19 = load volatile i32, i32* %2, align 4, !dbg !2825
  %20 = and i32 %19, -805306369, !dbg !2826
  store volatile i32 %20, i32* %2, align 4, !dbg !2827
  %21 = load volatile i32, i32* %2, align 4, !dbg !2828
  %22 = and i32 %21, -16777217, !dbg !2829
  store volatile i32 %22, i32* %2, align 4, !dbg !2830
  %23 = load volatile i32, i32* %2, align 4, !dbg !2831
  %24 = or i32 %23, 805306368, !dbg !2832
  store volatile i32 %24, i32* %2, align 4, !dbg !2833
  %25 = load volatile i32, i32* %2, align 4, !dbg !2834
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2835
  br label %26, !dbg !2836

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2837
  store volatile i32 %27, i32* %2, align 4, !dbg !2839
  %28 = load volatile i32, i32* %2, align 4, !dbg !2840
  %29 = and i32 %28, 67108864, !dbg !2841
  store volatile i32 %29, i32* %2, align 4, !dbg !2842
  %30 = load volatile i32, i32* %2, align 4, !dbg !2843
  %31 = icmp eq i32 %30, 0, !dbg !2844
  br i1 %31, label %26, label %32, !dbg !2845, !llvm.loop !2846

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2848
  store volatile i32 %33, i32* %2, align 4, !dbg !2849
  %34 = load volatile i32, i32* %2, align 4, !dbg !2850
  %35 = and i32 %34, -262145, !dbg !2851
  store volatile i32 %35, i32* %2, align 4, !dbg !2852
  %36 = load volatile i32, i32* %2, align 4, !dbg !2853
  %37 = and i32 %36, -16777217, !dbg !2854
  store volatile i32 %37, i32* %2, align 4, !dbg !2855
  br label %38, !dbg !2856

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2857
  store volatile i32 %39, i32* %2, align 4, !dbg !2858
  %40 = icmp eq i8 %0, 0, !dbg !2859
  %41 = load volatile i32, i32* %2, align 4, !dbg !2861
  br i1 %40, label %44, label %42, !dbg !2862

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2863
  store volatile i32 %43, i32* %2, align 4, !dbg !2865
  br label %45, !dbg !2866

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2867
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2869
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2871
  ret void, !dbg !2871
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2872 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2876
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2876
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2875, metadata !DIExpression()), !dbg !2878
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2879
  store volatile i32 %3, i32* %1, align 4, !dbg !2880
  %4 = load volatile i32, i32* %1, align 4, !dbg !2881
  %5 = and i32 %4, -805306369, !dbg !2882
  store volatile i32 %5, i32* %1, align 4, !dbg !2883
  %6 = load volatile i32, i32* %1, align 4, !dbg !2884
  %7 = and i32 %6, -16777217, !dbg !2885
  store volatile i32 %7, i32* %1, align 4, !dbg !2886
  %8 = load volatile i32, i32* %1, align 4, !dbg !2887
  store volatile i32 %8, i32* %1, align 4, !dbg !2888
  %9 = load volatile i32, i32* %1, align 4, !dbg !2889
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2890
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2891
  store volatile i32 %10, i32* %1, align 4, !dbg !2892
  %11 = load volatile i32, i32* %1, align 4, !dbg !2893
  %12 = and i32 %11, -262145, !dbg !2894
  store volatile i32 %12, i32* %1, align 4, !dbg !2895
  %13 = load volatile i32, i32* %1, align 4, !dbg !2896
  %14 = and i32 %13, -16777217, !dbg !2897
  store volatile i32 %14, i32* %1, align 4, !dbg !2898
  %15 = load volatile i32, i32* %1, align 4, !dbg !2899
  store volatile i32 %15, i32* %1, align 4, !dbg !2900
  %16 = load volatile i32, i32* %1, align 4, !dbg !2901
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2902
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2903
  ret void, !dbg !2903
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2904 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2908
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2906, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2907, metadata !DIExpression()), !dbg !2910
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2911
  store volatile i32 %3, i32* %1, align 4, !dbg !2912
  %4 = load volatile i32, i32* %1, align 4, !dbg !2913
  %5 = and i32 %4, -8, !dbg !2914
  store volatile i32 %5, i32* %1, align 4, !dbg !2915
  %6 = load volatile i32, i32* %1, align 4, !dbg !2916
  store volatile i32 %6, i32* %1, align 4, !dbg !2917
  %7 = load volatile i32, i32* %1, align 4, !dbg !2918
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2919
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2920
  store volatile i32 %8, i32* %1, align 4, !dbg !2921
  %9 = load volatile i32, i32* %1, align 4, !dbg !2922
  %10 = and i32 %9, -49153, !dbg !2923
  store volatile i32 %10, i32* %1, align 4, !dbg !2924
  %11 = load volatile i32, i32* %1, align 4, !dbg !2925
  store volatile i32 %11, i32* %1, align 4, !dbg !2926
  %12 = load volatile i32, i32* %1, align 4, !dbg !2927
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2928
  br label %13, !dbg !2929

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2930
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2931
  %16 = icmp eq i32 %14, %15, !dbg !2932
  br i1 %16, label %17, label %13, !dbg !2929, !llvm.loop !2933

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2935
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2936
  tail call void @SystemCoreClockUpdate() #13, !dbg !2937
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2938
  %20 = udiv i32 %19, 1000, !dbg !2939
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2940
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2941
  ret void, !dbg !2941
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2942 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2946
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2945, metadata !DIExpression()), !dbg !2948
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2949
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2950
  store volatile i32 %3, i32* %1, align 4, !dbg !2951
  %4 = load volatile i32, i32* %1, align 4, !dbg !2952
  %5 = and i32 %4, -49153, !dbg !2953
  store volatile i32 %5, i32* %1, align 4, !dbg !2954
  %6 = load volatile i32, i32* %1, align 4, !dbg !2955
  %7 = or i32 %6, 16384, !dbg !2956
  store volatile i32 %7, i32* %1, align 4, !dbg !2957
  %8 = load volatile i32, i32* %1, align 4, !dbg !2958
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2959
  br label %9, !dbg !2960

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2961
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2962
  %12 = icmp eq i32 %10, %11, !dbg !2963
  br i1 %12, label %13, label %9, !dbg !2960, !llvm.loop !2964

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2966
  store volatile i32 %14, i32* %1, align 4, !dbg !2967
  %15 = load volatile i32, i32* %1, align 4, !dbg !2968
  %16 = and i32 %15, -1009, !dbg !2969
  store volatile i32 %16, i32* %1, align 4, !dbg !2970
  %17 = load volatile i32, i32* %1, align 4, !dbg !2971
  %18 = or i32 %17, 128, !dbg !2972
  store volatile i32 %18, i32* %1, align 4, !dbg !2973
  %19 = load volatile i32, i32* %1, align 4, !dbg !2974
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2975
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2976
  store volatile i32 %20, i32* %1, align 4, !dbg !2977
  %21 = load volatile i32, i32* %1, align 4, !dbg !2978
  %22 = and i32 %21, -8, !dbg !2979
  store volatile i32 %22, i32* %1, align 4, !dbg !2980
  %23 = load volatile i32, i32* %1, align 4, !dbg !2981
  %24 = or i32 %23, 4, !dbg !2982
  store volatile i32 %24, i32* %1, align 4, !dbg !2983
  %25 = load volatile i32, i32* %1, align 4, !dbg !2984
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2985
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2986
  tail call void @SystemCoreClockUpdate() #13, !dbg !2987
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2988
  %27 = udiv i32 %26, 1000, !dbg !2989
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2991
  ret void, !dbg !2991
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2992 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2996
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2995, metadata !DIExpression()), !dbg !2998
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2999
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3000
  store volatile i32 %3, i32* %1, align 4, !dbg !3001
  %4 = load volatile i32, i32* %1, align 4, !dbg !3002
  %5 = and i32 %4, -49153, !dbg !3003
  store volatile i32 %5, i32* %1, align 4, !dbg !3004
  %6 = load volatile i32, i32* %1, align 4, !dbg !3005
  %7 = or i32 %6, 32768, !dbg !3006
  store volatile i32 %7, i32* %1, align 4, !dbg !3007
  %8 = load volatile i32, i32* %1, align 4, !dbg !3008
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3009
  br label %9, !dbg !3010

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3011
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3012
  %12 = icmp eq i32 %10, %11, !dbg !3013
  br i1 %12, label %13, label %9, !dbg !3010, !llvm.loop !3014

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3016
  store volatile i32 %14, i32* %1, align 4, !dbg !3017
  %15 = load volatile i32, i32* %1, align 4, !dbg !3018
  %16 = and i32 %15, -1009, !dbg !3019
  store volatile i32 %16, i32* %1, align 4, !dbg !3020
  %17 = load volatile i32, i32* %1, align 4, !dbg !3021
  %18 = or i32 %17, 32, !dbg !3022
  store volatile i32 %18, i32* %1, align 4, !dbg !3023
  %19 = load volatile i32, i32* %1, align 4, !dbg !3024
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3025
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3026
  store volatile i32 %20, i32* %1, align 4, !dbg !3027
  %21 = load volatile i32, i32* %1, align 4, !dbg !3028
  %22 = and i32 %21, -8, !dbg !3029
  store volatile i32 %22, i32* %1, align 4, !dbg !3030
  %23 = load volatile i32, i32* %1, align 4, !dbg !3031
  %24 = or i32 %23, 4, !dbg !3032
  store volatile i32 %24, i32* %1, align 4, !dbg !3033
  %25 = load volatile i32, i32* %1, align 4, !dbg !3034
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3035
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3036
  tail call void @SystemCoreClockUpdate() #13, !dbg !3037
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3038
  %27 = udiv i32 %26, 1000, !dbg !3039
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3041
  ret void, !dbg !3041
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !3042 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3046
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3045, metadata !DIExpression()), !dbg !3048
  tail call void @cmnPLL1ON() #14, !dbg !3049
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3050
  store volatile i32 %3, i32* %1, align 4, !dbg !3051
  %4 = load volatile i32, i32* %1, align 4, !dbg !3052
  %5 = and i32 %4, -49153, !dbg !3053
  store volatile i32 %5, i32* %1, align 4, !dbg !3054
  %6 = load volatile i32, i32* %1, align 4, !dbg !3055
  store volatile i32 %6, i32* %1, align 4, !dbg !3056
  %7 = load volatile i32, i32* %1, align 4, !dbg !3057
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3058
  br label %8, !dbg !3059

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3060
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3061
  %11 = icmp eq i32 %9, %10, !dbg !3062
  br i1 %11, label %12, label %8, !dbg !3059, !llvm.loop !3063

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3065
  store volatile i32 %13, i32* %1, align 4, !dbg !3066
  %14 = load volatile i32, i32* %1, align 4, !dbg !3067
  %15 = and i32 %14, -8, !dbg !3068
  store volatile i32 %15, i32* %1, align 4, !dbg !3069
  %16 = load volatile i32, i32* %1, align 4, !dbg !3070
  %17 = or i32 %16, 2, !dbg !3071
  store volatile i32 %17, i32* %1, align 4, !dbg !3072
  %18 = load volatile i32, i32* %1, align 4, !dbg !3073
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3074
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3075
  tail call void @SystemCoreClockUpdate() #13, !dbg !3076
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3077
  %20 = udiv i32 %19, 1000, !dbg !3078
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !3079
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3080
  ret void, !dbg !3080
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !3081 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3085
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3085
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3083, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3084, metadata !DIExpression()), !dbg !3087
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3088
  store volatile i32 %3, i32* %1, align 4, !dbg !3089
  %4 = load volatile i32, i32* %1, align 4, !dbg !3090
  %5 = and i32 %4, -24577, !dbg !3091
  store volatile i32 %5, i32* %1, align 4, !dbg !3092
  %6 = load volatile i32, i32* %1, align 4, !dbg !3093
  store volatile i32 %6, i32* %1, align 4, !dbg !3094
  %7 = load volatile i32, i32* %1, align 4, !dbg !3095
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3097
  ret void, !dbg !3097
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !3098 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %1, metadata !3102, metadata !DIExpression()), !dbg !3104
  ret i32 %1, !dbg !3105
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !3106 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3109
  %2 = and i32 %1, 1, !dbg !3111
  %3 = icmp eq i32 %2, 0, !dbg !3111
  br i1 %3, label %7, label %4, !dbg !3112

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3113
  %6 = and i32 %5, 255, !dbg !3115
  call void @llvm.dbg.value(metadata i32 %5, metadata !3108, metadata !DIExpression()), !dbg !3116
  br label %7, !dbg !3117

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3118
  ret i32 %8, !dbg !3119
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 %1, metadata !3126, metadata !DIExpression()), !dbg !3128
  %3 = icmp eq i32 %0, 0, !dbg !3129
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3129
  call void @llvm.dbg.value(metadata i32 %4, metadata !3127, metadata !DIExpression()), !dbg !3128
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3130

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3131
  %9 = and i32 %8, 32, !dbg !3132
  %10 = icmp eq i32 %9, 0, !dbg !3133
  br i1 %10, label %7, label %11, !dbg !3130, !llvm.loop !3134

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3136
  %13 = inttoptr i32 %4 to i32*, !dbg !3137
  store volatile i32 %12, i32* %13, align 65536, !dbg !3138
  ret void, !dbg !3139
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3147
  %2 = icmp eq i32 %0, 0, !dbg !3148
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %3, metadata !3145, metadata !DIExpression()), !dbg !3147
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3149

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3150
  %8 = and i32 %7, 1, !dbg !3151
  %9 = icmp eq i32 %8, 0, !dbg !3152
  br i1 %9, label %6, label %10, !dbg !3149, !llvm.loop !3153

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3155
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3155
  %13 = trunc i32 %12 to i8, !dbg !3155
  call void @llvm.dbg.value(metadata i8 %13, metadata !3146, metadata !DIExpression()), !dbg !3147
  ret i8 %13, !dbg !3156
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !3157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3161, metadata !DIExpression()), !dbg !3164
  %2 = icmp eq i32 %0, 0, !dbg !3165
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %3, metadata !3162, metadata !DIExpression()), !dbg !3164
  %4 = or i32 %3, 20, !dbg !3166
  %5 = inttoptr i32 %4 to i32*, !dbg !3166
  %6 = load volatile i32, i32* %5, align 4, !dbg !3166
  %7 = and i32 %6, 1, !dbg !3168
  %8 = icmp eq i32 %7, 0, !dbg !3168
  br i1 %8, label %13, label %9, !dbg !3169

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3170
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3170
  %12 = and i32 %11, 255, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %11, metadata !3163, metadata !DIExpression()), !dbg !3164
  br label %13, !dbg !3173

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3174
  ret i32 %14, !dbg !3175
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !3176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3180, metadata !DIExpression()), !dbg !3181
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3182
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3183

2:                                                ; preds = %1
  br label %3, !dbg !3184

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3188
  %6 = or i32 %5, 1, !dbg !3188
  store volatile i32 %6, i32* %4, align 4, !dbg !3188
  br label %7, !dbg !3189

7:                                                ; preds = %3, %1
  ret void, !dbg !3189
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !3190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 %1, metadata !3195, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i16 %2, metadata !3196, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i16 %3, metadata !3197, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i16 %4, metadata !3198, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3200, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3207, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3209, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 0, metadata !3210, metadata !DIExpression()), !dbg !3211
  %6 = tail call i32 @top_xtal_freq_get() #13, !dbg !3214
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3215
  %7 = icmp eq i32 %0, 1, !dbg !3216
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3216
  call void @llvm.dbg.value(metadata i32 %8, metadata !3200, metadata !DIExpression()), !dbg !3211
  %9 = or i32 %8, 36, !dbg !3217
  %10 = inttoptr i32 %9 to i32*, !dbg !3217
  store volatile i32 3, i32* %10, align 4, !dbg !3218
  %11 = or i32 %8, 12, !dbg !3219
  %12 = inttoptr i32 %11 to i32*, !dbg !3219
  %13 = load volatile i32, i32* %12, align 4, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %13, metadata !3202, metadata !DIExpression()), !dbg !3211
  %14 = or i32 %13, 128, !dbg !3220
  store volatile i32 %14, i32* %12, align 4, !dbg !3221
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3222
  %16 = udiv i32 %15, %1, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %16, metadata !3201, metadata !DIExpression()), !dbg !3211
  %17 = lshr i32 %16, 8, !dbg !3224
  %18 = add nuw nsw i32 %17, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %18, metadata !3203, metadata !DIExpression()), !dbg !3211
  %19 = udiv i32 %16, %18, !dbg !3226
  %20 = add i32 %19, -1, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %20, metadata !3204, metadata !DIExpression()), !dbg !3211
  %21 = icmp eq i32 %20, 3, !dbg !3229
  %22 = lshr i32 %20, 1, !dbg !3231
  %23 = add nsw i32 %22, -1, !dbg !3231
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %24, metadata !3205, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 undef, metadata !3210, metadata !DIExpression()), !dbg !3211
  %25 = mul i32 %15, 10, !dbg !3232
  %26 = udiv i32 %25, %1, !dbg !3233
  %27 = udiv i32 %26, %16, !dbg !3234
  %28 = mul i32 %19, -10, !dbg !3235
  %29 = add i32 %27, %28, !dbg !3236
  %30 = urem i32 %29, 10, !dbg !3237
  call void @llvm.dbg.value(metadata i32 %30, metadata !3206, metadata !DIExpression()), !dbg !3211
  %31 = and i32 %18, 255, !dbg !3238
  %32 = inttoptr i32 %8 to i32*, !dbg !3239
  store volatile i32 %31, i32* %32, align 65536, !dbg !3240
  %33 = lshr i32 %18, 8, !dbg !3241
  %34 = and i32 %33, 255, !dbg !3242
  %35 = or i32 %8, 4, !dbg !3243
  %36 = inttoptr i32 %35 to i32*, !dbg !3243
  store volatile i32 %34, i32* %36, align 4, !dbg !3244
  %37 = or i32 %8, 40, !dbg !3245
  %38 = inttoptr i32 %37 to i32*, !dbg !3245
  store volatile i32 %20, i32* %38, align 8, !dbg !3246
  %39 = or i32 %8, 44, !dbg !3247
  %40 = inttoptr i32 %39 to i32*, !dbg !3247
  store volatile i32 %24, i32* %40, align 4, !dbg !3248
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3249
  %42 = load i16, i16* %41, align 2, !dbg !3249
  %43 = zext i16 %42 to i32, !dbg !3249
  %44 = or i32 %8, 88, !dbg !3250
  %45 = inttoptr i32 %44 to i32*, !dbg !3250
  store volatile i32 %43, i32* %45, align 8, !dbg !3251
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3252
  %47 = load i16, i16* %46, align 2, !dbg !3252
  %48 = zext i16 %47 to i32, !dbg !3252
  %49 = or i32 %8, 84, !dbg !3253
  %50 = inttoptr i32 %49 to i32*, !dbg !3253
  store volatile i32 %48, i32* %50, align 4, !dbg !3254
  store volatile i32 %13, i32* %12, align 4, !dbg !3255
  %51 = or i32 %8, 8, !dbg !3256
  %52 = inttoptr i32 %51 to i32*, !dbg !3256
  store volatile i32 71, i32* %52, align 8, !dbg !3257
  %53 = inttoptr i32 %11 to i16*, !dbg !3258
  %54 = load volatile i16, i16* %53, align 4, !dbg !3258
  call void @llvm.dbg.value(metadata i16 %54, metadata !3199, metadata !DIExpression()), !dbg !3211
  %55 = and i16 %54, -64, !dbg !3259
  call void @llvm.dbg.value(metadata i16 %54, metadata !3199, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3211
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3199, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3211
  %56 = and i16 %2, -61, !dbg !3260
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3199, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3211
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3199, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3211
  %57 = and i16 %4, -57, !dbg !3261
  call void @llvm.dbg.value(metadata i16 undef, metadata !3199, metadata !DIExpression()), !dbg !3211
  %58 = or i16 %56, %3, !dbg !3260
  %59 = or i16 %58, %57, !dbg !3261
  %60 = or i16 %59, %55, !dbg !3262
  call void @llvm.dbg.value(metadata i16 %60, metadata !3199, metadata !DIExpression()), !dbg !3211
  store volatile i16 %60, i16* %53, align 4, !dbg !3263
  ret void, !dbg !3264
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !3265 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3269, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %1, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32* %2, metadata !3271, metadata !DIExpression()), !dbg !3272
  %4 = icmp eq i32 %0, 0, !dbg !3273
  %5 = icmp eq i32 %1, 0, !dbg !3275
  br i1 %4, label %6, label %16, !dbg !3276

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3277

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3279
  %9 = zext i16 %8 to i32, !dbg !3279
  br label %26, !dbg !3282

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3283
  %12 = zext i16 %11 to i32, !dbg !3283
  store i32 %12, i32* %2, align 4, !dbg !3285
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3286
  %14 = zext i16 %13 to i32, !dbg !3286
  %15 = sub nsw i32 %12, %14, !dbg !3287
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3288

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3290
  %19 = zext i16 %18 to i32, !dbg !3290
  br label %26, !dbg !3293

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3294
  %22 = zext i16 %21 to i32, !dbg !3294
  store i32 %22, i32* %2, align 4, !dbg !3296
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3297
  %24 = zext i16 %23 to i32, !dbg !3297
  %25 = sub nsw i32 %22, %24, !dbg !3298
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3275
  ret void, !dbg !3299
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8* %1, metadata !3305, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %2, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 0, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 0, metadata !3307, metadata !DIExpression()), !dbg !3308
  %4 = icmp eq i32 %2, 0, !dbg !3309
  br i1 %4, label %15, label %5, !dbg !3312

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3307, metadata !DIExpression()), !dbg !3308
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3313

7:                                                ; preds = %5
  br label %8, !dbg !3315

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3319
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3319
  store i8 %10, i8* %11, align 1, !dbg !3319
  br label %12, !dbg !3320

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %13, metadata !3307, metadata !DIExpression()), !dbg !3308
  %14 = icmp eq i32 %13, %2, !dbg !3309
  br i1 %14, label %15, label %5, !dbg !3312, !llvm.loop !3321

15:                                               ; preds = %12, %3
  ret void, !dbg !3323
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3324 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i8* %1, metadata !3331, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %2, metadata !3332, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3334
  %4 = icmp eq i32 %2, 0, !dbg !3335
  br i1 %4, label %16, label %5, !dbg !3338

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3333, metadata !DIExpression()), !dbg !3334
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3339

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3341
  %9 = load i8, i8* %8, align 1, !dbg !3341
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3344
  br label %13, !dbg !3345

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3346
  %12 = load i8, i8* %11, align 1, !dbg !3346
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3349
  br label %13, !dbg !3350

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3351
  call void @llvm.dbg.value(metadata i32 %14, metadata !3333, metadata !DIExpression()), !dbg !3334
  %15 = icmp eq i32 %14, %2, !dbg !3335
  br i1 %15, label %16, label %5, !dbg !3338, !llvm.loop !3352

16:                                               ; preds = %13, %3
  ret void, !dbg !3354
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3355 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %1, metadata !3360, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %2, metadata !3361, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %3, metadata !3362, metadata !DIExpression()), !dbg !3363
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3364

5:                                                ; preds = %4
  br label %6, !dbg !3365

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3369
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #13, !dbg !3369
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #13, !dbg !3369
  br label %9, !dbg !3370

9:                                                ; preds = %6, %4
  ret void, !dbg !3370
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3375, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i8* %1, metadata !3376, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %2, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %3, metadata !3378, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %4, metadata !3379, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 %5, metadata !3380, metadata !DIExpression()), !dbg !3381
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3382

7:                                                ; preds = %6
  br label %8, !dbg !3383

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3387
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !3387
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #13, !dbg !3387
  br label %11, !dbg !3388

11:                                               ; preds = %8, %6
  ret void, !dbg !3388
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3389 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3393, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3394, metadata !DIExpression()), !dbg !3395
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3396

3:                                                ; preds = %2
  br label %4, !dbg !3397

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3401
  br label %6, !dbg !3402

6:                                                ; preds = %4, %2
  ret void, !dbg !3402
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3405, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3406, metadata !DIExpression()), !dbg !3407
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3408

3:                                                ; preds = %2
  br label %4, !dbg !3409

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3413
  br label %6, !dbg !3414

6:                                                ; preds = %4, %2
  ret void, !dbg !3414
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3417, metadata !DIExpression()), !dbg !3421
  %2 = icmp eq i32 %0, 0, !dbg !3422
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3422
  call void @llvm.dbg.value(metadata i32 %3, metadata !3418, metadata !DIExpression()), !dbg !3421
  %4 = or i32 %3, 12, !dbg !3423
  %5 = inttoptr i32 %4 to i32*, !dbg !3423
  %6 = load volatile i32, i32* %5, align 4, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %6, metadata !3420, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3421
  store volatile i32 191, i32* %5, align 4, !dbg !3424
  %7 = or i32 %3, 8, !dbg !3425
  %8 = inttoptr i32 %7 to i32*, !dbg !3425
  %9 = load volatile i32, i32* %8, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %9, metadata !3419, metadata !DIExpression()), !dbg !3421
  %10 = and i32 %9, 65327, !dbg !3426
  %11 = or i32 %10, 208, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %9, metadata !3419, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3421
  store volatile i32 %11, i32* %8, align 8, !dbg !3427
  %12 = or i32 %3, 68, !dbg !3428
  %13 = inttoptr i32 %12 to i32*, !dbg !3428
  store volatile i32 0, i32* %13, align 4, !dbg !3429
  store volatile i32 0, i32* %5, align 4, !dbg !3430
  %14 = or i32 %3, 16, !dbg !3431
  %15 = inttoptr i32 %14 to i32*, !dbg !3431
  store volatile i32 2, i32* %15, align 16, !dbg !3432
  %16 = and i32 %6, 65535, !dbg !3433
  store volatile i32 %16, i32* %5, align 4, !dbg !3434
  ret void, !dbg !3435
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 %1, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 %2, metadata !3442, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 %3, metadata !3443, metadata !DIExpression()), !dbg !3447
  %5 = icmp eq i32 %0, 0, !dbg !3448
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %6, metadata !3444, metadata !DIExpression()), !dbg !3447
  %7 = or i32 %6, 12, !dbg !3449
  %8 = inttoptr i32 %7 to i32*, !dbg !3449
  %9 = load volatile i32, i32* %8, align 4, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %9, metadata !3446, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3447
  store volatile i32 191, i32* %8, align 4, !dbg !3450
  %10 = zext i8 %1 to i32, !dbg !3451
  %11 = or i32 %6, 16, !dbg !3452
  %12 = inttoptr i32 %11 to i32*, !dbg !3452
  store volatile i32 %10, i32* %12, align 16, !dbg !3453
  %13 = or i32 %6, 20, !dbg !3454
  %14 = inttoptr i32 %13 to i32*, !dbg !3454
  store volatile i32 %10, i32* %14, align 4, !dbg !3455
  %15 = zext i8 %2 to i32, !dbg !3456
  %16 = or i32 %6, 24, !dbg !3457
  %17 = inttoptr i32 %16 to i32*, !dbg !3457
  store volatile i32 %15, i32* %17, align 8, !dbg !3458
  %18 = or i32 %6, 28, !dbg !3459
  %19 = inttoptr i32 %18 to i32*, !dbg !3459
  store volatile i32 %15, i32* %19, align 4, !dbg !3460
  %20 = or i32 %6, 8, !dbg !3461
  %21 = inttoptr i32 %20 to i32*, !dbg !3461
  %22 = load volatile i32, i32* %21, align 8, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %22, metadata !3445, metadata !DIExpression()), !dbg !3447
  %23 = and i32 %22, 65525, !dbg !3462
  %24 = or i32 %23, 10, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %22, metadata !3445, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3447
  store volatile i32 %24, i32* %21, align 8, !dbg !3463
  %25 = and i32 %9, 65535, !dbg !3464
  store volatile i32 %25, i32* %8, align 4, !dbg !3465
  %26 = zext i8 %3 to i32, !dbg !3466
  %27 = or i32 %6, 64, !dbg !3467
  %28 = inttoptr i32 %27 to i32*, !dbg !3467
  store volatile i32 %26, i32* %28, align 64, !dbg !3468
  %29 = or i32 %6, 68, !dbg !3469
  %30 = inttoptr i32 %29 to i32*, !dbg !3469
  store volatile i32 1, i32* %30, align 4, !dbg !3470
  ret void, !dbg !3471
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3477
  %2 = icmp eq i32 %0, 0, !dbg !3478
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3478
  call void @llvm.dbg.value(metadata i32 %3, metadata !3475, metadata !DIExpression()), !dbg !3477
  %4 = or i32 %3, 12, !dbg !3479
  %5 = inttoptr i32 %4 to i32*, !dbg !3479
  %6 = load volatile i32, i32* %5, align 4, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %6, metadata !3476, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3477
  store volatile i32 191, i32* %5, align 4, !dbg !3480
  %7 = or i32 %3, 8, !dbg !3481
  %8 = inttoptr i32 %7 to i32*, !dbg !3481
  store volatile i32 0, i32* %8, align 8, !dbg !3482
  store volatile i32 0, i32* %5, align 4, !dbg !3483
  %9 = and i32 %6, 65535, !dbg !3484
  store volatile i32 %9, i32* %5, align 4, !dbg !3485
  ret void, !dbg !3486
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3489, metadata !DIExpression()), !dbg !3491
  %2 = icmp eq i32 %0, 0, !dbg !3492
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3492
  call void @llvm.dbg.value(metadata i32 %3, metadata !3490, metadata !DIExpression()), !dbg !3491
  %4 = or i32 %3, 12, !dbg !3493
  %5 = inttoptr i32 %4 to i32*, !dbg !3493
  store volatile i32 191, i32* %5, align 4, !dbg !3494
  %6 = or i32 %3, 8, !dbg !3495
  %7 = inttoptr i32 %6 to i32*, !dbg !3495
  store volatile i32 16, i32* %7, align 8, !dbg !3496
  %8 = or i32 %3, 16, !dbg !3497
  %9 = inttoptr i32 %8 to i32*, !dbg !3497
  store volatile i32 0, i32* %9, align 16, !dbg !3498
  %10 = or i32 %3, 24, !dbg !3499
  %11 = inttoptr i32 %10 to i32*, !dbg !3499
  store volatile i32 0, i32* %11, align 8, !dbg !3500
  store volatile i32 128, i32* %5, align 4, !dbg !3501
  %12 = inttoptr i32 %3 to i32*, !dbg !3502
  store volatile i32 0, i32* %12, align 65536, !dbg !3503
  %13 = or i32 %3, 4, !dbg !3504
  %14 = inttoptr i32 %13 to i32*, !dbg !3504
  store volatile i32 0, i32* %14, align 4, !dbg !3505
  store volatile i32 0, i32* %5, align 4, !dbg !3506
  store volatile i32 0, i32* %14, align 4, !dbg !3507
  store volatile i32 0, i32* %7, align 8, !dbg !3508
  store volatile i32 191, i32* %5, align 4, !dbg !3509
  store volatile i32 0, i32* %7, align 8, !dbg !3510
  store volatile i32 0, i32* %5, align 4, !dbg !3511
  store volatile i32 0, i32* %9, align 16, !dbg !3512
  %15 = or i32 %3, 28, !dbg !3513
  %16 = inttoptr i32 %15 to i32*, !dbg !3513
  store volatile i32 0, i32* %16, align 4, !dbg !3514
  %17 = or i32 %3, 36, !dbg !3515
  %18 = inttoptr i32 %17 to i32*, !dbg !3515
  store volatile i32 0, i32* %18, align 4, !dbg !3516
  %19 = or i32 %3, 40, !dbg !3517
  %20 = inttoptr i32 %19 to i32*, !dbg !3517
  store volatile i32 0, i32* %20, align 8, !dbg !3518
  %21 = or i32 %3, 44, !dbg !3519
  %22 = inttoptr i32 %21 to i32*, !dbg !3519
  store volatile i32 0, i32* %22, align 4, !dbg !3520
  %23 = or i32 %3, 52, !dbg !3521
  %24 = inttoptr i32 %23 to i32*, !dbg !3521
  store volatile i32 0, i32* %24, align 4, !dbg !3522
  %25 = or i32 %3, 60, !dbg !3523
  %26 = inttoptr i32 %25 to i32*, !dbg !3523
  store volatile i32 0, i32* %26, align 4, !dbg !3524
  %27 = or i32 %3, 64, !dbg !3525
  %28 = inttoptr i32 %27 to i32*, !dbg !3525
  store volatile i32 0, i32* %28, align 64, !dbg !3526
  %29 = or i32 %3, 68, !dbg !3527
  %30 = inttoptr i32 %29 to i32*, !dbg !3527
  store volatile i32 0, i32* %30, align 4, !dbg !3528
  %31 = or i32 %3, 72, !dbg !3529
  %32 = inttoptr i32 %31 to i32*, !dbg !3529
  store volatile i32 0, i32* %32, align 8, !dbg !3530
  %33 = or i32 %3, 76, !dbg !3531
  %34 = inttoptr i32 %33 to i32*, !dbg !3531
  store volatile i32 0, i32* %34, align 4, !dbg !3532
  %35 = or i32 %3, 80, !dbg !3533
  %36 = inttoptr i32 %35 to i32*, !dbg !3533
  store volatile i32 0, i32* %36, align 16, !dbg !3534
  %37 = or i32 %3, 84, !dbg !3535
  %38 = inttoptr i32 %37 to i32*, !dbg !3535
  store volatile i32 0, i32* %38, align 4, !dbg !3536
  %39 = or i32 %3, 88, !dbg !3537
  %40 = inttoptr i32 %39 to i32*, !dbg !3537
  store volatile i32 0, i32* %40, align 8, !dbg !3538
  %41 = or i32 %3, 96, !dbg !3539
  %42 = inttoptr i32 %41 to i32*, !dbg !3539
  store volatile i32 0, i32* %42, align 32, !dbg !3540
  ret void, !dbg !3541
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3542 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  %2 = icmp eq i32 %0, 0, !dbg !3547
  call void @llvm.dbg.value(metadata i32 undef, metadata !3545, metadata !DIExpression()), !dbg !3546
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3548

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3549
  %7 = and i32 %6, 64, !dbg !3550
  %8 = icmp eq i32 %7, 0, !dbg !3551
  br i1 %8, label %5, label %9, !dbg !3548, !llvm.loop !3552

9:                                                ; preds = %5
  ret void, !dbg !3554
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3555 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3559, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 %1, metadata !3560, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %2, metadata !3561, metadata !DIExpression()), !dbg !3572
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3573
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3573
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3562, metadata !DIExpression()), !dbg !3574
  %7 = bitcast i32* %5 to i8*, !dbg !3575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3575
  call void @llvm.dbg.value(metadata i32* %5, metadata !3571, metadata !DIExpression(DW_OP_deref)), !dbg !3572
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3576
  call void @llvm.va_start(i8* nonnull %6), !dbg !3577
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3578
  %10 = load i32, i32* %9, align 4, !dbg !3578
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3578
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3578
  call void @llvm.va_end(i8* nonnull %6), !dbg !3579
  %13 = load i32, i32* %5, align 4, !dbg !3580
  call void @llvm.dbg.value(metadata i32 %13, metadata !3571, metadata !DIExpression()), !dbg !3572
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3581
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3582
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3582
  ret void, !dbg !3582
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3583 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3585, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i32 %1, metadata !3586, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata i8* %2, metadata !3587, metadata !DIExpression()), !dbg !3590
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3591
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3591
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3588, metadata !DIExpression()), !dbg !3592
  %7 = bitcast i32* %5 to i8*, !dbg !3593
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3593
  call void @llvm.dbg.value(metadata i32* %5, metadata !3589, metadata !DIExpression(DW_OP_deref)), !dbg !3590
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3594
  call void @llvm.va_start(i8* nonnull %6), !dbg !3595
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3596
  %10 = load i32, i32* %9, align 4, !dbg !3596
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3596
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3596
  call void @llvm.va_end(i8* nonnull %6), !dbg !3597
  %13 = load i32, i32* %5, align 4, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %13, metadata !3589, metadata !DIExpression()), !dbg !3590
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3600
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3600
  ret void, !dbg !3600
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3601 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3603, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %1, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %2, metadata !3605, metadata !DIExpression()), !dbg !3608
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3609
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3609
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3606, metadata !DIExpression()), !dbg !3610
  %7 = bitcast i32* %5 to i8*, !dbg !3611
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3611
  call void @llvm.dbg.value(metadata i32* %5, metadata !3607, metadata !DIExpression(DW_OP_deref)), !dbg !3608
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3612
  call void @llvm.va_start(i8* nonnull %6), !dbg !3613
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3614
  %10 = load i32, i32* %9, align 4, !dbg !3614
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3614
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3614
  call void @llvm.va_end(i8* nonnull %6), !dbg !3615
  %13 = load i32, i32* %5, align 4, !dbg !3616
  call void @llvm.dbg.value(metadata i32 %13, metadata !3607, metadata !DIExpression()), !dbg !3608
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3617
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3618
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3618
  ret void, !dbg !3618
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3619 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3621, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 %1, metadata !3622, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i8* %2, metadata !3623, metadata !DIExpression()), !dbg !3626
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3627
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3624, metadata !DIExpression()), !dbg !3628
  %7 = bitcast i32* %5 to i8*, !dbg !3629
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3629
  call void @llvm.dbg.value(metadata i32* %5, metadata !3625, metadata !DIExpression(DW_OP_deref)), !dbg !3626
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3630
  call void @llvm.va_start(i8* nonnull %6), !dbg !3631
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3632
  %10 = load i32, i32* %9, align 4, !dbg !3632
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3632
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3632
  call void @llvm.va_end(i8* nonnull %6), !dbg !3633
  %13 = load i32, i32* %5, align 4, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %13, metadata !3625, metadata !DIExpression()), !dbg !3626
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3635
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3636
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3636
  ret void, !dbg !3636
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !3637 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3643, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 %1, metadata !3644, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %2, metadata !3645, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %3, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 %4, metadata !3647, metadata !DIExpression()), !dbg !3648
  ret void, !dbg !3649
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #0 !dbg !3650 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %1, metadata !3657, metadata !DIExpression()), !dbg !3659
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3660, !range !3662
  %3 = icmp eq i8 %2, 0, !dbg !3660
  br i1 %3, label %5, label %4, !dbg !3663

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3664
  br label %15, !dbg !3666

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3667
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3669
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3670
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3671
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3672
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3673
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression()), !dbg !3659
  br label %7, !dbg !3675

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3655, metadata !DIExpression()), !dbg !3659
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3677
  store volatile i32 0, i32* %9, align 4, !dbg !3680
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3681
  store volatile i32 0, i32* %10, align 4, !dbg !3682
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3683
  store i32 0, i32* %11, align 4, !dbg !3684
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3685
  store i32 0, i32* %12, align 4, !dbg !3686
  %13 = add nuw nsw i32 %8, 1, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %13, metadata !3655, metadata !DIExpression()), !dbg !3659
  %14 = icmp eq i32 %13, 16, !dbg !3688
  br i1 %14, label %15, label %7, !dbg !3675, !llvm.loop !3689

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3659
  ret i32 %16, !dbg !3691
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !3692 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %1, metadata !3694, metadata !DIExpression()), !dbg !3696
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3697
  %3 = and i32 %2, -31, !dbg !3697
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3697
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3698
  %5 = or i32 %4, 19, !dbg !3698
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3698
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3699
  %7 = and i32 %6, -31, !dbg !3699
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3699
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3700
  %9 = or i32 %8, 3, !dbg !3700
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3700
  tail call void asm sideeffect "isb", ""() #15, !dbg !3701, !srcloc !3705
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3706
  ret i32 0, !dbg !3707
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #0 !dbg !3708 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3711
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3712
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3713
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3714
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3715
  call void @llvm.dbg.value(metadata i32 0, metadata !3710, metadata !DIExpression()), !dbg !3716
  br label %2, !dbg !3717

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3710, metadata !DIExpression()), !dbg !3716
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3719
  store volatile i32 0, i32* %4, align 4, !dbg !3722
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3723
  store volatile i32 0, i32* %5, align 4, !dbg !3724
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3725
  store i32 0, i32* %6, align 4, !dbg !3726
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3727
  store i32 0, i32* %7, align 4, !dbg !3728
  %8 = add nuw nsw i32 %3, 1, !dbg !3729
  call void @llvm.dbg.value(metadata i32 %8, metadata !3710, metadata !DIExpression()), !dbg !3716
  %9 = icmp eq i32 %8, 16, !dbg !3730
  br i1 %9, label %10, label %2, !dbg !3717, !llvm.loop !3731

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3733
  ret i32 0, !dbg !3734
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #3 !dbg !3735 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3736
  %2 = and i32 %1, 768, !dbg !3738
  %3 = icmp eq i32 %2, 0, !dbg !3738
  br i1 %3, label %8, label %4, !dbg !3739

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3740
  %6 = or i32 %5, 13, !dbg !3740
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3740
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3741
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3742
  br label %8, !dbg !3743

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3744
  ret i32 %9, !dbg !3745
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #0 !dbg !3746 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %1, metadata !3748, metadata !DIExpression()), !dbg !3750
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3751
  %3 = and i32 %2, 1, !dbg !3753
  %4 = icmp eq i32 %3, 0, !dbg !3753
  br i1 %4, label %7, label %5, !dbg !3754

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3755
  br label %7, !dbg !3757

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3758
  %9 = and i32 %8, -2, !dbg !3758
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3758
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3759
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3760
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3761
  ret i32 0, !dbg !3762
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #3 !dbg !3763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3768
  %2 = icmp ugt i32 %0, 15, !dbg !3769
  br i1 %2, label %13, label %3, !dbg !3771

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3772
  %5 = load volatile i32, i32* %4, align 4, !dbg !3772
  %6 = and i32 %5, 256, !dbg !3774
  %7 = icmp eq i32 %6, 0, !dbg !3774
  br i1 %7, label %13, label %8, !dbg !3775

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3776
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3778
  %11 = or i32 %10, %9, !dbg !3778
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3778
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3779
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3780
  br label %13, !dbg !3781

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3768
  ret i32 %14, !dbg !3782
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #3 !dbg !3783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()), !dbg !3786
  %2 = icmp ugt i32 %0, 15, !dbg !3787
  br i1 %2, label %11, label %3, !dbg !3789

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3790
  %5 = xor i32 %4, -1, !dbg !3791
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3792
  %7 = and i32 %6, %5, !dbg !3792
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3792
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3793
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3794
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3795
  store i32 0, i32* %9, align 4, !dbg !3796
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3797
  store i32 0, i32* %10, align 4, !dbg !3798
  br label %11, !dbg !3799

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3786
  ret i32 %12, !dbg !3800
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #3 !dbg !3801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3806, metadata !DIExpression()), !dbg !3807
  %2 = icmp ugt i32 %0, 3, !dbg !3808
  br i1 %2, label %13, label %3, !dbg !3810

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3811
  %5 = and i32 %4, -769, !dbg !3811
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3811
  %6 = shl nuw nsw i32 %0, 8, !dbg !3812
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3813
  %8 = or i32 %7, %6, !dbg !3813
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3813
  %9 = icmp eq i32 %0, 0, !dbg !3814
  br i1 %9, label %10, label %11, !dbg !3816

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3817
  br label %11, !dbg !3819

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3820
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3821
  br label %13, !dbg !3822

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3807
  ret i32 %14, !dbg !3823
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #0 !dbg !3824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3835, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3836, metadata !DIExpression()), !dbg !3837
  %3 = icmp ugt i32 %0, 15, !dbg !3838
  br i1 %3, label %30, label %4, !dbg !3840

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3841
  br i1 %5, label %30, label %6, !dbg !3843

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3844
  %8 = load i32, i32* %7, align 4, !dbg !3844
  %9 = and i32 %8, 4095, !dbg !3846
  %10 = icmp eq i32 %9, 0, !dbg !3846
  br i1 %10, label %12, label %11, !dbg !3847

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i32 0, i32 0)) #16, !dbg !3848
  unreachable, !dbg !3848

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3850
  %14 = load i32, i32* %13, align 4, !dbg !3850
  %15 = and i32 %14, 4095, !dbg !3852
  %16 = icmp eq i32 %15, 0, !dbg !3852
  br i1 %16, label %18, label %17, !dbg !3853

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.6, i32 0, i32 0)) #16, !dbg !3854
  unreachable, !dbg !3854

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3856
  store volatile i32 %8, i32* %19, align 4, !dbg !3857
  %20 = load i32, i32* %7, align 4, !dbg !3858
  %21 = load i32, i32* %13, align 4, !dbg !3859
  %22 = add i32 %21, %20, !dbg !3860
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3861
  store volatile i32 %22, i32* %23, align 4, !dbg !3862
  %24 = load volatile i32, i32* %19, align 4, !dbg !3863
  %25 = or i32 %24, 256, !dbg !3863
  store volatile i32 %25, i32* %19, align 4, !dbg !3863
  %26 = load volatile i32, i32* %19, align 4, !dbg !3864
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3865
  store i32 %26, i32* %27, align 4, !dbg !3866
  %28 = load volatile i32, i32* %23, align 4, !dbg !3867
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3868
  store i32 %28, i32* %29, align 4, !dbg !3869
  br label %30, !dbg !3870

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3837
  ret i32 %31, !dbg !3871
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !3872 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()), !dbg !3878
  %2 = and i32 %0, 31, !dbg !3879
  %3 = icmp eq i32 %2, 0, !dbg !3879
  br i1 %3, label %4, label %9, !dbg !3881

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3882
  call void @llvm.dbg.value(metadata i32 %5, metadata !3877, metadata !DIExpression()), !dbg !3878
  %6 = and i32 %0, -32, !dbg !3883
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3884
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3885
  %8 = or i32 %7, 5, !dbg !3885
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3885
  tail call void asm sideeffect "isb", ""() #15, !dbg !3886, !srcloc !3705
  tail call void @restore_interrupt_mask(i32 noundef %5) #13, !dbg !3888
  br label %9, !dbg !3889

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3878
  ret i32 %10, !dbg !3890
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !3891 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i32 %1, metadata !3896, metadata !DIExpression()), !dbg !3899
  %3 = add i32 %1, %0, !dbg !3900
  call void @llvm.dbg.value(metadata i32 %3, metadata !3898, metadata !DIExpression()), !dbg !3899
  %4 = or i32 %1, %0, !dbg !3901
  %5 = and i32 %4, 31, !dbg !3901
  %6 = icmp eq i32 %5, 0, !dbg !3901
  br i1 %6, label %7, label %16, !dbg !3901

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3903
  call void @llvm.dbg.value(metadata i32 %8, metadata !3897, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3899
  %9 = icmp ugt i32 %3, %0, !dbg !3904
  br i1 %9, label %10, label %15, !dbg !3905

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3895, metadata !DIExpression()), !dbg !3899
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3906
  %13 = add i32 %11, 32, !dbg !3908
  call void @llvm.dbg.value(metadata i32 %13, metadata !3895, metadata !DIExpression()), !dbg !3899
  %14 = icmp ult i32 %13, %3, !dbg !3904
  br i1 %14, label %10, label %15, !dbg !3905, !llvm.loop !3909

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !3911, !srcloc !3705
  tail call void @restore_interrupt_mask(i32 noundef %8) #13, !dbg !3913
  br label %16, !dbg !3914

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3899
  ret i32 %17, !dbg !3915
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !3916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3920
  %2 = and i32 %0, 31, !dbg !3921
  %3 = icmp eq i32 %2, 0, !dbg !3921
  br i1 %3, label %4, label %9, !dbg !3923

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3924
  call void @llvm.dbg.value(metadata i32 %5, metadata !3919, metadata !DIExpression()), !dbg !3920
  %6 = and i32 %0, -32, !dbg !3925
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3926
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3927
  %8 = or i32 %7, 21, !dbg !3927
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3927
  tail call void asm sideeffect "isb", ""() #15, !dbg !3928, !srcloc !3705
  tail call void @restore_interrupt_mask(i32 noundef %5) #13, !dbg !3930
  br label %9, !dbg !3931

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3920
  ret i32 %10, !dbg !3932
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !3933 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i32 %1, metadata !3936, metadata !DIExpression()), !dbg !3939
  %3 = add i32 %1, %0, !dbg !3940
  call void @llvm.dbg.value(metadata i32 %3, metadata !3938, metadata !DIExpression()), !dbg !3939
  %4 = or i32 %1, %0, !dbg !3941
  %5 = and i32 %4, 31, !dbg !3941
  %6 = icmp eq i32 %5, 0, !dbg !3941
  br i1 %6, label %7, label %16, !dbg !3941

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %8, metadata !3937, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3939
  %9 = icmp ugt i32 %3, %0, !dbg !3944
  br i1 %9, label %10, label %15, !dbg !3945

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3935, metadata !DIExpression()), !dbg !3939
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3946
  %13 = add i32 %11, 32, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %13, metadata !3935, metadata !DIExpression()), !dbg !3939
  %14 = icmp ult i32 %13, %3, !dbg !3944
  br i1 %14, label %10, label %15, !dbg !3945, !llvm.loop !3949

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !3951, !srcloc !3705
  tail call void @restore_interrupt_mask(i32 noundef %8) #13, !dbg !3953
  br label %16, !dbg !3954

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3939
  ret i32 %17, !dbg !3955
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !3956 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3959
  call void @llvm.dbg.value(metadata i32 %1, metadata !3958, metadata !DIExpression()), !dbg !3960
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3961
  %3 = and i32 %2, -31, !dbg !3961
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3961
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3962
  %5 = or i32 %4, 19, !dbg !3962
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3962
  tail call void asm sideeffect "isb", ""() #15, !dbg !3963, !srcloc !3705
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3965
  ret i32 0, !dbg !3966
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #3 !dbg !3967 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3971, metadata !DIExpression()), !dbg !3973
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3974
  %3 = and i32 %2, 8, !dbg !3976
  %4 = icmp eq i32 %3, 0, !dbg !3976
  br i1 %4, label %23, label %5, !dbg !3977

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3972, metadata !DIExpression()), !dbg !3973
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3978
  %8 = shl nuw nsw i32 1, %6, !dbg !3983
  %9 = and i32 %7, %8, !dbg !3984
  %10 = icmp eq i32 %9, 0, !dbg !3984
  br i1 %10, label %20, label %11, !dbg !3985

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3986
  %13 = load volatile i32, i32* %12, align 4, !dbg !3986
  %14 = and i32 %13, -257, !dbg !3989
  %15 = icmp ugt i32 %14, %0, !dbg !3990
  br i1 %15, label %20, label %16, !dbg !3991

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3992
  %18 = load volatile i32, i32* %17, align 4, !dbg !3992
  %19 = icmp ugt i32 %18, %0, !dbg !3993
  br i1 %19, label %23, label %20, !dbg !3994

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3995
  call void @llvm.dbg.value(metadata i32 %21, metadata !3972, metadata !DIExpression()), !dbg !3973
  %22 = icmp eq i32 %21, 16, !dbg !3996
  br i1 %22, label %23, label %5, !dbg !3997, !llvm.loop !3998

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3973
  ret i1 %24, !dbg !4000
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !4001 {
  ret i32 0, !dbg !4005
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4006 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32 -1, metadata !4011, metadata !DIExpression()), !dbg !4012
  %2 = icmp ugt i32 %0, 95, !dbg !4013
  br i1 %2, label %4, label %3, !dbg !4013

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !4015
  call void @llvm.dbg.value(metadata i32 0, metadata !4011, metadata !DIExpression()), !dbg !4012
  br label %4, !dbg !4017

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4012
  ret i32 %5, !dbg !4018
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4023, metadata !DIExpression()), !dbg !4024
  %2 = and i32 %0, 31, !dbg !4025
  %3 = shl nuw i32 1, %2, !dbg !4026
  %4 = lshr i32 %0, 5, !dbg !4027
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4028
  store volatile i32 %3, i32* %5, align 4, !dbg !4029
  ret void, !dbg !4030
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4031 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4033, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i32 -1, metadata !4034, metadata !DIExpression()), !dbg !4035
  %2 = icmp ugt i32 %0, 95, !dbg !4036
  br i1 %2, label %4, label %3, !dbg !4036

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !4038
  call void @llvm.dbg.value(metadata i32 0, metadata !4034, metadata !DIExpression()), !dbg !4035
  br label %4, !dbg !4040

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4035
  ret i32 %5, !dbg !4041
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4042 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4044, metadata !DIExpression()), !dbg !4045
  %2 = and i32 %0, 31, !dbg !4046
  %3 = shl nuw i32 1, %2, !dbg !4047
  %4 = lshr i32 %0, 5, !dbg !4048
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4049
  store volatile i32 %3, i32* %5, align 4, !dbg !4050
  ret void, !dbg !4051
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !4052 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4056, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 255, metadata !4057, metadata !DIExpression()), !dbg !4058
  %2 = icmp ugt i32 %0, 95, !dbg !4059
  br i1 %2, label %5, label %3, !dbg !4059

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !4061
  call void @llvm.dbg.value(metadata i32 %4, metadata !4057, metadata !DIExpression()), !dbg !4058
  br label %5, !dbg !4063

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4058
  ret i32 %6, !dbg !4064
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !4065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4069, metadata !DIExpression()), !dbg !4070
  %2 = lshr i32 %0, 5, !dbg !4071
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4072
  %4 = load volatile i32, i32* %3, align 4, !dbg !4072
  %5 = and i32 %0, 31, !dbg !4073
  %6 = lshr i32 %4, %5, !dbg !4074
  %7 = and i32 %6, 1, !dbg !4074
  ret i32 %7, !dbg !4075
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4078, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 -1, metadata !4079, metadata !DIExpression()), !dbg !4080
  %2 = icmp ugt i32 %0, 95, !dbg !4081
  br i1 %2, label %4, label %3, !dbg !4081

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !4083
  call void @llvm.dbg.value(metadata i32 0, metadata !4079, metadata !DIExpression()), !dbg !4080
  br label %4, !dbg !4085

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4080
  ret i32 %5, !dbg !4086
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4090
  %2 = and i32 %0, 31, !dbg !4091
  %3 = shl nuw i32 1, %2, !dbg !4092
  %4 = lshr i32 %0, 5, !dbg !4093
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4094
  store volatile i32 %3, i32* %5, align 4, !dbg !4095
  ret void, !dbg !4096
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4099, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i32 -1, metadata !4100, metadata !DIExpression()), !dbg !4101
  %2 = icmp ugt i32 %0, 95, !dbg !4102
  br i1 %2, label %4, label %3, !dbg !4102

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4104
  call void @llvm.dbg.value(metadata i32 0, metadata !4100, metadata !DIExpression()), !dbg !4101
  br label %4, !dbg !4106

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4101
  ret i32 %5, !dbg !4107
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4110, metadata !DIExpression()), !dbg !4111
  %2 = and i32 %0, 31, !dbg !4112
  %3 = shl nuw i32 1, %2, !dbg !4113
  %4 = lshr i32 %0, 5, !dbg !4114
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4115
  store volatile i32 %3, i32* %5, align 4, !dbg !4116
  ret void, !dbg !4117
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4122, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 %1, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 -1, metadata !4124, metadata !DIExpression()), !dbg !4125
  %3 = icmp ugt i32 %0, 95, !dbg !4126
  br i1 %3, label %5, label %4, !dbg !4126

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !4128
  call void @llvm.dbg.value(metadata i32 0, metadata !4124, metadata !DIExpression()), !dbg !4125
  br label %5, !dbg !4130

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4125
  ret i32 %6, !dbg !4131
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !4132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4138
  call void @llvm.dbg.value(metadata i32 %1, metadata !4137, metadata !DIExpression()), !dbg !4138
  %3 = trunc i32 %1 to i8, !dbg !4139
  %4 = shl i8 %3, 5, !dbg !4139
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4142
  store volatile i8 %4, i8* %5, align 1, !dbg !4143
  ret void, !dbg !4144
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !4145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4147, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 68, metadata !4148, metadata !DIExpression()), !dbg !4149
  %2 = icmp ugt i32 %0, 95, !dbg !4150
  br i1 %2, label %5, label %3, !dbg !4150

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !4152
  call void @llvm.dbg.value(metadata i32 %4, metadata !4148, metadata !DIExpression()), !dbg !4149
  br label %5, !dbg !4154

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4149
  ret i32 %6, !dbg !4155
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !4156 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4158, metadata !DIExpression()), !dbg !4159
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4160
  %3 = load volatile i8, i8* %2, align 1, !dbg !4160
  %4 = lshr i8 %3, 5, !dbg !4163
  %5 = zext i8 %4 to i32, !dbg !4163
  ret i32 %5, !dbg !4164
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !4165 {
  ret void, !dbg !4166
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !4167 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4169, metadata !DIExpression()), !dbg !4171
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %1, metadata !4170, metadata !DIExpression()), !dbg !4171
  %2 = icmp ugt i32 %1, 95, !dbg !4173
  br i1 %2, label %12, label %3, !dbg !4173

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4175
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4175
  %6 = icmp eq void (i32)* %5, null, !dbg !4177
  br i1 %6, label %7, label %8, !dbg !4178

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4169, metadata !DIExpression()), !dbg !4171
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #13, !dbg !4179
  br label %12, !dbg !4181

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4182
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4184
  store i32 %9, i32* %10, align 4, !dbg !4185
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4186
  tail call void %11(i32 noundef %1) #13, !dbg !4187
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()), !dbg !4171
  br label %12, !dbg !4188

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4171
  ret i32 %13, !dbg !4189
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !4190 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4193
  %2 = and i32 %1, 511, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %2, metadata !4192, metadata !DIExpression()), !dbg !4195
  %3 = add nsw i32 %2, -16, !dbg !4196
  ret i32 %3, !dbg !4197
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !4198 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4199
  %2 = lshr i32 %1, 22, !dbg !4200
  %3 = and i32 %2, 1, !dbg !4200
  ret i32 %3, !dbg !4201
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !4202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4207, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4208, metadata !DIExpression()), !dbg !4210
  %3 = icmp ugt i32 %0, 95, !dbg !4211
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4211
  br i1 %5, label %10, label %6, !dbg !4211

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !4213
  call void @llvm.dbg.value(metadata i32 %7, metadata !4209, metadata !DIExpression()), !dbg !4210
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4214
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4215
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4216
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4217
  store i32 0, i32* %9, align 4, !dbg !4218
  tail call void @restore_interrupt_mask(i32 noundef %7) #13, !dbg !4219
  br label %10, !dbg !4220

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4210
  ret i32 %11, !dbg !4221
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !4222 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4226, metadata !DIExpression()), !dbg !4227
  %2 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !4228
  store i32 %2, i32* %0, align 4, !dbg !4229
  ret i32 0, !dbg !4230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !4231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4236
  tail call void @restore_interrupt_mask(i32 noundef %0) #13, !dbg !4237
  ret i32 0, !dbg !4238
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i8 %1, metadata !4246, metadata !DIExpression()), !dbg !4248
  %3 = icmp ugt i32 %0, 60, !dbg !4249
  br i1 %3, label %11, label %4, !dbg !4251

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4252
  br i1 %5, label %11, label %6, !dbg !4254

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4255
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #13, !dbg !4256
  call void @llvm.dbg.value(metadata i32 %8, metadata !4247, metadata !DIExpression()), !dbg !4248
  %9 = icmp slt i32 %8, 0, !dbg !4257
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4257
  br label %11, !dbg !4258

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4248
  ret i32 %12, !dbg !4259
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !4260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4265, metadata !DIExpression()), !dbg !4266
  ret i32 0, !dbg !4267
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !4268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4270, metadata !DIExpression()), !dbg !4271
  ret i32 0, !dbg !4272
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4273 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4278, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32* %1, metadata !4279, metadata !DIExpression()), !dbg !4288
  %4 = icmp eq i32* %1, null, !dbg !4289
  br i1 %4, label %12, label %5, !dbg !4291

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4292
  br i1 %6, label %12, label %7, !dbg !4294

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4295
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !4295
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4295
  %10 = load i8, i8* %9, align 1, !dbg !4295
  call void @llvm.dbg.value(metadata i8 %10, metadata !4280, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4288
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4295
  %11 = zext i8 %10 to i32, !dbg !4296
  store i32 %11, i32* %1, align 4, !dbg !4297
  br label %12, !dbg !4298

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4288
  ret i32 %13, !dbg !4299
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4304, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 %1, metadata !4305, metadata !DIExpression()), !dbg !4307
  %3 = icmp ugt i32 %0, 60, !dbg !4308
  br i1 %3, label %9, label %4, !dbg !4310

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4311
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !4312
  call void @llvm.dbg.value(metadata i32 %6, metadata !4306, metadata !DIExpression()), !dbg !4307
  %7 = icmp slt i32 %6, 0, !dbg !4313
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4313
  br label %9, !dbg !4314

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4307
  ret i32 %10, !dbg !4315
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4316 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4318, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32* %1, metadata !4319, metadata !DIExpression()), !dbg !4321
  %4 = icmp ugt i32 %0, 60, !dbg !4322
  br i1 %4, label %12, label %5, !dbg !4324

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4325
  br i1 %6, label %12, label %7, !dbg !4327

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4328
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4328
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !4328
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4328
  %10 = load i8, i8* %9, align 2, !dbg !4328
  call void @llvm.dbg.value(metadata i8 %10, metadata !4320, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4321
  call void @llvm.dbg.value(metadata i8 undef, metadata !4320, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4321
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4328
  %11 = zext i8 %10 to i32, !dbg !4329
  store i32 %11, i32* %1, align 4, !dbg !4330
  br label %12, !dbg !4331

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4321
  ret i32 %13, !dbg !4332
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4333 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4338, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i32 %1, metadata !4339, metadata !DIExpression()), !dbg !4341
  %3 = icmp ugt i32 %0, 60, !dbg !4342
  br i1 %3, label %8, label %4, !dbg !4344

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #13, !dbg !4345
  call void @llvm.dbg.value(metadata i32 %5, metadata !4340, metadata !DIExpression()), !dbg !4341
  %6 = icmp slt i32 %5, 0, !dbg !4346
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4346
  br label %8, !dbg !4347

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4341
  ret i32 %9, !dbg !4348
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4349 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4354, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i32* %1, metadata !4355, metadata !DIExpression()), !dbg !4357
  %4 = icmp ugt i32 %0, 60, !dbg !4358
  br i1 %4, label %13, label %5, !dbg !4360

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4361
  br i1 %6, label %13, label %7, !dbg !4363

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4364
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4364
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !4364
  call void @llvm.dbg.value(metadata i32 undef, metadata !4356, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4357
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4364
  %10 = load i8, i8* %9, align 4, !dbg !4364
  call void @llvm.dbg.value(metadata i8 %10, metadata !4356, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4364
  %11 = icmp ne i8 %10, 0, !dbg !4365
  %12 = zext i1 %11 to i32, !dbg !4365
  store i32 %12, i32* %1, align 4, !dbg !4366
  br label %13, !dbg !4367

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4357
  ret i32 %14, !dbg !4368
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !4369 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4371, metadata !DIExpression()), !dbg !4373
  %3 = icmp ugt i32 %0, 60, !dbg !4374
  br i1 %3, label %11, label %4, !dbg !4376

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4377
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #13, !dbg !4377
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4377
  %7 = load i8, i8* %6, align 2, !dbg !4377
  call void @llvm.dbg.value(metadata i8 %7, metadata !4372, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4373
  call void @llvm.dbg.value(metadata i8 undef, metadata !4372, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4373
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4377
  %8 = xor i8 %7, 1, !dbg !4378
  %9 = zext i8 %8 to i32, !dbg !4378
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4379
  br label %11, !dbg !4380

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4373
  ret i32 %12, !dbg !4381
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !4382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4384, metadata !DIExpression()), !dbg !4386
  %2 = icmp ugt i32 %0, 60, !dbg !4387
  br i1 %2, label %10, label %3, !dbg !4389

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !4390
  call void @llvm.dbg.value(metadata i32 %4, metadata !4385, metadata !DIExpression()), !dbg !4386
  %5 = icmp slt i32 %4, 0, !dbg !4391
  br i1 %5, label %10, label %6, !dbg !4393

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #13, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %7, metadata !4385, metadata !DIExpression()), !dbg !4386
  %8 = icmp slt i32 %7, 0, !dbg !4395
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4395
  br label %10, !dbg !4396

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4386
  ret i32 %11, !dbg !4397
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !4398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4400, metadata !DIExpression()), !dbg !4402
  %2 = icmp ugt i32 %0, 60, !dbg !4403
  br i1 %2, label %10, label %3, !dbg !4405

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !4406
  call void @llvm.dbg.value(metadata i32 %4, metadata !4401, metadata !DIExpression()), !dbg !4402
  %5 = icmp slt i32 %4, 0, !dbg !4407
  br i1 %5, label %10, label %6, !dbg !4409

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #13, !dbg !4410
  call void @llvm.dbg.value(metadata i32 %7, metadata !4401, metadata !DIExpression()), !dbg !4402
  %8 = icmp slt i32 %7, 0, !dbg !4411
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4411
  br label %10, !dbg !4412

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4402
  ret i32 %11, !dbg !4413
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !4414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4416, metadata !DIExpression()), !dbg !4418
  %2 = icmp ugt i32 %0, 60, !dbg !4419
  br i1 %2, label %7, label %3, !dbg !4421

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !4422
  call void @llvm.dbg.value(metadata i32 %4, metadata !4417, metadata !DIExpression()), !dbg !4418
  %5 = icmp slt i32 %4, 0, !dbg !4423
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4423
  br label %7, !dbg !4424

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4418
  ret i32 %8, !dbg !4425
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4430, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.value(metadata i32 %1, metadata !4431, metadata !DIExpression()), !dbg !4433
  %3 = icmp ugt i32 %0, 60, !dbg !4434
  br i1 %3, label %9, label %4, !dbg !4436

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4437
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !4438
  call void @llvm.dbg.value(metadata i32 %6, metadata !4432, metadata !DIExpression()), !dbg !4433
  %7 = icmp slt i32 %6, 0, !dbg !4439
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4439
  br label %9, !dbg !4440

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4433
  ret i32 %10, !dbg !4441
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4442 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4447, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.value(metadata i32* %1, metadata !4448, metadata !DIExpression()), !dbg !4451
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4452
  %4 = icmp ugt i32 %0, 60, !dbg !4453
  br i1 %4, label %11, label %5, !dbg !4455

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4450, metadata !DIExpression(DW_OP_deref)), !dbg !4451
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #13, !dbg !4456
  call void @llvm.dbg.value(metadata i32 %6, metadata !4449, metadata !DIExpression()), !dbg !4451
  %7 = load i8, i8* %3, align 1, !dbg !4457
  call void @llvm.dbg.value(metadata i8 %7, metadata !4450, metadata !DIExpression()), !dbg !4451
  %8 = zext i8 %7 to i32, !dbg !4458
  store i32 %8, i32* %1, align 4, !dbg !4459
  %9 = icmp slt i32 %6, 0, !dbg !4460
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4460
  br label %11, !dbg !4461

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4451
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4462
  ret i32 %12, !dbg !4462
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4463 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4469, metadata !DIExpression()), !dbg !4470
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4471
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4473
  %4 = load i8, i8* %3, align 4, !dbg !4473, !range !3662
  %5 = icmp eq i8 %4, 0, !dbg !4473
  br i1 %5, label %6, label %12, !dbg !4474

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4475
  br i1 %7, label %9, label %8, !dbg !4477

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 noundef %0) #13, !dbg !4478
  br label %12, !dbg !4480

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !4481
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #13, !dbg !4482
  store i8 1, i8* %3, align 4, !dbg !4483
  br label %12, !dbg !4484

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !4470
  ret i32 %13, !dbg !4485
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4490, metadata !DIExpression()), !dbg !4491
  %2 = icmp ult i32 %0, 5, !dbg !4492
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !4494
  ret i1 %4, !dbg !4495
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4496 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4498, metadata !DIExpression()), !dbg !4499
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4500
  br i1 %2, label %4, label %3, !dbg !4502

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i32 noundef %0) #13, !dbg !4503
  br label %14, !dbg !4505

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4506
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !4508
  %7 = load i32, i32* %6, align 4, !dbg !4508
  %8 = icmp eq i32 %7, 0, !dbg !4509
  br i1 %8, label %10, label %9, !dbg !4510

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.19, i32 0, i32 0), i32 noundef %0) #13, !dbg !4511
  br label %14, !dbg !4513

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !4514
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #13, !dbg !4515
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4516
  store i8 0, i8* %13, align 4, !dbg !4517
  br label %14, !dbg !4518

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !4499
  ret i32 %15, !dbg !4519
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4525, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i32* %1, metadata !4526, metadata !DIExpression()), !dbg !4527
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !4528

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4529
  %5 = icmp eq i32 %4, 1, !dbg !4533
  br i1 %5, label %7, label %6, !dbg !4534

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #13, !dbg !4535
  br label %7, !dbg !4537

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #13, !dbg !4538
  store i32 %8, i32* %1, align 4, !dbg !4539
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4540
  br label %25, !dbg !4541

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4542
  %11 = icmp eq i32 %10, 1, !dbg !4546
  br i1 %11, label %13, label %12, !dbg !4547

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #13, !dbg !4548
  br label %13, !dbg !4550

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #13, !dbg !4551
  %15 = tail call i32 @top_mcu_freq_get() #13, !dbg !4552
  %16 = udiv i32 %15, 1000000, !dbg !4553
  %17 = udiv i32 %14, %16, !dbg !4554
  store i32 %17, i32* %1, align 4, !dbg !4555
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4556
  br label %25, !dbg !4557

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4558
  %20 = icmp eq i32 %19, 1, !dbg !4562
  br i1 %20, label %22, label %21, !dbg !4563

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #13, !dbg !4564
  br label %22, !dbg !4566

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #13, !dbg !4567
  store i32 %23, i32* %1, align 4, !dbg !4568
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4569
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #13, !dbg !4570
  br label %25, !dbg !4572

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !4527
  ret i32 %26, !dbg !4573
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #11 !dbg !4574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4578, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i32 %1, metadata !4579, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i32* %2, metadata !4580, metadata !DIExpression()), !dbg !4581
  %4 = icmp eq i32* %2, null, !dbg !4582
  br i1 %4, label %7, label %5, !dbg !4584

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !4585
  store i32 %6, i32* %2, align 4, !dbg !4585
  br label %7, !dbg !4587

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !4581
  ret i32 %8, !dbg !4588
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4594, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i32* %1, metadata !4595, metadata !DIExpression()), !dbg !4596
  %3 = icmp ugt i32 %0, 4, !dbg !4597
  br i1 %3, label %4, label %5, !dbg !4599

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #13, !dbg !4600
  br label %8, !dbg !4602

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4603
  %7 = load i32, i32* %6, align 4, !dbg !4603
  store i32 %7, i32* %1, align 4, !dbg !4604
  br label %8, !dbg !4605

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !4596
  ret i32 %9, !dbg !4606
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4607 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4611, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4612, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i8* %2, metadata !4613, metadata !DIExpression()), !dbg !4614
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4615
  br i1 %4, label %6, label %5, !dbg !4617

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4618
  br label %15, !dbg !4620

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4621
  %8 = load i8, i8* %7, align 4, !dbg !4621, !range !3662
  %9 = icmp eq i8 %8, 1, !dbg !4623
  br i1 %9, label %10, label %15, !dbg !4624

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !4625
  br i1 %11, label %15, label %12, !dbg !4627

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !4628
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !4629
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !4630
  store i8* %2, i8** %14, align 4, !dbg !4631
  br label %15, !dbg !4632

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4614
  ret i32 %16, !dbg !4633
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4634 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4639, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 %1, metadata !4640, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i32 %2, metadata !4641, metadata !DIExpression()), !dbg !4642
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4643
  br i1 %4, label %6, label %5, !dbg !4645

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4646
  br label %17, !dbg !4648

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4649
  %8 = load i8, i8* %7, align 4, !dbg !4649, !range !3662
  %9 = icmp eq i8 %8, 1, !dbg !4651
  br i1 %9, label %10, label %17, !dbg !4652

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !4653
  br i1 %11, label %17, label %12, !dbg !4655

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #14, !dbg !4656
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #14, !dbg !4657
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #14, !dbg !4658
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #13, !dbg !4659
  tail call void @TMR_Start(i32 noundef %0) #13, !dbg !4660
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4661
  store i32 1, i32* %16, align 4, !dbg !4662
  br label %17, !dbg !4663

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4642
  ret i32 %18, !dbg !4664
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #9 !dbg !4665 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %2 = shl i32 %0, 5, !dbg !4671
  %3 = mul i32 %0, 7, !dbg !4672
  %4 = udiv i32 %3, 10, !dbg !4673
  %5 = add i32 %4, %2, !dbg !4674
  %6 = mul i32 %0, 6, !dbg !4675
  %7 = udiv i32 %6, 100, !dbg !4676
  %8 = add i32 %5, %7, !dbg !4677
  %9 = shl i32 %0, 3, !dbg !4678
  %10 = udiv i32 %9, 1000, !dbg !4679
  %11 = add i32 %8, %10, !dbg !4680
  ret i32 %11, !dbg !4681
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #9 !dbg !4682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4686, metadata !DIExpression()), !dbg !4687
  %2 = icmp eq i32 %0, 1, !dbg !4688
  ret i1 %2, !dbg !4689
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #9 !dbg !4690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4695, metadata !DIExpression()), !dbg !4696
  %2 = icmp eq i32 %0, 0, !dbg !4697
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !4698
  ret void ()* %3, !dbg !4699
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !4700 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !4704
  %2 = icmp eq void (i8*)* %1, null, !dbg !4706
  br i1 %2, label %5, label %3, !dbg !4707

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !4708
  tail call void %1(i8* noundef %4) #13, !dbg !4710
  br label %5, !dbg !4711

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !4712
  ret void, !dbg !4713
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !4714 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !4717
  %2 = icmp eq void (i8*)* %1, null, !dbg !4719
  br i1 %2, label %5, label %3, !dbg !4720

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !4721
  tail call void %1(i8* noundef %4) #13, !dbg !4723
  br label %5, !dbg !4724

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !4725
  ret void, !dbg !4726
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !4727 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4729, metadata !DIExpression()), !dbg !4730
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4731
  br i1 %2, label %4, label %3, !dbg !4733

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4734
  br label %6, !dbg !4736

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #13, !dbg !4737
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4738
  store i32 0, i32* %5, align 4, !dbg !4739
  br label %6, !dbg !4740

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !4730
  ret i32 %7, !dbg !4741
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !4742 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4746, metadata !DIExpression()), !dbg !4747
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4748
  %3 = icmp eq i32 %2, 1, !dbg !4750
  br i1 %3, label %5, label %4, !dbg !4751

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #13, !dbg !4752
  br label %5, !dbg !4754

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #13, !dbg !4755
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4756
  ret i32 0, !dbg !4757
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !4758 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4760, metadata !DIExpression()), !dbg !4761
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4762
  %3 = icmp eq i32 %2, 1, !dbg !4764
  br i1 %3, label %5, label %4, !dbg !4765

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #13, !dbg !4766
  br label %5, !dbg !4768

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #13, !dbg !4769
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4770
  ret i32 0, !dbg !4771
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4776, metadata !DIExpression()), !dbg !4778
  %2 = load i1, i1* @init_time, align 4, !dbg !4779
  br i1 %2, label %3, label %4, !dbg !4781

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_init, i32 0, i32 0), i32 noundef 87, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i32 0, i32 0)) #13, !dbg !4782
  br label %13, !dbg !4784

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @hal_pwm_translate_source_clock(i32 noundef %0) #14, !dbg !4785, !range !4786
  %6 = tail call i32 @pwm_init(i8 noundef zeroext %5) #13, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %6, metadata !4777, metadata !DIExpression()), !dbg !4778
  %7 = icmp slt i32 %6, 0, !dbg !4788
  br i1 %7, label %8, label %9, !dbg !4790

8:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_init, i32 0, i32 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.23, i32 0, i32 0)) #13, !dbg !4791
  br label %13, !dbg !4793

9:                                                ; preds = %4
  %10 = icmp ugt i32 %0, 5, !dbg !4794
  br i1 %10, label %11, label %12, !dbg !4796

11:                                               ; preds = %9
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_init, i32 0, i32 0), i32 noundef 97, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.24, i32 0, i32 0), i32 noundef %0) #13, !dbg !4797
  br label %13, !dbg !4799

12:                                               ; preds = %9
  store i32 %0, i32* @g_source_clock, align 4, !dbg !4800
  store i1 true, i1* @init_time, align 4, !dbg !4801
  br label %13, !dbg !4802

13:                                               ; preds = %12, %11, %8, %3
  %14 = phi i32 [ -4, %3 ], [ -4, %8 ], [ -4, %11 ], [ 0, %12 ], !dbg !4778
  ret i32 %14, !dbg !4803
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i8 @hal_pwm_translate_source_clock(i32 noundef %0) unnamed_addr #9 !dbg !4804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4808, metadata !DIExpression()), !dbg !4809
  %2 = icmp eq i32 %0, 1, !dbg !4810
  %3 = select i1 %2, i8 1, i8 2, !dbg !4810
  %4 = icmp eq i32 %0, 0, !dbg !4810
  %5 = select i1 %4, i8 0, i8 %3, !dbg !4810
  ret i8 %5, !dbg !4811
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_pwm_deinit() local_unnamed_addr #11 !dbg !4812 {
  store i32 6, i32* @g_source_clock, align 4, !dbg !4815
  store i1 false, i1* @init_time, align 4, !dbg !4816
  ret i32 0, !dbg !4817
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_set_frequency(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !4818 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4823, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i32 %1, metadata !4824, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i32* %2, metadata !4825, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i32 0, metadata !4826, metadata !DIExpression()), !dbg !4829
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !4830
  br i1 %5, label %7, label %6, !dbg !4832

6:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 119, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !4833
  br label %32, !dbg !4835

7:                                                ; preds = %3
  %8 = load i32, i32* @g_source_clock, align 4, !dbg !4836
  %9 = icmp ugt i32 %8, 5, !dbg !4838
  br i1 %9, label %10, label %11, !dbg !4839

10:                                               ; preds = %7
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 123, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.26, i32 0, i32 0)) #13, !dbg !4840
  br label %32, !dbg !4842

11:                                               ; preds = %7
  %12 = icmp eq i32 %1, 0, !dbg !4843
  br i1 %12, label %13, label %14, !dbg !4845

13:                                               ; preds = %11
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 127, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.27, i32 0, i32 0), i32 noundef 0) #13, !dbg !4846
  br label %32, !dbg !4848

14:                                               ; preds = %11
  %15 = bitcast i32* %4 to i8*, !dbg !4849
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #15, !dbg !4849
  call void @llvm.dbg.value(metadata i32 0, metadata !4827, metadata !DIExpression()), !dbg !4829
  store i32 0, i32* %4, align 4, !dbg !4850
  call void @llvm.dbg.value(metadata i32* %4, metadata !4827, metadata !DIExpression(DW_OP_deref)), !dbg !4829
  %16 = call fastcc i32 @hal_pwm_calc_total_count(i32 noundef %8, i32 noundef %1, i32* noundef nonnull %4) #14, !dbg !4851
  %17 = icmp eq i32 %16, 0, !dbg !4853
  br i1 %17, label %19, label %18, !dbg !4854

18:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 132, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !4855
  br label %30, !dbg !4857

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4, !dbg !4858
  call void @llvm.dbg.value(metadata i32 %20, metadata !4827, metadata !DIExpression()), !dbg !4829
  %21 = mul i32 %20, %1, !dbg !4859
  %22 = udiv i32 %21, 65535, !dbg !4860
  call void @llvm.dbg.value(metadata i32 %22, metadata !4826, metadata !DIExpression()), !dbg !4829
  %23 = icmp ugt i32 %22, %1, !dbg !4861
  br i1 %23, label %30, label %24, !dbg !4863

24:                                               ; preds = %19
  %25 = trunc i32 %0 to i8, !dbg !4864
  %26 = tail call i32 @pwm_set(i8 noundef zeroext %25, i32 noundef %1, i16 noundef zeroext 0, i8 noundef zeroext 1) #13, !dbg !4865
  call void @llvm.dbg.value(metadata i32 %26, metadata !4828, metadata !DIExpression()), !dbg !4829
  %27 = icmp slt i32 %26, 0, !dbg !4866
  br i1 %27, label %28, label %29, !dbg !4868

28:                                               ; preds = %24
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_set_frequency, i32 0, i32 0), i32 noundef 144, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !4869
  br label %30, !dbg !4871

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 %20, metadata !4827, metadata !DIExpression()), !dbg !4829
  store i32 %20, i32* %2, align 4, !dbg !4872
  br label %30, !dbg !4873

30:                                               ; preds = %28, %29, %19, %18
  %31 = phi i32 [ -4, %18 ], [ -1, %19 ], [ -4, %28 ], [ 0, %29 ], !dbg !4829
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #15, !dbg !4874
  br label %32

32:                                               ; preds = %30, %13, %10, %6
  %33 = phi i32 [ -4, %10 ], [ -4, %13 ], [ %31, %30 ], [ -3, %6 ], !dbg !4829
  ret i32 %33, !dbg !4874
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) unnamed_addr #9 !dbg !4875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4879, metadata !DIExpression()), !dbg !4880
  %2 = icmp ult i32 %0, 40, !dbg !4881
  ret i1 %2, !dbg !4882
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_pwm_calc_total_count(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) unnamed_addr #0 !dbg !447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32 %1, metadata !454, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i32* %2, metadata !455, metadata !DIExpression()), !dbg !4883
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* @hal_pwm_calc_total_count.source_clock_table, i32 0, i32 %0, !dbg !4884
  %5 = load i32, i32* %4, align 4, !dbg !4884
  call void @llvm.dbg.value(metadata i32 %5, metadata !456, metadata !DIExpression()), !dbg !4883
  %6 = icmp ult i32 %5, %1, !dbg !4885
  br i1 %6, label %7, label %8, !dbg !4887

7:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.hal_pwm_calc_total_count, i32 0, i32 0), i32 noundef 75, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0), i32 noundef %1, i32 noundef %5) #13, !dbg !4888
  br label %10, !dbg !4890

8:                                                ; preds = %3
  %9 = udiv i32 %5, %1, !dbg !4891
  store i32 %9, i32* %2, align 4, !dbg !4892
  br label %10, !dbg !4893

10:                                               ; preds = %8, %7
  %11 = phi i32 [ -4, %7 ], [ 0, %8 ], !dbg !4883
  ret i32 %11, !dbg !4894
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_set_duty_cycle(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4895 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4899, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32 %1, metadata !4900, metadata !DIExpression()), !dbg !4906
  %7 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !4907
  br i1 %7, label %9, label %8, !dbg !4909

8:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 157, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !4910
  br label %38, !dbg !4912

9:                                                ; preds = %2
  %10 = load i32, i32* @g_source_clock, align 4, !dbg !4913
  %11 = icmp ugt i32 %10, 5, !dbg !4915
  br i1 %11, label %12, label %13, !dbg !4916

12:                                               ; preds = %9
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.26, i32 0, i32 0)) #13, !dbg !4917
  br label %38, !dbg !4919

13:                                               ; preds = %9
  %14 = bitcast i32* %3 to i8*, !dbg !4920
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #15, !dbg !4920
  call void @llvm.dbg.value(metadata i32 0, metadata !4902, metadata !DIExpression()), !dbg !4906
  store i32 0, i32* %3, align 4, !dbg !4921
  %15 = bitcast i16* %4 to i8*, !dbg !4922
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %15) #15, !dbg !4922
  call void @llvm.dbg.value(metadata i16 0, metadata !4903, metadata !DIExpression()), !dbg !4906
  store i16 0, i16* %4, align 2, !dbg !4923
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !4924
  call void @llvm.dbg.value(metadata i8 0, metadata !4904, metadata !DIExpression()), !dbg !4906
  store i8 0, i8* %5, align 1, !dbg !4925
  %16 = trunc i32 %0 to i8, !dbg !4926
  call void @llvm.dbg.value(metadata i32* %3, metadata !4902, metadata !DIExpression(DW_OP_deref)), !dbg !4906
  call void @llvm.dbg.value(metadata i16* %4, metadata !4903, metadata !DIExpression(DW_OP_deref)), !dbg !4906
  call void @llvm.dbg.value(metadata i8* %5, metadata !4904, metadata !DIExpression(DW_OP_deref)), !dbg !4906
  %17 = call i32 @pwm_get(i8 noundef zeroext %16, i32* noundef nonnull %3, i16* noundef nonnull %4, i8* noundef nonnull %5) #13, !dbg !4927
  %18 = load i32, i32* %3, align 4, !dbg !4928
  call void @llvm.dbg.value(metadata i32 %18, metadata !4902, metadata !DIExpression()), !dbg !4906
  %19 = icmp eq i32 %18, 0, !dbg !4930
  br i1 %19, label %20, label %21, !dbg !4931

20:                                               ; preds = %13
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 170, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !4932
  br label %36, !dbg !4934

21:                                               ; preds = %13
  %22 = bitcast i32* %6 to i8*, !dbg !4935
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #15, !dbg !4935
  call void @llvm.dbg.value(metadata i32 0, metadata !4905, metadata !DIExpression()), !dbg !4906
  %23 = load i32, i32* @g_source_clock, align 4, !dbg !4936
  call void @llvm.dbg.value(metadata i32 %18, metadata !4902, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32* %6, metadata !4905, metadata !DIExpression(DW_OP_deref)), !dbg !4906
  %24 = call fastcc i32 @hal_pwm_calc_total_count(i32 noundef %23, i32 noundef %18, i32* noundef nonnull %6) #14, !dbg !4938
  %25 = icmp eq i32 %24, 0, !dbg !4939
  br i1 %25, label %27, label %26, !dbg !4940

26:                                               ; preds = %21
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 175, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !4941
  br label %34, !dbg !4943

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4, !dbg !4944
  call void @llvm.dbg.value(metadata i32 %28, metadata !4902, metadata !DIExpression()), !dbg !4906
  %29 = trunc i32 %1 to i16, !dbg !4945
  %30 = load i8, i8* %5, align 1, !dbg !4946
  call void @llvm.dbg.value(metadata i8 %30, metadata !4904, metadata !DIExpression()), !dbg !4906
  %31 = call i32 @pwm_set(i8 noundef zeroext %16, i32 noundef %28, i16 noundef zeroext %29, i8 noundef zeroext %30) #13, !dbg !4947
  call void @llvm.dbg.value(metadata i32 %31, metadata !4901, metadata !DIExpression()), !dbg !4906
  %32 = icmp slt i32 %31, 0, !dbg !4948
  br i1 %32, label %33, label %34, !dbg !4950

33:                                               ; preds = %27
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_set_duty_cycle, i32 0, i32 0), i32 noundef 183, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !4951
  br label %34, !dbg !4953

34:                                               ; preds = %27, %33, %26
  %35 = phi i32 [ -4, %26 ], [ -4, %33 ], [ 0, %27 ], !dbg !4906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #15, !dbg !4954
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi i32 [ -4, %20 ], [ %35, %34 ], !dbg !4906
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !4954
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %15) #15, !dbg !4954
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #15, !dbg !4954
  br label %38

38:                                               ; preds = %36, %12, %8
  %39 = phi i32 [ -4, %12 ], [ %37, %36 ], [ -3, %8 ], !dbg !4906
  ret i32 %39, !dbg !4954
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_start(i32 noundef %0) local_unnamed_addr #0 !dbg !4955 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4959, metadata !DIExpression()), !dbg !4964
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !4965
  br i1 %5, label %7, label %6, !dbg !4967

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_pwm_start, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !4968
  br label %22, !dbg !4970

7:                                                ; preds = %1
  %8 = bitcast i32* %2 to i8*, !dbg !4971
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4971
  call void @llvm.dbg.value(metadata i32 0, metadata !4961, metadata !DIExpression()), !dbg !4964
  store i32 0, i32* %2, align 4, !dbg !4972
  %9 = bitcast i16* %3 to i8*, !dbg !4973
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %9) #15, !dbg !4973
  call void @llvm.dbg.value(metadata i16 0, metadata !4962, metadata !DIExpression()), !dbg !4964
  store i16 0, i16* %3, align 2, !dbg !4974
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #15, !dbg !4975
  call void @llvm.dbg.value(metadata i8 0, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i8 0, i8* %4, align 1, !dbg !4976
  %10 = trunc i32 %0 to i8, !dbg !4977
  call void @llvm.dbg.value(metadata i32* %2, metadata !4961, metadata !DIExpression(DW_OP_deref)), !dbg !4964
  call void @llvm.dbg.value(metadata i16* %3, metadata !4962, metadata !DIExpression(DW_OP_deref)), !dbg !4964
  call void @llvm.dbg.value(metadata i8* %4, metadata !4963, metadata !DIExpression(DW_OP_deref)), !dbg !4964
  %11 = call i32 @pwm_get(i8 noundef zeroext %10, i32* noundef nonnull %2, i16* noundef nonnull %3, i8* noundef nonnull %4) #13, !dbg !4978
  %12 = load i32, i32* %2, align 4, !dbg !4979
  call void @llvm.dbg.value(metadata i32 %12, metadata !4961, metadata !DIExpression()), !dbg !4964
  %13 = icmp eq i32 %12, 0, !dbg !4981
  br i1 %13, label %14, label %15, !dbg !4982

14:                                               ; preds = %7
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_pwm_start, i32 0, i32 0), i32 noundef 203, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !4983
  br label %20, !dbg !4985

15:                                               ; preds = %7
  %16 = load i16, i16* %3, align 2, !dbg !4986
  call void @llvm.dbg.value(metadata i16 %16, metadata !4962, metadata !DIExpression()), !dbg !4964
  %17 = call i32 @pwm_set(i8 noundef zeroext %10, i32 noundef %12, i16 noundef zeroext %16, i8 noundef zeroext 1) #13, !dbg !4987
  call void @llvm.dbg.value(metadata i32 %17, metadata !4960, metadata !DIExpression()), !dbg !4964
  %18 = icmp slt i32 %17, 0, !dbg !4988
  br i1 %18, label %19, label %20, !dbg !4990

19:                                               ; preds = %15
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_pwm_start, i32 0, i32 0), i32 noundef 211, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !4991
  br label %20, !dbg !4993

20:                                               ; preds = %15, %19, %14
  %21 = phi i32 [ -4, %14 ], [ -4, %19 ], [ 0, %15 ], !dbg !4964
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #15, !dbg !4994
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #15, !dbg !4994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4994
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %21, %20 ], [ -3, %6 ], !dbg !4964
  ret i32 %23, !dbg !4994
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_stop(i32 noundef %0) local_unnamed_addr #0 !dbg !4995 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4997, metadata !DIExpression()), !dbg !5002
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5003
  br i1 %5, label %7, label %6, !dbg !5005

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_stop, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5006
  br label %22, !dbg !5008

7:                                                ; preds = %1
  %8 = bitcast i32* %2 to i8*, !dbg !5009
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15, !dbg !5009
  call void @llvm.dbg.value(metadata i32 0, metadata !4999, metadata !DIExpression()), !dbg !5002
  store i32 0, i32* %2, align 4, !dbg !5010
  %9 = bitcast i16* %3 to i8*, !dbg !5011
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %9) #15, !dbg !5011
  call void @llvm.dbg.value(metadata i16 0, metadata !5000, metadata !DIExpression()), !dbg !5002
  store i16 0, i16* %3, align 2, !dbg !5012
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5013
  call void @llvm.dbg.value(metadata i8 0, metadata !5001, metadata !DIExpression()), !dbg !5002
  store i8 0, i8* %4, align 1, !dbg !5014
  %10 = trunc i32 %0 to i8, !dbg !5015
  call void @llvm.dbg.value(metadata i32* %2, metadata !4999, metadata !DIExpression(DW_OP_deref)), !dbg !5002
  call void @llvm.dbg.value(metadata i16* %3, metadata !5000, metadata !DIExpression(DW_OP_deref)), !dbg !5002
  call void @llvm.dbg.value(metadata i8* %4, metadata !5001, metadata !DIExpression(DW_OP_deref)), !dbg !5002
  %11 = call i32 @pwm_get(i8 noundef zeroext %10, i32* noundef nonnull %2, i16* noundef nonnull %3, i8* noundef nonnull %4) #13, !dbg !5016
  %12 = load i32, i32* %2, align 4, !dbg !5017
  call void @llvm.dbg.value(metadata i32 %12, metadata !4999, metadata !DIExpression()), !dbg !5002
  %13 = icmp eq i32 %12, 0, !dbg !5019
  br i1 %13, label %14, label %15, !dbg !5020

14:                                               ; preds = %7
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_stop, i32 0, i32 0), i32 noundef 230, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !5021
  br label %20, !dbg !5023

15:                                               ; preds = %7
  %16 = load i16, i16* %3, align 2, !dbg !5024
  call void @llvm.dbg.value(metadata i16 %16, metadata !5000, metadata !DIExpression()), !dbg !5002
  %17 = call i32 @pwm_set(i8 noundef zeroext %10, i32 noundef %12, i16 noundef zeroext %16, i8 noundef zeroext 0) #13, !dbg !5025
  call void @llvm.dbg.value(metadata i32 %17, metadata !4998, metadata !DIExpression()), !dbg !5002
  %18 = icmp slt i32 %17, 0, !dbg !5026
  br i1 %18, label %19, label %20, !dbg !5028

19:                                               ; preds = %15
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_pwm_stop, i32 0, i32 0), i32 noundef 238, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #13, !dbg !5029
  br label %20, !dbg !5031

20:                                               ; preds = %15, %19, %14
  %21 = phi i32 [ -4, %14 ], [ -4, %19 ], [ 0, %15 ], !dbg !5002
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %9) #15, !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15, !dbg !5032
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %21, %20 ], [ -3, %6 ], !dbg !5002
  ret i32 %23, !dbg !5032
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_get_frequency(i32 noundef %0, i32* noundef %1) local_unnamed_addr #0 !dbg !5033 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5037, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i32* %1, metadata !5038, metadata !DIExpression()), !dbg !5041
  %5 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5042
  br i1 %5, label %7, label %6, !dbg !5044

6:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_get_frequency, i32 0, i32 0), i32 noundef 247, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5045
  br label %14, !dbg !5047

7:                                                ; preds = %2
  %8 = icmp eq i32* %1, null, !dbg !5048
  br i1 %8, label %9, label %10, !dbg !5050

9:                                                ; preds = %7
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_pwm_get_frequency, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0)) #13, !dbg !5051
  br label %14, !dbg !5053

10:                                               ; preds = %7
  %11 = bitcast i16* %3 to i8*, !dbg !5054
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5054
  call void @llvm.dbg.value(metadata i16 0, metadata !5039, metadata !DIExpression()), !dbg !5041
  store i16 0, i16* %3, align 2, !dbg !5055
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5056
  call void @llvm.dbg.value(metadata i8 0, metadata !5040, metadata !DIExpression()), !dbg !5041
  store i8 0, i8* %4, align 1, !dbg !5057
  %12 = trunc i32 %0 to i8, !dbg !5058
  call void @llvm.dbg.value(metadata i16* %3, metadata !5039, metadata !DIExpression(DW_OP_deref)), !dbg !5041
  call void @llvm.dbg.value(metadata i8* %4, metadata !5040, metadata !DIExpression(DW_OP_deref)), !dbg !5041
  %13 = call i32 @pwm_get(i8 noundef zeroext %12, i32* noundef nonnull %1, i16* noundef nonnull %3, i8* noundef nonnull %4) #13, !dbg !5059
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #15, !dbg !5060
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5060
  br label %14

14:                                               ; preds = %10, %9, %6
  %15 = phi i32 [ -3, %9 ], [ 0, %10 ], [ -3, %6 ], !dbg !5041
  ret i32 %15, !dbg !5060
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_get_duty_cycle(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !5061 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5063, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.value(metadata i32* %1, metadata !5064, metadata !DIExpression()), !dbg !5069
  %7 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5070
  br i1 %7, label %9, label %8, !dbg !5072

8:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_get_duty_cycle, i32 0, i32 0), i32 noundef 264, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5073
  br label %30, !dbg !5075

9:                                                ; preds = %2
  %10 = bitcast i32* %3 to i8*, !dbg !5076
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #15, !dbg !5076
  call void @llvm.dbg.value(metadata i32 0, metadata !5065, metadata !DIExpression()), !dbg !5069
  store i32 0, i32* %3, align 4, !dbg !5077
  %11 = bitcast i16* %4 to i8*, !dbg !5078
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5078
  call void @llvm.dbg.value(metadata i16 0, metadata !5066, metadata !DIExpression()), !dbg !5069
  store i16 0, i16* %4, align 2, !dbg !5079
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5080
  call void @llvm.dbg.value(metadata i8 0, metadata !5067, metadata !DIExpression()), !dbg !5069
  store i8 0, i8* %5, align 1, !dbg !5081
  %12 = trunc i32 %0 to i8, !dbg !5082
  call void @llvm.dbg.value(metadata i32* %3, metadata !5065, metadata !DIExpression(DW_OP_deref)), !dbg !5069
  call void @llvm.dbg.value(metadata i16* %4, metadata !5066, metadata !DIExpression(DW_OP_deref)), !dbg !5069
  call void @llvm.dbg.value(metadata i8* %5, metadata !5067, metadata !DIExpression(DW_OP_deref)), !dbg !5069
  %13 = call i32 @pwm_get(i8 noundef zeroext %12, i32* noundef nonnull %3, i16* noundef nonnull %4, i8* noundef nonnull %5) #13, !dbg !5083
  %14 = load i32, i32* %3, align 4, !dbg !5084
  call void @llvm.dbg.value(metadata i32 %14, metadata !5065, metadata !DIExpression()), !dbg !5069
  %15 = icmp eq i32 %14, 0, !dbg !5086
  br i1 %15, label %16, label %17, !dbg !5087

16:                                               ; preds = %9
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_get_duty_cycle, i32 0, i32 0), i32 noundef 273, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)) #13, !dbg !5088
  br label %28, !dbg !5090

17:                                               ; preds = %9
  %18 = bitcast i32* %6 to i8*, !dbg !5091
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #15, !dbg !5091
  call void @llvm.dbg.value(metadata i32 0, metadata !5068, metadata !DIExpression()), !dbg !5069
  %19 = load i32, i32* @g_source_clock, align 4, !dbg !5092
  call void @llvm.dbg.value(metadata i32 %14, metadata !5065, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.value(metadata i32* %6, metadata !5068, metadata !DIExpression(DW_OP_deref)), !dbg !5069
  %20 = call fastcc i32 @hal_pwm_calc_total_count(i32 noundef %19, i32 noundef %14, i32* noundef nonnull %6) #14, !dbg !5094
  %21 = icmp eq i32 %20, 0, !dbg !5095
  br i1 %21, label %23, label %22, !dbg !5096

22:                                               ; preds = %17
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_pwm_get_duty_cycle, i32 0, i32 0), i32 noundef 278, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !5097
  br label %26, !dbg !5099

23:                                               ; preds = %17
  %24 = load i16, i16* %4, align 2, !dbg !5100
  call void @llvm.dbg.value(metadata i16 %24, metadata !5066, metadata !DIExpression()), !dbg !5069
  %25 = zext i16 %24 to i32, !dbg !5100
  store i32 %25, i32* %1, align 4, !dbg !5101
  br label %26, !dbg !5102

26:                                               ; preds = %23, %22
  %27 = phi i32 [ -4, %22 ], [ 0, %23 ], !dbg !5069
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #15, !dbg !5103
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ -4, %16 ], [ %27, %26 ], !dbg !5069
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5103
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #15, !dbg !5103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #15, !dbg !5103
  br label %30

30:                                               ; preds = %28, %8
  %31 = phi i32 [ %29, %28 ], [ -3, %8 ], !dbg !5069
  ret i32 %31, !dbg !5103
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pwm_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !5104 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5110, metadata !DIExpression()), !dbg !5115
  call void @llvm.dbg.value(metadata i32* %1, metadata !5111, metadata !DIExpression()), !dbg !5115
  %6 = tail call fastcc zeroext i1 @hal_pwm_is_channel_valid(i32 noundef %0) #14, !dbg !5116
  br i1 %6, label %8, label %7, !dbg !5118

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_pwm_get_running_status, i32 0, i32 0), i32 noundef 289, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !5119
  br label %16, !dbg !5121

8:                                                ; preds = %2
  %9 = bitcast i32* %3 to i8*, !dbg !5122
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #15, !dbg !5122
  call void @llvm.dbg.value(metadata i32 0, metadata !5112, metadata !DIExpression()), !dbg !5115
  store i32 0, i32* %3, align 4, !dbg !5123
  %10 = bitcast i16* %4 to i8*, !dbg !5124
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %10) #15, !dbg !5124
  call void @llvm.dbg.value(metadata i16 0, metadata !5113, metadata !DIExpression()), !dbg !5115
  store i16 0, i16* %4, align 2, !dbg !5125
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5126
  call void @llvm.dbg.value(metadata i8 0, metadata !5114, metadata !DIExpression()), !dbg !5115
  store i8 0, i8* %5, align 1, !dbg !5127
  %11 = trunc i32 %0 to i8, !dbg !5128
  call void @llvm.dbg.value(metadata i32* %3, metadata !5112, metadata !DIExpression(DW_OP_deref)), !dbg !5115
  call void @llvm.dbg.value(metadata i16* %4, metadata !5113, metadata !DIExpression(DW_OP_deref)), !dbg !5115
  call void @llvm.dbg.value(metadata i8* %5, metadata !5114, metadata !DIExpression(DW_OP_deref)), !dbg !5115
  %12 = call i32 @pwm_get(i8 noundef zeroext %11, i32* noundef nonnull %3, i16* noundef nonnull %4, i8* noundef nonnull %5) #13, !dbg !5129
  %13 = load i8, i8* %5, align 1, !dbg !5130
  call void @llvm.dbg.value(metadata i8 %13, metadata !5114, metadata !DIExpression()), !dbg !5115
  %14 = icmp ne i8 %13, 0, !dbg !5130
  %15 = zext i1 %14 to i32, !dbg !5130
  store i32 %15, i32* %1, align 4, !dbg !5131
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #15, !dbg !5132
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10) #15, !dbg !5132
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #15, !dbg !5132
  br label %16

16:                                               ; preds = %8, %7
  %17 = phi i32 [ 0, %8 ], [ -3, %7 ], !dbg !5115
  ret i32 %17, !dbg !5132
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !5133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5139, metadata !DIExpression()), !dbg !5141
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5140, metadata !DIExpression()), !dbg !5141
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5142
  br i1 %3, label %4, label %18, !dbg !5144

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5145
  %6 = load i8, i8* %5, align 4, !dbg !5145, !range !3662
  %7 = icmp eq i8 %6, 0, !dbg !5145
  br i1 %7, label %8, label %18, !dbg !5147

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #13, !dbg !5148
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5149
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !5150
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5151
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #13, !dbg !5152
  store i8 1, i8* %5, align 4, !dbg !5153
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5154, !range !5155
  tail call void @uart_reset_default_value(i32 noundef %14) #13, !dbg !5156
  tail call void @halUART_HWInit(i32 noundef %14) #13, !dbg !5157
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5158
  %16 = icmp eq i32 %15, 0, !dbg !5160
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5141
  br label %18, !dbg !5141

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5141
  ret i32 %19, !dbg !5161
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !5162 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5168, metadata !DIExpression()), !dbg !5170
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5169, metadata !DIExpression()), !dbg !5170
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5171
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !5173
  br i1 %5, label %6, label %22, !dbg !5173

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5174
  %8 = load i32, i32* %7, align 4, !dbg !5174
  %9 = icmp ugt i32 %8, 12, !dbg !5176
  br i1 %9, label %22, label %10, !dbg !5177

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5178
  %12 = load i32, i32* %11, align 4, !dbg !5178
  %13 = icmp ugt i32 %12, 2, !dbg !5179
  br i1 %13, label %22, label %14, !dbg !5180

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5181
  %16 = load i32, i32* %15, align 4, !dbg !5181
  %17 = icmp ugt i32 %16, 1, !dbg !5182
  br i1 %17, label %22, label %18, !dbg !5183

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5184
  %20 = load i32, i32* %19, align 4, !dbg !5184
  %21 = icmp ult i32 %20, 4, !dbg !5185
  br label %22, !dbg !5186

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5170
  ret i1 %23, !dbg !5187
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !5188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5192, metadata !DIExpression()), !dbg !5193
  %2 = icmp ne i32 %0, 0, !dbg !5194
  %3 = zext i1 %2 to i32, !dbg !5195
  ret i32 %3, !dbg !5196
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !5197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5201, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5202, metadata !DIExpression()), !dbg !5203
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5204
  br i1 %3, label %4, label %22, !dbg !5206

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5207
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5208
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5209
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #13, !dbg !5210
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5211
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5212
  %11 = load i32, i32* %10, align 4, !dbg !5212
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !5213
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5214
  %14 = load i32, i32* %13, align 4, !dbg !5214
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !5215
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5216
  %17 = load i32, i32* %16, align 4, !dbg !5216
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !5217
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5218
  %20 = load i32, i32* %19, align 4, !dbg !5218
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !5219
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #13, !dbg !5220
  br label %22, !dbg !5221

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5203
  ret i32 %23, !dbg !5222
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !5223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5227, metadata !DIExpression()), !dbg !5232
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5228, metadata !DIExpression()), !dbg !5233
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5234
  %3 = load i32, i32* %2, align 4, !dbg !5234
  ret i32 %3, !dbg !5235
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !5236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5240, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5241, metadata !DIExpression()), !dbg !5244
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5245
  %3 = load i16, i16* %2, align 2, !dbg !5245
  ret i16 %3, !dbg !5246
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !5247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5251, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5252, metadata !DIExpression()), !dbg !5255
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5256
  %3 = load i16, i16* %2, align 2, !dbg !5256
  ret i16 %3, !dbg !5257
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !5258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5262, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5263, metadata !DIExpression()), !dbg !5266
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5267
  %3 = load i16, i16* %2, align 2, !dbg !5267
  ret i16 %3, !dbg !5268
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !5269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5273, metadata !DIExpression()), !dbg !5274
  %2 = icmp ult i32 %0, 2, !dbg !5275
  ret i1 %2, !dbg !5276
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !5277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5281, metadata !DIExpression()), !dbg !5282
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5283
  br i1 %2, label %3, label %10, !dbg !5285

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5286
  %5 = load i8, i8* %4, align 4, !dbg !5286, !range !3662
  %6 = icmp eq i8 %5, 0, !dbg !5288
  br i1 %6, label %10, label %7, !dbg !5289

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #13, !dbg !5290
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5291, !range !5155
  tail call void @uart_query_empty(i32 noundef %9) #13, !dbg !5292
  tail call void @uart_reset_default_value(i32 noundef %9) #13, !dbg !5293
  br label %10, !dbg !5294

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5282
  ret i32 %11, !dbg !5295
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !5296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5300, metadata !DIExpression()), !dbg !5303
  call void @llvm.dbg.value(metadata i8 %1, metadata !5301, metadata !DIExpression()), !dbg !5303
  %3 = icmp eq i32 %0, 0, !dbg !5304
  %4 = icmp eq i32 %0, 1, !dbg !5304
  %5 = select i1 %4, i32 1, i32 2, !dbg !5304
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5304
  call void @llvm.dbg.value(metadata i32 %6, metadata !5302, metadata !DIExpression()), !dbg !5303
  %7 = icmp eq i32 %6, 2, !dbg !5305
  br i1 %7, label %9, label %8, !dbg !5307

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #13, !dbg !5308
  br label %9, !dbg !5310

9:                                                ; preds = %2, %8
  ret void, !dbg !5311
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5312 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5316, metadata !DIExpression()), !dbg !5321
  call void @llvm.dbg.value(metadata i8* %1, metadata !5317, metadata !DIExpression()), !dbg !5321
  call void @llvm.dbg.value(metadata i32 %2, metadata !5318, metadata !DIExpression()), !dbg !5321
  %4 = icmp eq i32 %0, 0, !dbg !5322
  %5 = icmp eq i32 %0, 1, !dbg !5322
  %6 = select i1 %5, i32 1, i32 2, !dbg !5322
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5322
  call void @llvm.dbg.value(metadata i32 %7, metadata !5319, metadata !DIExpression()), !dbg !5321
  %8 = icmp eq i8* %1, null, !dbg !5323
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5325
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5325
  call void @llvm.dbg.value(metadata i32 0, metadata !5320, metadata !DIExpression()), !dbg !5321
  br i1 %12, label %19, label %13, !dbg !5325

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5320, metadata !DIExpression()), !dbg !5321
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5326
  %16 = load i8, i8* %15, align 1, !dbg !5326
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #13, !dbg !5332
  %17 = add nuw i32 %14, 1, !dbg !5333
  call void @llvm.dbg.value(metadata i32 %17, metadata !5320, metadata !DIExpression()), !dbg !5321
  %18 = icmp eq i32 %17, %2, !dbg !5334
  br i1 %18, label %19, label %13, !dbg !5335, !llvm.loop !5336

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5321
  ret i32 %20, !dbg !5338
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5339 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5341, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.value(metadata i8* %1, metadata !5342, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.value(metadata i32 %2, metadata !5343, metadata !DIExpression()), !dbg !5348
  %5 = bitcast i32* %4 to i8*, !dbg !5349
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5349
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5350
  br i1 %6, label %7, label %24, !dbg !5352

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5353
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5355
  br i1 %10, label %24, label %11, !dbg !5355

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5356
  %13 = load i8, i8* %12, align 4, !dbg !5356, !range !3662
  %14 = icmp eq i8 %13, 0, !dbg !5356
  br i1 %14, label %24, label %15, !dbg !5358

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5359, !range !5155
  call void @llvm.dbg.value(metadata i32* %4, metadata !5344, metadata !DIExpression(DW_OP_deref)), !dbg !5348
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !5360
  %17 = load i32, i32* %4, align 4, !dbg !5361
  call void @llvm.dbg.value(metadata i32 %17, metadata !5344, metadata !DIExpression()), !dbg !5348
  %18 = icmp ult i32 %17, %2, !dbg !5363
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5345, metadata !DIExpression()), !dbg !5348
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #13, !dbg !5364
  %20 = load i32, i32* %4, align 4, !dbg !5365
  call void @llvm.dbg.value(metadata i32 %20, metadata !5344, metadata !DIExpression()), !dbg !5348
  %21 = icmp eq i32 %19, %20, !dbg !5367
  br i1 %21, label %22, label %24, !dbg !5368

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !5369, !range !5371
  call void @llvm.dbg.value(metadata i32 %23, metadata !5346, metadata !DIExpression()), !dbg !5348
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #13, !dbg !5372
  br label %24, !dbg !5373

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5348
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5374
  ret i32 %25, !dbg !5374
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !5375 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5379, metadata !DIExpression()), !dbg !5382
  call void @llvm.dbg.value(metadata i1 %1, metadata !5380, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5382
  %3 = icmp eq i32 %0, 0, !dbg !5383
  %4 = select i1 %1, i32 15, i32 14, !dbg !5385
  %5 = select i1 %1, i32 17, i32 16, !dbg !5385
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !5385
  call void @llvm.dbg.value(metadata i32 %6, metadata !5381, metadata !DIExpression()), !dbg !5382
  ret i32 %6, !dbg !5386
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !5387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5391, metadata !DIExpression()), !dbg !5393
  %2 = icmp eq i32 %0, 0, !dbg !5394
  %3 = icmp eq i32 %0, 1, !dbg !5394
  %4 = select i1 %3, i32 1, i32 2, !dbg !5394
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5394
  call void @llvm.dbg.value(metadata i32 %5, metadata !5392, metadata !DIExpression()), !dbg !5393
  %6 = icmp ult i32 %5, 2, !dbg !5395
  br i1 %6, label %7, label %9, !dbg !5397

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #13, !dbg !5398
  br label %9, !dbg !5400

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !5401
  ret i8 %10, !dbg !5402
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !5403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5407, metadata !DIExpression()), !dbg !5409
  %2 = icmp eq i32 %0, 0, !dbg !5410
  %3 = icmp eq i32 %0, 1, !dbg !5410
  %4 = select i1 %3, i32 1, i32 2, !dbg !5410
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5410
  call void @llvm.dbg.value(metadata i32 %5, metadata !5408, metadata !DIExpression()), !dbg !5409
  %6 = icmp ult i32 %5, 2, !dbg !5411
  br i1 %6, label %7, label %9, !dbg !5413

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #13, !dbg !5414
  br label %9, !dbg !5416

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !5417
  ret i32 %10, !dbg !5418
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5423, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.value(metadata i8* %1, metadata !5424, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.value(metadata i32 %2, metadata !5425, metadata !DIExpression()), !dbg !5428
  %4 = icmp eq i32 %0, 0, !dbg !5429
  %5 = icmp eq i32 %0, 1, !dbg !5429
  %6 = select i1 %5, i32 1, i32 2, !dbg !5429
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5429
  call void @llvm.dbg.value(metadata i32 %7, metadata !5426, metadata !DIExpression()), !dbg !5428
  %8 = icmp eq i8* %1, null, !dbg !5430
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5432
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5432
  call void @llvm.dbg.value(metadata i32 0, metadata !5427, metadata !DIExpression()), !dbg !5428
  br i1 %12, label %19, label %13, !dbg !5432

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5427, metadata !DIExpression()), !dbg !5428
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #13, !dbg !5433
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5439
  store i8 %15, i8* %16, align 1, !dbg !5440
  %17 = add nuw i32 %14, 1, !dbg !5441
  call void @llvm.dbg.value(metadata i32 %17, metadata !5427, metadata !DIExpression()), !dbg !5428
  %18 = icmp eq i32 %17, %2, !dbg !5442
  br i1 %18, label %19, label %13, !dbg !5443, !llvm.loop !5444

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5428
  ret i32 %20, !dbg !5446
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5447 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5449, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.value(metadata i8* %1, metadata !5450, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.value(metadata i32 %2, metadata !5451, metadata !DIExpression()), !dbg !5455
  %5 = bitcast i32* %4 to i8*, !dbg !5456
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5456
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5457
  br i1 %6, label %7, label %20, !dbg !5459

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5460
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5462
  br i1 %10, label %20, label %11, !dbg !5462

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5463, !range !5155
  call void @llvm.dbg.value(metadata i32* %4, metadata !5452, metadata !DIExpression(DW_OP_deref)), !dbg !5455
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #13, !dbg !5464
  %13 = load i32, i32* %4, align 4, !dbg !5465
  call void @llvm.dbg.value(metadata i32 %13, metadata !5452, metadata !DIExpression()), !dbg !5455
  %14 = icmp ult i32 %13, %2, !dbg !5467
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !5453, metadata !DIExpression()), !dbg !5455
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #13, !dbg !5468
  %16 = load i32, i32* %4, align 4, !dbg !5469
  call void @llvm.dbg.value(metadata i32 %16, metadata !5452, metadata !DIExpression()), !dbg !5455
  %17 = icmp eq i32 %15, %16, !dbg !5471
  br i1 %17, label %18, label %20, !dbg !5472

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5473, !range !5371
  call void @llvm.dbg.value(metadata i32 %19, metadata !5454, metadata !DIExpression()), !dbg !5455
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #13, !dbg !5475
  br label %20, !dbg !5476

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !5455
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5477
  ret i32 %21, !dbg !5477
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !5478 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5480, metadata !DIExpression()), !dbg !5482
  %3 = bitcast i32* %2 to i8*, !dbg !5483
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5483
  call void @llvm.dbg.value(metadata i32 0, metadata !5481, metadata !DIExpression()), !dbg !5482
  store i32 0, i32* %2, align 4, !dbg !5484
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5485
  br i1 %4, label %5, label %8, !dbg !5487

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5488, !range !5155
  call void @llvm.dbg.value(metadata i32* %2, metadata !5481, metadata !DIExpression(DW_OP_deref)), !dbg !5482
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #13, !dbg !5489
  %7 = load i32, i32* %2, align 4, !dbg !5490
  call void @llvm.dbg.value(metadata i32 %7, metadata !5481, metadata !DIExpression()), !dbg !5482
  br label %8, !dbg !5491

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5482
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5492
  ret i32 %9, !dbg !5492
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !5493 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5495, metadata !DIExpression()), !dbg !5497
  %3 = bitcast i32* %2 to i8*, !dbg !5498
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5498
  call void @llvm.dbg.value(metadata i32 0, metadata !5496, metadata !DIExpression()), !dbg !5497
  store i32 0, i32* %2, align 4, !dbg !5499
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5500
  br i1 %4, label %5, label %8, !dbg !5502

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5503, !range !5155
  call void @llvm.dbg.value(metadata i32* %2, metadata !5496, metadata !DIExpression(DW_OP_deref)), !dbg !5497
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #13, !dbg !5504
  %7 = load i32, i32* %2, align 4, !dbg !5505
  call void @llvm.dbg.value(metadata i32 %7, metadata !5496, metadata !DIExpression()), !dbg !5497
  br label %8, !dbg !5506

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5497
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5507
  ret i32 %9, !dbg !5507
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !5508 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5512, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5513, metadata !DIExpression()), !dbg !5516
  call void @llvm.dbg.value(metadata i8* %2, metadata !5514, metadata !DIExpression()), !dbg !5516
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5517
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5519
  br i1 %6, label %7, label %18, !dbg !5519

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5520
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5521
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5522
  store i8* %2, i8** %9, align 4, !dbg !5523
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5524
  store i8 1, i8* %10, align 4, !dbg !5525
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5526
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !5527
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !5528
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !5529
  %13 = icmp eq i32 %11, 0, !dbg !5530
  br i1 %13, label %14, label %15, !dbg !5532

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #13, !dbg !5533
  br label %16, !dbg !5535

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #13, !dbg !5536
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !5538, !range !5371
  call void @llvm.dbg.value(metadata i32 %17, metadata !5515, metadata !DIExpression()), !dbg !5516
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #13, !dbg !5539
  br label %18, !dbg !5540

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5516
  ret i32 %19, !dbg !5541
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !526, metadata !DIExpression()), !dbg !5542
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5543
  %3 = load void ()*, void ()** %2, align 4, !dbg !5543
  ret void ()* %3, !dbg !5544
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !5545 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5551, !range !3662
  %2 = icmp eq i8 %1, 0, !dbg !5551
  br i1 %2, label %8, label %3, !dbg !5552

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5553
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5555
  br i1 %5, label %8, label %6, !dbg !5556

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5557
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !5559
  br label %8, !dbg !5560

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5561, !range !5155
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5562
  ret void, !dbg !5563
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !5564 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5569, !range !3662
  %2 = icmp eq i8 %1, 0, !dbg !5569
  br i1 %2, label %8, label %3, !dbg !5570

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5571
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5573
  br i1 %5, label %8, label %6, !dbg !5574

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5575
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !5577
  br label %8, !dbg !5578

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5579, !range !5155
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5580
  ret void, !dbg !5581
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !5582 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5586, metadata !DIExpression()), !dbg !5593
  call void @llvm.dbg.value(metadata i1 %1, metadata !5587, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5593
  %5 = bitcast i32* %3 to i8*, !dbg !5594
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5594
  %6 = bitcast i32* %4 to i8*, !dbg !5594
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5594
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5593
  br i1 %1, label %7, label %12, !dbg !5595

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5590, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5593
  call void @llvm.dbg.value(metadata i32* %3, metadata !5588, metadata !DIExpression(DW_OP_deref)), !dbg !5593
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #13, !dbg !5596
  %8 = load i32, i32* %3, align 4, !dbg !5599
  call void @llvm.dbg.value(metadata i32 %8, metadata !5588, metadata !DIExpression()), !dbg !5593
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5601
  %10 = load i32, i32* %9, align 4, !dbg !5601
  %11 = icmp ult i32 %8, %10, !dbg !5602
  br i1 %11, label %22, label %20, !dbg !5603

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5589, metadata !DIExpression(DW_OP_deref)), !dbg !5593
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !5604
  %13 = load i32, i32* %4, align 4, !dbg !5606
  call void @llvm.dbg.value(metadata i32 %13, metadata !5589, metadata !DIExpression()), !dbg !5593
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5608
  %15 = load i32, i32* %14, align 4, !dbg !5608
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5609
  %17 = load i32, i32* %16, align 4, !dbg !5609
  %18 = sub i32 %15, %17, !dbg !5610
  %19 = icmp ult i32 %13, %18, !dbg !5611
  br i1 %19, label %22, label %20, !dbg !5612

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5613, !range !5371
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #13, !dbg !5613
  br label %22, !dbg !5614

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5614
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5614
  ret void, !dbg !5614
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !5615 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5620, !range !3662
  %2 = icmp eq i8 %1, 0, !dbg !5620
  br i1 %2, label %11, label %3, !dbg !5621

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5622
  %5 = icmp eq i32 %4, 0, !dbg !5623
  br i1 %5, label %11, label %6, !dbg !5624

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5625
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5627
  br i1 %8, label %11, label %9, !dbg !5628

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5629
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !5631
  br label %11, !dbg !5632

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5633, !range !5155
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5634
  ret void, !dbg !5635
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !5636 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5641, !range !3662
  %2 = icmp eq i8 %1, 0, !dbg !5641
  br i1 %2, label %11, label %3, !dbg !5642

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5643
  %5 = icmp eq i32 %4, 0, !dbg !5644
  br i1 %5, label %11, label %6, !dbg !5645

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5646
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5648
  br i1 %8, label %11, label %9, !dbg !5649

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5650
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !5652
  br label %11, !dbg !5653

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5654, !range !5155
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5655
  ret void, !dbg !5656
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5661, metadata !DIExpression()), !dbg !5663
  call void @llvm.dbg.value(metadata i32 %1, metadata !5662, metadata !DIExpression()), !dbg !5663
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5664
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5666
  br i1 %5, label %6, label %10, !dbg !5666

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5667
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5668
  store i32 %1, i32* %8, align 4, !dbg !5669
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5670
  br label %10, !dbg !5671

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5663
  ret i32 %11, !dbg !5672
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !5673 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5679, metadata !DIExpression()), !dbg !5681
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5680, metadata !DIExpression()), !dbg !5681
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5682
  br i1 %3, label %4, label %28, !dbg !5684

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5685
  br i1 %5, label %6, label %28, !dbg !5687

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5688
  store i8 1, i8* %7, align 4, !dbg !5689
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5690
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5691
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5692
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #13, !dbg !5693
  tail call void @DMA_Init() #13, !dbg !5694
  tail call void @DMA_Vfifo_init() #13, !dbg !5695
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5696
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5697
  %14 = load i8*, i8** %13, align 4, !dbg !5697
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5698
  %16 = load i32, i32* %15, align 4, !dbg !5698
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5699
  %18 = load i32, i32* %17, align 4, !dbg !5699
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5700
  %20 = load i32, i32* %19, align 4, !dbg !5700
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5701
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #13, !dbg !5702
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5703
  %23 = load i8*, i8** %22, align 4, !dbg !5703
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5704
  %25 = load i32, i32* %24, align 4, !dbg !5704
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5705
  %27 = load i32, i32* %26, align 4, !dbg !5705
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #13, !dbg !5706
  br label %28, !dbg !5707

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5681
  ret i32 %29, !dbg !5708
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !5709 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5713, metadata !DIExpression()), !dbg !5714
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5715
  br i1 %2, label %27, label %3, !dbg !5717

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5718
  %5 = load i8*, i8** %4, align 4, !dbg !5718
  %6 = icmp eq i8* %5, null, !dbg !5720
  br i1 %6, label %27, label %7, !dbg !5721

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5722
  %9 = load i32, i32* %8, align 4, !dbg !5722
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5724
  %11 = load i32, i32* %10, align 4, !dbg !5724
  %12 = icmp ult i32 %9, %11, !dbg !5725
  br i1 %12, label %27, label %13, !dbg !5726

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5727
  %15 = load i32, i32* %14, align 4, !dbg !5727
  %16 = icmp ult i32 %9, %15, !dbg !5729
  br i1 %16, label %27, label %17, !dbg !5730

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5731
  %19 = load i8*, i8** %18, align 4, !dbg !5731
  %20 = icmp eq i8* %19, null, !dbg !5733
  br i1 %20, label %27, label %21, !dbg !5734

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5735
  %23 = load i32, i32* %22, align 4, !dbg !5735
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5737
  %25 = load i32, i32* %24, align 4, !dbg !5737
  %26 = icmp uge i32 %23, %25, !dbg !5738
  br label %27, !dbg !5739

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5714
  ret i1 %28, !dbg !5740
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !5741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5743, metadata !DIExpression()), !dbg !5745
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !5746
  %3 = udiv i32 %2, 1000000, !dbg !5747
  call void @llvm.dbg.value(metadata i32 %3, metadata !5744, metadata !DIExpression()), !dbg !5745
  %4 = mul i32 %3, %0, !dbg !5748
  ret i32 %4, !dbg !5749
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5750 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5752, metadata !DIExpression()), !dbg !5754
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5755
  br i1 %2, label %3, label %8, !dbg !5757

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5758
  %5 = icmp eq i32 %0, 1, !dbg !5758
  %6 = select i1 %5, i32 1, i32 2, !dbg !5758
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5758
  call void @llvm.dbg.value(metadata i32 %7, metadata !5753, metadata !DIExpression()), !dbg !5754
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #13, !dbg !5759
  br label %8, !dbg !5760

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5754
  ret i32 %9, !dbg !5761
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !5762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5766, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.value(metadata i8 %1, metadata !5767, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.value(metadata i8 %2, metadata !5768, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.value(metadata i8 %3, metadata !5769, metadata !DIExpression()), !dbg !5771
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5772
  br i1 %5, label %6, label %11, !dbg !5774

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5775
  %8 = icmp eq i32 %0, 1, !dbg !5775
  %9 = select i1 %8, i32 1, i32 2, !dbg !5775
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5775
  call void @llvm.dbg.value(metadata i32 %10, metadata !5770, metadata !DIExpression()), !dbg !5771
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #13, !dbg !5776
  br label %11, !dbg !5777

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5771
  ret i32 %12, !dbg !5778
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5779 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5781, metadata !DIExpression()), !dbg !5783
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5784
  br i1 %2, label %3, label %8, !dbg !5786

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5787
  %5 = icmp eq i32 %0, 1, !dbg !5787
  %6 = select i1 %5, i32 1, i32 2, !dbg !5787
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5787
  call void @llvm.dbg.value(metadata i32 %7, metadata !5782, metadata !DIExpression()), !dbg !5783
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #13, !dbg !5788
  br label %8, !dbg !5789

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5783
  ret i32 %9, !dbg !5790
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5795, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.value(metadata i32 %1, metadata !5796, metadata !DIExpression()), !dbg !5797
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5798
  br i1 %3, label %4, label %8, !dbg !5800

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5801
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5803
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #13, !dbg !5803
  br label %8, !dbg !5804

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5797
  ret i32 %9, !dbg !5804
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !5805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5809, metadata !DIExpression()), !dbg !5810
  %2 = trunc i32 %0 to i8, !dbg !5811
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #13, !dbg !5812
  ret i32 %0, !dbg !5813
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !5814 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5815
  tail call fastcc void @prvSetupHardware() #14, !dbg !5816
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !5817, !srcloc !5820
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !5821, !srcloc !5824
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #13, !dbg !5825
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.29, i32 0, i32 0)) #13, !dbg !5826
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #13, !dbg !5827
  tail call fastcc void @pwm_generate_waveform() #14, !dbg !5828
  br label %4, !dbg !5829

4:                                                ; preds = %4, %0
  br label %4, !dbg !5830, !llvm.loop !5833
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !5836 {
  tail call void @top_xtal_init() #13, !dbg !5837
  ret void, !dbg !5838
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !5839 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5840
  ret void, !dbg !5841
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @pwm_generate_waveform() unnamed_addr #0 !dbg !5842 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !5846
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15, !dbg !5846
  call void @llvm.dbg.value(metadata i32 0, metadata !5844, metadata !DIExpression()), !dbg !5847
  store i32 0, i32* %1, align 4, !dbg !5848
  call void @llvm.dbg.value(metadata i32 0, metadata !5845, metadata !DIExpression()), !dbg !5847
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.30, i32 0, i32 0)) #13, !dbg !5849
  %4 = tail call i32 @hal_gpio_init(i32 noundef 0) #13, !dbg !5850
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 9) #13, !dbg !5851
  %6 = tail call i32 @hal_pwm_init(i32 noundef 0) #13, !dbg !5852
  call void @llvm.dbg.value(metadata i32* %1, metadata !5844, metadata !DIExpression(DW_OP_deref)), !dbg !5847
  %7 = call i32 @hal_pwm_set_frequency(i32 noundef 0, i32 noundef 200, i32* noundef nonnull %1) #13, !dbg !5853
  %8 = load i32, i32* %1, align 4, !dbg !5854
  call void @llvm.dbg.value(metadata i32 %8, metadata !5844, metadata !DIExpression()), !dbg !5847
  %9 = mul i32 %8, 50, !dbg !5855
  %10 = udiv i32 %9, 100, !dbg !5856
  call void @llvm.dbg.value(metadata i32 %10, metadata !5845, metadata !DIExpression()), !dbg !5847
  %11 = call i32 @hal_pwm_set_duty_cycle(i32 noundef 0, i32 noundef %10) #13, !dbg !5857
  %12 = call i32 @hal_pwm_start(i32 noundef 0) #13, !dbg !5858
  %13 = call i32 @hal_gpio_deinit(i32 noundef 0) #13, !dbg !5859
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3.31, i32 0, i32 0)) #13, !dbg !5860
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15, !dbg !5861
  ret void, !dbg !5861
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #0 !dbg !5862 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5872
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5872
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5864, metadata !DIExpression()), !dbg !5873
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #13, !dbg !5874
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #13, !dbg !5875
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #13, !dbg !5876
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #13, !dbg !5877
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5878
  store i32 9, i32* %7, align 4, !dbg !5879
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5880
  store i32 3, i32* %8, align 4, !dbg !5881
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5882
  store i32 0, i32* %9, align 4, !dbg !5883
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5884
  store i32 0, i32* %10, align 4, !dbg !5885
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #13, !dbg !5886
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5887
  ret void, !dbg !5887
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5888 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5890, metadata !DIExpression()), !dbg !5892
  %2 = add i32 %0, -1, !dbg !5893
  %3 = icmp ugt i32 %2, 16777215, !dbg !5895
  br i1 %3, label %8, label %4, !dbg !5896

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5897
  call void @llvm.dbg.value(metadata i32 %5, metadata !5891, metadata !DIExpression()), !dbg !5892
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5898
  %7 = and i32 %6, -4, !dbg !5898
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5898
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5899
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5900
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5901
  br label %8, !dbg !5902

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5892
  ret i32 %9, !dbg !5903
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5904 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5905
  ret void, !dbg !5906
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !5907 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5908
  ret i32 %1, !dbg !5909
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5910 {
  %1 = tail call i32 @top_mcu_freq_get() #13, !dbg !5911
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5912
  ret void, !dbg !5913
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5914 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5915
  %2 = or i32 %1, 15728640, !dbg !5915
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5915
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5916
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5917
  %4 = or i32 %3, 458752, !dbg !5917
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5917
  ret void, !dbg !5918
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5919 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5920
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5921
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5922
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5923
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5924
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5925
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5926
  ret void, !dbg !5927
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !5928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5930, metadata !DIExpression()), !dbg !5931
  ret i32 0, !dbg !5932
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !5933 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5983, metadata !DIExpression()), !dbg !5985
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5984, metadata !DIExpression()), !dbg !5985
  ret i32 0, !dbg !5986
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !5987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5989, metadata !DIExpression()), !dbg !5990
  ret i32 1, !dbg !5991
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5996, metadata !DIExpression()), !dbg !5999
  call void @llvm.dbg.value(metadata i32 %1, metadata !5997, metadata !DIExpression()), !dbg !5999
  call void @llvm.dbg.value(metadata i32 %2, metadata !5998, metadata !DIExpression()), !dbg !5999
  ret i32 0, !dbg !6000
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !6001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6005, metadata !DIExpression()), !dbg !6008
  call void @llvm.dbg.value(metadata i32 %1, metadata !6006, metadata !DIExpression()), !dbg !6008
  call void @llvm.dbg.value(metadata i32 %2, metadata !6007, metadata !DIExpression()), !dbg !6008
  ret i32 -1, !dbg !6009
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !6010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6014, metadata !DIExpression()), !dbg !6017
  call void @llvm.dbg.value(metadata i8* %1, metadata !6015, metadata !DIExpression()), !dbg !6017
  call void @llvm.dbg.value(metadata i32 %2, metadata !6016, metadata !DIExpression()), !dbg !6017
  ret i32 0, !dbg !6018
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !6019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6021, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.value(metadata i8* %1, metadata !6022, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.value(metadata i32 %2, metadata !6023, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.value(metadata i32 0, metadata !6024, metadata !DIExpression()), !dbg !6025
  %4 = icmp sgt i32 %2, 0, !dbg !6026
  br i1 %4, label %5, label %14, !dbg !6029

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6024, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.value(metadata i8* %7, metadata !6022, metadata !DIExpression()), !dbg !6025
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6030
  call void @llvm.dbg.value(metadata i8* %8, metadata !6022, metadata !DIExpression()), !dbg !6025
  %9 = load i8, i8* %7, align 1, !dbg !6032
  %10 = zext i8 %9 to i32, !dbg !6032
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #13, !dbg !6033
  %12 = add nuw nsw i32 %6, 1, !dbg !6034
  call void @llvm.dbg.value(metadata i32 %12, metadata !6024, metadata !DIExpression()), !dbg !6025
  %13 = icmp eq i32 %12, %2, !dbg !6026
  br i1 %13, label %14, label %5, !dbg !6029, !llvm.loop !6035

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6037
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !633 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !836, metadata !DIExpression()), !dbg !6038
  call void @llvm.dbg.value(metadata i32 %1, metadata !837, metadata !DIExpression()), !dbg !6038
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !6039, !srcloc !6040
  call void @llvm.dbg.value(metadata i8* %3, metadata !839, metadata !DIExpression()), !dbg !6038
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6041
  %5 = icmp eq i8* %4, null, !dbg !6043
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6044
  call void @llvm.dbg.value(metadata i8* %6, metadata !838, metadata !DIExpression()), !dbg !6038
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6045
  %8 = icmp ult i8* %3, %7, !dbg !6047
  %9 = xor i1 %8, true, !dbg !6048
  %10 = or i1 %5, %9, !dbg !6048
  br i1 %10, label %11, label %13, !dbg !6048

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6049
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6048
  br label %13, !dbg !6048

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6049
  ret i8* %14, !dbg !6048
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !6050 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6052, metadata !DIExpression()), !dbg !6053
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #13, !dbg !6054
  br label %3, !dbg !6055

3:                                                ; preds = %1, %3
  br label %3, !dbg !6055, !llvm.loop !6056
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !6058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6062, metadata !DIExpression()), !dbg !6064
  call void @llvm.dbg.value(metadata i32 %1, metadata !6063, metadata !DIExpression()), !dbg !6064
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.39, i32 0, i32 0), i32 noundef %1) #13, !dbg !6065
  ret i32 -1, !dbg !6066
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !6067 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.40, i32 0, i32 0)) #13, !dbg !6072
  ret i32 0, !dbg !6073
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

!llvm.dbg.cu = !{!2, !856, !893, !902, !983, !1028, !1062, !1068, !85, !102, !1071, !140, !225, !1073, !329, !382, !463, !1144, !573, !831, !842}
!llvm.ident = !{!1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147, !1147}
!llvm.module.flags = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!142 = !{!143, !154, !173, !180}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 163, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!181 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!192 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!226 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!227 = !{!228, !11}
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !229, line: 152, baseType: !13, size: 32, elements: !230)
!229 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!242 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!330 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!331 = !{!332, !340, !348, !352, !357}
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 387, baseType: !13, size: 32, elements: !334)
!333 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!336 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!337 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!338 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!339 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 657, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!383 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_pwm.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!384 = !{!385, !393, !402, !433}
!385 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !386, line: 226, baseType: !13, size: 32, elements: !387)
!386 = !DIFile(filename: "../../../../../driver/chip/inc/hal_pwm.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!464 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!465 = !{!466, !474, !479, !495, !501, !505, !105, !111, !510}
!466 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !467, line: 345, baseType: !13, size: 32, elements: !468)
!467 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!574 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/pwm_generate_waveform/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!634 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
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
!832 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!833 = !{!639, !637}
!834 = !{!631}
!835 = !{!836, !837, !838, !839}
!836 = !DILocalVariable(name: "r", arg: 1, scope: !633, file: !634, line: 63, type: !640)
!837 = !DILocalVariable(name: "nbytes", arg: 2, scope: !633, file: !634, line: 63, type: !830)
!838 = !DILocalVariable(name: "prev_heap_end", scope: !633, file: !634, line: 67, type: !639)
!839 = !DILocalVariable(name: "stack", scope: !633, file: !634, line: 68, type: !639)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !842, file: !847, line: 4, type: !853, isLocal: false, isDefinition: true)
!842 = distinct !DICompileUnit(language: DW_LANG_C99, file: !843, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !844, splitDebugInlining: false, nameTableKind: None)
!843 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!844 = !{!840, !845, !851}
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !842, file: !847, line: 5, type: !848, isLocal: false, isDefinition: true)
!847 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 88, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 11)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !842, file: !847, line: 6, type: !848, isLocal: false, isDefinition: true)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 248, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 31)
!856 = distinct !DICompileUnit(language: DW_LANG_C99, file: !857, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !858, retainedTypes: !881, splitDebugInlining: false, nameTableKind: None)
!857 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_pwm.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!858 = !{!859, !864, !870, !875}
!859 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_HAL_RET_T", file: !860, line: 365, baseType: !134, size: 8, elements: !861)
!860 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!861 = !{!862, !863}
!862 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!863 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!864 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_PWM_CLK_T", file: !860, line: 371, baseType: !134, size: 8, elements: !865)
!865 = !{!866, !867, !868, !869}
!866 = !DIEnumerator(name: "PWM_CLK_32K", value: 0)
!867 = !DIEnumerator(name: "PWM_CLK_2M", value: 1)
!868 = !DIEnumerator(name: "PWM_CLK_XTAL", value: 2)
!869 = !DIEnumerator(name: "PWM_CLK_NUM", value: 3)
!870 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_PWM_STATE_T", file: !860, line: 378, baseType: !134, size: 8, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIEnumerator(name: "PWM_S0", value: 0)
!873 = !DIEnumerator(name: "PWM_S1", value: 1)
!874 = !DIEnumerator(name: "PWM_STATE_NUM", value: 2)
!875 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_XTAL_FREQ_T", file: !860, line: 166, baseType: !7, size: 32, elements: !876)
!876 = !{!877, !878, !879, !880}
!877 = !DIEnumerator(name: "XTAL_FREQ_20M", value: 0)
!878 = !DIEnumerator(name: "XTAL_FREQ_40M", value: 1)
!879 = !DIEnumerator(name: "XTAL_FREQ_26M", value: 2)
!880 = !DIEnumerator(name: "XTAL_FREQ_52M", value: 3)
!881 = !{!80, !88, !882, !883, !890, !892}
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT8", file: !6, line: 84, baseType: !651)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_PWM_TypeDef", file: !860, line: 188, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 32)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !860, line: 184, size: 96, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_CTRL", scope: !885, file: !860, line: 185, baseType: !79, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_PARAM_S0", scope: !885, file: !860, line: 186, baseType: !79, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "PWM_PARAM_S1", scope: !885, file: !860, line: 187, baseType: !79, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "IOT_PWM_TypeDef", file: !860, line: 188, baseType: !885)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PWM_CLK_T", file: !860, line: 376, baseType: !864)
!893 = distinct !DICompileUnit(language: DW_LANG_C99, file: !894, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !895, retainedTypes: !901, splitDebugInlining: false, nameTableKind: None)
!894 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!895 = !{!896}
!896 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !897, line: 1209, baseType: !7, size: 32, elements: !898)
!897 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!898 = !{!899, !900}
!899 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!900 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!901 = !{!58, !60}
!902 = distinct !DICompileUnit(language: DW_LANG_C99, file: !903, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !904, retainedTypes: !982, splitDebugInlining: false, nameTableKind: None)
!903 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!904 = !{!905}
!905 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !906, line: 150, baseType: !7, size: 32, elements: !907)
!906 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981}
!908 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!909 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!910 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!911 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!912 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!913 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!914 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!915 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!916 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!917 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!918 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!919 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!920 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!921 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!922 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!923 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!924 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!925 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!926 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!927 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!928 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!929 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!930 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!931 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!932 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!933 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!934 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!935 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!936 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!937 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!938 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!939 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!940 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!941 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!942 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!943 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!944 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!945 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!946 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!947 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!948 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!949 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!950 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!951 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!952 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!953 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!954 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!955 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!956 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!957 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!958 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!959 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!960 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!961 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!962 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!963 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!964 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!965 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!966 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!967 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!968 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!969 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!970 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!971 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!972 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!973 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!974 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!975 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!976 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!977 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!978 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!979 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!980 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!981 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!982 = !{!58, !80}
!983 = distinct !DICompileUnit(language: DW_LANG_C99, file: !984, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!985 = !{!986, !1011}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !242, line: 418, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 395, size: 1120, elements: !989)
!989 = !{!990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !988, file: !242, line: 397, baseType: !281, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !988, file: !242, line: 398, baseType: !91, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !988, file: !242, line: 399, baseType: !91, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !988, file: !242, line: 400, baseType: !91, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !988, file: !242, line: 401, baseType: !91, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !988, file: !242, line: 402, baseType: !91, size: 32, offset: 160)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !988, file: !242, line: 403, baseType: !288, size: 96, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !988, file: !242, line: 404, baseType: !91, size: 32, offset: 288)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !988, file: !242, line: 405, baseType: !91, size: 32, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !988, file: !242, line: 406, baseType: !91, size: 32, offset: 352)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !988, file: !242, line: 407, baseType: !91, size: 32, offset: 384)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !988, file: !242, line: 408, baseType: !91, size: 32, offset: 416)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !988, file: !242, line: 409, baseType: !91, size: 32, offset: 448)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !988, file: !242, line: 410, baseType: !91, size: 32, offset: 480)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !988, file: !242, line: 411, baseType: !299, size: 64, offset: 512)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !988, file: !242, line: 412, baseType: !281, size: 32, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !988, file: !242, line: 413, baseType: !281, size: 32, offset: 608)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !988, file: !242, line: 414, baseType: !305, size: 128, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !988, file: !242, line: 415, baseType: !309, size: 160, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !988, file: !242, line: 416, baseType: !313, size: 160, offset: 928)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !988, file: !242, line: 417, baseType: !91, size: 32, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !242, line: 378, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 363, size: 28704, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1013, file: !242, line: 365, baseType: !246, size: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1013, file: !242, line: 366, baseType: !250, size: 768, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1013, file: !242, line: 367, baseType: !246, size: 256, offset: 1024)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1013, file: !242, line: 368, baseType: !250, size: 768, offset: 1280)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1013, file: !242, line: 369, baseType: !246, size: 256, offset: 2048)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1013, file: !242, line: 370, baseType: !250, size: 768, offset: 2304)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1013, file: !242, line: 371, baseType: !246, size: 256, offset: 3072)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1013, file: !242, line: 372, baseType: !250, size: 768, offset: 3328)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1013, file: !242, line: 373, baseType: !246, size: 256, offset: 4096)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1013, file: !242, line: 374, baseType: !261, size: 1792, offset: 4352)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1013, file: !242, line: 375, baseType: !265, size: 1920, offset: 6144)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1013, file: !242, line: 376, baseType: !272, size: 20608, offset: 8064)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1013, file: !242, line: 377, baseType: !91, size: 32, offset: 28672)
!1028 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1029, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1030, splitDebugInlining: false, nameTableKind: None)
!1029 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1030 = !{!1031, !905}
!1031 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1032, line: 55, baseType: !7, size: 32, elements: !1033)
!1032 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1034 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1035 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1036 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1037 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1038 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1039 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1040 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1041 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1042 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1043 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1044 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1045 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1046 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1047 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1048 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1049 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1050 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1051 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1052 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1053 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1054 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1055 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1056 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1057 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1058 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1059 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1060 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1061 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1062 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1063, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1064, retainedTypes: !1065, splitDebugInlining: false, nameTableKind: None)
!1063 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pwm.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1064 = !{!864, !870}
!1065 = !{!892, !1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1068 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1069, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1070, splitDebugInlining: false, nameTableKind: None)
!1069 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1070 = !{!681, !58}
!1071 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1072, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1072 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1073 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1074, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1075, retainedTypes: !1139, splitDebugInlining: false, nameTableKind: None)
!1074 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1075 = !{!1076, !1083, !1031, !1114, !1120, !1124, !1128, !1134}
!1076 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1077, line: 233, baseType: !13, size: 32, elements: !1078)
!1077 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1080 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1081 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1082 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1083 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 249, baseType: !7, size: 32, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1085 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!1086 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!1087 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!1088 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!1089 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!1090 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!1091 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!1092 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!1093 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!1094 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!1095 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!1096 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!1097 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!1098 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!1099 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!1100 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!1101 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!1102 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!1103 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!1104 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!1105 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!1106 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!1107 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!1108 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!1109 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!1110 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!1111 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!1112 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!1113 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1077, line: 224, baseType: !13, size: 32, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119}
!1116 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1117 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1118 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1119 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1077, line: 217, baseType: !7, size: 32, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1123 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1077, line: 210, baseType: !7, size: 32, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1127 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1077, line: 242, baseType: !7, size: 32, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133}
!1130 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1131 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1132 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1133 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1135, line: 57, baseType: !7, size: 32, elements: !1136)
!1135 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1136 = !{!1137, !1138}
!1137 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1138 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1139 = !{!1140, !219, !1141, !267, !1142, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1032, line: 87, baseType: !1031)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1077, line: 220, baseType: !1120)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1077, line: 247, baseType: !1128)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1135, line: 60, baseType: !1134)
!1144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1145, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1146, splitDebugInlining: false, nameTableKind: None)
!1145 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/pwm_generate_waveform/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!1146 = !{!474, !479, !495, !501, !505, !1083, !393, !402}
!1147 = !{!"Ubuntu clang version 14.0.6"}
!1148 = !{i32 7, !"Dwarf Version", i32 2}
!1149 = !{i32 2, !"Debug Info Version", i32 3}
!1150 = !{i32 1, !"wchar_size", i32 4}
!1151 = !{i32 1, !"min_enum_size", i32 4}
!1152 = !{i32 1, !"branch-target-enforcement", i32 0}
!1153 = !{i32 1, !"sign-return-address", i32 0}
!1154 = !{i32 1, !"sign-return-address-all", i32 0}
!1155 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1156 = !{i32 7, !"frame-pointer", i32 2}
!1157 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !1158, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !60, !60, !222}
!1160 = !{!1161, !1162, !1163}
!1161 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1157, file: !3, line: 73, type: !60)
!1162 = !DILocalVariable(name: "countValue", arg: 2, scope: !1157, file: !3, line: 73, type: !60)
!1163 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1157, file: !3, line: 73, type: !222)
!1164 = !DILocation(line: 0, scope: !1157)
!1165 = !DILocation(line: 75, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 75, column: 5)
!1167 = !DILocation(line: 75, column: 5, scope: !1157)
!1168 = !DILocation(line: 75, column: 5, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 75, column: 5)
!1170 = distinct !{!1170, !1168, !1168}
!1171 = !DILocation(line: 77, column: 9, scope: !1157)
!1172 = !DILocation(line: 78, column: 30, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 77, column: 24)
!1174 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 77, column: 9)
!1175 = !DILocation(line: 0, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 79, column: 13)
!1177 = !DILocation(line: 79, column: 13, scope: !1173)
!1178 = !DILocation(line: 80, column: 34, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 79, column: 37)
!1180 = !DILocation(line: 81, column: 9, scope: !1179)
!1181 = !DILocation(line: 82, column: 34, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 81, column: 16)
!1183 = !DILocation(line: 85, column: 30, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 84, column: 31)
!1185 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 84, column: 16)
!1186 = !DILocation(line: 0, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 86, column: 13)
!1188 = !DILocation(line: 86, column: 13, scope: !1184)
!1189 = !DILocation(line: 87, column: 34, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 86, column: 37)
!1191 = !DILocation(line: 88, column: 9, scope: !1190)
!1192 = !DILocation(line: 89, column: 34, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 88, column: 16)
!1194 = !DILocation(line: 92, column: 1, scope: !1157)
!1195 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1196, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !60}
!1198 = !{!1199}
!1199 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1195, file: !3, line: 94, type: !60)
!1200 = !DILocation(line: 0, scope: !1195)
!1201 = !DILocation(line: 96, column: 5, scope: !1195)
!1202 = !DILocation(line: 96, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 96, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 96, column: 5)
!1205 = distinct !{!1205, !1202, !1202}
!1206 = !DILocation(line: 99, column: 30, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 98, column: 24)
!1208 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 98, column: 9)
!1209 = !DILocation(line: 100, column: 9, scope: !1207)
!1210 = !DILocation(line: 101, column: 5, scope: !1207)
!1211 = !DILocation(line: 102, column: 30, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 101, column: 31)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 101, column: 16)
!1214 = !DILocation(line: 103, column: 9, scope: !1212)
!1215 = !DILocation(line: 104, column: 5, scope: !1212)
!1216 = !DILocation(line: 105, column: 30, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 104, column: 31)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 104, column: 16)
!1219 = !DILocation(line: 106, column: 5, scope: !1217)
!1220 = !DILocation(line: 108, column: 1, scope: !1195)
!1221 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1196, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1221, file: !3, line: 110, type: !60)
!1224 = !DILocation(line: 0, scope: !1221)
!1225 = !DILocation(line: 112, column: 9, scope: !1221)
!1226 = !DILocation(line: 113, column: 30, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 112, column: 24)
!1228 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 112, column: 9)
!1229 = !DILocation(line: 114, column: 30, scope: !1227)
!1230 = !DILocation(line: 115, column: 31, scope: !1227)
!1231 = !DILocation(line: 117, column: 5, scope: !1227)
!1232 = !DILocation(line: 118, column: 30, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 117, column: 31)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 117, column: 16)
!1235 = !DILocation(line: 119, column: 30, scope: !1233)
!1236 = !DILocation(line: 120, column: 31, scope: !1233)
!1237 = !DILocation(line: 121, column: 5, scope: !1233)
!1238 = !DILocation(line: 122, column: 30, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 121, column: 31)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 121, column: 16)
!1241 = !DILocation(line: 123, column: 5, scope: !1239)
!1242 = !DILocation(line: 124, column: 30, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 123, column: 31)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 123, column: 16)
!1245 = !DILocation(line: 125, column: 5, scope: !1243)
!1246 = !DILocation(line: 128, column: 1, scope: !1221)
!1247 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !322, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1248)
!1248 = !{!1249, !1250}
!1249 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1247, file: !3, line: 130, type: !237)
!1250 = !DILocalVariable(name: "GPT_Status", scope: !1247, file: !3, line: 132, type: !131)
!1251 = !DILocation(line: 0, scope: !1247)
!1252 = !DILocation(line: 135, column: 18, scope: !1247)
!1253 = !DILocation(line: 136, column: 26, scope: !1247)
!1254 = !DILocation(line: 136, column: 24, scope: !1247)
!1255 = !DILocation(line: 138, column: 20, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 138, column: 9)
!1257 = !DILocation(line: 138, column: 9, scope: !1247)
!1258 = !DILocation(line: 141, column: 27, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 141, column: 16)
!1260 = !DILocation(line: 141, column: 16, scope: !1256)
!1261 = !DILocation(line: 0, scope: !1256)
!1262 = !DILocation(line: 145, column: 1, scope: !1247)
!1263 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1264, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !60, !60, !74}
!1266 = !{!1267, !1268, !1269}
!1267 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1263, file: !3, line: 147, type: !60)
!1268 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1263, file: !3, line: 147, type: !60)
!1269 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1263, file: !3, line: 147, type: !74)
!1270 = !DILocation(line: 0, scope: !1263)
!1271 = !DILocation(line: 149, column: 5, scope: !1263)
!1272 = !DILocation(line: 149, column: 5, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 149, column: 5)
!1274 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 149, column: 5)
!1275 = distinct !{!1275, !1272, !1272}
!1276 = !DILocation(line: 149, column: 5, scope: !1274)
!1277 = !DILocation(line: 151, column: 23, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 151, column: 9)
!1279 = !DILocation(line: 152, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 151, column: 41)
!1281 = !DILocation(line: 153, column: 9, scope: !1280)
!1282 = !DILocation(line: 154, column: 9, scope: !1280)
!1283 = !DILocation(line: 155, column: 5, scope: !1280)
!1284 = !DILocation(line: 157, column: 9, scope: !1263)
!1285 = !DILocation(line: 158, column: 37, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 157, column: 24)
!1287 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 157, column: 9)
!1288 = !DILocation(line: 159, column: 30, scope: !1286)
!1289 = !DILocation(line: 160, column: 45, scope: !1286)
!1290 = !DILocation(line: 160, column: 30, scope: !1286)
!1291 = !DILocation(line: 161, column: 5, scope: !1286)
!1292 = !DILocation(line: 162, column: 37, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 161, column: 31)
!1294 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 161, column: 16)
!1295 = !DILocation(line: 163, column: 30, scope: !1293)
!1296 = !DILocation(line: 164, column: 45, scope: !1293)
!1297 = !DILocation(line: 164, column: 30, scope: !1293)
!1298 = !DILocation(line: 165, column: 5, scope: !1293)
!1299 = !DILocation(line: 166, column: 59, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 165, column: 31)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 165, column: 16)
!1302 = !DILocation(line: 166, column: 45, scope: !1300)
!1303 = !DILocation(line: 166, column: 30, scope: !1300)
!1304 = !DILocation(line: 167, column: 5, scope: !1300)
!1305 = !DILocation(line: 168, column: 59, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 167, column: 31)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 167, column: 16)
!1308 = !DILocation(line: 168, column: 45, scope: !1306)
!1309 = !DILocation(line: 168, column: 30, scope: !1306)
!1310 = !DILocation(line: 169, column: 30, scope: !1306)
!1311 = !DILocation(line: 170, column: 5, scope: !1306)
!1312 = !DILocation(line: 171, column: 1, scope: !1263)
!1313 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1314, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!60, !60}
!1316 = !{!1317, !1318}
!1317 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1313, file: !3, line: 173, type: !60)
!1318 = !DILocalVariable(name: "current_count", scope: !1313, file: !3, line: 175, type: !60)
!1319 = !DILocation(line: 0, scope: !1313)
!1320 = !DILocation(line: 177, column: 5, scope: !1313)
!1321 = !DILocation(line: 177, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 177, column: 5)
!1323 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 177, column: 5)
!1324 = distinct !{!1324, !1321, !1321}
!1325 = !DILocation(line: 183, column: 5, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 181, column: 31)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 181, column: 16)
!1328 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 179, column: 9)
!1329 = !DILocation(line: 185, column: 5, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 183, column: 31)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 183, column: 16)
!1332 = !DILocation(line: 187, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 185, column: 31)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 185, column: 16)
!1335 = !DILocation(line: 0, scope: !1328)
!1336 = !DILocation(line: 189, column: 5, scope: !1313)
!1337 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1338 = !{}
!1339 = !DILocation(line: 195, column: 5, scope: !1337)
!1340 = !DILocation(line: 196, column: 1, scope: !1337)
!1341 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1342 = !DILocation(line: 200, column: 5, scope: !1341)
!1343 = !DILocation(line: 201, column: 1, scope: !1341)
!1344 = distinct !DISubprogram(name: "halPWMResetAll", scope: !857, file: !857, line: 140, type: !1345, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1348)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !860, line: 368, baseType: !859)
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "ret", scope: !1344, file: !857, line: 142, type: !1347)
!1350 = !DILocation(line: 0, scope: !1344)
!1351 = !DILocation(line: 145, column: 39, scope: !1344)
!1352 = !DILocation(line: 146, column: 39, scope: !1344)
!1353 = !DILocation(line: 148, column: 5, scope: !1344)
!1354 = distinct !DISubprogram(name: "halPWMClockSelect", scope: !857, file: !857, line: 153, type: !1355, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1357)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1347, !892}
!1357 = !{!1358, !1359, !1360}
!1358 = !DILocalVariable(name: "ePwmClk", arg: 1, scope: !1354, file: !857, line: 153, type: !892)
!1359 = !DILocalVariable(name: "ret", scope: !1354, file: !857, line: 155, type: !1347)
!1360 = !DILocalVariable(name: "u4Val", scope: !1354, file: !857, line: 156, type: !80)
!1361 = !DILocation(line: 0, scope: !1354)
!1362 = !DILocation(line: 158, column: 17, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1354, file: !857, line: 158, column: 9)
!1364 = !DILocation(line: 158, column: 9, scope: !1354)
!1365 = !DILocation(line: 158, column: 9, scope: !1363)
!1366 = !DILocation(line: 162, column: 13, scope: !1354)
!1367 = !DILocation(line: 163, column: 11, scope: !1354)
!1368 = !DILocation(line: 164, column: 23, scope: !1354)
!1369 = !DILocation(line: 164, column: 11, scope: !1354)
!1370 = !DILocation(line: 165, column: 39, scope: !1354)
!1371 = !DILocation(line: 167, column: 5, scope: !1354)
!1372 = !DILocation(line: 168, column: 1, scope: !1354)
!1373 = distinct !DISubprogram(name: "halPWMEnable", scope: !857, file: !857, line: 170, type: !1374, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1347, !133, !133, !133, !133}
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1377 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1373, file: !857, line: 170, type: !133)
!1378 = !DILocalVariable(name: "ucGlobalKick", arg: 2, scope: !1373, file: !857, line: 170, type: !133)
!1379 = !DILocalVariable(name: "ucIOCtrl", arg: 3, scope: !1373, file: !857, line: 170, type: !133)
!1380 = !DILocalVariable(name: "ucPolarity", arg: 4, scope: !1373, file: !857, line: 170, type: !133)
!1381 = !DILocalVariable(name: "ret", scope: !1373, file: !857, line: 172, type: !1347)
!1382 = !DILocalVariable(name: "pCRAddr", scope: !1373, file: !857, line: 173, type: !890)
!1383 = !DILocalVariable(name: "u4Val", scope: !1373, file: !857, line: 174, type: !80)
!1384 = !DILocation(line: 0, scope: !1373)
!1385 = !DILocation(line: 178, column: 79, scope: !1373)
!1386 = !DILocation(line: 178, column: 77, scope: !1373)
!1387 = !DILocation(line: 178, column: 59, scope: !1373)
!1388 = !DILocation(line: 180, column: 23, scope: !1373)
!1389 = !DILocation(line: 185, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1373, file: !857, line: 185, column: 9)
!1391 = !DILocation(line: 185, column: 9, scope: !1373)
!1392 = !DILocation(line: 191, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1373, file: !857, line: 191, column: 9)
!1394 = !DILocation(line: 191, column: 9, scope: !1373)
!1395 = !DILocation(line: 197, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1373, file: !857, line: 197, column: 9)
!1397 = !DILocation(line: 197, column: 9, scope: !1373)
!1398 = !DILocation(line: 203, column: 25, scope: !1373)
!1399 = !DILocation(line: 206, column: 5, scope: !1373)
!1400 = distinct !DISubprogram(name: "halPWMDisable", scope: !857, file: !857, line: 209, type: !1401, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1347, !133}
!1403 = !{!1404, !1405, !1406}
!1404 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1400, file: !857, line: 209, type: !133)
!1405 = !DILocalVariable(name: "ret", scope: !1400, file: !857, line: 211, type: !1347)
!1406 = !DILocalVariable(name: "pCRAddr", scope: !1400, file: !857, line: 212, type: !890)
!1407 = !DILocation(line: 0, scope: !1400)
!1408 = !DILocation(line: 214, column: 79, scope: !1400)
!1409 = !DILocation(line: 214, column: 77, scope: !1400)
!1410 = !DILocation(line: 214, column: 59, scope: !1400)
!1411 = !DILocation(line: 217, column: 15, scope: !1400)
!1412 = !DILocation(line: 217, column: 25, scope: !1400)
!1413 = !DILocation(line: 219, column: 5, scope: !1400)
!1414 = distinct !DISubprogram(name: "halPWMKick", scope: !857, file: !857, line: 222, type: !1401, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1415)
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1414, file: !857, line: 222, type: !133)
!1417 = !DILocalVariable(name: "ret", scope: !1414, file: !857, line: 224, type: !1347)
!1418 = !DILocalVariable(name: "pCRAddr", scope: !1414, file: !857, line: 225, type: !890)
!1419 = !DILocation(line: 0, scope: !1414)
!1420 = !DILocation(line: 228, column: 79, scope: !1414)
!1421 = !DILocation(line: 228, column: 77, scope: !1414)
!1422 = !DILocation(line: 228, column: 59, scope: !1414)
!1423 = !DILocation(line: 230, column: 15, scope: !1414)
!1424 = !DILocation(line: 230, column: 25, scope: !1414)
!1425 = !DILocation(line: 233, column: 5, scope: !1414)
!1426 = !DILocation(line: 235, column: 5, scope: !1414)
!1427 = distinct !DISubprogram(name: "halPWMConfig", scope: !857, file: !857, line: 239, type: !1428, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1432)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1347, !133, !1430, !1431, !80}
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PWM_STATE_T", file: !860, line: 382, baseType: !870)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1433 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1427, file: !857, line: 239, type: !133)
!1434 = !DILocalVariable(name: "eState", arg: 2, scope: !1427, file: !857, line: 239, type: !1430)
!1435 = !DILocalVariable(name: "u2DutyCycle", arg: 3, scope: !1427, file: !857, line: 239, type: !1431)
!1436 = !DILocalVariable(name: "u4PwmFreq", arg: 4, scope: !1427, file: !857, line: 239, type: !80)
!1437 = !DILocalVariable(name: "ret", scope: !1427, file: !857, line: 241, type: !1347)
!1438 = !DILocalVariable(name: "ePwmClk", scope: !1427, file: !857, line: 242, type: !892)
!1439 = !DILocalVariable(name: "u4ClkFreq", scope: !1427, file: !857, line: 243, type: !80)
!1440 = !DILocalVariable(name: "u4PwmStep", scope: !1427, file: !857, line: 244, type: !80)
!1441 = !DILocalVariable(name: "u2OnTime", scope: !1427, file: !857, line: 245, type: !1431)
!1442 = !DILocalVariable(name: "u2OffTime", scope: !1427, file: !857, line: 246, type: !1431)
!1443 = !DILocalVariable(name: "pCRAddr", scope: !1427, file: !857, line: 247, type: !890)
!1444 = !DILocalVariable(name: "u4Val", scope: !1427, file: !857, line: 248, type: !80)
!1445 = !DILocalVariable(name: "ucXtal", scope: !1446, file: !857, line: 264, type: !133)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !857, line: 263, column: 28)
!1447 = distinct !DILexicalBlock(scope: !1427, file: !857, line: 254, column: 22)
!1448 = !DILocation(line: 0, scope: !1427)
!1449 = !DILocation(line: 250, column: 79, scope: !1427)
!1450 = !DILocation(line: 250, column: 77, scope: !1427)
!1451 = !DILocation(line: 250, column: 59, scope: !1427)
!1452 = !DILocation(line: 252, column: 34, scope: !1427)
!1453 = !DILocation(line: 252, column: 100, scope: !1427)
!1454 = !DILocation(line: 254, column: 13, scope: !1427)
!1455 = !DILocation(line: 254, column: 5, scope: !1427)
!1456 = !DILocation(line: 261, column: 13, scope: !1447)
!1457 = !DILocation(line: 0, scope: !1446)
!1458 = !DILocation(line: 265, column: 24, scope: !1446)
!1459 = !DILocation(line: 265, column: 90, scope: !1446)
!1460 = !DILocation(line: 265, column: 22, scope: !1446)
!1461 = !DILocation(line: 267, column: 17, scope: !1446)
!1462 = !DILocation(line: 0, scope: !1447)
!1463 = !DILocation(line: 300, column: 28, scope: !1427)
!1464 = !DILocation(line: 302, column: 17, scope: !1427)
!1465 = !DILocation(line: 306, column: 19, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1427, file: !857, line: 306, column: 9)
!1467 = !DILocation(line: 306, column: 9, scope: !1427)
!1468 = !DILocation(line: 311, column: 16, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1427, file: !857, line: 311, column: 9)
!1470 = !DILocation(line: 311, column: 9, scope: !1427)
!1471 = !DILocation(line: 312, column: 27, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1469, file: !857, line: 311, column: 27)
!1473 = !DILocation(line: 314, column: 19, scope: !1472)
!1474 = !DILocation(line: 314, column: 29, scope: !1472)
!1475 = !DILocation(line: 316, column: 19, scope: !1472)
!1476 = !DILocation(line: 316, column: 15, scope: !1472)
!1477 = !DILocation(line: 317, column: 33, scope: !1472)
!1478 = !DILocation(line: 318, column: 5, scope: !1472)
!1479 = !DILocation(line: 319, column: 27, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1469, file: !857, line: 318, column: 12)
!1481 = !DILocation(line: 321, column: 19, scope: !1480)
!1482 = !DILocation(line: 321, column: 29, scope: !1480)
!1483 = !DILocation(line: 323, column: 19, scope: !1480)
!1484 = !DILocation(line: 323, column: 15, scope: !1480)
!1485 = !DILocation(line: 324, column: 33, scope: !1480)
!1486 = !DILocation(line: 330, column: 1, scope: !1427)
!1487 = distinct !DISubprogram(name: "halPWMStateConfig", scope: !857, file: !857, line: 332, type: !1488, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1347, !133, !1431, !1431, !133}
!1490 = !{!1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1491 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1487, file: !857, line: 332, type: !133)
!1492 = !DILocalVariable(name: "u2S0StayCycle", arg: 2, scope: !1487, file: !857, line: 332, type: !1431)
!1493 = !DILocalVariable(name: "u2S1StayCycle", arg: 3, scope: !1487, file: !857, line: 332, type: !1431)
!1494 = !DILocalVariable(name: "ucReplayMode", arg: 4, scope: !1487, file: !857, line: 332, type: !133)
!1495 = !DILocalVariable(name: "ret", scope: !1487, file: !857, line: 334, type: !1347)
!1496 = !DILocalVariable(name: "pCRAddr", scope: !1487, file: !857, line: 335, type: !890)
!1497 = !DILocalVariable(name: "u4Val", scope: !1487, file: !857, line: 336, type: !80)
!1498 = !DILocation(line: 0, scope: !1487)
!1499 = !DILocation(line: 340, column: 10, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !857, line: 340, column: 9)
!1501 = !DILocation(line: 340, column: 24, scope: !1500)
!1502 = !DILocation(line: 340, column: 34, scope: !1500)
!1503 = !DILocation(line: 340, column: 39, scope: !1500)
!1504 = !DILocation(line: 340, column: 53, scope: !1500)
!1505 = !DILocation(line: 340, column: 9, scope: !1487)
!1506 = !DILocation(line: 344, column: 79, scope: !1487)
!1507 = !DILocation(line: 344, column: 77, scope: !1487)
!1508 = !DILocation(line: 344, column: 59, scope: !1487)
!1509 = !DILocation(line: 345, column: 23, scope: !1487)
!1510 = !DILocation(line: 347, column: 11, scope: !1487)
!1511 = !DILocation(line: 348, column: 29, scope: !1487)
!1512 = !DILocation(line: 350, column: 11, scope: !1487)
!1513 = !DILocation(line: 351, column: 29, scope: !1487)
!1514 = !DILocation(line: 351, column: 11, scope: !1487)
!1515 = !DILocation(line: 353, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1487, file: !857, line: 353, column: 9)
!1517 = !DILocation(line: 353, column: 9, scope: !1487)
!1518 = !DILocation(line: 358, column: 25, scope: !1487)
!1519 = !DILocation(line: 360, column: 5, scope: !1487)
!1520 = !DILocation(line: 361, column: 1, scope: !1487)
!1521 = distinct !DISubprogram(name: "halPWMQuery", scope: !857, file: !857, line: 365, type: !1522, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !856, retainedNodes: !1525)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!1347, !133, !1430, !1524, !1066, !1067}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 32)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1526 = !DILocalVariable(name: "ucPwmIdx", arg: 1, scope: !1521, file: !857, line: 365, type: !133)
!1527 = !DILocalVariable(name: "eState", arg: 2, scope: !1521, file: !857, line: 365, type: !1430)
!1528 = !DILocalVariable(name: "pu2DutyCycle", arg: 3, scope: !1521, file: !857, line: 365, type: !1524)
!1529 = !DILocalVariable(name: "pu4PwmFreq", arg: 4, scope: !1521, file: !857, line: 365, type: !1066)
!1530 = !DILocalVariable(name: "pucEnable", arg: 5, scope: !1521, file: !857, line: 365, type: !1067)
!1531 = !DILocalVariable(name: "ret", scope: !1521, file: !857, line: 367, type: !1347)
!1532 = !DILocalVariable(name: "ePwmClk", scope: !1521, file: !857, line: 368, type: !892)
!1533 = !DILocalVariable(name: "u4ClkFreq", scope: !1521, file: !857, line: 369, type: !80)
!1534 = !DILocalVariable(name: "u4PwmStep", scope: !1521, file: !857, line: 370, type: !80)
!1535 = !DILocalVariable(name: "u2OnTime", scope: !1521, file: !857, line: 371, type: !1431)
!1536 = !DILocalVariable(name: "u2OffTime", scope: !1521, file: !857, line: 372, type: !1431)
!1537 = !DILocalVariable(name: "pCRAddr", scope: !1521, file: !857, line: 373, type: !890)
!1538 = !DILocalVariable(name: "u4Val", scope: !1521, file: !857, line: 374, type: !80)
!1539 = !DILocalVariable(name: "ucXtal", scope: !1540, file: !857, line: 401, type: !133)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !857, line: 400, column: 28)
!1541 = distinct !DILexicalBlock(scope: !1521, file: !857, line: 391, column: 22)
!1542 = !DILocation(line: 0, scope: !1521)
!1543 = !DILocation(line: 376, column: 79, scope: !1521)
!1544 = !DILocation(line: 376, column: 77, scope: !1521)
!1545 = !DILocation(line: 376, column: 59, scope: !1521)
!1546 = !DILocation(line: 378, column: 23, scope: !1521)
!1547 = !DILocation(line: 380, column: 15, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1521, file: !857, line: 380, column: 9)
!1549 = !DILocation(line: 380, column: 9, scope: !1521)
!1550 = !DILocation(line: 381, column: 22, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1548, file: !857, line: 380, column: 52)
!1552 = !DILocation(line: 389, column: 34, scope: !1521)
!1553 = !DILocation(line: 389, column: 100, scope: !1521)
!1554 = !DILocation(line: 391, column: 13, scope: !1521)
!1555 = !DILocation(line: 391, column: 5, scope: !1521)
!1556 = !DILocation(line: 383, column: 22, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1548, file: !857, line: 382, column: 12)
!1558 = !DILocation(line: 386, column: 9, scope: !1557)
!1559 = !DILocation(line: 398, column: 13, scope: !1541)
!1560 = !DILocation(line: 0, scope: !1540)
!1561 = !DILocation(line: 402, column: 24, scope: !1540)
!1562 = !DILocation(line: 402, column: 90, scope: !1540)
!1563 = !DILocation(line: 402, column: 22, scope: !1540)
!1564 = !DILocation(line: 403, column: 17, scope: !1540)
!1565 = !DILocation(line: 0, scope: !1541)
!1566 = !DILocation(line: 436, column: 16, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1521, file: !857, line: 436, column: 9)
!1568 = !DILocation(line: 436, column: 9, scope: !1521)
!1569 = !DILocation(line: 437, column: 27, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !857, line: 436, column: 27)
!1571 = !DILocation(line: 438, column: 28, scope: !1570)
!1572 = !DILocation(line: 439, column: 29, scope: !1570)
!1573 = !DILocation(line: 440, column: 5, scope: !1570)
!1574 = !DILocation(line: 441, column: 27, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !857, line: 440, column: 12)
!1576 = !DILocation(line: 0, scope: !1567)
!1577 = !DILocation(line: 446, column: 17, scope: !1521)
!1578 = !DILocation(line: 446, column: 26, scope: !1521)
!1579 = !DILocation(line: 447, column: 32, scope: !1521)
!1580 = !DILocation(line: 450, column: 5, scope: !1521)
!1581 = !DILocation(line: 451, column: 1, scope: !1521)
!1582 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !894, file: !894, line: 54, type: !1583, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1586)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1585, !80, !133}
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1586 = !{!1587, !1588, !1589, !1590}
!1587 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1582, file: !894, line: 54, type: !80)
!1588 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1582, file: !894, line: 54, type: !133)
!1589 = !DILocalVariable(name: "no", scope: !1582, file: !894, line: 57, type: !1431)
!1590 = !DILocalVariable(name: "remainder", scope: !1582, file: !894, line: 58, type: !1431)
!1591 = !DILocation(line: 0, scope: !1582)
!1592 = !DILocation(line: 59, column: 19, scope: !1582)
!1593 = !DILocation(line: 60, column: 17, scope: !1582)
!1594 = !DILocation(line: 61, column: 5, scope: !1582)
!1595 = !DILocation(line: 65, column: 27, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !894, line: 65, column: 17)
!1597 = distinct !DILexicalBlock(scope: !1582, file: !894, line: 61, column: 17)
!1598 = !DILocation(line: 0, scope: !1596)
!1599 = !DILocation(line: 65, column: 17, scope: !1597)
!1600 = !DILocation(line: 66, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !894, line: 65, column: 33)
!1602 = !DILocation(line: 67, column: 73, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !894, line: 66, column: 38)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !894, line: 66, column: 21)
!1605 = !DILocation(line: 67, column: 69, scope: !1603)
!1606 = !DILocation(line: 67, column: 66, scope: !1603)
!1607 = !DILocation(line: 68, column: 17, scope: !1603)
!1608 = !DILocation(line: 68, column: 28, scope: !1604)
!1609 = !DILocation(line: 69, column: 77, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !894, line: 68, column: 45)
!1611 = distinct !DILexicalBlock(scope: !1604, file: !894, line: 68, column: 28)
!1612 = !DILocation(line: 70, column: 77, scope: !1610)
!1613 = !DILocation(line: 71, column: 17, scope: !1610)
!1614 = !DILocation(line: 72, column: 77, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !894, line: 71, column: 45)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !894, line: 71, column: 28)
!1617 = !DILocation(line: 73, column: 77, scope: !1615)
!1618 = !DILocation(line: 74, column: 17, scope: !1615)
!1619 = !DILocation(line: 75, column: 79, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !894, line: 74, column: 45)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !894, line: 74, column: 28)
!1622 = !DILocation(line: 76, column: 79, scope: !1620)
!1623 = !DILocation(line: 77, column: 17, scope: !1620)
!1624 = !DILocation(line: 78, column: 79, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !894, line: 77, column: 45)
!1626 = distinct !DILexicalBlock(scope: !1621, file: !894, line: 77, column: 28)
!1627 = !DILocation(line: 79, column: 79, scope: !1625)
!1628 = !DILocation(line: 80, column: 17, scope: !1625)
!1629 = !DILocation(line: 81, column: 79, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !894, line: 80, column: 45)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !894, line: 80, column: 28)
!1632 = !DILocation(line: 82, column: 79, scope: !1630)
!1633 = !DILocation(line: 83, column: 17, scope: !1630)
!1634 = !DILocation(line: 85, column: 17, scope: !1601)
!1635 = !DILocation(line: 86, column: 13, scope: !1601)
!1636 = !DILocation(line: 88, column: 21, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1596, file: !894, line: 86, column: 20)
!1638 = !DILocation(line: 89, column: 72, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !894, line: 88, column: 38)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !894, line: 88, column: 21)
!1641 = !DILocation(line: 89, column: 66, scope: !1639)
!1642 = !DILocation(line: 90, column: 17, scope: !1639)
!1643 = !DILocation(line: 90, column: 28, scope: !1640)
!1644 = !DILocation(line: 91, column: 77, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !894, line: 90, column: 45)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !894, line: 90, column: 28)
!1647 = !DILocation(line: 92, column: 17, scope: !1645)
!1648 = !DILocation(line: 93, column: 77, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !894, line: 92, column: 45)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !894, line: 92, column: 28)
!1651 = !DILocation(line: 94, column: 17, scope: !1649)
!1652 = !DILocation(line: 95, column: 79, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !894, line: 94, column: 45)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !894, line: 94, column: 28)
!1655 = !DILocation(line: 96, column: 17, scope: !1653)
!1656 = !DILocation(line: 97, column: 79, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !894, line: 96, column: 45)
!1658 = distinct !DILexicalBlock(scope: !1654, file: !894, line: 96, column: 28)
!1659 = !DILocation(line: 98, column: 17, scope: !1657)
!1660 = !DILocation(line: 99, column: 79, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !894, line: 98, column: 45)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !894, line: 98, column: 28)
!1663 = !DILocation(line: 100, column: 17, scope: !1661)
!1664 = !DILocation(line: 103, column: 17, scope: !1637)
!1665 = !DILocation(line: 109, column: 27, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1597, file: !894, line: 109, column: 17)
!1667 = !DILocation(line: 0, scope: !1666)
!1668 = !DILocation(line: 109, column: 17, scope: !1597)
!1669 = !DILocation(line: 110, column: 21, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !894, line: 109, column: 33)
!1671 = !DILocation(line: 111, column: 73, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !894, line: 110, column: 36)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !894, line: 110, column: 21)
!1674 = !DILocation(line: 111, column: 69, scope: !1672)
!1675 = !DILocation(line: 111, column: 66, scope: !1672)
!1676 = !DILocation(line: 112, column: 17, scope: !1672)
!1677 = !DILocation(line: 113, column: 79, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !894, line: 112, column: 24)
!1679 = !DILocation(line: 114, column: 79, scope: !1678)
!1680 = !DILocation(line: 117, column: 17, scope: !1670)
!1681 = !DILocation(line: 118, column: 13, scope: !1670)
!1682 = !DILocation(line: 120, column: 21, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1666, file: !894, line: 118, column: 20)
!1684 = !DILocation(line: 121, column: 72, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !894, line: 120, column: 36)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !894, line: 120, column: 21)
!1687 = !DILocation(line: 121, column: 66, scope: !1685)
!1688 = !DILocation(line: 122, column: 17, scope: !1685)
!1689 = !DILocation(line: 123, column: 79, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !894, line: 122, column: 24)
!1691 = !DILocation(line: 126, column: 17, scope: !1683)
!1692 = !DILocation(line: 133, column: 1, scope: !1582)
!1693 = distinct !DISubprogram(name: "halGPO_Write", scope: !894, file: !894, line: 136, type: !1583, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1694)
!1694 = !{!1695, !1696, !1697, !1698}
!1695 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1693, file: !894, line: 136, type: !80)
!1696 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1693, file: !894, line: 136, type: !133)
!1697 = !DILocalVariable(name: "no", scope: !1693, file: !894, line: 138, type: !1431)
!1698 = !DILocalVariable(name: "remainder", scope: !1693, file: !894, line: 139, type: !1431)
!1699 = !DILocation(line: 0, scope: !1693)
!1700 = !DILocation(line: 140, column: 19, scope: !1693)
!1701 = !DILocation(line: 141, column: 17, scope: !1693)
!1702 = !DILocation(line: 142, column: 5, scope: !1693)
!1703 = !DILocation(line: 145, column: 17, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !894, line: 145, column: 17)
!1705 = distinct !DILexicalBlock(scope: !1693, file: !894, line: 142, column: 17)
!1706 = !DILocation(line: 0, scope: !1704)
!1707 = !DILocation(line: 145, column: 17, scope: !1705)
!1708 = !DILocation(line: 146, column: 17, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !894, line: 145, column: 29)
!1710 = !DILocation(line: 147, column: 13, scope: !1709)
!1711 = !DILocation(line: 148, column: 17, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !894, line: 147, column: 20)
!1713 = !DILocation(line: 153, column: 17, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1705, file: !894, line: 153, column: 17)
!1715 = !DILocation(line: 0, scope: !1714)
!1716 = !DILocation(line: 153, column: 17, scope: !1705)
!1717 = !DILocation(line: 154, column: 17, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !894, line: 153, column: 29)
!1719 = !DILocation(line: 155, column: 13, scope: !1718)
!1720 = !DILocation(line: 156, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !894, line: 155, column: 20)
!1722 = !DILocation(line: 163, column: 1, scope: !1693)
!1723 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !894, file: !894, line: 169, type: !1724, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1726)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!133, !80}
!1726 = !{!1727, !1728, !1729, !1730}
!1727 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1723, file: !894, line: 169, type: !80)
!1728 = !DILocalVariable(name: "no", scope: !1723, file: !894, line: 171, type: !1431)
!1729 = !DILocalVariable(name: "remainder", scope: !1723, file: !894, line: 172, type: !1431)
!1730 = !DILocalVariable(name: "dout", scope: !1723, file: !894, line: 175, type: !133)
!1731 = !DILocation(line: 0, scope: !1723)
!1732 = !DILocation(line: 173, column: 19, scope: !1723)
!1733 = !DILocation(line: 174, column: 17, scope: !1723)
!1734 = !DILocation(line: 177, column: 5, scope: !1723)
!1735 = !DILocation(line: 183, column: 13, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1723, file: !894, line: 177, column: 17)
!1737 = !DILocation(line: 0, scope: !1736)
!1738 = !DILocation(line: 187, column: 5, scope: !1723)
!1739 = !DILocation(line: 188, column: 1, scope: !1723)
!1740 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !894, file: !894, line: 189, type: !1724, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1741)
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1740, file: !894, line: 189, type: !80)
!1743 = !DILocalVariable(name: "no", scope: !1740, file: !894, line: 191, type: !1431)
!1744 = !DILocalVariable(name: "remainder", scope: !1740, file: !894, line: 192, type: !1431)
!1745 = !DILocalVariable(name: "din", scope: !1740, file: !894, line: 195, type: !133)
!1746 = !DILocation(line: 0, scope: !1740)
!1747 = !DILocation(line: 193, column: 19, scope: !1740)
!1748 = !DILocation(line: 194, column: 17, scope: !1740)
!1749 = !DILocation(line: 196, column: 5, scope: !1740)
!1750 = !DILocation(line: 203, column: 13, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1740, file: !894, line: 196, column: 17)
!1752 = !DILocation(line: 0, scope: !1751)
!1753 = !DILocation(line: 208, column: 5, scope: !1740)
!1754 = !DILocation(line: 209, column: 1, scope: !1740)
!1755 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !894, file: !894, line: 210, type: !1724, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1756)
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1755, file: !894, line: 210, type: !80)
!1758 = !DILocalVariable(name: "no", scope: !1755, file: !894, line: 212, type: !1431)
!1759 = !DILocalVariable(name: "remainder", scope: !1755, file: !894, line: 213, type: !1431)
!1760 = !DILocalVariable(name: "outEnable", scope: !1755, file: !894, line: 216, type: !133)
!1761 = !DILocation(line: 0, scope: !1755)
!1762 = !DILocation(line: 214, column: 19, scope: !1755)
!1763 = !DILocation(line: 215, column: 17, scope: !1755)
!1764 = !DILocation(line: 218, column: 5, scope: !1755)
!1765 = !DILocation(line: 224, column: 13, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1755, file: !894, line: 218, column: 17)
!1767 = !DILocation(line: 0, scope: !1766)
!1768 = !DILocation(line: 228, column: 5, scope: !1755)
!1769 = !DILocation(line: 229, column: 1, scope: !1755)
!1770 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !894, file: !894, line: 232, type: !1771, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1585, !80}
!1773 = !{!1774, !1775, !1776}
!1774 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1770, file: !894, line: 232, type: !80)
!1775 = !DILocalVariable(name: "no", scope: !1770, file: !894, line: 234, type: !1431)
!1776 = !DILocalVariable(name: "remainder", scope: !1770, file: !894, line: 235, type: !1431)
!1777 = !DILocation(line: 0, scope: !1770)
!1778 = !DILocation(line: 236, column: 19, scope: !1770)
!1779 = !DILocation(line: 237, column: 17, scope: !1770)
!1780 = !DILocation(line: 238, column: 5, scope: !1770)
!1781 = !DILocation(line: 239, column: 5, scope: !1770)
!1782 = !DILocation(line: 241, column: 27, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !894, line: 241, column: 17)
!1784 = distinct !DILexicalBlock(scope: !1770, file: !894, line: 239, column: 17)
!1785 = !DILocation(line: 241, column: 17, scope: !1784)
!1786 = !DILocation(line: 241, column: 17, scope: !1783)
!1787 = !DILocation(line: 242, column: 17, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !894, line: 241, column: 34)
!1789 = !DILocation(line: 243, column: 13, scope: !1788)
!1790 = !DILocation(line: 243, column: 24, scope: !1783)
!1791 = !DILocation(line: 244, column: 73, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !894, line: 243, column: 41)
!1793 = distinct !DILexicalBlock(scope: !1783, file: !894, line: 243, column: 24)
!1794 = !DILocation(line: 245, column: 73, scope: !1792)
!1795 = !DILocation(line: 246, column: 13, scope: !1792)
!1796 = !DILocation(line: 247, column: 73, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !894, line: 246, column: 41)
!1798 = distinct !DILexicalBlock(scope: !1793, file: !894, line: 246, column: 24)
!1799 = !DILocation(line: 248, column: 73, scope: !1797)
!1800 = !DILocation(line: 249, column: 13, scope: !1797)
!1801 = !DILocation(line: 250, column: 75, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !894, line: 249, column: 41)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !894, line: 249, column: 24)
!1804 = !DILocation(line: 251, column: 75, scope: !1802)
!1805 = !DILocation(line: 252, column: 13, scope: !1802)
!1806 = !DILocation(line: 253, column: 75, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !894, line: 252, column: 41)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !894, line: 252, column: 24)
!1809 = !DILocation(line: 254, column: 75, scope: !1807)
!1810 = !DILocation(line: 255, column: 13, scope: !1807)
!1811 = !DILocation(line: 256, column: 75, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !894, line: 255, column: 41)
!1813 = distinct !DILexicalBlock(scope: !1808, file: !894, line: 255, column: 24)
!1814 = !DILocation(line: 257, column: 75, scope: !1812)
!1815 = !DILocation(line: 258, column: 13, scope: !1812)
!1816 = !DILocation(line: 261, column: 18, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1784, file: !894, line: 261, column: 17)
!1818 = !DILocation(line: 261, column: 17, scope: !1784)
!1819 = !DILocation(line: 262, column: 75, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !894, line: 261, column: 29)
!1821 = !DILocation(line: 263, column: 75, scope: !1820)
!1822 = !DILocation(line: 264, column: 13, scope: !1820)
!1823 = !DILocation(line: 265, column: 17, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !894, line: 264, column: 20)
!1825 = !DILocation(line: 272, column: 1, scope: !1770)
!1826 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !894, file: !894, line: 359, type: !1771, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1826, file: !894, line: 359, type: !80)
!1829 = !DILocalVariable(name: "no", scope: !1826, file: !894, line: 362, type: !1431)
!1830 = !DILocalVariable(name: "remainder", scope: !1826, file: !894, line: 363, type: !1431)
!1831 = !DILocation(line: 0, scope: !1826)
!1832 = !DILocation(line: 364, column: 19, scope: !1826)
!1833 = !DILocation(line: 365, column: 17, scope: !1826)
!1834 = !DILocation(line: 367, column: 5, scope: !1826)
!1835 = !DILocation(line: 369, column: 27, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !894, line: 369, column: 17)
!1837 = distinct !DILexicalBlock(scope: !1826, file: !894, line: 367, column: 17)
!1838 = !DILocation(line: 369, column: 17, scope: !1837)
!1839 = !DILocation(line: 369, column: 17, scope: !1836)
!1840 = !DILocation(line: 370, column: 17, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !894, line: 369, column: 34)
!1842 = !DILocation(line: 371, column: 13, scope: !1841)
!1843 = !DILocation(line: 371, column: 24, scope: !1836)
!1844 = !DILocation(line: 372, column: 73, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !894, line: 371, column: 41)
!1846 = distinct !DILexicalBlock(scope: !1836, file: !894, line: 371, column: 24)
!1847 = !DILocation(line: 373, column: 73, scope: !1845)
!1848 = !DILocation(line: 374, column: 13, scope: !1845)
!1849 = !DILocation(line: 375, column: 73, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !894, line: 374, column: 41)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !894, line: 374, column: 24)
!1852 = !DILocation(line: 376, column: 73, scope: !1850)
!1853 = !DILocation(line: 377, column: 13, scope: !1850)
!1854 = !DILocation(line: 378, column: 75, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !894, line: 377, column: 41)
!1856 = distinct !DILexicalBlock(scope: !1851, file: !894, line: 377, column: 24)
!1857 = !DILocation(line: 379, column: 75, scope: !1855)
!1858 = !DILocation(line: 380, column: 13, scope: !1855)
!1859 = !DILocation(line: 381, column: 75, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !894, line: 380, column: 41)
!1861 = distinct !DILexicalBlock(scope: !1856, file: !894, line: 380, column: 24)
!1862 = !DILocation(line: 382, column: 75, scope: !1860)
!1863 = !DILocation(line: 383, column: 13, scope: !1860)
!1864 = !DILocation(line: 384, column: 75, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !894, line: 383, column: 41)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !894, line: 383, column: 24)
!1867 = !DILocation(line: 385, column: 75, scope: !1865)
!1868 = !DILocation(line: 386, column: 13, scope: !1865)
!1869 = !DILocation(line: 389, column: 18, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1837, file: !894, line: 389, column: 17)
!1871 = !DILocation(line: 389, column: 17, scope: !1837)
!1872 = !DILocation(line: 390, column: 75, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !894, line: 389, column: 29)
!1874 = !DILocation(line: 391, column: 75, scope: !1873)
!1875 = !DILocation(line: 392, column: 13, scope: !1873)
!1876 = !DILocation(line: 393, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1870, file: !894, line: 392, column: 20)
!1878 = !DILocation(line: 401, column: 1, scope: !1826)
!1879 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !894, file: !894, line: 274, type: !1771, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1879, file: !894, line: 274, type: !80)
!1882 = !DILocalVariable(name: "no", scope: !1879, file: !894, line: 276, type: !1431)
!1883 = !DILocalVariable(name: "remainder", scope: !1879, file: !894, line: 277, type: !1431)
!1884 = !DILocation(line: 0, scope: !1879)
!1885 = !DILocation(line: 278, column: 19, scope: !1879)
!1886 = !DILocation(line: 279, column: 17, scope: !1879)
!1887 = !DILocation(line: 281, column: 5, scope: !1879)
!1888 = !DILocation(line: 283, column: 27, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !894, line: 283, column: 17)
!1890 = distinct !DILexicalBlock(scope: !1879, file: !894, line: 281, column: 17)
!1891 = !DILocation(line: 283, column: 17, scope: !1890)
!1892 = !DILocation(line: 283, column: 17, scope: !1889)
!1893 = !DILocation(line: 284, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1889, file: !894, line: 283, column: 34)
!1895 = !DILocation(line: 285, column: 13, scope: !1894)
!1896 = !DILocation(line: 285, column: 24, scope: !1889)
!1897 = !DILocation(line: 286, column: 73, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !894, line: 285, column: 41)
!1899 = distinct !DILexicalBlock(scope: !1889, file: !894, line: 285, column: 24)
!1900 = !DILocation(line: 287, column: 73, scope: !1898)
!1901 = !DILocation(line: 288, column: 13, scope: !1898)
!1902 = !DILocation(line: 289, column: 73, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !894, line: 288, column: 41)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !894, line: 288, column: 24)
!1905 = !DILocation(line: 290, column: 73, scope: !1903)
!1906 = !DILocation(line: 291, column: 13, scope: !1903)
!1907 = !DILocation(line: 292, column: 75, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !894, line: 291, column: 41)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !894, line: 291, column: 24)
!1910 = !DILocation(line: 293, column: 75, scope: !1908)
!1911 = !DILocation(line: 294, column: 13, scope: !1908)
!1912 = !DILocation(line: 295, column: 75, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !894, line: 294, column: 41)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !894, line: 294, column: 24)
!1915 = !DILocation(line: 296, column: 75, scope: !1913)
!1916 = !DILocation(line: 297, column: 13, scope: !1913)
!1917 = !DILocation(line: 298, column: 75, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !894, line: 297, column: 41)
!1919 = distinct !DILexicalBlock(scope: !1914, file: !894, line: 297, column: 24)
!1920 = !DILocation(line: 299, column: 75, scope: !1918)
!1921 = !DILocation(line: 300, column: 13, scope: !1918)
!1922 = !DILocation(line: 303, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1890, file: !894, line: 303, column: 17)
!1924 = !DILocation(line: 303, column: 17, scope: !1890)
!1925 = !DILocation(line: 304, column: 75, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !894, line: 303, column: 29)
!1927 = !DILocation(line: 305, column: 75, scope: !1926)
!1928 = !DILocation(line: 306, column: 13, scope: !1926)
!1929 = !DILocation(line: 307, column: 17, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1923, file: !894, line: 306, column: 20)
!1931 = !DILocation(line: 314, column: 1, scope: !1879)
!1932 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !894, file: !894, line: 316, type: !1771, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1933)
!1933 = !{!1934, !1935, !1936}
!1934 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1932, file: !894, line: 316, type: !80)
!1935 = !DILocalVariable(name: "no", scope: !1932, file: !894, line: 318, type: !1431)
!1936 = !DILocalVariable(name: "remainder", scope: !1932, file: !894, line: 319, type: !1431)
!1937 = !DILocation(line: 0, scope: !1932)
!1938 = !DILocation(line: 320, column: 19, scope: !1932)
!1939 = !DILocation(line: 321, column: 17, scope: !1932)
!1940 = !DILocation(line: 322, column: 5, scope: !1932)
!1941 = !DILocation(line: 323, column: 5, scope: !1932)
!1942 = !DILocation(line: 325, column: 27, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !894, line: 325, column: 17)
!1944 = distinct !DILexicalBlock(scope: !1932, file: !894, line: 323, column: 17)
!1945 = !DILocation(line: 325, column: 17, scope: !1944)
!1946 = !DILocation(line: 325, column: 17, scope: !1943)
!1947 = !DILocation(line: 326, column: 17, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !894, line: 325, column: 34)
!1949 = !DILocation(line: 327, column: 13, scope: !1948)
!1950 = !DILocation(line: 327, column: 24, scope: !1943)
!1951 = !DILocation(line: 328, column: 73, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !894, line: 327, column: 41)
!1953 = distinct !DILexicalBlock(scope: !1943, file: !894, line: 327, column: 24)
!1954 = !DILocation(line: 329, column: 73, scope: !1952)
!1955 = !DILocation(line: 330, column: 13, scope: !1952)
!1956 = !DILocation(line: 331, column: 73, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !894, line: 330, column: 41)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !894, line: 330, column: 24)
!1959 = !DILocation(line: 332, column: 73, scope: !1957)
!1960 = !DILocation(line: 333, column: 13, scope: !1957)
!1961 = !DILocation(line: 334, column: 75, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !894, line: 333, column: 41)
!1963 = distinct !DILexicalBlock(scope: !1958, file: !894, line: 333, column: 24)
!1964 = !DILocation(line: 335, column: 75, scope: !1962)
!1965 = !DILocation(line: 336, column: 13, scope: !1962)
!1966 = !DILocation(line: 337, column: 75, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !894, line: 336, column: 41)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !894, line: 336, column: 24)
!1969 = !DILocation(line: 338, column: 75, scope: !1967)
!1970 = !DILocation(line: 339, column: 13, scope: !1967)
!1971 = !DILocation(line: 340, column: 75, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !894, line: 339, column: 41)
!1973 = distinct !DILexicalBlock(scope: !1968, file: !894, line: 339, column: 24)
!1974 = !DILocation(line: 341, column: 75, scope: !1972)
!1975 = !DILocation(line: 342, column: 13, scope: !1972)
!1976 = !DILocation(line: 345, column: 18, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1944, file: !894, line: 345, column: 17)
!1978 = !DILocation(line: 345, column: 17, scope: !1944)
!1979 = !DILocation(line: 346, column: 75, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !894, line: 345, column: 29)
!1981 = !DILocation(line: 347, column: 75, scope: !1980)
!1982 = !DILocation(line: 348, column: 13, scope: !1980)
!1983 = !DILocation(line: 349, column: 17, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1977, file: !894, line: 348, column: 20)
!1985 = !DILocation(line: 357, column: 1, scope: !1932)
!1986 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !894, file: !894, line: 404, type: !1583, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1986, file: !894, line: 404, type: !80)
!1989 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1986, file: !894, line: 404, type: !133)
!1990 = !DILocalVariable(name: "no", scope: !1986, file: !894, line: 406, type: !1431)
!1991 = !DILocalVariable(name: "remainder", scope: !1986, file: !894, line: 407, type: !1431)
!1992 = !DILocation(line: 0, scope: !1986)
!1993 = !DILocation(line: 408, column: 19, scope: !1986)
!1994 = !DILocation(line: 409, column: 17, scope: !1986)
!1995 = !DILocation(line: 411, column: 5, scope: !1986)
!1996 = !DILocation(line: 413, column: 84, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1986, file: !894, line: 411, column: 17)
!1998 = !DILocation(line: 413, column: 70, scope: !1997)
!1999 = !DILocation(line: 413, column: 64, scope: !1997)
!2000 = !DILocation(line: 413, column: 61, scope: !1997)
!2001 = !DILocation(line: 414, column: 79, scope: !1997)
!2002 = !DILocation(line: 414, column: 83, scope: !1997)
!2003 = !DILocation(line: 414, column: 88, scope: !1997)
!2004 = !DILocation(line: 414, column: 61, scope: !1997)
!2005 = !DILocation(line: 415, column: 13, scope: !1997)
!2006 = !DILocation(line: 417, column: 27, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1997, file: !894, line: 417, column: 17)
!2008 = !DILocation(line: 417, column: 17, scope: !1997)
!2009 = !DILocation(line: 418, column: 88, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !894, line: 417, column: 33)
!2011 = !DILocation(line: 418, column: 74, scope: !2010)
!2012 = !DILocation(line: 418, column: 68, scope: !2010)
!2013 = !DILocation(line: 418, column: 65, scope: !2010)
!2014 = !DILocation(line: 419, column: 83, scope: !2010)
!2015 = !DILocation(line: 419, column: 87, scope: !2010)
!2016 = !DILocation(line: 419, column: 92, scope: !2010)
!2017 = !DILocation(line: 419, column: 65, scope: !2010)
!2018 = !DILocation(line: 420, column: 13, scope: !2010)
!2019 = !DILocation(line: 420, column: 24, scope: !2007)
!2020 = !DILocation(line: 421, column: 73, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !894, line: 420, column: 41)
!2022 = distinct !DILexicalBlock(scope: !2007, file: !894, line: 420, column: 24)
!2023 = !DILocation(line: 422, column: 91, scope: !2021)
!2024 = !DILocation(line: 422, column: 100, scope: !2021)
!2025 = !DILocation(line: 422, column: 73, scope: !2021)
!2026 = !DILocation(line: 423, column: 73, scope: !2021)
!2027 = !DILocation(line: 424, column: 13, scope: !2021)
!2028 = !DILocation(line: 425, column: 73, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !894, line: 424, column: 41)
!2030 = distinct !DILexicalBlock(scope: !2022, file: !894, line: 424, column: 24)
!2031 = !DILocation(line: 426, column: 91, scope: !2029)
!2032 = !DILocation(line: 426, column: 100, scope: !2029)
!2033 = !DILocation(line: 426, column: 73, scope: !2029)
!2034 = !DILocation(line: 427, column: 73, scope: !2029)
!2035 = !DILocation(line: 428, column: 13, scope: !2029)
!2036 = !DILocation(line: 429, column: 75, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !894, line: 428, column: 41)
!2038 = distinct !DILexicalBlock(scope: !2030, file: !894, line: 428, column: 24)
!2039 = !DILocation(line: 430, column: 93, scope: !2037)
!2040 = !DILocation(line: 430, column: 102, scope: !2037)
!2041 = !DILocation(line: 430, column: 75, scope: !2037)
!2042 = !DILocation(line: 431, column: 75, scope: !2037)
!2043 = !DILocation(line: 432, column: 13, scope: !2037)
!2044 = !DILocation(line: 433, column: 75, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !894, line: 432, column: 41)
!2046 = distinct !DILexicalBlock(scope: !2038, file: !894, line: 432, column: 24)
!2047 = !DILocation(line: 434, column: 93, scope: !2045)
!2048 = !DILocation(line: 434, column: 102, scope: !2045)
!2049 = !DILocation(line: 434, column: 75, scope: !2045)
!2050 = !DILocation(line: 435, column: 75, scope: !2045)
!2051 = !DILocation(line: 436, column: 13, scope: !2045)
!2052 = !DILocation(line: 437, column: 75, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !894, line: 436, column: 41)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !894, line: 436, column: 24)
!2055 = !DILocation(line: 438, column: 93, scope: !2053)
!2056 = !DILocation(line: 438, column: 102, scope: !2053)
!2057 = !DILocation(line: 438, column: 75, scope: !2053)
!2058 = !DILocation(line: 439, column: 75, scope: !2053)
!2059 = !DILocation(line: 440, column: 13, scope: !2053)
!2060 = !DILocation(line: 443, column: 18, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1997, file: !894, line: 443, column: 17)
!2062 = !DILocation(line: 443, column: 17, scope: !1997)
!2063 = !DILocation(line: 444, column: 75, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !894, line: 443, column: 29)
!2065 = !DILocation(line: 445, column: 93, scope: !2064)
!2066 = !DILocation(line: 445, column: 102, scope: !2064)
!2067 = !DILocation(line: 445, column: 75, scope: !2064)
!2068 = !DILocation(line: 446, column: 75, scope: !2064)
!2069 = !DILocation(line: 447, column: 13, scope: !2064)
!2070 = !DILocation(line: 448, column: 88, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2061, file: !894, line: 447, column: 20)
!2072 = !DILocation(line: 448, column: 74, scope: !2071)
!2073 = !DILocation(line: 448, column: 68, scope: !2071)
!2074 = !DILocation(line: 448, column: 65, scope: !2071)
!2075 = !DILocation(line: 449, column: 83, scope: !2071)
!2076 = !DILocation(line: 449, column: 87, scope: !2071)
!2077 = !DILocation(line: 449, column: 92, scope: !2071)
!2078 = !DILocation(line: 449, column: 65, scope: !2071)
!2079 = !DILocation(line: 453, column: 84, scope: !1997)
!2080 = !DILocation(line: 453, column: 70, scope: !1997)
!2081 = !DILocation(line: 453, column: 64, scope: !1997)
!2082 = !DILocation(line: 453, column: 61, scope: !1997)
!2083 = !DILocation(line: 454, column: 79, scope: !1997)
!2084 = !DILocation(line: 454, column: 83, scope: !1997)
!2085 = !DILocation(line: 454, column: 88, scope: !1997)
!2086 = !DILocation(line: 454, column: 61, scope: !1997)
!2087 = !DILocation(line: 455, column: 13, scope: !1997)
!2088 = !DILocation(line: 460, column: 1, scope: !1986)
!2089 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !894, file: !894, line: 463, type: !2090, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!1585, !80, !1067}
!2092 = !{!2093, !2094, !2095, !2096, !2097}
!2093 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2089, file: !894, line: 463, type: !80)
!2094 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2089, file: !894, line: 463, type: !1067)
!2095 = !DILocalVariable(name: "no", scope: !2089, file: !894, line: 465, type: !1431)
!2096 = !DILocalVariable(name: "remainder", scope: !2089, file: !894, line: 466, type: !1431)
!2097 = !DILocalVariable(name: "temp", scope: !2089, file: !894, line: 467, type: !80)
!2098 = !DILocation(line: 0, scope: !2089)
!2099 = !DILocation(line: 468, column: 19, scope: !2089)
!2100 = !DILocation(line: 469, column: 17, scope: !2089)
!2101 = !DILocation(line: 471, column: 5, scope: !2089)
!2102 = !DILocation(line: 473, column: 20, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2089, file: !894, line: 471, column: 17)
!2104 = !DILocation(line: 474, column: 40, scope: !2103)
!2105 = !DILocation(line: 474, column: 26, scope: !2103)
!2106 = !DILocation(line: 474, column: 18, scope: !2103)
!2107 = !DILocation(line: 475, column: 40, scope: !2103)
!2108 = !DILocation(line: 475, column: 29, scope: !2103)
!2109 = !DILocation(line: 476, column: 13, scope: !2103)
!2110 = !DILocation(line: 478, column: 27, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2103, file: !894, line: 478, column: 17)
!2112 = !DILocation(line: 478, column: 17, scope: !2103)
!2113 = !DILocation(line: 479, column: 24, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !894, line: 478, column: 33)
!2115 = !DILocation(line: 480, column: 44, scope: !2114)
!2116 = !DILocation(line: 480, column: 30, scope: !2114)
!2117 = !DILocation(line: 480, column: 22, scope: !2114)
!2118 = !DILocation(line: 481, column: 44, scope: !2114)
!2119 = !DILocation(line: 481, column: 33, scope: !2114)
!2120 = !DILocation(line: 482, column: 13, scope: !2114)
!2121 = !DILocation(line: 482, column: 24, scope: !2111)
!2122 = !DILocation(line: 483, column: 24, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !894, line: 482, column: 41)
!2124 = distinct !DILexicalBlock(scope: !2111, file: !894, line: 482, column: 24)
!2125 = !DILocation(line: 485, column: 53, scope: !2123)
!2126 = !DILocation(line: 485, column: 33, scope: !2123)
!2127 = !DILocation(line: 486, column: 13, scope: !2123)
!2128 = !DILocation(line: 487, column: 24, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !894, line: 486, column: 41)
!2130 = distinct !DILexicalBlock(scope: !2124, file: !894, line: 486, column: 24)
!2131 = !DILocation(line: 489, column: 53, scope: !2129)
!2132 = !DILocation(line: 489, column: 33, scope: !2129)
!2133 = !DILocation(line: 490, column: 13, scope: !2129)
!2134 = !DILocation(line: 491, column: 24, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !894, line: 490, column: 41)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !894, line: 490, column: 24)
!2137 = !DILocation(line: 493, column: 53, scope: !2135)
!2138 = !DILocation(line: 493, column: 33, scope: !2135)
!2139 = !DILocation(line: 494, column: 13, scope: !2135)
!2140 = !DILocation(line: 495, column: 24, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !894, line: 494, column: 41)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !894, line: 494, column: 24)
!2143 = !DILocation(line: 497, column: 53, scope: !2141)
!2144 = !DILocation(line: 497, column: 33, scope: !2141)
!2145 = !DILocation(line: 498, column: 13, scope: !2141)
!2146 = !DILocation(line: 499, column: 24, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !894, line: 498, column: 41)
!2148 = distinct !DILexicalBlock(scope: !2142, file: !894, line: 498, column: 24)
!2149 = !DILocation(line: 501, column: 53, scope: !2147)
!2150 = !DILocation(line: 501, column: 33, scope: !2147)
!2151 = !DILocation(line: 502, column: 13, scope: !2147)
!2152 = !DILocation(line: 505, column: 18, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2103, file: !894, line: 505, column: 17)
!2154 = !DILocation(line: 505, column: 17, scope: !2103)
!2155 = !DILocation(line: 506, column: 24, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !894, line: 505, column: 29)
!2157 = !DILocation(line: 508, column: 53, scope: !2156)
!2158 = !DILocation(line: 508, column: 33, scope: !2156)
!2159 = !DILocation(line: 509, column: 13, scope: !2156)
!2160 = !DILocation(line: 510, column: 24, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !894, line: 509, column: 20)
!2162 = !DILocation(line: 511, column: 44, scope: !2161)
!2163 = !DILocation(line: 511, column: 30, scope: !2161)
!2164 = !DILocation(line: 511, column: 22, scope: !2161)
!2165 = !DILocation(line: 512, column: 44, scope: !2161)
!2166 = !DILocation(line: 512, column: 33, scope: !2161)
!2167 = !DILocation(line: 516, column: 20, scope: !2103)
!2168 = !DILocation(line: 517, column: 40, scope: !2103)
!2169 = !DILocation(line: 517, column: 26, scope: !2103)
!2170 = !DILocation(line: 517, column: 18, scope: !2103)
!2171 = !DILocation(line: 518, column: 40, scope: !2103)
!2172 = !DILocation(line: 518, column: 29, scope: !2103)
!2173 = !DILocation(line: 519, column: 13, scope: !2103)
!2174 = !DILocation(line: 0, scope: !2103)
!2175 = !DILocation(line: 524, column: 1, scope: !2089)
!2176 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !894, file: !894, line: 526, type: !2177, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !893, retainedNodes: !2180)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !80, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !897, line: 1212, baseType: !896)
!2180 = !{!2181, !2182, !2183, !2184}
!2181 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2176, file: !894, line: 526, type: !80)
!2182 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2176, file: !894, line: 526, type: !2179)
!2183 = !DILocalVariable(name: "no", scope: !2176, file: !894, line: 529, type: !1431)
!2184 = !DILocalVariable(name: "remainder", scope: !2176, file: !894, line: 530, type: !1431)
!2185 = !DILocation(line: 0, scope: !2176)
!2186 = !DILocation(line: 531, column: 19, scope: !2176)
!2187 = !DILocation(line: 532, column: 17, scope: !2176)
!2188 = !DILocation(line: 534, column: 9, scope: !2176)
!2189 = !DILocation(line: 536, column: 9, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !894, line: 534, column: 45)
!2191 = distinct !DILexicalBlock(scope: !2176, file: !894, line: 534, column: 9)
!2192 = !DILocation(line: 538, column: 56, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !894, line: 536, column: 21)
!2194 = !DILocation(line: 538, column: 53, scope: !2193)
!2195 = !DILocation(line: 538, column: 47, scope: !2193)
!2196 = !DILocation(line: 539, column: 17, scope: !2193)
!2197 = !DILocation(line: 541, column: 56, scope: !2193)
!2198 = !DILocation(line: 541, column: 53, scope: !2193)
!2199 = !DILocation(line: 541, column: 47, scope: !2193)
!2200 = !DILocation(line: 542, column: 17, scope: !2193)
!2201 = !DILocation(line: 548, column: 9, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !894, line: 547, column: 51)
!2203 = distinct !DILexicalBlock(scope: !2191, file: !894, line: 547, column: 16)
!2204 = !DILocation(line: 550, column: 57, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !894, line: 548, column: 21)
!2206 = !DILocation(line: 550, column: 54, scope: !2205)
!2207 = !DILocation(line: 550, column: 50, scope: !2205)
!2208 = !DILocation(line: 550, column: 47, scope: !2205)
!2209 = !DILocation(line: 551, column: 17, scope: !2205)
!2210 = !DILocation(line: 553, column: 57, scope: !2205)
!2211 = !DILocation(line: 553, column: 54, scope: !2205)
!2212 = !DILocation(line: 553, column: 50, scope: !2205)
!2213 = !DILocation(line: 553, column: 47, scope: !2205)
!2214 = !DILocation(line: 554, column: 17, scope: !2205)
!2215 = !DILocation(line: 560, column: 1, scope: !2176)
!2216 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !903, file: !903, line: 85, type: !2217, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !902, retainedNodes: !2221)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!2219, !2220, !133}
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !906, line: 225, baseType: !905)
!2221 = !{!2222, !2223, !2224}
!2222 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2216, file: !903, line: 85, type: !2220)
!2223 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2216, file: !903, line: 85, type: !133)
!2224 = !DILocalVariable(name: "temp", scope: !2216, file: !903, line: 87, type: !92)
!2225 = !DILocation(line: 0, scope: !2216)
!2226 = !DILocation(line: 88, column: 5, scope: !2216)
!2227 = !DILocation(line: 91, column: 20, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2216, file: !903, line: 88, column: 24)
!2229 = !DILocation(line: 92, column: 18, scope: !2228)
!2230 = !DILocation(line: 93, column: 66, scope: !2228)
!2231 = !DILocation(line: 93, column: 63, scope: !2228)
!2232 = !DILocation(line: 93, column: 56, scope: !2228)
!2233 = !DILocation(line: 94, column: 13, scope: !2228)
!2234 = !DILocation(line: 97, column: 20, scope: !2228)
!2235 = !DILocation(line: 98, column: 18, scope: !2228)
!2236 = !DILocation(line: 99, column: 67, scope: !2228)
!2237 = !DILocation(line: 99, column: 74, scope: !2228)
!2238 = !DILocation(line: 99, column: 64, scope: !2228)
!2239 = !DILocation(line: 99, column: 56, scope: !2228)
!2240 = !DILocation(line: 100, column: 13, scope: !2228)
!2241 = !DILocation(line: 103, column: 20, scope: !2228)
!2242 = !DILocation(line: 104, column: 18, scope: !2228)
!2243 = !DILocation(line: 105, column: 67, scope: !2228)
!2244 = !DILocation(line: 105, column: 74, scope: !2228)
!2245 = !DILocation(line: 105, column: 64, scope: !2228)
!2246 = !DILocation(line: 105, column: 56, scope: !2228)
!2247 = !DILocation(line: 106, column: 13, scope: !2228)
!2248 = !DILocation(line: 109, column: 20, scope: !2228)
!2249 = !DILocation(line: 110, column: 18, scope: !2228)
!2250 = !DILocation(line: 111, column: 67, scope: !2228)
!2251 = !DILocation(line: 111, column: 74, scope: !2228)
!2252 = !DILocation(line: 111, column: 64, scope: !2228)
!2253 = !DILocation(line: 111, column: 56, scope: !2228)
!2254 = !DILocation(line: 112, column: 13, scope: !2228)
!2255 = !DILocation(line: 115, column: 20, scope: !2228)
!2256 = !DILocation(line: 116, column: 18, scope: !2228)
!2257 = !DILocation(line: 117, column: 67, scope: !2228)
!2258 = !DILocation(line: 117, column: 74, scope: !2228)
!2259 = !DILocation(line: 117, column: 64, scope: !2228)
!2260 = !DILocation(line: 117, column: 56, scope: !2228)
!2261 = !DILocation(line: 118, column: 13, scope: !2228)
!2262 = !DILocation(line: 121, column: 20, scope: !2228)
!2263 = !DILocation(line: 122, column: 18, scope: !2228)
!2264 = !DILocation(line: 123, column: 67, scope: !2228)
!2265 = !DILocation(line: 123, column: 74, scope: !2228)
!2266 = !DILocation(line: 123, column: 64, scope: !2228)
!2267 = !DILocation(line: 123, column: 56, scope: !2228)
!2268 = !DILocation(line: 124, column: 13, scope: !2228)
!2269 = !DILocation(line: 127, column: 20, scope: !2228)
!2270 = !DILocation(line: 128, column: 18, scope: !2228)
!2271 = !DILocation(line: 129, column: 67, scope: !2228)
!2272 = !DILocation(line: 129, column: 74, scope: !2228)
!2273 = !DILocation(line: 129, column: 64, scope: !2228)
!2274 = !DILocation(line: 129, column: 56, scope: !2228)
!2275 = !DILocation(line: 130, column: 13, scope: !2228)
!2276 = !DILocation(line: 133, column: 20, scope: !2228)
!2277 = !DILocation(line: 134, column: 18, scope: !2228)
!2278 = !DILocation(line: 135, column: 67, scope: !2228)
!2279 = !DILocation(line: 135, column: 74, scope: !2228)
!2280 = !DILocation(line: 135, column: 64, scope: !2228)
!2281 = !DILocation(line: 135, column: 56, scope: !2228)
!2282 = !DILocation(line: 136, column: 13, scope: !2228)
!2283 = !DILocation(line: 139, column: 20, scope: !2228)
!2284 = !DILocation(line: 140, column: 18, scope: !2228)
!2285 = !DILocation(line: 141, column: 67, scope: !2228)
!2286 = !DILocation(line: 141, column: 64, scope: !2228)
!2287 = !DILocation(line: 141, column: 56, scope: !2228)
!2288 = !DILocation(line: 142, column: 13, scope: !2228)
!2289 = !DILocation(line: 145, column: 20, scope: !2228)
!2290 = !DILocation(line: 146, column: 18, scope: !2228)
!2291 = !DILocation(line: 147, column: 67, scope: !2228)
!2292 = !DILocation(line: 147, column: 74, scope: !2228)
!2293 = !DILocation(line: 147, column: 64, scope: !2228)
!2294 = !DILocation(line: 147, column: 56, scope: !2228)
!2295 = !DILocation(line: 148, column: 13, scope: !2228)
!2296 = !DILocation(line: 151, column: 20, scope: !2228)
!2297 = !DILocation(line: 152, column: 18, scope: !2228)
!2298 = !DILocation(line: 153, column: 67, scope: !2228)
!2299 = !DILocation(line: 153, column: 74, scope: !2228)
!2300 = !DILocation(line: 153, column: 64, scope: !2228)
!2301 = !DILocation(line: 153, column: 56, scope: !2228)
!2302 = !DILocation(line: 154, column: 13, scope: !2228)
!2303 = !DILocation(line: 157, column: 20, scope: !2228)
!2304 = !DILocation(line: 158, column: 18, scope: !2228)
!2305 = !DILocation(line: 159, column: 67, scope: !2228)
!2306 = !DILocation(line: 159, column: 74, scope: !2228)
!2307 = !DILocation(line: 159, column: 64, scope: !2228)
!2308 = !DILocation(line: 159, column: 56, scope: !2228)
!2309 = !DILocation(line: 160, column: 29, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2228, file: !903, line: 160, column: 17)
!2311 = !DILocation(line: 161, column: 17, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2310, file: !903, line: 160, column: 60)
!2313 = !DILocation(line: 162, column: 13, scope: !2312)
!2314 = !DILocation(line: 166, column: 20, scope: !2228)
!2315 = !DILocation(line: 167, column: 18, scope: !2228)
!2316 = !DILocation(line: 168, column: 67, scope: !2228)
!2317 = !DILocation(line: 168, column: 74, scope: !2228)
!2318 = !DILocation(line: 168, column: 64, scope: !2228)
!2319 = !DILocation(line: 168, column: 56, scope: !2228)
!2320 = !DILocation(line: 169, column: 29, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2228, file: !903, line: 169, column: 17)
!2322 = !DILocation(line: 170, column: 17, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2321, file: !903, line: 169, column: 45)
!2324 = !DILocation(line: 171, column: 13, scope: !2323)
!2325 = !DILocation(line: 175, column: 20, scope: !2228)
!2326 = !DILocation(line: 176, column: 18, scope: !2228)
!2327 = !DILocation(line: 177, column: 67, scope: !2228)
!2328 = !DILocation(line: 177, column: 74, scope: !2228)
!2329 = !DILocation(line: 177, column: 64, scope: !2228)
!2330 = !DILocation(line: 177, column: 56, scope: !2228)
!2331 = !DILocation(line: 178, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2228, file: !903, line: 178, column: 17)
!2333 = !DILocation(line: 178, column: 17, scope: !2228)
!2334 = !DILocation(line: 179, column: 17, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !903, line: 178, column: 30)
!2336 = !DILocation(line: 180, column: 13, scope: !2335)
!2337 = !DILocation(line: 184, column: 20, scope: !2228)
!2338 = !DILocation(line: 185, column: 18, scope: !2228)
!2339 = !DILocation(line: 186, column: 67, scope: !2228)
!2340 = !DILocation(line: 186, column: 74, scope: !2228)
!2341 = !DILocation(line: 186, column: 64, scope: !2228)
!2342 = !DILocation(line: 186, column: 56, scope: !2228)
!2343 = !DILocation(line: 187, column: 29, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2228, file: !903, line: 187, column: 17)
!2345 = !DILocation(line: 188, column: 17, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2344, file: !903, line: 187, column: 45)
!2347 = !DILocation(line: 189, column: 13, scope: !2346)
!2348 = !DILocation(line: 193, column: 20, scope: !2228)
!2349 = !DILocation(line: 194, column: 18, scope: !2228)
!2350 = !DILocation(line: 195, column: 67, scope: !2228)
!2351 = !DILocation(line: 195, column: 74, scope: !2228)
!2352 = !DILocation(line: 195, column: 64, scope: !2228)
!2353 = !DILocation(line: 195, column: 56, scope: !2228)
!2354 = !DILocation(line: 196, column: 29, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2228, file: !903, line: 196, column: 17)
!2356 = !DILocation(line: 197, column: 17, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2355, file: !903, line: 196, column: 45)
!2358 = !DILocation(line: 198, column: 13, scope: !2357)
!2359 = !DILocation(line: 202, column: 20, scope: !2228)
!2360 = !DILocation(line: 203, column: 18, scope: !2228)
!2361 = !DILocation(line: 204, column: 67, scope: !2228)
!2362 = !DILocation(line: 204, column: 64, scope: !2228)
!2363 = !DILocation(line: 204, column: 56, scope: !2228)
!2364 = !DILocation(line: 205, column: 29, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2228, file: !903, line: 205, column: 17)
!2366 = !DILocation(line: 206, column: 17, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2365, file: !903, line: 205, column: 45)
!2368 = !DILocation(line: 207, column: 13, scope: !2367)
!2369 = !DILocation(line: 211, column: 20, scope: !2228)
!2370 = !DILocation(line: 212, column: 18, scope: !2228)
!2371 = !DILocation(line: 213, column: 67, scope: !2228)
!2372 = !DILocation(line: 213, column: 74, scope: !2228)
!2373 = !DILocation(line: 213, column: 64, scope: !2228)
!2374 = !DILocation(line: 213, column: 56, scope: !2228)
!2375 = !DILocation(line: 214, column: 13, scope: !2228)
!2376 = !DILocation(line: 217, column: 20, scope: !2228)
!2377 = !DILocation(line: 218, column: 18, scope: !2228)
!2378 = !DILocation(line: 219, column: 67, scope: !2228)
!2379 = !DILocation(line: 219, column: 74, scope: !2228)
!2380 = !DILocation(line: 219, column: 64, scope: !2228)
!2381 = !DILocation(line: 219, column: 56, scope: !2228)
!2382 = !DILocation(line: 220, column: 13, scope: !2228)
!2383 = !DILocation(line: 223, column: 20, scope: !2228)
!2384 = !DILocation(line: 224, column: 18, scope: !2228)
!2385 = !DILocation(line: 225, column: 67, scope: !2228)
!2386 = !DILocation(line: 225, column: 74, scope: !2228)
!2387 = !DILocation(line: 225, column: 64, scope: !2228)
!2388 = !DILocation(line: 225, column: 56, scope: !2228)
!2389 = !DILocation(line: 226, column: 13, scope: !2228)
!2390 = !DILocation(line: 229, column: 20, scope: !2228)
!2391 = !DILocation(line: 230, column: 18, scope: !2228)
!2392 = !DILocation(line: 231, column: 67, scope: !2228)
!2393 = !DILocation(line: 231, column: 74, scope: !2228)
!2394 = !DILocation(line: 231, column: 64, scope: !2228)
!2395 = !DILocation(line: 231, column: 56, scope: !2228)
!2396 = !DILocation(line: 232, column: 13, scope: !2228)
!2397 = !DILocation(line: 235, column: 20, scope: !2228)
!2398 = !DILocation(line: 236, column: 18, scope: !2228)
!2399 = !DILocation(line: 237, column: 66, scope: !2228)
!2400 = !DILocation(line: 237, column: 73, scope: !2228)
!2401 = !DILocation(line: 237, column: 63, scope: !2228)
!2402 = !DILocation(line: 237, column: 56, scope: !2228)
!2403 = !DILocation(line: 238, column: 13, scope: !2228)
!2404 = !DILocation(line: 241, column: 20, scope: !2228)
!2405 = !DILocation(line: 242, column: 18, scope: !2228)
!2406 = !DILocation(line: 243, column: 67, scope: !2228)
!2407 = !DILocation(line: 243, column: 74, scope: !2228)
!2408 = !DILocation(line: 243, column: 64, scope: !2228)
!2409 = !DILocation(line: 243, column: 56, scope: !2228)
!2410 = !DILocation(line: 244, column: 13, scope: !2228)
!2411 = !DILocation(line: 247, column: 20, scope: !2228)
!2412 = !DILocation(line: 248, column: 18, scope: !2228)
!2413 = !DILocation(line: 249, column: 67, scope: !2228)
!2414 = !DILocation(line: 249, column: 74, scope: !2228)
!2415 = !DILocation(line: 249, column: 64, scope: !2228)
!2416 = !DILocation(line: 249, column: 56, scope: !2228)
!2417 = !DILocation(line: 250, column: 13, scope: !2228)
!2418 = !DILocation(line: 253, column: 20, scope: !2228)
!2419 = !DILocation(line: 254, column: 18, scope: !2228)
!2420 = !DILocation(line: 255, column: 67, scope: !2228)
!2421 = !DILocation(line: 255, column: 74, scope: !2228)
!2422 = !DILocation(line: 255, column: 64, scope: !2228)
!2423 = !DILocation(line: 255, column: 56, scope: !2228)
!2424 = !DILocation(line: 256, column: 13, scope: !2228)
!2425 = !DILocation(line: 259, column: 20, scope: !2228)
!2426 = !DILocation(line: 260, column: 18, scope: !2228)
!2427 = !DILocation(line: 261, column: 67, scope: !2228)
!2428 = !DILocation(line: 261, column: 74, scope: !2228)
!2429 = !DILocation(line: 261, column: 64, scope: !2228)
!2430 = !DILocation(line: 261, column: 56, scope: !2228)
!2431 = !DILocation(line: 262, column: 13, scope: !2228)
!2432 = !DILocation(line: 265, column: 20, scope: !2228)
!2433 = !DILocation(line: 266, column: 18, scope: !2228)
!2434 = !DILocation(line: 267, column: 67, scope: !2228)
!2435 = !DILocation(line: 267, column: 74, scope: !2228)
!2436 = !DILocation(line: 267, column: 64, scope: !2228)
!2437 = !DILocation(line: 267, column: 56, scope: !2228)
!2438 = !DILocation(line: 268, column: 13, scope: !2228)
!2439 = !DILocation(line: 271, column: 20, scope: !2228)
!2440 = !DILocation(line: 272, column: 18, scope: !2228)
!2441 = !DILocation(line: 273, column: 67, scope: !2228)
!2442 = !DILocation(line: 273, column: 74, scope: !2228)
!2443 = !DILocation(line: 273, column: 64, scope: !2228)
!2444 = !DILocation(line: 273, column: 56, scope: !2228)
!2445 = !DILocation(line: 274, column: 13, scope: !2228)
!2446 = !DILocation(line: 278, column: 1, scope: !2216)
!2447 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !984, file: !984, line: 47, type: !2448, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !92}
!2450 = !{!2451}
!2451 = !DILocalVariable(name: "addr", arg: 1, scope: !2447, file: !984, line: 47, type: !92)
!2452 = !DILocation(line: 0, scope: !2447)
!2453 = !DILocation(line: 49, column: 15, scope: !2447)
!2454 = !DILocation(line: 51, column: 5, scope: !2447)
!2455 = !{i64 2624}
!2456 = !DILocation(line: 52, column: 5, scope: !2447)
!2457 = !{i64 2651}
!2458 = !DILocation(line: 53, column: 1, scope: !2447)
!2459 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !984, file: !984, line: 56, type: !2460, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !7}
!2462 = !{!2463}
!2463 = !DILocalVariable(name: "source", arg: 1, scope: !2459, file: !984, line: 56, type: !7)
!2464 = !DILocation(line: 0, scope: !2459)
!2465 = !DILocation(line: 58, column: 16, scope: !2459)
!2466 = !DILocation(line: 59, column: 1, scope: !2459)
!2467 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !984, file: !984, line: 61, type: !2468, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!92}
!2470 = !{!2471}
!2471 = !DILocalVariable(name: "mask", scope: !2467, file: !984, line: 63, type: !92)
!2472 = !DILocation(line: 470, column: 3, scope: !2473, inlinedAt: !2477)
!2473 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2474, file: !2474, line: 466, type: !2468, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2475)
!2474 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!2475 = !{!2476}
!2476 = !DILocalVariable(name: "result", scope: !2473, file: !2474, line: 468, type: !92)
!2477 = distinct !DILocation(line: 64, column: 5, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2467, file: !984, line: 64, column: 5)
!2479 = !{i64 302169}
!2480 = !DILocation(line: 0, scope: !2473, inlinedAt: !2477)
!2481 = !DILocation(line: 0, scope: !2467)
!2482 = !DILocation(line: 330, column: 3, scope: !2483, inlinedAt: !2484)
!2483 = distinct !DISubprogram(name: "__disable_irq", scope: !2474, file: !2474, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !1338)
!2484 = distinct !DILocation(line: 64, column: 5, scope: !2478)
!2485 = !{i64 298833}
!2486 = !DILocation(line: 65, column: 5, scope: !2467)
!2487 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !984, file: !984, line: 68, type: !2448, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2488)
!2488 = !{!2489}
!2489 = !DILocalVariable(name: "mask", arg: 1, scope: !2487, file: !984, line: 68, type: !92)
!2490 = !DILocation(line: 0, scope: !2487)
!2491 = !DILocalVariable(name: "priMask", arg: 1, scope: !2492, file: !2474, line: 481, type: !92)
!2492 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2474, file: !2474, line: 481, type: !2448, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !2493)
!2493 = !{!2491}
!2494 = !DILocation(line: 0, scope: !2492, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 70, column: 5, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2487, file: !984, line: 70, column: 5)
!2497 = !DILocation(line: 483, column: 3, scope: !2492, inlinedAt: !2495)
!2498 = !{i64 302487}
!2499 = !DILocation(line: 71, column: 1, scope: !2487)
!2500 = distinct !DISubprogram(name: "pinmux_config", scope: !1029, file: !1029, line: 54, type: !2501, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!238, !1140, !92}
!2503 = !{!2504, !2505, !2506}
!2504 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2500, file: !1029, line: 54, type: !1140)
!2505 = !DILocalVariable(name: "function", arg: 2, scope: !2500, file: !1029, line: 54, type: !92)
!2506 = !DILocalVariable(name: "ePadIndex", scope: !2500, file: !1029, line: 56, type: !2220)
!2507 = !DILocation(line: 0, scope: !2500)
!2508 = !DILocation(line: 60, column: 5, scope: !2500)
!2509 = !DILocation(line: 205, column: 38, scope: !2500)
!2510 = !DILocation(line: 205, column: 5, scope: !2500)
!2511 = !DILocation(line: 207, column: 5, scope: !2500)
!2512 = !DILocation(line: 208, column: 1, scope: !2500)
!2513 = distinct !DISubprogram(name: "pwm_init", scope: !1063, file: !1063, line: 61, type: !2514, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!238, !267}
!2516 = !{!2517, !2518}
!2517 = !DILocalVariable(name: "clock_source", arg: 1, scope: !2513, file: !1063, line: 61, type: !267)
!2518 = !DILocalVariable(name: "ret", scope: !2513, file: !1063, line: 63, type: !1585)
!2519 = !DILocation(line: 0, scope: !2513)
!2520 = !DILocation(line: 65, column: 25, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2513, file: !1063, line: 65, column: 9)
!2522 = !DILocation(line: 65, column: 9, scope: !2513)
!2523 = !DILocation(line: 69, column: 5, scope: !2513)
!2524 = !DILocation(line: 70, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2513, file: !1063, line: 70, column: 9)
!2526 = !DILocation(line: 75, column: 1, scope: !2513)
!2527 = distinct !DISubprogram(name: "pwm_set", scope: !1063, file: !1063, line: 77, type: !2528, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!238, !267, !92, !438, !267}
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2531 = !DILocalVariable(name: "index", arg: 1, scope: !2527, file: !1063, line: 77, type: !267)
!2532 = !DILocalVariable(name: "frequency", arg: 2, scope: !2527, file: !1063, line: 77, type: !92)
!2533 = !DILocalVariable(name: "duty_cycle", arg: 3, scope: !2527, file: !1063, line: 77, type: !438)
!2534 = !DILocalVariable(name: "enable", arg: 4, scope: !2527, file: !1063, line: 77, type: !267)
!2535 = !DILocalVariable(name: "ret", scope: !2527, file: !1063, line: 79, type: !1585)
!2536 = !DILocalVariable(name: "eState", scope: !2527, file: !1063, line: 80, type: !1430)
!2537 = !DILocalVariable(name: "u2DutyStep", scope: !2527, file: !1063, line: 81, type: !1431)
!2538 = !DILocalVariable(name: "u2S0StayCycle", scope: !2527, file: !1063, line: 82, type: !1431)
!2539 = !DILocalVariable(name: "u2S1StayCycle", scope: !2527, file: !1063, line: 83, type: !1431)
!2540 = !DILocalVariable(name: "ucReplayMode", scope: !2527, file: !1063, line: 84, type: !133)
!2541 = !DILocation(line: 0, scope: !2527)
!2542 = !DILocation(line: 86, column: 11, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2527, file: !1063, line: 86, column: 9)
!2544 = !DILocation(line: 86, column: 9, scope: !2527)
!2545 = !DILocation(line: 88, column: 13, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !1063, line: 88, column: 13)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !1063, line: 86, column: 22)
!2548 = !DILocation(line: 88, column: 13, scope: !2547)
!2549 = !DILocation(line: 92, column: 13, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !1063, line: 92, column: 13)
!2551 = !DILocation(line: 92, column: 13, scope: !2547)
!2552 = !DILocation(line: 97, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2547, file: !1063, line: 97, column: 13)
!2554 = !DILocation(line: 97, column: 13, scope: !2547)
!2555 = !DILocation(line: 103, column: 13, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !1063, line: 103, column: 13)
!2557 = distinct !DILexicalBlock(scope: !2543, file: !1063, line: 100, column: 12)
!2558 = !DILocation(line: 103, column: 13, scope: !2557)
!2559 = !DILocation(line: 107, column: 13, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !1063, line: 107, column: 13)
!2561 = !DILocation(line: 107, column: 13, scope: !2557)
!2562 = !DILocation(line: 111, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !1063, line: 111, column: 13)
!2564 = !DILocation(line: 111, column: 13, scope: !2557)
!2565 = !DILocation(line: 115, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2557, file: !1063, line: 115, column: 13)
!2567 = !DILocation(line: 115, column: 13, scope: !2557)
!2568 = !DILocation(line: 120, column: 5, scope: !2527)
!2569 = !DILocation(line: 121, column: 1, scope: !2527)
!2570 = distinct !DISubprogram(name: "pwm_get", scope: !1063, file: !1063, line: 123, type: !2571, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !2574)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!238, !267, !451, !2573, !564}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 32)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580}
!2575 = !DILocalVariable(name: "index", arg: 1, scope: !2570, file: !1063, line: 123, type: !267)
!2576 = !DILocalVariable(name: "frequency", arg: 2, scope: !2570, file: !1063, line: 123, type: !451)
!2577 = !DILocalVariable(name: "duty_cycle", arg: 3, scope: !2570, file: !1063, line: 123, type: !2573)
!2578 = !DILocalVariable(name: "status", arg: 4, scope: !2570, file: !1063, line: 123, type: !564)
!2579 = !DILocalVariable(name: "ret", scope: !2570, file: !1063, line: 125, type: !1585)
!2580 = !DILocalVariable(name: "eState", scope: !2570, file: !1063, line: 126, type: !1430)
!2581 = !DILocation(line: 0, scope: !2570)
!2582 = !DILocation(line: 128, column: 5, scope: !2570)
!2583 = !DILocation(line: 130, column: 5, scope: !2570)
!2584 = distinct !DISubprogram(name: "get_current_count", scope: !1069, file: !1069, line: 56, type: !2468, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !1338)
!2585 = !DILocation(line: 58, column: 12, scope: !2584)
!2586 = !DILocation(line: 58, column: 5, scope: !2584)
!2587 = distinct !DISubprogram(name: "delay_time", scope: !1069, file: !1069, line: 62, type: !1196, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2588)
!2588 = !{!2589, !2590, !2591}
!2589 = !DILocalVariable(name: "count", arg: 1, scope: !2587, file: !1069, line: 62, type: !60)
!2590 = !DILocalVariable(name: "end_count", scope: !2587, file: !1069, line: 64, type: !60)
!2591 = !DILocalVariable(name: "current", scope: !2587, file: !1069, line: 64, type: !60)
!2592 = !DILocation(line: 0, scope: !2587)
!2593 = !DILocation(line: 66, column: 17, scope: !2587)
!2594 = !DILocation(line: 66, column: 37, scope: !2587)
!2595 = !DILocation(line: 66, column: 45, scope: !2587)
!2596 = !DILocation(line: 67, column: 15, scope: !2587)
!2597 = !DILocation(line: 68, column: 12, scope: !2587)
!2598 = !DILocation(line: 68, column: 5, scope: !2587)
!2599 = !DILocation(line: 69, column: 19, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2587, file: !1069, line: 68, column: 45)
!2601 = distinct !{!2601, !2598, !2602}
!2602 = !DILocation(line: 70, column: 5, scope: !2587)
!2603 = !DILocation(line: 72, column: 1, scope: !2587)
!2604 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1069, file: !1069, line: 75, type: !1196, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2605)
!2605 = !{!2606, !2607, !2608}
!2606 = !DILocalVariable(name: "count", arg: 1, scope: !2604, file: !1069, line: 75, type: !60)
!2607 = !DILocalVariable(name: "end_count", scope: !2604, file: !1069, line: 77, type: !60)
!2608 = !DILocalVariable(name: "current", scope: !2604, file: !1069, line: 77, type: !60)
!2609 = !DILocation(line: 0, scope: !2604)
!2610 = !DILocation(line: 79, column: 17, scope: !2604)
!2611 = !DILocation(line: 79, column: 42, scope: !2604)
!2612 = !DILocation(line: 79, column: 50, scope: !2604)
!2613 = !DILocation(line: 80, column: 15, scope: !2604)
!2614 = !DILocation(line: 81, column: 12, scope: !2604)
!2615 = !DILocation(line: 81, column: 5, scope: !2604)
!2616 = !DILocation(line: 82, column: 19, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2604, file: !1069, line: 81, column: 45)
!2618 = distinct !{!2618, !2615, !2619}
!2619 = !DILocation(line: 83, column: 5, scope: !2604)
!2620 = !DILocation(line: 85, column: 1, scope: !2604)
!2621 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1069, file: !1069, line: 95, type: !2468, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !1338)
!2622 = !DILocation(line: 97, column: 13, scope: !2621)
!2623 = !DILocation(line: 97, column: 5, scope: !2621)
!2624 = distinct !DISubprogram(name: "delay_ms", scope: !1069, file: !1069, line: 107, type: !2448, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2625)
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "ms", arg: 1, scope: !2624, file: !1069, line: 107, type: !92)
!2627 = !DILocalVariable(name: "count", scope: !2624, file: !1069, line: 109, type: !92)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocation(line: 111, column: 17, scope: !2624)
!2630 = !DILocation(line: 112, column: 17, scope: !2624)
!2631 = !DILocation(line: 112, column: 23, scope: !2624)
!2632 = !DILocation(line: 112, column: 11, scope: !2624)
!2633 = !DILocation(line: 113, column: 17, scope: !2624)
!2634 = !DILocation(line: 113, column: 23, scope: !2624)
!2635 = !DILocation(line: 113, column: 11, scope: !2624)
!2636 = !DILocation(line: 114, column: 17, scope: !2624)
!2637 = !DILocation(line: 114, column: 23, scope: !2624)
!2638 = !DILocation(line: 114, column: 11, scope: !2624)
!2639 = !DILocation(line: 115, column: 5, scope: !2624)
!2640 = !DILocation(line: 116, column: 1, scope: !2624)
!2641 = distinct !DISubprogram(name: "delay_us", scope: !1069, file: !1069, line: 120, type: !2448, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2642)
!2642 = !{!2643, !2644, !2645}
!2643 = !DILocalVariable(name: "us", arg: 1, scope: !2641, file: !1069, line: 120, type: !92)
!2644 = !DILocalVariable(name: "count", scope: !2641, file: !1069, line: 122, type: !92)
!2645 = !DILocalVariable(name: "ticks_per_us", scope: !2641, file: !1069, line: 123, type: !92)
!2646 = !DILocation(line: 0, scope: !2641)
!2647 = !DILocation(line: 125, column: 20, scope: !2641)
!2648 = !DILocation(line: 125, column: 39, scope: !2641)
!2649 = !DILocation(line: 126, column: 26, scope: !2641)
!2650 = !DILocation(line: 128, column: 5, scope: !2641)
!2651 = !DILocation(line: 129, column: 1, scope: !2641)
!2652 = distinct !DISubprogram(name: "drvTMR_init", scope: !1069, file: !1069, line: 133, type: !2653, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2655)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !92, !92, !222, !74}
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2652, file: !1069, line: 133, type: !92)
!2657 = !DILocalVariable(name: "countValue", arg: 2, scope: !2652, file: !1069, line: 133, type: !92)
!2658 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2652, file: !1069, line: 133, type: !222)
!2659 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2652, file: !1069, line: 133, type: !74)
!2660 = !DILocation(line: 0, scope: !2652)
!2661 = !DILocation(line: 136, column: 5, scope: !2652)
!2662 = !DILocation(line: 138, column: 18, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2652, file: !1069, line: 138, column: 9)
!2664 = !DILocation(line: 138, column: 9, scope: !2652)
!2665 = !DILocation(line: 139, column: 30, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !1069, line: 138, column: 27)
!2667 = !DILocation(line: 141, column: 5, scope: !2666)
!2668 = !DILocation(line: 142, column: 30, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2663, file: !1069, line: 141, column: 12)
!2670 = !DILocation(line: 0, scope: !2663)
!2671 = !DILocation(line: 146, column: 5, scope: !2652)
!2672 = !DILocation(line: 147, column: 1, scope: !2652)
!2673 = distinct !DISubprogram(name: "TMR_Start", scope: !1069, file: !1069, line: 149, type: !2448, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2674)
!2674 = !{!2675}
!2675 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2673, file: !1069, line: 149, type: !92)
!2676 = !DILocation(line: 0, scope: !2673)
!2677 = !DILocation(line: 151, column: 5, scope: !2673)
!2678 = !DILocation(line: 152, column: 1, scope: !2673)
!2679 = distinct !DISubprogram(name: "TMR_Stop", scope: !1069, file: !1069, line: 154, type: !2448, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2680)
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2679, file: !1069, line: 154, type: !92)
!2682 = !DILocation(line: 0, scope: !2679)
!2683 = !DILocation(line: 156, column: 5, scope: !2679)
!2684 = !DILocation(line: 157, column: 1, scope: !2679)
!2685 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1069, file: !1069, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !1338)
!2686 = !DILocation(line: 162, column: 5, scope: !2685)
!2687 = !DILocation(line: 163, column: 1, scope: !2685)
!2688 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1069, file: !1069, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !1338)
!2689 = !DILocation(line: 167, column: 5, scope: !2688)
!2690 = !DILocation(line: 168, column: 1, scope: !2688)
!2691 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1069, file: !1069, line: 170, type: !2448, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !2692)
!2692 = !{!2693}
!2693 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2691, file: !1069, line: 170, type: !92)
!2694 = !DILocation(line: 0, scope: !2691)
!2695 = !DILocation(line: 172, column: 9, scope: !2691)
!2696 = !DILocation(line: 177, column: 5, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !1069, line: 175, column: 27)
!2698 = distinct !DILexicalBlock(scope: !2691, file: !1069, line: 175, column: 9)
!2699 = !DILocation(line: 178, column: 1, scope: !2691)
!2700 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2701)
!2701 = !{!2702, !2703}
!2702 = !DILocalVariable(name: "u4RegVal", scope: !2700, file: !86, line: 54, type: !92)
!2703 = !DILocalVariable(name: "reg", scope: !2700, file: !86, line: 55, type: !744)
!2704 = !DILocation(line: 0, scope: !2700)
!2705 = !DILocation(line: 55, column: 25, scope: !2700)
!2706 = !DILocation(line: 56, column: 16, scope: !2700)
!2707 = !DILocation(line: 56, column: 23, scope: !2700)
!2708 = !DILocation(line: 58, column: 16, scope: !2700)
!2709 = !DILocation(line: 61, column: 5, scope: !2700)
!2710 = !DILocation(line: 59, column: 14, scope: !2700)
!2711 = !DILocation(line: 0, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2700, file: !86, line: 61, column: 18)
!2713 = !DILocation(line: 87, column: 38, scope: !2700)
!2714 = !DILocation(line: 88, column: 21, scope: !2700)
!2715 = !DILocation(line: 88, column: 19, scope: !2700)
!2716 = !DILocation(line: 89, column: 5, scope: !2700)
!2717 = !DILocation(line: 90, column: 17, scope: !2700)
!2718 = !DILocation(line: 90, column: 33, scope: !2700)
!2719 = !DILocation(line: 90, column: 5, scope: !2700)
!2720 = !DILocation(line: 91, column: 1, scope: !2700)
!2721 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2468, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1338)
!2722 = !DILocation(line: 100, column: 12, scope: !2721)
!2723 = !DILocation(line: 100, column: 5, scope: !2721)
!2724 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2468, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1338)
!2725 = !DILocation(line: 110, column: 12, scope: !2724)
!2726 = !DILocation(line: 110, column: 5, scope: !2724)
!2727 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2728)
!2728 = !{!2729, !2730}
!2729 = !DILocalVariable(name: "reg", scope: !2727, file: !86, line: 120, type: !91)
!2730 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2727, file: !86, line: 121, type: !90)
!2731 = !DILocation(line: 120, column: 5, scope: !2727)
!2732 = !DILocation(line: 120, column: 23, scope: !2727)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 123, column: 11, scope: !2727)
!2735 = !DILocation(line: 123, column: 9, scope: !2727)
!2736 = !DILocation(line: 124, column: 12, scope: !2727)
!2737 = !DILocation(line: 124, column: 16, scope: !2727)
!2738 = !DILocation(line: 124, column: 39, scope: !2727)
!2739 = !DILocation(line: 124, column: 9, scope: !2727)
!2740 = !DILocation(line: 126, column: 9, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2727, file: !86, line: 126, column: 9)
!2742 = !DILocation(line: 126, column: 13, scope: !2741)
!2743 = !DILocation(line: 126, column: 9, scope: !2727)
!2744 = !DILocation(line: 127, column: 15, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !86, line: 126, column: 47)
!2746 = !DILocation(line: 127, column: 13, scope: !2745)
!2747 = !DILocation(line: 128, column: 15, scope: !2745)
!2748 = !DILocation(line: 128, column: 19, scope: !2745)
!2749 = !DILocation(line: 128, column: 13, scope: !2745)
!2750 = !DILocation(line: 129, column: 15, scope: !2745)
!2751 = !DILocation(line: 129, column: 19, scope: !2745)
!2752 = !DILocation(line: 129, column: 13, scope: !2745)
!2753 = !DILocation(line: 130, column: 46, scope: !2745)
!2754 = !DILocation(line: 130, column: 9, scope: !2745)
!2755 = !DILocation(line: 132, column: 9, scope: !2745)
!2756 = !DILocation(line: 133, column: 19, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !86, line: 132, column: 12)
!2758 = !DILocation(line: 133, column: 17, scope: !2757)
!2759 = !DILocation(line: 134, column: 19, scope: !2757)
!2760 = !DILocation(line: 134, column: 23, scope: !2757)
!2761 = !DILocation(line: 134, column: 17, scope: !2757)
!2762 = !DILocation(line: 135, column: 19, scope: !2745)
!2763 = !DILocation(line: 135, column: 18, scope: !2745)
!2764 = !DILocation(line: 135, column: 9, scope: !2757)
!2765 = distinct !{!2765, !2755, !2766}
!2766 = !DILocation(line: 135, column: 22, scope: !2745)
!2767 = !DILocation(line: 138, column: 1, scope: !2727)
!2768 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2769, file: !2769, line: 176, type: !2770, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2774)
!2769 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!92, !2772}
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2774 = !{!2775}
!2775 = !DILocalVariable(name: "Register", arg: 1, scope: !2768, file: !2769, line: 176, type: !2772)
!2776 = !DILocation(line: 0, scope: !2768)
!2777 = !DILocation(line: 178, column: 13, scope: !2768)
!2778 = !DILocation(line: 178, column: 12, scope: !2768)
!2779 = !DILocation(line: 178, column: 5, scope: !2768)
!2780 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2769, file: !2769, line: 171, type: !2781, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2772, !92}
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "Register", arg: 1, scope: !2780, file: !2769, line: 171, type: !2772)
!2785 = !DILocalVariable(name: "Value", arg: 2, scope: !2780, file: !2769, line: 171, type: !92)
!2786 = !DILocation(line: 0, scope: !2780)
!2787 = !DILocation(line: 173, column: 6, scope: !2780)
!2788 = !DILocation(line: 173, column: 36, scope: !2780)
!2789 = !DILocation(line: 174, column: 1, scope: !2780)
!2790 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2791, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{null, !267}
!2793 = !{!2794, !2795, !2796}
!2794 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2790, file: !86, line: 145, type: !267)
!2795 = !DILocalVariable(name: "reg", scope: !2790, file: !86, line: 147, type: !91)
!2796 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2790, file: !86, line: 148, type: !90)
!2797 = !DILocation(line: 0, scope: !2790)
!2798 = !DILocation(line: 147, column: 5, scope: !2790)
!2799 = !DILocation(line: 147, column: 23, scope: !2790)
!2800 = !DILocation(line: 150, column: 11, scope: !2790)
!2801 = !DILocation(line: 150, column: 9, scope: !2790)
!2802 = !DILocation(line: 151, column: 12, scope: !2790)
!2803 = !DILocation(line: 151, column: 16, scope: !2790)
!2804 = !DILocation(line: 151, column: 39, scope: !2790)
!2805 = !DILocation(line: 151, column: 9, scope: !2790)
!2806 = !DILocation(line: 153, column: 9, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2790, file: !86, line: 153, column: 9)
!2808 = !DILocation(line: 153, column: 13, scope: !2807)
!2809 = !DILocation(line: 153, column: 9, scope: !2790)
!2810 = !DILocation(line: 154, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !86, line: 153, column: 45)
!2812 = !DILocation(line: 154, column: 13, scope: !2811)
!2813 = !DILocation(line: 155, column: 15, scope: !2811)
!2814 = !DILocation(line: 155, column: 19, scope: !2811)
!2815 = !DILocation(line: 155, column: 13, scope: !2811)
!2816 = !DILocation(line: 156, column: 15, scope: !2811)
!2817 = !DILocation(line: 156, column: 19, scope: !2811)
!2818 = !DILocation(line: 156, column: 13, scope: !2811)
!2819 = !DILocation(line: 157, column: 15, scope: !2811)
!2820 = !DILocation(line: 157, column: 13, scope: !2811)
!2821 = !DILocation(line: 158, column: 46, scope: !2811)
!2822 = !DILocation(line: 158, column: 9, scope: !2811)
!2823 = !DILocation(line: 160, column: 15, scope: !2811)
!2824 = !DILocation(line: 160, column: 13, scope: !2811)
!2825 = !DILocation(line: 161, column: 15, scope: !2811)
!2826 = !DILocation(line: 161, column: 19, scope: !2811)
!2827 = !DILocation(line: 161, column: 13, scope: !2811)
!2828 = !DILocation(line: 162, column: 15, scope: !2811)
!2829 = !DILocation(line: 162, column: 19, scope: !2811)
!2830 = !DILocation(line: 162, column: 13, scope: !2811)
!2831 = !DILocation(line: 163, column: 15, scope: !2811)
!2832 = !DILocation(line: 163, column: 19, scope: !2811)
!2833 = !DILocation(line: 163, column: 13, scope: !2811)
!2834 = !DILocation(line: 164, column: 46, scope: !2811)
!2835 = !DILocation(line: 164, column: 9, scope: !2811)
!2836 = !DILocation(line: 166, column: 9, scope: !2811)
!2837 = !DILocation(line: 167, column: 19, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2811, file: !86, line: 166, column: 12)
!2839 = !DILocation(line: 167, column: 17, scope: !2838)
!2840 = !DILocation(line: 168, column: 19, scope: !2838)
!2841 = !DILocation(line: 168, column: 23, scope: !2838)
!2842 = !DILocation(line: 168, column: 17, scope: !2838)
!2843 = !DILocation(line: 169, column: 19, scope: !2811)
!2844 = !DILocation(line: 169, column: 18, scope: !2811)
!2845 = !DILocation(line: 169, column: 9, scope: !2838)
!2846 = distinct !{!2846, !2836, !2847}
!2847 = !DILocation(line: 169, column: 22, scope: !2811)
!2848 = !DILocation(line: 171, column: 15, scope: !2811)
!2849 = !DILocation(line: 171, column: 13, scope: !2811)
!2850 = !DILocation(line: 172, column: 15, scope: !2811)
!2851 = !DILocation(line: 172, column: 19, scope: !2811)
!2852 = !DILocation(line: 172, column: 13, scope: !2811)
!2853 = !DILocation(line: 173, column: 15, scope: !2811)
!2854 = !DILocation(line: 173, column: 19, scope: !2811)
!2855 = !DILocation(line: 173, column: 13, scope: !2811)
!2856 = !DILocation(line: 174, column: 5, scope: !2811)
!2857 = !DILocation(line: 176, column: 11, scope: !2790)
!2858 = !DILocation(line: 176, column: 9, scope: !2790)
!2859 = !DILocation(line: 177, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2790, file: !86, line: 177, column: 9)
!2861 = !DILocation(line: 0, scope: !2860)
!2862 = !DILocation(line: 177, column: 9, scope: !2790)
!2863 = !DILocation(line: 178, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !86, line: 177, column: 17)
!2865 = !DILocation(line: 178, column: 13, scope: !2864)
!2866 = !DILocation(line: 179, column: 5, scope: !2864)
!2867 = !DILocation(line: 180, column: 13, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2860, file: !86, line: 179, column: 12)
!2869 = !DILocation(line: 182, column: 42, scope: !2790)
!2870 = !DILocation(line: 182, column: 5, scope: !2790)
!2871 = !DILocation(line: 184, column: 1, scope: !2790)
!2872 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2873)
!2873 = !{!2874, !2875}
!2874 = !DILocalVariable(name: "reg", scope: !2872, file: !86, line: 193, type: !91)
!2875 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2872, file: !86, line: 194, type: !90)
!2876 = !DILocation(line: 193, column: 5, scope: !2872)
!2877 = !DILocation(line: 193, column: 23, scope: !2872)
!2878 = !DILocation(line: 0, scope: !2872)
!2879 = !DILocation(line: 196, column: 11, scope: !2872)
!2880 = !DILocation(line: 196, column: 9, scope: !2872)
!2881 = !DILocation(line: 197, column: 11, scope: !2872)
!2882 = !DILocation(line: 197, column: 15, scope: !2872)
!2883 = !DILocation(line: 197, column: 9, scope: !2872)
!2884 = !DILocation(line: 198, column: 11, scope: !2872)
!2885 = !DILocation(line: 198, column: 15, scope: !2872)
!2886 = !DILocation(line: 198, column: 9, scope: !2872)
!2887 = !DILocation(line: 199, column: 11, scope: !2872)
!2888 = !DILocation(line: 199, column: 9, scope: !2872)
!2889 = !DILocation(line: 200, column: 42, scope: !2872)
!2890 = !DILocation(line: 200, column: 5, scope: !2872)
!2891 = !DILocation(line: 202, column: 11, scope: !2872)
!2892 = !DILocation(line: 202, column: 9, scope: !2872)
!2893 = !DILocation(line: 203, column: 11, scope: !2872)
!2894 = !DILocation(line: 203, column: 15, scope: !2872)
!2895 = !DILocation(line: 203, column: 9, scope: !2872)
!2896 = !DILocation(line: 204, column: 11, scope: !2872)
!2897 = !DILocation(line: 204, column: 15, scope: !2872)
!2898 = !DILocation(line: 204, column: 9, scope: !2872)
!2899 = !DILocation(line: 205, column: 11, scope: !2872)
!2900 = !DILocation(line: 205, column: 9, scope: !2872)
!2901 = !DILocation(line: 206, column: 42, scope: !2872)
!2902 = !DILocation(line: 206, column: 5, scope: !2872)
!2903 = !DILocation(line: 209, column: 1, scope: !2872)
!2904 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2905)
!2905 = !{!2906, !2907}
!2906 = !DILocalVariable(name: "reg", scope: !2904, file: !86, line: 218, type: !91)
!2907 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2904, file: !86, line: 219, type: !90)
!2908 = !DILocation(line: 218, column: 5, scope: !2904)
!2909 = !DILocation(line: 218, column: 23, scope: !2904)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 222, column: 11, scope: !2904)
!2912 = !DILocation(line: 222, column: 9, scope: !2904)
!2913 = !DILocation(line: 223, column: 11, scope: !2904)
!2914 = !DILocation(line: 223, column: 15, scope: !2904)
!2915 = !DILocation(line: 223, column: 9, scope: !2904)
!2916 = !DILocation(line: 224, column: 11, scope: !2904)
!2917 = !DILocation(line: 224, column: 9, scope: !2904)
!2918 = !DILocation(line: 225, column: 39, scope: !2904)
!2919 = !DILocation(line: 225, column: 5, scope: !2904)
!2920 = !DILocation(line: 228, column: 11, scope: !2904)
!2921 = !DILocation(line: 228, column: 9, scope: !2904)
!2922 = !DILocation(line: 229, column: 11, scope: !2904)
!2923 = !DILocation(line: 229, column: 15, scope: !2904)
!2924 = !DILocation(line: 229, column: 9, scope: !2904)
!2925 = !DILocation(line: 230, column: 11, scope: !2904)
!2926 = !DILocation(line: 230, column: 9, scope: !2904)
!2927 = !DILocation(line: 231, column: 39, scope: !2904)
!2928 = !DILocation(line: 231, column: 5, scope: !2904)
!2929 = !DILocation(line: 233, column: 5, scope: !2904)
!2930 = !DILocation(line: 233, column: 12, scope: !2904)
!2931 = !DILocation(line: 233, column: 19, scope: !2904)
!2932 = !DILocation(line: 233, column: 16, scope: !2904)
!2933 = distinct !{!2933, !2929, !2934}
!2934 = !DILocation(line: 233, column: 52, scope: !2904)
!2935 = !DILocation(line: 235, column: 21, scope: !2904)
!2936 = !DILocation(line: 235, column: 19, scope: !2904)
!2937 = !DILocation(line: 236, column: 5, scope: !2904)
!2938 = !DILocation(line: 237, column: 17, scope: !2904)
!2939 = !DILocation(line: 237, column: 33, scope: !2904)
!2940 = !DILocation(line: 237, column: 5, scope: !2904)
!2941 = !DILocation(line: 239, column: 1, scope: !2904)
!2942 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2943)
!2943 = !{!2944, !2945}
!2944 = !DILocalVariable(name: "reg", scope: !2942, file: !86, line: 248, type: !91)
!2945 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2942, file: !86, line: 249, type: !90)
!2946 = !DILocation(line: 248, column: 5, scope: !2942)
!2947 = !DILocation(line: 248, column: 23, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2942)
!2949 = !DILocation(line: 252, column: 5, scope: !2942)
!2950 = !DILocation(line: 255, column: 11, scope: !2942)
!2951 = !DILocation(line: 255, column: 9, scope: !2942)
!2952 = !DILocation(line: 256, column: 11, scope: !2942)
!2953 = !DILocation(line: 256, column: 15, scope: !2942)
!2954 = !DILocation(line: 256, column: 9, scope: !2942)
!2955 = !DILocation(line: 257, column: 11, scope: !2942)
!2956 = !DILocation(line: 257, column: 15, scope: !2942)
!2957 = !DILocation(line: 257, column: 9, scope: !2942)
!2958 = !DILocation(line: 258, column: 39, scope: !2942)
!2959 = !DILocation(line: 258, column: 5, scope: !2942)
!2960 = !DILocation(line: 260, column: 5, scope: !2942)
!2961 = !DILocation(line: 260, column: 12, scope: !2942)
!2962 = !DILocation(line: 260, column: 19, scope: !2942)
!2963 = !DILocation(line: 260, column: 16, scope: !2942)
!2964 = distinct !{!2964, !2960, !2965}
!2965 = !DILocation(line: 260, column: 52, scope: !2942)
!2966 = !DILocation(line: 263, column: 11, scope: !2942)
!2967 = !DILocation(line: 263, column: 9, scope: !2942)
!2968 = !DILocation(line: 264, column: 11, scope: !2942)
!2969 = !DILocation(line: 264, column: 15, scope: !2942)
!2970 = !DILocation(line: 264, column: 9, scope: !2942)
!2971 = !DILocation(line: 265, column: 11, scope: !2942)
!2972 = !DILocation(line: 265, column: 15, scope: !2942)
!2973 = !DILocation(line: 265, column: 9, scope: !2942)
!2974 = !DILocation(line: 266, column: 39, scope: !2942)
!2975 = !DILocation(line: 266, column: 5, scope: !2942)
!2976 = !DILocation(line: 269, column: 11, scope: !2942)
!2977 = !DILocation(line: 269, column: 9, scope: !2942)
!2978 = !DILocation(line: 270, column: 11, scope: !2942)
!2979 = !DILocation(line: 270, column: 15, scope: !2942)
!2980 = !DILocation(line: 270, column: 9, scope: !2942)
!2981 = !DILocation(line: 271, column: 11, scope: !2942)
!2982 = !DILocation(line: 271, column: 15, scope: !2942)
!2983 = !DILocation(line: 271, column: 9, scope: !2942)
!2984 = !DILocation(line: 272, column: 39, scope: !2942)
!2985 = !DILocation(line: 272, column: 5, scope: !2942)
!2986 = !DILocation(line: 273, column: 19, scope: !2942)
!2987 = !DILocation(line: 274, column: 5, scope: !2942)
!2988 = !DILocation(line: 275, column: 17, scope: !2942)
!2989 = !DILocation(line: 275, column: 33, scope: !2942)
!2990 = !DILocation(line: 275, column: 5, scope: !2942)
!2991 = !DILocation(line: 277, column: 1, scope: !2942)
!2992 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2993)
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "reg", scope: !2992, file: !86, line: 286, type: !91)
!2995 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2992, file: !86, line: 287, type: !90)
!2996 = !DILocation(line: 286, column: 5, scope: !2992)
!2997 = !DILocation(line: 286, column: 23, scope: !2992)
!2998 = !DILocation(line: 0, scope: !2992)
!2999 = !DILocation(line: 290, column: 5, scope: !2992)
!3000 = !DILocation(line: 293, column: 11, scope: !2992)
!3001 = !DILocation(line: 293, column: 9, scope: !2992)
!3002 = !DILocation(line: 294, column: 11, scope: !2992)
!3003 = !DILocation(line: 294, column: 15, scope: !2992)
!3004 = !DILocation(line: 294, column: 9, scope: !2992)
!3005 = !DILocation(line: 295, column: 11, scope: !2992)
!3006 = !DILocation(line: 295, column: 15, scope: !2992)
!3007 = !DILocation(line: 295, column: 9, scope: !2992)
!3008 = !DILocation(line: 296, column: 39, scope: !2992)
!3009 = !DILocation(line: 296, column: 5, scope: !2992)
!3010 = !DILocation(line: 298, column: 5, scope: !2992)
!3011 = !DILocation(line: 298, column: 12, scope: !2992)
!3012 = !DILocation(line: 298, column: 19, scope: !2992)
!3013 = !DILocation(line: 298, column: 16, scope: !2992)
!3014 = distinct !{!3014, !3010, !3015}
!3015 = !DILocation(line: 298, column: 52, scope: !2992)
!3016 = !DILocation(line: 301, column: 11, scope: !2992)
!3017 = !DILocation(line: 301, column: 9, scope: !2992)
!3018 = !DILocation(line: 302, column: 11, scope: !2992)
!3019 = !DILocation(line: 302, column: 15, scope: !2992)
!3020 = !DILocation(line: 302, column: 9, scope: !2992)
!3021 = !DILocation(line: 303, column: 11, scope: !2992)
!3022 = !DILocation(line: 303, column: 15, scope: !2992)
!3023 = !DILocation(line: 303, column: 9, scope: !2992)
!3024 = !DILocation(line: 304, column: 39, scope: !2992)
!3025 = !DILocation(line: 304, column: 5, scope: !2992)
!3026 = !DILocation(line: 307, column: 11, scope: !2992)
!3027 = !DILocation(line: 307, column: 9, scope: !2992)
!3028 = !DILocation(line: 308, column: 11, scope: !2992)
!3029 = !DILocation(line: 308, column: 15, scope: !2992)
!3030 = !DILocation(line: 308, column: 9, scope: !2992)
!3031 = !DILocation(line: 309, column: 11, scope: !2992)
!3032 = !DILocation(line: 309, column: 15, scope: !2992)
!3033 = !DILocation(line: 309, column: 9, scope: !2992)
!3034 = !DILocation(line: 310, column: 39, scope: !2992)
!3035 = !DILocation(line: 310, column: 5, scope: !2992)
!3036 = !DILocation(line: 311, column: 19, scope: !2992)
!3037 = !DILocation(line: 312, column: 5, scope: !2992)
!3038 = !DILocation(line: 313, column: 17, scope: !2992)
!3039 = !DILocation(line: 313, column: 33, scope: !2992)
!3040 = !DILocation(line: 313, column: 5, scope: !2992)
!3041 = !DILocation(line: 315, column: 1, scope: !2992)
!3042 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !3043)
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "reg", scope: !3042, file: !86, line: 325, type: !91)
!3045 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3042, file: !86, line: 326, type: !90)
!3046 = !DILocation(line: 325, column: 5, scope: !3042)
!3047 = !DILocation(line: 325, column: 23, scope: !3042)
!3048 = !DILocation(line: 0, scope: !3042)
!3049 = !DILocation(line: 329, column: 5, scope: !3042)
!3050 = !DILocation(line: 332, column: 11, scope: !3042)
!3051 = !DILocation(line: 332, column: 9, scope: !3042)
!3052 = !DILocation(line: 333, column: 11, scope: !3042)
!3053 = !DILocation(line: 333, column: 15, scope: !3042)
!3054 = !DILocation(line: 333, column: 9, scope: !3042)
!3055 = !DILocation(line: 334, column: 11, scope: !3042)
!3056 = !DILocation(line: 334, column: 9, scope: !3042)
!3057 = !DILocation(line: 335, column: 39, scope: !3042)
!3058 = !DILocation(line: 335, column: 5, scope: !3042)
!3059 = !DILocation(line: 337, column: 5, scope: !3042)
!3060 = !DILocation(line: 337, column: 12, scope: !3042)
!3061 = !DILocation(line: 337, column: 19, scope: !3042)
!3062 = !DILocation(line: 337, column: 16, scope: !3042)
!3063 = distinct !{!3063, !3059, !3064}
!3064 = !DILocation(line: 337, column: 52, scope: !3042)
!3065 = !DILocation(line: 340, column: 11, scope: !3042)
!3066 = !DILocation(line: 340, column: 9, scope: !3042)
!3067 = !DILocation(line: 341, column: 11, scope: !3042)
!3068 = !DILocation(line: 341, column: 15, scope: !3042)
!3069 = !DILocation(line: 341, column: 9, scope: !3042)
!3070 = !DILocation(line: 342, column: 11, scope: !3042)
!3071 = !DILocation(line: 342, column: 15, scope: !3042)
!3072 = !DILocation(line: 342, column: 9, scope: !3042)
!3073 = !DILocation(line: 343, column: 39, scope: !3042)
!3074 = !DILocation(line: 343, column: 5, scope: !3042)
!3075 = !DILocation(line: 344, column: 19, scope: !3042)
!3076 = !DILocation(line: 345, column: 5, scope: !3042)
!3077 = !DILocation(line: 346, column: 17, scope: !3042)
!3078 = !DILocation(line: 346, column: 33, scope: !3042)
!3079 = !DILocation(line: 346, column: 5, scope: !3042)
!3080 = !DILocation(line: 348, column: 1, scope: !3042)
!3081 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !3082)
!3082 = !{!3083, !3084}
!3083 = !DILocalVariable(name: "reg", scope: !3081, file: !86, line: 355, type: !79)
!3084 = !DILocalVariable(name: "pTopCfgHclk", scope: !3081, file: !86, line: 356, type: !96)
!3085 = !DILocation(line: 355, column: 5, scope: !3081)
!3086 = !DILocation(line: 355, column: 21, scope: !3081)
!3087 = !DILocation(line: 0, scope: !3081)
!3088 = !DILocation(line: 358, column: 11, scope: !3081)
!3089 = !DILocation(line: 358, column: 9, scope: !3081)
!3090 = !DILocation(line: 359, column: 11, scope: !3081)
!3091 = !DILocation(line: 359, column: 15, scope: !3081)
!3092 = !DILocation(line: 359, column: 9, scope: !3081)
!3093 = !DILocation(line: 360, column: 11, scope: !3081)
!3094 = !DILocation(line: 360, column: 9, scope: !3081)
!3095 = !DILocation(line: 361, column: 37, scope: !3081)
!3096 = !DILocation(line: 361, column: 5, scope: !3081)
!3097 = !DILocation(line: 362, column: 1, scope: !3081)
!3098 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !3099, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!13}
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "rc", scope: !3098, file: !103, line: 71, type: !13)
!3103 = !DILocation(line: 71, column: 14, scope: !3098)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = !DILocation(line: 72, column: 5, scope: !3098)
!3106 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !3099, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3107)
!3107 = !{!3108}
!3108 = !DILocalVariable(name: "c", scope: !3106, file: !103, line: 82, type: !516)
!3109 = !DILocation(line: 84, column: 9, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3106, file: !103, line: 84, column: 9)
!3111 = !DILocation(line: 84, column: 40, scope: !3110)
!3112 = !DILocation(line: 84, column: 9, scope: !3106)
!3113 = !DILocation(line: 85, column: 13, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3110, file: !103, line: 84, column: 47)
!3115 = !DILocation(line: 86, column: 16, scope: !3114)
!3116 = !DILocation(line: 0, scope: !3106)
!3117 = !DILocation(line: 86, column: 9, scope: !3114)
!3118 = !DILocation(line: 0, scope: !3110)
!3119 = !DILocation(line: 90, column: 1, scope: !3106)
!3120 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !3121, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3124)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3123, !134}
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!3124 = !{!3125, !3126, !3127}
!3125 = !DILocalVariable(name: "port_no", arg: 1, scope: !3120, file: !103, line: 93, type: !3123)
!3126 = !DILocalVariable(name: "c", arg: 2, scope: !3120, file: !103, line: 93, type: !134)
!3127 = !DILocalVariable(name: "base", scope: !3120, file: !103, line: 95, type: !7)
!3128 = !DILocation(line: 0, scope: !3120)
!3129 = !DILocation(line: 95, column: 25, scope: !3120)
!3130 = !DILocation(line: 97, column: 5, scope: !3120)
!3131 = !DILocation(line: 97, column: 14, scope: !3120)
!3132 = !DILocation(line: 97, column: 42, scope: !3120)
!3133 = !DILocation(line: 97, column: 12, scope: !3120)
!3134 = distinct !{!3134, !3130, !3135}
!3135 = !DILocation(line: 98, column: 9, scope: !3120)
!3136 = !DILocation(line: 99, column: 35, scope: !3120)
!3137 = !DILocation(line: 99, column: 5, scope: !3120)
!3138 = !DILocation(line: 99, column: 33, scope: !3120)
!3139 = !DILocation(line: 102, column: 1, scope: !3120)
!3140 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !3141, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!267, !3123}
!3143 = !{!3144, !3145, !3146}
!3144 = !DILocalVariable(name: "port_no", arg: 1, scope: !3140, file: !103, line: 106, type: !3123)
!3145 = !DILocalVariable(name: "base", scope: !3140, file: !103, line: 108, type: !7)
!3146 = !DILocalVariable(name: "c", scope: !3140, file: !103, line: 109, type: !516)
!3147 = !DILocation(line: 0, scope: !3140)
!3148 = !DILocation(line: 108, column: 25, scope: !3140)
!3149 = !DILocation(line: 111, column: 5, scope: !3140)
!3150 = !DILocation(line: 111, column: 14, scope: !3140)
!3151 = !DILocation(line: 111, column: 42, scope: !3140)
!3152 = !DILocation(line: 111, column: 12, scope: !3140)
!3153 = distinct !{!3153, !3149, !3154}
!3154 = !DILocation(line: 112, column: 9, scope: !3140)
!3155 = !DILocation(line: 114, column: 9, scope: !3140)
!3156 = !DILocation(line: 116, column: 5, scope: !3140)
!3157 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !3158, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!92, !3123}
!3160 = !{!3161, !3162, !3163}
!3161 = !DILocalVariable(name: "port_no", arg: 1, scope: !3157, file: !103, line: 120, type: !3123)
!3162 = !DILocalVariable(name: "base", scope: !3157, file: !103, line: 122, type: !7)
!3163 = !DILocalVariable(name: "c", scope: !3157, file: !103, line: 123, type: !516)
!3164 = !DILocation(line: 0, scope: !3157)
!3165 = !DILocation(line: 122, column: 25, scope: !3157)
!3166 = !DILocation(line: 125, column: 9, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !103, line: 125, column: 9)
!3168 = !DILocation(line: 125, column: 37, scope: !3167)
!3169 = !DILocation(line: 125, column: 9, scope: !3157)
!3170 = !DILocation(line: 126, column: 13, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !103, line: 125, column: 44)
!3172 = !DILocation(line: 127, column: 16, scope: !3171)
!3173 = !DILocation(line: 127, column: 9, scope: !3171)
!3174 = !DILocation(line: 0, scope: !3167)
!3175 = !DILocation(line: 131, column: 1, scope: !3157)
!3176 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !3177, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{null, !3123}
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "u_port", arg: 1, scope: !3176, file: !103, line: 136, type: !3123)
!3181 = !DILocation(line: 0, scope: !3176)
!3182 = !DILocation(line: 139, column: 5, scope: !3176)
!3183 = !DILocation(line: 140, column: 9, scope: !3176)
!3184 = !DILocation(line: 153, column: 5, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !103, line: 147, column: 38)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !103, line: 147, column: 16)
!3187 = distinct !DILexicalBlock(scope: !3176, file: !103, line: 140, column: 9)
!3188 = !DILocation(line: 0, scope: !3187)
!3189 = !DILocation(line: 155, column: 1, scope: !3176)
!3190 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !3191, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !3123, !92, !438, !438, !438}
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3209, !3210}
!3194 = !DILocalVariable(name: "u_port", arg: 1, scope: !3190, file: !103, line: 158, type: !3123)
!3195 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3190, file: !103, line: 158, type: !92)
!3196 = !DILocalVariable(name: "databit", arg: 3, scope: !3190, file: !103, line: 158, type: !438)
!3197 = !DILocalVariable(name: "parity", arg: 4, scope: !3190, file: !103, line: 158, type: !438)
!3198 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3190, file: !103, line: 158, type: !438)
!3199 = !DILocalVariable(name: "control_word", scope: !3190, file: !103, line: 160, type: !438)
!3200 = !DILocalVariable(name: "UART_BASE", scope: !3190, file: !103, line: 161, type: !92)
!3201 = !DILocalVariable(name: "data", scope: !3190, file: !103, line: 162, type: !92)
!3202 = !DILocalVariable(name: "uart_lcr", scope: !3190, file: !103, line: 162, type: !92)
!3203 = !DILocalVariable(name: "high_speed_div", scope: !3190, file: !103, line: 162, type: !92)
!3204 = !DILocalVariable(name: "sample_count", scope: !3190, file: !103, line: 162, type: !92)
!3205 = !DILocalVariable(name: "sample_point", scope: !3190, file: !103, line: 162, type: !92)
!3206 = !DILocalVariable(name: "fraction", scope: !3190, file: !103, line: 162, type: !92)
!3207 = !DILocalVariable(name: "fraction_L_mapping", scope: !3190, file: !103, line: 163, type: !3208)
!3208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 176, elements: !849)
!3209 = !DILocalVariable(name: "fraction_M_mapping", scope: !3190, file: !103, line: 164, type: !3208)
!3210 = !DILocalVariable(name: "status", scope: !3190, file: !103, line: 165, type: !238)
!3211 = !DILocation(line: 0, scope: !3190)
!3212 = !DILocation(line: 163, column: 15, scope: !3190)
!3213 = !DILocation(line: 164, column: 15, scope: !3190)
!3214 = !DILocation(line: 166, column: 20, scope: !3190)
!3215 = !DILocation(line: 166, column: 18, scope: !3190)
!3216 = !DILocation(line: 168, column: 9, scope: !3190)
!3217 = !DILocation(line: 176, column: 5, scope: !3190)
!3218 = !DILocation(line: 176, column: 44, scope: !3190)
!3219 = !DILocation(line: 177, column: 16, scope: !3190)
!3220 = !DILocation(line: 178, column: 50, scope: !3190)
!3221 = !DILocation(line: 178, column: 38, scope: !3190)
!3222 = !DILocation(line: 179, column: 12, scope: !3190)
!3223 = !DILocation(line: 179, column: 25, scope: !3190)
!3224 = !DILocation(line: 180, column: 28, scope: !3190)
!3225 = !DILocation(line: 180, column: 34, scope: !3190)
!3226 = !DILocation(line: 182, column: 29, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3190, file: !103, line: 181, column: 5)
!3228 = !DILocation(line: 182, column: 46, scope: !3227)
!3229 = !DILocation(line: 183, column: 26, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !103, line: 183, column: 13)
!3231 = !DILocation(line: 183, column: 13, scope: !3227)
!3232 = !DILocation(line: 192, column: 30, scope: !3190)
!3233 = !DILocation(line: 192, column: 35, scope: !3190)
!3234 = !DILocation(line: 192, column: 46, scope: !3190)
!3235 = !DILocation(line: 192, column: 74, scope: !3190)
!3236 = !DILocation(line: 192, column: 53, scope: !3190)
!3237 = !DILocation(line: 192, column: 80, scope: !3190)
!3238 = !DILocation(line: 193, column: 56, scope: !3190)
!3239 = !DILocation(line: 193, column: 5, scope: !3190)
!3240 = !DILocation(line: 193, column: 38, scope: !3190)
!3241 = !DILocation(line: 194, column: 57, scope: !3190)
!3242 = !DILocation(line: 194, column: 63, scope: !3190)
!3243 = !DILocation(line: 194, column: 5, scope: !3190)
!3244 = !DILocation(line: 194, column: 38, scope: !3190)
!3245 = !DILocation(line: 195, column: 5, scope: !3190)
!3246 = !DILocation(line: 195, column: 45, scope: !3190)
!3247 = !DILocation(line: 196, column: 5, scope: !3190)
!3248 = !DILocation(line: 196, column: 47, scope: !3190)
!3249 = !DILocation(line: 197, column: 46, scope: !3190)
!3250 = !DILocation(line: 197, column: 5, scope: !3190)
!3251 = !DILocation(line: 197, column: 44, scope: !3190)
!3252 = !DILocation(line: 198, column: 46, scope: !3190)
!3253 = !DILocation(line: 198, column: 5, scope: !3190)
!3254 = !DILocation(line: 198, column: 44, scope: !3190)
!3255 = !DILocation(line: 199, column: 38, scope: !3190)
!3256 = !DILocation(line: 200, column: 5, scope: !3190)
!3257 = !DILocation(line: 200, column: 38, scope: !3190)
!3258 = !DILocation(line: 202, column: 20, scope: !3190)
!3259 = !DILocation(line: 203, column: 18, scope: !3190)
!3260 = !DILocation(line: 205, column: 18, scope: !3190)
!3261 = !DILocation(line: 207, column: 18, scope: !3190)
!3262 = !DILocation(line: 208, column: 18, scope: !3190)
!3263 = !DILocation(line: 209, column: 5, scope: !3190)
!3264 = !DILocation(line: 213, column: 1, scope: !3190)
!3265 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !3266, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !3123, !238, !451}
!3268 = !{!3269, !3270, !3271}
!3269 = !DILocalVariable(name: "u_port", arg: 1, scope: !3265, file: !103, line: 215, type: !3123)
!3270 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3265, file: !103, line: 215, type: !238)
!3271 = !DILocalVariable(name: "length", arg: 3, scope: !3265, file: !103, line: 215, type: !451)
!3272 = !DILocation(line: 0, scope: !3265)
!3273 = !DILocation(line: 217, column: 16, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3265, file: !103, line: 217, column: 9)
!3275 = !DILocation(line: 0, scope: !3274)
!3276 = !DILocation(line: 217, column: 9, scope: !3265)
!3277 = !DILocation(line: 218, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3274, file: !103, line: 217, column: 31)
!3279 = !DILocation(line: 219, column: 23, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !103, line: 218, column: 20)
!3281 = distinct !DILexicalBlock(scope: !3278, file: !103, line: 218, column: 13)
!3282 = !DILocation(line: 220, column: 9, scope: !3280)
!3283 = !DILocation(line: 221, column: 23, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !103, line: 220, column: 16)
!3285 = !DILocation(line: 221, column: 21, scope: !3284)
!3286 = !DILocation(line: 222, column: 24, scope: !3284)
!3287 = !DILocation(line: 222, column: 21, scope: !3284)
!3288 = !DILocation(line: 225, column: 13, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3274, file: !103, line: 224, column: 12)
!3290 = !DILocation(line: 226, column: 23, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !103, line: 225, column: 20)
!3292 = distinct !DILexicalBlock(scope: !3289, file: !103, line: 225, column: 13)
!3293 = !DILocation(line: 227, column: 9, scope: !3291)
!3294 = !DILocation(line: 228, column: 23, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !103, line: 227, column: 16)
!3296 = !DILocation(line: 228, column: 21, scope: !3295)
!3297 = !DILocation(line: 229, column: 24, scope: !3295)
!3298 = !DILocation(line: 229, column: 21, scope: !3295)
!3299 = !DILocation(line: 233, column: 5, scope: !3265)
!3300 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !3301, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !3123, !564, !92}
!3303 = !{!3304, !3305, !3306, !3307}
!3304 = !DILocalVariable(name: "u_port", arg: 1, scope: !3300, file: !103, line: 236, type: !3123)
!3305 = !DILocalVariable(name: "data", arg: 2, scope: !3300, file: !103, line: 236, type: !564)
!3306 = !DILocalVariable(name: "length", arg: 3, scope: !3300, file: !103, line: 236, type: !92)
!3307 = !DILocalVariable(name: "idx", scope: !3300, file: !103, line: 238, type: !80)
!3308 = !DILocation(line: 0, scope: !3300)
!3309 = !DILocation(line: 239, column: 23, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !103, line: 239, column: 5)
!3311 = distinct !DILexicalBlock(scope: !3300, file: !103, line: 239, column: 5)
!3312 = !DILocation(line: 239, column: 5, scope: !3311)
!3313 = !DILocation(line: 240, column: 13, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !103, line: 239, column: 40)
!3315 = !DILocation(line: 244, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !103, line: 242, column: 42)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !103, line: 242, column: 20)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !103, line: 240, column: 13)
!3319 = !DILocation(line: 0, scope: !3318)
!3320 = !DILocation(line: 239, column: 36, scope: !3310)
!3321 = distinct !{!3321, !3312, !3322}
!3322 = !DILocation(line: 246, column: 5, scope: !3311)
!3323 = !DILocation(line: 249, column: 1, scope: !3300)
!3324 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !3325, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3329)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !3123, !3327, !92}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!3329 = !{!3330, !3331, !3332, !3333}
!3330 = !DILocalVariable(name: "u_port", arg: 1, scope: !3324, file: !103, line: 251, type: !3123)
!3331 = !DILocalVariable(name: "data", arg: 2, scope: !3324, file: !103, line: 251, type: !3327)
!3332 = !DILocalVariable(name: "length", arg: 3, scope: !3324, file: !103, line: 251, type: !92)
!3333 = !DILocalVariable(name: "idx", scope: !3324, file: !103, line: 253, type: !80)
!3334 = !DILocation(line: 0, scope: !3324)
!3335 = !DILocation(line: 254, column: 23, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !103, line: 254, column: 5)
!3337 = distinct !DILexicalBlock(scope: !3324, file: !103, line: 254, column: 5)
!3338 = !DILocation(line: 254, column: 5, scope: !3337)
!3339 = !DILocation(line: 255, column: 13, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !103, line: 254, column: 40)
!3341 = !DILocation(line: 256, column: 61, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !103, line: 255, column: 35)
!3343 = distinct !DILexicalBlock(scope: !3340, file: !103, line: 255, column: 13)
!3344 = !DILocation(line: 256, column: 59, scope: !3342)
!3345 = !DILocation(line: 257, column: 9, scope: !3342)
!3346 = !DILocation(line: 258, column: 61, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !103, line: 257, column: 42)
!3348 = distinct !DILexicalBlock(scope: !3343, file: !103, line: 257, column: 20)
!3349 = !DILocation(line: 258, column: 59, scope: !3347)
!3350 = !DILocation(line: 259, column: 9, scope: !3347)
!3351 = !DILocation(line: 254, column: 36, scope: !3336)
!3352 = distinct !{!3352, !3338, !3353}
!3353 = !DILocation(line: 261, column: 5, scope: !3337)
!3354 = !DILocation(line: 264, column: 1, scope: !3324)
!3355 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !3356, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{null, !3123, !564, !92, !92}
!3358 = !{!3359, !3360, !3361, !3362}
!3359 = !DILocalVariable(name: "u_port", arg: 1, scope: !3355, file: !103, line: 266, type: !3123)
!3360 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3355, file: !103, line: 266, type: !564)
!3361 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3355, file: !103, line: 266, type: !92)
!3362 = !DILocalVariable(name: "threshold", arg: 4, scope: !3355, file: !103, line: 266, type: !92)
!3363 = !DILocation(line: 0, scope: !3355)
!3364 = !DILocation(line: 268, column: 9, scope: !3355)
!3365 = !DILocation(line: 274, column: 5, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !103, line: 271, column: 38)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !103, line: 271, column: 16)
!3368 = distinct !DILexicalBlock(scope: !3355, file: !103, line: 268, column: 9)
!3369 = !DILocation(line: 0, scope: !3368)
!3370 = !DILocation(line: 276, column: 1, scope: !3355)
!3371 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !3372, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !3123, !564, !92, !92, !92, !92}
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380}
!3375 = !DILocalVariable(name: "u_port", arg: 1, scope: !3371, file: !103, line: 278, type: !3123)
!3376 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3371, file: !103, line: 278, type: !564)
!3377 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3371, file: !103, line: 278, type: !92)
!3378 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3371, file: !103, line: 278, type: !92)
!3379 = !DILocalVariable(name: "threshold", arg: 5, scope: !3371, file: !103, line: 278, type: !92)
!3380 = !DILocalVariable(name: "timeout", arg: 6, scope: !3371, file: !103, line: 278, type: !92)
!3381 = !DILocation(line: 0, scope: !3371)
!3382 = !DILocation(line: 280, column: 9, scope: !3371)
!3383 = !DILocation(line: 286, column: 5, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !103, line: 283, column: 38)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !103, line: 283, column: 16)
!3386 = distinct !DILexicalBlock(scope: !3371, file: !103, line: 280, column: 9)
!3387 = !DILocation(line: 0, scope: !3386)
!3388 = !DILocation(line: 288, column: 1, scope: !3371)
!3389 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !3390, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{null, !3123, !523}
!3392 = !{!3393, !3394}
!3393 = !DILocalVariable(name: "u_port", arg: 1, scope: !3389, file: !103, line: 290, type: !3123)
!3394 = !DILocalVariable(name: "func", arg: 2, scope: !3389, file: !103, line: 290, type: !523)
!3395 = !DILocation(line: 0, scope: !3389)
!3396 = !DILocation(line: 292, column: 9, scope: !3389)
!3397 = !DILocation(line: 296, column: 5, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !103, line: 294, column: 38)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !103, line: 294, column: 16)
!3400 = distinct !DILexicalBlock(scope: !3389, file: !103, line: 292, column: 9)
!3401 = !DILocation(line: 0, scope: !3400)
!3402 = !DILocation(line: 298, column: 1, scope: !3389)
!3403 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !3390, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3404)
!3404 = !{!3405, !3406}
!3405 = !DILocalVariable(name: "u_port", arg: 1, scope: !3403, file: !103, line: 300, type: !3123)
!3406 = !DILocalVariable(name: "func", arg: 2, scope: !3403, file: !103, line: 300, type: !523)
!3407 = !DILocation(line: 0, scope: !3403)
!3408 = !DILocation(line: 302, column: 9, scope: !3403)
!3409 = !DILocation(line: 306, column: 5, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !103, line: 304, column: 38)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !103, line: 304, column: 16)
!3412 = distinct !DILexicalBlock(scope: !3403, file: !103, line: 302, column: 9)
!3413 = !DILocation(line: 0, scope: !3412)
!3414 = !DILocation(line: 308, column: 1, scope: !3403)
!3415 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !3177, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3416)
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DILocalVariable(name: "u_port", arg: 1, scope: !3415, file: !103, line: 310, type: !3123)
!3418 = !DILocalVariable(name: "base", scope: !3415, file: !103, line: 312, type: !7)
!3419 = !DILocalVariable(name: "EFR", scope: !3415, file: !103, line: 313, type: !438)
!3420 = !DILocalVariable(name: "LCR", scope: !3415, file: !103, line: 313, type: !438)
!3421 = !DILocation(line: 0, scope: !3415)
!3422 = !DILocation(line: 312, column: 25, scope: !3415)
!3423 = !DILocation(line: 315, column: 11, scope: !3415)
!3424 = !DILocation(line: 317, column: 33, scope: !3415)
!3425 = !DILocation(line: 318, column: 11, scope: !3415)
!3426 = !DILocation(line: 320, column: 35, scope: !3415)
!3427 = !DILocation(line: 320, column: 33, scope: !3415)
!3428 = !DILocation(line: 322, column: 5, scope: !3415)
!3429 = !DILocation(line: 322, column: 39, scope: !3415)
!3430 = !DILocation(line: 324, column: 33, scope: !3415)
!3431 = !DILocation(line: 325, column: 5, scope: !3415)
!3432 = !DILocation(line: 325, column: 33, scope: !3415)
!3433 = !DILocation(line: 327, column: 35, scope: !3415)
!3434 = !DILocation(line: 327, column: 33, scope: !3415)
!3435 = !DILocation(line: 328, column: 1, scope: !3415)
!3436 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !3437, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !3123, !267, !267, !267}
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3440 = !DILocalVariable(name: "u_port", arg: 1, scope: !3436, file: !103, line: 330, type: !3123)
!3441 = !DILocalVariable(name: "xon", arg: 2, scope: !3436, file: !103, line: 330, type: !267)
!3442 = !DILocalVariable(name: "xoff", arg: 3, scope: !3436, file: !103, line: 330, type: !267)
!3443 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3436, file: !103, line: 330, type: !267)
!3444 = !DILocalVariable(name: "base", scope: !3436, file: !103, line: 332, type: !7)
!3445 = !DILocalVariable(name: "EFR", scope: !3436, file: !103, line: 333, type: !438)
!3446 = !DILocalVariable(name: "LCR", scope: !3436, file: !103, line: 333, type: !438)
!3447 = !DILocation(line: 0, scope: !3436)
!3448 = !DILocation(line: 332, column: 25, scope: !3436)
!3449 = !DILocation(line: 335, column: 11, scope: !3436)
!3450 = !DILocation(line: 337, column: 33, scope: !3436)
!3451 = !DILocation(line: 338, column: 36, scope: !3436)
!3452 = !DILocation(line: 338, column: 5, scope: !3436)
!3453 = !DILocation(line: 338, column: 34, scope: !3436)
!3454 = !DILocation(line: 339, column: 5, scope: !3436)
!3455 = !DILocation(line: 339, column: 34, scope: !3436)
!3456 = !DILocation(line: 340, column: 37, scope: !3436)
!3457 = !DILocation(line: 340, column: 5, scope: !3436)
!3458 = !DILocation(line: 340, column: 35, scope: !3436)
!3459 = !DILocation(line: 341, column: 5, scope: !3436)
!3460 = !DILocation(line: 341, column: 35, scope: !3436)
!3461 = !DILocation(line: 343, column: 11, scope: !3436)
!3462 = !DILocation(line: 345, column: 35, scope: !3436)
!3463 = !DILocation(line: 345, column: 33, scope: !3436)
!3464 = !DILocation(line: 347, column: 35, scope: !3436)
!3465 = !DILocation(line: 347, column: 33, scope: !3436)
!3466 = !DILocation(line: 349, column: 43, scope: !3436)
!3467 = !DILocation(line: 349, column: 5, scope: !3436)
!3468 = !DILocation(line: 349, column: 41, scope: !3436)
!3469 = !DILocation(line: 350, column: 5, scope: !3436)
!3470 = !DILocation(line: 350, column: 39, scope: !3436)
!3471 = !DILocation(line: 351, column: 1, scope: !3436)
!3472 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !3177, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3473)
!3473 = !{!3474, !3475, !3476}
!3474 = !DILocalVariable(name: "u_port", arg: 1, scope: !3472, file: !103, line: 353, type: !3123)
!3475 = !DILocalVariable(name: "base", scope: !3472, file: !103, line: 355, type: !7)
!3476 = !DILocalVariable(name: "LCR", scope: !3472, file: !103, line: 356, type: !438)
!3477 = !DILocation(line: 0, scope: !3472)
!3478 = !DILocation(line: 355, column: 25, scope: !3472)
!3479 = !DILocation(line: 358, column: 11, scope: !3472)
!3480 = !DILocation(line: 360, column: 33, scope: !3472)
!3481 = !DILocation(line: 362, column: 5, scope: !3472)
!3482 = !DILocation(line: 362, column: 33, scope: !3472)
!3483 = !DILocation(line: 364, column: 33, scope: !3472)
!3484 = !DILocation(line: 366, column: 35, scope: !3472)
!3485 = !DILocation(line: 366, column: 33, scope: !3472)
!3486 = !DILocation(line: 367, column: 1, scope: !3472)
!3487 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !3177, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3488)
!3488 = !{!3489, !3490}
!3489 = !DILocalVariable(name: "u_port", arg: 1, scope: !3487, file: !103, line: 436, type: !3123)
!3490 = !DILocalVariable(name: "base", scope: !3487, file: !103, line: 438, type: !7)
!3491 = !DILocation(line: 0, scope: !3487)
!3492 = !DILocation(line: 438, column: 25, scope: !3487)
!3493 = !DILocation(line: 440, column: 5, scope: !3487)
!3494 = !DILocation(line: 440, column: 33, scope: !3487)
!3495 = !DILocation(line: 441, column: 5, scope: !3487)
!3496 = !DILocation(line: 441, column: 33, scope: !3487)
!3497 = !DILocation(line: 442, column: 5, scope: !3487)
!3498 = !DILocation(line: 442, column: 34, scope: !3487)
!3499 = !DILocation(line: 443, column: 5, scope: !3487)
!3500 = !DILocation(line: 443, column: 35, scope: !3487)
!3501 = !DILocation(line: 445, column: 33, scope: !3487)
!3502 = !DILocation(line: 446, column: 5, scope: !3487)
!3503 = !DILocation(line: 446, column: 33, scope: !3487)
!3504 = !DILocation(line: 447, column: 5, scope: !3487)
!3505 = !DILocation(line: 447, column: 33, scope: !3487)
!3506 = !DILocation(line: 449, column: 33, scope: !3487)
!3507 = !DILocation(line: 450, column: 33, scope: !3487)
!3508 = !DILocation(line: 451, column: 33, scope: !3487)
!3509 = !DILocation(line: 453, column: 33, scope: !3487)
!3510 = !DILocation(line: 454, column: 33, scope: !3487)
!3511 = !DILocation(line: 455, column: 33, scope: !3487)
!3512 = !DILocation(line: 457, column: 33, scope: !3487)
!3513 = !DILocation(line: 458, column: 5, scope: !3487)
!3514 = !DILocation(line: 458, column: 33, scope: !3487)
!3515 = !DILocation(line: 459, column: 5, scope: !3487)
!3516 = !DILocation(line: 459, column: 39, scope: !3487)
!3517 = !DILocation(line: 460, column: 5, scope: !3487)
!3518 = !DILocation(line: 460, column: 40, scope: !3487)
!3519 = !DILocation(line: 461, column: 5, scope: !3487)
!3520 = !DILocation(line: 461, column: 42, scope: !3487)
!3521 = !DILocation(line: 462, column: 5, scope: !3487)
!3522 = !DILocation(line: 462, column: 42, scope: !3487)
!3523 = !DILocation(line: 463, column: 5, scope: !3487)
!3524 = !DILocation(line: 463, column: 35, scope: !3487)
!3525 = !DILocation(line: 464, column: 5, scope: !3487)
!3526 = !DILocation(line: 464, column: 41, scope: !3487)
!3527 = !DILocation(line: 465, column: 5, scope: !3487)
!3528 = !DILocation(line: 465, column: 39, scope: !3487)
!3529 = !DILocation(line: 466, column: 5, scope: !3487)
!3530 = !DILocation(line: 466, column: 38, scope: !3487)
!3531 = !DILocation(line: 467, column: 5, scope: !3487)
!3532 = !DILocation(line: 467, column: 42, scope: !3487)
!3533 = !DILocation(line: 468, column: 5, scope: !3487)
!3534 = !DILocation(line: 468, column: 45, scope: !3487)
!3535 = !DILocation(line: 469, column: 5, scope: !3487)
!3536 = !DILocation(line: 469, column: 39, scope: !3487)
!3537 = !DILocation(line: 470, column: 5, scope: !3487)
!3538 = !DILocation(line: 470, column: 39, scope: !3487)
!3539 = !DILocation(line: 471, column: 5, scope: !3487)
!3540 = !DILocation(line: 471, column: 42, scope: !3487)
!3541 = !DILocation(line: 472, column: 1, scope: !3487)
!3542 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !3177, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3543)
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "u_port", arg: 1, scope: !3542, file: !103, line: 474, type: !3123)
!3545 = !DILocalVariable(name: "base", scope: !3542, file: !103, line: 476, type: !7)
!3546 = !DILocation(line: 0, scope: !3542)
!3547 = !DILocation(line: 476, column: 25, scope: !3542)
!3548 = !DILocation(line: 478, column: 5, scope: !3542)
!3549 = !DILocation(line: 478, column: 14, scope: !3542)
!3550 = !DILocation(line: 478, column: 42, scope: !3542)
!3551 = !DILocation(line: 478, column: 12, scope: !3542)
!3552 = distinct !{!3552, !3548, !3553}
!3553 = !DILocation(line: 478, column: 50, scope: !3542)
!3554 = !DILocation(line: 479, column: 1, scope: !3542)
!3555 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1072, file: !1072, line: 64, type: !3556, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !673, !13, !673, null}
!3558 = !{!3559, !3560, !3561, !3562, !3571}
!3559 = !DILocalVariable(name: "func", arg: 1, scope: !3555, file: !1072, line: 64, type: !673)
!3560 = !DILocalVariable(name: "line", arg: 2, scope: !3555, file: !1072, line: 64, type: !13)
!3561 = !DILocalVariable(name: "message", arg: 3, scope: !3555, file: !1072, line: 64, type: !673)
!3562 = !DILocalVariable(name: "ap", scope: !3555, file: !1072, line: 66, type: !3563)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3564, line: 46, baseType: !3565)
!3564 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3566, line: 32, baseType: !3567)
!3566 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1072, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3569)
!3569 = !{!3570}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3568, file: !1072, line: 66, baseType: !219, size: 32)
!3571 = !DILocalVariable(name: "mask", scope: !3555, file: !1072, line: 68, type: !92)
!3572 = !DILocation(line: 0, scope: !3555)
!3573 = !DILocation(line: 66, column: 5, scope: !3555)
!3574 = !DILocation(line: 66, column: 13, scope: !3555)
!3575 = !DILocation(line: 68, column: 5, scope: !3555)
!3576 = !DILocation(line: 69, column: 5, scope: !3555)
!3577 = !DILocation(line: 71, column: 5, scope: !3555)
!3578 = !DILocation(line: 72, column: 5, scope: !3555)
!3579 = !DILocation(line: 73, column: 5, scope: !3555)
!3580 = !DILocation(line: 75, column: 37, scope: !3555)
!3581 = !DILocation(line: 75, column: 5, scope: !3555)
!3582 = !DILocation(line: 77, column: 1, scope: !3555)
!3583 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1072, file: !1072, line: 78, type: !3556, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !3584)
!3584 = !{!3585, !3586, !3587, !3588, !3589}
!3585 = !DILocalVariable(name: "func", arg: 1, scope: !3583, file: !1072, line: 78, type: !673)
!3586 = !DILocalVariable(name: "line", arg: 2, scope: !3583, file: !1072, line: 78, type: !13)
!3587 = !DILocalVariable(name: "message", arg: 3, scope: !3583, file: !1072, line: 78, type: !673)
!3588 = !DILocalVariable(name: "ap", scope: !3583, file: !1072, line: 80, type: !3563)
!3589 = !DILocalVariable(name: "mask", scope: !3583, file: !1072, line: 82, type: !92)
!3590 = !DILocation(line: 0, scope: !3583)
!3591 = !DILocation(line: 80, column: 5, scope: !3583)
!3592 = !DILocation(line: 80, column: 13, scope: !3583)
!3593 = !DILocation(line: 82, column: 5, scope: !3583)
!3594 = !DILocation(line: 83, column: 5, scope: !3583)
!3595 = !DILocation(line: 85, column: 5, scope: !3583)
!3596 = !DILocation(line: 86, column: 5, scope: !3583)
!3597 = !DILocation(line: 87, column: 5, scope: !3583)
!3598 = !DILocation(line: 89, column: 37, scope: !3583)
!3599 = !DILocation(line: 89, column: 5, scope: !3583)
!3600 = !DILocation(line: 91, column: 1, scope: !3583)
!3601 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1072, file: !1072, line: 92, type: !3556, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607}
!3603 = !DILocalVariable(name: "func", arg: 1, scope: !3601, file: !1072, line: 92, type: !673)
!3604 = !DILocalVariable(name: "line", arg: 2, scope: !3601, file: !1072, line: 92, type: !13)
!3605 = !DILocalVariable(name: "message", arg: 3, scope: !3601, file: !1072, line: 92, type: !673)
!3606 = !DILocalVariable(name: "ap", scope: !3601, file: !1072, line: 94, type: !3563)
!3607 = !DILocalVariable(name: "mask", scope: !3601, file: !1072, line: 96, type: !92)
!3608 = !DILocation(line: 0, scope: !3601)
!3609 = !DILocation(line: 94, column: 5, scope: !3601)
!3610 = !DILocation(line: 94, column: 13, scope: !3601)
!3611 = !DILocation(line: 96, column: 5, scope: !3601)
!3612 = !DILocation(line: 97, column: 5, scope: !3601)
!3613 = !DILocation(line: 99, column: 5, scope: !3601)
!3614 = !DILocation(line: 100, column: 5, scope: !3601)
!3615 = !DILocation(line: 101, column: 5, scope: !3601)
!3616 = !DILocation(line: 103, column: 37, scope: !3601)
!3617 = !DILocation(line: 103, column: 5, scope: !3601)
!3618 = !DILocation(line: 105, column: 1, scope: !3601)
!3619 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1072, file: !1072, line: 106, type: !3556, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625}
!3621 = !DILocalVariable(name: "func", arg: 1, scope: !3619, file: !1072, line: 106, type: !673)
!3622 = !DILocalVariable(name: "line", arg: 2, scope: !3619, file: !1072, line: 106, type: !13)
!3623 = !DILocalVariable(name: "message", arg: 3, scope: !3619, file: !1072, line: 106, type: !673)
!3624 = !DILocalVariable(name: "ap", scope: !3619, file: !1072, line: 108, type: !3563)
!3625 = !DILocalVariable(name: "mask", scope: !3619, file: !1072, line: 110, type: !92)
!3626 = !DILocation(line: 0, scope: !3619)
!3627 = !DILocation(line: 108, column: 5, scope: !3619)
!3628 = !DILocation(line: 108, column: 13, scope: !3619)
!3629 = !DILocation(line: 110, column: 5, scope: !3619)
!3630 = !DILocation(line: 111, column: 5, scope: !3619)
!3631 = !DILocation(line: 113, column: 5, scope: !3619)
!3632 = !DILocation(line: 114, column: 5, scope: !3619)
!3633 = !DILocation(line: 115, column: 5, scope: !3619)
!3634 = !DILocation(line: 117, column: 37, scope: !3619)
!3635 = !DILocation(line: 117, column: 5, scope: !3619)
!3636 = !DILocation(line: 119, column: 1, scope: !3619)
!3637 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1072, file: !1072, line: 121, type: !3638, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !3642)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !673, !13, !673, !3640, !13, null}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3642 = !{!3643, !3644, !3645, !3646, !3647}
!3643 = !DILocalVariable(name: "func", arg: 1, scope: !3637, file: !1072, line: 121, type: !673)
!3644 = !DILocalVariable(name: "line", arg: 2, scope: !3637, file: !1072, line: 121, type: !13)
!3645 = !DILocalVariable(name: "message", arg: 3, scope: !3637, file: !1072, line: 121, type: !673)
!3646 = !DILocalVariable(name: "data", arg: 4, scope: !3637, file: !1072, line: 121, type: !3640)
!3647 = !DILocalVariable(name: "length", arg: 5, scope: !3637, file: !1072, line: 121, type: !13)
!3648 = !DILocation(line: 0, scope: !3637)
!3649 = !DILocation(line: 123, column: 1, scope: !3637)
!3650 = distinct !DISubprogram(name: "hal_cache_init", scope: !141, file: !141, line: 53, type: !3651, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3654)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!3653}
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !144, line: 172, baseType: !143)
!3654 = !{!3655, !3657}
!3655 = !DILocalVariable(name: "region", scope: !3650, file: !141, line: 55, type: !3656)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !144, line: 204, baseType: !154)
!3657 = !DILocalVariable(name: "irq_flag", scope: !3650, file: !141, line: 56, type: !92)
!3658 = !DILocation(line: 59, column: 16, scope: !3650)
!3659 = !DILocation(line: 0, scope: !3650)
!3660 = !DILocation(line: 62, column: 9, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3650, file: !141, line: 62, column: 9)
!3662 = !{i8 0, i8 2}
!3663 = !DILocation(line: 62, column: 9, scope: !3650)
!3664 = !DILocation(line: 64, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3661, file: !141, line: 62, column: 39)
!3666 = !DILocation(line: 66, column: 9, scope: !3665)
!3667 = !DILocation(line: 69, column: 24, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3661, file: !141, line: 67, column: 12)
!3669 = !DILocation(line: 72, column: 9, scope: !3668)
!3670 = !DILocation(line: 77, column: 5, scope: !3650)
!3671 = !DILocation(line: 80, column: 22, scope: !3650)
!3672 = !DILocation(line: 81, column: 28, scope: !3650)
!3673 = !DILocation(line: 84, column: 19, scope: !3650)
!3674 = !DILocation(line: 85, column: 23, scope: !3650)
!3675 = !DILocation(line: 88, column: 5, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3650, file: !141, line: 88, column: 5)
!3677 = !DILocation(line: 90, column: 9, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !141, line: 88, column: 81)
!3679 = distinct !DILexicalBlock(scope: !3676, file: !141, line: 88, column: 5)
!3680 = !DILocation(line: 90, column: 38, scope: !3678)
!3681 = !DILocation(line: 91, column: 9, scope: !3678)
!3682 = !DILocation(line: 91, column: 42, scope: !3678)
!3683 = !DILocation(line: 94, column: 45, scope: !3678)
!3684 = !DILocation(line: 94, column: 47, scope: !3678)
!3685 = !DILocation(line: 95, column: 49, scope: !3678)
!3686 = !DILocation(line: 95, column: 51, scope: !3678)
!3687 = !DILocation(line: 88, column: 77, scope: !3679)
!3688 = !DILocation(line: 88, column: 46, scope: !3679)
!3689 = distinct !{!3689, !3675, !3690}
!3690 = !DILocation(line: 96, column: 5, scope: !3676)
!3691 = !DILocation(line: 99, column: 1, scope: !3650)
!3692 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !141, file: !141, line: 327, type: !3651, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3693)
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "irq_flag", scope: !3692, file: !141, line: 329, type: !92)
!3695 = !DILocation(line: 332, column: 16, scope: !3692)
!3696 = !DILocation(line: 0, scope: !3692)
!3697 = !DILocation(line: 335, column: 21, scope: !3692)
!3698 = !DILocation(line: 336, column: 21, scope: !3692)
!3699 = !DILocation(line: 339, column: 21, scope: !3692)
!3700 = !DILocation(line: 340, column: 21, scope: !3692)
!3701 = !DILocation(line: 434, column: 3, scope: !3702, inlinedAt: !3704)
!3702 = distinct !DISubprogram(name: "__ISB", scope: !3703, file: !3703, line: 432, type: !75, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1338)
!3703 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/pwm_generate_waveform/GCC")
!3704 = distinct !DILocation(line: 343, column: 5, scope: !3692)
!3705 = !{i64 296582}
!3706 = !DILocation(line: 346, column: 5, scope: !3692)
!3707 = !DILocation(line: 348, column: 5, scope: !3692)
!3708 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !141, file: !141, line: 101, type: !3651, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3709)
!3709 = !{!3710}
!3710 = !DILocalVariable(name: "region", scope: !3708, file: !141, line: 103, type: !3656)
!3711 = !DILocation(line: 107, column: 5, scope: !3708)
!3712 = !DILocation(line: 110, column: 22, scope: !3708)
!3713 = !DILocation(line: 111, column: 28, scope: !3708)
!3714 = !DILocation(line: 114, column: 19, scope: !3708)
!3715 = !DILocation(line: 115, column: 23, scope: !3708)
!3716 = !DILocation(line: 0, scope: !3708)
!3717 = !DILocation(line: 118, column: 5, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3708, file: !141, line: 118, column: 5)
!3719 = !DILocation(line: 120, column: 9, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !141, line: 118, column: 81)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !141, line: 118, column: 5)
!3722 = !DILocation(line: 120, column: 38, scope: !3720)
!3723 = !DILocation(line: 121, column: 9, scope: !3720)
!3724 = !DILocation(line: 121, column: 42, scope: !3720)
!3725 = !DILocation(line: 124, column: 45, scope: !3720)
!3726 = !DILocation(line: 124, column: 47, scope: !3720)
!3727 = !DILocation(line: 125, column: 49, scope: !3720)
!3728 = !DILocation(line: 125, column: 51, scope: !3720)
!3729 = !DILocation(line: 118, column: 77, scope: !3721)
!3730 = !DILocation(line: 118, column: 46, scope: !3721)
!3731 = distinct !{!3731, !3717, !3732}
!3732 = !DILocation(line: 126, column: 5, scope: !3718)
!3733 = !DILocation(line: 129, column: 20, scope: !3708)
!3734 = !DILocation(line: 131, column: 5, scope: !3708)
!3735 = distinct !DISubprogram(name: "hal_cache_enable", scope: !141, file: !141, line: 134, type: !3651, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1338)
!3736 = !DILocation(line: 137, column: 45, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3735, file: !141, line: 137, column: 9)
!3738 = !DILocation(line: 137, column: 28, scope: !3737)
!3739 = !DILocation(line: 137, column: 9, scope: !3735)
!3740 = !DILocation(line: 142, column: 22, scope: !3735)
!3741 = !DILocation(line: 145, column: 28, scope: !3735)
!3742 = !DILocation(line: 145, column: 19, scope: !3735)
!3743 = !DILocation(line: 147, column: 5, scope: !3735)
!3744 = !DILocation(line: 0, scope: !3735)
!3745 = !DILocation(line: 148, column: 1, scope: !3735)
!3746 = distinct !DISubprogram(name: "hal_cache_disable", scope: !141, file: !141, line: 150, type: !3651, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3747)
!3747 = !{!3748}
!3748 = !DILocalVariable(name: "irq_flag", scope: !3746, file: !141, line: 152, type: !92)
!3749 = !DILocation(line: 155, column: 16, scope: !3746)
!3750 = !DILocation(line: 0, scope: !3746)
!3751 = !DILocation(line: 158, column: 16, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3746, file: !141, line: 158, column: 9)
!3753 = !DILocation(line: 158, column: 26, scope: !3752)
!3754 = !DILocation(line: 158, column: 9, scope: !3746)
!3755 = !DILocation(line: 160, column: 9, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !141, line: 158, column: 49)
!3757 = !DILocation(line: 161, column: 5, scope: !3756)
!3758 = !DILocation(line: 164, column: 22, scope: !3746)
!3759 = !DILocation(line: 167, column: 28, scope: !3746)
!3760 = !DILocation(line: 167, column: 19, scope: !3746)
!3761 = !DILocation(line: 170, column: 5, scope: !3746)
!3762 = !DILocation(line: 172, column: 5, scope: !3746)
!3763 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !141, file: !141, line: 175, type: !3764, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3766)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!3653, !3656}
!3766 = !{!3767}
!3767 = !DILocalVariable(name: "region", arg: 1, scope: !3763, file: !141, line: 175, type: !3656)
!3768 = !DILocation(line: 0, scope: !3763)
!3769 = !DILocation(line: 178, column: 16, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3763, file: !141, line: 178, column: 9)
!3771 = !DILocation(line: 178, column: 9, scope: !3763)
!3772 = !DILocation(line: 183, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3763, file: !141, line: 183, column: 9)
!3774 = !DILocation(line: 183, column: 38, scope: !3773)
!3775 = !DILocation(line: 183, column: 9, scope: !3763)
!3776 = !DILocation(line: 184, column: 38, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !141, line: 183, column: 62)
!3778 = !DILocation(line: 184, column: 32, scope: !3777)
!3779 = !DILocation(line: 190, column: 32, scope: !3763)
!3780 = !DILocation(line: 190, column: 23, scope: !3763)
!3781 = !DILocation(line: 192, column: 5, scope: !3763)
!3782 = !DILocation(line: 193, column: 1, scope: !3763)
!3783 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !141, file: !141, line: 195, type: !3764, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3784)
!3784 = !{!3785}
!3785 = !DILocalVariable(name: "region", arg: 1, scope: !3783, file: !141, line: 195, type: !3656)
!3786 = !DILocation(line: 0, scope: !3783)
!3787 = !DILocation(line: 198, column: 16, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3783, file: !141, line: 198, column: 9)
!3789 = !DILocation(line: 198, column: 9, scope: !3783)
!3790 = !DILocation(line: 203, column: 35, scope: !3783)
!3791 = !DILocation(line: 203, column: 31, scope: !3783)
!3792 = !DILocation(line: 203, column: 28, scope: !3783)
!3793 = !DILocation(line: 206, column: 32, scope: !3783)
!3794 = !DILocation(line: 206, column: 23, scope: !3783)
!3795 = !DILocation(line: 209, column: 41, scope: !3783)
!3796 = !DILocation(line: 209, column: 43, scope: !3783)
!3797 = !DILocation(line: 210, column: 45, scope: !3783)
!3798 = !DILocation(line: 210, column: 47, scope: !3783)
!3799 = !DILocation(line: 212, column: 5, scope: !3783)
!3800 = !DILocation(line: 213, column: 1, scope: !3783)
!3801 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !141, file: !141, line: 215, type: !3802, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3805)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!3653, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !144, line: 182, baseType: !173)
!3805 = !{!3806}
!3806 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3801, file: !141, line: 215, type: !3804)
!3807 = !DILocation(line: 0, scope: !3801)
!3808 = !DILocation(line: 218, column: 20, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !141, line: 218, column: 9)
!3810 = !DILocation(line: 218, column: 9, scope: !3801)
!3811 = !DILocation(line: 223, column: 22, scope: !3801)
!3812 = !DILocation(line: 224, column: 37, scope: !3801)
!3813 = !DILocation(line: 224, column: 22, scope: !3801)
!3814 = !DILocation(line: 227, column: 20, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3801, file: !141, line: 227, column: 9)
!3816 = !DILocation(line: 227, column: 9, scope: !3801)
!3817 = !DILocation(line: 228, column: 26, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !141, line: 227, column: 43)
!3819 = !DILocation(line: 229, column: 5, scope: !3818)
!3820 = !DILocation(line: 232, column: 28, scope: !3801)
!3821 = !DILocation(line: 232, column: 19, scope: !3801)
!3822 = !DILocation(line: 234, column: 5, scope: !3801)
!3823 = !DILocation(line: 235, column: 1, scope: !3801)
!3824 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !141, file: !141, line: 237, type: !3825, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3834)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3653, !3656, !3827}
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !144, line: 222, baseType: !3830)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 219, size: 64, elements: !3831)
!3831 = !{!3832, !3833}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3830, file: !144, line: 220, baseType: !92, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3830, file: !144, line: 221, baseType: !92, size: 32, offset: 32)
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "region", arg: 1, scope: !3824, file: !141, line: 237, type: !3656)
!3836 = !DILocalVariable(name: "region_config", arg: 2, scope: !3824, file: !141, line: 237, type: !3827)
!3837 = !DILocation(line: 0, scope: !3824)
!3838 = !DILocation(line: 240, column: 16, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3824, file: !141, line: 240, column: 9)
!3840 = !DILocation(line: 240, column: 9, scope: !3824)
!3841 = !DILocation(line: 245, column: 23, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3824, file: !141, line: 245, column: 9)
!3843 = !DILocation(line: 245, column: 9, scope: !3824)
!3844 = !DILocation(line: 250, column: 24, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3824, file: !141, line: 250, column: 9)
!3846 = !DILocation(line: 250, column: 45, scope: !3845)
!3847 = !DILocation(line: 250, column: 9, scope: !3824)
!3848 = !DILocation(line: 251, column: 9, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !141, line: 250, column: 81)
!3850 = !DILocation(line: 256, column: 24, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3824, file: !141, line: 256, column: 9)
!3852 = !DILocation(line: 256, column: 42, scope: !3851)
!3853 = !DILocation(line: 256, column: 9, scope: !3824)
!3854 = !DILocation(line: 257, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !141, line: 256, column: 78)
!3856 = !DILocation(line: 262, column: 5, scope: !3824)
!3857 = !DILocation(line: 262, column: 34, scope: !3824)
!3858 = !DILocation(line: 263, column: 55, scope: !3824)
!3859 = !DILocation(line: 263, column: 93, scope: !3824)
!3860 = !DILocation(line: 263, column: 76, scope: !3824)
!3861 = !DILocation(line: 263, column: 5, scope: !3824)
!3862 = !DILocation(line: 263, column: 38, scope: !3824)
!3863 = !DILocation(line: 266, column: 34, scope: !3824)
!3864 = !DILocation(line: 269, column: 45, scope: !3824)
!3865 = !DILocation(line: 269, column: 41, scope: !3824)
!3866 = !DILocation(line: 269, column: 43, scope: !3824)
!3867 = !DILocation(line: 270, column: 49, scope: !3824)
!3868 = !DILocation(line: 270, column: 45, scope: !3824)
!3869 = !DILocation(line: 270, column: 47, scope: !3824)
!3870 = !DILocation(line: 272, column: 5, scope: !3824)
!3871 = !DILocation(line: 273, column: 1, scope: !3824)
!3872 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !141, file: !141, line: 275, type: !3873, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!3653, !92}
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "address", arg: 1, scope: !3872, file: !141, line: 275, type: !92)
!3877 = !DILocalVariable(name: "irq_flag", scope: !3872, file: !141, line: 277, type: !92)
!3878 = !DILocation(line: 0, scope: !3872)
!3879 = !DILocation(line: 280, column: 17, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3872, file: !141, line: 280, column: 9)
!3881 = !DILocation(line: 280, column: 9, scope: !3872)
!3882 = !DILocation(line: 284, column: 16, scope: !3872)
!3883 = !DILocation(line: 287, column: 32, scope: !3872)
!3884 = !DILocation(line: 287, column: 21, scope: !3872)
!3885 = !DILocation(line: 288, column: 21, scope: !3872)
!3886 = !DILocation(line: 434, column: 3, scope: !3702, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 291, column: 5, scope: !3872)
!3888 = !DILocation(line: 294, column: 5, scope: !3872)
!3889 = !DILocation(line: 296, column: 5, scope: !3872)
!3890 = !DILocation(line: 297, column: 1, scope: !3872)
!3891 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !141, file: !141, line: 299, type: !3892, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!3653, !92, !92}
!3894 = !{!3895, !3896, !3897, !3898}
!3895 = !DILocalVariable(name: "address", arg: 1, scope: !3891, file: !141, line: 299, type: !92)
!3896 = !DILocalVariable(name: "length", arg: 2, scope: !3891, file: !141, line: 299, type: !92)
!3897 = !DILocalVariable(name: "irq_flag", scope: !3891, file: !141, line: 301, type: !92)
!3898 = !DILocalVariable(name: "end_address", scope: !3891, file: !141, line: 302, type: !92)
!3899 = !DILocation(line: 0, scope: !3891)
!3900 = !DILocation(line: 302, column: 36, scope: !3891)
!3901 = !DILocation(line: 305, column: 47, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3891, file: !141, line: 305, column: 9)
!3903 = !DILocation(line: 310, column: 16, scope: !3891)
!3904 = !DILocation(line: 313, column: 20, scope: !3891)
!3905 = !DILocation(line: 313, column: 5, scope: !3891)
!3906 = !DILocation(line: 314, column: 9, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3891, file: !141, line: 313, column: 35)
!3908 = !DILocation(line: 315, column: 17, scope: !3907)
!3909 = distinct !{!3909, !3905, !3910}
!3910 = !DILocation(line: 316, column: 5, scope: !3891)
!3911 = !DILocation(line: 434, column: 3, scope: !3702, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 319, column: 5, scope: !3891)
!3913 = !DILocation(line: 322, column: 5, scope: !3891)
!3914 = !DILocation(line: 324, column: 5, scope: !3891)
!3915 = !DILocation(line: 325, column: 1, scope: !3891)
!3916 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !141, file: !141, line: 351, type: !3873, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3917)
!3917 = !{!3918, !3919}
!3918 = !DILocalVariable(name: "address", arg: 1, scope: !3916, file: !141, line: 351, type: !92)
!3919 = !DILocalVariable(name: "irq_flag", scope: !3916, file: !141, line: 353, type: !92)
!3920 = !DILocation(line: 0, scope: !3916)
!3921 = !DILocation(line: 356, column: 17, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3916, file: !141, line: 356, column: 9)
!3923 = !DILocation(line: 356, column: 9, scope: !3916)
!3924 = !DILocation(line: 361, column: 16, scope: !3916)
!3925 = !DILocation(line: 364, column: 32, scope: !3916)
!3926 = !DILocation(line: 364, column: 21, scope: !3916)
!3927 = !DILocation(line: 365, column: 21, scope: !3916)
!3928 = !DILocation(line: 434, column: 3, scope: !3702, inlinedAt: !3929)
!3929 = distinct !DILocation(line: 368, column: 5, scope: !3916)
!3930 = !DILocation(line: 371, column: 5, scope: !3916)
!3931 = !DILocation(line: 373, column: 5, scope: !3916)
!3932 = !DILocation(line: 374, column: 1, scope: !3916)
!3933 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !141, file: !141, line: 376, type: !3892, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3934)
!3934 = !{!3935, !3936, !3937, !3938}
!3935 = !DILocalVariable(name: "address", arg: 1, scope: !3933, file: !141, line: 376, type: !92)
!3936 = !DILocalVariable(name: "length", arg: 2, scope: !3933, file: !141, line: 376, type: !92)
!3937 = !DILocalVariable(name: "irq_flag", scope: !3933, file: !141, line: 378, type: !92)
!3938 = !DILocalVariable(name: "end_address", scope: !3933, file: !141, line: 379, type: !92)
!3939 = !DILocation(line: 0, scope: !3933)
!3940 = !DILocation(line: 379, column: 36, scope: !3933)
!3941 = !DILocation(line: 382, column: 47, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3933, file: !141, line: 382, column: 9)
!3943 = !DILocation(line: 387, column: 16, scope: !3933)
!3944 = !DILocation(line: 390, column: 20, scope: !3933)
!3945 = !DILocation(line: 390, column: 5, scope: !3933)
!3946 = !DILocation(line: 391, column: 9, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3933, file: !141, line: 390, column: 35)
!3948 = !DILocation(line: 392, column: 17, scope: !3947)
!3949 = distinct !{!3949, !3945, !3950}
!3950 = !DILocation(line: 393, column: 5, scope: !3933)
!3951 = !DILocation(line: 434, column: 3, scope: !3702, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 396, column: 5, scope: !3933)
!3953 = !DILocation(line: 399, column: 5, scope: !3933)
!3954 = !DILocation(line: 401, column: 5, scope: !3933)
!3955 = !DILocation(line: 402, column: 1, scope: !3933)
!3956 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !141, file: !141, line: 404, type: !3651, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3957)
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "irq_flag", scope: !3956, file: !141, line: 406, type: !92)
!3959 = !DILocation(line: 409, column: 16, scope: !3956)
!3960 = !DILocation(line: 0, scope: !3956)
!3961 = !DILocation(line: 412, column: 21, scope: !3956)
!3962 = !DILocation(line: 413, column: 21, scope: !3956)
!3963 = !DILocation(line: 434, column: 3, scope: !3702, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 416, column: 5, scope: !3956)
!3965 = !DILocation(line: 419, column: 5, scope: !3956)
!3966 = !DILocation(line: 421, column: 5, scope: !3956)
!3967 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !141, file: !141, line: 424, type: !3968, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3970)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!222, !92}
!3970 = !{!3971, !3972}
!3971 = !DILocalVariable(name: "address", arg: 1, scope: !3967, file: !141, line: 424, type: !92)
!3972 = !DILocalVariable(name: "region", scope: !3967, file: !141, line: 426, type: !3656)
!3973 = !DILocation(line: 0, scope: !3967)
!3974 = !DILocation(line: 429, column: 18, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3967, file: !141, line: 429, column: 9)
!3976 = !DILocation(line: 429, column: 28, scope: !3975)
!3977 = !DILocation(line: 429, column: 9, scope: !3967)
!3978 = !DILocation(line: 435, column: 20, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !141, line: 435, column: 13)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !141, line: 433, column: 81)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !141, line: 433, column: 5)
!3982 = distinct !DILexicalBlock(scope: !3967, file: !141, line: 433, column: 5)
!3983 = !DILocation(line: 435, column: 41, scope: !3979)
!3984 = !DILocation(line: 435, column: 36, scope: !3979)
!3985 = !DILocation(line: 435, column: 13, scope: !3980)
!3986 = !DILocation(line: 436, column: 30, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !141, line: 436, column: 17)
!3988 = distinct !DILexicalBlock(scope: !3979, file: !141, line: 435, column: 53)
!3989 = !DILocation(line: 436, column: 59, scope: !3987)
!3990 = !DILocation(line: 436, column: 26, scope: !3987)
!3991 = !DILocation(line: 436, column: 85, scope: !3987)
!3992 = !DILocation(line: 436, column: 99, scope: !3987)
!3993 = !DILocation(line: 436, column: 97, scope: !3987)
!3994 = !DILocation(line: 436, column: 17, scope: !3988)
!3995 = !DILocation(line: 433, column: 77, scope: !3981)
!3996 = !DILocation(line: 433, column: 46, scope: !3981)
!3997 = !DILocation(line: 433, column: 5, scope: !3982)
!3998 = distinct !{!3998, !3997, !3999}
!3999 = !DILocation(line: 440, column: 5, scope: !3982)
!4000 = !DILocation(line: 442, column: 1, scope: !3967)
!4001 = distinct !DISubprogram(name: "hal_nvic_init", scope: !226, file: !226, line: 60, type: !4002, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1338)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!4004}
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !229, line: 158, baseType: !228)
!4005 = !DILocation(line: 62, column: 5, scope: !4001)
!4006 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !226, file: !226, line: 65, type: !4007, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4009)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!4004, !237}
!4009 = !{!4010, !4011}
!4010 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4006, file: !226, line: 65, type: !237)
!4011 = !DILocalVariable(name: "status", scope: !4006, file: !226, line: 67, type: !4004)
!4012 = !DILocation(line: 0, scope: !4006)
!4013 = !DILocation(line: 69, column: 40, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4006, file: !226, line: 69, column: 9)
!4015 = !DILocation(line: 73, column: 9, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4014, file: !226, line: 72, column: 12)
!4017 = !DILocation(line: 77, column: 5, scope: !4006)
!4018 = !DILocation(line: 78, column: 1, scope: !4006)
!4019 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !242, file: !242, line: 1494, type: !4020, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !61}
!4022 = !{!4023}
!4023 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4019, file: !242, line: 1494, type: !61)
!4024 = !DILocation(line: 0, scope: !4019)
!4025 = !DILocation(line: 1497, column: 91, scope: !4019)
!4026 = !DILocation(line: 1497, column: 61, scope: !4019)
!4027 = !DILocation(line: 1497, column: 40, scope: !4019)
!4028 = !DILocation(line: 1497, column: 3, scope: !4019)
!4029 = !DILocation(line: 1497, column: 46, scope: !4019)
!4030 = !DILocation(line: 1498, column: 1, scope: !4019)
!4031 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !226, file: !226, line: 80, type: !4007, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4032)
!4032 = !{!4033, !4034}
!4033 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4031, file: !226, line: 80, type: !237)
!4034 = !DILocalVariable(name: "status", scope: !4031, file: !226, line: 82, type: !4004)
!4035 = !DILocation(line: 0, scope: !4031)
!4036 = !DILocation(line: 84, column: 40, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4031, file: !226, line: 84, column: 9)
!4038 = !DILocation(line: 88, column: 9, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4037, file: !226, line: 87, column: 12)
!4040 = !DILocation(line: 92, column: 5, scope: !4031)
!4041 = !DILocation(line: 93, column: 1, scope: !4031)
!4042 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !242, file: !242, line: 1507, type: !4020, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4043)
!4043 = !{!4044}
!4044 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4042, file: !242, line: 1507, type: !61)
!4045 = !DILocation(line: 0, scope: !4042)
!4046 = !DILocation(line: 1509, column: 65, scope: !4042)
!4047 = !DILocation(line: 1509, column: 44, scope: !4042)
!4048 = !DILocation(line: 1509, column: 32, scope: !4042)
!4049 = !DILocation(line: 1509, column: 3, scope: !4042)
!4050 = !DILocation(line: 1509, column: 39, scope: !4042)
!4051 = !DILocation(line: 1510, column: 1, scope: !4042)
!4052 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !226, file: !226, line: 95, type: !4053, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!92, !237}
!4055 = !{!4056, !4057}
!4056 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4052, file: !226, line: 95, type: !237)
!4057 = !DILocalVariable(name: "ret", scope: !4052, file: !226, line: 97, type: !92)
!4058 = !DILocation(line: 0, scope: !4052)
!4059 = !DILocation(line: 99, column: 40, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4052, file: !226, line: 99, column: 9)
!4061 = !DILocation(line: 102, column: 15, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4060, file: !226, line: 101, column: 12)
!4063 = !DILocation(line: 105, column: 5, scope: !4052)
!4064 = !DILocation(line: 106, column: 1, scope: !4052)
!4065 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !242, file: !242, line: 1523, type: !4066, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!92, !61}
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4065, file: !242, line: 1523, type: !61)
!4070 = !DILocation(line: 0, scope: !4065)
!4071 = !DILocation(line: 1525, column: 51, scope: !4065)
!4072 = !DILocation(line: 1525, column: 23, scope: !4065)
!4073 = !DILocation(line: 1525, column: 83, scope: !4065)
!4074 = !DILocation(line: 1525, column: 22, scope: !4065)
!4075 = !DILocation(line: 1525, column: 3, scope: !4065)
!4076 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !226, file: !226, line: 108, type: !4007, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4077)
!4077 = !{!4078, !4079}
!4078 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4076, file: !226, line: 108, type: !237)
!4079 = !DILocalVariable(name: "status", scope: !4076, file: !226, line: 110, type: !4004)
!4080 = !DILocation(line: 0, scope: !4076)
!4081 = !DILocation(line: 112, column: 40, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4076, file: !226, line: 112, column: 9)
!4083 = !DILocation(line: 116, column: 9, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4082, file: !226, line: 115, column: 12)
!4085 = !DILocation(line: 120, column: 5, scope: !4076)
!4086 = !DILocation(line: 121, column: 1, scope: !4076)
!4087 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !242, file: !242, line: 1535, type: !4020, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4088)
!4088 = !{!4089}
!4089 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4087, file: !242, line: 1535, type: !61)
!4090 = !DILocation(line: 0, scope: !4087)
!4091 = !DILocation(line: 1537, column: 65, scope: !4087)
!4092 = !DILocation(line: 1537, column: 44, scope: !4087)
!4093 = !DILocation(line: 1537, column: 32, scope: !4087)
!4094 = !DILocation(line: 1537, column: 3, scope: !4087)
!4095 = !DILocation(line: 1537, column: 39, scope: !4087)
!4096 = !DILocation(line: 1538, column: 1, scope: !4087)
!4097 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !226, file: !226, line: 123, type: !4007, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4098)
!4098 = !{!4099, !4100}
!4099 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4097, file: !226, line: 123, type: !237)
!4100 = !DILocalVariable(name: "status", scope: !4097, file: !226, line: 125, type: !4004)
!4101 = !DILocation(line: 0, scope: !4097)
!4102 = !DILocation(line: 127, column: 40, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4097, file: !226, line: 127, column: 9)
!4104 = !DILocation(line: 131, column: 9, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4103, file: !226, line: 130, column: 12)
!4106 = !DILocation(line: 135, column: 5, scope: !4097)
!4107 = !DILocation(line: 136, column: 1, scope: !4097)
!4108 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !242, file: !242, line: 1547, type: !4020, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4109)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4108, file: !242, line: 1547, type: !61)
!4111 = !DILocation(line: 0, scope: !4108)
!4112 = !DILocation(line: 1549, column: 65, scope: !4108)
!4113 = !DILocation(line: 1549, column: 44, scope: !4108)
!4114 = !DILocation(line: 1549, column: 32, scope: !4108)
!4115 = !DILocation(line: 1549, column: 3, scope: !4108)
!4116 = !DILocation(line: 1549, column: 39, scope: !4108)
!4117 = !DILocation(line: 1550, column: 1, scope: !4108)
!4118 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !226, file: !226, line: 138, type: !4119, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4121)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!4004, !237, !92}
!4121 = !{!4122, !4123, !4124}
!4122 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4118, file: !226, line: 138, type: !237)
!4123 = !DILocalVariable(name: "priority", arg: 2, scope: !4118, file: !226, line: 138, type: !92)
!4124 = !DILocalVariable(name: "status", scope: !4118, file: !226, line: 140, type: !4004)
!4125 = !DILocation(line: 0, scope: !4118)
!4126 = !DILocation(line: 142, column: 40, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4118, file: !226, line: 142, column: 9)
!4128 = !DILocation(line: 146, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4127, file: !226, line: 145, column: 12)
!4130 = !DILocation(line: 150, column: 5, scope: !4118)
!4131 = !DILocation(line: 151, column: 1, scope: !4118)
!4132 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !242, file: !242, line: 1577, type: !4133, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !61, !92}
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4132, file: !242, line: 1577, type: !61)
!4137 = !DILocalVariable(name: "priority", arg: 2, scope: !4132, file: !242, line: 1577, type: !92)
!4138 = !DILocation(line: 0, scope: !4132)
!4139 = !DILocation(line: 1582, column: 34, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4141, file: !242, line: 1581, column: 8)
!4141 = distinct !DILexicalBlock(scope: !4132, file: !242, line: 1579, column: 6)
!4142 = !DILocation(line: 1582, column: 5, scope: !4140)
!4143 = !DILocation(line: 1582, column: 32, scope: !4140)
!4144 = !DILocation(line: 1583, column: 1, scope: !4132)
!4145 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !226, file: !226, line: 153, type: !4053, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4146)
!4146 = !{!4147, !4148}
!4147 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4145, file: !226, line: 153, type: !237)
!4148 = !DILocalVariable(name: "ret", scope: !4145, file: !226, line: 155, type: !92)
!4149 = !DILocation(line: 0, scope: !4145)
!4150 = !DILocation(line: 157, column: 40, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4145, file: !226, line: 157, column: 9)
!4152 = !DILocation(line: 160, column: 15, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4151, file: !226, line: 159, column: 12)
!4154 = !DILocation(line: 163, column: 5, scope: !4145)
!4155 = !DILocation(line: 164, column: 1, scope: !4145)
!4156 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !242, file: !242, line: 1597, type: !4066, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4157)
!4157 = !{!4158}
!4158 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4156, file: !242, line: 1597, type: !61)
!4159 = !DILocation(line: 0, scope: !4156)
!4160 = !DILocation(line: 1603, column: 23, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !242, line: 1602, column: 8)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !242, line: 1600, column: 6)
!4163 = !DILocation(line: 1603, column: 60, scope: !4161)
!4164 = !DILocation(line: 1604, column: 1, scope: !4156)
!4165 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !226, file: !226, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1338)
!4166 = !DILocation(line: 175, column: 1, scope: !4165)
!4167 = distinct !DISubprogram(name: "isrC_main", scope: !226, file: !226, line: 178, type: !4002, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4168)
!4168 = !{!4169, !4170}
!4169 = !DILocalVariable(name: "status", scope: !4167, file: !226, line: 180, type: !4004)
!4170 = !DILocalVariable(name: "irq_number", scope: !4167, file: !226, line: 181, type: !237)
!4171 = !DILocation(line: 0, scope: !4167)
!4172 = !DILocation(line: 188, column: 34, scope: !4167)
!4173 = !DILocation(line: 189, column: 24, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4167, file: !226, line: 189, column: 9)
!4175 = !DILocation(line: 192, column: 48, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4174, file: !226, line: 192, column: 16)
!4177 = !DILocation(line: 192, column: 62, scope: !4176)
!4178 = !DILocation(line: 192, column: 16, scope: !4174)
!4179 = !DILocation(line: 194, column: 9, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4176, file: !226, line: 192, column: 71)
!4181 = !DILocation(line: 195, column: 9, scope: !4180)
!4182 = !DILocation(line: 197, column: 55, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4176, file: !226, line: 196, column: 12)
!4184 = !DILocation(line: 197, column: 41, scope: !4183)
!4185 = !DILocation(line: 197, column: 53, scope: !4183)
!4186 = !DILocation(line: 198, column: 41, scope: !4183)
!4187 = !DILocation(line: 198, column: 9, scope: !4183)
!4188 = !DILocation(line: 202, column: 5, scope: !4167)
!4189 = !DILocation(line: 203, column: 1, scope: !4167)
!4190 = distinct !DISubprogram(name: "get_current_irq", scope: !226, file: !226, line: 166, type: !2468, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4191)
!4191 = !{!4192}
!4192 = !DILocalVariable(name: "irq_num", scope: !4190, file: !226, line: 168, type: !92)
!4193 = !DILocation(line: 168, column: 31, scope: !4190)
!4194 = !DILocation(line: 168, column: 36, scope: !4190)
!4195 = !DILocation(line: 0, scope: !4190)
!4196 = !DILocation(line: 169, column: 21, scope: !4190)
!4197 = !DILocation(line: 169, column: 5, scope: !4190)
!4198 = distinct !DISubprogram(name: "get_pending_irq", scope: !226, file: !226, line: 55, type: !2468, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !1338)
!4199 = !DILocation(line: 57, column: 19, scope: !4198)
!4200 = !DILocation(line: 57, column: 51, scope: !4198)
!4201 = !DILocation(line: 57, column: 5, scope: !4198)
!4202 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !226, file: !226, line: 205, type: !4203, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4206)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!4004, !237, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !229, line: 175, baseType: !321)
!4206 = !{!4207, !4208, !4209}
!4207 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4202, file: !226, line: 205, type: !237)
!4208 = !DILocalVariable(name: "callback", arg: 2, scope: !4202, file: !226, line: 205, type: !4205)
!4209 = !DILocalVariable(name: "mask", scope: !4202, file: !226, line: 207, type: !92)
!4210 = !DILocation(line: 0, scope: !4202)
!4211 = !DILocation(line: 209, column: 24, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4202, file: !226, line: 209, column: 9)
!4213 = !DILocation(line: 213, column: 12, scope: !4202)
!4214 = !DILocation(line: 214, column: 5, scope: !4202)
!4215 = !DILocation(line: 215, column: 37, scope: !4202)
!4216 = !DILocation(line: 215, column: 51, scope: !4202)
!4217 = !DILocation(line: 216, column: 37, scope: !4202)
!4218 = !DILocation(line: 216, column: 49, scope: !4202)
!4219 = !DILocation(line: 217, column: 5, scope: !4202)
!4220 = !DILocation(line: 219, column: 5, scope: !4202)
!4221 = !DILocation(line: 220, column: 1, scope: !4202)
!4222 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !226, file: !226, line: 222, type: !4223, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!4004, !451}
!4225 = !{!4226}
!4226 = !DILocalVariable(name: "mask", arg: 1, scope: !4222, file: !226, line: 222, type: !451)
!4227 = !DILocation(line: 0, scope: !4222)
!4228 = !DILocation(line: 224, column: 13, scope: !4222)
!4229 = !DILocation(line: 224, column: 11, scope: !4222)
!4230 = !DILocation(line: 225, column: 5, scope: !4222)
!4231 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !226, file: !226, line: 228, type: !4232, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !225, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!4004, !92}
!4234 = !{!4235}
!4235 = !DILocalVariable(name: "mask", arg: 1, scope: !4231, file: !226, line: 228, type: !92)
!4236 = !DILocation(line: 0, scope: !4231)
!4237 = !DILocation(line: 230, column: 5, scope: !4231)
!4238 = !DILocation(line: 231, column: 5, scope: !4231)
!4239 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1074, file: !1074, line: 50, type: !4240, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4244)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!4242, !4243, !267}
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1077, line: 238, baseType: !1076)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !341, line: 281, baseType: !1083)
!4244 = !{!4245, !4246, !4247}
!4245 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4239, file: !1074, line: 50, type: !4243)
!4246 = !DILocalVariable(name: "function_index", arg: 2, scope: !4239, file: !1074, line: 50, type: !267)
!4247 = !DILocalVariable(name: "ret_value", scope: !4239, file: !1074, line: 52, type: !238)
!4248 = !DILocation(line: 0, scope: !4239)
!4249 = !DILocation(line: 53, column: 18, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4239, file: !1074, line: 53, column: 9)
!4251 = !DILocation(line: 53, column: 9, scope: !4239)
!4252 = !DILocation(line: 57, column: 24, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4239, file: !1074, line: 57, column: 9)
!4254 = !DILocation(line: 57, column: 9, scope: !4239)
!4255 = !DILocation(line: 57, column: 9, scope: !4253)
!4256 = !DILocation(line: 60, column: 17, scope: !4239)
!4257 = !DILocation(line: 61, column: 12, scope: !4239)
!4258 = !DILocation(line: 61, column: 5, scope: !4239)
!4259 = !DILocation(line: 62, column: 1, scope: !4239)
!4260 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1074, file: !1074, line: 64, type: !4261, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4264)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!4263, !4243}
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1077, line: 229, baseType: !1114)
!4264 = !{!4265}
!4265 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4260, file: !1074, line: 64, type: !4243)
!4266 = !DILocation(line: 0, scope: !4260)
!4267 = !DILocation(line: 66, column: 5, scope: !4260)
!4268 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1074, file: !1074, line: 69, type: !4261, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4269)
!4269 = !{!4270}
!4270 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4268, file: !1074, line: 69, type: !4243)
!4271 = !DILocation(line: 0, scope: !4268)
!4272 = !DILocation(line: 71, column: 5, scope: !4268)
!4273 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1074, file: !1074, line: 74, type: !4274, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4277)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!4263, !4243, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 32)
!4277 = !{!4278, !4279, !4280}
!4278 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4273, file: !1074, line: 74, type: !4243)
!4279 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4273, file: !1074, line: 74, type: !4276)
!4280 = !DILocalVariable(name: "status", scope: !4273, file: !1074, line: 76, type: !4281)
!4281 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1135, line: 67, baseType: !4282)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 62, size: 64, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4287}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4282, file: !1135, line: 63, baseType: !92, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4282, file: !1135, line: 64, baseType: !267, size: 8, offset: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4282, file: !1135, line: 65, baseType: !267, size: 8, offset: 40)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4282, file: !1135, line: 66, baseType: !267, size: 8, offset: 48)
!4288 = !DILocation(line: 0, scope: !4273)
!4289 = !DILocation(line: 77, column: 14, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4273, file: !1074, line: 77, column: 9)
!4291 = !DILocation(line: 77, column: 9, scope: !4273)
!4292 = !DILocation(line: 81, column: 18, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4273, file: !1074, line: 81, column: 9)
!4294 = !DILocation(line: 81, column: 9, scope: !4273)
!4295 = !DILocation(line: 85, column: 14, scope: !4273)
!4296 = !DILocation(line: 86, column: 18, scope: !4273)
!4297 = !DILocation(line: 86, column: 16, scope: !4273)
!4298 = !DILocation(line: 87, column: 5, scope: !4273)
!4299 = !DILocation(line: 88, column: 1, scope: !4273)
!4300 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1074, file: !1074, line: 90, type: !4301, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!4263, !4243, !1141}
!4303 = !{!4304, !4305, !4306}
!4304 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4300, file: !1074, line: 90, type: !4243)
!4305 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4300, file: !1074, line: 90, type: !1141)
!4306 = !DILocalVariable(name: "ret_value", scope: !4300, file: !1074, line: 92, type: !238)
!4307 = !DILocation(line: 0, scope: !4300)
!4308 = !DILocation(line: 93, column: 18, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4300, file: !1074, line: 93, column: 9)
!4310 = !DILocation(line: 93, column: 9, scope: !4300)
!4311 = !DILocation(line: 97, column: 60, scope: !4300)
!4312 = !DILocation(line: 97, column: 17, scope: !4300)
!4313 = !DILocation(line: 98, column: 12, scope: !4300)
!4314 = !DILocation(line: 98, column: 5, scope: !4300)
!4315 = !DILocation(line: 99, column: 1, scope: !4300)
!4316 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1074, file: !1074, line: 101, type: !4274, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4317)
!4317 = !{!4318, !4319, !4320}
!4318 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4316, file: !1074, line: 101, type: !4243)
!4319 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4316, file: !1074, line: 101, type: !4276)
!4320 = !DILocalVariable(name: "status", scope: !4316, file: !1074, line: 103, type: !4281)
!4321 = !DILocation(line: 0, scope: !4316)
!4322 = !DILocation(line: 104, column: 18, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4316, file: !1074, line: 104, column: 9)
!4324 = !DILocation(line: 104, column: 9, scope: !4316)
!4325 = !DILocation(line: 108, column: 14, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4316, file: !1074, line: 108, column: 9)
!4327 = !DILocation(line: 108, column: 9, scope: !4316)
!4328 = !DILocation(line: 112, column: 14, scope: !4316)
!4329 = !DILocation(line: 113, column: 18, scope: !4316)
!4330 = !DILocation(line: 113, column: 16, scope: !4316)
!4331 = !DILocation(line: 114, column: 5, scope: !4316)
!4332 = !DILocation(line: 115, column: 1, scope: !4316)
!4333 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1074, file: !1074, line: 117, type: !4334, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4337)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!4263, !4243, !4336}
!4336 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1077, line: 213, baseType: !1124)
!4337 = !{!4338, !4339, !4340}
!4338 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4333, file: !1074, line: 117, type: !4243)
!4339 = !DILocalVariable(name: "direction", arg: 2, scope: !4333, file: !1074, line: 117, type: !4336)
!4340 = !DILocalVariable(name: "ret_value", scope: !4333, file: !1074, line: 119, type: !238)
!4341 = !DILocation(line: 0, scope: !4333)
!4342 = !DILocation(line: 120, column: 18, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4333, file: !1074, line: 120, column: 9)
!4344 = !DILocation(line: 120, column: 9, scope: !4333)
!4345 = !DILocation(line: 123, column: 17, scope: !4333)
!4346 = !DILocation(line: 125, column: 12, scope: !4333)
!4347 = !DILocation(line: 125, column: 5, scope: !4333)
!4348 = !DILocation(line: 126, column: 1, scope: !4333)
!4349 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1074, file: !1074, line: 128, type: !4350, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4353)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!4263, !4243, !4352}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 32)
!4353 = !{!4354, !4355, !4356}
!4354 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4349, file: !1074, line: 128, type: !4243)
!4355 = !DILocalVariable(name: "direction", arg: 2, scope: !4349, file: !1074, line: 128, type: !4352)
!4356 = !DILocalVariable(name: "status", scope: !4349, file: !1074, line: 131, type: !4281)
!4357 = !DILocation(line: 0, scope: !4349)
!4358 = !DILocation(line: 132, column: 18, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4349, file: !1074, line: 132, column: 9)
!4360 = !DILocation(line: 132, column: 9, scope: !4349)
!4361 = !DILocation(line: 136, column: 14, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4349, file: !1074, line: 136, column: 9)
!4363 = !DILocation(line: 136, column: 9, scope: !4349)
!4364 = !DILocation(line: 140, column: 14, scope: !4349)
!4365 = !DILocation(line: 141, column: 18, scope: !4349)
!4366 = !DILocation(line: 141, column: 16, scope: !4349)
!4367 = !DILocation(line: 142, column: 5, scope: !4349)
!4368 = !DILocation(line: 143, column: 1, scope: !4349)
!4369 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1074, file: !1074, line: 146, type: !4261, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4370)
!4370 = !{!4371, !4372}
!4371 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4369, file: !1074, line: 146, type: !4243)
!4372 = !DILocalVariable(name: "status", scope: !4369, file: !1074, line: 148, type: !4281)
!4373 = !DILocation(line: 0, scope: !4369)
!4374 = !DILocation(line: 149, column: 18, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !1074, line: 149, column: 9)
!4376 = !DILocation(line: 149, column: 9, scope: !4369)
!4377 = !DILocation(line: 153, column: 14, scope: !4369)
!4378 = !DILocation(line: 154, column: 76, scope: !4369)
!4379 = !DILocation(line: 154, column: 12, scope: !4369)
!4380 = !DILocation(line: 154, column: 5, scope: !4369)
!4381 = !DILocation(line: 155, column: 1, scope: !4369)
!4382 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1074, file: !1074, line: 157, type: !4261, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4383)
!4383 = !{!4384, !4385}
!4384 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4382, file: !1074, line: 157, type: !4243)
!4385 = !DILocalVariable(name: "ret_value", scope: !4382, file: !1074, line: 159, type: !238)
!4386 = !DILocation(line: 0, scope: !4382)
!4387 = !DILocation(line: 160, column: 18, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4382, file: !1074, line: 160, column: 9)
!4389 = !DILocation(line: 160, column: 9, scope: !4382)
!4390 = !DILocation(line: 164, column: 17, scope: !4382)
!4391 = !DILocation(line: 165, column: 19, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4382, file: !1074, line: 165, column: 9)
!4393 = !DILocation(line: 165, column: 9, scope: !4382)
!4394 = !DILocation(line: 168, column: 17, scope: !4382)
!4395 = !DILocation(line: 169, column: 12, scope: !4382)
!4396 = !DILocation(line: 169, column: 5, scope: !4382)
!4397 = !DILocation(line: 170, column: 1, scope: !4382)
!4398 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1074, file: !1074, line: 172, type: !4261, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4399)
!4399 = !{!4400, !4401}
!4400 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4398, file: !1074, line: 172, type: !4243)
!4401 = !DILocalVariable(name: "ret_value", scope: !4398, file: !1074, line: 174, type: !238)
!4402 = !DILocation(line: 0, scope: !4398)
!4403 = !DILocation(line: 175, column: 18, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4398, file: !1074, line: 175, column: 9)
!4405 = !DILocation(line: 175, column: 9, scope: !4398)
!4406 = !DILocation(line: 179, column: 17, scope: !4398)
!4407 = !DILocation(line: 180, column: 19, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4398, file: !1074, line: 180, column: 9)
!4409 = !DILocation(line: 180, column: 9, scope: !4398)
!4410 = !DILocation(line: 183, column: 17, scope: !4398)
!4411 = !DILocation(line: 184, column: 12, scope: !4398)
!4412 = !DILocation(line: 184, column: 5, scope: !4398)
!4413 = !DILocation(line: 185, column: 1, scope: !4398)
!4414 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1074, file: !1074, line: 187, type: !4261, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4415)
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4414, file: !1074, line: 187, type: !4243)
!4417 = !DILocalVariable(name: "ret_value", scope: !4414, file: !1074, line: 189, type: !238)
!4418 = !DILocation(line: 0, scope: !4414)
!4419 = !DILocation(line: 191, column: 18, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4414, file: !1074, line: 191, column: 9)
!4421 = !DILocation(line: 191, column: 9, scope: !4414)
!4422 = !DILocation(line: 195, column: 17, scope: !4414)
!4423 = !DILocation(line: 196, column: 12, scope: !4414)
!4424 = !DILocation(line: 196, column: 5, scope: !4414)
!4425 = !DILocation(line: 197, column: 1, scope: !4414)
!4426 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1074, file: !1074, line: 200, type: !4427, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!4263, !4243, !1142}
!4429 = !{!4430, !4431, !4432}
!4430 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4426, file: !1074, line: 200, type: !4243)
!4431 = !DILocalVariable(name: "driving", arg: 2, scope: !4426, file: !1074, line: 200, type: !1142)
!4432 = !DILocalVariable(name: "ret_value", scope: !4426, file: !1074, line: 202, type: !238)
!4433 = !DILocation(line: 0, scope: !4426)
!4434 = !DILocation(line: 204, column: 18, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4426, file: !1074, line: 204, column: 9)
!4436 = !DILocation(line: 204, column: 9, scope: !4426)
!4437 = !DILocation(line: 208, column: 64, scope: !4426)
!4438 = !DILocation(line: 208, column: 17, scope: !4426)
!4439 = !DILocation(line: 210, column: 12, scope: !4426)
!4440 = !DILocation(line: 210, column: 5, scope: !4426)
!4441 = !DILocation(line: 211, column: 1, scope: !4426)
!4442 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1074, file: !1074, line: 214, type: !4443, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !4446)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4263, !4243, !4445}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 32)
!4446 = !{!4447, !4448, !4449, !4450}
!4447 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4442, file: !1074, line: 214, type: !4243)
!4448 = !DILocalVariable(name: "driving", arg: 2, scope: !4442, file: !1074, line: 214, type: !4445)
!4449 = !DILocalVariable(name: "ret_value", scope: !4442, file: !1074, line: 216, type: !238)
!4450 = !DILocalVariable(name: "value", scope: !4442, file: !1074, line: 217, type: !267)
!4451 = !DILocation(line: 0, scope: !4442)
!4452 = !DILocation(line: 217, column: 5, scope: !4442)
!4453 = !DILocation(line: 219, column: 18, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4442, file: !1074, line: 219, column: 9)
!4455 = !DILocation(line: 219, column: 9, scope: !4442)
!4456 = !DILocation(line: 223, column: 17, scope: !4442)
!4457 = !DILocation(line: 225, column: 44, scope: !4442)
!4458 = !DILocation(line: 225, column: 16, scope: !4442)
!4459 = !DILocation(line: 225, column: 14, scope: !4442)
!4460 = !DILocation(line: 227, column: 12, scope: !4442)
!4461 = !DILocation(line: 227, column: 5, scope: !4442)
!4462 = !DILocation(line: 228, column: 1, scope: !4442)
!4463 = distinct !DISubprogram(name: "hal_gpt_init", scope: !330, file: !330, line: 82, type: !4464, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4468)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !333, line: 393, baseType: !332)
!4467 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !341, line: 663, baseType: !340)
!4468 = !{!4469}
!4469 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4463, file: !330, line: 82, type: !4467)
!4470 = !DILocation(line: 0, scope: !4463)
!4471 = !DILocation(line: 84, column: 9, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4463, file: !330, line: 84, column: 9)
!4473 = !DILocation(line: 84, column: 33, scope: !4472)
!4474 = !DILocation(line: 84, column: 9, scope: !4463)
!4475 = !DILocation(line: 88, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4463, file: !330, line: 88, column: 9)
!4477 = !DILocation(line: 88, column: 9, scope: !4463)
!4478 = !DILocation(line: 89, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !330, line: 88, column: 50)
!4480 = !DILocation(line: 90, column: 9, scope: !4479)
!4481 = !DILocation(line: 92, column: 12, scope: !4463)
!4482 = !DILocation(line: 92, column: 5, scope: !4463)
!4483 = !DILocation(line: 96, column: 43, scope: !4463)
!4484 = !DILocation(line: 98, column: 5, scope: !4463)
!4485 = !DILocation(line: 99, column: 1, scope: !4463)
!4486 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !330, file: !330, line: 63, type: !4487, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4489)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!222, !4467}
!4489 = !{!4490}
!4490 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4486, file: !330, line: 63, type: !4467)
!4491 = !DILocation(line: 0, scope: !4486)
!4492 = !DILocation(line: 65, column: 19, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4486, file: !330, line: 65, column: 9)
!4494 = !DILocation(line: 65, column: 34, scope: !4493)
!4495 = !DILocation(line: 70, column: 1, scope: !4486)
!4496 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !330, file: !330, line: 101, type: !4464, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4497)
!4497 = !{!4498}
!4498 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4496, file: !330, line: 101, type: !4467)
!4499 = !DILocation(line: 0, scope: !4496)
!4500 = !DILocation(line: 103, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4496, file: !330, line: 103, column: 9)
!4502 = !DILocation(line: 103, column: 9, scope: !4496)
!4503 = !DILocation(line: 104, column: 9, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !330, line: 103, column: 50)
!4505 = !DILocation(line: 105, column: 9, scope: !4504)
!4506 = !DILocation(line: 108, column: 9, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4496, file: !330, line: 108, column: 9)
!4508 = !DILocation(line: 108, column: 33, scope: !4507)
!4509 = !DILocation(line: 108, column: 48, scope: !4507)
!4510 = !DILocation(line: 108, column: 9, scope: !4496)
!4511 = !DILocation(line: 109, column: 9, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4507, file: !330, line: 108, column: 68)
!4513 = !DILocation(line: 110, column: 9, scope: !4512)
!4514 = !DILocation(line: 113, column: 12, scope: !4496)
!4515 = !DILocation(line: 113, column: 5, scope: !4496)
!4516 = !DILocation(line: 116, column: 29, scope: !4496)
!4517 = !DILocation(line: 116, column: 43, scope: !4496)
!4518 = !DILocation(line: 117, column: 5, scope: !4496)
!4519 = !DILocation(line: 118, column: 1, scope: !4496)
!4520 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !330, file: !330, line: 120, type: !4521, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4524)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!4466, !4523, !451}
!4523 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !341, line: 674, baseType: !352)
!4524 = !{!4525, !4526}
!4525 = !DILocalVariable(name: "clock_source", arg: 1, scope: !4520, file: !330, line: 120, type: !4523)
!4526 = !DILocalVariable(name: "count", arg: 2, scope: !4520, file: !330, line: 120, type: !451)
!4527 = !DILocation(line: 0, scope: !4520)
!4528 = !DILocation(line: 122, column: 9, scope: !4520)
!4529 = !DILocation(line: 123, column: 50, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !330, line: 123, column: 13)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !330, line: 122, column: 51)
!4532 = distinct !DILexicalBlock(scope: !4520, file: !330, line: 122, column: 9)
!4533 = !DILocation(line: 123, column: 65, scope: !4530)
!4534 = !DILocation(line: 123, column: 13, scope: !4531)
!4535 = !DILocation(line: 124, column: 13, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4530, file: !330, line: 123, column: 86)
!4537 = !DILocation(line: 125, column: 9, scope: !4536)
!4538 = !DILocation(line: 126, column: 18, scope: !4531)
!4539 = !DILocation(line: 126, column: 16, scope: !4531)
!4540 = !DILocation(line: 127, column: 49, scope: !4531)
!4541 = !DILocation(line: 128, column: 5, scope: !4531)
!4542 = !DILocation(line: 129, column: 50, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !330, line: 129, column: 13)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !330, line: 128, column: 57)
!4545 = distinct !DILexicalBlock(scope: !4532, file: !330, line: 128, column: 16)
!4546 = !DILocation(line: 129, column: 65, scope: !4543)
!4547 = !DILocation(line: 129, column: 13, scope: !4544)
!4548 = !DILocation(line: 130, column: 13, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4543, file: !330, line: 129, column: 86)
!4550 = !DILocation(line: 131, column: 9, scope: !4549)
!4551 = !DILocation(line: 132, column: 18, scope: !4544)
!4552 = !DILocation(line: 132, column: 46, scope: !4544)
!4553 = !DILocation(line: 132, column: 65, scope: !4544)
!4554 = !DILocation(line: 132, column: 43, scope: !4544)
!4555 = !DILocation(line: 132, column: 16, scope: !4544)
!4556 = !DILocation(line: 133, column: 49, scope: !4544)
!4557 = !DILocation(line: 134, column: 5, scope: !4544)
!4558 = !DILocation(line: 135, column: 50, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !330, line: 135, column: 13)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !330, line: 134, column: 58)
!4561 = distinct !DILexicalBlock(scope: !4545, file: !330, line: 134, column: 16)
!4562 = !DILocation(line: 135, column: 65, scope: !4559)
!4563 = !DILocation(line: 135, column: 13, scope: !4560)
!4564 = !DILocation(line: 136, column: 13, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4559, file: !330, line: 135, column: 86)
!4566 = !DILocation(line: 137, column: 9, scope: !4565)
!4567 = !DILocation(line: 138, column: 18, scope: !4560)
!4568 = !DILocation(line: 138, column: 16, scope: !4560)
!4569 = !DILocation(line: 139, column: 49, scope: !4560)
!4570 = !DILocation(line: 141, column: 9, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4561, file: !330, line: 140, column: 11)
!4572 = !DILocation(line: 142, column: 9, scope: !4571)
!4573 = !DILocation(line: 146, column: 1, scope: !4520)
!4574 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !330, file: !330, line: 148, type: !4575, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4577)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!4466, !92, !92, !451}
!4577 = !{!4578, !4579, !4580}
!4578 = !DILocalVariable(name: "start_count", arg: 1, scope: !4574, file: !330, line: 148, type: !92)
!4579 = !DILocalVariable(name: "end_count", arg: 2, scope: !4574, file: !330, line: 148, type: !92)
!4580 = !DILocalVariable(name: "duration_count", arg: 3, scope: !4574, file: !330, line: 148, type: !451)
!4581 = !DILocation(line: 0, scope: !4574)
!4582 = !DILocation(line: 150, column: 24, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4574, file: !330, line: 150, column: 9)
!4584 = !DILocation(line: 150, column: 9, scope: !4574)
!4585 = !DILocation(line: 0, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4574, file: !330, line: 154, column: 9)
!4587 = !DILocation(line: 160, column: 5, scope: !4574)
!4588 = !DILocation(line: 161, column: 1, scope: !4574)
!4589 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !330, file: !330, line: 163, type: !4590, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4593)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!4466, !4467, !4592}
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!4593 = !{!4594, !4595}
!4594 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4589, file: !330, line: 163, type: !4467)
!4595 = !DILocalVariable(name: "running_status", arg: 2, scope: !4589, file: !330, line: 164, type: !4592)
!4596 = !DILocation(line: 0, scope: !4589)
!4597 = !DILocation(line: 166, column: 18, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4589, file: !330, line: 166, column: 9)
!4599 = !DILocation(line: 166, column: 9, scope: !4589)
!4600 = !DILocation(line: 167, column: 9, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4598, file: !330, line: 166, column: 34)
!4602 = !DILocation(line: 168, column: 9, scope: !4601)
!4603 = !DILocation(line: 170, column: 47, scope: !4589)
!4604 = !DILocation(line: 170, column: 21, scope: !4589)
!4605 = !DILocation(line: 171, column: 5, scope: !4589)
!4606 = !DILocation(line: 172, column: 1, scope: !4589)
!4607 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !330, file: !330, line: 174, type: !4608, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4610)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4466, !4467, !374, !219}
!4610 = !{!4611, !4612, !4613}
!4611 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4607, file: !330, line: 174, type: !4467)
!4612 = !DILocalVariable(name: "callback", arg: 2, scope: !4607, file: !330, line: 175, type: !374)
!4613 = !DILocalVariable(name: "user_data", arg: 3, scope: !4607, file: !330, line: 176, type: !219)
!4614 = !DILocation(line: 0, scope: !4607)
!4615 = !DILocation(line: 178, column: 9, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4607, file: !330, line: 178, column: 9)
!4617 = !DILocation(line: 178, column: 9, scope: !4607)
!4618 = !DILocation(line: 179, column: 9, scope: !4619)
!4619 = distinct !DILexicalBlock(scope: !4616, file: !330, line: 178, column: 50)
!4620 = !DILocation(line: 180, column: 9, scope: !4619)
!4621 = !DILocation(line: 182, column: 33, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4607, file: !330, line: 182, column: 9)
!4623 = !DILocation(line: 182, column: 47, scope: !4622)
!4624 = !DILocation(line: 182, column: 9, scope: !4607)
!4625 = !DILocation(line: 185, column: 18, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4607, file: !330, line: 185, column: 9)
!4627 = !DILocation(line: 185, column: 9, scope: !4607)
!4628 = !DILocation(line: 188, column: 46, scope: !4607)
!4629 = !DILocation(line: 188, column: 56, scope: !4607)
!4630 = !DILocation(line: 189, column: 46, scope: !4607)
!4631 = !DILocation(line: 189, column: 56, scope: !4607)
!4632 = !DILocation(line: 190, column: 5, scope: !4607)
!4633 = !DILocation(line: 191, column: 1, scope: !4607)
!4634 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !330, file: !330, line: 218, type: !4635, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4638)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!4466, !4467, !92, !4637}
!4637 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !333, line: 383, baseType: !357)
!4638 = !{!4639, !4640, !4641}
!4639 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4634, file: !330, line: 218, type: !4467)
!4640 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !4634, file: !330, line: 218, type: !92)
!4641 = !DILocalVariable(name: "timer_type", arg: 3, scope: !4634, file: !330, line: 218, type: !4637)
!4642 = !DILocation(line: 0, scope: !4634)
!4643 = !DILocation(line: 220, column: 9, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4634, file: !330, line: 220, column: 9)
!4645 = !DILocation(line: 220, column: 9, scope: !4634)
!4646 = !DILocation(line: 221, column: 9, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !330, line: 220, column: 50)
!4648 = !DILocation(line: 222, column: 9, scope: !4647)
!4649 = !DILocation(line: 225, column: 33, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4634, file: !330, line: 225, column: 9)
!4651 = !DILocation(line: 225, column: 47, scope: !4650)
!4652 = !DILocation(line: 225, column: 9, scope: !4634)
!4653 = !DILocation(line: 229, column: 25, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4634, file: !330, line: 229, column: 9)
!4655 = !DILocation(line: 229, column: 9, scope: !4634)
!4656 = !DILocation(line: 234, column: 17, scope: !4634)
!4657 = !DILocation(line: 235, column: 17, scope: !4634)
!4658 = !DILocation(line: 236, column: 17, scope: !4634)
!4659 = !DILocation(line: 233, column: 5, scope: !4634)
!4660 = !DILocation(line: 237, column: 5, scope: !4634)
!4661 = !DILocation(line: 238, column: 29, scope: !4634)
!4662 = !DILocation(line: 238, column: 44, scope: !4634)
!4663 = !DILocation(line: 239, column: 5, scope: !4634)
!4664 = !DILocation(line: 240, column: 1, scope: !4634)
!4665 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !330, file: !330, line: 72, type: !4666, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!92, !92}
!4668 = !{!4669}
!4669 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !4665, file: !330, line: 72, type: !92)
!4670 = !DILocation(line: 0, scope: !4665)
!4671 = !DILocation(line: 74, column: 37, scope: !4665)
!4672 = !DILocation(line: 74, column: 47, scope: !4665)
!4673 = !DILocation(line: 74, column: 63, scope: !4665)
!4674 = !DILocation(line: 74, column: 42, scope: !4665)
!4675 = !DILocation(line: 74, column: 73, scope: !4665)
!4676 = !DILocation(line: 74, column: 89, scope: !4665)
!4677 = !DILocation(line: 74, column: 68, scope: !4665)
!4678 = !DILocation(line: 74, column: 100, scope: !4665)
!4679 = !DILocation(line: 74, column: 116, scope: !4665)
!4680 = !DILocation(line: 74, column: 95, scope: !4665)
!4681 = !DILocation(line: 74, column: 5, scope: !4665)
!4682 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !330, file: !330, line: 77, type: !4683, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!222, !4637}
!4685 = !{!4686}
!4686 = !DILocalVariable(name: "type", arg: 1, scope: !4682, file: !330, line: 77, type: !4637)
!4687 = !DILocation(line: 0, scope: !4682)
!4688 = !DILocation(line: 79, column: 38, scope: !4682)
!4689 = !DILocation(line: 79, column: 5, scope: !4682)
!4690 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !330, file: !330, line: 213, type: !4691, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4694)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!4693, !4467}
!4693 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !330, line: 211, baseType: !74)
!4694 = !{!4695}
!4695 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4690, file: !330, line: 213, type: !4467)
!4696 = !DILocation(line: 0, scope: !4690)
!4697 = !DILocation(line: 215, column: 23, scope: !4690)
!4698 = !DILocation(line: 215, column: 12, scope: !4690)
!4699 = !DILocation(line: 215, column: 5, scope: !4690)
!4700 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !330, file: !330, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4701)
!4701 = !{!4702}
!4702 = !DILocalVariable(name: "context", scope: !4700, file: !330, line: 195, type: !4703)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!4704 = !DILocation(line: 196, column: 26, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4700, file: !330, line: 196, column: 9)
!4706 = !DILocation(line: 196, column: 14, scope: !4705)
!4707 = !DILocation(line: 196, column: 9, scope: !4700)
!4708 = !DILocation(line: 197, column: 36, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !330, line: 196, column: 36)
!4710 = !DILocation(line: 197, column: 9, scope: !4709)
!4711 = !DILocation(line: 198, column: 5, scope: !4709)
!4712 = !DILocation(line: 199, column: 45, scope: !4700)
!4713 = !DILocation(line: 200, column: 1, scope: !4700)
!4714 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !330, file: !330, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4715)
!4715 = !{!4716}
!4716 = !DILocalVariable(name: "context", scope: !4714, file: !330, line: 204, type: !4703)
!4717 = !DILocation(line: 205, column: 26, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4714, file: !330, line: 205, column: 9)
!4719 = !DILocation(line: 205, column: 14, scope: !4718)
!4720 = !DILocation(line: 205, column: 9, scope: !4714)
!4721 = !DILocation(line: 206, column: 36, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !330, line: 205, column: 36)
!4723 = !DILocation(line: 206, column: 9, scope: !4722)
!4724 = !DILocation(line: 207, column: 5, scope: !4722)
!4725 = !DILocation(line: 208, column: 45, scope: !4714)
!4726 = !DILocation(line: 209, column: 1, scope: !4714)
!4727 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !330, file: !330, line: 242, type: !4464, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4728)
!4728 = !{!4729}
!4729 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4727, file: !330, line: 242, type: !4467)
!4730 = !DILocation(line: 0, scope: !4727)
!4731 = !DILocation(line: 244, column: 9, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4727, file: !330, line: 244, column: 9)
!4733 = !DILocation(line: 244, column: 9, scope: !4727)
!4734 = !DILocation(line: 245, column: 9, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !330, line: 244, column: 50)
!4736 = !DILocation(line: 246, column: 9, scope: !4735)
!4737 = !DILocation(line: 248, column: 5, scope: !4727)
!4738 = !DILocation(line: 249, column: 29, scope: !4727)
!4739 = !DILocation(line: 249, column: 44, scope: !4727)
!4740 = !DILocation(line: 250, column: 5, scope: !4727)
!4741 = !DILocation(line: 251, column: 1, scope: !4727)
!4742 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !330, file: !330, line: 253, type: !4743, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4745)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!4466, !92}
!4745 = !{!4746}
!4746 = !DILocalVariable(name: "ms", arg: 1, scope: !4742, file: !330, line: 253, type: !92)
!4747 = !DILocation(line: 0, scope: !4742)
!4748 = !DILocation(line: 255, column: 46, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4742, file: !330, line: 255, column: 9)
!4750 = !DILocation(line: 255, column: 61, scope: !4749)
!4751 = !DILocation(line: 255, column: 9, scope: !4742)
!4752 = !DILocation(line: 256, column: 9, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4749, file: !330, line: 255, column: 82)
!4754 = !DILocation(line: 257, column: 5, scope: !4753)
!4755 = !DILocation(line: 258, column: 5, scope: !4742)
!4756 = !DILocation(line: 259, column: 57, scope: !4742)
!4757 = !DILocation(line: 260, column: 5, scope: !4742)
!4758 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !330, file: !330, line: 264, type: !4743, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !4759)
!4759 = !{!4760}
!4760 = !DILocalVariable(name: "us", arg: 1, scope: !4758, file: !330, line: 264, type: !92)
!4761 = !DILocation(line: 0, scope: !4758)
!4762 = !DILocation(line: 266, column: 46, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !330, line: 266, column: 9)
!4764 = !DILocation(line: 266, column: 61, scope: !4763)
!4765 = !DILocation(line: 266, column: 9, scope: !4758)
!4766 = !DILocation(line: 267, column: 9, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4763, file: !330, line: 266, column: 82)
!4768 = !DILocation(line: 268, column: 5, scope: !4767)
!4769 = !DILocation(line: 269, column: 5, scope: !4758)
!4770 = !DILocation(line: 270, column: 57, scope: !4758)
!4771 = !DILocation(line: 271, column: 5, scope: !4758)
!4772 = distinct !DISubprogram(name: "hal_pwm_init", scope: !383, file: !383, line: 82, type: !4773, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4775)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!450, !443}
!4775 = !{!4776, !4777}
!4776 = !DILocalVariable(name: "source_clock", arg: 1, scope: !4772, file: !383, line: 82, type: !443)
!4777 = !DILocalVariable(name: "ret_val", scope: !4772, file: !383, line: 85, type: !238)
!4778 = !DILocation(line: 0, scope: !4772)
!4779 = !DILocation(line: 86, column: 9, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4772, file: !383, line: 86, column: 9)
!4781 = !DILocation(line: 86, column: 9, scope: !4772)
!4782 = !DILocation(line: 87, column: 9, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4780, file: !383, line: 86, column: 24)
!4784 = !DILocation(line: 88, column: 9, scope: !4783)
!4785 = !DILocation(line: 91, column: 24, scope: !4772)
!4786 = !{i8 0, i8 3}
!4787 = !DILocation(line: 91, column: 15, scope: !4772)
!4788 = !DILocation(line: 92, column: 17, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4772, file: !383, line: 92, column: 9)
!4790 = !DILocation(line: 92, column: 9, scope: !4772)
!4791 = !DILocation(line: 93, column: 9, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4789, file: !383, line: 92, column: 22)
!4793 = !DILocation(line: 94, column: 9, scope: !4792)
!4794 = !DILocation(line: 96, column: 22, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4772, file: !383, line: 96, column: 9)
!4796 = !DILocation(line: 96, column: 9, scope: !4772)
!4797 = !DILocation(line: 97, column: 9, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4795, file: !383, line: 96, column: 44)
!4799 = !DILocation(line: 98, column: 9, scope: !4798)
!4800 = !DILocation(line: 100, column: 20, scope: !4772)
!4801 = !DILocation(line: 101, column: 15, scope: !4772)
!4802 = !DILocation(line: 102, column: 5, scope: !4772)
!4803 = !DILocation(line: 103, column: 1, scope: !4772)
!4804 = distinct !DISubprogram(name: "hal_pwm_translate_source_clock", scope: !383, file: !383, line: 54, type: !4805, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4807)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!267, !443}
!4807 = !{!4808}
!4808 = !DILocalVariable(name: "source_clock", arg: 1, scope: !4804, file: !383, line: 54, type: !443)
!4809 = !DILocation(line: 0, scope: !4804)
!4810 = !DILocation(line: 56, column: 9, scope: !4804)
!4811 = !DILocation(line: 63, column: 1, scope: !4804)
!4812 = distinct !DISubprogram(name: "hal_pwm_deinit", scope: !383, file: !383, line: 105, type: !4813, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1338)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!450}
!4815 = !DILocation(line: 108, column: 20, scope: !4812)
!4816 = !DILocation(line: 109, column: 15, scope: !4812)
!4817 = !DILocation(line: 110, column: 5, scope: !4812)
!4818 = distinct !DISubprogram(name: "hal_pwm_set_frequency", scope: !383, file: !383, line: 113, type: !4819, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4822)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!450, !4821, !92, !451}
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pwm_channel_t", file: !341, line: 811, baseType: !402)
!4822 = !{!4823, !4824, !4825, !4826, !4827, !4828}
!4823 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4818, file: !383, line: 113, type: !4821)
!4824 = !DILocalVariable(name: "frequency", arg: 2, scope: !4818, file: !383, line: 114, type: !92)
!4825 = !DILocalVariable(name: "total_count", arg: 3, scope: !4818, file: !383, line: 115, type: !451)
!4826 = !DILocalVariable(name: "smallest_frequency", scope: !4818, file: !383, line: 117, type: !92)
!4827 = !DILocalVariable(name: "calculated", scope: !4818, file: !383, line: 130, type: !92)
!4828 = !DILocalVariable(name: "ret_val", scope: !4818, file: !383, line: 139, type: !238)
!4829 = !DILocation(line: 0, scope: !4818)
!4830 = !DILocation(line: 118, column: 10, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4818, file: !383, line: 118, column: 9)
!4832 = !DILocation(line: 118, column: 9, scope: !4818)
!4833 = !DILocation(line: 119, column: 9, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4831, file: !383, line: 118, column: 49)
!4835 = !DILocation(line: 120, column: 9, scope: !4834)
!4836 = !DILocation(line: 122, column: 9, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4818, file: !383, line: 122, column: 9)
!4838 = !DILocation(line: 122, column: 24, scope: !4837)
!4839 = !DILocation(line: 122, column: 9, scope: !4818)
!4840 = !DILocation(line: 123, column: 9, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4837, file: !383, line: 122, column: 46)
!4842 = !DILocation(line: 124, column: 9, scope: !4841)
!4843 = !DILocation(line: 126, column: 11, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4818, file: !383, line: 126, column: 9)
!4845 = !DILocation(line: 126, column: 9, scope: !4818)
!4846 = !DILocation(line: 127, column: 9, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4844, file: !383, line: 126, column: 25)
!4848 = !DILocation(line: 128, column: 9, scope: !4847)
!4849 = !DILocation(line: 130, column: 5, scope: !4818)
!4850 = !DILocation(line: 130, column: 14, scope: !4818)
!4851 = !DILocation(line: 131, column: 30, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4818, file: !383, line: 131, column: 9)
!4853 = !DILocation(line: 131, column: 27, scope: !4852)
!4854 = !DILocation(line: 131, column: 9, scope: !4818)
!4855 = !DILocation(line: 132, column: 9, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4852, file: !383, line: 131, column: 96)
!4857 = !DILocation(line: 133, column: 9, scope: !4856)
!4858 = !DILocation(line: 135, column: 26, scope: !4818)
!4859 = !DILocation(line: 135, column: 37, scope: !4818)
!4860 = !DILocation(line: 135, column: 49, scope: !4818)
!4861 = !DILocation(line: 136, column: 19, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4818, file: !383, line: 136, column: 9)
!4863 = !DILocation(line: 136, column: 9, scope: !4818)
!4864 = !DILocation(line: 139, column: 31, scope: !4818)
!4865 = !DILocation(line: 139, column: 23, scope: !4818)
!4866 = !DILocation(line: 143, column: 17, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4818, file: !383, line: 143, column: 9)
!4868 = !DILocation(line: 143, column: 9, scope: !4818)
!4869 = !DILocation(line: 144, column: 9, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4867, file: !383, line: 143, column: 22)
!4871 = !DILocation(line: 145, column: 9, scope: !4870)
!4872 = !DILocation(line: 147, column: 18, scope: !4818)
!4873 = !DILocation(line: 148, column: 5, scope: !4818)
!4874 = !DILocation(line: 149, column: 1, scope: !4818)
!4875 = distinct !DISubprogram(name: "hal_pwm_is_channel_valid", scope: !383, file: !383, line: 49, type: !4876, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4878)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{!222, !4821}
!4878 = !{!4879}
!4879 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4875, file: !383, line: 49, type: !4821)
!4880 = !DILocation(line: 0, scope: !4875)
!4881 = !DILocation(line: 51, column: 24, scope: !4875)
!4882 = !DILocation(line: 51, column: 5, scope: !4875)
!4883 = !DILocation(line: 0, scope: !447)
!4884 = !DILocation(line: 72, column: 34, scope: !447)
!4885 = !DILocation(line: 73, column: 19, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !447, file: !383, line: 73, column: 9)
!4887 = !DILocation(line: 73, column: 9, scope: !447)
!4888 = !DILocation(line: 74, column: 9, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4886, file: !383, line: 73, column: 40)
!4890 = !DILocation(line: 76, column: 9, scope: !4889)
!4891 = !DILocation(line: 78, column: 38, scope: !447)
!4892 = !DILocation(line: 78, column: 18, scope: !447)
!4893 = !DILocation(line: 79, column: 5, scope: !447)
!4894 = !DILocation(line: 80, column: 1, scope: !447)
!4895 = distinct !DISubprogram(name: "hal_pwm_set_duty_cycle", scope: !383, file: !383, line: 152, type: !4896, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4898)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!450, !4821, !92}
!4898 = !{!4899, !4900, !4901, !4902, !4903, !4904, !4905}
!4899 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4895, file: !383, line: 152, type: !4821)
!4900 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !4895, file: !383, line: 152, type: !92)
!4901 = !DILocalVariable(name: "ret_val", scope: !4895, file: !383, line: 154, type: !238)
!4902 = !DILocalVariable(name: "frequency", scope: !4895, file: !383, line: 164, type: !92)
!4903 = !DILocalVariable(name: "internal_duty", scope: !4895, file: !383, line: 165, type: !438)
!4904 = !DILocalVariable(name: "pwm_enable", scope: !4895, file: !383, line: 166, type: !267)
!4905 = !DILocalVariable(name: "total_count", scope: !4895, file: !383, line: 173, type: !92)
!4906 = !DILocation(line: 0, scope: !4895)
!4907 = !DILocation(line: 156, column: 10, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4895, file: !383, line: 156, column: 9)
!4909 = !DILocation(line: 156, column: 9, scope: !4895)
!4910 = !DILocation(line: 157, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4908, file: !383, line: 156, column: 49)
!4912 = !DILocation(line: 158, column: 9, scope: !4911)
!4913 = !DILocation(line: 160, column: 9, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4895, file: !383, line: 160, column: 9)
!4915 = !DILocation(line: 160, column: 24, scope: !4914)
!4916 = !DILocation(line: 160, column: 9, scope: !4895)
!4917 = !DILocation(line: 161, column: 9, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4914, file: !383, line: 160, column: 46)
!4919 = !DILocation(line: 162, column: 9, scope: !4918)
!4920 = !DILocation(line: 164, column: 5, scope: !4895)
!4921 = !DILocation(line: 164, column: 14, scope: !4895)
!4922 = !DILocation(line: 165, column: 5, scope: !4895)
!4923 = !DILocation(line: 165, column: 14, scope: !4895)
!4924 = !DILocation(line: 166, column: 5, scope: !4895)
!4925 = !DILocation(line: 166, column: 13, scope: !4895)
!4926 = !DILocation(line: 167, column: 13, scope: !4895)
!4927 = !DILocation(line: 167, column: 5, scope: !4895)
!4928 = !DILocation(line: 169, column: 14, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4895, file: !383, line: 169, column: 9)
!4930 = !DILocation(line: 169, column: 11, scope: !4929)
!4931 = !DILocation(line: 169, column: 9, scope: !4895)
!4932 = !DILocation(line: 170, column: 9, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4929, file: !383, line: 169, column: 25)
!4934 = !DILocation(line: 171, column: 9, scope: !4933)
!4935 = !DILocation(line: 173, column: 5, scope: !4895)
!4936 = !DILocation(line: 174, column: 55, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4895, file: !383, line: 174, column: 9)
!4938 = !DILocation(line: 174, column: 30, scope: !4937)
!4939 = !DILocation(line: 174, column: 27, scope: !4937)
!4940 = !DILocation(line: 174, column: 9, scope: !4895)
!4941 = !DILocation(line: 175, column: 9, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4937, file: !383, line: 174, column: 97)
!4943 = !DILocation(line: 176, column: 9, scope: !4942)
!4944 = !DILocation(line: 179, column: 23, scope: !4895)
!4945 = !DILocation(line: 180, column: 23, scope: !4895)
!4946 = !DILocation(line: 181, column: 23, scope: !4895)
!4947 = !DILocation(line: 178, column: 15, scope: !4895)
!4948 = !DILocation(line: 182, column: 17, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4895, file: !383, line: 182, column: 9)
!4950 = !DILocation(line: 182, column: 9, scope: !4895)
!4951 = !DILocation(line: 183, column: 9, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4949, file: !383, line: 182, column: 22)
!4953 = !DILocation(line: 184, column: 9, scope: !4952)
!4954 = !DILocation(line: 187, column: 1, scope: !4895)
!4955 = distinct !DISubprogram(name: "hal_pwm_start", scope: !383, file: !383, line: 189, type: !4956, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4958)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!450, !4821}
!4958 = !{!4959, !4960, !4961, !4962, !4963}
!4959 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4955, file: !383, line: 189, type: !4821)
!4960 = !DILocalVariable(name: "ret_val", scope: !4955, file: !383, line: 192, type: !238)
!4961 = !DILocalVariable(name: "frequency", scope: !4955, file: !383, line: 197, type: !92)
!4962 = !DILocalVariable(name: "duty_cycle", scope: !4955, file: !383, line: 198, type: !438)
!4963 = !DILocalVariable(name: "pwm_enable", scope: !4955, file: !383, line: 199, type: !267)
!4964 = !DILocation(line: 0, scope: !4955)
!4965 = !DILocation(line: 193, column: 10, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4955, file: !383, line: 193, column: 9)
!4967 = !DILocation(line: 193, column: 9, scope: !4955)
!4968 = !DILocation(line: 194, column: 9, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4966, file: !383, line: 193, column: 49)
!4970 = !DILocation(line: 195, column: 9, scope: !4969)
!4971 = !DILocation(line: 197, column: 5, scope: !4955)
!4972 = !DILocation(line: 197, column: 14, scope: !4955)
!4973 = !DILocation(line: 198, column: 5, scope: !4955)
!4974 = !DILocation(line: 198, column: 14, scope: !4955)
!4975 = !DILocation(line: 199, column: 5, scope: !4955)
!4976 = !DILocation(line: 199, column: 13, scope: !4955)
!4977 = !DILocation(line: 200, column: 13, scope: !4955)
!4978 = !DILocation(line: 200, column: 5, scope: !4955)
!4979 = !DILocation(line: 202, column: 14, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4955, file: !383, line: 202, column: 9)
!4981 = !DILocation(line: 202, column: 11, scope: !4980)
!4982 = !DILocation(line: 202, column: 9, scope: !4955)
!4983 = !DILocation(line: 203, column: 9, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !383, line: 202, column: 25)
!4985 = !DILocation(line: 204, column: 9, scope: !4984)
!4986 = !DILocation(line: 208, column: 23, scope: !4955)
!4987 = !DILocation(line: 206, column: 15, scope: !4955)
!4988 = !DILocation(line: 210, column: 17, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4955, file: !383, line: 210, column: 9)
!4990 = !DILocation(line: 210, column: 9, scope: !4955)
!4991 = !DILocation(line: 211, column: 9, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4989, file: !383, line: 210, column: 22)
!4993 = !DILocation(line: 212, column: 9, scope: !4992)
!4994 = !DILocation(line: 215, column: 1, scope: !4955)
!4995 = distinct !DISubprogram(name: "hal_pwm_stop", scope: !383, file: !383, line: 217, type: !4956, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !4996)
!4996 = !{!4997, !4998, !4999, !5000, !5001}
!4997 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !4995, file: !383, line: 217, type: !4821)
!4998 = !DILocalVariable(name: "ret_val", scope: !4995, file: !383, line: 219, type: !238)
!4999 = !DILocalVariable(name: "frequency", scope: !4995, file: !383, line: 224, type: !92)
!5000 = !DILocalVariable(name: "duty_cycle", scope: !4995, file: !383, line: 225, type: !438)
!5001 = !DILocalVariable(name: "pwm_enable", scope: !4995, file: !383, line: 226, type: !267)
!5002 = !DILocation(line: 0, scope: !4995)
!5003 = !DILocation(line: 220, column: 10, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4995, file: !383, line: 220, column: 9)
!5005 = !DILocation(line: 220, column: 9, scope: !4995)
!5006 = !DILocation(line: 221, column: 9, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5004, file: !383, line: 220, column: 49)
!5008 = !DILocation(line: 222, column: 9, scope: !5007)
!5009 = !DILocation(line: 224, column: 5, scope: !4995)
!5010 = !DILocation(line: 224, column: 14, scope: !4995)
!5011 = !DILocation(line: 225, column: 5, scope: !4995)
!5012 = !DILocation(line: 225, column: 14, scope: !4995)
!5013 = !DILocation(line: 226, column: 5, scope: !4995)
!5014 = !DILocation(line: 226, column: 13, scope: !4995)
!5015 = !DILocation(line: 227, column: 13, scope: !4995)
!5016 = !DILocation(line: 227, column: 5, scope: !4995)
!5017 = !DILocation(line: 229, column: 14, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4995, file: !383, line: 229, column: 9)
!5019 = !DILocation(line: 229, column: 11, scope: !5018)
!5020 = !DILocation(line: 229, column: 9, scope: !4995)
!5021 = !DILocation(line: 230, column: 9, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5018, file: !383, line: 229, column: 25)
!5023 = !DILocation(line: 231, column: 9, scope: !5022)
!5024 = !DILocation(line: 235, column: 23, scope: !4995)
!5025 = !DILocation(line: 233, column: 15, scope: !4995)
!5026 = !DILocation(line: 237, column: 17, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !4995, file: !383, line: 237, column: 9)
!5028 = !DILocation(line: 237, column: 9, scope: !4995)
!5029 = !DILocation(line: 238, column: 9, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5027, file: !383, line: 237, column: 22)
!5031 = !DILocation(line: 239, column: 9, scope: !5030)
!5032 = !DILocation(line: 242, column: 1, scope: !4995)
!5033 = distinct !DISubprogram(name: "hal_pwm_get_frequency", scope: !383, file: !383, line: 244, type: !5034, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !5036)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!450, !4821, !451}
!5036 = !{!5037, !5038, !5039, !5040}
!5037 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !5033, file: !383, line: 244, type: !4821)
!5038 = !DILocalVariable(name: "frequency", arg: 2, scope: !5033, file: !383, line: 244, type: !451)
!5039 = !DILocalVariable(name: "duty_cycle", scope: !5033, file: !383, line: 254, type: !438)
!5040 = !DILocalVariable(name: "pwm_enable", scope: !5033, file: !383, line: 255, type: !267)
!5041 = !DILocation(line: 0, scope: !5033)
!5042 = !DILocation(line: 246, column: 10, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5033, file: !383, line: 246, column: 9)
!5044 = !DILocation(line: 246, column: 9, scope: !5033)
!5045 = !DILocation(line: 247, column: 9, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5043, file: !383, line: 246, column: 49)
!5047 = !DILocation(line: 248, column: 9, scope: !5046)
!5048 = !DILocation(line: 250, column: 14, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5033, file: !383, line: 250, column: 9)
!5050 = !DILocation(line: 250, column: 9, scope: !5033)
!5051 = !DILocation(line: 251, column: 9, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5049, file: !383, line: 250, column: 28)
!5053 = !DILocation(line: 252, column: 9, scope: !5052)
!5054 = !DILocation(line: 254, column: 5, scope: !5033)
!5055 = !DILocation(line: 254, column: 14, scope: !5033)
!5056 = !DILocation(line: 255, column: 5, scope: !5033)
!5057 = !DILocation(line: 255, column: 13, scope: !5033)
!5058 = !DILocation(line: 256, column: 13, scope: !5033)
!5059 = !DILocation(line: 256, column: 5, scope: !5033)
!5060 = !DILocation(line: 259, column: 1, scope: !5033)
!5061 = distinct !DISubprogram(name: "hal_pwm_get_duty_cycle", scope: !383, file: !383, line: 261, type: !5034, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !5062)
!5062 = !{!5063, !5064, !5065, !5066, !5067, !5068}
!5063 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !5061, file: !383, line: 261, type: !4821)
!5064 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !5061, file: !383, line: 261, type: !451)
!5065 = !DILocalVariable(name: "frequency", scope: !5061, file: !383, line: 267, type: !92)
!5066 = !DILocalVariable(name: "working_duty_cycle", scope: !5061, file: !383, line: 268, type: !438)
!5067 = !DILocalVariable(name: "pwm_enable", scope: !5061, file: !383, line: 269, type: !267)
!5068 = !DILocalVariable(name: "total_count", scope: !5061, file: !383, line: 276, type: !92)
!5069 = !DILocation(line: 0, scope: !5061)
!5070 = !DILocation(line: 263, column: 10, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5061, file: !383, line: 263, column: 9)
!5072 = !DILocation(line: 263, column: 9, scope: !5061)
!5073 = !DILocation(line: 264, column: 9, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !383, line: 263, column: 49)
!5075 = !DILocation(line: 265, column: 9, scope: !5074)
!5076 = !DILocation(line: 267, column: 5, scope: !5061)
!5077 = !DILocation(line: 267, column: 14, scope: !5061)
!5078 = !DILocation(line: 268, column: 5, scope: !5061)
!5079 = !DILocation(line: 268, column: 14, scope: !5061)
!5080 = !DILocation(line: 269, column: 5, scope: !5061)
!5081 = !DILocation(line: 269, column: 13, scope: !5061)
!5082 = !DILocation(line: 270, column: 13, scope: !5061)
!5083 = !DILocation(line: 270, column: 5, scope: !5061)
!5084 = !DILocation(line: 272, column: 14, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5061, file: !383, line: 272, column: 9)
!5086 = !DILocation(line: 272, column: 11, scope: !5085)
!5087 = !DILocation(line: 272, column: 9, scope: !5061)
!5088 = !DILocation(line: 273, column: 9, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !383, line: 272, column: 25)
!5090 = !DILocation(line: 274, column: 9, scope: !5089)
!5091 = !DILocation(line: 276, column: 5, scope: !5061)
!5092 = !DILocation(line: 277, column: 55, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5061, file: !383, line: 277, column: 9)
!5094 = !DILocation(line: 277, column: 30, scope: !5093)
!5095 = !DILocation(line: 277, column: 27, scope: !5093)
!5096 = !DILocation(line: 277, column: 9, scope: !5061)
!5097 = !DILocation(line: 278, column: 9, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5093, file: !383, line: 277, column: 97)
!5099 = !DILocation(line: 279, column: 9, scope: !5098)
!5100 = !DILocation(line: 281, column: 19, scope: !5061)
!5101 = !DILocation(line: 281, column: 17, scope: !5061)
!5102 = !DILocation(line: 282, column: 5, scope: !5061)
!5103 = !DILocation(line: 283, column: 1, scope: !5061)
!5104 = distinct !DISubprogram(name: "hal_pwm_get_running_status", scope: !383, file: !383, line: 285, type: !5105, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !5109)
!5105 = !DISubroutineType(types: !5106)
!5106 = !{!450, !4821, !5107}
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 32)
!5108 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pwm_running_status_t", file: !386, line: 240, baseType: !433)
!5109 = !{!5110, !5111, !5112, !5113, !5114}
!5110 = !DILocalVariable(name: "pwm_channel", arg: 1, scope: !5104, file: !383, line: 285, type: !4821)
!5111 = !DILocalVariable(name: "running_status", arg: 2, scope: !5104, file: !383, line: 286, type: !5107)
!5112 = !DILocalVariable(name: "frequency", scope: !5104, file: !383, line: 292, type: !92)
!5113 = !DILocalVariable(name: "duty_cycle", scope: !5104, file: !383, line: 293, type: !438)
!5114 = !DILocalVariable(name: "pwm_enable", scope: !5104, file: !383, line: 294, type: !267)
!5115 = !DILocation(line: 0, scope: !5104)
!5116 = !DILocation(line: 288, column: 10, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5104, file: !383, line: 288, column: 9)
!5118 = !DILocation(line: 288, column: 9, scope: !5104)
!5119 = !DILocation(line: 289, column: 9, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5117, file: !383, line: 288, column: 49)
!5121 = !DILocation(line: 290, column: 9, scope: !5120)
!5122 = !DILocation(line: 292, column: 5, scope: !5104)
!5123 = !DILocation(line: 292, column: 14, scope: !5104)
!5124 = !DILocation(line: 293, column: 5, scope: !5104)
!5125 = !DILocation(line: 293, column: 14, scope: !5104)
!5126 = !DILocation(line: 294, column: 5, scope: !5104)
!5127 = !DILocation(line: 294, column: 13, scope: !5104)
!5128 = !DILocation(line: 295, column: 13, scope: !5104)
!5129 = !DILocation(line: 295, column: 5, scope: !5104)
!5130 = !DILocation(line: 296, column: 23, scope: !5104)
!5131 = !DILocation(line: 296, column: 21, scope: !5104)
!5132 = !DILocation(line: 298, column: 1, scope: !5104)
!5133 = distinct !DISubprogram(name: "hal_uart_init", scope: !464, file: !464, line: 234, type: !5134, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5138)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!5136, !524, !5137}
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !467, line: 351, baseType: !466)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32)
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5133, file: !464, line: 234, type: !524)
!5140 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5133, file: !464, line: 234, type: !5137)
!5141 = !DILocation(line: 0, scope: !5133)
!5142 = !DILocation(line: 236, column: 10, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5133, file: !464, line: 236, column: 9)
!5144 = !DILocation(line: 236, column: 9, scope: !5133)
!5145 = !DILocation(line: 239, column: 41, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5133, file: !464, line: 239, column: 9)
!5147 = !DILocation(line: 239, column: 9, scope: !5133)
!5148 = !DILocation(line: 242, column: 5, scope: !5133)
!5149 = !DILocation(line: 243, column: 45, scope: !5133)
!5150 = !DILocation(line: 243, column: 12, scope: !5133)
!5151 = !DILocation(line: 244, column: 12, scope: !5133)
!5152 = !DILocation(line: 243, column: 5, scope: !5133)
!5153 = !DILocation(line: 245, column: 58, scope: !5133)
!5154 = !DILocation(line: 246, column: 30, scope: !5133)
!5155 = !{i32 0, i32 2}
!5156 = !DILocation(line: 246, column: 5, scope: !5133)
!5157 = !DILocation(line: 247, column: 5, scope: !5133)
!5158 = !DILocation(line: 249, column: 31, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5133, file: !464, line: 249, column: 9)
!5160 = !DILocation(line: 249, column: 28, scope: !5159)
!5161 = !DILocation(line: 261, column: 1, scope: !5133)
!5162 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !464, file: !464, line: 93, type: !5163, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5167)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!222, !524, !5165}
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 32)
!5166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!5167 = !{!5168, !5169}
!5168 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5162, file: !464, line: 93, type: !524)
!5169 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5162, file: !464, line: 93, type: !5165)
!5170 = !DILocation(line: 0, scope: !5162)
!5171 = !DILocation(line: 95, column: 10, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5162, file: !464, line: 95, column: 9)
!5173 = !DILocation(line: 95, column: 9, scope: !5162)
!5174 = !DILocation(line: 101, column: 23, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5162, file: !464, line: 101, column: 9)
!5176 = !DILocation(line: 101, column: 32, scope: !5175)
!5177 = !DILocation(line: 101, column: 60, scope: !5175)
!5178 = !DILocation(line: 102, column: 27, scope: !5175)
!5179 = !DILocation(line: 102, column: 34, scope: !5175)
!5180 = !DILocation(line: 102, column: 58, scope: !5175)
!5181 = !DILocation(line: 103, column: 27, scope: !5175)
!5182 = !DILocation(line: 103, column: 36, scope: !5175)
!5183 = !DILocation(line: 103, column: 59, scope: !5175)
!5184 = !DILocation(line: 104, column: 27, scope: !5175)
!5185 = !DILocation(line: 104, column: 39, scope: !5175)
!5186 = !DILocation(line: 101, column: 9, scope: !5162)
!5187 = !DILocation(line: 109, column: 1, scope: !5162)
!5188 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !464, file: !464, line: 139, type: !5189, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5191)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!3123, !524}
!5191 = !{!5192}
!5192 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5188, file: !464, line: 139, type: !524)
!5193 = !DILocation(line: 0, scope: !5188)
!5194 = !DILocation(line: 141, column: 24, scope: !5188)
!5195 = !DILocation(line: 141, column: 12, scope: !5188)
!5196 = !DILocation(line: 141, column: 5, scope: !5188)
!5197 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !464, file: !464, line: 593, type: !5198, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!5136, !524, !5165}
!5200 = !{!5201, !5202}
!5201 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5197, file: !464, line: 593, type: !524)
!5202 = !DILocalVariable(name: "config", arg: 2, scope: !5197, file: !464, line: 593, type: !5165)
!5203 = !DILocation(line: 0, scope: !5197)
!5204 = !DILocation(line: 595, column: 10, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5197, file: !464, line: 595, column: 9)
!5206 = !DILocation(line: 595, column: 9, scope: !5197)
!5207 = !DILocation(line: 598, column: 45, scope: !5197)
!5208 = !DILocation(line: 598, column: 12, scope: !5197)
!5209 = !DILocation(line: 598, column: 59, scope: !5197)
!5210 = !DILocation(line: 598, column: 5, scope: !5197)
!5211 = !DILocation(line: 599, column: 23, scope: !5197)
!5212 = !DILocation(line: 600, column: 59, scope: !5197)
!5213 = !DILocation(line: 600, column: 23, scope: !5197)
!5214 = !DILocation(line: 601, column: 62, scope: !5197)
!5215 = !DILocation(line: 601, column: 23, scope: !5197)
!5216 = !DILocation(line: 602, column: 57, scope: !5197)
!5217 = !DILocation(line: 602, column: 23, scope: !5197)
!5218 = !DILocation(line: 603, column: 58, scope: !5197)
!5219 = !DILocation(line: 603, column: 23, scope: !5197)
!5220 = !DILocation(line: 599, column: 5, scope: !5197)
!5221 = !DILocation(line: 604, column: 5, scope: !5197)
!5222 = !DILocation(line: 605, column: 1, scope: !5197)
!5223 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !464, file: !464, line: 145, type: !5224, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5226)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!92, !539}
!5226 = !{!5227, !5228}
!5227 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5223, file: !464, line: 145, type: !539)
!5228 = !DILocalVariable(name: "baudrate_tbl", scope: !5223, file: !464, line: 147, type: !5229)
!5229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !5230)
!5230 = !{!5231}
!5231 = !DISubrange(count: 13)
!5232 = !DILocation(line: 0, scope: !5223)
!5233 = !DILocation(line: 147, column: 14, scope: !5223)
!5234 = !DILocation(line: 151, column: 12, scope: !5223)
!5235 = !DILocation(line: 151, column: 5, scope: !5223)
!5236 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !464, file: !464, line: 155, type: !5237, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5239)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{!438, !541}
!5239 = !{!5240, !5241}
!5240 = !DILocalVariable(name: "word_length", arg: 1, scope: !5236, file: !464, line: 155, type: !541)
!5241 = !DILocalVariable(name: "databit_tbl", scope: !5236, file: !464, line: 157, type: !5242)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 64, elements: !306)
!5243 = !DILocation(line: 0, scope: !5236)
!5244 = !DILocation(line: 157, column: 14, scope: !5236)
!5245 = !DILocation(line: 160, column: 12, scope: !5236)
!5246 = !DILocation(line: 160, column: 5, scope: !5236)
!5247 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !464, file: !464, line: 164, type: !5248, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!438, !545}
!5250 = !{!5251, !5252}
!5251 = !DILocalVariable(name: "parity", arg: 1, scope: !5247, file: !464, line: 164, type: !545)
!5252 = !DILocalVariable(name: "parity_tbl", scope: !5247, file: !464, line: 166, type: !5253)
!5253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 80, elements: !310)
!5254 = !DILocation(line: 0, scope: !5247)
!5255 = !DILocation(line: 166, column: 14, scope: !5247)
!5256 = !DILocation(line: 169, column: 12, scope: !5247)
!5257 = !DILocation(line: 169, column: 5, scope: !5247)
!5258 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !464, file: !464, line: 173, type: !5259, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5261)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!438, !543}
!5261 = !{!5262, !5263}
!5262 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5258, file: !464, line: 173, type: !543)
!5263 = !DILocalVariable(name: "stopbit_tbl", scope: !5258, file: !464, line: 175, type: !5264)
!5264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 48, elements: !691)
!5265 = !DILocation(line: 0, scope: !5258)
!5266 = !DILocation(line: 175, column: 14, scope: !5258)
!5267 = !DILocation(line: 178, column: 12, scope: !5258)
!5268 = !DILocation(line: 178, column: 5, scope: !5258)
!5269 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !464, file: !464, line: 87, type: !5270, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5272)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!222, !524}
!5272 = !{!5273}
!5273 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5269, file: !464, line: 87, type: !524)
!5274 = !DILocation(line: 0, scope: !5269)
!5275 = !DILocation(line: 89, column: 23, scope: !5269)
!5276 = !DILocation(line: 89, column: 5, scope: !5269)
!5277 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !464, file: !464, line: 264, type: !5278, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!5136, !524}
!5280 = !{!5281}
!5281 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5277, file: !464, line: 264, type: !524)
!5282 = !DILocation(line: 0, scope: !5277)
!5283 = !DILocation(line: 266, column: 10, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5277, file: !464, line: 266, column: 9)
!5285 = !DILocation(line: 266, column: 9, scope: !5277)
!5286 = !DILocation(line: 269, column: 41, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5277, file: !464, line: 269, column: 9)
!5288 = !DILocation(line: 269, column: 62, scope: !5287)
!5289 = !DILocation(line: 269, column: 9, scope: !5277)
!5290 = !DILocation(line: 272, column: 5, scope: !5277)
!5291 = !DILocation(line: 275, column: 22, scope: !5277)
!5292 = !DILocation(line: 275, column: 5, scope: !5277)
!5293 = !DILocation(line: 284, column: 5, scope: !5277)
!5294 = !DILocation(line: 286, column: 5, scope: !5277)
!5295 = !DILocation(line: 287, column: 1, scope: !5277)
!5296 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !464, file: !464, line: 290, type: !5297, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5299)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !524, !516}
!5299 = !{!5300, !5301, !5302}
!5300 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5296, file: !464, line: 290, type: !524)
!5301 = !DILocalVariable(name: "byte", arg: 2, scope: !5296, file: !464, line: 290, type: !516)
!5302 = !DILocalVariable(name: "int_no", scope: !5296, file: !464, line: 292, type: !3123)
!5303 = !DILocation(line: 0, scope: !5296)
!5304 = !DILocation(line: 292, column: 26, scope: !5296)
!5305 = !DILocation(line: 294, column: 16, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5296, file: !464, line: 294, column: 9)
!5307 = !DILocation(line: 294, column: 9, scope: !5296)
!5308 = !DILocation(line: 295, column: 9, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5306, file: !464, line: 294, column: 34)
!5310 = !DILocation(line: 296, column: 5, scope: !5309)
!5311 = !DILocation(line: 299, column: 1, scope: !5296)
!5312 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !464, file: !464, line: 302, type: !5313, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5315)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!92, !524, !3327, !92}
!5315 = !{!5316, !5317, !5318, !5319, !5320}
!5316 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5312, file: !464, line: 302, type: !524)
!5317 = !DILocalVariable(name: "data", arg: 2, scope: !5312, file: !464, line: 302, type: !3327)
!5318 = !DILocalVariable(name: "size", arg: 3, scope: !5312, file: !464, line: 302, type: !92)
!5319 = !DILocalVariable(name: "int_no", scope: !5312, file: !464, line: 304, type: !3123)
!5320 = !DILocalVariable(name: "index", scope: !5312, file: !464, line: 305, type: !92)
!5321 = !DILocation(line: 0, scope: !5312)
!5322 = !DILocation(line: 304, column: 26, scope: !5312)
!5323 = !DILocation(line: 307, column: 14, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5312, file: !464, line: 307, column: 9)
!5325 = !DILocation(line: 307, column: 9, scope: !5312)
!5326 = !DILocation(line: 313, column: 53, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !464, line: 312, column: 48)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !464, line: 312, column: 9)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !464, line: 312, column: 9)
!5330 = distinct !DILexicalBlock(scope: !5331, file: !464, line: 311, column: 33)
!5331 = distinct !DILexicalBlock(scope: !5312, file: !464, line: 311, column: 9)
!5332 = !DILocation(line: 313, column: 13, scope: !5327)
!5333 = !DILocation(line: 312, column: 44, scope: !5328)
!5334 = !DILocation(line: 312, column: 31, scope: !5328)
!5335 = !DILocation(line: 312, column: 9, scope: !5329)
!5336 = distinct !{!5336, !5335, !5337}
!5337 = !DILocation(line: 314, column: 9, scope: !5329)
!5338 = !DILocation(line: 318, column: 1, scope: !5312)
!5339 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !464, file: !464, line: 320, type: !5313, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5340)
!5340 = !{!5341, !5342, !5343, !5344, !5345, !5346}
!5341 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5339, file: !464, line: 320, type: !524)
!5342 = !DILocalVariable(name: "data", arg: 2, scope: !5339, file: !464, line: 320, type: !3327)
!5343 = !DILocalVariable(name: "size", arg: 3, scope: !5339, file: !464, line: 320, type: !92)
!5344 = !DILocalVariable(name: "actual_space", scope: !5339, file: !464, line: 322, type: !92)
!5345 = !DILocalVariable(name: "send_size", scope: !5339, file: !464, line: 322, type: !92)
!5346 = !DILocalVariable(name: "ch", scope: !5339, file: !464, line: 323, type: !5347)
!5347 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!5348 = !DILocation(line: 0, scope: !5339)
!5349 = !DILocation(line: 322, column: 5, scope: !5339)
!5350 = !DILocation(line: 328, column: 10, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5339, file: !464, line: 328, column: 9)
!5352 = !DILocation(line: 328, column: 9, scope: !5339)
!5353 = !DILocation(line: 332, column: 15, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5339, file: !464, line: 332, column: 9)
!5355 = !DILocation(line: 332, column: 24, scope: !5354)
!5356 = !DILocation(line: 335, column: 42, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5339, file: !464, line: 335, column: 9)
!5358 = !DILocation(line: 335, column: 9, scope: !5339)
!5359 = !DILocation(line: 349, column: 30, scope: !5339)
!5360 = !DILocation(line: 349, column: 5, scope: !5339)
!5361 = !DILocation(line: 350, column: 9, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5339, file: !464, line: 350, column: 9)
!5363 = !DILocation(line: 350, column: 22, scope: !5362)
!5364 = !DILocation(line: 355, column: 5, scope: !5339)
!5365 = !DILocation(line: 357, column: 22, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5339, file: !464, line: 357, column: 9)
!5367 = !DILocation(line: 357, column: 19, scope: !5366)
!5368 = !DILocation(line: 357, column: 9, scope: !5339)
!5369 = !DILocation(line: 358, column: 14, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5366, file: !464, line: 357, column: 36)
!5371 = !{i32 14, i32 18}
!5372 = !DILocation(line: 359, column: 9, scope: !5370)
!5373 = !DILocation(line: 360, column: 5, scope: !5370)
!5374 = !DILocation(line: 362, column: 1, scope: !5339)
!5375 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !464, file: !464, line: 191, type: !5376, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5378)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!5347, !3123, !222}
!5378 = !{!5379, !5380, !5381}
!5379 = !DILocalVariable(name: "port", arg: 1, scope: !5375, file: !464, line: 191, type: !3123)
!5380 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5375, file: !464, line: 191, type: !222)
!5381 = !DILocalVariable(name: "ch", scope: !5375, file: !464, line: 193, type: !5347)
!5382 = !DILocation(line: 0, scope: !5375)
!5383 = !DILocation(line: 195, column: 14, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5375, file: !464, line: 195, column: 9)
!5385 = !DILocation(line: 195, column: 9, scope: !5375)
!5386 = !DILocation(line: 209, column: 5, scope: !5375)
!5387 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !464, file: !464, line: 365, type: !5388, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5390)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!516, !524}
!5390 = !{!5391, !5392}
!5391 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5387, file: !464, line: 365, type: !524)
!5392 = !DILocalVariable(name: "int_no", scope: !5387, file: !464, line: 367, type: !3123)
!5393 = !DILocation(line: 0, scope: !5387)
!5394 = !DILocation(line: 367, column: 26, scope: !5387)
!5395 = !DILocation(line: 369, column: 16, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5387, file: !464, line: 369, column: 9)
!5397 = !DILocation(line: 369, column: 9, scope: !5387)
!5398 = !DILocation(line: 370, column: 22, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5396, file: !464, line: 369, column: 33)
!5400 = !DILocation(line: 370, column: 9, scope: !5399)
!5401 = !DILocation(line: 0, scope: !5396)
!5402 = !DILocation(line: 375, column: 1, scope: !5387)
!5403 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !464, file: !464, line: 377, type: !5404, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!92, !524}
!5406 = !{!5407, !5408}
!5407 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5403, file: !464, line: 377, type: !524)
!5408 = !DILocalVariable(name: "int_no", scope: !5403, file: !464, line: 379, type: !3123)
!5409 = !DILocation(line: 0, scope: !5403)
!5410 = !DILocation(line: 379, column: 26, scope: !5403)
!5411 = !DILocation(line: 381, column: 16, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5403, file: !464, line: 381, column: 9)
!5413 = !DILocation(line: 381, column: 9, scope: !5403)
!5414 = !DILocation(line: 382, column: 16, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5412, file: !464, line: 381, column: 33)
!5416 = !DILocation(line: 382, column: 9, scope: !5415)
!5417 = !DILocation(line: 0, scope: !5412)
!5418 = !DILocation(line: 387, column: 1, scope: !5403)
!5419 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !464, file: !464, line: 390, type: !5420, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!92, !524, !564, !92}
!5422 = !{!5423, !5424, !5425, !5426, !5427}
!5423 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5419, file: !464, line: 390, type: !524)
!5424 = !DILocalVariable(name: "buffer", arg: 2, scope: !5419, file: !464, line: 390, type: !564)
!5425 = !DILocalVariable(name: "size", arg: 3, scope: !5419, file: !464, line: 390, type: !92)
!5426 = !DILocalVariable(name: "int_no", scope: !5419, file: !464, line: 392, type: !3123)
!5427 = !DILocalVariable(name: "index", scope: !5419, file: !464, line: 393, type: !92)
!5428 = !DILocation(line: 0, scope: !5419)
!5429 = !DILocation(line: 392, column: 26, scope: !5419)
!5430 = !DILocation(line: 395, column: 16, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5419, file: !464, line: 395, column: 9)
!5432 = !DILocation(line: 395, column: 9, scope: !5419)
!5433 = !DILocation(line: 401, column: 38, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !464, line: 400, column: 48)
!5435 = distinct !DILexicalBlock(scope: !5436, file: !464, line: 400, column: 9)
!5436 = distinct !DILexicalBlock(scope: !5437, file: !464, line: 400, column: 9)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !464, line: 399, column: 33)
!5438 = distinct !DILexicalBlock(scope: !5419, file: !464, line: 399, column: 9)
!5439 = !DILocation(line: 401, column: 13, scope: !5434)
!5440 = !DILocation(line: 401, column: 27, scope: !5434)
!5441 = !DILocation(line: 400, column: 44, scope: !5435)
!5442 = !DILocation(line: 400, column: 31, scope: !5435)
!5443 = !DILocation(line: 400, column: 9, scope: !5436)
!5444 = distinct !{!5444, !5443, !5445}
!5445 = !DILocation(line: 402, column: 9, scope: !5436)
!5446 = !DILocation(line: 406, column: 1, scope: !5419)
!5447 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !464, file: !464, line: 408, type: !5420, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5448)
!5448 = !{!5449, !5450, !5451, !5452, !5453, !5454}
!5449 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5447, file: !464, line: 408, type: !524)
!5450 = !DILocalVariable(name: "buffer", arg: 2, scope: !5447, file: !464, line: 408, type: !564)
!5451 = !DILocalVariable(name: "size", arg: 3, scope: !5447, file: !464, line: 408, type: !92)
!5452 = !DILocalVariable(name: "actual_size", scope: !5447, file: !464, line: 410, type: !92)
!5453 = !DILocalVariable(name: "receive_size", scope: !5447, file: !464, line: 410, type: !92)
!5454 = !DILocalVariable(name: "ch", scope: !5447, file: !464, line: 411, type: !5347)
!5455 = !DILocation(line: 0, scope: !5447)
!5456 = !DILocation(line: 410, column: 5, scope: !5447)
!5457 = !DILocation(line: 413, column: 10, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5447, file: !464, line: 413, column: 9)
!5459 = !DILocation(line: 413, column: 9, scope: !5447)
!5460 = !DILocation(line: 417, column: 17, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5447, file: !464, line: 417, column: 9)
!5462 = !DILocation(line: 417, column: 26, scope: !5461)
!5463 = !DILocation(line: 421, column: 30, scope: !5447)
!5464 = !DILocation(line: 421, column: 5, scope: !5447)
!5465 = !DILocation(line: 422, column: 9, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5447, file: !464, line: 422, column: 9)
!5467 = !DILocation(line: 422, column: 21, scope: !5466)
!5468 = !DILocation(line: 427, column: 5, scope: !5447)
!5469 = !DILocation(line: 429, column: 25, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5447, file: !464, line: 429, column: 9)
!5471 = !DILocation(line: 429, column: 22, scope: !5470)
!5472 = !DILocation(line: 429, column: 9, scope: !5447)
!5473 = !DILocation(line: 430, column: 14, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5470, file: !464, line: 429, column: 38)
!5475 = !DILocation(line: 431, column: 9, scope: !5474)
!5476 = !DILocation(line: 432, column: 5, scope: !5474)
!5477 = !DILocation(line: 435, column: 1, scope: !5447)
!5478 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !464, file: !464, line: 438, type: !5404, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5479)
!5479 = !{!5480, !5481}
!5480 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5478, file: !464, line: 438, type: !524)
!5481 = !DILocalVariable(name: "length", scope: !5478, file: !464, line: 440, type: !92)
!5482 = !DILocation(line: 0, scope: !5478)
!5483 = !DILocation(line: 440, column: 5, scope: !5478)
!5484 = !DILocation(line: 440, column: 14, scope: !5478)
!5485 = !DILocation(line: 442, column: 10, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5478, file: !464, line: 442, column: 9)
!5487 = !DILocation(line: 442, column: 9, scope: !5478)
!5488 = !DILocation(line: 446, column: 30, scope: !5478)
!5489 = !DILocation(line: 446, column: 5, scope: !5478)
!5490 = !DILocation(line: 447, column: 12, scope: !5478)
!5491 = !DILocation(line: 447, column: 5, scope: !5478)
!5492 = !DILocation(line: 448, column: 1, scope: !5478)
!5493 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !464, file: !464, line: 451, type: !5404, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5494)
!5494 = !{!5495, !5496}
!5495 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5493, file: !464, line: 451, type: !524)
!5496 = !DILocalVariable(name: "length", scope: !5493, file: !464, line: 453, type: !92)
!5497 = !DILocation(line: 0, scope: !5493)
!5498 = !DILocation(line: 453, column: 5, scope: !5493)
!5499 = !DILocation(line: 453, column: 14, scope: !5493)
!5500 = !DILocation(line: 455, column: 10, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5493, file: !464, line: 455, column: 9)
!5502 = !DILocation(line: 455, column: 9, scope: !5493)
!5503 = !DILocation(line: 459, column: 30, scope: !5493)
!5504 = !DILocation(line: 459, column: 5, scope: !5493)
!5505 = !DILocation(line: 461, column: 12, scope: !5493)
!5506 = !DILocation(line: 461, column: 5, scope: !5493)
!5507 = !DILocation(line: 462, column: 1, scope: !5493)
!5508 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !464, file: !464, line: 543, type: !5509, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5511)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!5136, !524, !552, !219}
!5511 = !{!5512, !5513, !5514, !5515}
!5512 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5508, file: !464, line: 543, type: !524)
!5513 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5508, file: !464, line: 544, type: !552)
!5514 = !DILocalVariable(name: "user_data", arg: 3, scope: !5508, file: !464, line: 545, type: !219)
!5515 = !DILocalVariable(name: "ch", scope: !5508, file: !464, line: 547, type: !5347)
!5516 = !DILocation(line: 0, scope: !5508)
!5517 = !DILocation(line: 549, column: 10, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5508, file: !464, line: 549, column: 9)
!5519 = !DILocation(line: 549, column: 9, scope: !5508)
!5520 = !DILocation(line: 556, column: 53, scope: !5508)
!5521 = !DILocation(line: 556, column: 62, scope: !5508)
!5522 = !DILocation(line: 557, column: 53, scope: !5508)
!5523 = !DILocation(line: 557, column: 63, scope: !5508)
!5524 = !DILocation(line: 558, column: 37, scope: !5508)
!5525 = !DILocation(line: 558, column: 54, scope: !5508)
!5526 = !DILocation(line: 560, column: 39, scope: !5508)
!5527 = !DILocation(line: 561, column: 39, scope: !5508)
!5528 = !DILocation(line: 560, column: 5, scope: !5508)
!5529 = !DILocation(line: 562, column: 5, scope: !5508)
!5530 = !DILocation(line: 564, column: 44, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5508, file: !464, line: 564, column: 9)
!5532 = !DILocation(line: 564, column: 9, scope: !5508)
!5533 = !DILocation(line: 565, column: 9, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5531, file: !464, line: 564, column: 59)
!5535 = !DILocation(line: 566, column: 5, scope: !5534)
!5536 = !DILocation(line: 567, column: 9, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5531, file: !464, line: 566, column: 12)
!5538 = !DILocation(line: 569, column: 10, scope: !5508)
!5539 = !DILocation(line: 570, column: 5, scope: !5508)
!5540 = !DILocation(line: 578, column: 5, scope: !5508)
!5541 = !DILocation(line: 579, column: 1, scope: !5508)
!5542 = !DILocation(line: 0, scope: !520)
!5543 = !DILocation(line: 539, column: 12, scope: !520)
!5544 = !DILocation(line: 539, column: 5, scope: !520)
!5545 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !464, file: !464, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5546)
!5546 = !{!5547}
!5547 = !DILocalVariable(name: "callback_context", scope: !5548, file: !464, line: 514, type: !5550)
!5548 = distinct !DILexicalBlock(scope: !5549, file: !464, line: 513, column: 60)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !464, line: 513, column: 9)
!5550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!5551 = !DILocation(line: 513, column: 42, scope: !5549)
!5552 = !DILocation(line: 513, column: 9, scope: !5545)
!5553 = !DILocation(line: 515, column: 39, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5548, file: !464, line: 515, column: 13)
!5555 = !DILocation(line: 515, column: 18, scope: !5554)
!5556 = !DILocation(line: 515, column: 13, scope: !5548)
!5557 = !DILocation(line: 516, column: 89, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5554, file: !464, line: 515, column: 49)
!5559 = !DILocation(line: 516, column: 13, scope: !5558)
!5560 = !DILocation(line: 517, column: 9, scope: !5558)
!5561 = !DILocation(line: 519, column: 32, scope: !5545)
!5562 = !DILocation(line: 519, column: 5, scope: !5545)
!5563 = !DILocation(line: 520, column: 1, scope: !5545)
!5564 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !464, file: !464, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5565)
!5565 = !{!5566}
!5566 = !DILocalVariable(name: "callback_context", scope: !5567, file: !464, line: 526, type: !5550)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !464, line: 525, column: 60)
!5568 = distinct !DILexicalBlock(scope: !5564, file: !464, line: 525, column: 9)
!5569 = !DILocation(line: 525, column: 42, scope: !5568)
!5570 = !DILocation(line: 525, column: 9, scope: !5564)
!5571 = !DILocation(line: 527, column: 39, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5567, file: !464, line: 527, column: 13)
!5573 = !DILocation(line: 527, column: 18, scope: !5572)
!5574 = !DILocation(line: 527, column: 13, scope: !5567)
!5575 = !DILocation(line: 528, column: 89, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5572, file: !464, line: 527, column: 49)
!5577 = !DILocation(line: 528, column: 13, scope: !5576)
!5578 = !DILocation(line: 529, column: 9, scope: !5576)
!5579 = !DILocation(line: 531, column: 32, scope: !5564)
!5580 = !DILocation(line: 531, column: 5, scope: !5564)
!5581 = !DILocation(line: 532, column: 1, scope: !5564)
!5582 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !464, file: !464, line: 464, type: !5583, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5585)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !3123, !222}
!5585 = !{!5586, !5587, !5588, !5589, !5590, !5592}
!5586 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5582, file: !464, line: 464, type: !3123)
!5587 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5582, file: !464, line: 464, type: !222)
!5588 = !DILocalVariable(name: "avail_size", scope: !5582, file: !464, line: 466, type: !92)
!5589 = !DILocalVariable(name: "avail_space", scope: !5582, file: !464, line: 466, type: !92)
!5590 = !DILocalVariable(name: "dma_config", scope: !5582, file: !464, line: 467, type: !5591)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 32)
!5592 = !DILocalVariable(name: "ch", scope: !5582, file: !464, line: 468, type: !5347)
!5593 = !DILocation(line: 0, scope: !5582)
!5594 = !DILocation(line: 466, column: 5, scope: !5582)
!5595 = !DILocation(line: 471, column: 9, scope: !5582)
!5596 = !DILocation(line: 472, column: 9, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !464, line: 471, column: 16)
!5598 = distinct !DILexicalBlock(scope: !5582, file: !464, line: 471, column: 9)
!5599 = !DILocation(line: 473, column: 13, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5597, file: !464, line: 473, column: 13)
!5601 = !DILocation(line: 473, column: 39, scope: !5600)
!5602 = !DILocation(line: 473, column: 24, scope: !5600)
!5603 = !DILocation(line: 473, column: 13, scope: !5597)
!5604 = !DILocation(line: 478, column: 9, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5598, file: !464, line: 477, column: 12)
!5606 = !DILocation(line: 479, column: 13, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5605, file: !464, line: 479, column: 13)
!5608 = !DILocation(line: 479, column: 40, scope: !5607)
!5609 = !DILocation(line: 479, column: 77, scope: !5607)
!5610 = !DILocation(line: 479, column: 63, scope: !5607)
!5611 = !DILocation(line: 479, column: 25, scope: !5607)
!5612 = !DILocation(line: 479, column: 13, scope: !5605)
!5613 = !DILocation(line: 0, scope: !5598)
!5614 = !DILocation(line: 484, column: 1, scope: !5582)
!5615 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !464, file: !464, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5616)
!5616 = !{!5617}
!5617 = !DILocalVariable(name: "callback_context", scope: !5618, file: !464, line: 490, type: !5550)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !464, line: 489, column: 70)
!5619 = distinct !DILexicalBlock(scope: !5615, file: !464, line: 488, column: 9)
!5620 = !DILocation(line: 488, column: 43, scope: !5619)
!5621 = !DILocation(line: 488, column: 61, scope: !5619)
!5622 = !DILocation(line: 489, column: 14, scope: !5619)
!5623 = !DILocation(line: 489, column: 63, scope: !5619)
!5624 = !DILocation(line: 488, column: 9, scope: !5615)
!5625 = !DILocation(line: 491, column: 39, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5618, file: !464, line: 491, column: 13)
!5627 = !DILocation(line: 491, column: 18, scope: !5626)
!5628 = !DILocation(line: 491, column: 13, scope: !5618)
!5629 = !DILocation(line: 492, column: 88, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5626, file: !464, line: 491, column: 49)
!5631 = !DILocation(line: 492, column: 13, scope: !5630)
!5632 = !DILocation(line: 493, column: 9, scope: !5630)
!5633 = !DILocation(line: 495, column: 32, scope: !5615)
!5634 = !DILocation(line: 495, column: 5, scope: !5615)
!5635 = !DILocation(line: 496, column: 1, scope: !5615)
!5636 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !464, file: !464, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5637)
!5637 = !{!5638}
!5638 = !DILocalVariable(name: "callback_context", scope: !5639, file: !464, line: 503, type: !5550)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !464, line: 502, column: 70)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !464, line: 501, column: 9)
!5641 = !DILocation(line: 501, column: 43, scope: !5640)
!5642 = !DILocation(line: 501, column: 61, scope: !5640)
!5643 = !DILocation(line: 502, column: 14, scope: !5640)
!5644 = !DILocation(line: 502, column: 63, scope: !5640)
!5645 = !DILocation(line: 501, column: 9, scope: !5636)
!5646 = !DILocation(line: 504, column: 39, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5639, file: !464, line: 504, column: 13)
!5648 = !DILocation(line: 504, column: 18, scope: !5647)
!5649 = !DILocation(line: 504, column: 13, scope: !5639)
!5650 = !DILocation(line: 505, column: 88, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5647, file: !464, line: 504, column: 49)
!5652 = !DILocation(line: 505, column: 13, scope: !5651)
!5653 = !DILocation(line: 506, column: 9, scope: !5651)
!5654 = !DILocation(line: 508, column: 32, scope: !5636)
!5655 = !DILocation(line: 508, column: 5, scope: !5636)
!5656 = !DILocation(line: 509, column: 1, scope: !5636)
!5657 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !464, file: !464, line: 582, type: !5658, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5660)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!5136, !524, !539}
!5660 = !{!5661, !5662}
!5661 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5657, file: !464, line: 582, type: !524)
!5662 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5657, file: !464, line: 582, type: !539)
!5663 = !DILocation(line: 0, scope: !5657)
!5664 = !DILocation(line: 584, column: 11, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5657, file: !464, line: 584, column: 9)
!5666 = !DILocation(line: 584, column: 46, scope: !5665)
!5667 = !DILocation(line: 588, column: 37, scope: !5657)
!5668 = !DILocation(line: 588, column: 50, scope: !5657)
!5669 = !DILocation(line: 588, column: 59, scope: !5657)
!5670 = !DILocation(line: 589, column: 12, scope: !5657)
!5671 = !DILocation(line: 589, column: 5, scope: !5657)
!5672 = !DILocation(line: 590, column: 1, scope: !5657)
!5673 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !464, file: !464, line: 608, type: !5674, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5678)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!5136, !524, !5676}
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 32)
!5677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!5678 = !{!5679, !5680}
!5679 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5673, file: !464, line: 608, type: !524)
!5680 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5673, file: !464, line: 608, type: !5676)
!5681 = !DILocation(line: 0, scope: !5673)
!5682 = !DILocation(line: 610, column: 10, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5673, file: !464, line: 610, column: 9)
!5684 = !DILocation(line: 610, column: 9, scope: !5673)
!5685 = !DILocation(line: 614, column: 10, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5673, file: !464, line: 614, column: 9)
!5687 = !DILocation(line: 614, column: 9, scope: !5673)
!5688 = !DILocation(line: 618, column: 37, scope: !5673)
!5689 = !DILocation(line: 618, column: 56, scope: !5673)
!5690 = !DILocation(line: 619, column: 45, scope: !5673)
!5691 = !DILocation(line: 619, column: 12, scope: !5673)
!5692 = !DILocation(line: 620, column: 12, scope: !5673)
!5693 = !DILocation(line: 619, column: 5, scope: !5673)
!5694 = !DILocation(line: 621, column: 5, scope: !5673)
!5695 = !DILocation(line: 622, column: 5, scope: !5673)
!5696 = !DILocation(line: 623, column: 33, scope: !5673)
!5697 = !DILocation(line: 624, column: 50, scope: !5673)
!5698 = !DILocation(line: 625, column: 50, scope: !5673)
!5699 = !DILocation(line: 626, column: 50, scope: !5673)
!5700 = !DILocation(line: 627, column: 50, scope: !5673)
!5701 = !DILocation(line: 628, column: 33, scope: !5673)
!5702 = !DILocation(line: 623, column: 5, scope: !5673)
!5703 = !DILocation(line: 630, column: 50, scope: !5673)
!5704 = !DILocation(line: 631, column: 50, scope: !5673)
!5705 = !DILocation(line: 632, column: 50, scope: !5673)
!5706 = !DILocation(line: 629, column: 5, scope: !5673)
!5707 = !DILocation(line: 634, column: 5, scope: !5673)
!5708 = !DILocation(line: 635, column: 1, scope: !5673)
!5709 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !464, file: !464, line: 112, type: !5710, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5712)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{!222, !5676}
!5712 = !{!5713}
!5713 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5709, file: !464, line: 112, type: !5676)
!5714 = !DILocation(line: 0, scope: !5709)
!5715 = !DILocation(line: 114, column: 14, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5709, file: !464, line: 114, column: 9)
!5717 = !DILocation(line: 114, column: 9, scope: !5709)
!5718 = !DILocation(line: 117, column: 29, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5709, file: !464, line: 117, column: 9)
!5720 = !DILocation(line: 117, column: 14, scope: !5719)
!5721 = !DILocation(line: 117, column: 9, scope: !5709)
!5722 = !DILocation(line: 120, column: 21, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5709, file: !464, line: 120, column: 9)
!5724 = !DILocation(line: 120, column: 61, scope: !5723)
!5725 = !DILocation(line: 120, column: 47, scope: !5723)
!5726 = !DILocation(line: 120, column: 9, scope: !5709)
!5727 = !DILocation(line: 123, column: 61, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5709, file: !464, line: 123, column: 9)
!5729 = !DILocation(line: 123, column: 47, scope: !5728)
!5730 = !DILocation(line: 123, column: 9, scope: !5709)
!5731 = !DILocation(line: 126, column: 29, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5709, file: !464, line: 126, column: 9)
!5733 = !DILocation(line: 126, column: 14, scope: !5732)
!5734 = !DILocation(line: 126, column: 9, scope: !5709)
!5735 = !DILocation(line: 129, column: 21, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5709, file: !464, line: 129, column: 9)
!5737 = !DILocation(line: 129, column: 58, scope: !5736)
!5738 = !DILocation(line: 129, column: 44, scope: !5736)
!5739 = !DILocation(line: 129, column: 9, scope: !5709)
!5740 = !DILocation(line: 136, column: 1, scope: !5709)
!5741 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !464, file: !464, line: 182, type: !4666, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5742)
!5742 = !{!5743, !5744}
!5743 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5741, file: !464, line: 182, type: !92)
!5744 = !DILocalVariable(name: "ticks_per_us", scope: !5741, file: !464, line: 184, type: !92)
!5745 = !DILocation(line: 0, scope: !5741)
!5746 = !DILocation(line: 186, column: 20, scope: !5741)
!5747 = !DILocation(line: 186, column: 39, scope: !5741)
!5748 = !DILocation(line: 188, column: 25, scope: !5741)
!5749 = !DILocation(line: 188, column: 5, scope: !5741)
!5750 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !464, file: !464, line: 637, type: !5278, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5751)
!5751 = !{!5752, !5753}
!5752 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5750, file: !464, line: 637, type: !524)
!5753 = !DILocalVariable(name: "int_no", scope: !5750, file: !464, line: 639, type: !3123)
!5754 = !DILocation(line: 0, scope: !5750)
!5755 = !DILocation(line: 641, column: 10, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5750, file: !464, line: 641, column: 9)
!5757 = !DILocation(line: 641, column: 9, scope: !5750)
!5758 = !DILocation(line: 645, column: 14, scope: !5750)
!5759 = !DILocation(line: 646, column: 5, scope: !5750)
!5760 = !DILocation(line: 648, column: 5, scope: !5750)
!5761 = !DILocation(line: 649, column: 1, scope: !5750)
!5762 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !464, file: !464, line: 651, type: !5763, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5765)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!5136, !524, !267, !267, !267}
!5765 = !{!5766, !5767, !5768, !5769, !5770}
!5766 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5762, file: !464, line: 651, type: !524)
!5767 = !DILocalVariable(name: "xon", arg: 2, scope: !5762, file: !464, line: 652, type: !267)
!5768 = !DILocalVariable(name: "xoff", arg: 3, scope: !5762, file: !464, line: 653, type: !267)
!5769 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5762, file: !464, line: 654, type: !267)
!5770 = !DILocalVariable(name: "int_no", scope: !5762, file: !464, line: 656, type: !3123)
!5771 = !DILocation(line: 0, scope: !5762)
!5772 = !DILocation(line: 658, column: 10, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5762, file: !464, line: 658, column: 9)
!5774 = !DILocation(line: 658, column: 9, scope: !5762)
!5775 = !DILocation(line: 662, column: 14, scope: !5762)
!5776 = !DILocation(line: 663, column: 5, scope: !5762)
!5777 = !DILocation(line: 665, column: 5, scope: !5762)
!5778 = !DILocation(line: 666, column: 1, scope: !5762)
!5779 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !464, file: !464, line: 668, type: !5278, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5780)
!5780 = !{!5781, !5782}
!5781 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5779, file: !464, line: 668, type: !524)
!5782 = !DILocalVariable(name: "int_no", scope: !5779, file: !464, line: 670, type: !3123)
!5783 = !DILocation(line: 0, scope: !5779)
!5784 = !DILocation(line: 672, column: 10, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5779, file: !464, line: 672, column: 9)
!5786 = !DILocation(line: 672, column: 9, scope: !5779)
!5787 = !DILocation(line: 676, column: 14, scope: !5779)
!5788 = !DILocation(line: 677, column: 5, scope: !5779)
!5789 = !DILocation(line: 679, column: 5, scope: !5779)
!5790 = !DILocation(line: 680, column: 1, scope: !5779)
!5791 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !464, file: !464, line: 683, type: !5792, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !5794)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!5136, !524, !92}
!5794 = !{!5795, !5796}
!5795 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5791, file: !464, line: 683, type: !524)
!5796 = !DILocalVariable(name: "timeout", arg: 2, scope: !5791, file: !464, line: 683, type: !92)
!5797 = !DILocation(line: 0, scope: !5791)
!5798 = !DILocation(line: 685, column: 10, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5791, file: !464, line: 685, column: 9)
!5800 = !DILocation(line: 685, column: 9, scope: !5791)
!5801 = !DILocation(line: 689, column: 19, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5791, file: !464, line: 689, column: 9)
!5803 = !DILocation(line: 0, scope: !5802)
!5804 = !DILocation(line: 696, column: 1, scope: !5791)
!5805 = distinct !DISubprogram(name: "__io_putchar", scope: !1145, file: !1145, line: 58, type: !5806, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !5808)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!13, !13}
!5808 = !{!5809}
!5809 = !DILocalVariable(name: "ch", arg: 1, scope: !5805, file: !1145, line: 58, type: !13)
!5810 = !DILocation(line: 0, scope: !5805)
!5811 = !DILocation(line: 65, column: 35, scope: !5805)
!5812 = !DILocation(line: 65, column: 5, scope: !5805)
!5813 = !DILocation(line: 66, column: 5, scope: !5805)
!5814 = distinct !DISubprogram(name: "main", scope: !1145, file: !1145, line: 138, type: !3099, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !1338)
!5815 = !DILocation(line: 141, column: 5, scope: !5814)
!5816 = !DILocation(line: 144, column: 5, scope: !5814)
!5817 = !DILocation(line: 319, column: 3, scope: !5818, inlinedAt: !5819)
!5818 = distinct !DISubprogram(name: "__enable_irq", scope: !2474, file: !2474, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !1338)
!5819 = distinct !DILocation(line: 147, column: 5, scope: !5814)
!5820 = !{i64 500735}
!5821 = !DILocation(line: 496, column: 3, scope: !5822, inlinedAt: !5823)
!5822 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2474, file: !2474, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !1338)
!5823 = distinct !DILocation(line: 148, column: 5, scope: !5814)
!5824 = !{i64 505010}
!5825 = !DILocation(line: 151, column: 5, scope: !5814)
!5826 = !DILocation(line: 153, column: 5, scope: !5814)
!5827 = !DILocation(line: 154, column: 5, scope: !5814)
!5828 = !DILocation(line: 156, column: 5, scope: !5814)
!5829 = !DILocation(line: 158, column: 5, scope: !5814)
!5830 = !DILocation(line: 158, column: 5, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5832, file: !1145, line: 158, column: 5)
!5832 = distinct !DILexicalBlock(scope: !5814, file: !1145, line: 158, column: 5)
!5833 = distinct !{!5833, !5834, !5835}
!5834 = !DILocation(line: 158, column: 5, scope: !5832)
!5835 = !DILocation(line: 158, column: 13, scope: !5832)
!5836 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1145, file: !1145, line: 95, type: !75, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !1338)
!5837 = !DILocation(line: 97, column: 5, scope: !5836)
!5838 = !DILocation(line: 98, column: 1, scope: !5836)
!5839 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1145, file: !1145, line: 105, type: !75, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !1338)
!5840 = !DILocation(line: 108, column: 5, scope: !5839)
!5841 = !DILocation(line: 109, column: 1, scope: !5839)
!5842 = distinct !DISubprogram(name: "pwm_generate_waveform", scope: !1145, file: !1145, line: 115, type: !75, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !5843)
!5843 = !{!5844, !5845}
!5844 = !DILocalVariable(name: "total_count", scope: !5842, file: !1145, line: 118, type: !92)
!5845 = !DILocalVariable(name: "duty_cycle", scope: !5842, file: !1145, line: 119, type: !92)
!5846 = !DILocation(line: 118, column: 5, scope: !5842)
!5847 = !DILocation(line: 0, scope: !5842)
!5848 = !DILocation(line: 118, column: 14, scope: !5842)
!5849 = !DILocation(line: 121, column: 5, scope: !5842)
!5850 = !DILocation(line: 122, column: 5, scope: !5842)
!5851 = !DILocation(line: 125, column: 5, scope: !5842)
!5852 = !DILocation(line: 127, column: 5, scope: !5842)
!5853 = !DILocation(line: 129, column: 5, scope: !5842)
!5854 = !DILocation(line: 131, column: 19, scope: !5842)
!5855 = !DILocation(line: 131, column: 31, scope: !5842)
!5856 = !DILocation(line: 131, column: 37, scope: !5842)
!5857 = !DILocation(line: 132, column: 5, scope: !5842)
!5858 = !DILocation(line: 133, column: 5, scope: !5842)
!5859 = !DILocation(line: 134, column: 5, scope: !5842)
!5860 = !DILocation(line: 135, column: 5, scope: !5842)
!5861 = !DILocation(line: 136, column: 1, scope: !5842)
!5862 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1145, file: !1145, line: 74, type: !75, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !5863)
!5863 = !{!5864}
!5864 = !DILocalVariable(name: "uart_config", scope: !5862, file: !1145, line: 76, type: !5865)
!5865 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !467, line: 378, baseType: !5866)
!5866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 373, size: 128, elements: !5867)
!5867 = !{!5868, !5869, !5870, !5871}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5866, file: !467, line: 374, baseType: !539, size: 32)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5866, file: !467, line: 375, baseType: !541, size: 32, offset: 32)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5866, file: !467, line: 376, baseType: !543, size: 32, offset: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5866, file: !467, line: 377, baseType: !545, size: 32, offset: 96)
!5872 = !DILocation(line: 76, column: 5, scope: !5862)
!5873 = !DILocation(line: 76, column: 23, scope: !5862)
!5874 = !DILocation(line: 78, column: 5, scope: !5862)
!5875 = !DILocation(line: 79, column: 5, scope: !5862)
!5876 = !DILocation(line: 80, column: 5, scope: !5862)
!5877 = !DILocation(line: 81, column: 5, scope: !5862)
!5878 = !DILocation(line: 84, column: 17, scope: !5862)
!5879 = !DILocation(line: 84, column: 26, scope: !5862)
!5880 = !DILocation(line: 85, column: 17, scope: !5862)
!5881 = !DILocation(line: 85, column: 29, scope: !5862)
!5882 = !DILocation(line: 86, column: 17, scope: !5862)
!5883 = !DILocation(line: 86, column: 26, scope: !5862)
!5884 = !DILocation(line: 87, column: 17, scope: !5862)
!5885 = !DILocation(line: 87, column: 24, scope: !5862)
!5886 = !DILocation(line: 88, column: 5, scope: !5862)
!5887 = !DILocation(line: 89, column: 1, scope: !5862)
!5888 = distinct !DISubprogram(name: "SysTick_Set", scope: !574, file: !574, line: 70, type: !4666, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !5889)
!5889 = !{!5890, !5891}
!5890 = !DILocalVariable(name: "ticks", arg: 1, scope: !5888, file: !574, line: 70, type: !92)
!5891 = !DILocalVariable(name: "val", scope: !5888, file: !574, line: 72, type: !92)
!5892 = !DILocation(line: 0, scope: !5888)
!5893 = !DILocation(line: 74, column: 16, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5888, file: !574, line: 74, column: 9)
!5895 = !DILocation(line: 74, column: 21, scope: !5894)
!5896 = !DILocation(line: 74, column: 9, scope: !5888)
!5897 = !DILocation(line: 78, column: 20, scope: !5888)
!5898 = !DILocation(line: 80, column: 19, scope: !5888)
!5899 = !DILocation(line: 83, column: 20, scope: !5888)
!5900 = !DILocation(line: 84, column: 20, scope: !5888)
!5901 = !DILocation(line: 86, column: 19, scope: !5888)
!5902 = !DILocation(line: 88, column: 5, scope: !5888)
!5903 = !DILocation(line: 89, column: 1, scope: !5888)
!5904 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !574, file: !574, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1338)
!5905 = !DILocation(line: 100, column: 28, scope: !5904)
!5906 = !DILocation(line: 101, column: 1, scope: !5904)
!5907 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !574, file: !574, line: 110, type: !2468, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1338)
!5908 = !DILocation(line: 112, column: 12, scope: !5907)
!5909 = !DILocation(line: 112, column: 5, scope: !5907)
!5910 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !574, file: !574, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1338)
!5911 = !DILocation(line: 124, column: 23, scope: !5910)
!5912 = !DILocation(line: 124, column: 21, scope: !5910)
!5913 = !DILocation(line: 125, column: 1, scope: !5910)
!5914 = distinct !DISubprogram(name: "SystemInit", scope: !574, file: !574, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1338)
!5915 = !DILocation(line: 140, column: 16, scope: !5914)
!5916 = !DILocation(line: 144, column: 16, scope: !5914)
!5917 = !DILocation(line: 147, column: 16, scope: !5914)
!5918 = !DILocation(line: 150, column: 1, scope: !5914)
!5919 = distinct !DISubprogram(name: "CachePreInit", scope: !574, file: !574, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1338)
!5920 = !DILocation(line: 161, column: 22, scope: !5919)
!5921 = !DILocation(line: 164, column: 21, scope: !5919)
!5922 = !DILocation(line: 167, column: 21, scope: !5919)
!5923 = !DILocation(line: 170, column: 29, scope: !5919)
!5924 = !DILocation(line: 171, column: 33, scope: !5919)
!5925 = !DILocation(line: 173, column: 28, scope: !5919)
!5926 = !DILocation(line: 178, column: 30, scope: !5919)
!5927 = !DILocation(line: 192, column: 1, scope: !5919)
!5928 = distinct !DISubprogram(name: "_close", scope: !634, file: !634, line: 11, type: !5806, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5929)
!5929 = !{!5930}
!5930 = !DILocalVariable(name: "file", arg: 1, scope: !5928, file: !634, line: 11, type: !13)
!5931 = !DILocation(line: 0, scope: !5928)
!5932 = !DILocation(line: 13, column: 5, scope: !5928)
!5933 = distinct !DISubprogram(name: "_fstat", scope: !634, file: !634, line: 16, type: !5934, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5982)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{!13, !13, !5936}
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5937, size: 32)
!5937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5938, line: 27, size: 704, elements: !5939)
!5938 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5939 = !{!5940, !5943, !5946, !5949, !5952, !5955, !5958, !5959, !5962, !5972, !5973, !5974, !5977, !5980}
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5937, file: !5938, line: 29, baseType: !5941, size: 16)
!5941 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !638, line: 161, baseType: !5942)
!5942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !680, line: 56, baseType: !655)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5937, file: !5938, line: 30, baseType: !5944, size: 16, offset: 16)
!5944 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !638, line: 139, baseType: !5945)
!5945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !680, line: 75, baseType: !132)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5937, file: !5938, line: 31, baseType: !5947, size: 32, offset: 32)
!5947 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !638, line: 189, baseType: !5948)
!5948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !680, line: 90, baseType: !94)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5937, file: !5938, line: 32, baseType: !5950, size: 16, offset: 64)
!5950 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !638, line: 194, baseType: !5951)
!5951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !680, line: 209, baseType: !132)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5937, file: !5938, line: 33, baseType: !5953, size: 16, offset: 80)
!5953 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !638, line: 165, baseType: !5954)
!5954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !680, line: 60, baseType: !132)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5937, file: !5938, line: 34, baseType: !5956, size: 16, offset: 96)
!5956 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !638, line: 169, baseType: !5957)
!5957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !680, line: 63, baseType: !132)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5937, file: !5938, line: 35, baseType: !5941, size: 16, offset: 112)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5937, file: !5938, line: 36, baseType: !5960, size: 32, offset: 128)
!5960 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !638, line: 157, baseType: !5961)
!5961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !680, line: 102, baseType: !698)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5937, file: !5938, line: 42, baseType: !5963, size: 128, offset: 192)
!5963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5964, line: 47, size: 128, elements: !5965)
!5964 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5965 = !{!5966, !5971}
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5963, file: !5964, line: 48, baseType: !5967, size: 64)
!5967 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5968, line: 42, baseType: !5969)
!5968 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !5970)
!5970 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5963, file: !5964, line: 49, baseType: !681, size: 32, offset: 64)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5937, file: !5938, line: 43, baseType: !5963, size: 128, offset: 320)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5937, file: !5938, line: 44, baseType: !5963, size: 128, offset: 448)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5937, file: !5938, line: 45, baseType: !5975, size: 32, offset: 576)
!5975 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !638, line: 102, baseType: !5976)
!5976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !680, line: 34, baseType: !681)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5937, file: !5938, line: 46, baseType: !5978, size: 32, offset: 608)
!5978 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !638, line: 97, baseType: !5979)
!5979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !680, line: 30, baseType: !681)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5937, file: !5938, line: 48, baseType: !5981, size: 64, offset: 640)
!5981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 64, elements: !300)
!5982 = !{!5983, !5984}
!5983 = !DILocalVariable(name: "file", arg: 1, scope: !5933, file: !634, line: 16, type: !13)
!5984 = !DILocalVariable(name: "st", arg: 2, scope: !5933, file: !634, line: 16, type: !5936)
!5985 = !DILocation(line: 0, scope: !5933)
!5986 = !DILocation(line: 18, column: 5, scope: !5933)
!5987 = distinct !DISubprogram(name: "_isatty", scope: !634, file: !634, line: 22, type: !5806, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5988)
!5988 = !{!5989}
!5989 = !DILocalVariable(name: "file", arg: 1, scope: !5987, file: !634, line: 22, type: !13)
!5990 = !DILocation(line: 0, scope: !5987)
!5991 = !DILocation(line: 24, column: 5, scope: !5987)
!5992 = distinct !DISubprogram(name: "_lseek", scope: !634, file: !634, line: 27, type: !5993, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !5995)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{!13, !13, !13, !13}
!5995 = !{!5996, !5997, !5998}
!5996 = !DILocalVariable(name: "file", arg: 1, scope: !5992, file: !634, line: 27, type: !13)
!5997 = !DILocalVariable(name: "ptr", arg: 2, scope: !5992, file: !634, line: 27, type: !13)
!5998 = !DILocalVariable(name: "dir", arg: 3, scope: !5992, file: !634, line: 27, type: !13)
!5999 = !DILocation(line: 0, scope: !5992)
!6000 = !DILocation(line: 29, column: 5, scope: !5992)
!6001 = distinct !DISubprogram(name: "_open", scope: !634, file: !634, line: 32, type: !6002, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6004)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!13, !673, !13, !13}
!6004 = !{!6005, !6006, !6007}
!6005 = !DILocalVariable(name: "name", arg: 1, scope: !6001, file: !634, line: 32, type: !673)
!6006 = !DILocalVariable(name: "flags", arg: 2, scope: !6001, file: !634, line: 32, type: !13)
!6007 = !DILocalVariable(name: "mode", arg: 3, scope: !6001, file: !634, line: 32, type: !13)
!6008 = !DILocation(line: 0, scope: !6001)
!6009 = !DILocation(line: 34, column: 5, scope: !6001)
!6010 = distinct !DISubprogram(name: "_read", scope: !634, file: !634, line: 37, type: !6011, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6013)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{!13, !13, !639, !13}
!6013 = !{!6014, !6015, !6016}
!6014 = !DILocalVariable(name: "file", arg: 1, scope: !6010, file: !634, line: 37, type: !13)
!6015 = !DILocalVariable(name: "ptr", arg: 2, scope: !6010, file: !634, line: 37, type: !639)
!6016 = !DILocalVariable(name: "len", arg: 3, scope: !6010, file: !634, line: 37, type: !13)
!6017 = !DILocation(line: 0, scope: !6010)
!6018 = !DILocation(line: 39, column: 5, scope: !6010)
!6019 = distinct !DISubprogram(name: "_write", scope: !634, file: !634, line: 52, type: !6011, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6020)
!6020 = !{!6021, !6022, !6023, !6024}
!6021 = !DILocalVariable(name: "file", arg: 1, scope: !6019, file: !634, line: 52, type: !13)
!6022 = !DILocalVariable(name: "ptr", arg: 2, scope: !6019, file: !634, line: 52, type: !639)
!6023 = !DILocalVariable(name: "len", arg: 3, scope: !6019, file: !634, line: 52, type: !13)
!6024 = !DILocalVariable(name: "i", scope: !6019, file: !634, line: 54, type: !13)
!6025 = !DILocation(line: 0, scope: !6019)
!6026 = !DILocation(line: 56, column: 19, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6028, file: !634, line: 56, column: 5)
!6028 = distinct !DILexicalBlock(scope: !6019, file: !634, line: 56, column: 5)
!6029 = !DILocation(line: 56, column: 5, scope: !6028)
!6030 = !DILocation(line: 57, column: 26, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6027, file: !634, line: 56, column: 31)
!6032 = !DILocation(line: 57, column: 22, scope: !6031)
!6033 = !DILocation(line: 57, column: 9, scope: !6031)
!6034 = !DILocation(line: 56, column: 27, scope: !6027)
!6035 = distinct !{!6035, !6029, !6036}
!6036 = !DILocation(line: 58, column: 5, scope: !6028)
!6037 = !DILocation(line: 60, column: 5, scope: !6019)
!6038 = !DILocation(line: 0, scope: !633)
!6039 = !DILocation(line: 70, column: 5, scope: !633)
!6040 = !{i64 1109}
!6041 = !DILocation(line: 72, column: 14, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !633, file: !634, line: 72, column: 9)
!6043 = !DILocation(line: 72, column: 11, scope: !6042)
!6044 = !DILocation(line: 72, column: 9, scope: !633)
!6045 = !DILocation(line: 78, column: 32, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !633, file: !634, line: 78, column: 9)
!6047 = !DILocation(line: 78, column: 15, scope: !6046)
!6048 = !DILocation(line: 89, column: 1, scope: !633)
!6049 = !DILocation(line: 78, column: 9, scope: !633)
!6050 = distinct !DISubprogram(name: "_exit", scope: !634, file: !634, line: 91, type: !783, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6051)
!6051 = !{!6052}
!6052 = !DILocalVariable(name: "__status", arg: 1, scope: !6050, file: !634, line: 91, type: !13)
!6053 = !DILocation(line: 0, scope: !6050)
!6054 = !DILocation(line: 93, column: 5, scope: !6050)
!6055 = !DILocation(line: 94, column: 5, scope: !6050)
!6056 = distinct !{!6056, !6055, !6057}
!6057 = !DILocation(line: 96, column: 5, scope: !6050)
!6058 = distinct !DISubprogram(name: "_kill", scope: !634, file: !634, line: 100, type: !6059, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !6061)
!6059 = !DISubroutineType(types: !6060)
!6060 = !{!13, !13, !13}
!6061 = !{!6062, !6063}
!6062 = !DILocalVariable(name: "pid", arg: 1, scope: !6058, file: !634, line: 100, type: !13)
!6063 = !DILocalVariable(name: "sig", arg: 2, scope: !6058, file: !634, line: 100, type: !13)
!6064 = !DILocation(line: 0, scope: !6058)
!6065 = !DILocation(line: 102, column: 5, scope: !6058)
!6066 = !DILocation(line: 103, column: 5, scope: !6058)
!6067 = distinct !DISubprogram(name: "_getpid", scope: !634, file: !634, line: 107, type: !6068, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !831, retainedNodes: !1338)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!6070}
!6070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !638, line: 174, baseType: !6071)
!6071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !680, line: 52, baseType: !13)
!6072 = !DILocation(line: 109, column: 5, scope: !6067)
!6073 = !DILocation(line: 110, column: 5, scope: !6067)
