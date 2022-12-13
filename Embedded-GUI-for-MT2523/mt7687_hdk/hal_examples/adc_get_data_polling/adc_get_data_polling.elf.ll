; ModuleID = './build/adc_get_data_polling.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct._ADC_INFO_T = type { %struct._ADC_FSM_PARAM_T, i8 }
%struct._ADC_FSM_PARAM_T = type { i32, i32, i16, i32, i32, i32*, i32, i32 }
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
%struct.DMA_INPUT = type { i32, i32, i32, i8*, void ()* }
%struct.DMA_FULLSIZE_HWMENU = type { %struct.DMA_TMODE, i32, i32, i32 }
%struct.DMA_TMODE = type { i8, i8 }
%struct.DMA_HWMENU = type { %struct.DMA_TMODE, i32, i32 }
%struct.DMA_SWCOPYMENU = type { i32, i32 }
%struct.DMA_FULLSIZE_HWRINGBUFF_MENU = type { %struct.DMA_TMODE, i32, i32, i32, i8*, i8* }
%struct.DMA_HWRINGBUFF_MENU = type { %struct.DMA_TMODE, i32, i32, i8*, i8* }
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
%struct._mbstate_t = type { i32, %struct.anon }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@DMA_LISR_FUNC = dso_local local_unnamed_addr global <{ void ()*, [10 x void ()*] }> <{ void ()* @DMA_ERROR_LISR, [10 x void ()*] zeroinitializer }>, align 4, !dbg !0
@DMA_VFIFO_LISR_FUNC = dso_local local_unnamed_addr global <{ void ()*, [13 x void ()*] }> <{ void ()* @DMA_ERROR_LISR, [13 x void ()*] zeroinitializer }>, align 4, !dbg !176
@DMA_VFIFO_TO_LISR_FUNC = dso_local local_unnamed_addr global <{ void ()*, [13 x void ()*] }> <{ void ()* @DMA_ERROR_LISR, [13 x void ()*] zeroinitializer }>, align 4, !dbg !185
@DMA_Channel_Status = internal unnamed_addr global i32 65535, align 4, !dbg !192
@DMA_Owner = dso_local local_unnamed_addr global [11 x i32] zeroinitializer, align 4, !dbg !187
@.str = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/dma.c\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: ERROR! Register invalid DMA CH(%d)\0A\00", align 1
@__FUNCTION__.DMA_Register = private unnamed_addr constant [13 x i8] c"DMA_Register\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: ERROR! Unregister invalid DMA CH(%d)\0A\00", align 1
@__FUNCTION__.DMA_UnRegister = private unnamed_addr constant [15 x i8] c"DMA_UnRegister\00", align 1
@DMA_used_channel = internal unnamed_addr global [11 x i8] zeroinitializer, align 1, !dbg !194
@g_u4ClkCnt1ms = dso_local local_unnamed_addr global i32 0, align 4, !dbg !198
@.str.4 = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1.5 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/gpt.c\00", align 1
@GPTTimer.0 = internal unnamed_addr global void ()* null, align 4, !dbg !220
@GPTTimer.1 = internal unnamed_addr global void ()* null, align 4, !dbg !221
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !222
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !233
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !235
@g_adc_status = dso_local global i8 0, align 1, !dbg !255
@g_adc_efuse_offset = dso_local global i8 0, align 1, !dbg !336
@g_adc_efuse_gain = dso_local global i8 0, align 1, !dbg !339
@g_rAdcInfo = dso_local local_unnamed_addr global %struct._ADC_INFO_T zeroinitializer, align 4, !dbg !314
@switch.table.hal_adc_get_data_polling = private unnamed_addr constant [4 x i32] [i32 65536, i32 131072, i32 262144, i32 524288], align 4
@switch.table.hal_adc_get_data_polling.1 = private unnamed_addr constant [4 x i32] [i32 64, i32 128, i32 256, i32 512], align 4
@switch.table.hal_adc_get_data_polling.2 = private unnamed_addr constant [4 x i32] [i32 -65, i32 -129, i32 -257, i32 -513], align 4
@g_cache_status = dso_local global i8 0, align 1, !dbg !341
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !424
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !525
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.26 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_free_run_count = private unnamed_addr constant [27 x i8] c"hal_gpt_get_free_run_count\00", align 1
@.str.2.27 = private unnamed_addr constant [23 x i8] c"Invalid parameter: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_running_status = private unnamed_addr constant [27 x i8] c"hal_gpt_get_running_status\00", align 1
@.str.3.28 = private unnamed_addr constant [45 x i8] c"Invalid hal_gpt_stop_timer to stop port: %d.\00", align 1
@__FUNCTION__.hal_gpt_register_callback = private unnamed_addr constant [26 x i8] c"hal_gpt_register_callback\00", align 1
@.str.4.29 = private unnamed_addr constant [51 x i8] c"Invalid port: %d. Only port 0 or 1 works as timer.\00", align 1
@__FUNCTION__.hal_gpt_start_timer_ms = private unnamed_addr constant [23 x i8] c"hal_gpt_start_timer_ms\00", align 1
@__FUNCTION__.hal_gpt_stop_timer = private unnamed_addr constant [19 x i8] c"hal_gpt_stop_timer\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !577
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !634
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.30 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.31 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.32 = private unnamed_addr constant [29 x i8] c"\0D\0A ---adc_example begin---\0D\0A\00", align 1
@.str.3.33 = private unnamed_addr constant [36 x i8] c"\0D\0A\0D\0A###### test_times = %d ######\0D\0A\00", align 1
@.str.4.34 = private unnamed_addr constant [29 x i8] c"Channel, Data, Voltage(mV)\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%7d, 0x%04x, %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0D\0A ---adc_example finished!!!---\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !686
@System_Initialize_Done = internal global i32 0, align 4, !dbg !744
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !746
@end = external dso_local global i8, align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.42 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.43 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:43 GMT +00:00\00", align 1, !dbg !955
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !960
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !964

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @DMA_ERROR_LISR() #0 !dbg !1228 {
  br label %1, !dbg !1230

1:                                                ; preds = %0, %1
  br label %1, !dbg !1230, !llvm.loop !1231
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Stop(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1233 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1237, metadata !DIExpression()), !dbg !1238
  %2 = zext i8 %0 to i32, !dbg !1239
  %3 = shl nuw nsw i32 %2, 8, !dbg !1239
  %4 = or i32 %3, -2097086440, !dbg !1239
  %5 = inttoptr i32 %4 to i32*, !dbg !1239
  store volatile i32 0, i32* %5, align 8, !dbg !1239
  %6 = or i32 %3, -2097086432, !dbg !1240
  %7 = inttoptr i32 %6 to i32*, !dbg !1240
  store volatile i32 32768, i32* %7, align 32, !dbg !1240
  ret void, !dbg !1241
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Run(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1242 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1244, metadata !DIExpression()), !dbg !1245
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1246
  %2 = zext i8 %0 to i32, !dbg !1247
  %3 = shl nuw nsw i32 %2, 8, !dbg !1247
  %4 = or i32 %3, -2097086440, !dbg !1247
  %5 = inttoptr i32 %4 to i32*, !dbg !1247
  store volatile i32 32768, i32* %5, align 8, !dbg !1247
  ret void, !dbg !1248
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_GetChannel(i32 noundef %0) local_unnamed_addr #3 !dbg !1249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1253, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8 -1, metadata !1255, metadata !DIExpression()), !dbg !1257
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1258, !srcloc !1267
  call void @llvm.dbg.value(metadata i32 %2, metadata !1264, metadata !DIExpression()) #15, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %2, metadata !1256, metadata !DIExpression()), !dbg !1257
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1269, !srcloc !1272
  call void @llvm.dbg.value(metadata i8 3, metadata !1254, metadata !DIExpression()), !dbg !1257
  %3 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 3, metadata !1254, metadata !DIExpression()), !dbg !1257
  br label %4, !dbg !1273

4:                                                ; preds = %1, %13
  %5 = phi i32 [ 3, %1 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1254, metadata !DIExpression()), !dbg !1257
  %6 = shl nuw nsw i32 1, %5, !dbg !1275
  %7 = and i32 %3, %6, !dbg !1279
  %8 = icmp eq i32 %7, 0, !dbg !1280
  br i1 %8, label %13, label %9, !dbg !1281

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i8, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %10, metadata !1255, metadata !DIExpression()), !dbg !1257
  %11 = xor i32 %6, -1, !dbg !1282
  %12 = and i32 %3, %11, !dbg !1284
  store i32 %12, i32* @DMA_Channel_Status, align 4, !dbg !1284
  br label %16, !dbg !1285

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %5, 1, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %14, metadata !1254, metadata !DIExpression()), !dbg !1257
  %15 = icmp eq i32 %14, 12, !dbg !1287
  br i1 %15, label %16, label %4, !dbg !1273, !llvm.loop !1288

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ -1, %13 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8 %17, metadata !1255, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 %2, metadata !1290, metadata !DIExpression()) #15, !dbg !1295
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1298, !srcloc !1299
  %18 = zext i8 %17 to i32, !dbg !1300
  %19 = add nsw i32 %18, -1, !dbg !1301
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %19, !dbg !1302
  store i32 %0, i32* %20, align 4, !dbg !1303
  ret i8 %17, !dbg !1304
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1305 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1307, metadata !DIExpression()), !dbg !1309
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1310, !srcloc !1267
  call void @llvm.dbg.value(metadata i32 %2, metadata !1264, metadata !DIExpression()) #15, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %2, metadata !1308, metadata !DIExpression()), !dbg !1309
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1314, !srcloc !1272
  %3 = zext i8 %0 to i32, !dbg !1316
  %4 = shl nuw i32 1, %3, !dbg !1317
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1318
  %6 = or i32 %5, %4, !dbg !1318
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1318
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1319
  %7 = add nsw i32 %3, -1, !dbg !1320
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1321
  store i32 26, i32* %8, align 4, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %2, metadata !1290, metadata !DIExpression()) #15, !dbg !1323
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1326, !srcloc !1299
  ret void, !dbg !1327
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1332, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8 %1, metadata !1333, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8 -1, metadata !1335, metadata !DIExpression()), !dbg !1337
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1338, !srcloc !1267
  call void @llvm.dbg.value(metadata i32 %3, metadata !1264, metadata !DIExpression()) #15, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %3, metadata !1336, metadata !DIExpression()), !dbg !1337
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1342, !srcloc !1272
  %4 = add i8 %1, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i8 %4, metadata !1334, metadata !DIExpression()), !dbg !1337
  %5 = icmp ugt i8 %4, 2, !dbg !1345
  br i1 %5, label %20, label %6, !dbg !1347

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32, !dbg !1348
  %8 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1349
  %9 = shl nuw nsw i32 1, %7, !dbg !1351
  %10 = and i32 %8, %9, !dbg !1352
  %11 = icmp eq i32 %10, 0, !dbg !1353
  br i1 %11, label %15, label %12, !dbg !1354

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %4, metadata !1335, metadata !DIExpression()), !dbg !1337
  %13 = xor i32 %9, -1, !dbg !1355
  %14 = and i32 %8, %13, !dbg !1357
  store i32 %14, i32* @DMA_Channel_Status, align 4, !dbg !1357
  br label %15, !dbg !1358

15:                                               ; preds = %6, %12
  %16 = phi i8 [ %4, %12 ], [ -1, %6 ], !dbg !1337
  call void @llvm.dbg.value(metadata i8 %16, metadata !1335, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i32 %3, metadata !1290, metadata !DIExpression()) #15, !dbg !1359
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1362, !srcloc !1299
  %17 = zext i8 %16 to i32, !dbg !1363
  %18 = add nsw i32 %17, -1, !dbg !1364
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %18, !dbg !1365
  store i32 %0, i32* %19, align 4, !dbg !1366
  br label %20, !dbg !1367

20:                                               ; preds = %2, %15
  %21 = phi i8 [ %16, %15 ], [ -1, %2 ], !dbg !1337
  ret i8 %21, !dbg !1368
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FullSize_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1369 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1371, metadata !DIExpression()), !dbg !1373
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1374, !srcloc !1267
  call void @llvm.dbg.value(metadata i32 %2, metadata !1264, metadata !DIExpression()) #15, !dbg !1377
  call void @llvm.dbg.value(metadata i32 %2, metadata !1372, metadata !DIExpression()), !dbg !1373
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1378, !srcloc !1272
  %3 = zext i8 %0 to i32, !dbg !1380
  %4 = shl nuw i32 1, %3, !dbg !1381
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1382
  %6 = or i32 %5, %4, !dbg !1382
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1382
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1383
  %7 = add nsw i32 %3, -1, !dbg !1384
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1385
  store i32 26, i32* %8, align 4, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %2, metadata !1290, metadata !DIExpression()) #15, !dbg !1387
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1390, !srcloc !1299
  ret void, !dbg !1391
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Config_Internal(i8 noundef zeroext %0, %struct.DMA_INPUT* noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 !dbg !1392 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1407, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata %struct.DMA_INPUT* %1, metadata !1408, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i1 %2, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i1 %3, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i8 %4, metadata !1411, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i1 %5, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i32 0, metadata !1413, metadata !DIExpression()), !dbg !1415
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %0) #14, !dbg !1416
  %7 = zext i8 %0 to i32, !dbg !1417
  %8 = icmp ugt i8 %0, 16, !dbg !1417
  br i1 %8, label %9, label %16, !dbg !1419

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1417
  %11 = shl nuw nsw i32 %7, 1, !dbg !1417
  %12 = add nsw i32 %11, -34, !dbg !1417
  %13 = shl nuw i32 1, %12, !dbg !1417
  %14 = and i32 %10, %13, !dbg !1417
  %15 = icmp eq i32 %14, 0, !dbg !1417
  br i1 %15, label %26, label %23, !dbg !1417

16:                                               ; preds = %6
  %17 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1417
  %18 = shl nuw nsw i32 %7, 1, !dbg !1417
  %19 = add nsw i32 %18, -2, !dbg !1417
  %20 = shl nuw i32 1, %19, !dbg !1417
  %21 = and i32 %17, %20, !dbg !1417
  %22 = icmp eq i32 %21, 0, !dbg !1417
  br i1 %22, label %31, label %23, !dbg !1419

23:                                               ; preds = %16, %9
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 187) #16, !dbg !1420
  br label %25, !dbg !1420

25:                                               ; preds = %25, %23
  br label %25, !dbg !1420, !llvm.loop !1424

26:                                               ; preds = %9
  %27 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1425
  %28 = shl i32 2, %12, !dbg !1425
  %29 = and i32 %27, %28, !dbg !1425
  %30 = icmp eq i32 %29, 0, !dbg !1425
  br i1 %30, label %39, label %36, !dbg !1425

31:                                               ; preds = %16
  %32 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1425
  %33 = shl i32 2, %19, !dbg !1425
  %34 = and i32 %32, %33, !dbg !1425
  %35 = icmp eq i32 %34, 0, !dbg !1425
  br i1 %35, label %39, label %36, !dbg !1427

36:                                               ; preds = %31, %26
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 191) #16, !dbg !1428
  br label %38, !dbg !1428

38:                                               ; preds = %38, %36
  br label %38, !dbg !1428, !llvm.loop !1432

39:                                               ; preds = %31, %26
  %40 = add nsw i32 %7, -1, !dbg !1433
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %40, !dbg !1433
  %42 = load i32, i32* %41, align 4, !dbg !1433
  %43 = icmp eq i32 %42, 26, !dbg !1433
  br i1 %43, label %44, label %47, !dbg !1435

44:                                               ; preds = %39
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 194) #16, !dbg !1436
  br label %46, !dbg !1436

46:                                               ; preds = %46, %44
  br label %46, !dbg !1436, !llvm.loop !1438

47:                                               ; preds = %39
  %48 = and i1 %2, %3, !dbg !1439
  br i1 %48, label %49, label %52, !dbg !1439

49:                                               ; preds = %47
  %50 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 197) #16, !dbg !1440
  br label %51, !dbg !1440

51:                                               ; preds = %51, %49
  br label %51, !dbg !1440, !llvm.loop !1445

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 2, !dbg !1446
  %54 = load i32, i32* %53, align 4, !dbg !1446
  %55 = icmp ugt i32 %54, 65535, !dbg !1446
  br i1 %55, label %56, label %59, !dbg !1448

56:                                               ; preds = %52
  %57 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 200) #16, !dbg !1449
  br label %58, !dbg !1449

58:                                               ; preds = %58, %56
  br label %58, !dbg !1449, !llvm.loop !1451

59:                                               ; preds = %52
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1452
  %60 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 0, !dbg !1453
  %61 = load i32, i32* %60, align 4, !dbg !1453
  switch i32 %61, label %252 [
    i32 0, label %62
    i32 1, label %94
    i32 2, label %126
    i32 3, label %140
    i32 4, label %196
  ], !dbg !1454

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1455
  br i1 %2, label %64, label %81, !dbg !1458

64:                                               ; preds = %62
  %65 = bitcast i8** %63 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1459
  %66 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1459
  %67 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 1, !dbg !1461
  call void @llvm.dbg.value(metadata i32 undef, metadata !1414, metadata !DIExpression()), !dbg !1415
  %68 = load i32, i32* %67, align 4, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %85, metadata !1414, metadata !DIExpression()), !dbg !1415
  %69 = shl i32 %68, 20, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %86, metadata !1413, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %70 = or i32 %69, 20, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %86, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %71 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 2, !dbg !1464
  %72 = load i32, i32* %71, align 4, !dbg !1464
  %73 = shl nuw nsw i32 %7, 8, !dbg !1464
  %74 = or i32 %73, -2097086464, !dbg !1464
  %75 = inttoptr i32 %74 to i32*, !dbg !1464
  store volatile i32 %72, i32* %75, align 256, !dbg !1464
  %76 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1467
  %77 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %76, i32 0, i32 3, !dbg !1467
  %78 = load i32, i32* %77, align 4, !dbg !1467
  %79 = or i32 %73, -2097086460, !dbg !1467
  %80 = inttoptr i32 %79 to i32*, !dbg !1467
  store volatile i32 %78, i32* %80, align 4, !dbg !1467
  br label %255, !dbg !1468

81:                                               ; preds = %62
  %82 = bitcast i8** %63 to %struct.DMA_HWMENU**, !dbg !1469
  %83 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %82, align 4, !dbg !1469
  %84 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 1, !dbg !1471
  call void @llvm.dbg.value(metadata i32 undef, metadata !1414, metadata !DIExpression()), !dbg !1415
  %85 = load i32, i32* %84, align 4, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %85, metadata !1414, metadata !DIExpression()), !dbg !1415
  %86 = shl i32 %85, 20, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %86, metadata !1413, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %86, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %87 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 2, !dbg !1472
  %88 = load i32, i32* %87, align 4, !dbg !1472
  %89 = shl nuw nsw i32 %7, 8, !dbg !1472
  %90 = or i32 %89, -2097086420, !dbg !1472
  %91 = inttoptr i32 %90 to i32*, !dbg !1472
  store volatile i32 %88, i32* %91, align 4, !dbg !1472
  %92 = select i1 %3, i32 52, i32 20, !dbg !1474
  %93 = or i32 %86, %92, !dbg !1474
  br label %255, !dbg !1474

94:                                               ; preds = %59
  %95 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1475
  br i1 %2, label %96, label %113, !dbg !1477

96:                                               ; preds = %94
  %97 = bitcast i8** %95 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1478
  %98 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1478
  %99 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 1, !dbg !1480
  call void @llvm.dbg.value(metadata i32 undef, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1415
  %100 = load i32, i32* %99, align 4, !dbg !1475
  %101 = shl i32 %100, 20, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %118, metadata !1413, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %102 = or i32 %101, 262168, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %118, metadata !1413, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %103 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 2, !dbg !1482
  %104 = load i32, i32* %103, align 4, !dbg !1482
  %105 = shl nuw nsw i32 %7, 8, !dbg !1482
  %106 = or i32 %105, -2097086464, !dbg !1482
  %107 = inttoptr i32 %106 to i32*, !dbg !1482
  store volatile i32 %104, i32* %107, align 256, !dbg !1482
  %108 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1485
  %109 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %108, i32 0, i32 3, !dbg !1485
  %110 = load i32, i32* %109, align 4, !dbg !1485
  %111 = or i32 %105, -2097086460, !dbg !1485
  %112 = inttoptr i32 %111 to i32*, !dbg !1485
  store volatile i32 %110, i32* %112, align 4, !dbg !1485
  br label %255, !dbg !1486

113:                                              ; preds = %94
  %114 = bitcast i8** %95 to %struct.DMA_HWMENU**, !dbg !1487
  %115 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %114, align 4, !dbg !1487
  %116 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 1, !dbg !1489
  call void @llvm.dbg.value(metadata i32 undef, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1415
  %117 = load i32, i32* %116, align 4, !dbg !1475
  %118 = shl i32 %117, 20, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %118, metadata !1413, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %118, metadata !1413, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %119 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 2, !dbg !1490
  %120 = load i32, i32* %119, align 4, !dbg !1490
  %121 = shl nuw nsw i32 %7, 8, !dbg !1490
  %122 = or i32 %121, -2097086420, !dbg !1490
  %123 = inttoptr i32 %122 to i32*, !dbg !1490
  store volatile i32 %120, i32* %123, align 4, !dbg !1490
  %124 = select i1 %3, i32 262200, i32 262168, !dbg !1492
  %125 = or i32 %118, %124, !dbg !1492
  br label %255, !dbg !1492

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1493
  %128 = bitcast i8** %127 to %struct.DMA_SWCOPYMENU**, !dbg !1493
  %129 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1493
  %130 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %129, i32 0, i32 0, !dbg !1493
  %131 = load i32, i32* %130, align 4, !dbg !1493
  %132 = shl nuw nsw i32 %7, 8, !dbg !1493
  %133 = or i32 %132, -2097086464, !dbg !1493
  %134 = inttoptr i32 %133 to i32*, !dbg !1493
  store volatile i32 %131, i32* %134, align 256, !dbg !1493
  %135 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1494
  %136 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %135, i32 0, i32 1, !dbg !1494
  %137 = load i32, i32* %136, align 4, !dbg !1494
  %138 = or i32 %132, -2097086460, !dbg !1494
  %139 = inttoptr i32 %138 to i32*, !dbg !1494
  store volatile i32 %137, i32* %139, align 4, !dbg !1494
  call void @llvm.dbg.value(metadata i32 12, metadata !1413, metadata !DIExpression()), !dbg !1415
  br label %255, !dbg !1495

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1496
  br i1 %2, label %142, label %171, !dbg !1498

142:                                              ; preds = %140
  %143 = bitcast i8** %141 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1499
  %144 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1499
  %145 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 1, !dbg !1501
  call void @llvm.dbg.value(metadata i32 undef, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1415
  %146 = load i32, i32* %145, align 4, !dbg !1496
  %147 = shl i32 %146, 20, !dbg !1496
  call void @llvm.dbg.value(metadata i32 %176, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %148 = or i32 %147, 131092, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %176, metadata !1413, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %149 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 4, !dbg !1503
  %150 = load i8*, i8** %149, align 4, !dbg !1503
  %151 = ptrtoint i8* %150 to i32, !dbg !1503
  %152 = shl nuw nsw i32 %7, 8, !dbg !1503
  %153 = or i32 %152, -2097086456, !dbg !1503
  %154 = inttoptr i32 %153 to i32*, !dbg !1503
  store volatile i32 %151, i32* %154, align 8, !dbg !1503
  %155 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1506
  %156 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %155, i32 0, i32 5, !dbg !1506
  %157 = load i8*, i8** %156, align 4, !dbg !1506
  %158 = ptrtoint i8* %157 to i32, !dbg !1506
  %159 = or i32 %152, -2097086452, !dbg !1506
  %160 = inttoptr i32 %159 to i32*, !dbg !1506
  store volatile i32 %158, i32* %160, align 4, !dbg !1506
  %161 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1507
  %162 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %161, i32 0, i32 2, !dbg !1507
  %163 = load i32, i32* %162, align 4, !dbg !1507
  %164 = or i32 %152, -2097086464, !dbg !1507
  %165 = inttoptr i32 %164 to i32*, !dbg !1507
  store volatile i32 %163, i32* %165, align 256, !dbg !1507
  %166 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1508
  %167 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %166, i32 0, i32 3, !dbg !1508
  %168 = load i32, i32* %167, align 4, !dbg !1508
  %169 = or i32 %152, -2097086460, !dbg !1508
  %170 = inttoptr i32 %169 to i32*, !dbg !1508
  store volatile i32 %168, i32* %170, align 4, !dbg !1508
  br label %255, !dbg !1509

171:                                              ; preds = %140
  %172 = bitcast i8** %141 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1510
  %173 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1510
  %174 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 1, !dbg !1512
  call void @llvm.dbg.value(metadata i32 undef, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1415
  %175 = load i32, i32* %174, align 4, !dbg !1496
  %176 = shl i32 %175, 20, !dbg !1496
  call void @llvm.dbg.value(metadata i32 %176, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %176, metadata !1413, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %177 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 3, !dbg !1513
  %178 = load i8*, i8** %177, align 4, !dbg !1513
  %179 = ptrtoint i8* %178 to i32, !dbg !1513
  %180 = shl nuw nsw i32 %7, 8, !dbg !1513
  %181 = or i32 %180, -2097086456, !dbg !1513
  %182 = inttoptr i32 %181 to i32*, !dbg !1513
  store volatile i32 %179, i32* %182, align 8, !dbg !1513
  %183 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1515
  %184 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %183, i32 0, i32 4, !dbg !1515
  %185 = load i8*, i8** %184, align 4, !dbg !1515
  %186 = ptrtoint i8* %185 to i32, !dbg !1515
  %187 = or i32 %180, -2097086452, !dbg !1515
  %188 = inttoptr i32 %187 to i32*, !dbg !1515
  store volatile i32 %186, i32* %188, align 4, !dbg !1515
  %189 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1516
  %190 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %189, i32 0, i32 2, !dbg !1516
  %191 = load i32, i32* %190, align 4, !dbg !1516
  %192 = or i32 %180, -2097086420, !dbg !1516
  %193 = inttoptr i32 %192 to i32*, !dbg !1516
  store volatile i32 %191, i32* %193, align 4, !dbg !1516
  %194 = select i1 %3, i32 131124, i32 131092, !dbg !1517
  %195 = or i32 %176, %194, !dbg !1517
  br label %255, !dbg !1517

196:                                              ; preds = %59
  %197 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1518
  br i1 %2, label %198, label %227, !dbg !1520

198:                                              ; preds = %196
  %199 = bitcast i8** %197 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1521
  %200 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1521
  %201 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 1, !dbg !1523
  call void @llvm.dbg.value(metadata i32 undef, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1415
  %202 = load i32, i32* %201, align 4, !dbg !1518
  %203 = shl i32 %202, 20, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %232, metadata !1413, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %204 = or i32 %203, 458776, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %232, metadata !1413, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %205 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 4, !dbg !1525
  %206 = load i8*, i8** %205, align 4, !dbg !1525
  %207 = ptrtoint i8* %206 to i32, !dbg !1525
  %208 = shl nuw nsw i32 %7, 8, !dbg !1525
  %209 = or i32 %208, -2097086456, !dbg !1525
  %210 = inttoptr i32 %209 to i32*, !dbg !1525
  store volatile i32 %207, i32* %210, align 8, !dbg !1525
  %211 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1528
  %212 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %211, i32 0, i32 5, !dbg !1528
  %213 = load i8*, i8** %212, align 4, !dbg !1528
  %214 = ptrtoint i8* %213 to i32, !dbg !1528
  %215 = or i32 %208, -2097086452, !dbg !1528
  %216 = inttoptr i32 %215 to i32*, !dbg !1528
  store volatile i32 %214, i32* %216, align 4, !dbg !1528
  %217 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1529
  %218 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %217, i32 0, i32 2, !dbg !1529
  %219 = load i32, i32* %218, align 4, !dbg !1529
  %220 = or i32 %208, -2097086464, !dbg !1529
  %221 = inttoptr i32 %220 to i32*, !dbg !1529
  store volatile i32 %219, i32* %221, align 256, !dbg !1529
  %222 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1530
  %223 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %222, i32 0, i32 3, !dbg !1530
  %224 = load i32, i32* %223, align 4, !dbg !1530
  %225 = or i32 %208, -2097086460, !dbg !1530
  %226 = inttoptr i32 %225 to i32*, !dbg !1530
  store volatile i32 %224, i32* %226, align 4, !dbg !1530
  br label %255, !dbg !1531

227:                                              ; preds = %196
  %228 = bitcast i8** %197 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1532
  %229 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1532
  %230 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 1, !dbg !1534
  call void @llvm.dbg.value(metadata i32 undef, metadata !1413, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1415
  %231 = load i32, i32* %230, align 4, !dbg !1518
  %232 = shl i32 %231, 20, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %232, metadata !1413, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %232, metadata !1413, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1415
  %233 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 3, !dbg !1535
  %234 = load i8*, i8** %233, align 4, !dbg !1535
  %235 = ptrtoint i8* %234 to i32, !dbg !1535
  %236 = shl nuw nsw i32 %7, 8, !dbg !1535
  %237 = or i32 %236, -2097086456, !dbg !1535
  %238 = inttoptr i32 %237 to i32*, !dbg !1535
  store volatile i32 %235, i32* %238, align 8, !dbg !1535
  %239 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1537
  %240 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %239, i32 0, i32 4, !dbg !1537
  %241 = load i8*, i8** %240, align 4, !dbg !1537
  %242 = ptrtoint i8* %241 to i32, !dbg !1537
  %243 = or i32 %236, -2097086452, !dbg !1537
  %244 = inttoptr i32 %243 to i32*, !dbg !1537
  store volatile i32 %242, i32* %244, align 4, !dbg !1537
  %245 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1538
  %246 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %245, i32 0, i32 2, !dbg !1538
  %247 = load i32, i32* %246, align 4, !dbg !1538
  %248 = or i32 %236, -2097086420, !dbg !1538
  %249 = inttoptr i32 %248 to i32*, !dbg !1538
  store volatile i32 %247, i32* %249, align 4, !dbg !1538
  %250 = select i1 %3, i32 458808, i32 458776, !dbg !1539
  %251 = or i32 %232, %250, !dbg !1539
  br label %255, !dbg !1539

252:                                              ; preds = %59
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 410) #16, !dbg !1540
  br label %254, !dbg !1540

254:                                              ; preds = %254, %252
  br label %254, !dbg !1540, !llvm.loop !1543

255:                                              ; preds = %227, %171, %113, %81, %198, %142, %96, %64, %126
  %256 = phi i32 [ %204, %198 ], [ %148, %142 ], [ 12, %126 ], [ %102, %96 ], [ %70, %64 ], [ %93, %81 ], [ %125, %113 ], [ %195, %171 ], [ %251, %227 ], !dbg !1544
  call void @llvm.dbg.value(metadata i32 %256, metadata !1413, metadata !DIExpression()), !dbg !1415
  %257 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 1, !dbg !1545
  %258 = load i32, i32* %257, align 4, !dbg !1545
  switch i32 %258, label %328 [
    i32 0, label %259
    i32 1, label %285
    i32 2, label %309
  ], !dbg !1546

259:                                              ; preds = %255
  %260 = load i32, i32* %60, align 4, !dbg !1547
  %261 = icmp eq i32 %260, 2, !dbg !1550
  br i1 %261, label %331, label %262, !dbg !1551

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1552
  %264 = bitcast i8** %263 to %struct.DMA_TMODE**, !dbg !1552
  %265 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %264, align 4, !dbg !1552
  %266 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 0, !dbg !1555
  %267 = load i8, i8* %266, align 1, !dbg !1555, !range !1556
  %268 = icmp eq i8 %267, 0, !dbg !1555
  br i1 %268, label %331, label %269, !dbg !1557

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 1, !dbg !1558
  %271 = load i8, i8* %270, align 1, !dbg !1558
  %272 = icmp ult i8 %271, 16, !dbg !1559
  br i1 %272, label %275, label %273, !dbg !1560

273:                                              ; preds = %269
  %274 = or i32 %256, 1536, !dbg !1561
  call void @llvm.dbg.value(metadata i32 %274, metadata !1413, metadata !DIExpression()), !dbg !1415
  br label %331, !dbg !1563

275:                                              ; preds = %269
  %276 = and i8 %271, 8, !dbg !1564
  %277 = icmp eq i8 %276, 0, !dbg !1564
  br i1 %277, label %280, label %278, !dbg !1566

278:                                              ; preds = %275
  %279 = or i32 %256, 1024, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %279, metadata !1413, metadata !DIExpression()), !dbg !1415
  br label %331, !dbg !1569

280:                                              ; preds = %275
  %281 = and i8 %271, 4, !dbg !1570
  %282 = zext i8 %281 to i32, !dbg !1572
  %283 = shl nuw nsw i32 %282, 7, !dbg !1572
  %284 = or i32 %283, %256, !dbg !1572
  br label %331, !dbg !1572

285:                                              ; preds = %255
  %286 = load i32, i32* %60, align 4, !dbg !1573
  %287 = icmp eq i32 %286, 2, !dbg !1575
  br i1 %287, label %306, label %288, !dbg !1576

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1577
  %290 = bitcast i8** %289 to %struct.DMA_TMODE**, !dbg !1577
  %291 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %290, align 4, !dbg !1577
  %292 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 0, !dbg !1580
  %293 = load i8, i8* %292, align 1, !dbg !1580, !range !1556
  %294 = icmp eq i8 %293, 0, !dbg !1580
  br i1 %294, label %306, label %295, !dbg !1581

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 1, !dbg !1582
  %297 = load i8, i8* %296, align 1, !dbg !1582
  %298 = icmp ult i8 %297, 8, !dbg !1583
  br i1 %298, label %301, label %299, !dbg !1584

299:                                              ; preds = %295
  %300 = or i32 %256, 1024, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %300, metadata !1413, metadata !DIExpression()), !dbg !1415
  br label %306, !dbg !1587

301:                                              ; preds = %295
  %302 = and i8 %297, 4, !dbg !1588
  %303 = zext i8 %302 to i32, !dbg !1590
  %304 = shl nuw nsw i32 %303, 7, !dbg !1590
  %305 = or i32 %304, %256, !dbg !1590
  br label %306, !dbg !1590

306:                                              ; preds = %288, %301, %299, %285
  %307 = phi i32 [ %300, %299 ], [ %256, %285 ], [ %305, %301 ], [ %256, %288 ], !dbg !1415
  call void @llvm.dbg.value(metadata i32 %307, metadata !1413, metadata !DIExpression()), !dbg !1415
  %308 = or i32 %307, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %308, metadata !1413, metadata !DIExpression()), !dbg !1415
  br label %331, !dbg !1592

309:                                              ; preds = %255
  %310 = load i32, i32* %60, align 4, !dbg !1593
  %311 = icmp eq i32 %310, 2, !dbg !1595
  br i1 %311, label %325, label %312, !dbg !1596

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1597
  %314 = bitcast i8** %313 to %struct.DMA_TMODE**, !dbg !1597
  %315 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %314, align 4, !dbg !1597
  %316 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 0, !dbg !1600
  %317 = load i8, i8* %316, align 1, !dbg !1600, !range !1556
  %318 = icmp eq i8 %317, 0, !dbg !1600
  br i1 %318, label %325, label %319, !dbg !1601

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 1, !dbg !1602
  %321 = load i8, i8* %320, align 1, !dbg !1602
  %322 = icmp ult i8 %321, 4, !dbg !1603
  %323 = or i32 %256, 512
  %324 = select i1 %322, i32 %256, i32 %323, !dbg !1604
  br label %325, !dbg !1604

325:                                              ; preds = %319, %312, %309
  %326 = phi i32 [ %256, %312 ], [ %256, %309 ], [ %324, %319 ], !dbg !1415
  call void @llvm.dbg.value(metadata i32 %326, metadata !1413, metadata !DIExpression()), !dbg !1415
  %327 = or i32 %326, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %327, metadata !1413, metadata !DIExpression()), !dbg !1415
  br label %331, !dbg !1606

328:                                              ; preds = %255
  %329 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 486) #16, !dbg !1607
  br label %330, !dbg !1607

330:                                              ; preds = %330, %328
  br label %330, !dbg !1607, !llvm.loop !1610

331:                                              ; preds = %262, %280, %259, %278, %273, %325, %306
  %332 = phi i32 [ %327, %325 ], [ %308, %306 ], [ %274, %273 ], [ %279, %278 ], [ %256, %259 ], [ %284, %280 ], [ %256, %262 ], !dbg !1415
  call void @llvm.dbg.value(metadata i32 %332, metadata !1413, metadata !DIExpression()), !dbg !1415
  %333 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 4, !dbg !1611
  %334 = load void ()*, void ()** %333, align 4, !dbg !1611
  %335 = icmp eq void ()* %334, null, !dbg !1613
  br i1 %335, label %339, label %336, !dbg !1614

336:                                              ; preds = %331
  %337 = or i32 %332, 32768, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %337, metadata !1413, metadata !DIExpression()), !dbg !1415
  %338 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %40, !dbg !1617
  store void ()* %334, void ()** %338, align 4, !dbg !1618
  br label %339, !dbg !1619

339:                                              ; preds = %336, %331
  %340 = phi i32 [ %337, %336 ], [ %332, %331 ], !dbg !1415
  call void @llvm.dbg.value(metadata i32 %340, metadata !1413, metadata !DIExpression()), !dbg !1415
  %341 = shl nuw nsw i32 %7, 8, !dbg !1620
  %342 = or i32 %341, -2097086444, !dbg !1620
  %343 = inttoptr i32 %342 to i32*, !dbg !1620
  store volatile i32 %340, i32* %343, align 4, !dbg !1620
  %344 = load i32, i32* %53, align 4, !dbg !1621
  %345 = or i32 %341, -2097086448, !dbg !1621
  %346 = inttoptr i32 %345 to i32*, !dbg !1621
  store volatile i32 %344, i32* %346, align 16, !dbg !1621
  br i1 %5, label %347, label %350, !dbg !1622

347:                                              ; preds = %339
  %348 = or i32 %341, -2097086440, !dbg !1623
  %349 = inttoptr i32 %348 to i32*, !dbg !1623
  store volatile i32 32768, i32* %349, align 8, !dbg !1623
  br label %350, !dbg !1626

350:                                              ; preds = %347, %339
  ret void, !dbg !1627
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Enable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1628 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1630, metadata !DIExpression()), !dbg !1631
  %2 = zext i8 %0 to i32, !dbg !1632
  %3 = add nsw i32 %2, -1, !dbg !1633
  %4 = shl nuw i32 1, %3, !dbg !1634
  store volatile i32 %4, i32* inttoptr (i32 -2097151976 to i32*), align 8, !dbg !1635
  ret void, !dbg !1636
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_Register(i8 noundef zeroext %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !1637 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1642, metadata !DIExpression()), !dbg !1643
  %3 = zext i8 %0 to i32, !dbg !1644
  %4 = add i8 %0, -12, !dbg !1646
  %5 = icmp ult i8 %4, -11, !dbg !1646
  br i1 %5, label %6, label %8, !dbg !1646

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.DMA_Register, i32 0, i32 0), i32 noundef %3) #16, !dbg !1647
  br label %11, !dbg !1649

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1, !dbg !1650
  %10 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %9, !dbg !1651
  store void ()* %1, void ()** %10, align 4, !dbg !1652
  br label %11, !dbg !1653

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ], !dbg !1643
  ret i32 %12, !dbg !1654
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_UnRegister(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1655 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1659, metadata !DIExpression()), !dbg !1660
  %2 = zext i8 %0 to i32, !dbg !1661
  %3 = add i8 %0, -12, !dbg !1663
  %4 = icmp ult i8 %3, -11, !dbg !1663
  br i1 %4, label %5, label %7, !dbg !1663

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.DMA_UnRegister, i32 0, i32 0), i32 noundef %2) #16, !dbg !1664
  br label %10, !dbg !1666

7:                                                ; preds = %1
  %8 = add nsw i32 %2, -1, !dbg !1667
  %9 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %8, !dbg !1668
  store void ()* @DMA_ERROR_LISR, void ()** %9, align 4, !dbg !1669
  br label %10, !dbg !1670

10:                                               ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ 0, %7 ], !dbg !1660
  ret i32 %11, !dbg !1671
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_LISR(i32 %0) #3 !dbg !1672 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1674, metadata !DIExpression()), !dbg !1677
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 1) #16, !dbg !1678
  call void @llvm.dbg.value(metadata i8 0, metadata !1675, metadata !DIExpression()), !dbg !1677
  br label %3, !dbg !1679

3:                                                ; preds = %1, %25
  %4 = phi i32 [ 0, %1 ], [ %5, %25 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1675, metadata !DIExpression()), !dbg !1677
  %5 = add nuw nsw i32 %4, 1, !dbg !1681
  %6 = shl nuw nsw i32 %5, 8, !dbg !1681
  %7 = add nuw nsw i32 %6, -2097086436, !dbg !1681
  %8 = inttoptr i32 %7 to i32*, !dbg !1681
  %9 = load volatile i32, i32* %8, align 4, !dbg !1681
  %10 = and i32 %9, 32768, !dbg !1685
  %11 = icmp eq i32 %10, 0, !dbg !1685
  br i1 %11, label %25, label %12, !dbg !1686

12:                                               ; preds = %3
  %13 = trunc i32 %5 to i8, !dbg !1687
  tail call void @DMA_Stop(i8 noundef zeroext %13) #14, !dbg !1689
  %14 = add nuw nsw i32 %6, -2097086432, !dbg !1690
  %15 = inttoptr i32 %14 to i32*, !dbg !1690
  store volatile i32 32768, i32* %15, align 32, !dbg !1690
  %16 = shl nuw nsw i32 %4, 1
  %17 = shl nuw i32 1, %16
  br label %18, !dbg !1691

18:                                               ; preds = %18, %12
  %19 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1692
  %20 = and i32 %19, %17, !dbg !1691
  %21 = icmp eq i32 %20, 0, !dbg !1691
  br i1 %21, label %22, label %18, !dbg !1691, !llvm.loop !1693

22:                                               ; preds = %18
  tail call void @DMA_Clock_Disable(i8 noundef zeroext %13) #14, !dbg !1695
  %23 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %4, !dbg !1696
  %24 = load void ()*, void ()** %23, align 4, !dbg !1696
  tail call void %24() #16, !dbg !1696
  br label %25, !dbg !1697

25:                                               ; preds = %3, %22
  call void @llvm.dbg.value(metadata i32 %5, metadata !1675, metadata !DIExpression()), !dbg !1677
  %26 = icmp eq i32 %5, 11, !dbg !1698
  br i1 %26, label %27, label %3, !dbg !1679, !llvm.loop !1699

27:                                               ; preds = %25, %87
  %28 = phi i32 [ %88, %87 ], [ 12, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1675, metadata !DIExpression()), !dbg !1677
  %29 = shl nuw nsw i32 %28, 8, !dbg !1701
  %30 = or i32 %29, -2097086444, !dbg !1701
  %31 = inttoptr i32 %30 to i32*, !dbg !1701
  %32 = load volatile i32, i32* %31, align 4, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %32, metadata !1676, metadata !DIExpression()), !dbg !1677
  %33 = or i32 %29, -2097086436, !dbg !1705
  %34 = inttoptr i32 %33 to i32*, !dbg !1705
  %35 = load volatile i32, i32* %34, align 4, !dbg !1705
  %36 = and i32 %35, 32768, !dbg !1707
  %37 = icmp eq i32 %36, 0, !dbg !1707
  br i1 %37, label %87, label %38, !dbg !1708

38:                                               ; preds = %27
  %39 = lshr i32 %32, 20, !dbg !1709
  switch i32 %39, label %84 [
    i32 6, label %40
    i32 7, label %43
    i32 8, label %46
    i32 9, label %49
    i32 10, label %52
    i32 11, label %55
    i32 12, label %58
    i32 13, label %61
    i32 15, label %64
    i32 16, label %67
    i32 17, label %70
    i32 18, label %73
    i32 19, label %76
    i32 20, label %79
  ], !dbg !1711

40:                                               ; preds = %38
  %41 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1712
  %42 = icmp eq void ()* %41, null, !dbg !1715
  br i1 %42, label %84, label %82, !dbg !1716

43:                                               ; preds = %38
  %44 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1717
  %45 = icmp eq void ()* %44, null, !dbg !1719
  br i1 %45, label %84, label %82, !dbg !1720

46:                                               ; preds = %38
  %47 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1721
  %48 = icmp eq void ()* %47, null, !dbg !1723
  br i1 %48, label %84, label %82, !dbg !1724

49:                                               ; preds = %38
  %50 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1725
  %51 = icmp eq void ()* %50, null, !dbg !1727
  br i1 %51, label %84, label %82, !dbg !1728

52:                                               ; preds = %38
  %53 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1729
  %54 = icmp eq void ()* %53, null, !dbg !1731
  br i1 %54, label %84, label %82, !dbg !1732

55:                                               ; preds = %38
  %56 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1733
  %57 = icmp eq void ()* %56, null, !dbg !1735
  br i1 %57, label %84, label %82, !dbg !1736

58:                                               ; preds = %38
  %59 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1737
  %60 = icmp eq void ()* %59, null, !dbg !1739
  br i1 %60, label %84, label %82, !dbg !1740

61:                                               ; preds = %38
  %62 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1741
  %63 = icmp eq void ()* %62, null, !dbg !1743
  br i1 %63, label %84, label %82, !dbg !1744

64:                                               ; preds = %38
  %65 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1745
  %66 = icmp eq void ()* %65, null, !dbg !1747
  br i1 %66, label %84, label %82, !dbg !1748

67:                                               ; preds = %38
  %68 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1749
  %69 = icmp eq void ()* %68, null, !dbg !1751
  br i1 %69, label %84, label %82, !dbg !1752

70:                                               ; preds = %38
  %71 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1753
  %72 = icmp eq void ()* %71, null, !dbg !1755
  br i1 %72, label %84, label %82, !dbg !1756

73:                                               ; preds = %38
  %74 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1757
  %75 = icmp eq void ()* %74, null, !dbg !1759
  br i1 %75, label %84, label %82, !dbg !1760

76:                                               ; preds = %38
  %77 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1761
  %78 = icmp eq void ()* %77, null, !dbg !1763
  br i1 %78, label %84, label %82, !dbg !1764

79:                                               ; preds = %38
  %80 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1765
  %81 = icmp eq void ()* %80, null, !dbg !1767
  br i1 %81, label %84, label %82, !dbg !1768

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  %83 = phi void ()* [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ]
  tail call void %83() #16, !dbg !1769
  br label %84, !dbg !1770

84:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %38
  %85 = or i32 %29, -2097086432, !dbg !1770
  %86 = inttoptr i32 %85 to i32*, !dbg !1770
  store volatile i32 32768, i32* %86, align 32, !dbg !1770
  br label %87, !dbg !1771

87:                                               ; preds = %27, %84
  %88 = add nuw nsw i32 %28, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %88, metadata !1675, metadata !DIExpression()), !dbg !1677
  %89 = icmp eq i32 %88, 26, !dbg !1773
  br i1 %89, label %90, label %27, !dbg !1774, !llvm.loop !1775

90:                                               ; preds = %87, %150
  %91 = phi i32 [ %151, %150 ], [ 12, %87 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1675, metadata !DIExpression()), !dbg !1677
  %92 = shl nuw nsw i32 %91, 8, !dbg !1777
  %93 = or i32 %92, -2097086444, !dbg !1777
  %94 = inttoptr i32 %93 to i32*, !dbg !1777
  %95 = load volatile i32, i32* %94, align 4, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %95, metadata !1676, metadata !DIExpression()), !dbg !1677
  %96 = or i32 %92, -2097086436, !dbg !1781
  %97 = inttoptr i32 %96 to i32*, !dbg !1781
  %98 = load volatile i32, i32* %97, align 4, !dbg !1781
  %99 = and i32 %98, 65536, !dbg !1783
  %100 = icmp eq i32 %99, 0, !dbg !1783
  br i1 %100, label %150, label %101, !dbg !1784

101:                                              ; preds = %90
  %102 = lshr i32 %95, 20, !dbg !1785
  switch i32 %102, label %147 [
    i32 6, label %103
    i32 7, label %106
    i32 8, label %109
    i32 9, label %112
    i32 10, label %115
    i32 11, label %118
    i32 12, label %121
    i32 13, label %124
    i32 15, label %127
    i32 16, label %130
    i32 17, label %133
    i32 18, label %136
    i32 19, label %139
    i32 20, label %142
  ], !dbg !1787

103:                                              ; preds = %101
  %104 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1788
  %105 = icmp eq void ()* %104, null, !dbg !1791
  br i1 %105, label %147, label %145, !dbg !1792

106:                                              ; preds = %101
  %107 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1793
  %108 = icmp eq void ()* %107, null, !dbg !1795
  br i1 %108, label %147, label %145, !dbg !1796

109:                                              ; preds = %101
  %110 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1797
  %111 = icmp eq void ()* %110, null, !dbg !1799
  br i1 %111, label %147, label %145, !dbg !1800

112:                                              ; preds = %101
  %113 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1801
  %114 = icmp eq void ()* %113, null, !dbg !1803
  br i1 %114, label %147, label %145, !dbg !1804

115:                                              ; preds = %101
  %116 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1805
  %117 = icmp eq void ()* %116, null, !dbg !1807
  br i1 %117, label %147, label %145, !dbg !1808

118:                                              ; preds = %101
  %119 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1809
  %120 = icmp eq void ()* %119, null, !dbg !1811
  br i1 %120, label %147, label %145, !dbg !1812

121:                                              ; preds = %101
  %122 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1813
  %123 = icmp eq void ()* %122, null, !dbg !1815
  br i1 %123, label %147, label %145, !dbg !1816

124:                                              ; preds = %101
  %125 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1817
  %126 = icmp eq void ()* %125, null, !dbg !1819
  br i1 %126, label %147, label %145, !dbg !1820

127:                                              ; preds = %101
  %128 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1821
  %129 = icmp eq void ()* %128, null, !dbg !1823
  br i1 %129, label %147, label %145, !dbg !1824

130:                                              ; preds = %101
  %131 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1825
  %132 = icmp eq void ()* %131, null, !dbg !1827
  br i1 %132, label %147, label %145, !dbg !1828

133:                                              ; preds = %101
  %134 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1829
  %135 = icmp eq void ()* %134, null, !dbg !1831
  br i1 %135, label %147, label %145, !dbg !1832

136:                                              ; preds = %101
  %137 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1833
  %138 = icmp eq void ()* %137, null, !dbg !1835
  br i1 %138, label %147, label %145, !dbg !1836

139:                                              ; preds = %101
  %140 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1837
  %141 = icmp eq void ()* %140, null, !dbg !1839
  br i1 %141, label %147, label %145, !dbg !1840

142:                                              ; preds = %101
  %143 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1841
  %144 = icmp eq void ()* %143, null, !dbg !1843
  br i1 %144, label %147, label %145, !dbg !1844

145:                                              ; preds = %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %146 = phi void ()* [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ], [ %128, %127 ], [ %131, %130 ], [ %134, %133 ], [ %137, %136 ], [ %140, %139 ], [ %143, %142 ]
  tail call void %146() #16, !dbg !1845
  br label %147, !dbg !1846

147:                                              ; preds = %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %101
  %148 = or i32 %92, -2097086432, !dbg !1846
  %149 = inttoptr i32 %148 to i32*, !dbg !1846
  store volatile i32 65536, i32* %149, align 32, !dbg !1846
  br label %150, !dbg !1847

150:                                              ; preds = %90, %147
  %151 = add nuw nsw i32 %91, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i32 %151, metadata !1675, metadata !DIExpression()), !dbg !1677
  %152 = icmp eq i32 %151, 26, !dbg !1849
  br i1 %152, label %153, label %90, !dbg !1850, !llvm.loop !1851

153:                                              ; preds = %150
  %154 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1853
  ret void, !dbg !1854
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Disable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1855 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1857, metadata !DIExpression()), !dbg !1858
  %2 = zext i8 %0 to i32, !dbg !1859
  %3 = add nsw i32 %2, -1, !dbg !1860
  %4 = shl nuw i32 1, %3, !dbg !1861
  store volatile i32 %4, i32* inttoptr (i32 -2097151980 to i32*), align 4, !dbg !1862
  ret void, !dbg !1863
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Init() local_unnamed_addr #3 !dbg !1864 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1866, metadata !DIExpression()), !dbg !1867
  %1 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1866, metadata !DIExpression()), !dbg !1867
  br label %2, !dbg !1868

2:                                                ; preds = %0, %9
  %3 = phi i32 [ 0, %0 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1866, metadata !DIExpression()), !dbg !1867
  %4 = shl nuw i32 1, %3, !dbg !1870
  %5 = and i32 %1, %4, !dbg !1874
  %6 = icmp eq i32 %5, 0, !dbg !1875
  br i1 %6, label %9, label %7, !dbg !1876

7:                                                ; preds = %2
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %3, !dbg !1877
  store i32 26, i32* %8, align 4, !dbg !1879
  br label %9, !dbg !1880

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i32 %3, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %10, metadata !1866, metadata !DIExpression()), !dbg !1867
  %11 = icmp eq i32 %10, 11, !dbg !1882
  br i1 %11, label %12, label %2, !dbg !1868, !llvm.loop !1883

12:                                               ; preds = %9, %12
  %13 = phi i8 [ %14, %12 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1866, metadata !DIExpression()), !dbg !1867
  %14 = add nuw nsw i8 %13, 1, !dbg !1885
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %14) #14, !dbg !1889
  call void @llvm.dbg.value(metadata i8 %14, metadata !1866, metadata !DIExpression()), !dbg !1867
  %15 = icmp ult i8 %13, 10, !dbg !1890
  br i1 %15, label %12, label %16, !dbg !1891, !llvm.loop !1892

16:                                               ; preds = %12
  %17 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1894
  %18 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1895
  %19 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1896
  ret void, !dbg !1897
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1898 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1902, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 -1, metadata !1903, metadata !DIExpression()), !dbg !1906
  %2 = add i8 %0, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i8 %2, metadata !1905, metadata !DIExpression()), !dbg !1906
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1908, !srcloc !1267
  call void @llvm.dbg.value(metadata i32 %3, metadata !1264, metadata !DIExpression()) #15, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %3, metadata !1904, metadata !DIExpression()), !dbg !1906
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1912, !srcloc !1272
  %4 = zext i8 %2 to i32, !dbg !1914
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1914
  %6 = load i8, i8* %5, align 1, !dbg !1914, !range !1556
  %7 = icmp eq i8 %6, 0, !dbg !1916
  br i1 %7, label %8, label %12, !dbg !1917

8:                                                ; preds = %1
  store i8 1, i8* %5, align 1, !dbg !1918
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %2) #14, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %3, metadata !1290, metadata !DIExpression()) #15, !dbg !1921
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1924, !srcloc !1299
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1925
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1926
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1927
  br label %12, !dbg !1928

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %0, %8 ], [ -1, %1 ], !dbg !1906
  ret i8 %13, !dbg !1929
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_idle(i8 noundef returned zeroext %0) local_unnamed_addr #3 !dbg !1930 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1932, metadata !DIExpression()), !dbg !1935
  %2 = add i8 %0, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i8 %2, metadata !1934, metadata !DIExpression()), !dbg !1935
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1937
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1938, !srcloc !1267
  call void @llvm.dbg.value(metadata i32 %3, metadata !1264, metadata !DIExpression()) #15, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %3, metadata !1933, metadata !DIExpression()), !dbg !1935
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1942, !srcloc !1272
  %4 = zext i8 %2 to i32, !dbg !1944
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1944
  store i8 0, i8* %5, align 1, !dbg !1945
  %6 = shl nuw i32 1, %4, !dbg !1946
  %7 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1947
  %8 = or i32 %7, %6, !dbg !1947
  store i32 %8, i32* @DMA_Channel_Status, align 4, !dbg !1947
  %9 = add nsw i32 %4, -1, !dbg !1948
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %9, !dbg !1949
  store i32 26, i32* %10, align 4, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %3, metadata !1290, metadata !DIExpression()) #15, !dbg !1951
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1954, !srcloc !1299
  ret i8 %0, !dbg !1955
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_init() local_unnamed_addr #1 !dbg !1956 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !1959
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 12) #14, !dbg !1960
  call void @llvm.dbg.value(metadata i32 6293010, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 6293010, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !1961
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 13) #14, !dbg !1962
  call void @llvm.dbg.value(metadata i32 7603730, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 7603730, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !1963
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 14) #14, !dbg !1964
  call void @llvm.dbg.value(metadata i32 8388624, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 8388624, i32* inttoptr (i32 -2097082860 to i32*), align 4, !dbg !1965
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 15) #14, !dbg !1966
  call void @llvm.dbg.value(metadata i32 9748496, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 9748496, i32* inttoptr (i32 -2097082604 to i32*), align 4, !dbg !1967
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 16) #14, !dbg !1968
  call void @llvm.dbg.value(metadata i32 10485776, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 10485776, i32* inttoptr (i32 -2097082348 to i32*), align 4, !dbg !1969
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 17) #14, !dbg !1970
  call void @llvm.dbg.value(metadata i32 11845648, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 11845648, i32* inttoptr (i32 -2097082092 to i32*), align 4, !dbg !1971
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 18) #14, !dbg !1972
  call void @llvm.dbg.value(metadata i32 12582928, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 12582928, i32* inttoptr (i32 -2097081836 to i32*), align 4, !dbg !1973
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 19) #14, !dbg !1974
  call void @llvm.dbg.value(metadata i32 13942800, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 13942800, i32* inttoptr (i32 -2097081580 to i32*), align 4, !dbg !1975
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 20) #14, !dbg !1976
  call void @llvm.dbg.value(metadata i32 16023568, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 16023568, i32* inttoptr (i32 -2097081324 to i32*), align 4, !dbg !1977
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 21) #14, !dbg !1978
  call void @llvm.dbg.value(metadata i32 17072144, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 17072144, i32* inttoptr (i32 -2097081068 to i32*), align 4, !dbg !1979
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 22) #14, !dbg !1980
  call void @llvm.dbg.value(metadata i32 18120720, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 18120720, i32* inttoptr (i32 -2097080812 to i32*), align 4, !dbg !1981
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 23) #14, !dbg !1982
  call void @llvm.dbg.value(metadata i32 19169296, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 19169296, i32* inttoptr (i32 -2097080556 to i32*), align 4, !dbg !1983
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 24) #14, !dbg !1984
  call void @llvm.dbg.value(metadata i32 20217872, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 20217872, i32* inttoptr (i32 -2097080300 to i32*), align 4, !dbg !1985
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 25) #14, !dbg !1986
  call void @llvm.dbg.value(metadata i32 21282834, metadata !1958, metadata !DIExpression()), !dbg !1959
  store volatile i32 21282834, i32* inttoptr (i32 -2097080044 to i32*), align 4, !dbg !1987
  ret void, !dbg !1988
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_SetAdrs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !dbg !1989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1994, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %1, metadata !1995, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %2, metadata !1996, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %3, metadata !1997, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %4, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %5, metadata !1999, metadata !DIExpression()), !dbg !2000
  %7 = shl i32 %2, 8, !dbg !2001
  %8 = add i32 %7, -2097086420, !dbg !2001
  %9 = inttoptr i32 %8 to i32*, !dbg !2001
  store volatile i32 %0, i32* %9, align 4, !dbg !2001
  %10 = add i32 %7, -2097086396, !dbg !2002
  %11 = inttoptr i32 %10 to i32*, !dbg !2002
  store volatile i32 %1, i32* %11, align 4, !dbg !2002
  %12 = add i32 %7, -2097086400, !dbg !2003
  %13 = inttoptr i32 %12 to i32*, !dbg !2003
  store volatile i32 %3, i32* %13, align 64, !dbg !2003
  %14 = add i32 %7, -2097086448, !dbg !2004
  %15 = inttoptr i32 %14 to i32*, !dbg !2004
  store volatile i32 %4, i32* %15, align 16, !dbg !2005
  %16 = add i32 %7, -2097086384, !dbg !2006
  %17 = inttoptr i32 %16 to i32*, !dbg !2006
  store volatile i32 %5, i32* %17, align 16, !dbg !2007
  ret void, !dbg !2008
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2013, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %1, metadata !2014, metadata !DIExpression()), !dbg !2015
  %3 = shl i32 %0, 8, !dbg !2016
  %4 = add i32 %3, -2097086384, !dbg !2016
  %5 = inttoptr i32 %4 to i32*, !dbg !2016
  store volatile i32 %1, i32* %5, align 16, !dbg !2017
  ret void, !dbg !2018
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !2019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2023, metadata !DIExpression()), !dbg !2024
  %2 = shl i32 %0, 8, !dbg !2025
  %3 = add i32 %2, -2097086444, !dbg !2025
  %4 = inttoptr i32 %3 to i32*, !dbg !2025
  %5 = load volatile i32, i32* %4, align 4, !dbg !2025
  %6 = or i32 %5, 32768, !dbg !2025
  store volatile i32 %6, i32* %4, align 4, !dbg !2025
  ret void, !dbg !2026
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !2027 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2029, metadata !DIExpression()), !dbg !2030
  %2 = shl i32 %0, 8, !dbg !2031
  %3 = add i32 %2, -2097086444, !dbg !2031
  %4 = inttoptr i32 %3 to i32*, !dbg !2031
  %5 = load volatile i32, i32* %4, align 4, !dbg !2031
  %6 = and i32 %5, -32769, !dbg !2031
  store volatile i32 %6, i32* %4, align 4, !dbg !2031
  ret void, !dbg !2032
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Flush(i32 noundef %0) local_unnamed_addr #1 !dbg !2033 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2035, metadata !DIExpression()), !dbg !2036
  %2 = trunc i32 %0 to i8, !dbg !2037
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !2038
  %3 = shl i32 %0, 8, !dbg !2039
  %4 = add i32 %3, -2097086440, !dbg !2039
  %5 = inttoptr i32 %4 to i32*, !dbg !2039
  store volatile i32 32768, i32* %5, align 8, !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !2041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2046, metadata !DIExpression()), !dbg !2047
  %3 = add i32 %0, -12, !dbg !2048
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !2049
  store void ()* %1, void ()** %4, align 4, !dbg !2050
  ret void, !dbg !2051
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !2052 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2055, metadata !DIExpression()), !dbg !2056
  %3 = add i32 %0, -12, !dbg !2057
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !2058
  store void ()* %1, void ()** %4, align 4, !dbg !2059
  ret void, !dbg !2060
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 !dbg !2061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i1 %2, metadata !2067, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2068
  %4 = icmp ugt i32 %0, 1, !dbg !2069
  br i1 %4, label %5, label %8, !dbg !2071

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 75) #16, !dbg !2072
  br label %7, !dbg !2072

7:                                                ; preds = %5, %7
  br label %7, !dbg !2072, !llvm.loop !2074

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !2075

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !2076
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2079
  br i1 %2, label %11, label %13, !dbg !2081

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !2082
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2082
  br label %21, !dbg !2084

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !2085
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2085
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !2087
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2090
  br i1 %2, label %17, label %19, !dbg !2092

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !2093
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2093
  br label %21, !dbg !2095

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !2096
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2096
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !2098
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #3 !dbg !2099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2103, metadata !DIExpression()), !dbg !2104
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !2105

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 96) #16, !dbg !2106
  br label %4, !dbg !2106

4:                                                ; preds = %2, %4
  br label %4, !dbg !2106, !llvm.loop !2109

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2110
  %7 = or i32 %6, 1, !dbg !2110
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2110
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #16, !dbg !2113
  br label %16, !dbg !2114

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2115
  %11 = or i32 %10, 1, !dbg !2115
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2115
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #16, !dbg !2118
  br label %16, !dbg !2119

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2120
  %15 = or i32 %14, 1, !dbg !2120
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2120
  br label %16, !dbg !2123

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !2124
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #1 !dbg !2125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2127, metadata !DIExpression()), !dbg !2128
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !2129

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2130
  %4 = and i32 %3, -2, !dbg !2130
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2130
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2133
  %6 = and i32 %5, -2, !dbg !2133
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2133
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2134
  br label %18, !dbg !2135

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2136
  %9 = and i32 %8, -3, !dbg !2136
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2136
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2139
  %11 = and i32 %10, -2, !dbg !2139
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2139
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2140
  br label %18, !dbg !2141

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2142
  %14 = and i32 %13, -2, !dbg !2142
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2142
  br label %18, !dbg !2145

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2146
  %17 = and i32 %16, -2, !dbg !2146
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2146
  br label %18, !dbg !2149

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !2150
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #3 !dbg !2151 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !2153, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata i32 undef, metadata !2153, metadata !DIExpression()), !dbg !2155
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2156
  %3 = and i32 %2, 65535, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %2, metadata !2154, metadata !DIExpression()), !dbg !2155
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2158
  %4 = and i32 %2, 1, !dbg !2159
  %5 = icmp eq i32 %4, 0, !dbg !2159
  br i1 %5, label %6, label %9, !dbg !2161

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !2162
  %8 = icmp eq i32 %7, 0, !dbg !2162
  br i1 %8, label %13, label %9, !dbg !2164

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #16, !dbg !2165
  %12 = load void ()*, void ()** %11, align 4, !dbg !2165
  tail call void %12() #16, !dbg !2165
  br label %13, !dbg !2166

13:                                               ; preds = %9, %6
  ret void, !dbg !2166
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #3 !dbg !2167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata void ()* %2, metadata !2173, metadata !DIExpression()), !dbg !2174
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !2175

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 149) #16, !dbg !2176
  br label %6, !dbg !2176

6:                                                ; preds = %4, %6
  br label %6, !dbg !2176, !llvm.loop !2179

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !2180
  br i1 %8, label %9, label %13, !dbg !2181

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #16, !dbg !2183
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #16, !dbg !2185
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #16, !dbg !2186
  br label %13, !dbg !2187

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !2188

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !2189
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2192
  %16 = or i32 %15, 1, !dbg !2192
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2192
  %17 = shl i32 %1, 2, !dbg !2193
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2194
  %19 = or i32 %18, %17, !dbg !2194
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2194
  br label %36, !dbg !2195

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !2196
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2199
  %22 = or i32 %21, 2, !dbg !2199
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2199
  %23 = shl i32 %1, 2, !dbg !2200
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2201
  %25 = or i32 %24, %23, !dbg !2201
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2201
  br label %36, !dbg !2202

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !2203
  %28 = or i32 %27, 1, !dbg !2206
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2207
  %30 = or i32 %29, %28, !dbg !2207
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2207
  br label %36, !dbg !2208

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !2209
  %33 = or i32 %32, 1, !dbg !2212
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2213
  %35 = or i32 %34, %33, !dbg !2213
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2213
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !2214
  br label %36, !dbg !2215

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !2216
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #3 !dbg !2217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()), !dbg !2223
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !2224

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 177) #16, !dbg !2225
  br label %4, !dbg !2225

4:                                                ; preds = %4, %2
  br label %4, !dbg !2225, !llvm.loop !2228

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !2222, metadata !DIExpression()), !dbg !2223
  br label %8, !dbg !2229

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !2222, metadata !DIExpression()), !dbg !2223
  br label %8, !dbg !2233

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !2222, metadata !DIExpression()), !dbg !2223
  br label %8, !dbg !2236

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %10, metadata !2222, metadata !DIExpression()), !dbg !2223
  ret i32 %10, !dbg !2240
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #3 !dbg !2241 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !2242
  ret void, !dbg !2243
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #3 !dbg !2244 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !2245
  ret void, !dbg !2246
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2252, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8 %1, metadata !2253, metadata !DIExpression()), !dbg !2256
  %3 = lshr i32 %0, 5, !dbg !2257
  call void @llvm.dbg.value(metadata i32 %3, metadata !2254, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2256
  %4 = trunc i32 %0 to i16, !dbg !2258
  %5 = and i16 %4, 31, !dbg !2258
  call void @llvm.dbg.value(metadata i16 %4, metadata !2255, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2256
  %6 = trunc i32 %3 to i16, !dbg !2259
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !2259

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !2260
  %9 = zext i16 %5 to i32, !dbg !2263
  %10 = icmp ult i16 %5, 27, !dbg !2263
  br i1 %8, label %11, label %46, !dbg !2264

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !2265

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !2267
  %14 = xor i32 %13, -1, !dbg !2270
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2271
  %16 = and i32 %15, %14, !dbg !2271
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2271
  br label %44, !dbg !2272

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !2273
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !2273

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2274
  %21 = and i32 %20, -3, !dbg !2274
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2274
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2277
  %23 = or i32 %22, 2048, !dbg !2277
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2277
  br label %44, !dbg !2278

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2279
  %26 = and i32 %25, -3, !dbg !2279
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2279
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2282
  %28 = or i32 %27, 2048, !dbg !2282
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2282
  br label %44, !dbg !2283

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2284
  %31 = and i32 %30, -3, !dbg !2284
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2284
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2287
  %33 = or i32 %32, 2048, !dbg !2287
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2287
  br label %44, !dbg !2288

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2289
  %36 = and i32 %35, -3, !dbg !2289
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2289
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2292
  %38 = or i32 %37, 2048, !dbg !2292
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2292
  br label %44, !dbg !2293

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2294
  %41 = and i32 %40, -3, !dbg !2294
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2294
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2297
  %43 = or i32 %42, 2048, !dbg !2297
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2297
  br label %44, !dbg !2298

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !2299
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !2299
  br label %97, !dbg !2300

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !2301

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !2303
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2306
  %50 = or i32 %49, %48, !dbg !2306
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2306
  br label %68, !dbg !2307

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !2308
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !2308

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2309
  %55 = or i32 %54, 2050, !dbg !2309
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2309
  br label %68, !dbg !2312

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2313
  %58 = or i32 %57, 2050, !dbg !2313
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2313
  br label %68, !dbg !2316

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2317
  %61 = or i32 %60, 2050, !dbg !2317
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2317
  br label %68, !dbg !2320

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2321
  %64 = or i32 %63, 2050, !dbg !2321
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2321
  br label %68, !dbg !2324

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2325
  %67 = or i32 %66, 2050, !dbg !2325
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2325
  br label %68, !dbg !2328

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !2329
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !2329
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !2330
  %72 = zext i16 %5 to i32, !dbg !2332
  %73 = icmp eq i16 %5, 0, !dbg !2332
  br i1 %71, label %74, label %87, !dbg !2333

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !2334

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !2336
  %77 = xor i32 %76, -1, !dbg !2339
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2340
  %79 = and i32 %78, %77, !dbg !2340
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2340
  br label %85, !dbg !2341

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2342
  %82 = and i32 %81, -3, !dbg !2342
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2342
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2344
  %84 = or i32 %83, 2048, !dbg !2344
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2344
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !2345
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !2345
  br label %97, !dbg !2346

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !2347

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !2349
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2352
  %91 = or i32 %90, %89, !dbg !2352
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2352
  br label %95, !dbg !2353

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2354
  %94 = or i32 %93, 2050, !dbg !2354
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2354
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !2356
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !2356
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !2256
  ret i32 %98, !dbg !2357
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2360, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 %1, metadata !2361, metadata !DIExpression()), !dbg !2364
  %3 = lshr i32 %0, 5, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %3, metadata !2362, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2364
  %4 = trunc i32 %0 to i16, !dbg !2366
  %5 = and i16 %4, 31, !dbg !2366
  call void @llvm.dbg.value(metadata i16 %5, metadata !2363, metadata !DIExpression()), !dbg !2364
  %6 = trunc i32 %3 to i16, !dbg !2367
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !2367

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !2368
  %9 = zext i16 %5 to i32, !dbg !2371
  %10 = shl nuw i32 1, %9, !dbg !2371
  br i1 %8, label %12, label %11, !dbg !2372

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !2373
  br label %19, !dbg !2375

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !2376
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !2378
  %15 = zext i16 %5 to i32, !dbg !2380
  %16 = shl nuw i32 1, %15, !dbg !2380
  br i1 %14, label %18, label %17, !dbg !2381

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !2382
  br label %19, !dbg !2384

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !2385
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !2364
  ret i32 %20, !dbg !2387
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #6 !dbg !2388 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2396
  %2 = lshr i32 %0, 5, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %2, metadata !2393, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2396
  %3 = and i32 %0, 31, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2396
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2396
  %4 = trunc i32 %2 to i16, !dbg !2399
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2399

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2395, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2396
  br label %6, !dbg !2400

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2402
  %9 = lshr i32 %8, %3, !dbg !2402
  %10 = trunc i32 %9 to i8, !dbg !2402
  %11 = and i8 %10, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i8 %11, metadata !2395, metadata !DIExpression()), !dbg !2396
  br label %12, !dbg !2403

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2396
  ret i8 %13, !dbg !2404
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #6 !dbg !2405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2411
  %2 = lshr i32 %0, 5, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %2, metadata !2408, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2411
  %3 = and i32 %0, 31, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2411
  %4 = trunc i32 %2 to i16, !dbg !2414
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2414

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2411
  br label %6, !dbg !2415

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !2417
  %9 = lshr i32 %8, %3, !dbg !2417
  %10 = trunc i32 %9 to i8, !dbg !2417
  %11 = and i8 %10, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i8 %11, metadata !2410, metadata !DIExpression()), !dbg !2411
  br label %12, !dbg !2418

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2411
  ret i8 %13, !dbg !2419
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #6 !dbg !2420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2426
  %2 = lshr i32 %0, 5, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %2, metadata !2423, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2426
  %3 = and i32 %0, 31, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %0, metadata !2424, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2426
  call void @llvm.dbg.value(metadata i8 0, metadata !2425, metadata !DIExpression()), !dbg !2426
  %4 = trunc i32 %2 to i16, !dbg !2429
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2429

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2425, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2426
  br label %6, !dbg !2430

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2432
  %9 = lshr i32 %8, %3, !dbg !2432
  %10 = trunc i32 %9 to i8, !dbg !2432
  %11 = and i8 %10, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i8 %11, metadata !2425, metadata !DIExpression()), !dbg !2426
  br label %12, !dbg !2433

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2426
  ret i8 %13, !dbg !2434
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2435 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2442
  %2 = lshr i32 %0, 5, !dbg !2443
  call void @llvm.dbg.value(metadata i32 %2, metadata !2440, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2442
  %3 = trunc i32 %0 to i16, !dbg !2444
  %4 = and i16 %3, 31, !dbg !2444
  call void @llvm.dbg.value(metadata i16 %3, metadata !2441, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2442
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !2445
  %6 = trunc i32 %2 to i16, !dbg !2446
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2446

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2447
  br i1 %8, label %9, label %12, !dbg !2450

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2451
  %11 = shl nuw nsw i32 1, %10, !dbg !2452
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !2452
  br label %49, !dbg !2454

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2455
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2455

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2456
  %16 = and i32 %15, -29, !dbg !2456
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2456
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2459
  %18 = or i32 %17, 2052, !dbg !2459
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2459
  br label %49, !dbg !2460

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2461
  %21 = and i32 %20, -29, !dbg !2461
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2461
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2464
  %23 = or i32 %22, 2052, !dbg !2464
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2464
  br label %49, !dbg !2465

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2466
  %26 = and i32 %25, -29, !dbg !2466
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2466
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2469
  %28 = or i32 %27, 2052, !dbg !2469
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2469
  br label %49, !dbg !2470

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2471
  %31 = and i32 %30, -29, !dbg !2471
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2471
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2474
  %33 = or i32 %32, 2052, !dbg !2474
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2474
  br label %49, !dbg !2475

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2476
  %36 = and i32 %35, -29, !dbg !2476
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2476
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2479
  %38 = or i32 %37, 2052, !dbg !2479
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2479
  br label %49, !dbg !2480

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2481
  br i1 %40, label %41, label %46, !dbg !2483

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2484
  %43 = and i32 %42, -29, !dbg !2484
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2484
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2486
  %45 = or i32 %44, 2052, !dbg !2486
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2486
  br label %49, !dbg !2487

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2488
  %48 = shl nuw i32 1, %47, !dbg !2488
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !2488
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2442
  ret i32 %50, !dbg !2490
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2496
  %2 = lshr i32 %0, 5, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %2, metadata !2494, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2496
  %3 = trunc i32 %0 to i16, !dbg !2498
  %4 = and i16 %3, 31, !dbg !2498
  call void @llvm.dbg.value(metadata i16 %3, metadata !2495, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2496
  %5 = trunc i32 %2 to i16, !dbg !2499
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2499

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2500
  br i1 %7, label %8, label %11, !dbg !2503

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2504
  %10 = shl nuw nsw i32 1, %9, !dbg !2505
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !2505
  br label %48, !dbg !2507

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2508
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2508

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2509
  %15 = and i32 %14, -29, !dbg !2509
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2509
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2512
  %17 = or i32 %16, 2048, !dbg !2512
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2512
  br label %48, !dbg !2513

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2514
  %20 = and i32 %19, -29, !dbg !2514
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2514
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2517
  %22 = or i32 %21, 2048, !dbg !2517
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2517
  br label %48, !dbg !2518

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2519
  %25 = and i32 %24, -29, !dbg !2519
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2519
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2522
  %27 = or i32 %26, 2048, !dbg !2522
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2522
  br label %48, !dbg !2523

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2524
  %30 = and i32 %29, -29, !dbg !2524
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2524
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2527
  %32 = or i32 %31, 2048, !dbg !2527
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2527
  br label %48, !dbg !2528

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2529
  %35 = and i32 %34, -29, !dbg !2529
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2529
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2532
  %37 = or i32 %36, 2048, !dbg !2532
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2532
  br label %48, !dbg !2533

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2534
  br i1 %39, label %40, label %45, !dbg !2536

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2537
  %42 = and i32 %41, -29, !dbg !2537
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2537
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2539
  %44 = or i32 %43, 2048, !dbg !2539
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2539
  br label %48, !dbg !2540

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2541
  %47 = shl nuw i32 1, %46, !dbg !2541
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !2541
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2496
  ret i32 %49, !dbg !2543
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2549
  %2 = lshr i32 %0, 5, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %2, metadata !2547, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2549
  %3 = trunc i32 %0 to i16, !dbg !2551
  %4 = and i16 %3, 31, !dbg !2551
  call void @llvm.dbg.value(metadata i16 %3, metadata !2548, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2549
  %5 = trunc i32 %2 to i16, !dbg !2552
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2552

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2553
  br i1 %7, label %8, label %11, !dbg !2556

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2557
  %10 = shl nuw nsw i32 1, %9, !dbg !2558
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !2558
  br label %48, !dbg !2560

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2561
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2561

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2562
  %15 = and i32 %14, -29, !dbg !2562
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2562
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2565
  %17 = or i32 %16, 2048, !dbg !2565
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2565
  br label %48, !dbg !2566

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2567
  %20 = and i32 %19, -29, !dbg !2567
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2567
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2570
  %22 = or i32 %21, 2048, !dbg !2570
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2570
  br label %48, !dbg !2571

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2572
  %25 = and i32 %24, -29, !dbg !2572
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2572
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2575
  %27 = or i32 %26, 2048, !dbg !2575
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2575
  br label %48, !dbg !2576

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2577
  %30 = and i32 %29, -29, !dbg !2577
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2577
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2580
  %32 = or i32 %31, 2048, !dbg !2580
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2580
  br label %48, !dbg !2581

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2582
  %35 = and i32 %34, -29, !dbg !2582
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2582
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2585
  %37 = or i32 %36, 2048, !dbg !2585
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2585
  br label %48, !dbg !2586

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2587
  br i1 %39, label %40, label %45, !dbg !2589

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2590
  %42 = and i32 %41, -29, !dbg !2590
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2590
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2592
  %44 = or i32 %43, 2048, !dbg !2592
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2592
  br label %48, !dbg !2593

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2594
  %47 = shl nuw i32 1, %46, !dbg !2594
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !2594
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2549
  ret i32 %49, !dbg !2596
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()), !dbg !2602
  %2 = lshr i32 %0, 5, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %2, metadata !2600, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2602
  %3 = trunc i32 %0 to i16, !dbg !2604
  %4 = and i16 %3, 31, !dbg !2604
  call void @llvm.dbg.value(metadata i16 %3, metadata !2601, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2602
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !2605
  %6 = trunc i32 %2 to i16, !dbg !2606
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2606

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2607
  br i1 %8, label %9, label %12, !dbg !2610

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2611
  %11 = shl nuw nsw i32 1, %10, !dbg !2612
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !2612
  br label %49, !dbg !2614

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2615
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2615

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2616
  %16 = and i32 %15, -29, !dbg !2616
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2616
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2619
  %18 = or i32 %17, 2068, !dbg !2619
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2619
  br label %49, !dbg !2620

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2621
  %21 = and i32 %20, -29, !dbg !2621
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2621
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2624
  %23 = or i32 %22, 2068, !dbg !2624
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2624
  br label %49, !dbg !2625

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2626
  %26 = and i32 %25, -29, !dbg !2626
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2626
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2629
  %28 = or i32 %27, 2068, !dbg !2629
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2629
  br label %49, !dbg !2630

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2631
  %31 = and i32 %30, -29, !dbg !2631
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2631
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2634
  %33 = or i32 %32, 2068, !dbg !2634
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2634
  br label %49, !dbg !2635

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2636
  %36 = and i32 %35, -29, !dbg !2636
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2636
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2639
  %38 = or i32 %37, 2068, !dbg !2639
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2639
  br label %49, !dbg !2640

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2641
  br i1 %40, label %41, label %46, !dbg !2643

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2644
  %43 = and i32 %42, -29, !dbg !2644
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2644
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2646
  %45 = or i32 %44, 2068, !dbg !2646
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2646
  br label %49, !dbg !2647

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2648
  %48 = shl nuw i32 1, %47, !dbg !2648
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !2648
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2602
  ret i32 %50, !dbg !2650
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2651 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i8 %1, metadata !2654, metadata !DIExpression()), !dbg !2657
  %3 = lshr i32 %0, 4, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %3, metadata !2655, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2657
  %4 = trunc i32 %0 to i16, !dbg !2659
  %5 = and i16 %4, 15, !dbg !2659
  call void @llvm.dbg.value(metadata i16 %4, metadata !2656, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2657
  %6 = trunc i32 %3 to i16, !dbg !2660
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !2660

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !2661
  %9 = zext i16 %8 to i32, !dbg !2661
  %10 = shl nuw i32 3, %9, !dbg !2663
  %11 = xor i32 %10, -1, !dbg !2664
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2665
  %13 = and i32 %12, %11, !dbg !2665
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2665
  %14 = lshr i8 %1, 2, !dbg !2666
  %15 = zext i8 %14 to i32, !dbg !2666
  %16 = add nsw i32 %15, -1, !dbg !2667
  %17 = shl i32 %16, %9, !dbg !2668
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2669
  %19 = or i32 %18, %17, !dbg !2669
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2669
  br label %131, !dbg !2670

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2671
  br i1 %21, label %22, label %35, !dbg !2673

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2674
  %24 = zext i16 %23 to i32, !dbg !2674
  %25 = shl nuw nsw i32 3, %24, !dbg !2676
  %26 = xor i32 %25, -1, !dbg !2677
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2678
  %28 = and i32 %27, %26, !dbg !2678
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2678
  %29 = lshr i8 %1, 2, !dbg !2679
  %30 = zext i8 %29 to i32, !dbg !2679
  %31 = add nsw i32 %30, -1, !dbg !2680
  %32 = shl nsw i32 %31, %24, !dbg !2681
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2682
  %34 = or i32 %33, %32, !dbg !2682
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2682
  br label %131, !dbg !2683

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2684
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2684

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2685
  %39 = and i32 %38, -449, !dbg !2685
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2685
  %40 = lshr i8 %1, 1, !dbg !2688
  %41 = zext i8 %40 to i32, !dbg !2688
  %42 = shl nuw nsw i32 %41, 6, !dbg !2689
  %43 = add nsw i32 %42, -64, !dbg !2689
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2690
  %45 = or i32 %44, %43, !dbg !2690
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2690
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2691
  %47 = or i32 %46, 2048, !dbg !2691
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2691
  br label %131, !dbg !2692

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2693
  %50 = and i32 %49, -449, !dbg !2693
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2693
  %51 = lshr i8 %1, 1, !dbg !2696
  %52 = zext i8 %51 to i32, !dbg !2696
  %53 = shl nuw nsw i32 %52, 6, !dbg !2697
  %54 = add nsw i32 %53, -64, !dbg !2697
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2698
  %56 = or i32 %55, %54, !dbg !2698
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2698
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2699
  %58 = or i32 %57, 2048, !dbg !2699
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2699
  br label %131, !dbg !2700

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2701
  %61 = and i32 %60, -449, !dbg !2701
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2701
  %62 = lshr i8 %1, 1, !dbg !2704
  %63 = zext i8 %62 to i32, !dbg !2704
  %64 = shl nuw nsw i32 %63, 6, !dbg !2705
  %65 = add nsw i32 %64, -64, !dbg !2705
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2706
  %67 = or i32 %66, %65, !dbg !2706
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2706
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2707
  %69 = or i32 %68, 2048, !dbg !2707
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2707
  br label %131, !dbg !2708

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2709
  %72 = and i32 %71, -449, !dbg !2709
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2709
  %73 = lshr i8 %1, 1, !dbg !2712
  %74 = zext i8 %73 to i32, !dbg !2712
  %75 = shl nuw nsw i32 %74, 6, !dbg !2713
  %76 = add nsw i32 %75, -64, !dbg !2713
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2714
  %78 = or i32 %77, %76, !dbg !2714
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2714
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2715
  %80 = or i32 %79, 2048, !dbg !2715
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2715
  br label %131, !dbg !2716

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2717
  %83 = and i32 %82, -449, !dbg !2717
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2717
  %84 = lshr i8 %1, 1, !dbg !2720
  %85 = zext i8 %84 to i32, !dbg !2720
  %86 = shl nuw nsw i32 %85, 6, !dbg !2721
  %87 = add nsw i32 %86, -64, !dbg !2721
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2722
  %89 = or i32 %88, %87, !dbg !2722
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2722
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2723
  %91 = or i32 %90, 2048, !dbg !2723
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2723
  br label %131, !dbg !2724

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2725
  br i1 %93, label %94, label %105, !dbg !2727

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2728
  %96 = and i32 %95, -449, !dbg !2728
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2728
  %97 = lshr i8 %1, 1, !dbg !2730
  %98 = zext i8 %97 to i32, !dbg !2730
  %99 = shl nuw nsw i32 %98, 6, !dbg !2731
  %100 = add nsw i32 %99, -64, !dbg !2731
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2732
  %102 = or i32 %101, %100, !dbg !2732
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2732
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2733
  %104 = or i32 %103, 2048, !dbg !2733
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2733
  br label %131, !dbg !2734

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2735
  %107 = zext i16 %106 to i32, !dbg !2735
  %108 = shl nuw i32 3, %107, !dbg !2737
  %109 = xor i32 %108, -1, !dbg !2738
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2739
  %111 = and i32 %110, %109, !dbg !2739
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2739
  %112 = lshr i8 %1, 2, !dbg !2740
  %113 = zext i8 %112 to i32, !dbg !2740
  %114 = add nsw i32 %113, -1, !dbg !2741
  %115 = shl i32 %114, %107, !dbg !2742
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2743
  %117 = or i32 %116, %115, !dbg !2743
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2743
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2744
  %120 = zext i16 %119 to i32, !dbg !2744
  %121 = shl nuw i32 3, %120, !dbg !2745
  %122 = xor i32 %121, -1, !dbg !2746
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2747
  %124 = and i32 %123, %122, !dbg !2747
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2747
  %125 = lshr i8 %1, 2, !dbg !2748
  %126 = zext i8 %125 to i32, !dbg !2748
  %127 = add nsw i32 %126, -1, !dbg !2749
  %128 = shl i32 %127, %120, !dbg !2750
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2751
  %130 = or i32 %129, %128, !dbg !2751
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2751
  br label %131, !dbg !2752

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !2657
  ret i32 %132, !dbg !2753
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !2754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2759, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %1, metadata !2760, metadata !DIExpression()), !dbg !2764
  %3 = lshr i32 %0, 4, !dbg !2765
  call void @llvm.dbg.value(metadata i32 %3, metadata !2761, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2764
  %4 = trunc i32 %0 to i16, !dbg !2766
  %5 = and i16 %4, 15, !dbg !2766
  call void @llvm.dbg.value(metadata i16 %4, metadata !2762, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %6 = trunc i32 %3 to i16, !dbg !2767
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2767

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %8, metadata !2763, metadata !DIExpression()), !dbg !2764
  %9 = shl nuw nsw i16 %5, 1, !dbg !2770
  %10 = zext i16 %9 to i32, !dbg !2770
  %11 = shl nuw i32 3, %10, !dbg !2771
  %12 = and i32 %8, %11, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %12, metadata !2763, metadata !DIExpression()), !dbg !2764
  %13 = lshr i32 %12, %10, !dbg !2773
  %14 = trunc i32 %13 to i8, !dbg !2774
  %15 = shl i8 %14, 2, !dbg !2774
  %16 = add i8 %15, 4, !dbg !2774
  br label %89, !dbg !2775

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2776
  br i1 %18, label %19, label %29, !dbg !2778

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2779
  call void @llvm.dbg.value(metadata i32 %20, metadata !2763, metadata !DIExpression()), !dbg !2764
  %21 = shl nuw nsw i16 %5, 1, !dbg !2781
  %22 = zext i16 %21 to i32, !dbg !2781
  %23 = shl nuw nsw i32 3, %22, !dbg !2782
  %24 = and i32 %20, %23, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %24, metadata !2763, metadata !DIExpression()), !dbg !2764
  %25 = lshr i32 %24, %22, !dbg !2784
  %26 = trunc i32 %25 to i8, !dbg !2785
  %27 = shl i8 %26, 2, !dbg !2785
  %28 = add i8 %27, 4, !dbg !2785
  br label %89, !dbg !2786

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2787
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2787

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %32, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %32, metadata !2763, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %33 = lshr i32 %32, 5, !dbg !2791
  %34 = trunc i32 %33 to i8, !dbg !2792
  %35 = and i8 %34, 14, !dbg !2792
  %36 = add nuw nsw i8 %35, 2, !dbg !2792
  br label %89, !dbg !2793

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2794
  call void @llvm.dbg.value(metadata i32 %38, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %38, metadata !2763, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %39 = lshr i32 %38, 5, !dbg !2797
  %40 = trunc i32 %39 to i8, !dbg !2798
  %41 = and i8 %40, 14, !dbg !2798
  %42 = add nuw nsw i8 %41, 2, !dbg !2798
  br label %89, !dbg !2799

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %44, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %44, metadata !2763, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %45 = lshr i32 %44, 5, !dbg !2803
  %46 = trunc i32 %45 to i8, !dbg !2804
  %47 = and i8 %46, 14, !dbg !2804
  %48 = add nuw nsw i8 %47, 2, !dbg !2804
  br label %89, !dbg !2805

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2806
  call void @llvm.dbg.value(metadata i32 %50, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %50, metadata !2763, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %51 = lshr i32 %50, 5, !dbg !2809
  %52 = trunc i32 %51 to i8, !dbg !2810
  %53 = and i8 %52, 14, !dbg !2810
  %54 = add nuw nsw i8 %53, 2, !dbg !2810
  br label %89, !dbg !2811

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2812
  call void @llvm.dbg.value(metadata i32 %56, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %56, metadata !2763, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %57 = lshr i32 %56, 5, !dbg !2815
  %58 = trunc i32 %57 to i8, !dbg !2816
  %59 = and i8 %58, 14, !dbg !2816
  %60 = add nuw nsw i8 %59, 2, !dbg !2816
  br label %89, !dbg !2817

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2818
  br i1 %62, label %63, label %69, !dbg !2820

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %64, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %64, metadata !2763, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2764
  %65 = lshr i32 %64, 5, !dbg !2823
  %66 = trunc i32 %65 to i8, !dbg !2824
  %67 = and i8 %66, 14, !dbg !2824
  %68 = add nuw nsw i8 %67, 2, !dbg !2824
  br label %89, !dbg !2825

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %70, metadata !2763, metadata !DIExpression()), !dbg !2764
  %71 = shl nuw nsw i16 %5, 1, !dbg !2828
  %72 = zext i16 %71 to i32, !dbg !2828
  %73 = shl nuw i32 3, %72, !dbg !2829
  %74 = and i32 %70, %73, !dbg !2830
  call void @llvm.dbg.value(metadata i32 %74, metadata !2763, metadata !DIExpression()), !dbg !2764
  %75 = lshr i32 %74, %72, !dbg !2831
  %76 = trunc i32 %75 to i8, !dbg !2832
  %77 = shl i8 %76, 2, !dbg !2832
  %78 = add i8 %77, 4, !dbg !2832
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %80, metadata !2763, metadata !DIExpression()), !dbg !2764
  %81 = shl nuw nsw i16 %5, 1, !dbg !2834
  %82 = zext i16 %81 to i32, !dbg !2834
  %83 = shl nuw i32 3, %82, !dbg !2835
  %84 = and i32 %80, %83, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %84, metadata !2763, metadata !DIExpression()), !dbg !2764
  %85 = lshr i32 %84, %82, !dbg !2837
  %86 = trunc i32 %85 to i8, !dbg !2838
  %87 = shl i8 %86, 2, !dbg !2838
  %88 = add i8 %87, 4, !dbg !2838
  br label %89, !dbg !2839

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2840
  br label %91, !dbg !2841

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2764
  ret i32 %92, !dbg !2841
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !2851
  %3 = lshr i32 %0, 5, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %3, metadata !2849, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2851
  %4 = trunc i32 %0 to i16, !dbg !2853
  %5 = and i16 %4, 31, !dbg !2853
  call void @llvm.dbg.value(metadata i16 %5, metadata !2850, metadata !DIExpression()), !dbg !2851
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2854

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2849, metadata !DIExpression()), !dbg !2851
  %7 = trunc i32 %3 to i16, !dbg !2855
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2855

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2858
  %10 = shl nuw i32 1, %9, !dbg !2860
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2861
  %12 = or i32 %11, %10, !dbg !2861
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2861
  br label %32, !dbg !2862

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2863
  %15 = shl nuw i32 1, %14, !dbg !2864
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2865
  %17 = or i32 %16, %15, !dbg !2865
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2865
  br label %32, !dbg !2866

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2867
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2867

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2870
  %22 = shl nuw i32 1, %21, !dbg !2872
  %23 = xor i32 %22, -1, !dbg !2873
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2874
  %25 = and i32 %24, %23, !dbg !2874
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2874
  br label %32, !dbg !2875

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2876
  %28 = shl nuw i32 1, %27, !dbg !2877
  %29 = xor i32 %28, -1, !dbg !2878
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2879
  %31 = and i32 %30, %29, !dbg !2879
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2879
  br label %32, !dbg !2880

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2881
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 %1, metadata !2889, metadata !DIExpression()), !dbg !2891
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
  ], !dbg !2892

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %4, metadata !2890, metadata !DIExpression()), !dbg !2891
  %5 = and i32 %4, -16, !dbg !2895
  call void @llvm.dbg.value(metadata i32 %5, metadata !2890, metadata !DIExpression()), !dbg !2891
  %6 = zext i8 %1 to i32, !dbg !2896
  %7 = or i32 %5, %6, !dbg !2897
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2898
  br label %187, !dbg !2899

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %9, metadata !2890, metadata !DIExpression()), !dbg !2891
  %10 = and i32 %9, -241, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %10, metadata !2890, metadata !DIExpression()), !dbg !2891
  %11 = zext i8 %1 to i32, !dbg !2902
  %12 = shl nuw nsw i32 %11, 4, !dbg !2903
  %13 = or i32 %10, %12, !dbg !2904
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2905
  br label %187, !dbg !2906

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %15, metadata !2890, metadata !DIExpression()), !dbg !2891
  %16 = and i32 %15, -3841, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %16, metadata !2890, metadata !DIExpression()), !dbg !2891
  %17 = zext i8 %1 to i32, !dbg !2909
  %18 = shl nuw nsw i32 %17, 8, !dbg !2910
  %19 = or i32 %16, %18, !dbg !2911
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2912
  br label %187, !dbg !2913

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %21, metadata !2890, metadata !DIExpression()), !dbg !2891
  %22 = and i32 %21, -61441, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %22, metadata !2890, metadata !DIExpression()), !dbg !2891
  %23 = zext i8 %1 to i32, !dbg !2916
  %24 = shl nuw nsw i32 %23, 12, !dbg !2917
  %25 = or i32 %22, %24, !dbg !2918
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2919
  br label %187, !dbg !2920

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2921
  call void @llvm.dbg.value(metadata i32 %27, metadata !2890, metadata !DIExpression()), !dbg !2891
  %28 = and i32 %27, -983041, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %28, metadata !2890, metadata !DIExpression()), !dbg !2891
  %29 = zext i8 %1 to i32, !dbg !2923
  %30 = shl nuw nsw i32 %29, 16, !dbg !2924
  %31 = or i32 %28, %30, !dbg !2925
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2926
  br label %187, !dbg !2927

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %33, metadata !2890, metadata !DIExpression()), !dbg !2891
  %34 = and i32 %33, -15728641, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %34, metadata !2890, metadata !DIExpression()), !dbg !2891
  %35 = zext i8 %1 to i32, !dbg !2930
  %36 = shl nuw nsw i32 %35, 20, !dbg !2931
  %37 = or i32 %34, %36, !dbg !2932
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2933
  br label %187, !dbg !2934

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %39, metadata !2890, metadata !DIExpression()), !dbg !2891
  %40 = and i32 %39, -251658241, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %40, metadata !2890, metadata !DIExpression()), !dbg !2891
  %41 = zext i8 %1 to i32, !dbg !2937
  %42 = shl nuw i32 %41, 24, !dbg !2938
  %43 = or i32 %40, %42, !dbg !2939
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2940
  br label %187, !dbg !2941

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %45, metadata !2890, metadata !DIExpression()), !dbg !2891
  %46 = and i32 %45, 268435455, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %46, metadata !2890, metadata !DIExpression()), !dbg !2891
  %47 = zext i8 %1 to i32, !dbg !2944
  %48 = shl i32 %47, 28, !dbg !2945
  %49 = or i32 %46, %48, !dbg !2946
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2947
  br label %187, !dbg !2948

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2949
  call void @llvm.dbg.value(metadata i32 %51, metadata !2890, metadata !DIExpression()), !dbg !2891
  %52 = and i32 %51, -16, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %52, metadata !2890, metadata !DIExpression()), !dbg !2891
  %53 = zext i8 %1 to i32, !dbg !2951
  %54 = or i32 %52, %53, !dbg !2952
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2953
  br label %187, !dbg !2954

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2955
  call void @llvm.dbg.value(metadata i32 %56, metadata !2890, metadata !DIExpression()), !dbg !2891
  %57 = and i32 %56, -241, !dbg !2956
  call void @llvm.dbg.value(metadata i32 %57, metadata !2890, metadata !DIExpression()), !dbg !2891
  %58 = zext i8 %1 to i32, !dbg !2957
  %59 = shl nuw nsw i32 %58, 4, !dbg !2958
  %60 = or i32 %57, %59, !dbg !2959
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2960
  br label %187, !dbg !2961

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %62, metadata !2890, metadata !DIExpression()), !dbg !2891
  %63 = and i32 %62, -3841, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %63, metadata !2890, metadata !DIExpression()), !dbg !2891
  %64 = zext i8 %1 to i32, !dbg !2964
  %65 = shl nuw nsw i32 %64, 8, !dbg !2965
  %66 = or i32 %63, %65, !dbg !2966
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2967
  br label %187, !dbg !2968

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %68, metadata !2890, metadata !DIExpression()), !dbg !2891
  %69 = and i32 %68, -61441, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %69, metadata !2890, metadata !DIExpression()), !dbg !2891
  %70 = zext i8 %1 to i32, !dbg !2971
  %71 = shl nuw nsw i32 %70, 12, !dbg !2972
  %72 = or i32 %69, %71, !dbg !2973
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2974
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2975

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !2977
  br label %187, !dbg !2979

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %76, metadata !2890, metadata !DIExpression()), !dbg !2891
  %77 = and i32 %76, -983041, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %77, metadata !2890, metadata !DIExpression()), !dbg !2891
  %78 = zext i8 %1 to i32, !dbg !2982
  %79 = shl nuw nsw i32 %78, 16, !dbg !2983
  %80 = or i32 %77, %79, !dbg !2984
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2985
  %81 = and i8 %1, -2, !dbg !2986
  %82 = icmp eq i8 %81, 4, !dbg !2986
  br i1 %82, label %83, label %187, !dbg !2986

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !2988
  br label %187, !dbg !2990

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2991
  call void @llvm.dbg.value(metadata i32 %86, metadata !2890, metadata !DIExpression()), !dbg !2891
  %87 = and i32 %86, -15728641, !dbg !2992
  call void @llvm.dbg.value(metadata i32 %87, metadata !2890, metadata !DIExpression()), !dbg !2891
  %88 = zext i8 %1 to i32, !dbg !2993
  %89 = shl nuw nsw i32 %88, 20, !dbg !2994
  %90 = or i32 %87, %89, !dbg !2995
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2996
  %91 = icmp eq i8 %1, 6, !dbg !2997
  br i1 %91, label %92, label %187, !dbg !2999

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !3000
  br label %187, !dbg !3002

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %95, metadata !2890, metadata !DIExpression()), !dbg !2891
  %96 = and i32 %95, -251658241, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %96, metadata !2890, metadata !DIExpression()), !dbg !2891
  %97 = zext i8 %1 to i32, !dbg !3005
  %98 = shl nuw i32 %97, 24, !dbg !3006
  %99 = or i32 %96, %98, !dbg !3007
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3008
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !3009

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !3011
  br label %187, !dbg !3013

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %103, metadata !2890, metadata !DIExpression()), !dbg !2891
  %104 = and i32 %103, 268435455, !dbg !3015
  call void @llvm.dbg.value(metadata i32 %104, metadata !2890, metadata !DIExpression()), !dbg !2891
  %105 = zext i8 %1 to i32, !dbg !3016
  %106 = shl i32 %105, 28, !dbg !3017
  %107 = or i32 %104, %106, !dbg !3018
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3019
  %108 = and i8 %1, -3, !dbg !3020
  %109 = icmp eq i8 %108, 4, !dbg !3020
  br i1 %109, label %110, label %187, !dbg !3020

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !3022
  br label %187, !dbg !3024

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %113, metadata !2890, metadata !DIExpression()), !dbg !2891
  %114 = and i32 %113, -16, !dbg !3026
  call void @llvm.dbg.value(metadata i32 %114, metadata !2890, metadata !DIExpression()), !dbg !2891
  %115 = zext i8 %1 to i32, !dbg !3027
  %116 = or i32 %114, %115, !dbg !3028
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3029
  %117 = and i8 %1, -3, !dbg !3030
  %118 = icmp eq i8 %117, 4, !dbg !3030
  br i1 %118, label %119, label %187, !dbg !3030

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !3032
  br label %187, !dbg !3034

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3035
  call void @llvm.dbg.value(metadata i32 %122, metadata !2890, metadata !DIExpression()), !dbg !2891
  %123 = and i32 %122, -241, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %123, metadata !2890, metadata !DIExpression()), !dbg !2891
  %124 = zext i8 %1 to i32, !dbg !3037
  %125 = shl nuw nsw i32 %124, 4, !dbg !3038
  %126 = or i32 %123, %125, !dbg !3039
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3040
  br label %187, !dbg !3041

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3042
  call void @llvm.dbg.value(metadata i32 %128, metadata !2890, metadata !DIExpression()), !dbg !2891
  %129 = and i32 %128, -3841, !dbg !3043
  call void @llvm.dbg.value(metadata i32 %129, metadata !2890, metadata !DIExpression()), !dbg !2891
  %130 = zext i8 %1 to i32, !dbg !3044
  %131 = shl nuw nsw i32 %130, 8, !dbg !3045
  %132 = or i32 %129, %131, !dbg !3046
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3047
  br label %187, !dbg !3048

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %134, metadata !2890, metadata !DIExpression()), !dbg !2891
  %135 = and i32 %134, -61441, !dbg !3050
  call void @llvm.dbg.value(metadata i32 %135, metadata !2890, metadata !DIExpression()), !dbg !2891
  %136 = zext i8 %1 to i32, !dbg !3051
  %137 = shl nuw nsw i32 %136, 12, !dbg !3052
  %138 = or i32 %135, %137, !dbg !3053
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3054
  br label %187, !dbg !3055

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3056
  call void @llvm.dbg.value(metadata i32 %140, metadata !2890, metadata !DIExpression()), !dbg !2891
  %141 = and i32 %140, -983041, !dbg !3057
  call void @llvm.dbg.value(metadata i32 %141, metadata !2890, metadata !DIExpression()), !dbg !2891
  %142 = zext i8 %1 to i32, !dbg !3058
  %143 = shl nuw nsw i32 %142, 16, !dbg !3059
  %144 = or i32 %141, %143, !dbg !3060
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3061
  br label %187, !dbg !3062

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %146, metadata !2890, metadata !DIExpression()), !dbg !2891
  %147 = and i32 %146, -15728641, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %147, metadata !2890, metadata !DIExpression()), !dbg !2891
  %148 = zext i8 %1 to i32, !dbg !3065
  %149 = shl nuw nsw i32 %148, 20, !dbg !3066
  %150 = or i32 %147, %149, !dbg !3067
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3068
  br label %187, !dbg !3069

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3070
  call void @llvm.dbg.value(metadata i32 %152, metadata !2890, metadata !DIExpression()), !dbg !2891
  %153 = and i32 %152, -251658241, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %153, metadata !2890, metadata !DIExpression()), !dbg !2891
  %154 = zext i8 %1 to i32, !dbg !3072
  %155 = shl nuw i32 %154, 24, !dbg !3073
  %156 = or i32 %153, %155, !dbg !3074
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3075
  br label %187, !dbg !3076

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %158, metadata !2890, metadata !DIExpression()), !dbg !2891
  %159 = and i32 %158, 268435455, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %159, metadata !2890, metadata !DIExpression()), !dbg !2891
  %160 = zext i8 %1 to i32, !dbg !3079
  %161 = shl i32 %160, 28, !dbg !3080
  %162 = or i32 %159, %161, !dbg !3081
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3082
  br label %187, !dbg !3083

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3084
  call void @llvm.dbg.value(metadata i32 %164, metadata !2890, metadata !DIExpression()), !dbg !2891
  %165 = and i32 %164, -241, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %165, metadata !2890, metadata !DIExpression()), !dbg !2891
  %166 = zext i8 %1 to i32, !dbg !3086
  %167 = shl nuw nsw i32 %166, 4, !dbg !3087
  %168 = or i32 %165, %167, !dbg !3088
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3089
  br label %187, !dbg !3090

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %170, metadata !2890, metadata !DIExpression()), !dbg !2891
  %171 = and i32 %170, -3841, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %171, metadata !2890, metadata !DIExpression()), !dbg !2891
  %172 = zext i8 %1 to i32, !dbg !3093
  %173 = shl nuw nsw i32 %172, 8, !dbg !3094
  %174 = or i32 %171, %173, !dbg !3095
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3096
  br label %187, !dbg !3097

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3098
  call void @llvm.dbg.value(metadata i32 %176, metadata !2890, metadata !DIExpression()), !dbg !2891
  %177 = and i32 %176, -61441, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %177, metadata !2890, metadata !DIExpression()), !dbg !2891
  %178 = zext i8 %1 to i32, !dbg !3100
  %179 = shl nuw nsw i32 %178, 12, !dbg !3101
  %180 = or i32 %177, %179, !dbg !3102
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3103
  br label %187, !dbg !3104

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3105
  call void @llvm.dbg.value(metadata i32 %182, metadata !2890, metadata !DIExpression()), !dbg !2891
  %183 = and i32 %182, -983041, !dbg !3106
  call void @llvm.dbg.value(metadata i32 %183, metadata !2890, metadata !DIExpression()), !dbg !2891
  %184 = zext i8 %1 to i32, !dbg !3107
  %185 = shl nuw nsw i32 %184, 16, !dbg !3108
  %186 = or i32 %183, %185, !dbg !3109
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3110
  br label %187, !dbg !3111

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !3112
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !3113 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3115, metadata !DIExpression()), !dbg !3116
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !3117
  tail call void asm sideeffect "dsb", ""() #15, !dbg !3118, !srcloc !3119
  tail call void asm sideeffect "isb", ""() #15, !dbg !3120, !srcloc !3121
  ret void, !dbg !3122
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #1 !dbg !3123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3127, metadata !DIExpression()), !dbg !3128
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !3129
  ret void, !dbg !3130
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !3131 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !3134, !srcloc !3140
  call void @llvm.dbg.value(metadata i32 %1, metadata !3137, metadata !DIExpression()) #15, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %1, metadata !3133, metadata !DIExpression()), !dbg !3142
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !3143, !srcloc !3146
  ret i32 %1, !dbg !3147
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3148 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()) #15, !dbg !3155
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !3158, !srcloc !3159
  ret void, !dbg !3160
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3161 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3165, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i32 %1, metadata !3166, metadata !DIExpression()), !dbg !3168
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
  ], !dbg !3169

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !3167, metadata !DIExpression()), !dbg !3168
  %4 = trunc i32 %1 to i8, !dbg !3170
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !3171
  br label %5, !dbg !3172

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !3168
  ret i32 %6, !dbg !3173
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #3 !dbg !3174 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #16, !dbg !3175
  ret i32 %1, !dbg !3176
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #3 !dbg !3177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3179, metadata !DIExpression()), !dbg !3182
  %2 = tail call i32 @get_current_count() #14, !dbg !3183
  %3 = add i32 %2, %0, !dbg !3184
  %4 = xor i32 %3, -1, !dbg !3185
  call void @llvm.dbg.value(metadata i32 %3, metadata !3180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3182
  %5 = tail call i32 @get_current_count() #14, !dbg !3186
  call void @llvm.dbg.value(metadata i32 %5, metadata !3181, metadata !DIExpression()), !dbg !3182
  %6 = add i32 %5, %4, !dbg !3187
  %7 = icmp slt i32 %6, 0, !dbg !3187
  br i1 %7, label %8, label %12, !dbg !3188

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %9, metadata !3181, metadata !DIExpression()), !dbg !3182
  %10 = add i32 %9, %4, !dbg !3187
  %11 = icmp slt i32 %10, 0, !dbg !3187
  br i1 %11, label %8, label %12, !dbg !3188, !llvm.loop !3191

12:                                               ; preds = %8, %1
  ret void, !dbg !3193
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #3 !dbg !3194 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3196, metadata !DIExpression()), !dbg !3199
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !3200
  %3 = add i32 %2, %0, !dbg !3201
  %4 = xor i32 %3, -1, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %3, metadata !3197, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3199
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !3203
  call void @llvm.dbg.value(metadata i32 %5, metadata !3198, metadata !DIExpression()), !dbg !3199
  %6 = add i32 %5, %4, !dbg !3204
  %7 = icmp slt i32 %6, 0, !dbg !3204
  br i1 %7, label %8, label %12, !dbg !3205

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %9, metadata !3198, metadata !DIExpression()), !dbg !3199
  %10 = add i32 %9, %4, !dbg !3204
  %11 = icmp slt i32 %10, 0, !dbg !3204
  br i1 %11, label %8, label %12, !dbg !3205, !llvm.loop !3208

12:                                               ; preds = %8, %1
  ret void, !dbg !3210
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #3 !dbg !3211 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #16, !dbg !3212
  ret i32 %1, !dbg !3213
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #3 !dbg !3214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3216, metadata !DIExpression()), !dbg !3218
  %2 = shl i32 %0, 5, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %2, metadata !3217, metadata !DIExpression()), !dbg !3218
  %3 = mul i32 %0, 7, !dbg !3220
  %4 = udiv i32 %3, 10, !dbg !3221
  %5 = add i32 %4, %2, !dbg !3222
  call void @llvm.dbg.value(metadata i32 %5, metadata !3217, metadata !DIExpression()), !dbg !3218
  %6 = mul i32 %0, 6, !dbg !3223
  %7 = udiv i32 %6, 100, !dbg !3224
  %8 = add i32 %5, %7, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %8, metadata !3217, metadata !DIExpression()), !dbg !3218
  %9 = shl i32 %0, 3, !dbg !3226
  %10 = udiv i32 %9, 1000, !dbg !3227
  %11 = add i32 %8, %10, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %11, metadata !3217, metadata !DIExpression()), !dbg !3218
  tail call void @delay_time(i32 noundef %11) #14, !dbg !3229
  ret void, !dbg !3230
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #3 !dbg !3231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3233, metadata !DIExpression()), !dbg !3236
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !3237
  %3 = udiv i32 %2, 1000000, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %3, metadata !3235, metadata !DIExpression()), !dbg !3236
  %4 = mul i32 %3, %0, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %4, metadata !3234, metadata !DIExpression()), !dbg !3236
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !3240
  ret void, !dbg !3241
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #3 !dbg !3242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3246, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %1, metadata !3247, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i1 %2, metadata !3248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3250
  call void @llvm.dbg.value(metadata void ()* %3, metadata !3249, metadata !DIExpression()), !dbg !3250
  tail call void @GPT_Stop(i32 noundef %0) #16, !dbg !3251
  %5 = icmp eq i32 %0, 0, !dbg !3252
  br i1 %5, label %6, label %7, !dbg !3254

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !3255
  br label %8, !dbg !3257

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !3258
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #16, !dbg !3260
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #16, !dbg !3261
  ret void, !dbg !3262
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #3 !dbg !3263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3265, metadata !DIExpression()), !dbg !3266
  tail call void @GPT_Start(i32 noundef %0) #16, !dbg !3267
  ret void, !dbg !3268
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !3269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3271, metadata !DIExpression()), !dbg !3272
  tail call void @GPT_Stop(i32 noundef %0) #16, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #3 !dbg !3275 {
  tail call void @CM4_GPT2Init() #16, !dbg !3276
  ret void, !dbg !3277
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #3 !dbg !3278 {
  tail call void @CM4_GPT4Init() #16, !dbg !3279
  ret void, !dbg !3280
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #1 !dbg !3281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3284
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3285

2:                                                ; preds = %1
  br label %3, !dbg !3286

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !3284
  br label %5, !dbg !3289

5:                                                ; preds = %3, %1
  ret void, !dbg !3289
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !3290 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3292, metadata !DIExpression()), !dbg !3294
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %1, metadata !3293, metadata !DIExpression()), !dbg !3294
  %2 = lshr i32 %1, 13, !dbg !3296
  %3 = and i32 %2, 7, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %3, metadata !3293, metadata !DIExpression()), !dbg !3294
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %4, metadata !3292, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i32 %4, metadata !3292, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !3294
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !3299
  %6 = load i32, i32* %5, align 4, !dbg !3299
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !3299
  %8 = load i32, i32* %7, align 4, !dbg !3299
  %9 = and i32 %4, -2048, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %9, metadata !3292, metadata !DIExpression()), !dbg !3294
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !3301
  %10 = or i32 %9, %8, !dbg !3301
  call void @llvm.dbg.value(metadata i32 %10, metadata !3292, metadata !DIExpression()), !dbg !3294
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3303
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !3304
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !3305
  tail call void @SystemCoreClockUpdate() #16, !dbg !3306
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !3307
  %13 = udiv i32 %12, 1000, !dbg !3308
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !3309
  ret void, !dbg !3310
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #7 !dbg !3311 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !3312
  ret i32 %1, !dbg !3313
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #7 !dbg !3314 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !3315
  ret i32 %1, !dbg !3316
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #8 !dbg !3317 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3321
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3321
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3320, metadata !DIExpression()), !dbg !3323
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3324
  store volatile i32 %3, i32* %1, align 4, !dbg !3325
  %4 = load volatile i32, i32* %1, align 4, !dbg !3326
  %5 = lshr i32 %4, 28, !dbg !3327
  %6 = and i32 %5, 3, !dbg !3328
  store volatile i32 %6, i32* %1, align 4, !dbg !3329
  %7 = load volatile i32, i32* %1, align 4, !dbg !3330
  %8 = icmp eq i32 %7, 0, !dbg !3332
  br i1 %8, label %9, label %22, !dbg !3333

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3334
  store volatile i32 %10, i32* %1, align 4, !dbg !3336
  %11 = load volatile i32, i32* %1, align 4, !dbg !3337
  %12 = and i32 %11, -16777217, !dbg !3338
  store volatile i32 %12, i32* %1, align 4, !dbg !3339
  %13 = load volatile i32, i32* %1, align 4, !dbg !3340
  %14 = or i32 %13, 536870912, !dbg !3341
  store volatile i32 %14, i32* %1, align 4, !dbg !3342
  %15 = load volatile i32, i32* %1, align 4, !dbg !3343
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !3344
  br label %16, !dbg !3345

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3346
  store volatile i32 %17, i32* %1, align 4, !dbg !3348
  %18 = load volatile i32, i32* %1, align 4, !dbg !3349
  %19 = and i32 %18, 134217728, !dbg !3350
  store volatile i32 %19, i32* %1, align 4, !dbg !3351
  %20 = load volatile i32, i32* %1, align 4, !dbg !3352
  %21 = icmp eq i32 %20, 0, !dbg !3353
  br i1 %21, label %16, label %22, !dbg !3354, !llvm.loop !3355

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3357
  ret void, !dbg !3357
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #6 !dbg !3358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()), !dbg !3366
  %2 = bitcast i8* %0 to i32*, !dbg !3367
  %3 = load volatile i32, i32* %2, align 4, !dbg !3368
  ret i32 %3, !dbg !3369
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !3370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i32 %1, metadata !3375, metadata !DIExpression()), !dbg !3376
  %3 = bitcast i8* %0 to i32*, !dbg !3377
  store volatile i32 %1, i32* %3, align 4, !dbg !3378
  ret void, !dbg !3379
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #8 !dbg !3380 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3382, metadata !DIExpression()), !dbg !3385
  %3 = bitcast i32* %2 to i8*, !dbg !3386
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3386
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3383, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3384, metadata !DIExpression()), !dbg !3385
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3388
  store volatile i32 %4, i32* %2, align 4, !dbg !3389
  %5 = load volatile i32, i32* %2, align 4, !dbg !3390
  %6 = lshr i32 %5, 28, !dbg !3391
  %7 = and i32 %6, 3, !dbg !3392
  store volatile i32 %7, i32* %2, align 4, !dbg !3393
  %8 = load volatile i32, i32* %2, align 4, !dbg !3394
  %9 = icmp eq i32 %8, 3, !dbg !3396
  br i1 %9, label %38, label %10, !dbg !3397

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3398
  store volatile i32 %11, i32* %2, align 4, !dbg !3400
  %12 = load volatile i32, i32* %2, align 4, !dbg !3401
  %13 = and i32 %12, -262145, !dbg !3402
  store volatile i32 %13, i32* %2, align 4, !dbg !3403
  %14 = load volatile i32, i32* %2, align 4, !dbg !3404
  %15 = and i32 %14, -16777217, !dbg !3405
  store volatile i32 %15, i32* %2, align 4, !dbg !3406
  %16 = load volatile i32, i32* %2, align 4, !dbg !3407
  store volatile i32 %16, i32* %2, align 4, !dbg !3408
  %17 = load volatile i32, i32* %2, align 4, !dbg !3409
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !3410
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3411
  store volatile i32 %18, i32* %2, align 4, !dbg !3412
  %19 = load volatile i32, i32* %2, align 4, !dbg !3413
  %20 = and i32 %19, -805306369, !dbg !3414
  store volatile i32 %20, i32* %2, align 4, !dbg !3415
  %21 = load volatile i32, i32* %2, align 4, !dbg !3416
  %22 = and i32 %21, -16777217, !dbg !3417
  store volatile i32 %22, i32* %2, align 4, !dbg !3418
  %23 = load volatile i32, i32* %2, align 4, !dbg !3419
  %24 = or i32 %23, 805306368, !dbg !3420
  store volatile i32 %24, i32* %2, align 4, !dbg !3421
  %25 = load volatile i32, i32* %2, align 4, !dbg !3422
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !3423
  br label %26, !dbg !3424

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3425
  store volatile i32 %27, i32* %2, align 4, !dbg !3427
  %28 = load volatile i32, i32* %2, align 4, !dbg !3428
  %29 = and i32 %28, 67108864, !dbg !3429
  store volatile i32 %29, i32* %2, align 4, !dbg !3430
  %30 = load volatile i32, i32* %2, align 4, !dbg !3431
  %31 = icmp eq i32 %30, 0, !dbg !3432
  br i1 %31, label %26, label %32, !dbg !3433, !llvm.loop !3434

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3436
  store volatile i32 %33, i32* %2, align 4, !dbg !3437
  %34 = load volatile i32, i32* %2, align 4, !dbg !3438
  %35 = and i32 %34, -262145, !dbg !3439
  store volatile i32 %35, i32* %2, align 4, !dbg !3440
  %36 = load volatile i32, i32* %2, align 4, !dbg !3441
  %37 = and i32 %36, -16777217, !dbg !3442
  store volatile i32 %37, i32* %2, align 4, !dbg !3443
  br label %38, !dbg !3444

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3445
  store volatile i32 %39, i32* %2, align 4, !dbg !3446
  %40 = icmp eq i8 %0, 0, !dbg !3447
  %41 = load volatile i32, i32* %2, align 4, !dbg !3449
  br i1 %40, label %44, label %42, !dbg !3450

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3451
  store volatile i32 %43, i32* %2, align 4, !dbg !3453
  br label %45, !dbg !3454

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3455
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3457
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !3458
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3459
  ret void, !dbg !3459
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #8 !dbg !3460 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3464
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3462, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3463, metadata !DIExpression()), !dbg !3466
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3467
  store volatile i32 %3, i32* %1, align 4, !dbg !3468
  %4 = load volatile i32, i32* %1, align 4, !dbg !3469
  %5 = and i32 %4, -805306369, !dbg !3470
  store volatile i32 %5, i32* %1, align 4, !dbg !3471
  %6 = load volatile i32, i32* %1, align 4, !dbg !3472
  %7 = and i32 %6, -16777217, !dbg !3473
  store volatile i32 %7, i32* %1, align 4, !dbg !3474
  %8 = load volatile i32, i32* %1, align 4, !dbg !3475
  store volatile i32 %8, i32* %1, align 4, !dbg !3476
  %9 = load volatile i32, i32* %1, align 4, !dbg !3477
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !3478
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3479
  store volatile i32 %10, i32* %1, align 4, !dbg !3480
  %11 = load volatile i32, i32* %1, align 4, !dbg !3481
  %12 = and i32 %11, -262145, !dbg !3482
  store volatile i32 %12, i32* %1, align 4, !dbg !3483
  %13 = load volatile i32, i32* %1, align 4, !dbg !3484
  %14 = and i32 %13, -16777217, !dbg !3485
  store volatile i32 %14, i32* %1, align 4, !dbg !3486
  %15 = load volatile i32, i32* %1, align 4, !dbg !3487
  store volatile i32 %15, i32* %1, align 4, !dbg !3488
  %16 = load volatile i32, i32* %1, align 4, !dbg !3489
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !3490
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3491
  ret void, !dbg !3491
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !3492 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3496
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3496
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3494, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3495, metadata !DIExpression()), !dbg !3498
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3499
  store volatile i32 %3, i32* %1, align 4, !dbg !3500
  %4 = load volatile i32, i32* %1, align 4, !dbg !3501
  %5 = and i32 %4, -8, !dbg !3502
  store volatile i32 %5, i32* %1, align 4, !dbg !3503
  %6 = load volatile i32, i32* %1, align 4, !dbg !3504
  store volatile i32 %6, i32* %1, align 4, !dbg !3505
  %7 = load volatile i32, i32* %1, align 4, !dbg !3506
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3507
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3508
  store volatile i32 %8, i32* %1, align 4, !dbg !3509
  %9 = load volatile i32, i32* %1, align 4, !dbg !3510
  %10 = and i32 %9, -49153, !dbg !3511
  store volatile i32 %10, i32* %1, align 4, !dbg !3512
  %11 = load volatile i32, i32* %1, align 4, !dbg !3513
  store volatile i32 %11, i32* %1, align 4, !dbg !3514
  %12 = load volatile i32, i32* %1, align 4, !dbg !3515
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !3516
  br label %13, !dbg !3517

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3518
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3519
  %16 = icmp eq i32 %14, %15, !dbg !3520
  br i1 %16, label %17, label %13, !dbg !3517, !llvm.loop !3521

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !3523
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3524
  tail call void @SystemCoreClockUpdate() #16, !dbg !3525
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3526
  %20 = udiv i32 %19, 1000, !dbg !3527
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3528
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3529
  ret void, !dbg !3529
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !3530 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3534
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3534
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3532, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3533, metadata !DIExpression()), !dbg !3536
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !3537
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3538
  store volatile i32 %3, i32* %1, align 4, !dbg !3539
  %4 = load volatile i32, i32* %1, align 4, !dbg !3540
  %5 = and i32 %4, -49153, !dbg !3541
  store volatile i32 %5, i32* %1, align 4, !dbg !3542
  %6 = load volatile i32, i32* %1, align 4, !dbg !3543
  %7 = or i32 %6, 16384, !dbg !3544
  store volatile i32 %7, i32* %1, align 4, !dbg !3545
  %8 = load volatile i32, i32* %1, align 4, !dbg !3546
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3547
  br label %9, !dbg !3548

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3549
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3550
  %12 = icmp eq i32 %10, %11, !dbg !3551
  br i1 %12, label %13, label %9, !dbg !3548, !llvm.loop !3552

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3554
  store volatile i32 %14, i32* %1, align 4, !dbg !3555
  %15 = load volatile i32, i32* %1, align 4, !dbg !3556
  %16 = and i32 %15, -1009, !dbg !3557
  store volatile i32 %16, i32* %1, align 4, !dbg !3558
  %17 = load volatile i32, i32* %1, align 4, !dbg !3559
  %18 = or i32 %17, 128, !dbg !3560
  store volatile i32 %18, i32* %1, align 4, !dbg !3561
  %19 = load volatile i32, i32* %1, align 4, !dbg !3562
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3563
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3564
  store volatile i32 %20, i32* %1, align 4, !dbg !3565
  %21 = load volatile i32, i32* %1, align 4, !dbg !3566
  %22 = and i32 %21, -8, !dbg !3567
  store volatile i32 %22, i32* %1, align 4, !dbg !3568
  %23 = load volatile i32, i32* %1, align 4, !dbg !3569
  %24 = or i32 %23, 4, !dbg !3570
  store volatile i32 %24, i32* %1, align 4, !dbg !3571
  %25 = load volatile i32, i32* %1, align 4, !dbg !3572
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3573
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3574
  tail call void @SystemCoreClockUpdate() #16, !dbg !3575
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3576
  %27 = udiv i32 %26, 1000, !dbg !3577
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3579
  ret void, !dbg !3579
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !3580 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3584
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3584
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3583, metadata !DIExpression()), !dbg !3586
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !3587
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3588
  store volatile i32 %3, i32* %1, align 4, !dbg !3589
  %4 = load volatile i32, i32* %1, align 4, !dbg !3590
  %5 = and i32 %4, -49153, !dbg !3591
  store volatile i32 %5, i32* %1, align 4, !dbg !3592
  %6 = load volatile i32, i32* %1, align 4, !dbg !3593
  %7 = or i32 %6, 32768, !dbg !3594
  store volatile i32 %7, i32* %1, align 4, !dbg !3595
  %8 = load volatile i32, i32* %1, align 4, !dbg !3596
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3597
  br label %9, !dbg !3598

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3599
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3600
  %12 = icmp eq i32 %10, %11, !dbg !3601
  br i1 %12, label %13, label %9, !dbg !3598, !llvm.loop !3602

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3604
  store volatile i32 %14, i32* %1, align 4, !dbg !3605
  %15 = load volatile i32, i32* %1, align 4, !dbg !3606
  %16 = and i32 %15, -1009, !dbg !3607
  store volatile i32 %16, i32* %1, align 4, !dbg !3608
  %17 = load volatile i32, i32* %1, align 4, !dbg !3609
  %18 = or i32 %17, 32, !dbg !3610
  store volatile i32 %18, i32* %1, align 4, !dbg !3611
  %19 = load volatile i32, i32* %1, align 4, !dbg !3612
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3613
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3614
  store volatile i32 %20, i32* %1, align 4, !dbg !3615
  %21 = load volatile i32, i32* %1, align 4, !dbg !3616
  %22 = and i32 %21, -8, !dbg !3617
  store volatile i32 %22, i32* %1, align 4, !dbg !3618
  %23 = load volatile i32, i32* %1, align 4, !dbg !3619
  %24 = or i32 %23, 4, !dbg !3620
  store volatile i32 %24, i32* %1, align 4, !dbg !3621
  %25 = load volatile i32, i32* %1, align 4, !dbg !3622
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3623
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3624
  tail call void @SystemCoreClockUpdate() #16, !dbg !3625
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3626
  %27 = udiv i32 %26, 1000, !dbg !3627
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3628
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3629
  ret void, !dbg !3629
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !3630 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3634
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3634
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3632, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3633, metadata !DIExpression()), !dbg !3636
  tail call void @cmnPLL1ON() #14, !dbg !3637
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3638
  store volatile i32 %3, i32* %1, align 4, !dbg !3639
  %4 = load volatile i32, i32* %1, align 4, !dbg !3640
  %5 = and i32 %4, -49153, !dbg !3641
  store volatile i32 %5, i32* %1, align 4, !dbg !3642
  %6 = load volatile i32, i32* %1, align 4, !dbg !3643
  store volatile i32 %6, i32* %1, align 4, !dbg !3644
  %7 = load volatile i32, i32* %1, align 4, !dbg !3645
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3646
  br label %8, !dbg !3647

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3648
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3649
  %11 = icmp eq i32 %9, %10, !dbg !3650
  br i1 %11, label %12, label %8, !dbg !3647, !llvm.loop !3651

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3653
  store volatile i32 %13, i32* %1, align 4, !dbg !3654
  %14 = load volatile i32, i32* %1, align 4, !dbg !3655
  %15 = and i32 %14, -8, !dbg !3656
  store volatile i32 %15, i32* %1, align 4, !dbg !3657
  %16 = load volatile i32, i32* %1, align 4, !dbg !3658
  %17 = or i32 %16, 2, !dbg !3659
  store volatile i32 %17, i32* %1, align 4, !dbg !3660
  %18 = load volatile i32, i32* %1, align 4, !dbg !3661
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3662
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3663
  tail call void @SystemCoreClockUpdate() #16, !dbg !3664
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3665
  %20 = udiv i32 %19, 1000, !dbg !3666
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3667
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3668
  ret void, !dbg !3668
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #8 section ".ramTEXT" !dbg !3669 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3673
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3673
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3671, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3672, metadata !DIExpression()), !dbg !3675
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3676
  store volatile i32 %3, i32* %1, align 4, !dbg !3677
  %4 = load volatile i32, i32* %1, align 4, !dbg !3678
  %5 = and i32 %4, -24577, !dbg !3679
  store volatile i32 %5, i32* %1, align 4, !dbg !3680
  %6 = load volatile i32, i32* %1, align 4, !dbg !3681
  store volatile i32 %6, i32* %1, align 4, !dbg !3682
  %7 = load volatile i32, i32* %1, align 4, !dbg !3683
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3685
  ret void, !dbg !3685
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #6 !dbg !3686 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3691
  call void @llvm.dbg.value(metadata i32 %1, metadata !3690, metadata !DIExpression()), !dbg !3692
  ret i32 %1, !dbg !3693
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #6 !dbg !3694 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3697
  %2 = and i32 %1, 1, !dbg !3699
  %3 = icmp eq i32 %2, 0, !dbg !3699
  br i1 %3, label %7, label %4, !dbg !3700

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3701
  %6 = and i32 %5, 255, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %5, metadata !3696, metadata !DIExpression()), !dbg !3704
  br label %7, !dbg !3705

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3706
  ret i32 %8, !dbg !3707
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !3708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3713, metadata !DIExpression()), !dbg !3716
  call void @llvm.dbg.value(metadata i8 %1, metadata !3714, metadata !DIExpression()), !dbg !3716
  %3 = icmp eq i32 %0, 0, !dbg !3717
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3717
  call void @llvm.dbg.value(metadata i32 %4, metadata !3715, metadata !DIExpression()), !dbg !3716
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3718

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3719
  %9 = and i32 %8, 32, !dbg !3720
  %10 = icmp eq i32 %9, 0, !dbg !3721
  br i1 %10, label %7, label %11, !dbg !3718, !llvm.loop !3722

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3724
  %13 = inttoptr i32 %4 to i32*, !dbg !3725
  store volatile i32 %12, i32* %13, align 65536, !dbg !3726
  ret void, !dbg !3727
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #1 !dbg !3728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3735
  %2 = icmp eq i32 %0, 0, !dbg !3736
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3736
  call void @llvm.dbg.value(metadata i32 %3, metadata !3733, metadata !DIExpression()), !dbg !3735
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3737

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3738
  %8 = and i32 %7, 1, !dbg !3739
  %9 = icmp eq i32 %8, 0, !dbg !3740
  br i1 %9, label %6, label %10, !dbg !3737, !llvm.loop !3741

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3743
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3743
  %13 = trunc i32 %12 to i8, !dbg !3743
  call void @llvm.dbg.value(metadata i8 %13, metadata !3734, metadata !DIExpression()), !dbg !3735
  ret i8 %13, !dbg !3744
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #6 !dbg !3745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3749, metadata !DIExpression()), !dbg !3752
  %2 = icmp eq i32 %0, 0, !dbg !3753
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %3, metadata !3750, metadata !DIExpression()), !dbg !3752
  %4 = or i32 %3, 20, !dbg !3754
  %5 = inttoptr i32 %4 to i32*, !dbg !3754
  %6 = load volatile i32, i32* %5, align 4, !dbg !3754
  %7 = and i32 %6, 1, !dbg !3756
  %8 = icmp eq i32 %7, 0, !dbg !3756
  br i1 %8, label %13, label %9, !dbg !3757

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3758
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3758
  %12 = and i32 %11, 255, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %11, metadata !3751, metadata !DIExpression()), !dbg !3752
  br label %13, !dbg !3761

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3762
  ret i32 %14, !dbg !3763
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()), !dbg !3769
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3770
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3771

2:                                                ; preds = %1
  br label %3, !dbg !3772

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3776
  %6 = or i32 %5, 1, !dbg !3776
  store volatile i32 %6, i32* %4, align 4, !dbg !3776
  br label %7, !dbg !3777

7:                                                ; preds = %3, %1
  ret void, !dbg !3777
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %1, metadata !3783, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i16 %2, metadata !3784, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i16 %3, metadata !3785, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i16 %4, metadata !3786, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3788, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3795, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3797, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 0, metadata !3798, metadata !DIExpression()), !dbg !3799
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !3802
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3803
  %7 = icmp eq i32 %0, 1, !dbg !3804
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %8, metadata !3788, metadata !DIExpression()), !dbg !3799
  %9 = or i32 %8, 36, !dbg !3805
  %10 = inttoptr i32 %9 to i32*, !dbg !3805
  store volatile i32 3, i32* %10, align 4, !dbg !3806
  %11 = or i32 %8, 12, !dbg !3807
  %12 = inttoptr i32 %11 to i32*, !dbg !3807
  %13 = load volatile i32, i32* %12, align 4, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %13, metadata !3790, metadata !DIExpression()), !dbg !3799
  %14 = or i32 %13, 128, !dbg !3808
  store volatile i32 %14, i32* %12, align 4, !dbg !3809
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3810
  %16 = udiv i32 %15, %1, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %16, metadata !3789, metadata !DIExpression()), !dbg !3799
  %17 = lshr i32 %16, 8, !dbg !3812
  %18 = add nuw nsw i32 %17, 1, !dbg !3813
  call void @llvm.dbg.value(metadata i32 %18, metadata !3791, metadata !DIExpression()), !dbg !3799
  %19 = udiv i32 %16, %18, !dbg !3814
  %20 = add i32 %19, -1, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %20, metadata !3792, metadata !DIExpression()), !dbg !3799
  %21 = icmp eq i32 %20, 3, !dbg !3817
  %22 = lshr i32 %20, 1, !dbg !3819
  %23 = add nsw i32 %22, -1, !dbg !3819
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %24, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 undef, metadata !3798, metadata !DIExpression()), !dbg !3799
  %25 = mul i32 %15, 10, !dbg !3820
  %26 = udiv i32 %25, %1, !dbg !3821
  %27 = udiv i32 %26, %16, !dbg !3822
  %28 = mul i32 %19, -10, !dbg !3823
  %29 = add i32 %27, %28, !dbg !3824
  %30 = urem i32 %29, 10, !dbg !3825
  call void @llvm.dbg.value(metadata i32 %30, metadata !3794, metadata !DIExpression()), !dbg !3799
  %31 = and i32 %18, 255, !dbg !3826
  %32 = inttoptr i32 %8 to i32*, !dbg !3827
  store volatile i32 %31, i32* %32, align 65536, !dbg !3828
  %33 = lshr i32 %18, 8, !dbg !3829
  %34 = and i32 %33, 255, !dbg !3830
  %35 = or i32 %8, 4, !dbg !3831
  %36 = inttoptr i32 %35 to i32*, !dbg !3831
  store volatile i32 %34, i32* %36, align 4, !dbg !3832
  %37 = or i32 %8, 40, !dbg !3833
  %38 = inttoptr i32 %37 to i32*, !dbg !3833
  store volatile i32 %20, i32* %38, align 8, !dbg !3834
  %39 = or i32 %8, 44, !dbg !3835
  %40 = inttoptr i32 %39 to i32*, !dbg !3835
  store volatile i32 %24, i32* %40, align 4, !dbg !3836
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3837
  %42 = load i16, i16* %41, align 2, !dbg !3837
  %43 = zext i16 %42 to i32, !dbg !3837
  %44 = or i32 %8, 88, !dbg !3838
  %45 = inttoptr i32 %44 to i32*, !dbg !3838
  store volatile i32 %43, i32* %45, align 8, !dbg !3839
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3840
  %47 = load i16, i16* %46, align 2, !dbg !3840
  %48 = zext i16 %47 to i32, !dbg !3840
  %49 = or i32 %8, 84, !dbg !3841
  %50 = inttoptr i32 %49 to i32*, !dbg !3841
  store volatile i32 %48, i32* %50, align 4, !dbg !3842
  store volatile i32 %13, i32* %12, align 4, !dbg !3843
  %51 = or i32 %8, 8, !dbg !3844
  %52 = inttoptr i32 %51 to i32*, !dbg !3844
  store volatile i32 71, i32* %52, align 8, !dbg !3845
  %53 = inttoptr i32 %11 to i16*, !dbg !3846
  %54 = load volatile i16, i16* %53, align 4, !dbg !3846
  call void @llvm.dbg.value(metadata i16 %54, metadata !3787, metadata !DIExpression()), !dbg !3799
  %55 = and i16 %54, -64, !dbg !3847
  call void @llvm.dbg.value(metadata i16 %54, metadata !3787, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3799
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3787, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3799
  %56 = and i16 %2, -61, !dbg !3848
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3787, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3799
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3787, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3799
  %57 = and i16 %4, -57, !dbg !3849
  call void @llvm.dbg.value(metadata i16 undef, metadata !3787, metadata !DIExpression()), !dbg !3799
  %58 = or i16 %56, %3, !dbg !3848
  %59 = or i16 %58, %57, !dbg !3849
  %60 = or i16 %59, %55, !dbg !3850
  call void @llvm.dbg.value(metadata i16 %60, metadata !3787, metadata !DIExpression()), !dbg !3799
  store volatile i16 %60, i16* %53, align 4, !dbg !3851
  ret void, !dbg !3852
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !3853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3858, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 %1, metadata !3859, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32* %2, metadata !3860, metadata !DIExpression()), !dbg !3861
  %4 = icmp eq i32 %0, 0, !dbg !3862
  %5 = icmp eq i32 %1, 0, !dbg !3864
  br i1 %4, label %6, label %16, !dbg !3865

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3866

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3868
  %9 = zext i16 %8 to i32, !dbg !3868
  br label %26, !dbg !3871

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3872
  %12 = zext i16 %11 to i32, !dbg !3872
  store i32 %12, i32* %2, align 4, !dbg !3874
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3875
  %14 = zext i16 %13 to i32, !dbg !3875
  %15 = sub nsw i32 %12, %14, !dbg !3876
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3877

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3879
  %19 = zext i16 %18 to i32, !dbg !3879
  br label %26, !dbg !3882

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3883
  %22 = zext i16 %21 to i32, !dbg !3883
  store i32 %22, i32* %2, align 4, !dbg !3885
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3886
  %24 = zext i16 %23 to i32, !dbg !3886
  %25 = sub nsw i32 %22, %24, !dbg !3887
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3864
  ret void, !dbg !3888
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3889 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i8* %1, metadata !3894, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %2, metadata !3895, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3897
  %4 = icmp eq i32 %2, 0, !dbg !3898
  br i1 %4, label %15, label %5, !dbg !3901

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3896, metadata !DIExpression()), !dbg !3897
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3902

7:                                                ; preds = %5
  br label %8, !dbg !3904

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3908
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3908
  store i8 %10, i8* %11, align 1, !dbg !3908
  br label %12, !dbg !3909

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %13, metadata !3896, metadata !DIExpression()), !dbg !3897
  %14 = icmp eq i32 %13, %2, !dbg !3898
  br i1 %14, label %15, label %5, !dbg !3901, !llvm.loop !3910

15:                                               ; preds = %12, %3
  ret void, !dbg !3912
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3913 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3919, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i8* %1, metadata !3920, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 %2, metadata !3921, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3922, metadata !DIExpression()), !dbg !3923
  %4 = icmp eq i32 %2, 0, !dbg !3924
  br i1 %4, label %16, label %5, !dbg !3927

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3922, metadata !DIExpression()), !dbg !3923
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3928

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3930
  %9 = load i8, i8* %8, align 1, !dbg !3930
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3933
  br label %13, !dbg !3934

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3935
  %12 = load i8, i8* %11, align 1, !dbg !3935
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3938
  br label %13, !dbg !3939

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3940
  call void @llvm.dbg.value(metadata i32 %14, metadata !3922, metadata !DIExpression()), !dbg !3923
  %15 = icmp eq i32 %14, %2, !dbg !3924
  br i1 %15, label %16, label %5, !dbg !3927, !llvm.loop !3941

16:                                               ; preds = %13, %3
  ret void, !dbg !3943
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3948, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i8* %1, metadata !3949, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %2, metadata !3950, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.value(metadata i32 %3, metadata !3951, metadata !DIExpression()), !dbg !3952
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3953

5:                                                ; preds = %4
  br label %6, !dbg !3954

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3958
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !3958
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !3958
  br label %9, !dbg !3959

9:                                                ; preds = %6, %4
  ret void, !dbg !3959
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3965, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %2, metadata !3966, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %3, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %4, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %5, metadata !3969, metadata !DIExpression()), !dbg !3970
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3971

7:                                                ; preds = %6
  br label %8, !dbg !3972

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3976
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !3976
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !3976
  br label %11, !dbg !3977

11:                                               ; preds = %8, %6
  ret void, !dbg !3977
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3978 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3983, metadata !DIExpression()), !dbg !3984
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3985

3:                                                ; preds = %2
  br label %4, !dbg !3986

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3990
  br label %6, !dbg !3991

6:                                                ; preds = %4, %2
  ret void, !dbg !3991
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3994, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3995, metadata !DIExpression()), !dbg !3996
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3997

3:                                                ; preds = %2
  br label %4, !dbg !3998

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !4002
  br label %6, !dbg !4003

6:                                                ; preds = %4, %2
  ret void, !dbg !4003
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !4004 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4006, metadata !DIExpression()), !dbg !4010
  %2 = icmp eq i32 %0, 0, !dbg !4011
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %3, metadata !4007, metadata !DIExpression()), !dbg !4010
  %4 = or i32 %3, 12, !dbg !4012
  %5 = inttoptr i32 %4 to i32*, !dbg !4012
  %6 = load volatile i32, i32* %5, align 4, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %6, metadata !4009, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4010
  store volatile i32 191, i32* %5, align 4, !dbg !4013
  %7 = or i32 %3, 8, !dbg !4014
  %8 = inttoptr i32 %7 to i32*, !dbg !4014
  %9 = load volatile i32, i32* %8, align 8, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %9, metadata !4008, metadata !DIExpression()), !dbg !4010
  %10 = and i32 %9, 65327, !dbg !4015
  %11 = or i32 %10, 208, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %9, metadata !4008, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !4010
  store volatile i32 %11, i32* %8, align 8, !dbg !4016
  %12 = or i32 %3, 68, !dbg !4017
  %13 = inttoptr i32 %12 to i32*, !dbg !4017
  store volatile i32 0, i32* %13, align 4, !dbg !4018
  store volatile i32 0, i32* %5, align 4, !dbg !4019
  %14 = or i32 %3, 16, !dbg !4020
  %15 = inttoptr i32 %14 to i32*, !dbg !4020
  store volatile i32 2, i32* %15, align 16, !dbg !4021
  %16 = and i32 %6, 65535, !dbg !4022
  store volatile i32 %16, i32* %5, align 4, !dbg !4023
  ret void, !dbg !4024
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 !dbg !4025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4029, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 %1, metadata !4030, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 %2, metadata !4031, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i8 %3, metadata !4032, metadata !DIExpression()), !dbg !4036
  %5 = icmp eq i32 %0, 0, !dbg !4037
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !4037
  call void @llvm.dbg.value(metadata i32 %6, metadata !4033, metadata !DIExpression()), !dbg !4036
  %7 = or i32 %6, 12, !dbg !4038
  %8 = inttoptr i32 %7 to i32*, !dbg !4038
  %9 = load volatile i32, i32* %8, align 4, !dbg !4038
  call void @llvm.dbg.value(metadata i32 %9, metadata !4035, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4036
  store volatile i32 191, i32* %8, align 4, !dbg !4039
  %10 = zext i8 %1 to i32, !dbg !4040
  %11 = or i32 %6, 16, !dbg !4041
  %12 = inttoptr i32 %11 to i32*, !dbg !4041
  store volatile i32 %10, i32* %12, align 16, !dbg !4042
  %13 = or i32 %6, 20, !dbg !4043
  %14 = inttoptr i32 %13 to i32*, !dbg !4043
  store volatile i32 %10, i32* %14, align 4, !dbg !4044
  %15 = zext i8 %2 to i32, !dbg !4045
  %16 = or i32 %6, 24, !dbg !4046
  %17 = inttoptr i32 %16 to i32*, !dbg !4046
  store volatile i32 %15, i32* %17, align 8, !dbg !4047
  %18 = or i32 %6, 28, !dbg !4048
  %19 = inttoptr i32 %18 to i32*, !dbg !4048
  store volatile i32 %15, i32* %19, align 4, !dbg !4049
  %20 = or i32 %6, 8, !dbg !4050
  %21 = inttoptr i32 %20 to i32*, !dbg !4050
  %22 = load volatile i32, i32* %21, align 8, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %22, metadata !4034, metadata !DIExpression()), !dbg !4036
  %23 = and i32 %22, 65525, !dbg !4051
  %24 = or i32 %23, 10, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %22, metadata !4034, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !4036
  store volatile i32 %24, i32* %21, align 8, !dbg !4052
  %25 = and i32 %9, 65535, !dbg !4053
  store volatile i32 %25, i32* %8, align 4, !dbg !4054
  %26 = zext i8 %3 to i32, !dbg !4055
  %27 = or i32 %6, 64, !dbg !4056
  %28 = inttoptr i32 %27 to i32*, !dbg !4056
  store volatile i32 %26, i32* %28, align 64, !dbg !4057
  %29 = or i32 %6, 68, !dbg !4058
  %30 = inttoptr i32 %29 to i32*, !dbg !4058
  store volatile i32 1, i32* %30, align 4, !dbg !4059
  ret void, !dbg !4060
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !4061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4063, metadata !DIExpression()), !dbg !4066
  %2 = icmp eq i32 %0, 0, !dbg !4067
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %3, metadata !4064, metadata !DIExpression()), !dbg !4066
  %4 = or i32 %3, 12, !dbg !4068
  %5 = inttoptr i32 %4 to i32*, !dbg !4068
  %6 = load volatile i32, i32* %5, align 4, !dbg !4068
  call void @llvm.dbg.value(metadata i32 %6, metadata !4065, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4066
  store volatile i32 191, i32* %5, align 4, !dbg !4069
  %7 = or i32 %3, 8, !dbg !4070
  %8 = inttoptr i32 %7 to i32*, !dbg !4070
  store volatile i32 0, i32* %8, align 8, !dbg !4071
  store volatile i32 0, i32* %5, align 4, !dbg !4072
  %9 = and i32 %6, 65535, !dbg !4073
  store volatile i32 %9, i32* %5, align 4, !dbg !4074
  ret void, !dbg !4075
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #1 !dbg !4076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4078, metadata !DIExpression()), !dbg !4080
  %2 = icmp eq i32 %0, 0, !dbg !4081
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4081
  call void @llvm.dbg.value(metadata i32 %3, metadata !4079, metadata !DIExpression()), !dbg !4080
  %4 = or i32 %3, 12, !dbg !4082
  %5 = inttoptr i32 %4 to i32*, !dbg !4082
  store volatile i32 191, i32* %5, align 4, !dbg !4083
  %6 = or i32 %3, 8, !dbg !4084
  %7 = inttoptr i32 %6 to i32*, !dbg !4084
  store volatile i32 16, i32* %7, align 8, !dbg !4085
  %8 = or i32 %3, 16, !dbg !4086
  %9 = inttoptr i32 %8 to i32*, !dbg !4086
  store volatile i32 0, i32* %9, align 16, !dbg !4087
  %10 = or i32 %3, 24, !dbg !4088
  %11 = inttoptr i32 %10 to i32*, !dbg !4088
  store volatile i32 0, i32* %11, align 8, !dbg !4089
  store volatile i32 128, i32* %5, align 4, !dbg !4090
  %12 = inttoptr i32 %3 to i32*, !dbg !4091
  store volatile i32 0, i32* %12, align 65536, !dbg !4092
  %13 = or i32 %3, 4, !dbg !4093
  %14 = inttoptr i32 %13 to i32*, !dbg !4093
  store volatile i32 0, i32* %14, align 4, !dbg !4094
  store volatile i32 0, i32* %5, align 4, !dbg !4095
  store volatile i32 0, i32* %14, align 4, !dbg !4096
  store volatile i32 0, i32* %7, align 8, !dbg !4097
  store volatile i32 191, i32* %5, align 4, !dbg !4098
  store volatile i32 0, i32* %7, align 8, !dbg !4099
  store volatile i32 0, i32* %5, align 4, !dbg !4100
  store volatile i32 0, i32* %9, align 16, !dbg !4101
  %15 = or i32 %3, 28, !dbg !4102
  %16 = inttoptr i32 %15 to i32*, !dbg !4102
  store volatile i32 0, i32* %16, align 4, !dbg !4103
  %17 = or i32 %3, 36, !dbg !4104
  %18 = inttoptr i32 %17 to i32*, !dbg !4104
  store volatile i32 0, i32* %18, align 4, !dbg !4105
  %19 = or i32 %3, 40, !dbg !4106
  %20 = inttoptr i32 %19 to i32*, !dbg !4106
  store volatile i32 0, i32* %20, align 8, !dbg !4107
  %21 = or i32 %3, 44, !dbg !4108
  %22 = inttoptr i32 %21 to i32*, !dbg !4108
  store volatile i32 0, i32* %22, align 4, !dbg !4109
  %23 = or i32 %3, 52, !dbg !4110
  %24 = inttoptr i32 %23 to i32*, !dbg !4110
  store volatile i32 0, i32* %24, align 4, !dbg !4111
  %25 = or i32 %3, 60, !dbg !4112
  %26 = inttoptr i32 %25 to i32*, !dbg !4112
  store volatile i32 0, i32* %26, align 4, !dbg !4113
  %27 = or i32 %3, 64, !dbg !4114
  %28 = inttoptr i32 %27 to i32*, !dbg !4114
  store volatile i32 0, i32* %28, align 64, !dbg !4115
  %29 = or i32 %3, 68, !dbg !4116
  %30 = inttoptr i32 %29 to i32*, !dbg !4116
  store volatile i32 0, i32* %30, align 4, !dbg !4117
  %31 = or i32 %3, 72, !dbg !4118
  %32 = inttoptr i32 %31 to i32*, !dbg !4118
  store volatile i32 0, i32* %32, align 8, !dbg !4119
  %33 = or i32 %3, 76, !dbg !4120
  %34 = inttoptr i32 %33 to i32*, !dbg !4120
  store volatile i32 0, i32* %34, align 4, !dbg !4121
  %35 = or i32 %3, 80, !dbg !4122
  %36 = inttoptr i32 %35 to i32*, !dbg !4122
  store volatile i32 0, i32* %36, align 16, !dbg !4123
  %37 = or i32 %3, 84, !dbg !4124
  %38 = inttoptr i32 %37 to i32*, !dbg !4124
  store volatile i32 0, i32* %38, align 4, !dbg !4125
  %39 = or i32 %3, 88, !dbg !4126
  %40 = inttoptr i32 %39 to i32*, !dbg !4126
  store volatile i32 0, i32* %40, align 8, !dbg !4127
  %41 = or i32 %3, 96, !dbg !4128
  %42 = inttoptr i32 %41 to i32*, !dbg !4128
  store volatile i32 0, i32* %42, align 32, !dbg !4129
  ret void, !dbg !4130
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #1 !dbg !4131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4133, metadata !DIExpression()), !dbg !4135
  %2 = icmp eq i32 %0, 0, !dbg !4136
  call void @llvm.dbg.value(metadata i32 undef, metadata !4134, metadata !DIExpression()), !dbg !4135
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !4137

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !4138
  %7 = and i32 %6, 64, !dbg !4139
  %8 = icmp eq i32 %7, 0, !dbg !4140
  br i1 %8, label %5, label %9, !dbg !4137, !llvm.loop !4141

9:                                                ; preds = %5
  ret void, !dbg !4143
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4144 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4148, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i32 %1, metadata !4149, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i8* %2, metadata !4150, metadata !DIExpression()), !dbg !4161
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4162
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4151, metadata !DIExpression()), !dbg !4163
  %7 = bitcast i32* %5 to i8*, !dbg !4164
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4164
  call void @llvm.dbg.value(metadata i32* %5, metadata !4160, metadata !DIExpression(DW_OP_deref)), !dbg !4161
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4165
  call void @llvm.va_start(i8* nonnull %6), !dbg !4166
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4167
  %10 = load i32, i32* %9, align 4, !dbg !4167
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4167
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4167
  call void @llvm.va_end(i8* nonnull %6), !dbg !4168
  %13 = load i32, i32* %5, align 4, !dbg !4169
  call void @llvm.dbg.value(metadata i32 %13, metadata !4160, metadata !DIExpression()), !dbg !4161
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4170
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4171
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4171
  ret void, !dbg !4171
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4172 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4174, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i32 %1, metadata !4175, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i8* %2, metadata !4176, metadata !DIExpression()), !dbg !4179
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4180
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4180
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4177, metadata !DIExpression()), !dbg !4181
  %7 = bitcast i32* %5 to i8*, !dbg !4182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4182
  call void @llvm.dbg.value(metadata i32* %5, metadata !4178, metadata !DIExpression(DW_OP_deref)), !dbg !4179
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4183
  call void @llvm.va_start(i8* nonnull %6), !dbg !4184
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4185
  %10 = load i32, i32* %9, align 4, !dbg !4185
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4185
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4185
  call void @llvm.va_end(i8* nonnull %6), !dbg !4186
  %13 = load i32, i32* %5, align 4, !dbg !4187
  call void @llvm.dbg.value(metadata i32 %13, metadata !4178, metadata !DIExpression()), !dbg !4179
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4188
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4189
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4189
  ret void, !dbg !4189
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4190 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4192, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i32 %1, metadata !4193, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i8* %2, metadata !4194, metadata !DIExpression()), !dbg !4197
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4198
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4195, metadata !DIExpression()), !dbg !4199
  %7 = bitcast i32* %5 to i8*, !dbg !4200
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4200
  call void @llvm.dbg.value(metadata i32* %5, metadata !4196, metadata !DIExpression(DW_OP_deref)), !dbg !4197
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4201
  call void @llvm.va_start(i8* nonnull %6), !dbg !4202
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4203
  %10 = load i32, i32* %9, align 4, !dbg !4203
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4203
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4203
  call void @llvm.va_end(i8* nonnull %6), !dbg !4204
  %13 = load i32, i32* %5, align 4, !dbg !4205
  call void @llvm.dbg.value(metadata i32 %13, metadata !4196, metadata !DIExpression()), !dbg !4197
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4206
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4207
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4207
  ret void, !dbg !4207
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4208 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4210, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i32 %1, metadata !4211, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i8* %2, metadata !4212, metadata !DIExpression()), !dbg !4215
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4216
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4216
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4213, metadata !DIExpression()), !dbg !4217
  %7 = bitcast i32* %5 to i8*, !dbg !4218
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4218
  call void @llvm.dbg.value(metadata i32* %5, metadata !4214, metadata !DIExpression(DW_OP_deref)), !dbg !4215
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4219
  call void @llvm.va_start(i8* nonnull %6), !dbg !4220
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4221
  %10 = load i32, i32* %9, align 4, !dbg !4221
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4221
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4221
  call void @llvm.va_end(i8* nonnull %6), !dbg !4222
  %13 = load i32, i32* %5, align 4, !dbg !4223
  call void @llvm.dbg.value(metadata i32 %13, metadata !4214, metadata !DIExpression()), !dbg !4215
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4225
  ret void, !dbg !4225
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #11 !dbg !4226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4232, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 %1, metadata !4233, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i8* %2, metadata !4234, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i8* %3, metadata !4235, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.value(metadata i32 %4, metadata !4236, metadata !DIExpression()), !dbg !4237
  ret void, !dbg !4238
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halADC_Get_ADC_Efuse() local_unnamed_addr #3 !dbg !4239 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i16 94, metadata !4241, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i16 95, metadata !4242, metadata !DIExpression()), !dbg !4245
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #15, !dbg !4246
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #15, !dbg !4246
  call void @llvm.dbg.value(metadata i8* %1, metadata !4243, metadata !DIExpression(DW_OP_deref)), !dbg !4245
  %3 = call i32 @hal_efuse_read(i16 noundef zeroext 94, i8* noundef nonnull %1, i8 noundef zeroext 1) #16, !dbg !4247
  %4 = icmp eq i32 %3, 0, !dbg !4249
  %5 = load i8, i8* %1, align 1, !dbg !4250
  %6 = select i1 %4, i8 %5, i8 0, !dbg !4250
  store volatile i8 %6, i8* @g_adc_efuse_offset, align 1, !dbg !4251
  call void @llvm.dbg.value(metadata i8* %2, metadata !4244, metadata !DIExpression(DW_OP_deref)), !dbg !4245
  %7 = call i32 @hal_efuse_read(i16 noundef zeroext 95, i8* noundef nonnull %2, i8 noundef zeroext 1) #16, !dbg !4252
  %8 = icmp eq i32 %7, 0, !dbg !4254
  %9 = load i8, i8* %2, align 1, !dbg !4255
  %10 = select i1 %8, i8 %9, i8 0, !dbg !4255
  store volatile i8 %10, i8* @g_adc_efuse_gain, align 1, !dbg !4256
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #15, !dbg !4257
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #15, !dbg !4257
  ret void, !dbg !4257
}

; Function Attrs: optsize
declare dso_local i32 @hal_efuse_read(i16 noundef zeroext, i8* noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @halADC_Remove_Data_Offset(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #8 !dbg !4258 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4262, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i32* %1, metadata !4263, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i32 %2, metadata !4264, metadata !DIExpression()), !dbg !4272
  %4 = load volatile i8, i8* @g_adc_efuse_offset, align 1, !dbg !4273
  call void @llvm.dbg.value(metadata i8 %4, metadata !4265, metadata !DIExpression()), !dbg !4272
  %5 = load volatile i8, i8* @g_adc_efuse_gain, align 1, !dbg !4274
  call void @llvm.dbg.value(metadata i8 %5, metadata !4266, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i8 %4, metadata !4267, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)), !dbg !4272
  call void @llvm.dbg.value(metadata i8 %5, metadata !4268, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)), !dbg !4272
  call void @llvm.dbg.value(metadata i8 %4, metadata !4265, metadata !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value)), !dbg !4272
  call void @llvm.dbg.value(metadata i8 %5, metadata !4266, metadata !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value)), !dbg !4272
  call void @llvm.dbg.value(metadata i32 0, metadata !4269, metadata !DIExpression()), !dbg !4272
  %6 = icmp eq i32 %2, 0, !dbg !4275
  br i1 %6, label %47, label %7, !dbg !4278

7:                                                ; preds = %3
  %8 = and i8 %5, 127, !dbg !4279
  call void @llvm.dbg.value(metadata i8 %8, metadata !4266, metadata !DIExpression()), !dbg !4272
  %9 = and i8 %4, 127, !dbg !4280
  call void @llvm.dbg.value(metadata i8 %9, metadata !4265, metadata !DIExpression()), !dbg !4272
  %10 = icmp sgt i8 %4, -1
  %11 = zext i8 %9 to i16
  %12 = icmp sgt i8 %5, -1
  %13 = zext i8 %8 to i32
  br label %14, !dbg !4278

14:                                               ; preds = %7, %38
  %15 = phi i32 [ 0, %7 ], [ %45, %38 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4269, metadata !DIExpression()), !dbg !4272
  %16 = getelementptr inbounds i32, i32* %0, i32 %15, !dbg !4281
  %17 = load i32, i32* %16, align 4, !dbg !4281
  %18 = trunc i32 %17 to i16, !dbg !4283
  %19 = lshr i16 %18, 4, !dbg !4283
  call void @llvm.dbg.value(metadata i16 %19, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i16 %19, metadata !4271, metadata !DIExpression()), !dbg !4272
  br i1 %10, label %20, label %22, !dbg !4284

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata !DIArgList(i16 %19, i16 %11), metadata !4270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4272
  %21 = tail call i16 @llvm.usub.sat.i16(i16 %19, i16 %11), !dbg !4285
  call void @llvm.dbg.value(metadata i16 %21, metadata !4270, metadata !DIExpression()), !dbg !4272
  br label %26, !dbg !4288

22:                                               ; preds = %14
  %23 = add nuw nsw i16 %19, %11, !dbg !4289
  call void @llvm.dbg.value(metadata i16 %23, metadata !4270, metadata !DIExpression()), !dbg !4272
  %24 = icmp ult i16 %23, 4095, !dbg !4291
  %25 = select i1 %24, i16 %23, i16 4095, !dbg !4291
  call void @llvm.dbg.value(metadata i16 %25, metadata !4270, metadata !DIExpression()), !dbg !4272
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i16 [ %21, %20 ], [ %25, %22 ], !dbg !4292
  call void @llvm.dbg.value(metadata i16 %27, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.value(metadata i16 %27, metadata !4271, metadata !DIExpression()), !dbg !4272
  %28 = zext i16 %27 to i32, !dbg !4293
  %29 = mul nuw nsw i32 %28, %13, !dbg !4293
  %30 = udiv i32 %29, 2500, !dbg !4293
  %31 = trunc i32 %30 to i16, !dbg !4293
  br i1 %12, label %32, label %36, !dbg !4295

32:                                               ; preds = %26
  %33 = add nuw nsw i16 %27, %31, !dbg !4296
  call void @llvm.dbg.value(metadata i16 %33, metadata !4270, metadata !DIExpression()), !dbg !4272
  %34 = icmp ult i16 %33, 4095, !dbg !4298
  %35 = select i1 %34, i16 %33, i16 4095, !dbg !4298
  call void @llvm.dbg.value(metadata i16 %35, metadata !4270, metadata !DIExpression()), !dbg !4272
  br label %38, !dbg !4299

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata !DIArgList(i16 %27, i16 %31), metadata !4270, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4272
  %37 = tail call i16 @llvm.usub.sat.i16(i16 %27, i16 %31), !dbg !4300
  call void @llvm.dbg.value(metadata i16 %37, metadata !4270, metadata !DIExpression()), !dbg !4272
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i16 [ %35, %32 ], [ %37, %36 ], !dbg !4293
  call void @llvm.dbg.value(metadata i16 %39, metadata !4270, metadata !DIExpression()), !dbg !4272
  %40 = and i32 %17, -65521, !dbg !4302
  %41 = zext i16 %39 to i32, !dbg !4303
  %42 = shl nuw nsw i32 %41, 4, !dbg !4304
  %43 = or i32 %42, %40, !dbg !4305
  %44 = getelementptr inbounds i32, i32* %1, i32 %15, !dbg !4306
  store i32 %43, i32* %44, align 4, !dbg !4307
  %45 = add nuw i32 %15, 1, !dbg !4308
  call void @llvm.dbg.value(metadata i32 %45, metadata !4269, metadata !DIExpression()), !dbg !4272
  %46 = icmp eq i32 %45, %2, !dbg !4275
  br i1 %46, label %47, label %14, !dbg !4278, !llvm.loop !4309

47:                                               ; preds = %38, %3
  ret void, !dbg !4311
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_adc_init() local_unnamed_addr #3 !dbg !4312 {
  %1 = alloca %struct._ADC_FSM_PARAM_T, align 4
  %2 = bitcast %struct._ADC_FSM_PARAM_T* %1 to i8*, !dbg !4329
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #15, !dbg !4329
  call void @llvm.dbg.declare(metadata %struct._ADC_FSM_PARAM_T* %1, metadata !4317, metadata !DIExpression()), !dbg !4330
  %3 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 2, !dbg !4330
  %4 = bitcast i16* %3 to i32*, !dbg !4330
  store i32 0, i32* %4, align 4, !dbg !4330
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4331
  call void @llvm.dbg.value(metadata i32 %5, metadata !4318, metadata !DIExpression()), !dbg !4332
  %6 = load volatile i8, i8* @g_adc_status, align 1, !dbg !4333
  %7 = icmp eq i8 %6, 1, !dbg !4335
  br i1 %7, label %8, label %9, !dbg !4336

8:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4337
  br label %36, !dbg !4339

9:                                                ; preds = %0
  store volatile i8 1, i8* @g_adc_status, align 1, !dbg !4340
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4342
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130570184 to i32*), metadata !4319, metadata !DIExpression()), !dbg !4343
  %10 = load volatile i32, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4344
  %11 = or i32 %10, 2, !dbg !4344
  store volatile i32 %11, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4344
  tail call void @delay_time(i32 noundef 6) #16, !dbg !4345
  %12 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !4346
  %13 = or i32 %12, 503316480, !dbg !4346
  store volatile i32 %13, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !4346
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130571180 to i32*), metadata !4321, metadata !DIExpression()), !dbg !4347
  %14 = load volatile i32, i32* inttoptr (i32 -2130571180 to i32*), align 4, !dbg !4348
  %15 = or i32 %14, 2, !dbg !4348
  store volatile i32 %15, i32* inttoptr (i32 -2130571180 to i32*), align 4, !dbg !4348
  tail call void @delay_time(i32 noundef 1) #16, !dbg !4349
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130570228 to i32*), metadata !4323, metadata !DIExpression()), !dbg !4350
  %16 = load volatile i32, i32* inttoptr (i32 -2130570228 to i32*), align 4, !dbg !4351
  %17 = or i32 %16, 4210688, !dbg !4351
  store volatile i32 %17, i32* inttoptr (i32 -2130570228 to i32*), align 4, !dbg !4351
  %18 = load volatile i32, i32* inttoptr (i32 -2130570224 to i32*), align 16, !dbg !4352
  %19 = or i32 %18, 100663296, !dbg !4352
  store volatile i32 %19, i32* inttoptr (i32 -2130570224 to i32*), align 16, !dbg !4352
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118832 to i32*), metadata !4325, metadata !DIExpression()), !dbg !4353
  %20 = load volatile i32, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4354
  %21 = and i32 %20, -805306369, !dbg !4354
  %22 = or i32 %21, 536870912, !dbg !4354
  store volatile i32 %22, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4354
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118832 to i32*), metadata !4327, metadata !DIExpression()), !dbg !4355
  %23 = load volatile i32, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4356
  %24 = or i32 %23, -2147483648, !dbg !4356
  store volatile i32 %24, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4356
  %25 = load volatile i32, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4357
  %26 = and i32 %25, -117440513, !dbg !4357
  store volatile i32 %26, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4357
  store volatile i32 1895016981, i32* inttoptr (i32 -2097118836 to i32*), align 4, !dbg !4358
  tail call void @delay_time(i32 noundef 3) #16, !dbg !4359
  %27 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 0, !dbg !4360
  store i32 0, i32* %27, align 4, !dbg !4361
  %28 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 1, !dbg !4362
  store i32 0, i32* %28, align 4, !dbg !4363
  %29 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 2, !dbg !4364
  store i16 15, i16* %29, align 4, !dbg !4365
  %30 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 3, !dbg !4366
  store i32 16000, i32* %30, align 4, !dbg !4367
  %31 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 4, !dbg !4368
  store i32 0, i32* %31, align 4, !dbg !4369
  %32 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 5, !dbg !4370
  store i32* null, i32** %32, align 4, !dbg !4371
  %33 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 6, !dbg !4372
  store i32 0, i32* %33, align 4, !dbg !4373
  %34 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 7, !dbg !4374
  store i32 0, i32* %34, align 4, !dbg !4375
  %35 = call zeroext i8 @halADC_Fsm_Param_Set(%struct._ADC_FSM_PARAM_T* noundef nonnull %1) #14, !dbg !4376
  tail call void @halADC_Get_ADC_Efuse() #14, !dbg !4377
  br label %36, !dbg !4378

36:                                               ; preds = %9, %8
  %37 = phi i32 [ -3, %8 ], [ 0, %9 ], !dbg !4332
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #15, !dbg !4381
  ret i32 %37, !dbg !4381
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halADC_Fsm_Param_Set(%struct._ADC_FSM_PARAM_T* nocapture noundef readonly %0) local_unnamed_addr #3 !dbg !4382 {
  call void @llvm.dbg.value(metadata %struct._ADC_FSM_PARAM_T* %0, metadata !4389, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i8 0, metadata !4390, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i8 0, metadata !4391, metadata !DIExpression()), !dbg !4415
  %2 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 2, !dbg !4416
  %3 = load i16, i16* %2, align 4, !dbg !4416
  %4 = icmp eq i16 %3, 0, !dbg !4418
  br i1 %4, label %79, label %5, !dbg !4419

5:                                                ; preds = %1
  %6 = zext i16 %3 to i32
  call void @llvm.dbg.value(metadata i8 0, metadata !4390, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i8 0, metadata !4391, metadata !DIExpression()), !dbg !4415
  br label %7, !dbg !4420

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = phi i8 [ 0, %5 ], [ %14, %7 ]
  call void @llvm.dbg.value(metadata i8 %9, metadata !4390, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i32 %8, metadata !4391, metadata !DIExpression()), !dbg !4415
  %10 = shl nuw nsw i32 1, %8, !dbg !4422
  %11 = and i32 %10, %6, !dbg !4426
  %12 = icmp ne i32 %11, 0, !dbg !4426
  %13 = zext i1 %12 to i8, !dbg !4427
  %14 = add i8 %9, %13, !dbg !4427
  call void @llvm.dbg.value(metadata i8 %14, metadata !4390, metadata !DIExpression()), !dbg !4415
  %15 = add nuw nsw i32 %8, 1, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %15, metadata !4391, metadata !DIExpression()), !dbg !4415
  %16 = icmp eq i32 %15, 16, !dbg !4429
  br i1 %16, label %17, label %7, !dbg !4420, !llvm.loop !4430

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 0, !dbg !4432
  %19 = load i32, i32* %18, align 4, !dbg !4432
  store i32 %19, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 0), align 4, !dbg !4433
  %20 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 1, !dbg !4434
  %21 = load i32, i32* %20, align 4, !dbg !4434
  store i32 %21, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 1), align 4, !dbg !4435
  store i16 %3, i16* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 2), align 4, !dbg !4436
  %22 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 3, !dbg !4437
  %23 = load i32, i32* %22, align 4, !dbg !4437
  store i32 %23, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 3), align 4, !dbg !4438
  %24 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 4, !dbg !4439
  %25 = load i32, i32* %24, align 4, !dbg !4439
  store i32 %25, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4440
  %26 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 5, !dbg !4441
  %27 = load i32*, i32** %26, align 4, !dbg !4441
  store i32* %27, i32** getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 5), align 4, !dbg !4442
  %28 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 6, !dbg !4443
  %29 = load i32, i32* %28, align 4, !dbg !4443
  store i32 %29, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 6), align 4, !dbg !4444
  %30 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 7, !dbg !4445
  %31 = load i32, i32* %30, align 4, !dbg !4445
  store i32 %31, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 7), align 4, !dbg !4446
  store i8 %14, i8* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 1), align 4, !dbg !4447
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4392, metadata !DIExpression()), !dbg !4448
  %32 = load i32, i32* %18, align 4, !dbg !4449
  %33 = shl i32 %32, 8, !dbg !4449
  %34 = and i32 %33, 256, !dbg !4449
  %35 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4449
  %36 = and i32 %35, -257, !dbg !4449
  %37 = or i32 %34, %36, !dbg !4449
  store volatile i32 %37, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4449
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4394, metadata !DIExpression()), !dbg !4450
  %38 = load i32, i32* %20, align 4, !dbg !4451
  %39 = shl i32 %38, 1, !dbg !4451
  %40 = and i32 %39, 14, !dbg !4451
  %41 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4451
  %42 = and i32 %41, -15, !dbg !4451
  %43 = or i32 %40, %42, !dbg !4451
  store volatile i32 %43, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4451
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4396, metadata !DIExpression()), !dbg !4452
  %44 = load i16, i16* %2, align 4, !dbg !4453
  %45 = zext i16 %44 to i32, !dbg !4453
  %46 = shl nuw i32 %45, 16, !dbg !4453
  %47 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4453
  %48 = and i32 %47, 65535, !dbg !4453
  %49 = or i32 %46, %48, !dbg !4453
  store volatile i32 %49, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4453
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118844 to i32*), metadata !4398, metadata !DIExpression()), !dbg !4454
  %50 = load i32, i32* %22, align 4, !dbg !4455
  %51 = load volatile i32, i32* inttoptr (i32 -2097118844 to i32*), align 4, !dbg !4455
  store volatile i32 %50, i32* inttoptr (i32 -2097118844 to i32*), align 4, !dbg !4455
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118840 to i32*), metadata !4400, metadata !DIExpression()), !dbg !4456
  %52 = load volatile i32, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4457
  %53 = and i32 %52, -1048577, !dbg !4457
  store volatile i32 %53, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4457
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118840 to i32*), metadata !4402, metadata !DIExpression()), !dbg !4458
  %54 = load volatile i32, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4459
  %55 = or i32 %54, 2097152, !dbg !4459
  store volatile i32 %55, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4459
  %56 = load i32, i32* %24, align 4, !dbg !4460
  switch i32 %56, label %79 [
    i32 1, label %57
    i32 0, label %66
  ], !dbg !4461

57:                                               ; preds = %17
  tail call void @DMA_Init() #16, !dbg !4462
  tail call void @DMA_Vfifo_init() #16, !dbg !4463
  %58 = load i32*, i32** %26, align 4, !dbg !4464
  %59 = ptrtoint i32* %58 to i32, !dbg !4465
  %60 = load i32, i32* %28, align 4, !dbg !4466
  %61 = load i32, i32* %30, align 4, !dbg !4467
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %59, i32 noundef %60, i32 noundef 25, i32 noundef 0, i32 noundef %61, i32 noundef 0) #16, !dbg !4468
  tail call void @DMA_Vfifo_Flush(i32 noundef 25) #16, !dbg !4469
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 25, void ()* noundef nonnull @halADC_VDMA_Callback) #16, !dbg !4470
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096299956 to i32*), metadata !4404, metadata !DIExpression()), !dbg !4471
  %62 = load volatile i32, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4472
  %63 = or i32 %62, 1, !dbg !4472
  store volatile i32 %63, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4472
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096300028 to i32*), metadata !4407, metadata !DIExpression()), !dbg !4473
  %64 = load volatile i32, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4474
  %65 = and i32 %64, -2, !dbg !4474
  store volatile i32 %65, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4474
  br label %79, !dbg !4475

66:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096299956 to i32*), metadata !4409, metadata !DIExpression()), !dbg !4476
  %67 = load volatile i32, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4477
  %68 = and i32 %67, -2, !dbg !4477
  store volatile i32 %68, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4477
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096300028 to i32*), metadata !4411, metadata !DIExpression()), !dbg !4478
  %69 = load volatile i32, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4479
  %70 = and i32 %69, -2, !dbg !4479
  store volatile i32 %70, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4479
  %71 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 14, void (i32)* noundef nonnull @halADC_LISR) #16, !dbg !4480
  %72 = tail call i32 @hal_nvic_set_priority(i32 noundef 14, i32 noundef 5) #16, !dbg !4481
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096299936 to i32*), metadata !4413, metadata !DIExpression()), !dbg !4482
  %73 = zext i8 %14 to i32, !dbg !4483
  %74 = shl nuw nsw i32 %73, 3, !dbg !4483
  %75 = and i32 %74, 120, !dbg !4483
  %76 = load volatile i32, i32* inttoptr (i32 -2096299936 to i32*), align 32, !dbg !4483
  %77 = and i32 %76, -121, !dbg !4483
  %78 = or i32 %77, %75, !dbg !4483
  store volatile i32 %78, i32* inttoptr (i32 -2096299936 to i32*), align 32, !dbg !4483
  br label %79, !dbg !4484

79:                                               ; preds = %57, %66, %17, %1
  %80 = phi i8 [ 1, %1 ], [ 0, %17 ], [ 0, %66 ], [ 0, %57 ], !dbg !4415
  ret i8 %80, !dbg !4485
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @halADC_VDMA_Callback() #11 !dbg !4486 {
  ret void, !dbg !4487
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @halADC_LISR(i32 %0) #11 !dbg !4488 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !4490, metadata !DIExpression()), !dbg !4491
  ret void, !dbg !4492
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @halADC_Fsm_Enable() local_unnamed_addr #11 !dbg !4493 {
  ret i8 0, !dbg !4496
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_adc_deinit() local_unnamed_addr #3 !dbg !4497 {
  %1 = tail call zeroext i8 @halADC_Fsm_Disable(i8 noundef zeroext 1) #14, !dbg !4498
  store volatile i8 0, i8* @g_adc_status, align 1, !dbg !4500
  ret i32 0, !dbg !4502
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halADC_Fsm_Disable(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !4503 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4508, metadata !DIExpression()), !dbg !4515
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4509, metadata !DIExpression()), !dbg !4516
  %2 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4517
  %3 = and i32 %2, -2, !dbg !4517
  store volatile i32 %3, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4517
  %4 = load i32, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4518
  %5 = icmp eq i32 %4, 0, !dbg !4520
  br i1 %5, label %6, label %9, !dbg !4521

6:                                                ; preds = %1
  %7 = tail call i32 @hal_nvic_disable_irq(i32 noundef 14) #16, !dbg !4522
  %8 = tail call i32 @hal_nvic_disable_irq(i32 noundef 25) #16, !dbg !4524
  br label %9, !dbg !4525

9:                                                ; preds = %6, %1
  %10 = icmp eq i8 %0, 0, !dbg !4526
  br i1 %10, label %14, label %11, !dbg !4527

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130570184 to i32*), metadata !4511, metadata !DIExpression()), !dbg !4528
  %12 = load volatile i32, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4529
  %13 = and i32 %12, -3, !dbg !4529
  store volatile i32 %13, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4529
  br label %14, !dbg !4530

14:                                               ; preds = %11, %9
  ret i8 0, !dbg !4531
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @hal_adc_get_data_polling(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #8 !dbg !4532 {
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4537, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i32* %1, metadata !4538, metadata !DIExpression()), !dbg !4555
  %6 = bitcast [1 x i32]* %3 to i8*, !dbg !4556
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4556
  call void @llvm.dbg.declare(metadata [1 x i32]* %3, metadata !4539, metadata !DIExpression()), !dbg !4557
  %7 = bitcast i32* %4 to i8*, !dbg !4556
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4556
  %8 = bitcast i32* %5 to i8*, !dbg !4558
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4558
  %9 = icmp ugt i32 %0, 3, !dbg !4559
  br i1 %9, label %44, label %10, !dbg !4561

10:                                               ; preds = %2
  %11 = icmp eq i32* %1, null, !dbg !4562
  br i1 %11, label %44, label %12, !dbg !4564

12:                                               ; preds = %10
  %13 = icmp ult i32 %0, 4, !dbg !4565
  br i1 %13, label %14, label %44, !dbg !4565

14:                                               ; preds = %12
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.hal_adc_get_data_polling, i32 0, i32 %0, !dbg !4565
  %16 = load i32, i32* %15, align 4, !dbg !4565
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.hal_adc_get_data_polling.1, i32 0, i32 %0, !dbg !4565
  %18 = load i32, i32* %17, align 4, !dbg !4565
  %19 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4566
  %20 = and i32 %19, 65535, !dbg !4566
  %21 = or i32 %20, %16, !dbg !4566
  store volatile i32 %21, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4566
  %22 = load volatile i32, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4566
  %23 = or i32 %22, %18, !dbg !4566
  store volatile i32 %23, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4566
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4551, metadata !DIExpression()), !dbg !4567
  %24 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4568
  %25 = or i32 %24, 1, !dbg !4568
  store volatile i32 %25, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4568
  br label %26, !dbg !4569

26:                                               ; preds = %26, %14
  call void @llvm.dbg.value(metadata i32* %4, metadata !4540, metadata !DIExpression(DW_OP_deref)), !dbg !4555
  %27 = call zeroext i8 @halADC_Fifo_Get_Length(i32* noundef nonnull %4) #14, !dbg !4570
  %28 = load i32, i32* %4, align 4, !dbg !4572
  call void @llvm.dbg.value(metadata i32 %28, metadata !4540, metadata !DIExpression()), !dbg !4555
  %29 = icmp eq i32 %28, 0, !dbg !4573
  br i1 %29, label %26, label %30, !dbg !4574, !llvm.loop !4575

30:                                               ; preds = %26
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i32 0, i32 0, !dbg !4577
  %32 = call zeroext i8 @halADC_Fifo_Read_Data(i32 noundef 1, i32* noundef nonnull %31) #14, !dbg !4578
  call void @llvm.dbg.value(metadata i32* %5, metadata !4541, metadata !DIExpression(DW_OP_deref)), !dbg !4555
  call void @halADC_Remove_Data_Offset(i32* noundef nonnull %31, i32* noundef nonnull %5, i32 noundef 1) #14, !dbg !4579
  %33 = load i32, i32* %5, align 4, !dbg !4580
  call void @llvm.dbg.value(metadata i32 %33, metadata !4541, metadata !DIExpression()), !dbg !4555
  %34 = lshr i32 %33, 4, !dbg !4581
  %35 = and i32 %34, 4095, !dbg !4581
  store i32 %35, i32* %1, align 4, !dbg !4582
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4553, metadata !DIExpression()), !dbg !4583
  %36 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4584
  %37 = and i32 %36, -2, !dbg !4584
  store volatile i32 %37, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4584
  %38 = icmp ult i32 %0, 4, !dbg !4585
  br i1 %38, label %39, label %44, !dbg !4585

39:                                               ; preds = %30
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.hal_adc_get_data_polling.2, i32 0, i32 %0, !dbg !4585
  %41 = load i32, i32* %40, align 4, !dbg !4585
  %42 = load volatile i32, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4586
  %43 = and i32 %42, %41, !dbg !4586
  store volatile i32 %43, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4586
  br label %44, !dbg !4588

44:                                               ; preds = %30, %12, %39, %10, %2
  %45 = phi i32 [ -2, %2 ], [ -4, %10 ], [ -1, %12 ], [ 0, %30 ], [ 0, %39 ], !dbg !4555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4588
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4588
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4588
  ret i32 %45, !dbg !4588
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halADC_Fifo_Get_Length(i32* nocapture noundef writeonly %0) local_unnamed_addr #6 !dbg !4589 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4593, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i32 0, metadata !4594, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata i32 0, metadata !4595, metadata !DIExpression()), !dbg !4596
  %2 = load i32, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4597
  switch i32 %2, label %22 [
    i32 1, label %3
    i32 0, label %6
  ], !dbg !4598

3:                                                ; preds = %1
  %4 = load volatile i16, i16* inttoptr (i32 -2097080008 to i16*), align 8, !dbg !4599
  %5 = zext i16 %4 to i32, !dbg !4599
  br label %20, !dbg !4601

6:                                                ; preds = %1
  %7 = load volatile i32, i32* inttoptr (i32 -2096299820 to i32*), align 4, !dbg !4602
  %8 = and i32 %7, 15, !dbg !4602
  call void @llvm.dbg.value(metadata i32 %8, metadata !4594, metadata !DIExpression()), !dbg !4596
  %9 = load volatile i32, i32* inttoptr (i32 -2096299820 to i32*), align 4, !dbg !4603
  %10 = lshr i32 %9, 4, !dbg !4603
  %11 = and i32 %10, 15, !dbg !4603
  call void @llvm.dbg.value(metadata i32 %11, metadata !4595, metadata !DIExpression()), !dbg !4596
  %12 = icmp eq i32 %11, %8, !dbg !4604
  br i1 %12, label %20, label %13, !dbg !4606

13:                                               ; preds = %6
  %14 = icmp ugt i32 %11, %8, !dbg !4607
  br i1 %14, label %15, label %17, !dbg !4609

15:                                               ; preds = %13
  %16 = sub nsw i32 %11, %8, !dbg !4610
  br label %20, !dbg !4612

17:                                               ; preds = %13
  %18 = sub nuw nsw i32 16, %8, !dbg !4613
  %19 = add nuw nsw i32 %18, %11, !dbg !4615
  br label %20

20:                                               ; preds = %6, %3, %15, %17
  %21 = phi i32 [ %19, %17 ], [ %16, %15 ], [ %5, %3 ], [ 0, %6 ]
  store i32 %21, i32* %0, align 4, !dbg !4616
  br label %22, !dbg !4617

22:                                               ; preds = %20, %1
  ret i8 0, !dbg !4617
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halADC_Fifo_Read_Data(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #1 !dbg !4618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4622, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i32* %1, metadata !4623, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i32 0, metadata !4624, metadata !DIExpression()), !dbg !4625
  %3 = load i32, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4626
  switch i32 %3, label %20 [
    i32 1, label %6
    i32 0, label %4
  ], !dbg !4627

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !4624, metadata !DIExpression()), !dbg !4625
  %5 = icmp eq i32 %0, 0, !dbg !4628
  br i1 %5, label %20, label %14, !dbg !4632

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !4624, metadata !DIExpression()), !dbg !4625
  %7 = icmp eq i32 %0, 0, !dbg !4633
  br i1 %7, label %20, label %8, !dbg !4636

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %6 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4624, metadata !DIExpression()), !dbg !4625
  %10 = load volatile i32, i32* inttoptr (i32 2030046464 to i32*), align 256, !dbg !4637
  %11 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !4639
  store i32 %10, i32* %11, align 4, !dbg !4640
  %12 = add nuw i32 %9, 1, !dbg !4641
  call void @llvm.dbg.value(metadata i32 %12, metadata !4624, metadata !DIExpression()), !dbg !4625
  %13 = icmp eq i32 %12, %0, !dbg !4633
  br i1 %13, label %20, label %8, !dbg !4636, !llvm.loop !4642

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4624, metadata !DIExpression()), !dbg !4625
  %16 = load volatile i32, i32* inttoptr (i32 -2096300032 to i32*), align 65536, !dbg !4644
  %17 = getelementptr inbounds i32, i32* %1, i32 %15, !dbg !4646
  store i32 %16, i32* %17, align 4, !dbg !4647
  %18 = add nuw i32 %15, 1, !dbg !4648
  call void @llvm.dbg.value(metadata i32 %18, metadata !4624, metadata !DIExpression()), !dbg !4625
  %19 = icmp eq i32 %18, %0, !dbg !4628
  br i1 %19, label %20, label %14, !dbg !4632, !llvm.loop !4649

20:                                               ; preds = %14, %8, %4, %6, %2
  ret i8 0, !dbg !4651
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @halADC_COMP_LISR(i32 noundef %0) local_unnamed_addr #11 !dbg !4652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4654, metadata !DIExpression()), !dbg !4655
  ret void, !dbg !4656
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !4657 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4665
  call void @llvm.dbg.value(metadata i32 %1, metadata !4664, metadata !DIExpression()), !dbg !4666
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !4667, !range !1556
  %3 = icmp eq i8 %2, 0, !dbg !4667
  br i1 %3, label %5, label %4, !dbg !4669

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4670
  br label %15, !dbg !4672

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !4673
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4675
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !4676
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4677
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4678
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4679
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4680
  call void @llvm.dbg.value(metadata i32 0, metadata !4662, metadata !DIExpression()), !dbg !4666
  br label %7, !dbg !4681

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !4662, metadata !DIExpression()), !dbg !4666
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !4683
  store volatile i32 0, i32* %9, align 4, !dbg !4686
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !4687
  store volatile i32 0, i32* %10, align 4, !dbg !4688
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !4689
  store i32 0, i32* %11, align 4, !dbg !4690
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !4691
  store i32 0, i32* %12, align 4, !dbg !4692
  %13 = add nuw nsw i32 %8, 1, !dbg !4693
  call void @llvm.dbg.value(metadata i32 %13, metadata !4662, metadata !DIExpression()), !dbg !4666
  %14 = icmp eq i32 %13, 16, !dbg !4694
  br i1 %14, label %15, label %7, !dbg !4681, !llvm.loop !4695

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !4666
  ret i32 %16, !dbg !4697
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4698 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4701
  call void @llvm.dbg.value(metadata i32 %1, metadata !4700, metadata !DIExpression()), !dbg !4702
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4703
  %3 = and i32 %2, -31, !dbg !4703
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4703
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4704
  %5 = or i32 %4, 19, !dbg !4704
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4704
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4705
  %7 = and i32 %6, -31, !dbg !4705
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4705
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4706
  %9 = or i32 %8, 3, !dbg !4706
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4706
  tail call void asm sideeffect "isb", ""() #15, !dbg !4707, !srcloc !4711
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4712
  ret i32 0, !dbg !4713
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !4714 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !4717
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4718
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4719
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4720
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4721
  call void @llvm.dbg.value(metadata i32 0, metadata !4716, metadata !DIExpression()), !dbg !4722
  br label %2, !dbg !4723

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4716, metadata !DIExpression()), !dbg !4722
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !4725
  store volatile i32 0, i32* %4, align 4, !dbg !4728
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !4729
  store volatile i32 0, i32* %5, align 4, !dbg !4730
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !4731
  store i32 0, i32* %6, align 4, !dbg !4732
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !4733
  store i32 0, i32* %7, align 4, !dbg !4734
  %8 = add nuw nsw i32 %3, 1, !dbg !4735
  call void @llvm.dbg.value(metadata i32 %8, metadata !4716, metadata !DIExpression()), !dbg !4722
  %9 = icmp eq i32 %8, 16, !dbg !4736
  br i1 %9, label %10, label %2, !dbg !4723, !llvm.loop !4737

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !4739
  ret i32 0, !dbg !4740
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #1 !dbg !4741 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4742
  %2 = and i32 %1, 768, !dbg !4744
  %3 = icmp eq i32 %2, 0, !dbg !4744
  br i1 %3, label %8, label %4, !dbg !4745

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4746
  %6 = or i32 %5, 13, !dbg !4746
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4746
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4747
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4748
  br label %8, !dbg !4749

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !4750
  ret i32 %9, !dbg !4751
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !4752 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4755
  call void @llvm.dbg.value(metadata i32 %1, metadata !4754, metadata !DIExpression()), !dbg !4756
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4757
  %3 = and i32 %2, 1, !dbg !4759
  %4 = icmp eq i32 %3, 0, !dbg !4759
  br i1 %4, label %7, label %5, !dbg !4760

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !4761
  br label %7, !dbg !4763

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4764
  %9 = and i32 %8, -2, !dbg !4764
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4764
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4765
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4766
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4767
  ret i32 0, !dbg !4768
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #1 !dbg !4769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4773, metadata !DIExpression()), !dbg !4774
  %2 = icmp ugt i32 %0, 15, !dbg !4775
  br i1 %2, label %13, label %3, !dbg !4777

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4778
  %5 = load volatile i32, i32* %4, align 4, !dbg !4778
  %6 = and i32 %5, 256, !dbg !4780
  %7 = icmp eq i32 %6, 0, !dbg !4780
  br i1 %7, label %13, label %8, !dbg !4781

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !4782
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4784
  %11 = or i32 %10, %9, !dbg !4784
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4784
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4785
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !4786
  br label %13, !dbg !4787

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !4774
  ret i32 %14, !dbg !4788
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #1 !dbg !4789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4791, metadata !DIExpression()), !dbg !4792
  %2 = icmp ugt i32 %0, 15, !dbg !4793
  br i1 %2, label %11, label %3, !dbg !4795

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !4796
  %5 = xor i32 %4, -1, !dbg !4797
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4798
  %7 = and i32 %6, %5, !dbg !4798
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4798
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4799
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !4800
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4801
  store i32 0, i32* %9, align 4, !dbg !4802
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4803
  store i32 0, i32* %10, align 4, !dbg !4804
  br label %11, !dbg !4805

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4792
  ret i32 %12, !dbg !4806
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #1 !dbg !4807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4812, metadata !DIExpression()), !dbg !4813
  %2 = icmp ugt i32 %0, 3, !dbg !4814
  br i1 %2, label %13, label %3, !dbg !4816

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4817
  %5 = and i32 %4, -769, !dbg !4817
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4817
  %6 = shl nuw nsw i32 %0, 8, !dbg !4818
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4819
  %8 = or i32 %7, %6, !dbg !4819
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4819
  %9 = icmp eq i32 %0, 0, !dbg !4820
  br i1 %9, label %10, label %11, !dbg !4822

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4823
  br label %11, !dbg !4825

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4826
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4827
  br label %13, !dbg !4828

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !4813
  ret i32 %14, !dbg !4829
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.DMA_SWCOPYMENU* noundef readonly %1) local_unnamed_addr #3 !dbg !4830 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4841, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata %struct.DMA_SWCOPYMENU* %1, metadata !4842, metadata !DIExpression()), !dbg !4843
  %3 = icmp ugt i32 %0, 15, !dbg !4844
  br i1 %3, label %30, label %4, !dbg !4846

4:                                                ; preds = %2
  %5 = icmp eq %struct.DMA_SWCOPYMENU* %1, null, !dbg !4847
  br i1 %5, label %30, label %6, !dbg !4849

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 0, !dbg !4850
  %8 = load i32, i32* %7, align 4, !dbg !4850
  %9 = and i32 %8, 4095, !dbg !4852
  %10 = icmp eq i32 %9, 0, !dbg !4852
  br i1 %10, label %12, label %11, !dbg !4853

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.11, i32 0, i32 0)) #17, !dbg !4854
  unreachable, !dbg !4854

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 1, !dbg !4856
  %14 = load i32, i32* %13, align 4, !dbg !4856
  %15 = and i32 %14, 4095, !dbg !4858
  %16 = icmp eq i32 %15, 0, !dbg !4858
  br i1 %16, label %18, label %17, !dbg !4859

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.11, i32 0, i32 0)) #17, !dbg !4860
  unreachable, !dbg !4860

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4862
  store volatile i32 %8, i32* %19, align 4, !dbg !4863
  %20 = load i32, i32* %7, align 4, !dbg !4864
  %21 = load i32, i32* %13, align 4, !dbg !4865
  %22 = add i32 %21, %20, !dbg !4866
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !4867
  store volatile i32 %22, i32* %23, align 4, !dbg !4868
  %24 = load volatile i32, i32* %19, align 4, !dbg !4869
  %25 = or i32 %24, 256, !dbg !4869
  store volatile i32 %25, i32* %19, align 4, !dbg !4869
  %26 = load volatile i32, i32* %19, align 4, !dbg !4870
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4871
  store i32 %26, i32* %27, align 4, !dbg !4872
  %28 = load volatile i32, i32* %23, align 4, !dbg !4873
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4874
  store i32 %28, i32* %29, align 4, !dbg !4875
  br label %30, !dbg !4876

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !4843
  ret i32 %31, !dbg !4877
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4882, metadata !DIExpression()), !dbg !4884
  %2 = and i32 %0, 31, !dbg !4885
  %3 = icmp eq i32 %2, 0, !dbg !4885
  br i1 %3, label %4, label %9, !dbg !4887

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4888
  call void @llvm.dbg.value(metadata i32 %5, metadata !4883, metadata !DIExpression()), !dbg !4884
  %6 = and i32 %0, -32, !dbg !4889
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4890
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4891
  %8 = or i32 %7, 5, !dbg !4891
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4891
  tail call void asm sideeffect "isb", ""() #15, !dbg !4892, !srcloc !4711
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4894
  br label %9, !dbg !4895

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4884
  ret i32 %10, !dbg !4896
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4901, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.value(metadata i32 %1, metadata !4902, metadata !DIExpression()), !dbg !4905
  %3 = add i32 %1, %0, !dbg !4906
  call void @llvm.dbg.value(metadata i32 %3, metadata !4904, metadata !DIExpression()), !dbg !4905
  %4 = or i32 %1, %0, !dbg !4907
  %5 = and i32 %4, 31, !dbg !4907
  %6 = icmp eq i32 %5, 0, !dbg !4907
  br i1 %6, label %7, label %16, !dbg !4907

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4909
  call void @llvm.dbg.value(metadata i32 %8, metadata !4903, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.value(metadata i32 %0, metadata !4901, metadata !DIExpression()), !dbg !4905
  %9 = icmp ugt i32 %3, %0, !dbg !4910
  br i1 %9, label %10, label %15, !dbg !4911

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4901, metadata !DIExpression()), !dbg !4905
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !4912
  %13 = add i32 %11, 32, !dbg !4914
  call void @llvm.dbg.value(metadata i32 %13, metadata !4901, metadata !DIExpression()), !dbg !4905
  %14 = icmp ult i32 %13, %3, !dbg !4910
  br i1 %14, label %10, label %15, !dbg !4911, !llvm.loop !4915

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4917, !srcloc !4711
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4919
  br label %16, !dbg !4920

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4905
  ret i32 %17, !dbg !4921
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4924, metadata !DIExpression()), !dbg !4926
  %2 = and i32 %0, 31, !dbg !4927
  %3 = icmp eq i32 %2, 0, !dbg !4927
  br i1 %3, label %4, label %9, !dbg !4929

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4930
  call void @llvm.dbg.value(metadata i32 %5, metadata !4925, metadata !DIExpression()), !dbg !4926
  %6 = and i32 %0, -32, !dbg !4931
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4932
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4933
  %8 = or i32 %7, 21, !dbg !4933
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4933
  tail call void asm sideeffect "isb", ""() #15, !dbg !4934, !srcloc !4711
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4936
  br label %9, !dbg !4937

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4926
  ret i32 %10, !dbg !4938
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4941, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i32 %1, metadata !4942, metadata !DIExpression()), !dbg !4945
  %3 = add i32 %1, %0, !dbg !4946
  call void @llvm.dbg.value(metadata i32 %3, metadata !4944, metadata !DIExpression()), !dbg !4945
  %4 = or i32 %1, %0, !dbg !4947
  %5 = and i32 %4, 31, !dbg !4947
  %6 = icmp eq i32 %5, 0, !dbg !4947
  br i1 %6, label %7, label %16, !dbg !4947

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4949
  call void @llvm.dbg.value(metadata i32 %8, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i32 %0, metadata !4941, metadata !DIExpression()), !dbg !4945
  %9 = icmp ugt i32 %3, %0, !dbg !4950
  br i1 %9, label %10, label %15, !dbg !4951

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4941, metadata !DIExpression()), !dbg !4945
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !4952
  %13 = add i32 %11, 32, !dbg !4954
  call void @llvm.dbg.value(metadata i32 %13, metadata !4941, metadata !DIExpression()), !dbg !4945
  %14 = icmp ult i32 %13, %3, !dbg !4950
  br i1 %14, label %10, label %15, !dbg !4951, !llvm.loop !4955

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4957, !srcloc !4711
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4959
  br label %16, !dbg !4960

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4945
  ret i32 %17, !dbg !4961
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4962 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4965
  call void @llvm.dbg.value(metadata i32 %1, metadata !4964, metadata !DIExpression()), !dbg !4966
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4967
  %3 = and i32 %2, -31, !dbg !4967
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4967
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4968
  %5 = or i32 %4, 19, !dbg !4968
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4968
  tail call void asm sideeffect "isb", ""() #15, !dbg !4969, !srcloc !4711
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4971
  ret i32 0, !dbg !4972
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #1 !dbg !4973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4977, metadata !DIExpression()), !dbg !4979
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4980
  %3 = and i32 %2, 8, !dbg !4982
  %4 = icmp eq i32 %3, 0, !dbg !4982
  br i1 %4, label %23, label %5, !dbg !4983

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4978, metadata !DIExpression()), !dbg !4979
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4984
  %8 = shl nuw nsw i32 1, %6, !dbg !4989
  %9 = and i32 %7, %8, !dbg !4990
  %10 = icmp eq i32 %9, 0, !dbg !4990
  br i1 %10, label %20, label %11, !dbg !4991

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4992
  %13 = load volatile i32, i32* %12, align 4, !dbg !4992
  %14 = and i32 %13, -257, !dbg !4995
  %15 = icmp ugt i32 %14, %0, !dbg !4996
  br i1 %15, label %20, label %16, !dbg !4997

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !4998
  %18 = load volatile i32, i32* %17, align 4, !dbg !4998
  %19 = icmp ugt i32 %18, %0, !dbg !4999
  br i1 %19, label %23, label %20, !dbg !5000

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !5001
  call void @llvm.dbg.value(metadata i32 %21, metadata !4978, metadata !DIExpression()), !dbg !4979
  %22 = icmp eq i32 %21, 16, !dbg !5002
  br i1 %22, label %23, label %5, !dbg !5003, !llvm.loop !5004

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4979
  ret i1 %24, !dbg !5006
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #11 !dbg !5007 {
  ret i32 0, !dbg !5011
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5016, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.value(metadata i32 -1, metadata !5017, metadata !DIExpression()), !dbg !5018
  %2 = icmp ugt i32 %0, 95, !dbg !5019
  br i1 %2, label %4, label %3, !dbg !5019

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !5021
  call void @llvm.dbg.value(metadata i32 0, metadata !5017, metadata !DIExpression()), !dbg !5018
  br label %4, !dbg !5023

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5018
  ret i32 %5, !dbg !5024
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5029, metadata !DIExpression()), !dbg !5030
  %2 = and i32 %0, 31, !dbg !5031
  %3 = shl nuw i32 1, %2, !dbg !5032
  %4 = lshr i32 %0, 5, !dbg !5033
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !5034
  store volatile i32 %3, i32* %5, align 4, !dbg !5035
  ret void, !dbg !5036
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5039, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i32 -1, metadata !5040, metadata !DIExpression()), !dbg !5041
  %2 = icmp ugt i32 %0, 95, !dbg !5042
  br i1 %2, label %4, label %3, !dbg !5042

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !5044
  call void @llvm.dbg.value(metadata i32 0, metadata !5040, metadata !DIExpression()), !dbg !5041
  br label %4, !dbg !5046

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5041
  ret i32 %5, !dbg !5047
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5048 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5050, metadata !DIExpression()), !dbg !5051
  %2 = and i32 %0, 31, !dbg !5052
  %3 = shl nuw i32 1, %2, !dbg !5053
  %4 = lshr i32 %0, 5, !dbg !5054
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !5055
  store volatile i32 %3, i32* %5, align 4, !dbg !5056
  ret void, !dbg !5057
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #6 !dbg !5058 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5062, metadata !DIExpression()), !dbg !5064
  call void @llvm.dbg.value(metadata i32 255, metadata !5063, metadata !DIExpression()), !dbg !5064
  %2 = icmp ugt i32 %0, 95, !dbg !5065
  br i1 %2, label %5, label %3, !dbg !5065

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %4, metadata !5063, metadata !DIExpression()), !dbg !5064
  br label %5, !dbg !5069

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !5064
  ret i32 %6, !dbg !5070
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !5071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5075, metadata !DIExpression()), !dbg !5076
  %2 = lshr i32 %0, 5, !dbg !5077
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !5078
  %4 = load volatile i32, i32* %3, align 4, !dbg !5078
  %5 = and i32 %0, 31, !dbg !5079
  %6 = lshr i32 %4, %5, !dbg !5080
  %7 = and i32 %6, 1, !dbg !5080
  ret i32 %7, !dbg !5081
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5082 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5084, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i32 -1, metadata !5085, metadata !DIExpression()), !dbg !5086
  %2 = icmp ugt i32 %0, 95, !dbg !5087
  br i1 %2, label %4, label %3, !dbg !5087

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !5089
  call void @llvm.dbg.value(metadata i32 0, metadata !5085, metadata !DIExpression()), !dbg !5086
  br label %4, !dbg !5091

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5086
  ret i32 %5, !dbg !5092
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5095, metadata !DIExpression()), !dbg !5096
  %2 = and i32 %0, 31, !dbg !5097
  %3 = shl nuw i32 1, %2, !dbg !5098
  %4 = lshr i32 %0, 5, !dbg !5099
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !5100
  store volatile i32 %3, i32* %5, align 4, !dbg !5101
  ret void, !dbg !5102
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5105, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.value(metadata i32 -1, metadata !5106, metadata !DIExpression()), !dbg !5107
  %2 = icmp ugt i32 %0, 95, !dbg !5108
  br i1 %2, label %4, label %3, !dbg !5108

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !5110
  call void @llvm.dbg.value(metadata i32 0, metadata !5106, metadata !DIExpression()), !dbg !5107
  br label %4, !dbg !5112

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5107
  ret i32 %5, !dbg !5113
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5116, metadata !DIExpression()), !dbg !5117
  %2 = and i32 %0, 31, !dbg !5118
  %3 = shl nuw i32 1, %2, !dbg !5119
  %4 = lshr i32 %0, 5, !dbg !5120
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !5121
  store volatile i32 %3, i32* %5, align 4, !dbg !5122
  ret void, !dbg !5123
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !5124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5128, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 %1, metadata !5129, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.value(metadata i32 -1, metadata !5130, metadata !DIExpression()), !dbg !5131
  %3 = icmp ugt i32 %0, 95, !dbg !5132
  br i1 %3, label %5, label %4, !dbg !5132

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !5134
  call void @llvm.dbg.value(metadata i32 0, metadata !5130, metadata !DIExpression()), !dbg !5131
  br label %5, !dbg !5136

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !5131
  ret i32 %6, !dbg !5137
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !5138 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5142, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.value(metadata i32 %1, metadata !5143, metadata !DIExpression()), !dbg !5144
  %3 = trunc i32 %1 to i8, !dbg !5145
  %4 = shl i8 %3, 5, !dbg !5145
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5148
  store volatile i8 %4, i8* %5, align 1, !dbg !5149
  ret void, !dbg !5150
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #6 !dbg !5151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5153, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.value(metadata i32 68, metadata !5154, metadata !DIExpression()), !dbg !5155
  %2 = icmp ugt i32 %0, 95, !dbg !5156
  br i1 %2, label %5, label %3, !dbg !5156

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !5158
  call void @llvm.dbg.value(metadata i32 %4, metadata !5154, metadata !DIExpression()), !dbg !5155
  br label %5, !dbg !5160

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !5155
  ret i32 %6, !dbg !5161
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #6 !dbg !5162 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5164, metadata !DIExpression()), !dbg !5165
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5166
  %3 = load volatile i8, i8* %2, align 1, !dbg !5166
  %4 = lshr i8 %3, 5, !dbg !5169
  %5 = zext i8 %4 to i32, !dbg !5169
  ret i32 %5, !dbg !5170
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #11 !dbg !5171 {
  ret void, !dbg !5172
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !5173 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !5175, metadata !DIExpression()), !dbg !5177
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !5178
  call void @llvm.dbg.value(metadata i32 %1, metadata !5176, metadata !DIExpression()), !dbg !5177
  %2 = icmp ugt i32 %1, 95, !dbg !5179
  br i1 %2, label %12, label %3, !dbg !5179

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !5181
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !5181
  %6 = icmp eq void (i32)* %5, null, !dbg !5183
  br i1 %6, label %7, label %8, !dbg !5184

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !5175, metadata !DIExpression()), !dbg !5177
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0)) #16, !dbg !5185
  br label %12, !dbg !5187

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !5188
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !5190
  store i32 %9, i32* %10, align 4, !dbg !5191
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !5192
  tail call void %11(i32 noundef %1) #16, !dbg !5193
  call void @llvm.dbg.value(metadata i32 0, metadata !5175, metadata !DIExpression()), !dbg !5177
  br label %12, !dbg !5194

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !5177
  ret i32 %13, !dbg !5195
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #6 !dbg !5196 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5199
  %2 = and i32 %1, 511, !dbg !5200
  call void @llvm.dbg.value(metadata i32 %2, metadata !5198, metadata !DIExpression()), !dbg !5201
  %3 = add nsw i32 %2, -16, !dbg !5202
  ret i32 %3, !dbg !5203
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #6 !dbg !5204 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5205
  %2 = lshr i32 %1, 22, !dbg !5206
  %3 = and i32 %2, 1, !dbg !5206
  ret i32 %3, !dbg !5207
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !5208 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5213, metadata !DIExpression()), !dbg !5216
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !5214, metadata !DIExpression()), !dbg !5216
  %3 = icmp ugt i32 %0, 95, !dbg !5217
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !5217
  br i1 %5, label %10, label %6, !dbg !5217

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !5219
  call void @llvm.dbg.value(metadata i32 %7, metadata !5215, metadata !DIExpression()), !dbg !5216
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !5220
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !5221
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !5222
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !5223
  store i32 0, i32* %9, align 4, !dbg !5224
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !5225
  br label %10, !dbg !5226

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !5216
  ret i32 %11, !dbg !5227
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !5228 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5232, metadata !DIExpression()), !dbg !5233
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !5234
  store i32 %2, i32* %0, align 4, !dbg !5235
  ret i32 0, !dbg !5236
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !5237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5242
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !5243
  ret i32 0, !dbg !5244
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5251, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.value(metadata i8 %1, metadata !5252, metadata !DIExpression()), !dbg !5254
  %3 = icmp ugt i32 %0, 60, !dbg !5255
  br i1 %3, label %11, label %4, !dbg !5257

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !5258
  br i1 %5, label %11, label %6, !dbg !5260

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !5261
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !5262
  call void @llvm.dbg.value(metadata i32 %8, metadata !5253, metadata !DIExpression()), !dbg !5254
  %9 = icmp slt i32 %8, 0, !dbg !5263
  %10 = select i1 %9, i32 -3, i32 0, !dbg !5263
  br label %11, !dbg !5264

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !5254
  ret i32 %12, !dbg !5265
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #11 !dbg !5266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5271, metadata !DIExpression()), !dbg !5272
  ret i32 0, !dbg !5273
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #11 !dbg !5274 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5276, metadata !DIExpression()), !dbg !5277
  ret i32 0, !dbg !5278
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5279 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5284, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata i32* %1, metadata !5285, metadata !DIExpression()), !dbg !5294
  %4 = icmp eq i32* %1, null, !dbg !5295
  br i1 %4, label %12, label %5, !dbg !5297

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !5298
  br i1 %6, label %12, label %7, !dbg !5300

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5301
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5301
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !5301
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !5301
  %10 = load i8, i8* %9, align 1, !dbg !5301
  call void @llvm.dbg.value(metadata i8 %10, metadata !5286, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !5294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5301
  %11 = zext i8 %10 to i32, !dbg !5302
  store i32 %11, i32* %1, align 4, !dbg !5303
  br label %12, !dbg !5304

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !5294
  ret i32 %13, !dbg !5305
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5306 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5310, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.value(metadata i32 %1, metadata !5311, metadata !DIExpression()), !dbg !5313
  %3 = icmp ugt i32 %0, 60, !dbg !5314
  br i1 %3, label %9, label %4, !dbg !5316

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !5317
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !5318
  call void @llvm.dbg.value(metadata i32 %6, metadata !5312, metadata !DIExpression()), !dbg !5313
  %7 = icmp slt i32 %6, 0, !dbg !5319
  %8 = select i1 %7, i32 -3, i32 0, !dbg !5319
  br label %9, !dbg !5320

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !5313
  ret i32 %10, !dbg !5321
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5322 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5324, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.value(metadata i32* %1, metadata !5325, metadata !DIExpression()), !dbg !5327
  %4 = icmp ugt i32 %0, 60, !dbg !5328
  br i1 %4, label %12, label %5, !dbg !5330

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !5331
  br i1 %6, label %12, label %7, !dbg !5333

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5334
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !5334
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !5334
  %10 = load i8, i8* %9, align 2, !dbg !5334
  call void @llvm.dbg.value(metadata i8 %10, metadata !5326, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !5327
  call void @llvm.dbg.value(metadata i8 undef, metadata !5326, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !5327
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5334
  %11 = zext i8 %10 to i32, !dbg !5335
  store i32 %11, i32* %1, align 4, !dbg !5336
  br label %12, !dbg !5337

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !5327
  ret i32 %13, !dbg !5338
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5344, metadata !DIExpression()), !dbg !5347
  call void @llvm.dbg.value(metadata i32 %1, metadata !5345, metadata !DIExpression()), !dbg !5347
  %3 = icmp ugt i32 %0, 60, !dbg !5348
  br i1 %3, label %8, label %4, !dbg !5350

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !5351
  call void @llvm.dbg.value(metadata i32 %5, metadata !5346, metadata !DIExpression()), !dbg !5347
  %6 = icmp slt i32 %5, 0, !dbg !5352
  %7 = select i1 %6, i32 -3, i32 0, !dbg !5352
  br label %8, !dbg !5353

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !5347
  ret i32 %9, !dbg !5354
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5355 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5360, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.value(metadata i32* %1, metadata !5361, metadata !DIExpression()), !dbg !5363
  %4 = icmp ugt i32 %0, 60, !dbg !5364
  br i1 %4, label %13, label %5, !dbg !5366

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !5367
  br i1 %6, label %13, label %7, !dbg !5369

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5370
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5370
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !5370
  call void @llvm.dbg.value(metadata i32 undef, metadata !5362, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !5363
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !5370
  %10 = load i8, i8* %9, align 4, !dbg !5370
  call void @llvm.dbg.value(metadata i8 %10, metadata !5362, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !5363
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5370
  %11 = icmp ne i8 %10, 0, !dbg !5371
  %12 = zext i1 %11 to i32, !dbg !5371
  store i32 %12, i32* %1, align 4, !dbg !5372
  br label %13, !dbg !5373

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !5363
  ret i32 %14, !dbg !5374
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !5375 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5377, metadata !DIExpression()), !dbg !5379
  %3 = icmp ugt i32 %0, 60, !dbg !5380
  br i1 %3, label %11, label %4, !dbg !5382

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !5383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !5383
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !5383
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !5383
  %7 = load i8, i8* %6, align 2, !dbg !5383
  call void @llvm.dbg.value(metadata i8 %7, metadata !5378, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !5379
  call void @llvm.dbg.value(metadata i8 undef, metadata !5378, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !5379
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !5383
  %8 = xor i8 %7, 1, !dbg !5384
  %9 = zext i8 %8 to i32, !dbg !5384
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !5385
  br label %11, !dbg !5386

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !5379
  ret i32 %12, !dbg !5387
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !5388 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5390, metadata !DIExpression()), !dbg !5392
  %2 = icmp ugt i32 %0, 60, !dbg !5393
  br i1 %2, label %10, label %3, !dbg !5395

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !5396
  call void @llvm.dbg.value(metadata i32 %4, metadata !5391, metadata !DIExpression()), !dbg !5392
  %5 = icmp slt i32 %4, 0, !dbg !5397
  br i1 %5, label %10, label %6, !dbg !5399

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !5400
  call void @llvm.dbg.value(metadata i32 %7, metadata !5391, metadata !DIExpression()), !dbg !5392
  %8 = icmp slt i32 %7, 0, !dbg !5401
  %9 = select i1 %8, i32 -3, i32 0, !dbg !5401
  br label %10, !dbg !5402

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !5392
  ret i32 %11, !dbg !5403
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !5404 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5406, metadata !DIExpression()), !dbg !5408
  %2 = icmp ugt i32 %0, 60, !dbg !5409
  br i1 %2, label %10, label %3, !dbg !5411

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !5412
  call void @llvm.dbg.value(metadata i32 %4, metadata !5407, metadata !DIExpression()), !dbg !5408
  %5 = icmp slt i32 %4, 0, !dbg !5413
  br i1 %5, label %10, label %6, !dbg !5415

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !5416
  call void @llvm.dbg.value(metadata i32 %7, metadata !5407, metadata !DIExpression()), !dbg !5408
  %8 = icmp slt i32 %7, 0, !dbg !5417
  %9 = select i1 %8, i32 -3, i32 0, !dbg !5417
  br label %10, !dbg !5418

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !5408
  ret i32 %11, !dbg !5419
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !5420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5422, metadata !DIExpression()), !dbg !5424
  %2 = icmp ugt i32 %0, 60, !dbg !5425
  br i1 %2, label %7, label %3, !dbg !5427

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !5428
  call void @llvm.dbg.value(metadata i32 %4, metadata !5423, metadata !DIExpression()), !dbg !5424
  %5 = icmp slt i32 %4, 0, !dbg !5429
  %6 = select i1 %5, i32 -3, i32 0, !dbg !5429
  br label %7, !dbg !5430

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !5424
  ret i32 %8, !dbg !5431
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5436, metadata !DIExpression()), !dbg !5439
  call void @llvm.dbg.value(metadata i32 %1, metadata !5437, metadata !DIExpression()), !dbg !5439
  %3 = icmp ugt i32 %0, 60, !dbg !5440
  br i1 %3, label %9, label %4, !dbg !5442

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !5443
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !5444
  call void @llvm.dbg.value(metadata i32 %6, metadata !5438, metadata !DIExpression()), !dbg !5439
  %7 = icmp slt i32 %6, 0, !dbg !5445
  %8 = select i1 %7, i32 -3, i32 0, !dbg !5445
  br label %9, !dbg !5446

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !5439
  ret i32 %10, !dbg !5447
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5448 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5453, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.value(metadata i32* %1, metadata !5454, metadata !DIExpression()), !dbg !5457
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !5458
  %4 = icmp ugt i32 %0, 60, !dbg !5459
  br i1 %4, label %11, label %5, !dbg !5461

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !5456, metadata !DIExpression(DW_OP_deref)), !dbg !5457
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !5462
  call void @llvm.dbg.value(metadata i32 %6, metadata !5455, metadata !DIExpression()), !dbg !5457
  %7 = load i8, i8* %3, align 1, !dbg !5463
  call void @llvm.dbg.value(metadata i8 %7, metadata !5456, metadata !DIExpression()), !dbg !5457
  %8 = zext i8 %7 to i32, !dbg !5464
  store i32 %8, i32* %1, align 4, !dbg !5465
  %9 = icmp slt i32 %6, 0, !dbg !5466
  %10 = select i1 %9, i32 -3, i32 0, !dbg !5466
  br label %11, !dbg !5467

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !5457
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !5468
  ret i32 %12, !dbg !5468
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #3 !dbg !5469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5475, metadata !DIExpression()), !dbg !5476
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !5477
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5479
  %4 = load i8, i8* %3, align 4, !dbg !5479, !range !1556
  %5 = icmp eq i8 %4, 0, !dbg !5479
  br i1 %5, label %6, label %12, !dbg !5480

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5481
  br i1 %7, label %9, label %8, !dbg !5483

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 noundef %0) #16, !dbg !5484
  br label %12, !dbg !5486

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !5487
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #16, !dbg !5488
  store i8 1, i8* %3, align 4, !dbg !5489
  br label %12, !dbg !5490

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !5476
  ret i32 %13, !dbg !5491
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !5492 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5496, metadata !DIExpression()), !dbg !5497
  %2 = icmp ult i32 %0, 5, !dbg !5498
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !5500
  ret i1 %4, !dbg !5501
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !5502 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5504, metadata !DIExpression()), !dbg !5505
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5506
  br i1 %2, label %4, label %3, !dbg !5508

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 noundef %0) #16, !dbg !5509
  br label %14, !dbg !5511

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !5512
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !5514
  %7 = load i32, i32* %6, align 4, !dbg !5514
  %8 = icmp eq i32 %7, 0, !dbg !5515
  br i1 %8, label %10, label %9, !dbg !5516

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.26, i32 0, i32 0), i32 noundef %0) #16, !dbg !5517
  br label %14, !dbg !5519

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !5520
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #16, !dbg !5521
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5522
  store i8 0, i8* %13, align 4, !dbg !5523
  br label %14, !dbg !5524

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !5505
  ret i32 %15, !dbg !5525
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5526 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5531, metadata !DIExpression()), !dbg !5533
  call void @llvm.dbg.value(metadata i32* %1, metadata !5532, metadata !DIExpression()), !dbg !5533
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !5534

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5535
  %5 = icmp eq i32 %4, 1, !dbg !5539
  br i1 %5, label %7, label %6, !dbg !5540

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #16, !dbg !5541
  br label %7, !dbg !5543

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #16, !dbg !5544
  store i32 %8, i32* %1, align 4, !dbg !5545
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5546
  br label %25, !dbg !5547

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5548
  %11 = icmp eq i32 %10, 1, !dbg !5552
  br i1 %11, label %13, label %12, !dbg !5553

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #16, !dbg !5554
  br label %13, !dbg !5556

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #16, !dbg !5557
  %15 = tail call i32 @top_mcu_freq_get() #16, !dbg !5558
  %16 = udiv i32 %15, 1000000, !dbg !5559
  %17 = udiv i32 %14, %16, !dbg !5560
  store i32 %17, i32* %1, align 4, !dbg !5561
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5562
  br label %25, !dbg !5563

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5564
  %20 = icmp eq i32 %19, 1, !dbg !5568
  br i1 %20, label %22, label %21, !dbg !5569

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #16, !dbg !5570
  br label %22, !dbg !5572

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #16, !dbg !5573
  store i32 %23, i32* %1, align 4, !dbg !5574
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5575
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %0) #16, !dbg !5576
  br label %25, !dbg !5578

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !5533
  ret i32 %26, !dbg !5579
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #5 !dbg !5580 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5584, metadata !DIExpression()), !dbg !5587
  call void @llvm.dbg.value(metadata i32 %1, metadata !5585, metadata !DIExpression()), !dbg !5587
  call void @llvm.dbg.value(metadata i32* %2, metadata !5586, metadata !DIExpression()), !dbg !5587
  %4 = icmp eq i32* %2, null, !dbg !5588
  br i1 %4, label %7, label %5, !dbg !5590

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !5591
  store i32 %6, i32* %2, align 4, !dbg !5591
  br label %7, !dbg !5593

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !5587
  ret i32 %8, !dbg !5594
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5600, metadata !DIExpression()), !dbg !5602
  call void @llvm.dbg.value(metadata i32* %1, metadata !5601, metadata !DIExpression()), !dbg !5602
  %3 = icmp ugt i32 %0, 4, !dbg !5603
  br i1 %3, label %4, label %5, !dbg !5605

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.28, i32 0, i32 0), i32 noundef %0) #16, !dbg !5606
  br label %8, !dbg !5608

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5609
  %7 = load i32, i32* %6, align 4, !dbg !5609
  store i32 %7, i32* %1, align 4, !dbg !5610
  br label %8, !dbg !5611

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !5602
  ret i32 %9, !dbg !5612
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !5613 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5617, metadata !DIExpression()), !dbg !5620
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !5618, metadata !DIExpression()), !dbg !5620
  call void @llvm.dbg.value(metadata i8* %2, metadata !5619, metadata !DIExpression()), !dbg !5620
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5621
  br i1 %4, label %6, label %5, !dbg !5623

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.29, i32 0, i32 0), i32 noundef %0) #16, !dbg !5624
  br label %15, !dbg !5626

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5627
  %8 = load i8, i8* %7, align 4, !dbg !5627, !range !1556
  %9 = icmp eq i8 %8, 1, !dbg !5629
  br i1 %9, label %10, label %15, !dbg !5630

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !5631
  br i1 %11, label %15, label %12, !dbg !5633

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !5634
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !5635
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !5636
  store i8* %2, i8** %14, align 4, !dbg !5637
  br label %15, !dbg !5638

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5620
  ret i32 %16, !dbg !5639
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5645, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.value(metadata i32 %1, metadata !5646, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.value(metadata i32 %2, metadata !5647, metadata !DIExpression()), !dbg !5648
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5649
  br i1 %4, label %6, label %5, !dbg !5651

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.29, i32 0, i32 0), i32 noundef %0) #16, !dbg !5652
  br label %17, !dbg !5654

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5655
  %8 = load i8, i8* %7, align 4, !dbg !5655, !range !1556
  %9 = icmp eq i8 %8, 1, !dbg !5657
  br i1 %9, label %10, label %17, !dbg !5658

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !5659
  br i1 %11, label %17, label %12, !dbg !5661

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #14, !dbg !5662
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #14, !dbg !5663
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #14, !dbg !5664
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #16, !dbg !5665
  tail call void @TMR_Start(i32 noundef %0) #16, !dbg !5666
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5667
  store i32 1, i32* %16, align 4, !dbg !5668
  br label %17, !dbg !5669

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5648
  ret i32 %18, !dbg !5670
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #11 !dbg !5671 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5675, metadata !DIExpression()), !dbg !5676
  %2 = shl i32 %0, 5, !dbg !5677
  %3 = mul i32 %0, 7, !dbg !5678
  %4 = udiv i32 %3, 10, !dbg !5679
  %5 = add i32 %4, %2, !dbg !5680
  %6 = mul i32 %0, 6, !dbg !5681
  %7 = udiv i32 %6, 100, !dbg !5682
  %8 = add i32 %5, %7, !dbg !5683
  %9 = shl i32 %0, 3, !dbg !5684
  %10 = udiv i32 %9, 1000, !dbg !5685
  %11 = add i32 %8, %10, !dbg !5686
  ret i32 %11, !dbg !5687
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #11 !dbg !5688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5692, metadata !DIExpression()), !dbg !5693
  %2 = icmp eq i32 %0, 1, !dbg !5694
  ret i1 %2, !dbg !5695
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #11 !dbg !5696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5701, metadata !DIExpression()), !dbg !5702
  %2 = icmp eq i32 %0, 0, !dbg !5703
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !5704
  ret void ()* %3, !dbg !5705
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #3 !dbg !5706 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !5710
  %2 = icmp eq void (i8*)* %1, null, !dbg !5712
  br i1 %2, label %5, label %3, !dbg !5713

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !5714
  tail call void %1(i8* noundef %4) #16, !dbg !5716
  br label %5, !dbg !5717

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !5718
  ret void, !dbg !5719
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #3 !dbg !5720 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !5723
  %2 = icmp eq void (i8*)* %1, null, !dbg !5725
  br i1 %2, label %5, label %3, !dbg !5726

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !5727
  tail call void %1(i8* noundef %4) #16, !dbg !5729
  br label %5, !dbg !5730

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !5731
  ret void, !dbg !5732
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #3 !dbg !5733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5735, metadata !DIExpression()), !dbg !5736
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5737
  br i1 %2, label %4, label %3, !dbg !5739

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.29, i32 0, i32 0), i32 noundef %0) #16, !dbg !5740
  br label %6, !dbg !5742

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #16, !dbg !5743
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5744
  store i32 0, i32* %5, align 4, !dbg !5745
  br label %6, !dbg !5746

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !5736
  ret i32 %7, !dbg !5747
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #3 !dbg !5748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5752, metadata !DIExpression()), !dbg !5753
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5754
  %3 = icmp eq i32 %2, 1, !dbg !5756
  br i1 %3, label %5, label %4, !dbg !5757

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #16, !dbg !5758
  br label %5, !dbg !5760

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #16, !dbg !5761
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5762
  ret i32 0, !dbg !5763
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #3 !dbg !5764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5766, metadata !DIExpression()), !dbg !5767
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5768
  %3 = icmp eq i32 %2, 1, !dbg !5770
  br i1 %3, label %5, label %4, !dbg !5771

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #16, !dbg !5772
  br label %5, !dbg !5774

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #16, !dbg !5775
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5776
  ret i32 0, !dbg !5777
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !5778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5784, metadata !DIExpression()), !dbg !5786
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5785, metadata !DIExpression()), !dbg !5786
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5787
  br i1 %3, label %4, label %18, !dbg !5789

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5790
  %6 = load i8, i8* %5, align 4, !dbg !5790, !range !1556
  %7 = icmp eq i8 %6, 0, !dbg !5790
  br i1 %7, label %8, label %18, !dbg !5792

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !5793
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5794
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !5795
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5796
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !5797
  store i8 1, i8* %5, align 4, !dbg !5798
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5799, !range !5800
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !5801
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !5802
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5803
  %16 = icmp eq i32 %15, 0, !dbg !5805
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5786
  br label %18, !dbg !5786

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5786
  ret i32 %19, !dbg !5806
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #7 !dbg !5807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5813, metadata !DIExpression()), !dbg !5815
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5814, metadata !DIExpression()), !dbg !5815
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5816
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !5818
  br i1 %5, label %6, label %22, !dbg !5818

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5819
  %8 = load i32, i32* %7, align 4, !dbg !5819
  %9 = icmp ugt i32 %8, 12, !dbg !5821
  br i1 %9, label %22, label %10, !dbg !5822

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5823
  %12 = load i32, i32* %11, align 4, !dbg !5823
  %13 = icmp ugt i32 %12, 2, !dbg !5824
  br i1 %13, label %22, label %14, !dbg !5825

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5826
  %16 = load i32, i32* %15, align 4, !dbg !5826
  %17 = icmp ugt i32 %16, 1, !dbg !5827
  br i1 %17, label %22, label %18, !dbg !5828

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5829
  %20 = load i32, i32* %19, align 4, !dbg !5829
  %21 = icmp ult i32 %20, 4, !dbg !5830
  br label %22, !dbg !5831

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5815
  ret i1 %23, !dbg !5832
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #11 !dbg !5833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5837, metadata !DIExpression()), !dbg !5838
  %2 = icmp ne i32 %0, 0, !dbg !5839
  %3 = zext i1 %2 to i32, !dbg !5840
  ret i32 %3, !dbg !5841
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !5842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5846, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5847, metadata !DIExpression()), !dbg !5848
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5849
  br i1 %3, label %4, label %22, !dbg !5851

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5852
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5853
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5854
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !5855
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5856
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5857
  %11 = load i32, i32* %10, align 4, !dbg !5857
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !5858
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5859
  %14 = load i32, i32* %13, align 4, !dbg !5859
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !5860
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5861
  %17 = load i32, i32* %16, align 4, !dbg !5861
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !5862
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5863
  %20 = load i32, i32* %19, align 4, !dbg !5863
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !5864
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !5865
  br label %22, !dbg !5866

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5848
  ret i32 %23, !dbg !5867
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #11 !dbg !5868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5872, metadata !DIExpression()), !dbg !5877
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5873, metadata !DIExpression()), !dbg !5878
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5879
  %3 = load i32, i32* %2, align 4, !dbg !5879
  ret i32 %3, !dbg !5880
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #11 !dbg !5881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5885, metadata !DIExpression()), !dbg !5888
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5886, metadata !DIExpression()), !dbg !5889
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5890
  %3 = load i16, i16* %2, align 2, !dbg !5890
  ret i16 %3, !dbg !5891
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #11 !dbg !5892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5896, metadata !DIExpression()), !dbg !5899
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5897, metadata !DIExpression()), !dbg !5900
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5901
  %3 = load i16, i16* %2, align 2, !dbg !5901
  ret i16 %3, !dbg !5902
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #11 !dbg !5903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5907, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5908, metadata !DIExpression()), !dbg !5911
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5912
  %3 = load i16, i16* %2, align 2, !dbg !5912
  ret i16 %3, !dbg !5913
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !5914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5918, metadata !DIExpression()), !dbg !5919
  %2 = icmp ult i32 %0, 2, !dbg !5920
  ret i1 %2, !dbg !5921
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !5922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5926, metadata !DIExpression()), !dbg !5927
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5928
  br i1 %2, label %3, label %10, !dbg !5930

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5931
  %5 = load i8, i8* %4, align 4, !dbg !5931, !range !1556
  %6 = icmp eq i8 %5, 0, !dbg !5933
  br i1 %6, label %10, label %7, !dbg !5934

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !5935
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5936, !range !5800
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !5937
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !5938
  br label %10, !dbg !5939

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5927
  ret i32 %11, !dbg !5940
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5945, metadata !DIExpression()), !dbg !5948
  call void @llvm.dbg.value(metadata i8 %1, metadata !5946, metadata !DIExpression()), !dbg !5948
  %3 = icmp eq i32 %0, 0, !dbg !5949
  %4 = icmp eq i32 %0, 1, !dbg !5949
  %5 = select i1 %4, i32 1, i32 2, !dbg !5949
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5949
  call void @llvm.dbg.value(metadata i32 %6, metadata !5947, metadata !DIExpression()), !dbg !5948
  %7 = icmp eq i32 %6, 2, !dbg !5950
  br i1 %7, label %9, label %8, !dbg !5952

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !5953
  br label %9, !dbg !5955

9:                                                ; preds = %2, %8
  ret void, !dbg !5956
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5961, metadata !DIExpression()), !dbg !5966
  call void @llvm.dbg.value(metadata i8* %1, metadata !5962, metadata !DIExpression()), !dbg !5966
  call void @llvm.dbg.value(metadata i32 %2, metadata !5963, metadata !DIExpression()), !dbg !5966
  %4 = icmp eq i32 %0, 0, !dbg !5967
  %5 = icmp eq i32 %0, 1, !dbg !5967
  %6 = select i1 %5, i32 1, i32 2, !dbg !5967
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5967
  call void @llvm.dbg.value(metadata i32 %7, metadata !5964, metadata !DIExpression()), !dbg !5966
  %8 = icmp eq i8* %1, null, !dbg !5968
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5970
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5970
  call void @llvm.dbg.value(metadata i32 0, metadata !5965, metadata !DIExpression()), !dbg !5966
  br i1 %12, label %19, label %13, !dbg !5970

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5965, metadata !DIExpression()), !dbg !5966
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5971
  %16 = load i8, i8* %15, align 1, !dbg !5971
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !5977
  %17 = add nuw i32 %14, 1, !dbg !5978
  call void @llvm.dbg.value(metadata i32 %17, metadata !5965, metadata !DIExpression()), !dbg !5966
  %18 = icmp eq i32 %17, %2, !dbg !5979
  br i1 %18, label %19, label %13, !dbg !5980, !llvm.loop !5981

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5966
  ret i32 %20, !dbg !5983
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5984 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5986, metadata !DIExpression()), !dbg !5992
  call void @llvm.dbg.value(metadata i8* %1, metadata !5987, metadata !DIExpression()), !dbg !5992
  call void @llvm.dbg.value(metadata i32 %2, metadata !5988, metadata !DIExpression()), !dbg !5992
  %5 = bitcast i32* %4 to i8*, !dbg !5993
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5993
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5994
  br i1 %6, label %7, label %24, !dbg !5996

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5997
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5999
  br i1 %10, label %24, label %11, !dbg !5999

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !6000
  %13 = load i8, i8* %12, align 4, !dbg !6000, !range !1556
  %14 = icmp eq i8 %13, 0, !dbg !6000
  br i1 %14, label %24, label %15, !dbg !6002

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6003, !range !5800
  call void @llvm.dbg.value(metadata i32* %4, metadata !5989, metadata !DIExpression(DW_OP_deref)), !dbg !5992
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !6004
  %17 = load i32, i32* %4, align 4, !dbg !6005
  call void @llvm.dbg.value(metadata i32 %17, metadata !5989, metadata !DIExpression()), !dbg !5992
  %18 = icmp ult i32 %17, %2, !dbg !6007
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5990, metadata !DIExpression()), !dbg !5992
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !6008
  %20 = load i32, i32* %4, align 4, !dbg !6009
  call void @llvm.dbg.value(metadata i32 %20, metadata !5989, metadata !DIExpression()), !dbg !5992
  %21 = icmp eq i32 %19, %20, !dbg !6011
  br i1 %21, label %22, label %24, !dbg !6012

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !6013, !range !6015
  call void @llvm.dbg.value(metadata i32 %23, metadata !5991, metadata !DIExpression()), !dbg !5992
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !6016
  br label %24, !dbg !6017

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5992
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6018
  ret i32 %25, !dbg !6018
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #11 !dbg !6019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6023, metadata !DIExpression()), !dbg !6026
  call void @llvm.dbg.value(metadata i1 %1, metadata !6024, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !6026
  %3 = icmp eq i32 %0, 0, !dbg !6027
  %4 = select i1 %1, i32 15, i32 14, !dbg !6029
  %5 = select i1 %1, i32 17, i32 16, !dbg !6029
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !6029
  call void @llvm.dbg.value(metadata i32 %6, metadata !6025, metadata !DIExpression()), !dbg !6026
  ret i32 %6, !dbg !6030
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !6031 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6035, metadata !DIExpression()), !dbg !6037
  %2 = icmp eq i32 %0, 0, !dbg !6038
  %3 = icmp eq i32 %0, 1, !dbg !6038
  %4 = select i1 %3, i32 1, i32 2, !dbg !6038
  %5 = select i1 %2, i32 0, i32 %4, !dbg !6038
  call void @llvm.dbg.value(metadata i32 %5, metadata !6036, metadata !DIExpression()), !dbg !6037
  %6 = icmp ult i32 %5, 2, !dbg !6039
  br i1 %6, label %7, label %9, !dbg !6041

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !6042
  br label %9, !dbg !6044

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !6045
  ret i8 %10, !dbg !6046
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !6047 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6051, metadata !DIExpression()), !dbg !6053
  %2 = icmp eq i32 %0, 0, !dbg !6054
  %3 = icmp eq i32 %0, 1, !dbg !6054
  %4 = select i1 %3, i32 1, i32 2, !dbg !6054
  %5 = select i1 %2, i32 0, i32 %4, !dbg !6054
  call void @llvm.dbg.value(metadata i32 %5, metadata !6052, metadata !DIExpression()), !dbg !6053
  %6 = icmp ult i32 %5, 2, !dbg !6055
  br i1 %6, label %7, label %9, !dbg !6057

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !6058
  br label %9, !dbg !6060

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !6061
  ret i32 %10, !dbg !6062
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !6063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6067, metadata !DIExpression()), !dbg !6072
  call void @llvm.dbg.value(metadata i8* %1, metadata !6068, metadata !DIExpression()), !dbg !6072
  call void @llvm.dbg.value(metadata i32 %2, metadata !6069, metadata !DIExpression()), !dbg !6072
  %4 = icmp eq i32 %0, 0, !dbg !6073
  %5 = icmp eq i32 %0, 1, !dbg !6073
  %6 = select i1 %5, i32 1, i32 2, !dbg !6073
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6073
  call void @llvm.dbg.value(metadata i32 %7, metadata !6070, metadata !DIExpression()), !dbg !6072
  %8 = icmp eq i8* %1, null, !dbg !6074
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !6076
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !6076
  call void @llvm.dbg.value(metadata i32 0, metadata !6071, metadata !DIExpression()), !dbg !6072
  br i1 %12, label %19, label %13, !dbg !6076

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !6071, metadata !DIExpression()), !dbg !6072
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !6077
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !6083
  store i8 %15, i8* %16, align 1, !dbg !6084
  %17 = add nuw i32 %14, 1, !dbg !6085
  call void @llvm.dbg.value(metadata i32 %17, metadata !6071, metadata !DIExpression()), !dbg !6072
  %18 = icmp eq i32 %17, %2, !dbg !6086
  br i1 %18, label %19, label %13, !dbg !6087, !llvm.loop !6088

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !6072
  ret i32 %20, !dbg !6090
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !6091 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6093, metadata !DIExpression()), !dbg !6099
  call void @llvm.dbg.value(metadata i8* %1, metadata !6094, metadata !DIExpression()), !dbg !6099
  call void @llvm.dbg.value(metadata i32 %2, metadata !6095, metadata !DIExpression()), !dbg !6099
  %5 = bitcast i32* %4 to i8*, !dbg !6100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6100
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6101
  br i1 %6, label %7, label %20, !dbg !6103

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !6104
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !6106
  br i1 %10, label %20, label %11, !dbg !6106

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6107, !range !5800
  call void @llvm.dbg.value(metadata i32* %4, metadata !6096, metadata !DIExpression(DW_OP_deref)), !dbg !6099
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !6108
  %13 = load i32, i32* %4, align 4, !dbg !6109
  call void @llvm.dbg.value(metadata i32 %13, metadata !6096, metadata !DIExpression()), !dbg !6099
  %14 = icmp ult i32 %13, %2, !dbg !6111
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !6097, metadata !DIExpression()), !dbg !6099
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !6112
  %16 = load i32, i32* %4, align 4, !dbg !6113
  call void @llvm.dbg.value(metadata i32 %16, metadata !6096, metadata !DIExpression()), !dbg !6099
  %17 = icmp eq i32 %15, %16, !dbg !6115
  br i1 %17, label %18, label %20, !dbg !6116

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !6117, !range !6015
  call void @llvm.dbg.value(metadata i32 %19, metadata !6098, metadata !DIExpression()), !dbg !6099
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !6119
  br label %20, !dbg !6120

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !6099
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6121
  ret i32 %21, !dbg !6121
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !6122 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6124, metadata !DIExpression()), !dbg !6126
  %3 = bitcast i32* %2 to i8*, !dbg !6127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6127
  call void @llvm.dbg.value(metadata i32 0, metadata !6125, metadata !DIExpression()), !dbg !6126
  store i32 0, i32* %2, align 4, !dbg !6128
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6129
  br i1 %4, label %5, label %8, !dbg !6131

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6132, !range !5800
  call void @llvm.dbg.value(metadata i32* %2, metadata !6125, metadata !DIExpression(DW_OP_deref)), !dbg !6126
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !6133
  %7 = load i32, i32* %2, align 4, !dbg !6134
  call void @llvm.dbg.value(metadata i32 %7, metadata !6125, metadata !DIExpression()), !dbg !6126
  br label %8, !dbg !6135

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !6126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6136
  ret i32 %9, !dbg !6136
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !6137 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6139, metadata !DIExpression()), !dbg !6141
  %3 = bitcast i32* %2 to i8*, !dbg !6142
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6142
  call void @llvm.dbg.value(metadata i32 0, metadata !6140, metadata !DIExpression()), !dbg !6141
  store i32 0, i32* %2, align 4, !dbg !6143
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6144
  br i1 %4, label %5, label %8, !dbg !6146

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6147, !range !5800
  call void @llvm.dbg.value(metadata i32* %2, metadata !6140, metadata !DIExpression(DW_OP_deref)), !dbg !6141
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !6148
  %7 = load i32, i32* %2, align 4, !dbg !6149
  call void @llvm.dbg.value(metadata i32 %7, metadata !6140, metadata !DIExpression()), !dbg !6141
  br label %8, !dbg !6150

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !6141
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6151
  ret i32 %9, !dbg !6151
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !6152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6156, metadata !DIExpression()), !dbg !6160
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !6157, metadata !DIExpression()), !dbg !6160
  call void @llvm.dbg.value(metadata i8* %2, metadata !6158, metadata !DIExpression()), !dbg !6160
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6161
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !6163
  br i1 %6, label %7, label %18, !dbg !6163

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !6164
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !6165
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !6166
  store i8* %2, i8** %9, align 4, !dbg !6167
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !6168
  store i8 1, i8* %10, align 4, !dbg !6169
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6170
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !6171
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !6172
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !6173
  %13 = icmp eq i32 %11, 0, !dbg !6174
  br i1 %13, label %14, label %15, !dbg !6176

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !6177
  br label %16, !dbg !6179

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !6180
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !6182, !range !6015
  call void @llvm.dbg.value(metadata i32 %17, metadata !6159, metadata !DIExpression()), !dbg !6160
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !6183
  br label %18, !dbg !6184

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !6160
  ret i32 %19, !dbg !6185
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #11 !dbg !636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !641, metadata !DIExpression()), !dbg !6186
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !6187
  %3 = load void ()*, void ()** %2, align 4, !dbg !6187
  ret void ()* %3, !dbg !6188
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !6189 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !6195, !range !1556
  %2 = icmp eq i8 %1, 0, !dbg !6195
  br i1 %2, label %8, label %3, !dbg !6196

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !6197
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !6199
  br i1 %5, label %8, label %6, !dbg !6200

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !6201
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !6203
  br label %8, !dbg !6204

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !6205, !range !5800
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !6206
  ret void, !dbg !6207
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !6208 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !6213, !range !1556
  %2 = icmp eq i8 %1, 0, !dbg !6213
  br i1 %2, label %8, label %3, !dbg !6214

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !6215
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !6217
  br i1 %5, label %8, label %6, !dbg !6218

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !6219
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !6221
  br label %8, !dbg !6222

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !6223, !range !5800
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !6224
  ret void, !dbg !6225
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !6226 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6230, metadata !DIExpression()), !dbg !6237
  call void @llvm.dbg.value(metadata i1 %1, metadata !6231, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !6237
  %5 = bitcast i32* %3 to i8*, !dbg !6238
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6238
  %6 = bitcast i32* %4 to i8*, !dbg !6238
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !6238
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !6234, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !6237
  br i1 %1, label %7, label %12, !dbg !6239

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !6234, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !6237
  call void @llvm.dbg.value(metadata i32* %3, metadata !6232, metadata !DIExpression(DW_OP_deref)), !dbg !6237
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !6240
  %8 = load i32, i32* %3, align 4, !dbg !6243
  call void @llvm.dbg.value(metadata i32 %8, metadata !6232, metadata !DIExpression()), !dbg !6237
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !6245
  %10 = load i32, i32* %9, align 4, !dbg !6245
  %11 = icmp ult i32 %8, %10, !dbg !6246
  br i1 %11, label %22, label %20, !dbg !6247

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !6233, metadata !DIExpression(DW_OP_deref)), !dbg !6237
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !6248
  %13 = load i32, i32* %4, align 4, !dbg !6250
  call void @llvm.dbg.value(metadata i32 %13, metadata !6233, metadata !DIExpression()), !dbg !6237
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !6252
  %15 = load i32, i32* %14, align 4, !dbg !6252
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !6253
  %17 = load i32, i32* %16, align 4, !dbg !6253
  %18 = sub i32 %15, %17, !dbg !6254
  %19 = icmp ult i32 %13, %18, !dbg !6255
  br i1 %19, label %22, label %20, !dbg !6256

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !6257, !range !6015
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !6257
  br label %22, !dbg !6258

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !6258
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6258
  ret void, !dbg !6258
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !6259 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !6264, !range !1556
  %2 = icmp eq i8 %1, 0, !dbg !6264
  br i1 %2, label %11, label %3, !dbg !6265

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !6266
  %5 = icmp eq i32 %4, 0, !dbg !6267
  br i1 %5, label %11, label %6, !dbg !6268

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !6269
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !6271
  br i1 %8, label %11, label %9, !dbg !6272

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !6273
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !6275
  br label %11, !dbg !6276

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !6277, !range !5800
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !6278
  ret void, !dbg !6279
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !6280 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !6285, !range !1556
  %2 = icmp eq i8 %1, 0, !dbg !6285
  br i1 %2, label %11, label %3, !dbg !6286

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !6287
  %5 = icmp eq i32 %4, 0, !dbg !6288
  br i1 %5, label %11, label %6, !dbg !6289

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !6290
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !6292
  br i1 %8, label %11, label %9, !dbg !6293

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !6294
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !6296
  br label %11, !dbg !6297

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !6298, !range !5800
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !6299
  ret void, !dbg !6300
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6305, metadata !DIExpression()), !dbg !6307
  call void @llvm.dbg.value(metadata i32 %1, metadata !6306, metadata !DIExpression()), !dbg !6307
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6308
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !6310
  br i1 %5, label %6, label %10, !dbg !6310

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !6311
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !6312
  store i32 %1, i32* %8, align 4, !dbg !6313
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !6314
  br label %10, !dbg !6315

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !6307
  ret i32 %11, !dbg !6316
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !6317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6323, metadata !DIExpression()), !dbg !6325
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !6324, metadata !DIExpression()), !dbg !6325
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6326
  br i1 %3, label %4, label %28, !dbg !6328

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !6329
  br i1 %5, label %6, label %28, !dbg !6331

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !6332
  store i8 1, i8* %7, align 4, !dbg !6333
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !6334
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !6335
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !6336
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !6337
  tail call void @DMA_Init() #16, !dbg !6338
  tail call void @DMA_Vfifo_init() #16, !dbg !6339
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6340
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !6341
  %14 = load i8*, i8** %13, align 4, !dbg !6341
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !6342
  %16 = load i32, i32* %15, align 4, !dbg !6342
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !6343
  %18 = load i32, i32* %17, align 4, !dbg !6343
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !6344
  %20 = load i32, i32* %19, align 4, !dbg !6344
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !6345
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !6346
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !6347
  %23 = load i8*, i8** %22, align 4, !dbg !6347
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !6348
  %25 = load i32, i32* %24, align 4, !dbg !6348
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !6349
  %27 = load i32, i32* %26, align 4, !dbg !6349
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !6350
  br label %28, !dbg !6351

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !6325
  ret i32 %29, !dbg !6352
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #7 !dbg !6353 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !6357, metadata !DIExpression()), !dbg !6358
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !6359
  br i1 %2, label %27, label %3, !dbg !6361

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !6362
  %5 = load i8*, i8** %4, align 4, !dbg !6362
  %6 = icmp eq i8* %5, null, !dbg !6364
  br i1 %6, label %27, label %7, !dbg !6365

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !6366
  %9 = load i32, i32* %8, align 4, !dbg !6366
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !6368
  %11 = load i32, i32* %10, align 4, !dbg !6368
  %12 = icmp ult i32 %9, %11, !dbg !6369
  br i1 %12, label %27, label %13, !dbg !6370

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !6371
  %15 = load i32, i32* %14, align 4, !dbg !6371
  %16 = icmp ult i32 %9, %15, !dbg !6373
  br i1 %16, label %27, label %17, !dbg !6374

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !6375
  %19 = load i8*, i8** %18, align 4, !dbg !6375
  %20 = icmp eq i8* %19, null, !dbg !6377
  br i1 %20, label %27, label %21, !dbg !6378

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !6379
  %23 = load i32, i32* %22, align 4, !dbg !6379
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !6381
  %25 = load i32, i32* %24, align 4, !dbg !6381
  %26 = icmp uge i32 %23, %25, !dbg !6382
  br label %27, !dbg !6383

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !6358
  ret i1 %28, !dbg !6384
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !6385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6387, metadata !DIExpression()), !dbg !6389
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !6390
  %3 = udiv i32 %2, 1000000, !dbg !6391
  call void @llvm.dbg.value(metadata i32 %3, metadata !6388, metadata !DIExpression()), !dbg !6389
  %4 = mul i32 %3, %0, !dbg !6392
  ret i32 %4, !dbg !6393
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !6394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6396, metadata !DIExpression()), !dbg !6398
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6399
  br i1 %2, label %3, label %8, !dbg !6401

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !6402
  %5 = icmp eq i32 %0, 1, !dbg !6402
  %6 = select i1 %5, i32 1, i32 2, !dbg !6402
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6402
  call void @llvm.dbg.value(metadata i32 %7, metadata !6397, metadata !DIExpression()), !dbg !6398
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !6403
  br label %8, !dbg !6404

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !6398
  ret i32 %9, !dbg !6405
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !6406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6410, metadata !DIExpression()), !dbg !6415
  call void @llvm.dbg.value(metadata i8 %1, metadata !6411, metadata !DIExpression()), !dbg !6415
  call void @llvm.dbg.value(metadata i8 %2, metadata !6412, metadata !DIExpression()), !dbg !6415
  call void @llvm.dbg.value(metadata i8 %3, metadata !6413, metadata !DIExpression()), !dbg !6415
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6416
  br i1 %5, label %6, label %11, !dbg !6418

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !6419
  %8 = icmp eq i32 %0, 1, !dbg !6419
  %9 = select i1 %8, i32 1, i32 2, !dbg !6419
  %10 = select i1 %7, i32 0, i32 %9, !dbg !6419
  call void @llvm.dbg.value(metadata i32 %10, metadata !6414, metadata !DIExpression()), !dbg !6415
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !6420
  br label %11, !dbg !6421

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !6415
  ret i32 %12, !dbg !6422
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !6423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6425, metadata !DIExpression()), !dbg !6427
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6428
  br i1 %2, label %3, label %8, !dbg !6430

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !6431
  %5 = icmp eq i32 %0, 1, !dbg !6431
  %6 = select i1 %5, i32 1, i32 2, !dbg !6431
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6431
  call void @llvm.dbg.value(metadata i32 %7, metadata !6426, metadata !DIExpression()), !dbg !6427
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !6432
  br label %8, !dbg !6433

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !6427
  ret i32 %9, !dbg !6434
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6435 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6439, metadata !DIExpression()), !dbg !6441
  call void @llvm.dbg.value(metadata i32 %1, metadata !6440, metadata !DIExpression()), !dbg !6441
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6442
  br i1 %3, label %4, label %8, !dbg !6444

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !6445
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !6447
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !6447
  br label %8, !dbg !6448

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !6441
  ret i32 %9, !dbg !6448
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !6449 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6453, metadata !DIExpression()), !dbg !6454
  %2 = trunc i32 %0 to i8, !dbg !6455
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #16, !dbg !6456
  ret i32 %0, !dbg !6457
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !6458 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !6459
  tail call fastcc void @prvSetupHardware() #14, !dbg !6460
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !6461, !srcloc !6464
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !6465, !srcloc !6468
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !6469
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.31, i32 0, i32 0)) #16, !dbg !6470
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !6471
  tail call fastcc void @adc_get_data_polling_example() #14, !dbg !6472
  br label %4, !dbg !6473

4:                                                ; preds = %4, %0
  br label %4, !dbg !6474, !llvm.loop !6477
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !6480 {
  tail call void @top_xtal_init() #16, !dbg !6481
  ret void, !dbg !6482
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !6483 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !6484
  ret void, !dbg !6485
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @adc_get_data_polling_example() unnamed_addr #3 !dbg !6486 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !6491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15, !dbg !6491
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.32, i32 0, i32 0)) #16, !dbg !6492
  %4 = tail call i32 @hal_adc_init() #16, !dbg !6493
  call void @llvm.dbg.value(metadata i32 0, metadata !6490, metadata !DIExpression()), !dbg !6494
  br label %5, !dbg !6495

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %15, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6490, metadata !DIExpression()), !dbg !6494
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.33, i32 0, i32 0), i32 noundef %6) #16, !dbg !6497
  call void @llvm.dbg.value(metadata i32* %1, metadata !6488, metadata !DIExpression(DW_OP_deref)), !dbg !6494
  %8 = call i32 @hal_adc_get_data_polling(i32 noundef 0, i32* noundef nonnull %1) #16, !dbg !6500
  %9 = load i32, i32* %1, align 4, !dbg !6501
  call void @llvm.dbg.value(metadata i32 %9, metadata !6488, metadata !DIExpression()), !dbg !6494
  %10 = call fastcc i32 @adc_raw_to_voltage(i32 noundef %9) #14, !dbg !6502
  call void @llvm.dbg.value(metadata i32 %10, metadata !6489, metadata !DIExpression()), !dbg !6494
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.34, i32 0, i32 0)) #16, !dbg !6503
  %12 = load i32, i32* %1, align 4, !dbg !6504
  call void @llvm.dbg.value(metadata i32 %12, metadata !6488, metadata !DIExpression()), !dbg !6494
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 noundef 0, i32 noundef %12, i32 noundef %10) #16, !dbg !6505
  %14 = call i32 @hal_gpt_delay_ms(i32 noundef 1000) #16, !dbg !6506
  %15 = add nuw nsw i32 %6, 1, !dbg !6507
  call void @llvm.dbg.value(metadata i32 %15, metadata !6490, metadata !DIExpression()), !dbg !6494
  %16 = icmp eq i32 %15, 20, !dbg !6508
  br i1 %16, label %17, label %5, !dbg !6495, !llvm.loop !6509

17:                                               ; preds = %5
  %18 = call i32 @hal_adc_deinit() #16, !dbg !6511
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)) #16, !dbg !6512
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15, !dbg !6513
  ret void, !dbg !6513
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @adc_raw_to_voltage(i32 noundef %0) unnamed_addr #11 !dbg !6514 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6516, metadata !DIExpression()), !dbg !6518
  %2 = mul i32 %0, 2500, !dbg !6519
  %3 = udiv i32 %2, 4095, !dbg !6520
  call void @llvm.dbg.value(metadata i32 %3, metadata !6517, metadata !DIExpression()), !dbg !6518
  ret i32 %3, !dbg !6521
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !6522 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !6532
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !6532
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !6524, metadata !DIExpression()), !dbg !6533
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #16, !dbg !6534
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #16, !dbg !6535
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !6536
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !6537
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !6538
  store i32 9, i32* %7, align 4, !dbg !6539
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !6540
  store i32 3, i32* %8, align 4, !dbg !6541
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !6542
  store i32 0, i32* %9, align 4, !dbg !6543
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !6544
  store i32 0, i32* %10, align 4, !dbg !6545
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !6546
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !6547
  ret void, !dbg !6547
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #1 !dbg !6548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6550, metadata !DIExpression()), !dbg !6552
  %2 = add i32 %0, -1, !dbg !6553
  %3 = icmp ugt i32 %2, 16777215, !dbg !6555
  br i1 %3, label %8, label %4, !dbg !6556

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6557
  call void @llvm.dbg.value(metadata i32 %5, metadata !6551, metadata !DIExpression()), !dbg !6552
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6558
  %7 = and i32 %6, -4, !dbg !6558
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6558
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !6559
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !6560
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6561
  br label %8, !dbg !6562

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !6552
  ret i32 %9, !dbg !6563
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #1 !dbg !6564 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !6565
  ret void, !dbg !6566
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #6 !dbg !6567 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !6568
  ret i32 %1, !dbg !6569
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !6570 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !6571
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !6572
  ret void, !dbg !6573
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #1 !dbg !6574 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6575
  %2 = or i32 %1, 15728640, !dbg !6575
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6575
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !6576
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6577
  %4 = or i32 %3, 458752, !dbg !6577
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6577
  ret void, !dbg !6578
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #1 !dbg !6579 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6580
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6581
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6582
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !6583
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !6584
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !6585
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6586
  ret void, !dbg !6587
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #11 !dbg !6588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6590, metadata !DIExpression()), !dbg !6591
  ret i32 0, !dbg !6592
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #11 !dbg !6593 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6643, metadata !DIExpression()), !dbg !6645
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6644, metadata !DIExpression()), !dbg !6645
  ret i32 0, !dbg !6646
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #11 !dbg !6647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6649, metadata !DIExpression()), !dbg !6650
  ret i32 1, !dbg !6651
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6656, metadata !DIExpression()), !dbg !6659
  call void @llvm.dbg.value(metadata i32 %1, metadata !6657, metadata !DIExpression()), !dbg !6659
  call void @llvm.dbg.value(metadata i32 %2, metadata !6658, metadata !DIExpression()), !dbg !6659
  ret i32 0, !dbg !6660
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6661 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6665, metadata !DIExpression()), !dbg !6668
  call void @llvm.dbg.value(metadata i32 %1, metadata !6666, metadata !DIExpression()), !dbg !6668
  call void @llvm.dbg.value(metadata i32 %2, metadata !6667, metadata !DIExpression()), !dbg !6668
  ret i32 -1, !dbg !6669
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6674, metadata !DIExpression()), !dbg !6677
  call void @llvm.dbg.value(metadata i8* %1, metadata !6675, metadata !DIExpression()), !dbg !6677
  call void @llvm.dbg.value(metadata i32 %2, metadata !6676, metadata !DIExpression()), !dbg !6677
  ret i32 0, !dbg !6678
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !6679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6681, metadata !DIExpression()), !dbg !6685
  call void @llvm.dbg.value(metadata i8* %1, metadata !6682, metadata !DIExpression()), !dbg !6685
  call void @llvm.dbg.value(metadata i32 %2, metadata !6683, metadata !DIExpression()), !dbg !6685
  call void @llvm.dbg.value(metadata i32 0, metadata !6684, metadata !DIExpression()), !dbg !6685
  %4 = icmp sgt i32 %2, 0, !dbg !6686
  br i1 %4, label %5, label %14, !dbg !6689

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6684, metadata !DIExpression()), !dbg !6685
  call void @llvm.dbg.value(metadata i8* %7, metadata !6682, metadata !DIExpression()), !dbg !6685
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6690
  call void @llvm.dbg.value(metadata i8* %8, metadata !6682, metadata !DIExpression()), !dbg !6685
  %9 = load i8, i8* %7, align 1, !dbg !6692
  %10 = zext i8 %9 to i32, !dbg !6692
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !6693
  %12 = add nuw nsw i32 %6, 1, !dbg !6694
  call void @llvm.dbg.value(metadata i32 %12, metadata !6684, metadata !DIExpression()), !dbg !6685
  %13 = icmp eq i32 %12, %2, !dbg !6686
  br i1 %13, label %14, label %5, !dbg !6689, !llvm.loop !6695

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6697
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !748 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !951, metadata !DIExpression()), !dbg !6698
  call void @llvm.dbg.value(metadata i32 %1, metadata !952, metadata !DIExpression()), !dbg !6698
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !6699, !srcloc !6700
  call void @llvm.dbg.value(metadata i8* %3, metadata !954, metadata !DIExpression()), !dbg !6698
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6701
  %5 = icmp eq i8* %4, null, !dbg !6703
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6704
  call void @llvm.dbg.value(metadata i8* %6, metadata !953, metadata !DIExpression()), !dbg !6698
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6705
  %8 = icmp ult i8* %3, %7, !dbg !6707
  %9 = xor i1 %8, true, !dbg !6708
  %10 = or i1 %5, %9, !dbg !6708
  br i1 %10, label %11, label %13, !dbg !6708

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6709
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6708
  br label %13, !dbg !6708

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6709
  ret i8* %14, !dbg !6708
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !6710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6712, metadata !DIExpression()), !dbg !6713
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #16, !dbg !6714
  br label %3, !dbg !6715

3:                                                ; preds = %1, %3
  br label %3, !dbg !6715, !llvm.loop !6716
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6722, metadata !DIExpression()), !dbg !6724
  call void @llvm.dbg.value(metadata i32 %1, metadata !6723, metadata !DIExpression()), !dbg !6724
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.42, i32 0, i32 0), i32 noundef %1) #16, !dbg !6725
  ret i32 -1, !dbg !6726
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !6727 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.43, i32 0, i32 0)) #16, !dbg !6732
  ret i32 0, !dbg !6733
}

attributes #0 = { nofree noinline norecurse noreturn nosync nounwind optsize readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { argmemonly nofree nosync nounwind willreturn }
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind optsize "no-builtins" }
attributes #17 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!2, !200, !969, !978, !1059, !1104, !1138, !224, !237, !1141, !257, !343, !426, !1143, !527, !579, !1214, !688, !946, !957}
!llvm.ident = !{!1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218, !1218}
!llvm.module.flags = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DMA_LISR_FUNC", scope: !2, file: !3, line: 56, type: !197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/dma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!4 = !{!5, !34, !41, !46, !51, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!9 = !DIEnumerator(name: "DMA_I2C1_TX", value: 2)
!10 = !DIEnumerator(name: "DMA_I2C1_RX", value: 3)
!11 = !DIEnumerator(name: "DMA_I2C2_TX", value: 4)
!12 = !DIEnumerator(name: "DMA_I2C2_RX", value: 5)
!13 = !DIEnumerator(name: "DMA_I2S_TX", value: 6)
!14 = !DIEnumerator(name: "DMA_I2S_RX", value: 7)
!15 = !DIEnumerator(name: "DMA_UART1TX", value: 8)
!16 = !DIEnumerator(name: "DMA_UART1RX", value: 9)
!17 = !DIEnumerator(name: "DMA_UART2TX", value: 10)
!18 = !DIEnumerator(name: "DMA_UART2RX", value: 11)
!19 = !DIEnumerator(name: "DMA_BTIF_TX", value: 12)
!20 = !DIEnumerator(name: "DMA_BTIF_RX", value: 13)
!21 = !DIEnumerator(name: "DMA_EP2I_TX", value: 14)
!22 = !DIEnumerator(name: "DMA_EP2O_RX", value: 15)
!23 = !DIEnumerator(name: "DMA_EP3I_TX", value: 16)
!24 = !DIEnumerator(name: "DMA_EP3O_RX", value: 17)
!25 = !DIEnumerator(name: "DMA_EP4IH_TX", value: 18)
!26 = !DIEnumerator(name: "DMA_EP4IV_TX", value: 19)
!27 = !DIEnumerator(name: "DMA_EP4O_RX", value: 20)
!28 = !DIEnumerator(name: "DMA_ADC_RX", value: 21)
!29 = !DIEnumerator(name: "DMA_HIF_TRX", value: 22)
!30 = !DIEnumerator(name: "DMA_SPIM_TX", value: 23)
!31 = !DIEnumerator(name: "DMA_SPIM_RX", value: 24)
!32 = !DIEnumerator(name: "DMA_SW", value: 25)
!33 = !DIEnumerator(name: "DMA_IDLE", value: 26)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40}
!36 = !DIEnumerator(name: "DMA_HWTX", value: 0)
!37 = !DIEnumerator(name: "DMA_HWRX", value: 1)
!38 = !DIEnumerator(name: "DMA_SWCOPY", value: 2)
!39 = !DIEnumerator(name: "DMA_HWTX_RINGBUFF", value: 3)
!40 = !DIEnumerator(name: "DMA_HWRX_RINGBUFF", value: 4)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 110, baseType: !7, size: 32, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIEnumerator(name: "DMA_BYTE", value: 0)
!44 = !DIEnumerator(name: "DMA_SHORT", value: 1)
!45 = !DIEnumerator(name: "DMA_LONG", value: 2)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 121, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!50 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !52, line: 47, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!55 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!56 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!57 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!58 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!59 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!60 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!61 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!62 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!63 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!64 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!65 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!66 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!67 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!68 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!69 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!70 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!71 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!72 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!73 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!74 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!75 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!76 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!77 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!78 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!79 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!80 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!81 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!82 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!83 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!84 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!85 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!86 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!87 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!88 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!89 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!90 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!91 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!92 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!93 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!94 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!95 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!96 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 129, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!99 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!100 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!101 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!102 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!103 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!104 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!105 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!106 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!107 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!108 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!109 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!110 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!111 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!112 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!113 = !{!114, !115, !117, !139, !146, !152, !163, !172, !161, !173, !174}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !47, line: 116, baseType: !7)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_FULLSIZE_HWMENU", file: !6, line: 174, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 169, size: 128, elements: !120)
!120 = !{!121, !133, !135, !138}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "TMOD", scope: !119, file: !6, line: 170, baseType: !122, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TMODE", file: !6, line: 127, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 124, size: 16, elements: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "burst_mode", scope: !123, file: !6, line: 125, baseType: !126, size: 8)
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !123, file: !6, line: 126, baseType: !128, size: 8, offset: 8)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !129, line: 24, baseType: !130)
!129 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !131, line: 43, baseType: !132)
!131 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!132 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !119, file: !6, line: 171, baseType: !134, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Master", file: !6, line: 108, baseType: !5)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !119, file: !6, line: 172, baseType: !136, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 48, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !131, line: 79, baseType: !7)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !119, file: !6, line: 173, baseType: !136, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_HWMENU", file: !6, line: 158, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 154, size: 96, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "TMOD", scope: !141, file: !6, line: 155, baseType: !122, size: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !141, file: !6, line: 156, baseType: !134, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !141, file: !6, line: 157, baseType: !136, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_SWCOPYMENU", file: !6, line: 179, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 176, size: 64, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "srcaddr", scope: !148, file: !6, line: 177, baseType: !136, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dstaddr", scope: !148, file: !6, line: 178, baseType: !136, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_FULLSIZE_HWRINGBUFF_MENU", file: !6, line: 167, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 160, size: 192, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !162}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "TMOD", scope: !154, file: !6, line: 161, baseType: !122, size: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !154, file: !6, line: 162, baseType: !134, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !154, file: !6, line: 163, baseType: !136, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !154, file: !6, line: 164, baseType: !136, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "WPPT", scope: !154, file: !6, line: 165, baseType: !161, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "WPTO", scope: !154, file: !6, line: 166, baseType: !161, size: 32, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_HWRINGBUFF_MENU", file: !6, line: 152, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 146, size: 160, elements: !166)
!166 = !{!167, !168, !169, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "TMOD", scope: !165, file: !6, line: 147, baseType: !122, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !165, file: !6, line: 148, baseType: !134, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !165, file: !6, line: 149, baseType: !136, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "WPPT", scope: !165, file: !6, line: 150, baseType: !161, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "WPTO", scope: !165, file: !6, line: 151, baseType: !161, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !52, line: 95, baseType: !51)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint8", file: !47, line: 108, baseType: !132)
!175 = !{!0, !176, !185, !187, !192, !194}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "DMA_VFIFO_LISR_FUNC", scope: !2, file: !3, line: 60, type: !178, isLocal: false, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 448, elements: !183)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !6, line: 197, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = !DISubroutineType(types: !182)
!182 = !{null}
!183 = !{!184}
!184 = !DISubrange(count: 14)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "DMA_VFIFO_TO_LISR_FUNC", scope: !2, file: !3, line: 64, type: !178, isLocal: false, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "DMA_Owner", scope: !2, file: !3, line: 71, type: !189, isLocal: false, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 352, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 11)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "DMA_Channel_Status", scope: !2, file: !3, line: 68, type: !114, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "DMA_used_channel", scope: !2, file: !3, line: 69, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 88, elements: !190)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 352, elements: !190)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !200, file: !201, line: 71, type: !218, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !203, globals: !204, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!202 = !{!46, !51}
!203 = !{!115, !173}
!204 = !{!198, !205}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "GPTTimer", scope: !200, file: !201, line: 67, type: !207, isLocal: true, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPTStruct", file: !208, line: 111, baseType: !209)
!208 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 109, size: 96, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_FUNC", scope: !209, file: !208, line: 110, baseType: !212, size: 96)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_func", file: !208, line: 106, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 102, size: 96, elements: !214)
!214 = !{!215, !216, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "gpt0_func", scope: !213, file: !208, line: 103, baseType: !180, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "gpt1_func", scope: !213, file: !208, line: 104, baseType: !180, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "gpt3_func", scope: !213, file: !208, line: 105, baseType: !180, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !47, line: 62, baseType: !7)
!220 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!221 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !224, file: !225, line: 43, type: !136, isLocal: true, isDefinition: true)
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !226, globals: !232, splitDebugInlining: false, nameTableKind: None)
!225 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!226 = !{!227, !219, !229, !231}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!232 = !{!222, !233}
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !224, file: !225, line: 44, type: !136, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !237, file: !238, line: 54, type: !136, isLocal: false, isDefinition: true)
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !239, retainedTypes: !246, globals: !254, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!239 = !{!240, !97}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 71, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "UART_PORT0", value: 0)
!244 = !DIEnumerator(name: "UART_PORT1", value: 1)
!245 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!246 = !{!227, !136, !247, !249, !251, !252, !219}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !47, line: 113, baseType: !250)
!250 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !47, line: 59, baseType: !132)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !251)
!254 = !{!235}
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "g_adc_status", scope: !257, file: !258, line: 252, type: !338, isLocal: false, isDefinition: true)
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !306, globals: !313, splitDebugInlining: false, nameTableKind: None)
!258 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_adc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!259 = !{!260, !267, !275, !280, !289, !293, !298, !51, !97}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !261, line: 53, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_efuse.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "HAL_EFUSE_OK", value: 0)
!264 = !DIEnumerator(name: "HAL_EFUSE_INVALID_PARAMETER", value: 1)
!265 = !DIEnumerator(name: "HAL_EFUSE_INVALID_MAGIC", value: 2)
!266 = !DIEnumerator(name: "HAL_EFUSE_INVALID_ACCESS", value: 3)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 163, baseType: !53, size: 32, elements: !269)
!268 = !DIFile(filename: "../../../../../driver/chip/inc/hal_adc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIEnumerator(name: "HAL_ADC_STATUS_INVALID_PARAMETER", value: -4)
!271 = !DIEnumerator(name: "HAL_ADC_STATUS_ERROR_BUSY", value: -3)
!272 = !DIEnumerator(name: "HAL_ADC_STATUS_ERROR_CHANNEL", value: -2)
!273 = !DIEnumerator(name: "HAL_ADC_STATUS_ERROR", value: -1)
!274 = !DIEnumerator(name: "HAL_ADC_STATUS_OK", value: 0)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 429, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_adc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!277 = !{!278, !279}
!278 = !DIEnumerator(name: "ADC_PMODE_ONE_TIME", value: 0)
!279 = !DIEnumerator(name: "ADC_PMODE_PERIODIC", value: 1)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 434, baseType: !7, size: 32, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288}
!282 = !DIEnumerator(name: "ADC_AVG_1_SAMPLE", value: 0)
!283 = !DIEnumerator(name: "ADC_AVG_2_SAMPLE", value: 1)
!284 = !DIEnumerator(name: "ADC_AVG_4_SAMPLE", value: 2)
!285 = !DIEnumerator(name: "ADC_AVG_8_SAMPLE", value: 3)
!286 = !DIEnumerator(name: "ADC_AVG_16_SAMPLE", value: 4)
!287 = !DIEnumerator(name: "ADC_AVG_32_SAMPLE", value: 5)
!288 = !DIEnumerator(name: "ADC_AVG_64_SAMPLE", value: 6)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 444, baseType: !7, size: 32, elements: !290)
!290 = !{!291, !292}
!291 = !DIEnumerator(name: "ADC_FIFO_DIRECT", value: 0)
!292 = !DIEnumerator(name: "ADC_FIFO_DMA", value: 1)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_HAL_RET_T", file: !294, line: 365, baseType: !132, size: 8, elements: !295)
!294 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!297 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 308, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!300 = !{!301, !302, !303, !304, !305}
!301 = !DIEnumerator(name: "HAL_ADC_CHANNEL_0", value: 0)
!302 = !DIEnumerator(name: "HAL_ADC_CHANNEL_1", value: 1)
!303 = !DIEnumerator(name: "HAL_ADC_CHANNEL_2", value: 2)
!304 = !DIEnumerator(name: "HAL_ADC_CHANNEL_3", value: 3)
!305 = !DIEnumerator(name: "HAL_ADC_CHANNEL_MAX", value: 4)
!306 = !{!307, !309, !311, !219, !115, !312, !161, !173, !247, !231}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 36, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 57, baseType: !250)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32", file: !47, line: 133, baseType: !7)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!313 = !{!255, !314, !336, !339}
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "g_rAdcInfo", scope: !257, file: !258, line: 251, type: !316, isLocal: false, isDefinition: true)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ADC_INFO_T", file: !276, line: 466, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ADC_INFO_T", file: !276, line: 460, size: 288, elements: !318)
!318 = !{!319, !335}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rFsmParam", scope: !317, file: !276, line: 461, baseType: !320, size: 256)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "ADC_FSM_PARAM_T", file: !276, line: 458, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ADC_FSM_PARAM_T", file: !276, line: 449, size: 256, elements: !322)
!322 = !{!323, !325, !327, !329, !330, !332, !333, !334}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ePmode", scope: !321, file: !276, line: 450, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_Adc_Pmode", file: !276, line: 432, baseType: !275)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "eAvg_Mode", scope: !321, file: !276, line: 451, baseType: !326, size: 32, offset: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_Adc_Avg_Mode", file: !276, line: 442, baseType: !280)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "u2Channel_Map", scope: !321, file: !276, line: 452, baseType: !328, size: 16, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 60, baseType: !250)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "u4Period", scope: !321, file: !276, line: 453, baseType: !219, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "eFifo_Mode", scope: !321, file: !276, line: 454, baseType: !331, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_Adc_Fifo_Mode", file: !276, line: 447, baseType: !289)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pru4DmaVfifoAddr", scope: !321, file: !276, line: 455, baseType: !312, size: 32, offset: 160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "u4DmaVfifoLen", scope: !321, file: !276, line: 456, baseType: !219, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "u4DmaVfifoTriggerLevel", scope: !321, file: !276, line: 457, baseType: !219, size: 32, offset: 224)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "u1ChnlNum", scope: !317, file: !276, line: 462, baseType: !251, size: 8, offset: 256)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "g_adc_efuse_offset", scope: !257, file: !258, line: 254, type: !338, isLocal: false, isDefinition: true)
!338 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "g_adc_efuse_gain", scope: !257, file: !258, line: 255, type: !338, isLocal: false, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !343, file: !344, line: 51, type: !423, isLocal: false, isDefinition: true)
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !345, retainedTypes: !392, globals: !422, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!345 = !{!346, !357, !376, !383}
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !347, line: 163, baseType: !53, size: 32, elements: !348)
!347 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356}
!349 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!350 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!351 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!352 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!353 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!354 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!355 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!356 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!357 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !347, line: 186, baseType: !7, size: 32, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!359 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!360 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!361 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!362 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!363 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!364 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!365 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!366 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!367 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!368 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!369 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!370 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!371 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!372 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!373 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!374 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!375 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !347, line: 176, baseType: !7, size: 32, elements: !377)
!377 = !{!378, !379, !380, !381, !382}
!378 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!379 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!380 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!381 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!382 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 99, baseType: !7, size: 32, elements: !385)
!384 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!385 = !{!386, !387, !388, !389, !390, !391}
!386 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!387 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!388 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!389 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!390 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!391 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!392 = !{!393, !161}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !395, line: 72, baseType: !396)
!395 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 56, size: 525312, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !412, !413, !417, !421}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !396, file: !395, line: 57, baseType: !230, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !396, file: !395, line: 58, baseType: !230, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !396, file: !395, line: 59, baseType: !230, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !396, file: !395, line: 60, baseType: !230, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !396, file: !395, line: 61, baseType: !230, size: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !396, file: !395, line: 62, baseType: !230, size: 32, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !396, file: !395, line: 63, baseType: !230, size: 32, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !396, file: !395, line: 64, baseType: !230, size: 32, offset: 224)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !396, file: !395, line: 65, baseType: !230, size: 32, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !396, file: !395, line: 66, baseType: !230, size: 32, offset: 288)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !396, file: !395, line: 67, baseType: !409, size: 32, offset: 320)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 1)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !396, file: !395, line: 68, baseType: !230, size: 32, offset: 352)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !396, file: !395, line: 69, baseType: !414, size: 523904, offset: 384)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 523904, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 16372)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !396, file: !395, line: 70, baseType: !418, size: 512, offset: 524288)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 512, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 16)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !396, file: !395, line: 71, baseType: !418, size: 512, offset: 524800)
!422 = !{!341}
!423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !426, file: !427, line: 53, type: !514, isLocal: false, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !428, retainedTypes: !437, globals: !513, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!428 = !{!429, !51}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 152, baseType: !53, size: 32, elements: !431)
!430 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!431 = !{!432, !433, !434, !435, !436}
!432 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!433 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!434 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!435 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!436 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!437 = !{!438, !161, !136, !439, !441, !474}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !52, line: 97, baseType: !173)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 44, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !131, line: 77, baseType: !53)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !443, line: 378, baseType: !444)
!443 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 363, size: 28704, elements: !445)
!445 = !{!446, !450, !454, !455, !456, !457, !458, !459, !460, !461, !465, !469, !473}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !444, file: !443, line: 365, baseType: !447, size: 256)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 8)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !444, file: !443, line: 366, baseType: !451, size: 768, offset: 256)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 768, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 24)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !444, file: !443, line: 367, baseType: !447, size: 256, offset: 1024)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !444, file: !443, line: 368, baseType: !451, size: 768, offset: 1280)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !444, file: !443, line: 369, baseType: !447, size: 256, offset: 2048)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !444, file: !443, line: 370, baseType: !451, size: 768, offset: 2304)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !444, file: !443, line: 371, baseType: !447, size: 256, offset: 3072)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !444, file: !443, line: 372, baseType: !451, size: 768, offset: 3328)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !444, file: !443, line: 373, baseType: !447, size: 256, offset: 4096)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !444, file: !443, line: 374, baseType: !462, size: 1792, offset: 4352)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1792, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 56)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !444, file: !443, line: 375, baseType: !466, size: 1920, offset: 6144)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 1920, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 240)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !444, file: !443, line: 376, baseType: !470, size: 20608, offset: 8064)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 20608, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 644)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !444, file: !443, line: 377, baseType: !230, size: 32, offset: 28672)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !443, line: 418, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 395, size: 1120, elements: !477)
!477 = !{!478, !480, !481, !482, !483, !484, !485, !489, !490, !491, !492, !493, !494, !495, !496, !500, !501, !502, !506, !510, !512}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !476, file: !443, line: 397, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !476, file: !443, line: 398, baseType: !230, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !476, file: !443, line: 399, baseType: !230, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !476, file: !443, line: 400, baseType: !230, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !476, file: !443, line: 401, baseType: !230, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !476, file: !443, line: 402, baseType: !230, size: 32, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !476, file: !443, line: 403, baseType: !486, size: 96, offset: 192)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 96, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 12)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !476, file: !443, line: 404, baseType: !230, size: 32, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !476, file: !443, line: 405, baseType: !230, size: 32, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !476, file: !443, line: 406, baseType: !230, size: 32, offset: 352)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !476, file: !443, line: 407, baseType: !230, size: 32, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !476, file: !443, line: 408, baseType: !230, size: 32, offset: 416)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !476, file: !443, line: 409, baseType: !230, size: 32, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !476, file: !443, line: 410, baseType: !230, size: 32, offset: 480)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !476, file: !443, line: 411, baseType: !497, size: 64, offset: 512)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 64, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 2)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !476, file: !443, line: 412, baseType: !479, size: 32, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !476, file: !443, line: 413, baseType: !479, size: 32, offset: 608)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !476, file: !443, line: 414, baseType: !503, size: 128, offset: 640)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 128, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 4)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !476, file: !443, line: 415, baseType: !507, size: 160, offset: 768)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 160, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 5)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !476, file: !443, line: 416, baseType: !511, size: 160, offset: 928)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 160, elements: !508)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !476, file: !443, line: 417, baseType: !230, size: 32, offset: 1088)
!513 = !{!424}
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 6144, elements: !523)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !427, line: 50, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !427, line: 47, size: 64, elements: !517)
!517 = !{!518, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !516, file: !427, line: 48, baseType: !519, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 32)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !438}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !516, file: !427, line: 49, baseType: !136, size: 32, offset: 32)
!523 = !{!524}
!524 = !DISubrange(count: 96)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !527, file: !528, line: 61, type: !560, isLocal: true, isDefinition: true)
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !529, retainedTypes: !558, globals: !559, splitDebugInlining: false, nameTableKind: None)
!528 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!529 = !{!530, !538, !545, !549, !554}
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !531, line: 387, baseType: !53, size: 32, elements: !532)
!531 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!534 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!535 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!536 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!537 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 657, baseType: !7, size: 32, elements: !539)
!539 = !{!540, !541, !542, !543, !544}
!540 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!541 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!542 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!543 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!544 = !DIEnumerator(name: "HAL_GPT_MAX", value: 5)
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !531, line: 397, baseType: !7, size: 32, elements: !546)
!546 = !{!547, !548}
!547 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!548 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!549 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 666, baseType: !7, size: 32, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!552 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!553 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_BUS", value: 2)
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !531, line: 380, baseType: !7, size: 32, elements: !555)
!555 = !{!556, !557}
!556 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!557 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!558 = !{!161, !136}
!559 = !{!525}
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 640, elements: !508)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_context_t", file: !528, line: 55, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 51, size: 128, elements: !563)
!563 = !{!564, !566, !576}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !562, file: !528, line: 52, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !531, line: 400, baseType: !545)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !562, file: !528, line: 53, baseType: !567, size: 64, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_context", file: !528, line: 49, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 46, size: 64, elements: !569)
!569 = !{!570, !575}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !568, file: !528, line: 47, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !531, line: 371, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 32)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !161}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !568, file: !528, line: 48, baseType: !161, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "has_initlized", scope: !562, file: !528, line: 54, baseType: !126, size: 8, offset: 96)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !579, file: !580, line: 77, type: !644, isLocal: true, isDefinition: true)
!579 = distinct !DICompileUnit(language: DW_LANG_C99, file: !580, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !581, retainedTypes: !631, globals: !633, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!581 = !{!582, !590, !595, !611, !617, !621, !240, !97, !626}
!582 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 345, baseType: !53, size: 32, elements: !584)
!583 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!584 = !{!585, !586, !587, !588, !589}
!585 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!586 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!587 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!588 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!589 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 109, baseType: !7, size: 32, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!593 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!594 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 302, baseType: !7, size: 32, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!597 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!598 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!599 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!600 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!601 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!602 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!603 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!604 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!605 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!606 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!607 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!608 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!609 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!610 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!611 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 321, baseType: !7, size: 32, elements: !612)
!612 = !{!613, !614, !615, !616}
!613 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!614 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!615 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!616 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 330, baseType: !7, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!620 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!621 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 337, baseType: !7, size: 32, elements: !622)
!622 = !{!623, !624, !625}
!623 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!624 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!625 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!626 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 355, baseType: !53, size: 32, elements: !627)
!627 = !{!628, !629, !630}
!628 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!629 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!630 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!631 = !{!7, !161, !132, !632, !128}
!632 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!633 = !{!577, !634}
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "func_tbl", scope: !636, file: !580, line: 536, type: !642, isLocal: true, isDefinition: true)
!636 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !580, file: !580, line: 534, type: !637, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !640)
!637 = !DISubroutineType(types: !638)
!638 = !{!179, !639}
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !299, line: 113, baseType: !590)
!640 = !{!641}
!641 = !DILocalVariable(name: "uart_port", arg: 1, scope: !636, file: !580, line: 534, type: !639)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 64, elements: !498)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 1024, elements: !498)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !580, line: 75, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 68, size: 512, elements: !647)
!647 = !{!648, !649, !661, !662, !673, !674}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !646, file: !580, line: 69, baseType: !126, size: 8)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !646, file: !580, line: 70, baseType: !650, size: 128, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !583, line: 378, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 373, size: 128, elements: !652)
!652 = !{!653, !655, !657, !659}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !651, file: !583, line: 374, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !583, line: 317, baseType: !595)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !651, file: !583, line: 375, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !583, line: 326, baseType: !611)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !651, file: !583, line: 376, baseType: !658, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !583, line: 333, baseType: !617)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !651, file: !583, line: 377, baseType: !660, size: 32, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !583, line: 341, baseType: !621)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !646, file: !580, line: 71, baseType: !126, size: 8, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !646, file: !580, line: 72, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !580, line: 66, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 63, size: 64, elements: !665)
!665 = !{!666, !672}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !664, file: !580, line: 64, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !583, line: 410, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 32)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !671, !161}
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !583, line: 359, baseType: !626)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !664, file: !580, line: 65, baseType: !161, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !646, file: !580, line: 73, baseType: !126, size: 8, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !646, file: !580, line: 74, baseType: !675, size: 224, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !583, line: 390, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 382, size: 224, elements: !677)
!677 = !{!678, !680, !681, !682, !683, !684, !685}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !676, file: !583, line: 383, baseType: !679, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !676, file: !583, line: 384, baseType: !136, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !676, file: !583, line: 385, baseType: !136, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !676, file: !583, line: 386, baseType: !679, size: 32, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !676, file: !583, line: 387, baseType: !136, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !676, file: !583, line: 388, baseType: !136, size: 32, offset: 160)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !676, file: !583, line: 389, baseType: !136, size: 32, offset: 192)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !688, file: !689, line: 59, type: !136, isLocal: false, isDefinition: true)
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, globals: !743, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/adc_get_data_polling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!690 = !{!691, !699, !724}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !443, line: 656, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 650, size: 128, elements: !694)
!694 = !{!695, !696, !697, !698}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !693, file: !443, line: 652, baseType: !230, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !693, file: !443, line: 653, baseType: !230, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !693, file: !443, line: 654, baseType: !230, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !693, file: !443, line: 655, baseType: !479, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !443, line: 418, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 395, size: 1120, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !701, file: !443, line: 397, baseType: !479, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !701, file: !443, line: 398, baseType: !230, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !701, file: !443, line: 399, baseType: !230, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !701, file: !443, line: 400, baseType: !230, size: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !701, file: !443, line: 401, baseType: !230, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !701, file: !443, line: 402, baseType: !230, size: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !701, file: !443, line: 403, baseType: !486, size: 96, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !701, file: !443, line: 404, baseType: !230, size: 32, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !701, file: !443, line: 405, baseType: !230, size: 32, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !701, file: !443, line: 406, baseType: !230, size: 32, offset: 352)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !701, file: !443, line: 407, baseType: !230, size: 32, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !701, file: !443, line: 408, baseType: !230, size: 32, offset: 416)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !701, file: !443, line: 409, baseType: !230, size: 32, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !701, file: !443, line: 410, baseType: !230, size: 32, offset: 480)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !701, file: !443, line: 411, baseType: !497, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !701, file: !443, line: 412, baseType: !479, size: 32, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !701, file: !443, line: 413, baseType: !479, size: 32, offset: 608)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !701, file: !443, line: 414, baseType: !503, size: 128, offset: 640)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !701, file: !443, line: 415, baseType: !507, size: 160, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !701, file: !443, line: 416, baseType: !511, size: 160, offset: 928)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !701, file: !443, line: 417, baseType: !230, size: 32, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !395, line: 72, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 56, size: 525312, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !726, file: !395, line: 57, baseType: !230, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !726, file: !395, line: 58, baseType: !230, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !726, file: !395, line: 59, baseType: !230, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !726, file: !395, line: 60, baseType: !230, size: 32, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !726, file: !395, line: 61, baseType: !230, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !726, file: !395, line: 62, baseType: !230, size: 32, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !726, file: !395, line: 63, baseType: !230, size: 32, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !726, file: !395, line: 64, baseType: !230, size: 32, offset: 224)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !726, file: !395, line: 65, baseType: !230, size: 32, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !726, file: !395, line: 66, baseType: !230, size: 32, offset: 288)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !726, file: !395, line: 67, baseType: !409, size: 32, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !726, file: !395, line: 68, baseType: !230, size: 32, offset: 352)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !726, file: !395, line: 69, baseType: !414, size: 523904, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !726, file: !395, line: 70, baseType: !418, size: 512, offset: 524288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !726, file: !395, line: 71, baseType: !418, size: 512, offset: 524800)
!743 = !{!686, !744}
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !688, file: !689, line: 61, type: !230, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "heap_end", scope: !748, file: !749, line: 66, type: !754, isLocal: true, isDefinition: true)
!748 = distinct !DISubprogram(name: "_sbrk_r", scope: !749, file: !749, line: 63, type: !750, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !950)
!749 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!750 = !DISubroutineType(types: !751)
!751 = !{!752, !755, !945}
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !753, line: 123, baseType: !754)
!753 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 32)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !757, line: 377, size: 1920, elements: !758)
!757 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!758 = !{!759, !760, !834, !835, !836, !837, !838, !839, !840, !843, !864, !868, !869, !870, !871, !881, !894, !895, !900, !919, !920, !927, !928, !944}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !756, file: !757, line: 381, baseType: !53, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !756, file: !757, line: 386, baseType: !761, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !757, line: 292, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !757, line: 186, size: 832, elements: !764)
!764 = !{!765, !767, !768, !769, !771, !772, !777, !778, !779, !780, !784, !790, !797, !801, !802, !803, !804, !808, !810, !811, !812, !814, !820, !833}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !763, file: !757, line: 187, baseType: !766, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !763, file: !757, line: 188, baseType: !53, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !763, file: !757, line: 189, baseType: !53, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !763, file: !757, line: 190, baseType: !770, size: 16, offset: 96)
!770 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !763, file: !757, line: 191, baseType: !770, size: 16, offset: 112)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !763, file: !757, line: 192, baseType: !773, size: 64, offset: 128)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !757, line: 122, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !773, file: !757, line: 123, baseType: !766, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !773, file: !757, line: 124, baseType: !53, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !763, file: !757, line: 193, baseType: !53, size: 32, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !763, file: !757, line: 196, baseType: !755, size: 32, offset: 224)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !763, file: !757, line: 200, baseType: !161, size: 32, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !763, file: !757, line: 202, baseType: !781, size: 32, offset: 288)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 32)
!782 = !DISubroutineType(types: !783)
!783 = !{!53, !755, !161, !754, !53}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !763, file: !757, line: 204, baseType: !785, size: 32, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 32)
!786 = !DISubroutineType(types: !787)
!787 = !{!53, !755, !161, !788, !53}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !763, file: !757, line: 207, baseType: !791, size: 32, offset: 352)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 32)
!792 = !DISubroutineType(types: !793)
!793 = !{!794, !755, !161, !794, !53}
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !795, line: 116, baseType: !796)
!795 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!796 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !763, file: !757, line: 208, baseType: !798, size: 32, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 32)
!799 = !DISubroutineType(types: !800)
!800 = !{!53, !755, !161}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !763, file: !757, line: 211, baseType: !773, size: 64, offset: 416)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !763, file: !757, line: 212, baseType: !766, size: 32, offset: 480)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !763, file: !757, line: 213, baseType: !53, size: 32, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !763, file: !757, line: 216, baseType: !805, size: 24, offset: 544)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 24, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 3)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !763, file: !757, line: 217, baseType: !809, size: 8, offset: 568)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8, elements: !410)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !763, file: !757, line: 220, baseType: !773, size: 64, offset: 576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !763, file: !757, line: 223, baseType: !53, size: 32, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !763, file: !757, line: 224, baseType: !813, size: 32, offset: 672)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !795, line: 46, baseType: !796)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !763, file: !757, line: 231, baseType: !815, size: 32, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !757, line: 35, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !817, line: 34, baseType: !818)
!817 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 32)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !817, line: 33, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !763, file: !757, line: 233, baseType: !821, size: 64, offset: 736)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !795, line: 170, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !795, line: 162, size: 64, elements: !823)
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !822, file: !795, line: 164, baseType: !53, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !822, file: !795, line: 169, baseType: !826, size: 32, offset: 32)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !795, line: 165, size: 32, elements: !827)
!827 = !{!828, !831}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !826, file: !795, line: 167, baseType: !829, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !830, line: 116, baseType: !53)
!830 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !826, file: !795, line: 168, baseType: !832, size: 32)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !504)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !763, file: !757, line: 234, baseType: !53, size: 32, offset: 800)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !756, file: !757, line: 386, baseType: !761, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !756, file: !757, line: 386, baseType: !761, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !756, file: !757, line: 388, baseType: !53, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !756, file: !757, line: 390, baseType: !754, size: 32, offset: 160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !756, file: !757, line: 392, baseType: !53, size: 32, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !756, file: !757, line: 394, baseType: !53, size: 32, offset: 224)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !756, file: !757, line: 395, baseType: !841, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 32)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !757, line: 45, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !756, file: !757, line: 397, baseType: !844, size: 32, offset: 288)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 32)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !757, line: 349, size: 128, elements: !846)
!846 = !{!847, !860, !861, !862}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !845, file: !757, line: 352, baseType: !848, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 32)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !757, line: 52, size: 192, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !849, file: !757, line: 54, baseType: !848, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !849, file: !757, line: 55, baseType: !53, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !849, file: !757, line: 55, baseType: !53, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !849, file: !757, line: 55, baseType: !53, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !849, file: !757, line: 55, baseType: !53, size: 32, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !849, file: !757, line: 56, baseType: !857, size: 32, offset: 160)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 32, elements: !410)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !757, line: 22, baseType: !859)
!859 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !845, file: !757, line: 353, baseType: !53, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !845, file: !757, line: 354, baseType: !848, size: 32, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !845, file: !757, line: 355, baseType: !863, size: 32, offset: 96)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !756, file: !757, line: 399, baseType: !865, size: 32, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 32)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !755}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !756, file: !757, line: 401, baseType: !53, size: 32, offset: 352)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !756, file: !757, line: 404, baseType: !53, size: 32, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !756, file: !757, line: 405, baseType: !754, size: 32, offset: 416)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !756, file: !757, line: 407, baseType: !872, size: 32, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 32)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !757, line: 324, size: 192, elements: !874)
!874 = !{!875, !877, !878, !879}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !873, file: !757, line: 325, baseType: !876, size: 48)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 48, elements: !806)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !873, file: !757, line: 326, baseType: !876, size: 48, offset: 48)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !873, file: !757, line: 327, baseType: !250, size: 16, offset: 96)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !873, file: !757, line: 330, baseType: !880, size: 64, offset: 128)
!880 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !756, file: !757, line: 408, baseType: !882, size: 32, offset: 480)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 32)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !757, line: 60, size: 288, elements: !884)
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892, !893}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !883, file: !757, line: 62, baseType: !53, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !883, file: !757, line: 63, baseType: !53, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !883, file: !757, line: 64, baseType: !53, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !883, file: !757, line: 65, baseType: !53, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !883, file: !757, line: 66, baseType: !53, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !883, file: !757, line: 67, baseType: !53, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !883, file: !757, line: 68, baseType: !53, size: 32, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !883, file: !757, line: 69, baseType: !53, size: 32, offset: 224)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !883, file: !757, line: 70, baseType: !53, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !756, file: !757, line: 409, baseType: !754, size: 32, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !756, file: !757, line: 412, baseType: !896, size: 32, offset: 544)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 32)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !53}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !756, file: !757, line: 416, baseType: !901, size: 32, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !757, line: 90, size: 1120, elements: !903)
!903 = !{!904, !905, !906, !910}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !902, file: !757, line: 91, baseType: !901, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !902, file: !757, line: 92, baseType: !53, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !902, file: !757, line: 93, baseType: !907, size: 1024, offset: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !902, file: !757, line: 94, baseType: !911, size: 32, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 32)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !757, line: 79, size: 2112, elements: !913)
!913 = !{!914, !916, !917, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !912, file: !757, line: 80, baseType: !915, size: 1024)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !908)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !912, file: !757, line: 81, baseType: !915, size: 1024, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !912, file: !757, line: 83, baseType: !858, size: 32, offset: 2048)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !912, file: !757, line: 86, baseType: !858, size: 32, offset: 2080)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !756, file: !757, line: 417, baseType: !902, size: 1120, offset: 608)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !756, file: !757, line: 420, baseType: !921, size: 96, offset: 1728)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !757, line: 296, size: 96, elements: !922)
!922 = !{!923, !925, !926}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !921, file: !757, line: 298, baseType: !924, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !921, file: !757, line: 299, baseType: !53, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !921, file: !757, line: 300, baseType: !761, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !756, file: !757, line: 421, baseType: !761, size: 32, offset: 1824)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !756, file: !757, line: 422, baseType: !929, size: 32, offset: 1856)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 32)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !757, line: 359, size: 640, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !938, !939, !940, !941, !942, !943}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !930, file: !757, line: 362, baseType: !754, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !930, file: !757, line: 363, baseType: !821, size: 64, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !930, file: !757, line: 364, baseType: !821, size: 64, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !930, file: !757, line: 365, baseType: !821, size: 64, offset: 160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !930, file: !757, line: 366, baseType: !937, size: 64, offset: 224)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 64, elements: !448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !930, file: !757, line: 367, baseType: !53, size: 32, offset: 288)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !930, file: !757, line: 368, baseType: !821, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !930, file: !757, line: 369, baseType: !821, size: 64, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !930, file: !757, line: 370, baseType: !821, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !930, file: !757, line: 371, baseType: !821, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !930, file: !757, line: 372, baseType: !821, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !756, file: !757, line: 423, baseType: !754, size: 32, offset: 1888)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !830, line: 46, baseType: !7)
!946 = distinct !DICompileUnit(language: DW_LANG_C99, file: !947, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !948, globals: !949, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!948 = !{!754, !752}
!949 = !{!746}
!950 = !{!951, !952, !953, !954}
!951 = !DILocalVariable(name: "r", arg: 1, scope: !748, file: !749, line: 63, type: !755)
!952 = !DILocalVariable(name: "nbytes", arg: 2, scope: !748, file: !749, line: 63, type: !945)
!953 = !DILocalVariable(name: "prev_heap_end", scope: !748, file: !749, line: 67, type: !754)
!954 = !DILocalVariable(name: "stack", scope: !748, file: !749, line: 68, type: !754)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !957, file: !962, line: 4, type: !966, isLocal: false, isDefinition: true)
!957 = distinct !DICompileUnit(language: DW_LANG_C99, file: !958, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !959, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!959 = !{!955, !960, !964}
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !957, file: !962, line: 5, type: !963, isLocal: false, isDefinition: true)
!962 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 88, elements: !190)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !957, file: !962, line: 6, type: !963, isLocal: false, isDefinition: true)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 248, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 31)
!969 = distinct !DICompileUnit(language: DW_LANG_C99, file: !970, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !971, retainedTypes: !977, splitDebugInlining: false, nameTableKind: None)
!970 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!971 = !{!972}
!972 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !973, line: 1209, baseType: !7, size: 32, elements: !974)
!973 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!974 = !{!975, !976}
!975 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!976 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!977 = !{!115, !114}
!978 = distinct !DICompileUnit(language: DW_LANG_C99, file: !979, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !980, retainedTypes: !1058, splitDebugInlining: false, nameTableKind: None)
!979 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!980 = !{!981}
!981 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !982, line: 150, baseType: !7, size: 32, elements: !983)
!982 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}
!984 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!985 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!986 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!987 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!988 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!989 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!990 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!991 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!992 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!993 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!994 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!995 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!996 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!997 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!998 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!999 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!1000 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!1001 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!1002 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!1003 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!1004 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!1005 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!1006 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!1007 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!1008 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!1009 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!1010 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!1011 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!1012 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!1013 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!1014 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!1015 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!1016 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!1017 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!1018 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!1019 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!1020 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!1021 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!1022 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!1023 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!1024 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!1025 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!1026 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!1027 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!1028 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!1029 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!1030 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!1031 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!1032 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!1033 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!1034 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!1035 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!1036 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!1037 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!1038 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!1039 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!1040 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!1041 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!1042 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!1043 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!1044 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!1045 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!1046 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!1047 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!1048 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!1049 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!1050 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!1051 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!1052 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!1053 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!1054 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!1055 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!1056 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!1057 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!1058 = !{!115, !219}
!1059 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1060, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1061, splitDebugInlining: false, nameTableKind: None)
!1060 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1061 = !{!1062, !1087}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !443, line: 418, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 395, size: 1120, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1064, file: !443, line: 397, baseType: !479, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1064, file: !443, line: 398, baseType: !230, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1064, file: !443, line: 399, baseType: !230, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1064, file: !443, line: 400, baseType: !230, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1064, file: !443, line: 401, baseType: !230, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1064, file: !443, line: 402, baseType: !230, size: 32, offset: 160)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1064, file: !443, line: 403, baseType: !486, size: 96, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1064, file: !443, line: 404, baseType: !230, size: 32, offset: 288)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1064, file: !443, line: 405, baseType: !230, size: 32, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1064, file: !443, line: 406, baseType: !230, size: 32, offset: 352)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1064, file: !443, line: 407, baseType: !230, size: 32, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1064, file: !443, line: 408, baseType: !230, size: 32, offset: 416)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1064, file: !443, line: 409, baseType: !230, size: 32, offset: 448)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1064, file: !443, line: 410, baseType: !230, size: 32, offset: 480)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1064, file: !443, line: 411, baseType: !497, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1064, file: !443, line: 412, baseType: !479, size: 32, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1064, file: !443, line: 413, baseType: !479, size: 32, offset: 608)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1064, file: !443, line: 414, baseType: !503, size: 128, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1064, file: !443, line: 415, baseType: !507, size: 160, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1064, file: !443, line: 416, baseType: !511, size: 160, offset: 928)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1064, file: !443, line: 417, baseType: !230, size: 32, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !443, line: 378, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 363, size: 28704, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1089, file: !443, line: 365, baseType: !447, size: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1089, file: !443, line: 366, baseType: !451, size: 768, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1089, file: !443, line: 367, baseType: !447, size: 256, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1089, file: !443, line: 368, baseType: !451, size: 768, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1089, file: !443, line: 369, baseType: !447, size: 256, offset: 2048)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1089, file: !443, line: 370, baseType: !451, size: 768, offset: 2304)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1089, file: !443, line: 371, baseType: !447, size: 256, offset: 3072)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1089, file: !443, line: 372, baseType: !451, size: 768, offset: 3328)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1089, file: !443, line: 373, baseType: !447, size: 256, offset: 4096)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1089, file: !443, line: 374, baseType: !462, size: 1792, offset: 4352)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1089, file: !443, line: 375, baseType: !466, size: 1920, offset: 6144)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1089, file: !443, line: 376, baseType: !470, size: 20608, offset: 8064)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1089, file: !443, line: 377, baseType: !230, size: 32, offset: 28672)
!1104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1105, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1106, splitDebugInlining: false, nameTableKind: None)
!1105 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1106 = !{!1107, !981}
!1107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1108, line: 55, baseType: !7, size: 32, elements: !1109)
!1108 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1110 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1111 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1112 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1113 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1114 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1115 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1116 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1117 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1118 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1119 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1120 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1121 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1122 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1123 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1124 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1125 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1126 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1127 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1128 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1129 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1130 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1131 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1132 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1133 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1134 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1135 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1136 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1137 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1138 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1139, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1140, splitDebugInlining: false, nameTableKind: None)
!1139 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1140 = !{!796, !115}
!1141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1142, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1142 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1144, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1145, retainedTypes: !1209, splitDebugInlining: false, nameTableKind: None)
!1144 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1145 = !{!1146, !1153, !1107, !1184, !1190, !1194, !1198, !1204}
!1146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1147, line: 233, baseType: !53, size: 32, elements: !1148)
!1147 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1148 = !{!1149, !1150, !1151, !1152}
!1149 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1150 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1151 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1152 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 249, baseType: !7, size: 32, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1155 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!1156 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!1157 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!1158 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!1159 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!1160 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!1161 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!1162 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!1163 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!1164 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!1165 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!1166 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!1167 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!1168 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!1169 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!1170 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!1171 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!1172 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!1173 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!1174 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!1175 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!1176 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!1177 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!1178 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!1179 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!1180 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!1181 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!1182 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!1183 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1184 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1147, line: 224, baseType: !53, size: 32, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1187 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1188 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1189 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1147, line: 217, baseType: !7, size: 32, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1193 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1194 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1147, line: 210, baseType: !7, size: 32, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1197 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1198 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1147, line: 242, baseType: !7, size: 32, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1201 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1202 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1203 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1205, line: 57, baseType: !7, size: 32, elements: !1206)
!1205 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1206 = !{!1207, !1208}
!1207 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1208 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1209 = !{!1210, !161, !1211, !128, !1212, !1213}
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1108, line: 87, baseType: !1107)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1147, line: 220, baseType: !1190)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1147, line: 247, baseType: !1198)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1205, line: 60, baseType: !1204)
!1214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1215, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1216, retainedTypes: !1217, splitDebugInlining: false, nameTableKind: None)
!1215 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/adc_get_data_polling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1216 = !{!590, !595, !611, !617, !621, !1153, !298}
!1217 = !{!53, !7}
!1218 = !{!"Ubuntu clang version 14.0.6"}
!1219 = !{i32 7, !"Dwarf Version", i32 2}
!1220 = !{i32 2, !"Debug Info Version", i32 3}
!1221 = !{i32 1, !"wchar_size", i32 4}
!1222 = !{i32 1, !"min_enum_size", i32 4}
!1223 = !{i32 1, !"branch-target-enforcement", i32 0}
!1224 = !{i32 1, !"sign-return-address", i32 0}
!1225 = !{i32 1, !"sign-return-address-all", i32 0}
!1226 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1227 = !{i32 7, !"frame-pointer", i32 2}
!1228 = distinct !DISubprogram(name: "DMA_ERROR_LISR", scope: !3, file: !3, line: 509, type: !181, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1229 = !{}
!1230 = !DILocation(line: 511, column: 5, scope: !1228)
!1231 = distinct !{!1231, !1230, !1232}
!1232 = !DILocation(line: 511, column: 14, scope: !1228)
!1233 = distinct !DISubprogram(name: "DMA_Stop", scope: !3, file: !3, line: 73, type: !1234, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !128}
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "channel", arg: 1, scope: !1233, file: !3, line: 73, type: !128)
!1238 = !DILocation(line: 0, scope: !1233)
!1239 = !DILocation(line: 75, column: 5, scope: !1233)
!1240 = !DILocation(line: 76, column: 5, scope: !1233)
!1241 = !DILocation(line: 77, column: 1, scope: !1233)
!1242 = distinct !DISubprogram(name: "DMA_Run", scope: !3, file: !3, line: 79, type: !1234, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1243)
!1243 = !{!1244}
!1244 = !DILocalVariable(name: "channel", arg: 1, scope: !1242, file: !3, line: 79, type: !128)
!1245 = !DILocation(line: 0, scope: !1242)
!1246 = !DILocation(line: 81, column: 5, scope: !1242)
!1247 = !DILocation(line: 82, column: 5, scope: !1242)
!1248 = !DILocation(line: 83, column: 1, scope: !1242)
!1249 = distinct !DISubprogram(name: "DMA_GetChannel", scope: !3, file: !3, line: 86, type: !1250, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!128, !134}
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1249, file: !3, line: 86, type: !134)
!1254 = !DILocalVariable(name: "index", scope: !1249, file: !3, line: 88, type: !174)
!1255 = !DILocalVariable(name: "handle", scope: !1249, file: !3, line: 89, type: !174)
!1256 = !DILocalVariable(name: "flags", scope: !1249, file: !3, line: 90, type: !859)
!1257 = !DILocation(line: 0, scope: !1249)
!1258 = !DILocation(line: 470, column: 3, scope: !1259, inlinedAt: !1265)
!1259 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1260, file: !1260, line: 466, type: !1261, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1260 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!136}
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "result", scope: !1259, file: !1260, line: 468, type: !136)
!1265 = distinct !DILocation(line: 93, column: 5, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 93, column: 5)
!1267 = !{i64 316308}
!1268 = !DILocation(line: 0, scope: !1259, inlinedAt: !1265)
!1269 = !DILocation(line: 330, column: 3, scope: !1270, inlinedAt: !1271)
!1270 = distinct !DISubprogram(name: "__disable_irq", scope: !1260, file: !1260, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1271 = distinct !DILocation(line: 93, column: 5, scope: !1266)
!1272 = !{i64 312972}
!1273 = !DILocation(line: 95, column: 5, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 95, column: 5)
!1275 = !DILocation(line: 96, column: 41, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 96, column: 13)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 95, column: 79)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 95, column: 5)
!1279 = !DILocation(line: 96, column: 33, scope: !1276)
!1280 = !DILocation(line: 96, column: 52, scope: !1276)
!1281 = !DILocation(line: 96, column: 13, scope: !1277)
!1282 = !DILocation(line: 100, column: 35, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 96, column: 58)
!1284 = !DILocation(line: 100, column: 32, scope: !1283)
!1285 = !DILocation(line: 102, column: 13, scope: !1283)
!1286 = !DILocation(line: 95, column: 75, scope: !1278)
!1287 = !DILocation(line: 95, column: 50, scope: !1278)
!1288 = distinct !{!1288, !1273, !1289}
!1289 = !DILocation(line: 104, column: 5, scope: !1274)
!1290 = !DILocalVariable(name: "priMask", arg: 1, scope: !1291, file: !1260, line: 481, type: !136)
!1291 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1260, file: !1260, line: 481, type: !1292, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !136}
!1294 = !{!1290}
!1295 = !DILocation(line: 0, scope: !1291, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 105, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 105, column: 5)
!1298 = !DILocation(line: 483, column: 3, scope: !1291, inlinedAt: !1296)
!1299 = !{i64 316626}
!1300 = !DILocation(line: 109, column: 15, scope: !1249)
!1301 = !DILocation(line: 109, column: 22, scope: !1249)
!1302 = !DILocation(line: 109, column: 5, scope: !1249)
!1303 = !DILocation(line: 109, column: 27, scope: !1249)
!1304 = !DILocation(line: 111, column: 5, scope: !1249)
!1305 = distinct !DISubprogram(name: "DMA_FreeChannel", scope: !3, file: !3, line: 114, type: !1234, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308}
!1307 = !DILocalVariable(name: "handle", arg: 1, scope: !1305, file: !3, line: 114, type: !128)
!1308 = !DILocalVariable(name: "flags", scope: !1305, file: !3, line: 116, type: !859)
!1309 = !DILocation(line: 0, scope: !1305)
!1310 = !DILocation(line: 470, column: 3, scope: !1259, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 118, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 118, column: 5)
!1313 = !DILocation(line: 0, scope: !1259, inlinedAt: !1311)
!1314 = !DILocation(line: 330, column: 3, scope: !1270, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 118, column: 5, scope: !1312)
!1316 = !DILocation(line: 121, column: 36, scope: !1305)
!1317 = !DILocation(line: 121, column: 33, scope: !1305)
!1318 = !DILocation(line: 121, column: 24, scope: !1305)
!1319 = !DILocation(line: 123, column: 5, scope: !1305)
!1320 = !DILocation(line: 125, column: 22, scope: !1305)
!1321 = !DILocation(line: 125, column: 5, scope: !1305)
!1322 = !DILocation(line: 125, column: 27, scope: !1305)
!1323 = !DILocation(line: 0, scope: !1291, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 127, column: 5, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 127, column: 5)
!1326 = !DILocation(line: 483, column: 3, scope: !1291, inlinedAt: !1324)
!1327 = !DILocation(line: 129, column: 1, scope: !1305)
!1328 = distinct !DISubprogram(name: "DMA_FullSize_CheckIdleChannel", scope: !3, file: !3, line: 131, type: !1329, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!128, !134, !128}
!1331 = !{!1332, !1333, !1334, !1335, !1336}
!1332 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1328, file: !3, line: 131, type: !134)
!1333 = !DILocalVariable(name: "channel", arg: 2, scope: !1328, file: !3, line: 131, type: !128)
!1334 = !DILocalVariable(name: "index", scope: !1328, file: !3, line: 133, type: !174)
!1335 = !DILocalVariable(name: "handle", scope: !1328, file: !3, line: 134, type: !174)
!1336 = !DILocalVariable(name: "flags", scope: !1328, file: !3, line: 135, type: !859)
!1337 = !DILocation(line: 0, scope: !1328)
!1338 = !DILocation(line: 470, column: 3, scope: !1259, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 137, column: 5, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 137, column: 5)
!1341 = !DILocation(line: 0, scope: !1259, inlinedAt: !1339)
!1342 = !DILocation(line: 330, column: 3, scope: !1270, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 137, column: 5, scope: !1340)
!1344 = !DILocation(line: 139, column: 21, scope: !1328)
!1345 = !DILocation(line: 140, column: 15, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 140, column: 9)
!1347 = !DILocation(line: 140, column: 9, scope: !1328)
!1348 = !DILocation(line: 140, column: 9, scope: !1346)
!1349 = !DILocation(line: 144, column: 10, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 144, column: 9)
!1351 = !DILocation(line: 144, column: 37, scope: !1350)
!1352 = !DILocation(line: 144, column: 29, scope: !1350)
!1353 = !DILocation(line: 144, column: 48, scope: !1350)
!1354 = !DILocation(line: 144, column: 9, scope: !1328)
!1355 = !DILocation(line: 148, column: 31, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 144, column: 54)
!1357 = !DILocation(line: 148, column: 28, scope: !1356)
!1358 = !DILocation(line: 150, column: 5, scope: !1356)
!1359 = !DILocation(line: 0, scope: !1291, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 153, column: 5, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 153, column: 5)
!1362 = !DILocation(line: 483, column: 3, scope: !1291, inlinedAt: !1360)
!1363 = !DILocation(line: 156, column: 15, scope: !1328)
!1364 = !DILocation(line: 156, column: 22, scope: !1328)
!1365 = !DILocation(line: 156, column: 5, scope: !1328)
!1366 = !DILocation(line: 156, column: 27, scope: !1328)
!1367 = !DILocation(line: 157, column: 5, scope: !1328)
!1368 = !DILocation(line: 158, column: 1, scope: !1328)
!1369 = distinct !DISubprogram(name: "DMA_FullSize_FreeChannel", scope: !3, file: !3, line: 160, type: !1234, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "handle", arg: 1, scope: !1369, file: !3, line: 160, type: !128)
!1372 = !DILocalVariable(name: "flags", scope: !1369, file: !3, line: 162, type: !859)
!1373 = !DILocation(line: 0, scope: !1369)
!1374 = !DILocation(line: 470, column: 3, scope: !1259, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 164, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 164, column: 5)
!1377 = !DILocation(line: 0, scope: !1259, inlinedAt: !1375)
!1378 = !DILocation(line: 330, column: 3, scope: !1270, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 164, column: 5, scope: !1376)
!1380 = !DILocation(line: 165, column: 36, scope: !1369)
!1381 = !DILocation(line: 165, column: 33, scope: !1369)
!1382 = !DILocation(line: 165, column: 24, scope: !1369)
!1383 = !DILocation(line: 167, column: 5, scope: !1369)
!1384 = !DILocation(line: 169, column: 22, scope: !1369)
!1385 = !DILocation(line: 169, column: 5, scope: !1369)
!1386 = !DILocation(line: 169, column: 27, scope: !1369)
!1387 = !DILocation(line: 0, scope: !1291, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 171, column: 5, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 171, column: 5)
!1390 = !DILocation(line: 483, column: 3, scope: !1291, inlinedAt: !1388)
!1391 = !DILocation(line: 173, column: 1, scope: !1369)
!1392 = distinct !DISubprogram(name: "DMA_Config_Internal", scope: !3, file: !3, line: 175, type: !1393, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1406)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !128, !1395, !126, !126, !128, !126}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !1398)
!1398 = !{!1399, !1401, !1403, !1404, !1405}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1397, file: !6, line: 190, baseType: !1400, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Type", file: !6, line: 122, baseType: !34)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1397, file: !6, line: 191, baseType: !1402, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TranSize", file: !6, line: 114, baseType: !41)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1397, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !1397, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1397, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1407 = !DILocalVariable(name: "dma_no", arg: 1, scope: !1392, file: !3, line: 175, type: !128)
!1408 = !DILocalVariable(name: "dma_menu", arg: 2, scope: !1392, file: !3, line: 176, type: !1395)
!1409 = !DILocalVariable(name: "fullsize", arg: 3, scope: !1392, file: !3, line: 177, type: !126)
!1410 = !DILocalVariable(name: "b2w", arg: 4, scope: !1392, file: !3, line: 178, type: !126)
!1411 = !DILocalVariable(name: "limit", arg: 5, scope: !1392, file: !3, line: 178, type: !128)
!1412 = !DILocalVariable(name: "start", arg: 6, scope: !1392, file: !3, line: 179, type: !126)
!1413 = !DILocalVariable(name: "dma_con", scope: !1392, file: !3, line: 181, type: !114)
!1414 = !DILocalVariable(name: "temp", scope: !1392, file: !3, line: 182, type: !114)
!1415 = !DILocation(line: 0, scope: !1392)
!1416 = !DILocation(line: 184, column: 5, scope: !1392)
!1417 = !DILocation(line: 186, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 186, column: 9)
!1419 = !DILocation(line: 186, column: 9, scope: !1392)
!1420 = !DILocation(line: 187, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 187, column: 9)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 187, column: 9)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 186, column: 35)
!1424 = distinct !{!1424, !1420, !1420}
!1425 = !DILocation(line: 190, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 190, column: 9)
!1427 = !DILocation(line: 190, column: 9, scope: !1392)
!1428 = !DILocation(line: 191, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 191, column: 9)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 191, column: 9)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 190, column: 34)
!1432 = distinct !{!1432, !1428, !1428}
!1433 = !DILocation(line: 194, column: 5, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 194, column: 5)
!1435 = !DILocation(line: 194, column: 5, scope: !1392)
!1436 = !DILocation(line: 194, column: 5, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 194, column: 5)
!1438 = distinct !{!1438, !1436, !1436}
!1439 = !DILocation(line: 196, column: 9, scope: !1392)
!1440 = !DILocation(line: 197, column: 9, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 197, column: 9)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 197, column: 9)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 196, column: 31)
!1444 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 196, column: 9)
!1445 = distinct !{!1445, !1440, !1440}
!1446 = !DILocation(line: 200, column: 5, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 200, column: 5)
!1448 = !DILocation(line: 200, column: 5, scope: !1392)
!1449 = !DILocation(line: 200, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 200, column: 5)
!1451 = distinct !{!1451, !1449, !1449}
!1452 = !DILocation(line: 202, column: 5, scope: !1392)
!1453 = !DILocation(line: 204, column: 23, scope: !1392)
!1454 = !DILocation(line: 204, column: 5, scope: !1392)
!1455 = !DILocation(line: 0, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 209, column: 17)
!1457 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 204, column: 29)
!1458 = !DILocation(line: 209, column: 17, scope: !1457)
!1459 = !DILocation(line: 212, column: 71, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 211, column: 13)
!1461 = !DILocation(line: 212, column: 78, scope: !1460)
!1462 = !DILocation(line: 219, column: 42, scope: !1457)
!1463 = !DILocation(line: 224, column: 21, scope: !1457)
!1464 = !DILocation(line: 228, column: 17, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 226, column: 39)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 226, column: 17)
!1467 = !DILocation(line: 230, column: 17, scope: !1465)
!1468 = !DILocation(line: 231, column: 13, scope: !1465)
!1469 = !DILocation(line: 216, column: 62, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 215, column: 13)
!1471 = !DILocation(line: 216, column: 69, scope: !1470)
!1472 = !DILocation(line: 236, column: 17, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 231, column: 20)
!1474 = !DILocation(line: 239, column: 21, scope: !1473)
!1475 = !DILocation(line: 0, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 250, column: 17)
!1477 = !DILocation(line: 250, column: 17, scope: !1457)
!1478 = !DILocation(line: 253, column: 75, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 252, column: 13)
!1480 = !DILocation(line: 253, column: 82, scope: !1479)
!1481 = !DILocation(line: 263, column: 21, scope: !1457)
!1482 = !DILocation(line: 267, column: 17, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 265, column: 39)
!1484 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 265, column: 17)
!1485 = !DILocation(line: 269, column: 17, scope: !1483)
!1486 = !DILocation(line: 270, column: 13, scope: !1483)
!1487 = !DILocation(line: 257, column: 66, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 256, column: 13)
!1489 = !DILocation(line: 257, column: 73, scope: !1488)
!1490 = !DILocation(line: 275, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 270, column: 20)
!1492 = !DILocation(line: 278, column: 21, scope: !1491)
!1493 = !DILocation(line: 288, column: 13, scope: !1457)
!1494 = !DILocation(line: 290, column: 13, scope: !1457)
!1495 = !DILocation(line: 294, column: 13, scope: !1457)
!1496 = !DILocation(line: 0, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 299, column: 17)
!1498 = !DILocation(line: 299, column: 17, scope: !1457)
!1499 = !DILocation(line: 302, column: 84, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 301, column: 13)
!1501 = !DILocation(line: 302, column: 91, scope: !1500)
!1502 = !DILocation(line: 314, column: 21, scope: !1457)
!1503 = !DILocation(line: 318, column: 17, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 316, column: 39)
!1505 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 316, column: 17)
!1506 = !DILocation(line: 323, column: 17, scope: !1504)
!1507 = !DILocation(line: 326, column: 17, scope: !1504)
!1508 = !DILocation(line: 328, column: 17, scope: !1504)
!1509 = !DILocation(line: 329, column: 13, scope: !1504)
!1510 = !DILocation(line: 306, column: 75, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 305, column: 13)
!1512 = !DILocation(line: 306, column: 82, scope: !1511)
!1513 = !DILocation(line: 331, column: 17, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 329, column: 20)
!1515 = !DILocation(line: 338, column: 17, scope: !1514)
!1516 = !DILocation(line: 340, column: 17, scope: !1514)
!1517 = !DILocation(line: 343, column: 21, scope: !1514)
!1518 = !DILocation(line: 0, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 354, column: 17)
!1520 = !DILocation(line: 354, column: 17, scope: !1457)
!1521 = !DILocation(line: 357, column: 84, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 356, column: 13)
!1523 = !DILocation(line: 357, column: 91, scope: !1522)
!1524 = !DILocation(line: 371, column: 21, scope: !1457)
!1525 = !DILocation(line: 375, column: 17, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 373, column: 39)
!1527 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 373, column: 17)
!1528 = !DILocation(line: 380, column: 17, scope: !1526)
!1529 = !DILocation(line: 383, column: 17, scope: !1526)
!1530 = !DILocation(line: 385, column: 17, scope: !1526)
!1531 = !DILocation(line: 386, column: 13, scope: !1526)
!1532 = !DILocation(line: 361, column: 75, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 360, column: 13)
!1534 = !DILocation(line: 361, column: 82, scope: !1533)
!1535 = !DILocation(line: 388, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 386, column: 20)
!1537 = !DILocation(line: 395, column: 17, scope: !1536)
!1538 = !DILocation(line: 397, column: 17, scope: !1536)
!1539 = !DILocation(line: 400, column: 21, scope: !1536)
!1540 = !DILocation(line: 410, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 410, column: 13)
!1542 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 410, column: 13)
!1543 = distinct !{!1543, !1540, !1540}
!1544 = !DILocation(line: 0, scope: !1457)
!1545 = !DILocation(line: 415, column: 23, scope: !1392)
!1546 = !DILocation(line: 415, column: 5, scope: !1392)
!1547 = !DILocation(line: 419, column: 27, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 419, column: 17)
!1549 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 415, column: 29)
!1550 = !DILocation(line: 419, column: 32, scope: !1548)
!1551 = !DILocation(line: 419, column: 17, scope: !1549)
!1552 = !DILocation(line: 421, column: 47, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 421, column: 21)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 419, column: 47)
!1555 = !DILocation(line: 421, column: 55, scope: !1553)
!1556 = !{i8 0, i8 2}
!1557 = !DILocation(line: 421, column: 79, scope: !1553)
!1558 = !DILocation(line: 422, column: 59, scope: !1553)
!1559 = !DILocation(line: 422, column: 65, scope: !1553)
!1560 = !DILocation(line: 421, column: 21, scope: !1554)
!1561 = !DILocation(line: 425, column: 29, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 424, column: 17)
!1563 = !DILocation(line: 426, column: 17, scope: !1562)
!1564 = !DILocation(line: 429, column: 66, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 428, column: 26)
!1566 = !DILocation(line: 428, column: 26, scope: !1553)
!1567 = !DILocation(line: 432, column: 29, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 431, column: 17)
!1569 = !DILocation(line: 433, column: 17, scope: !1568)
!1570 = !DILocation(line: 436, column: 66, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 435, column: 26)
!1572 = !DILocation(line: 435, column: 26, scope: !1565)
!1573 = !DILocation(line: 447, column: 27, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 447, column: 17)
!1575 = !DILocation(line: 447, column: 32, scope: !1574)
!1576 = !DILocation(line: 447, column: 17, scope: !1549)
!1577 = !DILocation(line: 449, column: 47, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 449, column: 21)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 447, column: 47)
!1580 = !DILocation(line: 449, column: 55, scope: !1578)
!1581 = !DILocation(line: 449, column: 79, scope: !1578)
!1582 = !DILocation(line: 450, column: 59, scope: !1578)
!1583 = !DILocation(line: 450, column: 65, scope: !1578)
!1584 = !DILocation(line: 449, column: 21, scope: !1579)
!1585 = !DILocation(line: 453, column: 29, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 452, column: 17)
!1587 = !DILocation(line: 454, column: 17, scope: !1586)
!1588 = !DILocation(line: 457, column: 66, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 456, column: 26)
!1590 = !DILocation(line: 456, column: 26, scope: !1578)
!1591 = !DILocation(line: 464, column: 21, scope: !1549)
!1592 = !DILocation(line: 466, column: 13, scope: !1549)
!1593 = !DILocation(line: 470, column: 27, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 470, column: 17)
!1595 = !DILocation(line: 470, column: 32, scope: !1594)
!1596 = !DILocation(line: 470, column: 17, scope: !1549)
!1597 = !DILocation(line: 472, column: 47, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 472, column: 21)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 470, column: 47)
!1600 = !DILocation(line: 472, column: 55, scope: !1598)
!1601 = !DILocation(line: 472, column: 79, scope: !1598)
!1602 = !DILocation(line: 473, column: 59, scope: !1598)
!1603 = !DILocation(line: 473, column: 65, scope: !1598)
!1604 = !DILocation(line: 472, column: 21, scope: !1599)
!1605 = !DILocation(line: 480, column: 21, scope: !1549)
!1606 = !DILocation(line: 482, column: 13, scope: !1549)
!1607 = !DILocation(line: 486, column: 13, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 486, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 486, column: 13)
!1610 = distinct !{!1610, !1607, !1607}
!1611 = !DILocation(line: 491, column: 19, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 491, column: 9)
!1613 = !DILocation(line: 491, column: 28, scope: !1612)
!1614 = !DILocation(line: 491, column: 9, scope: !1392)
!1615 = !DILocation(line: 493, column: 17, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 491, column: 37)
!1617 = !DILocation(line: 495, column: 9, scope: !1616)
!1618 = !DILocation(line: 495, column: 35, scope: !1616)
!1619 = !DILocation(line: 496, column: 5, scope: !1616)
!1620 = !DILocation(line: 498, column: 5, scope: !1392)
!1621 = !DILocation(line: 500, column: 5, scope: !1392)
!1622 = !DILocation(line: 502, column: 9, scope: !1392)
!1623 = !DILocation(line: 504, column: 9, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 502, column: 16)
!1625 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 502, column: 9)
!1626 = !DILocation(line: 505, column: 5, scope: !1624)
!1627 = !DILocation(line: 506, column: 1, scope: !1392)
!1628 = distinct !DISubprogram(name: "DMA_Clock_Enable", scope: !3, file: !3, line: 912, type: !1234, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1629)
!1629 = !{!1630}
!1630 = !DILocalVariable(name: "channel", arg: 1, scope: !1628, file: !3, line: 912, type: !128)
!1631 = !DILocation(line: 0, scope: !1628)
!1632 = !DILocation(line: 914, column: 59, scope: !1628)
!1633 = !DILocation(line: 914, column: 67, scope: !1628)
!1634 = !DILocation(line: 914, column: 55, scope: !1628)
!1635 = !DILocation(line: 914, column: 51, scope: !1628)
!1636 = !DILocation(line: 915, column: 1, scope: !1628)
!1637 = distinct !DISubprogram(name: "DMA_Register", scope: !3, file: !3, line: 514, type: !1638, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!53, !128, !179}
!1640 = !{!1641, !1642}
!1641 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1637, file: !3, line: 514, type: !128)
!1642 = !DILocalVariable(name: "handler", arg: 2, scope: !1637, file: !3, line: 514, type: !179)
!1643 = !DILocation(line: 0, scope: !1637)
!1644 = !DILocation(line: 516, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 516, column: 9)
!1646 = !DILocation(line: 516, column: 20, scope: !1645)
!1647 = !DILocation(line: 517, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 516, column: 49)
!1649 = !DILocation(line: 518, column: 9, scope: !1648)
!1650 = !DILocation(line: 521, column: 26, scope: !1637)
!1651 = !DILocation(line: 521, column: 5, scope: !1637)
!1652 = !DILocation(line: 521, column: 31, scope: !1637)
!1653 = !DILocation(line: 523, column: 5, scope: !1637)
!1654 = !DILocation(line: 524, column: 1, scope: !1637)
!1655 = distinct !DISubprogram(name: "DMA_UnRegister", scope: !3, file: !3, line: 526, type: !1656, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1658)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!53, !128}
!1658 = !{!1659}
!1659 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1655, file: !3, line: 526, type: !128)
!1660 = !DILocation(line: 0, scope: !1655)
!1661 = !DILocation(line: 528, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 528, column: 9)
!1663 = !DILocation(line: 528, column: 20, scope: !1662)
!1664 = !DILocation(line: 529, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 528, column: 49)
!1666 = !DILocation(line: 530, column: 9, scope: !1665)
!1667 = !DILocation(line: 532, column: 26, scope: !1655)
!1668 = !DILocation(line: 532, column: 5, scope: !1655)
!1669 = !DILocation(line: 532, column: 31, scope: !1655)
!1670 = !DILocation(line: 533, column: 5, scope: !1655)
!1671 = !DILocation(line: 534, column: 1, scope: !1655)
!1672 = distinct !DISubprogram(name: "DMA_LISR", scope: !3, file: !3, line: 536, type: !520, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1672, file: !3, line: 536, type: !438)
!1675 = !DILocalVariable(name: "index", scope: !1672, file: !3, line: 538, type: !174)
!1676 = !DILocalVariable(name: "con", scope: !1672, file: !3, line: 539, type: !114)
!1677 = !DILocation(line: 0, scope: !1672)
!1678 = !DILocation(line: 542, column: 5, scope: !1672)
!1679 = !DILocation(line: 545, column: 5, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 545, column: 5)
!1681 = !DILocation(line: 547, column: 13, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 547, column: 13)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 545, column: 55)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 545, column: 5)
!1685 = !DILocation(line: 547, column: 46, scope: !1682)
!1686 = !DILocation(line: 547, column: 13, scope: !1683)
!1687 = !DILocation(line: 549, column: 22, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 547, column: 64)
!1689 = !DILocation(line: 549, column: 13, scope: !1688)
!1690 = !DILocation(line: 551, column: 13, scope: !1688)
!1691 = !DILocation(line: 553, column: 13, scope: !1688)
!1692 = !DILocation(line: 553, column: 20, scope: !1688)
!1693 = distinct !{!1693, !1691, !1694}
!1694 = !DILocation(line: 553, column: 48, scope: !1688)
!1695 = !DILocation(line: 554, column: 13, scope: !1688)
!1696 = !DILocation(line: 555, column: 13, scope: !1688)
!1697 = !DILocation(line: 557, column: 9, scope: !1688)
!1698 = !DILocation(line: 545, column: 27, scope: !1684)
!1699 = distinct !{!1699, !1679, !1700}
!1700 = !DILocation(line: 558, column: 5, scope: !1680)
!1701 = !DILocation(line: 562, column: 15, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 560, column: 68)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 560, column: 5)
!1704 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 560, column: 5)
!1705 = !DILocation(line: 564, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 564, column: 13)
!1707 = !DILocation(line: 564, column: 42, scope: !1706)
!1708 = !DILocation(line: 564, column: 13, scope: !1702)
!1709 = !DILocation(line: 566, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 564, column: 60)
!1711 = !DILocation(line: 566, column: 13, scope: !1710)
!1712 = !DILocation(line: 569, column: 25, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 569, column: 25)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 566, column: 32)
!1715 = !DILocation(line: 569, column: 78, scope: !1713)
!1716 = !DILocation(line: 569, column: 25, scope: !1714)
!1717 = !DILocation(line: 574, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 574, column: 25)
!1719 = !DILocation(line: 574, column: 78, scope: !1718)
!1720 = !DILocation(line: 574, column: 25, scope: !1714)
!1721 = !DILocation(line: 579, column: 25, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 579, column: 25)
!1723 = !DILocation(line: 579, column: 79, scope: !1722)
!1724 = !DILocation(line: 579, column: 25, scope: !1714)
!1725 = !DILocation(line: 584, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 584, column: 25)
!1727 = !DILocation(line: 584, column: 79, scope: !1726)
!1728 = !DILocation(line: 584, column: 25, scope: !1714)
!1729 = !DILocation(line: 589, column: 25, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 589, column: 25)
!1731 = !DILocation(line: 589, column: 79, scope: !1730)
!1732 = !DILocation(line: 589, column: 25, scope: !1714)
!1733 = !DILocation(line: 594, column: 25, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 594, column: 25)
!1735 = !DILocation(line: 594, column: 79, scope: !1734)
!1736 = !DILocation(line: 594, column: 25, scope: !1714)
!1737 = !DILocation(line: 599, column: 25, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 599, column: 25)
!1739 = !DILocation(line: 599, column: 79, scope: !1738)
!1740 = !DILocation(line: 599, column: 25, scope: !1714)
!1741 = !DILocation(line: 604, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 604, column: 25)
!1743 = !DILocation(line: 604, column: 79, scope: !1742)
!1744 = !DILocation(line: 604, column: 25, scope: !1714)
!1745 = !DILocation(line: 609, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 609, column: 25)
!1747 = !DILocation(line: 609, column: 80, scope: !1746)
!1748 = !DILocation(line: 609, column: 25, scope: !1714)
!1749 = !DILocation(line: 614, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 614, column: 25)
!1751 = !DILocation(line: 614, column: 80, scope: !1750)
!1752 = !DILocation(line: 614, column: 25, scope: !1714)
!1753 = !DILocation(line: 619, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 619, column: 25)
!1755 = !DILocation(line: 619, column: 80, scope: !1754)
!1756 = !DILocation(line: 619, column: 25, scope: !1714)
!1757 = !DILocation(line: 624, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 624, column: 25)
!1759 = !DILocation(line: 624, column: 80, scope: !1758)
!1760 = !DILocation(line: 624, column: 25, scope: !1714)
!1761 = !DILocation(line: 629, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 629, column: 25)
!1763 = !DILocation(line: 629, column: 80, scope: !1762)
!1764 = !DILocation(line: 629, column: 25, scope: !1714)
!1765 = !DILocation(line: 634, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 634, column: 25)
!1767 = !DILocation(line: 634, column: 78, scope: !1766)
!1768 = !DILocation(line: 634, column: 25, scope: !1714)
!1769 = !DILocation(line: 0, scope: !1714)
!1770 = !DILocation(line: 640, column: 13, scope: !1710)
!1771 = !DILocation(line: 641, column: 9, scope: !1710)
!1772 = !DILocation(line: 560, column: 64, scope: !1703)
!1773 = !DILocation(line: 560, column: 40, scope: !1703)
!1774 = !DILocation(line: 560, column: 5, scope: !1704)
!1775 = distinct !{!1775, !1774, !1776}
!1776 = !DILocation(line: 642, column: 5, scope: !1704)
!1777 = !DILocation(line: 646, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 644, column: 68)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 644, column: 5)
!1780 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 644, column: 5)
!1781 = !DILocation(line: 648, column: 13, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 648, column: 13)
!1783 = !DILocation(line: 648, column: 42, scope: !1782)
!1784 = !DILocation(line: 648, column: 13, scope: !1778)
!1785 = !DILocation(line: 650, column: 25, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 648, column: 62)
!1787 = !DILocation(line: 650, column: 13, scope: !1786)
!1788 = !DILocation(line: 653, column: 25, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 653, column: 25)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 650, column: 32)
!1791 = !DILocation(line: 653, column: 81, scope: !1789)
!1792 = !DILocation(line: 653, column: 25, scope: !1790)
!1793 = !DILocation(line: 658, column: 25, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 658, column: 25)
!1795 = !DILocation(line: 658, column: 81, scope: !1794)
!1796 = !DILocation(line: 658, column: 25, scope: !1790)
!1797 = !DILocation(line: 663, column: 25, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 663, column: 25)
!1799 = !DILocation(line: 663, column: 82, scope: !1798)
!1800 = !DILocation(line: 663, column: 25, scope: !1790)
!1801 = !DILocation(line: 668, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 668, column: 25)
!1803 = !DILocation(line: 668, column: 82, scope: !1802)
!1804 = !DILocation(line: 668, column: 25, scope: !1790)
!1805 = !DILocation(line: 673, column: 25, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 673, column: 25)
!1807 = !DILocation(line: 673, column: 82, scope: !1806)
!1808 = !DILocation(line: 673, column: 25, scope: !1790)
!1809 = !DILocation(line: 678, column: 25, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 678, column: 25)
!1811 = !DILocation(line: 678, column: 82, scope: !1810)
!1812 = !DILocation(line: 678, column: 25, scope: !1790)
!1813 = !DILocation(line: 683, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 683, column: 25)
!1815 = !DILocation(line: 683, column: 82, scope: !1814)
!1816 = !DILocation(line: 683, column: 25, scope: !1790)
!1817 = !DILocation(line: 688, column: 25, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 688, column: 25)
!1819 = !DILocation(line: 688, column: 82, scope: !1818)
!1820 = !DILocation(line: 688, column: 25, scope: !1790)
!1821 = !DILocation(line: 693, column: 25, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 693, column: 25)
!1823 = !DILocation(line: 693, column: 83, scope: !1822)
!1824 = !DILocation(line: 693, column: 25, scope: !1790)
!1825 = !DILocation(line: 698, column: 25, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 698, column: 25)
!1827 = !DILocation(line: 698, column: 83, scope: !1826)
!1828 = !DILocation(line: 698, column: 25, scope: !1790)
!1829 = !DILocation(line: 703, column: 25, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 703, column: 25)
!1831 = !DILocation(line: 703, column: 83, scope: !1830)
!1832 = !DILocation(line: 703, column: 25, scope: !1790)
!1833 = !DILocation(line: 708, column: 25, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 708, column: 25)
!1835 = !DILocation(line: 708, column: 83, scope: !1834)
!1836 = !DILocation(line: 708, column: 25, scope: !1790)
!1837 = !DILocation(line: 713, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 713, column: 25)
!1839 = !DILocation(line: 713, column: 83, scope: !1838)
!1840 = !DILocation(line: 713, column: 25, scope: !1790)
!1841 = !DILocation(line: 718, column: 25, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 718, column: 25)
!1843 = !DILocation(line: 718, column: 81, scope: !1842)
!1844 = !DILocation(line: 718, column: 25, scope: !1790)
!1845 = !DILocation(line: 0, scope: !1790)
!1846 = !DILocation(line: 724, column: 13, scope: !1786)
!1847 = !DILocation(line: 725, column: 9, scope: !1786)
!1848 = !DILocation(line: 644, column: 64, scope: !1779)
!1849 = !DILocation(line: 644, column: 40, scope: !1779)
!1850 = !DILocation(line: 644, column: 5, scope: !1780)
!1851 = distinct !{!1851, !1850, !1852}
!1852 = !DILocation(line: 726, column: 5, scope: !1780)
!1853 = !DILocation(line: 728, column: 5, scope: !1672)
!1854 = !DILocation(line: 729, column: 1, scope: !1672)
!1855 = distinct !DISubprogram(name: "DMA_Clock_Disable", scope: !3, file: !3, line: 917, type: !1234, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "channel", arg: 1, scope: !1855, file: !3, line: 917, type: !128)
!1858 = !DILocation(line: 0, scope: !1855)
!1859 = !DILocation(line: 919, column: 59, scope: !1855)
!1860 = !DILocation(line: 919, column: 67, scope: !1855)
!1861 = !DILocation(line: 919, column: 55, scope: !1855)
!1862 = !DILocation(line: 919, column: 51, scope: !1855)
!1863 = !DILocation(line: 920, column: 1, scope: !1855)
!1864 = distinct !DISubprogram(name: "DMA_Init", scope: !3, file: !3, line: 732, type: !181, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1865)
!1865 = !{!1866}
!1866 = !DILocalVariable(name: "index", scope: !1864, file: !3, line: 734, type: !174)
!1867 = !DILocation(line: 0, scope: !1864)
!1868 = !DILocation(line: 739, column: 5, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 739, column: 5)
!1870 = !DILocation(line: 740, column: 41, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 740, column: 13)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 739, column: 55)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 739, column: 5)
!1874 = !DILocation(line: 740, column: 33, scope: !1871)
!1875 = !DILocation(line: 740, column: 52, scope: !1871)
!1876 = !DILocation(line: 740, column: 13, scope: !1872)
!1877 = !DILocation(line: 741, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 740, column: 58)
!1879 = !DILocation(line: 741, column: 30, scope: !1878)
!1880 = !DILocation(line: 742, column: 9, scope: !1878)
!1881 = !DILocation(line: 739, column: 51, scope: !1873)
!1882 = !DILocation(line: 739, column: 27, scope: !1873)
!1883 = distinct !{!1883, !1868, !1884}
!1884 = !DILocation(line: 743, column: 5, scope: !1869)
!1885 = !DILocation(line: 748, column: 32, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 746, column: 55)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 746, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 746, column: 5)
!1889 = !DILocation(line: 748, column: 9, scope: !1886)
!1890 = !DILocation(line: 746, column: 27, scope: !1887)
!1891 = !DILocation(line: 746, column: 5, scope: !1888)
!1892 = distinct !{!1892, !1891, !1893}
!1893 = !DILocation(line: 749, column: 5, scope: !1888)
!1894 = !DILocation(line: 752, column: 5, scope: !1864)
!1895 = !DILocation(line: 753, column: 5, scope: !1864)
!1896 = !DILocation(line: 754, column: 5, scope: !1864)
!1897 = !DILocation(line: 755, column: 1, scope: !1864)
!1898 = distinct !DISubprogram(name: "dma_set_channel_busy", scope: !3, file: !3, line: 757, type: !1899, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!128, !128}
!1901 = !{!1902, !1903, !1904, !1905}
!1902 = !DILocalVariable(name: "channel", arg: 1, scope: !1898, file: !3, line: 757, type: !128)
!1903 = !DILocalVariable(name: "channel_index", scope: !1898, file: !3, line: 759, type: !128)
!1904 = !DILocalVariable(name: "flags", scope: !1898, file: !3, line: 760, type: !859)
!1905 = !DILocalVariable(name: "index", scope: !1898, file: !3, line: 764, type: !128)
!1906 = !DILocation(line: 0, scope: !1898)
!1907 = !DILocation(line: 764, column: 29, scope: !1898)
!1908 = !DILocation(line: 470, column: 3, scope: !1259, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 766, column: 5, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 766, column: 5)
!1911 = !DILocation(line: 0, scope: !1259, inlinedAt: !1909)
!1912 = !DILocation(line: 330, column: 3, scope: !1270, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 766, column: 5, scope: !1910)
!1914 = !DILocation(line: 768, column: 9, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 768, column: 9)
!1916 = !DILocation(line: 768, column: 33, scope: !1915)
!1917 = !DILocation(line: 768, column: 9, scope: !1898)
!1918 = !DILocation(line: 769, column: 33, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 768, column: 43)
!1920 = !DILocation(line: 770, column: 9, scope: !1919)
!1921 = !DILocation(line: 0, scope: !1291, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 774, column: 5, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 774, column: 5)
!1924 = !DILocation(line: 483, column: 3, scope: !1291, inlinedAt: !1922)
!1925 = !DILocation(line: 776, column: 5, scope: !1898)
!1926 = !DILocation(line: 777, column: 5, scope: !1898)
!1927 = !DILocation(line: 778, column: 5, scope: !1898)
!1928 = !DILocation(line: 779, column: 5, scope: !1898)
!1929 = !DILocation(line: 781, column: 1, scope: !1898)
!1930 = distinct !DISubprogram(name: "dma_set_channel_idle", scope: !3, file: !3, line: 783, type: !1899, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DILocalVariable(name: "channel", arg: 1, scope: !1930, file: !3, line: 783, type: !128)
!1933 = !DILocalVariable(name: "flags", scope: !1930, file: !3, line: 785, type: !859)
!1934 = !DILocalVariable(name: "index", scope: !1930, file: !3, line: 786, type: !128)
!1935 = !DILocation(line: 0, scope: !1930)
!1936 = !DILocation(line: 786, column: 29, scope: !1930)
!1937 = !DILocation(line: 787, column: 5, scope: !1930)
!1938 = !DILocation(line: 470, column: 3, scope: !1259, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 788, column: 5, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 788, column: 5)
!1941 = !DILocation(line: 0, scope: !1259, inlinedAt: !1939)
!1942 = !DILocation(line: 330, column: 3, scope: !1270, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 788, column: 5, scope: !1940)
!1944 = !DILocation(line: 789, column: 5, scope: !1930)
!1945 = !DILocation(line: 789, column: 29, scope: !1930)
!1946 = !DILocation(line: 790, column: 33, scope: !1930)
!1947 = !DILocation(line: 790, column: 24, scope: !1930)
!1948 = !DILocation(line: 791, column: 21, scope: !1930)
!1949 = !DILocation(line: 791, column: 5, scope: !1930)
!1950 = !DILocation(line: 791, column: 26, scope: !1930)
!1951 = !DILocation(line: 0, scope: !1291, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 792, column: 5, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 792, column: 5)
!1954 = !DILocation(line: 483, column: 3, scope: !1291, inlinedAt: !1952)
!1955 = !DILocation(line: 794, column: 5, scope: !1930)
!1956 = distinct !DISubprogram(name: "DMA_Vfifo_init", scope: !3, file: !3, line: 798, type: !181, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1957 = !{!1958}
!1958 = !DILocalVariable(name: "dma_con", scope: !1956, file: !3, line: 800, type: !114)
!1959 = !DILocation(line: 0, scope: !1956)
!1960 = !DILocation(line: 802, column: 5, scope: !1956)
!1961 = !DILocation(line: 804, column: 5, scope: !1956)
!1962 = !DILocation(line: 806, column: 5, scope: !1956)
!1963 = !DILocation(line: 808, column: 5, scope: !1956)
!1964 = !DILocation(line: 810, column: 5, scope: !1956)
!1965 = !DILocation(line: 812, column: 5, scope: !1956)
!1966 = !DILocation(line: 814, column: 5, scope: !1956)
!1967 = !DILocation(line: 816, column: 5, scope: !1956)
!1968 = !DILocation(line: 818, column: 5, scope: !1956)
!1969 = !DILocation(line: 820, column: 5, scope: !1956)
!1970 = !DILocation(line: 822, column: 5, scope: !1956)
!1971 = !DILocation(line: 824, column: 5, scope: !1956)
!1972 = !DILocation(line: 826, column: 5, scope: !1956)
!1973 = !DILocation(line: 828, column: 5, scope: !1956)
!1974 = !DILocation(line: 830, column: 5, scope: !1956)
!1975 = !DILocation(line: 832, column: 5, scope: !1956)
!1976 = !DILocation(line: 834, column: 5, scope: !1956)
!1977 = !DILocation(line: 836, column: 5, scope: !1956)
!1978 = !DILocation(line: 838, column: 5, scope: !1956)
!1979 = !DILocation(line: 840, column: 5, scope: !1956)
!1980 = !DILocation(line: 842, column: 5, scope: !1956)
!1981 = !DILocation(line: 844, column: 5, scope: !1956)
!1982 = !DILocation(line: 846, column: 5, scope: !1956)
!1983 = !DILocation(line: 848, column: 5, scope: !1956)
!1984 = !DILocation(line: 850, column: 5, scope: !1956)
!1985 = !DILocation(line: 852, column: 5, scope: !1956)
!1986 = !DILocation(line: 854, column: 5, scope: !1956)
!1987 = !DILocation(line: 856, column: 5, scope: !1956)
!1988 = !DILocation(line: 858, column: 1, scope: !1956)
!1989 = distinct !DISubprogram(name: "DMA_Vfifo_SetAdrs", scope: !3, file: !3, line: 861, type: !1990, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !136, !136, !1992, !136, !136, !136}
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !6, line: 144, baseType: !97)
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999}
!1994 = !DILocalVariable(name: "adrs", arg: 1, scope: !1989, file: !3, line: 861, type: !136)
!1995 = !DILocalVariable(name: "len", arg: 2, scope: !1989, file: !3, line: 862, type: !136)
!1996 = !DILocalVariable(name: "ch", arg: 3, scope: !1989, file: !3, line: 862, type: !1992)
!1997 = !DILocalVariable(name: "alt_len", arg: 4, scope: !1989, file: !3, line: 863, type: !136)
!1998 = !DILocalVariable(name: "dma_count", arg: 5, scope: !1989, file: !3, line: 864, type: !136)
!1999 = !DILocalVariable(name: "timeout_counter", arg: 6, scope: !1989, file: !3, line: 865, type: !136)
!2000 = !DILocation(line: 0, scope: !1989)
!2001 = !DILocation(line: 867, column: 5, scope: !1989)
!2002 = !DILocation(line: 868, column: 5, scope: !1989)
!2003 = !DILocation(line: 869, column: 5, scope: !1989)
!2004 = !DILocation(line: 870, column: 5, scope: !1989)
!2005 = !DILocation(line: 870, column: 30, scope: !1989)
!2006 = !DILocation(line: 871, column: 5, scope: !1989)
!2007 = !DILocation(line: 871, column: 27, scope: !1989)
!2008 = !DILocation(line: 872, column: 1, scope: !1989)
!2009 = distinct !DISubprogram(name: "DMA_Vfifo_Set_timeout", scope: !3, file: !3, line: 874, type: !2010, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !1992, !136}
!2012 = !{!2013, !2014}
!2013 = !DILocalVariable(name: "ch", arg: 1, scope: !2009, file: !3, line: 874, type: !1992)
!2014 = !DILocalVariable(name: "timeout_counter", arg: 2, scope: !2009, file: !3, line: 874, type: !136)
!2015 = !DILocation(line: 0, scope: !2009)
!2016 = !DILocation(line: 877, column: 5, scope: !2009)
!2017 = !DILocation(line: 877, column: 27, scope: !2009)
!2018 = !DILocation(line: 878, column: 1, scope: !2009)
!2019 = distinct !DISubprogram(name: "DMA_Vfifo_enable_interrupt", scope: !3, file: !3, line: 880, type: !2020, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !1992}
!2022 = !{!2023}
!2023 = !DILocalVariable(name: "ch", arg: 1, scope: !2019, file: !3, line: 880, type: !1992)
!2024 = !DILocation(line: 0, scope: !2019)
!2025 = !DILocation(line: 883, column: 5, scope: !2019)
!2026 = !DILocation(line: 884, column: 1, scope: !2019)
!2027 = distinct !DISubprogram(name: "DMA_Vfifo_disable_interrupt", scope: !3, file: !3, line: 886, type: !2020, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "ch", arg: 1, scope: !2027, file: !3, line: 886, type: !1992)
!2030 = !DILocation(line: 0, scope: !2027)
!2031 = !DILocation(line: 889, column: 5, scope: !2027)
!2032 = !DILocation(line: 890, column: 1, scope: !2027)
!2033 = distinct !DISubprogram(name: "DMA_Vfifo_Flush", scope: !3, file: !3, line: 893, type: !2020, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2034)
!2034 = !{!2035}
!2035 = !DILocalVariable(name: "ch", arg: 1, scope: !2033, file: !3, line: 893, type: !1992)
!2036 = !DILocation(line: 0, scope: !2033)
!2037 = !DILocation(line: 895, column: 14, scope: !2033)
!2038 = !DILocation(line: 895, column: 5, scope: !2033)
!2039 = !DILocation(line: 897, column: 5, scope: !2033)
!2040 = !DILocation(line: 898, column: 1, scope: !2033)
!2041 = distinct !DISubprogram(name: "DMA_Vfifo_Register_Callback", scope: !3, file: !3, line: 900, type: !2042, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1992, !179}
!2044 = !{!2045, !2046}
!2045 = !DILocalVariable(name: "ch", arg: 1, scope: !2041, file: !3, line: 900, type: !1992)
!2046 = !DILocalVariable(name: "callback_func", arg: 2, scope: !2041, file: !3, line: 901, type: !179)
!2047 = !DILocation(line: 0, scope: !2041)
!2048 = !DILocation(line: 903, column: 28, scope: !2041)
!2049 = !DILocation(line: 903, column: 5, scope: !2041)
!2050 = !DILocation(line: 903, column: 46, scope: !2041)
!2051 = !DILocation(line: 904, column: 1, scope: !2041)
!2052 = distinct !DISubprogram(name: "DMA_Vfifo_Register_TO_Callback", scope: !3, file: !3, line: 906, type: !2042, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2053)
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "ch", arg: 1, scope: !2052, file: !3, line: 906, type: !1992)
!2055 = !DILocalVariable(name: "callback_func", arg: 2, scope: !2052, file: !3, line: 907, type: !179)
!2056 = !DILocation(line: 0, scope: !2052)
!2057 = !DILocation(line: 909, column: 31, scope: !2052)
!2058 = !DILocation(line: 909, column: 5, scope: !2052)
!2059 = !DILocation(line: 909, column: 49, scope: !2052)
!2060 = !DILocation(line: 910, column: 1, scope: !2052)
!2061 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !201, file: !201, line: 73, type: !2062, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !114, !114, !126}
!2064 = !{!2065, !2066, !2067}
!2065 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2061, file: !201, line: 73, type: !114)
!2066 = !DILocalVariable(name: "countValue", arg: 2, scope: !2061, file: !201, line: 73, type: !114)
!2067 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2061, file: !201, line: 73, type: !126)
!2068 = !DILocation(line: 0, scope: !2061)
!2069 = !DILocation(line: 75, column: 5, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2061, file: !201, line: 75, column: 5)
!2071 = !DILocation(line: 75, column: 5, scope: !2061)
!2072 = !DILocation(line: 75, column: 5, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !201, line: 75, column: 5)
!2074 = distinct !{!2074, !2072, !2072}
!2075 = !DILocation(line: 77, column: 9, scope: !2061)
!2076 = !DILocation(line: 78, column: 30, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !201, line: 77, column: 24)
!2078 = distinct !DILexicalBlock(scope: !2061, file: !201, line: 77, column: 9)
!2079 = !DILocation(line: 0, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !201, line: 79, column: 13)
!2081 = !DILocation(line: 79, column: 13, scope: !2077)
!2082 = !DILocation(line: 80, column: 34, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !201, line: 79, column: 37)
!2084 = !DILocation(line: 81, column: 9, scope: !2083)
!2085 = !DILocation(line: 82, column: 34, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2080, file: !201, line: 81, column: 16)
!2087 = !DILocation(line: 85, column: 30, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !201, line: 84, column: 31)
!2089 = distinct !DILexicalBlock(scope: !2078, file: !201, line: 84, column: 16)
!2090 = !DILocation(line: 0, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !201, line: 86, column: 13)
!2092 = !DILocation(line: 86, column: 13, scope: !2088)
!2093 = !DILocation(line: 87, column: 34, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !201, line: 86, column: 37)
!2095 = !DILocation(line: 88, column: 9, scope: !2094)
!2096 = !DILocation(line: 89, column: 34, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !201, line: 88, column: 16)
!2098 = !DILocation(line: 92, column: 1, scope: !2061)
!2099 = distinct !DISubprogram(name: "GPT_Start", scope: !201, file: !201, line: 94, type: !2100, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !114}
!2102 = !{!2103}
!2103 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2099, file: !201, line: 94, type: !114)
!2104 = !DILocation(line: 0, scope: !2099)
!2105 = !DILocation(line: 96, column: 5, scope: !2099)
!2106 = !DILocation(line: 96, column: 5, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !201, line: 96, column: 5)
!2108 = distinct !DILexicalBlock(scope: !2099, file: !201, line: 96, column: 5)
!2109 = distinct !{!2109, !2106, !2106}
!2110 = !DILocation(line: 99, column: 30, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !201, line: 98, column: 24)
!2112 = distinct !DILexicalBlock(scope: !2099, file: !201, line: 98, column: 9)
!2113 = !DILocation(line: 100, column: 9, scope: !2111)
!2114 = !DILocation(line: 101, column: 5, scope: !2111)
!2115 = !DILocation(line: 102, column: 30, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !201, line: 101, column: 31)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !201, line: 101, column: 16)
!2118 = !DILocation(line: 103, column: 9, scope: !2116)
!2119 = !DILocation(line: 104, column: 5, scope: !2116)
!2120 = !DILocation(line: 105, column: 30, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !201, line: 104, column: 31)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !201, line: 104, column: 16)
!2123 = !DILocation(line: 106, column: 5, scope: !2121)
!2124 = !DILocation(line: 108, column: 1, scope: !2099)
!2125 = distinct !DISubprogram(name: "GPT_Stop", scope: !201, file: !201, line: 110, type: !2100, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2126)
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2125, file: !201, line: 110, type: !114)
!2128 = !DILocation(line: 0, scope: !2125)
!2129 = !DILocation(line: 112, column: 9, scope: !2125)
!2130 = !DILocation(line: 113, column: 30, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !201, line: 112, column: 24)
!2132 = distinct !DILexicalBlock(scope: !2125, file: !201, line: 112, column: 9)
!2133 = !DILocation(line: 114, column: 30, scope: !2131)
!2134 = !DILocation(line: 115, column: 31, scope: !2131)
!2135 = !DILocation(line: 117, column: 5, scope: !2131)
!2136 = !DILocation(line: 118, column: 30, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !201, line: 117, column: 31)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !201, line: 117, column: 16)
!2139 = !DILocation(line: 119, column: 30, scope: !2137)
!2140 = !DILocation(line: 120, column: 31, scope: !2137)
!2141 = !DILocation(line: 121, column: 5, scope: !2137)
!2142 = !DILocation(line: 122, column: 30, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !201, line: 121, column: 31)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !201, line: 121, column: 16)
!2145 = !DILocation(line: 123, column: 5, scope: !2143)
!2146 = !DILocation(line: 124, column: 30, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !201, line: 123, column: 31)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !201, line: 123, column: 16)
!2149 = !DILocation(line: 125, column: 5, scope: !2147)
!2150 = !DILocation(line: 128, column: 1, scope: !2125)
!2151 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !201, file: !201, line: 130, type: !520, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2152)
!2152 = !{!2153, !2154}
!2153 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2151, file: !201, line: 130, type: !438)
!2154 = !DILocalVariable(name: "GPT_Status", scope: !2151, file: !201, line: 132, type: !249)
!2155 = !DILocation(line: 0, scope: !2151)
!2156 = !DILocation(line: 135, column: 18, scope: !2151)
!2157 = !DILocation(line: 136, column: 26, scope: !2151)
!2158 = !DILocation(line: 136, column: 24, scope: !2151)
!2159 = !DILocation(line: 138, column: 20, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2151, file: !201, line: 138, column: 9)
!2161 = !DILocation(line: 138, column: 9, scope: !2151)
!2162 = !DILocation(line: 141, column: 27, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !201, line: 141, column: 16)
!2164 = !DILocation(line: 141, column: 16, scope: !2160)
!2165 = !DILocation(line: 0, scope: !2160)
!2166 = !DILocation(line: 145, column: 1, scope: !2151)
!2167 = distinct !DISubprogram(name: "GPT_init", scope: !201, file: !201, line: 147, type: !2168, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !114, !114, !180}
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2167, file: !201, line: 147, type: !114)
!2172 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !2167, file: !201, line: 147, type: !114)
!2173 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !2167, file: !201, line: 147, type: !180)
!2174 = !DILocation(line: 0, scope: !2167)
!2175 = !DILocation(line: 149, column: 5, scope: !2167)
!2176 = !DILocation(line: 149, column: 5, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !201, line: 149, column: 5)
!2178 = distinct !DILexicalBlock(scope: !2167, file: !201, line: 149, column: 5)
!2179 = distinct !{!2179, !2176, !2176}
!2180 = !DILocation(line: 149, column: 5, scope: !2178)
!2181 = !DILocation(line: 151, column: 23, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2167, file: !201, line: 151, column: 9)
!2183 = !DILocation(line: 152, column: 9, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2182, file: !201, line: 151, column: 41)
!2185 = !DILocation(line: 153, column: 9, scope: !2184)
!2186 = !DILocation(line: 154, column: 9, scope: !2184)
!2187 = !DILocation(line: 155, column: 5, scope: !2184)
!2188 = !DILocation(line: 157, column: 9, scope: !2167)
!2189 = !DILocation(line: 158, column: 37, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !201, line: 157, column: 24)
!2191 = distinct !DILexicalBlock(scope: !2167, file: !201, line: 157, column: 9)
!2192 = !DILocation(line: 159, column: 30, scope: !2190)
!2193 = !DILocation(line: 160, column: 45, scope: !2190)
!2194 = !DILocation(line: 160, column: 30, scope: !2190)
!2195 = !DILocation(line: 161, column: 5, scope: !2190)
!2196 = !DILocation(line: 162, column: 37, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !201, line: 161, column: 31)
!2198 = distinct !DILexicalBlock(scope: !2191, file: !201, line: 161, column: 16)
!2199 = !DILocation(line: 163, column: 30, scope: !2197)
!2200 = !DILocation(line: 164, column: 45, scope: !2197)
!2201 = !DILocation(line: 164, column: 30, scope: !2197)
!2202 = !DILocation(line: 165, column: 5, scope: !2197)
!2203 = !DILocation(line: 166, column: 59, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !201, line: 165, column: 31)
!2205 = distinct !DILexicalBlock(scope: !2198, file: !201, line: 165, column: 16)
!2206 = !DILocation(line: 166, column: 45, scope: !2204)
!2207 = !DILocation(line: 166, column: 30, scope: !2204)
!2208 = !DILocation(line: 167, column: 5, scope: !2204)
!2209 = !DILocation(line: 168, column: 59, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !201, line: 167, column: 31)
!2211 = distinct !DILexicalBlock(scope: !2205, file: !201, line: 167, column: 16)
!2212 = !DILocation(line: 168, column: 45, scope: !2210)
!2213 = !DILocation(line: 168, column: 30, scope: !2210)
!2214 = !DILocation(line: 169, column: 30, scope: !2210)
!2215 = !DILocation(line: 170, column: 5, scope: !2210)
!2216 = !DILocation(line: 171, column: 1, scope: !2167)
!2217 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !201, file: !201, line: 173, type: !2218, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!114, !114}
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2217, file: !201, line: 173, type: !114)
!2222 = !DILocalVariable(name: "current_count", scope: !2217, file: !201, line: 175, type: !114)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 177, column: 5, scope: !2217)
!2225 = !DILocation(line: 177, column: 5, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !201, line: 177, column: 5)
!2227 = distinct !DILexicalBlock(scope: !2217, file: !201, line: 177, column: 5)
!2228 = distinct !{!2228, !2225, !2225}
!2229 = !DILocation(line: 183, column: 5, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !201, line: 181, column: 31)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !201, line: 181, column: 16)
!2232 = distinct !DILexicalBlock(scope: !2217, file: !201, line: 179, column: 9)
!2233 = !DILocation(line: 185, column: 5, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !201, line: 183, column: 31)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !201, line: 183, column: 16)
!2236 = !DILocation(line: 187, column: 5, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !201, line: 185, column: 31)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !201, line: 185, column: 16)
!2239 = !DILocation(line: 0, scope: !2232)
!2240 = !DILocation(line: 189, column: 5, scope: !2217)
!2241 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !201, file: !201, line: 193, type: !181, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1229)
!2242 = !DILocation(line: 195, column: 5, scope: !2241)
!2243 = !DILocation(line: 196, column: 1, scope: !2241)
!2244 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !201, file: !201, line: 198, type: !181, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1229)
!2245 = !DILocation(line: 200, column: 5, scope: !2244)
!2246 = !DILocation(line: 201, column: 1, scope: !2244)
!2247 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !970, file: !970, line: 54, type: !2248, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2251)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2250, !219, !251}
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 56, baseType: !53)
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2247, file: !970, line: 54, type: !219)
!2253 = !DILocalVariable(name: "outEnable", arg: 2, scope: !2247, file: !970, line: 54, type: !251)
!2254 = !DILocalVariable(name: "no", scope: !2247, file: !970, line: 57, type: !328)
!2255 = !DILocalVariable(name: "remainder", scope: !2247, file: !970, line: 58, type: !328)
!2256 = !DILocation(line: 0, scope: !2247)
!2257 = !DILocation(line: 59, column: 19, scope: !2247)
!2258 = !DILocation(line: 60, column: 17, scope: !2247)
!2259 = !DILocation(line: 61, column: 5, scope: !2247)
!2260 = !DILocation(line: 65, column: 27, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !970, line: 65, column: 17)
!2262 = distinct !DILexicalBlock(scope: !2247, file: !970, line: 61, column: 17)
!2263 = !DILocation(line: 0, scope: !2261)
!2264 = !DILocation(line: 65, column: 17, scope: !2262)
!2265 = !DILocation(line: 66, column: 21, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !970, line: 65, column: 33)
!2267 = !DILocation(line: 67, column: 73, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !970, line: 66, column: 38)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !970, line: 66, column: 21)
!2270 = !DILocation(line: 67, column: 69, scope: !2268)
!2271 = !DILocation(line: 67, column: 66, scope: !2268)
!2272 = !DILocation(line: 68, column: 17, scope: !2268)
!2273 = !DILocation(line: 68, column: 28, scope: !2269)
!2274 = !DILocation(line: 69, column: 77, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !970, line: 68, column: 45)
!2276 = distinct !DILexicalBlock(scope: !2269, file: !970, line: 68, column: 28)
!2277 = !DILocation(line: 70, column: 77, scope: !2275)
!2278 = !DILocation(line: 71, column: 17, scope: !2275)
!2279 = !DILocation(line: 72, column: 77, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !970, line: 71, column: 45)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !970, line: 71, column: 28)
!2282 = !DILocation(line: 73, column: 77, scope: !2280)
!2283 = !DILocation(line: 74, column: 17, scope: !2280)
!2284 = !DILocation(line: 75, column: 79, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !970, line: 74, column: 45)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !970, line: 74, column: 28)
!2287 = !DILocation(line: 76, column: 79, scope: !2285)
!2288 = !DILocation(line: 77, column: 17, scope: !2285)
!2289 = !DILocation(line: 78, column: 79, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !970, line: 77, column: 45)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !970, line: 77, column: 28)
!2292 = !DILocation(line: 79, column: 79, scope: !2290)
!2293 = !DILocation(line: 80, column: 17, scope: !2290)
!2294 = !DILocation(line: 81, column: 79, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !970, line: 80, column: 45)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !970, line: 80, column: 28)
!2297 = !DILocation(line: 82, column: 79, scope: !2295)
!2298 = !DILocation(line: 83, column: 17, scope: !2295)
!2299 = !DILocation(line: 85, column: 17, scope: !2266)
!2300 = !DILocation(line: 86, column: 13, scope: !2266)
!2301 = !DILocation(line: 88, column: 21, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2261, file: !970, line: 86, column: 20)
!2303 = !DILocation(line: 89, column: 72, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !970, line: 88, column: 38)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !970, line: 88, column: 21)
!2306 = !DILocation(line: 89, column: 66, scope: !2304)
!2307 = !DILocation(line: 90, column: 17, scope: !2304)
!2308 = !DILocation(line: 90, column: 28, scope: !2305)
!2309 = !DILocation(line: 91, column: 77, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !970, line: 90, column: 45)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !970, line: 90, column: 28)
!2312 = !DILocation(line: 92, column: 17, scope: !2310)
!2313 = !DILocation(line: 93, column: 77, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !970, line: 92, column: 45)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !970, line: 92, column: 28)
!2316 = !DILocation(line: 94, column: 17, scope: !2314)
!2317 = !DILocation(line: 95, column: 79, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !970, line: 94, column: 45)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !970, line: 94, column: 28)
!2320 = !DILocation(line: 96, column: 17, scope: !2318)
!2321 = !DILocation(line: 97, column: 79, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !970, line: 96, column: 45)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !970, line: 96, column: 28)
!2324 = !DILocation(line: 98, column: 17, scope: !2322)
!2325 = !DILocation(line: 99, column: 79, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !970, line: 98, column: 45)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !970, line: 98, column: 28)
!2328 = !DILocation(line: 100, column: 17, scope: !2326)
!2329 = !DILocation(line: 103, column: 17, scope: !2302)
!2330 = !DILocation(line: 109, column: 27, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2262, file: !970, line: 109, column: 17)
!2332 = !DILocation(line: 0, scope: !2331)
!2333 = !DILocation(line: 109, column: 17, scope: !2262)
!2334 = !DILocation(line: 110, column: 21, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !970, line: 109, column: 33)
!2336 = !DILocation(line: 111, column: 73, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !970, line: 110, column: 36)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !970, line: 110, column: 21)
!2339 = !DILocation(line: 111, column: 69, scope: !2337)
!2340 = !DILocation(line: 111, column: 66, scope: !2337)
!2341 = !DILocation(line: 112, column: 17, scope: !2337)
!2342 = !DILocation(line: 113, column: 79, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !970, line: 112, column: 24)
!2344 = !DILocation(line: 114, column: 79, scope: !2343)
!2345 = !DILocation(line: 117, column: 17, scope: !2335)
!2346 = !DILocation(line: 118, column: 13, scope: !2335)
!2347 = !DILocation(line: 120, column: 21, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2331, file: !970, line: 118, column: 20)
!2349 = !DILocation(line: 121, column: 72, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !970, line: 120, column: 36)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !970, line: 120, column: 21)
!2352 = !DILocation(line: 121, column: 66, scope: !2350)
!2353 = !DILocation(line: 122, column: 17, scope: !2350)
!2354 = !DILocation(line: 123, column: 79, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2351, file: !970, line: 122, column: 24)
!2356 = !DILocation(line: 126, column: 17, scope: !2348)
!2357 = !DILocation(line: 133, column: 1, scope: !2247)
!2358 = distinct !DISubprogram(name: "halGPO_Write", scope: !970, file: !970, line: 136, type: !2248, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2359)
!2359 = !{!2360, !2361, !2362, !2363}
!2360 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2358, file: !970, line: 136, type: !219)
!2361 = !DILocalVariable(name: "writeValue", arg: 2, scope: !2358, file: !970, line: 136, type: !251)
!2362 = !DILocalVariable(name: "no", scope: !2358, file: !970, line: 138, type: !328)
!2363 = !DILocalVariable(name: "remainder", scope: !2358, file: !970, line: 139, type: !328)
!2364 = !DILocation(line: 0, scope: !2358)
!2365 = !DILocation(line: 140, column: 19, scope: !2358)
!2366 = !DILocation(line: 141, column: 17, scope: !2358)
!2367 = !DILocation(line: 142, column: 5, scope: !2358)
!2368 = !DILocation(line: 145, column: 17, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !970, line: 145, column: 17)
!2370 = distinct !DILexicalBlock(scope: !2358, file: !970, line: 142, column: 17)
!2371 = !DILocation(line: 0, scope: !2369)
!2372 = !DILocation(line: 145, column: 17, scope: !2370)
!2373 = !DILocation(line: 146, column: 17, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !970, line: 145, column: 29)
!2375 = !DILocation(line: 147, column: 13, scope: !2374)
!2376 = !DILocation(line: 148, column: 17, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2369, file: !970, line: 147, column: 20)
!2378 = !DILocation(line: 153, column: 17, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2370, file: !970, line: 153, column: 17)
!2380 = !DILocation(line: 0, scope: !2379)
!2381 = !DILocation(line: 153, column: 17, scope: !2370)
!2382 = !DILocation(line: 154, column: 17, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !970, line: 153, column: 29)
!2384 = !DILocation(line: 155, column: 13, scope: !2383)
!2385 = !DILocation(line: 156, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2379, file: !970, line: 155, column: 20)
!2387 = !DILocation(line: 163, column: 1, scope: !2358)
!2388 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !970, file: !970, line: 169, type: !2389, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!251, !219}
!2391 = !{!2392, !2393, !2394, !2395}
!2392 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2388, file: !970, line: 169, type: !219)
!2393 = !DILocalVariable(name: "no", scope: !2388, file: !970, line: 171, type: !328)
!2394 = !DILocalVariable(name: "remainder", scope: !2388, file: !970, line: 172, type: !328)
!2395 = !DILocalVariable(name: "dout", scope: !2388, file: !970, line: 175, type: !251)
!2396 = !DILocation(line: 0, scope: !2388)
!2397 = !DILocation(line: 173, column: 19, scope: !2388)
!2398 = !DILocation(line: 174, column: 17, scope: !2388)
!2399 = !DILocation(line: 177, column: 5, scope: !2388)
!2400 = !DILocation(line: 183, column: 13, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2388, file: !970, line: 177, column: 17)
!2402 = !DILocation(line: 0, scope: !2401)
!2403 = !DILocation(line: 187, column: 5, scope: !2388)
!2404 = !DILocation(line: 188, column: 1, scope: !2388)
!2405 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !970, file: !970, line: 189, type: !2389, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409, !2410}
!2407 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2405, file: !970, line: 189, type: !219)
!2408 = !DILocalVariable(name: "no", scope: !2405, file: !970, line: 191, type: !328)
!2409 = !DILocalVariable(name: "remainder", scope: !2405, file: !970, line: 192, type: !328)
!2410 = !DILocalVariable(name: "din", scope: !2405, file: !970, line: 195, type: !251)
!2411 = !DILocation(line: 0, scope: !2405)
!2412 = !DILocation(line: 193, column: 19, scope: !2405)
!2413 = !DILocation(line: 194, column: 17, scope: !2405)
!2414 = !DILocation(line: 196, column: 5, scope: !2405)
!2415 = !DILocation(line: 203, column: 13, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2405, file: !970, line: 196, column: 17)
!2417 = !DILocation(line: 0, scope: !2416)
!2418 = !DILocation(line: 208, column: 5, scope: !2405)
!2419 = !DILocation(line: 209, column: 1, scope: !2405)
!2420 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !970, file: !970, line: 210, type: !2389, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2421)
!2421 = !{!2422, !2423, !2424, !2425}
!2422 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2420, file: !970, line: 210, type: !219)
!2423 = !DILocalVariable(name: "no", scope: !2420, file: !970, line: 212, type: !328)
!2424 = !DILocalVariable(name: "remainder", scope: !2420, file: !970, line: 213, type: !328)
!2425 = !DILocalVariable(name: "outEnable", scope: !2420, file: !970, line: 216, type: !251)
!2426 = !DILocation(line: 0, scope: !2420)
!2427 = !DILocation(line: 214, column: 19, scope: !2420)
!2428 = !DILocation(line: 215, column: 17, scope: !2420)
!2429 = !DILocation(line: 218, column: 5, scope: !2420)
!2430 = !DILocation(line: 224, column: 13, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2420, file: !970, line: 218, column: 17)
!2432 = !DILocation(line: 0, scope: !2431)
!2433 = !DILocation(line: 228, column: 5, scope: !2420)
!2434 = !DILocation(line: 229, column: 1, scope: !2420)
!2435 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !970, file: !970, line: 232, type: !2436, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2250, !219}
!2438 = !{!2439, !2440, !2441}
!2439 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2435, file: !970, line: 232, type: !219)
!2440 = !DILocalVariable(name: "no", scope: !2435, file: !970, line: 234, type: !328)
!2441 = !DILocalVariable(name: "remainder", scope: !2435, file: !970, line: 235, type: !328)
!2442 = !DILocation(line: 0, scope: !2435)
!2443 = !DILocation(line: 236, column: 19, scope: !2435)
!2444 = !DILocation(line: 237, column: 17, scope: !2435)
!2445 = !DILocation(line: 238, column: 5, scope: !2435)
!2446 = !DILocation(line: 239, column: 5, scope: !2435)
!2447 = !DILocation(line: 241, column: 27, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !970, line: 241, column: 17)
!2449 = distinct !DILexicalBlock(scope: !2435, file: !970, line: 239, column: 17)
!2450 = !DILocation(line: 241, column: 17, scope: !2449)
!2451 = !DILocation(line: 241, column: 17, scope: !2448)
!2452 = !DILocation(line: 242, column: 17, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !970, line: 241, column: 34)
!2454 = !DILocation(line: 243, column: 13, scope: !2453)
!2455 = !DILocation(line: 243, column: 24, scope: !2448)
!2456 = !DILocation(line: 244, column: 73, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !970, line: 243, column: 41)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !970, line: 243, column: 24)
!2459 = !DILocation(line: 245, column: 73, scope: !2457)
!2460 = !DILocation(line: 246, column: 13, scope: !2457)
!2461 = !DILocation(line: 247, column: 73, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !970, line: 246, column: 41)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !970, line: 246, column: 24)
!2464 = !DILocation(line: 248, column: 73, scope: !2462)
!2465 = !DILocation(line: 249, column: 13, scope: !2462)
!2466 = !DILocation(line: 250, column: 75, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !970, line: 249, column: 41)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !970, line: 249, column: 24)
!2469 = !DILocation(line: 251, column: 75, scope: !2467)
!2470 = !DILocation(line: 252, column: 13, scope: !2467)
!2471 = !DILocation(line: 253, column: 75, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !970, line: 252, column: 41)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !970, line: 252, column: 24)
!2474 = !DILocation(line: 254, column: 75, scope: !2472)
!2475 = !DILocation(line: 255, column: 13, scope: !2472)
!2476 = !DILocation(line: 256, column: 75, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !970, line: 255, column: 41)
!2478 = distinct !DILexicalBlock(scope: !2473, file: !970, line: 255, column: 24)
!2479 = !DILocation(line: 257, column: 75, scope: !2477)
!2480 = !DILocation(line: 258, column: 13, scope: !2477)
!2481 = !DILocation(line: 261, column: 18, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2449, file: !970, line: 261, column: 17)
!2483 = !DILocation(line: 261, column: 17, scope: !2449)
!2484 = !DILocation(line: 262, column: 75, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !970, line: 261, column: 29)
!2486 = !DILocation(line: 263, column: 75, scope: !2485)
!2487 = !DILocation(line: 264, column: 13, scope: !2485)
!2488 = !DILocation(line: 265, column: 17, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2482, file: !970, line: 264, column: 20)
!2490 = !DILocation(line: 272, column: 1, scope: !2435)
!2491 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !970, file: !970, line: 359, type: !2436, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2491, file: !970, line: 359, type: !219)
!2494 = !DILocalVariable(name: "no", scope: !2491, file: !970, line: 362, type: !328)
!2495 = !DILocalVariable(name: "remainder", scope: !2491, file: !970, line: 363, type: !328)
!2496 = !DILocation(line: 0, scope: !2491)
!2497 = !DILocation(line: 364, column: 19, scope: !2491)
!2498 = !DILocation(line: 365, column: 17, scope: !2491)
!2499 = !DILocation(line: 367, column: 5, scope: !2491)
!2500 = !DILocation(line: 369, column: 27, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !970, line: 369, column: 17)
!2502 = distinct !DILexicalBlock(scope: !2491, file: !970, line: 367, column: 17)
!2503 = !DILocation(line: 369, column: 17, scope: !2502)
!2504 = !DILocation(line: 369, column: 17, scope: !2501)
!2505 = !DILocation(line: 370, column: 17, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2501, file: !970, line: 369, column: 34)
!2507 = !DILocation(line: 371, column: 13, scope: !2506)
!2508 = !DILocation(line: 371, column: 24, scope: !2501)
!2509 = !DILocation(line: 372, column: 73, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !970, line: 371, column: 41)
!2511 = distinct !DILexicalBlock(scope: !2501, file: !970, line: 371, column: 24)
!2512 = !DILocation(line: 373, column: 73, scope: !2510)
!2513 = !DILocation(line: 374, column: 13, scope: !2510)
!2514 = !DILocation(line: 375, column: 73, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !970, line: 374, column: 41)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !970, line: 374, column: 24)
!2517 = !DILocation(line: 376, column: 73, scope: !2515)
!2518 = !DILocation(line: 377, column: 13, scope: !2515)
!2519 = !DILocation(line: 378, column: 75, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !970, line: 377, column: 41)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !970, line: 377, column: 24)
!2522 = !DILocation(line: 379, column: 75, scope: !2520)
!2523 = !DILocation(line: 380, column: 13, scope: !2520)
!2524 = !DILocation(line: 381, column: 75, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !970, line: 380, column: 41)
!2526 = distinct !DILexicalBlock(scope: !2521, file: !970, line: 380, column: 24)
!2527 = !DILocation(line: 382, column: 75, scope: !2525)
!2528 = !DILocation(line: 383, column: 13, scope: !2525)
!2529 = !DILocation(line: 384, column: 75, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !970, line: 383, column: 41)
!2531 = distinct !DILexicalBlock(scope: !2526, file: !970, line: 383, column: 24)
!2532 = !DILocation(line: 385, column: 75, scope: !2530)
!2533 = !DILocation(line: 386, column: 13, scope: !2530)
!2534 = !DILocation(line: 389, column: 18, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2502, file: !970, line: 389, column: 17)
!2536 = !DILocation(line: 389, column: 17, scope: !2502)
!2537 = !DILocation(line: 390, column: 75, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !970, line: 389, column: 29)
!2539 = !DILocation(line: 391, column: 75, scope: !2538)
!2540 = !DILocation(line: 392, column: 13, scope: !2538)
!2541 = !DILocation(line: 393, column: 17, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !970, line: 392, column: 20)
!2543 = !DILocation(line: 401, column: 1, scope: !2491)
!2544 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !970, file: !970, line: 274, type: !2436, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2545)
!2545 = !{!2546, !2547, !2548}
!2546 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2544, file: !970, line: 274, type: !219)
!2547 = !DILocalVariable(name: "no", scope: !2544, file: !970, line: 276, type: !328)
!2548 = !DILocalVariable(name: "remainder", scope: !2544, file: !970, line: 277, type: !328)
!2549 = !DILocation(line: 0, scope: !2544)
!2550 = !DILocation(line: 278, column: 19, scope: !2544)
!2551 = !DILocation(line: 279, column: 17, scope: !2544)
!2552 = !DILocation(line: 281, column: 5, scope: !2544)
!2553 = !DILocation(line: 283, column: 27, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !970, line: 283, column: 17)
!2555 = distinct !DILexicalBlock(scope: !2544, file: !970, line: 281, column: 17)
!2556 = !DILocation(line: 283, column: 17, scope: !2555)
!2557 = !DILocation(line: 283, column: 17, scope: !2554)
!2558 = !DILocation(line: 284, column: 17, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !970, line: 283, column: 34)
!2560 = !DILocation(line: 285, column: 13, scope: !2559)
!2561 = !DILocation(line: 285, column: 24, scope: !2554)
!2562 = !DILocation(line: 286, column: 73, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !970, line: 285, column: 41)
!2564 = distinct !DILexicalBlock(scope: !2554, file: !970, line: 285, column: 24)
!2565 = !DILocation(line: 287, column: 73, scope: !2563)
!2566 = !DILocation(line: 288, column: 13, scope: !2563)
!2567 = !DILocation(line: 289, column: 73, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !970, line: 288, column: 41)
!2569 = distinct !DILexicalBlock(scope: !2564, file: !970, line: 288, column: 24)
!2570 = !DILocation(line: 290, column: 73, scope: !2568)
!2571 = !DILocation(line: 291, column: 13, scope: !2568)
!2572 = !DILocation(line: 292, column: 75, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !970, line: 291, column: 41)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !970, line: 291, column: 24)
!2575 = !DILocation(line: 293, column: 75, scope: !2573)
!2576 = !DILocation(line: 294, column: 13, scope: !2573)
!2577 = !DILocation(line: 295, column: 75, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !970, line: 294, column: 41)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !970, line: 294, column: 24)
!2580 = !DILocation(line: 296, column: 75, scope: !2578)
!2581 = !DILocation(line: 297, column: 13, scope: !2578)
!2582 = !DILocation(line: 298, column: 75, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !970, line: 297, column: 41)
!2584 = distinct !DILexicalBlock(scope: !2579, file: !970, line: 297, column: 24)
!2585 = !DILocation(line: 299, column: 75, scope: !2583)
!2586 = !DILocation(line: 300, column: 13, scope: !2583)
!2587 = !DILocation(line: 303, column: 18, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2555, file: !970, line: 303, column: 17)
!2589 = !DILocation(line: 303, column: 17, scope: !2555)
!2590 = !DILocation(line: 304, column: 75, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2588, file: !970, line: 303, column: 29)
!2592 = !DILocation(line: 305, column: 75, scope: !2591)
!2593 = !DILocation(line: 306, column: 13, scope: !2591)
!2594 = !DILocation(line: 307, column: 17, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2588, file: !970, line: 306, column: 20)
!2596 = !DILocation(line: 314, column: 1, scope: !2544)
!2597 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !970, file: !970, line: 316, type: !2436, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2598)
!2598 = !{!2599, !2600, !2601}
!2599 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2597, file: !970, line: 316, type: !219)
!2600 = !DILocalVariable(name: "no", scope: !2597, file: !970, line: 318, type: !328)
!2601 = !DILocalVariable(name: "remainder", scope: !2597, file: !970, line: 319, type: !328)
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = !DILocation(line: 320, column: 19, scope: !2597)
!2604 = !DILocation(line: 321, column: 17, scope: !2597)
!2605 = !DILocation(line: 322, column: 5, scope: !2597)
!2606 = !DILocation(line: 323, column: 5, scope: !2597)
!2607 = !DILocation(line: 325, column: 27, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !970, line: 325, column: 17)
!2609 = distinct !DILexicalBlock(scope: !2597, file: !970, line: 323, column: 17)
!2610 = !DILocation(line: 325, column: 17, scope: !2609)
!2611 = !DILocation(line: 325, column: 17, scope: !2608)
!2612 = !DILocation(line: 326, column: 17, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !970, line: 325, column: 34)
!2614 = !DILocation(line: 327, column: 13, scope: !2613)
!2615 = !DILocation(line: 327, column: 24, scope: !2608)
!2616 = !DILocation(line: 328, column: 73, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !970, line: 327, column: 41)
!2618 = distinct !DILexicalBlock(scope: !2608, file: !970, line: 327, column: 24)
!2619 = !DILocation(line: 329, column: 73, scope: !2617)
!2620 = !DILocation(line: 330, column: 13, scope: !2617)
!2621 = !DILocation(line: 331, column: 73, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !970, line: 330, column: 41)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !970, line: 330, column: 24)
!2624 = !DILocation(line: 332, column: 73, scope: !2622)
!2625 = !DILocation(line: 333, column: 13, scope: !2622)
!2626 = !DILocation(line: 334, column: 75, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !970, line: 333, column: 41)
!2628 = distinct !DILexicalBlock(scope: !2623, file: !970, line: 333, column: 24)
!2629 = !DILocation(line: 335, column: 75, scope: !2627)
!2630 = !DILocation(line: 336, column: 13, scope: !2627)
!2631 = !DILocation(line: 337, column: 75, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !970, line: 336, column: 41)
!2633 = distinct !DILexicalBlock(scope: !2628, file: !970, line: 336, column: 24)
!2634 = !DILocation(line: 338, column: 75, scope: !2632)
!2635 = !DILocation(line: 339, column: 13, scope: !2632)
!2636 = !DILocation(line: 340, column: 75, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !970, line: 339, column: 41)
!2638 = distinct !DILexicalBlock(scope: !2633, file: !970, line: 339, column: 24)
!2639 = !DILocation(line: 341, column: 75, scope: !2637)
!2640 = !DILocation(line: 342, column: 13, scope: !2637)
!2641 = !DILocation(line: 345, column: 18, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2609, file: !970, line: 345, column: 17)
!2643 = !DILocation(line: 345, column: 17, scope: !2609)
!2644 = !DILocation(line: 346, column: 75, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !970, line: 345, column: 29)
!2646 = !DILocation(line: 347, column: 75, scope: !2645)
!2647 = !DILocation(line: 348, column: 13, scope: !2645)
!2648 = !DILocation(line: 349, column: 17, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2642, file: !970, line: 348, column: 20)
!2650 = !DILocation(line: 357, column: 1, scope: !2597)
!2651 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !970, file: !970, line: 404, type: !2248, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2652)
!2652 = !{!2653, !2654, !2655, !2656}
!2653 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2651, file: !970, line: 404, type: !219)
!2654 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2651, file: !970, line: 404, type: !251)
!2655 = !DILocalVariable(name: "no", scope: !2651, file: !970, line: 406, type: !328)
!2656 = !DILocalVariable(name: "remainder", scope: !2651, file: !970, line: 407, type: !328)
!2657 = !DILocation(line: 0, scope: !2651)
!2658 = !DILocation(line: 408, column: 19, scope: !2651)
!2659 = !DILocation(line: 409, column: 17, scope: !2651)
!2660 = !DILocation(line: 411, column: 5, scope: !2651)
!2661 = !DILocation(line: 413, column: 84, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2651, file: !970, line: 411, column: 17)
!2663 = !DILocation(line: 413, column: 70, scope: !2662)
!2664 = !DILocation(line: 413, column: 64, scope: !2662)
!2665 = !DILocation(line: 413, column: 61, scope: !2662)
!2666 = !DILocation(line: 414, column: 79, scope: !2662)
!2667 = !DILocation(line: 414, column: 83, scope: !2662)
!2668 = !DILocation(line: 414, column: 88, scope: !2662)
!2669 = !DILocation(line: 414, column: 61, scope: !2662)
!2670 = !DILocation(line: 415, column: 13, scope: !2662)
!2671 = !DILocation(line: 417, column: 27, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2662, file: !970, line: 417, column: 17)
!2673 = !DILocation(line: 417, column: 17, scope: !2662)
!2674 = !DILocation(line: 418, column: 88, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !970, line: 417, column: 33)
!2676 = !DILocation(line: 418, column: 74, scope: !2675)
!2677 = !DILocation(line: 418, column: 68, scope: !2675)
!2678 = !DILocation(line: 418, column: 65, scope: !2675)
!2679 = !DILocation(line: 419, column: 83, scope: !2675)
!2680 = !DILocation(line: 419, column: 87, scope: !2675)
!2681 = !DILocation(line: 419, column: 92, scope: !2675)
!2682 = !DILocation(line: 419, column: 65, scope: !2675)
!2683 = !DILocation(line: 420, column: 13, scope: !2675)
!2684 = !DILocation(line: 420, column: 24, scope: !2672)
!2685 = !DILocation(line: 421, column: 73, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !970, line: 420, column: 41)
!2687 = distinct !DILexicalBlock(scope: !2672, file: !970, line: 420, column: 24)
!2688 = !DILocation(line: 422, column: 91, scope: !2686)
!2689 = !DILocation(line: 422, column: 100, scope: !2686)
!2690 = !DILocation(line: 422, column: 73, scope: !2686)
!2691 = !DILocation(line: 423, column: 73, scope: !2686)
!2692 = !DILocation(line: 424, column: 13, scope: !2686)
!2693 = !DILocation(line: 425, column: 73, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !970, line: 424, column: 41)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !970, line: 424, column: 24)
!2696 = !DILocation(line: 426, column: 91, scope: !2694)
!2697 = !DILocation(line: 426, column: 100, scope: !2694)
!2698 = !DILocation(line: 426, column: 73, scope: !2694)
!2699 = !DILocation(line: 427, column: 73, scope: !2694)
!2700 = !DILocation(line: 428, column: 13, scope: !2694)
!2701 = !DILocation(line: 429, column: 75, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !970, line: 428, column: 41)
!2703 = distinct !DILexicalBlock(scope: !2695, file: !970, line: 428, column: 24)
!2704 = !DILocation(line: 430, column: 93, scope: !2702)
!2705 = !DILocation(line: 430, column: 102, scope: !2702)
!2706 = !DILocation(line: 430, column: 75, scope: !2702)
!2707 = !DILocation(line: 431, column: 75, scope: !2702)
!2708 = !DILocation(line: 432, column: 13, scope: !2702)
!2709 = !DILocation(line: 433, column: 75, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !970, line: 432, column: 41)
!2711 = distinct !DILexicalBlock(scope: !2703, file: !970, line: 432, column: 24)
!2712 = !DILocation(line: 434, column: 93, scope: !2710)
!2713 = !DILocation(line: 434, column: 102, scope: !2710)
!2714 = !DILocation(line: 434, column: 75, scope: !2710)
!2715 = !DILocation(line: 435, column: 75, scope: !2710)
!2716 = !DILocation(line: 436, column: 13, scope: !2710)
!2717 = !DILocation(line: 437, column: 75, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !970, line: 436, column: 41)
!2719 = distinct !DILexicalBlock(scope: !2711, file: !970, line: 436, column: 24)
!2720 = !DILocation(line: 438, column: 93, scope: !2718)
!2721 = !DILocation(line: 438, column: 102, scope: !2718)
!2722 = !DILocation(line: 438, column: 75, scope: !2718)
!2723 = !DILocation(line: 439, column: 75, scope: !2718)
!2724 = !DILocation(line: 440, column: 13, scope: !2718)
!2725 = !DILocation(line: 443, column: 18, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2662, file: !970, line: 443, column: 17)
!2727 = !DILocation(line: 443, column: 17, scope: !2662)
!2728 = !DILocation(line: 444, column: 75, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2726, file: !970, line: 443, column: 29)
!2730 = !DILocation(line: 445, column: 93, scope: !2729)
!2731 = !DILocation(line: 445, column: 102, scope: !2729)
!2732 = !DILocation(line: 445, column: 75, scope: !2729)
!2733 = !DILocation(line: 446, column: 75, scope: !2729)
!2734 = !DILocation(line: 447, column: 13, scope: !2729)
!2735 = !DILocation(line: 448, column: 88, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2726, file: !970, line: 447, column: 20)
!2737 = !DILocation(line: 448, column: 74, scope: !2736)
!2738 = !DILocation(line: 448, column: 68, scope: !2736)
!2739 = !DILocation(line: 448, column: 65, scope: !2736)
!2740 = !DILocation(line: 449, column: 83, scope: !2736)
!2741 = !DILocation(line: 449, column: 87, scope: !2736)
!2742 = !DILocation(line: 449, column: 92, scope: !2736)
!2743 = !DILocation(line: 449, column: 65, scope: !2736)
!2744 = !DILocation(line: 453, column: 84, scope: !2662)
!2745 = !DILocation(line: 453, column: 70, scope: !2662)
!2746 = !DILocation(line: 453, column: 64, scope: !2662)
!2747 = !DILocation(line: 453, column: 61, scope: !2662)
!2748 = !DILocation(line: 454, column: 79, scope: !2662)
!2749 = !DILocation(line: 454, column: 83, scope: !2662)
!2750 = !DILocation(line: 454, column: 88, scope: !2662)
!2751 = !DILocation(line: 454, column: 61, scope: !2662)
!2752 = !DILocation(line: 455, column: 13, scope: !2662)
!2753 = !DILocation(line: 460, column: 1, scope: !2651)
!2754 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !970, file: !970, line: 463, type: !2755, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2758)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!2250, !219, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!2758 = !{!2759, !2760, !2761, !2762, !2763}
!2759 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2754, file: !970, line: 463, type: !219)
!2760 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2754, file: !970, line: 463, type: !2757)
!2761 = !DILocalVariable(name: "no", scope: !2754, file: !970, line: 465, type: !328)
!2762 = !DILocalVariable(name: "remainder", scope: !2754, file: !970, line: 466, type: !328)
!2763 = !DILocalVariable(name: "temp", scope: !2754, file: !970, line: 467, type: !219)
!2764 = !DILocation(line: 0, scope: !2754)
!2765 = !DILocation(line: 468, column: 19, scope: !2754)
!2766 = !DILocation(line: 469, column: 17, scope: !2754)
!2767 = !DILocation(line: 471, column: 5, scope: !2754)
!2768 = !DILocation(line: 473, column: 20, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2754, file: !970, line: 471, column: 17)
!2770 = !DILocation(line: 474, column: 40, scope: !2769)
!2771 = !DILocation(line: 474, column: 26, scope: !2769)
!2772 = !DILocation(line: 474, column: 18, scope: !2769)
!2773 = !DILocation(line: 475, column: 40, scope: !2769)
!2774 = !DILocation(line: 475, column: 29, scope: !2769)
!2775 = !DILocation(line: 476, column: 13, scope: !2769)
!2776 = !DILocation(line: 478, column: 27, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2769, file: !970, line: 478, column: 17)
!2778 = !DILocation(line: 478, column: 17, scope: !2769)
!2779 = !DILocation(line: 479, column: 24, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !970, line: 478, column: 33)
!2781 = !DILocation(line: 480, column: 44, scope: !2780)
!2782 = !DILocation(line: 480, column: 30, scope: !2780)
!2783 = !DILocation(line: 480, column: 22, scope: !2780)
!2784 = !DILocation(line: 481, column: 44, scope: !2780)
!2785 = !DILocation(line: 481, column: 33, scope: !2780)
!2786 = !DILocation(line: 482, column: 13, scope: !2780)
!2787 = !DILocation(line: 482, column: 24, scope: !2777)
!2788 = !DILocation(line: 483, column: 24, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !970, line: 482, column: 41)
!2790 = distinct !DILexicalBlock(scope: !2777, file: !970, line: 482, column: 24)
!2791 = !DILocation(line: 485, column: 53, scope: !2789)
!2792 = !DILocation(line: 485, column: 33, scope: !2789)
!2793 = !DILocation(line: 486, column: 13, scope: !2789)
!2794 = !DILocation(line: 487, column: 24, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !970, line: 486, column: 41)
!2796 = distinct !DILexicalBlock(scope: !2790, file: !970, line: 486, column: 24)
!2797 = !DILocation(line: 489, column: 53, scope: !2795)
!2798 = !DILocation(line: 489, column: 33, scope: !2795)
!2799 = !DILocation(line: 490, column: 13, scope: !2795)
!2800 = !DILocation(line: 491, column: 24, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !970, line: 490, column: 41)
!2802 = distinct !DILexicalBlock(scope: !2796, file: !970, line: 490, column: 24)
!2803 = !DILocation(line: 493, column: 53, scope: !2801)
!2804 = !DILocation(line: 493, column: 33, scope: !2801)
!2805 = !DILocation(line: 494, column: 13, scope: !2801)
!2806 = !DILocation(line: 495, column: 24, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !970, line: 494, column: 41)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !970, line: 494, column: 24)
!2809 = !DILocation(line: 497, column: 53, scope: !2807)
!2810 = !DILocation(line: 497, column: 33, scope: !2807)
!2811 = !DILocation(line: 498, column: 13, scope: !2807)
!2812 = !DILocation(line: 499, column: 24, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !970, line: 498, column: 41)
!2814 = distinct !DILexicalBlock(scope: !2808, file: !970, line: 498, column: 24)
!2815 = !DILocation(line: 501, column: 53, scope: !2813)
!2816 = !DILocation(line: 501, column: 33, scope: !2813)
!2817 = !DILocation(line: 502, column: 13, scope: !2813)
!2818 = !DILocation(line: 505, column: 18, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2769, file: !970, line: 505, column: 17)
!2820 = !DILocation(line: 505, column: 17, scope: !2769)
!2821 = !DILocation(line: 506, column: 24, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !970, line: 505, column: 29)
!2823 = !DILocation(line: 508, column: 53, scope: !2822)
!2824 = !DILocation(line: 508, column: 33, scope: !2822)
!2825 = !DILocation(line: 509, column: 13, scope: !2822)
!2826 = !DILocation(line: 510, column: 24, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !970, line: 509, column: 20)
!2828 = !DILocation(line: 511, column: 44, scope: !2827)
!2829 = !DILocation(line: 511, column: 30, scope: !2827)
!2830 = !DILocation(line: 511, column: 22, scope: !2827)
!2831 = !DILocation(line: 512, column: 44, scope: !2827)
!2832 = !DILocation(line: 512, column: 33, scope: !2827)
!2833 = !DILocation(line: 516, column: 20, scope: !2769)
!2834 = !DILocation(line: 517, column: 40, scope: !2769)
!2835 = !DILocation(line: 517, column: 26, scope: !2769)
!2836 = !DILocation(line: 517, column: 18, scope: !2769)
!2837 = !DILocation(line: 518, column: 40, scope: !2769)
!2838 = !DILocation(line: 518, column: 29, scope: !2769)
!2839 = !DILocation(line: 519, column: 13, scope: !2769)
!2840 = !DILocation(line: 0, scope: !2769)
!2841 = !DILocation(line: 524, column: 1, scope: !2754)
!2842 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !970, file: !970, line: 526, type: !2843, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !2846)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !219, !2845}
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !973, line: 1212, baseType: !972)
!2846 = !{!2847, !2848, !2849, !2850}
!2847 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2842, file: !970, line: 526, type: !219)
!2848 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2842, file: !970, line: 526, type: !2845)
!2849 = !DILocalVariable(name: "no", scope: !2842, file: !970, line: 529, type: !328)
!2850 = !DILocalVariable(name: "remainder", scope: !2842, file: !970, line: 530, type: !328)
!2851 = !DILocation(line: 0, scope: !2842)
!2852 = !DILocation(line: 531, column: 19, scope: !2842)
!2853 = !DILocation(line: 532, column: 17, scope: !2842)
!2854 = !DILocation(line: 534, column: 9, scope: !2842)
!2855 = !DILocation(line: 536, column: 9, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !970, line: 534, column: 45)
!2857 = distinct !DILexicalBlock(scope: !2842, file: !970, line: 534, column: 9)
!2858 = !DILocation(line: 538, column: 56, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !970, line: 536, column: 21)
!2860 = !DILocation(line: 538, column: 53, scope: !2859)
!2861 = !DILocation(line: 538, column: 47, scope: !2859)
!2862 = !DILocation(line: 539, column: 17, scope: !2859)
!2863 = !DILocation(line: 541, column: 56, scope: !2859)
!2864 = !DILocation(line: 541, column: 53, scope: !2859)
!2865 = !DILocation(line: 541, column: 47, scope: !2859)
!2866 = !DILocation(line: 542, column: 17, scope: !2859)
!2867 = !DILocation(line: 548, column: 9, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !970, line: 547, column: 51)
!2869 = distinct !DILexicalBlock(scope: !2857, file: !970, line: 547, column: 16)
!2870 = !DILocation(line: 550, column: 57, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !970, line: 548, column: 21)
!2872 = !DILocation(line: 550, column: 54, scope: !2871)
!2873 = !DILocation(line: 550, column: 50, scope: !2871)
!2874 = !DILocation(line: 550, column: 47, scope: !2871)
!2875 = !DILocation(line: 551, column: 17, scope: !2871)
!2876 = !DILocation(line: 553, column: 57, scope: !2871)
!2877 = !DILocation(line: 553, column: 54, scope: !2871)
!2878 = !DILocation(line: 553, column: 50, scope: !2871)
!2879 = !DILocation(line: 553, column: 47, scope: !2871)
!2880 = !DILocation(line: 554, column: 17, scope: !2871)
!2881 = !DILocation(line: 560, column: 1, scope: !2842)
!2882 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !979, file: !979, line: 85, type: !2883, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !978, retainedNodes: !2887)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!2885, !2886, !251}
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !47, line: 79, baseType: null)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !982, line: 225, baseType: !981)
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2882, file: !979, line: 85, type: !2886)
!2889 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2882, file: !979, line: 85, type: !251)
!2890 = !DILocalVariable(name: "temp", scope: !2882, file: !979, line: 87, type: !136)
!2891 = !DILocation(line: 0, scope: !2882)
!2892 = !DILocation(line: 88, column: 5, scope: !2882)
!2893 = !DILocation(line: 91, column: 20, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2882, file: !979, line: 88, column: 24)
!2895 = !DILocation(line: 92, column: 18, scope: !2894)
!2896 = !DILocation(line: 93, column: 66, scope: !2894)
!2897 = !DILocation(line: 93, column: 63, scope: !2894)
!2898 = !DILocation(line: 93, column: 56, scope: !2894)
!2899 = !DILocation(line: 94, column: 13, scope: !2894)
!2900 = !DILocation(line: 97, column: 20, scope: !2894)
!2901 = !DILocation(line: 98, column: 18, scope: !2894)
!2902 = !DILocation(line: 99, column: 67, scope: !2894)
!2903 = !DILocation(line: 99, column: 74, scope: !2894)
!2904 = !DILocation(line: 99, column: 64, scope: !2894)
!2905 = !DILocation(line: 99, column: 56, scope: !2894)
!2906 = !DILocation(line: 100, column: 13, scope: !2894)
!2907 = !DILocation(line: 103, column: 20, scope: !2894)
!2908 = !DILocation(line: 104, column: 18, scope: !2894)
!2909 = !DILocation(line: 105, column: 67, scope: !2894)
!2910 = !DILocation(line: 105, column: 74, scope: !2894)
!2911 = !DILocation(line: 105, column: 64, scope: !2894)
!2912 = !DILocation(line: 105, column: 56, scope: !2894)
!2913 = !DILocation(line: 106, column: 13, scope: !2894)
!2914 = !DILocation(line: 109, column: 20, scope: !2894)
!2915 = !DILocation(line: 110, column: 18, scope: !2894)
!2916 = !DILocation(line: 111, column: 67, scope: !2894)
!2917 = !DILocation(line: 111, column: 74, scope: !2894)
!2918 = !DILocation(line: 111, column: 64, scope: !2894)
!2919 = !DILocation(line: 111, column: 56, scope: !2894)
!2920 = !DILocation(line: 112, column: 13, scope: !2894)
!2921 = !DILocation(line: 115, column: 20, scope: !2894)
!2922 = !DILocation(line: 116, column: 18, scope: !2894)
!2923 = !DILocation(line: 117, column: 67, scope: !2894)
!2924 = !DILocation(line: 117, column: 74, scope: !2894)
!2925 = !DILocation(line: 117, column: 64, scope: !2894)
!2926 = !DILocation(line: 117, column: 56, scope: !2894)
!2927 = !DILocation(line: 118, column: 13, scope: !2894)
!2928 = !DILocation(line: 121, column: 20, scope: !2894)
!2929 = !DILocation(line: 122, column: 18, scope: !2894)
!2930 = !DILocation(line: 123, column: 67, scope: !2894)
!2931 = !DILocation(line: 123, column: 74, scope: !2894)
!2932 = !DILocation(line: 123, column: 64, scope: !2894)
!2933 = !DILocation(line: 123, column: 56, scope: !2894)
!2934 = !DILocation(line: 124, column: 13, scope: !2894)
!2935 = !DILocation(line: 127, column: 20, scope: !2894)
!2936 = !DILocation(line: 128, column: 18, scope: !2894)
!2937 = !DILocation(line: 129, column: 67, scope: !2894)
!2938 = !DILocation(line: 129, column: 74, scope: !2894)
!2939 = !DILocation(line: 129, column: 64, scope: !2894)
!2940 = !DILocation(line: 129, column: 56, scope: !2894)
!2941 = !DILocation(line: 130, column: 13, scope: !2894)
!2942 = !DILocation(line: 133, column: 20, scope: !2894)
!2943 = !DILocation(line: 134, column: 18, scope: !2894)
!2944 = !DILocation(line: 135, column: 67, scope: !2894)
!2945 = !DILocation(line: 135, column: 74, scope: !2894)
!2946 = !DILocation(line: 135, column: 64, scope: !2894)
!2947 = !DILocation(line: 135, column: 56, scope: !2894)
!2948 = !DILocation(line: 136, column: 13, scope: !2894)
!2949 = !DILocation(line: 139, column: 20, scope: !2894)
!2950 = !DILocation(line: 140, column: 18, scope: !2894)
!2951 = !DILocation(line: 141, column: 67, scope: !2894)
!2952 = !DILocation(line: 141, column: 64, scope: !2894)
!2953 = !DILocation(line: 141, column: 56, scope: !2894)
!2954 = !DILocation(line: 142, column: 13, scope: !2894)
!2955 = !DILocation(line: 145, column: 20, scope: !2894)
!2956 = !DILocation(line: 146, column: 18, scope: !2894)
!2957 = !DILocation(line: 147, column: 67, scope: !2894)
!2958 = !DILocation(line: 147, column: 74, scope: !2894)
!2959 = !DILocation(line: 147, column: 64, scope: !2894)
!2960 = !DILocation(line: 147, column: 56, scope: !2894)
!2961 = !DILocation(line: 148, column: 13, scope: !2894)
!2962 = !DILocation(line: 151, column: 20, scope: !2894)
!2963 = !DILocation(line: 152, column: 18, scope: !2894)
!2964 = !DILocation(line: 153, column: 67, scope: !2894)
!2965 = !DILocation(line: 153, column: 74, scope: !2894)
!2966 = !DILocation(line: 153, column: 64, scope: !2894)
!2967 = !DILocation(line: 153, column: 56, scope: !2894)
!2968 = !DILocation(line: 154, column: 13, scope: !2894)
!2969 = !DILocation(line: 157, column: 20, scope: !2894)
!2970 = !DILocation(line: 158, column: 18, scope: !2894)
!2971 = !DILocation(line: 159, column: 67, scope: !2894)
!2972 = !DILocation(line: 159, column: 74, scope: !2894)
!2973 = !DILocation(line: 159, column: 64, scope: !2894)
!2974 = !DILocation(line: 159, column: 56, scope: !2894)
!2975 = !DILocation(line: 160, column: 29, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2894, file: !979, line: 160, column: 17)
!2977 = !DILocation(line: 161, column: 17, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2976, file: !979, line: 160, column: 60)
!2979 = !DILocation(line: 162, column: 13, scope: !2978)
!2980 = !DILocation(line: 166, column: 20, scope: !2894)
!2981 = !DILocation(line: 167, column: 18, scope: !2894)
!2982 = !DILocation(line: 168, column: 67, scope: !2894)
!2983 = !DILocation(line: 168, column: 74, scope: !2894)
!2984 = !DILocation(line: 168, column: 64, scope: !2894)
!2985 = !DILocation(line: 168, column: 56, scope: !2894)
!2986 = !DILocation(line: 169, column: 29, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2894, file: !979, line: 169, column: 17)
!2988 = !DILocation(line: 170, column: 17, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2987, file: !979, line: 169, column: 45)
!2990 = !DILocation(line: 171, column: 13, scope: !2989)
!2991 = !DILocation(line: 175, column: 20, scope: !2894)
!2992 = !DILocation(line: 176, column: 18, scope: !2894)
!2993 = !DILocation(line: 177, column: 67, scope: !2894)
!2994 = !DILocation(line: 177, column: 74, scope: !2894)
!2995 = !DILocation(line: 177, column: 64, scope: !2894)
!2996 = !DILocation(line: 177, column: 56, scope: !2894)
!2997 = !DILocation(line: 178, column: 19, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2894, file: !979, line: 178, column: 17)
!2999 = !DILocation(line: 178, column: 17, scope: !2894)
!3000 = !DILocation(line: 179, column: 17, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !979, line: 178, column: 30)
!3002 = !DILocation(line: 180, column: 13, scope: !3001)
!3003 = !DILocation(line: 184, column: 20, scope: !2894)
!3004 = !DILocation(line: 185, column: 18, scope: !2894)
!3005 = !DILocation(line: 186, column: 67, scope: !2894)
!3006 = !DILocation(line: 186, column: 74, scope: !2894)
!3007 = !DILocation(line: 186, column: 64, scope: !2894)
!3008 = !DILocation(line: 186, column: 56, scope: !2894)
!3009 = !DILocation(line: 187, column: 29, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2894, file: !979, line: 187, column: 17)
!3011 = !DILocation(line: 188, column: 17, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3010, file: !979, line: 187, column: 45)
!3013 = !DILocation(line: 189, column: 13, scope: !3012)
!3014 = !DILocation(line: 193, column: 20, scope: !2894)
!3015 = !DILocation(line: 194, column: 18, scope: !2894)
!3016 = !DILocation(line: 195, column: 67, scope: !2894)
!3017 = !DILocation(line: 195, column: 74, scope: !2894)
!3018 = !DILocation(line: 195, column: 64, scope: !2894)
!3019 = !DILocation(line: 195, column: 56, scope: !2894)
!3020 = !DILocation(line: 196, column: 29, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2894, file: !979, line: 196, column: 17)
!3022 = !DILocation(line: 197, column: 17, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3021, file: !979, line: 196, column: 45)
!3024 = !DILocation(line: 198, column: 13, scope: !3023)
!3025 = !DILocation(line: 202, column: 20, scope: !2894)
!3026 = !DILocation(line: 203, column: 18, scope: !2894)
!3027 = !DILocation(line: 204, column: 67, scope: !2894)
!3028 = !DILocation(line: 204, column: 64, scope: !2894)
!3029 = !DILocation(line: 204, column: 56, scope: !2894)
!3030 = !DILocation(line: 205, column: 29, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2894, file: !979, line: 205, column: 17)
!3032 = !DILocation(line: 206, column: 17, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3031, file: !979, line: 205, column: 45)
!3034 = !DILocation(line: 207, column: 13, scope: !3033)
!3035 = !DILocation(line: 211, column: 20, scope: !2894)
!3036 = !DILocation(line: 212, column: 18, scope: !2894)
!3037 = !DILocation(line: 213, column: 67, scope: !2894)
!3038 = !DILocation(line: 213, column: 74, scope: !2894)
!3039 = !DILocation(line: 213, column: 64, scope: !2894)
!3040 = !DILocation(line: 213, column: 56, scope: !2894)
!3041 = !DILocation(line: 214, column: 13, scope: !2894)
!3042 = !DILocation(line: 217, column: 20, scope: !2894)
!3043 = !DILocation(line: 218, column: 18, scope: !2894)
!3044 = !DILocation(line: 219, column: 67, scope: !2894)
!3045 = !DILocation(line: 219, column: 74, scope: !2894)
!3046 = !DILocation(line: 219, column: 64, scope: !2894)
!3047 = !DILocation(line: 219, column: 56, scope: !2894)
!3048 = !DILocation(line: 220, column: 13, scope: !2894)
!3049 = !DILocation(line: 223, column: 20, scope: !2894)
!3050 = !DILocation(line: 224, column: 18, scope: !2894)
!3051 = !DILocation(line: 225, column: 67, scope: !2894)
!3052 = !DILocation(line: 225, column: 74, scope: !2894)
!3053 = !DILocation(line: 225, column: 64, scope: !2894)
!3054 = !DILocation(line: 225, column: 56, scope: !2894)
!3055 = !DILocation(line: 226, column: 13, scope: !2894)
!3056 = !DILocation(line: 229, column: 20, scope: !2894)
!3057 = !DILocation(line: 230, column: 18, scope: !2894)
!3058 = !DILocation(line: 231, column: 67, scope: !2894)
!3059 = !DILocation(line: 231, column: 74, scope: !2894)
!3060 = !DILocation(line: 231, column: 64, scope: !2894)
!3061 = !DILocation(line: 231, column: 56, scope: !2894)
!3062 = !DILocation(line: 232, column: 13, scope: !2894)
!3063 = !DILocation(line: 235, column: 20, scope: !2894)
!3064 = !DILocation(line: 236, column: 18, scope: !2894)
!3065 = !DILocation(line: 237, column: 66, scope: !2894)
!3066 = !DILocation(line: 237, column: 73, scope: !2894)
!3067 = !DILocation(line: 237, column: 63, scope: !2894)
!3068 = !DILocation(line: 237, column: 56, scope: !2894)
!3069 = !DILocation(line: 238, column: 13, scope: !2894)
!3070 = !DILocation(line: 241, column: 20, scope: !2894)
!3071 = !DILocation(line: 242, column: 18, scope: !2894)
!3072 = !DILocation(line: 243, column: 67, scope: !2894)
!3073 = !DILocation(line: 243, column: 74, scope: !2894)
!3074 = !DILocation(line: 243, column: 64, scope: !2894)
!3075 = !DILocation(line: 243, column: 56, scope: !2894)
!3076 = !DILocation(line: 244, column: 13, scope: !2894)
!3077 = !DILocation(line: 247, column: 20, scope: !2894)
!3078 = !DILocation(line: 248, column: 18, scope: !2894)
!3079 = !DILocation(line: 249, column: 67, scope: !2894)
!3080 = !DILocation(line: 249, column: 74, scope: !2894)
!3081 = !DILocation(line: 249, column: 64, scope: !2894)
!3082 = !DILocation(line: 249, column: 56, scope: !2894)
!3083 = !DILocation(line: 250, column: 13, scope: !2894)
!3084 = !DILocation(line: 253, column: 20, scope: !2894)
!3085 = !DILocation(line: 254, column: 18, scope: !2894)
!3086 = !DILocation(line: 255, column: 67, scope: !2894)
!3087 = !DILocation(line: 255, column: 74, scope: !2894)
!3088 = !DILocation(line: 255, column: 64, scope: !2894)
!3089 = !DILocation(line: 255, column: 56, scope: !2894)
!3090 = !DILocation(line: 256, column: 13, scope: !2894)
!3091 = !DILocation(line: 259, column: 20, scope: !2894)
!3092 = !DILocation(line: 260, column: 18, scope: !2894)
!3093 = !DILocation(line: 261, column: 67, scope: !2894)
!3094 = !DILocation(line: 261, column: 74, scope: !2894)
!3095 = !DILocation(line: 261, column: 64, scope: !2894)
!3096 = !DILocation(line: 261, column: 56, scope: !2894)
!3097 = !DILocation(line: 262, column: 13, scope: !2894)
!3098 = !DILocation(line: 265, column: 20, scope: !2894)
!3099 = !DILocation(line: 266, column: 18, scope: !2894)
!3100 = !DILocation(line: 267, column: 67, scope: !2894)
!3101 = !DILocation(line: 267, column: 74, scope: !2894)
!3102 = !DILocation(line: 267, column: 64, scope: !2894)
!3103 = !DILocation(line: 267, column: 56, scope: !2894)
!3104 = !DILocation(line: 268, column: 13, scope: !2894)
!3105 = !DILocation(line: 271, column: 20, scope: !2894)
!3106 = !DILocation(line: 272, column: 18, scope: !2894)
!3107 = !DILocation(line: 273, column: 67, scope: !2894)
!3108 = !DILocation(line: 273, column: 74, scope: !2894)
!3109 = !DILocation(line: 273, column: 64, scope: !2894)
!3110 = !DILocation(line: 273, column: 56, scope: !2894)
!3111 = !DILocation(line: 274, column: 13, scope: !2894)
!3112 = !DILocation(line: 278, column: 1, scope: !2882)
!3113 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1060, file: !1060, line: 47, type: !1292, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3114)
!3114 = !{!3115}
!3115 = !DILocalVariable(name: "addr", arg: 1, scope: !3113, file: !1060, line: 47, type: !136)
!3116 = !DILocation(line: 0, scope: !3113)
!3117 = !DILocation(line: 49, column: 15, scope: !3113)
!3118 = !DILocation(line: 51, column: 5, scope: !3113)
!3119 = !{i64 2624}
!3120 = !DILocation(line: 52, column: 5, scope: !3113)
!3121 = !{i64 2651}
!3122 = !DILocation(line: 53, column: 1, scope: !3113)
!3123 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1060, file: !1060, line: 56, type: !3124, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{null, !7}
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "source", arg: 1, scope: !3123, file: !1060, line: 56, type: !7)
!3128 = !DILocation(line: 0, scope: !3123)
!3129 = !DILocation(line: 58, column: 16, scope: !3123)
!3130 = !DILocation(line: 59, column: 1, scope: !3123)
!3131 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1060, file: !1060, line: 61, type: !1261, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3132)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "mask", scope: !3131, file: !1060, line: 63, type: !136)
!3134 = !DILocation(line: 470, column: 3, scope: !3135, inlinedAt: !3138)
!3135 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1260, file: !1260, line: 466, type: !1261, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3136)
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "result", scope: !3135, file: !1260, line: 468, type: !136)
!3138 = distinct !DILocation(line: 64, column: 5, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3131, file: !1060, line: 64, column: 5)
!3140 = !{i64 302171}
!3141 = !DILocation(line: 0, scope: !3135, inlinedAt: !3138)
!3142 = !DILocation(line: 0, scope: !3131)
!3143 = !DILocation(line: 330, column: 3, scope: !3144, inlinedAt: !3145)
!3144 = distinct !DISubprogram(name: "__disable_irq", scope: !1260, file: !1260, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !1229)
!3145 = distinct !DILocation(line: 64, column: 5, scope: !3139)
!3146 = !{i64 298835}
!3147 = !DILocation(line: 65, column: 5, scope: !3131)
!3148 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1060, file: !1060, line: 68, type: !1292, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3149)
!3149 = !{!3150}
!3150 = !DILocalVariable(name: "mask", arg: 1, scope: !3148, file: !1060, line: 68, type: !136)
!3151 = !DILocation(line: 0, scope: !3148)
!3152 = !DILocalVariable(name: "priMask", arg: 1, scope: !3153, file: !1260, line: 481, type: !136)
!3153 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1260, file: !1260, line: 481, type: !1292, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !3154)
!3154 = !{!3152}
!3155 = !DILocation(line: 0, scope: !3153, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 70, column: 5, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3148, file: !1060, line: 70, column: 5)
!3158 = !DILocation(line: 483, column: 3, scope: !3153, inlinedAt: !3156)
!3159 = !{i64 302489}
!3160 = !DILocation(line: 71, column: 1, scope: !3148)
!3161 = distinct !DISubprogram(name: "pinmux_config", scope: !1105, file: !1105, line: 54, type: !3162, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1104, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!439, !1210, !136}
!3164 = !{!3165, !3166, !3167}
!3165 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !3161, file: !1105, line: 54, type: !1210)
!3166 = !DILocalVariable(name: "function", arg: 2, scope: !3161, file: !1105, line: 54, type: !136)
!3167 = !DILocalVariable(name: "ePadIndex", scope: !3161, file: !1105, line: 56, type: !2886)
!3168 = !DILocation(line: 0, scope: !3161)
!3169 = !DILocation(line: 60, column: 5, scope: !3161)
!3170 = !DILocation(line: 205, column: 38, scope: !3161)
!3171 = !DILocation(line: 205, column: 5, scope: !3161)
!3172 = !DILocation(line: 207, column: 5, scope: !3161)
!3173 = !DILocation(line: 208, column: 1, scope: !3161)
!3174 = distinct !DISubprogram(name: "get_current_count", scope: !1139, file: !1139, line: 56, type: !1261, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !1229)
!3175 = !DILocation(line: 58, column: 12, scope: !3174)
!3176 = !DILocation(line: 58, column: 5, scope: !3174)
!3177 = distinct !DISubprogram(name: "delay_time", scope: !1139, file: !1139, line: 62, type: !2100, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DILocalVariable(name: "count", arg: 1, scope: !3177, file: !1139, line: 62, type: !114)
!3180 = !DILocalVariable(name: "end_count", scope: !3177, file: !1139, line: 64, type: !114)
!3181 = !DILocalVariable(name: "current", scope: !3177, file: !1139, line: 64, type: !114)
!3182 = !DILocation(line: 0, scope: !3177)
!3183 = !DILocation(line: 66, column: 17, scope: !3177)
!3184 = !DILocation(line: 66, column: 37, scope: !3177)
!3185 = !DILocation(line: 66, column: 45, scope: !3177)
!3186 = !DILocation(line: 67, column: 15, scope: !3177)
!3187 = !DILocation(line: 68, column: 12, scope: !3177)
!3188 = !DILocation(line: 68, column: 5, scope: !3177)
!3189 = !DILocation(line: 69, column: 19, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3177, file: !1139, line: 68, column: 45)
!3191 = distinct !{!3191, !3188, !3192}
!3192 = !DILocation(line: 70, column: 5, scope: !3177)
!3193 = !DILocation(line: 72, column: 1, scope: !3177)
!3194 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1139, file: !1139, line: 75, type: !2100, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DILocalVariable(name: "count", arg: 1, scope: !3194, file: !1139, line: 75, type: !114)
!3197 = !DILocalVariable(name: "end_count", scope: !3194, file: !1139, line: 77, type: !114)
!3198 = !DILocalVariable(name: "current", scope: !3194, file: !1139, line: 77, type: !114)
!3199 = !DILocation(line: 0, scope: !3194)
!3200 = !DILocation(line: 79, column: 17, scope: !3194)
!3201 = !DILocation(line: 79, column: 42, scope: !3194)
!3202 = !DILocation(line: 79, column: 50, scope: !3194)
!3203 = !DILocation(line: 80, column: 15, scope: !3194)
!3204 = !DILocation(line: 81, column: 12, scope: !3194)
!3205 = !DILocation(line: 81, column: 5, scope: !3194)
!3206 = !DILocation(line: 82, column: 19, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3194, file: !1139, line: 81, column: 45)
!3208 = distinct !{!3208, !3205, !3209}
!3209 = !DILocation(line: 83, column: 5, scope: !3194)
!3210 = !DILocation(line: 85, column: 1, scope: !3194)
!3211 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1139, file: !1139, line: 95, type: !1261, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !1229)
!3212 = !DILocation(line: 97, column: 13, scope: !3211)
!3213 = !DILocation(line: 97, column: 5, scope: !3211)
!3214 = distinct !DISubprogram(name: "delay_ms", scope: !1139, file: !1139, line: 107, type: !1292, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3215)
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "ms", arg: 1, scope: !3214, file: !1139, line: 107, type: !136)
!3217 = !DILocalVariable(name: "count", scope: !3214, file: !1139, line: 109, type: !136)
!3218 = !DILocation(line: 0, scope: !3214)
!3219 = !DILocation(line: 111, column: 17, scope: !3214)
!3220 = !DILocation(line: 112, column: 17, scope: !3214)
!3221 = !DILocation(line: 112, column: 23, scope: !3214)
!3222 = !DILocation(line: 112, column: 11, scope: !3214)
!3223 = !DILocation(line: 113, column: 17, scope: !3214)
!3224 = !DILocation(line: 113, column: 23, scope: !3214)
!3225 = !DILocation(line: 113, column: 11, scope: !3214)
!3226 = !DILocation(line: 114, column: 17, scope: !3214)
!3227 = !DILocation(line: 114, column: 23, scope: !3214)
!3228 = !DILocation(line: 114, column: 11, scope: !3214)
!3229 = !DILocation(line: 115, column: 5, scope: !3214)
!3230 = !DILocation(line: 116, column: 1, scope: !3214)
!3231 = distinct !DISubprogram(name: "delay_us", scope: !1139, file: !1139, line: 120, type: !1292, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3232)
!3232 = !{!3233, !3234, !3235}
!3233 = !DILocalVariable(name: "us", arg: 1, scope: !3231, file: !1139, line: 120, type: !136)
!3234 = !DILocalVariable(name: "count", scope: !3231, file: !1139, line: 122, type: !136)
!3235 = !DILocalVariable(name: "ticks_per_us", scope: !3231, file: !1139, line: 123, type: !136)
!3236 = !DILocation(line: 0, scope: !3231)
!3237 = !DILocation(line: 125, column: 20, scope: !3231)
!3238 = !DILocation(line: 125, column: 39, scope: !3231)
!3239 = !DILocation(line: 126, column: 26, scope: !3231)
!3240 = !DILocation(line: 128, column: 5, scope: !3231)
!3241 = !DILocation(line: 129, column: 1, scope: !3231)
!3242 = distinct !DISubprogram(name: "drvTMR_init", scope: !1139, file: !1139, line: 133, type: !3243, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !136, !136, !126, !180}
!3245 = !{!3246, !3247, !3248, !3249}
!3246 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3242, file: !1139, line: 133, type: !136)
!3247 = !DILocalVariable(name: "countValue", arg: 2, scope: !3242, file: !1139, line: 133, type: !136)
!3248 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !3242, file: !1139, line: 133, type: !126)
!3249 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !3242, file: !1139, line: 133, type: !180)
!3250 = !DILocation(line: 0, scope: !3242)
!3251 = !DILocation(line: 136, column: 5, scope: !3242)
!3252 = !DILocation(line: 138, column: 18, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3242, file: !1139, line: 138, column: 9)
!3254 = !DILocation(line: 138, column: 9, scope: !3242)
!3255 = !DILocation(line: 139, column: 30, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3253, file: !1139, line: 138, column: 27)
!3257 = !DILocation(line: 141, column: 5, scope: !3256)
!3258 = !DILocation(line: 142, column: 30, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3253, file: !1139, line: 141, column: 12)
!3260 = !DILocation(line: 0, scope: !3253)
!3261 = !DILocation(line: 146, column: 5, scope: !3242)
!3262 = !DILocation(line: 147, column: 1, scope: !3242)
!3263 = distinct !DISubprogram(name: "TMR_Start", scope: !1139, file: !1139, line: 149, type: !1292, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3264)
!3264 = !{!3265}
!3265 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3263, file: !1139, line: 149, type: !136)
!3266 = !DILocation(line: 0, scope: !3263)
!3267 = !DILocation(line: 151, column: 5, scope: !3263)
!3268 = !DILocation(line: 152, column: 1, scope: !3263)
!3269 = distinct !DISubprogram(name: "TMR_Stop", scope: !1139, file: !1139, line: 154, type: !1292, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3270)
!3270 = !{!3271}
!3271 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3269, file: !1139, line: 154, type: !136)
!3272 = !DILocation(line: 0, scope: !3269)
!3273 = !DILocation(line: 156, column: 5, scope: !3269)
!3274 = !DILocation(line: 157, column: 1, scope: !3269)
!3275 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1139, file: !1139, line: 160, type: !181, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !1229)
!3276 = !DILocation(line: 162, column: 5, scope: !3275)
!3277 = !DILocation(line: 163, column: 1, scope: !3275)
!3278 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1139, file: !1139, line: 165, type: !181, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !1229)
!3279 = !DILocation(line: 167, column: 5, scope: !3278)
!3280 = !DILocation(line: 168, column: 1, scope: !3278)
!3281 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1139, file: !1139, line: 170, type: !1292, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1138, retainedNodes: !3282)
!3282 = !{!3283}
!3283 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3281, file: !1139, line: 170, type: !136)
!3284 = !DILocation(line: 0, scope: !3281)
!3285 = !DILocation(line: 172, column: 9, scope: !3281)
!3286 = !DILocation(line: 177, column: 5, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !1139, line: 175, column: 27)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !1139, line: 175, column: 9)
!3289 = !DILocation(line: 178, column: 1, scope: !3281)
!3290 = distinct !DISubprogram(name: "top_xtal_init", scope: !225, file: !225, line: 52, type: !181, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3291)
!3291 = !{!3292, !3293}
!3292 = !DILocalVariable(name: "u4RegVal", scope: !3290, file: !225, line: 54, type: !136)
!3293 = !DILocalVariable(name: "reg", scope: !3290, file: !225, line: 55, type: !859)
!3294 = !DILocation(line: 0, scope: !3290)
!3295 = !DILocation(line: 55, column: 25, scope: !3290)
!3296 = !DILocation(line: 56, column: 16, scope: !3290)
!3297 = !DILocation(line: 56, column: 23, scope: !3290)
!3298 = !DILocation(line: 58, column: 16, scope: !3290)
!3299 = !DILocation(line: 61, column: 5, scope: !3290)
!3300 = !DILocation(line: 59, column: 14, scope: !3290)
!3301 = !DILocation(line: 0, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3290, file: !225, line: 61, column: 18)
!3303 = !DILocation(line: 87, column: 38, scope: !3290)
!3304 = !DILocation(line: 88, column: 21, scope: !3290)
!3305 = !DILocation(line: 88, column: 19, scope: !3290)
!3306 = !DILocation(line: 89, column: 5, scope: !3290)
!3307 = !DILocation(line: 90, column: 17, scope: !3290)
!3308 = !DILocation(line: 90, column: 33, scope: !3290)
!3309 = !DILocation(line: 90, column: 5, scope: !3290)
!3310 = !DILocation(line: 91, column: 1, scope: !3290)
!3311 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !225, file: !225, line: 98, type: !1261, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !1229)
!3312 = !DILocation(line: 100, column: 12, scope: !3311)
!3313 = !DILocation(line: 100, column: 5, scope: !3311)
!3314 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !225, file: !225, line: 108, type: !1261, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !1229)
!3315 = !DILocation(line: 110, column: 12, scope: !3314)
!3316 = !DILocation(line: 110, column: 5, scope: !3314)
!3317 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !225, file: !225, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3318)
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "reg", scope: !3317, file: !225, line: 120, type: !230)
!3320 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3317, file: !225, line: 121, type: !229)
!3321 = !DILocation(line: 120, column: 5, scope: !3317)
!3322 = !DILocation(line: 120, column: 23, scope: !3317)
!3323 = !DILocation(line: 0, scope: !3317)
!3324 = !DILocation(line: 123, column: 11, scope: !3317)
!3325 = !DILocation(line: 123, column: 9, scope: !3317)
!3326 = !DILocation(line: 124, column: 12, scope: !3317)
!3327 = !DILocation(line: 124, column: 16, scope: !3317)
!3328 = !DILocation(line: 124, column: 39, scope: !3317)
!3329 = !DILocation(line: 124, column: 9, scope: !3317)
!3330 = !DILocation(line: 126, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3317, file: !225, line: 126, column: 9)
!3332 = !DILocation(line: 126, column: 13, scope: !3331)
!3333 = !DILocation(line: 126, column: 9, scope: !3317)
!3334 = !DILocation(line: 127, column: 15, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !225, line: 126, column: 47)
!3336 = !DILocation(line: 127, column: 13, scope: !3335)
!3337 = !DILocation(line: 128, column: 15, scope: !3335)
!3338 = !DILocation(line: 128, column: 19, scope: !3335)
!3339 = !DILocation(line: 128, column: 13, scope: !3335)
!3340 = !DILocation(line: 129, column: 15, scope: !3335)
!3341 = !DILocation(line: 129, column: 19, scope: !3335)
!3342 = !DILocation(line: 129, column: 13, scope: !3335)
!3343 = !DILocation(line: 130, column: 46, scope: !3335)
!3344 = !DILocation(line: 130, column: 9, scope: !3335)
!3345 = !DILocation(line: 132, column: 9, scope: !3335)
!3346 = !DILocation(line: 133, column: 19, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3335, file: !225, line: 132, column: 12)
!3348 = !DILocation(line: 133, column: 17, scope: !3347)
!3349 = !DILocation(line: 134, column: 19, scope: !3347)
!3350 = !DILocation(line: 134, column: 23, scope: !3347)
!3351 = !DILocation(line: 134, column: 17, scope: !3347)
!3352 = !DILocation(line: 135, column: 19, scope: !3335)
!3353 = !DILocation(line: 135, column: 18, scope: !3335)
!3354 = !DILocation(line: 135, column: 9, scope: !3347)
!3355 = distinct !{!3355, !3345, !3356}
!3356 = !DILocation(line: 135, column: 22, scope: !3335)
!3357 = !DILocation(line: 138, column: 1, scope: !3317)
!3358 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !3359, file: !3359, line: 176, type: !3360, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3364)
!3359 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!136, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3364 = !{!3365}
!3365 = !DILocalVariable(name: "Register", arg: 1, scope: !3358, file: !3359, line: 176, type: !3362)
!3366 = !DILocation(line: 0, scope: !3358)
!3367 = !DILocation(line: 178, column: 13, scope: !3358)
!3368 = !DILocation(line: 178, column: 12, scope: !3358)
!3369 = !DILocation(line: 178, column: 5, scope: !3358)
!3370 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !3359, file: !3359, line: 171, type: !3371, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{null, !3362, !136}
!3373 = !{!3374, !3375}
!3374 = !DILocalVariable(name: "Register", arg: 1, scope: !3370, file: !3359, line: 171, type: !3362)
!3375 = !DILocalVariable(name: "Value", arg: 2, scope: !3370, file: !3359, line: 171, type: !136)
!3376 = !DILocation(line: 0, scope: !3370)
!3377 = !DILocation(line: 173, column: 6, scope: !3370)
!3378 = !DILocation(line: 173, column: 36, scope: !3370)
!3379 = !DILocation(line: 174, column: 1, scope: !3370)
!3380 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !225, file: !225, line: 145, type: !1234, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3381)
!3381 = !{!3382, !3383, !3384}
!3382 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3380, file: !225, line: 145, type: !128)
!3383 = !DILocalVariable(name: "reg", scope: !3380, file: !225, line: 147, type: !230)
!3384 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3380, file: !225, line: 148, type: !229)
!3385 = !DILocation(line: 0, scope: !3380)
!3386 = !DILocation(line: 147, column: 5, scope: !3380)
!3387 = !DILocation(line: 147, column: 23, scope: !3380)
!3388 = !DILocation(line: 150, column: 11, scope: !3380)
!3389 = !DILocation(line: 150, column: 9, scope: !3380)
!3390 = !DILocation(line: 151, column: 12, scope: !3380)
!3391 = !DILocation(line: 151, column: 16, scope: !3380)
!3392 = !DILocation(line: 151, column: 39, scope: !3380)
!3393 = !DILocation(line: 151, column: 9, scope: !3380)
!3394 = !DILocation(line: 153, column: 9, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3380, file: !225, line: 153, column: 9)
!3396 = !DILocation(line: 153, column: 13, scope: !3395)
!3397 = !DILocation(line: 153, column: 9, scope: !3380)
!3398 = !DILocation(line: 154, column: 15, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3395, file: !225, line: 153, column: 45)
!3400 = !DILocation(line: 154, column: 13, scope: !3399)
!3401 = !DILocation(line: 155, column: 15, scope: !3399)
!3402 = !DILocation(line: 155, column: 19, scope: !3399)
!3403 = !DILocation(line: 155, column: 13, scope: !3399)
!3404 = !DILocation(line: 156, column: 15, scope: !3399)
!3405 = !DILocation(line: 156, column: 19, scope: !3399)
!3406 = !DILocation(line: 156, column: 13, scope: !3399)
!3407 = !DILocation(line: 157, column: 15, scope: !3399)
!3408 = !DILocation(line: 157, column: 13, scope: !3399)
!3409 = !DILocation(line: 158, column: 46, scope: !3399)
!3410 = !DILocation(line: 158, column: 9, scope: !3399)
!3411 = !DILocation(line: 160, column: 15, scope: !3399)
!3412 = !DILocation(line: 160, column: 13, scope: !3399)
!3413 = !DILocation(line: 161, column: 15, scope: !3399)
!3414 = !DILocation(line: 161, column: 19, scope: !3399)
!3415 = !DILocation(line: 161, column: 13, scope: !3399)
!3416 = !DILocation(line: 162, column: 15, scope: !3399)
!3417 = !DILocation(line: 162, column: 19, scope: !3399)
!3418 = !DILocation(line: 162, column: 13, scope: !3399)
!3419 = !DILocation(line: 163, column: 15, scope: !3399)
!3420 = !DILocation(line: 163, column: 19, scope: !3399)
!3421 = !DILocation(line: 163, column: 13, scope: !3399)
!3422 = !DILocation(line: 164, column: 46, scope: !3399)
!3423 = !DILocation(line: 164, column: 9, scope: !3399)
!3424 = !DILocation(line: 166, column: 9, scope: !3399)
!3425 = !DILocation(line: 167, column: 19, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3399, file: !225, line: 166, column: 12)
!3427 = !DILocation(line: 167, column: 17, scope: !3426)
!3428 = !DILocation(line: 168, column: 19, scope: !3426)
!3429 = !DILocation(line: 168, column: 23, scope: !3426)
!3430 = !DILocation(line: 168, column: 17, scope: !3426)
!3431 = !DILocation(line: 169, column: 19, scope: !3399)
!3432 = !DILocation(line: 169, column: 18, scope: !3399)
!3433 = !DILocation(line: 169, column: 9, scope: !3426)
!3434 = distinct !{!3434, !3424, !3435}
!3435 = !DILocation(line: 169, column: 22, scope: !3399)
!3436 = !DILocation(line: 171, column: 15, scope: !3399)
!3437 = !DILocation(line: 171, column: 13, scope: !3399)
!3438 = !DILocation(line: 172, column: 15, scope: !3399)
!3439 = !DILocation(line: 172, column: 19, scope: !3399)
!3440 = !DILocation(line: 172, column: 13, scope: !3399)
!3441 = !DILocation(line: 173, column: 15, scope: !3399)
!3442 = !DILocation(line: 173, column: 19, scope: !3399)
!3443 = !DILocation(line: 173, column: 13, scope: !3399)
!3444 = !DILocation(line: 174, column: 5, scope: !3399)
!3445 = !DILocation(line: 176, column: 11, scope: !3380)
!3446 = !DILocation(line: 176, column: 9, scope: !3380)
!3447 = !DILocation(line: 177, column: 9, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3380, file: !225, line: 177, column: 9)
!3449 = !DILocation(line: 0, scope: !3448)
!3450 = !DILocation(line: 177, column: 9, scope: !3380)
!3451 = !DILocation(line: 178, column: 19, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3448, file: !225, line: 177, column: 17)
!3453 = !DILocation(line: 178, column: 13, scope: !3452)
!3454 = !DILocation(line: 179, column: 5, scope: !3452)
!3455 = !DILocation(line: 180, column: 13, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3448, file: !225, line: 179, column: 12)
!3457 = !DILocation(line: 182, column: 42, scope: !3380)
!3458 = !DILocation(line: 182, column: 5, scope: !3380)
!3459 = !DILocation(line: 184, column: 1, scope: !3380)
!3460 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !225, file: !225, line: 191, type: !181, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3461)
!3461 = !{!3462, !3463}
!3462 = !DILocalVariable(name: "reg", scope: !3460, file: !225, line: 193, type: !230)
!3463 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3460, file: !225, line: 194, type: !229)
!3464 = !DILocation(line: 193, column: 5, scope: !3460)
!3465 = !DILocation(line: 193, column: 23, scope: !3460)
!3466 = !DILocation(line: 0, scope: !3460)
!3467 = !DILocation(line: 196, column: 11, scope: !3460)
!3468 = !DILocation(line: 196, column: 9, scope: !3460)
!3469 = !DILocation(line: 197, column: 11, scope: !3460)
!3470 = !DILocation(line: 197, column: 15, scope: !3460)
!3471 = !DILocation(line: 197, column: 9, scope: !3460)
!3472 = !DILocation(line: 198, column: 11, scope: !3460)
!3473 = !DILocation(line: 198, column: 15, scope: !3460)
!3474 = !DILocation(line: 198, column: 9, scope: !3460)
!3475 = !DILocation(line: 199, column: 11, scope: !3460)
!3476 = !DILocation(line: 199, column: 9, scope: !3460)
!3477 = !DILocation(line: 200, column: 42, scope: !3460)
!3478 = !DILocation(line: 200, column: 5, scope: !3460)
!3479 = !DILocation(line: 202, column: 11, scope: !3460)
!3480 = !DILocation(line: 202, column: 9, scope: !3460)
!3481 = !DILocation(line: 203, column: 11, scope: !3460)
!3482 = !DILocation(line: 203, column: 15, scope: !3460)
!3483 = !DILocation(line: 203, column: 9, scope: !3460)
!3484 = !DILocation(line: 204, column: 11, scope: !3460)
!3485 = !DILocation(line: 204, column: 15, scope: !3460)
!3486 = !DILocation(line: 204, column: 9, scope: !3460)
!3487 = !DILocation(line: 205, column: 11, scope: !3460)
!3488 = !DILocation(line: 205, column: 9, scope: !3460)
!3489 = !DILocation(line: 206, column: 42, scope: !3460)
!3490 = !DILocation(line: 206, column: 5, scope: !3460)
!3491 = !DILocation(line: 209, column: 1, scope: !3460)
!3492 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !225, file: !225, line: 216, type: !181, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3493)
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "reg", scope: !3492, file: !225, line: 218, type: !230)
!3495 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3492, file: !225, line: 219, type: !229)
!3496 = !DILocation(line: 218, column: 5, scope: !3492)
!3497 = !DILocation(line: 218, column: 23, scope: !3492)
!3498 = !DILocation(line: 0, scope: !3492)
!3499 = !DILocation(line: 222, column: 11, scope: !3492)
!3500 = !DILocation(line: 222, column: 9, scope: !3492)
!3501 = !DILocation(line: 223, column: 11, scope: !3492)
!3502 = !DILocation(line: 223, column: 15, scope: !3492)
!3503 = !DILocation(line: 223, column: 9, scope: !3492)
!3504 = !DILocation(line: 224, column: 11, scope: !3492)
!3505 = !DILocation(line: 224, column: 9, scope: !3492)
!3506 = !DILocation(line: 225, column: 39, scope: !3492)
!3507 = !DILocation(line: 225, column: 5, scope: !3492)
!3508 = !DILocation(line: 228, column: 11, scope: !3492)
!3509 = !DILocation(line: 228, column: 9, scope: !3492)
!3510 = !DILocation(line: 229, column: 11, scope: !3492)
!3511 = !DILocation(line: 229, column: 15, scope: !3492)
!3512 = !DILocation(line: 229, column: 9, scope: !3492)
!3513 = !DILocation(line: 230, column: 11, scope: !3492)
!3514 = !DILocation(line: 230, column: 9, scope: !3492)
!3515 = !DILocation(line: 231, column: 39, scope: !3492)
!3516 = !DILocation(line: 231, column: 5, scope: !3492)
!3517 = !DILocation(line: 233, column: 5, scope: !3492)
!3518 = !DILocation(line: 233, column: 12, scope: !3492)
!3519 = !DILocation(line: 233, column: 19, scope: !3492)
!3520 = !DILocation(line: 233, column: 16, scope: !3492)
!3521 = distinct !{!3521, !3517, !3522}
!3522 = !DILocation(line: 233, column: 52, scope: !3492)
!3523 = !DILocation(line: 235, column: 21, scope: !3492)
!3524 = !DILocation(line: 235, column: 19, scope: !3492)
!3525 = !DILocation(line: 236, column: 5, scope: !3492)
!3526 = !DILocation(line: 237, column: 17, scope: !3492)
!3527 = !DILocation(line: 237, column: 33, scope: !3492)
!3528 = !DILocation(line: 237, column: 5, scope: !3492)
!3529 = !DILocation(line: 239, column: 1, scope: !3492)
!3530 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !225, file: !225, line: 246, type: !181, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3531)
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "reg", scope: !3530, file: !225, line: 248, type: !230)
!3533 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3530, file: !225, line: 249, type: !229)
!3534 = !DILocation(line: 248, column: 5, scope: !3530)
!3535 = !DILocation(line: 248, column: 23, scope: !3530)
!3536 = !DILocation(line: 0, scope: !3530)
!3537 = !DILocation(line: 252, column: 5, scope: !3530)
!3538 = !DILocation(line: 255, column: 11, scope: !3530)
!3539 = !DILocation(line: 255, column: 9, scope: !3530)
!3540 = !DILocation(line: 256, column: 11, scope: !3530)
!3541 = !DILocation(line: 256, column: 15, scope: !3530)
!3542 = !DILocation(line: 256, column: 9, scope: !3530)
!3543 = !DILocation(line: 257, column: 11, scope: !3530)
!3544 = !DILocation(line: 257, column: 15, scope: !3530)
!3545 = !DILocation(line: 257, column: 9, scope: !3530)
!3546 = !DILocation(line: 258, column: 39, scope: !3530)
!3547 = !DILocation(line: 258, column: 5, scope: !3530)
!3548 = !DILocation(line: 260, column: 5, scope: !3530)
!3549 = !DILocation(line: 260, column: 12, scope: !3530)
!3550 = !DILocation(line: 260, column: 19, scope: !3530)
!3551 = !DILocation(line: 260, column: 16, scope: !3530)
!3552 = distinct !{!3552, !3548, !3553}
!3553 = !DILocation(line: 260, column: 52, scope: !3530)
!3554 = !DILocation(line: 263, column: 11, scope: !3530)
!3555 = !DILocation(line: 263, column: 9, scope: !3530)
!3556 = !DILocation(line: 264, column: 11, scope: !3530)
!3557 = !DILocation(line: 264, column: 15, scope: !3530)
!3558 = !DILocation(line: 264, column: 9, scope: !3530)
!3559 = !DILocation(line: 265, column: 11, scope: !3530)
!3560 = !DILocation(line: 265, column: 15, scope: !3530)
!3561 = !DILocation(line: 265, column: 9, scope: !3530)
!3562 = !DILocation(line: 266, column: 39, scope: !3530)
!3563 = !DILocation(line: 266, column: 5, scope: !3530)
!3564 = !DILocation(line: 269, column: 11, scope: !3530)
!3565 = !DILocation(line: 269, column: 9, scope: !3530)
!3566 = !DILocation(line: 270, column: 11, scope: !3530)
!3567 = !DILocation(line: 270, column: 15, scope: !3530)
!3568 = !DILocation(line: 270, column: 9, scope: !3530)
!3569 = !DILocation(line: 271, column: 11, scope: !3530)
!3570 = !DILocation(line: 271, column: 15, scope: !3530)
!3571 = !DILocation(line: 271, column: 9, scope: !3530)
!3572 = !DILocation(line: 272, column: 39, scope: !3530)
!3573 = !DILocation(line: 272, column: 5, scope: !3530)
!3574 = !DILocation(line: 273, column: 19, scope: !3530)
!3575 = !DILocation(line: 274, column: 5, scope: !3530)
!3576 = !DILocation(line: 275, column: 17, scope: !3530)
!3577 = !DILocation(line: 275, column: 33, scope: !3530)
!3578 = !DILocation(line: 275, column: 5, scope: !3530)
!3579 = !DILocation(line: 277, column: 1, scope: !3530)
!3580 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !225, file: !225, line: 284, type: !181, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3581)
!3581 = !{!3582, !3583}
!3582 = !DILocalVariable(name: "reg", scope: !3580, file: !225, line: 286, type: !230)
!3583 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3580, file: !225, line: 287, type: !229)
!3584 = !DILocation(line: 286, column: 5, scope: !3580)
!3585 = !DILocation(line: 286, column: 23, scope: !3580)
!3586 = !DILocation(line: 0, scope: !3580)
!3587 = !DILocation(line: 290, column: 5, scope: !3580)
!3588 = !DILocation(line: 293, column: 11, scope: !3580)
!3589 = !DILocation(line: 293, column: 9, scope: !3580)
!3590 = !DILocation(line: 294, column: 11, scope: !3580)
!3591 = !DILocation(line: 294, column: 15, scope: !3580)
!3592 = !DILocation(line: 294, column: 9, scope: !3580)
!3593 = !DILocation(line: 295, column: 11, scope: !3580)
!3594 = !DILocation(line: 295, column: 15, scope: !3580)
!3595 = !DILocation(line: 295, column: 9, scope: !3580)
!3596 = !DILocation(line: 296, column: 39, scope: !3580)
!3597 = !DILocation(line: 296, column: 5, scope: !3580)
!3598 = !DILocation(line: 298, column: 5, scope: !3580)
!3599 = !DILocation(line: 298, column: 12, scope: !3580)
!3600 = !DILocation(line: 298, column: 19, scope: !3580)
!3601 = !DILocation(line: 298, column: 16, scope: !3580)
!3602 = distinct !{!3602, !3598, !3603}
!3603 = !DILocation(line: 298, column: 52, scope: !3580)
!3604 = !DILocation(line: 301, column: 11, scope: !3580)
!3605 = !DILocation(line: 301, column: 9, scope: !3580)
!3606 = !DILocation(line: 302, column: 11, scope: !3580)
!3607 = !DILocation(line: 302, column: 15, scope: !3580)
!3608 = !DILocation(line: 302, column: 9, scope: !3580)
!3609 = !DILocation(line: 303, column: 11, scope: !3580)
!3610 = !DILocation(line: 303, column: 15, scope: !3580)
!3611 = !DILocation(line: 303, column: 9, scope: !3580)
!3612 = !DILocation(line: 304, column: 39, scope: !3580)
!3613 = !DILocation(line: 304, column: 5, scope: !3580)
!3614 = !DILocation(line: 307, column: 11, scope: !3580)
!3615 = !DILocation(line: 307, column: 9, scope: !3580)
!3616 = !DILocation(line: 308, column: 11, scope: !3580)
!3617 = !DILocation(line: 308, column: 15, scope: !3580)
!3618 = !DILocation(line: 308, column: 9, scope: !3580)
!3619 = !DILocation(line: 309, column: 11, scope: !3580)
!3620 = !DILocation(line: 309, column: 15, scope: !3580)
!3621 = !DILocation(line: 309, column: 9, scope: !3580)
!3622 = !DILocation(line: 310, column: 39, scope: !3580)
!3623 = !DILocation(line: 310, column: 5, scope: !3580)
!3624 = !DILocation(line: 311, column: 19, scope: !3580)
!3625 = !DILocation(line: 312, column: 5, scope: !3580)
!3626 = !DILocation(line: 313, column: 17, scope: !3580)
!3627 = !DILocation(line: 313, column: 33, scope: !3580)
!3628 = !DILocation(line: 313, column: 5, scope: !3580)
!3629 = !DILocation(line: 315, column: 1, scope: !3580)
!3630 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !225, file: !225, line: 323, type: !181, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3631)
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "reg", scope: !3630, file: !225, line: 325, type: !230)
!3633 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3630, file: !225, line: 326, type: !229)
!3634 = !DILocation(line: 325, column: 5, scope: !3630)
!3635 = !DILocation(line: 325, column: 23, scope: !3630)
!3636 = !DILocation(line: 0, scope: !3630)
!3637 = !DILocation(line: 329, column: 5, scope: !3630)
!3638 = !DILocation(line: 332, column: 11, scope: !3630)
!3639 = !DILocation(line: 332, column: 9, scope: !3630)
!3640 = !DILocation(line: 333, column: 11, scope: !3630)
!3641 = !DILocation(line: 333, column: 15, scope: !3630)
!3642 = !DILocation(line: 333, column: 9, scope: !3630)
!3643 = !DILocation(line: 334, column: 11, scope: !3630)
!3644 = !DILocation(line: 334, column: 9, scope: !3630)
!3645 = !DILocation(line: 335, column: 39, scope: !3630)
!3646 = !DILocation(line: 335, column: 5, scope: !3630)
!3647 = !DILocation(line: 337, column: 5, scope: !3630)
!3648 = !DILocation(line: 337, column: 12, scope: !3630)
!3649 = !DILocation(line: 337, column: 19, scope: !3630)
!3650 = !DILocation(line: 337, column: 16, scope: !3630)
!3651 = distinct !{!3651, !3647, !3652}
!3652 = !DILocation(line: 337, column: 52, scope: !3630)
!3653 = !DILocation(line: 340, column: 11, scope: !3630)
!3654 = !DILocation(line: 340, column: 9, scope: !3630)
!3655 = !DILocation(line: 341, column: 11, scope: !3630)
!3656 = !DILocation(line: 341, column: 15, scope: !3630)
!3657 = !DILocation(line: 341, column: 9, scope: !3630)
!3658 = !DILocation(line: 342, column: 11, scope: !3630)
!3659 = !DILocation(line: 342, column: 15, scope: !3630)
!3660 = !DILocation(line: 342, column: 9, scope: !3630)
!3661 = !DILocation(line: 343, column: 39, scope: !3630)
!3662 = !DILocation(line: 343, column: 5, scope: !3630)
!3663 = !DILocation(line: 344, column: 19, scope: !3630)
!3664 = !DILocation(line: 345, column: 5, scope: !3630)
!3665 = !DILocation(line: 346, column: 17, scope: !3630)
!3666 = !DILocation(line: 346, column: 33, scope: !3630)
!3667 = !DILocation(line: 346, column: 5, scope: !3630)
!3668 = !DILocation(line: 348, column: 1, scope: !3630)
!3669 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !225, file: !225, line: 353, type: !181, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3670)
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "reg", scope: !3669, file: !225, line: 355, type: !218)
!3672 = !DILocalVariable(name: "pTopCfgHclk", scope: !3669, file: !225, line: 356, type: !231)
!3673 = !DILocation(line: 355, column: 5, scope: !3669)
!3674 = !DILocation(line: 355, column: 21, scope: !3669)
!3675 = !DILocation(line: 0, scope: !3669)
!3676 = !DILocation(line: 358, column: 11, scope: !3669)
!3677 = !DILocation(line: 358, column: 9, scope: !3669)
!3678 = !DILocation(line: 359, column: 11, scope: !3669)
!3679 = !DILocation(line: 359, column: 15, scope: !3669)
!3680 = !DILocation(line: 359, column: 9, scope: !3669)
!3681 = !DILocation(line: 360, column: 11, scope: !3669)
!3682 = !DILocation(line: 360, column: 9, scope: !3669)
!3683 = !DILocation(line: 361, column: 37, scope: !3669)
!3684 = !DILocation(line: 361, column: 5, scope: !3669)
!3685 = !DILocation(line: 362, column: 1, scope: !3669)
!3686 = distinct !DISubprogram(name: "getc", scope: !238, file: !238, line: 68, type: !3687, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!53}
!3689 = !{!3690}
!3690 = !DILocalVariable(name: "rc", scope: !3686, file: !238, line: 71, type: !53)
!3691 = !DILocation(line: 71, column: 14, scope: !3686)
!3692 = !DILocation(line: 0, scope: !3686)
!3693 = !DILocation(line: 72, column: 5, scope: !3686)
!3694 = distinct !DISubprogram(name: "getc_nowait", scope: !238, file: !238, line: 80, type: !3687, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3695)
!3695 = !{!3696}
!3696 = !DILocalVariable(name: "c", scope: !3694, file: !238, line: 82, type: !632)
!3697 = !DILocation(line: 84, column: 9, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3694, file: !238, line: 84, column: 9)
!3699 = !DILocation(line: 84, column: 40, scope: !3698)
!3700 = !DILocation(line: 84, column: 9, scope: !3694)
!3701 = !DILocation(line: 85, column: 13, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3698, file: !238, line: 84, column: 47)
!3703 = !DILocation(line: 86, column: 16, scope: !3702)
!3704 = !DILocation(line: 0, scope: !3694)
!3705 = !DILocation(line: 86, column: 9, scope: !3702)
!3706 = !DILocation(line: 0, scope: !3698)
!3707 = !DILocation(line: 90, column: 1, scope: !3694)
!3708 = distinct !DISubprogram(name: "uart_output_char", scope: !238, file: !238, line: 93, type: !3709, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3712)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{null, !3711, !132}
!3711 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !241, line: 75, baseType: !240)
!3712 = !{!3713, !3714, !3715}
!3713 = !DILocalVariable(name: "port_no", arg: 1, scope: !3708, file: !238, line: 93, type: !3711)
!3714 = !DILocalVariable(name: "c", arg: 2, scope: !3708, file: !238, line: 93, type: !132)
!3715 = !DILocalVariable(name: "base", scope: !3708, file: !238, line: 95, type: !7)
!3716 = !DILocation(line: 0, scope: !3708)
!3717 = !DILocation(line: 95, column: 25, scope: !3708)
!3718 = !DILocation(line: 97, column: 5, scope: !3708)
!3719 = !DILocation(line: 97, column: 14, scope: !3708)
!3720 = !DILocation(line: 97, column: 42, scope: !3708)
!3721 = !DILocation(line: 97, column: 12, scope: !3708)
!3722 = distinct !{!3722, !3718, !3723}
!3723 = !DILocation(line: 98, column: 9, scope: !3708)
!3724 = !DILocation(line: 99, column: 35, scope: !3708)
!3725 = !DILocation(line: 99, column: 5, scope: !3708)
!3726 = !DILocation(line: 99, column: 33, scope: !3708)
!3727 = !DILocation(line: 102, column: 1, scope: !3708)
!3728 = distinct !DISubprogram(name: "uart_input_char", scope: !238, file: !238, line: 106, type: !3729, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3731)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!128, !3711}
!3731 = !{!3732, !3733, !3734}
!3732 = !DILocalVariable(name: "port_no", arg: 1, scope: !3728, file: !238, line: 106, type: !3711)
!3733 = !DILocalVariable(name: "base", scope: !3728, file: !238, line: 108, type: !7)
!3734 = !DILocalVariable(name: "c", scope: !3728, file: !238, line: 109, type: !632)
!3735 = !DILocation(line: 0, scope: !3728)
!3736 = !DILocation(line: 108, column: 25, scope: !3728)
!3737 = !DILocation(line: 111, column: 5, scope: !3728)
!3738 = !DILocation(line: 111, column: 14, scope: !3728)
!3739 = !DILocation(line: 111, column: 42, scope: !3728)
!3740 = !DILocation(line: 111, column: 12, scope: !3728)
!3741 = distinct !{!3741, !3737, !3742}
!3742 = !DILocation(line: 112, column: 9, scope: !3728)
!3743 = !DILocation(line: 114, column: 9, scope: !3728)
!3744 = !DILocation(line: 116, column: 5, scope: !3728)
!3745 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !238, file: !238, line: 120, type: !3746, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!136, !3711}
!3748 = !{!3749, !3750, !3751}
!3749 = !DILocalVariable(name: "port_no", arg: 1, scope: !3745, file: !238, line: 120, type: !3711)
!3750 = !DILocalVariable(name: "base", scope: !3745, file: !238, line: 122, type: !7)
!3751 = !DILocalVariable(name: "c", scope: !3745, file: !238, line: 123, type: !632)
!3752 = !DILocation(line: 0, scope: !3745)
!3753 = !DILocation(line: 122, column: 25, scope: !3745)
!3754 = !DILocation(line: 125, column: 9, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3745, file: !238, line: 125, column: 9)
!3756 = !DILocation(line: 125, column: 37, scope: !3755)
!3757 = !DILocation(line: 125, column: 9, scope: !3745)
!3758 = !DILocation(line: 126, column: 13, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3755, file: !238, line: 125, column: 44)
!3760 = !DILocation(line: 127, column: 16, scope: !3759)
!3761 = !DILocation(line: 127, column: 9, scope: !3759)
!3762 = !DILocation(line: 0, scope: !3755)
!3763 = !DILocation(line: 131, column: 1, scope: !3745)
!3764 = distinct !DISubprogram(name: "halUART_HWInit", scope: !238, file: !238, line: 136, type: !3765, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3711}
!3767 = !{!3768}
!3768 = !DILocalVariable(name: "u_port", arg: 1, scope: !3764, file: !238, line: 136, type: !3711)
!3769 = !DILocation(line: 0, scope: !3764)
!3770 = !DILocation(line: 139, column: 5, scope: !3764)
!3771 = !DILocation(line: 140, column: 9, scope: !3764)
!3772 = !DILocation(line: 153, column: 5, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !238, line: 147, column: 38)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !238, line: 147, column: 16)
!3775 = distinct !DILexicalBlock(scope: !3764, file: !238, line: 140, column: 9)
!3776 = !DILocation(line: 0, scope: !3775)
!3777 = !DILocation(line: 155, column: 1, scope: !3764)
!3778 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !238, file: !238, line: 158, type: !3779, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3781)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{null, !3711, !136, !307, !307, !307}
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3797, !3798}
!3782 = !DILocalVariable(name: "u_port", arg: 1, scope: !3778, file: !238, line: 158, type: !3711)
!3783 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3778, file: !238, line: 158, type: !136)
!3784 = !DILocalVariable(name: "databit", arg: 3, scope: !3778, file: !238, line: 158, type: !307)
!3785 = !DILocalVariable(name: "parity", arg: 4, scope: !3778, file: !238, line: 158, type: !307)
!3786 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3778, file: !238, line: 158, type: !307)
!3787 = !DILocalVariable(name: "control_word", scope: !3778, file: !238, line: 160, type: !307)
!3788 = !DILocalVariable(name: "UART_BASE", scope: !3778, file: !238, line: 161, type: !136)
!3789 = !DILocalVariable(name: "data", scope: !3778, file: !238, line: 162, type: !136)
!3790 = !DILocalVariable(name: "uart_lcr", scope: !3778, file: !238, line: 162, type: !136)
!3791 = !DILocalVariable(name: "high_speed_div", scope: !3778, file: !238, line: 162, type: !136)
!3792 = !DILocalVariable(name: "sample_count", scope: !3778, file: !238, line: 162, type: !136)
!3793 = !DILocalVariable(name: "sample_point", scope: !3778, file: !238, line: 162, type: !136)
!3794 = !DILocalVariable(name: "fraction", scope: !3778, file: !238, line: 162, type: !136)
!3795 = !DILocalVariable(name: "fraction_L_mapping", scope: !3778, file: !238, line: 163, type: !3796)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 176, elements: !190)
!3797 = !DILocalVariable(name: "fraction_M_mapping", scope: !3778, file: !238, line: 164, type: !3796)
!3798 = !DILocalVariable(name: "status", scope: !3778, file: !238, line: 165, type: !439)
!3799 = !DILocation(line: 0, scope: !3778)
!3800 = !DILocation(line: 163, column: 15, scope: !3778)
!3801 = !DILocation(line: 164, column: 15, scope: !3778)
!3802 = !DILocation(line: 166, column: 20, scope: !3778)
!3803 = !DILocation(line: 166, column: 18, scope: !3778)
!3804 = !DILocation(line: 168, column: 9, scope: !3778)
!3805 = !DILocation(line: 176, column: 5, scope: !3778)
!3806 = !DILocation(line: 176, column: 44, scope: !3778)
!3807 = !DILocation(line: 177, column: 16, scope: !3778)
!3808 = !DILocation(line: 178, column: 50, scope: !3778)
!3809 = !DILocation(line: 178, column: 38, scope: !3778)
!3810 = !DILocation(line: 179, column: 12, scope: !3778)
!3811 = !DILocation(line: 179, column: 25, scope: !3778)
!3812 = !DILocation(line: 180, column: 28, scope: !3778)
!3813 = !DILocation(line: 180, column: 34, scope: !3778)
!3814 = !DILocation(line: 182, column: 29, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3778, file: !238, line: 181, column: 5)
!3816 = !DILocation(line: 182, column: 46, scope: !3815)
!3817 = !DILocation(line: 183, column: 26, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3815, file: !238, line: 183, column: 13)
!3819 = !DILocation(line: 183, column: 13, scope: !3815)
!3820 = !DILocation(line: 192, column: 30, scope: !3778)
!3821 = !DILocation(line: 192, column: 35, scope: !3778)
!3822 = !DILocation(line: 192, column: 46, scope: !3778)
!3823 = !DILocation(line: 192, column: 74, scope: !3778)
!3824 = !DILocation(line: 192, column: 53, scope: !3778)
!3825 = !DILocation(line: 192, column: 80, scope: !3778)
!3826 = !DILocation(line: 193, column: 56, scope: !3778)
!3827 = !DILocation(line: 193, column: 5, scope: !3778)
!3828 = !DILocation(line: 193, column: 38, scope: !3778)
!3829 = !DILocation(line: 194, column: 57, scope: !3778)
!3830 = !DILocation(line: 194, column: 63, scope: !3778)
!3831 = !DILocation(line: 194, column: 5, scope: !3778)
!3832 = !DILocation(line: 194, column: 38, scope: !3778)
!3833 = !DILocation(line: 195, column: 5, scope: !3778)
!3834 = !DILocation(line: 195, column: 45, scope: !3778)
!3835 = !DILocation(line: 196, column: 5, scope: !3778)
!3836 = !DILocation(line: 196, column: 47, scope: !3778)
!3837 = !DILocation(line: 197, column: 46, scope: !3778)
!3838 = !DILocation(line: 197, column: 5, scope: !3778)
!3839 = !DILocation(line: 197, column: 44, scope: !3778)
!3840 = !DILocation(line: 198, column: 46, scope: !3778)
!3841 = !DILocation(line: 198, column: 5, scope: !3778)
!3842 = !DILocation(line: 198, column: 44, scope: !3778)
!3843 = !DILocation(line: 199, column: 38, scope: !3778)
!3844 = !DILocation(line: 200, column: 5, scope: !3778)
!3845 = !DILocation(line: 200, column: 38, scope: !3778)
!3846 = !DILocation(line: 202, column: 20, scope: !3778)
!3847 = !DILocation(line: 203, column: 18, scope: !3778)
!3848 = !DILocation(line: 205, column: 18, scope: !3778)
!3849 = !DILocation(line: 207, column: 18, scope: !3778)
!3850 = !DILocation(line: 208, column: 18, scope: !3778)
!3851 = !DILocation(line: 209, column: 5, scope: !3778)
!3852 = !DILocation(line: 213, column: 1, scope: !3778)
!3853 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !238, file: !238, line: 215, type: !3854, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3857)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !3711, !439, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!3857 = !{!3858, !3859, !3860}
!3858 = !DILocalVariable(name: "u_port", arg: 1, scope: !3853, file: !238, line: 215, type: !3711)
!3859 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3853, file: !238, line: 215, type: !439)
!3860 = !DILocalVariable(name: "length", arg: 3, scope: !3853, file: !238, line: 215, type: !3856)
!3861 = !DILocation(line: 0, scope: !3853)
!3862 = !DILocation(line: 217, column: 16, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3853, file: !238, line: 217, column: 9)
!3864 = !DILocation(line: 0, scope: !3863)
!3865 = !DILocation(line: 217, column: 9, scope: !3853)
!3866 = !DILocation(line: 218, column: 13, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3863, file: !238, line: 217, column: 31)
!3868 = !DILocation(line: 219, column: 23, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !238, line: 218, column: 20)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !238, line: 218, column: 13)
!3871 = !DILocation(line: 220, column: 9, scope: !3869)
!3872 = !DILocation(line: 221, column: 23, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !238, line: 220, column: 16)
!3874 = !DILocation(line: 221, column: 21, scope: !3873)
!3875 = !DILocation(line: 222, column: 24, scope: !3873)
!3876 = !DILocation(line: 222, column: 21, scope: !3873)
!3877 = !DILocation(line: 225, column: 13, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3863, file: !238, line: 224, column: 12)
!3879 = !DILocation(line: 226, column: 23, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !238, line: 225, column: 20)
!3881 = distinct !DILexicalBlock(scope: !3878, file: !238, line: 225, column: 13)
!3882 = !DILocation(line: 227, column: 9, scope: !3880)
!3883 = !DILocation(line: 228, column: 23, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3881, file: !238, line: 227, column: 16)
!3885 = !DILocation(line: 228, column: 21, scope: !3884)
!3886 = !DILocation(line: 229, column: 24, scope: !3884)
!3887 = !DILocation(line: 229, column: 21, scope: !3884)
!3888 = !DILocation(line: 233, column: 5, scope: !3853)
!3889 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !238, file: !238, line: 236, type: !3890, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{null, !3711, !679, !136}
!3892 = !{!3893, !3894, !3895, !3896}
!3893 = !DILocalVariable(name: "u_port", arg: 1, scope: !3889, file: !238, line: 236, type: !3711)
!3894 = !DILocalVariable(name: "data", arg: 2, scope: !3889, file: !238, line: 236, type: !679)
!3895 = !DILocalVariable(name: "length", arg: 3, scope: !3889, file: !238, line: 236, type: !136)
!3896 = !DILocalVariable(name: "idx", scope: !3889, file: !238, line: 238, type: !219)
!3897 = !DILocation(line: 0, scope: !3889)
!3898 = !DILocation(line: 239, column: 23, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !238, line: 239, column: 5)
!3900 = distinct !DILexicalBlock(scope: !3889, file: !238, line: 239, column: 5)
!3901 = !DILocation(line: 239, column: 5, scope: !3900)
!3902 = !DILocation(line: 240, column: 13, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3899, file: !238, line: 239, column: 40)
!3904 = !DILocation(line: 244, column: 9, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !238, line: 242, column: 42)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !238, line: 242, column: 20)
!3907 = distinct !DILexicalBlock(scope: !3903, file: !238, line: 240, column: 13)
!3908 = !DILocation(line: 0, scope: !3907)
!3909 = !DILocation(line: 239, column: 36, scope: !3899)
!3910 = distinct !{!3910, !3901, !3911}
!3911 = !DILocation(line: 246, column: 5, scope: !3900)
!3912 = !DILocation(line: 249, column: 1, scope: !3889)
!3913 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !238, file: !238, line: 251, type: !3914, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3918)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3711, !3916, !136}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!3918 = !{!3919, !3920, !3921, !3922}
!3919 = !DILocalVariable(name: "u_port", arg: 1, scope: !3913, file: !238, line: 251, type: !3711)
!3920 = !DILocalVariable(name: "data", arg: 2, scope: !3913, file: !238, line: 251, type: !3916)
!3921 = !DILocalVariable(name: "length", arg: 3, scope: !3913, file: !238, line: 251, type: !136)
!3922 = !DILocalVariable(name: "idx", scope: !3913, file: !238, line: 253, type: !219)
!3923 = !DILocation(line: 0, scope: !3913)
!3924 = !DILocation(line: 254, column: 23, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !238, line: 254, column: 5)
!3926 = distinct !DILexicalBlock(scope: !3913, file: !238, line: 254, column: 5)
!3927 = !DILocation(line: 254, column: 5, scope: !3926)
!3928 = !DILocation(line: 255, column: 13, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !238, line: 254, column: 40)
!3930 = !DILocation(line: 256, column: 61, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !238, line: 255, column: 35)
!3932 = distinct !DILexicalBlock(scope: !3929, file: !238, line: 255, column: 13)
!3933 = !DILocation(line: 256, column: 59, scope: !3931)
!3934 = !DILocation(line: 257, column: 9, scope: !3931)
!3935 = !DILocation(line: 258, column: 61, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !238, line: 257, column: 42)
!3937 = distinct !DILexicalBlock(scope: !3932, file: !238, line: 257, column: 20)
!3938 = !DILocation(line: 258, column: 59, scope: !3936)
!3939 = !DILocation(line: 259, column: 9, scope: !3936)
!3940 = !DILocation(line: 254, column: 36, scope: !3925)
!3941 = distinct !{!3941, !3927, !3942}
!3942 = !DILocation(line: 261, column: 5, scope: !3926)
!3943 = !DILocation(line: 264, column: 1, scope: !3913)
!3944 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !238, file: !238, line: 266, type: !3945, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3711, !679, !136, !136}
!3947 = !{!3948, !3949, !3950, !3951}
!3948 = !DILocalVariable(name: "u_port", arg: 1, scope: !3944, file: !238, line: 266, type: !3711)
!3949 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3944, file: !238, line: 266, type: !679)
!3950 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3944, file: !238, line: 266, type: !136)
!3951 = !DILocalVariable(name: "threshold", arg: 4, scope: !3944, file: !238, line: 266, type: !136)
!3952 = !DILocation(line: 0, scope: !3944)
!3953 = !DILocation(line: 268, column: 9, scope: !3944)
!3954 = !DILocation(line: 274, column: 5, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !238, line: 271, column: 38)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !238, line: 271, column: 16)
!3957 = distinct !DILexicalBlock(scope: !3944, file: !238, line: 268, column: 9)
!3958 = !DILocation(line: 0, scope: !3957)
!3959 = !DILocation(line: 276, column: 1, scope: !3944)
!3960 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !238, file: !238, line: 278, type: !3961, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{null, !3711, !679, !136, !136, !136, !136}
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969}
!3964 = !DILocalVariable(name: "u_port", arg: 1, scope: !3960, file: !238, line: 278, type: !3711)
!3965 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3960, file: !238, line: 278, type: !679)
!3966 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3960, file: !238, line: 278, type: !136)
!3967 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3960, file: !238, line: 278, type: !136)
!3968 = !DILocalVariable(name: "threshold", arg: 5, scope: !3960, file: !238, line: 278, type: !136)
!3969 = !DILocalVariable(name: "timeout", arg: 6, scope: !3960, file: !238, line: 278, type: !136)
!3970 = !DILocation(line: 0, scope: !3960)
!3971 = !DILocation(line: 280, column: 9, scope: !3960)
!3972 = !DILocation(line: 286, column: 5, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !238, line: 283, column: 38)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !238, line: 283, column: 16)
!3975 = distinct !DILexicalBlock(scope: !3960, file: !238, line: 280, column: 9)
!3976 = !DILocation(line: 0, scope: !3975)
!3977 = !DILocation(line: 288, column: 1, scope: !3960)
!3978 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !238, file: !238, line: 290, type: !3979, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3711, !179}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "u_port", arg: 1, scope: !3978, file: !238, line: 290, type: !3711)
!3983 = !DILocalVariable(name: "func", arg: 2, scope: !3978, file: !238, line: 290, type: !179)
!3984 = !DILocation(line: 0, scope: !3978)
!3985 = !DILocation(line: 292, column: 9, scope: !3978)
!3986 = !DILocation(line: 296, column: 5, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !238, line: 294, column: 38)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !238, line: 294, column: 16)
!3989 = distinct !DILexicalBlock(scope: !3978, file: !238, line: 292, column: 9)
!3990 = !DILocation(line: 0, scope: !3989)
!3991 = !DILocation(line: 298, column: 1, scope: !3978)
!3992 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !238, file: !238, line: 300, type: !3979, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3993)
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "u_port", arg: 1, scope: !3992, file: !238, line: 300, type: !3711)
!3995 = !DILocalVariable(name: "func", arg: 2, scope: !3992, file: !238, line: 300, type: !179)
!3996 = !DILocation(line: 0, scope: !3992)
!3997 = !DILocation(line: 302, column: 9, scope: !3992)
!3998 = !DILocation(line: 306, column: 5, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !238, line: 304, column: 38)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !238, line: 304, column: 16)
!4001 = distinct !DILexicalBlock(scope: !3992, file: !238, line: 302, column: 9)
!4002 = !DILocation(line: 0, scope: !4001)
!4003 = !DILocation(line: 308, column: 1, scope: !3992)
!4004 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !238, file: !238, line: 310, type: !3765, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4005)
!4005 = !{!4006, !4007, !4008, !4009}
!4006 = !DILocalVariable(name: "u_port", arg: 1, scope: !4004, file: !238, line: 310, type: !3711)
!4007 = !DILocalVariable(name: "base", scope: !4004, file: !238, line: 312, type: !7)
!4008 = !DILocalVariable(name: "EFR", scope: !4004, file: !238, line: 313, type: !307)
!4009 = !DILocalVariable(name: "LCR", scope: !4004, file: !238, line: 313, type: !307)
!4010 = !DILocation(line: 0, scope: !4004)
!4011 = !DILocation(line: 312, column: 25, scope: !4004)
!4012 = !DILocation(line: 315, column: 11, scope: !4004)
!4013 = !DILocation(line: 317, column: 33, scope: !4004)
!4014 = !DILocation(line: 318, column: 11, scope: !4004)
!4015 = !DILocation(line: 320, column: 35, scope: !4004)
!4016 = !DILocation(line: 320, column: 33, scope: !4004)
!4017 = !DILocation(line: 322, column: 5, scope: !4004)
!4018 = !DILocation(line: 322, column: 39, scope: !4004)
!4019 = !DILocation(line: 324, column: 33, scope: !4004)
!4020 = !DILocation(line: 325, column: 5, scope: !4004)
!4021 = !DILocation(line: 325, column: 33, scope: !4004)
!4022 = !DILocation(line: 327, column: 35, scope: !4004)
!4023 = !DILocation(line: 327, column: 33, scope: !4004)
!4024 = !DILocation(line: 328, column: 1, scope: !4004)
!4025 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !238, file: !238, line: 330, type: !4026, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !3711, !128, !128, !128}
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4029 = !DILocalVariable(name: "u_port", arg: 1, scope: !4025, file: !238, line: 330, type: !3711)
!4030 = !DILocalVariable(name: "xon", arg: 2, scope: !4025, file: !238, line: 330, type: !128)
!4031 = !DILocalVariable(name: "xoff", arg: 3, scope: !4025, file: !238, line: 330, type: !128)
!4032 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4025, file: !238, line: 330, type: !128)
!4033 = !DILocalVariable(name: "base", scope: !4025, file: !238, line: 332, type: !7)
!4034 = !DILocalVariable(name: "EFR", scope: !4025, file: !238, line: 333, type: !307)
!4035 = !DILocalVariable(name: "LCR", scope: !4025, file: !238, line: 333, type: !307)
!4036 = !DILocation(line: 0, scope: !4025)
!4037 = !DILocation(line: 332, column: 25, scope: !4025)
!4038 = !DILocation(line: 335, column: 11, scope: !4025)
!4039 = !DILocation(line: 337, column: 33, scope: !4025)
!4040 = !DILocation(line: 338, column: 36, scope: !4025)
!4041 = !DILocation(line: 338, column: 5, scope: !4025)
!4042 = !DILocation(line: 338, column: 34, scope: !4025)
!4043 = !DILocation(line: 339, column: 5, scope: !4025)
!4044 = !DILocation(line: 339, column: 34, scope: !4025)
!4045 = !DILocation(line: 340, column: 37, scope: !4025)
!4046 = !DILocation(line: 340, column: 5, scope: !4025)
!4047 = !DILocation(line: 340, column: 35, scope: !4025)
!4048 = !DILocation(line: 341, column: 5, scope: !4025)
!4049 = !DILocation(line: 341, column: 35, scope: !4025)
!4050 = !DILocation(line: 343, column: 11, scope: !4025)
!4051 = !DILocation(line: 345, column: 35, scope: !4025)
!4052 = !DILocation(line: 345, column: 33, scope: !4025)
!4053 = !DILocation(line: 347, column: 35, scope: !4025)
!4054 = !DILocation(line: 347, column: 33, scope: !4025)
!4055 = !DILocation(line: 349, column: 43, scope: !4025)
!4056 = !DILocation(line: 349, column: 5, scope: !4025)
!4057 = !DILocation(line: 349, column: 41, scope: !4025)
!4058 = !DILocation(line: 350, column: 5, scope: !4025)
!4059 = !DILocation(line: 350, column: 39, scope: !4025)
!4060 = !DILocation(line: 351, column: 1, scope: !4025)
!4061 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !238, file: !238, line: 353, type: !3765, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4062)
!4062 = !{!4063, !4064, !4065}
!4063 = !DILocalVariable(name: "u_port", arg: 1, scope: !4061, file: !238, line: 353, type: !3711)
!4064 = !DILocalVariable(name: "base", scope: !4061, file: !238, line: 355, type: !7)
!4065 = !DILocalVariable(name: "LCR", scope: !4061, file: !238, line: 356, type: !307)
!4066 = !DILocation(line: 0, scope: !4061)
!4067 = !DILocation(line: 355, column: 25, scope: !4061)
!4068 = !DILocation(line: 358, column: 11, scope: !4061)
!4069 = !DILocation(line: 360, column: 33, scope: !4061)
!4070 = !DILocation(line: 362, column: 5, scope: !4061)
!4071 = !DILocation(line: 362, column: 33, scope: !4061)
!4072 = !DILocation(line: 364, column: 33, scope: !4061)
!4073 = !DILocation(line: 366, column: 35, scope: !4061)
!4074 = !DILocation(line: 366, column: 33, scope: !4061)
!4075 = !DILocation(line: 367, column: 1, scope: !4061)
!4076 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !238, file: !238, line: 436, type: !3765, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4077)
!4077 = !{!4078, !4079}
!4078 = !DILocalVariable(name: "u_port", arg: 1, scope: !4076, file: !238, line: 436, type: !3711)
!4079 = !DILocalVariable(name: "base", scope: !4076, file: !238, line: 438, type: !7)
!4080 = !DILocation(line: 0, scope: !4076)
!4081 = !DILocation(line: 438, column: 25, scope: !4076)
!4082 = !DILocation(line: 440, column: 5, scope: !4076)
!4083 = !DILocation(line: 440, column: 33, scope: !4076)
!4084 = !DILocation(line: 441, column: 5, scope: !4076)
!4085 = !DILocation(line: 441, column: 33, scope: !4076)
!4086 = !DILocation(line: 442, column: 5, scope: !4076)
!4087 = !DILocation(line: 442, column: 34, scope: !4076)
!4088 = !DILocation(line: 443, column: 5, scope: !4076)
!4089 = !DILocation(line: 443, column: 35, scope: !4076)
!4090 = !DILocation(line: 445, column: 33, scope: !4076)
!4091 = !DILocation(line: 446, column: 5, scope: !4076)
!4092 = !DILocation(line: 446, column: 33, scope: !4076)
!4093 = !DILocation(line: 447, column: 5, scope: !4076)
!4094 = !DILocation(line: 447, column: 33, scope: !4076)
!4095 = !DILocation(line: 449, column: 33, scope: !4076)
!4096 = !DILocation(line: 450, column: 33, scope: !4076)
!4097 = !DILocation(line: 451, column: 33, scope: !4076)
!4098 = !DILocation(line: 453, column: 33, scope: !4076)
!4099 = !DILocation(line: 454, column: 33, scope: !4076)
!4100 = !DILocation(line: 455, column: 33, scope: !4076)
!4101 = !DILocation(line: 457, column: 33, scope: !4076)
!4102 = !DILocation(line: 458, column: 5, scope: !4076)
!4103 = !DILocation(line: 458, column: 33, scope: !4076)
!4104 = !DILocation(line: 459, column: 5, scope: !4076)
!4105 = !DILocation(line: 459, column: 39, scope: !4076)
!4106 = !DILocation(line: 460, column: 5, scope: !4076)
!4107 = !DILocation(line: 460, column: 40, scope: !4076)
!4108 = !DILocation(line: 461, column: 5, scope: !4076)
!4109 = !DILocation(line: 461, column: 42, scope: !4076)
!4110 = !DILocation(line: 462, column: 5, scope: !4076)
!4111 = !DILocation(line: 462, column: 42, scope: !4076)
!4112 = !DILocation(line: 463, column: 5, scope: !4076)
!4113 = !DILocation(line: 463, column: 35, scope: !4076)
!4114 = !DILocation(line: 464, column: 5, scope: !4076)
!4115 = !DILocation(line: 464, column: 41, scope: !4076)
!4116 = !DILocation(line: 465, column: 5, scope: !4076)
!4117 = !DILocation(line: 465, column: 39, scope: !4076)
!4118 = !DILocation(line: 466, column: 5, scope: !4076)
!4119 = !DILocation(line: 466, column: 38, scope: !4076)
!4120 = !DILocation(line: 467, column: 5, scope: !4076)
!4121 = !DILocation(line: 467, column: 42, scope: !4076)
!4122 = !DILocation(line: 468, column: 5, scope: !4076)
!4123 = !DILocation(line: 468, column: 45, scope: !4076)
!4124 = !DILocation(line: 469, column: 5, scope: !4076)
!4125 = !DILocation(line: 469, column: 39, scope: !4076)
!4126 = !DILocation(line: 470, column: 5, scope: !4076)
!4127 = !DILocation(line: 470, column: 39, scope: !4076)
!4128 = !DILocation(line: 471, column: 5, scope: !4076)
!4129 = !DILocation(line: 471, column: 42, scope: !4076)
!4130 = !DILocation(line: 472, column: 1, scope: !4076)
!4131 = distinct !DISubprogram(name: "uart_query_empty", scope: !238, file: !238, line: 474, type: !3765, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4132)
!4132 = !{!4133, !4134}
!4133 = !DILocalVariable(name: "u_port", arg: 1, scope: !4131, file: !238, line: 474, type: !3711)
!4134 = !DILocalVariable(name: "base", scope: !4131, file: !238, line: 476, type: !7)
!4135 = !DILocation(line: 0, scope: !4131)
!4136 = !DILocation(line: 476, column: 25, scope: !4131)
!4137 = !DILocation(line: 478, column: 5, scope: !4131)
!4138 = !DILocation(line: 478, column: 14, scope: !4131)
!4139 = !DILocation(line: 478, column: 42, scope: !4131)
!4140 = !DILocation(line: 478, column: 12, scope: !4131)
!4141 = distinct !{!4141, !4137, !4142}
!4142 = !DILocation(line: 478, column: 50, scope: !4131)
!4143 = !DILocation(line: 479, column: 1, scope: !4131)
!4144 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1142, file: !1142, line: 64, type: !4145, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !788, !53, !788, null}
!4147 = !{!4148, !4149, !4150, !4151, !4160}
!4148 = !DILocalVariable(name: "func", arg: 1, scope: !4144, file: !1142, line: 64, type: !788)
!4149 = !DILocalVariable(name: "line", arg: 2, scope: !4144, file: !1142, line: 64, type: !53)
!4150 = !DILocalVariable(name: "message", arg: 3, scope: !4144, file: !1142, line: 64, type: !788)
!4151 = !DILocalVariable(name: "ap", scope: !4144, file: !1142, line: 66, type: !4152)
!4152 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4153, line: 46, baseType: !4154)
!4153 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4155, line: 32, baseType: !4156)
!4155 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1142, baseType: !4157)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !4158)
!4158 = !{!4159}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !4157, file: !1142, line: 66, baseType: !161, size: 32)
!4160 = !DILocalVariable(name: "mask", scope: !4144, file: !1142, line: 68, type: !136)
!4161 = !DILocation(line: 0, scope: !4144)
!4162 = !DILocation(line: 66, column: 5, scope: !4144)
!4163 = !DILocation(line: 66, column: 13, scope: !4144)
!4164 = !DILocation(line: 68, column: 5, scope: !4144)
!4165 = !DILocation(line: 69, column: 5, scope: !4144)
!4166 = !DILocation(line: 71, column: 5, scope: !4144)
!4167 = !DILocation(line: 72, column: 5, scope: !4144)
!4168 = !DILocation(line: 73, column: 5, scope: !4144)
!4169 = !DILocation(line: 75, column: 37, scope: !4144)
!4170 = !DILocation(line: 75, column: 5, scope: !4144)
!4171 = !DILocation(line: 77, column: 1, scope: !4144)
!4172 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1142, file: !1142, line: 78, type: !4145, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !4173)
!4173 = !{!4174, !4175, !4176, !4177, !4178}
!4174 = !DILocalVariable(name: "func", arg: 1, scope: !4172, file: !1142, line: 78, type: !788)
!4175 = !DILocalVariable(name: "line", arg: 2, scope: !4172, file: !1142, line: 78, type: !53)
!4176 = !DILocalVariable(name: "message", arg: 3, scope: !4172, file: !1142, line: 78, type: !788)
!4177 = !DILocalVariable(name: "ap", scope: !4172, file: !1142, line: 80, type: !4152)
!4178 = !DILocalVariable(name: "mask", scope: !4172, file: !1142, line: 82, type: !136)
!4179 = !DILocation(line: 0, scope: !4172)
!4180 = !DILocation(line: 80, column: 5, scope: !4172)
!4181 = !DILocation(line: 80, column: 13, scope: !4172)
!4182 = !DILocation(line: 82, column: 5, scope: !4172)
!4183 = !DILocation(line: 83, column: 5, scope: !4172)
!4184 = !DILocation(line: 85, column: 5, scope: !4172)
!4185 = !DILocation(line: 86, column: 5, scope: !4172)
!4186 = !DILocation(line: 87, column: 5, scope: !4172)
!4187 = !DILocation(line: 89, column: 37, scope: !4172)
!4188 = !DILocation(line: 89, column: 5, scope: !4172)
!4189 = !DILocation(line: 91, column: 1, scope: !4172)
!4190 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1142, file: !1142, line: 92, type: !4145, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !4191)
!4191 = !{!4192, !4193, !4194, !4195, !4196}
!4192 = !DILocalVariable(name: "func", arg: 1, scope: !4190, file: !1142, line: 92, type: !788)
!4193 = !DILocalVariable(name: "line", arg: 2, scope: !4190, file: !1142, line: 92, type: !53)
!4194 = !DILocalVariable(name: "message", arg: 3, scope: !4190, file: !1142, line: 92, type: !788)
!4195 = !DILocalVariable(name: "ap", scope: !4190, file: !1142, line: 94, type: !4152)
!4196 = !DILocalVariable(name: "mask", scope: !4190, file: !1142, line: 96, type: !136)
!4197 = !DILocation(line: 0, scope: !4190)
!4198 = !DILocation(line: 94, column: 5, scope: !4190)
!4199 = !DILocation(line: 94, column: 13, scope: !4190)
!4200 = !DILocation(line: 96, column: 5, scope: !4190)
!4201 = !DILocation(line: 97, column: 5, scope: !4190)
!4202 = !DILocation(line: 99, column: 5, scope: !4190)
!4203 = !DILocation(line: 100, column: 5, scope: !4190)
!4204 = !DILocation(line: 101, column: 5, scope: !4190)
!4205 = !DILocation(line: 103, column: 37, scope: !4190)
!4206 = !DILocation(line: 103, column: 5, scope: !4190)
!4207 = !DILocation(line: 105, column: 1, scope: !4190)
!4208 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1142, file: !1142, line: 106, type: !4145, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !4209)
!4209 = !{!4210, !4211, !4212, !4213, !4214}
!4210 = !DILocalVariable(name: "func", arg: 1, scope: !4208, file: !1142, line: 106, type: !788)
!4211 = !DILocalVariable(name: "line", arg: 2, scope: !4208, file: !1142, line: 106, type: !53)
!4212 = !DILocalVariable(name: "message", arg: 3, scope: !4208, file: !1142, line: 106, type: !788)
!4213 = !DILocalVariable(name: "ap", scope: !4208, file: !1142, line: 108, type: !4152)
!4214 = !DILocalVariable(name: "mask", scope: !4208, file: !1142, line: 110, type: !136)
!4215 = !DILocation(line: 0, scope: !4208)
!4216 = !DILocation(line: 108, column: 5, scope: !4208)
!4217 = !DILocation(line: 108, column: 13, scope: !4208)
!4218 = !DILocation(line: 110, column: 5, scope: !4208)
!4219 = !DILocation(line: 111, column: 5, scope: !4208)
!4220 = !DILocation(line: 113, column: 5, scope: !4208)
!4221 = !DILocation(line: 114, column: 5, scope: !4208)
!4222 = !DILocation(line: 115, column: 5, scope: !4208)
!4223 = !DILocation(line: 117, column: 37, scope: !4208)
!4224 = !DILocation(line: 117, column: 5, scope: !4208)
!4225 = !DILocation(line: 119, column: 1, scope: !4208)
!4226 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1142, file: !1142, line: 121, type: !4227, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !4231)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !788, !53, !788, !4229, !53, null}
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 32)
!4230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4231 = !{!4232, !4233, !4234, !4235, !4236}
!4232 = !DILocalVariable(name: "func", arg: 1, scope: !4226, file: !1142, line: 121, type: !788)
!4233 = !DILocalVariable(name: "line", arg: 2, scope: !4226, file: !1142, line: 121, type: !53)
!4234 = !DILocalVariable(name: "message", arg: 3, scope: !4226, file: !1142, line: 121, type: !788)
!4235 = !DILocalVariable(name: "data", arg: 4, scope: !4226, file: !1142, line: 121, type: !4229)
!4236 = !DILocalVariable(name: "length", arg: 5, scope: !4226, file: !1142, line: 121, type: !53)
!4237 = !DILocation(line: 0, scope: !4226)
!4238 = !DILocation(line: 123, column: 1, scope: !4226)
!4239 = distinct !DISubprogram(name: "halADC_Get_ADC_Efuse", scope: !258, file: !258, line: 459, type: !181, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4240)
!4240 = !{!4241, !4242, !4243, !4244}
!4241 = !DILocalVariable(name: "efuse_offset", scope: !4239, file: !258, line: 461, type: !307)
!4242 = !DILocalVariable(name: "efuse_gain", scope: !4239, file: !258, line: 462, type: !307)
!4243 = !DILocalVariable(name: "efuse_data_offset", scope: !4239, file: !258, line: 464, type: !128)
!4244 = !DILocalVariable(name: "efuse_data_gain", scope: !4239, file: !258, line: 464, type: !128)
!4245 = !DILocation(line: 0, scope: !4239)
!4246 = !DILocation(line: 464, column: 5, scope: !4239)
!4247 = !DILocation(line: 467, column: 25, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4239, file: !258, line: 467, column: 9)
!4249 = !DILocation(line: 467, column: 22, scope: !4248)
!4250 = !DILocation(line: 467, column: 9, scope: !4239)
!4251 = !DILocation(line: 0, scope: !4248)
!4252 = !DILocation(line: 474, column: 25, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4239, file: !258, line: 474, column: 9)
!4254 = !DILocation(line: 474, column: 22, scope: !4253)
!4255 = !DILocation(line: 474, column: 9, scope: !4239)
!4256 = !DILocation(line: 0, scope: !4253)
!4257 = !DILocation(line: 482, column: 1, scope: !4239)
!4258 = distinct !DISubprogram(name: "halADC_Remove_Data_Offset", scope: !258, file: !258, line: 485, type: !4259, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !3856, !3856, !136}
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4262 = !DILocalVariable(name: "input", arg: 1, scope: !4258, file: !258, line: 485, type: !3856)
!4263 = !DILocalVariable(name: "output", arg: 2, scope: !4258, file: !258, line: 485, type: !3856)
!4264 = !DILocalVariable(name: "length", arg: 3, scope: !4258, file: !258, line: 485, type: !136)
!4265 = !DILocalVariable(name: "efuse_data_offset", scope: !4258, file: !258, line: 487, type: !128)
!4266 = !DILocalVariable(name: "efuse_data_gain", scope: !4258, file: !258, line: 487, type: !128)
!4267 = !DILocalVariable(name: "flag_offset", scope: !4258, file: !258, line: 488, type: !128)
!4268 = !DILocalVariable(name: "flag_gain", scope: !4258, file: !258, line: 488, type: !128)
!4269 = !DILocalVariable(name: "data_len", scope: !4258, file: !258, line: 489, type: !136)
!4270 = !DILocalVariable(name: "adc_data", scope: !4258, file: !258, line: 490, type: !307)
!4271 = !DILocalVariable(name: "adc_data_origin", scope: !4258, file: !258, line: 490, type: !307)
!4272 = !DILocation(line: 0, scope: !4258)
!4273 = !DILocation(line: 492, column: 25, scope: !4258)
!4274 = !DILocation(line: 493, column: 23, scope: !4258)
!4275 = !DILocation(line: 502, column: 33, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !258, line: 502, column: 5)
!4277 = distinct !DILexicalBlock(scope: !4258, file: !258, line: 502, column: 5)
!4278 = !DILocation(line: 502, column: 5, scope: !4277)
!4279 = !DILocation(line: 500, column: 21, scope: !4258)
!4280 = !DILocation(line: 499, column: 23, scope: !4258)
!4281 = !DILocation(line: 504, column: 31, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4276, file: !258, line: 502, column: 56)
!4283 = !DILocation(line: 504, column: 20, scope: !4282)
!4284 = !DILocation(line: 509, column: 13, scope: !4282)
!4285 = !DILocation(line: 511, column: 17, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !258, line: 509, column: 31)
!4287 = distinct !DILexicalBlock(scope: !4282, file: !258, line: 509, column: 13)
!4288 = !DILocation(line: 514, column: 9, scope: !4286)
!4289 = !DILocation(line: 515, column: 22, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4287, file: !258, line: 514, column: 16)
!4291 = !DILocation(line: 516, column: 17, scope: !4290)
!4292 = !DILocation(line: 0, scope: !4287)
!4293 = !DILocation(line: 0, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4282, file: !258, line: 523, column: 13)
!4295 = !DILocation(line: 523, column: 13, scope: !4282)
!4296 = !DILocation(line: 524, column: 22, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4294, file: !258, line: 523, column: 29)
!4298 = !DILocation(line: 525, column: 17, scope: !4297)
!4299 = !DILocation(line: 528, column: 9, scope: !4297)
!4300 = !DILocation(line: 531, column: 17, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4294, file: !258, line: 528, column: 16)
!4302 = !DILocation(line: 537, column: 45, scope: !4282)
!4303 = !DILocation(line: 537, column: 63, scope: !4282)
!4304 = !DILocation(line: 537, column: 72, scope: !4282)
!4305 = !DILocation(line: 537, column: 60, scope: !4282)
!4306 = !DILocation(line: 537, column: 9, scope: !4282)
!4307 = !DILocation(line: 537, column: 26, scope: !4282)
!4308 = !DILocation(line: 502, column: 52, scope: !4276)
!4309 = distinct !{!4309, !4278, !4310}
!4310 = !DILocation(line: 538, column: 5, scope: !4277)
!4311 = !DILocation(line: 539, column: 1, scope: !4258)
!4312 = distinct !DISubprogram(name: "hal_adc_init", scope: !258, file: !258, line: 543, type: !4313, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4316)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!4315}
!4315 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_adc_status_t", file: !268, line: 169, baseType: !267)
!4316 = !{!4317, !4318, !4319, !4321, !4323, !4325, !4327}
!4317 = !DILocalVariable(name: "rAdcFsmParam", scope: !4312, file: !258, line: 545, type: !320)
!4318 = !DILocalVariable(name: "irq_flag", scope: !4312, file: !258, line: 546, type: !136)
!4319 = !DILocalVariable(name: "addr", scope: !4320, file: !258, line: 556, type: !309)
!4320 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 556, column: 5)
!4321 = !DILocalVariable(name: "addr", scope: !4322, file: !258, line: 577, type: !309)
!4322 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 577, column: 5)
!4323 = !DILocalVariable(name: "addr", scope: !4324, file: !258, line: 582, type: !309)
!4324 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 582, column: 5)
!4325 = !DILocalVariable(name: "addr", scope: !4326, file: !258, line: 588, type: !309)
!4326 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 588, column: 5)
!4327 = !DILocalVariable(name: "addr", scope: !4328, file: !258, line: 591, type: !309)
!4328 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 591, column: 5)
!4329 = !DILocation(line: 545, column: 5, scope: !4312)
!4330 = !DILocation(line: 545, column: 21, scope: !4312)
!4331 = !DILocation(line: 548, column: 16, scope: !4312)
!4332 = !DILocation(line: 0, scope: !4312)
!4333 = !DILocation(line: 549, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 549, column: 9)
!4335 = !DILocation(line: 549, column: 22, scope: !4334)
!4336 = !DILocation(line: 549, column: 9, scope: !4312)
!4337 = !DILocation(line: 550, column: 9, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4334, file: !258, line: 549, column: 35)
!4339 = !DILocation(line: 551, column: 9, scope: !4338)
!4340 = !DILocation(line: 553, column: 22, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4334, file: !258, line: 552, column: 12)
!4342 = !DILocation(line: 554, column: 9, scope: !4341)
!4343 = !DILocation(line: 0, scope: !4320)
!4344 = !DILocation(line: 556, column: 5, scope: !4320)
!4345 = !DILocation(line: 558, column: 5, scope: !4312)
!4346 = !DILocation(line: 567, column: 35, scope: !4312)
!4347 = !DILocation(line: 0, scope: !4322)
!4348 = !DILocation(line: 577, column: 5, scope: !4322)
!4349 = !DILocation(line: 579, column: 5, scope: !4312)
!4350 = !DILocation(line: 0, scope: !4324)
!4351 = !DILocation(line: 582, column: 5, scope: !4324)
!4352 = !DILocation(line: 585, column: 38, scope: !4312)
!4353 = !DILocation(line: 0, scope: !4326)
!4354 = !DILocation(line: 588, column: 5, scope: !4326)
!4355 = !DILocation(line: 0, scope: !4328)
!4356 = !DILocation(line: 591, column: 5, scope: !4328)
!4357 = !DILocation(line: 594, column: 46, scope: !4312)
!4358 = !DILocation(line: 601, column: 46, scope: !4312)
!4359 = !DILocation(line: 605, column: 5, scope: !4312)
!4360 = !DILocation(line: 606, column: 18, scope: !4312)
!4361 = !DILocation(line: 606, column: 25, scope: !4312)
!4362 = !DILocation(line: 607, column: 18, scope: !4312)
!4363 = !DILocation(line: 607, column: 28, scope: !4312)
!4364 = !DILocation(line: 608, column: 18, scope: !4312)
!4365 = !DILocation(line: 608, column: 32, scope: !4312)
!4366 = !DILocation(line: 609, column: 18, scope: !4312)
!4367 = !DILocation(line: 609, column: 27, scope: !4312)
!4368 = !DILocation(line: 610, column: 18, scope: !4312)
!4369 = !DILocation(line: 610, column: 29, scope: !4312)
!4370 = !DILocation(line: 611, column: 18, scope: !4312)
!4371 = !DILocation(line: 611, column: 35, scope: !4312)
!4372 = !DILocation(line: 612, column: 18, scope: !4312)
!4373 = !DILocation(line: 612, column: 32, scope: !4312)
!4374 = !DILocation(line: 613, column: 18, scope: !4312)
!4375 = !DILocation(line: 613, column: 41, scope: !4312)
!4376 = !DILocation(line: 615, column: 5, scope: !4312)
!4377 = !DILocation(line: 619, column: 5, scope: !4312)
!4378 = !DILocation(line: 625, column: 9, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !258, line: 624, column: 12)
!4380 = distinct !DILexicalBlock(scope: !4312, file: !258, line: 622, column: 9)
!4381 = !DILocation(line: 627, column: 1, scope: !4312)
!4382 = distinct !DISubprogram(name: "halADC_Fsm_Param_Set", scope: !258, file: !258, line: 1091, type: !4383, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4388)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!4385, !4386}
!4385 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !294, line: 368, baseType: !293)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_ADC_FSM_PARAM_T", file: !276, line: 458, baseType: !4387)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 32)
!4388 = !{!4389, !4390, !4391, !4392, !4394, !4396, !4398, !4400, !4402, !4404, !4407, !4409, !4411, !4413}
!4389 = !DILocalVariable(name: "prAdcFsmParam", arg: 1, scope: !4382, file: !258, line: 1091, type: !4386)
!4390 = !DILocalVariable(name: "u1ChnlNum", scope: !4382, file: !258, line: 1093, type: !251)
!4391 = !DILocalVariable(name: "i", scope: !4382, file: !258, line: 1093, type: !251)
!4392 = !DILocalVariable(name: "addr", scope: !4393, file: !258, line: 1172, type: !309)
!4393 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1172, column: 5)
!4394 = !DILocalVariable(name: "addr", scope: !4395, file: !258, line: 1173, type: !309)
!4395 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1173, column: 5)
!4396 = !DILocalVariable(name: "addr", scope: !4397, file: !258, line: 1174, type: !309)
!4397 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1174, column: 5)
!4398 = !DILocalVariable(name: "addr", scope: !4399, file: !258, line: 1175, type: !309)
!4399 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1175, column: 5)
!4400 = !DILocalVariable(name: "addr", scope: !4401, file: !258, line: 1179, type: !309)
!4401 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1179, column: 5)
!4402 = !DILocalVariable(name: "addr", scope: !4403, file: !258, line: 1180, type: !309)
!4403 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1180, column: 5)
!4404 = !DILocalVariable(name: "addr", scope: !4405, file: !258, line: 1201, type: !309)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !258, line: 1201, column: 13)
!4406 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1184, column: 40)
!4407 = !DILocalVariable(name: "addr", scope: !4408, file: !258, line: 1202, type: !309)
!4408 = distinct !DILexicalBlock(scope: !4406, file: !258, line: 1202, column: 13)
!4409 = !DILocalVariable(name: "addr", scope: !4410, file: !258, line: 1216, type: !309)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !258, line: 1216, column: 13)
!4411 = !DILocalVariable(name: "addr", scope: !4412, file: !258, line: 1217, type: !309)
!4412 = distinct !DILexicalBlock(scope: !4406, file: !258, line: 1217, column: 13)
!4413 = !DILocalVariable(name: "addr", scope: !4414, file: !258, line: 1228, type: !309)
!4414 = distinct !DILexicalBlock(scope: !4406, file: !258, line: 1228, column: 13)
!4415 = !DILocation(line: 0, scope: !4382)
!4416 = !DILocation(line: 1099, column: 24, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1099, column: 9)
!4418 = !DILocation(line: 1099, column: 38, scope: !4417)
!4419 = !DILocation(line: 1099, column: 9, scope: !4382)
!4420 = !DILocation(line: 1104, column: 5, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4382, file: !258, line: 1104, column: 5)
!4422 = !DILocation(line: 1105, column: 44, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !258, line: 1105, column: 13)
!4424 = distinct !DILexicalBlock(scope: !4425, file: !258, line: 1104, column: 38)
!4425 = distinct !DILexicalBlock(scope: !4421, file: !258, line: 1104, column: 5)
!4426 = !DILocation(line: 1105, column: 42, scope: !4423)
!4427 = !DILocation(line: 1105, column: 13, scope: !4424)
!4428 = !DILocation(line: 1104, column: 34, scope: !4425)
!4429 = !DILocation(line: 1104, column: 19, scope: !4425)
!4430 = distinct !{!4430, !4420, !4431}
!4431 = !DILocation(line: 1108, column: 5, scope: !4421)
!4432 = !DILocation(line: 1112, column: 50, scope: !4382)
!4433 = !DILocation(line: 1112, column: 33, scope: !4382)
!4434 = !DILocation(line: 1113, column: 53, scope: !4382)
!4435 = !DILocation(line: 1113, column: 36, scope: !4382)
!4436 = !DILocation(line: 1114, column: 40, scope: !4382)
!4437 = !DILocation(line: 1115, column: 52, scope: !4382)
!4438 = !DILocation(line: 1115, column: 35, scope: !4382)
!4439 = !DILocation(line: 1116, column: 54, scope: !4382)
!4440 = !DILocation(line: 1116, column: 37, scope: !4382)
!4441 = !DILocation(line: 1117, column: 60, scope: !4382)
!4442 = !DILocation(line: 1117, column: 43, scope: !4382)
!4443 = !DILocation(line: 1118, column: 57, scope: !4382)
!4444 = !DILocation(line: 1118, column: 40, scope: !4382)
!4445 = !DILocation(line: 1119, column: 66, scope: !4382)
!4446 = !DILocation(line: 1119, column: 49, scope: !4382)
!4447 = !DILocation(line: 1120, column: 26, scope: !4382)
!4448 = !DILocation(line: 0, scope: !4393)
!4449 = !DILocation(line: 1172, column: 5, scope: !4393)
!4450 = !DILocation(line: 0, scope: !4395)
!4451 = !DILocation(line: 1173, column: 5, scope: !4395)
!4452 = !DILocation(line: 0, scope: !4397)
!4453 = !DILocation(line: 1174, column: 5, scope: !4397)
!4454 = !DILocation(line: 0, scope: !4399)
!4455 = !DILocation(line: 1175, column: 5, scope: !4399)
!4456 = !DILocation(line: 0, scope: !4401)
!4457 = !DILocation(line: 1179, column: 5, scope: !4401)
!4458 = !DILocation(line: 0, scope: !4403)
!4459 = !DILocation(line: 1180, column: 5, scope: !4403)
!4460 = !DILocation(line: 1184, column: 28, scope: !4382)
!4461 = !DILocation(line: 1184, column: 5, scope: !4382)
!4462 = !DILocation(line: 1187, column: 13, scope: !4406)
!4463 = !DILocation(line: 1188, column: 13, scope: !4406)
!4464 = !DILocation(line: 1196, column: 54, scope: !4406)
!4465 = !DILocation(line: 1196, column: 31, scope: !4406)
!4466 = !DILocation(line: 1196, column: 87, scope: !4406)
!4467 = !DILocation(line: 1196, column: 155, scope: !4406)
!4468 = !DILocation(line: 1196, column: 13, scope: !4406)
!4469 = !DILocation(line: 1197, column: 13, scope: !4406)
!4470 = !DILocation(line: 1198, column: 13, scope: !4406)
!4471 = !DILocation(line: 0, scope: !4405)
!4472 = !DILocation(line: 1201, column: 13, scope: !4405)
!4473 = !DILocation(line: 0, scope: !4408)
!4474 = !DILocation(line: 1202, column: 13, scope: !4408)
!4475 = !DILocation(line: 1203, column: 13, scope: !4406)
!4476 = !DILocation(line: 0, scope: !4410)
!4477 = !DILocation(line: 1216, column: 13, scope: !4410)
!4478 = !DILocation(line: 0, scope: !4412)
!4479 = !DILocation(line: 1217, column: 13, scope: !4412)
!4480 = !DILocation(line: 1220, column: 13, scope: !4406)
!4481 = !DILocation(line: 1221, column: 13, scope: !4406)
!4482 = !DILocation(line: 0, scope: !4414)
!4483 = !DILocation(line: 1228, column: 13, scope: !4414)
!4484 = !DILocation(line: 1233, column: 13, scope: !4406)
!4485 = !DILocation(line: 1238, column: 1, scope: !4382)
!4486 = distinct !DISubprogram(name: "halADC_VDMA_Callback", scope: !258, file: !258, line: 816, type: !181, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !1229)
!4487 = !DILocation(line: 919, column: 1, scope: !4486)
!4488 = distinct !DISubprogram(name: "halADC_LISR", scope: !258, file: !258, line: 926, type: !520, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4489)
!4489 = !{!4490}
!4490 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4488, file: !258, line: 926, type: !438)
!4491 = !DILocation(line: 0, scope: !4488)
!4492 = !DILocation(line: 1008, column: 1, scope: !4488)
!4493 = distinct !DISubprogram(name: "halADC_Fsm_Enable", scope: !258, file: !258, line: 1040, type: !4494, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !1229)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4385}
!4496 = !DILocation(line: 1062, column: 5, scope: !4493)
!4497 = distinct !DISubprogram(name: "hal_adc_deinit", scope: !258, file: !258, line: 629, type: !4313, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !1229)
!4498 = !DILocation(line: 643, column: 9, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4497, file: !258, line: 643, column: 9)
!4500 = !DILocation(line: 647, column: 22, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4499, file: !258, line: 646, column: 12)
!4502 = !DILocation(line: 650, column: 1, scope: !4497)
!4503 = distinct !DISubprogram(name: "halADC_Fsm_Disable", scope: !258, file: !258, line: 1065, type: !4504, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4507)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!4385, !4506}
!4506 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !47, line: 119, baseType: !132)
!4507 = !{!4508, !4509, !4511}
!4508 = !DILocalVariable(name: "fgOffAldo", arg: 1, scope: !4503, file: !258, line: 1065, type: !4506)
!4509 = !DILocalVariable(name: "addr", scope: !4510, file: !258, line: 1068, type: !309)
!4510 = distinct !DILexicalBlock(scope: !4503, file: !258, line: 1068, column: 5)
!4511 = !DILocalVariable(name: "addr", scope: !4512, file: !258, line: 1084, type: !309)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !258, line: 1084, column: 9)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !258, line: 1083, column: 20)
!4514 = distinct !DILexicalBlock(scope: !4503, file: !258, line: 1083, column: 9)
!4515 = !DILocation(line: 0, scope: !4503)
!4516 = !DILocation(line: 0, scope: !4510)
!4517 = !DILocation(line: 1068, column: 5, scope: !4510)
!4518 = !DILocation(line: 1070, column: 49, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4503, file: !258, line: 1070, column: 9)
!4520 = !DILocation(line: 1070, column: 25, scope: !4519)
!4521 = !DILocation(line: 1070, column: 9, scope: !4503)
!4522 = !DILocation(line: 1072, column: 9, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4519, file: !258, line: 1070, column: 61)
!4524 = !DILocation(line: 1075, column: 9, scope: !4523)
!4525 = !DILocation(line: 1076, column: 5, scope: !4523)
!4526 = !DILocation(line: 1083, column: 9, scope: !4514)
!4527 = !DILocation(line: 1083, column: 9, scope: !4503)
!4528 = !DILocation(line: 0, scope: !4512)
!4529 = !DILocation(line: 1084, column: 9, scope: !4512)
!4530 = !DILocation(line: 1085, column: 5, scope: !4513)
!4531 = !DILocation(line: 1088, column: 5, scope: !4503)
!4532 = distinct !DISubprogram(name: "hal_adc_get_data_polling", scope: !258, file: !258, line: 653, type: !4533, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4536)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!4315, !4535, !3856}
!4535 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_adc_channel_t", file: !299, line: 314, baseType: !298)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4545, !4547, !4549, !4551, !4553}
!4537 = !DILocalVariable(name: "channel", arg: 1, scope: !4532, file: !258, line: 653, type: !4535)
!4538 = !DILocalVariable(name: "data", arg: 2, scope: !4532, file: !258, line: 653, type: !3856)
!4539 = !DILocalVariable(name: "data_array", scope: !4532, file: !258, line: 655, type: !409)
!4540 = !DILocalVariable(name: "count", scope: !4532, file: !258, line: 655, type: !136)
!4541 = !DILocalVariable(name: "actual_data", scope: !4532, file: !258, line: 656, type: !136)
!4542 = !DILocalVariable(name: "addr", scope: !4543, file: !258, line: 667, type: !309)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !258, line: 667, column: 13)
!4544 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 665, column: 22)
!4545 = !DILocalVariable(name: "addr", scope: !4546, file: !258, line: 671, type: !309)
!4546 = distinct !DILexicalBlock(scope: !4544, file: !258, line: 671, column: 13)
!4547 = !DILocalVariable(name: "addr", scope: !4548, file: !258, line: 675, type: !309)
!4548 = distinct !DILexicalBlock(scope: !4544, file: !258, line: 675, column: 13)
!4549 = !DILocalVariable(name: "addr", scope: !4550, file: !258, line: 679, type: !309)
!4550 = distinct !DILexicalBlock(scope: !4544, file: !258, line: 679, column: 13)
!4551 = !DILocalVariable(name: "addr", scope: !4552, file: !258, line: 686, type: !309)
!4552 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 686, column: 5)
!4553 = !DILocalVariable(name: "addr", scope: !4554, file: !258, line: 703, type: !309)
!4554 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 703, column: 5)
!4555 = !DILocation(line: 0, scope: !4532)
!4556 = !DILocation(line: 655, column: 5, scope: !4532)
!4557 = !DILocation(line: 655, column: 14, scope: !4532)
!4558 = !DILocation(line: 656, column: 5, scope: !4532)
!4559 = !DILocation(line: 658, column: 17, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 658, column: 9)
!4561 = !DILocation(line: 658, column: 9, scope: !4532)
!4562 = !DILocation(line: 661, column: 14, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 661, column: 9)
!4564 = !DILocation(line: 661, column: 9, scope: !4532)
!4565 = !DILocation(line: 665, column: 5, scope: !4532)
!4566 = !DILocation(line: 0, scope: !4544)
!4567 = !DILocation(line: 0, scope: !4552)
!4568 = !DILocation(line: 686, column: 5, scope: !4552)
!4569 = !DILocation(line: 688, column: 5, scope: !4532)
!4570 = !DILocation(line: 689, column: 9, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 688, column: 8)
!4572 = !DILocation(line: 690, column: 14, scope: !4532)
!4573 = !DILocation(line: 690, column: 20, scope: !4532)
!4574 = !DILocation(line: 690, column: 5, scope: !4571)
!4575 = distinct !{!4575, !4569, !4576}
!4576 = !DILocation(line: 690, column: 24, scope: !4532)
!4577 = !DILocation(line: 692, column: 40, scope: !4532)
!4578 = !DILocation(line: 692, column: 5, scope: !4532)
!4579 = !DILocation(line: 696, column: 5, scope: !4532)
!4580 = !DILocation(line: 698, column: 24, scope: !4532)
!4581 = !DILocation(line: 698, column: 50, scope: !4532)
!4582 = !DILocation(line: 698, column: 11, scope: !4532)
!4583 = !DILocation(line: 0, scope: !4554)
!4584 = !DILocation(line: 703, column: 5, scope: !4554)
!4585 = !DILocation(line: 705, column: 5, scope: !4532)
!4586 = !DILocation(line: 0, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4532, file: !258, line: 705, column: 22)
!4588 = !DILocation(line: 723, column: 1, scope: !4532)
!4589 = distinct !DISubprogram(name: "halADC_Fifo_Get_Length", scope: !258, file: !258, line: 1258, type: !4590, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!4385, !312}
!4592 = !{!4593, !4594, !4595}
!4593 = !DILocalVariable(name: "pru4Len", arg: 1, scope: !4589, file: !258, line: 1258, type: !312)
!4594 = !DILocalVariable(name: "u4ReadPos", scope: !4589, file: !258, line: 1260, type: !219)
!4595 = !DILocalVariable(name: "u4WritePos", scope: !4589, file: !258, line: 1260, type: !219)
!4596 = !DILocation(line: 0, scope: !4589)
!4597 = !DILocation(line: 1262, column: 34, scope: !4589)
!4598 = !DILocation(line: 1262, column: 5, scope: !4589)
!4599 = !DILocation(line: 1265, column: 24, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4589, file: !258, line: 1262, column: 46)
!4601 = !DILocation(line: 1266, column: 13, scope: !4600)
!4602 = !DILocation(line: 1269, column: 25, scope: !4600)
!4603 = !DILocation(line: 1270, column: 26, scope: !4600)
!4604 = !DILocation(line: 1272, column: 28, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4600, file: !258, line: 1272, column: 17)
!4606 = !DILocation(line: 1272, column: 17, scope: !4600)
!4607 = !DILocation(line: 1274, column: 35, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4605, file: !258, line: 1274, column: 24)
!4609 = !DILocation(line: 1274, column: 24, scope: !4605)
!4610 = !DILocation(line: 1275, column: 40, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !258, line: 1274, column: 48)
!4612 = !DILocation(line: 1276, column: 13, scope: !4611)
!4613 = !DILocation(line: 1278, column: 40, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4608, file: !258, line: 1276, column: 20)
!4615 = !DILocation(line: 1278, column: 56, scope: !4614)
!4616 = !DILocation(line: 0, scope: !4600)
!4617 = !DILocation(line: 1283, column: 5, scope: !4589)
!4618 = distinct !DISubprogram(name: "halADC_Fifo_Read_Data", scope: !258, file: !258, line: 1286, type: !4619, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4621)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!4385, !219, !312}
!4621 = !{!4622, !4623, !4624}
!4622 = !DILocalVariable(name: "u4Len", arg: 1, scope: !4618, file: !258, line: 1286, type: !219)
!4623 = !DILocalVariable(name: "pru4Samples", arg: 2, scope: !4618, file: !258, line: 1286, type: !312)
!4624 = !DILocalVariable(name: "u4Counter", scope: !4618, file: !258, line: 1288, type: !219)
!4625 = !DILocation(line: 0, scope: !4618)
!4626 = !DILocation(line: 1290, column: 34, scope: !4618)
!4627 = !DILocation(line: 1290, column: 5, scope: !4618)
!4628 = !DILocation(line: 1305, column: 43, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !258, line: 1305, column: 13)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !258, line: 1305, column: 13)
!4631 = distinct !DILexicalBlock(scope: !4618, file: !258, line: 1290, column: 46)
!4632 = !DILocation(line: 1305, column: 13, scope: !4630)
!4633 = !DILocation(line: 1298, column: 43, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !258, line: 1298, column: 13)
!4635 = distinct !DILexicalBlock(scope: !4631, file: !258, line: 1298, column: 13)
!4636 = !DILocation(line: 1298, column: 13, scope: !4635)
!4637 = !DILocation(line: 1299, column: 51, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4634, file: !258, line: 1298, column: 65)
!4639 = !DILocation(line: 1299, column: 17, scope: !4638)
!4640 = !DILocation(line: 1299, column: 40, scope: !4638)
!4641 = !DILocation(line: 1298, column: 61, scope: !4634)
!4642 = distinct !{!4642, !4636, !4643}
!4643 = !DILocation(line: 1300, column: 13, scope: !4635)
!4644 = !DILocation(line: 1306, column: 50, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4629, file: !258, line: 1305, column: 65)
!4646 = !DILocation(line: 1306, column: 17, scope: !4645)
!4647 = !DILocation(line: 1306, column: 40, scope: !4645)
!4648 = !DILocation(line: 1305, column: 61, scope: !4629)
!4649 = distinct !{!4649, !4632, !4650}
!4650 = !DILocation(line: 1307, column: 13, scope: !4630)
!4651 = !DILocation(line: 1311, column: 5, scope: !4618)
!4652 = distinct !DISubprogram(name: "halADC_COMP_LISR", scope: !258, file: !258, line: 1010, type: !520, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4653)
!4653 = !{!4654}
!4654 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4652, file: !258, line: 1010, type: !438)
!4655 = !DILocation(line: 0, scope: !4652)
!4656 = !DILocation(line: 1038, column: 1, scope: !4652)
!4657 = distinct !DISubprogram(name: "hal_cache_init", scope: !344, file: !344, line: 53, type: !4658, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4661)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!4660}
!4660 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !347, line: 172, baseType: !346)
!4661 = !{!4662, !4664}
!4662 = !DILocalVariable(name: "region", scope: !4657, file: !344, line: 55, type: !4663)
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !347, line: 204, baseType: !357)
!4664 = !DILocalVariable(name: "irq_flag", scope: !4657, file: !344, line: 56, type: !136)
!4665 = !DILocation(line: 59, column: 16, scope: !4657)
!4666 = !DILocation(line: 0, scope: !4657)
!4667 = !DILocation(line: 62, column: 9, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4657, file: !344, line: 62, column: 9)
!4669 = !DILocation(line: 62, column: 9, scope: !4657)
!4670 = !DILocation(line: 64, column: 9, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4668, file: !344, line: 62, column: 39)
!4672 = !DILocation(line: 66, column: 9, scope: !4671)
!4673 = !DILocation(line: 69, column: 24, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4668, file: !344, line: 67, column: 12)
!4675 = !DILocation(line: 72, column: 9, scope: !4674)
!4676 = !DILocation(line: 77, column: 5, scope: !4657)
!4677 = !DILocation(line: 80, column: 22, scope: !4657)
!4678 = !DILocation(line: 81, column: 28, scope: !4657)
!4679 = !DILocation(line: 84, column: 19, scope: !4657)
!4680 = !DILocation(line: 85, column: 23, scope: !4657)
!4681 = !DILocation(line: 88, column: 5, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4657, file: !344, line: 88, column: 5)
!4683 = !DILocation(line: 90, column: 9, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4685, file: !344, line: 88, column: 81)
!4685 = distinct !DILexicalBlock(scope: !4682, file: !344, line: 88, column: 5)
!4686 = !DILocation(line: 90, column: 38, scope: !4684)
!4687 = !DILocation(line: 91, column: 9, scope: !4684)
!4688 = !DILocation(line: 91, column: 42, scope: !4684)
!4689 = !DILocation(line: 94, column: 45, scope: !4684)
!4690 = !DILocation(line: 94, column: 47, scope: !4684)
!4691 = !DILocation(line: 95, column: 49, scope: !4684)
!4692 = !DILocation(line: 95, column: 51, scope: !4684)
!4693 = !DILocation(line: 88, column: 77, scope: !4685)
!4694 = !DILocation(line: 88, column: 46, scope: !4685)
!4695 = distinct !{!4695, !4681, !4696}
!4696 = !DILocation(line: 96, column: 5, scope: !4682)
!4697 = !DILocation(line: 99, column: 1, scope: !4657)
!4698 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !344, file: !344, line: 327, type: !4658, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4699)
!4699 = !{!4700}
!4700 = !DILocalVariable(name: "irq_flag", scope: !4698, file: !344, line: 329, type: !136)
!4701 = !DILocation(line: 332, column: 16, scope: !4698)
!4702 = !DILocation(line: 0, scope: !4698)
!4703 = !DILocation(line: 335, column: 21, scope: !4698)
!4704 = !DILocation(line: 336, column: 21, scope: !4698)
!4705 = !DILocation(line: 339, column: 21, scope: !4698)
!4706 = !DILocation(line: 340, column: 21, scope: !4698)
!4707 = !DILocation(line: 434, column: 3, scope: !4708, inlinedAt: !4710)
!4708 = distinct !DISubprogram(name: "__ISB", scope: !4709, file: !4709, line: 432, type: !181, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1229)
!4709 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/adc_get_data_polling/GCC")
!4710 = distinct !DILocation(line: 343, column: 5, scope: !4698)
!4711 = !{i64 296584}
!4712 = !DILocation(line: 346, column: 5, scope: !4698)
!4713 = !DILocation(line: 348, column: 5, scope: !4698)
!4714 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !344, file: !344, line: 101, type: !4658, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4715)
!4715 = !{!4716}
!4716 = !DILocalVariable(name: "region", scope: !4714, file: !344, line: 103, type: !4663)
!4717 = !DILocation(line: 107, column: 5, scope: !4714)
!4718 = !DILocation(line: 110, column: 22, scope: !4714)
!4719 = !DILocation(line: 111, column: 28, scope: !4714)
!4720 = !DILocation(line: 114, column: 19, scope: !4714)
!4721 = !DILocation(line: 115, column: 23, scope: !4714)
!4722 = !DILocation(line: 0, scope: !4714)
!4723 = !DILocation(line: 118, column: 5, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4714, file: !344, line: 118, column: 5)
!4725 = !DILocation(line: 120, column: 9, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !344, line: 118, column: 81)
!4727 = distinct !DILexicalBlock(scope: !4724, file: !344, line: 118, column: 5)
!4728 = !DILocation(line: 120, column: 38, scope: !4726)
!4729 = !DILocation(line: 121, column: 9, scope: !4726)
!4730 = !DILocation(line: 121, column: 42, scope: !4726)
!4731 = !DILocation(line: 124, column: 45, scope: !4726)
!4732 = !DILocation(line: 124, column: 47, scope: !4726)
!4733 = !DILocation(line: 125, column: 49, scope: !4726)
!4734 = !DILocation(line: 125, column: 51, scope: !4726)
!4735 = !DILocation(line: 118, column: 77, scope: !4727)
!4736 = !DILocation(line: 118, column: 46, scope: !4727)
!4737 = distinct !{!4737, !4723, !4738}
!4738 = !DILocation(line: 126, column: 5, scope: !4724)
!4739 = !DILocation(line: 129, column: 20, scope: !4714)
!4740 = !DILocation(line: 131, column: 5, scope: !4714)
!4741 = distinct !DISubprogram(name: "hal_cache_enable", scope: !344, file: !344, line: 134, type: !4658, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1229)
!4742 = !DILocation(line: 137, column: 45, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4741, file: !344, line: 137, column: 9)
!4744 = !DILocation(line: 137, column: 28, scope: !4743)
!4745 = !DILocation(line: 137, column: 9, scope: !4741)
!4746 = !DILocation(line: 142, column: 22, scope: !4741)
!4747 = !DILocation(line: 145, column: 28, scope: !4741)
!4748 = !DILocation(line: 145, column: 19, scope: !4741)
!4749 = !DILocation(line: 147, column: 5, scope: !4741)
!4750 = !DILocation(line: 0, scope: !4741)
!4751 = !DILocation(line: 148, column: 1, scope: !4741)
!4752 = distinct !DISubprogram(name: "hal_cache_disable", scope: !344, file: !344, line: 150, type: !4658, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4753)
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "irq_flag", scope: !4752, file: !344, line: 152, type: !136)
!4755 = !DILocation(line: 155, column: 16, scope: !4752)
!4756 = !DILocation(line: 0, scope: !4752)
!4757 = !DILocation(line: 158, column: 16, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4752, file: !344, line: 158, column: 9)
!4759 = !DILocation(line: 158, column: 26, scope: !4758)
!4760 = !DILocation(line: 158, column: 9, scope: !4752)
!4761 = !DILocation(line: 160, column: 9, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !344, line: 158, column: 49)
!4763 = !DILocation(line: 161, column: 5, scope: !4762)
!4764 = !DILocation(line: 164, column: 22, scope: !4752)
!4765 = !DILocation(line: 167, column: 28, scope: !4752)
!4766 = !DILocation(line: 167, column: 19, scope: !4752)
!4767 = !DILocation(line: 170, column: 5, scope: !4752)
!4768 = !DILocation(line: 172, column: 5, scope: !4752)
!4769 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !344, file: !344, line: 175, type: !4770, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4772)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!4660, !4663}
!4772 = !{!4773}
!4773 = !DILocalVariable(name: "region", arg: 1, scope: !4769, file: !344, line: 175, type: !4663)
!4774 = !DILocation(line: 0, scope: !4769)
!4775 = !DILocation(line: 178, column: 16, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4769, file: !344, line: 178, column: 9)
!4777 = !DILocation(line: 178, column: 9, scope: !4769)
!4778 = !DILocation(line: 183, column: 9, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4769, file: !344, line: 183, column: 9)
!4780 = !DILocation(line: 183, column: 38, scope: !4779)
!4781 = !DILocation(line: 183, column: 9, scope: !4769)
!4782 = !DILocation(line: 184, column: 38, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4779, file: !344, line: 183, column: 62)
!4784 = !DILocation(line: 184, column: 32, scope: !4783)
!4785 = !DILocation(line: 190, column: 32, scope: !4769)
!4786 = !DILocation(line: 190, column: 23, scope: !4769)
!4787 = !DILocation(line: 192, column: 5, scope: !4769)
!4788 = !DILocation(line: 193, column: 1, scope: !4769)
!4789 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !344, file: !344, line: 195, type: !4770, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4790)
!4790 = !{!4791}
!4791 = !DILocalVariable(name: "region", arg: 1, scope: !4789, file: !344, line: 195, type: !4663)
!4792 = !DILocation(line: 0, scope: !4789)
!4793 = !DILocation(line: 198, column: 16, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4789, file: !344, line: 198, column: 9)
!4795 = !DILocation(line: 198, column: 9, scope: !4789)
!4796 = !DILocation(line: 203, column: 35, scope: !4789)
!4797 = !DILocation(line: 203, column: 31, scope: !4789)
!4798 = !DILocation(line: 203, column: 28, scope: !4789)
!4799 = !DILocation(line: 206, column: 32, scope: !4789)
!4800 = !DILocation(line: 206, column: 23, scope: !4789)
!4801 = !DILocation(line: 209, column: 41, scope: !4789)
!4802 = !DILocation(line: 209, column: 43, scope: !4789)
!4803 = !DILocation(line: 210, column: 45, scope: !4789)
!4804 = !DILocation(line: 210, column: 47, scope: !4789)
!4805 = !DILocation(line: 212, column: 5, scope: !4789)
!4806 = !DILocation(line: 213, column: 1, scope: !4789)
!4807 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !344, file: !344, line: 215, type: !4808, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4811)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!4660, !4810}
!4810 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !347, line: 182, baseType: !376)
!4811 = !{!4812}
!4812 = !DILocalVariable(name: "cache_size", arg: 1, scope: !4807, file: !344, line: 215, type: !4810)
!4813 = !DILocation(line: 0, scope: !4807)
!4814 = !DILocation(line: 218, column: 20, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4807, file: !344, line: 218, column: 9)
!4816 = !DILocation(line: 218, column: 9, scope: !4807)
!4817 = !DILocation(line: 223, column: 22, scope: !4807)
!4818 = !DILocation(line: 224, column: 37, scope: !4807)
!4819 = !DILocation(line: 224, column: 22, scope: !4807)
!4820 = !DILocation(line: 227, column: 20, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4807, file: !344, line: 227, column: 9)
!4822 = !DILocation(line: 227, column: 9, scope: !4807)
!4823 = !DILocation(line: 228, column: 26, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4821, file: !344, line: 227, column: 43)
!4825 = !DILocation(line: 229, column: 5, scope: !4824)
!4826 = !DILocation(line: 232, column: 28, scope: !4807)
!4827 = !DILocation(line: 232, column: 19, scope: !4807)
!4828 = !DILocation(line: 234, column: 5, scope: !4807)
!4829 = !DILocation(line: 235, column: 1, scope: !4807)
!4830 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !344, file: !344, line: 237, type: !4831, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4840)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!4660, !4663, !4833}
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 32)
!4834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4835)
!4835 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !347, line: 222, baseType: !4836)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 219, size: 64, elements: !4837)
!4837 = !{!4838, !4839}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !4836, file: !347, line: 220, baseType: !136, size: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !4836, file: !347, line: 221, baseType: !136, size: 32, offset: 32)
!4840 = !{!4841, !4842}
!4841 = !DILocalVariable(name: "region", arg: 1, scope: !4830, file: !344, line: 237, type: !4663)
!4842 = !DILocalVariable(name: "region_config", arg: 2, scope: !4830, file: !344, line: 237, type: !4833)
!4843 = !DILocation(line: 0, scope: !4830)
!4844 = !DILocation(line: 240, column: 16, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4830, file: !344, line: 240, column: 9)
!4846 = !DILocation(line: 240, column: 9, scope: !4830)
!4847 = !DILocation(line: 245, column: 23, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4830, file: !344, line: 245, column: 9)
!4849 = !DILocation(line: 245, column: 9, scope: !4830)
!4850 = !DILocation(line: 250, column: 24, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4830, file: !344, line: 250, column: 9)
!4852 = !DILocation(line: 250, column: 45, scope: !4851)
!4853 = !DILocation(line: 250, column: 9, scope: !4830)
!4854 = !DILocation(line: 251, column: 9, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4851, file: !344, line: 250, column: 81)
!4856 = !DILocation(line: 256, column: 24, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4830, file: !344, line: 256, column: 9)
!4858 = !DILocation(line: 256, column: 42, scope: !4857)
!4859 = !DILocation(line: 256, column: 9, scope: !4830)
!4860 = !DILocation(line: 257, column: 9, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4857, file: !344, line: 256, column: 78)
!4862 = !DILocation(line: 262, column: 5, scope: !4830)
!4863 = !DILocation(line: 262, column: 34, scope: !4830)
!4864 = !DILocation(line: 263, column: 55, scope: !4830)
!4865 = !DILocation(line: 263, column: 93, scope: !4830)
!4866 = !DILocation(line: 263, column: 76, scope: !4830)
!4867 = !DILocation(line: 263, column: 5, scope: !4830)
!4868 = !DILocation(line: 263, column: 38, scope: !4830)
!4869 = !DILocation(line: 266, column: 34, scope: !4830)
!4870 = !DILocation(line: 269, column: 45, scope: !4830)
!4871 = !DILocation(line: 269, column: 41, scope: !4830)
!4872 = !DILocation(line: 269, column: 43, scope: !4830)
!4873 = !DILocation(line: 270, column: 49, scope: !4830)
!4874 = !DILocation(line: 270, column: 45, scope: !4830)
!4875 = !DILocation(line: 270, column: 47, scope: !4830)
!4876 = !DILocation(line: 272, column: 5, scope: !4830)
!4877 = !DILocation(line: 273, column: 1, scope: !4830)
!4878 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !344, file: !344, line: 275, type: !4879, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4881)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!4660, !136}
!4881 = !{!4882, !4883}
!4882 = !DILocalVariable(name: "address", arg: 1, scope: !4878, file: !344, line: 275, type: !136)
!4883 = !DILocalVariable(name: "irq_flag", scope: !4878, file: !344, line: 277, type: !136)
!4884 = !DILocation(line: 0, scope: !4878)
!4885 = !DILocation(line: 280, column: 17, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4878, file: !344, line: 280, column: 9)
!4887 = !DILocation(line: 280, column: 9, scope: !4878)
!4888 = !DILocation(line: 284, column: 16, scope: !4878)
!4889 = !DILocation(line: 287, column: 32, scope: !4878)
!4890 = !DILocation(line: 287, column: 21, scope: !4878)
!4891 = !DILocation(line: 288, column: 21, scope: !4878)
!4892 = !DILocation(line: 434, column: 3, scope: !4708, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 291, column: 5, scope: !4878)
!4894 = !DILocation(line: 294, column: 5, scope: !4878)
!4895 = !DILocation(line: 296, column: 5, scope: !4878)
!4896 = !DILocation(line: 297, column: 1, scope: !4878)
!4897 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !344, file: !344, line: 299, type: !4898, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4900)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!4660, !136, !136}
!4900 = !{!4901, !4902, !4903, !4904}
!4901 = !DILocalVariable(name: "address", arg: 1, scope: !4897, file: !344, line: 299, type: !136)
!4902 = !DILocalVariable(name: "length", arg: 2, scope: !4897, file: !344, line: 299, type: !136)
!4903 = !DILocalVariable(name: "irq_flag", scope: !4897, file: !344, line: 301, type: !136)
!4904 = !DILocalVariable(name: "end_address", scope: !4897, file: !344, line: 302, type: !136)
!4905 = !DILocation(line: 0, scope: !4897)
!4906 = !DILocation(line: 302, column: 36, scope: !4897)
!4907 = !DILocation(line: 305, column: 47, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4897, file: !344, line: 305, column: 9)
!4909 = !DILocation(line: 310, column: 16, scope: !4897)
!4910 = !DILocation(line: 313, column: 20, scope: !4897)
!4911 = !DILocation(line: 313, column: 5, scope: !4897)
!4912 = !DILocation(line: 314, column: 9, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4897, file: !344, line: 313, column: 35)
!4914 = !DILocation(line: 315, column: 17, scope: !4913)
!4915 = distinct !{!4915, !4911, !4916}
!4916 = !DILocation(line: 316, column: 5, scope: !4897)
!4917 = !DILocation(line: 434, column: 3, scope: !4708, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 319, column: 5, scope: !4897)
!4919 = !DILocation(line: 322, column: 5, scope: !4897)
!4920 = !DILocation(line: 324, column: 5, scope: !4897)
!4921 = !DILocation(line: 325, column: 1, scope: !4897)
!4922 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !344, file: !344, line: 351, type: !4879, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4923)
!4923 = !{!4924, !4925}
!4924 = !DILocalVariable(name: "address", arg: 1, scope: !4922, file: !344, line: 351, type: !136)
!4925 = !DILocalVariable(name: "irq_flag", scope: !4922, file: !344, line: 353, type: !136)
!4926 = !DILocation(line: 0, scope: !4922)
!4927 = !DILocation(line: 356, column: 17, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4922, file: !344, line: 356, column: 9)
!4929 = !DILocation(line: 356, column: 9, scope: !4922)
!4930 = !DILocation(line: 361, column: 16, scope: !4922)
!4931 = !DILocation(line: 364, column: 32, scope: !4922)
!4932 = !DILocation(line: 364, column: 21, scope: !4922)
!4933 = !DILocation(line: 365, column: 21, scope: !4922)
!4934 = !DILocation(line: 434, column: 3, scope: !4708, inlinedAt: !4935)
!4935 = distinct !DILocation(line: 368, column: 5, scope: !4922)
!4936 = !DILocation(line: 371, column: 5, scope: !4922)
!4937 = !DILocation(line: 373, column: 5, scope: !4922)
!4938 = !DILocation(line: 374, column: 1, scope: !4922)
!4939 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !344, file: !344, line: 376, type: !4898, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4940)
!4940 = !{!4941, !4942, !4943, !4944}
!4941 = !DILocalVariable(name: "address", arg: 1, scope: !4939, file: !344, line: 376, type: !136)
!4942 = !DILocalVariable(name: "length", arg: 2, scope: !4939, file: !344, line: 376, type: !136)
!4943 = !DILocalVariable(name: "irq_flag", scope: !4939, file: !344, line: 378, type: !136)
!4944 = !DILocalVariable(name: "end_address", scope: !4939, file: !344, line: 379, type: !136)
!4945 = !DILocation(line: 0, scope: !4939)
!4946 = !DILocation(line: 379, column: 36, scope: !4939)
!4947 = !DILocation(line: 382, column: 47, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4939, file: !344, line: 382, column: 9)
!4949 = !DILocation(line: 387, column: 16, scope: !4939)
!4950 = !DILocation(line: 390, column: 20, scope: !4939)
!4951 = !DILocation(line: 390, column: 5, scope: !4939)
!4952 = !DILocation(line: 391, column: 9, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4939, file: !344, line: 390, column: 35)
!4954 = !DILocation(line: 392, column: 17, scope: !4953)
!4955 = distinct !{!4955, !4951, !4956}
!4956 = !DILocation(line: 393, column: 5, scope: !4939)
!4957 = !DILocation(line: 434, column: 3, scope: !4708, inlinedAt: !4958)
!4958 = distinct !DILocation(line: 396, column: 5, scope: !4939)
!4959 = !DILocation(line: 399, column: 5, scope: !4939)
!4960 = !DILocation(line: 401, column: 5, scope: !4939)
!4961 = !DILocation(line: 402, column: 1, scope: !4939)
!4962 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !344, file: !344, line: 404, type: !4658, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4963)
!4963 = !{!4964}
!4964 = !DILocalVariable(name: "irq_flag", scope: !4962, file: !344, line: 406, type: !136)
!4965 = !DILocation(line: 409, column: 16, scope: !4962)
!4966 = !DILocation(line: 0, scope: !4962)
!4967 = !DILocation(line: 412, column: 21, scope: !4962)
!4968 = !DILocation(line: 413, column: 21, scope: !4962)
!4969 = !DILocation(line: 434, column: 3, scope: !4708, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 416, column: 5, scope: !4962)
!4971 = !DILocation(line: 419, column: 5, scope: !4962)
!4972 = !DILocation(line: 421, column: 5, scope: !4962)
!4973 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !344, file: !344, line: 424, type: !4974, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4976)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!126, !136}
!4976 = !{!4977, !4978}
!4977 = !DILocalVariable(name: "address", arg: 1, scope: !4973, file: !344, line: 424, type: !136)
!4978 = !DILocalVariable(name: "region", scope: !4973, file: !344, line: 426, type: !4663)
!4979 = !DILocation(line: 0, scope: !4973)
!4980 = !DILocation(line: 429, column: 18, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4973, file: !344, line: 429, column: 9)
!4982 = !DILocation(line: 429, column: 28, scope: !4981)
!4983 = !DILocation(line: 429, column: 9, scope: !4973)
!4984 = !DILocation(line: 435, column: 20, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4986, file: !344, line: 435, column: 13)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !344, line: 433, column: 81)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !344, line: 433, column: 5)
!4988 = distinct !DILexicalBlock(scope: !4973, file: !344, line: 433, column: 5)
!4989 = !DILocation(line: 435, column: 41, scope: !4985)
!4990 = !DILocation(line: 435, column: 36, scope: !4985)
!4991 = !DILocation(line: 435, column: 13, scope: !4986)
!4992 = !DILocation(line: 436, column: 30, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !344, line: 436, column: 17)
!4994 = distinct !DILexicalBlock(scope: !4985, file: !344, line: 435, column: 53)
!4995 = !DILocation(line: 436, column: 59, scope: !4993)
!4996 = !DILocation(line: 436, column: 26, scope: !4993)
!4997 = !DILocation(line: 436, column: 85, scope: !4993)
!4998 = !DILocation(line: 436, column: 99, scope: !4993)
!4999 = !DILocation(line: 436, column: 97, scope: !4993)
!5000 = !DILocation(line: 436, column: 17, scope: !4994)
!5001 = !DILocation(line: 433, column: 77, scope: !4987)
!5002 = !DILocation(line: 433, column: 46, scope: !4987)
!5003 = !DILocation(line: 433, column: 5, scope: !4988)
!5004 = distinct !{!5004, !5003, !5005}
!5005 = !DILocation(line: 440, column: 5, scope: !4988)
!5006 = !DILocation(line: 442, column: 1, scope: !4973)
!5007 = distinct !DISubprogram(name: "hal_nvic_init", scope: !427, file: !427, line: 60, type: !5008, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1229)
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!5010}
!5010 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !430, line: 158, baseType: !429)
!5011 = !DILocation(line: 62, column: 5, scope: !5007)
!5012 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !427, file: !427, line: 65, type: !5013, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5015)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!5010, !438}
!5015 = !{!5016, !5017}
!5016 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5012, file: !427, line: 65, type: !438)
!5017 = !DILocalVariable(name: "status", scope: !5012, file: !427, line: 67, type: !5010)
!5018 = !DILocation(line: 0, scope: !5012)
!5019 = !DILocation(line: 69, column: 40, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5012, file: !427, line: 69, column: 9)
!5021 = !DILocation(line: 73, column: 9, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5020, file: !427, line: 72, column: 12)
!5023 = !DILocation(line: 77, column: 5, scope: !5012)
!5024 = !DILocation(line: 78, column: 1, scope: !5012)
!5025 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !443, file: !443, line: 1494, type: !5026, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5028)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !173}
!5028 = !{!5029}
!5029 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5025, file: !443, line: 1494, type: !173)
!5030 = !DILocation(line: 0, scope: !5025)
!5031 = !DILocation(line: 1497, column: 91, scope: !5025)
!5032 = !DILocation(line: 1497, column: 61, scope: !5025)
!5033 = !DILocation(line: 1497, column: 40, scope: !5025)
!5034 = !DILocation(line: 1497, column: 3, scope: !5025)
!5035 = !DILocation(line: 1497, column: 46, scope: !5025)
!5036 = !DILocation(line: 1498, column: 1, scope: !5025)
!5037 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !427, file: !427, line: 80, type: !5013, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5038)
!5038 = !{!5039, !5040}
!5039 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5037, file: !427, line: 80, type: !438)
!5040 = !DILocalVariable(name: "status", scope: !5037, file: !427, line: 82, type: !5010)
!5041 = !DILocation(line: 0, scope: !5037)
!5042 = !DILocation(line: 84, column: 40, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5037, file: !427, line: 84, column: 9)
!5044 = !DILocation(line: 88, column: 9, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5043, file: !427, line: 87, column: 12)
!5046 = !DILocation(line: 92, column: 5, scope: !5037)
!5047 = !DILocation(line: 93, column: 1, scope: !5037)
!5048 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !443, file: !443, line: 1507, type: !5026, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5049)
!5049 = !{!5050}
!5050 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5048, file: !443, line: 1507, type: !173)
!5051 = !DILocation(line: 0, scope: !5048)
!5052 = !DILocation(line: 1509, column: 65, scope: !5048)
!5053 = !DILocation(line: 1509, column: 44, scope: !5048)
!5054 = !DILocation(line: 1509, column: 32, scope: !5048)
!5055 = !DILocation(line: 1509, column: 3, scope: !5048)
!5056 = !DILocation(line: 1509, column: 39, scope: !5048)
!5057 = !DILocation(line: 1510, column: 1, scope: !5048)
!5058 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !427, file: !427, line: 95, type: !5059, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5061)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!136, !438}
!5061 = !{!5062, !5063}
!5062 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5058, file: !427, line: 95, type: !438)
!5063 = !DILocalVariable(name: "ret", scope: !5058, file: !427, line: 97, type: !136)
!5064 = !DILocation(line: 0, scope: !5058)
!5065 = !DILocation(line: 99, column: 40, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5058, file: !427, line: 99, column: 9)
!5067 = !DILocation(line: 102, column: 15, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5066, file: !427, line: 101, column: 12)
!5069 = !DILocation(line: 105, column: 5, scope: !5058)
!5070 = !DILocation(line: 106, column: 1, scope: !5058)
!5071 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !443, file: !443, line: 1523, type: !5072, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5074)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!136, !173}
!5074 = !{!5075}
!5075 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5071, file: !443, line: 1523, type: !173)
!5076 = !DILocation(line: 0, scope: !5071)
!5077 = !DILocation(line: 1525, column: 51, scope: !5071)
!5078 = !DILocation(line: 1525, column: 23, scope: !5071)
!5079 = !DILocation(line: 1525, column: 83, scope: !5071)
!5080 = !DILocation(line: 1525, column: 22, scope: !5071)
!5081 = !DILocation(line: 1525, column: 3, scope: !5071)
!5082 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !427, file: !427, line: 108, type: !5013, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5083)
!5083 = !{!5084, !5085}
!5084 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5082, file: !427, line: 108, type: !438)
!5085 = !DILocalVariable(name: "status", scope: !5082, file: !427, line: 110, type: !5010)
!5086 = !DILocation(line: 0, scope: !5082)
!5087 = !DILocation(line: 112, column: 40, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5082, file: !427, line: 112, column: 9)
!5089 = !DILocation(line: 116, column: 9, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5088, file: !427, line: 115, column: 12)
!5091 = !DILocation(line: 120, column: 5, scope: !5082)
!5092 = !DILocation(line: 121, column: 1, scope: !5082)
!5093 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !443, file: !443, line: 1535, type: !5026, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5094)
!5094 = !{!5095}
!5095 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5093, file: !443, line: 1535, type: !173)
!5096 = !DILocation(line: 0, scope: !5093)
!5097 = !DILocation(line: 1537, column: 65, scope: !5093)
!5098 = !DILocation(line: 1537, column: 44, scope: !5093)
!5099 = !DILocation(line: 1537, column: 32, scope: !5093)
!5100 = !DILocation(line: 1537, column: 3, scope: !5093)
!5101 = !DILocation(line: 1537, column: 39, scope: !5093)
!5102 = !DILocation(line: 1538, column: 1, scope: !5093)
!5103 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !427, file: !427, line: 123, type: !5013, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5104)
!5104 = !{!5105, !5106}
!5105 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5103, file: !427, line: 123, type: !438)
!5106 = !DILocalVariable(name: "status", scope: !5103, file: !427, line: 125, type: !5010)
!5107 = !DILocation(line: 0, scope: !5103)
!5108 = !DILocation(line: 127, column: 40, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5103, file: !427, line: 127, column: 9)
!5110 = !DILocation(line: 131, column: 9, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5109, file: !427, line: 130, column: 12)
!5112 = !DILocation(line: 135, column: 5, scope: !5103)
!5113 = !DILocation(line: 136, column: 1, scope: !5103)
!5114 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !443, file: !443, line: 1547, type: !5026, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5115)
!5115 = !{!5116}
!5116 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5114, file: !443, line: 1547, type: !173)
!5117 = !DILocation(line: 0, scope: !5114)
!5118 = !DILocation(line: 1549, column: 65, scope: !5114)
!5119 = !DILocation(line: 1549, column: 44, scope: !5114)
!5120 = !DILocation(line: 1549, column: 32, scope: !5114)
!5121 = !DILocation(line: 1549, column: 3, scope: !5114)
!5122 = !DILocation(line: 1549, column: 39, scope: !5114)
!5123 = !DILocation(line: 1550, column: 1, scope: !5114)
!5124 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !427, file: !427, line: 138, type: !5125, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5127)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!5010, !438, !136}
!5127 = !{!5128, !5129, !5130}
!5128 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5124, file: !427, line: 138, type: !438)
!5129 = !DILocalVariable(name: "priority", arg: 2, scope: !5124, file: !427, line: 138, type: !136)
!5130 = !DILocalVariable(name: "status", scope: !5124, file: !427, line: 140, type: !5010)
!5131 = !DILocation(line: 0, scope: !5124)
!5132 = !DILocation(line: 142, column: 40, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5124, file: !427, line: 142, column: 9)
!5134 = !DILocation(line: 146, column: 9, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5133, file: !427, line: 145, column: 12)
!5136 = !DILocation(line: 150, column: 5, scope: !5124)
!5137 = !DILocation(line: 151, column: 1, scope: !5124)
!5138 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !443, file: !443, line: 1577, type: !5139, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5141)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{null, !173, !136}
!5141 = !{!5142, !5143}
!5142 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5138, file: !443, line: 1577, type: !173)
!5143 = !DILocalVariable(name: "priority", arg: 2, scope: !5138, file: !443, line: 1577, type: !136)
!5144 = !DILocation(line: 0, scope: !5138)
!5145 = !DILocation(line: 1582, column: 34, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !443, line: 1581, column: 8)
!5147 = distinct !DILexicalBlock(scope: !5138, file: !443, line: 1579, column: 6)
!5148 = !DILocation(line: 1582, column: 5, scope: !5146)
!5149 = !DILocation(line: 1582, column: 32, scope: !5146)
!5150 = !DILocation(line: 1583, column: 1, scope: !5138)
!5151 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !427, file: !427, line: 153, type: !5059, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5152)
!5152 = !{!5153, !5154}
!5153 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5151, file: !427, line: 153, type: !438)
!5154 = !DILocalVariable(name: "ret", scope: !5151, file: !427, line: 155, type: !136)
!5155 = !DILocation(line: 0, scope: !5151)
!5156 = !DILocation(line: 157, column: 40, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5151, file: !427, line: 157, column: 9)
!5158 = !DILocation(line: 160, column: 15, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5157, file: !427, line: 159, column: 12)
!5160 = !DILocation(line: 163, column: 5, scope: !5151)
!5161 = !DILocation(line: 164, column: 1, scope: !5151)
!5162 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !443, file: !443, line: 1597, type: !5072, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5163)
!5163 = !{!5164}
!5164 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5162, file: !443, line: 1597, type: !173)
!5165 = !DILocation(line: 0, scope: !5162)
!5166 = !DILocation(line: 1603, column: 23, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5168, file: !443, line: 1602, column: 8)
!5168 = distinct !DILexicalBlock(scope: !5162, file: !443, line: 1600, column: 6)
!5169 = !DILocation(line: 1603, column: 60, scope: !5167)
!5170 = !DILocation(line: 1604, column: 1, scope: !5162)
!5171 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !427, file: !427, line: 173, type: !181, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1229)
!5172 = !DILocation(line: 175, column: 1, scope: !5171)
!5173 = distinct !DISubprogram(name: "isrC_main", scope: !427, file: !427, line: 178, type: !5008, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5174)
!5174 = !{!5175, !5176}
!5175 = !DILocalVariable(name: "status", scope: !5173, file: !427, line: 180, type: !5010)
!5176 = !DILocalVariable(name: "irq_number", scope: !5173, file: !427, line: 181, type: !438)
!5177 = !DILocation(line: 0, scope: !5173)
!5178 = !DILocation(line: 188, column: 34, scope: !5173)
!5179 = !DILocation(line: 189, column: 24, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5173, file: !427, line: 189, column: 9)
!5181 = !DILocation(line: 192, column: 48, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5180, file: !427, line: 192, column: 16)
!5183 = !DILocation(line: 192, column: 62, scope: !5182)
!5184 = !DILocation(line: 192, column: 16, scope: !5180)
!5185 = !DILocation(line: 194, column: 9, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !427, line: 192, column: 71)
!5187 = !DILocation(line: 195, column: 9, scope: !5186)
!5188 = !DILocation(line: 197, column: 55, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5182, file: !427, line: 196, column: 12)
!5190 = !DILocation(line: 197, column: 41, scope: !5189)
!5191 = !DILocation(line: 197, column: 53, scope: !5189)
!5192 = !DILocation(line: 198, column: 41, scope: !5189)
!5193 = !DILocation(line: 198, column: 9, scope: !5189)
!5194 = !DILocation(line: 202, column: 5, scope: !5173)
!5195 = !DILocation(line: 203, column: 1, scope: !5173)
!5196 = distinct !DISubprogram(name: "get_current_irq", scope: !427, file: !427, line: 166, type: !1261, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5197)
!5197 = !{!5198}
!5198 = !DILocalVariable(name: "irq_num", scope: !5196, file: !427, line: 168, type: !136)
!5199 = !DILocation(line: 168, column: 31, scope: !5196)
!5200 = !DILocation(line: 168, column: 36, scope: !5196)
!5201 = !DILocation(line: 0, scope: !5196)
!5202 = !DILocation(line: 169, column: 21, scope: !5196)
!5203 = !DILocation(line: 169, column: 5, scope: !5196)
!5204 = distinct !DISubprogram(name: "get_pending_irq", scope: !427, file: !427, line: 55, type: !1261, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1229)
!5205 = !DILocation(line: 57, column: 19, scope: !5204)
!5206 = !DILocation(line: 57, column: 51, scope: !5204)
!5207 = !DILocation(line: 57, column: 5, scope: !5204)
!5208 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !427, file: !427, line: 205, type: !5209, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5212)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!5010, !438, !5211}
!5211 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !430, line: 175, baseType: !519)
!5212 = !{!5213, !5214, !5215}
!5213 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5208, file: !427, line: 205, type: !438)
!5214 = !DILocalVariable(name: "callback", arg: 2, scope: !5208, file: !427, line: 205, type: !5211)
!5215 = !DILocalVariable(name: "mask", scope: !5208, file: !427, line: 207, type: !136)
!5216 = !DILocation(line: 0, scope: !5208)
!5217 = !DILocation(line: 209, column: 24, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5208, file: !427, line: 209, column: 9)
!5219 = !DILocation(line: 213, column: 12, scope: !5208)
!5220 = !DILocation(line: 214, column: 5, scope: !5208)
!5221 = !DILocation(line: 215, column: 37, scope: !5208)
!5222 = !DILocation(line: 215, column: 51, scope: !5208)
!5223 = !DILocation(line: 216, column: 37, scope: !5208)
!5224 = !DILocation(line: 216, column: 49, scope: !5208)
!5225 = !DILocation(line: 217, column: 5, scope: !5208)
!5226 = !DILocation(line: 219, column: 5, scope: !5208)
!5227 = !DILocation(line: 220, column: 1, scope: !5208)
!5228 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !427, file: !427, line: 222, type: !5229, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!5010, !3856}
!5231 = !{!5232}
!5232 = !DILocalVariable(name: "mask", arg: 1, scope: !5228, file: !427, line: 222, type: !3856)
!5233 = !DILocation(line: 0, scope: !5228)
!5234 = !DILocation(line: 224, column: 13, scope: !5228)
!5235 = !DILocation(line: 224, column: 11, scope: !5228)
!5236 = !DILocation(line: 225, column: 5, scope: !5228)
!5237 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !427, file: !427, line: 228, type: !5238, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!5010, !136}
!5240 = !{!5241}
!5241 = !DILocalVariable(name: "mask", arg: 1, scope: !5237, file: !427, line: 228, type: !136)
!5242 = !DILocation(line: 0, scope: !5237)
!5243 = !DILocation(line: 230, column: 5, scope: !5237)
!5244 = !DILocation(line: 231, column: 5, scope: !5237)
!5245 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1144, file: !1144, line: 50, type: !5246, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5250)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!5248, !5249, !128}
!5248 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1147, line: 238, baseType: !1146)
!5249 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !299, line: 281, baseType: !1153)
!5250 = !{!5251, !5252, !5253}
!5251 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5245, file: !1144, line: 50, type: !5249)
!5252 = !DILocalVariable(name: "function_index", arg: 2, scope: !5245, file: !1144, line: 50, type: !128)
!5253 = !DILocalVariable(name: "ret_value", scope: !5245, file: !1144, line: 52, type: !439)
!5254 = !DILocation(line: 0, scope: !5245)
!5255 = !DILocation(line: 53, column: 18, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5245, file: !1144, line: 53, column: 9)
!5257 = !DILocation(line: 53, column: 9, scope: !5245)
!5258 = !DILocation(line: 57, column: 24, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5245, file: !1144, line: 57, column: 9)
!5260 = !DILocation(line: 57, column: 9, scope: !5245)
!5261 = !DILocation(line: 57, column: 9, scope: !5259)
!5262 = !DILocation(line: 60, column: 17, scope: !5245)
!5263 = !DILocation(line: 61, column: 12, scope: !5245)
!5264 = !DILocation(line: 61, column: 5, scope: !5245)
!5265 = !DILocation(line: 62, column: 1, scope: !5245)
!5266 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1144, file: !1144, line: 64, type: !5267, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5270)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!5269, !5249}
!5269 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1147, line: 229, baseType: !1184)
!5270 = !{!5271}
!5271 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5266, file: !1144, line: 64, type: !5249)
!5272 = !DILocation(line: 0, scope: !5266)
!5273 = !DILocation(line: 66, column: 5, scope: !5266)
!5274 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1144, file: !1144, line: 69, type: !5267, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5275)
!5275 = !{!5276}
!5276 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5274, file: !1144, line: 69, type: !5249)
!5277 = !DILocation(line: 0, scope: !5274)
!5278 = !DILocation(line: 71, column: 5, scope: !5274)
!5279 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1144, file: !1144, line: 74, type: !5280, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5283)
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!5269, !5249, !5282}
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 32)
!5283 = !{!5284, !5285, !5286}
!5284 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5279, file: !1144, line: 74, type: !5249)
!5285 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5279, file: !1144, line: 74, type: !5282)
!5286 = !DILocalVariable(name: "status", scope: !5279, file: !1144, line: 76, type: !5287)
!5287 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1205, line: 67, baseType: !5288)
!5288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1205, line: 62, size: 64, elements: !5289)
!5289 = !{!5290, !5291, !5292, !5293}
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !5288, file: !1205, line: 63, baseType: !136, size: 32)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !5288, file: !1205, line: 64, baseType: !128, size: 8, offset: 32)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !5288, file: !1205, line: 65, baseType: !128, size: 8, offset: 40)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !5288, file: !1205, line: 66, baseType: !128, size: 8, offset: 48)
!5294 = !DILocation(line: 0, scope: !5279)
!5295 = !DILocation(line: 77, column: 14, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5279, file: !1144, line: 77, column: 9)
!5297 = !DILocation(line: 77, column: 9, scope: !5279)
!5298 = !DILocation(line: 81, column: 18, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5279, file: !1144, line: 81, column: 9)
!5300 = !DILocation(line: 81, column: 9, scope: !5279)
!5301 = !DILocation(line: 85, column: 14, scope: !5279)
!5302 = !DILocation(line: 86, column: 18, scope: !5279)
!5303 = !DILocation(line: 86, column: 16, scope: !5279)
!5304 = !DILocation(line: 87, column: 5, scope: !5279)
!5305 = !DILocation(line: 88, column: 1, scope: !5279)
!5306 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1144, file: !1144, line: 90, type: !5307, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!5269, !5249, !1211}
!5309 = !{!5310, !5311, !5312}
!5310 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5306, file: !1144, line: 90, type: !5249)
!5311 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5306, file: !1144, line: 90, type: !1211)
!5312 = !DILocalVariable(name: "ret_value", scope: !5306, file: !1144, line: 92, type: !439)
!5313 = !DILocation(line: 0, scope: !5306)
!5314 = !DILocation(line: 93, column: 18, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5306, file: !1144, line: 93, column: 9)
!5316 = !DILocation(line: 93, column: 9, scope: !5306)
!5317 = !DILocation(line: 97, column: 60, scope: !5306)
!5318 = !DILocation(line: 97, column: 17, scope: !5306)
!5319 = !DILocation(line: 98, column: 12, scope: !5306)
!5320 = !DILocation(line: 98, column: 5, scope: !5306)
!5321 = !DILocation(line: 99, column: 1, scope: !5306)
!5322 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1144, file: !1144, line: 101, type: !5280, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5323)
!5323 = !{!5324, !5325, !5326}
!5324 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5322, file: !1144, line: 101, type: !5249)
!5325 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5322, file: !1144, line: 101, type: !5282)
!5326 = !DILocalVariable(name: "status", scope: !5322, file: !1144, line: 103, type: !5287)
!5327 = !DILocation(line: 0, scope: !5322)
!5328 = !DILocation(line: 104, column: 18, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5322, file: !1144, line: 104, column: 9)
!5330 = !DILocation(line: 104, column: 9, scope: !5322)
!5331 = !DILocation(line: 108, column: 14, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5322, file: !1144, line: 108, column: 9)
!5333 = !DILocation(line: 108, column: 9, scope: !5322)
!5334 = !DILocation(line: 112, column: 14, scope: !5322)
!5335 = !DILocation(line: 113, column: 18, scope: !5322)
!5336 = !DILocation(line: 113, column: 16, scope: !5322)
!5337 = !DILocation(line: 114, column: 5, scope: !5322)
!5338 = !DILocation(line: 115, column: 1, scope: !5322)
!5339 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1144, file: !1144, line: 117, type: !5340, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5343)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!5269, !5249, !5342}
!5342 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1147, line: 213, baseType: !1194)
!5343 = !{!5344, !5345, !5346}
!5344 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5339, file: !1144, line: 117, type: !5249)
!5345 = !DILocalVariable(name: "direction", arg: 2, scope: !5339, file: !1144, line: 117, type: !5342)
!5346 = !DILocalVariable(name: "ret_value", scope: !5339, file: !1144, line: 119, type: !439)
!5347 = !DILocation(line: 0, scope: !5339)
!5348 = !DILocation(line: 120, column: 18, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5339, file: !1144, line: 120, column: 9)
!5350 = !DILocation(line: 120, column: 9, scope: !5339)
!5351 = !DILocation(line: 123, column: 17, scope: !5339)
!5352 = !DILocation(line: 125, column: 12, scope: !5339)
!5353 = !DILocation(line: 125, column: 5, scope: !5339)
!5354 = !DILocation(line: 126, column: 1, scope: !5339)
!5355 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1144, file: !1144, line: 128, type: !5356, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5359)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!5269, !5249, !5358}
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5342, size: 32)
!5359 = !{!5360, !5361, !5362}
!5360 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5355, file: !1144, line: 128, type: !5249)
!5361 = !DILocalVariable(name: "direction", arg: 2, scope: !5355, file: !1144, line: 128, type: !5358)
!5362 = !DILocalVariable(name: "status", scope: !5355, file: !1144, line: 131, type: !5287)
!5363 = !DILocation(line: 0, scope: !5355)
!5364 = !DILocation(line: 132, column: 18, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5355, file: !1144, line: 132, column: 9)
!5366 = !DILocation(line: 132, column: 9, scope: !5355)
!5367 = !DILocation(line: 136, column: 14, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5355, file: !1144, line: 136, column: 9)
!5369 = !DILocation(line: 136, column: 9, scope: !5355)
!5370 = !DILocation(line: 140, column: 14, scope: !5355)
!5371 = !DILocation(line: 141, column: 18, scope: !5355)
!5372 = !DILocation(line: 141, column: 16, scope: !5355)
!5373 = !DILocation(line: 142, column: 5, scope: !5355)
!5374 = !DILocation(line: 143, column: 1, scope: !5355)
!5375 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1144, file: !1144, line: 146, type: !5267, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5376)
!5376 = !{!5377, !5378}
!5377 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5375, file: !1144, line: 146, type: !5249)
!5378 = !DILocalVariable(name: "status", scope: !5375, file: !1144, line: 148, type: !5287)
!5379 = !DILocation(line: 0, scope: !5375)
!5380 = !DILocation(line: 149, column: 18, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5375, file: !1144, line: 149, column: 9)
!5382 = !DILocation(line: 149, column: 9, scope: !5375)
!5383 = !DILocation(line: 153, column: 14, scope: !5375)
!5384 = !DILocation(line: 154, column: 76, scope: !5375)
!5385 = !DILocation(line: 154, column: 12, scope: !5375)
!5386 = !DILocation(line: 154, column: 5, scope: !5375)
!5387 = !DILocation(line: 155, column: 1, scope: !5375)
!5388 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1144, file: !1144, line: 157, type: !5267, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5389)
!5389 = !{!5390, !5391}
!5390 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5388, file: !1144, line: 157, type: !5249)
!5391 = !DILocalVariable(name: "ret_value", scope: !5388, file: !1144, line: 159, type: !439)
!5392 = !DILocation(line: 0, scope: !5388)
!5393 = !DILocation(line: 160, column: 18, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5388, file: !1144, line: 160, column: 9)
!5395 = !DILocation(line: 160, column: 9, scope: !5388)
!5396 = !DILocation(line: 164, column: 17, scope: !5388)
!5397 = !DILocation(line: 165, column: 19, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5388, file: !1144, line: 165, column: 9)
!5399 = !DILocation(line: 165, column: 9, scope: !5388)
!5400 = !DILocation(line: 168, column: 17, scope: !5388)
!5401 = !DILocation(line: 169, column: 12, scope: !5388)
!5402 = !DILocation(line: 169, column: 5, scope: !5388)
!5403 = !DILocation(line: 170, column: 1, scope: !5388)
!5404 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1144, file: !1144, line: 172, type: !5267, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5405)
!5405 = !{!5406, !5407}
!5406 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5404, file: !1144, line: 172, type: !5249)
!5407 = !DILocalVariable(name: "ret_value", scope: !5404, file: !1144, line: 174, type: !439)
!5408 = !DILocation(line: 0, scope: !5404)
!5409 = !DILocation(line: 175, column: 18, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5404, file: !1144, line: 175, column: 9)
!5411 = !DILocation(line: 175, column: 9, scope: !5404)
!5412 = !DILocation(line: 179, column: 17, scope: !5404)
!5413 = !DILocation(line: 180, column: 19, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5404, file: !1144, line: 180, column: 9)
!5415 = !DILocation(line: 180, column: 9, scope: !5404)
!5416 = !DILocation(line: 183, column: 17, scope: !5404)
!5417 = !DILocation(line: 184, column: 12, scope: !5404)
!5418 = !DILocation(line: 184, column: 5, scope: !5404)
!5419 = !DILocation(line: 185, column: 1, scope: !5404)
!5420 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1144, file: !1144, line: 187, type: !5267, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5421)
!5421 = !{!5422, !5423}
!5422 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5420, file: !1144, line: 187, type: !5249)
!5423 = !DILocalVariable(name: "ret_value", scope: !5420, file: !1144, line: 189, type: !439)
!5424 = !DILocation(line: 0, scope: !5420)
!5425 = !DILocation(line: 191, column: 18, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5420, file: !1144, line: 191, column: 9)
!5427 = !DILocation(line: 191, column: 9, scope: !5420)
!5428 = !DILocation(line: 195, column: 17, scope: !5420)
!5429 = !DILocation(line: 196, column: 12, scope: !5420)
!5430 = !DILocation(line: 196, column: 5, scope: !5420)
!5431 = !DILocation(line: 197, column: 1, scope: !5420)
!5432 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1144, file: !1144, line: 200, type: !5433, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5435)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!5269, !5249, !1212}
!5435 = !{!5436, !5437, !5438}
!5436 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5432, file: !1144, line: 200, type: !5249)
!5437 = !DILocalVariable(name: "driving", arg: 2, scope: !5432, file: !1144, line: 200, type: !1212)
!5438 = !DILocalVariable(name: "ret_value", scope: !5432, file: !1144, line: 202, type: !439)
!5439 = !DILocation(line: 0, scope: !5432)
!5440 = !DILocation(line: 204, column: 18, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5432, file: !1144, line: 204, column: 9)
!5442 = !DILocation(line: 204, column: 9, scope: !5432)
!5443 = !DILocation(line: 208, column: 64, scope: !5432)
!5444 = !DILocation(line: 208, column: 17, scope: !5432)
!5445 = !DILocation(line: 210, column: 12, scope: !5432)
!5446 = !DILocation(line: 210, column: 5, scope: !5432)
!5447 = !DILocation(line: 211, column: 1, scope: !5432)
!5448 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1144, file: !1144, line: 214, type: !5449, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1143, retainedNodes: !5452)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!5269, !5249, !5451}
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 32)
!5452 = !{!5453, !5454, !5455, !5456}
!5453 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5448, file: !1144, line: 214, type: !5249)
!5454 = !DILocalVariable(name: "driving", arg: 2, scope: !5448, file: !1144, line: 214, type: !5451)
!5455 = !DILocalVariable(name: "ret_value", scope: !5448, file: !1144, line: 216, type: !439)
!5456 = !DILocalVariable(name: "value", scope: !5448, file: !1144, line: 217, type: !128)
!5457 = !DILocation(line: 0, scope: !5448)
!5458 = !DILocation(line: 217, column: 5, scope: !5448)
!5459 = !DILocation(line: 219, column: 18, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5448, file: !1144, line: 219, column: 9)
!5461 = !DILocation(line: 219, column: 9, scope: !5448)
!5462 = !DILocation(line: 223, column: 17, scope: !5448)
!5463 = !DILocation(line: 225, column: 44, scope: !5448)
!5464 = !DILocation(line: 225, column: 16, scope: !5448)
!5465 = !DILocation(line: 225, column: 14, scope: !5448)
!5466 = !DILocation(line: 227, column: 12, scope: !5448)
!5467 = !DILocation(line: 227, column: 5, scope: !5448)
!5468 = !DILocation(line: 228, column: 1, scope: !5448)
!5469 = distinct !DISubprogram(name: "hal_gpt_init", scope: !528, file: !528, line: 82, type: !5470, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5474)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!5472, !5473}
!5472 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !531, line: 393, baseType: !530)
!5473 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !299, line: 663, baseType: !538)
!5474 = !{!5475}
!5475 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5469, file: !528, line: 82, type: !5473)
!5476 = !DILocation(line: 0, scope: !5469)
!5477 = !DILocation(line: 84, column: 9, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5469, file: !528, line: 84, column: 9)
!5479 = !DILocation(line: 84, column: 33, scope: !5478)
!5480 = !DILocation(line: 84, column: 9, scope: !5469)
!5481 = !DILocation(line: 88, column: 9, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5469, file: !528, line: 88, column: 9)
!5483 = !DILocation(line: 88, column: 9, scope: !5469)
!5484 = !DILocation(line: 89, column: 9, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5482, file: !528, line: 88, column: 50)
!5486 = !DILocation(line: 90, column: 9, scope: !5485)
!5487 = !DILocation(line: 92, column: 12, scope: !5469)
!5488 = !DILocation(line: 92, column: 5, scope: !5469)
!5489 = !DILocation(line: 96, column: 43, scope: !5469)
!5490 = !DILocation(line: 98, column: 5, scope: !5469)
!5491 = !DILocation(line: 99, column: 1, scope: !5469)
!5492 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !528, file: !528, line: 63, type: !5493, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5495)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!126, !5473}
!5495 = !{!5496}
!5496 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5492, file: !528, line: 63, type: !5473)
!5497 = !DILocation(line: 0, scope: !5492)
!5498 = !DILocation(line: 65, column: 19, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5492, file: !528, line: 65, column: 9)
!5500 = !DILocation(line: 65, column: 34, scope: !5499)
!5501 = !DILocation(line: 70, column: 1, scope: !5492)
!5502 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !528, file: !528, line: 101, type: !5470, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5503)
!5503 = !{!5504}
!5504 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5502, file: !528, line: 101, type: !5473)
!5505 = !DILocation(line: 0, scope: !5502)
!5506 = !DILocation(line: 103, column: 9, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5502, file: !528, line: 103, column: 9)
!5508 = !DILocation(line: 103, column: 9, scope: !5502)
!5509 = !DILocation(line: 104, column: 9, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5507, file: !528, line: 103, column: 50)
!5511 = !DILocation(line: 105, column: 9, scope: !5510)
!5512 = !DILocation(line: 108, column: 9, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5502, file: !528, line: 108, column: 9)
!5514 = !DILocation(line: 108, column: 33, scope: !5513)
!5515 = !DILocation(line: 108, column: 48, scope: !5513)
!5516 = !DILocation(line: 108, column: 9, scope: !5502)
!5517 = !DILocation(line: 109, column: 9, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5513, file: !528, line: 108, column: 68)
!5519 = !DILocation(line: 110, column: 9, scope: !5518)
!5520 = !DILocation(line: 113, column: 12, scope: !5502)
!5521 = !DILocation(line: 113, column: 5, scope: !5502)
!5522 = !DILocation(line: 116, column: 29, scope: !5502)
!5523 = !DILocation(line: 116, column: 43, scope: !5502)
!5524 = !DILocation(line: 117, column: 5, scope: !5502)
!5525 = !DILocation(line: 118, column: 1, scope: !5502)
!5526 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !528, file: !528, line: 120, type: !5527, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5530)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!5472, !5529, !3856}
!5529 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !299, line: 674, baseType: !549)
!5530 = !{!5531, !5532}
!5531 = !DILocalVariable(name: "clock_source", arg: 1, scope: !5526, file: !528, line: 120, type: !5529)
!5532 = !DILocalVariable(name: "count", arg: 2, scope: !5526, file: !528, line: 120, type: !3856)
!5533 = !DILocation(line: 0, scope: !5526)
!5534 = !DILocation(line: 122, column: 9, scope: !5526)
!5535 = !DILocation(line: 123, column: 50, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5537, file: !528, line: 123, column: 13)
!5537 = distinct !DILexicalBlock(scope: !5538, file: !528, line: 122, column: 51)
!5538 = distinct !DILexicalBlock(scope: !5526, file: !528, line: 122, column: 9)
!5539 = !DILocation(line: 123, column: 65, scope: !5536)
!5540 = !DILocation(line: 123, column: 13, scope: !5537)
!5541 = !DILocation(line: 124, column: 13, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5536, file: !528, line: 123, column: 86)
!5543 = !DILocation(line: 125, column: 9, scope: !5542)
!5544 = !DILocation(line: 126, column: 18, scope: !5537)
!5545 = !DILocation(line: 126, column: 16, scope: !5537)
!5546 = !DILocation(line: 127, column: 49, scope: !5537)
!5547 = !DILocation(line: 128, column: 5, scope: !5537)
!5548 = !DILocation(line: 129, column: 50, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !528, line: 129, column: 13)
!5550 = distinct !DILexicalBlock(scope: !5551, file: !528, line: 128, column: 57)
!5551 = distinct !DILexicalBlock(scope: !5538, file: !528, line: 128, column: 16)
!5552 = !DILocation(line: 129, column: 65, scope: !5549)
!5553 = !DILocation(line: 129, column: 13, scope: !5550)
!5554 = !DILocation(line: 130, column: 13, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5549, file: !528, line: 129, column: 86)
!5556 = !DILocation(line: 131, column: 9, scope: !5555)
!5557 = !DILocation(line: 132, column: 18, scope: !5550)
!5558 = !DILocation(line: 132, column: 46, scope: !5550)
!5559 = !DILocation(line: 132, column: 65, scope: !5550)
!5560 = !DILocation(line: 132, column: 43, scope: !5550)
!5561 = !DILocation(line: 132, column: 16, scope: !5550)
!5562 = !DILocation(line: 133, column: 49, scope: !5550)
!5563 = !DILocation(line: 134, column: 5, scope: !5550)
!5564 = !DILocation(line: 135, column: 50, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5566, file: !528, line: 135, column: 13)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !528, line: 134, column: 58)
!5567 = distinct !DILexicalBlock(scope: !5551, file: !528, line: 134, column: 16)
!5568 = !DILocation(line: 135, column: 65, scope: !5565)
!5569 = !DILocation(line: 135, column: 13, scope: !5566)
!5570 = !DILocation(line: 136, column: 13, scope: !5571)
!5571 = distinct !DILexicalBlock(scope: !5565, file: !528, line: 135, column: 86)
!5572 = !DILocation(line: 137, column: 9, scope: !5571)
!5573 = !DILocation(line: 138, column: 18, scope: !5566)
!5574 = !DILocation(line: 138, column: 16, scope: !5566)
!5575 = !DILocation(line: 139, column: 49, scope: !5566)
!5576 = !DILocation(line: 141, column: 9, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5567, file: !528, line: 140, column: 11)
!5578 = !DILocation(line: 142, column: 9, scope: !5577)
!5579 = !DILocation(line: 146, column: 1, scope: !5526)
!5580 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !528, file: !528, line: 148, type: !5581, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5583)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!5472, !136, !136, !3856}
!5583 = !{!5584, !5585, !5586}
!5584 = !DILocalVariable(name: "start_count", arg: 1, scope: !5580, file: !528, line: 148, type: !136)
!5585 = !DILocalVariable(name: "end_count", arg: 2, scope: !5580, file: !528, line: 148, type: !136)
!5586 = !DILocalVariable(name: "duration_count", arg: 3, scope: !5580, file: !528, line: 148, type: !3856)
!5587 = !DILocation(line: 0, scope: !5580)
!5588 = !DILocation(line: 150, column: 24, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5580, file: !528, line: 150, column: 9)
!5590 = !DILocation(line: 150, column: 9, scope: !5580)
!5591 = !DILocation(line: 0, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5580, file: !528, line: 154, column: 9)
!5593 = !DILocation(line: 160, column: 5, scope: !5580)
!5594 = !DILocation(line: 161, column: 1, scope: !5580)
!5595 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !528, file: !528, line: 163, type: !5596, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5599)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!5472, !5473, !5598}
!5598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 32)
!5599 = !{!5600, !5601}
!5600 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5595, file: !528, line: 163, type: !5473)
!5601 = !DILocalVariable(name: "running_status", arg: 2, scope: !5595, file: !528, line: 164, type: !5598)
!5602 = !DILocation(line: 0, scope: !5595)
!5603 = !DILocation(line: 166, column: 18, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5595, file: !528, line: 166, column: 9)
!5605 = !DILocation(line: 166, column: 9, scope: !5595)
!5606 = !DILocation(line: 167, column: 9, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5604, file: !528, line: 166, column: 34)
!5608 = !DILocation(line: 168, column: 9, scope: !5607)
!5609 = !DILocation(line: 170, column: 47, scope: !5595)
!5610 = !DILocation(line: 170, column: 21, scope: !5595)
!5611 = !DILocation(line: 171, column: 5, scope: !5595)
!5612 = !DILocation(line: 172, column: 1, scope: !5595)
!5613 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !528, file: !528, line: 174, type: !5614, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5616)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{!5472, !5473, !571, !161}
!5616 = !{!5617, !5618, !5619}
!5617 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5613, file: !528, line: 174, type: !5473)
!5618 = !DILocalVariable(name: "callback", arg: 2, scope: !5613, file: !528, line: 175, type: !571)
!5619 = !DILocalVariable(name: "user_data", arg: 3, scope: !5613, file: !528, line: 176, type: !161)
!5620 = !DILocation(line: 0, scope: !5613)
!5621 = !DILocation(line: 178, column: 9, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5613, file: !528, line: 178, column: 9)
!5623 = !DILocation(line: 178, column: 9, scope: !5613)
!5624 = !DILocation(line: 179, column: 9, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5622, file: !528, line: 178, column: 50)
!5626 = !DILocation(line: 180, column: 9, scope: !5625)
!5627 = !DILocation(line: 182, column: 33, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5613, file: !528, line: 182, column: 9)
!5629 = !DILocation(line: 182, column: 47, scope: !5628)
!5630 = !DILocation(line: 182, column: 9, scope: !5613)
!5631 = !DILocation(line: 185, column: 18, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5613, file: !528, line: 185, column: 9)
!5633 = !DILocation(line: 185, column: 9, scope: !5613)
!5634 = !DILocation(line: 188, column: 46, scope: !5613)
!5635 = !DILocation(line: 188, column: 56, scope: !5613)
!5636 = !DILocation(line: 189, column: 46, scope: !5613)
!5637 = !DILocation(line: 189, column: 56, scope: !5613)
!5638 = !DILocation(line: 190, column: 5, scope: !5613)
!5639 = !DILocation(line: 191, column: 1, scope: !5613)
!5640 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !528, file: !528, line: 218, type: !5641, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5644)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!5472, !5473, !136, !5643}
!5643 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !531, line: 383, baseType: !554)
!5644 = !{!5645, !5646, !5647}
!5645 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5640, file: !528, line: 218, type: !5473)
!5646 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !5640, file: !528, line: 218, type: !136)
!5647 = !DILocalVariable(name: "timer_type", arg: 3, scope: !5640, file: !528, line: 218, type: !5643)
!5648 = !DILocation(line: 0, scope: !5640)
!5649 = !DILocation(line: 220, column: 9, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5640, file: !528, line: 220, column: 9)
!5651 = !DILocation(line: 220, column: 9, scope: !5640)
!5652 = !DILocation(line: 221, column: 9, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5650, file: !528, line: 220, column: 50)
!5654 = !DILocation(line: 222, column: 9, scope: !5653)
!5655 = !DILocation(line: 225, column: 33, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5640, file: !528, line: 225, column: 9)
!5657 = !DILocation(line: 225, column: 47, scope: !5656)
!5658 = !DILocation(line: 225, column: 9, scope: !5640)
!5659 = !DILocation(line: 229, column: 25, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5640, file: !528, line: 229, column: 9)
!5661 = !DILocation(line: 229, column: 9, scope: !5640)
!5662 = !DILocation(line: 234, column: 17, scope: !5640)
!5663 = !DILocation(line: 235, column: 17, scope: !5640)
!5664 = !DILocation(line: 236, column: 17, scope: !5640)
!5665 = !DILocation(line: 233, column: 5, scope: !5640)
!5666 = !DILocation(line: 237, column: 5, scope: !5640)
!5667 = !DILocation(line: 238, column: 29, scope: !5640)
!5668 = !DILocation(line: 238, column: 44, scope: !5640)
!5669 = !DILocation(line: 239, column: 5, scope: !5640)
!5670 = !DILocation(line: 240, column: 1, scope: !5640)
!5671 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !528, file: !528, line: 72, type: !5672, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5674)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!136, !136}
!5674 = !{!5675}
!5675 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !5671, file: !528, line: 72, type: !136)
!5676 = !DILocation(line: 0, scope: !5671)
!5677 = !DILocation(line: 74, column: 37, scope: !5671)
!5678 = !DILocation(line: 74, column: 47, scope: !5671)
!5679 = !DILocation(line: 74, column: 63, scope: !5671)
!5680 = !DILocation(line: 74, column: 42, scope: !5671)
!5681 = !DILocation(line: 74, column: 73, scope: !5671)
!5682 = !DILocation(line: 74, column: 89, scope: !5671)
!5683 = !DILocation(line: 74, column: 68, scope: !5671)
!5684 = !DILocation(line: 74, column: 100, scope: !5671)
!5685 = !DILocation(line: 74, column: 116, scope: !5671)
!5686 = !DILocation(line: 74, column: 95, scope: !5671)
!5687 = !DILocation(line: 74, column: 5, scope: !5671)
!5688 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !528, file: !528, line: 77, type: !5689, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5691)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!126, !5643}
!5691 = !{!5692}
!5692 = !DILocalVariable(name: "type", arg: 1, scope: !5688, file: !528, line: 77, type: !5643)
!5693 = !DILocation(line: 0, scope: !5688)
!5694 = !DILocation(line: 79, column: 38, scope: !5688)
!5695 = !DILocation(line: 79, column: 5, scope: !5688)
!5696 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !528, file: !528, line: 213, type: !5697, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5700)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!5699, !5473}
!5699 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !528, line: 211, baseType: !180)
!5700 = !{!5701}
!5701 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5696, file: !528, line: 213, type: !5473)
!5702 = !DILocation(line: 0, scope: !5696)
!5703 = !DILocation(line: 215, column: 23, scope: !5696)
!5704 = !DILocation(line: 215, column: 12, scope: !5696)
!5705 = !DILocation(line: 215, column: 5, scope: !5696)
!5706 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !528, file: !528, line: 193, type: !181, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5707)
!5707 = !{!5708}
!5708 = !DILocalVariable(name: "context", scope: !5706, file: !528, line: 195, type: !5709)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!5710 = !DILocation(line: 196, column: 26, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5706, file: !528, line: 196, column: 9)
!5712 = !DILocation(line: 196, column: 14, scope: !5711)
!5713 = !DILocation(line: 196, column: 9, scope: !5706)
!5714 = !DILocation(line: 197, column: 36, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5711, file: !528, line: 196, column: 36)
!5716 = !DILocation(line: 197, column: 9, scope: !5715)
!5717 = !DILocation(line: 198, column: 5, scope: !5715)
!5718 = !DILocation(line: 199, column: 45, scope: !5706)
!5719 = !DILocation(line: 200, column: 1, scope: !5706)
!5720 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !528, file: !528, line: 202, type: !181, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5721)
!5721 = !{!5722}
!5722 = !DILocalVariable(name: "context", scope: !5720, file: !528, line: 204, type: !5709)
!5723 = !DILocation(line: 205, column: 26, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5720, file: !528, line: 205, column: 9)
!5725 = !DILocation(line: 205, column: 14, scope: !5724)
!5726 = !DILocation(line: 205, column: 9, scope: !5720)
!5727 = !DILocation(line: 206, column: 36, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5724, file: !528, line: 205, column: 36)
!5729 = !DILocation(line: 206, column: 9, scope: !5728)
!5730 = !DILocation(line: 207, column: 5, scope: !5728)
!5731 = !DILocation(line: 208, column: 45, scope: !5720)
!5732 = !DILocation(line: 209, column: 1, scope: !5720)
!5733 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !528, file: !528, line: 242, type: !5470, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5734)
!5734 = !{!5735}
!5735 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5733, file: !528, line: 242, type: !5473)
!5736 = !DILocation(line: 0, scope: !5733)
!5737 = !DILocation(line: 244, column: 9, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5733, file: !528, line: 244, column: 9)
!5739 = !DILocation(line: 244, column: 9, scope: !5733)
!5740 = !DILocation(line: 245, column: 9, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5738, file: !528, line: 244, column: 50)
!5742 = !DILocation(line: 246, column: 9, scope: !5741)
!5743 = !DILocation(line: 248, column: 5, scope: !5733)
!5744 = !DILocation(line: 249, column: 29, scope: !5733)
!5745 = !DILocation(line: 249, column: 44, scope: !5733)
!5746 = !DILocation(line: 250, column: 5, scope: !5733)
!5747 = !DILocation(line: 251, column: 1, scope: !5733)
!5748 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !528, file: !528, line: 253, type: !5749, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5751)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!5472, !136}
!5751 = !{!5752}
!5752 = !DILocalVariable(name: "ms", arg: 1, scope: !5748, file: !528, line: 253, type: !136)
!5753 = !DILocation(line: 0, scope: !5748)
!5754 = !DILocation(line: 255, column: 46, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5748, file: !528, line: 255, column: 9)
!5756 = !DILocation(line: 255, column: 61, scope: !5755)
!5757 = !DILocation(line: 255, column: 9, scope: !5748)
!5758 = !DILocation(line: 256, column: 9, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !528, line: 255, column: 82)
!5760 = !DILocation(line: 257, column: 5, scope: !5759)
!5761 = !DILocation(line: 258, column: 5, scope: !5748)
!5762 = !DILocation(line: 259, column: 57, scope: !5748)
!5763 = !DILocation(line: 260, column: 5, scope: !5748)
!5764 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !528, file: !528, line: 264, type: !5749, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5765)
!5765 = !{!5766}
!5766 = !DILocalVariable(name: "us", arg: 1, scope: !5764, file: !528, line: 264, type: !136)
!5767 = !DILocation(line: 0, scope: !5764)
!5768 = !DILocation(line: 266, column: 46, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5764, file: !528, line: 266, column: 9)
!5770 = !DILocation(line: 266, column: 61, scope: !5769)
!5771 = !DILocation(line: 266, column: 9, scope: !5764)
!5772 = !DILocation(line: 267, column: 9, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5769, file: !528, line: 266, column: 82)
!5774 = !DILocation(line: 268, column: 5, scope: !5773)
!5775 = !DILocation(line: 269, column: 5, scope: !5764)
!5776 = !DILocation(line: 270, column: 57, scope: !5764)
!5777 = !DILocation(line: 271, column: 5, scope: !5764)
!5778 = distinct !DISubprogram(name: "hal_uart_init", scope: !580, file: !580, line: 234, type: !5779, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5783)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!5781, !639, !5782}
!5781 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !583, line: 351, baseType: !582)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 32)
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5778, file: !580, line: 234, type: !639)
!5785 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5778, file: !580, line: 234, type: !5782)
!5786 = !DILocation(line: 0, scope: !5778)
!5787 = !DILocation(line: 236, column: 10, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5778, file: !580, line: 236, column: 9)
!5789 = !DILocation(line: 236, column: 9, scope: !5778)
!5790 = !DILocation(line: 239, column: 41, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5778, file: !580, line: 239, column: 9)
!5792 = !DILocation(line: 239, column: 9, scope: !5778)
!5793 = !DILocation(line: 242, column: 5, scope: !5778)
!5794 = !DILocation(line: 243, column: 45, scope: !5778)
!5795 = !DILocation(line: 243, column: 12, scope: !5778)
!5796 = !DILocation(line: 244, column: 12, scope: !5778)
!5797 = !DILocation(line: 243, column: 5, scope: !5778)
!5798 = !DILocation(line: 245, column: 58, scope: !5778)
!5799 = !DILocation(line: 246, column: 30, scope: !5778)
!5800 = !{i32 0, i32 2}
!5801 = !DILocation(line: 246, column: 5, scope: !5778)
!5802 = !DILocation(line: 247, column: 5, scope: !5778)
!5803 = !DILocation(line: 249, column: 31, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5778, file: !580, line: 249, column: 9)
!5805 = !DILocation(line: 249, column: 28, scope: !5804)
!5806 = !DILocation(line: 261, column: 1, scope: !5778)
!5807 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !580, file: !580, line: 93, type: !5808, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5812)
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!126, !639, !5810}
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 32)
!5811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!5812 = !{!5813, !5814}
!5813 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5807, file: !580, line: 93, type: !639)
!5814 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5807, file: !580, line: 93, type: !5810)
!5815 = !DILocation(line: 0, scope: !5807)
!5816 = !DILocation(line: 95, column: 10, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5807, file: !580, line: 95, column: 9)
!5818 = !DILocation(line: 95, column: 9, scope: !5807)
!5819 = !DILocation(line: 101, column: 23, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5807, file: !580, line: 101, column: 9)
!5821 = !DILocation(line: 101, column: 32, scope: !5820)
!5822 = !DILocation(line: 101, column: 60, scope: !5820)
!5823 = !DILocation(line: 102, column: 27, scope: !5820)
!5824 = !DILocation(line: 102, column: 34, scope: !5820)
!5825 = !DILocation(line: 102, column: 58, scope: !5820)
!5826 = !DILocation(line: 103, column: 27, scope: !5820)
!5827 = !DILocation(line: 103, column: 36, scope: !5820)
!5828 = !DILocation(line: 103, column: 59, scope: !5820)
!5829 = !DILocation(line: 104, column: 27, scope: !5820)
!5830 = !DILocation(line: 104, column: 39, scope: !5820)
!5831 = !DILocation(line: 101, column: 9, scope: !5807)
!5832 = !DILocation(line: 109, column: 1, scope: !5807)
!5833 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !580, file: !580, line: 139, type: !5834, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5836)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!3711, !639}
!5836 = !{!5837}
!5837 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5833, file: !580, line: 139, type: !639)
!5838 = !DILocation(line: 0, scope: !5833)
!5839 = !DILocation(line: 141, column: 24, scope: !5833)
!5840 = !DILocation(line: 141, column: 12, scope: !5833)
!5841 = !DILocation(line: 141, column: 5, scope: !5833)
!5842 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !580, file: !580, line: 593, type: !5843, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5845)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!5781, !639, !5810}
!5845 = !{!5846, !5847}
!5846 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5842, file: !580, line: 593, type: !639)
!5847 = !DILocalVariable(name: "config", arg: 2, scope: !5842, file: !580, line: 593, type: !5810)
!5848 = !DILocation(line: 0, scope: !5842)
!5849 = !DILocation(line: 595, column: 10, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5842, file: !580, line: 595, column: 9)
!5851 = !DILocation(line: 595, column: 9, scope: !5842)
!5852 = !DILocation(line: 598, column: 45, scope: !5842)
!5853 = !DILocation(line: 598, column: 12, scope: !5842)
!5854 = !DILocation(line: 598, column: 59, scope: !5842)
!5855 = !DILocation(line: 598, column: 5, scope: !5842)
!5856 = !DILocation(line: 599, column: 23, scope: !5842)
!5857 = !DILocation(line: 600, column: 59, scope: !5842)
!5858 = !DILocation(line: 600, column: 23, scope: !5842)
!5859 = !DILocation(line: 601, column: 62, scope: !5842)
!5860 = !DILocation(line: 601, column: 23, scope: !5842)
!5861 = !DILocation(line: 602, column: 57, scope: !5842)
!5862 = !DILocation(line: 602, column: 23, scope: !5842)
!5863 = !DILocation(line: 603, column: 58, scope: !5842)
!5864 = !DILocation(line: 603, column: 23, scope: !5842)
!5865 = !DILocation(line: 599, column: 5, scope: !5842)
!5866 = !DILocation(line: 604, column: 5, scope: !5842)
!5867 = !DILocation(line: 605, column: 1, scope: !5842)
!5868 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !580, file: !580, line: 145, type: !5869, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5871)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!136, !654}
!5871 = !{!5872, !5873}
!5872 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5868, file: !580, line: 145, type: !654)
!5873 = !DILocalVariable(name: "baudrate_tbl", scope: !5868, file: !580, line: 147, type: !5874)
!5874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !5875)
!5875 = !{!5876}
!5876 = !DISubrange(count: 13)
!5877 = !DILocation(line: 0, scope: !5868)
!5878 = !DILocation(line: 147, column: 14, scope: !5868)
!5879 = !DILocation(line: 151, column: 12, scope: !5868)
!5880 = !DILocation(line: 151, column: 5, scope: !5868)
!5881 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !580, file: !580, line: 155, type: !5882, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5884)
!5882 = !DISubroutineType(types: !5883)
!5883 = !{!307, !656}
!5884 = !{!5885, !5886}
!5885 = !DILocalVariable(name: "word_length", arg: 1, scope: !5881, file: !580, line: 155, type: !656)
!5886 = !DILocalVariable(name: "databit_tbl", scope: !5881, file: !580, line: 157, type: !5887)
!5887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !504)
!5888 = !DILocation(line: 0, scope: !5881)
!5889 = !DILocation(line: 157, column: 14, scope: !5881)
!5890 = !DILocation(line: 160, column: 12, scope: !5881)
!5891 = !DILocation(line: 160, column: 5, scope: !5881)
!5892 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !580, file: !580, line: 164, type: !5893, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5895)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{!307, !660}
!5895 = !{!5896, !5897}
!5896 = !DILocalVariable(name: "parity", arg: 1, scope: !5892, file: !580, line: 164, type: !660)
!5897 = !DILocalVariable(name: "parity_tbl", scope: !5892, file: !580, line: 166, type: !5898)
!5898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 80, elements: !508)
!5899 = !DILocation(line: 0, scope: !5892)
!5900 = !DILocation(line: 166, column: 14, scope: !5892)
!5901 = !DILocation(line: 169, column: 12, scope: !5892)
!5902 = !DILocation(line: 169, column: 5, scope: !5892)
!5903 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !580, file: !580, line: 173, type: !5904, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5906)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!307, !658}
!5906 = !{!5907, !5908}
!5907 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5903, file: !580, line: 173, type: !658)
!5908 = !DILocalVariable(name: "stopbit_tbl", scope: !5903, file: !580, line: 175, type: !5909)
!5909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 48, elements: !806)
!5910 = !DILocation(line: 0, scope: !5903)
!5911 = !DILocation(line: 175, column: 14, scope: !5903)
!5912 = !DILocation(line: 178, column: 12, scope: !5903)
!5913 = !DILocation(line: 178, column: 5, scope: !5903)
!5914 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !580, file: !580, line: 87, type: !5915, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5917)
!5915 = !DISubroutineType(types: !5916)
!5916 = !{!126, !639}
!5917 = !{!5918}
!5918 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5914, file: !580, line: 87, type: !639)
!5919 = !DILocation(line: 0, scope: !5914)
!5920 = !DILocation(line: 89, column: 23, scope: !5914)
!5921 = !DILocation(line: 89, column: 5, scope: !5914)
!5922 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !580, file: !580, line: 264, type: !5923, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5925)
!5923 = !DISubroutineType(types: !5924)
!5924 = !{!5781, !639}
!5925 = !{!5926}
!5926 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5922, file: !580, line: 264, type: !639)
!5927 = !DILocation(line: 0, scope: !5922)
!5928 = !DILocation(line: 266, column: 10, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5922, file: !580, line: 266, column: 9)
!5930 = !DILocation(line: 266, column: 9, scope: !5922)
!5931 = !DILocation(line: 269, column: 41, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5922, file: !580, line: 269, column: 9)
!5933 = !DILocation(line: 269, column: 62, scope: !5932)
!5934 = !DILocation(line: 269, column: 9, scope: !5922)
!5935 = !DILocation(line: 272, column: 5, scope: !5922)
!5936 = !DILocation(line: 275, column: 22, scope: !5922)
!5937 = !DILocation(line: 275, column: 5, scope: !5922)
!5938 = !DILocation(line: 284, column: 5, scope: !5922)
!5939 = !DILocation(line: 286, column: 5, scope: !5922)
!5940 = !DILocation(line: 287, column: 1, scope: !5922)
!5941 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !580, file: !580, line: 290, type: !5942, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5944)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{null, !639, !632}
!5944 = !{!5945, !5946, !5947}
!5945 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5941, file: !580, line: 290, type: !639)
!5946 = !DILocalVariable(name: "byte", arg: 2, scope: !5941, file: !580, line: 290, type: !632)
!5947 = !DILocalVariable(name: "int_no", scope: !5941, file: !580, line: 292, type: !3711)
!5948 = !DILocation(line: 0, scope: !5941)
!5949 = !DILocation(line: 292, column: 26, scope: !5941)
!5950 = !DILocation(line: 294, column: 16, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5941, file: !580, line: 294, column: 9)
!5952 = !DILocation(line: 294, column: 9, scope: !5941)
!5953 = !DILocation(line: 295, column: 9, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5951, file: !580, line: 294, column: 34)
!5955 = !DILocation(line: 296, column: 5, scope: !5954)
!5956 = !DILocation(line: 299, column: 1, scope: !5941)
!5957 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !580, file: !580, line: 302, type: !5958, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5960)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!136, !639, !3916, !136}
!5960 = !{!5961, !5962, !5963, !5964, !5965}
!5961 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5957, file: !580, line: 302, type: !639)
!5962 = !DILocalVariable(name: "data", arg: 2, scope: !5957, file: !580, line: 302, type: !3916)
!5963 = !DILocalVariable(name: "size", arg: 3, scope: !5957, file: !580, line: 302, type: !136)
!5964 = !DILocalVariable(name: "int_no", scope: !5957, file: !580, line: 304, type: !3711)
!5965 = !DILocalVariable(name: "index", scope: !5957, file: !580, line: 305, type: !136)
!5966 = !DILocation(line: 0, scope: !5957)
!5967 = !DILocation(line: 304, column: 26, scope: !5957)
!5968 = !DILocation(line: 307, column: 14, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5957, file: !580, line: 307, column: 9)
!5970 = !DILocation(line: 307, column: 9, scope: !5957)
!5971 = !DILocation(line: 313, column: 53, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5973, file: !580, line: 312, column: 48)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !580, line: 312, column: 9)
!5974 = distinct !DILexicalBlock(scope: !5975, file: !580, line: 312, column: 9)
!5975 = distinct !DILexicalBlock(scope: !5976, file: !580, line: 311, column: 33)
!5976 = distinct !DILexicalBlock(scope: !5957, file: !580, line: 311, column: 9)
!5977 = !DILocation(line: 313, column: 13, scope: !5972)
!5978 = !DILocation(line: 312, column: 44, scope: !5973)
!5979 = !DILocation(line: 312, column: 31, scope: !5973)
!5980 = !DILocation(line: 312, column: 9, scope: !5974)
!5981 = distinct !{!5981, !5980, !5982}
!5982 = !DILocation(line: 314, column: 9, scope: !5974)
!5983 = !DILocation(line: 318, column: 1, scope: !5957)
!5984 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !580, file: !580, line: 320, type: !5958, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5985)
!5985 = !{!5986, !5987, !5988, !5989, !5990, !5991}
!5986 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5984, file: !580, line: 320, type: !639)
!5987 = !DILocalVariable(name: "data", arg: 2, scope: !5984, file: !580, line: 320, type: !3916)
!5988 = !DILocalVariable(name: "size", arg: 3, scope: !5984, file: !580, line: 320, type: !136)
!5989 = !DILocalVariable(name: "actual_space", scope: !5984, file: !580, line: 322, type: !136)
!5990 = !DILocalVariable(name: "send_size", scope: !5984, file: !580, line: 322, type: !136)
!5991 = !DILocalVariable(name: "ch", scope: !5984, file: !580, line: 323, type: !1992)
!5992 = !DILocation(line: 0, scope: !5984)
!5993 = !DILocation(line: 322, column: 5, scope: !5984)
!5994 = !DILocation(line: 328, column: 10, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5984, file: !580, line: 328, column: 9)
!5996 = !DILocation(line: 328, column: 9, scope: !5984)
!5997 = !DILocation(line: 332, column: 15, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5984, file: !580, line: 332, column: 9)
!5999 = !DILocation(line: 332, column: 24, scope: !5998)
!6000 = !DILocation(line: 335, column: 42, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5984, file: !580, line: 335, column: 9)
!6002 = !DILocation(line: 335, column: 9, scope: !5984)
!6003 = !DILocation(line: 349, column: 30, scope: !5984)
!6004 = !DILocation(line: 349, column: 5, scope: !5984)
!6005 = !DILocation(line: 350, column: 9, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5984, file: !580, line: 350, column: 9)
!6007 = !DILocation(line: 350, column: 22, scope: !6006)
!6008 = !DILocation(line: 355, column: 5, scope: !5984)
!6009 = !DILocation(line: 357, column: 22, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5984, file: !580, line: 357, column: 9)
!6011 = !DILocation(line: 357, column: 19, scope: !6010)
!6012 = !DILocation(line: 357, column: 9, scope: !5984)
!6013 = !DILocation(line: 358, column: 14, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6010, file: !580, line: 357, column: 36)
!6015 = !{i32 14, i32 18}
!6016 = !DILocation(line: 359, column: 9, scope: !6014)
!6017 = !DILocation(line: 360, column: 5, scope: !6014)
!6018 = !DILocation(line: 362, column: 1, scope: !5984)
!6019 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !580, file: !580, line: 191, type: !6020, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6022)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!1992, !3711, !126}
!6022 = !{!6023, !6024, !6025}
!6023 = !DILocalVariable(name: "port", arg: 1, scope: !6019, file: !580, line: 191, type: !3711)
!6024 = !DILocalVariable(name: "is_rx", arg: 2, scope: !6019, file: !580, line: 191, type: !126)
!6025 = !DILocalVariable(name: "ch", scope: !6019, file: !580, line: 193, type: !1992)
!6026 = !DILocation(line: 0, scope: !6019)
!6027 = !DILocation(line: 195, column: 14, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6019, file: !580, line: 195, column: 9)
!6029 = !DILocation(line: 195, column: 9, scope: !6019)
!6030 = !DILocation(line: 209, column: 5, scope: !6019)
!6031 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !580, file: !580, line: 365, type: !6032, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6034)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{!632, !639}
!6034 = !{!6035, !6036}
!6035 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6031, file: !580, line: 365, type: !639)
!6036 = !DILocalVariable(name: "int_no", scope: !6031, file: !580, line: 367, type: !3711)
!6037 = !DILocation(line: 0, scope: !6031)
!6038 = !DILocation(line: 367, column: 26, scope: !6031)
!6039 = !DILocation(line: 369, column: 16, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6031, file: !580, line: 369, column: 9)
!6041 = !DILocation(line: 369, column: 9, scope: !6031)
!6042 = !DILocation(line: 370, column: 22, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6040, file: !580, line: 369, column: 33)
!6044 = !DILocation(line: 370, column: 9, scope: !6043)
!6045 = !DILocation(line: 0, scope: !6040)
!6046 = !DILocation(line: 375, column: 1, scope: !6031)
!6047 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !580, file: !580, line: 377, type: !6048, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!136, !639}
!6050 = !{!6051, !6052}
!6051 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6047, file: !580, line: 377, type: !639)
!6052 = !DILocalVariable(name: "int_no", scope: !6047, file: !580, line: 379, type: !3711)
!6053 = !DILocation(line: 0, scope: !6047)
!6054 = !DILocation(line: 379, column: 26, scope: !6047)
!6055 = !DILocation(line: 381, column: 16, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6047, file: !580, line: 381, column: 9)
!6057 = !DILocation(line: 381, column: 9, scope: !6047)
!6058 = !DILocation(line: 382, column: 16, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6056, file: !580, line: 381, column: 33)
!6060 = !DILocation(line: 382, column: 9, scope: !6059)
!6061 = !DILocation(line: 0, scope: !6056)
!6062 = !DILocation(line: 387, column: 1, scope: !6047)
!6063 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !580, file: !580, line: 390, type: !6064, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6066)
!6064 = !DISubroutineType(types: !6065)
!6065 = !{!136, !639, !679, !136}
!6066 = !{!6067, !6068, !6069, !6070, !6071}
!6067 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6063, file: !580, line: 390, type: !639)
!6068 = !DILocalVariable(name: "buffer", arg: 2, scope: !6063, file: !580, line: 390, type: !679)
!6069 = !DILocalVariable(name: "size", arg: 3, scope: !6063, file: !580, line: 390, type: !136)
!6070 = !DILocalVariable(name: "int_no", scope: !6063, file: !580, line: 392, type: !3711)
!6071 = !DILocalVariable(name: "index", scope: !6063, file: !580, line: 393, type: !136)
!6072 = !DILocation(line: 0, scope: !6063)
!6073 = !DILocation(line: 392, column: 26, scope: !6063)
!6074 = !DILocation(line: 395, column: 16, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6063, file: !580, line: 395, column: 9)
!6076 = !DILocation(line: 395, column: 9, scope: !6063)
!6077 = !DILocation(line: 401, column: 38, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !580, line: 400, column: 48)
!6079 = distinct !DILexicalBlock(scope: !6080, file: !580, line: 400, column: 9)
!6080 = distinct !DILexicalBlock(scope: !6081, file: !580, line: 400, column: 9)
!6081 = distinct !DILexicalBlock(scope: !6082, file: !580, line: 399, column: 33)
!6082 = distinct !DILexicalBlock(scope: !6063, file: !580, line: 399, column: 9)
!6083 = !DILocation(line: 401, column: 13, scope: !6078)
!6084 = !DILocation(line: 401, column: 27, scope: !6078)
!6085 = !DILocation(line: 400, column: 44, scope: !6079)
!6086 = !DILocation(line: 400, column: 31, scope: !6079)
!6087 = !DILocation(line: 400, column: 9, scope: !6080)
!6088 = distinct !{!6088, !6087, !6089}
!6089 = !DILocation(line: 402, column: 9, scope: !6080)
!6090 = !DILocation(line: 406, column: 1, scope: !6063)
!6091 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !580, file: !580, line: 408, type: !6064, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6092)
!6092 = !{!6093, !6094, !6095, !6096, !6097, !6098}
!6093 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6091, file: !580, line: 408, type: !639)
!6094 = !DILocalVariable(name: "buffer", arg: 2, scope: !6091, file: !580, line: 408, type: !679)
!6095 = !DILocalVariable(name: "size", arg: 3, scope: !6091, file: !580, line: 408, type: !136)
!6096 = !DILocalVariable(name: "actual_size", scope: !6091, file: !580, line: 410, type: !136)
!6097 = !DILocalVariable(name: "receive_size", scope: !6091, file: !580, line: 410, type: !136)
!6098 = !DILocalVariable(name: "ch", scope: !6091, file: !580, line: 411, type: !1992)
!6099 = !DILocation(line: 0, scope: !6091)
!6100 = !DILocation(line: 410, column: 5, scope: !6091)
!6101 = !DILocation(line: 413, column: 10, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6091, file: !580, line: 413, column: 9)
!6103 = !DILocation(line: 413, column: 9, scope: !6091)
!6104 = !DILocation(line: 417, column: 17, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6091, file: !580, line: 417, column: 9)
!6106 = !DILocation(line: 417, column: 26, scope: !6105)
!6107 = !DILocation(line: 421, column: 30, scope: !6091)
!6108 = !DILocation(line: 421, column: 5, scope: !6091)
!6109 = !DILocation(line: 422, column: 9, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6091, file: !580, line: 422, column: 9)
!6111 = !DILocation(line: 422, column: 21, scope: !6110)
!6112 = !DILocation(line: 427, column: 5, scope: !6091)
!6113 = !DILocation(line: 429, column: 25, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6091, file: !580, line: 429, column: 9)
!6115 = !DILocation(line: 429, column: 22, scope: !6114)
!6116 = !DILocation(line: 429, column: 9, scope: !6091)
!6117 = !DILocation(line: 430, column: 14, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6114, file: !580, line: 429, column: 38)
!6119 = !DILocation(line: 431, column: 9, scope: !6118)
!6120 = !DILocation(line: 432, column: 5, scope: !6118)
!6121 = !DILocation(line: 435, column: 1, scope: !6091)
!6122 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !580, file: !580, line: 438, type: !6048, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6123)
!6123 = !{!6124, !6125}
!6124 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6122, file: !580, line: 438, type: !639)
!6125 = !DILocalVariable(name: "length", scope: !6122, file: !580, line: 440, type: !136)
!6126 = !DILocation(line: 0, scope: !6122)
!6127 = !DILocation(line: 440, column: 5, scope: !6122)
!6128 = !DILocation(line: 440, column: 14, scope: !6122)
!6129 = !DILocation(line: 442, column: 10, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6122, file: !580, line: 442, column: 9)
!6131 = !DILocation(line: 442, column: 9, scope: !6122)
!6132 = !DILocation(line: 446, column: 30, scope: !6122)
!6133 = !DILocation(line: 446, column: 5, scope: !6122)
!6134 = !DILocation(line: 447, column: 12, scope: !6122)
!6135 = !DILocation(line: 447, column: 5, scope: !6122)
!6136 = !DILocation(line: 448, column: 1, scope: !6122)
!6137 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !580, file: !580, line: 451, type: !6048, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6138)
!6138 = !{!6139, !6140}
!6139 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6137, file: !580, line: 451, type: !639)
!6140 = !DILocalVariable(name: "length", scope: !6137, file: !580, line: 453, type: !136)
!6141 = !DILocation(line: 0, scope: !6137)
!6142 = !DILocation(line: 453, column: 5, scope: !6137)
!6143 = !DILocation(line: 453, column: 14, scope: !6137)
!6144 = !DILocation(line: 455, column: 10, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6137, file: !580, line: 455, column: 9)
!6146 = !DILocation(line: 455, column: 9, scope: !6137)
!6147 = !DILocation(line: 459, column: 30, scope: !6137)
!6148 = !DILocation(line: 459, column: 5, scope: !6137)
!6149 = !DILocation(line: 461, column: 12, scope: !6137)
!6150 = !DILocation(line: 461, column: 5, scope: !6137)
!6151 = !DILocation(line: 462, column: 1, scope: !6137)
!6152 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !580, file: !580, line: 543, type: !6153, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6155)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{!5781, !639, !667, !161}
!6155 = !{!6156, !6157, !6158, !6159}
!6156 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6152, file: !580, line: 543, type: !639)
!6157 = !DILocalVariable(name: "user_callback", arg: 2, scope: !6152, file: !580, line: 544, type: !667)
!6158 = !DILocalVariable(name: "user_data", arg: 3, scope: !6152, file: !580, line: 545, type: !161)
!6159 = !DILocalVariable(name: "ch", scope: !6152, file: !580, line: 547, type: !1992)
!6160 = !DILocation(line: 0, scope: !6152)
!6161 = !DILocation(line: 549, column: 10, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6152, file: !580, line: 549, column: 9)
!6163 = !DILocation(line: 549, column: 9, scope: !6152)
!6164 = !DILocation(line: 556, column: 53, scope: !6152)
!6165 = !DILocation(line: 556, column: 62, scope: !6152)
!6166 = !DILocation(line: 557, column: 53, scope: !6152)
!6167 = !DILocation(line: 557, column: 63, scope: !6152)
!6168 = !DILocation(line: 558, column: 37, scope: !6152)
!6169 = !DILocation(line: 558, column: 54, scope: !6152)
!6170 = !DILocation(line: 560, column: 39, scope: !6152)
!6171 = !DILocation(line: 561, column: 39, scope: !6152)
!6172 = !DILocation(line: 560, column: 5, scope: !6152)
!6173 = !DILocation(line: 562, column: 5, scope: !6152)
!6174 = !DILocation(line: 564, column: 44, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6152, file: !580, line: 564, column: 9)
!6176 = !DILocation(line: 564, column: 9, scope: !6152)
!6177 = !DILocation(line: 565, column: 9, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6175, file: !580, line: 564, column: 59)
!6179 = !DILocation(line: 566, column: 5, scope: !6178)
!6180 = !DILocation(line: 567, column: 9, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6175, file: !580, line: 566, column: 12)
!6182 = !DILocation(line: 569, column: 10, scope: !6152)
!6183 = !DILocation(line: 570, column: 5, scope: !6152)
!6184 = !DILocation(line: 578, column: 5, scope: !6152)
!6185 = !DILocation(line: 579, column: 1, scope: !6152)
!6186 = !DILocation(line: 0, scope: !636)
!6187 = !DILocation(line: 539, column: 12, scope: !636)
!6188 = !DILocation(line: 539, column: 5, scope: !636)
!6189 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !580, file: !580, line: 511, type: !181, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6190)
!6190 = !{!6191}
!6191 = !DILocalVariable(name: "callback_context", scope: !6192, file: !580, line: 514, type: !6194)
!6192 = distinct !DILexicalBlock(scope: !6193, file: !580, line: 513, column: 60)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !580, line: 513, column: 9)
!6194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 32)
!6195 = !DILocation(line: 513, column: 42, scope: !6193)
!6196 = !DILocation(line: 513, column: 9, scope: !6189)
!6197 = !DILocation(line: 515, column: 39, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6192, file: !580, line: 515, column: 13)
!6199 = !DILocation(line: 515, column: 18, scope: !6198)
!6200 = !DILocation(line: 515, column: 13, scope: !6192)
!6201 = !DILocation(line: 516, column: 89, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6198, file: !580, line: 515, column: 49)
!6203 = !DILocation(line: 516, column: 13, scope: !6202)
!6204 = !DILocation(line: 517, column: 9, scope: !6202)
!6205 = !DILocation(line: 519, column: 32, scope: !6189)
!6206 = !DILocation(line: 519, column: 5, scope: !6189)
!6207 = !DILocation(line: 520, column: 1, scope: !6189)
!6208 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !580, file: !580, line: 523, type: !181, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6209)
!6209 = !{!6210}
!6210 = !DILocalVariable(name: "callback_context", scope: !6211, file: !580, line: 526, type: !6194)
!6211 = distinct !DILexicalBlock(scope: !6212, file: !580, line: 525, column: 60)
!6212 = distinct !DILexicalBlock(scope: !6208, file: !580, line: 525, column: 9)
!6213 = !DILocation(line: 525, column: 42, scope: !6212)
!6214 = !DILocation(line: 525, column: 9, scope: !6208)
!6215 = !DILocation(line: 527, column: 39, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6211, file: !580, line: 527, column: 13)
!6217 = !DILocation(line: 527, column: 18, scope: !6216)
!6218 = !DILocation(line: 527, column: 13, scope: !6211)
!6219 = !DILocation(line: 528, column: 89, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6216, file: !580, line: 527, column: 49)
!6221 = !DILocation(line: 528, column: 13, scope: !6220)
!6222 = !DILocation(line: 529, column: 9, scope: !6220)
!6223 = !DILocation(line: 531, column: 32, scope: !6208)
!6224 = !DILocation(line: 531, column: 5, scope: !6208)
!6225 = !DILocation(line: 532, column: 1, scope: !6208)
!6226 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !580, file: !580, line: 464, type: !6227, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6229)
!6227 = !DISubroutineType(types: !6228)
!6228 = !{null, !3711, !126}
!6229 = !{!6230, !6231, !6232, !6233, !6234, !6236}
!6230 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6226, file: !580, line: 464, type: !3711)
!6231 = !DILocalVariable(name: "is_rx", arg: 2, scope: !6226, file: !580, line: 464, type: !126)
!6232 = !DILocalVariable(name: "avail_size", scope: !6226, file: !580, line: 466, type: !136)
!6233 = !DILocalVariable(name: "avail_space", scope: !6226, file: !580, line: 466, type: !136)
!6234 = !DILocalVariable(name: "dma_config", scope: !6226, file: !580, line: 467, type: !6235)
!6235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 32)
!6236 = !DILocalVariable(name: "ch", scope: !6226, file: !580, line: 468, type: !1992)
!6237 = !DILocation(line: 0, scope: !6226)
!6238 = !DILocation(line: 466, column: 5, scope: !6226)
!6239 = !DILocation(line: 471, column: 9, scope: !6226)
!6240 = !DILocation(line: 472, column: 9, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6242, file: !580, line: 471, column: 16)
!6242 = distinct !DILexicalBlock(scope: !6226, file: !580, line: 471, column: 9)
!6243 = !DILocation(line: 473, column: 13, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6241, file: !580, line: 473, column: 13)
!6245 = !DILocation(line: 473, column: 39, scope: !6244)
!6246 = !DILocation(line: 473, column: 24, scope: !6244)
!6247 = !DILocation(line: 473, column: 13, scope: !6241)
!6248 = !DILocation(line: 478, column: 9, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6242, file: !580, line: 477, column: 12)
!6250 = !DILocation(line: 479, column: 13, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6249, file: !580, line: 479, column: 13)
!6252 = !DILocation(line: 479, column: 40, scope: !6251)
!6253 = !DILocation(line: 479, column: 77, scope: !6251)
!6254 = !DILocation(line: 479, column: 63, scope: !6251)
!6255 = !DILocation(line: 479, column: 25, scope: !6251)
!6256 = !DILocation(line: 479, column: 13, scope: !6249)
!6257 = !DILocation(line: 0, scope: !6242)
!6258 = !DILocation(line: 484, column: 1, scope: !6226)
!6259 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !580, file: !580, line: 486, type: !181, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6260)
!6260 = !{!6261}
!6261 = !DILocalVariable(name: "callback_context", scope: !6262, file: !580, line: 490, type: !6194)
!6262 = distinct !DILexicalBlock(scope: !6263, file: !580, line: 489, column: 70)
!6263 = distinct !DILexicalBlock(scope: !6259, file: !580, line: 488, column: 9)
!6264 = !DILocation(line: 488, column: 43, scope: !6263)
!6265 = !DILocation(line: 488, column: 61, scope: !6263)
!6266 = !DILocation(line: 489, column: 14, scope: !6263)
!6267 = !DILocation(line: 489, column: 63, scope: !6263)
!6268 = !DILocation(line: 488, column: 9, scope: !6259)
!6269 = !DILocation(line: 491, column: 39, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6262, file: !580, line: 491, column: 13)
!6271 = !DILocation(line: 491, column: 18, scope: !6270)
!6272 = !DILocation(line: 491, column: 13, scope: !6262)
!6273 = !DILocation(line: 492, column: 88, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6270, file: !580, line: 491, column: 49)
!6275 = !DILocation(line: 492, column: 13, scope: !6274)
!6276 = !DILocation(line: 493, column: 9, scope: !6274)
!6277 = !DILocation(line: 495, column: 32, scope: !6259)
!6278 = !DILocation(line: 495, column: 5, scope: !6259)
!6279 = !DILocation(line: 496, column: 1, scope: !6259)
!6280 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !580, file: !580, line: 499, type: !181, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6281)
!6281 = !{!6282}
!6282 = !DILocalVariable(name: "callback_context", scope: !6283, file: !580, line: 503, type: !6194)
!6283 = distinct !DILexicalBlock(scope: !6284, file: !580, line: 502, column: 70)
!6284 = distinct !DILexicalBlock(scope: !6280, file: !580, line: 501, column: 9)
!6285 = !DILocation(line: 501, column: 43, scope: !6284)
!6286 = !DILocation(line: 501, column: 61, scope: !6284)
!6287 = !DILocation(line: 502, column: 14, scope: !6284)
!6288 = !DILocation(line: 502, column: 63, scope: !6284)
!6289 = !DILocation(line: 501, column: 9, scope: !6280)
!6290 = !DILocation(line: 504, column: 39, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6283, file: !580, line: 504, column: 13)
!6292 = !DILocation(line: 504, column: 18, scope: !6291)
!6293 = !DILocation(line: 504, column: 13, scope: !6283)
!6294 = !DILocation(line: 505, column: 88, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6291, file: !580, line: 504, column: 49)
!6296 = !DILocation(line: 505, column: 13, scope: !6295)
!6297 = !DILocation(line: 506, column: 9, scope: !6295)
!6298 = !DILocation(line: 508, column: 32, scope: !6280)
!6299 = !DILocation(line: 508, column: 5, scope: !6280)
!6300 = !DILocation(line: 509, column: 1, scope: !6280)
!6301 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !580, file: !580, line: 582, type: !6302, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6304)
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!5781, !639, !654}
!6304 = !{!6305, !6306}
!6305 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6301, file: !580, line: 582, type: !639)
!6306 = !DILocalVariable(name: "baudrate", arg: 2, scope: !6301, file: !580, line: 582, type: !654)
!6307 = !DILocation(line: 0, scope: !6301)
!6308 = !DILocation(line: 584, column: 11, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6301, file: !580, line: 584, column: 9)
!6310 = !DILocation(line: 584, column: 46, scope: !6309)
!6311 = !DILocation(line: 588, column: 37, scope: !6301)
!6312 = !DILocation(line: 588, column: 50, scope: !6301)
!6313 = !DILocation(line: 588, column: 59, scope: !6301)
!6314 = !DILocation(line: 589, column: 12, scope: !6301)
!6315 = !DILocation(line: 589, column: 5, scope: !6301)
!6316 = !DILocation(line: 590, column: 1, scope: !6301)
!6317 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !580, file: !580, line: 608, type: !6318, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6322)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!5781, !639, !6320}
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6321, size: 32)
!6321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!6322 = !{!6323, !6324}
!6323 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6317, file: !580, line: 608, type: !639)
!6324 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !6317, file: !580, line: 608, type: !6320)
!6325 = !DILocation(line: 0, scope: !6317)
!6326 = !DILocation(line: 610, column: 10, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6317, file: !580, line: 610, column: 9)
!6328 = !DILocation(line: 610, column: 9, scope: !6317)
!6329 = !DILocation(line: 614, column: 10, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6317, file: !580, line: 614, column: 9)
!6331 = !DILocation(line: 614, column: 9, scope: !6317)
!6332 = !DILocation(line: 618, column: 37, scope: !6317)
!6333 = !DILocation(line: 618, column: 56, scope: !6317)
!6334 = !DILocation(line: 619, column: 45, scope: !6317)
!6335 = !DILocation(line: 619, column: 12, scope: !6317)
!6336 = !DILocation(line: 620, column: 12, scope: !6317)
!6337 = !DILocation(line: 619, column: 5, scope: !6317)
!6338 = !DILocation(line: 621, column: 5, scope: !6317)
!6339 = !DILocation(line: 622, column: 5, scope: !6317)
!6340 = !DILocation(line: 623, column: 33, scope: !6317)
!6341 = !DILocation(line: 624, column: 50, scope: !6317)
!6342 = !DILocation(line: 625, column: 50, scope: !6317)
!6343 = !DILocation(line: 626, column: 50, scope: !6317)
!6344 = !DILocation(line: 627, column: 50, scope: !6317)
!6345 = !DILocation(line: 628, column: 33, scope: !6317)
!6346 = !DILocation(line: 623, column: 5, scope: !6317)
!6347 = !DILocation(line: 630, column: 50, scope: !6317)
!6348 = !DILocation(line: 631, column: 50, scope: !6317)
!6349 = !DILocation(line: 632, column: 50, scope: !6317)
!6350 = !DILocation(line: 629, column: 5, scope: !6317)
!6351 = !DILocation(line: 634, column: 5, scope: !6317)
!6352 = !DILocation(line: 635, column: 1, scope: !6317)
!6353 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !580, file: !580, line: 112, type: !6354, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6356)
!6354 = !DISubroutineType(types: !6355)
!6355 = !{!126, !6320}
!6356 = !{!6357}
!6357 = !DILocalVariable(name: "dma_config", arg: 1, scope: !6353, file: !580, line: 112, type: !6320)
!6358 = !DILocation(line: 0, scope: !6353)
!6359 = !DILocation(line: 114, column: 14, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6353, file: !580, line: 114, column: 9)
!6361 = !DILocation(line: 114, column: 9, scope: !6353)
!6362 = !DILocation(line: 117, column: 29, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6353, file: !580, line: 117, column: 9)
!6364 = !DILocation(line: 117, column: 14, scope: !6363)
!6365 = !DILocation(line: 117, column: 9, scope: !6353)
!6366 = !DILocation(line: 120, column: 21, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6353, file: !580, line: 120, column: 9)
!6368 = !DILocation(line: 120, column: 61, scope: !6367)
!6369 = !DILocation(line: 120, column: 47, scope: !6367)
!6370 = !DILocation(line: 120, column: 9, scope: !6353)
!6371 = !DILocation(line: 123, column: 61, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6353, file: !580, line: 123, column: 9)
!6373 = !DILocation(line: 123, column: 47, scope: !6372)
!6374 = !DILocation(line: 123, column: 9, scope: !6353)
!6375 = !DILocation(line: 126, column: 29, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6353, file: !580, line: 126, column: 9)
!6377 = !DILocation(line: 126, column: 14, scope: !6376)
!6378 = !DILocation(line: 126, column: 9, scope: !6353)
!6379 = !DILocation(line: 129, column: 21, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6353, file: !580, line: 129, column: 9)
!6381 = !DILocation(line: 129, column: 58, scope: !6380)
!6382 = !DILocation(line: 129, column: 44, scope: !6380)
!6383 = !DILocation(line: 129, column: 9, scope: !6353)
!6384 = !DILocation(line: 136, column: 1, scope: !6353)
!6385 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !580, file: !580, line: 182, type: !5672, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6386)
!6386 = !{!6387, !6388}
!6387 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !6385, file: !580, line: 182, type: !136)
!6388 = !DILocalVariable(name: "ticks_per_us", scope: !6385, file: !580, line: 184, type: !136)
!6389 = !DILocation(line: 0, scope: !6385)
!6390 = !DILocation(line: 186, column: 20, scope: !6385)
!6391 = !DILocation(line: 186, column: 39, scope: !6385)
!6392 = !DILocation(line: 188, column: 25, scope: !6385)
!6393 = !DILocation(line: 188, column: 5, scope: !6385)
!6394 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !580, file: !580, line: 637, type: !5923, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6395)
!6395 = !{!6396, !6397}
!6396 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6394, file: !580, line: 637, type: !639)
!6397 = !DILocalVariable(name: "int_no", scope: !6394, file: !580, line: 639, type: !3711)
!6398 = !DILocation(line: 0, scope: !6394)
!6399 = !DILocation(line: 641, column: 10, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6394, file: !580, line: 641, column: 9)
!6401 = !DILocation(line: 641, column: 9, scope: !6394)
!6402 = !DILocation(line: 645, column: 14, scope: !6394)
!6403 = !DILocation(line: 646, column: 5, scope: !6394)
!6404 = !DILocation(line: 648, column: 5, scope: !6394)
!6405 = !DILocation(line: 649, column: 1, scope: !6394)
!6406 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !580, file: !580, line: 651, type: !6407, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6409)
!6407 = !DISubroutineType(types: !6408)
!6408 = !{!5781, !639, !128, !128, !128}
!6409 = !{!6410, !6411, !6412, !6413, !6414}
!6410 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6406, file: !580, line: 651, type: !639)
!6411 = !DILocalVariable(name: "xon", arg: 2, scope: !6406, file: !580, line: 652, type: !128)
!6412 = !DILocalVariable(name: "xoff", arg: 3, scope: !6406, file: !580, line: 653, type: !128)
!6413 = !DILocalVariable(name: "escape_character", arg: 4, scope: !6406, file: !580, line: 654, type: !128)
!6414 = !DILocalVariable(name: "int_no", scope: !6406, file: !580, line: 656, type: !3711)
!6415 = !DILocation(line: 0, scope: !6406)
!6416 = !DILocation(line: 658, column: 10, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6406, file: !580, line: 658, column: 9)
!6418 = !DILocation(line: 658, column: 9, scope: !6406)
!6419 = !DILocation(line: 662, column: 14, scope: !6406)
!6420 = !DILocation(line: 663, column: 5, scope: !6406)
!6421 = !DILocation(line: 665, column: 5, scope: !6406)
!6422 = !DILocation(line: 666, column: 1, scope: !6406)
!6423 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !580, file: !580, line: 668, type: !5923, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6424)
!6424 = !{!6425, !6426}
!6425 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6423, file: !580, line: 668, type: !639)
!6426 = !DILocalVariable(name: "int_no", scope: !6423, file: !580, line: 670, type: !3711)
!6427 = !DILocation(line: 0, scope: !6423)
!6428 = !DILocation(line: 672, column: 10, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6423, file: !580, line: 672, column: 9)
!6430 = !DILocation(line: 672, column: 9, scope: !6423)
!6431 = !DILocation(line: 676, column: 14, scope: !6423)
!6432 = !DILocation(line: 677, column: 5, scope: !6423)
!6433 = !DILocation(line: 679, column: 5, scope: !6423)
!6434 = !DILocation(line: 680, column: 1, scope: !6423)
!6435 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !580, file: !580, line: 683, type: !6436, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6438)
!6436 = !DISubroutineType(types: !6437)
!6437 = !{!5781, !639, !136}
!6438 = !{!6439, !6440}
!6439 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6435, file: !580, line: 683, type: !639)
!6440 = !DILocalVariable(name: "timeout", arg: 2, scope: !6435, file: !580, line: 683, type: !136)
!6441 = !DILocation(line: 0, scope: !6435)
!6442 = !DILocation(line: 685, column: 10, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6435, file: !580, line: 685, column: 9)
!6444 = !DILocation(line: 685, column: 9, scope: !6435)
!6445 = !DILocation(line: 689, column: 19, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6435, file: !580, line: 689, column: 9)
!6447 = !DILocation(line: 0, scope: !6446)
!6448 = !DILocation(line: 696, column: 1, scope: !6435)
!6449 = distinct !DISubprogram(name: "__io_putchar", scope: !1215, file: !1215, line: 54, type: !6450, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !6452)
!6450 = !DISubroutineType(types: !6451)
!6451 = !{!53, !53}
!6452 = !{!6453}
!6453 = !DILocalVariable(name: "ch", arg: 1, scope: !6449, file: !1215, line: 54, type: !53)
!6454 = !DILocation(line: 0, scope: !6449)
!6455 = !DILocation(line: 61, column: 35, scope: !6449)
!6456 = !DILocation(line: 61, column: 5, scope: !6449)
!6457 = !DILocation(line: 62, column: 5, scope: !6449)
!6458 = distinct !DISubprogram(name: "main", scope: !1215, file: !1215, line: 155, type: !3687, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !1229)
!6459 = !DILocation(line: 158, column: 5, scope: !6458)
!6460 = !DILocation(line: 161, column: 5, scope: !6458)
!6461 = !DILocation(line: 319, column: 3, scope: !6462, inlinedAt: !6463)
!6462 = distinct !DISubprogram(name: "__enable_irq", scope: !1260, file: !1260, line: 317, type: !181, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !1229)
!6463 = distinct !DILocation(line: 164, column: 5, scope: !6458)
!6464 = !{i64 501309}
!6465 = !DILocation(line: 496, column: 3, scope: !6466, inlinedAt: !6467)
!6466 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1260, file: !1260, line: 494, type: !181, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !1229)
!6467 = distinct !DILocation(line: 165, column: 5, scope: !6458)
!6468 = !{i64 505584}
!6469 = !DILocation(line: 168, column: 5, scope: !6458)
!6470 = !DILocation(line: 169, column: 5, scope: !6458)
!6471 = !DILocation(line: 170, column: 5, scope: !6458)
!6472 = !DILocation(line: 172, column: 5, scope: !6458)
!6473 = !DILocation(line: 174, column: 5, scope: !6458)
!6474 = !DILocation(line: 174, column: 5, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6476, file: !1215, line: 174, column: 5)
!6476 = distinct !DILexicalBlock(scope: !6458, file: !1215, line: 174, column: 5)
!6477 = distinct !{!6477, !6478, !6479}
!6478 = !DILocation(line: 174, column: 5, scope: !6476)
!6479 = !DILocation(line: 174, column: 13, scope: !6476)
!6480 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1215, file: !1215, line: 92, type: !181, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !1229)
!6481 = !DILocation(line: 94, column: 5, scope: !6480)
!6482 = !DILocation(line: 95, column: 1, scope: !6480)
!6483 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1215, file: !1215, line: 103, type: !181, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !1229)
!6484 = !DILocation(line: 106, column: 5, scope: !6483)
!6485 = !DILocation(line: 107, column: 1, scope: !6483)
!6486 = distinct !DISubprogram(name: "adc_get_data_polling_example", scope: !1215, file: !1215, line: 129, type: !181, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !6487)
!6487 = !{!6488, !6489, !6490}
!6488 = !DILocalVariable(name: "adc_data", scope: !6486, file: !1215, line: 131, type: !136)
!6489 = !DILocalVariable(name: "adc_voltage", scope: !6486, file: !1215, line: 132, type: !136)
!6490 = !DILocalVariable(name: "test_times", scope: !6486, file: !1215, line: 133, type: !136)
!6491 = !DILocation(line: 131, column: 5, scope: !6486)
!6492 = !DILocation(line: 135, column: 5, scope: !6486)
!6493 = !DILocation(line: 137, column: 5, scope: !6486)
!6494 = !DILocation(line: 0, scope: !6486)
!6495 = !DILocation(line: 139, column: 5, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6486, file: !1215, line: 139, column: 5)
!6497 = !DILocation(line: 140, column: 9, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6499, file: !1215, line: 139, column: 57)
!6499 = distinct !DILexicalBlock(scope: !6496, file: !1215, line: 139, column: 5)
!6500 = !DILocation(line: 142, column: 9, scope: !6498)
!6501 = !DILocation(line: 143, column: 42, scope: !6498)
!6502 = !DILocation(line: 143, column: 23, scope: !6498)
!6503 = !DILocation(line: 144, column: 9, scope: !6498)
!6504 = !DILocation(line: 145, column: 72, scope: !6498)
!6505 = !DILocation(line: 145, column: 9, scope: !6498)
!6506 = !DILocation(line: 147, column: 9, scope: !6498)
!6507 = !DILocation(line: 139, column: 53, scope: !6499)
!6508 = !DILocation(line: 139, column: 37, scope: !6499)
!6509 = distinct !{!6509, !6495, !6510}
!6510 = !DILocation(line: 148, column: 5, scope: !6496)
!6511 = !DILocation(line: 150, column: 5, scope: !6486)
!6512 = !DILocation(line: 152, column: 5, scope: !6486)
!6513 = !DILocation(line: 153, column: 1, scope: !6486)
!6514 = distinct !DISubprogram(name: "adc_raw_to_voltage", scope: !1215, file: !1215, line: 116, type: !5672, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !6515)
!6515 = !{!6516, !6517}
!6516 = !DILocalVariable(name: "adc_data", arg: 1, scope: !6514, file: !1215, line: 116, type: !136)
!6517 = !DILocalVariable(name: "voltage", scope: !6514, file: !1215, line: 120, type: !136)
!6518 = !DILocation(line: 0, scope: !6514)
!6519 = !DILocation(line: 120, column: 34, scope: !6514)
!6520 = !DILocation(line: 120, column: 42, scope: !6514)
!6521 = !DILocation(line: 121, column: 5, scope: !6514)
!6522 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1215, file: !1215, line: 70, type: !181, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1214, retainedNodes: !6523)
!6523 = !{!6524}
!6524 = !DILocalVariable(name: "uart_config", scope: !6522, file: !1215, line: 72, type: !6525)
!6525 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !583, line: 378, baseType: !6526)
!6526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 373, size: 128, elements: !6527)
!6527 = !{!6528, !6529, !6530, !6531}
!6528 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !6526, file: !583, line: 374, baseType: !654, size: 32)
!6529 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !6526, file: !583, line: 375, baseType: !656, size: 32, offset: 32)
!6530 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !6526, file: !583, line: 376, baseType: !658, size: 32, offset: 64)
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6526, file: !583, line: 377, baseType: !660, size: 32, offset: 96)
!6532 = !DILocation(line: 72, column: 5, scope: !6522)
!6533 = !DILocation(line: 72, column: 23, scope: !6522)
!6534 = !DILocation(line: 74, column: 5, scope: !6522)
!6535 = !DILocation(line: 75, column: 5, scope: !6522)
!6536 = !DILocation(line: 76, column: 5, scope: !6522)
!6537 = !DILocation(line: 77, column: 5, scope: !6522)
!6538 = !DILocation(line: 80, column: 17, scope: !6522)
!6539 = !DILocation(line: 80, column: 26, scope: !6522)
!6540 = !DILocation(line: 81, column: 17, scope: !6522)
!6541 = !DILocation(line: 81, column: 29, scope: !6522)
!6542 = !DILocation(line: 82, column: 17, scope: !6522)
!6543 = !DILocation(line: 82, column: 26, scope: !6522)
!6544 = !DILocation(line: 83, column: 17, scope: !6522)
!6545 = !DILocation(line: 83, column: 24, scope: !6522)
!6546 = !DILocation(line: 84, column: 5, scope: !6522)
!6547 = !DILocation(line: 85, column: 1, scope: !6522)
!6548 = distinct !DISubprogram(name: "SysTick_Set", scope: !689, file: !689, line: 70, type: !5672, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !6549)
!6549 = !{!6550, !6551}
!6550 = !DILocalVariable(name: "ticks", arg: 1, scope: !6548, file: !689, line: 70, type: !136)
!6551 = !DILocalVariable(name: "val", scope: !6548, file: !689, line: 72, type: !136)
!6552 = !DILocation(line: 0, scope: !6548)
!6553 = !DILocation(line: 74, column: 16, scope: !6554)
!6554 = distinct !DILexicalBlock(scope: !6548, file: !689, line: 74, column: 9)
!6555 = !DILocation(line: 74, column: 21, scope: !6554)
!6556 = !DILocation(line: 74, column: 9, scope: !6548)
!6557 = !DILocation(line: 78, column: 20, scope: !6548)
!6558 = !DILocation(line: 80, column: 19, scope: !6548)
!6559 = !DILocation(line: 83, column: 20, scope: !6548)
!6560 = !DILocation(line: 84, column: 20, scope: !6548)
!6561 = !DILocation(line: 86, column: 19, scope: !6548)
!6562 = !DILocation(line: 88, column: 5, scope: !6548)
!6563 = !DILocation(line: 89, column: 1, scope: !6548)
!6564 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !689, file: !689, line: 98, type: !181, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1229)
!6565 = !DILocation(line: 100, column: 28, scope: !6564)
!6566 = !DILocation(line: 101, column: 1, scope: !6564)
!6567 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !689, file: !689, line: 110, type: !1261, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1229)
!6568 = !DILocation(line: 112, column: 12, scope: !6567)
!6569 = !DILocation(line: 112, column: 5, scope: !6567)
!6570 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !689, file: !689, line: 122, type: !181, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1229)
!6571 = !DILocation(line: 124, column: 23, scope: !6570)
!6572 = !DILocation(line: 124, column: 21, scope: !6570)
!6573 = !DILocation(line: 125, column: 1, scope: !6570)
!6574 = distinct !DISubprogram(name: "SystemInit", scope: !689, file: !689, line: 136, type: !181, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1229)
!6575 = !DILocation(line: 140, column: 16, scope: !6574)
!6576 = !DILocation(line: 144, column: 16, scope: !6574)
!6577 = !DILocation(line: 147, column: 16, scope: !6574)
!6578 = !DILocation(line: 150, column: 1, scope: !6574)
!6579 = distinct !DISubprogram(name: "CachePreInit", scope: !689, file: !689, line: 158, type: !181, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1229)
!6580 = !DILocation(line: 161, column: 22, scope: !6579)
!6581 = !DILocation(line: 164, column: 21, scope: !6579)
!6582 = !DILocation(line: 167, column: 21, scope: !6579)
!6583 = !DILocation(line: 170, column: 29, scope: !6579)
!6584 = !DILocation(line: 171, column: 33, scope: !6579)
!6585 = !DILocation(line: 173, column: 28, scope: !6579)
!6586 = !DILocation(line: 178, column: 30, scope: !6579)
!6587 = !DILocation(line: 192, column: 1, scope: !6579)
!6588 = distinct !DISubprogram(name: "_close", scope: !749, file: !749, line: 11, type: !6450, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6589)
!6589 = !{!6590}
!6590 = !DILocalVariable(name: "file", arg: 1, scope: !6588, file: !749, line: 11, type: !53)
!6591 = !DILocation(line: 0, scope: !6588)
!6592 = !DILocation(line: 13, column: 5, scope: !6588)
!6593 = distinct !DISubprogram(name: "_fstat", scope: !749, file: !749, line: 16, type: !6594, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6642)
!6594 = !DISubroutineType(types: !6595)
!6595 = !{!53, !53, !6596}
!6596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6597, size: 32)
!6597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !6598, line: 27, size: 704, elements: !6599)
!6598 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!6599 = !{!6600, !6603, !6606, !6609, !6612, !6615, !6618, !6619, !6622, !6632, !6633, !6634, !6637, !6640}
!6600 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !6597, file: !6598, line: 29, baseType: !6601, size: 16)
!6601 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !753, line: 161, baseType: !6602)
!6602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !795, line: 56, baseType: !770)
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !6597, file: !6598, line: 30, baseType: !6604, size: 16, offset: 16)
!6604 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !753, line: 139, baseType: !6605)
!6605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !795, line: 75, baseType: !250)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !6597, file: !6598, line: 31, baseType: !6607, size: 32, offset: 32)
!6607 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !753, line: 189, baseType: !6608)
!6608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !795, line: 90, baseType: !137)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !6597, file: !6598, line: 32, baseType: !6610, size: 16, offset: 64)
!6610 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !753, line: 194, baseType: !6611)
!6611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !795, line: 209, baseType: !250)
!6612 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !6597, file: !6598, line: 33, baseType: !6613, size: 16, offset: 80)
!6613 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !753, line: 165, baseType: !6614)
!6614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !795, line: 60, baseType: !250)
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !6597, file: !6598, line: 34, baseType: !6616, size: 16, offset: 96)
!6616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !753, line: 169, baseType: !6617)
!6617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !795, line: 63, baseType: !250)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !6597, file: !6598, line: 35, baseType: !6601, size: 16, offset: 112)
!6619 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !6597, file: !6598, line: 36, baseType: !6620, size: 32, offset: 128)
!6620 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !753, line: 157, baseType: !6621)
!6621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !795, line: 102, baseType: !813)
!6622 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !6597, file: !6598, line: 42, baseType: !6623, size: 128, offset: 192)
!6623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !6624, line: 47, size: 128, elements: !6625)
!6624 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!6625 = !{!6626, !6631}
!6626 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6623, file: !6624, line: 48, baseType: !6627, size: 64)
!6627 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6628, line: 42, baseType: !6629)
!6628 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!6629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !131, line: 200, baseType: !6630)
!6630 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !6623, file: !6624, line: 49, baseType: !796, size: 32, offset: 64)
!6632 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !6597, file: !6598, line: 43, baseType: !6623, size: 128, offset: 320)
!6633 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !6597, file: !6598, line: 44, baseType: !6623, size: 128, offset: 448)
!6634 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !6597, file: !6598, line: 45, baseType: !6635, size: 32, offset: 576)
!6635 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !753, line: 102, baseType: !6636)
!6636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !795, line: 34, baseType: !796)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !6597, file: !6598, line: 46, baseType: !6638, size: 32, offset: 608)
!6638 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !753, line: 97, baseType: !6639)
!6639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !795, line: 30, baseType: !796)
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !6597, file: !6598, line: 48, baseType: !6641, size: 64, offset: 640)
!6641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 64, elements: !498)
!6642 = !{!6643, !6644}
!6643 = !DILocalVariable(name: "file", arg: 1, scope: !6593, file: !749, line: 16, type: !53)
!6644 = !DILocalVariable(name: "st", arg: 2, scope: !6593, file: !749, line: 16, type: !6596)
!6645 = !DILocation(line: 0, scope: !6593)
!6646 = !DILocation(line: 18, column: 5, scope: !6593)
!6647 = distinct !DISubprogram(name: "_isatty", scope: !749, file: !749, line: 22, type: !6450, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6648)
!6648 = !{!6649}
!6649 = !DILocalVariable(name: "file", arg: 1, scope: !6647, file: !749, line: 22, type: !53)
!6650 = !DILocation(line: 0, scope: !6647)
!6651 = !DILocation(line: 24, column: 5, scope: !6647)
!6652 = distinct !DISubprogram(name: "_lseek", scope: !749, file: !749, line: 27, type: !6653, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6655)
!6653 = !DISubroutineType(types: !6654)
!6654 = !{!53, !53, !53, !53}
!6655 = !{!6656, !6657, !6658}
!6656 = !DILocalVariable(name: "file", arg: 1, scope: !6652, file: !749, line: 27, type: !53)
!6657 = !DILocalVariable(name: "ptr", arg: 2, scope: !6652, file: !749, line: 27, type: !53)
!6658 = !DILocalVariable(name: "dir", arg: 3, scope: !6652, file: !749, line: 27, type: !53)
!6659 = !DILocation(line: 0, scope: !6652)
!6660 = !DILocation(line: 29, column: 5, scope: !6652)
!6661 = distinct !DISubprogram(name: "_open", scope: !749, file: !749, line: 32, type: !6662, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6664)
!6662 = !DISubroutineType(types: !6663)
!6663 = !{!53, !788, !53, !53}
!6664 = !{!6665, !6666, !6667}
!6665 = !DILocalVariable(name: "name", arg: 1, scope: !6661, file: !749, line: 32, type: !788)
!6666 = !DILocalVariable(name: "flags", arg: 2, scope: !6661, file: !749, line: 32, type: !53)
!6667 = !DILocalVariable(name: "mode", arg: 3, scope: !6661, file: !749, line: 32, type: !53)
!6668 = !DILocation(line: 0, scope: !6661)
!6669 = !DILocation(line: 34, column: 5, scope: !6661)
!6670 = distinct !DISubprogram(name: "_read", scope: !749, file: !749, line: 37, type: !6671, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6673)
!6671 = !DISubroutineType(types: !6672)
!6672 = !{!53, !53, !754, !53}
!6673 = !{!6674, !6675, !6676}
!6674 = !DILocalVariable(name: "file", arg: 1, scope: !6670, file: !749, line: 37, type: !53)
!6675 = !DILocalVariable(name: "ptr", arg: 2, scope: !6670, file: !749, line: 37, type: !754)
!6676 = !DILocalVariable(name: "len", arg: 3, scope: !6670, file: !749, line: 37, type: !53)
!6677 = !DILocation(line: 0, scope: !6670)
!6678 = !DILocation(line: 39, column: 5, scope: !6670)
!6679 = distinct !DISubprogram(name: "_write", scope: !749, file: !749, line: 52, type: !6671, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6680)
!6680 = !{!6681, !6682, !6683, !6684}
!6681 = !DILocalVariable(name: "file", arg: 1, scope: !6679, file: !749, line: 52, type: !53)
!6682 = !DILocalVariable(name: "ptr", arg: 2, scope: !6679, file: !749, line: 52, type: !754)
!6683 = !DILocalVariable(name: "len", arg: 3, scope: !6679, file: !749, line: 52, type: !53)
!6684 = !DILocalVariable(name: "i", scope: !6679, file: !749, line: 54, type: !53)
!6685 = !DILocation(line: 0, scope: !6679)
!6686 = !DILocation(line: 56, column: 19, scope: !6687)
!6687 = distinct !DILexicalBlock(scope: !6688, file: !749, line: 56, column: 5)
!6688 = distinct !DILexicalBlock(scope: !6679, file: !749, line: 56, column: 5)
!6689 = !DILocation(line: 56, column: 5, scope: !6688)
!6690 = !DILocation(line: 57, column: 26, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6687, file: !749, line: 56, column: 31)
!6692 = !DILocation(line: 57, column: 22, scope: !6691)
!6693 = !DILocation(line: 57, column: 9, scope: !6691)
!6694 = !DILocation(line: 56, column: 27, scope: !6687)
!6695 = distinct !{!6695, !6689, !6696}
!6696 = !DILocation(line: 58, column: 5, scope: !6688)
!6697 = !DILocation(line: 60, column: 5, scope: !6679)
!6698 = !DILocation(line: 0, scope: !748)
!6699 = !DILocation(line: 70, column: 5, scope: !748)
!6700 = !{i64 1109}
!6701 = !DILocation(line: 72, column: 14, scope: !6702)
!6702 = distinct !DILexicalBlock(scope: !748, file: !749, line: 72, column: 9)
!6703 = !DILocation(line: 72, column: 11, scope: !6702)
!6704 = !DILocation(line: 72, column: 9, scope: !748)
!6705 = !DILocation(line: 78, column: 32, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !748, file: !749, line: 78, column: 9)
!6707 = !DILocation(line: 78, column: 15, scope: !6706)
!6708 = !DILocation(line: 89, column: 1, scope: !748)
!6709 = !DILocation(line: 78, column: 9, scope: !748)
!6710 = distinct !DISubprogram(name: "_exit", scope: !749, file: !749, line: 91, type: !898, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6711)
!6711 = !{!6712}
!6712 = !DILocalVariable(name: "__status", arg: 1, scope: !6710, file: !749, line: 91, type: !53)
!6713 = !DILocation(line: 0, scope: !6710)
!6714 = !DILocation(line: 93, column: 5, scope: !6710)
!6715 = !DILocation(line: 94, column: 5, scope: !6710)
!6716 = distinct !{!6716, !6715, !6717}
!6717 = !DILocation(line: 96, column: 5, scope: !6710)
!6718 = distinct !DISubprogram(name: "_kill", scope: !749, file: !749, line: 100, type: !6719, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6721)
!6719 = !DISubroutineType(types: !6720)
!6720 = !{!53, !53, !53}
!6721 = !{!6722, !6723}
!6722 = !DILocalVariable(name: "pid", arg: 1, scope: !6718, file: !749, line: 100, type: !53)
!6723 = !DILocalVariable(name: "sig", arg: 2, scope: !6718, file: !749, line: 100, type: !53)
!6724 = !DILocation(line: 0, scope: !6718)
!6725 = !DILocation(line: 102, column: 5, scope: !6718)
!6726 = !DILocation(line: 103, column: 5, scope: !6718)
!6727 = distinct !DISubprogram(name: "_getpid", scope: !749, file: !749, line: 107, type: !6728, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !1229)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!6730}
!6730 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !753, line: 174, baseType: !6731)
!6731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !795, line: 52, baseType: !53)
!6732 = !DILocation(line: 109, column: 5, scope: !6727)
!6733 = !DILocation(line: 110, column: 5, scope: !6727)
