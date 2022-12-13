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
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 08:07:16 GMT +00:00\00", align 1, !dbg !955
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !960
@hw_verno_str = dso_local local_unnamed_addr global [15 x i8] c"linkit7697_hdk\00", align 1, !dbg !964

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @DMA_ERROR_LISR() #0 !dbg !1231 {
  br label %1, !dbg !1233

1:                                                ; preds = %0, %1
  br label %1, !dbg !1233, !llvm.loop !1234
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Stop(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1236 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1240, metadata !DIExpression()), !dbg !1241
  %2 = zext i8 %0 to i32, !dbg !1242
  %3 = shl nuw nsw i32 %2, 8, !dbg !1242
  %4 = or i32 %3, -2097086440, !dbg !1242
  %5 = inttoptr i32 %4 to i32*, !dbg !1242
  store volatile i32 0, i32* %5, align 8, !dbg !1242
  %6 = or i32 %3, -2097086432, !dbg !1243
  %7 = inttoptr i32 %6 to i32*, !dbg !1243
  store volatile i32 32768, i32* %7, align 32, !dbg !1243
  ret void, !dbg !1244
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Run(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1245 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1247, metadata !DIExpression()), !dbg !1248
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1249
  %2 = zext i8 %0 to i32, !dbg !1250
  %3 = shl nuw nsw i32 %2, 8, !dbg !1250
  %4 = or i32 %3, -2097086440, !dbg !1250
  %5 = inttoptr i32 %4 to i32*, !dbg !1250
  store volatile i32 32768, i32* %5, align 8, !dbg !1250
  ret void, !dbg !1251
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_GetChannel(i32 noundef %0) local_unnamed_addr #3 !dbg !1252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1256, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8 -1, metadata !1258, metadata !DIExpression()), !dbg !1260
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1261, !srcloc !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1267, metadata !DIExpression()) #15, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %2, metadata !1259, metadata !DIExpression()), !dbg !1260
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1272, !srcloc !1275
  call void @llvm.dbg.value(metadata i8 3, metadata !1257, metadata !DIExpression()), !dbg !1260
  %3 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 3, metadata !1257, metadata !DIExpression()), !dbg !1260
  br label %4, !dbg !1276

4:                                                ; preds = %1, %13
  %5 = phi i32 [ 3, %1 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1257, metadata !DIExpression()), !dbg !1260
  %6 = shl nuw nsw i32 1, %5, !dbg !1278
  %7 = and i32 %3, %6, !dbg !1282
  %8 = icmp eq i32 %7, 0, !dbg !1283
  br i1 %8, label %13, label %9, !dbg !1284

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i8, !dbg !1260
  call void @llvm.dbg.value(metadata i8 %10, metadata !1258, metadata !DIExpression()), !dbg !1260
  %11 = xor i32 %6, -1, !dbg !1285
  %12 = and i32 %3, %11, !dbg !1287
  store i32 %12, i32* @DMA_Channel_Status, align 4, !dbg !1287
  br label %16, !dbg !1288

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %5, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %14, metadata !1257, metadata !DIExpression()), !dbg !1260
  %15 = icmp eq i32 %14, 12, !dbg !1290
  br i1 %15, label %16, label %4, !dbg !1276, !llvm.loop !1291

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ -1, %13 ], !dbg !1260
  call void @llvm.dbg.value(metadata i8 %17, metadata !1258, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i32 %2, metadata !1293, metadata !DIExpression()) #15, !dbg !1298
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1301, !srcloc !1302
  %18 = zext i8 %17 to i32, !dbg !1303
  %19 = add nsw i32 %18, -1, !dbg !1304
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %19, !dbg !1305
  store i32 %0, i32* %20, align 4, !dbg !1306
  ret i8 %17, !dbg !1307
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1308 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1310, metadata !DIExpression()), !dbg !1312
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1313, !srcloc !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1267, metadata !DIExpression()) #15, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %2, metadata !1311, metadata !DIExpression()), !dbg !1312
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1317, !srcloc !1275
  %3 = zext i8 %0 to i32, !dbg !1319
  %4 = shl nuw i32 1, %3, !dbg !1320
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1321
  %6 = or i32 %5, %4, !dbg !1321
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1321
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1322
  %7 = add nsw i32 %3, -1, !dbg !1323
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1324
  store i32 26, i32* %8, align 4, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %2, metadata !1293, metadata !DIExpression()) #15, !dbg !1326
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1329, !srcloc !1302
  ret void, !dbg !1330
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1335, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 %1, metadata !1336, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 -1, metadata !1338, metadata !DIExpression()), !dbg !1340
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1341, !srcloc !1270
  call void @llvm.dbg.value(metadata i32 %3, metadata !1267, metadata !DIExpression()) #15, !dbg !1344
  call void @llvm.dbg.value(metadata i32 %3, metadata !1339, metadata !DIExpression()), !dbg !1340
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1345, !srcloc !1275
  %4 = add i8 %1, 1, !dbg !1347
  call void @llvm.dbg.value(metadata i8 %4, metadata !1337, metadata !DIExpression()), !dbg !1340
  %5 = icmp ugt i8 %4, 2, !dbg !1348
  br i1 %5, label %20, label %6, !dbg !1350

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32, !dbg !1351
  %8 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1352
  %9 = shl nuw nsw i32 1, %7, !dbg !1354
  %10 = and i32 %8, %9, !dbg !1355
  %11 = icmp eq i32 %10, 0, !dbg !1356
  br i1 %11, label %15, label %12, !dbg !1357

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %4, metadata !1338, metadata !DIExpression()), !dbg !1340
  %13 = xor i32 %9, -1, !dbg !1358
  %14 = and i32 %8, %13, !dbg !1360
  store i32 %14, i32* @DMA_Channel_Status, align 4, !dbg !1360
  br label %15, !dbg !1361

15:                                               ; preds = %6, %12
  %16 = phi i8 [ %4, %12 ], [ -1, %6 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8 %16, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %3, metadata !1293, metadata !DIExpression()) #15, !dbg !1362
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1365, !srcloc !1302
  %17 = zext i8 %16 to i32, !dbg !1366
  %18 = add nsw i32 %17, -1, !dbg !1367
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %18, !dbg !1368
  store i32 %0, i32* %19, align 4, !dbg !1369
  br label %20, !dbg !1370

20:                                               ; preds = %2, %15
  %21 = phi i8 [ %16, %15 ], [ -1, %2 ], !dbg !1340
  ret i8 %21, !dbg !1371
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FullSize_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1372 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1374, metadata !DIExpression()), !dbg !1376
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1377, !srcloc !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1267, metadata !DIExpression()) #15, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %2, metadata !1375, metadata !DIExpression()), !dbg !1376
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1381, !srcloc !1275
  %3 = zext i8 %0 to i32, !dbg !1383
  %4 = shl nuw i32 1, %3, !dbg !1384
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1385
  %6 = or i32 %5, %4, !dbg !1385
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1385
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1386
  %7 = add nsw i32 %3, -1, !dbg !1387
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1388
  store i32 26, i32* %8, align 4, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %2, metadata !1293, metadata !DIExpression()) #15, !dbg !1390
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1393, !srcloc !1302
  ret void, !dbg !1394
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Config_Internal(i8 noundef zeroext %0, %struct.DMA_INPUT* noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 !dbg !1395 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct.DMA_INPUT* %1, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i1 %2, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i1 %3, metadata !1413, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i8 %4, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i1 %5, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i32 0, metadata !1416, metadata !DIExpression()), !dbg !1418
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %0) #14, !dbg !1419
  %7 = zext i8 %0 to i32, !dbg !1420
  %8 = icmp ugt i8 %0, 16, !dbg !1420
  br i1 %8, label %9, label %16, !dbg !1422

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1420
  %11 = shl nuw nsw i32 %7, 1, !dbg !1420
  %12 = add nsw i32 %11, -34, !dbg !1420
  %13 = shl nuw i32 1, %12, !dbg !1420
  %14 = and i32 %10, %13, !dbg !1420
  %15 = icmp eq i32 %14, 0, !dbg !1420
  br i1 %15, label %26, label %23, !dbg !1420

16:                                               ; preds = %6
  %17 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1420
  %18 = shl nuw nsw i32 %7, 1, !dbg !1420
  %19 = add nsw i32 %18, -2, !dbg !1420
  %20 = shl nuw i32 1, %19, !dbg !1420
  %21 = and i32 %17, %20, !dbg !1420
  %22 = icmp eq i32 %21, 0, !dbg !1420
  br i1 %22, label %31, label %23, !dbg !1422

23:                                               ; preds = %16, %9
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 187) #16, !dbg !1423
  br label %25, !dbg !1423

25:                                               ; preds = %25, %23
  br label %25, !dbg !1423, !llvm.loop !1427

26:                                               ; preds = %9
  %27 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1428
  %28 = shl i32 2, %12, !dbg !1428
  %29 = and i32 %27, %28, !dbg !1428
  %30 = icmp eq i32 %29, 0, !dbg !1428
  br i1 %30, label %39, label %36, !dbg !1428

31:                                               ; preds = %16
  %32 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1428
  %33 = shl i32 2, %19, !dbg !1428
  %34 = and i32 %32, %33, !dbg !1428
  %35 = icmp eq i32 %34, 0, !dbg !1428
  br i1 %35, label %39, label %36, !dbg !1430

36:                                               ; preds = %31, %26
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 191) #16, !dbg !1431
  br label %38, !dbg !1431

38:                                               ; preds = %38, %36
  br label %38, !dbg !1431, !llvm.loop !1435

39:                                               ; preds = %31, %26
  %40 = add nsw i32 %7, -1, !dbg !1436
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %40, !dbg !1436
  %42 = load i32, i32* %41, align 4, !dbg !1436
  %43 = icmp eq i32 %42, 26, !dbg !1436
  br i1 %43, label %44, label %47, !dbg !1438

44:                                               ; preds = %39
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 194) #16, !dbg !1439
  br label %46, !dbg !1439

46:                                               ; preds = %46, %44
  br label %46, !dbg !1439, !llvm.loop !1441

47:                                               ; preds = %39
  %48 = and i1 %2, %3, !dbg !1442
  br i1 %48, label %49, label %52, !dbg !1442

49:                                               ; preds = %47
  %50 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 197) #16, !dbg !1443
  br label %51, !dbg !1443

51:                                               ; preds = %51, %49
  br label %51, !dbg !1443, !llvm.loop !1448

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 2, !dbg !1449
  %54 = load i32, i32* %53, align 4, !dbg !1449
  %55 = icmp ugt i32 %54, 65535, !dbg !1449
  br i1 %55, label %56, label %59, !dbg !1451

56:                                               ; preds = %52
  %57 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 200) #16, !dbg !1452
  br label %58, !dbg !1452

58:                                               ; preds = %58, %56
  br label %58, !dbg !1452, !llvm.loop !1454

59:                                               ; preds = %52
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1455
  %60 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 0, !dbg !1456
  %61 = load i32, i32* %60, align 4, !dbg !1456
  switch i32 %61, label %252 [
    i32 0, label %62
    i32 1, label %94
    i32 2, label %126
    i32 3, label %140
    i32 4, label %196
  ], !dbg !1457

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1458
  br i1 %2, label %64, label %81, !dbg !1461

64:                                               ; preds = %62
  %65 = bitcast i8** %63 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1462
  %66 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1462
  %67 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 1, !dbg !1464
  call void @llvm.dbg.value(metadata i32 undef, metadata !1417, metadata !DIExpression()), !dbg !1418
  %68 = load i32, i32* %67, align 4, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %85, metadata !1417, metadata !DIExpression()), !dbg !1418
  %69 = shl i32 %68, 20, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %86, metadata !1416, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %70 = or i32 %69, 20, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %86, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %71 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 2, !dbg !1467
  %72 = load i32, i32* %71, align 4, !dbg !1467
  %73 = shl nuw nsw i32 %7, 8, !dbg !1467
  %74 = or i32 %73, -2097086464, !dbg !1467
  %75 = inttoptr i32 %74 to i32*, !dbg !1467
  store volatile i32 %72, i32* %75, align 256, !dbg !1467
  %76 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1470
  %77 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %76, i32 0, i32 3, !dbg !1470
  %78 = load i32, i32* %77, align 4, !dbg !1470
  %79 = or i32 %73, -2097086460, !dbg !1470
  %80 = inttoptr i32 %79 to i32*, !dbg !1470
  store volatile i32 %78, i32* %80, align 4, !dbg !1470
  br label %255, !dbg !1471

81:                                               ; preds = %62
  %82 = bitcast i8** %63 to %struct.DMA_HWMENU**, !dbg !1472
  %83 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %82, align 4, !dbg !1472
  %84 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 1, !dbg !1474
  call void @llvm.dbg.value(metadata i32 undef, metadata !1417, metadata !DIExpression()), !dbg !1418
  %85 = load i32, i32* %84, align 4, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %85, metadata !1417, metadata !DIExpression()), !dbg !1418
  %86 = shl i32 %85, 20, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %86, metadata !1416, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %86, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %87 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 2, !dbg !1475
  %88 = load i32, i32* %87, align 4, !dbg !1475
  %89 = shl nuw nsw i32 %7, 8, !dbg !1475
  %90 = or i32 %89, -2097086420, !dbg !1475
  %91 = inttoptr i32 %90 to i32*, !dbg !1475
  store volatile i32 %88, i32* %91, align 4, !dbg !1475
  %92 = select i1 %3, i32 52, i32 20, !dbg !1477
  %93 = or i32 %86, %92, !dbg !1477
  br label %255, !dbg !1477

94:                                               ; preds = %59
  %95 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1478
  br i1 %2, label %96, label %113, !dbg !1480

96:                                               ; preds = %94
  %97 = bitcast i8** %95 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1481
  %98 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1481
  %99 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 1, !dbg !1483
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1418
  %100 = load i32, i32* %99, align 4, !dbg !1478
  %101 = shl i32 %100, 20, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %118, metadata !1416, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %102 = or i32 %101, 262168, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %118, metadata !1416, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %103 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 2, !dbg !1485
  %104 = load i32, i32* %103, align 4, !dbg !1485
  %105 = shl nuw nsw i32 %7, 8, !dbg !1485
  %106 = or i32 %105, -2097086464, !dbg !1485
  %107 = inttoptr i32 %106 to i32*, !dbg !1485
  store volatile i32 %104, i32* %107, align 256, !dbg !1485
  %108 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1488
  %109 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %108, i32 0, i32 3, !dbg !1488
  %110 = load i32, i32* %109, align 4, !dbg !1488
  %111 = or i32 %105, -2097086460, !dbg !1488
  %112 = inttoptr i32 %111 to i32*, !dbg !1488
  store volatile i32 %110, i32* %112, align 4, !dbg !1488
  br label %255, !dbg !1489

113:                                              ; preds = %94
  %114 = bitcast i8** %95 to %struct.DMA_HWMENU**, !dbg !1490
  %115 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %114, align 4, !dbg !1490
  %116 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 1, !dbg !1492
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1418
  %117 = load i32, i32* %116, align 4, !dbg !1478
  %118 = shl i32 %117, 20, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %118, metadata !1416, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %118, metadata !1416, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %119 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 2, !dbg !1493
  %120 = load i32, i32* %119, align 4, !dbg !1493
  %121 = shl nuw nsw i32 %7, 8, !dbg !1493
  %122 = or i32 %121, -2097086420, !dbg !1493
  %123 = inttoptr i32 %122 to i32*, !dbg !1493
  store volatile i32 %120, i32* %123, align 4, !dbg !1493
  %124 = select i1 %3, i32 262200, i32 262168, !dbg !1495
  %125 = or i32 %118, %124, !dbg !1495
  br label %255, !dbg !1495

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1496
  %128 = bitcast i8** %127 to %struct.DMA_SWCOPYMENU**, !dbg !1496
  %129 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1496
  %130 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %129, i32 0, i32 0, !dbg !1496
  %131 = load i32, i32* %130, align 4, !dbg !1496
  %132 = shl nuw nsw i32 %7, 8, !dbg !1496
  %133 = or i32 %132, -2097086464, !dbg !1496
  %134 = inttoptr i32 %133 to i32*, !dbg !1496
  store volatile i32 %131, i32* %134, align 256, !dbg !1496
  %135 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1497
  %136 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %135, i32 0, i32 1, !dbg !1497
  %137 = load i32, i32* %136, align 4, !dbg !1497
  %138 = or i32 %132, -2097086460, !dbg !1497
  %139 = inttoptr i32 %138 to i32*, !dbg !1497
  store volatile i32 %137, i32* %139, align 4, !dbg !1497
  call void @llvm.dbg.value(metadata i32 12, metadata !1416, metadata !DIExpression()), !dbg !1418
  br label %255, !dbg !1498

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1499
  br i1 %2, label %142, label %171, !dbg !1501

142:                                              ; preds = %140
  %143 = bitcast i8** %141 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1502
  %144 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1502
  %145 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 1, !dbg !1504
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1418
  %146 = load i32, i32* %145, align 4, !dbg !1499
  %147 = shl i32 %146, 20, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %176, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %148 = or i32 %147, 131092, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %176, metadata !1416, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %149 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 4, !dbg !1506
  %150 = load i8*, i8** %149, align 4, !dbg !1506
  %151 = ptrtoint i8* %150 to i32, !dbg !1506
  %152 = shl nuw nsw i32 %7, 8, !dbg !1506
  %153 = or i32 %152, -2097086456, !dbg !1506
  %154 = inttoptr i32 %153 to i32*, !dbg !1506
  store volatile i32 %151, i32* %154, align 8, !dbg !1506
  %155 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1509
  %156 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %155, i32 0, i32 5, !dbg !1509
  %157 = load i8*, i8** %156, align 4, !dbg !1509
  %158 = ptrtoint i8* %157 to i32, !dbg !1509
  %159 = or i32 %152, -2097086452, !dbg !1509
  %160 = inttoptr i32 %159 to i32*, !dbg !1509
  store volatile i32 %158, i32* %160, align 4, !dbg !1509
  %161 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1510
  %162 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %161, i32 0, i32 2, !dbg !1510
  %163 = load i32, i32* %162, align 4, !dbg !1510
  %164 = or i32 %152, -2097086464, !dbg !1510
  %165 = inttoptr i32 %164 to i32*, !dbg !1510
  store volatile i32 %163, i32* %165, align 256, !dbg !1510
  %166 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1511
  %167 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %166, i32 0, i32 3, !dbg !1511
  %168 = load i32, i32* %167, align 4, !dbg !1511
  %169 = or i32 %152, -2097086460, !dbg !1511
  %170 = inttoptr i32 %169 to i32*, !dbg !1511
  store volatile i32 %168, i32* %170, align 4, !dbg !1511
  br label %255, !dbg !1512

171:                                              ; preds = %140
  %172 = bitcast i8** %141 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1513
  %173 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1513
  %174 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 1, !dbg !1515
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1418
  %175 = load i32, i32* %174, align 4, !dbg !1499
  %176 = shl i32 %175, 20, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %176, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %176, metadata !1416, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %177 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 3, !dbg !1516
  %178 = load i8*, i8** %177, align 4, !dbg !1516
  %179 = ptrtoint i8* %178 to i32, !dbg !1516
  %180 = shl nuw nsw i32 %7, 8, !dbg !1516
  %181 = or i32 %180, -2097086456, !dbg !1516
  %182 = inttoptr i32 %181 to i32*, !dbg !1516
  store volatile i32 %179, i32* %182, align 8, !dbg !1516
  %183 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1518
  %184 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %183, i32 0, i32 4, !dbg !1518
  %185 = load i8*, i8** %184, align 4, !dbg !1518
  %186 = ptrtoint i8* %185 to i32, !dbg !1518
  %187 = or i32 %180, -2097086452, !dbg !1518
  %188 = inttoptr i32 %187 to i32*, !dbg !1518
  store volatile i32 %186, i32* %188, align 4, !dbg !1518
  %189 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1519
  %190 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %189, i32 0, i32 2, !dbg !1519
  %191 = load i32, i32* %190, align 4, !dbg !1519
  %192 = or i32 %180, -2097086420, !dbg !1519
  %193 = inttoptr i32 %192 to i32*, !dbg !1519
  store volatile i32 %191, i32* %193, align 4, !dbg !1519
  %194 = select i1 %3, i32 131124, i32 131092, !dbg !1520
  %195 = or i32 %176, %194, !dbg !1520
  br label %255, !dbg !1520

196:                                              ; preds = %59
  %197 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1521
  br i1 %2, label %198, label %227, !dbg !1523

198:                                              ; preds = %196
  %199 = bitcast i8** %197 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1524
  %200 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1524
  %201 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 1, !dbg !1526
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1418
  %202 = load i32, i32* %201, align 4, !dbg !1521
  %203 = shl i32 %202, 20, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %232, metadata !1416, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %204 = or i32 %203, 458776, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %232, metadata !1416, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %205 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 4, !dbg !1528
  %206 = load i8*, i8** %205, align 4, !dbg !1528
  %207 = ptrtoint i8* %206 to i32, !dbg !1528
  %208 = shl nuw nsw i32 %7, 8, !dbg !1528
  %209 = or i32 %208, -2097086456, !dbg !1528
  %210 = inttoptr i32 %209 to i32*, !dbg !1528
  store volatile i32 %207, i32* %210, align 8, !dbg !1528
  %211 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1531
  %212 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %211, i32 0, i32 5, !dbg !1531
  %213 = load i8*, i8** %212, align 4, !dbg !1531
  %214 = ptrtoint i8* %213 to i32, !dbg !1531
  %215 = or i32 %208, -2097086452, !dbg !1531
  %216 = inttoptr i32 %215 to i32*, !dbg !1531
  store volatile i32 %214, i32* %216, align 4, !dbg !1531
  %217 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1532
  %218 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %217, i32 0, i32 2, !dbg !1532
  %219 = load i32, i32* %218, align 4, !dbg !1532
  %220 = or i32 %208, -2097086464, !dbg !1532
  %221 = inttoptr i32 %220 to i32*, !dbg !1532
  store volatile i32 %219, i32* %221, align 256, !dbg !1532
  %222 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1533
  %223 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %222, i32 0, i32 3, !dbg !1533
  %224 = load i32, i32* %223, align 4, !dbg !1533
  %225 = or i32 %208, -2097086460, !dbg !1533
  %226 = inttoptr i32 %225 to i32*, !dbg !1533
  store volatile i32 %224, i32* %226, align 4, !dbg !1533
  br label %255, !dbg !1534

227:                                              ; preds = %196
  %228 = bitcast i8** %197 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1535
  %229 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1535
  %230 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 1, !dbg !1537
  call void @llvm.dbg.value(metadata i32 undef, metadata !1416, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1418
  %231 = load i32, i32* %230, align 4, !dbg !1521
  %232 = shl i32 %231, 20, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %232, metadata !1416, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %232, metadata !1416, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1418
  %233 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 3, !dbg !1538
  %234 = load i8*, i8** %233, align 4, !dbg !1538
  %235 = ptrtoint i8* %234 to i32, !dbg !1538
  %236 = shl nuw nsw i32 %7, 8, !dbg !1538
  %237 = or i32 %236, -2097086456, !dbg !1538
  %238 = inttoptr i32 %237 to i32*, !dbg !1538
  store volatile i32 %235, i32* %238, align 8, !dbg !1538
  %239 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1540
  %240 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %239, i32 0, i32 4, !dbg !1540
  %241 = load i8*, i8** %240, align 4, !dbg !1540
  %242 = ptrtoint i8* %241 to i32, !dbg !1540
  %243 = or i32 %236, -2097086452, !dbg !1540
  %244 = inttoptr i32 %243 to i32*, !dbg !1540
  store volatile i32 %242, i32* %244, align 4, !dbg !1540
  %245 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1541
  %246 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %245, i32 0, i32 2, !dbg !1541
  %247 = load i32, i32* %246, align 4, !dbg !1541
  %248 = or i32 %236, -2097086420, !dbg !1541
  %249 = inttoptr i32 %248 to i32*, !dbg !1541
  store volatile i32 %247, i32* %249, align 4, !dbg !1541
  %250 = select i1 %3, i32 458808, i32 458776, !dbg !1542
  %251 = or i32 %232, %250, !dbg !1542
  br label %255, !dbg !1542

252:                                              ; preds = %59
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 410) #16, !dbg !1543
  br label %254, !dbg !1543

254:                                              ; preds = %254, %252
  br label %254, !dbg !1543, !llvm.loop !1546

255:                                              ; preds = %227, %171, %113, %81, %198, %142, %96, %64, %126
  %256 = phi i32 [ %204, %198 ], [ %148, %142 ], [ 12, %126 ], [ %102, %96 ], [ %70, %64 ], [ %93, %81 ], [ %125, %113 ], [ %195, %171 ], [ %251, %227 ], !dbg !1547
  call void @llvm.dbg.value(metadata i32 %256, metadata !1416, metadata !DIExpression()), !dbg !1418
  %257 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 1, !dbg !1548
  %258 = load i32, i32* %257, align 4, !dbg !1548
  switch i32 %258, label %328 [
    i32 0, label %259
    i32 1, label %285
    i32 2, label %309
  ], !dbg !1549

259:                                              ; preds = %255
  %260 = load i32, i32* %60, align 4, !dbg !1550
  %261 = icmp eq i32 %260, 2, !dbg !1553
  br i1 %261, label %331, label %262, !dbg !1554

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1555
  %264 = bitcast i8** %263 to %struct.DMA_TMODE**, !dbg !1555
  %265 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %264, align 4, !dbg !1555
  %266 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 0, !dbg !1558
  %267 = load i8, i8* %266, align 1, !dbg !1558, !range !1559
  %268 = icmp eq i8 %267, 0, !dbg !1558
  br i1 %268, label %331, label %269, !dbg !1560

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 1, !dbg !1561
  %271 = load i8, i8* %270, align 1, !dbg !1561
  %272 = icmp ult i8 %271, 16, !dbg !1562
  br i1 %272, label %275, label %273, !dbg !1563

273:                                              ; preds = %269
  %274 = or i32 %256, 1536, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %274, metadata !1416, metadata !DIExpression()), !dbg !1418
  br label %331, !dbg !1566

275:                                              ; preds = %269
  %276 = and i8 %271, 8, !dbg !1567
  %277 = icmp eq i8 %276, 0, !dbg !1567
  br i1 %277, label %280, label %278, !dbg !1569

278:                                              ; preds = %275
  %279 = or i32 %256, 1024, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %279, metadata !1416, metadata !DIExpression()), !dbg !1418
  br label %331, !dbg !1572

280:                                              ; preds = %275
  %281 = and i8 %271, 4, !dbg !1573
  %282 = zext i8 %281 to i32, !dbg !1575
  %283 = shl nuw nsw i32 %282, 7, !dbg !1575
  %284 = or i32 %283, %256, !dbg !1575
  br label %331, !dbg !1575

285:                                              ; preds = %255
  %286 = load i32, i32* %60, align 4, !dbg !1576
  %287 = icmp eq i32 %286, 2, !dbg !1578
  br i1 %287, label %306, label %288, !dbg !1579

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1580
  %290 = bitcast i8** %289 to %struct.DMA_TMODE**, !dbg !1580
  %291 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %290, align 4, !dbg !1580
  %292 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 0, !dbg !1583
  %293 = load i8, i8* %292, align 1, !dbg !1583, !range !1559
  %294 = icmp eq i8 %293, 0, !dbg !1583
  br i1 %294, label %306, label %295, !dbg !1584

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 1, !dbg !1585
  %297 = load i8, i8* %296, align 1, !dbg !1585
  %298 = icmp ult i8 %297, 8, !dbg !1586
  br i1 %298, label %301, label %299, !dbg !1587

299:                                              ; preds = %295
  %300 = or i32 %256, 1024, !dbg !1588
  call void @llvm.dbg.value(metadata i32 %300, metadata !1416, metadata !DIExpression()), !dbg !1418
  br label %306, !dbg !1590

301:                                              ; preds = %295
  %302 = and i8 %297, 4, !dbg !1591
  %303 = zext i8 %302 to i32, !dbg !1593
  %304 = shl nuw nsw i32 %303, 7, !dbg !1593
  %305 = or i32 %304, %256, !dbg !1593
  br label %306, !dbg !1593

306:                                              ; preds = %288, %301, %299, %285
  %307 = phi i32 [ %300, %299 ], [ %256, %285 ], [ %305, %301 ], [ %256, %288 ], !dbg !1418
  call void @llvm.dbg.value(metadata i32 %307, metadata !1416, metadata !DIExpression()), !dbg !1418
  %308 = or i32 %307, 1, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %308, metadata !1416, metadata !DIExpression()), !dbg !1418
  br label %331, !dbg !1595

309:                                              ; preds = %255
  %310 = load i32, i32* %60, align 4, !dbg !1596
  %311 = icmp eq i32 %310, 2, !dbg !1598
  br i1 %311, label %325, label %312, !dbg !1599

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1600
  %314 = bitcast i8** %313 to %struct.DMA_TMODE**, !dbg !1600
  %315 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %314, align 4, !dbg !1600
  %316 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 0, !dbg !1603
  %317 = load i8, i8* %316, align 1, !dbg !1603, !range !1559
  %318 = icmp eq i8 %317, 0, !dbg !1603
  br i1 %318, label %325, label %319, !dbg !1604

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 1, !dbg !1605
  %321 = load i8, i8* %320, align 1, !dbg !1605
  %322 = icmp ult i8 %321, 4, !dbg !1606
  %323 = or i32 %256, 512
  %324 = select i1 %322, i32 %256, i32 %323, !dbg !1607
  br label %325, !dbg !1607

325:                                              ; preds = %319, %312, %309
  %326 = phi i32 [ %256, %312 ], [ %256, %309 ], [ %324, %319 ], !dbg !1418
  call void @llvm.dbg.value(metadata i32 %326, metadata !1416, metadata !DIExpression()), !dbg !1418
  %327 = or i32 %326, 2, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %327, metadata !1416, metadata !DIExpression()), !dbg !1418
  br label %331, !dbg !1609

328:                                              ; preds = %255
  %329 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 486) #16, !dbg !1610
  br label %330, !dbg !1610

330:                                              ; preds = %330, %328
  br label %330, !dbg !1610, !llvm.loop !1613

331:                                              ; preds = %262, %280, %259, %278, %273, %325, %306
  %332 = phi i32 [ %327, %325 ], [ %308, %306 ], [ %274, %273 ], [ %279, %278 ], [ %256, %259 ], [ %284, %280 ], [ %256, %262 ], !dbg !1418
  call void @llvm.dbg.value(metadata i32 %332, metadata !1416, metadata !DIExpression()), !dbg !1418
  %333 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 4, !dbg !1614
  %334 = load void ()*, void ()** %333, align 4, !dbg !1614
  %335 = icmp eq void ()* %334, null, !dbg !1616
  br i1 %335, label %339, label %336, !dbg !1617

336:                                              ; preds = %331
  %337 = or i32 %332, 32768, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %337, metadata !1416, metadata !DIExpression()), !dbg !1418
  %338 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %40, !dbg !1620
  store void ()* %334, void ()** %338, align 4, !dbg !1621
  br label %339, !dbg !1622

339:                                              ; preds = %336, %331
  %340 = phi i32 [ %337, %336 ], [ %332, %331 ], !dbg !1418
  call void @llvm.dbg.value(metadata i32 %340, metadata !1416, metadata !DIExpression()), !dbg !1418
  %341 = shl nuw nsw i32 %7, 8, !dbg !1623
  %342 = or i32 %341, -2097086444, !dbg !1623
  %343 = inttoptr i32 %342 to i32*, !dbg !1623
  store volatile i32 %340, i32* %343, align 4, !dbg !1623
  %344 = load i32, i32* %53, align 4, !dbg !1624
  %345 = or i32 %341, -2097086448, !dbg !1624
  %346 = inttoptr i32 %345 to i32*, !dbg !1624
  store volatile i32 %344, i32* %346, align 16, !dbg !1624
  br i1 %5, label %347, label %350, !dbg !1625

347:                                              ; preds = %339
  %348 = or i32 %341, -2097086440, !dbg !1626
  %349 = inttoptr i32 %348 to i32*, !dbg !1626
  store volatile i32 32768, i32* %349, align 8, !dbg !1626
  br label %350, !dbg !1629

350:                                              ; preds = %347, %339
  ret void, !dbg !1630
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Enable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1631 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1633, metadata !DIExpression()), !dbg !1634
  %2 = zext i8 %0 to i32, !dbg !1635
  %3 = add nsw i32 %2, -1, !dbg !1636
  %4 = shl nuw i32 1, %3, !dbg !1637
  store volatile i32 %4, i32* inttoptr (i32 -2097151976 to i32*), align 8, !dbg !1638
  ret void, !dbg !1639
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_Register(i8 noundef zeroext %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !1640 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1644, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1645, metadata !DIExpression()), !dbg !1646
  %3 = zext i8 %0 to i32, !dbg !1647
  %4 = add i8 %0, -12, !dbg !1649
  %5 = icmp ult i8 %4, -11, !dbg !1649
  br i1 %5, label %6, label %8, !dbg !1649

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.DMA_Register, i32 0, i32 0), i32 noundef %3) #16, !dbg !1650
  br label %11, !dbg !1652

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1, !dbg !1653
  %10 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %9, !dbg !1654
  store void ()* %1, void ()** %10, align 4, !dbg !1655
  br label %11, !dbg !1656

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ], !dbg !1646
  ret i32 %12, !dbg !1657
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_UnRegister(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1658 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1662, metadata !DIExpression()), !dbg !1663
  %2 = zext i8 %0 to i32, !dbg !1664
  %3 = add i8 %0, -12, !dbg !1666
  %4 = icmp ult i8 %3, -11, !dbg !1666
  br i1 %4, label %5, label %7, !dbg !1666

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.DMA_UnRegister, i32 0, i32 0), i32 noundef %2) #16, !dbg !1667
  br label %10, !dbg !1669

7:                                                ; preds = %1
  %8 = add nsw i32 %2, -1, !dbg !1670
  %9 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %8, !dbg !1671
  store void ()* @DMA_ERROR_LISR, void ()** %9, align 4, !dbg !1672
  br label %10, !dbg !1673

10:                                               ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ 0, %7 ], !dbg !1663
  ret i32 %11, !dbg !1674
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_LISR(i32 %0) #3 !dbg !1675 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1677, metadata !DIExpression()), !dbg !1680
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 1) #16, !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1678, metadata !DIExpression()), !dbg !1680
  br label %3, !dbg !1682

3:                                                ; preds = %1, %25
  %4 = phi i32 [ 0, %1 ], [ %5, %25 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1678, metadata !DIExpression()), !dbg !1680
  %5 = add nuw nsw i32 %4, 1, !dbg !1684
  %6 = shl nuw nsw i32 %5, 8, !dbg !1684
  %7 = add nuw nsw i32 %6, -2097086436, !dbg !1684
  %8 = inttoptr i32 %7 to i32*, !dbg !1684
  %9 = load volatile i32, i32* %8, align 4, !dbg !1684
  %10 = and i32 %9, 32768, !dbg !1688
  %11 = icmp eq i32 %10, 0, !dbg !1688
  br i1 %11, label %25, label %12, !dbg !1689

12:                                               ; preds = %3
  %13 = trunc i32 %5 to i8, !dbg !1690
  tail call void @DMA_Stop(i8 noundef zeroext %13) #14, !dbg !1692
  %14 = add nuw nsw i32 %6, -2097086432, !dbg !1693
  %15 = inttoptr i32 %14 to i32*, !dbg !1693
  store volatile i32 32768, i32* %15, align 32, !dbg !1693
  %16 = shl nuw nsw i32 %4, 1
  %17 = shl nuw i32 1, %16
  br label %18, !dbg !1694

18:                                               ; preds = %18, %12
  %19 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1695
  %20 = and i32 %19, %17, !dbg !1694
  %21 = icmp eq i32 %20, 0, !dbg !1694
  br i1 %21, label %22, label %18, !dbg !1694, !llvm.loop !1696

22:                                               ; preds = %18
  tail call void @DMA_Clock_Disable(i8 noundef zeroext %13) #14, !dbg !1698
  %23 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %4, !dbg !1699
  %24 = load void ()*, void ()** %23, align 4, !dbg !1699
  tail call void %24() #16, !dbg !1699
  br label %25, !dbg !1700

25:                                               ; preds = %3, %22
  call void @llvm.dbg.value(metadata i32 %5, metadata !1678, metadata !DIExpression()), !dbg !1680
  %26 = icmp eq i32 %5, 11, !dbg !1701
  br i1 %26, label %27, label %3, !dbg !1682, !llvm.loop !1702

27:                                               ; preds = %25, %87
  %28 = phi i32 [ %88, %87 ], [ 12, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1678, metadata !DIExpression()), !dbg !1680
  %29 = shl nuw nsw i32 %28, 8, !dbg !1704
  %30 = or i32 %29, -2097086444, !dbg !1704
  %31 = inttoptr i32 %30 to i32*, !dbg !1704
  %32 = load volatile i32, i32* %31, align 4, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %32, metadata !1679, metadata !DIExpression()), !dbg !1680
  %33 = or i32 %29, -2097086436, !dbg !1708
  %34 = inttoptr i32 %33 to i32*, !dbg !1708
  %35 = load volatile i32, i32* %34, align 4, !dbg !1708
  %36 = and i32 %35, 32768, !dbg !1710
  %37 = icmp eq i32 %36, 0, !dbg !1710
  br i1 %37, label %87, label %38, !dbg !1711

38:                                               ; preds = %27
  %39 = lshr i32 %32, 20, !dbg !1712
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
  ], !dbg !1714

40:                                               ; preds = %38
  %41 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1715
  %42 = icmp eq void ()* %41, null, !dbg !1718
  br i1 %42, label %84, label %82, !dbg !1719

43:                                               ; preds = %38
  %44 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1720
  %45 = icmp eq void ()* %44, null, !dbg !1722
  br i1 %45, label %84, label %82, !dbg !1723

46:                                               ; preds = %38
  %47 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1724
  %48 = icmp eq void ()* %47, null, !dbg !1726
  br i1 %48, label %84, label %82, !dbg !1727

49:                                               ; preds = %38
  %50 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1728
  %51 = icmp eq void ()* %50, null, !dbg !1730
  br i1 %51, label %84, label %82, !dbg !1731

52:                                               ; preds = %38
  %53 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1732
  %54 = icmp eq void ()* %53, null, !dbg !1734
  br i1 %54, label %84, label %82, !dbg !1735

55:                                               ; preds = %38
  %56 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1736
  %57 = icmp eq void ()* %56, null, !dbg !1738
  br i1 %57, label %84, label %82, !dbg !1739

58:                                               ; preds = %38
  %59 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1740
  %60 = icmp eq void ()* %59, null, !dbg !1742
  br i1 %60, label %84, label %82, !dbg !1743

61:                                               ; preds = %38
  %62 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1744
  %63 = icmp eq void ()* %62, null, !dbg !1746
  br i1 %63, label %84, label %82, !dbg !1747

64:                                               ; preds = %38
  %65 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1748
  %66 = icmp eq void ()* %65, null, !dbg !1750
  br i1 %66, label %84, label %82, !dbg !1751

67:                                               ; preds = %38
  %68 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1752
  %69 = icmp eq void ()* %68, null, !dbg !1754
  br i1 %69, label %84, label %82, !dbg !1755

70:                                               ; preds = %38
  %71 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1756
  %72 = icmp eq void ()* %71, null, !dbg !1758
  br i1 %72, label %84, label %82, !dbg !1759

73:                                               ; preds = %38
  %74 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1760
  %75 = icmp eq void ()* %74, null, !dbg !1762
  br i1 %75, label %84, label %82, !dbg !1763

76:                                               ; preds = %38
  %77 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1764
  %78 = icmp eq void ()* %77, null, !dbg !1766
  br i1 %78, label %84, label %82, !dbg !1767

79:                                               ; preds = %38
  %80 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1768
  %81 = icmp eq void ()* %80, null, !dbg !1770
  br i1 %81, label %84, label %82, !dbg !1771

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  %83 = phi void ()* [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ]
  tail call void %83() #16, !dbg !1772
  br label %84, !dbg !1773

84:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %38
  %85 = or i32 %29, -2097086432, !dbg !1773
  %86 = inttoptr i32 %85 to i32*, !dbg !1773
  store volatile i32 32768, i32* %86, align 32, !dbg !1773
  br label %87, !dbg !1774

87:                                               ; preds = %27, %84
  %88 = add nuw nsw i32 %28, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %88, metadata !1678, metadata !DIExpression()), !dbg !1680
  %89 = icmp eq i32 %88, 26, !dbg !1776
  br i1 %89, label %90, label %27, !dbg !1777, !llvm.loop !1778

90:                                               ; preds = %87, %150
  %91 = phi i32 [ %151, %150 ], [ 12, %87 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1678, metadata !DIExpression()), !dbg !1680
  %92 = shl nuw nsw i32 %91, 8, !dbg !1780
  %93 = or i32 %92, -2097086444, !dbg !1780
  %94 = inttoptr i32 %93 to i32*, !dbg !1780
  %95 = load volatile i32, i32* %94, align 4, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %95, metadata !1679, metadata !DIExpression()), !dbg !1680
  %96 = or i32 %92, -2097086436, !dbg !1784
  %97 = inttoptr i32 %96 to i32*, !dbg !1784
  %98 = load volatile i32, i32* %97, align 4, !dbg !1784
  %99 = and i32 %98, 65536, !dbg !1786
  %100 = icmp eq i32 %99, 0, !dbg !1786
  br i1 %100, label %150, label %101, !dbg !1787

101:                                              ; preds = %90
  %102 = lshr i32 %95, 20, !dbg !1788
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
  ], !dbg !1790

103:                                              ; preds = %101
  %104 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1791
  %105 = icmp eq void ()* %104, null, !dbg !1794
  br i1 %105, label %147, label %145, !dbg !1795

106:                                              ; preds = %101
  %107 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1796
  %108 = icmp eq void ()* %107, null, !dbg !1798
  br i1 %108, label %147, label %145, !dbg !1799

109:                                              ; preds = %101
  %110 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1800
  %111 = icmp eq void ()* %110, null, !dbg !1802
  br i1 %111, label %147, label %145, !dbg !1803

112:                                              ; preds = %101
  %113 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1804
  %114 = icmp eq void ()* %113, null, !dbg !1806
  br i1 %114, label %147, label %145, !dbg !1807

115:                                              ; preds = %101
  %116 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1808
  %117 = icmp eq void ()* %116, null, !dbg !1810
  br i1 %117, label %147, label %145, !dbg !1811

118:                                              ; preds = %101
  %119 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1812
  %120 = icmp eq void ()* %119, null, !dbg !1814
  br i1 %120, label %147, label %145, !dbg !1815

121:                                              ; preds = %101
  %122 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1816
  %123 = icmp eq void ()* %122, null, !dbg !1818
  br i1 %123, label %147, label %145, !dbg !1819

124:                                              ; preds = %101
  %125 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1820
  %126 = icmp eq void ()* %125, null, !dbg !1822
  br i1 %126, label %147, label %145, !dbg !1823

127:                                              ; preds = %101
  %128 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1824
  %129 = icmp eq void ()* %128, null, !dbg !1826
  br i1 %129, label %147, label %145, !dbg !1827

130:                                              ; preds = %101
  %131 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1828
  %132 = icmp eq void ()* %131, null, !dbg !1830
  br i1 %132, label %147, label %145, !dbg !1831

133:                                              ; preds = %101
  %134 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1832
  %135 = icmp eq void ()* %134, null, !dbg !1834
  br i1 %135, label %147, label %145, !dbg !1835

136:                                              ; preds = %101
  %137 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1836
  %138 = icmp eq void ()* %137, null, !dbg !1838
  br i1 %138, label %147, label %145, !dbg !1839

139:                                              ; preds = %101
  %140 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1840
  %141 = icmp eq void ()* %140, null, !dbg !1842
  br i1 %141, label %147, label %145, !dbg !1843

142:                                              ; preds = %101
  %143 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1844
  %144 = icmp eq void ()* %143, null, !dbg !1846
  br i1 %144, label %147, label %145, !dbg !1847

145:                                              ; preds = %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %146 = phi void ()* [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ], [ %128, %127 ], [ %131, %130 ], [ %134, %133 ], [ %137, %136 ], [ %140, %139 ], [ %143, %142 ]
  tail call void %146() #16, !dbg !1848
  br label %147, !dbg !1849

147:                                              ; preds = %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %101
  %148 = or i32 %92, -2097086432, !dbg !1849
  %149 = inttoptr i32 %148 to i32*, !dbg !1849
  store volatile i32 65536, i32* %149, align 32, !dbg !1849
  br label %150, !dbg !1850

150:                                              ; preds = %90, %147
  %151 = add nuw nsw i32 %91, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %151, metadata !1678, metadata !DIExpression()), !dbg !1680
  %152 = icmp eq i32 %151, 26, !dbg !1852
  br i1 %152, label %153, label %90, !dbg !1853, !llvm.loop !1854

153:                                              ; preds = %150
  %154 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1856
  ret void, !dbg !1857
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Disable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1858 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1860, metadata !DIExpression()), !dbg !1861
  %2 = zext i8 %0 to i32, !dbg !1862
  %3 = add nsw i32 %2, -1, !dbg !1863
  %4 = shl nuw i32 1, %3, !dbg !1864
  store volatile i32 %4, i32* inttoptr (i32 -2097151980 to i32*), align 4, !dbg !1865
  ret void, !dbg !1866
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Init() local_unnamed_addr #3 !dbg !1867 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1869, metadata !DIExpression()), !dbg !1870
  %1 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1869, metadata !DIExpression()), !dbg !1870
  br label %2, !dbg !1871

2:                                                ; preds = %0, %9
  %3 = phi i32 [ 0, %0 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1869, metadata !DIExpression()), !dbg !1870
  %4 = shl nuw i32 1, %3, !dbg !1873
  %5 = and i32 %1, %4, !dbg !1877
  %6 = icmp eq i32 %5, 0, !dbg !1878
  br i1 %6, label %9, label %7, !dbg !1879

7:                                                ; preds = %2
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %3, !dbg !1880
  store i32 26, i32* %8, align 4, !dbg !1882
  br label %9, !dbg !1883

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i32 %3, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %10, metadata !1869, metadata !DIExpression()), !dbg !1870
  %11 = icmp eq i32 %10, 11, !dbg !1885
  br i1 %11, label %12, label %2, !dbg !1871, !llvm.loop !1886

12:                                               ; preds = %9, %12
  %13 = phi i8 [ %14, %12 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1869, metadata !DIExpression()), !dbg !1870
  %14 = add nuw nsw i8 %13, 1, !dbg !1888
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %14) #14, !dbg !1892
  call void @llvm.dbg.value(metadata i8 %14, metadata !1869, metadata !DIExpression()), !dbg !1870
  %15 = icmp ult i8 %13, 10, !dbg !1893
  br i1 %15, label %12, label %16, !dbg !1894, !llvm.loop !1895

16:                                               ; preds = %12
  %17 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1897
  %18 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1898
  %19 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1899
  ret void, !dbg !1900
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1901 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1905, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 -1, metadata !1906, metadata !DIExpression()), !dbg !1909
  %2 = add i8 %0, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i8 %2, metadata !1908, metadata !DIExpression()), !dbg !1909
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1911, !srcloc !1270
  call void @llvm.dbg.value(metadata i32 %3, metadata !1267, metadata !DIExpression()) #15, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %3, metadata !1907, metadata !DIExpression()), !dbg !1909
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1915, !srcloc !1275
  %4 = zext i8 %2 to i32, !dbg !1917
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1917
  %6 = load i8, i8* %5, align 1, !dbg !1917, !range !1559
  %7 = icmp eq i8 %6, 0, !dbg !1919
  br i1 %7, label %8, label %12, !dbg !1920

8:                                                ; preds = %1
  store i8 1, i8* %5, align 1, !dbg !1921
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %2) #14, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %3, metadata !1293, metadata !DIExpression()) #15, !dbg !1924
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1927, !srcloc !1302
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1928
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1929
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1930
  br label %12, !dbg !1931

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %0, %8 ], [ -1, %1 ], !dbg !1909
  ret i8 %13, !dbg !1932
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_idle(i8 noundef returned zeroext %0) local_unnamed_addr #3 !dbg !1933 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1935, metadata !DIExpression()), !dbg !1938
  %2 = add i8 %0, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i8 %2, metadata !1937, metadata !DIExpression()), !dbg !1938
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1940
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1941, !srcloc !1270
  call void @llvm.dbg.value(metadata i32 %3, metadata !1267, metadata !DIExpression()) #15, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %3, metadata !1936, metadata !DIExpression()), !dbg !1938
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1945, !srcloc !1275
  %4 = zext i8 %2 to i32, !dbg !1947
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1947
  store i8 0, i8* %5, align 1, !dbg !1948
  %6 = shl nuw i32 1, %4, !dbg !1949
  %7 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1950
  %8 = or i32 %7, %6, !dbg !1950
  store i32 %8, i32* @DMA_Channel_Status, align 4, !dbg !1950
  %9 = add nsw i32 %4, -1, !dbg !1951
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %9, !dbg !1952
  store i32 26, i32* %10, align 4, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %3, metadata !1293, metadata !DIExpression()) #15, !dbg !1954
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1957, !srcloc !1302
  ret i8 %0, !dbg !1958
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_init() local_unnamed_addr #1 !dbg !1959 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1961, metadata !DIExpression()), !dbg !1962
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 12) #14, !dbg !1963
  call void @llvm.dbg.value(metadata i32 6293010, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 6293010, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !1964
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 13) #14, !dbg !1965
  call void @llvm.dbg.value(metadata i32 7603730, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 7603730, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !1966
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 14) #14, !dbg !1967
  call void @llvm.dbg.value(metadata i32 8388624, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 8388624, i32* inttoptr (i32 -2097082860 to i32*), align 4, !dbg !1968
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 15) #14, !dbg !1969
  call void @llvm.dbg.value(metadata i32 9748496, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 9748496, i32* inttoptr (i32 -2097082604 to i32*), align 4, !dbg !1970
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 16) #14, !dbg !1971
  call void @llvm.dbg.value(metadata i32 10485776, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 10485776, i32* inttoptr (i32 -2097082348 to i32*), align 4, !dbg !1972
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 17) #14, !dbg !1973
  call void @llvm.dbg.value(metadata i32 11845648, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 11845648, i32* inttoptr (i32 -2097082092 to i32*), align 4, !dbg !1974
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 18) #14, !dbg !1975
  call void @llvm.dbg.value(metadata i32 12582928, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 12582928, i32* inttoptr (i32 -2097081836 to i32*), align 4, !dbg !1976
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 19) #14, !dbg !1977
  call void @llvm.dbg.value(metadata i32 13942800, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 13942800, i32* inttoptr (i32 -2097081580 to i32*), align 4, !dbg !1978
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 20) #14, !dbg !1979
  call void @llvm.dbg.value(metadata i32 16023568, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 16023568, i32* inttoptr (i32 -2097081324 to i32*), align 4, !dbg !1980
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 21) #14, !dbg !1981
  call void @llvm.dbg.value(metadata i32 17072144, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 17072144, i32* inttoptr (i32 -2097081068 to i32*), align 4, !dbg !1982
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 22) #14, !dbg !1983
  call void @llvm.dbg.value(metadata i32 18120720, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 18120720, i32* inttoptr (i32 -2097080812 to i32*), align 4, !dbg !1984
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 23) #14, !dbg !1985
  call void @llvm.dbg.value(metadata i32 19169296, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 19169296, i32* inttoptr (i32 -2097080556 to i32*), align 4, !dbg !1986
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 24) #14, !dbg !1987
  call void @llvm.dbg.value(metadata i32 20217872, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 20217872, i32* inttoptr (i32 -2097080300 to i32*), align 4, !dbg !1988
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 25) #14, !dbg !1989
  call void @llvm.dbg.value(metadata i32 21282834, metadata !1961, metadata !DIExpression()), !dbg !1962
  store volatile i32 21282834, i32* inttoptr (i32 -2097080044 to i32*), align 4, !dbg !1990
  ret void, !dbg !1991
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_SetAdrs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !dbg !1992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1997, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %1, metadata !1998, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %2, metadata !1999, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %3, metadata !2000, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %4, metadata !2001, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 %5, metadata !2002, metadata !DIExpression()), !dbg !2003
  %7 = shl i32 %2, 8, !dbg !2004
  %8 = add i32 %7, -2097086420, !dbg !2004
  %9 = inttoptr i32 %8 to i32*, !dbg !2004
  store volatile i32 %0, i32* %9, align 4, !dbg !2004
  %10 = add i32 %7, -2097086396, !dbg !2005
  %11 = inttoptr i32 %10 to i32*, !dbg !2005
  store volatile i32 %1, i32* %11, align 4, !dbg !2005
  %12 = add i32 %7, -2097086400, !dbg !2006
  %13 = inttoptr i32 %12 to i32*, !dbg !2006
  store volatile i32 %3, i32* %13, align 64, !dbg !2006
  %14 = add i32 %7, -2097086448, !dbg !2007
  %15 = inttoptr i32 %14 to i32*, !dbg !2007
  store volatile i32 %4, i32* %15, align 16, !dbg !2008
  %16 = add i32 %7, -2097086384, !dbg !2009
  %17 = inttoptr i32 %16 to i32*, !dbg !2009
  store volatile i32 %5, i32* %17, align 16, !dbg !2010
  ret void, !dbg !2011
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 %1, metadata !2017, metadata !DIExpression()), !dbg !2018
  %3 = shl i32 %0, 8, !dbg !2019
  %4 = add i32 %3, -2097086384, !dbg !2019
  %5 = inttoptr i32 %4 to i32*, !dbg !2019
  store volatile i32 %1, i32* %5, align 16, !dbg !2020
  ret void, !dbg !2021
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !2022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2026, metadata !DIExpression()), !dbg !2027
  %2 = shl i32 %0, 8, !dbg !2028
  %3 = add i32 %2, -2097086444, !dbg !2028
  %4 = inttoptr i32 %3 to i32*, !dbg !2028
  %5 = load volatile i32, i32* %4, align 4, !dbg !2028
  %6 = or i32 %5, 32768, !dbg !2028
  store volatile i32 %6, i32* %4, align 4, !dbg !2028
  ret void, !dbg !2029
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !2030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2032, metadata !DIExpression()), !dbg !2033
  %2 = shl i32 %0, 8, !dbg !2034
  %3 = add i32 %2, -2097086444, !dbg !2034
  %4 = inttoptr i32 %3 to i32*, !dbg !2034
  %5 = load volatile i32, i32* %4, align 4, !dbg !2034
  %6 = and i32 %5, -32769, !dbg !2034
  store volatile i32 %6, i32* %4, align 4, !dbg !2034
  ret void, !dbg !2035
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Flush(i32 noundef %0) local_unnamed_addr #1 !dbg !2036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2038, metadata !DIExpression()), !dbg !2039
  %2 = trunc i32 %0 to i8, !dbg !2040
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !2041
  %3 = shl i32 %0, 8, !dbg !2042
  %4 = add i32 %3, -2097086440, !dbg !2042
  %5 = inttoptr i32 %4 to i32*, !dbg !2042
  store volatile i32 32768, i32* %5, align 8, !dbg !2042
  ret void, !dbg !2043
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !2044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2048, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2049, metadata !DIExpression()), !dbg !2050
  %3 = add i32 %0, -12, !dbg !2051
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !2052
  store void ()* %1, void ()** %4, align 4, !dbg !2053
  ret void, !dbg !2054
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !2055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2058, metadata !DIExpression()), !dbg !2059
  %3 = add i32 %0, -12, !dbg !2060
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !2061
  store void ()* %1, void ()** %4, align 4, !dbg !2062
  ret void, !dbg !2063
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 !dbg !2064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %1, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i1 %2, metadata !2070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2071
  %4 = icmp ugt i32 %0, 1, !dbg !2072
  br i1 %4, label %5, label %8, !dbg !2074

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 75) #16, !dbg !2075
  br label %7, !dbg !2075

7:                                                ; preds = %5, %7
  br label %7, !dbg !2075, !llvm.loop !2077

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !2078

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !2079
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2082
  br i1 %2, label %11, label %13, !dbg !2084

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !2085
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2085
  br label %21, !dbg !2087

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !2088
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2088
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !2090
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2093
  br i1 %2, label %17, label %19, !dbg !2095

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !2096
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2096
  br label %21, !dbg !2098

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !2099
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2099
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !2101
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #3 !dbg !2102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2106, metadata !DIExpression()), !dbg !2107
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !2108

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 96) #16, !dbg !2109
  br label %4, !dbg !2109

4:                                                ; preds = %2, %4
  br label %4, !dbg !2109, !llvm.loop !2112

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2113
  %7 = or i32 %6, 1, !dbg !2113
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2113
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #16, !dbg !2116
  br label %16, !dbg !2117

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2118
  %11 = or i32 %10, 1, !dbg !2118
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2118
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #16, !dbg !2121
  br label %16, !dbg !2122

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2123
  %15 = or i32 %14, 1, !dbg !2123
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2123
  br label %16, !dbg !2126

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !2127
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #1 !dbg !2128 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2130, metadata !DIExpression()), !dbg !2131
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !2132

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2133
  %4 = and i32 %3, -2, !dbg !2133
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2133
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2136
  %6 = and i32 %5, -2, !dbg !2136
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2136
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2137
  br label %18, !dbg !2138

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2139
  %9 = and i32 %8, -3, !dbg !2139
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2139
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2142
  %11 = and i32 %10, -2, !dbg !2142
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2142
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2143
  br label %18, !dbg !2144

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2145
  %14 = and i32 %13, -2, !dbg !2145
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2145
  br label %18, !dbg !2148

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2149
  %17 = and i32 %16, -2, !dbg !2149
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2149
  br label %18, !dbg !2152

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !2153
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #3 !dbg !2154 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !2156, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 undef, metadata !2156, metadata !DIExpression()), !dbg !2158
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2159
  %3 = and i32 %2, 65535, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %2, metadata !2157, metadata !DIExpression()), !dbg !2158
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2161
  %4 = and i32 %2, 1, !dbg !2162
  %5 = icmp eq i32 %4, 0, !dbg !2162
  br i1 %5, label %6, label %9, !dbg !2164

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !2165
  %8 = icmp eq i32 %7, 0, !dbg !2165
  br i1 %8, label %13, label %9, !dbg !2167

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #16, !dbg !2168
  %12 = load void ()*, void ()** %11, align 4, !dbg !2168
  tail call void %12() #16, !dbg !2168
  br label %13, !dbg !2169

13:                                               ; preds = %9, %6
  ret void, !dbg !2169
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #3 !dbg !2170 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %1, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata void ()* %2, metadata !2176, metadata !DIExpression()), !dbg !2177
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !2178

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 149) #16, !dbg !2179
  br label %6, !dbg !2179

6:                                                ; preds = %4, %6
  br label %6, !dbg !2179, !llvm.loop !2182

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !2183
  br i1 %8, label %9, label %13, !dbg !2184

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #16, !dbg !2186
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #16, !dbg !2188
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #16, !dbg !2189
  br label %13, !dbg !2190

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !2191

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !2192
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2195
  %16 = or i32 %15, 1, !dbg !2195
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2195
  %17 = shl i32 %1, 2, !dbg !2196
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2197
  %19 = or i32 %18, %17, !dbg !2197
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2197
  br label %36, !dbg !2198

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !2199
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2202
  %22 = or i32 %21, 2, !dbg !2202
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !2202
  %23 = shl i32 %1, 2, !dbg !2203
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2204
  %25 = or i32 %24, %23, !dbg !2204
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2204
  br label %36, !dbg !2205

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !2206
  %28 = or i32 %27, 1, !dbg !2209
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2210
  %30 = or i32 %29, %28, !dbg !2210
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !2210
  br label %36, !dbg !2211

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !2212
  %33 = or i32 %32, 1, !dbg !2215
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2216
  %35 = or i32 %34, %33, !dbg !2216
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !2216
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !2217
  br label %36, !dbg !2218

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !2219
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #3 !dbg !2220 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2224, metadata !DIExpression()), !dbg !2226
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !2227

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.5, i32 0, i32 0), i32 noundef 177) #16, !dbg !2228
  br label %4, !dbg !2228

4:                                                ; preds = %4, %2
  br label %4, !dbg !2228, !llvm.loop !2231

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !2225, metadata !DIExpression()), !dbg !2226
  br label %8, !dbg !2232

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !2225, metadata !DIExpression()), !dbg !2226
  br label %8, !dbg !2236

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !2225, metadata !DIExpression()), !dbg !2226
  br label %8, !dbg !2239

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %10, metadata !2225, metadata !DIExpression()), !dbg !2226
  ret i32 %10, !dbg !2243
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #3 !dbg !2244 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !2245
  ret void, !dbg !2246
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #3 !dbg !2247 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !2248
  ret void, !dbg !2249
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 %1, metadata !2256, metadata !DIExpression()), !dbg !2259
  %3 = lshr i32 %0, 5, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %3, metadata !2257, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2259
  %4 = trunc i32 %0 to i16, !dbg !2261
  %5 = and i16 %4, 31, !dbg !2261
  call void @llvm.dbg.value(metadata i16 %4, metadata !2258, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2259
  %6 = trunc i32 %3 to i16, !dbg !2262
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !2262

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !2263
  %9 = zext i16 %5 to i32, !dbg !2266
  %10 = icmp ult i16 %5, 27, !dbg !2266
  br i1 %8, label %11, label %46, !dbg !2267

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !2268

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !2270
  %14 = xor i32 %13, -1, !dbg !2273
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2274
  %16 = and i32 %15, %14, !dbg !2274
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2274
  br label %44, !dbg !2275

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !2276
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !2276

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2277
  %21 = and i32 %20, -3, !dbg !2277
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2277
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2280
  %23 = or i32 %22, 2048, !dbg !2280
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2280
  br label %44, !dbg !2281

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2282
  %26 = and i32 %25, -3, !dbg !2282
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2282
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2285
  %28 = or i32 %27, 2048, !dbg !2285
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2285
  br label %44, !dbg !2286

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2287
  %31 = and i32 %30, -3, !dbg !2287
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2287
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2290
  %33 = or i32 %32, 2048, !dbg !2290
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2290
  br label %44, !dbg !2291

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2292
  %36 = and i32 %35, -3, !dbg !2292
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2292
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2295
  %38 = or i32 %37, 2048, !dbg !2295
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2295
  br label %44, !dbg !2296

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2297
  %41 = and i32 %40, -3, !dbg !2297
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2297
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2300
  %43 = or i32 %42, 2048, !dbg !2300
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2300
  br label %44, !dbg !2301

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !2302
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !2302
  br label %97, !dbg !2303

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !2304

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !2306
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2309
  %50 = or i32 %49, %48, !dbg !2309
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2309
  br label %68, !dbg !2310

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !2311
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !2311

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2312
  %55 = or i32 %54, 2050, !dbg !2312
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2312
  br label %68, !dbg !2315

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2316
  %58 = or i32 %57, 2050, !dbg !2316
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2316
  br label %68, !dbg !2319

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2320
  %61 = or i32 %60, 2050, !dbg !2320
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2320
  br label %68, !dbg !2323

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2324
  %64 = or i32 %63, 2050, !dbg !2324
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2324
  br label %68, !dbg !2327

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2328
  %67 = or i32 %66, 2050, !dbg !2328
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2328
  br label %68, !dbg !2331

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !2332
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !2332
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !2333
  %72 = zext i16 %5 to i32, !dbg !2335
  %73 = icmp eq i16 %5, 0, !dbg !2335
  br i1 %71, label %74, label %87, !dbg !2336

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !2337

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !2339
  %77 = xor i32 %76, -1, !dbg !2342
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2343
  %79 = and i32 %78, %77, !dbg !2343
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2343
  br label %85, !dbg !2344

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2345
  %82 = and i32 %81, -3, !dbg !2345
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2345
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2347
  %84 = or i32 %83, 2048, !dbg !2347
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2347
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !2348
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !2348
  br label %97, !dbg !2349

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !2350

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !2352
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2355
  %91 = or i32 %90, %89, !dbg !2355
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2355
  br label %95, !dbg !2356

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2357
  %94 = or i32 %93, 2050, !dbg !2357
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2357
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !2359
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !2359
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !2259
  ret i32 %98, !dbg !2360
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2363, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 %1, metadata !2364, metadata !DIExpression()), !dbg !2367
  %3 = lshr i32 %0, 5, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %3, metadata !2365, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2367
  %4 = trunc i32 %0 to i16, !dbg !2369
  %5 = and i16 %4, 31, !dbg !2369
  call void @llvm.dbg.value(metadata i16 %5, metadata !2366, metadata !DIExpression()), !dbg !2367
  %6 = trunc i32 %3 to i16, !dbg !2370
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !2370

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !2371
  %9 = zext i16 %5 to i32, !dbg !2374
  %10 = shl nuw i32 1, %9, !dbg !2374
  br i1 %8, label %12, label %11, !dbg !2375

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !2376
  br label %19, !dbg !2378

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !2379
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !2381
  %15 = zext i16 %5 to i32, !dbg !2383
  %16 = shl nuw i32 1, %15, !dbg !2383
  br i1 %14, label %18, label %17, !dbg !2384

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !2385
  br label %19, !dbg !2387

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !2388
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !2367
  ret i32 %20, !dbg !2390
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #6 !dbg !2391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2399
  %2 = lshr i32 %0, 5, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %2, metadata !2396, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2399
  %3 = and i32 %0, 31, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2399
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2399
  %4 = trunc i32 %2 to i16, !dbg !2402
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2402

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2398, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2399
  br label %6, !dbg !2403

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2405
  %9 = lshr i32 %8, %3, !dbg !2405
  %10 = trunc i32 %9 to i8, !dbg !2405
  %11 = and i8 %10, 1, !dbg !2405
  call void @llvm.dbg.value(metadata i8 %11, metadata !2398, metadata !DIExpression()), !dbg !2399
  br label %12, !dbg !2406

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2399
  ret i8 %13, !dbg !2407
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #6 !dbg !2408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2414
  %2 = lshr i32 %0, 5, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %2, metadata !2411, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2414
  %3 = and i32 %0, 31, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2413, metadata !DIExpression()), !dbg !2414
  %4 = trunc i32 %2 to i16, !dbg !2417
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2417

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2413, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2414
  br label %6, !dbg !2418

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !2420
  %9 = lshr i32 %8, %3, !dbg !2420
  %10 = trunc i32 %9 to i8, !dbg !2420
  %11 = and i8 %10, 1, !dbg !2420
  call void @llvm.dbg.value(metadata i8 %11, metadata !2413, metadata !DIExpression()), !dbg !2414
  br label %12, !dbg !2421

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2414
  ret i8 %13, !dbg !2422
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #6 !dbg !2423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2429
  %2 = lshr i32 %0, 5, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %2, metadata !2426, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2429
  %3 = and i32 %0, 31, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2429
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2429
  %4 = trunc i32 %2 to i16, !dbg !2432
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2432

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2428, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2429
  br label %6, !dbg !2433

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2435
  %9 = lshr i32 %8, %3, !dbg !2435
  %10 = trunc i32 %9 to i8, !dbg !2435
  %11 = and i8 %10, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i8 %11, metadata !2428, metadata !DIExpression()), !dbg !2429
  br label %12, !dbg !2436

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2429
  ret i8 %13, !dbg !2437
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2442, metadata !DIExpression()), !dbg !2445
  %2 = lshr i32 %0, 5, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %2, metadata !2443, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2445
  %3 = trunc i32 %0 to i16, !dbg !2447
  %4 = and i16 %3, 31, !dbg !2447
  call void @llvm.dbg.value(metadata i16 %3, metadata !2444, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2445
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !2448
  %6 = trunc i32 %2 to i16, !dbg !2449
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2449

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2450
  br i1 %8, label %9, label %12, !dbg !2453

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2454
  %11 = shl nuw nsw i32 1, %10, !dbg !2455
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !2455
  br label %49, !dbg !2457

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2458
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2458

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2459
  %16 = and i32 %15, -29, !dbg !2459
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2459
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2462
  %18 = or i32 %17, 2052, !dbg !2462
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2462
  br label %49, !dbg !2463

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2464
  %21 = and i32 %20, -29, !dbg !2464
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2464
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2467
  %23 = or i32 %22, 2052, !dbg !2467
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2467
  br label %49, !dbg !2468

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2469
  %26 = and i32 %25, -29, !dbg !2469
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2469
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2472
  %28 = or i32 %27, 2052, !dbg !2472
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2472
  br label %49, !dbg !2473

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2474
  %31 = and i32 %30, -29, !dbg !2474
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2474
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2477
  %33 = or i32 %32, 2052, !dbg !2477
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2477
  br label %49, !dbg !2478

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2479
  %36 = and i32 %35, -29, !dbg !2479
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2479
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2482
  %38 = or i32 %37, 2052, !dbg !2482
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2482
  br label %49, !dbg !2483

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2484
  br i1 %40, label %41, label %46, !dbg !2486

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2487
  %43 = and i32 %42, -29, !dbg !2487
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2487
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2489
  %45 = or i32 %44, 2052, !dbg !2489
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2489
  br label %49, !dbg !2490

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2491
  %48 = shl nuw i32 1, %47, !dbg !2491
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !2491
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2445
  ret i32 %50, !dbg !2493
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2496, metadata !DIExpression()), !dbg !2499
  %2 = lshr i32 %0, 5, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %2, metadata !2497, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2499
  %3 = trunc i32 %0 to i16, !dbg !2501
  %4 = and i16 %3, 31, !dbg !2501
  call void @llvm.dbg.value(metadata i16 %3, metadata !2498, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2499
  %5 = trunc i32 %2 to i16, !dbg !2502
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2502

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2503
  br i1 %7, label %8, label %11, !dbg !2506

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2507
  %10 = shl nuw nsw i32 1, %9, !dbg !2508
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !2508
  br label %48, !dbg !2510

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2511
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2511

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2512
  %15 = and i32 %14, -29, !dbg !2512
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2512
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2515
  %17 = or i32 %16, 2048, !dbg !2515
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2515
  br label %48, !dbg !2516

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2517
  %20 = and i32 %19, -29, !dbg !2517
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2517
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2520
  %22 = or i32 %21, 2048, !dbg !2520
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2520
  br label %48, !dbg !2521

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2522
  %25 = and i32 %24, -29, !dbg !2522
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2522
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2525
  %27 = or i32 %26, 2048, !dbg !2525
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2525
  br label %48, !dbg !2526

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2527
  %30 = and i32 %29, -29, !dbg !2527
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2527
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2530
  %32 = or i32 %31, 2048, !dbg !2530
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2530
  br label %48, !dbg !2531

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2532
  %35 = and i32 %34, -29, !dbg !2532
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2532
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2535
  %37 = or i32 %36, 2048, !dbg !2535
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2535
  br label %48, !dbg !2536

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2537
  br i1 %39, label %40, label %45, !dbg !2539

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2540
  %42 = and i32 %41, -29, !dbg !2540
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2540
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2542
  %44 = or i32 %43, 2048, !dbg !2542
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2542
  br label %48, !dbg !2543

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2544
  %47 = shl nuw i32 1, %46, !dbg !2544
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !2544
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2499
  ret i32 %49, !dbg !2546
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2547 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2549, metadata !DIExpression()), !dbg !2552
  %2 = lshr i32 %0, 5, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %2, metadata !2550, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2552
  %3 = trunc i32 %0 to i16, !dbg !2554
  %4 = and i16 %3, 31, !dbg !2554
  call void @llvm.dbg.value(metadata i16 %3, metadata !2551, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2552
  %5 = trunc i32 %2 to i16, !dbg !2555
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2555

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2556
  br i1 %7, label %8, label %11, !dbg !2559

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2560
  %10 = shl nuw nsw i32 1, %9, !dbg !2561
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !2561
  br label %48, !dbg !2563

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2564
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2564

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2565
  %15 = and i32 %14, -29, !dbg !2565
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2565
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2568
  %17 = or i32 %16, 2048, !dbg !2568
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2568
  br label %48, !dbg !2569

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2570
  %20 = and i32 %19, -29, !dbg !2570
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2570
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2573
  %22 = or i32 %21, 2048, !dbg !2573
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2573
  br label %48, !dbg !2574

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2575
  %25 = and i32 %24, -29, !dbg !2575
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2575
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2578
  %27 = or i32 %26, 2048, !dbg !2578
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2578
  br label %48, !dbg !2579

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2580
  %30 = and i32 %29, -29, !dbg !2580
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2580
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2583
  %32 = or i32 %31, 2048, !dbg !2583
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2583
  br label %48, !dbg !2584

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2585
  %35 = and i32 %34, -29, !dbg !2585
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2585
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2588
  %37 = or i32 %36, 2048, !dbg !2588
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2588
  br label %48, !dbg !2589

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2590
  br i1 %39, label %40, label %45, !dbg !2592

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2593
  %42 = and i32 %41, -29, !dbg !2593
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2593
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2595
  %44 = or i32 %43, 2048, !dbg !2595
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2595
  br label %48, !dbg !2596

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2597
  %47 = shl nuw i32 1, %46, !dbg !2597
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !2597
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2552
  ret i32 %49, !dbg !2599
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2600 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2605
  %2 = lshr i32 %0, 5, !dbg !2606
  call void @llvm.dbg.value(metadata i32 %2, metadata !2603, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2605
  %3 = trunc i32 %0 to i16, !dbg !2607
  %4 = and i16 %3, 31, !dbg !2607
  call void @llvm.dbg.value(metadata i16 %3, metadata !2604, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2605
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !2608
  %6 = trunc i32 %2 to i16, !dbg !2609
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2609

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2610
  br i1 %8, label %9, label %12, !dbg !2613

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2614
  %11 = shl nuw nsw i32 1, %10, !dbg !2615
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !2615
  br label %49, !dbg !2617

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2618
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2618

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2619
  %16 = and i32 %15, -29, !dbg !2619
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2619
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2622
  %18 = or i32 %17, 2068, !dbg !2622
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2622
  br label %49, !dbg !2623

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2624
  %21 = and i32 %20, -29, !dbg !2624
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2624
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2627
  %23 = or i32 %22, 2068, !dbg !2627
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2627
  br label %49, !dbg !2628

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2629
  %26 = and i32 %25, -29, !dbg !2629
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2629
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2632
  %28 = or i32 %27, 2068, !dbg !2632
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2632
  br label %49, !dbg !2633

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2634
  %31 = and i32 %30, -29, !dbg !2634
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2634
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2637
  %33 = or i32 %32, 2068, !dbg !2637
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2637
  br label %49, !dbg !2638

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2639
  %36 = and i32 %35, -29, !dbg !2639
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2639
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2642
  %38 = or i32 %37, 2068, !dbg !2642
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2642
  br label %49, !dbg !2643

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2644
  br i1 %40, label %41, label %46, !dbg !2646

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2647
  %43 = and i32 %42, -29, !dbg !2647
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2647
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2649
  %45 = or i32 %44, 2068, !dbg !2649
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2649
  br label %49, !dbg !2650

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2651
  %48 = shl nuw i32 1, %47, !dbg !2651
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !2651
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2605
  ret i32 %50, !dbg !2653
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2654 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8 %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  %3 = lshr i32 %0, 4, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %3, metadata !2658, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2660
  %4 = trunc i32 %0 to i16, !dbg !2662
  %5 = and i16 %4, 15, !dbg !2662
  call void @llvm.dbg.value(metadata i16 %4, metadata !2659, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2660
  %6 = trunc i32 %3 to i16, !dbg !2663
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !2663

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !2664
  %9 = zext i16 %8 to i32, !dbg !2664
  %10 = shl nuw i32 3, %9, !dbg !2666
  %11 = xor i32 %10, -1, !dbg !2667
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2668
  %13 = and i32 %12, %11, !dbg !2668
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2668
  %14 = lshr i8 %1, 2, !dbg !2669
  %15 = zext i8 %14 to i32, !dbg !2669
  %16 = add nsw i32 %15, -1, !dbg !2670
  %17 = shl i32 %16, %9, !dbg !2671
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2672
  %19 = or i32 %18, %17, !dbg !2672
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2672
  br label %131, !dbg !2673

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2674
  br i1 %21, label %22, label %35, !dbg !2676

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2677
  %24 = zext i16 %23 to i32, !dbg !2677
  %25 = shl nuw nsw i32 3, %24, !dbg !2679
  %26 = xor i32 %25, -1, !dbg !2680
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2681
  %28 = and i32 %27, %26, !dbg !2681
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2681
  %29 = lshr i8 %1, 2, !dbg !2682
  %30 = zext i8 %29 to i32, !dbg !2682
  %31 = add nsw i32 %30, -1, !dbg !2683
  %32 = shl nsw i32 %31, %24, !dbg !2684
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2685
  %34 = or i32 %33, %32, !dbg !2685
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2685
  br label %131, !dbg !2686

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2687
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2687

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2688
  %39 = and i32 %38, -449, !dbg !2688
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2688
  %40 = lshr i8 %1, 1, !dbg !2691
  %41 = zext i8 %40 to i32, !dbg !2691
  %42 = shl nuw nsw i32 %41, 6, !dbg !2692
  %43 = add nsw i32 %42, -64, !dbg !2692
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2693
  %45 = or i32 %44, %43, !dbg !2693
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2693
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2694
  %47 = or i32 %46, 2048, !dbg !2694
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2694
  br label %131, !dbg !2695

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2696
  %50 = and i32 %49, -449, !dbg !2696
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2696
  %51 = lshr i8 %1, 1, !dbg !2699
  %52 = zext i8 %51 to i32, !dbg !2699
  %53 = shl nuw nsw i32 %52, 6, !dbg !2700
  %54 = add nsw i32 %53, -64, !dbg !2700
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2701
  %56 = or i32 %55, %54, !dbg !2701
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2701
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2702
  %58 = or i32 %57, 2048, !dbg !2702
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2702
  br label %131, !dbg !2703

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2704
  %61 = and i32 %60, -449, !dbg !2704
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2704
  %62 = lshr i8 %1, 1, !dbg !2707
  %63 = zext i8 %62 to i32, !dbg !2707
  %64 = shl nuw nsw i32 %63, 6, !dbg !2708
  %65 = add nsw i32 %64, -64, !dbg !2708
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2709
  %67 = or i32 %66, %65, !dbg !2709
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2709
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2710
  %69 = or i32 %68, 2048, !dbg !2710
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2710
  br label %131, !dbg !2711

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2712
  %72 = and i32 %71, -449, !dbg !2712
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2712
  %73 = lshr i8 %1, 1, !dbg !2715
  %74 = zext i8 %73 to i32, !dbg !2715
  %75 = shl nuw nsw i32 %74, 6, !dbg !2716
  %76 = add nsw i32 %75, -64, !dbg !2716
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2717
  %78 = or i32 %77, %76, !dbg !2717
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2717
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2718
  %80 = or i32 %79, 2048, !dbg !2718
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2718
  br label %131, !dbg !2719

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2720
  %83 = and i32 %82, -449, !dbg !2720
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2720
  %84 = lshr i8 %1, 1, !dbg !2723
  %85 = zext i8 %84 to i32, !dbg !2723
  %86 = shl nuw nsw i32 %85, 6, !dbg !2724
  %87 = add nsw i32 %86, -64, !dbg !2724
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2725
  %89 = or i32 %88, %87, !dbg !2725
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2725
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2726
  %91 = or i32 %90, 2048, !dbg !2726
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2726
  br label %131, !dbg !2727

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2728
  br i1 %93, label %94, label %105, !dbg !2730

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2731
  %96 = and i32 %95, -449, !dbg !2731
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2731
  %97 = lshr i8 %1, 1, !dbg !2733
  %98 = zext i8 %97 to i32, !dbg !2733
  %99 = shl nuw nsw i32 %98, 6, !dbg !2734
  %100 = add nsw i32 %99, -64, !dbg !2734
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2735
  %102 = or i32 %101, %100, !dbg !2735
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2735
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2736
  %104 = or i32 %103, 2048, !dbg !2736
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2736
  br label %131, !dbg !2737

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2738
  %107 = zext i16 %106 to i32, !dbg !2738
  %108 = shl nuw i32 3, %107, !dbg !2740
  %109 = xor i32 %108, -1, !dbg !2741
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2742
  %111 = and i32 %110, %109, !dbg !2742
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2742
  %112 = lshr i8 %1, 2, !dbg !2743
  %113 = zext i8 %112 to i32, !dbg !2743
  %114 = add nsw i32 %113, -1, !dbg !2744
  %115 = shl i32 %114, %107, !dbg !2745
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2746
  %117 = or i32 %116, %115, !dbg !2746
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2746
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2747
  %120 = zext i16 %119 to i32, !dbg !2747
  %121 = shl nuw i32 3, %120, !dbg !2748
  %122 = xor i32 %121, -1, !dbg !2749
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2750
  %124 = and i32 %123, %122, !dbg !2750
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2750
  %125 = lshr i8 %1, 2, !dbg !2751
  %126 = zext i8 %125 to i32, !dbg !2751
  %127 = add nsw i32 %126, -1, !dbg !2752
  %128 = shl i32 %127, %120, !dbg !2753
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2754
  %130 = or i32 %129, %128, !dbg !2754
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2754
  br label %131, !dbg !2755

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !2660
  ret i32 %132, !dbg !2756
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !2757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %1, metadata !2763, metadata !DIExpression()), !dbg !2767
  %3 = lshr i32 %0, 4, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %3, metadata !2764, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2767
  %4 = trunc i32 %0 to i16, !dbg !2769
  %5 = and i16 %4, 15, !dbg !2769
  call void @llvm.dbg.value(metadata i16 %4, metadata !2765, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %6 = trunc i32 %3 to i16, !dbg !2770
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2770

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %8, metadata !2766, metadata !DIExpression()), !dbg !2767
  %9 = shl nuw nsw i16 %5, 1, !dbg !2773
  %10 = zext i16 %9 to i32, !dbg !2773
  %11 = shl nuw i32 3, %10, !dbg !2774
  %12 = and i32 %8, %11, !dbg !2775
  call void @llvm.dbg.value(metadata i32 %12, metadata !2766, metadata !DIExpression()), !dbg !2767
  %13 = lshr i32 %12, %10, !dbg !2776
  %14 = trunc i32 %13 to i8, !dbg !2777
  %15 = shl i8 %14, 2, !dbg !2777
  %16 = add i8 %15, 4, !dbg !2777
  br label %89, !dbg !2778

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2779
  br i1 %18, label %19, label %29, !dbg !2781

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2782
  call void @llvm.dbg.value(metadata i32 %20, metadata !2766, metadata !DIExpression()), !dbg !2767
  %21 = shl nuw nsw i16 %5, 1, !dbg !2784
  %22 = zext i16 %21 to i32, !dbg !2784
  %23 = shl nuw nsw i32 3, %22, !dbg !2785
  %24 = and i32 %20, %23, !dbg !2786
  call void @llvm.dbg.value(metadata i32 %24, metadata !2766, metadata !DIExpression()), !dbg !2767
  %25 = lshr i32 %24, %22, !dbg !2787
  %26 = trunc i32 %25 to i8, !dbg !2788
  %27 = shl i8 %26, 2, !dbg !2788
  %28 = add i8 %27, 4, !dbg !2788
  br label %89, !dbg !2789

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2790
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2790

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %32, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %32, metadata !2766, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %33 = lshr i32 %32, 5, !dbg !2794
  %34 = trunc i32 %33 to i8, !dbg !2795
  %35 = and i8 %34, 14, !dbg !2795
  %36 = add nuw nsw i8 %35, 2, !dbg !2795
  br label %89, !dbg !2796

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %38, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %38, metadata !2766, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %39 = lshr i32 %38, 5, !dbg !2800
  %40 = trunc i32 %39 to i8, !dbg !2801
  %41 = and i8 %40, 14, !dbg !2801
  %42 = add nuw nsw i8 %41, 2, !dbg !2801
  br label %89, !dbg !2802

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2803
  call void @llvm.dbg.value(metadata i32 %44, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %44, metadata !2766, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %45 = lshr i32 %44, 5, !dbg !2806
  %46 = trunc i32 %45 to i8, !dbg !2807
  %47 = and i8 %46, 14, !dbg !2807
  %48 = add nuw nsw i8 %47, 2, !dbg !2807
  br label %89, !dbg !2808

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %50, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %50, metadata !2766, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %51 = lshr i32 %50, 5, !dbg !2812
  %52 = trunc i32 %51 to i8, !dbg !2813
  %53 = and i8 %52, 14, !dbg !2813
  %54 = add nuw nsw i8 %53, 2, !dbg !2813
  br label %89, !dbg !2814

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2815
  call void @llvm.dbg.value(metadata i32 %56, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %56, metadata !2766, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %57 = lshr i32 %56, 5, !dbg !2818
  %58 = trunc i32 %57 to i8, !dbg !2819
  %59 = and i8 %58, 14, !dbg !2819
  %60 = add nuw nsw i8 %59, 2, !dbg !2819
  br label %89, !dbg !2820

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2821
  br i1 %62, label %63, label %69, !dbg !2823

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %64, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %64, metadata !2766, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2767
  %65 = lshr i32 %64, 5, !dbg !2826
  %66 = trunc i32 %65 to i8, !dbg !2827
  %67 = and i8 %66, 14, !dbg !2827
  %68 = add nuw nsw i8 %67, 2, !dbg !2827
  br label %89, !dbg !2828

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %70, metadata !2766, metadata !DIExpression()), !dbg !2767
  %71 = shl nuw nsw i16 %5, 1, !dbg !2831
  %72 = zext i16 %71 to i32, !dbg !2831
  %73 = shl nuw i32 3, %72, !dbg !2832
  %74 = and i32 %70, %73, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %74, metadata !2766, metadata !DIExpression()), !dbg !2767
  %75 = lshr i32 %74, %72, !dbg !2834
  %76 = trunc i32 %75 to i8, !dbg !2835
  %77 = shl i8 %76, 2, !dbg !2835
  %78 = add i8 %77, 4, !dbg !2835
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %80, metadata !2766, metadata !DIExpression()), !dbg !2767
  %81 = shl nuw nsw i16 %5, 1, !dbg !2837
  %82 = zext i16 %81 to i32, !dbg !2837
  %83 = shl nuw i32 3, %82, !dbg !2838
  %84 = and i32 %80, %83, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %84, metadata !2766, metadata !DIExpression()), !dbg !2767
  %85 = lshr i32 %84, %82, !dbg !2840
  %86 = trunc i32 %85 to i8, !dbg !2841
  %87 = shl i8 %86, 2, !dbg !2841
  %88 = add i8 %87, 4, !dbg !2841
  br label %89, !dbg !2842

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2843
  br label %91, !dbg !2844

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2767
  ret i32 %92, !dbg !2844
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2850, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 %1, metadata !2851, metadata !DIExpression()), !dbg !2854
  %3 = lshr i32 %0, 5, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %3, metadata !2852, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2854
  %4 = trunc i32 %0 to i16, !dbg !2856
  %5 = and i16 %4, 31, !dbg !2856
  call void @llvm.dbg.value(metadata i16 %5, metadata !2853, metadata !DIExpression()), !dbg !2854
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2857

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2852, metadata !DIExpression()), !dbg !2854
  %7 = trunc i32 %3 to i16, !dbg !2858
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2858

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2861
  %10 = shl nuw i32 1, %9, !dbg !2863
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2864
  %12 = or i32 %11, %10, !dbg !2864
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2864
  br label %32, !dbg !2865

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2866
  %15 = shl nuw i32 1, %14, !dbg !2867
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2868
  %17 = or i32 %16, %15, !dbg !2868
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2868
  br label %32, !dbg !2869

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2870
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2870

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2873
  %22 = shl nuw i32 1, %21, !dbg !2875
  %23 = xor i32 %22, -1, !dbg !2876
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2877
  %25 = and i32 %24, %23, !dbg !2877
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2877
  br label %32, !dbg !2878

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2879
  %28 = shl nuw i32 1, %27, !dbg !2880
  %29 = xor i32 %28, -1, !dbg !2881
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2882
  %31 = and i32 %30, %29, !dbg !2882
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2882
  br label %32, !dbg !2883

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2884
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8 %1, metadata !2892, metadata !DIExpression()), !dbg !2894
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
  ], !dbg !2895

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2896
  call void @llvm.dbg.value(metadata i32 %4, metadata !2893, metadata !DIExpression()), !dbg !2894
  %5 = and i32 %4, -16, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %5, metadata !2893, metadata !DIExpression()), !dbg !2894
  %6 = zext i8 %1 to i32, !dbg !2899
  %7 = or i32 %5, %6, !dbg !2900
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2901
  br label %187, !dbg !2902

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %9, metadata !2893, metadata !DIExpression()), !dbg !2894
  %10 = and i32 %9, -241, !dbg !2904
  call void @llvm.dbg.value(metadata i32 %10, metadata !2893, metadata !DIExpression()), !dbg !2894
  %11 = zext i8 %1 to i32, !dbg !2905
  %12 = shl nuw nsw i32 %11, 4, !dbg !2906
  %13 = or i32 %10, %12, !dbg !2907
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2908
  br label %187, !dbg !2909

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %15, metadata !2893, metadata !DIExpression()), !dbg !2894
  %16 = and i32 %15, -3841, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %16, metadata !2893, metadata !DIExpression()), !dbg !2894
  %17 = zext i8 %1 to i32, !dbg !2912
  %18 = shl nuw nsw i32 %17, 8, !dbg !2913
  %19 = or i32 %16, %18, !dbg !2914
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2915
  br label %187, !dbg !2916

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2917
  call void @llvm.dbg.value(metadata i32 %21, metadata !2893, metadata !DIExpression()), !dbg !2894
  %22 = and i32 %21, -61441, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %22, metadata !2893, metadata !DIExpression()), !dbg !2894
  %23 = zext i8 %1 to i32, !dbg !2919
  %24 = shl nuw nsw i32 %23, 12, !dbg !2920
  %25 = or i32 %22, %24, !dbg !2921
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2922
  br label %187, !dbg !2923

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %27, metadata !2893, metadata !DIExpression()), !dbg !2894
  %28 = and i32 %27, -983041, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %28, metadata !2893, metadata !DIExpression()), !dbg !2894
  %29 = zext i8 %1 to i32, !dbg !2926
  %30 = shl nuw nsw i32 %29, 16, !dbg !2927
  %31 = or i32 %28, %30, !dbg !2928
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2929
  br label %187, !dbg !2930

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %33, metadata !2893, metadata !DIExpression()), !dbg !2894
  %34 = and i32 %33, -15728641, !dbg !2932
  call void @llvm.dbg.value(metadata i32 %34, metadata !2893, metadata !DIExpression()), !dbg !2894
  %35 = zext i8 %1 to i32, !dbg !2933
  %36 = shl nuw nsw i32 %35, 20, !dbg !2934
  %37 = or i32 %34, %36, !dbg !2935
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2936
  br label %187, !dbg !2937

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %39, metadata !2893, metadata !DIExpression()), !dbg !2894
  %40 = and i32 %39, -251658241, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %40, metadata !2893, metadata !DIExpression()), !dbg !2894
  %41 = zext i8 %1 to i32, !dbg !2940
  %42 = shl nuw i32 %41, 24, !dbg !2941
  %43 = or i32 %40, %42, !dbg !2942
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2943
  br label %187, !dbg !2944

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %45, metadata !2893, metadata !DIExpression()), !dbg !2894
  %46 = and i32 %45, 268435455, !dbg !2946
  call void @llvm.dbg.value(metadata i32 %46, metadata !2893, metadata !DIExpression()), !dbg !2894
  %47 = zext i8 %1 to i32, !dbg !2947
  %48 = shl i32 %47, 28, !dbg !2948
  %49 = or i32 %46, %48, !dbg !2949
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2950
  br label %187, !dbg !2951

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %51, metadata !2893, metadata !DIExpression()), !dbg !2894
  %52 = and i32 %51, -16, !dbg !2953
  call void @llvm.dbg.value(metadata i32 %52, metadata !2893, metadata !DIExpression()), !dbg !2894
  %53 = zext i8 %1 to i32, !dbg !2954
  %54 = or i32 %52, %53, !dbg !2955
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2956
  br label %187, !dbg !2957

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2958
  call void @llvm.dbg.value(metadata i32 %56, metadata !2893, metadata !DIExpression()), !dbg !2894
  %57 = and i32 %56, -241, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %57, metadata !2893, metadata !DIExpression()), !dbg !2894
  %58 = zext i8 %1 to i32, !dbg !2960
  %59 = shl nuw nsw i32 %58, 4, !dbg !2961
  %60 = or i32 %57, %59, !dbg !2962
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2963
  br label %187, !dbg !2964

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2965
  call void @llvm.dbg.value(metadata i32 %62, metadata !2893, metadata !DIExpression()), !dbg !2894
  %63 = and i32 %62, -3841, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %63, metadata !2893, metadata !DIExpression()), !dbg !2894
  %64 = zext i8 %1 to i32, !dbg !2967
  %65 = shl nuw nsw i32 %64, 8, !dbg !2968
  %66 = or i32 %63, %65, !dbg !2969
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2970
  br label %187, !dbg !2971

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %68, metadata !2893, metadata !DIExpression()), !dbg !2894
  %69 = and i32 %68, -61441, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %69, metadata !2893, metadata !DIExpression()), !dbg !2894
  %70 = zext i8 %1 to i32, !dbg !2974
  %71 = shl nuw nsw i32 %70, 12, !dbg !2975
  %72 = or i32 %69, %71, !dbg !2976
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2977
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2978

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !2980
  br label %187, !dbg !2982

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %76, metadata !2893, metadata !DIExpression()), !dbg !2894
  %77 = and i32 %76, -983041, !dbg !2984
  call void @llvm.dbg.value(metadata i32 %77, metadata !2893, metadata !DIExpression()), !dbg !2894
  %78 = zext i8 %1 to i32, !dbg !2985
  %79 = shl nuw nsw i32 %78, 16, !dbg !2986
  %80 = or i32 %77, %79, !dbg !2987
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2988
  %81 = and i8 %1, -2, !dbg !2989
  %82 = icmp eq i8 %81, 4, !dbg !2989
  br i1 %82, label %83, label %187, !dbg !2989

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !2991
  br label %187, !dbg !2993

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2994
  call void @llvm.dbg.value(metadata i32 %86, metadata !2893, metadata !DIExpression()), !dbg !2894
  %87 = and i32 %86, -15728641, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %87, metadata !2893, metadata !DIExpression()), !dbg !2894
  %88 = zext i8 %1 to i32, !dbg !2996
  %89 = shl nuw nsw i32 %88, 20, !dbg !2997
  %90 = or i32 %87, %89, !dbg !2998
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2999
  %91 = icmp eq i8 %1, 6, !dbg !3000
  br i1 %91, label %92, label %187, !dbg !3002

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !3003
  br label %187, !dbg !3005

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %95, metadata !2893, metadata !DIExpression()), !dbg !2894
  %96 = and i32 %95, -251658241, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %96, metadata !2893, metadata !DIExpression()), !dbg !2894
  %97 = zext i8 %1 to i32, !dbg !3008
  %98 = shl nuw i32 %97, 24, !dbg !3009
  %99 = or i32 %96, %98, !dbg !3010
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3011
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !3012

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !3014
  br label %187, !dbg !3016

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %103, metadata !2893, metadata !DIExpression()), !dbg !2894
  %104 = and i32 %103, 268435455, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %104, metadata !2893, metadata !DIExpression()), !dbg !2894
  %105 = zext i8 %1 to i32, !dbg !3019
  %106 = shl i32 %105, 28, !dbg !3020
  %107 = or i32 %104, %106, !dbg !3021
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3022
  %108 = and i8 %1, -3, !dbg !3023
  %109 = icmp eq i8 %108, 4, !dbg !3023
  br i1 %109, label %110, label %187, !dbg !3023

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !3025
  br label %187, !dbg !3027

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3028
  call void @llvm.dbg.value(metadata i32 %113, metadata !2893, metadata !DIExpression()), !dbg !2894
  %114 = and i32 %113, -16, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %114, metadata !2893, metadata !DIExpression()), !dbg !2894
  %115 = zext i8 %1 to i32, !dbg !3030
  %116 = or i32 %114, %115, !dbg !3031
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3032
  %117 = and i8 %1, -3, !dbg !3033
  %118 = icmp eq i8 %117, 4, !dbg !3033
  br i1 %118, label %119, label %187, !dbg !3033

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !3035
  br label %187, !dbg !3037

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %122, metadata !2893, metadata !DIExpression()), !dbg !2894
  %123 = and i32 %122, -241, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %123, metadata !2893, metadata !DIExpression()), !dbg !2894
  %124 = zext i8 %1 to i32, !dbg !3040
  %125 = shl nuw nsw i32 %124, 4, !dbg !3041
  %126 = or i32 %123, %125, !dbg !3042
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3043
  br label %187, !dbg !3044

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3045
  call void @llvm.dbg.value(metadata i32 %128, metadata !2893, metadata !DIExpression()), !dbg !2894
  %129 = and i32 %128, -3841, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %129, metadata !2893, metadata !DIExpression()), !dbg !2894
  %130 = zext i8 %1 to i32, !dbg !3047
  %131 = shl nuw nsw i32 %130, 8, !dbg !3048
  %132 = or i32 %129, %131, !dbg !3049
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3050
  br label %187, !dbg !3051

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %134, metadata !2893, metadata !DIExpression()), !dbg !2894
  %135 = and i32 %134, -61441, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %135, metadata !2893, metadata !DIExpression()), !dbg !2894
  %136 = zext i8 %1 to i32, !dbg !3054
  %137 = shl nuw nsw i32 %136, 12, !dbg !3055
  %138 = or i32 %135, %137, !dbg !3056
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3057
  br label %187, !dbg !3058

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %140, metadata !2893, metadata !DIExpression()), !dbg !2894
  %141 = and i32 %140, -983041, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %141, metadata !2893, metadata !DIExpression()), !dbg !2894
  %142 = zext i8 %1 to i32, !dbg !3061
  %143 = shl nuw nsw i32 %142, 16, !dbg !3062
  %144 = or i32 %141, %143, !dbg !3063
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3064
  br label %187, !dbg !3065

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %146, metadata !2893, metadata !DIExpression()), !dbg !2894
  %147 = and i32 %146, -15728641, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %147, metadata !2893, metadata !DIExpression()), !dbg !2894
  %148 = zext i8 %1 to i32, !dbg !3068
  %149 = shl nuw nsw i32 %148, 20, !dbg !3069
  %150 = or i32 %147, %149, !dbg !3070
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3071
  br label %187, !dbg !3072

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %152, metadata !2893, metadata !DIExpression()), !dbg !2894
  %153 = and i32 %152, -251658241, !dbg !3074
  call void @llvm.dbg.value(metadata i32 %153, metadata !2893, metadata !DIExpression()), !dbg !2894
  %154 = zext i8 %1 to i32, !dbg !3075
  %155 = shl nuw i32 %154, 24, !dbg !3076
  %156 = or i32 %153, %155, !dbg !3077
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3078
  br label %187, !dbg !3079

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %158, metadata !2893, metadata !DIExpression()), !dbg !2894
  %159 = and i32 %158, 268435455, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %159, metadata !2893, metadata !DIExpression()), !dbg !2894
  %160 = zext i8 %1 to i32, !dbg !3082
  %161 = shl i32 %160, 28, !dbg !3083
  %162 = or i32 %159, %161, !dbg !3084
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3085
  br label %187, !dbg !3086

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %164, metadata !2893, metadata !DIExpression()), !dbg !2894
  %165 = and i32 %164, -241, !dbg !3088
  call void @llvm.dbg.value(metadata i32 %165, metadata !2893, metadata !DIExpression()), !dbg !2894
  %166 = zext i8 %1 to i32, !dbg !3089
  %167 = shl nuw nsw i32 %166, 4, !dbg !3090
  %168 = or i32 %165, %167, !dbg !3091
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3092
  br label %187, !dbg !3093

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %170, metadata !2893, metadata !DIExpression()), !dbg !2894
  %171 = and i32 %170, -3841, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %171, metadata !2893, metadata !DIExpression()), !dbg !2894
  %172 = zext i8 %1 to i32, !dbg !3096
  %173 = shl nuw nsw i32 %172, 8, !dbg !3097
  %174 = or i32 %171, %173, !dbg !3098
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3099
  br label %187, !dbg !3100

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %176, metadata !2893, metadata !DIExpression()), !dbg !2894
  %177 = and i32 %176, -61441, !dbg !3102
  call void @llvm.dbg.value(metadata i32 %177, metadata !2893, metadata !DIExpression()), !dbg !2894
  %178 = zext i8 %1 to i32, !dbg !3103
  %179 = shl nuw nsw i32 %178, 12, !dbg !3104
  %180 = or i32 %177, %179, !dbg !3105
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3106
  br label %187, !dbg !3107

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %182, metadata !2893, metadata !DIExpression()), !dbg !2894
  %183 = and i32 %182, -983041, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %183, metadata !2893, metadata !DIExpression()), !dbg !2894
  %184 = zext i8 %1 to i32, !dbg !3110
  %185 = shl nuw nsw i32 %184, 16, !dbg !3111
  %186 = or i32 %183, %185, !dbg !3112
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3113
  br label %187, !dbg !3114

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !3115
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !3116 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3118, metadata !DIExpression()), !dbg !3119
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !3120
  tail call void asm sideeffect "dsb", ""() #15, !dbg !3121, !srcloc !3122
  tail call void asm sideeffect "isb", ""() #15, !dbg !3123, !srcloc !3124
  ret void, !dbg !3125
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #1 !dbg !3126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3130, metadata !DIExpression()), !dbg !3131
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !3132
  ret void, !dbg !3133
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !3134 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !3137, !srcloc !3143
  call void @llvm.dbg.value(metadata i32 %1, metadata !3140, metadata !DIExpression()) #15, !dbg !3144
  call void @llvm.dbg.value(metadata i32 %1, metadata !3136, metadata !DIExpression()), !dbg !3145
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !3146, !srcloc !3149
  ret i32 %1, !dbg !3150
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()) #15, !dbg !3158
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !3161, !srcloc !3162
  ret void, !dbg !3163
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %1, metadata !3169, metadata !DIExpression()), !dbg !3171
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
  ], !dbg !3172

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3171
  %4 = trunc i32 %1 to i8, !dbg !3173
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !3174
  br label %5, !dbg !3175

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !3171
  ret i32 %6, !dbg !3176
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #3 !dbg !3177 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #16, !dbg !3178
  ret i32 %1, !dbg !3179
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #3 !dbg !3180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3182, metadata !DIExpression()), !dbg !3185
  %2 = tail call i32 @get_current_count() #14, !dbg !3186
  %3 = add i32 %2, %0, !dbg !3187
  %4 = xor i32 %3, -1, !dbg !3188
  call void @llvm.dbg.value(metadata i32 %3, metadata !3183, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3185
  %5 = tail call i32 @get_current_count() #14, !dbg !3189
  call void @llvm.dbg.value(metadata i32 %5, metadata !3184, metadata !DIExpression()), !dbg !3185
  %6 = add i32 %5, %4, !dbg !3190
  %7 = icmp slt i32 %6, 0, !dbg !3190
  br i1 %7, label %8, label %12, !dbg !3191

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !3192
  call void @llvm.dbg.value(metadata i32 %9, metadata !3184, metadata !DIExpression()), !dbg !3185
  %10 = add i32 %9, %4, !dbg !3190
  %11 = icmp slt i32 %10, 0, !dbg !3190
  br i1 %11, label %8, label %12, !dbg !3191, !llvm.loop !3194

12:                                               ; preds = %8, %1
  ret void, !dbg !3196
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #3 !dbg !3197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3199, metadata !DIExpression()), !dbg !3202
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !3203
  %3 = add i32 %2, %0, !dbg !3204
  %4 = xor i32 %3, -1, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %3, metadata !3200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3202
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %5, metadata !3201, metadata !DIExpression()), !dbg !3202
  %6 = add i32 %5, %4, !dbg !3207
  %7 = icmp slt i32 %6, 0, !dbg !3207
  br i1 %7, label %8, label %12, !dbg !3208

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !3209
  call void @llvm.dbg.value(metadata i32 %9, metadata !3201, metadata !DIExpression()), !dbg !3202
  %10 = add i32 %9, %4, !dbg !3207
  %11 = icmp slt i32 %10, 0, !dbg !3207
  br i1 %11, label %8, label %12, !dbg !3208, !llvm.loop !3211

12:                                               ; preds = %8, %1
  ret void, !dbg !3213
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #3 !dbg !3214 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #16, !dbg !3215
  ret i32 %1, !dbg !3216
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #3 !dbg !3217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3221
  %2 = shl i32 %0, 5, !dbg !3222
  call void @llvm.dbg.value(metadata i32 %2, metadata !3220, metadata !DIExpression()), !dbg !3221
  %3 = mul i32 %0, 7, !dbg !3223
  %4 = udiv i32 %3, 10, !dbg !3224
  %5 = add i32 %4, %2, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %5, metadata !3220, metadata !DIExpression()), !dbg !3221
  %6 = mul i32 %0, 6, !dbg !3226
  %7 = udiv i32 %6, 100, !dbg !3227
  %8 = add i32 %5, %7, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %8, metadata !3220, metadata !DIExpression()), !dbg !3221
  %9 = shl i32 %0, 3, !dbg !3229
  %10 = udiv i32 %9, 1000, !dbg !3230
  %11 = add i32 %8, %10, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %11, metadata !3220, metadata !DIExpression()), !dbg !3221
  tail call void @delay_time(i32 noundef %11) #14, !dbg !3232
  ret void, !dbg !3233
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #3 !dbg !3234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3236, metadata !DIExpression()), !dbg !3239
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !3240
  %3 = udiv i32 %2, 1000000, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %3, metadata !3238, metadata !DIExpression()), !dbg !3239
  %4 = mul i32 %3, %0, !dbg !3242
  call void @llvm.dbg.value(metadata i32 %4, metadata !3237, metadata !DIExpression()), !dbg !3239
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !3243
  ret void, !dbg !3244
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #3 !dbg !3245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %1, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i1 %2, metadata !3251, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3253
  call void @llvm.dbg.value(metadata void ()* %3, metadata !3252, metadata !DIExpression()), !dbg !3253
  tail call void @GPT_Stop(i32 noundef %0) #16, !dbg !3254
  %5 = icmp eq i32 %0, 0, !dbg !3255
  br i1 %5, label %6, label %7, !dbg !3257

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !3258
  br label %8, !dbg !3260

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !3261
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #16, !dbg !3263
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #16, !dbg !3264
  ret void, !dbg !3265
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #3 !dbg !3266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3268, metadata !DIExpression()), !dbg !3269
  tail call void @GPT_Start(i32 noundef %0) #16, !dbg !3270
  ret void, !dbg !3271
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !3272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()), !dbg !3275
  tail call void @GPT_Stop(i32 noundef %0) #16, !dbg !3276
  ret void, !dbg !3277
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #3 !dbg !3278 {
  tail call void @CM4_GPT2Init() #16, !dbg !3279
  ret void, !dbg !3280
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #3 !dbg !3281 {
  tail call void @CM4_GPT4Init() #16, !dbg !3282
  ret void, !dbg !3283
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #1 !dbg !3284 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3286, metadata !DIExpression()), !dbg !3287
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3288

2:                                                ; preds = %1
  br label %3, !dbg !3289

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !3287
  br label %5, !dbg !3292

5:                                                ; preds = %3, %1
  ret void, !dbg !3292
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !3293 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3295, metadata !DIExpression()), !dbg !3297
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %1, metadata !3296, metadata !DIExpression()), !dbg !3297
  %2 = lshr i32 %1, 13, !dbg !3299
  %3 = and i32 %2, 7, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %3, metadata !3296, metadata !DIExpression()), !dbg !3297
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3301
  call void @llvm.dbg.value(metadata i32 %4, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i32 %4, metadata !3295, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !3297
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !3302
  %6 = load i32, i32* %5, align 4, !dbg !3302
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !3302
  %8 = load i32, i32* %7, align 4, !dbg !3302
  %9 = and i32 %4, -2048, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %9, metadata !3295, metadata !DIExpression()), !dbg !3297
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !3304
  %10 = or i32 %9, %8, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %10, metadata !3295, metadata !DIExpression()), !dbg !3297
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3306
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !3307
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !3308
  tail call void @SystemCoreClockUpdate() #16, !dbg !3309
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !3310
  %13 = udiv i32 %12, 1000, !dbg !3311
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #7 !dbg !3314 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !3315
  ret i32 %1, !dbg !3316
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #7 !dbg !3317 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !3318
  ret i32 %1, !dbg !3319
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #8 !dbg !3320 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3324
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3324
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3322, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3323, metadata !DIExpression()), !dbg !3326
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3327
  store volatile i32 %3, i32* %1, align 4, !dbg !3328
  %4 = load volatile i32, i32* %1, align 4, !dbg !3329
  %5 = lshr i32 %4, 28, !dbg !3330
  %6 = and i32 %5, 3, !dbg !3331
  store volatile i32 %6, i32* %1, align 4, !dbg !3332
  %7 = load volatile i32, i32* %1, align 4, !dbg !3333
  %8 = icmp eq i32 %7, 0, !dbg !3335
  br i1 %8, label %9, label %22, !dbg !3336

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3337
  store volatile i32 %10, i32* %1, align 4, !dbg !3339
  %11 = load volatile i32, i32* %1, align 4, !dbg !3340
  %12 = and i32 %11, -16777217, !dbg !3341
  store volatile i32 %12, i32* %1, align 4, !dbg !3342
  %13 = load volatile i32, i32* %1, align 4, !dbg !3343
  %14 = or i32 %13, 536870912, !dbg !3344
  store volatile i32 %14, i32* %1, align 4, !dbg !3345
  %15 = load volatile i32, i32* %1, align 4, !dbg !3346
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !3347
  br label %16, !dbg !3348

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3349
  store volatile i32 %17, i32* %1, align 4, !dbg !3351
  %18 = load volatile i32, i32* %1, align 4, !dbg !3352
  %19 = and i32 %18, 134217728, !dbg !3353
  store volatile i32 %19, i32* %1, align 4, !dbg !3354
  %20 = load volatile i32, i32* %1, align 4, !dbg !3355
  %21 = icmp eq i32 %20, 0, !dbg !3356
  br i1 %21, label %16, label %22, !dbg !3357, !llvm.loop !3358

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3360
  ret void, !dbg !3360
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #6 !dbg !3361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3368, metadata !DIExpression()), !dbg !3369
  %2 = bitcast i8* %0 to i32*, !dbg !3370
  %3 = load volatile i32, i32* %2, align 4, !dbg !3371
  ret i32 %3, !dbg !3372
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !3373 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3377, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i32 %1, metadata !3378, metadata !DIExpression()), !dbg !3379
  %3 = bitcast i8* %0 to i32*, !dbg !3380
  store volatile i32 %1, i32* %3, align 4, !dbg !3381
  ret void, !dbg !3382
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #8 !dbg !3383 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3385, metadata !DIExpression()), !dbg !3388
  %3 = bitcast i32* %2 to i8*, !dbg !3389
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3389
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3386, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3387, metadata !DIExpression()), !dbg !3388
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3391
  store volatile i32 %4, i32* %2, align 4, !dbg !3392
  %5 = load volatile i32, i32* %2, align 4, !dbg !3393
  %6 = lshr i32 %5, 28, !dbg !3394
  %7 = and i32 %6, 3, !dbg !3395
  store volatile i32 %7, i32* %2, align 4, !dbg !3396
  %8 = load volatile i32, i32* %2, align 4, !dbg !3397
  %9 = icmp eq i32 %8, 3, !dbg !3399
  br i1 %9, label %38, label %10, !dbg !3400

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3401
  store volatile i32 %11, i32* %2, align 4, !dbg !3403
  %12 = load volatile i32, i32* %2, align 4, !dbg !3404
  %13 = and i32 %12, -262145, !dbg !3405
  store volatile i32 %13, i32* %2, align 4, !dbg !3406
  %14 = load volatile i32, i32* %2, align 4, !dbg !3407
  %15 = and i32 %14, -16777217, !dbg !3408
  store volatile i32 %15, i32* %2, align 4, !dbg !3409
  %16 = load volatile i32, i32* %2, align 4, !dbg !3410
  store volatile i32 %16, i32* %2, align 4, !dbg !3411
  %17 = load volatile i32, i32* %2, align 4, !dbg !3412
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !3413
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3414
  store volatile i32 %18, i32* %2, align 4, !dbg !3415
  %19 = load volatile i32, i32* %2, align 4, !dbg !3416
  %20 = and i32 %19, -805306369, !dbg !3417
  store volatile i32 %20, i32* %2, align 4, !dbg !3418
  %21 = load volatile i32, i32* %2, align 4, !dbg !3419
  %22 = and i32 %21, -16777217, !dbg !3420
  store volatile i32 %22, i32* %2, align 4, !dbg !3421
  %23 = load volatile i32, i32* %2, align 4, !dbg !3422
  %24 = or i32 %23, 805306368, !dbg !3423
  store volatile i32 %24, i32* %2, align 4, !dbg !3424
  %25 = load volatile i32, i32* %2, align 4, !dbg !3425
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !3426
  br label %26, !dbg !3427

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3428
  store volatile i32 %27, i32* %2, align 4, !dbg !3430
  %28 = load volatile i32, i32* %2, align 4, !dbg !3431
  %29 = and i32 %28, 67108864, !dbg !3432
  store volatile i32 %29, i32* %2, align 4, !dbg !3433
  %30 = load volatile i32, i32* %2, align 4, !dbg !3434
  %31 = icmp eq i32 %30, 0, !dbg !3435
  br i1 %31, label %26, label %32, !dbg !3436, !llvm.loop !3437

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3439
  store volatile i32 %33, i32* %2, align 4, !dbg !3440
  %34 = load volatile i32, i32* %2, align 4, !dbg !3441
  %35 = and i32 %34, -262145, !dbg !3442
  store volatile i32 %35, i32* %2, align 4, !dbg !3443
  %36 = load volatile i32, i32* %2, align 4, !dbg !3444
  %37 = and i32 %36, -16777217, !dbg !3445
  store volatile i32 %37, i32* %2, align 4, !dbg !3446
  br label %38, !dbg !3447

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3448
  store volatile i32 %39, i32* %2, align 4, !dbg !3449
  %40 = icmp eq i8 %0, 0, !dbg !3450
  %41 = load volatile i32, i32* %2, align 4, !dbg !3452
  br i1 %40, label %44, label %42, !dbg !3453

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3454
  store volatile i32 %43, i32* %2, align 4, !dbg !3456
  br label %45, !dbg !3457

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3458
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3460
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !3461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3462
  ret void, !dbg !3462
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #8 !dbg !3463 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3467
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3465, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3466, metadata !DIExpression()), !dbg !3469
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3470
  store volatile i32 %3, i32* %1, align 4, !dbg !3471
  %4 = load volatile i32, i32* %1, align 4, !dbg !3472
  %5 = and i32 %4, -805306369, !dbg !3473
  store volatile i32 %5, i32* %1, align 4, !dbg !3474
  %6 = load volatile i32, i32* %1, align 4, !dbg !3475
  %7 = and i32 %6, -16777217, !dbg !3476
  store volatile i32 %7, i32* %1, align 4, !dbg !3477
  %8 = load volatile i32, i32* %1, align 4, !dbg !3478
  store volatile i32 %8, i32* %1, align 4, !dbg !3479
  %9 = load volatile i32, i32* %1, align 4, !dbg !3480
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !3481
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3482
  store volatile i32 %10, i32* %1, align 4, !dbg !3483
  %11 = load volatile i32, i32* %1, align 4, !dbg !3484
  %12 = and i32 %11, -262145, !dbg !3485
  store volatile i32 %12, i32* %1, align 4, !dbg !3486
  %13 = load volatile i32, i32* %1, align 4, !dbg !3487
  %14 = and i32 %13, -16777217, !dbg !3488
  store volatile i32 %14, i32* %1, align 4, !dbg !3489
  %15 = load volatile i32, i32* %1, align 4, !dbg !3490
  store volatile i32 %15, i32* %1, align 4, !dbg !3491
  %16 = load volatile i32, i32* %1, align 4, !dbg !3492
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !3493
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3494
  ret void, !dbg !3494
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !3495 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3499
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3499
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3498, metadata !DIExpression()), !dbg !3501
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3502
  store volatile i32 %3, i32* %1, align 4, !dbg !3503
  %4 = load volatile i32, i32* %1, align 4, !dbg !3504
  %5 = and i32 %4, -8, !dbg !3505
  store volatile i32 %5, i32* %1, align 4, !dbg !3506
  %6 = load volatile i32, i32* %1, align 4, !dbg !3507
  store volatile i32 %6, i32* %1, align 4, !dbg !3508
  %7 = load volatile i32, i32* %1, align 4, !dbg !3509
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3510
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3511
  store volatile i32 %8, i32* %1, align 4, !dbg !3512
  %9 = load volatile i32, i32* %1, align 4, !dbg !3513
  %10 = and i32 %9, -49153, !dbg !3514
  store volatile i32 %10, i32* %1, align 4, !dbg !3515
  %11 = load volatile i32, i32* %1, align 4, !dbg !3516
  store volatile i32 %11, i32* %1, align 4, !dbg !3517
  %12 = load volatile i32, i32* %1, align 4, !dbg !3518
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !3519
  br label %13, !dbg !3520

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3521
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3522
  %16 = icmp eq i32 %14, %15, !dbg !3523
  br i1 %16, label %17, label %13, !dbg !3520, !llvm.loop !3524

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !3526
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3527
  tail call void @SystemCoreClockUpdate() #16, !dbg !3528
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3529
  %20 = udiv i32 %19, 1000, !dbg !3530
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3531
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3532
  ret void, !dbg !3532
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !3533 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3537
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3537
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3536, metadata !DIExpression()), !dbg !3539
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !3540
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3541
  store volatile i32 %3, i32* %1, align 4, !dbg !3542
  %4 = load volatile i32, i32* %1, align 4, !dbg !3543
  %5 = and i32 %4, -49153, !dbg !3544
  store volatile i32 %5, i32* %1, align 4, !dbg !3545
  %6 = load volatile i32, i32* %1, align 4, !dbg !3546
  %7 = or i32 %6, 16384, !dbg !3547
  store volatile i32 %7, i32* %1, align 4, !dbg !3548
  %8 = load volatile i32, i32* %1, align 4, !dbg !3549
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3550
  br label %9, !dbg !3551

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3552
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3553
  %12 = icmp eq i32 %10, %11, !dbg !3554
  br i1 %12, label %13, label %9, !dbg !3551, !llvm.loop !3555

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3557
  store volatile i32 %14, i32* %1, align 4, !dbg !3558
  %15 = load volatile i32, i32* %1, align 4, !dbg !3559
  %16 = and i32 %15, -1009, !dbg !3560
  store volatile i32 %16, i32* %1, align 4, !dbg !3561
  %17 = load volatile i32, i32* %1, align 4, !dbg !3562
  %18 = or i32 %17, 128, !dbg !3563
  store volatile i32 %18, i32* %1, align 4, !dbg !3564
  %19 = load volatile i32, i32* %1, align 4, !dbg !3565
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3566
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3567
  store volatile i32 %20, i32* %1, align 4, !dbg !3568
  %21 = load volatile i32, i32* %1, align 4, !dbg !3569
  %22 = and i32 %21, -8, !dbg !3570
  store volatile i32 %22, i32* %1, align 4, !dbg !3571
  %23 = load volatile i32, i32* %1, align 4, !dbg !3572
  %24 = or i32 %23, 4, !dbg !3573
  store volatile i32 %24, i32* %1, align 4, !dbg !3574
  %25 = load volatile i32, i32* %1, align 4, !dbg !3575
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3576
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3577
  tail call void @SystemCoreClockUpdate() #16, !dbg !3578
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3579
  %27 = udiv i32 %26, 1000, !dbg !3580
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3581
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3582
  ret void, !dbg !3582
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !3583 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3587
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3587
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3585, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3586, metadata !DIExpression()), !dbg !3589
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !3590
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3591
  store volatile i32 %3, i32* %1, align 4, !dbg !3592
  %4 = load volatile i32, i32* %1, align 4, !dbg !3593
  %5 = and i32 %4, -49153, !dbg !3594
  store volatile i32 %5, i32* %1, align 4, !dbg !3595
  %6 = load volatile i32, i32* %1, align 4, !dbg !3596
  %7 = or i32 %6, 32768, !dbg !3597
  store volatile i32 %7, i32* %1, align 4, !dbg !3598
  %8 = load volatile i32, i32* %1, align 4, !dbg !3599
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3600
  br label %9, !dbg !3601

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3602
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3603
  %12 = icmp eq i32 %10, %11, !dbg !3604
  br i1 %12, label %13, label %9, !dbg !3601, !llvm.loop !3605

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3607
  store volatile i32 %14, i32* %1, align 4, !dbg !3608
  %15 = load volatile i32, i32* %1, align 4, !dbg !3609
  %16 = and i32 %15, -1009, !dbg !3610
  store volatile i32 %16, i32* %1, align 4, !dbg !3611
  %17 = load volatile i32, i32* %1, align 4, !dbg !3612
  %18 = or i32 %17, 32, !dbg !3613
  store volatile i32 %18, i32* %1, align 4, !dbg !3614
  %19 = load volatile i32, i32* %1, align 4, !dbg !3615
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3616
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3617
  store volatile i32 %20, i32* %1, align 4, !dbg !3618
  %21 = load volatile i32, i32* %1, align 4, !dbg !3619
  %22 = and i32 %21, -8, !dbg !3620
  store volatile i32 %22, i32* %1, align 4, !dbg !3621
  %23 = load volatile i32, i32* %1, align 4, !dbg !3622
  %24 = or i32 %23, 4, !dbg !3623
  store volatile i32 %24, i32* %1, align 4, !dbg !3624
  %25 = load volatile i32, i32* %1, align 4, !dbg !3625
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3626
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3627
  tail call void @SystemCoreClockUpdate() #16, !dbg !3628
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3629
  %27 = udiv i32 %26, 1000, !dbg !3630
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3631
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3632
  ret void, !dbg !3632
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !3633 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3637
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3637
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3635, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3636, metadata !DIExpression()), !dbg !3639
  tail call void @cmnPLL1ON() #14, !dbg !3640
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3641
  store volatile i32 %3, i32* %1, align 4, !dbg !3642
  %4 = load volatile i32, i32* %1, align 4, !dbg !3643
  %5 = and i32 %4, -49153, !dbg !3644
  store volatile i32 %5, i32* %1, align 4, !dbg !3645
  %6 = load volatile i32, i32* %1, align 4, !dbg !3646
  store volatile i32 %6, i32* %1, align 4, !dbg !3647
  %7 = load volatile i32, i32* %1, align 4, !dbg !3648
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3649
  br label %8, !dbg !3650

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3651
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3652
  %11 = icmp eq i32 %9, %10, !dbg !3653
  br i1 %11, label %12, label %8, !dbg !3650, !llvm.loop !3654

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3656
  store volatile i32 %13, i32* %1, align 4, !dbg !3657
  %14 = load volatile i32, i32* %1, align 4, !dbg !3658
  %15 = and i32 %14, -8, !dbg !3659
  store volatile i32 %15, i32* %1, align 4, !dbg !3660
  %16 = load volatile i32, i32* %1, align 4, !dbg !3661
  %17 = or i32 %16, 2, !dbg !3662
  store volatile i32 %17, i32* %1, align 4, !dbg !3663
  %18 = load volatile i32, i32* %1, align 4, !dbg !3664
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3665
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3666
  tail call void @SystemCoreClockUpdate() #16, !dbg !3667
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3668
  %20 = udiv i32 %19, 1000, !dbg !3669
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3670
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3671
  ret void, !dbg !3671
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #8 section ".ramTEXT" !dbg !3672 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3676
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3676
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3674, metadata !DIExpression()), !dbg !3677
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3675, metadata !DIExpression()), !dbg !3678
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3679
  store volatile i32 %3, i32* %1, align 4, !dbg !3680
  %4 = load volatile i32, i32* %1, align 4, !dbg !3681
  %5 = and i32 %4, -24577, !dbg !3682
  store volatile i32 %5, i32* %1, align 4, !dbg !3683
  %6 = load volatile i32, i32* %1, align 4, !dbg !3684
  store volatile i32 %6, i32* %1, align 4, !dbg !3685
  %7 = load volatile i32, i32* %1, align 4, !dbg !3686
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3687
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3688
  ret void, !dbg !3688
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #6 !dbg !3689 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3694
  call void @llvm.dbg.value(metadata i32 %1, metadata !3693, metadata !DIExpression()), !dbg !3695
  ret i32 %1, !dbg !3696
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #6 !dbg !3697 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3700
  %2 = and i32 %1, 1, !dbg !3702
  %3 = icmp eq i32 %2, 0, !dbg !3702
  br i1 %3, label %7, label %4, !dbg !3703

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3704
  %6 = and i32 %5, 255, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %5, metadata !3699, metadata !DIExpression()), !dbg !3707
  br label %7, !dbg !3708

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3709
  ret i32 %8, !dbg !3710
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !3711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3716, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8 %1, metadata !3717, metadata !DIExpression()), !dbg !3719
  %3 = icmp eq i32 %0, 0, !dbg !3720
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3720
  call void @llvm.dbg.value(metadata i32 %4, metadata !3718, metadata !DIExpression()), !dbg !3719
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3721

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3722
  %9 = and i32 %8, 32, !dbg !3723
  %10 = icmp eq i32 %9, 0, !dbg !3724
  br i1 %10, label %7, label %11, !dbg !3721, !llvm.loop !3725

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3727
  %13 = inttoptr i32 %4 to i32*, !dbg !3728
  store volatile i32 %12, i32* %13, align 65536, !dbg !3729
  ret void, !dbg !3730
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #1 !dbg !3731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3735, metadata !DIExpression()), !dbg !3738
  %2 = icmp eq i32 %0, 0, !dbg !3739
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3739
  call void @llvm.dbg.value(metadata i32 %3, metadata !3736, metadata !DIExpression()), !dbg !3738
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3740

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3741
  %8 = and i32 %7, 1, !dbg !3742
  %9 = icmp eq i32 %8, 0, !dbg !3743
  br i1 %9, label %6, label %10, !dbg !3740, !llvm.loop !3744

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3746
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3746
  %13 = trunc i32 %12 to i8, !dbg !3746
  call void @llvm.dbg.value(metadata i8 %13, metadata !3737, metadata !DIExpression()), !dbg !3738
  ret i8 %13, !dbg !3747
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #6 !dbg !3748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3755
  %2 = icmp eq i32 %0, 0, !dbg !3756
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %3, metadata !3753, metadata !DIExpression()), !dbg !3755
  %4 = or i32 %3, 20, !dbg !3757
  %5 = inttoptr i32 %4 to i32*, !dbg !3757
  %6 = load volatile i32, i32* %5, align 4, !dbg !3757
  %7 = and i32 %6, 1, !dbg !3759
  %8 = icmp eq i32 %7, 0, !dbg !3759
  br i1 %8, label %13, label %9, !dbg !3760

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3761
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3761
  %12 = and i32 %11, 255, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %11, metadata !3754, metadata !DIExpression()), !dbg !3755
  br label %13, !dbg !3764

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3765
  ret i32 %14, !dbg !3766
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3767 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3771, metadata !DIExpression()), !dbg !3772
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3773
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3774

2:                                                ; preds = %1
  br label %3, !dbg !3775

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3779
  %6 = or i32 %5, 1, !dbg !3779
  store volatile i32 %6, i32* %4, align 4, !dbg !3779
  br label %7, !dbg !3780

7:                                                ; preds = %3, %1
  ret void, !dbg !3780
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 %1, metadata !3786, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i16 %2, metadata !3787, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i16 %3, metadata !3788, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i16 %4, metadata !3789, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3791, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3798, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3800, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 0, metadata !3801, metadata !DIExpression()), !dbg !3802
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !3805
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3806
  %7 = icmp eq i32 %0, 1, !dbg !3807
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %8, metadata !3791, metadata !DIExpression()), !dbg !3802
  %9 = or i32 %8, 36, !dbg !3808
  %10 = inttoptr i32 %9 to i32*, !dbg !3808
  store volatile i32 3, i32* %10, align 4, !dbg !3809
  %11 = or i32 %8, 12, !dbg !3810
  %12 = inttoptr i32 %11 to i32*, !dbg !3810
  %13 = load volatile i32, i32* %12, align 4, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %13, metadata !3793, metadata !DIExpression()), !dbg !3802
  %14 = or i32 %13, 128, !dbg !3811
  store volatile i32 %14, i32* %12, align 4, !dbg !3812
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3813
  %16 = udiv i32 %15, %1, !dbg !3814
  call void @llvm.dbg.value(metadata i32 %16, metadata !3792, metadata !DIExpression()), !dbg !3802
  %17 = lshr i32 %16, 8, !dbg !3815
  %18 = add nuw nsw i32 %17, 1, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %18, metadata !3794, metadata !DIExpression()), !dbg !3802
  %19 = udiv i32 %16, %18, !dbg !3817
  %20 = add i32 %19, -1, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %20, metadata !3795, metadata !DIExpression()), !dbg !3802
  %21 = icmp eq i32 %20, 3, !dbg !3820
  %22 = lshr i32 %20, 1, !dbg !3822
  %23 = add nsw i32 %22, -1, !dbg !3822
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3822
  call void @llvm.dbg.value(metadata i32 %24, metadata !3796, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i32 undef, metadata !3801, metadata !DIExpression()), !dbg !3802
  %25 = mul i32 %15, 10, !dbg !3823
  %26 = udiv i32 %25, %1, !dbg !3824
  %27 = udiv i32 %26, %16, !dbg !3825
  %28 = mul i32 %19, -10, !dbg !3826
  %29 = add i32 %27, %28, !dbg !3827
  %30 = urem i32 %29, 10, !dbg !3828
  call void @llvm.dbg.value(metadata i32 %30, metadata !3797, metadata !DIExpression()), !dbg !3802
  %31 = and i32 %18, 255, !dbg !3829
  %32 = inttoptr i32 %8 to i32*, !dbg !3830
  store volatile i32 %31, i32* %32, align 65536, !dbg !3831
  %33 = lshr i32 %18, 8, !dbg !3832
  %34 = and i32 %33, 255, !dbg !3833
  %35 = or i32 %8, 4, !dbg !3834
  %36 = inttoptr i32 %35 to i32*, !dbg !3834
  store volatile i32 %34, i32* %36, align 4, !dbg !3835
  %37 = or i32 %8, 40, !dbg !3836
  %38 = inttoptr i32 %37 to i32*, !dbg !3836
  store volatile i32 %20, i32* %38, align 8, !dbg !3837
  %39 = or i32 %8, 44, !dbg !3838
  %40 = inttoptr i32 %39 to i32*, !dbg !3838
  store volatile i32 %24, i32* %40, align 4, !dbg !3839
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3840
  %42 = load i16, i16* %41, align 2, !dbg !3840
  %43 = zext i16 %42 to i32, !dbg !3840
  %44 = or i32 %8, 88, !dbg !3841
  %45 = inttoptr i32 %44 to i32*, !dbg !3841
  store volatile i32 %43, i32* %45, align 8, !dbg !3842
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3843
  %47 = load i16, i16* %46, align 2, !dbg !3843
  %48 = zext i16 %47 to i32, !dbg !3843
  %49 = or i32 %8, 84, !dbg !3844
  %50 = inttoptr i32 %49 to i32*, !dbg !3844
  store volatile i32 %48, i32* %50, align 4, !dbg !3845
  store volatile i32 %13, i32* %12, align 4, !dbg !3846
  %51 = or i32 %8, 8, !dbg !3847
  %52 = inttoptr i32 %51 to i32*, !dbg !3847
  store volatile i32 71, i32* %52, align 8, !dbg !3848
  %53 = inttoptr i32 %11 to i16*, !dbg !3849
  %54 = load volatile i16, i16* %53, align 4, !dbg !3849
  call void @llvm.dbg.value(metadata i16 %54, metadata !3790, metadata !DIExpression()), !dbg !3802
  %55 = and i16 %54, -64, !dbg !3850
  call void @llvm.dbg.value(metadata i16 %54, metadata !3790, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3802
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3790, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3802
  %56 = and i16 %2, -61, !dbg !3851
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3790, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3802
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3790, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3802
  %57 = and i16 %4, -57, !dbg !3852
  call void @llvm.dbg.value(metadata i16 undef, metadata !3790, metadata !DIExpression()), !dbg !3802
  %58 = or i16 %56, %3, !dbg !3851
  %59 = or i16 %58, %57, !dbg !3852
  %60 = or i16 %59, %55, !dbg !3853
  call void @llvm.dbg.value(metadata i16 %60, metadata !3790, metadata !DIExpression()), !dbg !3802
  store volatile i16 %60, i16* %53, align 4, !dbg !3854
  ret void, !dbg !3855
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !3856 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3861, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %1, metadata !3862, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32* %2, metadata !3863, metadata !DIExpression()), !dbg !3864
  %4 = icmp eq i32 %0, 0, !dbg !3865
  %5 = icmp eq i32 %1, 0, !dbg !3867
  br i1 %4, label %6, label %16, !dbg !3868

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3869

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3871
  %9 = zext i16 %8 to i32, !dbg !3871
  br label %26, !dbg !3874

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3875
  %12 = zext i16 %11 to i32, !dbg !3875
  store i32 %12, i32* %2, align 4, !dbg !3877
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3878
  %14 = zext i16 %13 to i32, !dbg !3878
  %15 = sub nsw i32 %12, %14, !dbg !3879
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3880

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3882
  %19 = zext i16 %18 to i32, !dbg !3882
  br label %26, !dbg !3885

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3886
  %22 = zext i16 %21 to i32, !dbg !3886
  store i32 %22, i32* %2, align 4, !dbg !3888
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3889
  %24 = zext i16 %23 to i32, !dbg !3889
  %25 = sub nsw i32 %22, %24, !dbg !3890
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3867
  ret void, !dbg !3891
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %1, metadata !3897, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 %2, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3899, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 0, metadata !3899, metadata !DIExpression()), !dbg !3900
  %4 = icmp eq i32 %2, 0, !dbg !3901
  br i1 %4, label %15, label %5, !dbg !3904

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3899, metadata !DIExpression()), !dbg !3900
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3905

7:                                                ; preds = %5
  br label %8, !dbg !3907

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3911
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3911
  store i8 %10, i8* %11, align 1, !dbg !3911
  br label %12, !dbg !3912

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3912
  call void @llvm.dbg.value(metadata i32 %13, metadata !3899, metadata !DIExpression()), !dbg !3900
  %14 = icmp eq i32 %13, %2, !dbg !3901
  br i1 %14, label %15, label %5, !dbg !3904, !llvm.loop !3913

15:                                               ; preds = %12, %3
  ret void, !dbg !3915
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3922, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i8* %1, metadata !3923, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %2, metadata !3924, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 0, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 0, metadata !3925, metadata !DIExpression()), !dbg !3926
  %4 = icmp eq i32 %2, 0, !dbg !3927
  br i1 %4, label %16, label %5, !dbg !3930

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3925, metadata !DIExpression()), !dbg !3926
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3931

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3933
  %9 = load i8, i8* %8, align 1, !dbg !3933
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3936
  br label %13, !dbg !3937

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3938
  %12 = load i8, i8* %11, align 1, !dbg !3938
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3941
  br label %13, !dbg !3942

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %14, metadata !3925, metadata !DIExpression()), !dbg !3926
  %15 = icmp eq i32 %14, %2, !dbg !3927
  br i1 %15, label %16, label %5, !dbg !3930, !llvm.loop !3944

16:                                               ; preds = %13, %3
  ret void, !dbg !3946
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3947 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3951, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i8* %1, metadata !3952, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 %2, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 %3, metadata !3954, metadata !DIExpression()), !dbg !3955
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3956

5:                                                ; preds = %4
  br label %6, !dbg !3957

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3961
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !3961
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !3961
  br label %9, !dbg !3962

9:                                                ; preds = %6, %4
  ret void, !dbg !3962
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3967, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i8* %1, metadata !3968, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %2, metadata !3969, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %3, metadata !3970, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %4, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %5, metadata !3972, metadata !DIExpression()), !dbg !3973
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3974

7:                                                ; preds = %6
  br label %8, !dbg !3975

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3979
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !3979
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !3979
  br label %11, !dbg !3980

11:                                               ; preds = %8, %6
  ret void, !dbg !3980
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3981 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3985, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3986, metadata !DIExpression()), !dbg !3987
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3988

3:                                                ; preds = %2
  br label %4, !dbg !3989

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3993
  br label %6, !dbg !3994

6:                                                ; preds = %4, %2
  ret void, !dbg !3994
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3998, metadata !DIExpression()), !dbg !3999
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !4000

3:                                                ; preds = %2
  br label %4, !dbg !4001

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !4005
  br label %6, !dbg !4006

6:                                                ; preds = %4, %2
  ret void, !dbg !4006
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !4007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4009, metadata !DIExpression()), !dbg !4013
  %2 = icmp eq i32 %0, 0, !dbg !4014
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %3, metadata !4010, metadata !DIExpression()), !dbg !4013
  %4 = or i32 %3, 12, !dbg !4015
  %5 = inttoptr i32 %4 to i32*, !dbg !4015
  %6 = load volatile i32, i32* %5, align 4, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %6, metadata !4012, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4013
  store volatile i32 191, i32* %5, align 4, !dbg !4016
  %7 = or i32 %3, 8, !dbg !4017
  %8 = inttoptr i32 %7 to i32*, !dbg !4017
  %9 = load volatile i32, i32* %8, align 8, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %9, metadata !4011, metadata !DIExpression()), !dbg !4013
  %10 = and i32 %9, 65327, !dbg !4018
  %11 = or i32 %10, 208, !dbg !4018
  call void @llvm.dbg.value(metadata i32 %9, metadata !4011, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !4013
  store volatile i32 %11, i32* %8, align 8, !dbg !4019
  %12 = or i32 %3, 68, !dbg !4020
  %13 = inttoptr i32 %12 to i32*, !dbg !4020
  store volatile i32 0, i32* %13, align 4, !dbg !4021
  store volatile i32 0, i32* %5, align 4, !dbg !4022
  %14 = or i32 %3, 16, !dbg !4023
  %15 = inttoptr i32 %14 to i32*, !dbg !4023
  store volatile i32 2, i32* %15, align 16, !dbg !4024
  %16 = and i32 %6, 65535, !dbg !4025
  store volatile i32 %16, i32* %5, align 4, !dbg !4026
  ret void, !dbg !4027
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 !dbg !4028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4032, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i8 %1, metadata !4033, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i8 %2, metadata !4034, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i8 %3, metadata !4035, metadata !DIExpression()), !dbg !4039
  %5 = icmp eq i32 %0, 0, !dbg !4040
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !4040
  call void @llvm.dbg.value(metadata i32 %6, metadata !4036, metadata !DIExpression()), !dbg !4039
  %7 = or i32 %6, 12, !dbg !4041
  %8 = inttoptr i32 %7 to i32*, !dbg !4041
  %9 = load volatile i32, i32* %8, align 4, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %9, metadata !4038, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4039
  store volatile i32 191, i32* %8, align 4, !dbg !4042
  %10 = zext i8 %1 to i32, !dbg !4043
  %11 = or i32 %6, 16, !dbg !4044
  %12 = inttoptr i32 %11 to i32*, !dbg !4044
  store volatile i32 %10, i32* %12, align 16, !dbg !4045
  %13 = or i32 %6, 20, !dbg !4046
  %14 = inttoptr i32 %13 to i32*, !dbg !4046
  store volatile i32 %10, i32* %14, align 4, !dbg !4047
  %15 = zext i8 %2 to i32, !dbg !4048
  %16 = or i32 %6, 24, !dbg !4049
  %17 = inttoptr i32 %16 to i32*, !dbg !4049
  store volatile i32 %15, i32* %17, align 8, !dbg !4050
  %18 = or i32 %6, 28, !dbg !4051
  %19 = inttoptr i32 %18 to i32*, !dbg !4051
  store volatile i32 %15, i32* %19, align 4, !dbg !4052
  %20 = or i32 %6, 8, !dbg !4053
  %21 = inttoptr i32 %20 to i32*, !dbg !4053
  %22 = load volatile i32, i32* %21, align 8, !dbg !4053
  call void @llvm.dbg.value(metadata i32 %22, metadata !4037, metadata !DIExpression()), !dbg !4039
  %23 = and i32 %22, 65525, !dbg !4054
  %24 = or i32 %23, 10, !dbg !4054
  call void @llvm.dbg.value(metadata i32 %22, metadata !4037, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !4039
  store volatile i32 %24, i32* %21, align 8, !dbg !4055
  %25 = and i32 %9, 65535, !dbg !4056
  store volatile i32 %25, i32* %8, align 4, !dbg !4057
  %26 = zext i8 %3 to i32, !dbg !4058
  %27 = or i32 %6, 64, !dbg !4059
  %28 = inttoptr i32 %27 to i32*, !dbg !4059
  store volatile i32 %26, i32* %28, align 64, !dbg !4060
  %29 = or i32 %6, 68, !dbg !4061
  %30 = inttoptr i32 %29 to i32*, !dbg !4061
  store volatile i32 1, i32* %30, align 4, !dbg !4062
  ret void, !dbg !4063
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !4064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4069
  %2 = icmp eq i32 %0, 0, !dbg !4070
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %3, metadata !4067, metadata !DIExpression()), !dbg !4069
  %4 = or i32 %3, 12, !dbg !4071
  %5 = inttoptr i32 %4 to i32*, !dbg !4071
  %6 = load volatile i32, i32* %5, align 4, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %6, metadata !4068, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4069
  store volatile i32 191, i32* %5, align 4, !dbg !4072
  %7 = or i32 %3, 8, !dbg !4073
  %8 = inttoptr i32 %7 to i32*, !dbg !4073
  store volatile i32 0, i32* %8, align 8, !dbg !4074
  store volatile i32 0, i32* %5, align 4, !dbg !4075
  %9 = and i32 %6, 65535, !dbg !4076
  store volatile i32 %9, i32* %5, align 4, !dbg !4077
  ret void, !dbg !4078
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #1 !dbg !4079 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4081, metadata !DIExpression()), !dbg !4083
  %2 = icmp eq i32 %0, 0, !dbg !4084
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %3, metadata !4082, metadata !DIExpression()), !dbg !4083
  %4 = or i32 %3, 12, !dbg !4085
  %5 = inttoptr i32 %4 to i32*, !dbg !4085
  store volatile i32 191, i32* %5, align 4, !dbg !4086
  %6 = or i32 %3, 8, !dbg !4087
  %7 = inttoptr i32 %6 to i32*, !dbg !4087
  store volatile i32 16, i32* %7, align 8, !dbg !4088
  %8 = or i32 %3, 16, !dbg !4089
  %9 = inttoptr i32 %8 to i32*, !dbg !4089
  store volatile i32 0, i32* %9, align 16, !dbg !4090
  %10 = or i32 %3, 24, !dbg !4091
  %11 = inttoptr i32 %10 to i32*, !dbg !4091
  store volatile i32 0, i32* %11, align 8, !dbg !4092
  store volatile i32 128, i32* %5, align 4, !dbg !4093
  %12 = inttoptr i32 %3 to i32*, !dbg !4094
  store volatile i32 0, i32* %12, align 65536, !dbg !4095
  %13 = or i32 %3, 4, !dbg !4096
  %14 = inttoptr i32 %13 to i32*, !dbg !4096
  store volatile i32 0, i32* %14, align 4, !dbg !4097
  store volatile i32 0, i32* %5, align 4, !dbg !4098
  store volatile i32 0, i32* %14, align 4, !dbg !4099
  store volatile i32 0, i32* %7, align 8, !dbg !4100
  store volatile i32 191, i32* %5, align 4, !dbg !4101
  store volatile i32 0, i32* %7, align 8, !dbg !4102
  store volatile i32 0, i32* %5, align 4, !dbg !4103
  store volatile i32 0, i32* %9, align 16, !dbg !4104
  %15 = or i32 %3, 28, !dbg !4105
  %16 = inttoptr i32 %15 to i32*, !dbg !4105
  store volatile i32 0, i32* %16, align 4, !dbg !4106
  %17 = or i32 %3, 36, !dbg !4107
  %18 = inttoptr i32 %17 to i32*, !dbg !4107
  store volatile i32 0, i32* %18, align 4, !dbg !4108
  %19 = or i32 %3, 40, !dbg !4109
  %20 = inttoptr i32 %19 to i32*, !dbg !4109
  store volatile i32 0, i32* %20, align 8, !dbg !4110
  %21 = or i32 %3, 44, !dbg !4111
  %22 = inttoptr i32 %21 to i32*, !dbg !4111
  store volatile i32 0, i32* %22, align 4, !dbg !4112
  %23 = or i32 %3, 52, !dbg !4113
  %24 = inttoptr i32 %23 to i32*, !dbg !4113
  store volatile i32 0, i32* %24, align 4, !dbg !4114
  %25 = or i32 %3, 60, !dbg !4115
  %26 = inttoptr i32 %25 to i32*, !dbg !4115
  store volatile i32 0, i32* %26, align 4, !dbg !4116
  %27 = or i32 %3, 64, !dbg !4117
  %28 = inttoptr i32 %27 to i32*, !dbg !4117
  store volatile i32 0, i32* %28, align 64, !dbg !4118
  %29 = or i32 %3, 68, !dbg !4119
  %30 = inttoptr i32 %29 to i32*, !dbg !4119
  store volatile i32 0, i32* %30, align 4, !dbg !4120
  %31 = or i32 %3, 72, !dbg !4121
  %32 = inttoptr i32 %31 to i32*, !dbg !4121
  store volatile i32 0, i32* %32, align 8, !dbg !4122
  %33 = or i32 %3, 76, !dbg !4123
  %34 = inttoptr i32 %33 to i32*, !dbg !4123
  store volatile i32 0, i32* %34, align 4, !dbg !4124
  %35 = or i32 %3, 80, !dbg !4125
  %36 = inttoptr i32 %35 to i32*, !dbg !4125
  store volatile i32 0, i32* %36, align 16, !dbg !4126
  %37 = or i32 %3, 84, !dbg !4127
  %38 = inttoptr i32 %37 to i32*, !dbg !4127
  store volatile i32 0, i32* %38, align 4, !dbg !4128
  %39 = or i32 %3, 88, !dbg !4129
  %40 = inttoptr i32 %39 to i32*, !dbg !4129
  store volatile i32 0, i32* %40, align 8, !dbg !4130
  %41 = or i32 %3, 96, !dbg !4131
  %42 = inttoptr i32 %41 to i32*, !dbg !4131
  store volatile i32 0, i32* %42, align 32, !dbg !4132
  ret void, !dbg !4133
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #1 !dbg !4134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4138
  %2 = icmp eq i32 %0, 0, !dbg !4139
  call void @llvm.dbg.value(metadata i32 undef, metadata !4137, metadata !DIExpression()), !dbg !4138
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !4140

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !4141
  %7 = and i32 %6, 64, !dbg !4142
  %8 = icmp eq i32 %7, 0, !dbg !4143
  br i1 %8, label %5, label %9, !dbg !4140, !llvm.loop !4144

9:                                                ; preds = %5
  ret void, !dbg !4146
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4147 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4151, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i32 %1, metadata !4152, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i8* %2, metadata !4153, metadata !DIExpression()), !dbg !4164
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4165
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4165
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4154, metadata !DIExpression()), !dbg !4166
  %7 = bitcast i32* %5 to i8*, !dbg !4167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4167
  call void @llvm.dbg.value(metadata i32* %5, metadata !4163, metadata !DIExpression(DW_OP_deref)), !dbg !4164
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4168
  call void @llvm.va_start(i8* nonnull %6), !dbg !4169
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4170
  %10 = load i32, i32* %9, align 4, !dbg !4170
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4170
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4170
  call void @llvm.va_end(i8* nonnull %6), !dbg !4171
  %13 = load i32, i32* %5, align 4, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %13, metadata !4163, metadata !DIExpression()), !dbg !4164
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4173
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4174
  ret void, !dbg !4174
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4175 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4177, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i32 %1, metadata !4178, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i8* %2, metadata !4179, metadata !DIExpression()), !dbg !4182
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4183
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4180, metadata !DIExpression()), !dbg !4184
  %7 = bitcast i32* %5 to i8*, !dbg !4185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4185
  call void @llvm.dbg.value(metadata i32* %5, metadata !4181, metadata !DIExpression(DW_OP_deref)), !dbg !4182
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4186
  call void @llvm.va_start(i8* nonnull %6), !dbg !4187
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4188
  %10 = load i32, i32* %9, align 4, !dbg !4188
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4188
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4188
  call void @llvm.va_end(i8* nonnull %6), !dbg !4189
  %13 = load i32, i32* %5, align 4, !dbg !4190
  call void @llvm.dbg.value(metadata i32 %13, metadata !4181, metadata !DIExpression()), !dbg !4182
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4192
  ret void, !dbg !4192
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4193 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4195, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i32 %1, metadata !4196, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i8* %2, metadata !4197, metadata !DIExpression()), !dbg !4200
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4201
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4201
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4198, metadata !DIExpression()), !dbg !4202
  %7 = bitcast i32* %5 to i8*, !dbg !4203
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4203
  call void @llvm.dbg.value(metadata i32* %5, metadata !4199, metadata !DIExpression(DW_OP_deref)), !dbg !4200
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4204
  call void @llvm.va_start(i8* nonnull %6), !dbg !4205
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4206
  %10 = load i32, i32* %9, align 4, !dbg !4206
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4206
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4206
  call void @llvm.va_end(i8* nonnull %6), !dbg !4207
  %13 = load i32, i32* %5, align 4, !dbg !4208
  call void @llvm.dbg.value(metadata i32 %13, metadata !4199, metadata !DIExpression()), !dbg !4200
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4209
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4210
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4210
  ret void, !dbg !4210
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4211 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4213, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %1, metadata !4214, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8* %2, metadata !4215, metadata !DIExpression()), !dbg !4218
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4219
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4219
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4216, metadata !DIExpression()), !dbg !4220
  %7 = bitcast i32* %5 to i8*, !dbg !4221
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4221
  call void @llvm.dbg.value(metadata i32* %5, metadata !4217, metadata !DIExpression(DW_OP_deref)), !dbg !4218
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !4222
  call void @llvm.va_start(i8* nonnull %6), !dbg !4223
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4224
  %10 = load i32, i32* %9, align 4, !dbg !4224
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4224
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !4224
  call void @llvm.va_end(i8* nonnull %6), !dbg !4225
  %13 = load i32, i32* %5, align 4, !dbg !4226
  call void @llvm.dbg.value(metadata i32 %13, metadata !4217, metadata !DIExpression()), !dbg !4218
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !4227
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4228
  ret void, !dbg !4228
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #11 !dbg !4229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4235, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i32 %1, metadata !4236, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i8* %2, metadata !4237, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i8* %3, metadata !4238, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata i32 %4, metadata !4239, metadata !DIExpression()), !dbg !4240
  ret void, !dbg !4241
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halADC_Get_ADC_Efuse() local_unnamed_addr #3 !dbg !4242 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i16 94, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i16 95, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #15, !dbg !4249
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #15, !dbg !4249
  call void @llvm.dbg.value(metadata i8* %1, metadata !4246, metadata !DIExpression(DW_OP_deref)), !dbg !4248
  %3 = call i32 @hal_efuse_read(i16 noundef zeroext 94, i8* noundef nonnull %1, i8 noundef zeroext 1) #16, !dbg !4250
  %4 = icmp eq i32 %3, 0, !dbg !4252
  %5 = load i8, i8* %1, align 1, !dbg !4253
  %6 = select i1 %4, i8 %5, i8 0, !dbg !4253
  store volatile i8 %6, i8* @g_adc_efuse_offset, align 1, !dbg !4254
  call void @llvm.dbg.value(metadata i8* %2, metadata !4247, metadata !DIExpression(DW_OP_deref)), !dbg !4248
  %7 = call i32 @hal_efuse_read(i16 noundef zeroext 95, i8* noundef nonnull %2, i8 noundef zeroext 1) #16, !dbg !4255
  %8 = icmp eq i32 %7, 0, !dbg !4257
  %9 = load i8, i8* %2, align 1, !dbg !4258
  %10 = select i1 %8, i8 %9, i8 0, !dbg !4258
  store volatile i8 %10, i8* @g_adc_efuse_gain, align 1, !dbg !4259
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #15, !dbg !4260
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #15, !dbg !4260
  ret void, !dbg !4260
}

; Function Attrs: optsize
declare dso_local i32 @hal_efuse_read(i16 noundef zeroext, i8* noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @halADC_Remove_Data_Offset(i32* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #8 !dbg !4261 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4265, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32* %1, metadata !4266, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 %2, metadata !4267, metadata !DIExpression()), !dbg !4275
  %4 = load volatile i8, i8* @g_adc_efuse_offset, align 1, !dbg !4276
  call void @llvm.dbg.value(metadata i8 %4, metadata !4268, metadata !DIExpression()), !dbg !4275
  %5 = load volatile i8, i8* @g_adc_efuse_gain, align 1, !dbg !4277
  call void @llvm.dbg.value(metadata i8 %5, metadata !4269, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i8 %4, metadata !4270, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)), !dbg !4275
  call void @llvm.dbg.value(metadata i8 %5, metadata !4271, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)), !dbg !4275
  call void @llvm.dbg.value(metadata i8 %4, metadata !4268, metadata !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value)), !dbg !4275
  call void @llvm.dbg.value(metadata i8 %5, metadata !4269, metadata !DIExpression(DW_OP_constu, 127, DW_OP_and, DW_OP_stack_value)), !dbg !4275
  call void @llvm.dbg.value(metadata i32 0, metadata !4272, metadata !DIExpression()), !dbg !4275
  %6 = icmp eq i32 %2, 0, !dbg !4278
  br i1 %6, label %47, label %7, !dbg !4281

7:                                                ; preds = %3
  %8 = and i8 %5, 127, !dbg !4282
  call void @llvm.dbg.value(metadata i8 %8, metadata !4269, metadata !DIExpression()), !dbg !4275
  %9 = and i8 %4, 127, !dbg !4283
  call void @llvm.dbg.value(metadata i8 %9, metadata !4268, metadata !DIExpression()), !dbg !4275
  %10 = icmp sgt i8 %4, -1
  %11 = zext i8 %9 to i16
  %12 = icmp sgt i8 %5, -1
  %13 = zext i8 %8 to i32
  br label %14, !dbg !4281

14:                                               ; preds = %7, %38
  %15 = phi i32 [ 0, %7 ], [ %45, %38 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4272, metadata !DIExpression()), !dbg !4275
  %16 = getelementptr inbounds i32, i32* %0, i32 %15, !dbg !4284
  %17 = load i32, i32* %16, align 4, !dbg !4284
  %18 = trunc i32 %17 to i16, !dbg !4286
  %19 = lshr i16 %18, 4, !dbg !4286
  call void @llvm.dbg.value(metadata i16 %19, metadata !4273, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i16 %19, metadata !4274, metadata !DIExpression()), !dbg !4275
  br i1 %10, label %20, label %22, !dbg !4287

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata !DIArgList(i16 %19, i16 %11), metadata !4273, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4275
  %21 = tail call i16 @llvm.usub.sat.i16(i16 %19, i16 %11), !dbg !4288
  call void @llvm.dbg.value(metadata i16 %21, metadata !4273, metadata !DIExpression()), !dbg !4275
  br label %26, !dbg !4291

22:                                               ; preds = %14
  %23 = add nuw nsw i16 %19, %11, !dbg !4292
  call void @llvm.dbg.value(metadata i16 %23, metadata !4273, metadata !DIExpression()), !dbg !4275
  %24 = icmp ult i16 %23, 4095, !dbg !4294
  %25 = select i1 %24, i16 %23, i16 4095, !dbg !4294
  call void @llvm.dbg.value(metadata i16 %25, metadata !4273, metadata !DIExpression()), !dbg !4275
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i16 [ %21, %20 ], [ %25, %22 ], !dbg !4295
  call void @llvm.dbg.value(metadata i16 %27, metadata !4273, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i16 %27, metadata !4274, metadata !DIExpression()), !dbg !4275
  %28 = zext i16 %27 to i32, !dbg !4296
  %29 = mul nuw nsw i32 %28, %13, !dbg !4296
  %30 = udiv i32 %29, 2500, !dbg !4296
  %31 = trunc i32 %30 to i16, !dbg !4296
  br i1 %12, label %32, label %36, !dbg !4298

32:                                               ; preds = %26
  %33 = add nuw nsw i16 %27, %31, !dbg !4299
  call void @llvm.dbg.value(metadata i16 %33, metadata !4273, metadata !DIExpression()), !dbg !4275
  %34 = icmp ult i16 %33, 4095, !dbg !4301
  %35 = select i1 %34, i16 %33, i16 4095, !dbg !4301
  call void @llvm.dbg.value(metadata i16 %35, metadata !4273, metadata !DIExpression()), !dbg !4275
  br label %38, !dbg !4302

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata !DIArgList(i16 %27, i16 %31), metadata !4273, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4275
  %37 = tail call i16 @llvm.usub.sat.i16(i16 %27, i16 %31), !dbg !4303
  call void @llvm.dbg.value(metadata i16 %37, metadata !4273, metadata !DIExpression()), !dbg !4275
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i16 [ %35, %32 ], [ %37, %36 ], !dbg !4296
  call void @llvm.dbg.value(metadata i16 %39, metadata !4273, metadata !DIExpression()), !dbg !4275
  %40 = and i32 %17, -65521, !dbg !4305
  %41 = zext i16 %39 to i32, !dbg !4306
  %42 = shl nuw nsw i32 %41, 4, !dbg !4307
  %43 = or i32 %42, %40, !dbg !4308
  %44 = getelementptr inbounds i32, i32* %1, i32 %15, !dbg !4309
  store i32 %43, i32* %44, align 4, !dbg !4310
  %45 = add nuw i32 %15, 1, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %45, metadata !4272, metadata !DIExpression()), !dbg !4275
  %46 = icmp eq i32 %45, %2, !dbg !4278
  br i1 %46, label %47, label %14, !dbg !4281, !llvm.loop !4312

47:                                               ; preds = %38, %3
  ret void, !dbg !4314
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_adc_init() local_unnamed_addr #3 !dbg !4315 {
  %1 = alloca %struct._ADC_FSM_PARAM_T, align 4
  %2 = bitcast %struct._ADC_FSM_PARAM_T* %1 to i8*, !dbg !4332
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #15, !dbg !4332
  call void @llvm.dbg.declare(metadata %struct._ADC_FSM_PARAM_T* %1, metadata !4320, metadata !DIExpression()), !dbg !4333
  %3 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 2, !dbg !4333
  %4 = bitcast i16* %3 to i32*, !dbg !4333
  store i32 0, i32* %4, align 4, !dbg !4333
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4334
  call void @llvm.dbg.value(metadata i32 %5, metadata !4321, metadata !DIExpression()), !dbg !4335
  %6 = load volatile i8, i8* @g_adc_status, align 1, !dbg !4336
  %7 = icmp eq i8 %6, 1, !dbg !4338
  br i1 %7, label %8, label %9, !dbg !4339

8:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4340
  br label %36, !dbg !4342

9:                                                ; preds = %0
  store volatile i8 1, i8* @g_adc_status, align 1, !dbg !4343
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4345
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130570184 to i32*), metadata !4322, metadata !DIExpression()), !dbg !4346
  %10 = load volatile i32, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4347
  %11 = or i32 %10, 2, !dbg !4347
  store volatile i32 %11, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4347
  tail call void @delay_time(i32 noundef 6) #16, !dbg !4348
  %12 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !4349
  %13 = or i32 %12, 503316480, !dbg !4349
  store volatile i32 %13, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !4349
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130571180 to i32*), metadata !4324, metadata !DIExpression()), !dbg !4350
  %14 = load volatile i32, i32* inttoptr (i32 -2130571180 to i32*), align 4, !dbg !4351
  %15 = or i32 %14, 2, !dbg !4351
  store volatile i32 %15, i32* inttoptr (i32 -2130571180 to i32*), align 4, !dbg !4351
  tail call void @delay_time(i32 noundef 1) #16, !dbg !4352
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130570228 to i32*), metadata !4326, metadata !DIExpression()), !dbg !4353
  %16 = load volatile i32, i32* inttoptr (i32 -2130570228 to i32*), align 4, !dbg !4354
  %17 = or i32 %16, 4210688, !dbg !4354
  store volatile i32 %17, i32* inttoptr (i32 -2130570228 to i32*), align 4, !dbg !4354
  %18 = load volatile i32, i32* inttoptr (i32 -2130570224 to i32*), align 16, !dbg !4355
  %19 = or i32 %18, 100663296, !dbg !4355
  store volatile i32 %19, i32* inttoptr (i32 -2130570224 to i32*), align 16, !dbg !4355
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118832 to i32*), metadata !4328, metadata !DIExpression()), !dbg !4356
  %20 = load volatile i32, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4357
  %21 = and i32 %20, -805306369, !dbg !4357
  %22 = or i32 %21, 536870912, !dbg !4357
  store volatile i32 %22, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4357
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118832 to i32*), metadata !4330, metadata !DIExpression()), !dbg !4358
  %23 = load volatile i32, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4359
  %24 = or i32 %23, -2147483648, !dbg !4359
  store volatile i32 %24, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4359
  %25 = load volatile i32, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4360
  %26 = and i32 %25, -117440513, !dbg !4360
  store volatile i32 %26, i32* inttoptr (i32 -2097118832 to i32*), align 16, !dbg !4360
  store volatile i32 1895016981, i32* inttoptr (i32 -2097118836 to i32*), align 4, !dbg !4361
  tail call void @delay_time(i32 noundef 3) #16, !dbg !4362
  %27 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 0, !dbg !4363
  store i32 0, i32* %27, align 4, !dbg !4364
  %28 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 1, !dbg !4365
  store i32 0, i32* %28, align 4, !dbg !4366
  %29 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 2, !dbg !4367
  store i16 15, i16* %29, align 4, !dbg !4368
  %30 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 3, !dbg !4369
  store i32 16000, i32* %30, align 4, !dbg !4370
  %31 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 4, !dbg !4371
  store i32 0, i32* %31, align 4, !dbg !4372
  %32 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 5, !dbg !4373
  store i32* null, i32** %32, align 4, !dbg !4374
  %33 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 6, !dbg !4375
  store i32 0, i32* %33, align 4, !dbg !4376
  %34 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %1, i32 0, i32 7, !dbg !4377
  store i32 0, i32* %34, align 4, !dbg !4378
  %35 = call zeroext i8 @halADC_Fsm_Param_Set(%struct._ADC_FSM_PARAM_T* noundef nonnull %1) #14, !dbg !4379
  tail call void @halADC_Get_ADC_Efuse() #14, !dbg !4380
  br label %36, !dbg !4381

36:                                               ; preds = %9, %8
  %37 = phi i32 [ -3, %8 ], [ 0, %9 ], !dbg !4335
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #15, !dbg !4384
  ret i32 %37, !dbg !4384
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halADC_Fsm_Param_Set(%struct._ADC_FSM_PARAM_T* nocapture noundef readonly %0) local_unnamed_addr #3 !dbg !4385 {
  call void @llvm.dbg.value(metadata %struct._ADC_FSM_PARAM_T* %0, metadata !4392, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i8 0, metadata !4393, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i8 0, metadata !4394, metadata !DIExpression()), !dbg !4418
  %2 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 2, !dbg !4419
  %3 = load i16, i16* %2, align 4, !dbg !4419
  %4 = icmp eq i16 %3, 0, !dbg !4421
  br i1 %4, label %79, label %5, !dbg !4422

5:                                                ; preds = %1
  %6 = zext i16 %3 to i32
  call void @llvm.dbg.value(metadata i8 0, metadata !4393, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i8 0, metadata !4394, metadata !DIExpression()), !dbg !4418
  br label %7, !dbg !4423

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = phi i8 [ 0, %5 ], [ %14, %7 ]
  call void @llvm.dbg.value(metadata i8 %9, metadata !4393, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i32 %8, metadata !4394, metadata !DIExpression()), !dbg !4418
  %10 = shl nuw nsw i32 1, %8, !dbg !4425
  %11 = and i32 %10, %6, !dbg !4429
  %12 = icmp ne i32 %11, 0, !dbg !4429
  %13 = zext i1 %12 to i8, !dbg !4430
  %14 = add i8 %9, %13, !dbg !4430
  call void @llvm.dbg.value(metadata i8 %14, metadata !4393, metadata !DIExpression()), !dbg !4418
  %15 = add nuw nsw i32 %8, 1, !dbg !4431
  call void @llvm.dbg.value(metadata i32 %15, metadata !4394, metadata !DIExpression()), !dbg !4418
  %16 = icmp eq i32 %15, 16, !dbg !4432
  br i1 %16, label %17, label %7, !dbg !4423, !llvm.loop !4433

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 0, !dbg !4435
  %19 = load i32, i32* %18, align 4, !dbg !4435
  store i32 %19, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 0), align 4, !dbg !4436
  %20 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 1, !dbg !4437
  %21 = load i32, i32* %20, align 4, !dbg !4437
  store i32 %21, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 1), align 4, !dbg !4438
  store i16 %3, i16* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 2), align 4, !dbg !4439
  %22 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 3, !dbg !4440
  %23 = load i32, i32* %22, align 4, !dbg !4440
  store i32 %23, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 3), align 4, !dbg !4441
  %24 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 4, !dbg !4442
  %25 = load i32, i32* %24, align 4, !dbg !4442
  store i32 %25, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4443
  %26 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 5, !dbg !4444
  %27 = load i32*, i32** %26, align 4, !dbg !4444
  store i32* %27, i32** getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 5), align 4, !dbg !4445
  %28 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 6, !dbg !4446
  %29 = load i32, i32* %28, align 4, !dbg !4446
  store i32 %29, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 6), align 4, !dbg !4447
  %30 = getelementptr inbounds %struct._ADC_FSM_PARAM_T, %struct._ADC_FSM_PARAM_T* %0, i32 0, i32 7, !dbg !4448
  %31 = load i32, i32* %30, align 4, !dbg !4448
  store i32 %31, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 7), align 4, !dbg !4449
  store i8 %14, i8* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 1), align 4, !dbg !4450
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4395, metadata !DIExpression()), !dbg !4451
  %32 = load i32, i32* %18, align 4, !dbg !4452
  %33 = shl i32 %32, 8, !dbg !4452
  %34 = and i32 %33, 256, !dbg !4452
  %35 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4452
  %36 = and i32 %35, -257, !dbg !4452
  %37 = or i32 %34, %36, !dbg !4452
  store volatile i32 %37, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4452
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4397, metadata !DIExpression()), !dbg !4453
  %38 = load i32, i32* %20, align 4, !dbg !4454
  %39 = shl i32 %38, 1, !dbg !4454
  %40 = and i32 %39, 14, !dbg !4454
  %41 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4454
  %42 = and i32 %41, -15, !dbg !4454
  %43 = or i32 %40, %42, !dbg !4454
  store volatile i32 %43, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4454
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4399, metadata !DIExpression()), !dbg !4455
  %44 = load i16, i16* %2, align 4, !dbg !4456
  %45 = zext i16 %44 to i32, !dbg !4456
  %46 = shl nuw i32 %45, 16, !dbg !4456
  %47 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4456
  %48 = and i32 %47, 65535, !dbg !4456
  %49 = or i32 %46, %48, !dbg !4456
  store volatile i32 %49, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4456
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118844 to i32*), metadata !4401, metadata !DIExpression()), !dbg !4457
  %50 = load i32, i32* %22, align 4, !dbg !4458
  %51 = load volatile i32, i32* inttoptr (i32 -2097118844 to i32*), align 4, !dbg !4458
  store volatile i32 %50, i32* inttoptr (i32 -2097118844 to i32*), align 4, !dbg !4458
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118840 to i32*), metadata !4403, metadata !DIExpression()), !dbg !4459
  %52 = load volatile i32, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4460
  %53 = and i32 %52, -1048577, !dbg !4460
  store volatile i32 %53, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4460
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118840 to i32*), metadata !4405, metadata !DIExpression()), !dbg !4461
  %54 = load volatile i32, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4462
  %55 = or i32 %54, 2097152, !dbg !4462
  store volatile i32 %55, i32* inttoptr (i32 -2097118840 to i32*), align 8, !dbg !4462
  %56 = load i32, i32* %24, align 4, !dbg !4463
  switch i32 %56, label %79 [
    i32 1, label %57
    i32 0, label %66
  ], !dbg !4464

57:                                               ; preds = %17
  tail call void @DMA_Init() #16, !dbg !4465
  tail call void @DMA_Vfifo_init() #16, !dbg !4466
  %58 = load i32*, i32** %26, align 4, !dbg !4467
  %59 = ptrtoint i32* %58 to i32, !dbg !4468
  %60 = load i32, i32* %28, align 4, !dbg !4469
  %61 = load i32, i32* %30, align 4, !dbg !4470
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %59, i32 noundef %60, i32 noundef 25, i32 noundef 0, i32 noundef %61, i32 noundef 0) #16, !dbg !4471
  tail call void @DMA_Vfifo_Flush(i32 noundef 25) #16, !dbg !4472
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 25, void ()* noundef nonnull @halADC_VDMA_Callback) #16, !dbg !4473
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096299956 to i32*), metadata !4407, metadata !DIExpression()), !dbg !4474
  %62 = load volatile i32, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4475
  %63 = or i32 %62, 1, !dbg !4475
  store volatile i32 %63, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4475
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096300028 to i32*), metadata !4410, metadata !DIExpression()), !dbg !4476
  %64 = load volatile i32, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4477
  %65 = and i32 %64, -2, !dbg !4477
  store volatile i32 %65, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4477
  br label %79, !dbg !4478

66:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096299956 to i32*), metadata !4412, metadata !DIExpression()), !dbg !4479
  %67 = load volatile i32, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4480
  %68 = and i32 %67, -2, !dbg !4480
  store volatile i32 %68, i32* inttoptr (i32 -2096299956 to i32*), align 4, !dbg !4480
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096300028 to i32*), metadata !4414, metadata !DIExpression()), !dbg !4481
  %69 = load volatile i32, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4482
  %70 = and i32 %69, -2, !dbg !4482
  store volatile i32 %70, i32* inttoptr (i32 -2096300028 to i32*), align 4, !dbg !4482
  %71 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 14, void (i32)* noundef nonnull @halADC_LISR) #16, !dbg !4483
  %72 = tail call i32 @hal_nvic_set_priority(i32 noundef 14, i32 noundef 5) #16, !dbg !4484
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096299936 to i32*), metadata !4416, metadata !DIExpression()), !dbg !4485
  %73 = zext i8 %14 to i32, !dbg !4486
  %74 = shl nuw nsw i32 %73, 3, !dbg !4486
  %75 = and i32 %74, 120, !dbg !4486
  %76 = load volatile i32, i32* inttoptr (i32 -2096299936 to i32*), align 32, !dbg !4486
  %77 = and i32 %76, -121, !dbg !4486
  %78 = or i32 %77, %75, !dbg !4486
  store volatile i32 %78, i32* inttoptr (i32 -2096299936 to i32*), align 32, !dbg !4486
  br label %79, !dbg !4487

79:                                               ; preds = %57, %66, %17, %1
  %80 = phi i8 [ 1, %1 ], [ 0, %17 ], [ 0, %66 ], [ 0, %57 ], !dbg !4418
  ret i8 %80, !dbg !4488
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @halADC_VDMA_Callback() #11 !dbg !4489 {
  ret void, !dbg !4490
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @halADC_LISR(i32 %0) #11 !dbg !4491 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !4493, metadata !DIExpression()), !dbg !4494
  ret void, !dbg !4495
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @halADC_Fsm_Enable() local_unnamed_addr #11 !dbg !4496 {
  ret i8 0, !dbg !4499
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_adc_deinit() local_unnamed_addr #3 !dbg !4500 {
  %1 = tail call zeroext i8 @halADC_Fsm_Disable(i8 noundef zeroext 1) #14, !dbg !4501
  store volatile i8 0, i8* @g_adc_status, align 1, !dbg !4503
  ret i32 0, !dbg !4505
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halADC_Fsm_Disable(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !4506 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4511, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4512, metadata !DIExpression()), !dbg !4519
  %2 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4520
  %3 = and i32 %2, -2, !dbg !4520
  store volatile i32 %3, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4520
  %4 = load i32, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4521
  %5 = icmp eq i32 %4, 0, !dbg !4523
  br i1 %5, label %6, label %9, !dbg !4524

6:                                                ; preds = %1
  %7 = tail call i32 @hal_nvic_disable_irq(i32 noundef 14) #16, !dbg !4525
  %8 = tail call i32 @hal_nvic_disable_irq(i32 noundef 25) #16, !dbg !4527
  br label %9, !dbg !4528

9:                                                ; preds = %6, %1
  %10 = icmp eq i8 %0, 0, !dbg !4529
  br i1 %10, label %14, label %11, !dbg !4530

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2130570184 to i32*), metadata !4514, metadata !DIExpression()), !dbg !4531
  %12 = load volatile i32, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4532
  %13 = and i32 %12, -3, !dbg !4532
  store volatile i32 %13, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !4532
  br label %14, !dbg !4533

14:                                               ; preds = %11, %9
  ret i8 0, !dbg !4534
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @hal_adc_get_data_polling(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #8 !dbg !4535 {
  %3 = alloca [1 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4540, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i32* %1, metadata !4541, metadata !DIExpression()), !dbg !4558
  %6 = bitcast [1 x i32]* %3 to i8*, !dbg !4559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4559
  call void @llvm.dbg.declare(metadata [1 x i32]* %3, metadata !4542, metadata !DIExpression()), !dbg !4560
  %7 = bitcast i32* %4 to i8*, !dbg !4559
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4559
  %8 = bitcast i32* %5 to i8*, !dbg !4561
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4561
  %9 = icmp ugt i32 %0, 3, !dbg !4562
  br i1 %9, label %44, label %10, !dbg !4564

10:                                               ; preds = %2
  %11 = icmp eq i32* %1, null, !dbg !4565
  br i1 %11, label %44, label %12, !dbg !4567

12:                                               ; preds = %10
  %13 = icmp ult i32 %0, 4, !dbg !4568
  br i1 %13, label %14, label %44, !dbg !4568

14:                                               ; preds = %12
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.hal_adc_get_data_polling, i32 0, i32 %0, !dbg !4568
  %16 = load i32, i32* %15, align 4, !dbg !4568
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.hal_adc_get_data_polling.1, i32 0, i32 %0, !dbg !4568
  %18 = load i32, i32* %17, align 4, !dbg !4568
  %19 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4569
  %20 = and i32 %19, 65535, !dbg !4569
  %21 = or i32 %20, %16, !dbg !4569
  store volatile i32 %21, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4569
  %22 = load volatile i32, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4569
  %23 = or i32 %22, %18, !dbg !4569
  store volatile i32 %23, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4569
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4554, metadata !DIExpression()), !dbg !4570
  %24 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4571
  %25 = or i32 %24, 1, !dbg !4571
  store volatile i32 %25, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4571
  br label %26, !dbg !4572

26:                                               ; preds = %26, %14
  call void @llvm.dbg.value(metadata i32* %4, metadata !4543, metadata !DIExpression(DW_OP_deref)), !dbg !4558
  %27 = call zeroext i8 @halADC_Fifo_Get_Length(i32* noundef nonnull %4) #14, !dbg !4573
  %28 = load i32, i32* %4, align 4, !dbg !4575
  call void @llvm.dbg.value(metadata i32 %28, metadata !4543, metadata !DIExpression()), !dbg !4558
  %29 = icmp eq i32 %28, 0, !dbg !4576
  br i1 %29, label %26, label %30, !dbg !4577, !llvm.loop !4578

30:                                               ; preds = %26
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i32 0, i32 0, !dbg !4580
  %32 = call zeroext i8 @halADC_Fifo_Read_Data(i32 noundef 1, i32* noundef nonnull %31) #14, !dbg !4581
  call void @llvm.dbg.value(metadata i32* %5, metadata !4544, metadata !DIExpression(DW_OP_deref)), !dbg !4558
  call void @halADC_Remove_Data_Offset(i32* noundef nonnull %31, i32* noundef nonnull %5, i32 noundef 1) #14, !dbg !4582
  %33 = load i32, i32* %5, align 4, !dbg !4583
  call void @llvm.dbg.value(metadata i32 %33, metadata !4544, metadata !DIExpression()), !dbg !4558
  %34 = lshr i32 %33, 4, !dbg !4584
  %35 = and i32 %34, 4095, !dbg !4584
  store i32 %35, i32* %1, align 4, !dbg !4585
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118848 to i32*), metadata !4556, metadata !DIExpression()), !dbg !4586
  %36 = load volatile i32, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4587
  %37 = and i32 %36, -2, !dbg !4587
  store volatile i32 %37, i32* inttoptr (i32 -2097118848 to i32*), align 128, !dbg !4587
  %38 = icmp ult i32 %0, 4, !dbg !4588
  br i1 %38, label %39, label %44, !dbg !4588

39:                                               ; preds = %30
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.hal_adc_get_data_polling.2, i32 0, i32 %0, !dbg !4588
  %41 = load i32, i32* %40, align 4, !dbg !4588
  %42 = load volatile i32, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4589
  %43 = and i32 %42, %41, !dbg !4589
  store volatile i32 %43, i32* inttoptr (i32 -2130563060 to i32*), align 4, !dbg !4589
  br label %44, !dbg !4591

44:                                               ; preds = %30, %12, %39, %10, %2
  %45 = phi i32 [ -2, %2 ], [ -4, %10 ], [ -1, %12 ], [ 0, %30 ], [ 0, %39 ], !dbg !4558
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #15, !dbg !4591
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !4591
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4591
  ret i32 %45, !dbg !4591
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halADC_Fifo_Get_Length(i32* nocapture noundef writeonly %0) local_unnamed_addr #6 !dbg !4592 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4596, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4597, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4598, metadata !DIExpression()), !dbg !4599
  %2 = load i32, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4600
  switch i32 %2, label %22 [
    i32 1, label %3
    i32 0, label %6
  ], !dbg !4601

3:                                                ; preds = %1
  %4 = load volatile i16, i16* inttoptr (i32 -2097080008 to i16*), align 8, !dbg !4602
  %5 = zext i16 %4 to i32, !dbg !4602
  br label %20, !dbg !4604

6:                                                ; preds = %1
  %7 = load volatile i32, i32* inttoptr (i32 -2096299820 to i32*), align 4, !dbg !4605
  %8 = and i32 %7, 15, !dbg !4605
  call void @llvm.dbg.value(metadata i32 %8, metadata !4597, metadata !DIExpression()), !dbg !4599
  %9 = load volatile i32, i32* inttoptr (i32 -2096299820 to i32*), align 4, !dbg !4606
  %10 = lshr i32 %9, 4, !dbg !4606
  %11 = and i32 %10, 15, !dbg !4606
  call void @llvm.dbg.value(metadata i32 %11, metadata !4598, metadata !DIExpression()), !dbg !4599
  %12 = icmp eq i32 %11, %8, !dbg !4607
  br i1 %12, label %20, label %13, !dbg !4609

13:                                               ; preds = %6
  %14 = icmp ugt i32 %11, %8, !dbg !4610
  br i1 %14, label %15, label %17, !dbg !4612

15:                                               ; preds = %13
  %16 = sub nsw i32 %11, %8, !dbg !4613
  br label %20, !dbg !4615

17:                                               ; preds = %13
  %18 = sub nuw nsw i32 16, %8, !dbg !4616
  %19 = add nuw nsw i32 %18, %11, !dbg !4618
  br label %20

20:                                               ; preds = %6, %3, %15, %17
  %21 = phi i32 [ %19, %17 ], [ %16, %15 ], [ %5, %3 ], [ 0, %6 ]
  store i32 %21, i32* %0, align 4, !dbg !4619
  br label %22, !dbg !4620

22:                                               ; preds = %20, %1
  ret i8 0, !dbg !4620
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halADC_Fifo_Read_Data(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #1 !dbg !4621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4625, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i32* %1, metadata !4626, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i32 0, metadata !4627, metadata !DIExpression()), !dbg !4628
  %3 = load i32, i32* getelementptr inbounds (%struct._ADC_INFO_T, %struct._ADC_INFO_T* @g_rAdcInfo, i32 0, i32 0, i32 4), align 4, !dbg !4629
  switch i32 %3, label %20 [
    i32 1, label %6
    i32 0, label %4
  ], !dbg !4630

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !4627, metadata !DIExpression()), !dbg !4628
  %5 = icmp eq i32 %0, 0, !dbg !4631
  br i1 %5, label %20, label %14, !dbg !4635

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !4627, metadata !DIExpression()), !dbg !4628
  %7 = icmp eq i32 %0, 0, !dbg !4636
  br i1 %7, label %20, label %8, !dbg !4639

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %6 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4627, metadata !DIExpression()), !dbg !4628
  %10 = load volatile i32, i32* inttoptr (i32 2030046464 to i32*), align 256, !dbg !4640
  %11 = getelementptr inbounds i32, i32* %1, i32 %9, !dbg !4642
  store i32 %10, i32* %11, align 4, !dbg !4643
  %12 = add nuw i32 %9, 1, !dbg !4644
  call void @llvm.dbg.value(metadata i32 %12, metadata !4627, metadata !DIExpression()), !dbg !4628
  %13 = icmp eq i32 %12, %0, !dbg !4636
  br i1 %13, label %20, label %8, !dbg !4639, !llvm.loop !4645

14:                                               ; preds = %4, %14
  %15 = phi i32 [ %18, %14 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4627, metadata !DIExpression()), !dbg !4628
  %16 = load volatile i32, i32* inttoptr (i32 -2096300032 to i32*), align 65536, !dbg !4647
  %17 = getelementptr inbounds i32, i32* %1, i32 %15, !dbg !4649
  store i32 %16, i32* %17, align 4, !dbg !4650
  %18 = add nuw i32 %15, 1, !dbg !4651
  call void @llvm.dbg.value(metadata i32 %18, metadata !4627, metadata !DIExpression()), !dbg !4628
  %19 = icmp eq i32 %18, %0, !dbg !4631
  br i1 %19, label %20, label %14, !dbg !4635, !llvm.loop !4652

20:                                               ; preds = %14, %8, %4, %6, %2
  ret i8 0, !dbg !4654
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @halADC_COMP_LISR(i32 noundef %0) local_unnamed_addr #11 !dbg !4655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4657, metadata !DIExpression()), !dbg !4658
  ret void, !dbg !4659
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !4660 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4668
  call void @llvm.dbg.value(metadata i32 %1, metadata !4667, metadata !DIExpression()), !dbg !4669
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !4670, !range !1559
  %3 = icmp eq i8 %2, 0, !dbg !4670
  br i1 %3, label %5, label %4, !dbg !4672

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4673
  br label %15, !dbg !4675

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !4676
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4678
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !4679
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4680
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4681
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4682
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4683
  call void @llvm.dbg.value(metadata i32 0, metadata !4665, metadata !DIExpression()), !dbg !4669
  br label %7, !dbg !4684

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !4665, metadata !DIExpression()), !dbg !4669
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !4686
  store volatile i32 0, i32* %9, align 4, !dbg !4689
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !4690
  store volatile i32 0, i32* %10, align 4, !dbg !4691
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !4692
  store i32 0, i32* %11, align 4, !dbg !4693
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !4694
  store i32 0, i32* %12, align 4, !dbg !4695
  %13 = add nuw nsw i32 %8, 1, !dbg !4696
  call void @llvm.dbg.value(metadata i32 %13, metadata !4665, metadata !DIExpression()), !dbg !4669
  %14 = icmp eq i32 %13, 16, !dbg !4697
  br i1 %14, label %15, label %7, !dbg !4684, !llvm.loop !4698

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !4669
  ret i32 %16, !dbg !4700
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4701 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4704
  call void @llvm.dbg.value(metadata i32 %1, metadata !4703, metadata !DIExpression()), !dbg !4705
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4706
  %3 = and i32 %2, -31, !dbg !4706
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4706
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4707
  %5 = or i32 %4, 19, !dbg !4707
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4707
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4708
  %7 = and i32 %6, -31, !dbg !4708
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4708
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4709
  %9 = or i32 %8, 3, !dbg !4709
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4709
  tail call void asm sideeffect "isb", ""() #15, !dbg !4710, !srcloc !4714
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4715
  ret i32 0, !dbg !4716
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !4717 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !4720
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4721
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4722
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4723
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4724
  call void @llvm.dbg.value(metadata i32 0, metadata !4719, metadata !DIExpression()), !dbg !4725
  br label %2, !dbg !4726

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4719, metadata !DIExpression()), !dbg !4725
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !4728
  store volatile i32 0, i32* %4, align 4, !dbg !4731
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !4732
  store volatile i32 0, i32* %5, align 4, !dbg !4733
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !4734
  store i32 0, i32* %6, align 4, !dbg !4735
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !4736
  store i32 0, i32* %7, align 4, !dbg !4737
  %8 = add nuw nsw i32 %3, 1, !dbg !4738
  call void @llvm.dbg.value(metadata i32 %8, metadata !4719, metadata !DIExpression()), !dbg !4725
  %9 = icmp eq i32 %8, 16, !dbg !4739
  br i1 %9, label %10, label %2, !dbg !4726, !llvm.loop !4740

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !4742
  ret i32 0, !dbg !4743
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #1 !dbg !4744 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4745
  %2 = and i32 %1, 768, !dbg !4747
  %3 = icmp eq i32 %2, 0, !dbg !4747
  br i1 %3, label %8, label %4, !dbg !4748

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4749
  %6 = or i32 %5, 13, !dbg !4749
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4749
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4750
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4751
  br label %8, !dbg !4752

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !4753
  ret i32 %9, !dbg !4754
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !4755 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4758
  call void @llvm.dbg.value(metadata i32 %1, metadata !4757, metadata !DIExpression()), !dbg !4759
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4760
  %3 = and i32 %2, 1, !dbg !4762
  %4 = icmp eq i32 %3, 0, !dbg !4762
  br i1 %4, label %7, label %5, !dbg !4763

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !4764
  br label %7, !dbg !4766

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4767
  %9 = and i32 %8, -2, !dbg !4767
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4767
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4768
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4769
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4770
  ret i32 0, !dbg !4771
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #1 !dbg !4772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4776, metadata !DIExpression()), !dbg !4777
  %2 = icmp ugt i32 %0, 15, !dbg !4778
  br i1 %2, label %13, label %3, !dbg !4780

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4781
  %5 = load volatile i32, i32* %4, align 4, !dbg !4781
  %6 = and i32 %5, 256, !dbg !4783
  %7 = icmp eq i32 %6, 0, !dbg !4783
  br i1 %7, label %13, label %8, !dbg !4784

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !4785
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4787
  %11 = or i32 %10, %9, !dbg !4787
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4787
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4788
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !4789
  br label %13, !dbg !4790

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !4777
  ret i32 %14, !dbg !4791
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #1 !dbg !4792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4794, metadata !DIExpression()), !dbg !4795
  %2 = icmp ugt i32 %0, 15, !dbg !4796
  br i1 %2, label %11, label %3, !dbg !4798

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !4799
  %5 = xor i32 %4, -1, !dbg !4800
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4801
  %7 = and i32 %6, %5, !dbg !4801
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4801
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4802
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !4803
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4804
  store i32 0, i32* %9, align 4, !dbg !4805
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4806
  store i32 0, i32* %10, align 4, !dbg !4807
  br label %11, !dbg !4808

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4795
  ret i32 %12, !dbg !4809
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #1 !dbg !4810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4815, metadata !DIExpression()), !dbg !4816
  %2 = icmp ugt i32 %0, 3, !dbg !4817
  br i1 %2, label %13, label %3, !dbg !4819

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4820
  %5 = and i32 %4, -769, !dbg !4820
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4820
  %6 = shl nuw nsw i32 %0, 8, !dbg !4821
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4822
  %8 = or i32 %7, %6, !dbg !4822
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4822
  %9 = icmp eq i32 %0, 0, !dbg !4823
  br i1 %9, label %10, label %11, !dbg !4825

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4826
  br label %11, !dbg !4828

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4829
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4830
  br label %13, !dbg !4831

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !4816
  ret i32 %14, !dbg !4832
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.DMA_SWCOPYMENU* noundef readonly %1) local_unnamed_addr #3 !dbg !4833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4844, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata %struct.DMA_SWCOPYMENU* %1, metadata !4845, metadata !DIExpression()), !dbg !4846
  %3 = icmp ugt i32 %0, 15, !dbg !4847
  br i1 %3, label %30, label %4, !dbg !4849

4:                                                ; preds = %2
  %5 = icmp eq %struct.DMA_SWCOPYMENU* %1, null, !dbg !4850
  br i1 %5, label %30, label %6, !dbg !4852

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 0, !dbg !4853
  %8 = load i32, i32* %7, align 4, !dbg !4853
  %9 = and i32 %8, 4095, !dbg !4855
  %10 = icmp eq i32 %9, 0, !dbg !4855
  br i1 %10, label %12, label %11, !dbg !4856

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.11, i32 0, i32 0)) #17, !dbg !4857
  unreachable, !dbg !4857

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 1, !dbg !4859
  %14 = load i32, i32* %13, align 4, !dbg !4859
  %15 = and i32 %14, 4095, !dbg !4861
  %16 = icmp eq i32 %15, 0, !dbg !4861
  br i1 %16, label %18, label %17, !dbg !4862

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.11, i32 0, i32 0)) #17, !dbg !4863
  unreachable, !dbg !4863

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4865
  store volatile i32 %8, i32* %19, align 4, !dbg !4866
  %20 = load i32, i32* %7, align 4, !dbg !4867
  %21 = load i32, i32* %13, align 4, !dbg !4868
  %22 = add i32 %21, %20, !dbg !4869
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !4870
  store volatile i32 %22, i32* %23, align 4, !dbg !4871
  %24 = load volatile i32, i32* %19, align 4, !dbg !4872
  %25 = or i32 %24, 256, !dbg !4872
  store volatile i32 %25, i32* %19, align 4, !dbg !4872
  %26 = load volatile i32, i32* %19, align 4, !dbg !4873
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4874
  store i32 %26, i32* %27, align 4, !dbg !4875
  %28 = load volatile i32, i32* %23, align 4, !dbg !4876
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4877
  store i32 %28, i32* %29, align 4, !dbg !4878
  br label %30, !dbg !4879

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !4846
  ret i32 %31, !dbg !4880
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4885, metadata !DIExpression()), !dbg !4887
  %2 = and i32 %0, 31, !dbg !4888
  %3 = icmp eq i32 %2, 0, !dbg !4888
  br i1 %3, label %4, label %9, !dbg !4890

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4891
  call void @llvm.dbg.value(metadata i32 %5, metadata !4886, metadata !DIExpression()), !dbg !4887
  %6 = and i32 %0, -32, !dbg !4892
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4893
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4894
  %8 = or i32 %7, 5, !dbg !4894
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4894
  tail call void asm sideeffect "isb", ""() #15, !dbg !4895, !srcloc !4714
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4897
  br label %9, !dbg !4898

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4887
  ret i32 %10, !dbg !4899
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4900 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4904, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 %1, metadata !4905, metadata !DIExpression()), !dbg !4908
  %3 = add i32 %1, %0, !dbg !4909
  call void @llvm.dbg.value(metadata i32 %3, metadata !4907, metadata !DIExpression()), !dbg !4908
  %4 = or i32 %1, %0, !dbg !4910
  %5 = and i32 %4, 31, !dbg !4910
  %6 = icmp eq i32 %5, 0, !dbg !4910
  br i1 %6, label %7, label %16, !dbg !4910

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4912
  call void @llvm.dbg.value(metadata i32 %8, metadata !4906, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 %0, metadata !4904, metadata !DIExpression()), !dbg !4908
  %9 = icmp ugt i32 %3, %0, !dbg !4913
  br i1 %9, label %10, label %15, !dbg !4914

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4904, metadata !DIExpression()), !dbg !4908
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !4915
  %13 = add i32 %11, 32, !dbg !4917
  call void @llvm.dbg.value(metadata i32 %13, metadata !4904, metadata !DIExpression()), !dbg !4908
  %14 = icmp ult i32 %13, %3, !dbg !4913
  br i1 %14, label %10, label %15, !dbg !4914, !llvm.loop !4918

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4920, !srcloc !4714
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4922
  br label %16, !dbg !4923

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4908
  ret i32 %17, !dbg !4924
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4927, metadata !DIExpression()), !dbg !4929
  %2 = and i32 %0, 31, !dbg !4930
  %3 = icmp eq i32 %2, 0, !dbg !4930
  br i1 %3, label %4, label %9, !dbg !4932

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4933
  call void @llvm.dbg.value(metadata i32 %5, metadata !4928, metadata !DIExpression()), !dbg !4929
  %6 = and i32 %0, -32, !dbg !4934
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4935
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4936
  %8 = or i32 %7, 21, !dbg !4936
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4936
  tail call void asm sideeffect "isb", ""() #15, !dbg !4937, !srcloc !4714
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4939
  br label %9, !dbg !4940

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4929
  ret i32 %10, !dbg !4941
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4942 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4944, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i32 %1, metadata !4945, metadata !DIExpression()), !dbg !4948
  %3 = add i32 %1, %0, !dbg !4949
  call void @llvm.dbg.value(metadata i32 %3, metadata !4947, metadata !DIExpression()), !dbg !4948
  %4 = or i32 %1, %0, !dbg !4950
  %5 = and i32 %4, 31, !dbg !4950
  %6 = icmp eq i32 %5, 0, !dbg !4950
  br i1 %6, label %7, label %16, !dbg !4950

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4952
  call void @llvm.dbg.value(metadata i32 %8, metadata !4946, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.value(metadata i32 %0, metadata !4944, metadata !DIExpression()), !dbg !4948
  %9 = icmp ugt i32 %3, %0, !dbg !4953
  br i1 %9, label %10, label %15, !dbg !4954

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4944, metadata !DIExpression()), !dbg !4948
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !4955
  %13 = add i32 %11, 32, !dbg !4957
  call void @llvm.dbg.value(metadata i32 %13, metadata !4944, metadata !DIExpression()), !dbg !4948
  %14 = icmp ult i32 %13, %3, !dbg !4953
  br i1 %14, label %10, label %15, !dbg !4954, !llvm.loop !4958

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4960, !srcloc !4714
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4962
  br label %16, !dbg !4963

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4948
  ret i32 %17, !dbg !4964
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4965 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4968
  call void @llvm.dbg.value(metadata i32 %1, metadata !4967, metadata !DIExpression()), !dbg !4969
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4970
  %3 = and i32 %2, -31, !dbg !4970
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4970
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4971
  %5 = or i32 %4, 19, !dbg !4971
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4971
  tail call void asm sideeffect "isb", ""() #15, !dbg !4972, !srcloc !4714
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4974
  ret i32 0, !dbg !4975
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #1 !dbg !4976 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4980, metadata !DIExpression()), !dbg !4982
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4983
  %3 = and i32 %2, 8, !dbg !4985
  %4 = icmp eq i32 %3, 0, !dbg !4985
  br i1 %4, label %23, label %5, !dbg !4986

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4981, metadata !DIExpression()), !dbg !4982
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4987
  %8 = shl nuw nsw i32 1, %6, !dbg !4992
  %9 = and i32 %7, %8, !dbg !4993
  %10 = icmp eq i32 %9, 0, !dbg !4993
  br i1 %10, label %20, label %11, !dbg !4994

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4995
  %13 = load volatile i32, i32* %12, align 4, !dbg !4995
  %14 = and i32 %13, -257, !dbg !4998
  %15 = icmp ugt i32 %14, %0, !dbg !4999
  br i1 %15, label %20, label %16, !dbg !5000

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !5001
  %18 = load volatile i32, i32* %17, align 4, !dbg !5001
  %19 = icmp ugt i32 %18, %0, !dbg !5002
  br i1 %19, label %23, label %20, !dbg !5003

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !5004
  call void @llvm.dbg.value(metadata i32 %21, metadata !4981, metadata !DIExpression()), !dbg !4982
  %22 = icmp eq i32 %21, 16, !dbg !5005
  br i1 %22, label %23, label %5, !dbg !5006, !llvm.loop !5007

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4982
  ret i1 %24, !dbg !5009
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #11 !dbg !5010 {
  ret i32 0, !dbg !5014
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5019, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i32 -1, metadata !5020, metadata !DIExpression()), !dbg !5021
  %2 = icmp ugt i32 %0, 95, !dbg !5022
  br i1 %2, label %4, label %3, !dbg !5022

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !5024
  call void @llvm.dbg.value(metadata i32 0, metadata !5020, metadata !DIExpression()), !dbg !5021
  br label %4, !dbg !5026

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5021
  ret i32 %5, !dbg !5027
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5032, metadata !DIExpression()), !dbg !5033
  %2 = and i32 %0, 31, !dbg !5034
  %3 = shl nuw i32 1, %2, !dbg !5035
  %4 = lshr i32 %0, 5, !dbg !5036
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !5037
  store volatile i32 %3, i32* %5, align 4, !dbg !5038
  ret void, !dbg !5039
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5040 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5042, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i32 -1, metadata !5043, metadata !DIExpression()), !dbg !5044
  %2 = icmp ugt i32 %0, 95, !dbg !5045
  br i1 %2, label %4, label %3, !dbg !5045

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !5047
  call void @llvm.dbg.value(metadata i32 0, metadata !5043, metadata !DIExpression()), !dbg !5044
  br label %4, !dbg !5049

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5044
  ret i32 %5, !dbg !5050
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5053, metadata !DIExpression()), !dbg !5054
  %2 = and i32 %0, 31, !dbg !5055
  %3 = shl nuw i32 1, %2, !dbg !5056
  %4 = lshr i32 %0, 5, !dbg !5057
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !5058
  store volatile i32 %3, i32* %5, align 4, !dbg !5059
  ret void, !dbg !5060
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #6 !dbg !5061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5065, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.value(metadata i32 255, metadata !5066, metadata !DIExpression()), !dbg !5067
  %2 = icmp ugt i32 %0, 95, !dbg !5068
  br i1 %2, label %5, label %3, !dbg !5068

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !5070
  call void @llvm.dbg.value(metadata i32 %4, metadata !5066, metadata !DIExpression()), !dbg !5067
  br label %5, !dbg !5072

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !5067
  ret i32 %6, !dbg !5073
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !5074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5078, metadata !DIExpression()), !dbg !5079
  %2 = lshr i32 %0, 5, !dbg !5080
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !5081
  %4 = load volatile i32, i32* %3, align 4, !dbg !5081
  %5 = and i32 %0, 31, !dbg !5082
  %6 = lshr i32 %4, %5, !dbg !5083
  %7 = and i32 %6, 1, !dbg !5083
  ret i32 %7, !dbg !5084
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5087, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 -1, metadata !5088, metadata !DIExpression()), !dbg !5089
  %2 = icmp ugt i32 %0, 95, !dbg !5090
  br i1 %2, label %4, label %3, !dbg !5090

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !5092
  call void @llvm.dbg.value(metadata i32 0, metadata !5088, metadata !DIExpression()), !dbg !5089
  br label %4, !dbg !5094

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5089
  ret i32 %5, !dbg !5095
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5096 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5098, metadata !DIExpression()), !dbg !5099
  %2 = and i32 %0, 31, !dbg !5100
  %3 = shl nuw i32 1, %2, !dbg !5101
  %4 = lshr i32 %0, 5, !dbg !5102
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !5103
  store volatile i32 %3, i32* %5, align 4, !dbg !5104
  ret void, !dbg !5105
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !5106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5108, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata i32 -1, metadata !5109, metadata !DIExpression()), !dbg !5110
  %2 = icmp ugt i32 %0, 95, !dbg !5111
  br i1 %2, label %4, label %3, !dbg !5111

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !5113
  call void @llvm.dbg.value(metadata i32 0, metadata !5109, metadata !DIExpression()), !dbg !5110
  br label %4, !dbg !5115

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5110
  ret i32 %5, !dbg !5116
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !5117 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5119, metadata !DIExpression()), !dbg !5120
  %2 = and i32 %0, 31, !dbg !5121
  %3 = shl nuw i32 1, %2, !dbg !5122
  %4 = lshr i32 %0, 5, !dbg !5123
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !5124
  store volatile i32 %3, i32* %5, align 4, !dbg !5125
  ret void, !dbg !5126
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !5127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5131, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.value(metadata i32 %1, metadata !5132, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.value(metadata i32 -1, metadata !5133, metadata !DIExpression()), !dbg !5134
  %3 = icmp ugt i32 %0, 95, !dbg !5135
  br i1 %3, label %5, label %4, !dbg !5135

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !5137
  call void @llvm.dbg.value(metadata i32 0, metadata !5133, metadata !DIExpression()), !dbg !5134
  br label %5, !dbg !5139

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !5134
  ret i32 %6, !dbg !5140
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !5141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5145, metadata !DIExpression()), !dbg !5147
  call void @llvm.dbg.value(metadata i32 %1, metadata !5146, metadata !DIExpression()), !dbg !5147
  %3 = trunc i32 %1 to i8, !dbg !5148
  %4 = shl i8 %3, 5, !dbg !5148
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5151
  store volatile i8 %4, i8* %5, align 1, !dbg !5152
  ret void, !dbg !5153
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #6 !dbg !5154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5156, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata i32 68, metadata !5157, metadata !DIExpression()), !dbg !5158
  %2 = icmp ugt i32 %0, 95, !dbg !5159
  br i1 %2, label %5, label %3, !dbg !5159

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !5161
  call void @llvm.dbg.value(metadata i32 %4, metadata !5157, metadata !DIExpression()), !dbg !5158
  br label %5, !dbg !5163

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !5158
  ret i32 %6, !dbg !5164
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #6 !dbg !5165 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5167, metadata !DIExpression()), !dbg !5168
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5169
  %3 = load volatile i8, i8* %2, align 1, !dbg !5169
  %4 = lshr i8 %3, 5, !dbg !5172
  %5 = zext i8 %4 to i32, !dbg !5172
  ret i32 %5, !dbg !5173
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #11 !dbg !5174 {
  ret void, !dbg !5175
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !5176 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !5178, metadata !DIExpression()), !dbg !5180
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !5181
  call void @llvm.dbg.value(metadata i32 %1, metadata !5179, metadata !DIExpression()), !dbg !5180
  %2 = icmp ugt i32 %1, 95, !dbg !5182
  br i1 %2, label %12, label %3, !dbg !5182

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !5184
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !5184
  %6 = icmp eq void (i32)* %5, null, !dbg !5186
  br i1 %6, label %7, label %8, !dbg !5187

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !5178, metadata !DIExpression()), !dbg !5180
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i32 0, i32 0)) #16, !dbg !5188
  br label %12, !dbg !5190

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !5191
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !5193
  store i32 %9, i32* %10, align 4, !dbg !5194
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !5195
  tail call void %11(i32 noundef %1) #16, !dbg !5196
  call void @llvm.dbg.value(metadata i32 0, metadata !5178, metadata !DIExpression()), !dbg !5180
  br label %12, !dbg !5197

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !5180
  ret i32 %13, !dbg !5198
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #6 !dbg !5199 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5202
  %2 = and i32 %1, 511, !dbg !5203
  call void @llvm.dbg.value(metadata i32 %2, metadata !5201, metadata !DIExpression()), !dbg !5204
  %3 = add nsw i32 %2, -16, !dbg !5205
  ret i32 %3, !dbg !5206
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #6 !dbg !5207 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5208
  %2 = lshr i32 %1, 22, !dbg !5209
  %3 = and i32 %2, 1, !dbg !5209
  ret i32 %3, !dbg !5210
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !5211 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5216, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !5217, metadata !DIExpression()), !dbg !5219
  %3 = icmp ugt i32 %0, 95, !dbg !5220
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !5220
  br i1 %5, label %10, label %6, !dbg !5220

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !5222
  call void @llvm.dbg.value(metadata i32 %7, metadata !5218, metadata !DIExpression()), !dbg !5219
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !5223
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !5224
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !5225
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !5226
  store i32 0, i32* %9, align 4, !dbg !5227
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !5228
  br label %10, !dbg !5229

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !5219
  ret i32 %11, !dbg !5230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !5231 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5235, metadata !DIExpression()), !dbg !5236
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !5237
  store i32 %2, i32* %0, align 4, !dbg !5238
  ret i32 0, !dbg !5239
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !5240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5244, metadata !DIExpression()), !dbg !5245
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !5246
  ret i32 0, !dbg !5247
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5254, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i8 %1, metadata !5255, metadata !DIExpression()), !dbg !5257
  %3 = icmp ugt i32 %0, 60, !dbg !5258
  br i1 %3, label %11, label %4, !dbg !5260

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !5261
  br i1 %5, label %11, label %6, !dbg !5263

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !5264
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !5265
  call void @llvm.dbg.value(metadata i32 %8, metadata !5256, metadata !DIExpression()), !dbg !5257
  %9 = icmp slt i32 %8, 0, !dbg !5266
  %10 = select i1 %9, i32 -3, i32 0, !dbg !5266
  br label %11, !dbg !5267

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !5257
  ret i32 %12, !dbg !5268
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #11 !dbg !5269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5274, metadata !DIExpression()), !dbg !5275
  ret i32 0, !dbg !5276
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #11 !dbg !5277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5279, metadata !DIExpression()), !dbg !5280
  ret i32 0, !dbg !5281
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5282 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5287, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.value(metadata i32* %1, metadata !5288, metadata !DIExpression()), !dbg !5297
  %4 = icmp eq i32* %1, null, !dbg !5298
  br i1 %4, label %12, label %5, !dbg !5300

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !5301
  br i1 %6, label %12, label %7, !dbg !5303

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5304
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5304
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !5304
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !5304
  %10 = load i8, i8* %9, align 1, !dbg !5304
  call void @llvm.dbg.value(metadata i8 %10, metadata !5289, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !5297
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5304
  %11 = zext i8 %10 to i32, !dbg !5305
  store i32 %11, i32* %1, align 4, !dbg !5306
  br label %12, !dbg !5307

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !5297
  ret i32 %13, !dbg !5308
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5309 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5313, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.value(metadata i32 %1, metadata !5314, metadata !DIExpression()), !dbg !5316
  %3 = icmp ugt i32 %0, 60, !dbg !5317
  br i1 %3, label %9, label %4, !dbg !5319

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !5320
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !5321
  call void @llvm.dbg.value(metadata i32 %6, metadata !5315, metadata !DIExpression()), !dbg !5316
  %7 = icmp slt i32 %6, 0, !dbg !5322
  %8 = select i1 %7, i32 -3, i32 0, !dbg !5322
  br label %9, !dbg !5323

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !5316
  ret i32 %10, !dbg !5324
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5325 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5327, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.value(metadata i32* %1, metadata !5328, metadata !DIExpression()), !dbg !5330
  %4 = icmp ugt i32 %0, 60, !dbg !5331
  br i1 %4, label %12, label %5, !dbg !5333

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !5334
  br i1 %6, label %12, label %7, !dbg !5336

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5337
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5337
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !5337
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !5337
  %10 = load i8, i8* %9, align 2, !dbg !5337
  call void @llvm.dbg.value(metadata i8 %10, metadata !5329, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !5330
  call void @llvm.dbg.value(metadata i8 undef, metadata !5329, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !5330
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5337
  %11 = zext i8 %10 to i32, !dbg !5338
  store i32 %11, i32* %1, align 4, !dbg !5339
  br label %12, !dbg !5340

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !5330
  ret i32 %13, !dbg !5341
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5347, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.value(metadata i32 %1, metadata !5348, metadata !DIExpression()), !dbg !5350
  %3 = icmp ugt i32 %0, 60, !dbg !5351
  br i1 %3, label %8, label %4, !dbg !5353

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !5354
  call void @llvm.dbg.value(metadata i32 %5, metadata !5349, metadata !DIExpression()), !dbg !5350
  %6 = icmp slt i32 %5, 0, !dbg !5355
  %7 = select i1 %6, i32 -3, i32 0, !dbg !5355
  br label %8, !dbg !5356

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !5350
  ret i32 %9, !dbg !5357
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5358 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5363, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.value(metadata i32* %1, metadata !5364, metadata !DIExpression()), !dbg !5366
  %4 = icmp ugt i32 %0, 60, !dbg !5367
  br i1 %4, label %13, label %5, !dbg !5369

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !5370
  br i1 %6, label %13, label %7, !dbg !5372

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5373
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5373
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !5373
  call void @llvm.dbg.value(metadata i32 undef, metadata !5365, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !5366
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !5373
  %10 = load i8, i8* %9, align 4, !dbg !5373
  call void @llvm.dbg.value(metadata i8 %10, metadata !5365, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !5366
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !5373
  %11 = icmp ne i8 %10, 0, !dbg !5374
  %12 = zext i1 %11 to i32, !dbg !5374
  store i32 %12, i32* %1, align 4, !dbg !5375
  br label %13, !dbg !5376

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !5366
  ret i32 %14, !dbg !5377
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !5378 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5380, metadata !DIExpression()), !dbg !5382
  %3 = icmp ugt i32 %0, 60, !dbg !5383
  br i1 %3, label %11, label %4, !dbg !5385

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !5386
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !5386
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !5386
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !5386
  %7 = load i8, i8* %6, align 2, !dbg !5386
  call void @llvm.dbg.value(metadata i8 %7, metadata !5381, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !5382
  call void @llvm.dbg.value(metadata i8 undef, metadata !5381, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !5382
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !5386
  %8 = xor i8 %7, 1, !dbg !5387
  %9 = zext i8 %8 to i32, !dbg !5387
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !5388
  br label %11, !dbg !5389

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !5382
  ret i32 %12, !dbg !5390
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !5391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5393, metadata !DIExpression()), !dbg !5395
  %2 = icmp ugt i32 %0, 60, !dbg !5396
  br i1 %2, label %10, label %3, !dbg !5398

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !5399
  call void @llvm.dbg.value(metadata i32 %4, metadata !5394, metadata !DIExpression()), !dbg !5395
  %5 = icmp slt i32 %4, 0, !dbg !5400
  br i1 %5, label %10, label %6, !dbg !5402

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !5403
  call void @llvm.dbg.value(metadata i32 %7, metadata !5394, metadata !DIExpression()), !dbg !5395
  %8 = icmp slt i32 %7, 0, !dbg !5404
  %9 = select i1 %8, i32 -3, i32 0, !dbg !5404
  br label %10, !dbg !5405

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !5395
  ret i32 %11, !dbg !5406
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !5407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5409, metadata !DIExpression()), !dbg !5411
  %2 = icmp ugt i32 %0, 60, !dbg !5412
  br i1 %2, label %10, label %3, !dbg !5414

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !5415
  call void @llvm.dbg.value(metadata i32 %4, metadata !5410, metadata !DIExpression()), !dbg !5411
  %5 = icmp slt i32 %4, 0, !dbg !5416
  br i1 %5, label %10, label %6, !dbg !5418

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !5419
  call void @llvm.dbg.value(metadata i32 %7, metadata !5410, metadata !DIExpression()), !dbg !5411
  %8 = icmp slt i32 %7, 0, !dbg !5420
  %9 = select i1 %8, i32 -3, i32 0, !dbg !5420
  br label %10, !dbg !5421

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !5411
  ret i32 %11, !dbg !5422
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !5423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5425, metadata !DIExpression()), !dbg !5427
  %2 = icmp ugt i32 %0, 60, !dbg !5428
  br i1 %2, label %7, label %3, !dbg !5430

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !5431
  call void @llvm.dbg.value(metadata i32 %4, metadata !5426, metadata !DIExpression()), !dbg !5427
  %5 = icmp slt i32 %4, 0, !dbg !5432
  %6 = select i1 %5, i32 -3, i32 0, !dbg !5432
  br label %7, !dbg !5433

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !5427
  ret i32 %8, !dbg !5434
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5435 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5439, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.value(metadata i32 %1, metadata !5440, metadata !DIExpression()), !dbg !5442
  %3 = icmp ugt i32 %0, 60, !dbg !5443
  br i1 %3, label %9, label %4, !dbg !5445

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !5446
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !5447
  call void @llvm.dbg.value(metadata i32 %6, metadata !5441, metadata !DIExpression()), !dbg !5442
  %7 = icmp slt i32 %6, 0, !dbg !5448
  %8 = select i1 %7, i32 -3, i32 0, !dbg !5448
  br label %9, !dbg !5449

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !5442
  ret i32 %10, !dbg !5450
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5451 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5456, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.value(metadata i32* %1, metadata !5457, metadata !DIExpression()), !dbg !5460
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !5461
  %4 = icmp ugt i32 %0, 60, !dbg !5462
  br i1 %4, label %11, label %5, !dbg !5464

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !5459, metadata !DIExpression(DW_OP_deref)), !dbg !5460
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !5465
  call void @llvm.dbg.value(metadata i32 %6, metadata !5458, metadata !DIExpression()), !dbg !5460
  %7 = load i8, i8* %3, align 1, !dbg !5466
  call void @llvm.dbg.value(metadata i8 %7, metadata !5459, metadata !DIExpression()), !dbg !5460
  %8 = zext i8 %7 to i32, !dbg !5467
  store i32 %8, i32* %1, align 4, !dbg !5468
  %9 = icmp slt i32 %6, 0, !dbg !5469
  %10 = select i1 %9, i32 -3, i32 0, !dbg !5469
  br label %11, !dbg !5470

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !5460
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !5471
  ret i32 %12, !dbg !5471
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #3 !dbg !5472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5478, metadata !DIExpression()), !dbg !5479
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !5480
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5482
  %4 = load i8, i8* %3, align 4, !dbg !5482, !range !1559
  %5 = icmp eq i8 %4, 0, !dbg !5482
  br i1 %5, label %6, label %12, !dbg !5483

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5484
  br i1 %7, label %9, label %8, !dbg !5486

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 noundef %0) #16, !dbg !5487
  br label %12, !dbg !5489

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !5490
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #16, !dbg !5491
  store i8 1, i8* %3, align 4, !dbg !5492
  br label %12, !dbg !5493

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !5479
  ret i32 %13, !dbg !5494
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !5495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5499, metadata !DIExpression()), !dbg !5500
  %2 = icmp ult i32 %0, 5, !dbg !5501
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !5503
  ret i1 %4, !dbg !5504
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !5505 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5507, metadata !DIExpression()), !dbg !5508
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5509
  br i1 %2, label %4, label %3, !dbg !5511

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 noundef %0) #16, !dbg !5512
  br label %14, !dbg !5514

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !5515
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !5517
  %7 = load i32, i32* %6, align 4, !dbg !5517
  %8 = icmp eq i32 %7, 0, !dbg !5518
  br i1 %8, label %10, label %9, !dbg !5519

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.26, i32 0, i32 0), i32 noundef %0) #16, !dbg !5520
  br label %14, !dbg !5522

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !5523
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #16, !dbg !5524
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5525
  store i8 0, i8* %13, align 4, !dbg !5526
  br label %14, !dbg !5527

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !5508
  ret i32 %15, !dbg !5528
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5529 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5534, metadata !DIExpression()), !dbg !5536
  call void @llvm.dbg.value(metadata i32* %1, metadata !5535, metadata !DIExpression()), !dbg !5536
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !5537

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5538
  %5 = icmp eq i32 %4, 1, !dbg !5542
  br i1 %5, label %7, label %6, !dbg !5543

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #16, !dbg !5544
  br label %7, !dbg !5546

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #16, !dbg !5547
  store i32 %8, i32* %1, align 4, !dbg !5548
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5549
  br label %25, !dbg !5550

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5551
  %11 = icmp eq i32 %10, 1, !dbg !5555
  br i1 %11, label %13, label %12, !dbg !5556

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #16, !dbg !5557
  br label %13, !dbg !5559

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #16, !dbg !5560
  %15 = tail call i32 @top_mcu_freq_get() #16, !dbg !5561
  %16 = udiv i32 %15, 1000000, !dbg !5562
  %17 = udiv i32 %14, %16, !dbg !5563
  store i32 %17, i32* %1, align 4, !dbg !5564
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5565
  br label %25, !dbg !5566

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5567
  %20 = icmp eq i32 %19, 1, !dbg !5571
  br i1 %20, label %22, label %21, !dbg !5572

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #16, !dbg !5573
  br label %22, !dbg !5575

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #16, !dbg !5576
  store i32 %23, i32* %1, align 4, !dbg !5577
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5578
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %0) #16, !dbg !5579
  br label %25, !dbg !5581

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !5536
  ret i32 %26, !dbg !5582
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #5 !dbg !5583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5587, metadata !DIExpression()), !dbg !5590
  call void @llvm.dbg.value(metadata i32 %1, metadata !5588, metadata !DIExpression()), !dbg !5590
  call void @llvm.dbg.value(metadata i32* %2, metadata !5589, metadata !DIExpression()), !dbg !5590
  %4 = icmp eq i32* %2, null, !dbg !5591
  br i1 %4, label %7, label %5, !dbg !5593

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !5594
  store i32 %6, i32* %2, align 4, !dbg !5594
  br label %7, !dbg !5596

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !5590
  ret i32 %8, !dbg !5597
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5598 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5603, metadata !DIExpression()), !dbg !5605
  call void @llvm.dbg.value(metadata i32* %1, metadata !5604, metadata !DIExpression()), !dbg !5605
  %3 = icmp ugt i32 %0, 4, !dbg !5606
  br i1 %3, label %4, label %5, !dbg !5608

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.28, i32 0, i32 0), i32 noundef %0) #16, !dbg !5609
  br label %8, !dbg !5611

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5612
  %7 = load i32, i32* %6, align 4, !dbg !5612
  store i32 %7, i32* %1, align 4, !dbg !5613
  br label %8, !dbg !5614

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !5605
  ret i32 %9, !dbg !5615
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !5616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5620, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !5621, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.value(metadata i8* %2, metadata !5622, metadata !DIExpression()), !dbg !5623
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5624
  br i1 %4, label %6, label %5, !dbg !5626

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.29, i32 0, i32 0), i32 noundef %0) #16, !dbg !5627
  br label %15, !dbg !5629

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5630
  %8 = load i8, i8* %7, align 4, !dbg !5630, !range !1559
  %9 = icmp eq i8 %8, 1, !dbg !5632
  br i1 %9, label %10, label %15, !dbg !5633

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !5634
  br i1 %11, label %15, label %12, !dbg !5636

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !5637
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !5638
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !5639
  store i8* %2, i8** %14, align 4, !dbg !5640
  br label %15, !dbg !5641

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5623
  ret i32 %16, !dbg !5642
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5648, metadata !DIExpression()), !dbg !5651
  call void @llvm.dbg.value(metadata i32 %1, metadata !5649, metadata !DIExpression()), !dbg !5651
  call void @llvm.dbg.value(metadata i32 %2, metadata !5650, metadata !DIExpression()), !dbg !5651
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5652
  br i1 %4, label %6, label %5, !dbg !5654

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.29, i32 0, i32 0), i32 noundef %0) #16, !dbg !5655
  br label %17, !dbg !5657

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5658
  %8 = load i8, i8* %7, align 4, !dbg !5658, !range !1559
  %9 = icmp eq i8 %8, 1, !dbg !5660
  br i1 %9, label %10, label %17, !dbg !5661

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !5662
  br i1 %11, label %17, label %12, !dbg !5664

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #14, !dbg !5665
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #14, !dbg !5666
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #14, !dbg !5667
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #16, !dbg !5668
  tail call void @TMR_Start(i32 noundef %0) #16, !dbg !5669
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5670
  store i32 1, i32* %16, align 4, !dbg !5671
  br label %17, !dbg !5672

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5651
  ret i32 %18, !dbg !5673
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #11 !dbg !5674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5678, metadata !DIExpression()), !dbg !5679
  %2 = shl i32 %0, 5, !dbg !5680
  %3 = mul i32 %0, 7, !dbg !5681
  %4 = udiv i32 %3, 10, !dbg !5682
  %5 = add i32 %4, %2, !dbg !5683
  %6 = mul i32 %0, 6, !dbg !5684
  %7 = udiv i32 %6, 100, !dbg !5685
  %8 = add i32 %5, %7, !dbg !5686
  %9 = shl i32 %0, 3, !dbg !5687
  %10 = udiv i32 %9, 1000, !dbg !5688
  %11 = add i32 %8, %10, !dbg !5689
  ret i32 %11, !dbg !5690
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #11 !dbg !5691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5695, metadata !DIExpression()), !dbg !5696
  %2 = icmp eq i32 %0, 1, !dbg !5697
  ret i1 %2, !dbg !5698
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #11 !dbg !5699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5704, metadata !DIExpression()), !dbg !5705
  %2 = icmp eq i32 %0, 0, !dbg !5706
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !5707
  ret void ()* %3, !dbg !5708
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #3 !dbg !5709 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !5713
  %2 = icmp eq void (i8*)* %1, null, !dbg !5715
  br i1 %2, label %5, label %3, !dbg !5716

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !5717
  tail call void %1(i8* noundef %4) #16, !dbg !5719
  br label %5, !dbg !5720

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !5721
  ret void, !dbg !5722
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #3 !dbg !5723 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !5726
  %2 = icmp eq void (i8*)* %1, null, !dbg !5728
  br i1 %2, label %5, label %3, !dbg !5729

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !5730
  tail call void %1(i8* noundef %4) #16, !dbg !5732
  br label %5, !dbg !5733

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !5734
  ret void, !dbg !5735
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #3 !dbg !5736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5738, metadata !DIExpression()), !dbg !5739
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !5740
  br i1 %2, label %4, label %3, !dbg !5742

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.29, i32 0, i32 0), i32 noundef %0) #16, !dbg !5743
  br label %6, !dbg !5745

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #16, !dbg !5746
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5747
  store i32 0, i32* %5, align 4, !dbg !5748
  br label %6, !dbg !5749

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !5739
  ret i32 %7, !dbg !5750
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #3 !dbg !5751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5755, metadata !DIExpression()), !dbg !5756
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5757
  %3 = icmp eq i32 %2, 1, !dbg !5759
  br i1 %3, label %5, label %4, !dbg !5760

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #16, !dbg !5761
  br label %5, !dbg !5763

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #16, !dbg !5764
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5765
  ret i32 0, !dbg !5766
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #3 !dbg !5767 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5769, metadata !DIExpression()), !dbg !5770
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5771
  %3 = icmp eq i32 %2, 1, !dbg !5773
  br i1 %3, label %5, label %4, !dbg !5774

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #16, !dbg !5775
  br label %5, !dbg !5777

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #16, !dbg !5778
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5779
  ret i32 0, !dbg !5780
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !5781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5787, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5788, metadata !DIExpression()), !dbg !5789
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5790
  br i1 %3, label %4, label %18, !dbg !5792

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5793
  %6 = load i8, i8* %5, align 4, !dbg !5793, !range !1559
  %7 = icmp eq i8 %6, 0, !dbg !5793
  br i1 %7, label %8, label %18, !dbg !5795

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !5796
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5797
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !5798
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5799
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !5800
  store i8 1, i8* %5, align 4, !dbg !5801
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5802, !range !5803
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !5804
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !5805
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5806
  %16 = icmp eq i32 %15, 0, !dbg !5808
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5789
  br label %18, !dbg !5789

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5789
  ret i32 %19, !dbg !5809
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #7 !dbg !5810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5816, metadata !DIExpression()), !dbg !5818
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5817, metadata !DIExpression()), !dbg !5818
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5819
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !5821
  br i1 %5, label %6, label %22, !dbg !5821

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5822
  %8 = load i32, i32* %7, align 4, !dbg !5822
  %9 = icmp ugt i32 %8, 12, !dbg !5824
  br i1 %9, label %22, label %10, !dbg !5825

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5826
  %12 = load i32, i32* %11, align 4, !dbg !5826
  %13 = icmp ugt i32 %12, 2, !dbg !5827
  br i1 %13, label %22, label %14, !dbg !5828

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5829
  %16 = load i32, i32* %15, align 4, !dbg !5829
  %17 = icmp ugt i32 %16, 1, !dbg !5830
  br i1 %17, label %22, label %18, !dbg !5831

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5832
  %20 = load i32, i32* %19, align 4, !dbg !5832
  %21 = icmp ult i32 %20, 4, !dbg !5833
  br label %22, !dbg !5834

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5818
  ret i1 %23, !dbg !5835
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #11 !dbg !5836 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5840, metadata !DIExpression()), !dbg !5841
  %2 = icmp ne i32 %0, 0, !dbg !5842
  %3 = zext i1 %2 to i32, !dbg !5843
  ret i32 %3, !dbg !5844
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !5845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5849, metadata !DIExpression()), !dbg !5851
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5850, metadata !DIExpression()), !dbg !5851
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5852
  br i1 %3, label %4, label %22, !dbg !5854

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5855
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5856
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5857
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !5858
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5859
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5860
  %11 = load i32, i32* %10, align 4, !dbg !5860
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !5861
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5862
  %14 = load i32, i32* %13, align 4, !dbg !5862
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !5863
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5864
  %17 = load i32, i32* %16, align 4, !dbg !5864
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !5865
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5866
  %20 = load i32, i32* %19, align 4, !dbg !5866
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !5867
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !5868
  br label %22, !dbg !5869

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5851
  ret i32 %23, !dbg !5870
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #11 !dbg !5871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5875, metadata !DIExpression()), !dbg !5880
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5876, metadata !DIExpression()), !dbg !5881
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5882
  %3 = load i32, i32* %2, align 4, !dbg !5882
  ret i32 %3, !dbg !5883
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #11 !dbg !5884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5888, metadata !DIExpression()), !dbg !5891
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5889, metadata !DIExpression()), !dbg !5892
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5893
  %3 = load i16, i16* %2, align 2, !dbg !5893
  ret i16 %3, !dbg !5894
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #11 !dbg !5895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5899, metadata !DIExpression()), !dbg !5902
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5900, metadata !DIExpression()), !dbg !5903
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5904
  %3 = load i16, i16* %2, align 2, !dbg !5904
  ret i16 %3, !dbg !5905
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #11 !dbg !5906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5910, metadata !DIExpression()), !dbg !5913
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5911, metadata !DIExpression()), !dbg !5914
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5915
  %3 = load i16, i16* %2, align 2, !dbg !5915
  ret i16 %3, !dbg !5916
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !5917 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5921, metadata !DIExpression()), !dbg !5922
  %2 = icmp ult i32 %0, 2, !dbg !5923
  ret i1 %2, !dbg !5924
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !5925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5929, metadata !DIExpression()), !dbg !5930
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5931
  br i1 %2, label %3, label %10, !dbg !5933

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5934
  %5 = load i8, i8* %4, align 4, !dbg !5934, !range !1559
  %6 = icmp eq i8 %5, 0, !dbg !5936
  br i1 %6, label %10, label %7, !dbg !5937

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !5938
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5939, !range !5803
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !5940
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !5941
  br label %10, !dbg !5942

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5930
  ret i32 %11, !dbg !5943
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5944 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5948, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.value(metadata i8 %1, metadata !5949, metadata !DIExpression()), !dbg !5951
  %3 = icmp eq i32 %0, 0, !dbg !5952
  %4 = icmp eq i32 %0, 1, !dbg !5952
  %5 = select i1 %4, i32 1, i32 2, !dbg !5952
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5952
  call void @llvm.dbg.value(metadata i32 %6, metadata !5950, metadata !DIExpression()), !dbg !5951
  %7 = icmp eq i32 %6, 2, !dbg !5953
  br i1 %7, label %9, label %8, !dbg !5955

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !5956
  br label %9, !dbg !5958

9:                                                ; preds = %2, %8
  ret void, !dbg !5959
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5964, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.value(metadata i8* %1, metadata !5965, metadata !DIExpression()), !dbg !5969
  call void @llvm.dbg.value(metadata i32 %2, metadata !5966, metadata !DIExpression()), !dbg !5969
  %4 = icmp eq i32 %0, 0, !dbg !5970
  %5 = icmp eq i32 %0, 1, !dbg !5970
  %6 = select i1 %5, i32 1, i32 2, !dbg !5970
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5970
  call void @llvm.dbg.value(metadata i32 %7, metadata !5967, metadata !DIExpression()), !dbg !5969
  %8 = icmp eq i8* %1, null, !dbg !5971
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5973
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5973
  call void @llvm.dbg.value(metadata i32 0, metadata !5968, metadata !DIExpression()), !dbg !5969
  br i1 %12, label %19, label %13, !dbg !5973

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5968, metadata !DIExpression()), !dbg !5969
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5974
  %16 = load i8, i8* %15, align 1, !dbg !5974
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !5980
  %17 = add nuw i32 %14, 1, !dbg !5981
  call void @llvm.dbg.value(metadata i32 %17, metadata !5968, metadata !DIExpression()), !dbg !5969
  %18 = icmp eq i32 %17, %2, !dbg !5982
  br i1 %18, label %19, label %13, !dbg !5983, !llvm.loop !5984

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5969
  ret i32 %20, !dbg !5986
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5987 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5989, metadata !DIExpression()), !dbg !5995
  call void @llvm.dbg.value(metadata i8* %1, metadata !5990, metadata !DIExpression()), !dbg !5995
  call void @llvm.dbg.value(metadata i32 %2, metadata !5991, metadata !DIExpression()), !dbg !5995
  %5 = bitcast i32* %4 to i8*, !dbg !5996
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5996
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5997
  br i1 %6, label %7, label %24, !dbg !5999

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !6000
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !6002
  br i1 %10, label %24, label %11, !dbg !6002

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !6003
  %13 = load i8, i8* %12, align 4, !dbg !6003, !range !1559
  %14 = icmp eq i8 %13, 0, !dbg !6003
  br i1 %14, label %24, label %15, !dbg !6005

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6006, !range !5803
  call void @llvm.dbg.value(metadata i32* %4, metadata !5992, metadata !DIExpression(DW_OP_deref)), !dbg !5995
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !6007
  %17 = load i32, i32* %4, align 4, !dbg !6008
  call void @llvm.dbg.value(metadata i32 %17, metadata !5992, metadata !DIExpression()), !dbg !5995
  %18 = icmp ult i32 %17, %2, !dbg !6010
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5993, metadata !DIExpression()), !dbg !5995
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !6011
  %20 = load i32, i32* %4, align 4, !dbg !6012
  call void @llvm.dbg.value(metadata i32 %20, metadata !5992, metadata !DIExpression()), !dbg !5995
  %21 = icmp eq i32 %19, %20, !dbg !6014
  br i1 %21, label %22, label %24, !dbg !6015

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !6016, !range !6018
  call void @llvm.dbg.value(metadata i32 %23, metadata !5994, metadata !DIExpression()), !dbg !5995
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !6019
  br label %24, !dbg !6020

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5995
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6021
  ret i32 %25, !dbg !6021
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #11 !dbg !6022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6026, metadata !DIExpression()), !dbg !6029
  call void @llvm.dbg.value(metadata i1 %1, metadata !6027, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !6029
  %3 = icmp eq i32 %0, 0, !dbg !6030
  %4 = select i1 %1, i32 15, i32 14, !dbg !6032
  %5 = select i1 %1, i32 17, i32 16, !dbg !6032
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !6032
  call void @llvm.dbg.value(metadata i32 %6, metadata !6028, metadata !DIExpression()), !dbg !6029
  ret i32 %6, !dbg !6033
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !6034 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6038, metadata !DIExpression()), !dbg !6040
  %2 = icmp eq i32 %0, 0, !dbg !6041
  %3 = icmp eq i32 %0, 1, !dbg !6041
  %4 = select i1 %3, i32 1, i32 2, !dbg !6041
  %5 = select i1 %2, i32 0, i32 %4, !dbg !6041
  call void @llvm.dbg.value(metadata i32 %5, metadata !6039, metadata !DIExpression()), !dbg !6040
  %6 = icmp ult i32 %5, 2, !dbg !6042
  br i1 %6, label %7, label %9, !dbg !6044

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !6045
  br label %9, !dbg !6047

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !6048
  ret i8 %10, !dbg !6049
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !6050 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6054, metadata !DIExpression()), !dbg !6056
  %2 = icmp eq i32 %0, 0, !dbg !6057
  %3 = icmp eq i32 %0, 1, !dbg !6057
  %4 = select i1 %3, i32 1, i32 2, !dbg !6057
  %5 = select i1 %2, i32 0, i32 %4, !dbg !6057
  call void @llvm.dbg.value(metadata i32 %5, metadata !6055, metadata !DIExpression()), !dbg !6056
  %6 = icmp ult i32 %5, 2, !dbg !6058
  br i1 %6, label %7, label %9, !dbg !6060

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !6061
  br label %9, !dbg !6063

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !6064
  ret i32 %10, !dbg !6065
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !6066 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6070, metadata !DIExpression()), !dbg !6075
  call void @llvm.dbg.value(metadata i8* %1, metadata !6071, metadata !DIExpression()), !dbg !6075
  call void @llvm.dbg.value(metadata i32 %2, metadata !6072, metadata !DIExpression()), !dbg !6075
  %4 = icmp eq i32 %0, 0, !dbg !6076
  %5 = icmp eq i32 %0, 1, !dbg !6076
  %6 = select i1 %5, i32 1, i32 2, !dbg !6076
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6076
  call void @llvm.dbg.value(metadata i32 %7, metadata !6073, metadata !DIExpression()), !dbg !6075
  %8 = icmp eq i8* %1, null, !dbg !6077
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !6079
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !6079
  call void @llvm.dbg.value(metadata i32 0, metadata !6074, metadata !DIExpression()), !dbg !6075
  br i1 %12, label %19, label %13, !dbg !6079

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !6074, metadata !DIExpression()), !dbg !6075
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !6080
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !6086
  store i8 %15, i8* %16, align 1, !dbg !6087
  %17 = add nuw i32 %14, 1, !dbg !6088
  call void @llvm.dbg.value(metadata i32 %17, metadata !6074, metadata !DIExpression()), !dbg !6075
  %18 = icmp eq i32 %17, %2, !dbg !6089
  br i1 %18, label %19, label %13, !dbg !6090, !llvm.loop !6091

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !6075
  ret i32 %20, !dbg !6093
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !6094 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6096, metadata !DIExpression()), !dbg !6102
  call void @llvm.dbg.value(metadata i8* %1, metadata !6097, metadata !DIExpression()), !dbg !6102
  call void @llvm.dbg.value(metadata i32 %2, metadata !6098, metadata !DIExpression()), !dbg !6102
  %5 = bitcast i32* %4 to i8*, !dbg !6103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6103
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6104
  br i1 %6, label %7, label %20, !dbg !6106

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !6107
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !6109
  br i1 %10, label %20, label %11, !dbg !6109

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6110, !range !5803
  call void @llvm.dbg.value(metadata i32* %4, metadata !6099, metadata !DIExpression(DW_OP_deref)), !dbg !6102
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !6111
  %13 = load i32, i32* %4, align 4, !dbg !6112
  call void @llvm.dbg.value(metadata i32 %13, metadata !6099, metadata !DIExpression()), !dbg !6102
  %14 = icmp ult i32 %13, %2, !dbg !6114
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !6100, metadata !DIExpression()), !dbg !6102
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !6115
  %16 = load i32, i32* %4, align 4, !dbg !6116
  call void @llvm.dbg.value(metadata i32 %16, metadata !6099, metadata !DIExpression()), !dbg !6102
  %17 = icmp eq i32 %15, %16, !dbg !6118
  br i1 %17, label %18, label %20, !dbg !6119

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !6120, !range !6018
  call void @llvm.dbg.value(metadata i32 %19, metadata !6101, metadata !DIExpression()), !dbg !6102
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !6122
  br label %20, !dbg !6123

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !6102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6124
  ret i32 %21, !dbg !6124
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !6125 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6127, metadata !DIExpression()), !dbg !6129
  %3 = bitcast i32* %2 to i8*, !dbg !6130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6130
  call void @llvm.dbg.value(metadata i32 0, metadata !6128, metadata !DIExpression()), !dbg !6129
  store i32 0, i32* %2, align 4, !dbg !6131
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6132
  br i1 %4, label %5, label %8, !dbg !6134

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6135, !range !5803
  call void @llvm.dbg.value(metadata i32* %2, metadata !6128, metadata !DIExpression(DW_OP_deref)), !dbg !6129
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !6136
  %7 = load i32, i32* %2, align 4, !dbg !6137
  call void @llvm.dbg.value(metadata i32 %7, metadata !6128, metadata !DIExpression()), !dbg !6129
  br label %8, !dbg !6138

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !6129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6139
  ret i32 %9, !dbg !6139
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !6140 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6142, metadata !DIExpression()), !dbg !6144
  %3 = bitcast i32* %2 to i8*, !dbg !6145
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6145
  call void @llvm.dbg.value(metadata i32 0, metadata !6143, metadata !DIExpression()), !dbg !6144
  store i32 0, i32* %2, align 4, !dbg !6146
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6147
  br i1 %4, label %5, label %8, !dbg !6149

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6150, !range !5803
  call void @llvm.dbg.value(metadata i32* %2, metadata !6143, metadata !DIExpression(DW_OP_deref)), !dbg !6144
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !6151
  %7 = load i32, i32* %2, align 4, !dbg !6152
  call void @llvm.dbg.value(metadata i32 %7, metadata !6143, metadata !DIExpression()), !dbg !6144
  br label %8, !dbg !6153

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !6144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !6154
  ret i32 %9, !dbg !6154
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !6155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6159, metadata !DIExpression()), !dbg !6163
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !6160, metadata !DIExpression()), !dbg !6163
  call void @llvm.dbg.value(metadata i8* %2, metadata !6161, metadata !DIExpression()), !dbg !6163
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6164
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !6166
  br i1 %6, label %7, label %18, !dbg !6166

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !6167
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !6168
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !6169
  store i8* %2, i8** %9, align 4, !dbg !6170
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !6171
  store i8 1, i8* %10, align 4, !dbg !6172
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6173
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !6174
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !6175
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !6176
  %13 = icmp eq i32 %11, 0, !dbg !6177
  br i1 %13, label %14, label %15, !dbg !6179

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !6180
  br label %16, !dbg !6182

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !6183
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !6185, !range !6018
  call void @llvm.dbg.value(metadata i32 %17, metadata !6162, metadata !DIExpression()), !dbg !6163
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !6186
  br label %18, !dbg !6187

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !6163
  ret i32 %19, !dbg !6188
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #11 !dbg !636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !641, metadata !DIExpression()), !dbg !6189
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !6190
  %3 = load void ()*, void ()** %2, align 4, !dbg !6190
  ret void ()* %3, !dbg !6191
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !6192 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !6198, !range !1559
  %2 = icmp eq i8 %1, 0, !dbg !6198
  br i1 %2, label %8, label %3, !dbg !6199

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !6200
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !6202
  br i1 %5, label %8, label %6, !dbg !6203

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !6204
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !6206
  br label %8, !dbg !6207

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !6208, !range !5803
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !6209
  ret void, !dbg !6210
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !6211 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !6216, !range !1559
  %2 = icmp eq i8 %1, 0, !dbg !6216
  br i1 %2, label %8, label %3, !dbg !6217

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !6218
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !6220
  br i1 %5, label %8, label %6, !dbg !6221

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !6222
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !6224
  br label %8, !dbg !6225

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !6226, !range !5803
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !6227
  ret void, !dbg !6228
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !6229 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6233, metadata !DIExpression()), !dbg !6240
  call void @llvm.dbg.value(metadata i1 %1, metadata !6234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !6240
  %5 = bitcast i32* %3 to i8*, !dbg !6241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6241
  %6 = bitcast i32* %4 to i8*, !dbg !6241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !6241
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !6237, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !6240
  br i1 %1, label %7, label %12, !dbg !6242

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !6237, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !6240
  call void @llvm.dbg.value(metadata i32* %3, metadata !6235, metadata !DIExpression(DW_OP_deref)), !dbg !6240
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !6243
  %8 = load i32, i32* %3, align 4, !dbg !6246
  call void @llvm.dbg.value(metadata i32 %8, metadata !6235, metadata !DIExpression()), !dbg !6240
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !6248
  %10 = load i32, i32* %9, align 4, !dbg !6248
  %11 = icmp ult i32 %8, %10, !dbg !6249
  br i1 %11, label %22, label %20, !dbg !6250

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !6236, metadata !DIExpression(DW_OP_deref)), !dbg !6240
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !6251
  %13 = load i32, i32* %4, align 4, !dbg !6253
  call void @llvm.dbg.value(metadata i32 %13, metadata !6236, metadata !DIExpression()), !dbg !6240
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !6255
  %15 = load i32, i32* %14, align 4, !dbg !6255
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !6256
  %17 = load i32, i32* %16, align 4, !dbg !6256
  %18 = sub i32 %15, %17, !dbg !6257
  %19 = icmp ult i32 %13, %18, !dbg !6258
  br i1 %19, label %22, label %20, !dbg !6259

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !6260, !range !6018
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !6260
  br label %22, !dbg !6261

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !6261
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !6261
  ret void, !dbg !6261
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !6262 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !6267, !range !1559
  %2 = icmp eq i8 %1, 0, !dbg !6267
  br i1 %2, label %11, label %3, !dbg !6268

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !6269
  %5 = icmp eq i32 %4, 0, !dbg !6270
  br i1 %5, label %11, label %6, !dbg !6271

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !6272
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !6274
  br i1 %8, label %11, label %9, !dbg !6275

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !6276
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !6278
  br label %11, !dbg !6279

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !6280, !range !5803
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !6281
  ret void, !dbg !6282
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !6283 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !6288, !range !1559
  %2 = icmp eq i8 %1, 0, !dbg !6288
  br i1 %2, label %11, label %3, !dbg !6289

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !6290
  %5 = icmp eq i32 %4, 0, !dbg !6291
  br i1 %5, label %11, label %6, !dbg !6292

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !6293
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !6295
  br i1 %8, label %11, label %9, !dbg !6296

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !6297
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !6299
  br label %11, !dbg !6300

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !6301, !range !5803
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !6302
  ret void, !dbg !6303
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6308, metadata !DIExpression()), !dbg !6310
  call void @llvm.dbg.value(metadata i32 %1, metadata !6309, metadata !DIExpression()), !dbg !6310
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6311
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !6313
  br i1 %5, label %6, label %10, !dbg !6313

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !6314
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !6315
  store i32 %1, i32* %8, align 4, !dbg !6316
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !6317
  br label %10, !dbg !6318

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !6310
  ret i32 %11, !dbg !6319
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !6320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6326, metadata !DIExpression()), !dbg !6328
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !6327, metadata !DIExpression()), !dbg !6328
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6329
  br i1 %3, label %4, label %28, !dbg !6331

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !6332
  br i1 %5, label %6, label %28, !dbg !6334

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !6335
  store i8 1, i8* %7, align 4, !dbg !6336
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !6337
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !6338
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !6339
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !6340
  tail call void @DMA_Init() #16, !dbg !6341
  tail call void @DMA_Vfifo_init() #16, !dbg !6342
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !6343
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !6344
  %14 = load i8*, i8** %13, align 4, !dbg !6344
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !6345
  %16 = load i32, i32* %15, align 4, !dbg !6345
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !6346
  %18 = load i32, i32* %17, align 4, !dbg !6346
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !6347
  %20 = load i32, i32* %19, align 4, !dbg !6347
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !6348
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !6349
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !6350
  %23 = load i8*, i8** %22, align 4, !dbg !6350
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !6351
  %25 = load i32, i32* %24, align 4, !dbg !6351
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !6352
  %27 = load i32, i32* %26, align 4, !dbg !6352
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !6353
  br label %28, !dbg !6354

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !6328
  ret i32 %29, !dbg !6355
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #7 !dbg !6356 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !6360, metadata !DIExpression()), !dbg !6361
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !6362
  br i1 %2, label %27, label %3, !dbg !6364

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !6365
  %5 = load i8*, i8** %4, align 4, !dbg !6365
  %6 = icmp eq i8* %5, null, !dbg !6367
  br i1 %6, label %27, label %7, !dbg !6368

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !6369
  %9 = load i32, i32* %8, align 4, !dbg !6369
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !6371
  %11 = load i32, i32* %10, align 4, !dbg !6371
  %12 = icmp ult i32 %9, %11, !dbg !6372
  br i1 %12, label %27, label %13, !dbg !6373

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !6374
  %15 = load i32, i32* %14, align 4, !dbg !6374
  %16 = icmp ult i32 %9, %15, !dbg !6376
  br i1 %16, label %27, label %17, !dbg !6377

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !6378
  %19 = load i8*, i8** %18, align 4, !dbg !6378
  %20 = icmp eq i8* %19, null, !dbg !6380
  br i1 %20, label %27, label %21, !dbg !6381

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !6382
  %23 = load i32, i32* %22, align 4, !dbg !6382
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !6384
  %25 = load i32, i32* %24, align 4, !dbg !6384
  %26 = icmp uge i32 %23, %25, !dbg !6385
  br label %27, !dbg !6386

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !6361
  ret i1 %28, !dbg !6387
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !6388 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6390, metadata !DIExpression()), !dbg !6392
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !6393
  %3 = udiv i32 %2, 1000000, !dbg !6394
  call void @llvm.dbg.value(metadata i32 %3, metadata !6391, metadata !DIExpression()), !dbg !6392
  %4 = mul i32 %3, %0, !dbg !6395
  ret i32 %4, !dbg !6396
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !6397 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6399, metadata !DIExpression()), !dbg !6401
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6402
  br i1 %2, label %3, label %8, !dbg !6404

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !6405
  %5 = icmp eq i32 %0, 1, !dbg !6405
  %6 = select i1 %5, i32 1, i32 2, !dbg !6405
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6405
  call void @llvm.dbg.value(metadata i32 %7, metadata !6400, metadata !DIExpression()), !dbg !6401
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !6406
  br label %8, !dbg !6407

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !6401
  ret i32 %9, !dbg !6408
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !6409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6413, metadata !DIExpression()), !dbg !6418
  call void @llvm.dbg.value(metadata i8 %1, metadata !6414, metadata !DIExpression()), !dbg !6418
  call void @llvm.dbg.value(metadata i8 %2, metadata !6415, metadata !DIExpression()), !dbg !6418
  call void @llvm.dbg.value(metadata i8 %3, metadata !6416, metadata !DIExpression()), !dbg !6418
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6419
  br i1 %5, label %6, label %11, !dbg !6421

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !6422
  %8 = icmp eq i32 %0, 1, !dbg !6422
  %9 = select i1 %8, i32 1, i32 2, !dbg !6422
  %10 = select i1 %7, i32 0, i32 %9, !dbg !6422
  call void @llvm.dbg.value(metadata i32 %10, metadata !6417, metadata !DIExpression()), !dbg !6418
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !6423
  br label %11, !dbg !6424

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !6418
  ret i32 %12, !dbg !6425
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !6426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6428, metadata !DIExpression()), !dbg !6430
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6431
  br i1 %2, label %3, label %8, !dbg !6433

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !6434
  %5 = icmp eq i32 %0, 1, !dbg !6434
  %6 = select i1 %5, i32 1, i32 2, !dbg !6434
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6434
  call void @llvm.dbg.value(metadata i32 %7, metadata !6429, metadata !DIExpression()), !dbg !6430
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !6435
  br label %8, !dbg !6436

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !6430
  ret i32 %9, !dbg !6437
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6442, metadata !DIExpression()), !dbg !6444
  call void @llvm.dbg.value(metadata i32 %1, metadata !6443, metadata !DIExpression()), !dbg !6444
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !6445
  br i1 %3, label %4, label %8, !dbg !6447

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !6448
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !6450
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !6450
  br label %8, !dbg !6451

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !6444
  ret i32 %9, !dbg !6451
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !6452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6456, metadata !DIExpression()), !dbg !6457
  %2 = trunc i32 %0 to i8, !dbg !6458
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #16, !dbg !6459
  ret i32 %0, !dbg !6460
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !6461 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !6462
  tail call fastcc void @prvSetupHardware() #14, !dbg !6463
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !6464, !srcloc !6467
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !6468, !srcloc !6471
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !6472
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.31, i32 0, i32 0)) #16, !dbg !6473
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !6474
  tail call fastcc void @adc_get_data_polling_example() #14, !dbg !6475
  br label %4, !dbg !6476

4:                                                ; preds = %4, %0
  br label %4, !dbg !6477, !llvm.loop !6480
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !6483 {
  tail call void @top_xtal_init() #16, !dbg !6484
  ret void, !dbg !6485
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !6486 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !6487
  ret void, !dbg !6488
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @adc_get_data_polling_example() unnamed_addr #3 !dbg !6489 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !6494
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #15, !dbg !6494
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.32, i32 0, i32 0)) #16, !dbg !6495
  %4 = tail call i32 @hal_adc_init() #16, !dbg !6496
  call void @llvm.dbg.value(metadata i32 0, metadata !6493, metadata !DIExpression()), !dbg !6497
  br label %5, !dbg !6498

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %15, %5 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6493, metadata !DIExpression()), !dbg !6497
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.33, i32 0, i32 0), i32 noundef %6) #16, !dbg !6500
  call void @llvm.dbg.value(metadata i32* %1, metadata !6491, metadata !DIExpression(DW_OP_deref)), !dbg !6497
  %8 = call i32 @hal_adc_get_data_polling(i32 noundef 0, i32* noundef nonnull %1) #16, !dbg !6503
  %9 = load i32, i32* %1, align 4, !dbg !6504
  call void @llvm.dbg.value(metadata i32 %9, metadata !6491, metadata !DIExpression()), !dbg !6497
  %10 = call fastcc i32 @adc_raw_to_voltage(i32 noundef %9) #14, !dbg !6505
  call void @llvm.dbg.value(metadata i32 %10, metadata !6492, metadata !DIExpression()), !dbg !6497
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.34, i32 0, i32 0)) #16, !dbg !6506
  %12 = load i32, i32* %1, align 4, !dbg !6507
  call void @llvm.dbg.value(metadata i32 %12, metadata !6491, metadata !DIExpression()), !dbg !6497
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 noundef 0, i32 noundef %12, i32 noundef %10) #16, !dbg !6508
  %14 = call i32 @hal_gpt_delay_ms(i32 noundef 1000) #16, !dbg !6509
  %15 = add nuw nsw i32 %6, 1, !dbg !6510
  call void @llvm.dbg.value(metadata i32 %15, metadata !6493, metadata !DIExpression()), !dbg !6497
  %16 = icmp eq i32 %15, 20, !dbg !6511
  br i1 %16, label %17, label %5, !dbg !6498, !llvm.loop !6512

17:                                               ; preds = %5
  %18 = call i32 @hal_adc_deinit() #16, !dbg !6514
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0)) #16, !dbg !6515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #15, !dbg !6516
  ret void, !dbg !6516
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @adc_raw_to_voltage(i32 noundef %0) unnamed_addr #11 !dbg !6517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6519, metadata !DIExpression()), !dbg !6521
  %2 = mul i32 %0, 2500, !dbg !6522
  %3 = udiv i32 %2, 4095, !dbg !6523
  call void @llvm.dbg.value(metadata i32 %3, metadata !6520, metadata !DIExpression()), !dbg !6521
  ret i32 %3, !dbg !6524
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !6525 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !6535
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !6535
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !6527, metadata !DIExpression()), !dbg !6536
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #16, !dbg !6537
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #16, !dbg !6538
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !6539
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !6540
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !6541
  store i32 9, i32* %7, align 4, !dbg !6542
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !6543
  store i32 3, i32* %8, align 4, !dbg !6544
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !6545
  store i32 0, i32* %9, align 4, !dbg !6546
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !6547
  store i32 0, i32* %10, align 4, !dbg !6548
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !6549
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !6550
  ret void, !dbg !6550
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #1 !dbg !6551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6553, metadata !DIExpression()), !dbg !6555
  %2 = add i32 %0, -1, !dbg !6556
  %3 = icmp ugt i32 %2, 16777215, !dbg !6558
  br i1 %3, label %8, label %4, !dbg !6559

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6560
  call void @llvm.dbg.value(metadata i32 %5, metadata !6554, metadata !DIExpression()), !dbg !6555
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6561
  %7 = and i32 %6, -4, !dbg !6561
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6561
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !6562
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !6563
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6564
  br label %8, !dbg !6565

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !6555
  ret i32 %9, !dbg !6566
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #1 !dbg !6567 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !6568
  ret void, !dbg !6569
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #6 !dbg !6570 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !6571
  ret i32 %1, !dbg !6572
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !6573 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !6574
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !6575
  ret void, !dbg !6576
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #1 !dbg !6577 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6578
  %2 = or i32 %1, 15728640, !dbg !6578
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6578
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !6579
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6580
  %4 = or i32 %3, 458752, !dbg !6580
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6580
  ret void, !dbg !6581
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #1 !dbg !6582 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6583
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6584
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6585
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !6586
  store volatile i32 270950400, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !6587
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !6588
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6589
  ret void, !dbg !6590
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #11 !dbg !6591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6593, metadata !DIExpression()), !dbg !6594
  ret i32 0, !dbg !6595
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #11 !dbg !6596 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6646, metadata !DIExpression()), !dbg !6648
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6647, metadata !DIExpression()), !dbg !6648
  ret i32 0, !dbg !6649
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #11 !dbg !6650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6652, metadata !DIExpression()), !dbg !6653
  ret i32 1, !dbg !6654
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6659, metadata !DIExpression()), !dbg !6662
  call void @llvm.dbg.value(metadata i32 %1, metadata !6660, metadata !DIExpression()), !dbg !6662
  call void @llvm.dbg.value(metadata i32 %2, metadata !6661, metadata !DIExpression()), !dbg !6662
  ret i32 0, !dbg !6663
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6664 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6668, metadata !DIExpression()), !dbg !6671
  call void @llvm.dbg.value(metadata i32 %1, metadata !6669, metadata !DIExpression()), !dbg !6671
  call void @llvm.dbg.value(metadata i32 %2, metadata !6670, metadata !DIExpression()), !dbg !6671
  ret i32 -1, !dbg !6672
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6673 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6677, metadata !DIExpression()), !dbg !6680
  call void @llvm.dbg.value(metadata i8* %1, metadata !6678, metadata !DIExpression()), !dbg !6680
  call void @llvm.dbg.value(metadata i32 %2, metadata !6679, metadata !DIExpression()), !dbg !6680
  ret i32 0, !dbg !6681
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !6682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6684, metadata !DIExpression()), !dbg !6688
  call void @llvm.dbg.value(metadata i8* %1, metadata !6685, metadata !DIExpression()), !dbg !6688
  call void @llvm.dbg.value(metadata i32 %2, metadata !6686, metadata !DIExpression()), !dbg !6688
  call void @llvm.dbg.value(metadata i32 0, metadata !6687, metadata !DIExpression()), !dbg !6688
  %4 = icmp sgt i32 %2, 0, !dbg !6689
  br i1 %4, label %5, label %14, !dbg !6692

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6687, metadata !DIExpression()), !dbg !6688
  call void @llvm.dbg.value(metadata i8* %7, metadata !6685, metadata !DIExpression()), !dbg !6688
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6693
  call void @llvm.dbg.value(metadata i8* %8, metadata !6685, metadata !DIExpression()), !dbg !6688
  %9 = load i8, i8* %7, align 1, !dbg !6695
  %10 = zext i8 %9 to i32, !dbg !6695
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !6696
  %12 = add nuw nsw i32 %6, 1, !dbg !6697
  call void @llvm.dbg.value(metadata i32 %12, metadata !6687, metadata !DIExpression()), !dbg !6688
  %13 = icmp eq i32 %12, %2, !dbg !6689
  br i1 %13, label %14, label %5, !dbg !6692, !llvm.loop !6698

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6700
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !748 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !951, metadata !DIExpression()), !dbg !6701
  call void @llvm.dbg.value(metadata i32 %1, metadata !952, metadata !DIExpression()), !dbg !6701
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !6702, !srcloc !6703
  call void @llvm.dbg.value(metadata i8* %3, metadata !954, metadata !DIExpression()), !dbg !6701
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6704
  %5 = icmp eq i8* %4, null, !dbg !6706
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6707
  call void @llvm.dbg.value(metadata i8* %6, metadata !953, metadata !DIExpression()), !dbg !6701
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6708
  %8 = icmp ult i8* %3, %7, !dbg !6710
  %9 = xor i1 %8, true, !dbg !6711
  %10 = or i1 %5, %9, !dbg !6711
  br i1 %10, label %11, label %13, !dbg !6711

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6712
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6711
  br label %13, !dbg !6711

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6712
  ret i8* %14, !dbg !6711
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !6713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6715, metadata !DIExpression()), !dbg !6716
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0)) #16, !dbg !6717
  br label %3, !dbg !6718

3:                                                ; preds = %1, %3
  br label %3, !dbg !6718, !llvm.loop !6719
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6725, metadata !DIExpression()), !dbg !6727
  call void @llvm.dbg.value(metadata i32 %1, metadata !6726, metadata !DIExpression()), !dbg !6727
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.42, i32 0, i32 0), i32 noundef %1) #16, !dbg !6728
  ret i32 -1, !dbg !6729
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !6730 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.43, i32 0, i32 0)) #16, !dbg !6735
  ret i32 0, !dbg !6736
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

!llvm.dbg.cu = !{!2, !200, !972, !981, !1062, !1107, !1141, !224, !237, !1144, !257, !343, !426, !1146, !527, !579, !1217, !688, !946, !957}
!llvm.ident = !{!1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221, !1221}
!llvm.module.flags = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DMA_LISR_FUNC", scope: !2, file: !3, line: 56, type: !197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/dma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!4 = !{!5, !34, !41, !46, !51, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!47 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!50 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !52, line: 47, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!201 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!202 = !{!46, !51}
!203 = !{!115, !173}
!204 = !{!198, !205}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "GPTTimer", scope: !200, file: !201, line: 67, type: !207, isLocal: true, isDefinition: true)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPTStruct", file: !208, line: 111, baseType: !209)
!208 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!225 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!238 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!239 = !{!240, !97}
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 71, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!258 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_adc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!259 = !{!260, !267, !275, !280, !289, !293, !298, !51, !97}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !261, line: 53, baseType: !7, size: 32, elements: !262)
!261 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_efuse.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "HAL_EFUSE_OK", value: 0)
!264 = !DIEnumerator(name: "HAL_EFUSE_INVALID_PARAMETER", value: 1)
!265 = !DIEnumerator(name: "HAL_EFUSE_INVALID_MAGIC", value: 2)
!266 = !DIEnumerator(name: "HAL_EFUSE_INVALID_ACCESS", value: 3)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 163, baseType: !53, size: 32, elements: !269)
!268 = !DIFile(filename: "../../../../../driver/chip/inc/hal_adc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIEnumerator(name: "HAL_ADC_STATUS_INVALID_PARAMETER", value: -4)
!271 = !DIEnumerator(name: "HAL_ADC_STATUS_ERROR_BUSY", value: -3)
!272 = !DIEnumerator(name: "HAL_ADC_STATUS_ERROR_CHANNEL", value: -2)
!273 = !DIEnumerator(name: "HAL_ADC_STATUS_ERROR", value: -1)
!274 = !DIEnumerator(name: "HAL_ADC_STATUS_OK", value: 0)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 429, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_adc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!294 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!297 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 308, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!344 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!345 = !{!346, !357, !376, !383}
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !347, line: 163, baseType: !53, size: 32, elements: !348)
!347 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!384 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!395 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!427 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!428 = !{!429, !51}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 152, baseType: !53, size: 32, elements: !431)
!430 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!443 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!528 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!529 = !{!530, !538, !545, !549, !554}
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !531, line: 387, baseType: !53, size: 32, elements: !532)
!531 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!580 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!581 = !{!582, !590, !595, !611, !617, !621, !240, !97, !626}
!582 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !583, line: 345, baseType: !53, size: 32, elements: !584)
!583 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!689 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/adc_get_data_polling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!749 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
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
!947 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!948 = !{!754, !752}
!949 = !{!746}
!950 = !{!951, !952, !953, !954}
!951 = !DILocalVariable(name: "r", arg: 1, scope: !748, file: !749, line: 63, type: !755)
!952 = !DILocalVariable(name: "nbytes", arg: 2, scope: !748, file: !749, line: 63, type: !945)
!953 = !DILocalVariable(name: "prev_heap_end", scope: !748, file: !749, line: 67, type: !754)
!954 = !DILocalVariable(name: "stack", scope: !748, file: !749, line: 68, type: !754)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !957, file: !962, line: 4, type: !969, isLocal: false, isDefinition: true)
!957 = distinct !DICompileUnit(language: DW_LANG_C99, file: !958, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !959, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!959 = !{!955, !960, !964}
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !957, file: !962, line: 5, type: !963, isLocal: false, isDefinition: true)
!962 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 88, elements: !190)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !957, file: !962, line: 6, type: !966, isLocal: false, isDefinition: true)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 120, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 15)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 248, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 31)
!972 = distinct !DICompileUnit(language: DW_LANG_C99, file: !973, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !974, retainedTypes: !980, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!974 = !{!975}
!975 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !976, line: 1209, baseType: !7, size: 32, elements: !977)
!976 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!977 = !{!978, !979}
!978 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!979 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!980 = !{!115, !114}
!981 = distinct !DICompileUnit(language: DW_LANG_C99, file: !982, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !983, retainedTypes: !1061, splitDebugInlining: false, nameTableKind: None)
!982 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!983 = !{!984}
!984 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !985, line: 150, baseType: !7, size: 32, elements: !986)
!985 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!987 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!988 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!989 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!990 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!991 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!992 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!993 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!994 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!995 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!996 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!997 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!998 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!999 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!1000 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!1001 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!1002 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!1003 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!1004 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!1005 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!1006 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!1007 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!1008 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!1009 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!1010 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!1011 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!1012 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!1013 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!1014 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!1015 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!1016 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!1017 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!1018 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!1019 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!1020 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!1021 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!1022 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!1023 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!1024 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!1025 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!1026 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!1027 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!1028 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!1029 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!1030 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!1031 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!1032 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!1033 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!1034 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!1035 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!1036 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!1037 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!1038 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!1039 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!1040 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!1041 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!1042 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!1043 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!1044 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!1045 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!1046 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!1047 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!1048 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!1049 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!1050 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!1051 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!1052 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!1053 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!1054 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!1055 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!1056 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!1057 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!1058 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!1059 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!1060 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!1061 = !{!115, !219}
!1062 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1063, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1064, splitDebugInlining: false, nameTableKind: None)
!1063 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1064 = !{!1065, !1090}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !443, line: 418, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 395, size: 1120, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1067, file: !443, line: 397, baseType: !479, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1067, file: !443, line: 398, baseType: !230, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1067, file: !443, line: 399, baseType: !230, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1067, file: !443, line: 400, baseType: !230, size: 32, offset: 96)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1067, file: !443, line: 401, baseType: !230, size: 32, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1067, file: !443, line: 402, baseType: !230, size: 32, offset: 160)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1067, file: !443, line: 403, baseType: !486, size: 96, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1067, file: !443, line: 404, baseType: !230, size: 32, offset: 288)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1067, file: !443, line: 405, baseType: !230, size: 32, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1067, file: !443, line: 406, baseType: !230, size: 32, offset: 352)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1067, file: !443, line: 407, baseType: !230, size: 32, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1067, file: !443, line: 408, baseType: !230, size: 32, offset: 416)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1067, file: !443, line: 409, baseType: !230, size: 32, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1067, file: !443, line: 410, baseType: !230, size: 32, offset: 480)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1067, file: !443, line: 411, baseType: !497, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1067, file: !443, line: 412, baseType: !479, size: 32, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1067, file: !443, line: 413, baseType: !479, size: 32, offset: 608)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1067, file: !443, line: 414, baseType: !503, size: 128, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1067, file: !443, line: 415, baseType: !507, size: 160, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1067, file: !443, line: 416, baseType: !511, size: 160, offset: 928)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1067, file: !443, line: 417, baseType: !230, size: 32, offset: 1088)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !443, line: 378, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 363, size: 28704, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1092, file: !443, line: 365, baseType: !447, size: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1092, file: !443, line: 366, baseType: !451, size: 768, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1092, file: !443, line: 367, baseType: !447, size: 256, offset: 1024)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1092, file: !443, line: 368, baseType: !451, size: 768, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1092, file: !443, line: 369, baseType: !447, size: 256, offset: 2048)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1092, file: !443, line: 370, baseType: !451, size: 768, offset: 2304)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1092, file: !443, line: 371, baseType: !447, size: 256, offset: 3072)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1092, file: !443, line: 372, baseType: !451, size: 768, offset: 3328)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1092, file: !443, line: 373, baseType: !447, size: 256, offset: 4096)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1092, file: !443, line: 374, baseType: !462, size: 1792, offset: 4352)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1092, file: !443, line: 375, baseType: !466, size: 1920, offset: 6144)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1092, file: !443, line: 376, baseType: !470, size: 20608, offset: 8064)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1092, file: !443, line: 377, baseType: !230, size: 32, offset: 28672)
!1107 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1108, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1109, splitDebugInlining: false, nameTableKind: None)
!1108 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1109 = !{!1110, !984}
!1110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1111, line: 55, baseType: !7, size: 32, elements: !1112)
!1111 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1112 = !{!1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1113 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1114 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1115 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1116 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1117 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1118 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1119 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1120 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1121 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1122 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1123 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1124 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1125 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1126 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1127 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1128 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1129 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1130 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1131 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1132 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1133 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1134 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1135 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1136 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1137 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1138 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1139 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1140 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1142, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1143, splitDebugInlining: false, nameTableKind: None)
!1142 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1143 = !{!796, !115}
!1144 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1145, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1145 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1147, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1148, retainedTypes: !1212, splitDebugInlining: false, nameTableKind: None)
!1147 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1148 = !{!1149, !1156, !1110, !1187, !1193, !1197, !1201, !1207}
!1149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1150, line: 233, baseType: !53, size: 32, elements: !1151)
!1150 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1151 = !{!1152, !1153, !1154, !1155}
!1152 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1153 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1154 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1155 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 249, baseType: !7, size: 32, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1158 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!1159 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!1160 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!1161 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!1162 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!1163 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!1164 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!1165 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!1166 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!1167 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!1168 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!1169 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!1170 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!1171 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!1172 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!1173 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!1174 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!1175 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!1176 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!1177 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!1178 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!1179 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!1180 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!1181 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!1182 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!1183 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!1184 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!1185 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!1186 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1187 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1150, line: 224, baseType: !53, size: 32, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192}
!1189 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1190 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1191 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1192 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1150, line: 217, baseType: !7, size: 32, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1196 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1150, line: 210, baseType: !7, size: 32, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1200 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1150, line: 242, baseType: !7, size: 32, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206}
!1203 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1204 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1205 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1206 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1208, line: 57, baseType: !7, size: 32, elements: !1209)
!1208 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1209 = !{!1210, !1211}
!1210 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1211 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1212 = !{!1213, !161, !1214, !128, !1215, !1216}
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1111, line: 87, baseType: !1110)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1150, line: 220, baseType: !1193)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1150, line: 247, baseType: !1201)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1208, line: 60, baseType: !1207)
!1217 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1218, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1219, retainedTypes: !1220, splitDebugInlining: false, nameTableKind: None)
!1218 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/adc_get_data_polling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1219 = !{!590, !595, !611, !617, !621, !1156, !298}
!1220 = !{!53, !7}
!1221 = !{!"Ubuntu clang version 14.0.6"}
!1222 = !{i32 7, !"Dwarf Version", i32 2}
!1223 = !{i32 2, !"Debug Info Version", i32 3}
!1224 = !{i32 1, !"wchar_size", i32 4}
!1225 = !{i32 1, !"min_enum_size", i32 4}
!1226 = !{i32 1, !"branch-target-enforcement", i32 0}
!1227 = !{i32 1, !"sign-return-address", i32 0}
!1228 = !{i32 1, !"sign-return-address-all", i32 0}
!1229 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1230 = !{i32 7, !"frame-pointer", i32 2}
!1231 = distinct !DISubprogram(name: "DMA_ERROR_LISR", scope: !3, file: !3, line: 509, type: !181, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1232 = !{}
!1233 = !DILocation(line: 511, column: 5, scope: !1231)
!1234 = distinct !{!1234, !1233, !1235}
!1235 = !DILocation(line: 511, column: 14, scope: !1231)
!1236 = distinct !DISubprogram(name: "DMA_Stop", scope: !3, file: !3, line: 73, type: !1237, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !128}
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "channel", arg: 1, scope: !1236, file: !3, line: 73, type: !128)
!1241 = !DILocation(line: 0, scope: !1236)
!1242 = !DILocation(line: 75, column: 5, scope: !1236)
!1243 = !DILocation(line: 76, column: 5, scope: !1236)
!1244 = !DILocation(line: 77, column: 1, scope: !1236)
!1245 = distinct !DISubprogram(name: "DMA_Run", scope: !3, file: !3, line: 79, type: !1237, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1246)
!1246 = !{!1247}
!1247 = !DILocalVariable(name: "channel", arg: 1, scope: !1245, file: !3, line: 79, type: !128)
!1248 = !DILocation(line: 0, scope: !1245)
!1249 = !DILocation(line: 81, column: 5, scope: !1245)
!1250 = !DILocation(line: 82, column: 5, scope: !1245)
!1251 = !DILocation(line: 83, column: 1, scope: !1245)
!1252 = distinct !DISubprogram(name: "DMA_GetChannel", scope: !3, file: !3, line: 86, type: !1253, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!128, !134}
!1255 = !{!1256, !1257, !1258, !1259}
!1256 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1252, file: !3, line: 86, type: !134)
!1257 = !DILocalVariable(name: "index", scope: !1252, file: !3, line: 88, type: !174)
!1258 = !DILocalVariable(name: "handle", scope: !1252, file: !3, line: 89, type: !174)
!1259 = !DILocalVariable(name: "flags", scope: !1252, file: !3, line: 90, type: !859)
!1260 = !DILocation(line: 0, scope: !1252)
!1261 = !DILocation(line: 470, column: 3, scope: !1262, inlinedAt: !1268)
!1262 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1263, file: !1263, line: 466, type: !1264, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1263 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!136}
!1266 = !{!1267}
!1267 = !DILocalVariable(name: "result", scope: !1262, file: !1263, line: 468, type: !136)
!1268 = distinct !DILocation(line: 93, column: 5, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 93, column: 5)
!1270 = !{i64 316308}
!1271 = !DILocation(line: 0, scope: !1262, inlinedAt: !1268)
!1272 = !DILocation(line: 330, column: 3, scope: !1273, inlinedAt: !1274)
!1273 = distinct !DISubprogram(name: "__disable_irq", scope: !1263, file: !1263, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1274 = distinct !DILocation(line: 93, column: 5, scope: !1269)
!1275 = !{i64 312972}
!1276 = !DILocation(line: 95, column: 5, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 95, column: 5)
!1278 = !DILocation(line: 96, column: 41, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 96, column: 13)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 95, column: 79)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 95, column: 5)
!1282 = !DILocation(line: 96, column: 33, scope: !1279)
!1283 = !DILocation(line: 96, column: 52, scope: !1279)
!1284 = !DILocation(line: 96, column: 13, scope: !1280)
!1285 = !DILocation(line: 100, column: 35, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 96, column: 58)
!1287 = !DILocation(line: 100, column: 32, scope: !1286)
!1288 = !DILocation(line: 102, column: 13, scope: !1286)
!1289 = !DILocation(line: 95, column: 75, scope: !1281)
!1290 = !DILocation(line: 95, column: 50, scope: !1281)
!1291 = distinct !{!1291, !1276, !1292}
!1292 = !DILocation(line: 104, column: 5, scope: !1277)
!1293 = !DILocalVariable(name: "priMask", arg: 1, scope: !1294, file: !1263, line: 481, type: !136)
!1294 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1263, file: !1263, line: 481, type: !1295, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !136}
!1297 = !{!1293}
!1298 = !DILocation(line: 0, scope: !1294, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 105, column: 5, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 105, column: 5)
!1301 = !DILocation(line: 483, column: 3, scope: !1294, inlinedAt: !1299)
!1302 = !{i64 316626}
!1303 = !DILocation(line: 109, column: 15, scope: !1252)
!1304 = !DILocation(line: 109, column: 22, scope: !1252)
!1305 = !DILocation(line: 109, column: 5, scope: !1252)
!1306 = !DILocation(line: 109, column: 27, scope: !1252)
!1307 = !DILocation(line: 111, column: 5, scope: !1252)
!1308 = distinct !DISubprogram(name: "DMA_FreeChannel", scope: !3, file: !3, line: 114, type: !1237, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1309 = !{!1310, !1311}
!1310 = !DILocalVariable(name: "handle", arg: 1, scope: !1308, file: !3, line: 114, type: !128)
!1311 = !DILocalVariable(name: "flags", scope: !1308, file: !3, line: 116, type: !859)
!1312 = !DILocation(line: 0, scope: !1308)
!1313 = !DILocation(line: 470, column: 3, scope: !1262, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 118, column: 5, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 118, column: 5)
!1316 = !DILocation(line: 0, scope: !1262, inlinedAt: !1314)
!1317 = !DILocation(line: 330, column: 3, scope: !1273, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 118, column: 5, scope: !1315)
!1319 = !DILocation(line: 121, column: 36, scope: !1308)
!1320 = !DILocation(line: 121, column: 33, scope: !1308)
!1321 = !DILocation(line: 121, column: 24, scope: !1308)
!1322 = !DILocation(line: 123, column: 5, scope: !1308)
!1323 = !DILocation(line: 125, column: 22, scope: !1308)
!1324 = !DILocation(line: 125, column: 5, scope: !1308)
!1325 = !DILocation(line: 125, column: 27, scope: !1308)
!1326 = !DILocation(line: 0, scope: !1294, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 127, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 127, column: 5)
!1329 = !DILocation(line: 483, column: 3, scope: !1294, inlinedAt: !1327)
!1330 = !DILocation(line: 129, column: 1, scope: !1308)
!1331 = distinct !DISubprogram(name: "DMA_FullSize_CheckIdleChannel", scope: !3, file: !3, line: 131, type: !1332, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!128, !134, !128}
!1334 = !{!1335, !1336, !1337, !1338, !1339}
!1335 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1331, file: !3, line: 131, type: !134)
!1336 = !DILocalVariable(name: "channel", arg: 2, scope: !1331, file: !3, line: 131, type: !128)
!1337 = !DILocalVariable(name: "index", scope: !1331, file: !3, line: 133, type: !174)
!1338 = !DILocalVariable(name: "handle", scope: !1331, file: !3, line: 134, type: !174)
!1339 = !DILocalVariable(name: "flags", scope: !1331, file: !3, line: 135, type: !859)
!1340 = !DILocation(line: 0, scope: !1331)
!1341 = !DILocation(line: 470, column: 3, scope: !1262, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 137, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 137, column: 5)
!1344 = !DILocation(line: 0, scope: !1262, inlinedAt: !1342)
!1345 = !DILocation(line: 330, column: 3, scope: !1273, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 137, column: 5, scope: !1343)
!1347 = !DILocation(line: 139, column: 21, scope: !1331)
!1348 = !DILocation(line: 140, column: 15, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 140, column: 9)
!1350 = !DILocation(line: 140, column: 9, scope: !1331)
!1351 = !DILocation(line: 140, column: 9, scope: !1349)
!1352 = !DILocation(line: 144, column: 10, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 144, column: 9)
!1354 = !DILocation(line: 144, column: 37, scope: !1353)
!1355 = !DILocation(line: 144, column: 29, scope: !1353)
!1356 = !DILocation(line: 144, column: 48, scope: !1353)
!1357 = !DILocation(line: 144, column: 9, scope: !1331)
!1358 = !DILocation(line: 148, column: 31, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 144, column: 54)
!1360 = !DILocation(line: 148, column: 28, scope: !1359)
!1361 = !DILocation(line: 150, column: 5, scope: !1359)
!1362 = !DILocation(line: 0, scope: !1294, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 153, column: 5, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 153, column: 5)
!1365 = !DILocation(line: 483, column: 3, scope: !1294, inlinedAt: !1363)
!1366 = !DILocation(line: 156, column: 15, scope: !1331)
!1367 = !DILocation(line: 156, column: 22, scope: !1331)
!1368 = !DILocation(line: 156, column: 5, scope: !1331)
!1369 = !DILocation(line: 156, column: 27, scope: !1331)
!1370 = !DILocation(line: 157, column: 5, scope: !1331)
!1371 = !DILocation(line: 158, column: 1, scope: !1331)
!1372 = distinct !DISubprogram(name: "DMA_FullSize_FreeChannel", scope: !3, file: !3, line: 160, type: !1237, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1373 = !{!1374, !1375}
!1374 = !DILocalVariable(name: "handle", arg: 1, scope: !1372, file: !3, line: 160, type: !128)
!1375 = !DILocalVariable(name: "flags", scope: !1372, file: !3, line: 162, type: !859)
!1376 = !DILocation(line: 0, scope: !1372)
!1377 = !DILocation(line: 470, column: 3, scope: !1262, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 164, column: 5, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 164, column: 5)
!1380 = !DILocation(line: 0, scope: !1262, inlinedAt: !1378)
!1381 = !DILocation(line: 330, column: 3, scope: !1273, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 164, column: 5, scope: !1379)
!1383 = !DILocation(line: 165, column: 36, scope: !1372)
!1384 = !DILocation(line: 165, column: 33, scope: !1372)
!1385 = !DILocation(line: 165, column: 24, scope: !1372)
!1386 = !DILocation(line: 167, column: 5, scope: !1372)
!1387 = !DILocation(line: 169, column: 22, scope: !1372)
!1388 = !DILocation(line: 169, column: 5, scope: !1372)
!1389 = !DILocation(line: 169, column: 27, scope: !1372)
!1390 = !DILocation(line: 0, scope: !1294, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 171, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 171, column: 5)
!1393 = !DILocation(line: 483, column: 3, scope: !1294, inlinedAt: !1391)
!1394 = !DILocation(line: 173, column: 1, scope: !1372)
!1395 = distinct !DISubprogram(name: "DMA_Config_Internal", scope: !3, file: !3, line: 175, type: !1396, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !128, !1398, !126, !126, !128, !126}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !1401)
!1401 = !{!1402, !1404, !1406, !1407, !1408}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1400, file: !6, line: 190, baseType: !1403, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Type", file: !6, line: 122, baseType: !34)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1400, file: !6, line: 191, baseType: !1405, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TranSize", file: !6, line: 114, baseType: !41)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1400, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !1400, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1400, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1410 = !DILocalVariable(name: "dma_no", arg: 1, scope: !1395, file: !3, line: 175, type: !128)
!1411 = !DILocalVariable(name: "dma_menu", arg: 2, scope: !1395, file: !3, line: 176, type: !1398)
!1412 = !DILocalVariable(name: "fullsize", arg: 3, scope: !1395, file: !3, line: 177, type: !126)
!1413 = !DILocalVariable(name: "b2w", arg: 4, scope: !1395, file: !3, line: 178, type: !126)
!1414 = !DILocalVariable(name: "limit", arg: 5, scope: !1395, file: !3, line: 178, type: !128)
!1415 = !DILocalVariable(name: "start", arg: 6, scope: !1395, file: !3, line: 179, type: !126)
!1416 = !DILocalVariable(name: "dma_con", scope: !1395, file: !3, line: 181, type: !114)
!1417 = !DILocalVariable(name: "temp", scope: !1395, file: !3, line: 182, type: !114)
!1418 = !DILocation(line: 0, scope: !1395)
!1419 = !DILocation(line: 184, column: 5, scope: !1395)
!1420 = !DILocation(line: 186, column: 9, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 186, column: 9)
!1422 = !DILocation(line: 186, column: 9, scope: !1395)
!1423 = !DILocation(line: 187, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 187, column: 9)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 187, column: 9)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 186, column: 35)
!1427 = distinct !{!1427, !1423, !1423}
!1428 = !DILocation(line: 190, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 190, column: 9)
!1430 = !DILocation(line: 190, column: 9, scope: !1395)
!1431 = !DILocation(line: 191, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 191, column: 9)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 191, column: 9)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 190, column: 34)
!1435 = distinct !{!1435, !1431, !1431}
!1436 = !DILocation(line: 194, column: 5, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 194, column: 5)
!1438 = !DILocation(line: 194, column: 5, scope: !1395)
!1439 = !DILocation(line: 194, column: 5, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 194, column: 5)
!1441 = distinct !{!1441, !1439, !1439}
!1442 = !DILocation(line: 196, column: 9, scope: !1395)
!1443 = !DILocation(line: 197, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 197, column: 9)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 197, column: 9)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 196, column: 31)
!1447 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 196, column: 9)
!1448 = distinct !{!1448, !1443, !1443}
!1449 = !DILocation(line: 200, column: 5, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 200, column: 5)
!1451 = !DILocation(line: 200, column: 5, scope: !1395)
!1452 = !DILocation(line: 200, column: 5, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 200, column: 5)
!1454 = distinct !{!1454, !1452, !1452}
!1455 = !DILocation(line: 202, column: 5, scope: !1395)
!1456 = !DILocation(line: 204, column: 23, scope: !1395)
!1457 = !DILocation(line: 204, column: 5, scope: !1395)
!1458 = !DILocation(line: 0, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 209, column: 17)
!1460 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 204, column: 29)
!1461 = !DILocation(line: 209, column: 17, scope: !1460)
!1462 = !DILocation(line: 212, column: 71, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 211, column: 13)
!1464 = !DILocation(line: 212, column: 78, scope: !1463)
!1465 = !DILocation(line: 219, column: 42, scope: !1460)
!1466 = !DILocation(line: 224, column: 21, scope: !1460)
!1467 = !DILocation(line: 228, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 226, column: 39)
!1469 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 226, column: 17)
!1470 = !DILocation(line: 230, column: 17, scope: !1468)
!1471 = !DILocation(line: 231, column: 13, scope: !1468)
!1472 = !DILocation(line: 216, column: 62, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 215, column: 13)
!1474 = !DILocation(line: 216, column: 69, scope: !1473)
!1475 = !DILocation(line: 236, column: 17, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 231, column: 20)
!1477 = !DILocation(line: 239, column: 21, scope: !1476)
!1478 = !DILocation(line: 0, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 250, column: 17)
!1480 = !DILocation(line: 250, column: 17, scope: !1460)
!1481 = !DILocation(line: 253, column: 75, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 252, column: 13)
!1483 = !DILocation(line: 253, column: 82, scope: !1482)
!1484 = !DILocation(line: 263, column: 21, scope: !1460)
!1485 = !DILocation(line: 267, column: 17, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 265, column: 39)
!1487 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 265, column: 17)
!1488 = !DILocation(line: 269, column: 17, scope: !1486)
!1489 = !DILocation(line: 270, column: 13, scope: !1486)
!1490 = !DILocation(line: 257, column: 66, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 256, column: 13)
!1492 = !DILocation(line: 257, column: 73, scope: !1491)
!1493 = !DILocation(line: 275, column: 17, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 270, column: 20)
!1495 = !DILocation(line: 278, column: 21, scope: !1494)
!1496 = !DILocation(line: 288, column: 13, scope: !1460)
!1497 = !DILocation(line: 290, column: 13, scope: !1460)
!1498 = !DILocation(line: 294, column: 13, scope: !1460)
!1499 = !DILocation(line: 0, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 299, column: 17)
!1501 = !DILocation(line: 299, column: 17, scope: !1460)
!1502 = !DILocation(line: 302, column: 84, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 301, column: 13)
!1504 = !DILocation(line: 302, column: 91, scope: !1503)
!1505 = !DILocation(line: 314, column: 21, scope: !1460)
!1506 = !DILocation(line: 318, column: 17, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 316, column: 39)
!1508 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 316, column: 17)
!1509 = !DILocation(line: 323, column: 17, scope: !1507)
!1510 = !DILocation(line: 326, column: 17, scope: !1507)
!1511 = !DILocation(line: 328, column: 17, scope: !1507)
!1512 = !DILocation(line: 329, column: 13, scope: !1507)
!1513 = !DILocation(line: 306, column: 75, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 305, column: 13)
!1515 = !DILocation(line: 306, column: 82, scope: !1514)
!1516 = !DILocation(line: 331, column: 17, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 329, column: 20)
!1518 = !DILocation(line: 338, column: 17, scope: !1517)
!1519 = !DILocation(line: 340, column: 17, scope: !1517)
!1520 = !DILocation(line: 343, column: 21, scope: !1517)
!1521 = !DILocation(line: 0, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 354, column: 17)
!1523 = !DILocation(line: 354, column: 17, scope: !1460)
!1524 = !DILocation(line: 357, column: 84, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 356, column: 13)
!1526 = !DILocation(line: 357, column: 91, scope: !1525)
!1527 = !DILocation(line: 371, column: 21, scope: !1460)
!1528 = !DILocation(line: 375, column: 17, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 373, column: 39)
!1530 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 373, column: 17)
!1531 = !DILocation(line: 380, column: 17, scope: !1529)
!1532 = !DILocation(line: 383, column: 17, scope: !1529)
!1533 = !DILocation(line: 385, column: 17, scope: !1529)
!1534 = !DILocation(line: 386, column: 13, scope: !1529)
!1535 = !DILocation(line: 361, column: 75, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 360, column: 13)
!1537 = !DILocation(line: 361, column: 82, scope: !1536)
!1538 = !DILocation(line: 388, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 386, column: 20)
!1540 = !DILocation(line: 395, column: 17, scope: !1539)
!1541 = !DILocation(line: 397, column: 17, scope: !1539)
!1542 = !DILocation(line: 400, column: 21, scope: !1539)
!1543 = !DILocation(line: 410, column: 13, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 410, column: 13)
!1545 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 410, column: 13)
!1546 = distinct !{!1546, !1543, !1543}
!1547 = !DILocation(line: 0, scope: !1460)
!1548 = !DILocation(line: 415, column: 23, scope: !1395)
!1549 = !DILocation(line: 415, column: 5, scope: !1395)
!1550 = !DILocation(line: 419, column: 27, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 419, column: 17)
!1552 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 415, column: 29)
!1553 = !DILocation(line: 419, column: 32, scope: !1551)
!1554 = !DILocation(line: 419, column: 17, scope: !1552)
!1555 = !DILocation(line: 421, column: 47, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 421, column: 21)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 419, column: 47)
!1558 = !DILocation(line: 421, column: 55, scope: !1556)
!1559 = !{i8 0, i8 2}
!1560 = !DILocation(line: 421, column: 79, scope: !1556)
!1561 = !DILocation(line: 422, column: 59, scope: !1556)
!1562 = !DILocation(line: 422, column: 65, scope: !1556)
!1563 = !DILocation(line: 421, column: 21, scope: !1557)
!1564 = !DILocation(line: 425, column: 29, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 424, column: 17)
!1566 = !DILocation(line: 426, column: 17, scope: !1565)
!1567 = !DILocation(line: 429, column: 66, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 428, column: 26)
!1569 = !DILocation(line: 428, column: 26, scope: !1556)
!1570 = !DILocation(line: 432, column: 29, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 431, column: 17)
!1572 = !DILocation(line: 433, column: 17, scope: !1571)
!1573 = !DILocation(line: 436, column: 66, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 435, column: 26)
!1575 = !DILocation(line: 435, column: 26, scope: !1568)
!1576 = !DILocation(line: 447, column: 27, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 447, column: 17)
!1578 = !DILocation(line: 447, column: 32, scope: !1577)
!1579 = !DILocation(line: 447, column: 17, scope: !1552)
!1580 = !DILocation(line: 449, column: 47, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 449, column: 21)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 447, column: 47)
!1583 = !DILocation(line: 449, column: 55, scope: !1581)
!1584 = !DILocation(line: 449, column: 79, scope: !1581)
!1585 = !DILocation(line: 450, column: 59, scope: !1581)
!1586 = !DILocation(line: 450, column: 65, scope: !1581)
!1587 = !DILocation(line: 449, column: 21, scope: !1582)
!1588 = !DILocation(line: 453, column: 29, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 452, column: 17)
!1590 = !DILocation(line: 454, column: 17, scope: !1589)
!1591 = !DILocation(line: 457, column: 66, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 456, column: 26)
!1593 = !DILocation(line: 456, column: 26, scope: !1581)
!1594 = !DILocation(line: 464, column: 21, scope: !1552)
!1595 = !DILocation(line: 466, column: 13, scope: !1552)
!1596 = !DILocation(line: 470, column: 27, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 470, column: 17)
!1598 = !DILocation(line: 470, column: 32, scope: !1597)
!1599 = !DILocation(line: 470, column: 17, scope: !1552)
!1600 = !DILocation(line: 472, column: 47, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 472, column: 21)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 470, column: 47)
!1603 = !DILocation(line: 472, column: 55, scope: !1601)
!1604 = !DILocation(line: 472, column: 79, scope: !1601)
!1605 = !DILocation(line: 473, column: 59, scope: !1601)
!1606 = !DILocation(line: 473, column: 65, scope: !1601)
!1607 = !DILocation(line: 472, column: 21, scope: !1602)
!1608 = !DILocation(line: 480, column: 21, scope: !1552)
!1609 = !DILocation(line: 482, column: 13, scope: !1552)
!1610 = !DILocation(line: 486, column: 13, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 486, column: 13)
!1612 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 486, column: 13)
!1613 = distinct !{!1613, !1610, !1610}
!1614 = !DILocation(line: 491, column: 19, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 491, column: 9)
!1616 = !DILocation(line: 491, column: 28, scope: !1615)
!1617 = !DILocation(line: 491, column: 9, scope: !1395)
!1618 = !DILocation(line: 493, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 491, column: 37)
!1620 = !DILocation(line: 495, column: 9, scope: !1619)
!1621 = !DILocation(line: 495, column: 35, scope: !1619)
!1622 = !DILocation(line: 496, column: 5, scope: !1619)
!1623 = !DILocation(line: 498, column: 5, scope: !1395)
!1624 = !DILocation(line: 500, column: 5, scope: !1395)
!1625 = !DILocation(line: 502, column: 9, scope: !1395)
!1626 = !DILocation(line: 504, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 502, column: 16)
!1628 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 502, column: 9)
!1629 = !DILocation(line: 505, column: 5, scope: !1627)
!1630 = !DILocation(line: 506, column: 1, scope: !1395)
!1631 = distinct !DISubprogram(name: "DMA_Clock_Enable", scope: !3, file: !3, line: 912, type: !1237, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1632)
!1632 = !{!1633}
!1633 = !DILocalVariable(name: "channel", arg: 1, scope: !1631, file: !3, line: 912, type: !128)
!1634 = !DILocation(line: 0, scope: !1631)
!1635 = !DILocation(line: 914, column: 59, scope: !1631)
!1636 = !DILocation(line: 914, column: 67, scope: !1631)
!1637 = !DILocation(line: 914, column: 55, scope: !1631)
!1638 = !DILocation(line: 914, column: 51, scope: !1631)
!1639 = !DILocation(line: 915, column: 1, scope: !1631)
!1640 = distinct !DISubprogram(name: "DMA_Register", scope: !3, file: !3, line: 514, type: !1641, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!53, !128, !179}
!1643 = !{!1644, !1645}
!1644 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1640, file: !3, line: 514, type: !128)
!1645 = !DILocalVariable(name: "handler", arg: 2, scope: !1640, file: !3, line: 514, type: !179)
!1646 = !DILocation(line: 0, scope: !1640)
!1647 = !DILocation(line: 516, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 516, column: 9)
!1649 = !DILocation(line: 516, column: 20, scope: !1648)
!1650 = !DILocation(line: 517, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 516, column: 49)
!1652 = !DILocation(line: 518, column: 9, scope: !1651)
!1653 = !DILocation(line: 521, column: 26, scope: !1640)
!1654 = !DILocation(line: 521, column: 5, scope: !1640)
!1655 = !DILocation(line: 521, column: 31, scope: !1640)
!1656 = !DILocation(line: 523, column: 5, scope: !1640)
!1657 = !DILocation(line: 524, column: 1, scope: !1640)
!1658 = distinct !DISubprogram(name: "DMA_UnRegister", scope: !3, file: !3, line: 526, type: !1659, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!53, !128}
!1661 = !{!1662}
!1662 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1658, file: !3, line: 526, type: !128)
!1663 = !DILocation(line: 0, scope: !1658)
!1664 = !DILocation(line: 528, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 528, column: 9)
!1666 = !DILocation(line: 528, column: 20, scope: !1665)
!1667 = !DILocation(line: 529, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 528, column: 49)
!1669 = !DILocation(line: 530, column: 9, scope: !1668)
!1670 = !DILocation(line: 532, column: 26, scope: !1658)
!1671 = !DILocation(line: 532, column: 5, scope: !1658)
!1672 = !DILocation(line: 532, column: 31, scope: !1658)
!1673 = !DILocation(line: 533, column: 5, scope: !1658)
!1674 = !DILocation(line: 534, column: 1, scope: !1658)
!1675 = distinct !DISubprogram(name: "DMA_LISR", scope: !3, file: !3, line: 536, type: !520, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1675, file: !3, line: 536, type: !438)
!1678 = !DILocalVariable(name: "index", scope: !1675, file: !3, line: 538, type: !174)
!1679 = !DILocalVariable(name: "con", scope: !1675, file: !3, line: 539, type: !114)
!1680 = !DILocation(line: 0, scope: !1675)
!1681 = !DILocation(line: 542, column: 5, scope: !1675)
!1682 = !DILocation(line: 545, column: 5, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 545, column: 5)
!1684 = !DILocation(line: 547, column: 13, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 547, column: 13)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 545, column: 55)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 545, column: 5)
!1688 = !DILocation(line: 547, column: 46, scope: !1685)
!1689 = !DILocation(line: 547, column: 13, scope: !1686)
!1690 = !DILocation(line: 549, column: 22, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 547, column: 64)
!1692 = !DILocation(line: 549, column: 13, scope: !1691)
!1693 = !DILocation(line: 551, column: 13, scope: !1691)
!1694 = !DILocation(line: 553, column: 13, scope: !1691)
!1695 = !DILocation(line: 553, column: 20, scope: !1691)
!1696 = distinct !{!1696, !1694, !1697}
!1697 = !DILocation(line: 553, column: 48, scope: !1691)
!1698 = !DILocation(line: 554, column: 13, scope: !1691)
!1699 = !DILocation(line: 555, column: 13, scope: !1691)
!1700 = !DILocation(line: 557, column: 9, scope: !1691)
!1701 = !DILocation(line: 545, column: 27, scope: !1687)
!1702 = distinct !{!1702, !1682, !1703}
!1703 = !DILocation(line: 558, column: 5, scope: !1683)
!1704 = !DILocation(line: 562, column: 15, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 560, column: 68)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 560, column: 5)
!1707 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 560, column: 5)
!1708 = !DILocation(line: 564, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 564, column: 13)
!1710 = !DILocation(line: 564, column: 42, scope: !1709)
!1711 = !DILocation(line: 564, column: 13, scope: !1705)
!1712 = !DILocation(line: 566, column: 25, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 564, column: 60)
!1714 = !DILocation(line: 566, column: 13, scope: !1713)
!1715 = !DILocation(line: 569, column: 25, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 569, column: 25)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 566, column: 32)
!1718 = !DILocation(line: 569, column: 78, scope: !1716)
!1719 = !DILocation(line: 569, column: 25, scope: !1717)
!1720 = !DILocation(line: 574, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 574, column: 25)
!1722 = !DILocation(line: 574, column: 78, scope: !1721)
!1723 = !DILocation(line: 574, column: 25, scope: !1717)
!1724 = !DILocation(line: 579, column: 25, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 579, column: 25)
!1726 = !DILocation(line: 579, column: 79, scope: !1725)
!1727 = !DILocation(line: 579, column: 25, scope: !1717)
!1728 = !DILocation(line: 584, column: 25, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 584, column: 25)
!1730 = !DILocation(line: 584, column: 79, scope: !1729)
!1731 = !DILocation(line: 584, column: 25, scope: !1717)
!1732 = !DILocation(line: 589, column: 25, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 589, column: 25)
!1734 = !DILocation(line: 589, column: 79, scope: !1733)
!1735 = !DILocation(line: 589, column: 25, scope: !1717)
!1736 = !DILocation(line: 594, column: 25, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 594, column: 25)
!1738 = !DILocation(line: 594, column: 79, scope: !1737)
!1739 = !DILocation(line: 594, column: 25, scope: !1717)
!1740 = !DILocation(line: 599, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 599, column: 25)
!1742 = !DILocation(line: 599, column: 79, scope: !1741)
!1743 = !DILocation(line: 599, column: 25, scope: !1717)
!1744 = !DILocation(line: 604, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 604, column: 25)
!1746 = !DILocation(line: 604, column: 79, scope: !1745)
!1747 = !DILocation(line: 604, column: 25, scope: !1717)
!1748 = !DILocation(line: 609, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 609, column: 25)
!1750 = !DILocation(line: 609, column: 80, scope: !1749)
!1751 = !DILocation(line: 609, column: 25, scope: !1717)
!1752 = !DILocation(line: 614, column: 25, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 614, column: 25)
!1754 = !DILocation(line: 614, column: 80, scope: !1753)
!1755 = !DILocation(line: 614, column: 25, scope: !1717)
!1756 = !DILocation(line: 619, column: 25, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 619, column: 25)
!1758 = !DILocation(line: 619, column: 80, scope: !1757)
!1759 = !DILocation(line: 619, column: 25, scope: !1717)
!1760 = !DILocation(line: 624, column: 25, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 624, column: 25)
!1762 = !DILocation(line: 624, column: 80, scope: !1761)
!1763 = !DILocation(line: 624, column: 25, scope: !1717)
!1764 = !DILocation(line: 629, column: 25, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 629, column: 25)
!1766 = !DILocation(line: 629, column: 80, scope: !1765)
!1767 = !DILocation(line: 629, column: 25, scope: !1717)
!1768 = !DILocation(line: 634, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 634, column: 25)
!1770 = !DILocation(line: 634, column: 78, scope: !1769)
!1771 = !DILocation(line: 634, column: 25, scope: !1717)
!1772 = !DILocation(line: 0, scope: !1717)
!1773 = !DILocation(line: 640, column: 13, scope: !1713)
!1774 = !DILocation(line: 641, column: 9, scope: !1713)
!1775 = !DILocation(line: 560, column: 64, scope: !1706)
!1776 = !DILocation(line: 560, column: 40, scope: !1706)
!1777 = !DILocation(line: 560, column: 5, scope: !1707)
!1778 = distinct !{!1778, !1777, !1779}
!1779 = !DILocation(line: 642, column: 5, scope: !1707)
!1780 = !DILocation(line: 646, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 644, column: 68)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 644, column: 5)
!1783 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 644, column: 5)
!1784 = !DILocation(line: 648, column: 13, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 648, column: 13)
!1786 = !DILocation(line: 648, column: 42, scope: !1785)
!1787 = !DILocation(line: 648, column: 13, scope: !1781)
!1788 = !DILocation(line: 650, column: 25, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 648, column: 62)
!1790 = !DILocation(line: 650, column: 13, scope: !1789)
!1791 = !DILocation(line: 653, column: 25, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 653, column: 25)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 650, column: 32)
!1794 = !DILocation(line: 653, column: 81, scope: !1792)
!1795 = !DILocation(line: 653, column: 25, scope: !1793)
!1796 = !DILocation(line: 658, column: 25, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 658, column: 25)
!1798 = !DILocation(line: 658, column: 81, scope: !1797)
!1799 = !DILocation(line: 658, column: 25, scope: !1793)
!1800 = !DILocation(line: 663, column: 25, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 663, column: 25)
!1802 = !DILocation(line: 663, column: 82, scope: !1801)
!1803 = !DILocation(line: 663, column: 25, scope: !1793)
!1804 = !DILocation(line: 668, column: 25, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 668, column: 25)
!1806 = !DILocation(line: 668, column: 82, scope: !1805)
!1807 = !DILocation(line: 668, column: 25, scope: !1793)
!1808 = !DILocation(line: 673, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 673, column: 25)
!1810 = !DILocation(line: 673, column: 82, scope: !1809)
!1811 = !DILocation(line: 673, column: 25, scope: !1793)
!1812 = !DILocation(line: 678, column: 25, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 678, column: 25)
!1814 = !DILocation(line: 678, column: 82, scope: !1813)
!1815 = !DILocation(line: 678, column: 25, scope: !1793)
!1816 = !DILocation(line: 683, column: 25, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 683, column: 25)
!1818 = !DILocation(line: 683, column: 82, scope: !1817)
!1819 = !DILocation(line: 683, column: 25, scope: !1793)
!1820 = !DILocation(line: 688, column: 25, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 688, column: 25)
!1822 = !DILocation(line: 688, column: 82, scope: !1821)
!1823 = !DILocation(line: 688, column: 25, scope: !1793)
!1824 = !DILocation(line: 693, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 693, column: 25)
!1826 = !DILocation(line: 693, column: 83, scope: !1825)
!1827 = !DILocation(line: 693, column: 25, scope: !1793)
!1828 = !DILocation(line: 698, column: 25, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 698, column: 25)
!1830 = !DILocation(line: 698, column: 83, scope: !1829)
!1831 = !DILocation(line: 698, column: 25, scope: !1793)
!1832 = !DILocation(line: 703, column: 25, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 703, column: 25)
!1834 = !DILocation(line: 703, column: 83, scope: !1833)
!1835 = !DILocation(line: 703, column: 25, scope: !1793)
!1836 = !DILocation(line: 708, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 708, column: 25)
!1838 = !DILocation(line: 708, column: 83, scope: !1837)
!1839 = !DILocation(line: 708, column: 25, scope: !1793)
!1840 = !DILocation(line: 713, column: 25, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 713, column: 25)
!1842 = !DILocation(line: 713, column: 83, scope: !1841)
!1843 = !DILocation(line: 713, column: 25, scope: !1793)
!1844 = !DILocation(line: 718, column: 25, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 718, column: 25)
!1846 = !DILocation(line: 718, column: 81, scope: !1845)
!1847 = !DILocation(line: 718, column: 25, scope: !1793)
!1848 = !DILocation(line: 0, scope: !1793)
!1849 = !DILocation(line: 724, column: 13, scope: !1789)
!1850 = !DILocation(line: 725, column: 9, scope: !1789)
!1851 = !DILocation(line: 644, column: 64, scope: !1782)
!1852 = !DILocation(line: 644, column: 40, scope: !1782)
!1853 = !DILocation(line: 644, column: 5, scope: !1783)
!1854 = distinct !{!1854, !1853, !1855}
!1855 = !DILocation(line: 726, column: 5, scope: !1783)
!1856 = !DILocation(line: 728, column: 5, scope: !1675)
!1857 = !DILocation(line: 729, column: 1, scope: !1675)
!1858 = distinct !DISubprogram(name: "DMA_Clock_Disable", scope: !3, file: !3, line: 917, type: !1237, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1859)
!1859 = !{!1860}
!1860 = !DILocalVariable(name: "channel", arg: 1, scope: !1858, file: !3, line: 917, type: !128)
!1861 = !DILocation(line: 0, scope: !1858)
!1862 = !DILocation(line: 919, column: 59, scope: !1858)
!1863 = !DILocation(line: 919, column: 67, scope: !1858)
!1864 = !DILocation(line: 919, column: 55, scope: !1858)
!1865 = !DILocation(line: 919, column: 51, scope: !1858)
!1866 = !DILocation(line: 920, column: 1, scope: !1858)
!1867 = distinct !DISubprogram(name: "DMA_Init", scope: !3, file: !3, line: 732, type: !181, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "index", scope: !1867, file: !3, line: 734, type: !174)
!1870 = !DILocation(line: 0, scope: !1867)
!1871 = !DILocation(line: 739, column: 5, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 739, column: 5)
!1873 = !DILocation(line: 740, column: 41, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 740, column: 13)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 739, column: 55)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 739, column: 5)
!1877 = !DILocation(line: 740, column: 33, scope: !1874)
!1878 = !DILocation(line: 740, column: 52, scope: !1874)
!1879 = !DILocation(line: 740, column: 13, scope: !1875)
!1880 = !DILocation(line: 741, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 740, column: 58)
!1882 = !DILocation(line: 741, column: 30, scope: !1881)
!1883 = !DILocation(line: 742, column: 9, scope: !1881)
!1884 = !DILocation(line: 739, column: 51, scope: !1876)
!1885 = !DILocation(line: 739, column: 27, scope: !1876)
!1886 = distinct !{!1886, !1871, !1887}
!1887 = !DILocation(line: 743, column: 5, scope: !1872)
!1888 = !DILocation(line: 748, column: 32, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 746, column: 55)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 746, column: 5)
!1891 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 746, column: 5)
!1892 = !DILocation(line: 748, column: 9, scope: !1889)
!1893 = !DILocation(line: 746, column: 27, scope: !1890)
!1894 = !DILocation(line: 746, column: 5, scope: !1891)
!1895 = distinct !{!1895, !1894, !1896}
!1896 = !DILocation(line: 749, column: 5, scope: !1891)
!1897 = !DILocation(line: 752, column: 5, scope: !1867)
!1898 = !DILocation(line: 753, column: 5, scope: !1867)
!1899 = !DILocation(line: 754, column: 5, scope: !1867)
!1900 = !DILocation(line: 755, column: 1, scope: !1867)
!1901 = distinct !DISubprogram(name: "dma_set_channel_busy", scope: !3, file: !3, line: 757, type: !1902, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!128, !128}
!1904 = !{!1905, !1906, !1907, !1908}
!1905 = !DILocalVariable(name: "channel", arg: 1, scope: !1901, file: !3, line: 757, type: !128)
!1906 = !DILocalVariable(name: "channel_index", scope: !1901, file: !3, line: 759, type: !128)
!1907 = !DILocalVariable(name: "flags", scope: !1901, file: !3, line: 760, type: !859)
!1908 = !DILocalVariable(name: "index", scope: !1901, file: !3, line: 764, type: !128)
!1909 = !DILocation(line: 0, scope: !1901)
!1910 = !DILocation(line: 764, column: 29, scope: !1901)
!1911 = !DILocation(line: 470, column: 3, scope: !1262, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 766, column: 5, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 766, column: 5)
!1914 = !DILocation(line: 0, scope: !1262, inlinedAt: !1912)
!1915 = !DILocation(line: 330, column: 3, scope: !1273, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 766, column: 5, scope: !1913)
!1917 = !DILocation(line: 768, column: 9, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 768, column: 9)
!1919 = !DILocation(line: 768, column: 33, scope: !1918)
!1920 = !DILocation(line: 768, column: 9, scope: !1901)
!1921 = !DILocation(line: 769, column: 33, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 768, column: 43)
!1923 = !DILocation(line: 770, column: 9, scope: !1922)
!1924 = !DILocation(line: 0, scope: !1294, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 774, column: 5, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 774, column: 5)
!1927 = !DILocation(line: 483, column: 3, scope: !1294, inlinedAt: !1925)
!1928 = !DILocation(line: 776, column: 5, scope: !1901)
!1929 = !DILocation(line: 777, column: 5, scope: !1901)
!1930 = !DILocation(line: 778, column: 5, scope: !1901)
!1931 = !DILocation(line: 779, column: 5, scope: !1901)
!1932 = !DILocation(line: 781, column: 1, scope: !1901)
!1933 = distinct !DISubprogram(name: "dma_set_channel_idle", scope: !3, file: !3, line: 783, type: !1902, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DILocalVariable(name: "channel", arg: 1, scope: !1933, file: !3, line: 783, type: !128)
!1936 = !DILocalVariable(name: "flags", scope: !1933, file: !3, line: 785, type: !859)
!1937 = !DILocalVariable(name: "index", scope: !1933, file: !3, line: 786, type: !128)
!1938 = !DILocation(line: 0, scope: !1933)
!1939 = !DILocation(line: 786, column: 29, scope: !1933)
!1940 = !DILocation(line: 787, column: 5, scope: !1933)
!1941 = !DILocation(line: 470, column: 3, scope: !1262, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 788, column: 5, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 788, column: 5)
!1944 = !DILocation(line: 0, scope: !1262, inlinedAt: !1942)
!1945 = !DILocation(line: 330, column: 3, scope: !1273, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 788, column: 5, scope: !1943)
!1947 = !DILocation(line: 789, column: 5, scope: !1933)
!1948 = !DILocation(line: 789, column: 29, scope: !1933)
!1949 = !DILocation(line: 790, column: 33, scope: !1933)
!1950 = !DILocation(line: 790, column: 24, scope: !1933)
!1951 = !DILocation(line: 791, column: 21, scope: !1933)
!1952 = !DILocation(line: 791, column: 5, scope: !1933)
!1953 = !DILocation(line: 791, column: 26, scope: !1933)
!1954 = !DILocation(line: 0, scope: !1294, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 792, column: 5, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 792, column: 5)
!1957 = !DILocation(line: 483, column: 3, scope: !1294, inlinedAt: !1955)
!1958 = !DILocation(line: 794, column: 5, scope: !1933)
!1959 = distinct !DISubprogram(name: "DMA_Vfifo_init", scope: !3, file: !3, line: 798, type: !181, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1960)
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "dma_con", scope: !1959, file: !3, line: 800, type: !114)
!1962 = !DILocation(line: 0, scope: !1959)
!1963 = !DILocation(line: 802, column: 5, scope: !1959)
!1964 = !DILocation(line: 804, column: 5, scope: !1959)
!1965 = !DILocation(line: 806, column: 5, scope: !1959)
!1966 = !DILocation(line: 808, column: 5, scope: !1959)
!1967 = !DILocation(line: 810, column: 5, scope: !1959)
!1968 = !DILocation(line: 812, column: 5, scope: !1959)
!1969 = !DILocation(line: 814, column: 5, scope: !1959)
!1970 = !DILocation(line: 816, column: 5, scope: !1959)
!1971 = !DILocation(line: 818, column: 5, scope: !1959)
!1972 = !DILocation(line: 820, column: 5, scope: !1959)
!1973 = !DILocation(line: 822, column: 5, scope: !1959)
!1974 = !DILocation(line: 824, column: 5, scope: !1959)
!1975 = !DILocation(line: 826, column: 5, scope: !1959)
!1976 = !DILocation(line: 828, column: 5, scope: !1959)
!1977 = !DILocation(line: 830, column: 5, scope: !1959)
!1978 = !DILocation(line: 832, column: 5, scope: !1959)
!1979 = !DILocation(line: 834, column: 5, scope: !1959)
!1980 = !DILocation(line: 836, column: 5, scope: !1959)
!1981 = !DILocation(line: 838, column: 5, scope: !1959)
!1982 = !DILocation(line: 840, column: 5, scope: !1959)
!1983 = !DILocation(line: 842, column: 5, scope: !1959)
!1984 = !DILocation(line: 844, column: 5, scope: !1959)
!1985 = !DILocation(line: 846, column: 5, scope: !1959)
!1986 = !DILocation(line: 848, column: 5, scope: !1959)
!1987 = !DILocation(line: 850, column: 5, scope: !1959)
!1988 = !DILocation(line: 852, column: 5, scope: !1959)
!1989 = !DILocation(line: 854, column: 5, scope: !1959)
!1990 = !DILocation(line: 856, column: 5, scope: !1959)
!1991 = !DILocation(line: 858, column: 1, scope: !1959)
!1992 = distinct !DISubprogram(name: "DMA_Vfifo_SetAdrs", scope: !3, file: !3, line: 861, type: !1993, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !136, !136, !1995, !136, !136, !136}
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !6, line: 144, baseType: !97)
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002}
!1997 = !DILocalVariable(name: "adrs", arg: 1, scope: !1992, file: !3, line: 861, type: !136)
!1998 = !DILocalVariable(name: "len", arg: 2, scope: !1992, file: !3, line: 862, type: !136)
!1999 = !DILocalVariable(name: "ch", arg: 3, scope: !1992, file: !3, line: 862, type: !1995)
!2000 = !DILocalVariable(name: "alt_len", arg: 4, scope: !1992, file: !3, line: 863, type: !136)
!2001 = !DILocalVariable(name: "dma_count", arg: 5, scope: !1992, file: !3, line: 864, type: !136)
!2002 = !DILocalVariable(name: "timeout_counter", arg: 6, scope: !1992, file: !3, line: 865, type: !136)
!2003 = !DILocation(line: 0, scope: !1992)
!2004 = !DILocation(line: 867, column: 5, scope: !1992)
!2005 = !DILocation(line: 868, column: 5, scope: !1992)
!2006 = !DILocation(line: 869, column: 5, scope: !1992)
!2007 = !DILocation(line: 870, column: 5, scope: !1992)
!2008 = !DILocation(line: 870, column: 30, scope: !1992)
!2009 = !DILocation(line: 871, column: 5, scope: !1992)
!2010 = !DILocation(line: 871, column: 27, scope: !1992)
!2011 = !DILocation(line: 872, column: 1, scope: !1992)
!2012 = distinct !DISubprogram(name: "DMA_Vfifo_Set_timeout", scope: !3, file: !3, line: 874, type: !2013, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !1995, !136}
!2015 = !{!2016, !2017}
!2016 = !DILocalVariable(name: "ch", arg: 1, scope: !2012, file: !3, line: 874, type: !1995)
!2017 = !DILocalVariable(name: "timeout_counter", arg: 2, scope: !2012, file: !3, line: 874, type: !136)
!2018 = !DILocation(line: 0, scope: !2012)
!2019 = !DILocation(line: 877, column: 5, scope: !2012)
!2020 = !DILocation(line: 877, column: 27, scope: !2012)
!2021 = !DILocation(line: 878, column: 1, scope: !2012)
!2022 = distinct !DISubprogram(name: "DMA_Vfifo_enable_interrupt", scope: !3, file: !3, line: 880, type: !2023, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !1995}
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "ch", arg: 1, scope: !2022, file: !3, line: 880, type: !1995)
!2027 = !DILocation(line: 0, scope: !2022)
!2028 = !DILocation(line: 883, column: 5, scope: !2022)
!2029 = !DILocation(line: 884, column: 1, scope: !2022)
!2030 = distinct !DISubprogram(name: "DMA_Vfifo_disable_interrupt", scope: !3, file: !3, line: 886, type: !2023, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2031)
!2031 = !{!2032}
!2032 = !DILocalVariable(name: "ch", arg: 1, scope: !2030, file: !3, line: 886, type: !1995)
!2033 = !DILocation(line: 0, scope: !2030)
!2034 = !DILocation(line: 889, column: 5, scope: !2030)
!2035 = !DILocation(line: 890, column: 1, scope: !2030)
!2036 = distinct !DISubprogram(name: "DMA_Vfifo_Flush", scope: !3, file: !3, line: 893, type: !2023, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2037)
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "ch", arg: 1, scope: !2036, file: !3, line: 893, type: !1995)
!2039 = !DILocation(line: 0, scope: !2036)
!2040 = !DILocation(line: 895, column: 14, scope: !2036)
!2041 = !DILocation(line: 895, column: 5, scope: !2036)
!2042 = !DILocation(line: 897, column: 5, scope: !2036)
!2043 = !DILocation(line: 898, column: 1, scope: !2036)
!2044 = distinct !DISubprogram(name: "DMA_Vfifo_Register_Callback", scope: !3, file: !3, line: 900, type: !2045, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1995, !179}
!2047 = !{!2048, !2049}
!2048 = !DILocalVariable(name: "ch", arg: 1, scope: !2044, file: !3, line: 900, type: !1995)
!2049 = !DILocalVariable(name: "callback_func", arg: 2, scope: !2044, file: !3, line: 901, type: !179)
!2050 = !DILocation(line: 0, scope: !2044)
!2051 = !DILocation(line: 903, column: 28, scope: !2044)
!2052 = !DILocation(line: 903, column: 5, scope: !2044)
!2053 = !DILocation(line: 903, column: 46, scope: !2044)
!2054 = !DILocation(line: 904, column: 1, scope: !2044)
!2055 = distinct !DISubprogram(name: "DMA_Vfifo_Register_TO_Callback", scope: !3, file: !3, line: 906, type: !2045, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2056)
!2056 = !{!2057, !2058}
!2057 = !DILocalVariable(name: "ch", arg: 1, scope: !2055, file: !3, line: 906, type: !1995)
!2058 = !DILocalVariable(name: "callback_func", arg: 2, scope: !2055, file: !3, line: 907, type: !179)
!2059 = !DILocation(line: 0, scope: !2055)
!2060 = !DILocation(line: 909, column: 31, scope: !2055)
!2061 = !DILocation(line: 909, column: 5, scope: !2055)
!2062 = !DILocation(line: 909, column: 49, scope: !2055)
!2063 = !DILocation(line: 910, column: 1, scope: !2055)
!2064 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !201, file: !201, line: 73, type: !2065, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !114, !114, !126}
!2067 = !{!2068, !2069, !2070}
!2068 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2064, file: !201, line: 73, type: !114)
!2069 = !DILocalVariable(name: "countValue", arg: 2, scope: !2064, file: !201, line: 73, type: !114)
!2070 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2064, file: !201, line: 73, type: !126)
!2071 = !DILocation(line: 0, scope: !2064)
!2072 = !DILocation(line: 75, column: 5, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2064, file: !201, line: 75, column: 5)
!2074 = !DILocation(line: 75, column: 5, scope: !2064)
!2075 = !DILocation(line: 75, column: 5, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !201, line: 75, column: 5)
!2077 = distinct !{!2077, !2075, !2075}
!2078 = !DILocation(line: 77, column: 9, scope: !2064)
!2079 = !DILocation(line: 78, column: 30, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !201, line: 77, column: 24)
!2081 = distinct !DILexicalBlock(scope: !2064, file: !201, line: 77, column: 9)
!2082 = !DILocation(line: 0, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !201, line: 79, column: 13)
!2084 = !DILocation(line: 79, column: 13, scope: !2080)
!2085 = !DILocation(line: 80, column: 34, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !201, line: 79, column: 37)
!2087 = !DILocation(line: 81, column: 9, scope: !2086)
!2088 = !DILocation(line: 82, column: 34, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !201, line: 81, column: 16)
!2090 = !DILocation(line: 85, column: 30, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !201, line: 84, column: 31)
!2092 = distinct !DILexicalBlock(scope: !2081, file: !201, line: 84, column: 16)
!2093 = !DILocation(line: 0, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !201, line: 86, column: 13)
!2095 = !DILocation(line: 86, column: 13, scope: !2091)
!2096 = !DILocation(line: 87, column: 34, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !201, line: 86, column: 37)
!2098 = !DILocation(line: 88, column: 9, scope: !2097)
!2099 = !DILocation(line: 89, column: 34, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !201, line: 88, column: 16)
!2101 = !DILocation(line: 92, column: 1, scope: !2064)
!2102 = distinct !DISubprogram(name: "GPT_Start", scope: !201, file: !201, line: 94, type: !2103, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !114}
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2102, file: !201, line: 94, type: !114)
!2107 = !DILocation(line: 0, scope: !2102)
!2108 = !DILocation(line: 96, column: 5, scope: !2102)
!2109 = !DILocation(line: 96, column: 5, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !201, line: 96, column: 5)
!2111 = distinct !DILexicalBlock(scope: !2102, file: !201, line: 96, column: 5)
!2112 = distinct !{!2112, !2109, !2109}
!2113 = !DILocation(line: 99, column: 30, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !201, line: 98, column: 24)
!2115 = distinct !DILexicalBlock(scope: !2102, file: !201, line: 98, column: 9)
!2116 = !DILocation(line: 100, column: 9, scope: !2114)
!2117 = !DILocation(line: 101, column: 5, scope: !2114)
!2118 = !DILocation(line: 102, column: 30, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !201, line: 101, column: 31)
!2120 = distinct !DILexicalBlock(scope: !2115, file: !201, line: 101, column: 16)
!2121 = !DILocation(line: 103, column: 9, scope: !2119)
!2122 = !DILocation(line: 104, column: 5, scope: !2119)
!2123 = !DILocation(line: 105, column: 30, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !201, line: 104, column: 31)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !201, line: 104, column: 16)
!2126 = !DILocation(line: 106, column: 5, scope: !2124)
!2127 = !DILocation(line: 108, column: 1, scope: !2102)
!2128 = distinct !DISubprogram(name: "GPT_Stop", scope: !201, file: !201, line: 110, type: !2103, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2129)
!2129 = !{!2130}
!2130 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2128, file: !201, line: 110, type: !114)
!2131 = !DILocation(line: 0, scope: !2128)
!2132 = !DILocation(line: 112, column: 9, scope: !2128)
!2133 = !DILocation(line: 113, column: 30, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !201, line: 112, column: 24)
!2135 = distinct !DILexicalBlock(scope: !2128, file: !201, line: 112, column: 9)
!2136 = !DILocation(line: 114, column: 30, scope: !2134)
!2137 = !DILocation(line: 115, column: 31, scope: !2134)
!2138 = !DILocation(line: 117, column: 5, scope: !2134)
!2139 = !DILocation(line: 118, column: 30, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !201, line: 117, column: 31)
!2141 = distinct !DILexicalBlock(scope: !2135, file: !201, line: 117, column: 16)
!2142 = !DILocation(line: 119, column: 30, scope: !2140)
!2143 = !DILocation(line: 120, column: 31, scope: !2140)
!2144 = !DILocation(line: 121, column: 5, scope: !2140)
!2145 = !DILocation(line: 122, column: 30, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !201, line: 121, column: 31)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !201, line: 121, column: 16)
!2148 = !DILocation(line: 123, column: 5, scope: !2146)
!2149 = !DILocation(line: 124, column: 30, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !201, line: 123, column: 31)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !201, line: 123, column: 16)
!2152 = !DILocation(line: 125, column: 5, scope: !2150)
!2153 = !DILocation(line: 128, column: 1, scope: !2128)
!2154 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !201, file: !201, line: 130, type: !520, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2155)
!2155 = !{!2156, !2157}
!2156 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2154, file: !201, line: 130, type: !438)
!2157 = !DILocalVariable(name: "GPT_Status", scope: !2154, file: !201, line: 132, type: !249)
!2158 = !DILocation(line: 0, scope: !2154)
!2159 = !DILocation(line: 135, column: 18, scope: !2154)
!2160 = !DILocation(line: 136, column: 26, scope: !2154)
!2161 = !DILocation(line: 136, column: 24, scope: !2154)
!2162 = !DILocation(line: 138, column: 20, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2154, file: !201, line: 138, column: 9)
!2164 = !DILocation(line: 138, column: 9, scope: !2154)
!2165 = !DILocation(line: 141, column: 27, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2163, file: !201, line: 141, column: 16)
!2167 = !DILocation(line: 141, column: 16, scope: !2163)
!2168 = !DILocation(line: 0, scope: !2163)
!2169 = !DILocation(line: 145, column: 1, scope: !2154)
!2170 = distinct !DISubprogram(name: "GPT_init", scope: !201, file: !201, line: 147, type: !2171, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !114, !114, !180}
!2173 = !{!2174, !2175, !2176}
!2174 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2170, file: !201, line: 147, type: !114)
!2175 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !2170, file: !201, line: 147, type: !114)
!2176 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !2170, file: !201, line: 147, type: !180)
!2177 = !DILocation(line: 0, scope: !2170)
!2178 = !DILocation(line: 149, column: 5, scope: !2170)
!2179 = !DILocation(line: 149, column: 5, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !201, line: 149, column: 5)
!2181 = distinct !DILexicalBlock(scope: !2170, file: !201, line: 149, column: 5)
!2182 = distinct !{!2182, !2179, !2179}
!2183 = !DILocation(line: 149, column: 5, scope: !2181)
!2184 = !DILocation(line: 151, column: 23, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2170, file: !201, line: 151, column: 9)
!2186 = !DILocation(line: 152, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2185, file: !201, line: 151, column: 41)
!2188 = !DILocation(line: 153, column: 9, scope: !2187)
!2189 = !DILocation(line: 154, column: 9, scope: !2187)
!2190 = !DILocation(line: 155, column: 5, scope: !2187)
!2191 = !DILocation(line: 157, column: 9, scope: !2170)
!2192 = !DILocation(line: 158, column: 37, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !201, line: 157, column: 24)
!2194 = distinct !DILexicalBlock(scope: !2170, file: !201, line: 157, column: 9)
!2195 = !DILocation(line: 159, column: 30, scope: !2193)
!2196 = !DILocation(line: 160, column: 45, scope: !2193)
!2197 = !DILocation(line: 160, column: 30, scope: !2193)
!2198 = !DILocation(line: 161, column: 5, scope: !2193)
!2199 = !DILocation(line: 162, column: 37, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !201, line: 161, column: 31)
!2201 = distinct !DILexicalBlock(scope: !2194, file: !201, line: 161, column: 16)
!2202 = !DILocation(line: 163, column: 30, scope: !2200)
!2203 = !DILocation(line: 164, column: 45, scope: !2200)
!2204 = !DILocation(line: 164, column: 30, scope: !2200)
!2205 = !DILocation(line: 165, column: 5, scope: !2200)
!2206 = !DILocation(line: 166, column: 59, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !201, line: 165, column: 31)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !201, line: 165, column: 16)
!2209 = !DILocation(line: 166, column: 45, scope: !2207)
!2210 = !DILocation(line: 166, column: 30, scope: !2207)
!2211 = !DILocation(line: 167, column: 5, scope: !2207)
!2212 = !DILocation(line: 168, column: 59, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !201, line: 167, column: 31)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !201, line: 167, column: 16)
!2215 = !DILocation(line: 168, column: 45, scope: !2213)
!2216 = !DILocation(line: 168, column: 30, scope: !2213)
!2217 = !DILocation(line: 169, column: 30, scope: !2213)
!2218 = !DILocation(line: 170, column: 5, scope: !2213)
!2219 = !DILocation(line: 171, column: 1, scope: !2170)
!2220 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !201, file: !201, line: 173, type: !2221, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!114, !114}
!2223 = !{!2224, !2225}
!2224 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2220, file: !201, line: 173, type: !114)
!2225 = !DILocalVariable(name: "current_count", scope: !2220, file: !201, line: 175, type: !114)
!2226 = !DILocation(line: 0, scope: !2220)
!2227 = !DILocation(line: 177, column: 5, scope: !2220)
!2228 = !DILocation(line: 177, column: 5, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !201, line: 177, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2220, file: !201, line: 177, column: 5)
!2231 = distinct !{!2231, !2228, !2228}
!2232 = !DILocation(line: 183, column: 5, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !201, line: 181, column: 31)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !201, line: 181, column: 16)
!2235 = distinct !DILexicalBlock(scope: !2220, file: !201, line: 179, column: 9)
!2236 = !DILocation(line: 185, column: 5, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !201, line: 183, column: 31)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !201, line: 183, column: 16)
!2239 = !DILocation(line: 187, column: 5, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !201, line: 185, column: 31)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !201, line: 185, column: 16)
!2242 = !DILocation(line: 0, scope: !2235)
!2243 = !DILocation(line: 189, column: 5, scope: !2220)
!2244 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !201, file: !201, line: 193, type: !181, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1232)
!2245 = !DILocation(line: 195, column: 5, scope: !2244)
!2246 = !DILocation(line: 196, column: 1, scope: !2244)
!2247 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !201, file: !201, line: 198, type: !181, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1232)
!2248 = !DILocation(line: 200, column: 5, scope: !2247)
!2249 = !DILocation(line: 201, column: 1, scope: !2247)
!2250 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !973, file: !973, line: 54, type: !2251, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2254)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2253, !219, !251}
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 56, baseType: !53)
!2254 = !{!2255, !2256, !2257, !2258}
!2255 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2250, file: !973, line: 54, type: !219)
!2256 = !DILocalVariable(name: "outEnable", arg: 2, scope: !2250, file: !973, line: 54, type: !251)
!2257 = !DILocalVariable(name: "no", scope: !2250, file: !973, line: 57, type: !328)
!2258 = !DILocalVariable(name: "remainder", scope: !2250, file: !973, line: 58, type: !328)
!2259 = !DILocation(line: 0, scope: !2250)
!2260 = !DILocation(line: 59, column: 19, scope: !2250)
!2261 = !DILocation(line: 60, column: 17, scope: !2250)
!2262 = !DILocation(line: 61, column: 5, scope: !2250)
!2263 = !DILocation(line: 65, column: 27, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !973, line: 65, column: 17)
!2265 = distinct !DILexicalBlock(scope: !2250, file: !973, line: 61, column: 17)
!2266 = !DILocation(line: 0, scope: !2264)
!2267 = !DILocation(line: 65, column: 17, scope: !2265)
!2268 = !DILocation(line: 66, column: 21, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2264, file: !973, line: 65, column: 33)
!2270 = !DILocation(line: 67, column: 73, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !973, line: 66, column: 38)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !973, line: 66, column: 21)
!2273 = !DILocation(line: 67, column: 69, scope: !2271)
!2274 = !DILocation(line: 67, column: 66, scope: !2271)
!2275 = !DILocation(line: 68, column: 17, scope: !2271)
!2276 = !DILocation(line: 68, column: 28, scope: !2272)
!2277 = !DILocation(line: 69, column: 77, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !973, line: 68, column: 45)
!2279 = distinct !DILexicalBlock(scope: !2272, file: !973, line: 68, column: 28)
!2280 = !DILocation(line: 70, column: 77, scope: !2278)
!2281 = !DILocation(line: 71, column: 17, scope: !2278)
!2282 = !DILocation(line: 72, column: 77, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !973, line: 71, column: 45)
!2284 = distinct !DILexicalBlock(scope: !2279, file: !973, line: 71, column: 28)
!2285 = !DILocation(line: 73, column: 77, scope: !2283)
!2286 = !DILocation(line: 74, column: 17, scope: !2283)
!2287 = !DILocation(line: 75, column: 79, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !973, line: 74, column: 45)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !973, line: 74, column: 28)
!2290 = !DILocation(line: 76, column: 79, scope: !2288)
!2291 = !DILocation(line: 77, column: 17, scope: !2288)
!2292 = !DILocation(line: 78, column: 79, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !973, line: 77, column: 45)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !973, line: 77, column: 28)
!2295 = !DILocation(line: 79, column: 79, scope: !2293)
!2296 = !DILocation(line: 80, column: 17, scope: !2293)
!2297 = !DILocation(line: 81, column: 79, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !973, line: 80, column: 45)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !973, line: 80, column: 28)
!2300 = !DILocation(line: 82, column: 79, scope: !2298)
!2301 = !DILocation(line: 83, column: 17, scope: !2298)
!2302 = !DILocation(line: 85, column: 17, scope: !2269)
!2303 = !DILocation(line: 86, column: 13, scope: !2269)
!2304 = !DILocation(line: 88, column: 21, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2264, file: !973, line: 86, column: 20)
!2306 = !DILocation(line: 89, column: 72, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !973, line: 88, column: 38)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !973, line: 88, column: 21)
!2309 = !DILocation(line: 89, column: 66, scope: !2307)
!2310 = !DILocation(line: 90, column: 17, scope: !2307)
!2311 = !DILocation(line: 90, column: 28, scope: !2308)
!2312 = !DILocation(line: 91, column: 77, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !973, line: 90, column: 45)
!2314 = distinct !DILexicalBlock(scope: !2308, file: !973, line: 90, column: 28)
!2315 = !DILocation(line: 92, column: 17, scope: !2313)
!2316 = !DILocation(line: 93, column: 77, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !973, line: 92, column: 45)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !973, line: 92, column: 28)
!2319 = !DILocation(line: 94, column: 17, scope: !2317)
!2320 = !DILocation(line: 95, column: 79, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !973, line: 94, column: 45)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !973, line: 94, column: 28)
!2323 = !DILocation(line: 96, column: 17, scope: !2321)
!2324 = !DILocation(line: 97, column: 79, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !973, line: 96, column: 45)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !973, line: 96, column: 28)
!2327 = !DILocation(line: 98, column: 17, scope: !2325)
!2328 = !DILocation(line: 99, column: 79, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !973, line: 98, column: 45)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !973, line: 98, column: 28)
!2331 = !DILocation(line: 100, column: 17, scope: !2329)
!2332 = !DILocation(line: 103, column: 17, scope: !2305)
!2333 = !DILocation(line: 109, column: 27, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2265, file: !973, line: 109, column: 17)
!2335 = !DILocation(line: 0, scope: !2334)
!2336 = !DILocation(line: 109, column: 17, scope: !2265)
!2337 = !DILocation(line: 110, column: 21, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !973, line: 109, column: 33)
!2339 = !DILocation(line: 111, column: 73, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !973, line: 110, column: 36)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !973, line: 110, column: 21)
!2342 = !DILocation(line: 111, column: 69, scope: !2340)
!2343 = !DILocation(line: 111, column: 66, scope: !2340)
!2344 = !DILocation(line: 112, column: 17, scope: !2340)
!2345 = !DILocation(line: 113, column: 79, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !973, line: 112, column: 24)
!2347 = !DILocation(line: 114, column: 79, scope: !2346)
!2348 = !DILocation(line: 117, column: 17, scope: !2338)
!2349 = !DILocation(line: 118, column: 13, scope: !2338)
!2350 = !DILocation(line: 120, column: 21, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2334, file: !973, line: 118, column: 20)
!2352 = !DILocation(line: 121, column: 72, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !973, line: 120, column: 36)
!2354 = distinct !DILexicalBlock(scope: !2351, file: !973, line: 120, column: 21)
!2355 = !DILocation(line: 121, column: 66, scope: !2353)
!2356 = !DILocation(line: 122, column: 17, scope: !2353)
!2357 = !DILocation(line: 123, column: 79, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2354, file: !973, line: 122, column: 24)
!2359 = !DILocation(line: 126, column: 17, scope: !2351)
!2360 = !DILocation(line: 133, column: 1, scope: !2250)
!2361 = distinct !DISubprogram(name: "halGPO_Write", scope: !973, file: !973, line: 136, type: !2251, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2362)
!2362 = !{!2363, !2364, !2365, !2366}
!2363 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2361, file: !973, line: 136, type: !219)
!2364 = !DILocalVariable(name: "writeValue", arg: 2, scope: !2361, file: !973, line: 136, type: !251)
!2365 = !DILocalVariable(name: "no", scope: !2361, file: !973, line: 138, type: !328)
!2366 = !DILocalVariable(name: "remainder", scope: !2361, file: !973, line: 139, type: !328)
!2367 = !DILocation(line: 0, scope: !2361)
!2368 = !DILocation(line: 140, column: 19, scope: !2361)
!2369 = !DILocation(line: 141, column: 17, scope: !2361)
!2370 = !DILocation(line: 142, column: 5, scope: !2361)
!2371 = !DILocation(line: 145, column: 17, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !973, line: 145, column: 17)
!2373 = distinct !DILexicalBlock(scope: !2361, file: !973, line: 142, column: 17)
!2374 = !DILocation(line: 0, scope: !2372)
!2375 = !DILocation(line: 145, column: 17, scope: !2373)
!2376 = !DILocation(line: 146, column: 17, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !973, line: 145, column: 29)
!2378 = !DILocation(line: 147, column: 13, scope: !2377)
!2379 = !DILocation(line: 148, column: 17, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !973, line: 147, column: 20)
!2381 = !DILocation(line: 153, column: 17, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2373, file: !973, line: 153, column: 17)
!2383 = !DILocation(line: 0, scope: !2382)
!2384 = !DILocation(line: 153, column: 17, scope: !2373)
!2385 = !DILocation(line: 154, column: 17, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !973, line: 153, column: 29)
!2387 = !DILocation(line: 155, column: 13, scope: !2386)
!2388 = !DILocation(line: 156, column: 17, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2382, file: !973, line: 155, column: 20)
!2390 = !DILocation(line: 163, column: 1, scope: !2361)
!2391 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !973, file: !973, line: 169, type: !2392, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!251, !219}
!2394 = !{!2395, !2396, !2397, !2398}
!2395 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2391, file: !973, line: 169, type: !219)
!2396 = !DILocalVariable(name: "no", scope: !2391, file: !973, line: 171, type: !328)
!2397 = !DILocalVariable(name: "remainder", scope: !2391, file: !973, line: 172, type: !328)
!2398 = !DILocalVariable(name: "dout", scope: !2391, file: !973, line: 175, type: !251)
!2399 = !DILocation(line: 0, scope: !2391)
!2400 = !DILocation(line: 173, column: 19, scope: !2391)
!2401 = !DILocation(line: 174, column: 17, scope: !2391)
!2402 = !DILocation(line: 177, column: 5, scope: !2391)
!2403 = !DILocation(line: 183, column: 13, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2391, file: !973, line: 177, column: 17)
!2405 = !DILocation(line: 0, scope: !2404)
!2406 = !DILocation(line: 187, column: 5, scope: !2391)
!2407 = !DILocation(line: 188, column: 1, scope: !2391)
!2408 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !973, file: !973, line: 189, type: !2392, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2409)
!2409 = !{!2410, !2411, !2412, !2413}
!2410 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2408, file: !973, line: 189, type: !219)
!2411 = !DILocalVariable(name: "no", scope: !2408, file: !973, line: 191, type: !328)
!2412 = !DILocalVariable(name: "remainder", scope: !2408, file: !973, line: 192, type: !328)
!2413 = !DILocalVariable(name: "din", scope: !2408, file: !973, line: 195, type: !251)
!2414 = !DILocation(line: 0, scope: !2408)
!2415 = !DILocation(line: 193, column: 19, scope: !2408)
!2416 = !DILocation(line: 194, column: 17, scope: !2408)
!2417 = !DILocation(line: 196, column: 5, scope: !2408)
!2418 = !DILocation(line: 203, column: 13, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2408, file: !973, line: 196, column: 17)
!2420 = !DILocation(line: 0, scope: !2419)
!2421 = !DILocation(line: 208, column: 5, scope: !2408)
!2422 = !DILocation(line: 209, column: 1, scope: !2408)
!2423 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !973, file: !973, line: 210, type: !2392, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2424)
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2423, file: !973, line: 210, type: !219)
!2426 = !DILocalVariable(name: "no", scope: !2423, file: !973, line: 212, type: !328)
!2427 = !DILocalVariable(name: "remainder", scope: !2423, file: !973, line: 213, type: !328)
!2428 = !DILocalVariable(name: "outEnable", scope: !2423, file: !973, line: 216, type: !251)
!2429 = !DILocation(line: 0, scope: !2423)
!2430 = !DILocation(line: 214, column: 19, scope: !2423)
!2431 = !DILocation(line: 215, column: 17, scope: !2423)
!2432 = !DILocation(line: 218, column: 5, scope: !2423)
!2433 = !DILocation(line: 224, column: 13, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2423, file: !973, line: 218, column: 17)
!2435 = !DILocation(line: 0, scope: !2434)
!2436 = !DILocation(line: 228, column: 5, scope: !2423)
!2437 = !DILocation(line: 229, column: 1, scope: !2423)
!2438 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !973, file: !973, line: 232, type: !2439, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!2253, !219}
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2438, file: !973, line: 232, type: !219)
!2443 = !DILocalVariable(name: "no", scope: !2438, file: !973, line: 234, type: !328)
!2444 = !DILocalVariable(name: "remainder", scope: !2438, file: !973, line: 235, type: !328)
!2445 = !DILocation(line: 0, scope: !2438)
!2446 = !DILocation(line: 236, column: 19, scope: !2438)
!2447 = !DILocation(line: 237, column: 17, scope: !2438)
!2448 = !DILocation(line: 238, column: 5, scope: !2438)
!2449 = !DILocation(line: 239, column: 5, scope: !2438)
!2450 = !DILocation(line: 241, column: 27, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !973, line: 241, column: 17)
!2452 = distinct !DILexicalBlock(scope: !2438, file: !973, line: 239, column: 17)
!2453 = !DILocation(line: 241, column: 17, scope: !2452)
!2454 = !DILocation(line: 241, column: 17, scope: !2451)
!2455 = !DILocation(line: 242, column: 17, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !973, line: 241, column: 34)
!2457 = !DILocation(line: 243, column: 13, scope: !2456)
!2458 = !DILocation(line: 243, column: 24, scope: !2451)
!2459 = !DILocation(line: 244, column: 73, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !973, line: 243, column: 41)
!2461 = distinct !DILexicalBlock(scope: !2451, file: !973, line: 243, column: 24)
!2462 = !DILocation(line: 245, column: 73, scope: !2460)
!2463 = !DILocation(line: 246, column: 13, scope: !2460)
!2464 = !DILocation(line: 247, column: 73, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !973, line: 246, column: 41)
!2466 = distinct !DILexicalBlock(scope: !2461, file: !973, line: 246, column: 24)
!2467 = !DILocation(line: 248, column: 73, scope: !2465)
!2468 = !DILocation(line: 249, column: 13, scope: !2465)
!2469 = !DILocation(line: 250, column: 75, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !973, line: 249, column: 41)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !973, line: 249, column: 24)
!2472 = !DILocation(line: 251, column: 75, scope: !2470)
!2473 = !DILocation(line: 252, column: 13, scope: !2470)
!2474 = !DILocation(line: 253, column: 75, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !973, line: 252, column: 41)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !973, line: 252, column: 24)
!2477 = !DILocation(line: 254, column: 75, scope: !2475)
!2478 = !DILocation(line: 255, column: 13, scope: !2475)
!2479 = !DILocation(line: 256, column: 75, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !973, line: 255, column: 41)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !973, line: 255, column: 24)
!2482 = !DILocation(line: 257, column: 75, scope: !2480)
!2483 = !DILocation(line: 258, column: 13, scope: !2480)
!2484 = !DILocation(line: 261, column: 18, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2452, file: !973, line: 261, column: 17)
!2486 = !DILocation(line: 261, column: 17, scope: !2452)
!2487 = !DILocation(line: 262, column: 75, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !973, line: 261, column: 29)
!2489 = !DILocation(line: 263, column: 75, scope: !2488)
!2490 = !DILocation(line: 264, column: 13, scope: !2488)
!2491 = !DILocation(line: 265, column: 17, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2485, file: !973, line: 264, column: 20)
!2493 = !DILocation(line: 272, column: 1, scope: !2438)
!2494 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !973, file: !973, line: 359, type: !2439, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2495)
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2494, file: !973, line: 359, type: !219)
!2497 = !DILocalVariable(name: "no", scope: !2494, file: !973, line: 362, type: !328)
!2498 = !DILocalVariable(name: "remainder", scope: !2494, file: !973, line: 363, type: !328)
!2499 = !DILocation(line: 0, scope: !2494)
!2500 = !DILocation(line: 364, column: 19, scope: !2494)
!2501 = !DILocation(line: 365, column: 17, scope: !2494)
!2502 = !DILocation(line: 367, column: 5, scope: !2494)
!2503 = !DILocation(line: 369, column: 27, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !973, line: 369, column: 17)
!2505 = distinct !DILexicalBlock(scope: !2494, file: !973, line: 367, column: 17)
!2506 = !DILocation(line: 369, column: 17, scope: !2505)
!2507 = !DILocation(line: 369, column: 17, scope: !2504)
!2508 = !DILocation(line: 370, column: 17, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !973, line: 369, column: 34)
!2510 = !DILocation(line: 371, column: 13, scope: !2509)
!2511 = !DILocation(line: 371, column: 24, scope: !2504)
!2512 = !DILocation(line: 372, column: 73, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !973, line: 371, column: 41)
!2514 = distinct !DILexicalBlock(scope: !2504, file: !973, line: 371, column: 24)
!2515 = !DILocation(line: 373, column: 73, scope: !2513)
!2516 = !DILocation(line: 374, column: 13, scope: !2513)
!2517 = !DILocation(line: 375, column: 73, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !973, line: 374, column: 41)
!2519 = distinct !DILexicalBlock(scope: !2514, file: !973, line: 374, column: 24)
!2520 = !DILocation(line: 376, column: 73, scope: !2518)
!2521 = !DILocation(line: 377, column: 13, scope: !2518)
!2522 = !DILocation(line: 378, column: 75, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !973, line: 377, column: 41)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !973, line: 377, column: 24)
!2525 = !DILocation(line: 379, column: 75, scope: !2523)
!2526 = !DILocation(line: 380, column: 13, scope: !2523)
!2527 = !DILocation(line: 381, column: 75, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !973, line: 380, column: 41)
!2529 = distinct !DILexicalBlock(scope: !2524, file: !973, line: 380, column: 24)
!2530 = !DILocation(line: 382, column: 75, scope: !2528)
!2531 = !DILocation(line: 383, column: 13, scope: !2528)
!2532 = !DILocation(line: 384, column: 75, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !973, line: 383, column: 41)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !973, line: 383, column: 24)
!2535 = !DILocation(line: 385, column: 75, scope: !2533)
!2536 = !DILocation(line: 386, column: 13, scope: !2533)
!2537 = !DILocation(line: 389, column: 18, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2505, file: !973, line: 389, column: 17)
!2539 = !DILocation(line: 389, column: 17, scope: !2505)
!2540 = !DILocation(line: 390, column: 75, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !973, line: 389, column: 29)
!2542 = !DILocation(line: 391, column: 75, scope: !2541)
!2543 = !DILocation(line: 392, column: 13, scope: !2541)
!2544 = !DILocation(line: 393, column: 17, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2538, file: !973, line: 392, column: 20)
!2546 = !DILocation(line: 401, column: 1, scope: !2494)
!2547 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !973, file: !973, line: 274, type: !2439, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2548)
!2548 = !{!2549, !2550, !2551}
!2549 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2547, file: !973, line: 274, type: !219)
!2550 = !DILocalVariable(name: "no", scope: !2547, file: !973, line: 276, type: !328)
!2551 = !DILocalVariable(name: "remainder", scope: !2547, file: !973, line: 277, type: !328)
!2552 = !DILocation(line: 0, scope: !2547)
!2553 = !DILocation(line: 278, column: 19, scope: !2547)
!2554 = !DILocation(line: 279, column: 17, scope: !2547)
!2555 = !DILocation(line: 281, column: 5, scope: !2547)
!2556 = !DILocation(line: 283, column: 27, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !973, line: 283, column: 17)
!2558 = distinct !DILexicalBlock(scope: !2547, file: !973, line: 281, column: 17)
!2559 = !DILocation(line: 283, column: 17, scope: !2558)
!2560 = !DILocation(line: 283, column: 17, scope: !2557)
!2561 = !DILocation(line: 284, column: 17, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !973, line: 283, column: 34)
!2563 = !DILocation(line: 285, column: 13, scope: !2562)
!2564 = !DILocation(line: 285, column: 24, scope: !2557)
!2565 = !DILocation(line: 286, column: 73, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !973, line: 285, column: 41)
!2567 = distinct !DILexicalBlock(scope: !2557, file: !973, line: 285, column: 24)
!2568 = !DILocation(line: 287, column: 73, scope: !2566)
!2569 = !DILocation(line: 288, column: 13, scope: !2566)
!2570 = !DILocation(line: 289, column: 73, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !973, line: 288, column: 41)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !973, line: 288, column: 24)
!2573 = !DILocation(line: 290, column: 73, scope: !2571)
!2574 = !DILocation(line: 291, column: 13, scope: !2571)
!2575 = !DILocation(line: 292, column: 75, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !973, line: 291, column: 41)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !973, line: 291, column: 24)
!2578 = !DILocation(line: 293, column: 75, scope: !2576)
!2579 = !DILocation(line: 294, column: 13, scope: !2576)
!2580 = !DILocation(line: 295, column: 75, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !973, line: 294, column: 41)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !973, line: 294, column: 24)
!2583 = !DILocation(line: 296, column: 75, scope: !2581)
!2584 = !DILocation(line: 297, column: 13, scope: !2581)
!2585 = !DILocation(line: 298, column: 75, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !973, line: 297, column: 41)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !973, line: 297, column: 24)
!2588 = !DILocation(line: 299, column: 75, scope: !2586)
!2589 = !DILocation(line: 300, column: 13, scope: !2586)
!2590 = !DILocation(line: 303, column: 18, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2558, file: !973, line: 303, column: 17)
!2592 = !DILocation(line: 303, column: 17, scope: !2558)
!2593 = !DILocation(line: 304, column: 75, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2591, file: !973, line: 303, column: 29)
!2595 = !DILocation(line: 305, column: 75, scope: !2594)
!2596 = !DILocation(line: 306, column: 13, scope: !2594)
!2597 = !DILocation(line: 307, column: 17, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2591, file: !973, line: 306, column: 20)
!2599 = !DILocation(line: 314, column: 1, scope: !2547)
!2600 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !973, file: !973, line: 316, type: !2439, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2601)
!2601 = !{!2602, !2603, !2604}
!2602 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2600, file: !973, line: 316, type: !219)
!2603 = !DILocalVariable(name: "no", scope: !2600, file: !973, line: 318, type: !328)
!2604 = !DILocalVariable(name: "remainder", scope: !2600, file: !973, line: 319, type: !328)
!2605 = !DILocation(line: 0, scope: !2600)
!2606 = !DILocation(line: 320, column: 19, scope: !2600)
!2607 = !DILocation(line: 321, column: 17, scope: !2600)
!2608 = !DILocation(line: 322, column: 5, scope: !2600)
!2609 = !DILocation(line: 323, column: 5, scope: !2600)
!2610 = !DILocation(line: 325, column: 27, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !973, line: 325, column: 17)
!2612 = distinct !DILexicalBlock(scope: !2600, file: !973, line: 323, column: 17)
!2613 = !DILocation(line: 325, column: 17, scope: !2612)
!2614 = !DILocation(line: 325, column: 17, scope: !2611)
!2615 = !DILocation(line: 326, column: 17, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2611, file: !973, line: 325, column: 34)
!2617 = !DILocation(line: 327, column: 13, scope: !2616)
!2618 = !DILocation(line: 327, column: 24, scope: !2611)
!2619 = !DILocation(line: 328, column: 73, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !973, line: 327, column: 41)
!2621 = distinct !DILexicalBlock(scope: !2611, file: !973, line: 327, column: 24)
!2622 = !DILocation(line: 329, column: 73, scope: !2620)
!2623 = !DILocation(line: 330, column: 13, scope: !2620)
!2624 = !DILocation(line: 331, column: 73, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !973, line: 330, column: 41)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !973, line: 330, column: 24)
!2627 = !DILocation(line: 332, column: 73, scope: !2625)
!2628 = !DILocation(line: 333, column: 13, scope: !2625)
!2629 = !DILocation(line: 334, column: 75, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !973, line: 333, column: 41)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !973, line: 333, column: 24)
!2632 = !DILocation(line: 335, column: 75, scope: !2630)
!2633 = !DILocation(line: 336, column: 13, scope: !2630)
!2634 = !DILocation(line: 337, column: 75, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !973, line: 336, column: 41)
!2636 = distinct !DILexicalBlock(scope: !2631, file: !973, line: 336, column: 24)
!2637 = !DILocation(line: 338, column: 75, scope: !2635)
!2638 = !DILocation(line: 339, column: 13, scope: !2635)
!2639 = !DILocation(line: 340, column: 75, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !973, line: 339, column: 41)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !973, line: 339, column: 24)
!2642 = !DILocation(line: 341, column: 75, scope: !2640)
!2643 = !DILocation(line: 342, column: 13, scope: !2640)
!2644 = !DILocation(line: 345, column: 18, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2612, file: !973, line: 345, column: 17)
!2646 = !DILocation(line: 345, column: 17, scope: !2612)
!2647 = !DILocation(line: 346, column: 75, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2645, file: !973, line: 345, column: 29)
!2649 = !DILocation(line: 347, column: 75, scope: !2648)
!2650 = !DILocation(line: 348, column: 13, scope: !2648)
!2651 = !DILocation(line: 349, column: 17, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2645, file: !973, line: 348, column: 20)
!2653 = !DILocation(line: 357, column: 1, scope: !2600)
!2654 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !973, file: !973, line: 404, type: !2251, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2655)
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2654, file: !973, line: 404, type: !219)
!2657 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2654, file: !973, line: 404, type: !251)
!2658 = !DILocalVariable(name: "no", scope: !2654, file: !973, line: 406, type: !328)
!2659 = !DILocalVariable(name: "remainder", scope: !2654, file: !973, line: 407, type: !328)
!2660 = !DILocation(line: 0, scope: !2654)
!2661 = !DILocation(line: 408, column: 19, scope: !2654)
!2662 = !DILocation(line: 409, column: 17, scope: !2654)
!2663 = !DILocation(line: 411, column: 5, scope: !2654)
!2664 = !DILocation(line: 413, column: 84, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2654, file: !973, line: 411, column: 17)
!2666 = !DILocation(line: 413, column: 70, scope: !2665)
!2667 = !DILocation(line: 413, column: 64, scope: !2665)
!2668 = !DILocation(line: 413, column: 61, scope: !2665)
!2669 = !DILocation(line: 414, column: 79, scope: !2665)
!2670 = !DILocation(line: 414, column: 83, scope: !2665)
!2671 = !DILocation(line: 414, column: 88, scope: !2665)
!2672 = !DILocation(line: 414, column: 61, scope: !2665)
!2673 = !DILocation(line: 415, column: 13, scope: !2665)
!2674 = !DILocation(line: 417, column: 27, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2665, file: !973, line: 417, column: 17)
!2676 = !DILocation(line: 417, column: 17, scope: !2665)
!2677 = !DILocation(line: 418, column: 88, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !973, line: 417, column: 33)
!2679 = !DILocation(line: 418, column: 74, scope: !2678)
!2680 = !DILocation(line: 418, column: 68, scope: !2678)
!2681 = !DILocation(line: 418, column: 65, scope: !2678)
!2682 = !DILocation(line: 419, column: 83, scope: !2678)
!2683 = !DILocation(line: 419, column: 87, scope: !2678)
!2684 = !DILocation(line: 419, column: 92, scope: !2678)
!2685 = !DILocation(line: 419, column: 65, scope: !2678)
!2686 = !DILocation(line: 420, column: 13, scope: !2678)
!2687 = !DILocation(line: 420, column: 24, scope: !2675)
!2688 = !DILocation(line: 421, column: 73, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !973, line: 420, column: 41)
!2690 = distinct !DILexicalBlock(scope: !2675, file: !973, line: 420, column: 24)
!2691 = !DILocation(line: 422, column: 91, scope: !2689)
!2692 = !DILocation(line: 422, column: 100, scope: !2689)
!2693 = !DILocation(line: 422, column: 73, scope: !2689)
!2694 = !DILocation(line: 423, column: 73, scope: !2689)
!2695 = !DILocation(line: 424, column: 13, scope: !2689)
!2696 = !DILocation(line: 425, column: 73, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !973, line: 424, column: 41)
!2698 = distinct !DILexicalBlock(scope: !2690, file: !973, line: 424, column: 24)
!2699 = !DILocation(line: 426, column: 91, scope: !2697)
!2700 = !DILocation(line: 426, column: 100, scope: !2697)
!2701 = !DILocation(line: 426, column: 73, scope: !2697)
!2702 = !DILocation(line: 427, column: 73, scope: !2697)
!2703 = !DILocation(line: 428, column: 13, scope: !2697)
!2704 = !DILocation(line: 429, column: 75, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !973, line: 428, column: 41)
!2706 = distinct !DILexicalBlock(scope: !2698, file: !973, line: 428, column: 24)
!2707 = !DILocation(line: 430, column: 93, scope: !2705)
!2708 = !DILocation(line: 430, column: 102, scope: !2705)
!2709 = !DILocation(line: 430, column: 75, scope: !2705)
!2710 = !DILocation(line: 431, column: 75, scope: !2705)
!2711 = !DILocation(line: 432, column: 13, scope: !2705)
!2712 = !DILocation(line: 433, column: 75, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !973, line: 432, column: 41)
!2714 = distinct !DILexicalBlock(scope: !2706, file: !973, line: 432, column: 24)
!2715 = !DILocation(line: 434, column: 93, scope: !2713)
!2716 = !DILocation(line: 434, column: 102, scope: !2713)
!2717 = !DILocation(line: 434, column: 75, scope: !2713)
!2718 = !DILocation(line: 435, column: 75, scope: !2713)
!2719 = !DILocation(line: 436, column: 13, scope: !2713)
!2720 = !DILocation(line: 437, column: 75, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !973, line: 436, column: 41)
!2722 = distinct !DILexicalBlock(scope: !2714, file: !973, line: 436, column: 24)
!2723 = !DILocation(line: 438, column: 93, scope: !2721)
!2724 = !DILocation(line: 438, column: 102, scope: !2721)
!2725 = !DILocation(line: 438, column: 75, scope: !2721)
!2726 = !DILocation(line: 439, column: 75, scope: !2721)
!2727 = !DILocation(line: 440, column: 13, scope: !2721)
!2728 = !DILocation(line: 443, column: 18, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2665, file: !973, line: 443, column: 17)
!2730 = !DILocation(line: 443, column: 17, scope: !2665)
!2731 = !DILocation(line: 444, column: 75, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2729, file: !973, line: 443, column: 29)
!2733 = !DILocation(line: 445, column: 93, scope: !2732)
!2734 = !DILocation(line: 445, column: 102, scope: !2732)
!2735 = !DILocation(line: 445, column: 75, scope: !2732)
!2736 = !DILocation(line: 446, column: 75, scope: !2732)
!2737 = !DILocation(line: 447, column: 13, scope: !2732)
!2738 = !DILocation(line: 448, column: 88, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2729, file: !973, line: 447, column: 20)
!2740 = !DILocation(line: 448, column: 74, scope: !2739)
!2741 = !DILocation(line: 448, column: 68, scope: !2739)
!2742 = !DILocation(line: 448, column: 65, scope: !2739)
!2743 = !DILocation(line: 449, column: 83, scope: !2739)
!2744 = !DILocation(line: 449, column: 87, scope: !2739)
!2745 = !DILocation(line: 449, column: 92, scope: !2739)
!2746 = !DILocation(line: 449, column: 65, scope: !2739)
!2747 = !DILocation(line: 453, column: 84, scope: !2665)
!2748 = !DILocation(line: 453, column: 70, scope: !2665)
!2749 = !DILocation(line: 453, column: 64, scope: !2665)
!2750 = !DILocation(line: 453, column: 61, scope: !2665)
!2751 = !DILocation(line: 454, column: 79, scope: !2665)
!2752 = !DILocation(line: 454, column: 83, scope: !2665)
!2753 = !DILocation(line: 454, column: 88, scope: !2665)
!2754 = !DILocation(line: 454, column: 61, scope: !2665)
!2755 = !DILocation(line: 455, column: 13, scope: !2665)
!2756 = !DILocation(line: 460, column: 1, scope: !2654)
!2757 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !973, file: !973, line: 463, type: !2758, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2761)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!2253, !219, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 32)
!2761 = !{!2762, !2763, !2764, !2765, !2766}
!2762 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2757, file: !973, line: 463, type: !219)
!2763 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2757, file: !973, line: 463, type: !2760)
!2764 = !DILocalVariable(name: "no", scope: !2757, file: !973, line: 465, type: !328)
!2765 = !DILocalVariable(name: "remainder", scope: !2757, file: !973, line: 466, type: !328)
!2766 = !DILocalVariable(name: "temp", scope: !2757, file: !973, line: 467, type: !219)
!2767 = !DILocation(line: 0, scope: !2757)
!2768 = !DILocation(line: 468, column: 19, scope: !2757)
!2769 = !DILocation(line: 469, column: 17, scope: !2757)
!2770 = !DILocation(line: 471, column: 5, scope: !2757)
!2771 = !DILocation(line: 473, column: 20, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2757, file: !973, line: 471, column: 17)
!2773 = !DILocation(line: 474, column: 40, scope: !2772)
!2774 = !DILocation(line: 474, column: 26, scope: !2772)
!2775 = !DILocation(line: 474, column: 18, scope: !2772)
!2776 = !DILocation(line: 475, column: 40, scope: !2772)
!2777 = !DILocation(line: 475, column: 29, scope: !2772)
!2778 = !DILocation(line: 476, column: 13, scope: !2772)
!2779 = !DILocation(line: 478, column: 27, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2772, file: !973, line: 478, column: 17)
!2781 = !DILocation(line: 478, column: 17, scope: !2772)
!2782 = !DILocation(line: 479, column: 24, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !973, line: 478, column: 33)
!2784 = !DILocation(line: 480, column: 44, scope: !2783)
!2785 = !DILocation(line: 480, column: 30, scope: !2783)
!2786 = !DILocation(line: 480, column: 22, scope: !2783)
!2787 = !DILocation(line: 481, column: 44, scope: !2783)
!2788 = !DILocation(line: 481, column: 33, scope: !2783)
!2789 = !DILocation(line: 482, column: 13, scope: !2783)
!2790 = !DILocation(line: 482, column: 24, scope: !2780)
!2791 = !DILocation(line: 483, column: 24, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !973, line: 482, column: 41)
!2793 = distinct !DILexicalBlock(scope: !2780, file: !973, line: 482, column: 24)
!2794 = !DILocation(line: 485, column: 53, scope: !2792)
!2795 = !DILocation(line: 485, column: 33, scope: !2792)
!2796 = !DILocation(line: 486, column: 13, scope: !2792)
!2797 = !DILocation(line: 487, column: 24, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !973, line: 486, column: 41)
!2799 = distinct !DILexicalBlock(scope: !2793, file: !973, line: 486, column: 24)
!2800 = !DILocation(line: 489, column: 53, scope: !2798)
!2801 = !DILocation(line: 489, column: 33, scope: !2798)
!2802 = !DILocation(line: 490, column: 13, scope: !2798)
!2803 = !DILocation(line: 491, column: 24, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !973, line: 490, column: 41)
!2805 = distinct !DILexicalBlock(scope: !2799, file: !973, line: 490, column: 24)
!2806 = !DILocation(line: 493, column: 53, scope: !2804)
!2807 = !DILocation(line: 493, column: 33, scope: !2804)
!2808 = !DILocation(line: 494, column: 13, scope: !2804)
!2809 = !DILocation(line: 495, column: 24, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !973, line: 494, column: 41)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !973, line: 494, column: 24)
!2812 = !DILocation(line: 497, column: 53, scope: !2810)
!2813 = !DILocation(line: 497, column: 33, scope: !2810)
!2814 = !DILocation(line: 498, column: 13, scope: !2810)
!2815 = !DILocation(line: 499, column: 24, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !973, line: 498, column: 41)
!2817 = distinct !DILexicalBlock(scope: !2811, file: !973, line: 498, column: 24)
!2818 = !DILocation(line: 501, column: 53, scope: !2816)
!2819 = !DILocation(line: 501, column: 33, scope: !2816)
!2820 = !DILocation(line: 502, column: 13, scope: !2816)
!2821 = !DILocation(line: 505, column: 18, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2772, file: !973, line: 505, column: 17)
!2823 = !DILocation(line: 505, column: 17, scope: !2772)
!2824 = !DILocation(line: 506, column: 24, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !973, line: 505, column: 29)
!2826 = !DILocation(line: 508, column: 53, scope: !2825)
!2827 = !DILocation(line: 508, column: 33, scope: !2825)
!2828 = !DILocation(line: 509, column: 13, scope: !2825)
!2829 = !DILocation(line: 510, column: 24, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2822, file: !973, line: 509, column: 20)
!2831 = !DILocation(line: 511, column: 44, scope: !2830)
!2832 = !DILocation(line: 511, column: 30, scope: !2830)
!2833 = !DILocation(line: 511, column: 22, scope: !2830)
!2834 = !DILocation(line: 512, column: 44, scope: !2830)
!2835 = !DILocation(line: 512, column: 33, scope: !2830)
!2836 = !DILocation(line: 516, column: 20, scope: !2772)
!2837 = !DILocation(line: 517, column: 40, scope: !2772)
!2838 = !DILocation(line: 517, column: 26, scope: !2772)
!2839 = !DILocation(line: 517, column: 18, scope: !2772)
!2840 = !DILocation(line: 518, column: 40, scope: !2772)
!2841 = !DILocation(line: 518, column: 29, scope: !2772)
!2842 = !DILocation(line: 519, column: 13, scope: !2772)
!2843 = !DILocation(line: 0, scope: !2772)
!2844 = !DILocation(line: 524, column: 1, scope: !2757)
!2845 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !973, file: !973, line: 526, type: !2846, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !2849)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !219, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !976, line: 1212, baseType: !975)
!2849 = !{!2850, !2851, !2852, !2853}
!2850 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2845, file: !973, line: 526, type: !219)
!2851 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2845, file: !973, line: 526, type: !2848)
!2852 = !DILocalVariable(name: "no", scope: !2845, file: !973, line: 529, type: !328)
!2853 = !DILocalVariable(name: "remainder", scope: !2845, file: !973, line: 530, type: !328)
!2854 = !DILocation(line: 0, scope: !2845)
!2855 = !DILocation(line: 531, column: 19, scope: !2845)
!2856 = !DILocation(line: 532, column: 17, scope: !2845)
!2857 = !DILocation(line: 534, column: 9, scope: !2845)
!2858 = !DILocation(line: 536, column: 9, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !973, line: 534, column: 45)
!2860 = distinct !DILexicalBlock(scope: !2845, file: !973, line: 534, column: 9)
!2861 = !DILocation(line: 538, column: 56, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !973, line: 536, column: 21)
!2863 = !DILocation(line: 538, column: 53, scope: !2862)
!2864 = !DILocation(line: 538, column: 47, scope: !2862)
!2865 = !DILocation(line: 539, column: 17, scope: !2862)
!2866 = !DILocation(line: 541, column: 56, scope: !2862)
!2867 = !DILocation(line: 541, column: 53, scope: !2862)
!2868 = !DILocation(line: 541, column: 47, scope: !2862)
!2869 = !DILocation(line: 542, column: 17, scope: !2862)
!2870 = !DILocation(line: 548, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !973, line: 547, column: 51)
!2872 = distinct !DILexicalBlock(scope: !2860, file: !973, line: 547, column: 16)
!2873 = !DILocation(line: 550, column: 57, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !973, line: 548, column: 21)
!2875 = !DILocation(line: 550, column: 54, scope: !2874)
!2876 = !DILocation(line: 550, column: 50, scope: !2874)
!2877 = !DILocation(line: 550, column: 47, scope: !2874)
!2878 = !DILocation(line: 551, column: 17, scope: !2874)
!2879 = !DILocation(line: 553, column: 57, scope: !2874)
!2880 = !DILocation(line: 553, column: 54, scope: !2874)
!2881 = !DILocation(line: 553, column: 50, scope: !2874)
!2882 = !DILocation(line: 553, column: 47, scope: !2874)
!2883 = !DILocation(line: 554, column: 17, scope: !2874)
!2884 = !DILocation(line: 560, column: 1, scope: !2845)
!2885 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !982, file: !982, line: 85, type: !2886, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !981, retainedNodes: !2890)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2888, !2889, !251}
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !47, line: 79, baseType: null)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !985, line: 225, baseType: !984)
!2890 = !{!2891, !2892, !2893}
!2891 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2885, file: !982, line: 85, type: !2889)
!2892 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2885, file: !982, line: 85, type: !251)
!2893 = !DILocalVariable(name: "temp", scope: !2885, file: !982, line: 87, type: !136)
!2894 = !DILocation(line: 0, scope: !2885)
!2895 = !DILocation(line: 88, column: 5, scope: !2885)
!2896 = !DILocation(line: 91, column: 20, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2885, file: !982, line: 88, column: 24)
!2898 = !DILocation(line: 92, column: 18, scope: !2897)
!2899 = !DILocation(line: 93, column: 66, scope: !2897)
!2900 = !DILocation(line: 93, column: 63, scope: !2897)
!2901 = !DILocation(line: 93, column: 56, scope: !2897)
!2902 = !DILocation(line: 94, column: 13, scope: !2897)
!2903 = !DILocation(line: 97, column: 20, scope: !2897)
!2904 = !DILocation(line: 98, column: 18, scope: !2897)
!2905 = !DILocation(line: 99, column: 67, scope: !2897)
!2906 = !DILocation(line: 99, column: 74, scope: !2897)
!2907 = !DILocation(line: 99, column: 64, scope: !2897)
!2908 = !DILocation(line: 99, column: 56, scope: !2897)
!2909 = !DILocation(line: 100, column: 13, scope: !2897)
!2910 = !DILocation(line: 103, column: 20, scope: !2897)
!2911 = !DILocation(line: 104, column: 18, scope: !2897)
!2912 = !DILocation(line: 105, column: 67, scope: !2897)
!2913 = !DILocation(line: 105, column: 74, scope: !2897)
!2914 = !DILocation(line: 105, column: 64, scope: !2897)
!2915 = !DILocation(line: 105, column: 56, scope: !2897)
!2916 = !DILocation(line: 106, column: 13, scope: !2897)
!2917 = !DILocation(line: 109, column: 20, scope: !2897)
!2918 = !DILocation(line: 110, column: 18, scope: !2897)
!2919 = !DILocation(line: 111, column: 67, scope: !2897)
!2920 = !DILocation(line: 111, column: 74, scope: !2897)
!2921 = !DILocation(line: 111, column: 64, scope: !2897)
!2922 = !DILocation(line: 111, column: 56, scope: !2897)
!2923 = !DILocation(line: 112, column: 13, scope: !2897)
!2924 = !DILocation(line: 115, column: 20, scope: !2897)
!2925 = !DILocation(line: 116, column: 18, scope: !2897)
!2926 = !DILocation(line: 117, column: 67, scope: !2897)
!2927 = !DILocation(line: 117, column: 74, scope: !2897)
!2928 = !DILocation(line: 117, column: 64, scope: !2897)
!2929 = !DILocation(line: 117, column: 56, scope: !2897)
!2930 = !DILocation(line: 118, column: 13, scope: !2897)
!2931 = !DILocation(line: 121, column: 20, scope: !2897)
!2932 = !DILocation(line: 122, column: 18, scope: !2897)
!2933 = !DILocation(line: 123, column: 67, scope: !2897)
!2934 = !DILocation(line: 123, column: 74, scope: !2897)
!2935 = !DILocation(line: 123, column: 64, scope: !2897)
!2936 = !DILocation(line: 123, column: 56, scope: !2897)
!2937 = !DILocation(line: 124, column: 13, scope: !2897)
!2938 = !DILocation(line: 127, column: 20, scope: !2897)
!2939 = !DILocation(line: 128, column: 18, scope: !2897)
!2940 = !DILocation(line: 129, column: 67, scope: !2897)
!2941 = !DILocation(line: 129, column: 74, scope: !2897)
!2942 = !DILocation(line: 129, column: 64, scope: !2897)
!2943 = !DILocation(line: 129, column: 56, scope: !2897)
!2944 = !DILocation(line: 130, column: 13, scope: !2897)
!2945 = !DILocation(line: 133, column: 20, scope: !2897)
!2946 = !DILocation(line: 134, column: 18, scope: !2897)
!2947 = !DILocation(line: 135, column: 67, scope: !2897)
!2948 = !DILocation(line: 135, column: 74, scope: !2897)
!2949 = !DILocation(line: 135, column: 64, scope: !2897)
!2950 = !DILocation(line: 135, column: 56, scope: !2897)
!2951 = !DILocation(line: 136, column: 13, scope: !2897)
!2952 = !DILocation(line: 139, column: 20, scope: !2897)
!2953 = !DILocation(line: 140, column: 18, scope: !2897)
!2954 = !DILocation(line: 141, column: 67, scope: !2897)
!2955 = !DILocation(line: 141, column: 64, scope: !2897)
!2956 = !DILocation(line: 141, column: 56, scope: !2897)
!2957 = !DILocation(line: 142, column: 13, scope: !2897)
!2958 = !DILocation(line: 145, column: 20, scope: !2897)
!2959 = !DILocation(line: 146, column: 18, scope: !2897)
!2960 = !DILocation(line: 147, column: 67, scope: !2897)
!2961 = !DILocation(line: 147, column: 74, scope: !2897)
!2962 = !DILocation(line: 147, column: 64, scope: !2897)
!2963 = !DILocation(line: 147, column: 56, scope: !2897)
!2964 = !DILocation(line: 148, column: 13, scope: !2897)
!2965 = !DILocation(line: 151, column: 20, scope: !2897)
!2966 = !DILocation(line: 152, column: 18, scope: !2897)
!2967 = !DILocation(line: 153, column: 67, scope: !2897)
!2968 = !DILocation(line: 153, column: 74, scope: !2897)
!2969 = !DILocation(line: 153, column: 64, scope: !2897)
!2970 = !DILocation(line: 153, column: 56, scope: !2897)
!2971 = !DILocation(line: 154, column: 13, scope: !2897)
!2972 = !DILocation(line: 157, column: 20, scope: !2897)
!2973 = !DILocation(line: 158, column: 18, scope: !2897)
!2974 = !DILocation(line: 159, column: 67, scope: !2897)
!2975 = !DILocation(line: 159, column: 74, scope: !2897)
!2976 = !DILocation(line: 159, column: 64, scope: !2897)
!2977 = !DILocation(line: 159, column: 56, scope: !2897)
!2978 = !DILocation(line: 160, column: 29, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2897, file: !982, line: 160, column: 17)
!2980 = !DILocation(line: 161, column: 17, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2979, file: !982, line: 160, column: 60)
!2982 = !DILocation(line: 162, column: 13, scope: !2981)
!2983 = !DILocation(line: 166, column: 20, scope: !2897)
!2984 = !DILocation(line: 167, column: 18, scope: !2897)
!2985 = !DILocation(line: 168, column: 67, scope: !2897)
!2986 = !DILocation(line: 168, column: 74, scope: !2897)
!2987 = !DILocation(line: 168, column: 64, scope: !2897)
!2988 = !DILocation(line: 168, column: 56, scope: !2897)
!2989 = !DILocation(line: 169, column: 29, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2897, file: !982, line: 169, column: 17)
!2991 = !DILocation(line: 170, column: 17, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2990, file: !982, line: 169, column: 45)
!2993 = !DILocation(line: 171, column: 13, scope: !2992)
!2994 = !DILocation(line: 175, column: 20, scope: !2897)
!2995 = !DILocation(line: 176, column: 18, scope: !2897)
!2996 = !DILocation(line: 177, column: 67, scope: !2897)
!2997 = !DILocation(line: 177, column: 74, scope: !2897)
!2998 = !DILocation(line: 177, column: 64, scope: !2897)
!2999 = !DILocation(line: 177, column: 56, scope: !2897)
!3000 = !DILocation(line: 178, column: 19, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2897, file: !982, line: 178, column: 17)
!3002 = !DILocation(line: 178, column: 17, scope: !2897)
!3003 = !DILocation(line: 179, column: 17, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3001, file: !982, line: 178, column: 30)
!3005 = !DILocation(line: 180, column: 13, scope: !3004)
!3006 = !DILocation(line: 184, column: 20, scope: !2897)
!3007 = !DILocation(line: 185, column: 18, scope: !2897)
!3008 = !DILocation(line: 186, column: 67, scope: !2897)
!3009 = !DILocation(line: 186, column: 74, scope: !2897)
!3010 = !DILocation(line: 186, column: 64, scope: !2897)
!3011 = !DILocation(line: 186, column: 56, scope: !2897)
!3012 = !DILocation(line: 187, column: 29, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2897, file: !982, line: 187, column: 17)
!3014 = !DILocation(line: 188, column: 17, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3013, file: !982, line: 187, column: 45)
!3016 = !DILocation(line: 189, column: 13, scope: !3015)
!3017 = !DILocation(line: 193, column: 20, scope: !2897)
!3018 = !DILocation(line: 194, column: 18, scope: !2897)
!3019 = !DILocation(line: 195, column: 67, scope: !2897)
!3020 = !DILocation(line: 195, column: 74, scope: !2897)
!3021 = !DILocation(line: 195, column: 64, scope: !2897)
!3022 = !DILocation(line: 195, column: 56, scope: !2897)
!3023 = !DILocation(line: 196, column: 29, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2897, file: !982, line: 196, column: 17)
!3025 = !DILocation(line: 197, column: 17, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3024, file: !982, line: 196, column: 45)
!3027 = !DILocation(line: 198, column: 13, scope: !3026)
!3028 = !DILocation(line: 202, column: 20, scope: !2897)
!3029 = !DILocation(line: 203, column: 18, scope: !2897)
!3030 = !DILocation(line: 204, column: 67, scope: !2897)
!3031 = !DILocation(line: 204, column: 64, scope: !2897)
!3032 = !DILocation(line: 204, column: 56, scope: !2897)
!3033 = !DILocation(line: 205, column: 29, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2897, file: !982, line: 205, column: 17)
!3035 = !DILocation(line: 206, column: 17, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3034, file: !982, line: 205, column: 45)
!3037 = !DILocation(line: 207, column: 13, scope: !3036)
!3038 = !DILocation(line: 211, column: 20, scope: !2897)
!3039 = !DILocation(line: 212, column: 18, scope: !2897)
!3040 = !DILocation(line: 213, column: 67, scope: !2897)
!3041 = !DILocation(line: 213, column: 74, scope: !2897)
!3042 = !DILocation(line: 213, column: 64, scope: !2897)
!3043 = !DILocation(line: 213, column: 56, scope: !2897)
!3044 = !DILocation(line: 214, column: 13, scope: !2897)
!3045 = !DILocation(line: 217, column: 20, scope: !2897)
!3046 = !DILocation(line: 218, column: 18, scope: !2897)
!3047 = !DILocation(line: 219, column: 67, scope: !2897)
!3048 = !DILocation(line: 219, column: 74, scope: !2897)
!3049 = !DILocation(line: 219, column: 64, scope: !2897)
!3050 = !DILocation(line: 219, column: 56, scope: !2897)
!3051 = !DILocation(line: 220, column: 13, scope: !2897)
!3052 = !DILocation(line: 223, column: 20, scope: !2897)
!3053 = !DILocation(line: 224, column: 18, scope: !2897)
!3054 = !DILocation(line: 225, column: 67, scope: !2897)
!3055 = !DILocation(line: 225, column: 74, scope: !2897)
!3056 = !DILocation(line: 225, column: 64, scope: !2897)
!3057 = !DILocation(line: 225, column: 56, scope: !2897)
!3058 = !DILocation(line: 226, column: 13, scope: !2897)
!3059 = !DILocation(line: 229, column: 20, scope: !2897)
!3060 = !DILocation(line: 230, column: 18, scope: !2897)
!3061 = !DILocation(line: 231, column: 67, scope: !2897)
!3062 = !DILocation(line: 231, column: 74, scope: !2897)
!3063 = !DILocation(line: 231, column: 64, scope: !2897)
!3064 = !DILocation(line: 231, column: 56, scope: !2897)
!3065 = !DILocation(line: 232, column: 13, scope: !2897)
!3066 = !DILocation(line: 235, column: 20, scope: !2897)
!3067 = !DILocation(line: 236, column: 18, scope: !2897)
!3068 = !DILocation(line: 237, column: 66, scope: !2897)
!3069 = !DILocation(line: 237, column: 73, scope: !2897)
!3070 = !DILocation(line: 237, column: 63, scope: !2897)
!3071 = !DILocation(line: 237, column: 56, scope: !2897)
!3072 = !DILocation(line: 238, column: 13, scope: !2897)
!3073 = !DILocation(line: 241, column: 20, scope: !2897)
!3074 = !DILocation(line: 242, column: 18, scope: !2897)
!3075 = !DILocation(line: 243, column: 67, scope: !2897)
!3076 = !DILocation(line: 243, column: 74, scope: !2897)
!3077 = !DILocation(line: 243, column: 64, scope: !2897)
!3078 = !DILocation(line: 243, column: 56, scope: !2897)
!3079 = !DILocation(line: 244, column: 13, scope: !2897)
!3080 = !DILocation(line: 247, column: 20, scope: !2897)
!3081 = !DILocation(line: 248, column: 18, scope: !2897)
!3082 = !DILocation(line: 249, column: 67, scope: !2897)
!3083 = !DILocation(line: 249, column: 74, scope: !2897)
!3084 = !DILocation(line: 249, column: 64, scope: !2897)
!3085 = !DILocation(line: 249, column: 56, scope: !2897)
!3086 = !DILocation(line: 250, column: 13, scope: !2897)
!3087 = !DILocation(line: 253, column: 20, scope: !2897)
!3088 = !DILocation(line: 254, column: 18, scope: !2897)
!3089 = !DILocation(line: 255, column: 67, scope: !2897)
!3090 = !DILocation(line: 255, column: 74, scope: !2897)
!3091 = !DILocation(line: 255, column: 64, scope: !2897)
!3092 = !DILocation(line: 255, column: 56, scope: !2897)
!3093 = !DILocation(line: 256, column: 13, scope: !2897)
!3094 = !DILocation(line: 259, column: 20, scope: !2897)
!3095 = !DILocation(line: 260, column: 18, scope: !2897)
!3096 = !DILocation(line: 261, column: 67, scope: !2897)
!3097 = !DILocation(line: 261, column: 74, scope: !2897)
!3098 = !DILocation(line: 261, column: 64, scope: !2897)
!3099 = !DILocation(line: 261, column: 56, scope: !2897)
!3100 = !DILocation(line: 262, column: 13, scope: !2897)
!3101 = !DILocation(line: 265, column: 20, scope: !2897)
!3102 = !DILocation(line: 266, column: 18, scope: !2897)
!3103 = !DILocation(line: 267, column: 67, scope: !2897)
!3104 = !DILocation(line: 267, column: 74, scope: !2897)
!3105 = !DILocation(line: 267, column: 64, scope: !2897)
!3106 = !DILocation(line: 267, column: 56, scope: !2897)
!3107 = !DILocation(line: 268, column: 13, scope: !2897)
!3108 = !DILocation(line: 271, column: 20, scope: !2897)
!3109 = !DILocation(line: 272, column: 18, scope: !2897)
!3110 = !DILocation(line: 273, column: 67, scope: !2897)
!3111 = !DILocation(line: 273, column: 74, scope: !2897)
!3112 = !DILocation(line: 273, column: 64, scope: !2897)
!3113 = !DILocation(line: 273, column: 56, scope: !2897)
!3114 = !DILocation(line: 274, column: 13, scope: !2897)
!3115 = !DILocation(line: 278, column: 1, scope: !2885)
!3116 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1063, file: !1063, line: 47, type: !1295, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !3117)
!3117 = !{!3118}
!3118 = !DILocalVariable(name: "addr", arg: 1, scope: !3116, file: !1063, line: 47, type: !136)
!3119 = !DILocation(line: 0, scope: !3116)
!3120 = !DILocation(line: 49, column: 15, scope: !3116)
!3121 = !DILocation(line: 51, column: 5, scope: !3116)
!3122 = !{i64 2624}
!3123 = !DILocation(line: 52, column: 5, scope: !3116)
!3124 = !{i64 2651}
!3125 = !DILocation(line: 53, column: 1, scope: !3116)
!3126 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1063, file: !1063, line: 56, type: !3127, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !3129)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !7}
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "source", arg: 1, scope: !3126, file: !1063, line: 56, type: !7)
!3131 = !DILocation(line: 0, scope: !3126)
!3132 = !DILocation(line: 58, column: 16, scope: !3126)
!3133 = !DILocation(line: 59, column: 1, scope: !3126)
!3134 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1063, file: !1063, line: 61, type: !1264, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !3135)
!3135 = !{!3136}
!3136 = !DILocalVariable(name: "mask", scope: !3134, file: !1063, line: 63, type: !136)
!3137 = !DILocation(line: 470, column: 3, scope: !3138, inlinedAt: !3141)
!3138 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1263, file: !1263, line: 466, type: !1264, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !3139)
!3139 = !{!3140}
!3140 = !DILocalVariable(name: "result", scope: !3138, file: !1263, line: 468, type: !136)
!3141 = distinct !DILocation(line: 64, column: 5, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3134, file: !1063, line: 64, column: 5)
!3143 = !{i64 302171}
!3144 = !DILocation(line: 0, scope: !3138, inlinedAt: !3141)
!3145 = !DILocation(line: 0, scope: !3134)
!3146 = !DILocation(line: 330, column: 3, scope: !3147, inlinedAt: !3148)
!3147 = distinct !DISubprogram(name: "__disable_irq", scope: !1263, file: !1263, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !1232)
!3148 = distinct !DILocation(line: 64, column: 5, scope: !3142)
!3149 = !{i64 298835}
!3150 = !DILocation(line: 65, column: 5, scope: !3134)
!3151 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1063, file: !1063, line: 68, type: !1295, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !3152)
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "mask", arg: 1, scope: !3151, file: !1063, line: 68, type: !136)
!3154 = !DILocation(line: 0, scope: !3151)
!3155 = !DILocalVariable(name: "priMask", arg: 1, scope: !3156, file: !1263, line: 481, type: !136)
!3156 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1263, file: !1263, line: 481, type: !1295, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !3157)
!3157 = !{!3155}
!3158 = !DILocation(line: 0, scope: !3156, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 70, column: 5, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3151, file: !1063, line: 70, column: 5)
!3161 = !DILocation(line: 483, column: 3, scope: !3156, inlinedAt: !3159)
!3162 = !{i64 302489}
!3163 = !DILocation(line: 71, column: 1, scope: !3151)
!3164 = distinct !DISubprogram(name: "pinmux_config", scope: !1108, file: !1108, line: 54, type: !3165, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1107, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!439, !1213, !136}
!3167 = !{!3168, !3169, !3170}
!3168 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !3164, file: !1108, line: 54, type: !1213)
!3169 = !DILocalVariable(name: "function", arg: 2, scope: !3164, file: !1108, line: 54, type: !136)
!3170 = !DILocalVariable(name: "ePadIndex", scope: !3164, file: !1108, line: 56, type: !2889)
!3171 = !DILocation(line: 0, scope: !3164)
!3172 = !DILocation(line: 60, column: 5, scope: !3164)
!3173 = !DILocation(line: 205, column: 38, scope: !3164)
!3174 = !DILocation(line: 205, column: 5, scope: !3164)
!3175 = !DILocation(line: 207, column: 5, scope: !3164)
!3176 = !DILocation(line: 208, column: 1, scope: !3164)
!3177 = distinct !DISubprogram(name: "get_current_count", scope: !1142, file: !1142, line: 56, type: !1264, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !1232)
!3178 = !DILocation(line: 58, column: 12, scope: !3177)
!3179 = !DILocation(line: 58, column: 5, scope: !3177)
!3180 = distinct !DISubprogram(name: "delay_time", scope: !1142, file: !1142, line: 62, type: !2103, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3181)
!3181 = !{!3182, !3183, !3184}
!3182 = !DILocalVariable(name: "count", arg: 1, scope: !3180, file: !1142, line: 62, type: !114)
!3183 = !DILocalVariable(name: "end_count", scope: !3180, file: !1142, line: 64, type: !114)
!3184 = !DILocalVariable(name: "current", scope: !3180, file: !1142, line: 64, type: !114)
!3185 = !DILocation(line: 0, scope: !3180)
!3186 = !DILocation(line: 66, column: 17, scope: !3180)
!3187 = !DILocation(line: 66, column: 37, scope: !3180)
!3188 = !DILocation(line: 66, column: 45, scope: !3180)
!3189 = !DILocation(line: 67, column: 15, scope: !3180)
!3190 = !DILocation(line: 68, column: 12, scope: !3180)
!3191 = !DILocation(line: 68, column: 5, scope: !3180)
!3192 = !DILocation(line: 69, column: 19, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3180, file: !1142, line: 68, column: 45)
!3194 = distinct !{!3194, !3191, !3195}
!3195 = !DILocation(line: 70, column: 5, scope: !3180)
!3196 = !DILocation(line: 72, column: 1, scope: !3180)
!3197 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1142, file: !1142, line: 75, type: !2103, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3198)
!3198 = !{!3199, !3200, !3201}
!3199 = !DILocalVariable(name: "count", arg: 1, scope: !3197, file: !1142, line: 75, type: !114)
!3200 = !DILocalVariable(name: "end_count", scope: !3197, file: !1142, line: 77, type: !114)
!3201 = !DILocalVariable(name: "current", scope: !3197, file: !1142, line: 77, type: !114)
!3202 = !DILocation(line: 0, scope: !3197)
!3203 = !DILocation(line: 79, column: 17, scope: !3197)
!3204 = !DILocation(line: 79, column: 42, scope: !3197)
!3205 = !DILocation(line: 79, column: 50, scope: !3197)
!3206 = !DILocation(line: 80, column: 15, scope: !3197)
!3207 = !DILocation(line: 81, column: 12, scope: !3197)
!3208 = !DILocation(line: 81, column: 5, scope: !3197)
!3209 = !DILocation(line: 82, column: 19, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3197, file: !1142, line: 81, column: 45)
!3211 = distinct !{!3211, !3208, !3212}
!3212 = !DILocation(line: 83, column: 5, scope: !3197)
!3213 = !DILocation(line: 85, column: 1, scope: !3197)
!3214 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1142, file: !1142, line: 95, type: !1264, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !1232)
!3215 = !DILocation(line: 97, column: 13, scope: !3214)
!3216 = !DILocation(line: 97, column: 5, scope: !3214)
!3217 = distinct !DISubprogram(name: "delay_ms", scope: !1142, file: !1142, line: 107, type: !1295, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3218)
!3218 = !{!3219, !3220}
!3219 = !DILocalVariable(name: "ms", arg: 1, scope: !3217, file: !1142, line: 107, type: !136)
!3220 = !DILocalVariable(name: "count", scope: !3217, file: !1142, line: 109, type: !136)
!3221 = !DILocation(line: 0, scope: !3217)
!3222 = !DILocation(line: 111, column: 17, scope: !3217)
!3223 = !DILocation(line: 112, column: 17, scope: !3217)
!3224 = !DILocation(line: 112, column: 23, scope: !3217)
!3225 = !DILocation(line: 112, column: 11, scope: !3217)
!3226 = !DILocation(line: 113, column: 17, scope: !3217)
!3227 = !DILocation(line: 113, column: 23, scope: !3217)
!3228 = !DILocation(line: 113, column: 11, scope: !3217)
!3229 = !DILocation(line: 114, column: 17, scope: !3217)
!3230 = !DILocation(line: 114, column: 23, scope: !3217)
!3231 = !DILocation(line: 114, column: 11, scope: !3217)
!3232 = !DILocation(line: 115, column: 5, scope: !3217)
!3233 = !DILocation(line: 116, column: 1, scope: !3217)
!3234 = distinct !DISubprogram(name: "delay_us", scope: !1142, file: !1142, line: 120, type: !1295, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3235)
!3235 = !{!3236, !3237, !3238}
!3236 = !DILocalVariable(name: "us", arg: 1, scope: !3234, file: !1142, line: 120, type: !136)
!3237 = !DILocalVariable(name: "count", scope: !3234, file: !1142, line: 122, type: !136)
!3238 = !DILocalVariable(name: "ticks_per_us", scope: !3234, file: !1142, line: 123, type: !136)
!3239 = !DILocation(line: 0, scope: !3234)
!3240 = !DILocation(line: 125, column: 20, scope: !3234)
!3241 = !DILocation(line: 125, column: 39, scope: !3234)
!3242 = !DILocation(line: 126, column: 26, scope: !3234)
!3243 = !DILocation(line: 128, column: 5, scope: !3234)
!3244 = !DILocation(line: 129, column: 1, scope: !3234)
!3245 = distinct !DISubprogram(name: "drvTMR_init", scope: !1142, file: !1142, line: 133, type: !3246, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !136, !136, !126, !180}
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3245, file: !1142, line: 133, type: !136)
!3250 = !DILocalVariable(name: "countValue", arg: 2, scope: !3245, file: !1142, line: 133, type: !136)
!3251 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !3245, file: !1142, line: 133, type: !126)
!3252 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !3245, file: !1142, line: 133, type: !180)
!3253 = !DILocation(line: 0, scope: !3245)
!3254 = !DILocation(line: 136, column: 5, scope: !3245)
!3255 = !DILocation(line: 138, column: 18, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3245, file: !1142, line: 138, column: 9)
!3257 = !DILocation(line: 138, column: 9, scope: !3245)
!3258 = !DILocation(line: 139, column: 30, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3256, file: !1142, line: 138, column: 27)
!3260 = !DILocation(line: 141, column: 5, scope: !3259)
!3261 = !DILocation(line: 142, column: 30, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3256, file: !1142, line: 141, column: 12)
!3263 = !DILocation(line: 0, scope: !3256)
!3264 = !DILocation(line: 146, column: 5, scope: !3245)
!3265 = !DILocation(line: 147, column: 1, scope: !3245)
!3266 = distinct !DISubprogram(name: "TMR_Start", scope: !1142, file: !1142, line: 149, type: !1295, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3267)
!3267 = !{!3268}
!3268 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3266, file: !1142, line: 149, type: !136)
!3269 = !DILocation(line: 0, scope: !3266)
!3270 = !DILocation(line: 151, column: 5, scope: !3266)
!3271 = !DILocation(line: 152, column: 1, scope: !3266)
!3272 = distinct !DISubprogram(name: "TMR_Stop", scope: !1142, file: !1142, line: 154, type: !1295, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3273)
!3273 = !{!3274}
!3274 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3272, file: !1142, line: 154, type: !136)
!3275 = !DILocation(line: 0, scope: !3272)
!3276 = !DILocation(line: 156, column: 5, scope: !3272)
!3277 = !DILocation(line: 157, column: 1, scope: !3272)
!3278 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1142, file: !1142, line: 160, type: !181, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !1232)
!3279 = !DILocation(line: 162, column: 5, scope: !3278)
!3280 = !DILocation(line: 163, column: 1, scope: !3278)
!3281 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1142, file: !1142, line: 165, type: !181, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !1232)
!3282 = !DILocation(line: 167, column: 5, scope: !3281)
!3283 = !DILocation(line: 168, column: 1, scope: !3281)
!3284 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1142, file: !1142, line: 170, type: !1295, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1141, retainedNodes: !3285)
!3285 = !{!3286}
!3286 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3284, file: !1142, line: 170, type: !136)
!3287 = !DILocation(line: 0, scope: !3284)
!3288 = !DILocation(line: 172, column: 9, scope: !3284)
!3289 = !DILocation(line: 177, column: 5, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !1142, line: 175, column: 27)
!3291 = distinct !DILexicalBlock(scope: !3284, file: !1142, line: 175, column: 9)
!3292 = !DILocation(line: 178, column: 1, scope: !3284)
!3293 = distinct !DISubprogram(name: "top_xtal_init", scope: !225, file: !225, line: 52, type: !181, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3294)
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "u4RegVal", scope: !3293, file: !225, line: 54, type: !136)
!3296 = !DILocalVariable(name: "reg", scope: !3293, file: !225, line: 55, type: !859)
!3297 = !DILocation(line: 0, scope: !3293)
!3298 = !DILocation(line: 55, column: 25, scope: !3293)
!3299 = !DILocation(line: 56, column: 16, scope: !3293)
!3300 = !DILocation(line: 56, column: 23, scope: !3293)
!3301 = !DILocation(line: 58, column: 16, scope: !3293)
!3302 = !DILocation(line: 61, column: 5, scope: !3293)
!3303 = !DILocation(line: 59, column: 14, scope: !3293)
!3304 = !DILocation(line: 0, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3293, file: !225, line: 61, column: 18)
!3306 = !DILocation(line: 87, column: 38, scope: !3293)
!3307 = !DILocation(line: 88, column: 21, scope: !3293)
!3308 = !DILocation(line: 88, column: 19, scope: !3293)
!3309 = !DILocation(line: 89, column: 5, scope: !3293)
!3310 = !DILocation(line: 90, column: 17, scope: !3293)
!3311 = !DILocation(line: 90, column: 33, scope: !3293)
!3312 = !DILocation(line: 90, column: 5, scope: !3293)
!3313 = !DILocation(line: 91, column: 1, scope: !3293)
!3314 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !225, file: !225, line: 98, type: !1264, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !1232)
!3315 = !DILocation(line: 100, column: 12, scope: !3314)
!3316 = !DILocation(line: 100, column: 5, scope: !3314)
!3317 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !225, file: !225, line: 108, type: !1264, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !1232)
!3318 = !DILocation(line: 110, column: 12, scope: !3317)
!3319 = !DILocation(line: 110, column: 5, scope: !3317)
!3320 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !225, file: !225, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3321)
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "reg", scope: !3320, file: !225, line: 120, type: !230)
!3323 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3320, file: !225, line: 121, type: !229)
!3324 = !DILocation(line: 120, column: 5, scope: !3320)
!3325 = !DILocation(line: 120, column: 23, scope: !3320)
!3326 = !DILocation(line: 0, scope: !3320)
!3327 = !DILocation(line: 123, column: 11, scope: !3320)
!3328 = !DILocation(line: 123, column: 9, scope: !3320)
!3329 = !DILocation(line: 124, column: 12, scope: !3320)
!3330 = !DILocation(line: 124, column: 16, scope: !3320)
!3331 = !DILocation(line: 124, column: 39, scope: !3320)
!3332 = !DILocation(line: 124, column: 9, scope: !3320)
!3333 = !DILocation(line: 126, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3320, file: !225, line: 126, column: 9)
!3335 = !DILocation(line: 126, column: 13, scope: !3334)
!3336 = !DILocation(line: 126, column: 9, scope: !3320)
!3337 = !DILocation(line: 127, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3334, file: !225, line: 126, column: 47)
!3339 = !DILocation(line: 127, column: 13, scope: !3338)
!3340 = !DILocation(line: 128, column: 15, scope: !3338)
!3341 = !DILocation(line: 128, column: 19, scope: !3338)
!3342 = !DILocation(line: 128, column: 13, scope: !3338)
!3343 = !DILocation(line: 129, column: 15, scope: !3338)
!3344 = !DILocation(line: 129, column: 19, scope: !3338)
!3345 = !DILocation(line: 129, column: 13, scope: !3338)
!3346 = !DILocation(line: 130, column: 46, scope: !3338)
!3347 = !DILocation(line: 130, column: 9, scope: !3338)
!3348 = !DILocation(line: 132, column: 9, scope: !3338)
!3349 = !DILocation(line: 133, column: 19, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3338, file: !225, line: 132, column: 12)
!3351 = !DILocation(line: 133, column: 17, scope: !3350)
!3352 = !DILocation(line: 134, column: 19, scope: !3350)
!3353 = !DILocation(line: 134, column: 23, scope: !3350)
!3354 = !DILocation(line: 134, column: 17, scope: !3350)
!3355 = !DILocation(line: 135, column: 19, scope: !3338)
!3356 = !DILocation(line: 135, column: 18, scope: !3338)
!3357 = !DILocation(line: 135, column: 9, scope: !3350)
!3358 = distinct !{!3358, !3348, !3359}
!3359 = !DILocation(line: 135, column: 22, scope: !3338)
!3360 = !DILocation(line: 138, column: 1, scope: !3320)
!3361 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !3362, file: !3362, line: 176, type: !3363, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3367)
!3362 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!136, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "Register", arg: 1, scope: !3361, file: !3362, line: 176, type: !3365)
!3369 = !DILocation(line: 0, scope: !3361)
!3370 = !DILocation(line: 178, column: 13, scope: !3361)
!3371 = !DILocation(line: 178, column: 12, scope: !3361)
!3372 = !DILocation(line: 178, column: 5, scope: !3361)
!3373 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !3362, file: !3362, line: 171, type: !3374, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3365, !136}
!3376 = !{!3377, !3378}
!3377 = !DILocalVariable(name: "Register", arg: 1, scope: !3373, file: !3362, line: 171, type: !3365)
!3378 = !DILocalVariable(name: "Value", arg: 2, scope: !3373, file: !3362, line: 171, type: !136)
!3379 = !DILocation(line: 0, scope: !3373)
!3380 = !DILocation(line: 173, column: 6, scope: !3373)
!3381 = !DILocation(line: 173, column: 36, scope: !3373)
!3382 = !DILocation(line: 174, column: 1, scope: !3373)
!3383 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !225, file: !225, line: 145, type: !1237, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3384)
!3384 = !{!3385, !3386, !3387}
!3385 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3383, file: !225, line: 145, type: !128)
!3386 = !DILocalVariable(name: "reg", scope: !3383, file: !225, line: 147, type: !230)
!3387 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3383, file: !225, line: 148, type: !229)
!3388 = !DILocation(line: 0, scope: !3383)
!3389 = !DILocation(line: 147, column: 5, scope: !3383)
!3390 = !DILocation(line: 147, column: 23, scope: !3383)
!3391 = !DILocation(line: 150, column: 11, scope: !3383)
!3392 = !DILocation(line: 150, column: 9, scope: !3383)
!3393 = !DILocation(line: 151, column: 12, scope: !3383)
!3394 = !DILocation(line: 151, column: 16, scope: !3383)
!3395 = !DILocation(line: 151, column: 39, scope: !3383)
!3396 = !DILocation(line: 151, column: 9, scope: !3383)
!3397 = !DILocation(line: 153, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3383, file: !225, line: 153, column: 9)
!3399 = !DILocation(line: 153, column: 13, scope: !3398)
!3400 = !DILocation(line: 153, column: 9, scope: !3383)
!3401 = !DILocation(line: 154, column: 15, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !225, line: 153, column: 45)
!3403 = !DILocation(line: 154, column: 13, scope: !3402)
!3404 = !DILocation(line: 155, column: 15, scope: !3402)
!3405 = !DILocation(line: 155, column: 19, scope: !3402)
!3406 = !DILocation(line: 155, column: 13, scope: !3402)
!3407 = !DILocation(line: 156, column: 15, scope: !3402)
!3408 = !DILocation(line: 156, column: 19, scope: !3402)
!3409 = !DILocation(line: 156, column: 13, scope: !3402)
!3410 = !DILocation(line: 157, column: 15, scope: !3402)
!3411 = !DILocation(line: 157, column: 13, scope: !3402)
!3412 = !DILocation(line: 158, column: 46, scope: !3402)
!3413 = !DILocation(line: 158, column: 9, scope: !3402)
!3414 = !DILocation(line: 160, column: 15, scope: !3402)
!3415 = !DILocation(line: 160, column: 13, scope: !3402)
!3416 = !DILocation(line: 161, column: 15, scope: !3402)
!3417 = !DILocation(line: 161, column: 19, scope: !3402)
!3418 = !DILocation(line: 161, column: 13, scope: !3402)
!3419 = !DILocation(line: 162, column: 15, scope: !3402)
!3420 = !DILocation(line: 162, column: 19, scope: !3402)
!3421 = !DILocation(line: 162, column: 13, scope: !3402)
!3422 = !DILocation(line: 163, column: 15, scope: !3402)
!3423 = !DILocation(line: 163, column: 19, scope: !3402)
!3424 = !DILocation(line: 163, column: 13, scope: !3402)
!3425 = !DILocation(line: 164, column: 46, scope: !3402)
!3426 = !DILocation(line: 164, column: 9, scope: !3402)
!3427 = !DILocation(line: 166, column: 9, scope: !3402)
!3428 = !DILocation(line: 167, column: 19, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3402, file: !225, line: 166, column: 12)
!3430 = !DILocation(line: 167, column: 17, scope: !3429)
!3431 = !DILocation(line: 168, column: 19, scope: !3429)
!3432 = !DILocation(line: 168, column: 23, scope: !3429)
!3433 = !DILocation(line: 168, column: 17, scope: !3429)
!3434 = !DILocation(line: 169, column: 19, scope: !3402)
!3435 = !DILocation(line: 169, column: 18, scope: !3402)
!3436 = !DILocation(line: 169, column: 9, scope: !3429)
!3437 = distinct !{!3437, !3427, !3438}
!3438 = !DILocation(line: 169, column: 22, scope: !3402)
!3439 = !DILocation(line: 171, column: 15, scope: !3402)
!3440 = !DILocation(line: 171, column: 13, scope: !3402)
!3441 = !DILocation(line: 172, column: 15, scope: !3402)
!3442 = !DILocation(line: 172, column: 19, scope: !3402)
!3443 = !DILocation(line: 172, column: 13, scope: !3402)
!3444 = !DILocation(line: 173, column: 15, scope: !3402)
!3445 = !DILocation(line: 173, column: 19, scope: !3402)
!3446 = !DILocation(line: 173, column: 13, scope: !3402)
!3447 = !DILocation(line: 174, column: 5, scope: !3402)
!3448 = !DILocation(line: 176, column: 11, scope: !3383)
!3449 = !DILocation(line: 176, column: 9, scope: !3383)
!3450 = !DILocation(line: 177, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3383, file: !225, line: 177, column: 9)
!3452 = !DILocation(line: 0, scope: !3451)
!3453 = !DILocation(line: 177, column: 9, scope: !3383)
!3454 = !DILocation(line: 178, column: 19, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3451, file: !225, line: 177, column: 17)
!3456 = !DILocation(line: 178, column: 13, scope: !3455)
!3457 = !DILocation(line: 179, column: 5, scope: !3455)
!3458 = !DILocation(line: 180, column: 13, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3451, file: !225, line: 179, column: 12)
!3460 = !DILocation(line: 182, column: 42, scope: !3383)
!3461 = !DILocation(line: 182, column: 5, scope: !3383)
!3462 = !DILocation(line: 184, column: 1, scope: !3383)
!3463 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !225, file: !225, line: 191, type: !181, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3464)
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "reg", scope: !3463, file: !225, line: 193, type: !230)
!3466 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3463, file: !225, line: 194, type: !229)
!3467 = !DILocation(line: 193, column: 5, scope: !3463)
!3468 = !DILocation(line: 193, column: 23, scope: !3463)
!3469 = !DILocation(line: 0, scope: !3463)
!3470 = !DILocation(line: 196, column: 11, scope: !3463)
!3471 = !DILocation(line: 196, column: 9, scope: !3463)
!3472 = !DILocation(line: 197, column: 11, scope: !3463)
!3473 = !DILocation(line: 197, column: 15, scope: !3463)
!3474 = !DILocation(line: 197, column: 9, scope: !3463)
!3475 = !DILocation(line: 198, column: 11, scope: !3463)
!3476 = !DILocation(line: 198, column: 15, scope: !3463)
!3477 = !DILocation(line: 198, column: 9, scope: !3463)
!3478 = !DILocation(line: 199, column: 11, scope: !3463)
!3479 = !DILocation(line: 199, column: 9, scope: !3463)
!3480 = !DILocation(line: 200, column: 42, scope: !3463)
!3481 = !DILocation(line: 200, column: 5, scope: !3463)
!3482 = !DILocation(line: 202, column: 11, scope: !3463)
!3483 = !DILocation(line: 202, column: 9, scope: !3463)
!3484 = !DILocation(line: 203, column: 11, scope: !3463)
!3485 = !DILocation(line: 203, column: 15, scope: !3463)
!3486 = !DILocation(line: 203, column: 9, scope: !3463)
!3487 = !DILocation(line: 204, column: 11, scope: !3463)
!3488 = !DILocation(line: 204, column: 15, scope: !3463)
!3489 = !DILocation(line: 204, column: 9, scope: !3463)
!3490 = !DILocation(line: 205, column: 11, scope: !3463)
!3491 = !DILocation(line: 205, column: 9, scope: !3463)
!3492 = !DILocation(line: 206, column: 42, scope: !3463)
!3493 = !DILocation(line: 206, column: 5, scope: !3463)
!3494 = !DILocation(line: 209, column: 1, scope: !3463)
!3495 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !225, file: !225, line: 216, type: !181, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3496)
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "reg", scope: !3495, file: !225, line: 218, type: !230)
!3498 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3495, file: !225, line: 219, type: !229)
!3499 = !DILocation(line: 218, column: 5, scope: !3495)
!3500 = !DILocation(line: 218, column: 23, scope: !3495)
!3501 = !DILocation(line: 0, scope: !3495)
!3502 = !DILocation(line: 222, column: 11, scope: !3495)
!3503 = !DILocation(line: 222, column: 9, scope: !3495)
!3504 = !DILocation(line: 223, column: 11, scope: !3495)
!3505 = !DILocation(line: 223, column: 15, scope: !3495)
!3506 = !DILocation(line: 223, column: 9, scope: !3495)
!3507 = !DILocation(line: 224, column: 11, scope: !3495)
!3508 = !DILocation(line: 224, column: 9, scope: !3495)
!3509 = !DILocation(line: 225, column: 39, scope: !3495)
!3510 = !DILocation(line: 225, column: 5, scope: !3495)
!3511 = !DILocation(line: 228, column: 11, scope: !3495)
!3512 = !DILocation(line: 228, column: 9, scope: !3495)
!3513 = !DILocation(line: 229, column: 11, scope: !3495)
!3514 = !DILocation(line: 229, column: 15, scope: !3495)
!3515 = !DILocation(line: 229, column: 9, scope: !3495)
!3516 = !DILocation(line: 230, column: 11, scope: !3495)
!3517 = !DILocation(line: 230, column: 9, scope: !3495)
!3518 = !DILocation(line: 231, column: 39, scope: !3495)
!3519 = !DILocation(line: 231, column: 5, scope: !3495)
!3520 = !DILocation(line: 233, column: 5, scope: !3495)
!3521 = !DILocation(line: 233, column: 12, scope: !3495)
!3522 = !DILocation(line: 233, column: 19, scope: !3495)
!3523 = !DILocation(line: 233, column: 16, scope: !3495)
!3524 = distinct !{!3524, !3520, !3525}
!3525 = !DILocation(line: 233, column: 52, scope: !3495)
!3526 = !DILocation(line: 235, column: 21, scope: !3495)
!3527 = !DILocation(line: 235, column: 19, scope: !3495)
!3528 = !DILocation(line: 236, column: 5, scope: !3495)
!3529 = !DILocation(line: 237, column: 17, scope: !3495)
!3530 = !DILocation(line: 237, column: 33, scope: !3495)
!3531 = !DILocation(line: 237, column: 5, scope: !3495)
!3532 = !DILocation(line: 239, column: 1, scope: !3495)
!3533 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !225, file: !225, line: 246, type: !181, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3534)
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "reg", scope: !3533, file: !225, line: 248, type: !230)
!3536 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3533, file: !225, line: 249, type: !229)
!3537 = !DILocation(line: 248, column: 5, scope: !3533)
!3538 = !DILocation(line: 248, column: 23, scope: !3533)
!3539 = !DILocation(line: 0, scope: !3533)
!3540 = !DILocation(line: 252, column: 5, scope: !3533)
!3541 = !DILocation(line: 255, column: 11, scope: !3533)
!3542 = !DILocation(line: 255, column: 9, scope: !3533)
!3543 = !DILocation(line: 256, column: 11, scope: !3533)
!3544 = !DILocation(line: 256, column: 15, scope: !3533)
!3545 = !DILocation(line: 256, column: 9, scope: !3533)
!3546 = !DILocation(line: 257, column: 11, scope: !3533)
!3547 = !DILocation(line: 257, column: 15, scope: !3533)
!3548 = !DILocation(line: 257, column: 9, scope: !3533)
!3549 = !DILocation(line: 258, column: 39, scope: !3533)
!3550 = !DILocation(line: 258, column: 5, scope: !3533)
!3551 = !DILocation(line: 260, column: 5, scope: !3533)
!3552 = !DILocation(line: 260, column: 12, scope: !3533)
!3553 = !DILocation(line: 260, column: 19, scope: !3533)
!3554 = !DILocation(line: 260, column: 16, scope: !3533)
!3555 = distinct !{!3555, !3551, !3556}
!3556 = !DILocation(line: 260, column: 52, scope: !3533)
!3557 = !DILocation(line: 263, column: 11, scope: !3533)
!3558 = !DILocation(line: 263, column: 9, scope: !3533)
!3559 = !DILocation(line: 264, column: 11, scope: !3533)
!3560 = !DILocation(line: 264, column: 15, scope: !3533)
!3561 = !DILocation(line: 264, column: 9, scope: !3533)
!3562 = !DILocation(line: 265, column: 11, scope: !3533)
!3563 = !DILocation(line: 265, column: 15, scope: !3533)
!3564 = !DILocation(line: 265, column: 9, scope: !3533)
!3565 = !DILocation(line: 266, column: 39, scope: !3533)
!3566 = !DILocation(line: 266, column: 5, scope: !3533)
!3567 = !DILocation(line: 269, column: 11, scope: !3533)
!3568 = !DILocation(line: 269, column: 9, scope: !3533)
!3569 = !DILocation(line: 270, column: 11, scope: !3533)
!3570 = !DILocation(line: 270, column: 15, scope: !3533)
!3571 = !DILocation(line: 270, column: 9, scope: !3533)
!3572 = !DILocation(line: 271, column: 11, scope: !3533)
!3573 = !DILocation(line: 271, column: 15, scope: !3533)
!3574 = !DILocation(line: 271, column: 9, scope: !3533)
!3575 = !DILocation(line: 272, column: 39, scope: !3533)
!3576 = !DILocation(line: 272, column: 5, scope: !3533)
!3577 = !DILocation(line: 273, column: 19, scope: !3533)
!3578 = !DILocation(line: 274, column: 5, scope: !3533)
!3579 = !DILocation(line: 275, column: 17, scope: !3533)
!3580 = !DILocation(line: 275, column: 33, scope: !3533)
!3581 = !DILocation(line: 275, column: 5, scope: !3533)
!3582 = !DILocation(line: 277, column: 1, scope: !3533)
!3583 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !225, file: !225, line: 284, type: !181, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3584)
!3584 = !{!3585, !3586}
!3585 = !DILocalVariable(name: "reg", scope: !3583, file: !225, line: 286, type: !230)
!3586 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3583, file: !225, line: 287, type: !229)
!3587 = !DILocation(line: 286, column: 5, scope: !3583)
!3588 = !DILocation(line: 286, column: 23, scope: !3583)
!3589 = !DILocation(line: 0, scope: !3583)
!3590 = !DILocation(line: 290, column: 5, scope: !3583)
!3591 = !DILocation(line: 293, column: 11, scope: !3583)
!3592 = !DILocation(line: 293, column: 9, scope: !3583)
!3593 = !DILocation(line: 294, column: 11, scope: !3583)
!3594 = !DILocation(line: 294, column: 15, scope: !3583)
!3595 = !DILocation(line: 294, column: 9, scope: !3583)
!3596 = !DILocation(line: 295, column: 11, scope: !3583)
!3597 = !DILocation(line: 295, column: 15, scope: !3583)
!3598 = !DILocation(line: 295, column: 9, scope: !3583)
!3599 = !DILocation(line: 296, column: 39, scope: !3583)
!3600 = !DILocation(line: 296, column: 5, scope: !3583)
!3601 = !DILocation(line: 298, column: 5, scope: !3583)
!3602 = !DILocation(line: 298, column: 12, scope: !3583)
!3603 = !DILocation(line: 298, column: 19, scope: !3583)
!3604 = !DILocation(line: 298, column: 16, scope: !3583)
!3605 = distinct !{!3605, !3601, !3606}
!3606 = !DILocation(line: 298, column: 52, scope: !3583)
!3607 = !DILocation(line: 301, column: 11, scope: !3583)
!3608 = !DILocation(line: 301, column: 9, scope: !3583)
!3609 = !DILocation(line: 302, column: 11, scope: !3583)
!3610 = !DILocation(line: 302, column: 15, scope: !3583)
!3611 = !DILocation(line: 302, column: 9, scope: !3583)
!3612 = !DILocation(line: 303, column: 11, scope: !3583)
!3613 = !DILocation(line: 303, column: 15, scope: !3583)
!3614 = !DILocation(line: 303, column: 9, scope: !3583)
!3615 = !DILocation(line: 304, column: 39, scope: !3583)
!3616 = !DILocation(line: 304, column: 5, scope: !3583)
!3617 = !DILocation(line: 307, column: 11, scope: !3583)
!3618 = !DILocation(line: 307, column: 9, scope: !3583)
!3619 = !DILocation(line: 308, column: 11, scope: !3583)
!3620 = !DILocation(line: 308, column: 15, scope: !3583)
!3621 = !DILocation(line: 308, column: 9, scope: !3583)
!3622 = !DILocation(line: 309, column: 11, scope: !3583)
!3623 = !DILocation(line: 309, column: 15, scope: !3583)
!3624 = !DILocation(line: 309, column: 9, scope: !3583)
!3625 = !DILocation(line: 310, column: 39, scope: !3583)
!3626 = !DILocation(line: 310, column: 5, scope: !3583)
!3627 = !DILocation(line: 311, column: 19, scope: !3583)
!3628 = !DILocation(line: 312, column: 5, scope: !3583)
!3629 = !DILocation(line: 313, column: 17, scope: !3583)
!3630 = !DILocation(line: 313, column: 33, scope: !3583)
!3631 = !DILocation(line: 313, column: 5, scope: !3583)
!3632 = !DILocation(line: 315, column: 1, scope: !3583)
!3633 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !225, file: !225, line: 323, type: !181, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3634)
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "reg", scope: !3633, file: !225, line: 325, type: !230)
!3636 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3633, file: !225, line: 326, type: !229)
!3637 = !DILocation(line: 325, column: 5, scope: !3633)
!3638 = !DILocation(line: 325, column: 23, scope: !3633)
!3639 = !DILocation(line: 0, scope: !3633)
!3640 = !DILocation(line: 329, column: 5, scope: !3633)
!3641 = !DILocation(line: 332, column: 11, scope: !3633)
!3642 = !DILocation(line: 332, column: 9, scope: !3633)
!3643 = !DILocation(line: 333, column: 11, scope: !3633)
!3644 = !DILocation(line: 333, column: 15, scope: !3633)
!3645 = !DILocation(line: 333, column: 9, scope: !3633)
!3646 = !DILocation(line: 334, column: 11, scope: !3633)
!3647 = !DILocation(line: 334, column: 9, scope: !3633)
!3648 = !DILocation(line: 335, column: 39, scope: !3633)
!3649 = !DILocation(line: 335, column: 5, scope: !3633)
!3650 = !DILocation(line: 337, column: 5, scope: !3633)
!3651 = !DILocation(line: 337, column: 12, scope: !3633)
!3652 = !DILocation(line: 337, column: 19, scope: !3633)
!3653 = !DILocation(line: 337, column: 16, scope: !3633)
!3654 = distinct !{!3654, !3650, !3655}
!3655 = !DILocation(line: 337, column: 52, scope: !3633)
!3656 = !DILocation(line: 340, column: 11, scope: !3633)
!3657 = !DILocation(line: 340, column: 9, scope: !3633)
!3658 = !DILocation(line: 341, column: 11, scope: !3633)
!3659 = !DILocation(line: 341, column: 15, scope: !3633)
!3660 = !DILocation(line: 341, column: 9, scope: !3633)
!3661 = !DILocation(line: 342, column: 11, scope: !3633)
!3662 = !DILocation(line: 342, column: 15, scope: !3633)
!3663 = !DILocation(line: 342, column: 9, scope: !3633)
!3664 = !DILocation(line: 343, column: 39, scope: !3633)
!3665 = !DILocation(line: 343, column: 5, scope: !3633)
!3666 = !DILocation(line: 344, column: 19, scope: !3633)
!3667 = !DILocation(line: 345, column: 5, scope: !3633)
!3668 = !DILocation(line: 346, column: 17, scope: !3633)
!3669 = !DILocation(line: 346, column: 33, scope: !3633)
!3670 = !DILocation(line: 346, column: 5, scope: !3633)
!3671 = !DILocation(line: 348, column: 1, scope: !3633)
!3672 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !225, file: !225, line: 353, type: !181, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !224, retainedNodes: !3673)
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "reg", scope: !3672, file: !225, line: 355, type: !218)
!3675 = !DILocalVariable(name: "pTopCfgHclk", scope: !3672, file: !225, line: 356, type: !231)
!3676 = !DILocation(line: 355, column: 5, scope: !3672)
!3677 = !DILocation(line: 355, column: 21, scope: !3672)
!3678 = !DILocation(line: 0, scope: !3672)
!3679 = !DILocation(line: 358, column: 11, scope: !3672)
!3680 = !DILocation(line: 358, column: 9, scope: !3672)
!3681 = !DILocation(line: 359, column: 11, scope: !3672)
!3682 = !DILocation(line: 359, column: 15, scope: !3672)
!3683 = !DILocation(line: 359, column: 9, scope: !3672)
!3684 = !DILocation(line: 360, column: 11, scope: !3672)
!3685 = !DILocation(line: 360, column: 9, scope: !3672)
!3686 = !DILocation(line: 361, column: 37, scope: !3672)
!3687 = !DILocation(line: 361, column: 5, scope: !3672)
!3688 = !DILocation(line: 362, column: 1, scope: !3672)
!3689 = distinct !DISubprogram(name: "getc", scope: !238, file: !238, line: 68, type: !3690, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!53}
!3692 = !{!3693}
!3693 = !DILocalVariable(name: "rc", scope: !3689, file: !238, line: 71, type: !53)
!3694 = !DILocation(line: 71, column: 14, scope: !3689)
!3695 = !DILocation(line: 0, scope: !3689)
!3696 = !DILocation(line: 72, column: 5, scope: !3689)
!3697 = distinct !DISubprogram(name: "getc_nowait", scope: !238, file: !238, line: 80, type: !3690, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3698)
!3698 = !{!3699}
!3699 = !DILocalVariable(name: "c", scope: !3697, file: !238, line: 82, type: !632)
!3700 = !DILocation(line: 84, column: 9, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3697, file: !238, line: 84, column: 9)
!3702 = !DILocation(line: 84, column: 40, scope: !3701)
!3703 = !DILocation(line: 84, column: 9, scope: !3697)
!3704 = !DILocation(line: 85, column: 13, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3701, file: !238, line: 84, column: 47)
!3706 = !DILocation(line: 86, column: 16, scope: !3705)
!3707 = !DILocation(line: 0, scope: !3697)
!3708 = !DILocation(line: 86, column: 9, scope: !3705)
!3709 = !DILocation(line: 0, scope: !3701)
!3710 = !DILocation(line: 90, column: 1, scope: !3697)
!3711 = distinct !DISubprogram(name: "uart_output_char", scope: !238, file: !238, line: 93, type: !3712, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3715)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3714, !132}
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !241, line: 75, baseType: !240)
!3715 = !{!3716, !3717, !3718}
!3716 = !DILocalVariable(name: "port_no", arg: 1, scope: !3711, file: !238, line: 93, type: !3714)
!3717 = !DILocalVariable(name: "c", arg: 2, scope: !3711, file: !238, line: 93, type: !132)
!3718 = !DILocalVariable(name: "base", scope: !3711, file: !238, line: 95, type: !7)
!3719 = !DILocation(line: 0, scope: !3711)
!3720 = !DILocation(line: 95, column: 25, scope: !3711)
!3721 = !DILocation(line: 97, column: 5, scope: !3711)
!3722 = !DILocation(line: 97, column: 14, scope: !3711)
!3723 = !DILocation(line: 97, column: 42, scope: !3711)
!3724 = !DILocation(line: 97, column: 12, scope: !3711)
!3725 = distinct !{!3725, !3721, !3726}
!3726 = !DILocation(line: 98, column: 9, scope: !3711)
!3727 = !DILocation(line: 99, column: 35, scope: !3711)
!3728 = !DILocation(line: 99, column: 5, scope: !3711)
!3729 = !DILocation(line: 99, column: 33, scope: !3711)
!3730 = !DILocation(line: 102, column: 1, scope: !3711)
!3731 = distinct !DISubprogram(name: "uart_input_char", scope: !238, file: !238, line: 106, type: !3732, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3734)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!128, !3714}
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "port_no", arg: 1, scope: !3731, file: !238, line: 106, type: !3714)
!3736 = !DILocalVariable(name: "base", scope: !3731, file: !238, line: 108, type: !7)
!3737 = !DILocalVariable(name: "c", scope: !3731, file: !238, line: 109, type: !632)
!3738 = !DILocation(line: 0, scope: !3731)
!3739 = !DILocation(line: 108, column: 25, scope: !3731)
!3740 = !DILocation(line: 111, column: 5, scope: !3731)
!3741 = !DILocation(line: 111, column: 14, scope: !3731)
!3742 = !DILocation(line: 111, column: 42, scope: !3731)
!3743 = !DILocation(line: 111, column: 12, scope: !3731)
!3744 = distinct !{!3744, !3740, !3745}
!3745 = !DILocation(line: 112, column: 9, scope: !3731)
!3746 = !DILocation(line: 114, column: 9, scope: !3731)
!3747 = !DILocation(line: 116, column: 5, scope: !3731)
!3748 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !238, file: !238, line: 120, type: !3749, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!136, !3714}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "port_no", arg: 1, scope: !3748, file: !238, line: 120, type: !3714)
!3753 = !DILocalVariable(name: "base", scope: !3748, file: !238, line: 122, type: !7)
!3754 = !DILocalVariable(name: "c", scope: !3748, file: !238, line: 123, type: !632)
!3755 = !DILocation(line: 0, scope: !3748)
!3756 = !DILocation(line: 122, column: 25, scope: !3748)
!3757 = !DILocation(line: 125, column: 9, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3748, file: !238, line: 125, column: 9)
!3759 = !DILocation(line: 125, column: 37, scope: !3758)
!3760 = !DILocation(line: 125, column: 9, scope: !3748)
!3761 = !DILocation(line: 126, column: 13, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !238, line: 125, column: 44)
!3763 = !DILocation(line: 127, column: 16, scope: !3762)
!3764 = !DILocation(line: 127, column: 9, scope: !3762)
!3765 = !DILocation(line: 0, scope: !3758)
!3766 = !DILocation(line: 131, column: 1, scope: !3748)
!3767 = distinct !DISubprogram(name: "halUART_HWInit", scope: !238, file: !238, line: 136, type: !3768, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3714}
!3770 = !{!3771}
!3771 = !DILocalVariable(name: "u_port", arg: 1, scope: !3767, file: !238, line: 136, type: !3714)
!3772 = !DILocation(line: 0, scope: !3767)
!3773 = !DILocation(line: 139, column: 5, scope: !3767)
!3774 = !DILocation(line: 140, column: 9, scope: !3767)
!3775 = !DILocation(line: 153, column: 5, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !238, line: 147, column: 38)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !238, line: 147, column: 16)
!3778 = distinct !DILexicalBlock(scope: !3767, file: !238, line: 140, column: 9)
!3779 = !DILocation(line: 0, scope: !3778)
!3780 = !DILocation(line: 155, column: 1, scope: !3767)
!3781 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !238, file: !238, line: 158, type: !3782, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3714, !136, !307, !307, !307}
!3784 = !{!3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3800, !3801}
!3785 = !DILocalVariable(name: "u_port", arg: 1, scope: !3781, file: !238, line: 158, type: !3714)
!3786 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3781, file: !238, line: 158, type: !136)
!3787 = !DILocalVariable(name: "databit", arg: 3, scope: !3781, file: !238, line: 158, type: !307)
!3788 = !DILocalVariable(name: "parity", arg: 4, scope: !3781, file: !238, line: 158, type: !307)
!3789 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3781, file: !238, line: 158, type: !307)
!3790 = !DILocalVariable(name: "control_word", scope: !3781, file: !238, line: 160, type: !307)
!3791 = !DILocalVariable(name: "UART_BASE", scope: !3781, file: !238, line: 161, type: !136)
!3792 = !DILocalVariable(name: "data", scope: !3781, file: !238, line: 162, type: !136)
!3793 = !DILocalVariable(name: "uart_lcr", scope: !3781, file: !238, line: 162, type: !136)
!3794 = !DILocalVariable(name: "high_speed_div", scope: !3781, file: !238, line: 162, type: !136)
!3795 = !DILocalVariable(name: "sample_count", scope: !3781, file: !238, line: 162, type: !136)
!3796 = !DILocalVariable(name: "sample_point", scope: !3781, file: !238, line: 162, type: !136)
!3797 = !DILocalVariable(name: "fraction", scope: !3781, file: !238, line: 162, type: !136)
!3798 = !DILocalVariable(name: "fraction_L_mapping", scope: !3781, file: !238, line: 163, type: !3799)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 176, elements: !190)
!3800 = !DILocalVariable(name: "fraction_M_mapping", scope: !3781, file: !238, line: 164, type: !3799)
!3801 = !DILocalVariable(name: "status", scope: !3781, file: !238, line: 165, type: !439)
!3802 = !DILocation(line: 0, scope: !3781)
!3803 = !DILocation(line: 163, column: 15, scope: !3781)
!3804 = !DILocation(line: 164, column: 15, scope: !3781)
!3805 = !DILocation(line: 166, column: 20, scope: !3781)
!3806 = !DILocation(line: 166, column: 18, scope: !3781)
!3807 = !DILocation(line: 168, column: 9, scope: !3781)
!3808 = !DILocation(line: 176, column: 5, scope: !3781)
!3809 = !DILocation(line: 176, column: 44, scope: !3781)
!3810 = !DILocation(line: 177, column: 16, scope: !3781)
!3811 = !DILocation(line: 178, column: 50, scope: !3781)
!3812 = !DILocation(line: 178, column: 38, scope: !3781)
!3813 = !DILocation(line: 179, column: 12, scope: !3781)
!3814 = !DILocation(line: 179, column: 25, scope: !3781)
!3815 = !DILocation(line: 180, column: 28, scope: !3781)
!3816 = !DILocation(line: 180, column: 34, scope: !3781)
!3817 = !DILocation(line: 182, column: 29, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3781, file: !238, line: 181, column: 5)
!3819 = !DILocation(line: 182, column: 46, scope: !3818)
!3820 = !DILocation(line: 183, column: 26, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3818, file: !238, line: 183, column: 13)
!3822 = !DILocation(line: 183, column: 13, scope: !3818)
!3823 = !DILocation(line: 192, column: 30, scope: !3781)
!3824 = !DILocation(line: 192, column: 35, scope: !3781)
!3825 = !DILocation(line: 192, column: 46, scope: !3781)
!3826 = !DILocation(line: 192, column: 74, scope: !3781)
!3827 = !DILocation(line: 192, column: 53, scope: !3781)
!3828 = !DILocation(line: 192, column: 80, scope: !3781)
!3829 = !DILocation(line: 193, column: 56, scope: !3781)
!3830 = !DILocation(line: 193, column: 5, scope: !3781)
!3831 = !DILocation(line: 193, column: 38, scope: !3781)
!3832 = !DILocation(line: 194, column: 57, scope: !3781)
!3833 = !DILocation(line: 194, column: 63, scope: !3781)
!3834 = !DILocation(line: 194, column: 5, scope: !3781)
!3835 = !DILocation(line: 194, column: 38, scope: !3781)
!3836 = !DILocation(line: 195, column: 5, scope: !3781)
!3837 = !DILocation(line: 195, column: 45, scope: !3781)
!3838 = !DILocation(line: 196, column: 5, scope: !3781)
!3839 = !DILocation(line: 196, column: 47, scope: !3781)
!3840 = !DILocation(line: 197, column: 46, scope: !3781)
!3841 = !DILocation(line: 197, column: 5, scope: !3781)
!3842 = !DILocation(line: 197, column: 44, scope: !3781)
!3843 = !DILocation(line: 198, column: 46, scope: !3781)
!3844 = !DILocation(line: 198, column: 5, scope: !3781)
!3845 = !DILocation(line: 198, column: 44, scope: !3781)
!3846 = !DILocation(line: 199, column: 38, scope: !3781)
!3847 = !DILocation(line: 200, column: 5, scope: !3781)
!3848 = !DILocation(line: 200, column: 38, scope: !3781)
!3849 = !DILocation(line: 202, column: 20, scope: !3781)
!3850 = !DILocation(line: 203, column: 18, scope: !3781)
!3851 = !DILocation(line: 205, column: 18, scope: !3781)
!3852 = !DILocation(line: 207, column: 18, scope: !3781)
!3853 = !DILocation(line: 208, column: 18, scope: !3781)
!3854 = !DILocation(line: 209, column: 5, scope: !3781)
!3855 = !DILocation(line: 213, column: 1, scope: !3781)
!3856 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !238, file: !238, line: 215, type: !3857, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3860)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !3714, !439, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!3860 = !{!3861, !3862, !3863}
!3861 = !DILocalVariable(name: "u_port", arg: 1, scope: !3856, file: !238, line: 215, type: !3714)
!3862 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3856, file: !238, line: 215, type: !439)
!3863 = !DILocalVariable(name: "length", arg: 3, scope: !3856, file: !238, line: 215, type: !3859)
!3864 = !DILocation(line: 0, scope: !3856)
!3865 = !DILocation(line: 217, column: 16, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3856, file: !238, line: 217, column: 9)
!3867 = !DILocation(line: 0, scope: !3866)
!3868 = !DILocation(line: 217, column: 9, scope: !3856)
!3869 = !DILocation(line: 218, column: 13, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !238, line: 217, column: 31)
!3871 = !DILocation(line: 219, column: 23, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !238, line: 218, column: 20)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !238, line: 218, column: 13)
!3874 = !DILocation(line: 220, column: 9, scope: !3872)
!3875 = !DILocation(line: 221, column: 23, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3873, file: !238, line: 220, column: 16)
!3877 = !DILocation(line: 221, column: 21, scope: !3876)
!3878 = !DILocation(line: 222, column: 24, scope: !3876)
!3879 = !DILocation(line: 222, column: 21, scope: !3876)
!3880 = !DILocation(line: 225, column: 13, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3866, file: !238, line: 224, column: 12)
!3882 = !DILocation(line: 226, column: 23, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !238, line: 225, column: 20)
!3884 = distinct !DILexicalBlock(scope: !3881, file: !238, line: 225, column: 13)
!3885 = !DILocation(line: 227, column: 9, scope: !3883)
!3886 = !DILocation(line: 228, column: 23, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3884, file: !238, line: 227, column: 16)
!3888 = !DILocation(line: 228, column: 21, scope: !3887)
!3889 = !DILocation(line: 229, column: 24, scope: !3887)
!3890 = !DILocation(line: 229, column: 21, scope: !3887)
!3891 = !DILocation(line: 233, column: 5, scope: !3856)
!3892 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !238, file: !238, line: 236, type: !3893, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !3714, !679, !136}
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DILocalVariable(name: "u_port", arg: 1, scope: !3892, file: !238, line: 236, type: !3714)
!3897 = !DILocalVariable(name: "data", arg: 2, scope: !3892, file: !238, line: 236, type: !679)
!3898 = !DILocalVariable(name: "length", arg: 3, scope: !3892, file: !238, line: 236, type: !136)
!3899 = !DILocalVariable(name: "idx", scope: !3892, file: !238, line: 238, type: !219)
!3900 = !DILocation(line: 0, scope: !3892)
!3901 = !DILocation(line: 239, column: 23, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !238, line: 239, column: 5)
!3903 = distinct !DILexicalBlock(scope: !3892, file: !238, line: 239, column: 5)
!3904 = !DILocation(line: 239, column: 5, scope: !3903)
!3905 = !DILocation(line: 240, column: 13, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3902, file: !238, line: 239, column: 40)
!3907 = !DILocation(line: 244, column: 9, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !238, line: 242, column: 42)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !238, line: 242, column: 20)
!3910 = distinct !DILexicalBlock(scope: !3906, file: !238, line: 240, column: 13)
!3911 = !DILocation(line: 0, scope: !3910)
!3912 = !DILocation(line: 239, column: 36, scope: !3902)
!3913 = distinct !{!3913, !3904, !3914}
!3914 = !DILocation(line: 246, column: 5, scope: !3903)
!3915 = !DILocation(line: 249, column: 1, scope: !3892)
!3916 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !238, file: !238, line: 251, type: !3917, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3921)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3714, !3919, !136}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!3921 = !{!3922, !3923, !3924, !3925}
!3922 = !DILocalVariable(name: "u_port", arg: 1, scope: !3916, file: !238, line: 251, type: !3714)
!3923 = !DILocalVariable(name: "data", arg: 2, scope: !3916, file: !238, line: 251, type: !3919)
!3924 = !DILocalVariable(name: "length", arg: 3, scope: !3916, file: !238, line: 251, type: !136)
!3925 = !DILocalVariable(name: "idx", scope: !3916, file: !238, line: 253, type: !219)
!3926 = !DILocation(line: 0, scope: !3916)
!3927 = !DILocation(line: 254, column: 23, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3929, file: !238, line: 254, column: 5)
!3929 = distinct !DILexicalBlock(scope: !3916, file: !238, line: 254, column: 5)
!3930 = !DILocation(line: 254, column: 5, scope: !3929)
!3931 = !DILocation(line: 255, column: 13, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3928, file: !238, line: 254, column: 40)
!3933 = !DILocation(line: 256, column: 61, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !238, line: 255, column: 35)
!3935 = distinct !DILexicalBlock(scope: !3932, file: !238, line: 255, column: 13)
!3936 = !DILocation(line: 256, column: 59, scope: !3934)
!3937 = !DILocation(line: 257, column: 9, scope: !3934)
!3938 = !DILocation(line: 258, column: 61, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !238, line: 257, column: 42)
!3940 = distinct !DILexicalBlock(scope: !3935, file: !238, line: 257, column: 20)
!3941 = !DILocation(line: 258, column: 59, scope: !3939)
!3942 = !DILocation(line: 259, column: 9, scope: !3939)
!3943 = !DILocation(line: 254, column: 36, scope: !3928)
!3944 = distinct !{!3944, !3930, !3945}
!3945 = !DILocation(line: 261, column: 5, scope: !3929)
!3946 = !DILocation(line: 264, column: 1, scope: !3916)
!3947 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !238, file: !238, line: 266, type: !3948, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{null, !3714, !679, !136, !136}
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DILocalVariable(name: "u_port", arg: 1, scope: !3947, file: !238, line: 266, type: !3714)
!3952 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3947, file: !238, line: 266, type: !679)
!3953 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3947, file: !238, line: 266, type: !136)
!3954 = !DILocalVariable(name: "threshold", arg: 4, scope: !3947, file: !238, line: 266, type: !136)
!3955 = !DILocation(line: 0, scope: !3947)
!3956 = !DILocation(line: 268, column: 9, scope: !3947)
!3957 = !DILocation(line: 274, column: 5, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !238, line: 271, column: 38)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !238, line: 271, column: 16)
!3960 = distinct !DILexicalBlock(scope: !3947, file: !238, line: 268, column: 9)
!3961 = !DILocation(line: 0, scope: !3960)
!3962 = !DILocation(line: 276, column: 1, scope: !3947)
!3963 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !238, file: !238, line: 278, type: !3964, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !3714, !679, !136, !136, !136, !136}
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972}
!3967 = !DILocalVariable(name: "u_port", arg: 1, scope: !3963, file: !238, line: 278, type: !3714)
!3968 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3963, file: !238, line: 278, type: !679)
!3969 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3963, file: !238, line: 278, type: !136)
!3970 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3963, file: !238, line: 278, type: !136)
!3971 = !DILocalVariable(name: "threshold", arg: 5, scope: !3963, file: !238, line: 278, type: !136)
!3972 = !DILocalVariable(name: "timeout", arg: 6, scope: !3963, file: !238, line: 278, type: !136)
!3973 = !DILocation(line: 0, scope: !3963)
!3974 = !DILocation(line: 280, column: 9, scope: !3963)
!3975 = !DILocation(line: 286, column: 5, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !238, line: 283, column: 38)
!3977 = distinct !DILexicalBlock(scope: !3978, file: !238, line: 283, column: 16)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !238, line: 280, column: 9)
!3979 = !DILocation(line: 0, scope: !3978)
!3980 = !DILocation(line: 288, column: 1, scope: !3963)
!3981 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !238, file: !238, line: 290, type: !3982, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3984)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3714, !179}
!3984 = !{!3985, !3986}
!3985 = !DILocalVariable(name: "u_port", arg: 1, scope: !3981, file: !238, line: 290, type: !3714)
!3986 = !DILocalVariable(name: "func", arg: 2, scope: !3981, file: !238, line: 290, type: !179)
!3987 = !DILocation(line: 0, scope: !3981)
!3988 = !DILocation(line: 292, column: 9, scope: !3981)
!3989 = !DILocation(line: 296, column: 5, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !238, line: 294, column: 38)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !238, line: 294, column: 16)
!3992 = distinct !DILexicalBlock(scope: !3981, file: !238, line: 292, column: 9)
!3993 = !DILocation(line: 0, scope: !3992)
!3994 = !DILocation(line: 298, column: 1, scope: !3981)
!3995 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !238, file: !238, line: 300, type: !3982, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !3996)
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "u_port", arg: 1, scope: !3995, file: !238, line: 300, type: !3714)
!3998 = !DILocalVariable(name: "func", arg: 2, scope: !3995, file: !238, line: 300, type: !179)
!3999 = !DILocation(line: 0, scope: !3995)
!4000 = !DILocation(line: 302, column: 9, scope: !3995)
!4001 = !DILocation(line: 306, column: 5, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !238, line: 304, column: 38)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !238, line: 304, column: 16)
!4004 = distinct !DILexicalBlock(scope: !3995, file: !238, line: 302, column: 9)
!4005 = !DILocation(line: 0, scope: !4004)
!4006 = !DILocation(line: 308, column: 1, scope: !3995)
!4007 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !238, file: !238, line: 310, type: !3768, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4008)
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DILocalVariable(name: "u_port", arg: 1, scope: !4007, file: !238, line: 310, type: !3714)
!4010 = !DILocalVariable(name: "base", scope: !4007, file: !238, line: 312, type: !7)
!4011 = !DILocalVariable(name: "EFR", scope: !4007, file: !238, line: 313, type: !307)
!4012 = !DILocalVariable(name: "LCR", scope: !4007, file: !238, line: 313, type: !307)
!4013 = !DILocation(line: 0, scope: !4007)
!4014 = !DILocation(line: 312, column: 25, scope: !4007)
!4015 = !DILocation(line: 315, column: 11, scope: !4007)
!4016 = !DILocation(line: 317, column: 33, scope: !4007)
!4017 = !DILocation(line: 318, column: 11, scope: !4007)
!4018 = !DILocation(line: 320, column: 35, scope: !4007)
!4019 = !DILocation(line: 320, column: 33, scope: !4007)
!4020 = !DILocation(line: 322, column: 5, scope: !4007)
!4021 = !DILocation(line: 322, column: 39, scope: !4007)
!4022 = !DILocation(line: 324, column: 33, scope: !4007)
!4023 = !DILocation(line: 325, column: 5, scope: !4007)
!4024 = !DILocation(line: 325, column: 33, scope: !4007)
!4025 = !DILocation(line: 327, column: 35, scope: !4007)
!4026 = !DILocation(line: 327, column: 33, scope: !4007)
!4027 = !DILocation(line: 328, column: 1, scope: !4007)
!4028 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !238, file: !238, line: 330, type: !4029, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3714, !128, !128, !128}
!4031 = !{!4032, !4033, !4034, !4035, !4036, !4037, !4038}
!4032 = !DILocalVariable(name: "u_port", arg: 1, scope: !4028, file: !238, line: 330, type: !3714)
!4033 = !DILocalVariable(name: "xon", arg: 2, scope: !4028, file: !238, line: 330, type: !128)
!4034 = !DILocalVariable(name: "xoff", arg: 3, scope: !4028, file: !238, line: 330, type: !128)
!4035 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4028, file: !238, line: 330, type: !128)
!4036 = !DILocalVariable(name: "base", scope: !4028, file: !238, line: 332, type: !7)
!4037 = !DILocalVariable(name: "EFR", scope: !4028, file: !238, line: 333, type: !307)
!4038 = !DILocalVariable(name: "LCR", scope: !4028, file: !238, line: 333, type: !307)
!4039 = !DILocation(line: 0, scope: !4028)
!4040 = !DILocation(line: 332, column: 25, scope: !4028)
!4041 = !DILocation(line: 335, column: 11, scope: !4028)
!4042 = !DILocation(line: 337, column: 33, scope: !4028)
!4043 = !DILocation(line: 338, column: 36, scope: !4028)
!4044 = !DILocation(line: 338, column: 5, scope: !4028)
!4045 = !DILocation(line: 338, column: 34, scope: !4028)
!4046 = !DILocation(line: 339, column: 5, scope: !4028)
!4047 = !DILocation(line: 339, column: 34, scope: !4028)
!4048 = !DILocation(line: 340, column: 37, scope: !4028)
!4049 = !DILocation(line: 340, column: 5, scope: !4028)
!4050 = !DILocation(line: 340, column: 35, scope: !4028)
!4051 = !DILocation(line: 341, column: 5, scope: !4028)
!4052 = !DILocation(line: 341, column: 35, scope: !4028)
!4053 = !DILocation(line: 343, column: 11, scope: !4028)
!4054 = !DILocation(line: 345, column: 35, scope: !4028)
!4055 = !DILocation(line: 345, column: 33, scope: !4028)
!4056 = !DILocation(line: 347, column: 35, scope: !4028)
!4057 = !DILocation(line: 347, column: 33, scope: !4028)
!4058 = !DILocation(line: 349, column: 43, scope: !4028)
!4059 = !DILocation(line: 349, column: 5, scope: !4028)
!4060 = !DILocation(line: 349, column: 41, scope: !4028)
!4061 = !DILocation(line: 350, column: 5, scope: !4028)
!4062 = !DILocation(line: 350, column: 39, scope: !4028)
!4063 = !DILocation(line: 351, column: 1, scope: !4028)
!4064 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !238, file: !238, line: 353, type: !3768, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4065)
!4065 = !{!4066, !4067, !4068}
!4066 = !DILocalVariable(name: "u_port", arg: 1, scope: !4064, file: !238, line: 353, type: !3714)
!4067 = !DILocalVariable(name: "base", scope: !4064, file: !238, line: 355, type: !7)
!4068 = !DILocalVariable(name: "LCR", scope: !4064, file: !238, line: 356, type: !307)
!4069 = !DILocation(line: 0, scope: !4064)
!4070 = !DILocation(line: 355, column: 25, scope: !4064)
!4071 = !DILocation(line: 358, column: 11, scope: !4064)
!4072 = !DILocation(line: 360, column: 33, scope: !4064)
!4073 = !DILocation(line: 362, column: 5, scope: !4064)
!4074 = !DILocation(line: 362, column: 33, scope: !4064)
!4075 = !DILocation(line: 364, column: 33, scope: !4064)
!4076 = !DILocation(line: 366, column: 35, scope: !4064)
!4077 = !DILocation(line: 366, column: 33, scope: !4064)
!4078 = !DILocation(line: 367, column: 1, scope: !4064)
!4079 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !238, file: !238, line: 436, type: !3768, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4080)
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "u_port", arg: 1, scope: !4079, file: !238, line: 436, type: !3714)
!4082 = !DILocalVariable(name: "base", scope: !4079, file: !238, line: 438, type: !7)
!4083 = !DILocation(line: 0, scope: !4079)
!4084 = !DILocation(line: 438, column: 25, scope: !4079)
!4085 = !DILocation(line: 440, column: 5, scope: !4079)
!4086 = !DILocation(line: 440, column: 33, scope: !4079)
!4087 = !DILocation(line: 441, column: 5, scope: !4079)
!4088 = !DILocation(line: 441, column: 33, scope: !4079)
!4089 = !DILocation(line: 442, column: 5, scope: !4079)
!4090 = !DILocation(line: 442, column: 34, scope: !4079)
!4091 = !DILocation(line: 443, column: 5, scope: !4079)
!4092 = !DILocation(line: 443, column: 35, scope: !4079)
!4093 = !DILocation(line: 445, column: 33, scope: !4079)
!4094 = !DILocation(line: 446, column: 5, scope: !4079)
!4095 = !DILocation(line: 446, column: 33, scope: !4079)
!4096 = !DILocation(line: 447, column: 5, scope: !4079)
!4097 = !DILocation(line: 447, column: 33, scope: !4079)
!4098 = !DILocation(line: 449, column: 33, scope: !4079)
!4099 = !DILocation(line: 450, column: 33, scope: !4079)
!4100 = !DILocation(line: 451, column: 33, scope: !4079)
!4101 = !DILocation(line: 453, column: 33, scope: !4079)
!4102 = !DILocation(line: 454, column: 33, scope: !4079)
!4103 = !DILocation(line: 455, column: 33, scope: !4079)
!4104 = !DILocation(line: 457, column: 33, scope: !4079)
!4105 = !DILocation(line: 458, column: 5, scope: !4079)
!4106 = !DILocation(line: 458, column: 33, scope: !4079)
!4107 = !DILocation(line: 459, column: 5, scope: !4079)
!4108 = !DILocation(line: 459, column: 39, scope: !4079)
!4109 = !DILocation(line: 460, column: 5, scope: !4079)
!4110 = !DILocation(line: 460, column: 40, scope: !4079)
!4111 = !DILocation(line: 461, column: 5, scope: !4079)
!4112 = !DILocation(line: 461, column: 42, scope: !4079)
!4113 = !DILocation(line: 462, column: 5, scope: !4079)
!4114 = !DILocation(line: 462, column: 42, scope: !4079)
!4115 = !DILocation(line: 463, column: 5, scope: !4079)
!4116 = !DILocation(line: 463, column: 35, scope: !4079)
!4117 = !DILocation(line: 464, column: 5, scope: !4079)
!4118 = !DILocation(line: 464, column: 41, scope: !4079)
!4119 = !DILocation(line: 465, column: 5, scope: !4079)
!4120 = !DILocation(line: 465, column: 39, scope: !4079)
!4121 = !DILocation(line: 466, column: 5, scope: !4079)
!4122 = !DILocation(line: 466, column: 38, scope: !4079)
!4123 = !DILocation(line: 467, column: 5, scope: !4079)
!4124 = !DILocation(line: 467, column: 42, scope: !4079)
!4125 = !DILocation(line: 468, column: 5, scope: !4079)
!4126 = !DILocation(line: 468, column: 45, scope: !4079)
!4127 = !DILocation(line: 469, column: 5, scope: !4079)
!4128 = !DILocation(line: 469, column: 39, scope: !4079)
!4129 = !DILocation(line: 470, column: 5, scope: !4079)
!4130 = !DILocation(line: 470, column: 39, scope: !4079)
!4131 = !DILocation(line: 471, column: 5, scope: !4079)
!4132 = !DILocation(line: 471, column: 42, scope: !4079)
!4133 = !DILocation(line: 472, column: 1, scope: !4079)
!4134 = distinct !DISubprogram(name: "uart_query_empty", scope: !238, file: !238, line: 474, type: !3768, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !4135)
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "u_port", arg: 1, scope: !4134, file: !238, line: 474, type: !3714)
!4137 = !DILocalVariable(name: "base", scope: !4134, file: !238, line: 476, type: !7)
!4138 = !DILocation(line: 0, scope: !4134)
!4139 = !DILocation(line: 476, column: 25, scope: !4134)
!4140 = !DILocation(line: 478, column: 5, scope: !4134)
!4141 = !DILocation(line: 478, column: 14, scope: !4134)
!4142 = !DILocation(line: 478, column: 42, scope: !4134)
!4143 = !DILocation(line: 478, column: 12, scope: !4134)
!4144 = distinct !{!4144, !4140, !4145}
!4145 = !DILocation(line: 478, column: 50, scope: !4134)
!4146 = !DILocation(line: 479, column: 1, scope: !4134)
!4147 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1145, file: !1145, line: 64, type: !4148, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !788, !53, !788, null}
!4150 = !{!4151, !4152, !4153, !4154, !4163}
!4151 = !DILocalVariable(name: "func", arg: 1, scope: !4147, file: !1145, line: 64, type: !788)
!4152 = !DILocalVariable(name: "line", arg: 2, scope: !4147, file: !1145, line: 64, type: !53)
!4153 = !DILocalVariable(name: "message", arg: 3, scope: !4147, file: !1145, line: 64, type: !788)
!4154 = !DILocalVariable(name: "ap", scope: !4147, file: !1145, line: 66, type: !4155)
!4155 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4156, line: 46, baseType: !4157)
!4156 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!4157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4158, line: 32, baseType: !4159)
!4158 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1145, baseType: !4160)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !4161)
!4161 = !{!4162}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !4160, file: !1145, line: 66, baseType: !161, size: 32)
!4163 = !DILocalVariable(name: "mask", scope: !4147, file: !1145, line: 68, type: !136)
!4164 = !DILocation(line: 0, scope: !4147)
!4165 = !DILocation(line: 66, column: 5, scope: !4147)
!4166 = !DILocation(line: 66, column: 13, scope: !4147)
!4167 = !DILocation(line: 68, column: 5, scope: !4147)
!4168 = !DILocation(line: 69, column: 5, scope: !4147)
!4169 = !DILocation(line: 71, column: 5, scope: !4147)
!4170 = !DILocation(line: 72, column: 5, scope: !4147)
!4171 = !DILocation(line: 73, column: 5, scope: !4147)
!4172 = !DILocation(line: 75, column: 37, scope: !4147)
!4173 = !DILocation(line: 75, column: 5, scope: !4147)
!4174 = !DILocation(line: 77, column: 1, scope: !4147)
!4175 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1145, file: !1145, line: 78, type: !4148, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4181}
!4177 = !DILocalVariable(name: "func", arg: 1, scope: !4175, file: !1145, line: 78, type: !788)
!4178 = !DILocalVariable(name: "line", arg: 2, scope: !4175, file: !1145, line: 78, type: !53)
!4179 = !DILocalVariable(name: "message", arg: 3, scope: !4175, file: !1145, line: 78, type: !788)
!4180 = !DILocalVariable(name: "ap", scope: !4175, file: !1145, line: 80, type: !4155)
!4181 = !DILocalVariable(name: "mask", scope: !4175, file: !1145, line: 82, type: !136)
!4182 = !DILocation(line: 0, scope: !4175)
!4183 = !DILocation(line: 80, column: 5, scope: !4175)
!4184 = !DILocation(line: 80, column: 13, scope: !4175)
!4185 = !DILocation(line: 82, column: 5, scope: !4175)
!4186 = !DILocation(line: 83, column: 5, scope: !4175)
!4187 = !DILocation(line: 85, column: 5, scope: !4175)
!4188 = !DILocation(line: 86, column: 5, scope: !4175)
!4189 = !DILocation(line: 87, column: 5, scope: !4175)
!4190 = !DILocation(line: 89, column: 37, scope: !4175)
!4191 = !DILocation(line: 89, column: 5, scope: !4175)
!4192 = !DILocation(line: 91, column: 1, scope: !4175)
!4193 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1145, file: !1145, line: 92, type: !4148, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199}
!4195 = !DILocalVariable(name: "func", arg: 1, scope: !4193, file: !1145, line: 92, type: !788)
!4196 = !DILocalVariable(name: "line", arg: 2, scope: !4193, file: !1145, line: 92, type: !53)
!4197 = !DILocalVariable(name: "message", arg: 3, scope: !4193, file: !1145, line: 92, type: !788)
!4198 = !DILocalVariable(name: "ap", scope: !4193, file: !1145, line: 94, type: !4155)
!4199 = !DILocalVariable(name: "mask", scope: !4193, file: !1145, line: 96, type: !136)
!4200 = !DILocation(line: 0, scope: !4193)
!4201 = !DILocation(line: 94, column: 5, scope: !4193)
!4202 = !DILocation(line: 94, column: 13, scope: !4193)
!4203 = !DILocation(line: 96, column: 5, scope: !4193)
!4204 = !DILocation(line: 97, column: 5, scope: !4193)
!4205 = !DILocation(line: 99, column: 5, scope: !4193)
!4206 = !DILocation(line: 100, column: 5, scope: !4193)
!4207 = !DILocation(line: 101, column: 5, scope: !4193)
!4208 = !DILocation(line: 103, column: 37, scope: !4193)
!4209 = !DILocation(line: 103, column: 5, scope: !4193)
!4210 = !DILocation(line: 105, column: 1, scope: !4193)
!4211 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1145, file: !1145, line: 106, type: !4148, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4212)
!4212 = !{!4213, !4214, !4215, !4216, !4217}
!4213 = !DILocalVariable(name: "func", arg: 1, scope: !4211, file: !1145, line: 106, type: !788)
!4214 = !DILocalVariable(name: "line", arg: 2, scope: !4211, file: !1145, line: 106, type: !53)
!4215 = !DILocalVariable(name: "message", arg: 3, scope: !4211, file: !1145, line: 106, type: !788)
!4216 = !DILocalVariable(name: "ap", scope: !4211, file: !1145, line: 108, type: !4155)
!4217 = !DILocalVariable(name: "mask", scope: !4211, file: !1145, line: 110, type: !136)
!4218 = !DILocation(line: 0, scope: !4211)
!4219 = !DILocation(line: 108, column: 5, scope: !4211)
!4220 = !DILocation(line: 108, column: 13, scope: !4211)
!4221 = !DILocation(line: 110, column: 5, scope: !4211)
!4222 = !DILocation(line: 111, column: 5, scope: !4211)
!4223 = !DILocation(line: 113, column: 5, scope: !4211)
!4224 = !DILocation(line: 114, column: 5, scope: !4211)
!4225 = !DILocation(line: 115, column: 5, scope: !4211)
!4226 = !DILocation(line: 117, column: 37, scope: !4211)
!4227 = !DILocation(line: 117, column: 5, scope: !4211)
!4228 = !DILocation(line: 119, column: 1, scope: !4211)
!4229 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1145, file: !1145, line: 121, type: !4230, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1144, retainedNodes: !4234)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !788, !53, !788, !4232, !53, null}
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 32)
!4233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4234 = !{!4235, !4236, !4237, !4238, !4239}
!4235 = !DILocalVariable(name: "func", arg: 1, scope: !4229, file: !1145, line: 121, type: !788)
!4236 = !DILocalVariable(name: "line", arg: 2, scope: !4229, file: !1145, line: 121, type: !53)
!4237 = !DILocalVariable(name: "message", arg: 3, scope: !4229, file: !1145, line: 121, type: !788)
!4238 = !DILocalVariable(name: "data", arg: 4, scope: !4229, file: !1145, line: 121, type: !4232)
!4239 = !DILocalVariable(name: "length", arg: 5, scope: !4229, file: !1145, line: 121, type: !53)
!4240 = !DILocation(line: 0, scope: !4229)
!4241 = !DILocation(line: 123, column: 1, scope: !4229)
!4242 = distinct !DISubprogram(name: "halADC_Get_ADC_Efuse", scope: !258, file: !258, line: 459, type: !181, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4243)
!4243 = !{!4244, !4245, !4246, !4247}
!4244 = !DILocalVariable(name: "efuse_offset", scope: !4242, file: !258, line: 461, type: !307)
!4245 = !DILocalVariable(name: "efuse_gain", scope: !4242, file: !258, line: 462, type: !307)
!4246 = !DILocalVariable(name: "efuse_data_offset", scope: !4242, file: !258, line: 464, type: !128)
!4247 = !DILocalVariable(name: "efuse_data_gain", scope: !4242, file: !258, line: 464, type: !128)
!4248 = !DILocation(line: 0, scope: !4242)
!4249 = !DILocation(line: 464, column: 5, scope: !4242)
!4250 = !DILocation(line: 467, column: 25, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4242, file: !258, line: 467, column: 9)
!4252 = !DILocation(line: 467, column: 22, scope: !4251)
!4253 = !DILocation(line: 467, column: 9, scope: !4242)
!4254 = !DILocation(line: 0, scope: !4251)
!4255 = !DILocation(line: 474, column: 25, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4242, file: !258, line: 474, column: 9)
!4257 = !DILocation(line: 474, column: 22, scope: !4256)
!4258 = !DILocation(line: 474, column: 9, scope: !4242)
!4259 = !DILocation(line: 0, scope: !4256)
!4260 = !DILocation(line: 482, column: 1, scope: !4242)
!4261 = distinct !DISubprogram(name: "halADC_Remove_Data_Offset", scope: !258, file: !258, line: 485, type: !4262, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4264)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !3859, !3859, !136}
!4264 = !{!4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274}
!4265 = !DILocalVariable(name: "input", arg: 1, scope: !4261, file: !258, line: 485, type: !3859)
!4266 = !DILocalVariable(name: "output", arg: 2, scope: !4261, file: !258, line: 485, type: !3859)
!4267 = !DILocalVariable(name: "length", arg: 3, scope: !4261, file: !258, line: 485, type: !136)
!4268 = !DILocalVariable(name: "efuse_data_offset", scope: !4261, file: !258, line: 487, type: !128)
!4269 = !DILocalVariable(name: "efuse_data_gain", scope: !4261, file: !258, line: 487, type: !128)
!4270 = !DILocalVariable(name: "flag_offset", scope: !4261, file: !258, line: 488, type: !128)
!4271 = !DILocalVariable(name: "flag_gain", scope: !4261, file: !258, line: 488, type: !128)
!4272 = !DILocalVariable(name: "data_len", scope: !4261, file: !258, line: 489, type: !136)
!4273 = !DILocalVariable(name: "adc_data", scope: !4261, file: !258, line: 490, type: !307)
!4274 = !DILocalVariable(name: "adc_data_origin", scope: !4261, file: !258, line: 490, type: !307)
!4275 = !DILocation(line: 0, scope: !4261)
!4276 = !DILocation(line: 492, column: 25, scope: !4261)
!4277 = !DILocation(line: 493, column: 23, scope: !4261)
!4278 = !DILocation(line: 502, column: 33, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !258, line: 502, column: 5)
!4280 = distinct !DILexicalBlock(scope: !4261, file: !258, line: 502, column: 5)
!4281 = !DILocation(line: 502, column: 5, scope: !4280)
!4282 = !DILocation(line: 500, column: 21, scope: !4261)
!4283 = !DILocation(line: 499, column: 23, scope: !4261)
!4284 = !DILocation(line: 504, column: 31, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4279, file: !258, line: 502, column: 56)
!4286 = !DILocation(line: 504, column: 20, scope: !4285)
!4287 = !DILocation(line: 509, column: 13, scope: !4285)
!4288 = !DILocation(line: 511, column: 17, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !258, line: 509, column: 31)
!4290 = distinct !DILexicalBlock(scope: !4285, file: !258, line: 509, column: 13)
!4291 = !DILocation(line: 514, column: 9, scope: !4289)
!4292 = !DILocation(line: 515, column: 22, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4290, file: !258, line: 514, column: 16)
!4294 = !DILocation(line: 516, column: 17, scope: !4293)
!4295 = !DILocation(line: 0, scope: !4290)
!4296 = !DILocation(line: 0, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4285, file: !258, line: 523, column: 13)
!4298 = !DILocation(line: 523, column: 13, scope: !4285)
!4299 = !DILocation(line: 524, column: 22, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !258, line: 523, column: 29)
!4301 = !DILocation(line: 525, column: 17, scope: !4300)
!4302 = !DILocation(line: 528, column: 9, scope: !4300)
!4303 = !DILocation(line: 531, column: 17, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4297, file: !258, line: 528, column: 16)
!4305 = !DILocation(line: 537, column: 45, scope: !4285)
!4306 = !DILocation(line: 537, column: 63, scope: !4285)
!4307 = !DILocation(line: 537, column: 72, scope: !4285)
!4308 = !DILocation(line: 537, column: 60, scope: !4285)
!4309 = !DILocation(line: 537, column: 9, scope: !4285)
!4310 = !DILocation(line: 537, column: 26, scope: !4285)
!4311 = !DILocation(line: 502, column: 52, scope: !4279)
!4312 = distinct !{!4312, !4281, !4313}
!4313 = !DILocation(line: 538, column: 5, scope: !4280)
!4314 = !DILocation(line: 539, column: 1, scope: !4261)
!4315 = distinct !DISubprogram(name: "hal_adc_init", scope: !258, file: !258, line: 543, type: !4316, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4319)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!4318}
!4318 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_adc_status_t", file: !268, line: 169, baseType: !267)
!4319 = !{!4320, !4321, !4322, !4324, !4326, !4328, !4330}
!4320 = !DILocalVariable(name: "rAdcFsmParam", scope: !4315, file: !258, line: 545, type: !320)
!4321 = !DILocalVariable(name: "irq_flag", scope: !4315, file: !258, line: 546, type: !136)
!4322 = !DILocalVariable(name: "addr", scope: !4323, file: !258, line: 556, type: !309)
!4323 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 556, column: 5)
!4324 = !DILocalVariable(name: "addr", scope: !4325, file: !258, line: 577, type: !309)
!4325 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 577, column: 5)
!4326 = !DILocalVariable(name: "addr", scope: !4327, file: !258, line: 582, type: !309)
!4327 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 582, column: 5)
!4328 = !DILocalVariable(name: "addr", scope: !4329, file: !258, line: 588, type: !309)
!4329 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 588, column: 5)
!4330 = !DILocalVariable(name: "addr", scope: !4331, file: !258, line: 591, type: !309)
!4331 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 591, column: 5)
!4332 = !DILocation(line: 545, column: 5, scope: !4315)
!4333 = !DILocation(line: 545, column: 21, scope: !4315)
!4334 = !DILocation(line: 548, column: 16, scope: !4315)
!4335 = !DILocation(line: 0, scope: !4315)
!4336 = !DILocation(line: 549, column: 9, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 549, column: 9)
!4338 = !DILocation(line: 549, column: 22, scope: !4337)
!4339 = !DILocation(line: 549, column: 9, scope: !4315)
!4340 = !DILocation(line: 550, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !258, line: 549, column: 35)
!4342 = !DILocation(line: 551, column: 9, scope: !4341)
!4343 = !DILocation(line: 553, column: 22, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4337, file: !258, line: 552, column: 12)
!4345 = !DILocation(line: 554, column: 9, scope: !4344)
!4346 = !DILocation(line: 0, scope: !4323)
!4347 = !DILocation(line: 556, column: 5, scope: !4323)
!4348 = !DILocation(line: 558, column: 5, scope: !4315)
!4349 = !DILocation(line: 567, column: 35, scope: !4315)
!4350 = !DILocation(line: 0, scope: !4325)
!4351 = !DILocation(line: 577, column: 5, scope: !4325)
!4352 = !DILocation(line: 579, column: 5, scope: !4315)
!4353 = !DILocation(line: 0, scope: !4327)
!4354 = !DILocation(line: 582, column: 5, scope: !4327)
!4355 = !DILocation(line: 585, column: 38, scope: !4315)
!4356 = !DILocation(line: 0, scope: !4329)
!4357 = !DILocation(line: 588, column: 5, scope: !4329)
!4358 = !DILocation(line: 0, scope: !4331)
!4359 = !DILocation(line: 591, column: 5, scope: !4331)
!4360 = !DILocation(line: 594, column: 46, scope: !4315)
!4361 = !DILocation(line: 601, column: 46, scope: !4315)
!4362 = !DILocation(line: 605, column: 5, scope: !4315)
!4363 = !DILocation(line: 606, column: 18, scope: !4315)
!4364 = !DILocation(line: 606, column: 25, scope: !4315)
!4365 = !DILocation(line: 607, column: 18, scope: !4315)
!4366 = !DILocation(line: 607, column: 28, scope: !4315)
!4367 = !DILocation(line: 608, column: 18, scope: !4315)
!4368 = !DILocation(line: 608, column: 32, scope: !4315)
!4369 = !DILocation(line: 609, column: 18, scope: !4315)
!4370 = !DILocation(line: 609, column: 27, scope: !4315)
!4371 = !DILocation(line: 610, column: 18, scope: !4315)
!4372 = !DILocation(line: 610, column: 29, scope: !4315)
!4373 = !DILocation(line: 611, column: 18, scope: !4315)
!4374 = !DILocation(line: 611, column: 35, scope: !4315)
!4375 = !DILocation(line: 612, column: 18, scope: !4315)
!4376 = !DILocation(line: 612, column: 32, scope: !4315)
!4377 = !DILocation(line: 613, column: 18, scope: !4315)
!4378 = !DILocation(line: 613, column: 41, scope: !4315)
!4379 = !DILocation(line: 615, column: 5, scope: !4315)
!4380 = !DILocation(line: 619, column: 5, scope: !4315)
!4381 = !DILocation(line: 625, column: 9, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !258, line: 624, column: 12)
!4383 = distinct !DILexicalBlock(scope: !4315, file: !258, line: 622, column: 9)
!4384 = !DILocation(line: 627, column: 1, scope: !4315)
!4385 = distinct !DISubprogram(name: "halADC_Fsm_Param_Set", scope: !258, file: !258, line: 1091, type: !4386, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4391)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4388, !4389}
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !294, line: 368, baseType: !293)
!4389 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_ADC_FSM_PARAM_T", file: !276, line: 458, baseType: !4390)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 32)
!4391 = !{!4392, !4393, !4394, !4395, !4397, !4399, !4401, !4403, !4405, !4407, !4410, !4412, !4414, !4416}
!4392 = !DILocalVariable(name: "prAdcFsmParam", arg: 1, scope: !4385, file: !258, line: 1091, type: !4389)
!4393 = !DILocalVariable(name: "u1ChnlNum", scope: !4385, file: !258, line: 1093, type: !251)
!4394 = !DILocalVariable(name: "i", scope: !4385, file: !258, line: 1093, type: !251)
!4395 = !DILocalVariable(name: "addr", scope: !4396, file: !258, line: 1172, type: !309)
!4396 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1172, column: 5)
!4397 = !DILocalVariable(name: "addr", scope: !4398, file: !258, line: 1173, type: !309)
!4398 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1173, column: 5)
!4399 = !DILocalVariable(name: "addr", scope: !4400, file: !258, line: 1174, type: !309)
!4400 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1174, column: 5)
!4401 = !DILocalVariable(name: "addr", scope: !4402, file: !258, line: 1175, type: !309)
!4402 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1175, column: 5)
!4403 = !DILocalVariable(name: "addr", scope: !4404, file: !258, line: 1179, type: !309)
!4404 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1179, column: 5)
!4405 = !DILocalVariable(name: "addr", scope: !4406, file: !258, line: 1180, type: !309)
!4406 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1180, column: 5)
!4407 = !DILocalVariable(name: "addr", scope: !4408, file: !258, line: 1201, type: !309)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !258, line: 1201, column: 13)
!4409 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1184, column: 40)
!4410 = !DILocalVariable(name: "addr", scope: !4411, file: !258, line: 1202, type: !309)
!4411 = distinct !DILexicalBlock(scope: !4409, file: !258, line: 1202, column: 13)
!4412 = !DILocalVariable(name: "addr", scope: !4413, file: !258, line: 1216, type: !309)
!4413 = distinct !DILexicalBlock(scope: !4409, file: !258, line: 1216, column: 13)
!4414 = !DILocalVariable(name: "addr", scope: !4415, file: !258, line: 1217, type: !309)
!4415 = distinct !DILexicalBlock(scope: !4409, file: !258, line: 1217, column: 13)
!4416 = !DILocalVariable(name: "addr", scope: !4417, file: !258, line: 1228, type: !309)
!4417 = distinct !DILexicalBlock(scope: !4409, file: !258, line: 1228, column: 13)
!4418 = !DILocation(line: 0, scope: !4385)
!4419 = !DILocation(line: 1099, column: 24, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1099, column: 9)
!4421 = !DILocation(line: 1099, column: 38, scope: !4420)
!4422 = !DILocation(line: 1099, column: 9, scope: !4385)
!4423 = !DILocation(line: 1104, column: 5, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4385, file: !258, line: 1104, column: 5)
!4425 = !DILocation(line: 1105, column: 44, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !258, line: 1105, column: 13)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !258, line: 1104, column: 38)
!4428 = distinct !DILexicalBlock(scope: !4424, file: !258, line: 1104, column: 5)
!4429 = !DILocation(line: 1105, column: 42, scope: !4426)
!4430 = !DILocation(line: 1105, column: 13, scope: !4427)
!4431 = !DILocation(line: 1104, column: 34, scope: !4428)
!4432 = !DILocation(line: 1104, column: 19, scope: !4428)
!4433 = distinct !{!4433, !4423, !4434}
!4434 = !DILocation(line: 1108, column: 5, scope: !4424)
!4435 = !DILocation(line: 1112, column: 50, scope: !4385)
!4436 = !DILocation(line: 1112, column: 33, scope: !4385)
!4437 = !DILocation(line: 1113, column: 53, scope: !4385)
!4438 = !DILocation(line: 1113, column: 36, scope: !4385)
!4439 = !DILocation(line: 1114, column: 40, scope: !4385)
!4440 = !DILocation(line: 1115, column: 52, scope: !4385)
!4441 = !DILocation(line: 1115, column: 35, scope: !4385)
!4442 = !DILocation(line: 1116, column: 54, scope: !4385)
!4443 = !DILocation(line: 1116, column: 37, scope: !4385)
!4444 = !DILocation(line: 1117, column: 60, scope: !4385)
!4445 = !DILocation(line: 1117, column: 43, scope: !4385)
!4446 = !DILocation(line: 1118, column: 57, scope: !4385)
!4447 = !DILocation(line: 1118, column: 40, scope: !4385)
!4448 = !DILocation(line: 1119, column: 66, scope: !4385)
!4449 = !DILocation(line: 1119, column: 49, scope: !4385)
!4450 = !DILocation(line: 1120, column: 26, scope: !4385)
!4451 = !DILocation(line: 0, scope: !4396)
!4452 = !DILocation(line: 1172, column: 5, scope: !4396)
!4453 = !DILocation(line: 0, scope: !4398)
!4454 = !DILocation(line: 1173, column: 5, scope: !4398)
!4455 = !DILocation(line: 0, scope: !4400)
!4456 = !DILocation(line: 1174, column: 5, scope: !4400)
!4457 = !DILocation(line: 0, scope: !4402)
!4458 = !DILocation(line: 1175, column: 5, scope: !4402)
!4459 = !DILocation(line: 0, scope: !4404)
!4460 = !DILocation(line: 1179, column: 5, scope: !4404)
!4461 = !DILocation(line: 0, scope: !4406)
!4462 = !DILocation(line: 1180, column: 5, scope: !4406)
!4463 = !DILocation(line: 1184, column: 28, scope: !4385)
!4464 = !DILocation(line: 1184, column: 5, scope: !4385)
!4465 = !DILocation(line: 1187, column: 13, scope: !4409)
!4466 = !DILocation(line: 1188, column: 13, scope: !4409)
!4467 = !DILocation(line: 1196, column: 54, scope: !4409)
!4468 = !DILocation(line: 1196, column: 31, scope: !4409)
!4469 = !DILocation(line: 1196, column: 87, scope: !4409)
!4470 = !DILocation(line: 1196, column: 155, scope: !4409)
!4471 = !DILocation(line: 1196, column: 13, scope: !4409)
!4472 = !DILocation(line: 1197, column: 13, scope: !4409)
!4473 = !DILocation(line: 1198, column: 13, scope: !4409)
!4474 = !DILocation(line: 0, scope: !4408)
!4475 = !DILocation(line: 1201, column: 13, scope: !4408)
!4476 = !DILocation(line: 0, scope: !4411)
!4477 = !DILocation(line: 1202, column: 13, scope: !4411)
!4478 = !DILocation(line: 1203, column: 13, scope: !4409)
!4479 = !DILocation(line: 0, scope: !4413)
!4480 = !DILocation(line: 1216, column: 13, scope: !4413)
!4481 = !DILocation(line: 0, scope: !4415)
!4482 = !DILocation(line: 1217, column: 13, scope: !4415)
!4483 = !DILocation(line: 1220, column: 13, scope: !4409)
!4484 = !DILocation(line: 1221, column: 13, scope: !4409)
!4485 = !DILocation(line: 0, scope: !4417)
!4486 = !DILocation(line: 1228, column: 13, scope: !4417)
!4487 = !DILocation(line: 1233, column: 13, scope: !4409)
!4488 = !DILocation(line: 1238, column: 1, scope: !4385)
!4489 = distinct !DISubprogram(name: "halADC_VDMA_Callback", scope: !258, file: !258, line: 816, type: !181, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !1232)
!4490 = !DILocation(line: 919, column: 1, scope: !4489)
!4491 = distinct !DISubprogram(name: "halADC_LISR", scope: !258, file: !258, line: 926, type: !520, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4492)
!4492 = !{!4493}
!4493 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4491, file: !258, line: 926, type: !438)
!4494 = !DILocation(line: 0, scope: !4491)
!4495 = !DILocation(line: 1008, column: 1, scope: !4491)
!4496 = distinct !DISubprogram(name: "halADC_Fsm_Enable", scope: !258, file: !258, line: 1040, type: !4497, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !1232)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!4388}
!4499 = !DILocation(line: 1062, column: 5, scope: !4496)
!4500 = distinct !DISubprogram(name: "hal_adc_deinit", scope: !258, file: !258, line: 629, type: !4316, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !1232)
!4501 = !DILocation(line: 643, column: 9, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4500, file: !258, line: 643, column: 9)
!4503 = !DILocation(line: 647, column: 22, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4502, file: !258, line: 646, column: 12)
!4505 = !DILocation(line: 650, column: 1, scope: !4500)
!4506 = distinct !DISubprogram(name: "halADC_Fsm_Disable", scope: !258, file: !258, line: 1065, type: !4507, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4510)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!4388, !4509}
!4509 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !47, line: 119, baseType: !132)
!4510 = !{!4511, !4512, !4514}
!4511 = !DILocalVariable(name: "fgOffAldo", arg: 1, scope: !4506, file: !258, line: 1065, type: !4509)
!4512 = !DILocalVariable(name: "addr", scope: !4513, file: !258, line: 1068, type: !309)
!4513 = distinct !DILexicalBlock(scope: !4506, file: !258, line: 1068, column: 5)
!4514 = !DILocalVariable(name: "addr", scope: !4515, file: !258, line: 1084, type: !309)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !258, line: 1084, column: 9)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !258, line: 1083, column: 20)
!4517 = distinct !DILexicalBlock(scope: !4506, file: !258, line: 1083, column: 9)
!4518 = !DILocation(line: 0, scope: !4506)
!4519 = !DILocation(line: 0, scope: !4513)
!4520 = !DILocation(line: 1068, column: 5, scope: !4513)
!4521 = !DILocation(line: 1070, column: 49, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4506, file: !258, line: 1070, column: 9)
!4523 = !DILocation(line: 1070, column: 25, scope: !4522)
!4524 = !DILocation(line: 1070, column: 9, scope: !4506)
!4525 = !DILocation(line: 1072, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4522, file: !258, line: 1070, column: 61)
!4527 = !DILocation(line: 1075, column: 9, scope: !4526)
!4528 = !DILocation(line: 1076, column: 5, scope: !4526)
!4529 = !DILocation(line: 1083, column: 9, scope: !4517)
!4530 = !DILocation(line: 1083, column: 9, scope: !4506)
!4531 = !DILocation(line: 0, scope: !4515)
!4532 = !DILocation(line: 1084, column: 9, scope: !4515)
!4533 = !DILocation(line: 1085, column: 5, scope: !4516)
!4534 = !DILocation(line: 1088, column: 5, scope: !4506)
!4535 = distinct !DISubprogram(name: "hal_adc_get_data_polling", scope: !258, file: !258, line: 653, type: !4536, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4539)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!4318, !4538, !3859}
!4538 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_adc_channel_t", file: !299, line: 314, baseType: !298)
!4539 = !{!4540, !4541, !4542, !4543, !4544, !4545, !4548, !4550, !4552, !4554, !4556}
!4540 = !DILocalVariable(name: "channel", arg: 1, scope: !4535, file: !258, line: 653, type: !4538)
!4541 = !DILocalVariable(name: "data", arg: 2, scope: !4535, file: !258, line: 653, type: !3859)
!4542 = !DILocalVariable(name: "data_array", scope: !4535, file: !258, line: 655, type: !409)
!4543 = !DILocalVariable(name: "count", scope: !4535, file: !258, line: 655, type: !136)
!4544 = !DILocalVariable(name: "actual_data", scope: !4535, file: !258, line: 656, type: !136)
!4545 = !DILocalVariable(name: "addr", scope: !4546, file: !258, line: 667, type: !309)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !258, line: 667, column: 13)
!4547 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 665, column: 22)
!4548 = !DILocalVariable(name: "addr", scope: !4549, file: !258, line: 671, type: !309)
!4549 = distinct !DILexicalBlock(scope: !4547, file: !258, line: 671, column: 13)
!4550 = !DILocalVariable(name: "addr", scope: !4551, file: !258, line: 675, type: !309)
!4551 = distinct !DILexicalBlock(scope: !4547, file: !258, line: 675, column: 13)
!4552 = !DILocalVariable(name: "addr", scope: !4553, file: !258, line: 679, type: !309)
!4553 = distinct !DILexicalBlock(scope: !4547, file: !258, line: 679, column: 13)
!4554 = !DILocalVariable(name: "addr", scope: !4555, file: !258, line: 686, type: !309)
!4555 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 686, column: 5)
!4556 = !DILocalVariable(name: "addr", scope: !4557, file: !258, line: 703, type: !309)
!4557 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 703, column: 5)
!4558 = !DILocation(line: 0, scope: !4535)
!4559 = !DILocation(line: 655, column: 5, scope: !4535)
!4560 = !DILocation(line: 655, column: 14, scope: !4535)
!4561 = !DILocation(line: 656, column: 5, scope: !4535)
!4562 = !DILocation(line: 658, column: 17, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 658, column: 9)
!4564 = !DILocation(line: 658, column: 9, scope: !4535)
!4565 = !DILocation(line: 661, column: 14, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 661, column: 9)
!4567 = !DILocation(line: 661, column: 9, scope: !4535)
!4568 = !DILocation(line: 665, column: 5, scope: !4535)
!4569 = !DILocation(line: 0, scope: !4547)
!4570 = !DILocation(line: 0, scope: !4555)
!4571 = !DILocation(line: 686, column: 5, scope: !4555)
!4572 = !DILocation(line: 688, column: 5, scope: !4535)
!4573 = !DILocation(line: 689, column: 9, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 688, column: 8)
!4575 = !DILocation(line: 690, column: 14, scope: !4535)
!4576 = !DILocation(line: 690, column: 20, scope: !4535)
!4577 = !DILocation(line: 690, column: 5, scope: !4574)
!4578 = distinct !{!4578, !4572, !4579}
!4579 = !DILocation(line: 690, column: 24, scope: !4535)
!4580 = !DILocation(line: 692, column: 40, scope: !4535)
!4581 = !DILocation(line: 692, column: 5, scope: !4535)
!4582 = !DILocation(line: 696, column: 5, scope: !4535)
!4583 = !DILocation(line: 698, column: 24, scope: !4535)
!4584 = !DILocation(line: 698, column: 50, scope: !4535)
!4585 = !DILocation(line: 698, column: 11, scope: !4535)
!4586 = !DILocation(line: 0, scope: !4557)
!4587 = !DILocation(line: 703, column: 5, scope: !4557)
!4588 = !DILocation(line: 705, column: 5, scope: !4535)
!4589 = !DILocation(line: 0, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4535, file: !258, line: 705, column: 22)
!4591 = !DILocation(line: 723, column: 1, scope: !4535)
!4592 = distinct !DISubprogram(name: "halADC_Fifo_Get_Length", scope: !258, file: !258, line: 1258, type: !4593, scopeLine: 1259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4595)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!4388, !312}
!4595 = !{!4596, !4597, !4598}
!4596 = !DILocalVariable(name: "pru4Len", arg: 1, scope: !4592, file: !258, line: 1258, type: !312)
!4597 = !DILocalVariable(name: "u4ReadPos", scope: !4592, file: !258, line: 1260, type: !219)
!4598 = !DILocalVariable(name: "u4WritePos", scope: !4592, file: !258, line: 1260, type: !219)
!4599 = !DILocation(line: 0, scope: !4592)
!4600 = !DILocation(line: 1262, column: 34, scope: !4592)
!4601 = !DILocation(line: 1262, column: 5, scope: !4592)
!4602 = !DILocation(line: 1265, column: 24, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4592, file: !258, line: 1262, column: 46)
!4604 = !DILocation(line: 1266, column: 13, scope: !4603)
!4605 = !DILocation(line: 1269, column: 25, scope: !4603)
!4606 = !DILocation(line: 1270, column: 26, scope: !4603)
!4607 = !DILocation(line: 1272, column: 28, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4603, file: !258, line: 1272, column: 17)
!4609 = !DILocation(line: 1272, column: 17, scope: !4603)
!4610 = !DILocation(line: 1274, column: 35, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !258, line: 1274, column: 24)
!4612 = !DILocation(line: 1274, column: 24, scope: !4608)
!4613 = !DILocation(line: 1275, column: 40, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4611, file: !258, line: 1274, column: 48)
!4615 = !DILocation(line: 1276, column: 13, scope: !4614)
!4616 = !DILocation(line: 1278, column: 40, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4611, file: !258, line: 1276, column: 20)
!4618 = !DILocation(line: 1278, column: 56, scope: !4617)
!4619 = !DILocation(line: 0, scope: !4603)
!4620 = !DILocation(line: 1283, column: 5, scope: !4592)
!4621 = distinct !DISubprogram(name: "halADC_Fifo_Read_Data", scope: !258, file: !258, line: 1286, type: !4622, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!4388, !219, !312}
!4624 = !{!4625, !4626, !4627}
!4625 = !DILocalVariable(name: "u4Len", arg: 1, scope: !4621, file: !258, line: 1286, type: !219)
!4626 = !DILocalVariable(name: "pru4Samples", arg: 2, scope: !4621, file: !258, line: 1286, type: !312)
!4627 = !DILocalVariable(name: "u4Counter", scope: !4621, file: !258, line: 1288, type: !219)
!4628 = !DILocation(line: 0, scope: !4621)
!4629 = !DILocation(line: 1290, column: 34, scope: !4621)
!4630 = !DILocation(line: 1290, column: 5, scope: !4621)
!4631 = !DILocation(line: 1305, column: 43, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !258, line: 1305, column: 13)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !258, line: 1305, column: 13)
!4634 = distinct !DILexicalBlock(scope: !4621, file: !258, line: 1290, column: 46)
!4635 = !DILocation(line: 1305, column: 13, scope: !4633)
!4636 = !DILocation(line: 1298, column: 43, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !258, line: 1298, column: 13)
!4638 = distinct !DILexicalBlock(scope: !4634, file: !258, line: 1298, column: 13)
!4639 = !DILocation(line: 1298, column: 13, scope: !4638)
!4640 = !DILocation(line: 1299, column: 51, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !258, line: 1298, column: 65)
!4642 = !DILocation(line: 1299, column: 17, scope: !4641)
!4643 = !DILocation(line: 1299, column: 40, scope: !4641)
!4644 = !DILocation(line: 1298, column: 61, scope: !4637)
!4645 = distinct !{!4645, !4639, !4646}
!4646 = !DILocation(line: 1300, column: 13, scope: !4638)
!4647 = !DILocation(line: 1306, column: 50, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4632, file: !258, line: 1305, column: 65)
!4649 = !DILocation(line: 1306, column: 17, scope: !4648)
!4650 = !DILocation(line: 1306, column: 40, scope: !4648)
!4651 = !DILocation(line: 1305, column: 61, scope: !4632)
!4652 = distinct !{!4652, !4635, !4653}
!4653 = !DILocation(line: 1307, column: 13, scope: !4633)
!4654 = !DILocation(line: 1311, column: 5, scope: !4621)
!4655 = distinct !DISubprogram(name: "halADC_COMP_LISR", scope: !258, file: !258, line: 1010, type: !520, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !4656)
!4656 = !{!4657}
!4657 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4655, file: !258, line: 1010, type: !438)
!4658 = !DILocation(line: 0, scope: !4655)
!4659 = !DILocation(line: 1038, column: 1, scope: !4655)
!4660 = distinct !DISubprogram(name: "hal_cache_init", scope: !344, file: !344, line: 53, type: !4661, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4664)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!4663}
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !347, line: 172, baseType: !346)
!4664 = !{!4665, !4667}
!4665 = !DILocalVariable(name: "region", scope: !4660, file: !344, line: 55, type: !4666)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !347, line: 204, baseType: !357)
!4667 = !DILocalVariable(name: "irq_flag", scope: !4660, file: !344, line: 56, type: !136)
!4668 = !DILocation(line: 59, column: 16, scope: !4660)
!4669 = !DILocation(line: 0, scope: !4660)
!4670 = !DILocation(line: 62, column: 9, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4660, file: !344, line: 62, column: 9)
!4672 = !DILocation(line: 62, column: 9, scope: !4660)
!4673 = !DILocation(line: 64, column: 9, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !344, line: 62, column: 39)
!4675 = !DILocation(line: 66, column: 9, scope: !4674)
!4676 = !DILocation(line: 69, column: 24, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4671, file: !344, line: 67, column: 12)
!4678 = !DILocation(line: 72, column: 9, scope: !4677)
!4679 = !DILocation(line: 77, column: 5, scope: !4660)
!4680 = !DILocation(line: 80, column: 22, scope: !4660)
!4681 = !DILocation(line: 81, column: 28, scope: !4660)
!4682 = !DILocation(line: 84, column: 19, scope: !4660)
!4683 = !DILocation(line: 85, column: 23, scope: !4660)
!4684 = !DILocation(line: 88, column: 5, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4660, file: !344, line: 88, column: 5)
!4686 = !DILocation(line: 90, column: 9, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !344, line: 88, column: 81)
!4688 = distinct !DILexicalBlock(scope: !4685, file: !344, line: 88, column: 5)
!4689 = !DILocation(line: 90, column: 38, scope: !4687)
!4690 = !DILocation(line: 91, column: 9, scope: !4687)
!4691 = !DILocation(line: 91, column: 42, scope: !4687)
!4692 = !DILocation(line: 94, column: 45, scope: !4687)
!4693 = !DILocation(line: 94, column: 47, scope: !4687)
!4694 = !DILocation(line: 95, column: 49, scope: !4687)
!4695 = !DILocation(line: 95, column: 51, scope: !4687)
!4696 = !DILocation(line: 88, column: 77, scope: !4688)
!4697 = !DILocation(line: 88, column: 46, scope: !4688)
!4698 = distinct !{!4698, !4684, !4699}
!4699 = !DILocation(line: 96, column: 5, scope: !4685)
!4700 = !DILocation(line: 99, column: 1, scope: !4660)
!4701 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !344, file: !344, line: 327, type: !4661, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4702)
!4702 = !{!4703}
!4703 = !DILocalVariable(name: "irq_flag", scope: !4701, file: !344, line: 329, type: !136)
!4704 = !DILocation(line: 332, column: 16, scope: !4701)
!4705 = !DILocation(line: 0, scope: !4701)
!4706 = !DILocation(line: 335, column: 21, scope: !4701)
!4707 = !DILocation(line: 336, column: 21, scope: !4701)
!4708 = !DILocation(line: 339, column: 21, scope: !4701)
!4709 = !DILocation(line: 340, column: 21, scope: !4701)
!4710 = !DILocation(line: 434, column: 3, scope: !4711, inlinedAt: !4713)
!4711 = distinct !DISubprogram(name: "__ISB", scope: !4712, file: !4712, line: 432, type: !181, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1232)
!4712 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/adc_get_data_polling/GCC")
!4713 = distinct !DILocation(line: 343, column: 5, scope: !4701)
!4714 = !{i64 296584}
!4715 = !DILocation(line: 346, column: 5, scope: !4701)
!4716 = !DILocation(line: 348, column: 5, scope: !4701)
!4717 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !344, file: !344, line: 101, type: !4661, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4718)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "region", scope: !4717, file: !344, line: 103, type: !4666)
!4720 = !DILocation(line: 107, column: 5, scope: !4717)
!4721 = !DILocation(line: 110, column: 22, scope: !4717)
!4722 = !DILocation(line: 111, column: 28, scope: !4717)
!4723 = !DILocation(line: 114, column: 19, scope: !4717)
!4724 = !DILocation(line: 115, column: 23, scope: !4717)
!4725 = !DILocation(line: 0, scope: !4717)
!4726 = !DILocation(line: 118, column: 5, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4717, file: !344, line: 118, column: 5)
!4728 = !DILocation(line: 120, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !344, line: 118, column: 81)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !344, line: 118, column: 5)
!4731 = !DILocation(line: 120, column: 38, scope: !4729)
!4732 = !DILocation(line: 121, column: 9, scope: !4729)
!4733 = !DILocation(line: 121, column: 42, scope: !4729)
!4734 = !DILocation(line: 124, column: 45, scope: !4729)
!4735 = !DILocation(line: 124, column: 47, scope: !4729)
!4736 = !DILocation(line: 125, column: 49, scope: !4729)
!4737 = !DILocation(line: 125, column: 51, scope: !4729)
!4738 = !DILocation(line: 118, column: 77, scope: !4730)
!4739 = !DILocation(line: 118, column: 46, scope: !4730)
!4740 = distinct !{!4740, !4726, !4741}
!4741 = !DILocation(line: 126, column: 5, scope: !4727)
!4742 = !DILocation(line: 129, column: 20, scope: !4717)
!4743 = !DILocation(line: 131, column: 5, scope: !4717)
!4744 = distinct !DISubprogram(name: "hal_cache_enable", scope: !344, file: !344, line: 134, type: !4661, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !1232)
!4745 = !DILocation(line: 137, column: 45, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4744, file: !344, line: 137, column: 9)
!4747 = !DILocation(line: 137, column: 28, scope: !4746)
!4748 = !DILocation(line: 137, column: 9, scope: !4744)
!4749 = !DILocation(line: 142, column: 22, scope: !4744)
!4750 = !DILocation(line: 145, column: 28, scope: !4744)
!4751 = !DILocation(line: 145, column: 19, scope: !4744)
!4752 = !DILocation(line: 147, column: 5, scope: !4744)
!4753 = !DILocation(line: 0, scope: !4744)
!4754 = !DILocation(line: 148, column: 1, scope: !4744)
!4755 = distinct !DISubprogram(name: "hal_cache_disable", scope: !344, file: !344, line: 150, type: !4661, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4756)
!4756 = !{!4757}
!4757 = !DILocalVariable(name: "irq_flag", scope: !4755, file: !344, line: 152, type: !136)
!4758 = !DILocation(line: 155, column: 16, scope: !4755)
!4759 = !DILocation(line: 0, scope: !4755)
!4760 = !DILocation(line: 158, column: 16, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4755, file: !344, line: 158, column: 9)
!4762 = !DILocation(line: 158, column: 26, scope: !4761)
!4763 = !DILocation(line: 158, column: 9, scope: !4755)
!4764 = !DILocation(line: 160, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !344, line: 158, column: 49)
!4766 = !DILocation(line: 161, column: 5, scope: !4765)
!4767 = !DILocation(line: 164, column: 22, scope: !4755)
!4768 = !DILocation(line: 167, column: 28, scope: !4755)
!4769 = !DILocation(line: 167, column: 19, scope: !4755)
!4770 = !DILocation(line: 170, column: 5, scope: !4755)
!4771 = !DILocation(line: 172, column: 5, scope: !4755)
!4772 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !344, file: !344, line: 175, type: !4773, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4775)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!4663, !4666}
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "region", arg: 1, scope: !4772, file: !344, line: 175, type: !4666)
!4777 = !DILocation(line: 0, scope: !4772)
!4778 = !DILocation(line: 178, column: 16, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4772, file: !344, line: 178, column: 9)
!4780 = !DILocation(line: 178, column: 9, scope: !4772)
!4781 = !DILocation(line: 183, column: 9, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4772, file: !344, line: 183, column: 9)
!4783 = !DILocation(line: 183, column: 38, scope: !4782)
!4784 = !DILocation(line: 183, column: 9, scope: !4772)
!4785 = !DILocation(line: 184, column: 38, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !344, line: 183, column: 62)
!4787 = !DILocation(line: 184, column: 32, scope: !4786)
!4788 = !DILocation(line: 190, column: 32, scope: !4772)
!4789 = !DILocation(line: 190, column: 23, scope: !4772)
!4790 = !DILocation(line: 192, column: 5, scope: !4772)
!4791 = !DILocation(line: 193, column: 1, scope: !4772)
!4792 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !344, file: !344, line: 195, type: !4773, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4793)
!4793 = !{!4794}
!4794 = !DILocalVariable(name: "region", arg: 1, scope: !4792, file: !344, line: 195, type: !4666)
!4795 = !DILocation(line: 0, scope: !4792)
!4796 = !DILocation(line: 198, column: 16, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4792, file: !344, line: 198, column: 9)
!4798 = !DILocation(line: 198, column: 9, scope: !4792)
!4799 = !DILocation(line: 203, column: 35, scope: !4792)
!4800 = !DILocation(line: 203, column: 31, scope: !4792)
!4801 = !DILocation(line: 203, column: 28, scope: !4792)
!4802 = !DILocation(line: 206, column: 32, scope: !4792)
!4803 = !DILocation(line: 206, column: 23, scope: !4792)
!4804 = !DILocation(line: 209, column: 41, scope: !4792)
!4805 = !DILocation(line: 209, column: 43, scope: !4792)
!4806 = !DILocation(line: 210, column: 45, scope: !4792)
!4807 = !DILocation(line: 210, column: 47, scope: !4792)
!4808 = !DILocation(line: 212, column: 5, scope: !4792)
!4809 = !DILocation(line: 213, column: 1, scope: !4792)
!4810 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !344, file: !344, line: 215, type: !4811, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4814)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!4663, !4813}
!4813 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !347, line: 182, baseType: !376)
!4814 = !{!4815}
!4815 = !DILocalVariable(name: "cache_size", arg: 1, scope: !4810, file: !344, line: 215, type: !4813)
!4816 = !DILocation(line: 0, scope: !4810)
!4817 = !DILocation(line: 218, column: 20, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4810, file: !344, line: 218, column: 9)
!4819 = !DILocation(line: 218, column: 9, scope: !4810)
!4820 = !DILocation(line: 223, column: 22, scope: !4810)
!4821 = !DILocation(line: 224, column: 37, scope: !4810)
!4822 = !DILocation(line: 224, column: 22, scope: !4810)
!4823 = !DILocation(line: 227, column: 20, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4810, file: !344, line: 227, column: 9)
!4825 = !DILocation(line: 227, column: 9, scope: !4810)
!4826 = !DILocation(line: 228, column: 26, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4824, file: !344, line: 227, column: 43)
!4828 = !DILocation(line: 229, column: 5, scope: !4827)
!4829 = !DILocation(line: 232, column: 28, scope: !4810)
!4830 = !DILocation(line: 232, column: 19, scope: !4810)
!4831 = !DILocation(line: 234, column: 5, scope: !4810)
!4832 = !DILocation(line: 235, column: 1, scope: !4810)
!4833 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !344, file: !344, line: 237, type: !4834, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4843)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!4663, !4666, !4836}
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 32)
!4837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4838)
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !347, line: 222, baseType: !4839)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 219, size: 64, elements: !4840)
!4840 = !{!4841, !4842}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !4839, file: !347, line: 220, baseType: !136, size: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !4839, file: !347, line: 221, baseType: !136, size: 32, offset: 32)
!4843 = !{!4844, !4845}
!4844 = !DILocalVariable(name: "region", arg: 1, scope: !4833, file: !344, line: 237, type: !4666)
!4845 = !DILocalVariable(name: "region_config", arg: 2, scope: !4833, file: !344, line: 237, type: !4836)
!4846 = !DILocation(line: 0, scope: !4833)
!4847 = !DILocation(line: 240, column: 16, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4833, file: !344, line: 240, column: 9)
!4849 = !DILocation(line: 240, column: 9, scope: !4833)
!4850 = !DILocation(line: 245, column: 23, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4833, file: !344, line: 245, column: 9)
!4852 = !DILocation(line: 245, column: 9, scope: !4833)
!4853 = !DILocation(line: 250, column: 24, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4833, file: !344, line: 250, column: 9)
!4855 = !DILocation(line: 250, column: 45, scope: !4854)
!4856 = !DILocation(line: 250, column: 9, scope: !4833)
!4857 = !DILocation(line: 251, column: 9, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4854, file: !344, line: 250, column: 81)
!4859 = !DILocation(line: 256, column: 24, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4833, file: !344, line: 256, column: 9)
!4861 = !DILocation(line: 256, column: 42, scope: !4860)
!4862 = !DILocation(line: 256, column: 9, scope: !4833)
!4863 = !DILocation(line: 257, column: 9, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4860, file: !344, line: 256, column: 78)
!4865 = !DILocation(line: 262, column: 5, scope: !4833)
!4866 = !DILocation(line: 262, column: 34, scope: !4833)
!4867 = !DILocation(line: 263, column: 55, scope: !4833)
!4868 = !DILocation(line: 263, column: 93, scope: !4833)
!4869 = !DILocation(line: 263, column: 76, scope: !4833)
!4870 = !DILocation(line: 263, column: 5, scope: !4833)
!4871 = !DILocation(line: 263, column: 38, scope: !4833)
!4872 = !DILocation(line: 266, column: 34, scope: !4833)
!4873 = !DILocation(line: 269, column: 45, scope: !4833)
!4874 = !DILocation(line: 269, column: 41, scope: !4833)
!4875 = !DILocation(line: 269, column: 43, scope: !4833)
!4876 = !DILocation(line: 270, column: 49, scope: !4833)
!4877 = !DILocation(line: 270, column: 45, scope: !4833)
!4878 = !DILocation(line: 270, column: 47, scope: !4833)
!4879 = !DILocation(line: 272, column: 5, scope: !4833)
!4880 = !DILocation(line: 273, column: 1, scope: !4833)
!4881 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !344, file: !344, line: 275, type: !4882, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4884)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!4663, !136}
!4884 = !{!4885, !4886}
!4885 = !DILocalVariable(name: "address", arg: 1, scope: !4881, file: !344, line: 275, type: !136)
!4886 = !DILocalVariable(name: "irq_flag", scope: !4881, file: !344, line: 277, type: !136)
!4887 = !DILocation(line: 0, scope: !4881)
!4888 = !DILocation(line: 280, column: 17, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4881, file: !344, line: 280, column: 9)
!4890 = !DILocation(line: 280, column: 9, scope: !4881)
!4891 = !DILocation(line: 284, column: 16, scope: !4881)
!4892 = !DILocation(line: 287, column: 32, scope: !4881)
!4893 = !DILocation(line: 287, column: 21, scope: !4881)
!4894 = !DILocation(line: 288, column: 21, scope: !4881)
!4895 = !DILocation(line: 434, column: 3, scope: !4711, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 291, column: 5, scope: !4881)
!4897 = !DILocation(line: 294, column: 5, scope: !4881)
!4898 = !DILocation(line: 296, column: 5, scope: !4881)
!4899 = !DILocation(line: 297, column: 1, scope: !4881)
!4900 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !344, file: !344, line: 299, type: !4901, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4903)
!4901 = !DISubroutineType(types: !4902)
!4902 = !{!4663, !136, !136}
!4903 = !{!4904, !4905, !4906, !4907}
!4904 = !DILocalVariable(name: "address", arg: 1, scope: !4900, file: !344, line: 299, type: !136)
!4905 = !DILocalVariable(name: "length", arg: 2, scope: !4900, file: !344, line: 299, type: !136)
!4906 = !DILocalVariable(name: "irq_flag", scope: !4900, file: !344, line: 301, type: !136)
!4907 = !DILocalVariable(name: "end_address", scope: !4900, file: !344, line: 302, type: !136)
!4908 = !DILocation(line: 0, scope: !4900)
!4909 = !DILocation(line: 302, column: 36, scope: !4900)
!4910 = !DILocation(line: 305, column: 47, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4900, file: !344, line: 305, column: 9)
!4912 = !DILocation(line: 310, column: 16, scope: !4900)
!4913 = !DILocation(line: 313, column: 20, scope: !4900)
!4914 = !DILocation(line: 313, column: 5, scope: !4900)
!4915 = !DILocation(line: 314, column: 9, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4900, file: !344, line: 313, column: 35)
!4917 = !DILocation(line: 315, column: 17, scope: !4916)
!4918 = distinct !{!4918, !4914, !4919}
!4919 = !DILocation(line: 316, column: 5, scope: !4900)
!4920 = !DILocation(line: 434, column: 3, scope: !4711, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 319, column: 5, scope: !4900)
!4922 = !DILocation(line: 322, column: 5, scope: !4900)
!4923 = !DILocation(line: 324, column: 5, scope: !4900)
!4924 = !DILocation(line: 325, column: 1, scope: !4900)
!4925 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !344, file: !344, line: 351, type: !4882, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4926)
!4926 = !{!4927, !4928}
!4927 = !DILocalVariable(name: "address", arg: 1, scope: !4925, file: !344, line: 351, type: !136)
!4928 = !DILocalVariable(name: "irq_flag", scope: !4925, file: !344, line: 353, type: !136)
!4929 = !DILocation(line: 0, scope: !4925)
!4930 = !DILocation(line: 356, column: 17, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4925, file: !344, line: 356, column: 9)
!4932 = !DILocation(line: 356, column: 9, scope: !4925)
!4933 = !DILocation(line: 361, column: 16, scope: !4925)
!4934 = !DILocation(line: 364, column: 32, scope: !4925)
!4935 = !DILocation(line: 364, column: 21, scope: !4925)
!4936 = !DILocation(line: 365, column: 21, scope: !4925)
!4937 = !DILocation(line: 434, column: 3, scope: !4711, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 368, column: 5, scope: !4925)
!4939 = !DILocation(line: 371, column: 5, scope: !4925)
!4940 = !DILocation(line: 373, column: 5, scope: !4925)
!4941 = !DILocation(line: 374, column: 1, scope: !4925)
!4942 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !344, file: !344, line: 376, type: !4901, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4943)
!4943 = !{!4944, !4945, !4946, !4947}
!4944 = !DILocalVariable(name: "address", arg: 1, scope: !4942, file: !344, line: 376, type: !136)
!4945 = !DILocalVariable(name: "length", arg: 2, scope: !4942, file: !344, line: 376, type: !136)
!4946 = !DILocalVariable(name: "irq_flag", scope: !4942, file: !344, line: 378, type: !136)
!4947 = !DILocalVariable(name: "end_address", scope: !4942, file: !344, line: 379, type: !136)
!4948 = !DILocation(line: 0, scope: !4942)
!4949 = !DILocation(line: 379, column: 36, scope: !4942)
!4950 = !DILocation(line: 382, column: 47, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4942, file: !344, line: 382, column: 9)
!4952 = !DILocation(line: 387, column: 16, scope: !4942)
!4953 = !DILocation(line: 390, column: 20, scope: !4942)
!4954 = !DILocation(line: 390, column: 5, scope: !4942)
!4955 = !DILocation(line: 391, column: 9, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4942, file: !344, line: 390, column: 35)
!4957 = !DILocation(line: 392, column: 17, scope: !4956)
!4958 = distinct !{!4958, !4954, !4959}
!4959 = !DILocation(line: 393, column: 5, scope: !4942)
!4960 = !DILocation(line: 434, column: 3, scope: !4711, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 396, column: 5, scope: !4942)
!4962 = !DILocation(line: 399, column: 5, scope: !4942)
!4963 = !DILocation(line: 401, column: 5, scope: !4942)
!4964 = !DILocation(line: 402, column: 1, scope: !4942)
!4965 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !344, file: !344, line: 404, type: !4661, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4966)
!4966 = !{!4967}
!4967 = !DILocalVariable(name: "irq_flag", scope: !4965, file: !344, line: 406, type: !136)
!4968 = !DILocation(line: 409, column: 16, scope: !4965)
!4969 = !DILocation(line: 0, scope: !4965)
!4970 = !DILocation(line: 412, column: 21, scope: !4965)
!4971 = !DILocation(line: 413, column: 21, scope: !4965)
!4972 = !DILocation(line: 434, column: 3, scope: !4711, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 416, column: 5, scope: !4965)
!4974 = !DILocation(line: 419, column: 5, scope: !4965)
!4975 = !DILocation(line: 421, column: 5, scope: !4965)
!4976 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !344, file: !344, line: 424, type: !4977, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !343, retainedNodes: !4979)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!126, !136}
!4979 = !{!4980, !4981}
!4980 = !DILocalVariable(name: "address", arg: 1, scope: !4976, file: !344, line: 424, type: !136)
!4981 = !DILocalVariable(name: "region", scope: !4976, file: !344, line: 426, type: !4666)
!4982 = !DILocation(line: 0, scope: !4976)
!4983 = !DILocation(line: 429, column: 18, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4976, file: !344, line: 429, column: 9)
!4985 = !DILocation(line: 429, column: 28, scope: !4984)
!4986 = !DILocation(line: 429, column: 9, scope: !4976)
!4987 = !DILocation(line: 435, column: 20, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !344, line: 435, column: 13)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !344, line: 433, column: 81)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !344, line: 433, column: 5)
!4991 = distinct !DILexicalBlock(scope: !4976, file: !344, line: 433, column: 5)
!4992 = !DILocation(line: 435, column: 41, scope: !4988)
!4993 = !DILocation(line: 435, column: 36, scope: !4988)
!4994 = !DILocation(line: 435, column: 13, scope: !4989)
!4995 = !DILocation(line: 436, column: 30, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !344, line: 436, column: 17)
!4997 = distinct !DILexicalBlock(scope: !4988, file: !344, line: 435, column: 53)
!4998 = !DILocation(line: 436, column: 59, scope: !4996)
!4999 = !DILocation(line: 436, column: 26, scope: !4996)
!5000 = !DILocation(line: 436, column: 85, scope: !4996)
!5001 = !DILocation(line: 436, column: 99, scope: !4996)
!5002 = !DILocation(line: 436, column: 97, scope: !4996)
!5003 = !DILocation(line: 436, column: 17, scope: !4997)
!5004 = !DILocation(line: 433, column: 77, scope: !4990)
!5005 = !DILocation(line: 433, column: 46, scope: !4990)
!5006 = !DILocation(line: 433, column: 5, scope: !4991)
!5007 = distinct !{!5007, !5006, !5008}
!5008 = !DILocation(line: 440, column: 5, scope: !4991)
!5009 = !DILocation(line: 442, column: 1, scope: !4976)
!5010 = distinct !DISubprogram(name: "hal_nvic_init", scope: !427, file: !427, line: 60, type: !5011, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1232)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!5013}
!5013 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !430, line: 158, baseType: !429)
!5014 = !DILocation(line: 62, column: 5, scope: !5010)
!5015 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !427, file: !427, line: 65, type: !5016, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5018)
!5016 = !DISubroutineType(types: !5017)
!5017 = !{!5013, !438}
!5018 = !{!5019, !5020}
!5019 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5015, file: !427, line: 65, type: !438)
!5020 = !DILocalVariable(name: "status", scope: !5015, file: !427, line: 67, type: !5013)
!5021 = !DILocation(line: 0, scope: !5015)
!5022 = !DILocation(line: 69, column: 40, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5015, file: !427, line: 69, column: 9)
!5024 = !DILocation(line: 73, column: 9, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5023, file: !427, line: 72, column: 12)
!5026 = !DILocation(line: 77, column: 5, scope: !5015)
!5027 = !DILocation(line: 78, column: 1, scope: !5015)
!5028 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !443, file: !443, line: 1494, type: !5029, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5031)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{null, !173}
!5031 = !{!5032}
!5032 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5028, file: !443, line: 1494, type: !173)
!5033 = !DILocation(line: 0, scope: !5028)
!5034 = !DILocation(line: 1497, column: 91, scope: !5028)
!5035 = !DILocation(line: 1497, column: 61, scope: !5028)
!5036 = !DILocation(line: 1497, column: 40, scope: !5028)
!5037 = !DILocation(line: 1497, column: 3, scope: !5028)
!5038 = !DILocation(line: 1497, column: 46, scope: !5028)
!5039 = !DILocation(line: 1498, column: 1, scope: !5028)
!5040 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !427, file: !427, line: 80, type: !5016, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5041)
!5041 = !{!5042, !5043}
!5042 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5040, file: !427, line: 80, type: !438)
!5043 = !DILocalVariable(name: "status", scope: !5040, file: !427, line: 82, type: !5013)
!5044 = !DILocation(line: 0, scope: !5040)
!5045 = !DILocation(line: 84, column: 40, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5040, file: !427, line: 84, column: 9)
!5047 = !DILocation(line: 88, column: 9, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5046, file: !427, line: 87, column: 12)
!5049 = !DILocation(line: 92, column: 5, scope: !5040)
!5050 = !DILocation(line: 93, column: 1, scope: !5040)
!5051 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !443, file: !443, line: 1507, type: !5029, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5052)
!5052 = !{!5053}
!5053 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5051, file: !443, line: 1507, type: !173)
!5054 = !DILocation(line: 0, scope: !5051)
!5055 = !DILocation(line: 1509, column: 65, scope: !5051)
!5056 = !DILocation(line: 1509, column: 44, scope: !5051)
!5057 = !DILocation(line: 1509, column: 32, scope: !5051)
!5058 = !DILocation(line: 1509, column: 3, scope: !5051)
!5059 = !DILocation(line: 1509, column: 39, scope: !5051)
!5060 = !DILocation(line: 1510, column: 1, scope: !5051)
!5061 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !427, file: !427, line: 95, type: !5062, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5064)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!136, !438}
!5064 = !{!5065, !5066}
!5065 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5061, file: !427, line: 95, type: !438)
!5066 = !DILocalVariable(name: "ret", scope: !5061, file: !427, line: 97, type: !136)
!5067 = !DILocation(line: 0, scope: !5061)
!5068 = !DILocation(line: 99, column: 40, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5061, file: !427, line: 99, column: 9)
!5070 = !DILocation(line: 102, column: 15, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5069, file: !427, line: 101, column: 12)
!5072 = !DILocation(line: 105, column: 5, scope: !5061)
!5073 = !DILocation(line: 106, column: 1, scope: !5061)
!5074 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !443, file: !443, line: 1523, type: !5075, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!136, !173}
!5077 = !{!5078}
!5078 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5074, file: !443, line: 1523, type: !173)
!5079 = !DILocation(line: 0, scope: !5074)
!5080 = !DILocation(line: 1525, column: 51, scope: !5074)
!5081 = !DILocation(line: 1525, column: 23, scope: !5074)
!5082 = !DILocation(line: 1525, column: 83, scope: !5074)
!5083 = !DILocation(line: 1525, column: 22, scope: !5074)
!5084 = !DILocation(line: 1525, column: 3, scope: !5074)
!5085 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !427, file: !427, line: 108, type: !5016, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5086)
!5086 = !{!5087, !5088}
!5087 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5085, file: !427, line: 108, type: !438)
!5088 = !DILocalVariable(name: "status", scope: !5085, file: !427, line: 110, type: !5013)
!5089 = !DILocation(line: 0, scope: !5085)
!5090 = !DILocation(line: 112, column: 40, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5085, file: !427, line: 112, column: 9)
!5092 = !DILocation(line: 116, column: 9, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5091, file: !427, line: 115, column: 12)
!5094 = !DILocation(line: 120, column: 5, scope: !5085)
!5095 = !DILocation(line: 121, column: 1, scope: !5085)
!5096 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !443, file: !443, line: 1535, type: !5029, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5097)
!5097 = !{!5098}
!5098 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5096, file: !443, line: 1535, type: !173)
!5099 = !DILocation(line: 0, scope: !5096)
!5100 = !DILocation(line: 1537, column: 65, scope: !5096)
!5101 = !DILocation(line: 1537, column: 44, scope: !5096)
!5102 = !DILocation(line: 1537, column: 32, scope: !5096)
!5103 = !DILocation(line: 1537, column: 3, scope: !5096)
!5104 = !DILocation(line: 1537, column: 39, scope: !5096)
!5105 = !DILocation(line: 1538, column: 1, scope: !5096)
!5106 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !427, file: !427, line: 123, type: !5016, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5107)
!5107 = !{!5108, !5109}
!5108 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5106, file: !427, line: 123, type: !438)
!5109 = !DILocalVariable(name: "status", scope: !5106, file: !427, line: 125, type: !5013)
!5110 = !DILocation(line: 0, scope: !5106)
!5111 = !DILocation(line: 127, column: 40, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5106, file: !427, line: 127, column: 9)
!5113 = !DILocation(line: 131, column: 9, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5112, file: !427, line: 130, column: 12)
!5115 = !DILocation(line: 135, column: 5, scope: !5106)
!5116 = !DILocation(line: 136, column: 1, scope: !5106)
!5117 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !443, file: !443, line: 1547, type: !5029, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5118)
!5118 = !{!5119}
!5119 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5117, file: !443, line: 1547, type: !173)
!5120 = !DILocation(line: 0, scope: !5117)
!5121 = !DILocation(line: 1549, column: 65, scope: !5117)
!5122 = !DILocation(line: 1549, column: 44, scope: !5117)
!5123 = !DILocation(line: 1549, column: 32, scope: !5117)
!5124 = !DILocation(line: 1549, column: 3, scope: !5117)
!5125 = !DILocation(line: 1549, column: 39, scope: !5117)
!5126 = !DILocation(line: 1550, column: 1, scope: !5117)
!5127 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !427, file: !427, line: 138, type: !5128, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5130)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!5013, !438, !136}
!5130 = !{!5131, !5132, !5133}
!5131 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5127, file: !427, line: 138, type: !438)
!5132 = !DILocalVariable(name: "priority", arg: 2, scope: !5127, file: !427, line: 138, type: !136)
!5133 = !DILocalVariable(name: "status", scope: !5127, file: !427, line: 140, type: !5013)
!5134 = !DILocation(line: 0, scope: !5127)
!5135 = !DILocation(line: 142, column: 40, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5127, file: !427, line: 142, column: 9)
!5137 = !DILocation(line: 146, column: 9, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5136, file: !427, line: 145, column: 12)
!5139 = !DILocation(line: 150, column: 5, scope: !5127)
!5140 = !DILocation(line: 151, column: 1, scope: !5127)
!5141 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !443, file: !443, line: 1577, type: !5142, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5144)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !173, !136}
!5144 = !{!5145, !5146}
!5145 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5141, file: !443, line: 1577, type: !173)
!5146 = !DILocalVariable(name: "priority", arg: 2, scope: !5141, file: !443, line: 1577, type: !136)
!5147 = !DILocation(line: 0, scope: !5141)
!5148 = !DILocation(line: 1582, column: 34, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5150, file: !443, line: 1581, column: 8)
!5150 = distinct !DILexicalBlock(scope: !5141, file: !443, line: 1579, column: 6)
!5151 = !DILocation(line: 1582, column: 5, scope: !5149)
!5152 = !DILocation(line: 1582, column: 32, scope: !5149)
!5153 = !DILocation(line: 1583, column: 1, scope: !5141)
!5154 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !427, file: !427, line: 153, type: !5062, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5155)
!5155 = !{!5156, !5157}
!5156 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5154, file: !427, line: 153, type: !438)
!5157 = !DILocalVariable(name: "ret", scope: !5154, file: !427, line: 155, type: !136)
!5158 = !DILocation(line: 0, scope: !5154)
!5159 = !DILocation(line: 157, column: 40, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5154, file: !427, line: 157, column: 9)
!5161 = !DILocation(line: 160, column: 15, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5160, file: !427, line: 159, column: 12)
!5163 = !DILocation(line: 163, column: 5, scope: !5154)
!5164 = !DILocation(line: 164, column: 1, scope: !5154)
!5165 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !443, file: !443, line: 1597, type: !5075, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5166)
!5166 = !{!5167}
!5167 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5165, file: !443, line: 1597, type: !173)
!5168 = !DILocation(line: 0, scope: !5165)
!5169 = !DILocation(line: 1603, column: 23, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5171, file: !443, line: 1602, column: 8)
!5171 = distinct !DILexicalBlock(scope: !5165, file: !443, line: 1600, column: 6)
!5172 = !DILocation(line: 1603, column: 60, scope: !5170)
!5173 = !DILocation(line: 1604, column: 1, scope: !5165)
!5174 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !427, file: !427, line: 173, type: !181, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1232)
!5175 = !DILocation(line: 175, column: 1, scope: !5174)
!5176 = distinct !DISubprogram(name: "isrC_main", scope: !427, file: !427, line: 178, type: !5011, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5177)
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "status", scope: !5176, file: !427, line: 180, type: !5013)
!5179 = !DILocalVariable(name: "irq_number", scope: !5176, file: !427, line: 181, type: !438)
!5180 = !DILocation(line: 0, scope: !5176)
!5181 = !DILocation(line: 188, column: 34, scope: !5176)
!5182 = !DILocation(line: 189, column: 24, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5176, file: !427, line: 189, column: 9)
!5184 = !DILocation(line: 192, column: 48, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5183, file: !427, line: 192, column: 16)
!5186 = !DILocation(line: 192, column: 62, scope: !5185)
!5187 = !DILocation(line: 192, column: 16, scope: !5183)
!5188 = !DILocation(line: 194, column: 9, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5185, file: !427, line: 192, column: 71)
!5190 = !DILocation(line: 195, column: 9, scope: !5189)
!5191 = !DILocation(line: 197, column: 55, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5185, file: !427, line: 196, column: 12)
!5193 = !DILocation(line: 197, column: 41, scope: !5192)
!5194 = !DILocation(line: 197, column: 53, scope: !5192)
!5195 = !DILocation(line: 198, column: 41, scope: !5192)
!5196 = !DILocation(line: 198, column: 9, scope: !5192)
!5197 = !DILocation(line: 202, column: 5, scope: !5176)
!5198 = !DILocation(line: 203, column: 1, scope: !5176)
!5199 = distinct !DISubprogram(name: "get_current_irq", scope: !427, file: !427, line: 166, type: !1264, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5200)
!5200 = !{!5201}
!5201 = !DILocalVariable(name: "irq_num", scope: !5199, file: !427, line: 168, type: !136)
!5202 = !DILocation(line: 168, column: 31, scope: !5199)
!5203 = !DILocation(line: 168, column: 36, scope: !5199)
!5204 = !DILocation(line: 0, scope: !5199)
!5205 = !DILocation(line: 169, column: 21, scope: !5199)
!5206 = !DILocation(line: 169, column: 5, scope: !5199)
!5207 = distinct !DISubprogram(name: "get_pending_irq", scope: !427, file: !427, line: 55, type: !1264, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1232)
!5208 = !DILocation(line: 57, column: 19, scope: !5207)
!5209 = !DILocation(line: 57, column: 51, scope: !5207)
!5210 = !DILocation(line: 57, column: 5, scope: !5207)
!5211 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !427, file: !427, line: 205, type: !5212, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5215)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!5013, !438, !5214}
!5214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !430, line: 175, baseType: !519)
!5215 = !{!5216, !5217, !5218}
!5216 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5211, file: !427, line: 205, type: !438)
!5217 = !DILocalVariable(name: "callback", arg: 2, scope: !5211, file: !427, line: 205, type: !5214)
!5218 = !DILocalVariable(name: "mask", scope: !5211, file: !427, line: 207, type: !136)
!5219 = !DILocation(line: 0, scope: !5211)
!5220 = !DILocation(line: 209, column: 24, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5211, file: !427, line: 209, column: 9)
!5222 = !DILocation(line: 213, column: 12, scope: !5211)
!5223 = !DILocation(line: 214, column: 5, scope: !5211)
!5224 = !DILocation(line: 215, column: 37, scope: !5211)
!5225 = !DILocation(line: 215, column: 51, scope: !5211)
!5226 = !DILocation(line: 216, column: 37, scope: !5211)
!5227 = !DILocation(line: 216, column: 49, scope: !5211)
!5228 = !DILocation(line: 217, column: 5, scope: !5211)
!5229 = !DILocation(line: 219, column: 5, scope: !5211)
!5230 = !DILocation(line: 220, column: 1, scope: !5211)
!5231 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !427, file: !427, line: 222, type: !5232, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5234)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!5013, !3859}
!5234 = !{!5235}
!5235 = !DILocalVariable(name: "mask", arg: 1, scope: !5231, file: !427, line: 222, type: !3859)
!5236 = !DILocation(line: 0, scope: !5231)
!5237 = !DILocation(line: 224, column: 13, scope: !5231)
!5238 = !DILocation(line: 224, column: 11, scope: !5231)
!5239 = !DILocation(line: 225, column: 5, scope: !5231)
!5240 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !427, file: !427, line: 228, type: !5241, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !5243)
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!5013, !136}
!5243 = !{!5244}
!5244 = !DILocalVariable(name: "mask", arg: 1, scope: !5240, file: !427, line: 228, type: !136)
!5245 = !DILocation(line: 0, scope: !5240)
!5246 = !DILocation(line: 230, column: 5, scope: !5240)
!5247 = !DILocation(line: 231, column: 5, scope: !5240)
!5248 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1147, file: !1147, line: 50, type: !5249, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5253)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!5251, !5252, !128}
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1150, line: 238, baseType: !1149)
!5252 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !299, line: 281, baseType: !1156)
!5253 = !{!5254, !5255, !5256}
!5254 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5248, file: !1147, line: 50, type: !5252)
!5255 = !DILocalVariable(name: "function_index", arg: 2, scope: !5248, file: !1147, line: 50, type: !128)
!5256 = !DILocalVariable(name: "ret_value", scope: !5248, file: !1147, line: 52, type: !439)
!5257 = !DILocation(line: 0, scope: !5248)
!5258 = !DILocation(line: 53, column: 18, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5248, file: !1147, line: 53, column: 9)
!5260 = !DILocation(line: 53, column: 9, scope: !5248)
!5261 = !DILocation(line: 57, column: 24, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5248, file: !1147, line: 57, column: 9)
!5263 = !DILocation(line: 57, column: 9, scope: !5248)
!5264 = !DILocation(line: 57, column: 9, scope: !5262)
!5265 = !DILocation(line: 60, column: 17, scope: !5248)
!5266 = !DILocation(line: 61, column: 12, scope: !5248)
!5267 = !DILocation(line: 61, column: 5, scope: !5248)
!5268 = !DILocation(line: 62, column: 1, scope: !5248)
!5269 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1147, file: !1147, line: 64, type: !5270, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5273)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!5272, !5252}
!5272 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1150, line: 229, baseType: !1187)
!5273 = !{!5274}
!5274 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5269, file: !1147, line: 64, type: !5252)
!5275 = !DILocation(line: 0, scope: !5269)
!5276 = !DILocation(line: 66, column: 5, scope: !5269)
!5277 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1147, file: !1147, line: 69, type: !5270, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5278)
!5278 = !{!5279}
!5279 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5277, file: !1147, line: 69, type: !5252)
!5280 = !DILocation(line: 0, scope: !5277)
!5281 = !DILocation(line: 71, column: 5, scope: !5277)
!5282 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1147, file: !1147, line: 74, type: !5283, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5286)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!5272, !5252, !5285}
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 32)
!5286 = !{!5287, !5288, !5289}
!5287 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5282, file: !1147, line: 74, type: !5252)
!5288 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5282, file: !1147, line: 74, type: !5285)
!5289 = !DILocalVariable(name: "status", scope: !5282, file: !1147, line: 76, type: !5290)
!5290 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1208, line: 67, baseType: !5291)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1208, line: 62, size: 64, elements: !5292)
!5292 = !{!5293, !5294, !5295, !5296}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !5291, file: !1208, line: 63, baseType: !136, size: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !5291, file: !1208, line: 64, baseType: !128, size: 8, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !5291, file: !1208, line: 65, baseType: !128, size: 8, offset: 40)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !5291, file: !1208, line: 66, baseType: !128, size: 8, offset: 48)
!5297 = !DILocation(line: 0, scope: !5282)
!5298 = !DILocation(line: 77, column: 14, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5282, file: !1147, line: 77, column: 9)
!5300 = !DILocation(line: 77, column: 9, scope: !5282)
!5301 = !DILocation(line: 81, column: 18, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5282, file: !1147, line: 81, column: 9)
!5303 = !DILocation(line: 81, column: 9, scope: !5282)
!5304 = !DILocation(line: 85, column: 14, scope: !5282)
!5305 = !DILocation(line: 86, column: 18, scope: !5282)
!5306 = !DILocation(line: 86, column: 16, scope: !5282)
!5307 = !DILocation(line: 87, column: 5, scope: !5282)
!5308 = !DILocation(line: 88, column: 1, scope: !5282)
!5309 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1147, file: !1147, line: 90, type: !5310, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5312)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!5272, !5252, !1214}
!5312 = !{!5313, !5314, !5315}
!5313 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5309, file: !1147, line: 90, type: !5252)
!5314 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5309, file: !1147, line: 90, type: !1214)
!5315 = !DILocalVariable(name: "ret_value", scope: !5309, file: !1147, line: 92, type: !439)
!5316 = !DILocation(line: 0, scope: !5309)
!5317 = !DILocation(line: 93, column: 18, scope: !5318)
!5318 = distinct !DILexicalBlock(scope: !5309, file: !1147, line: 93, column: 9)
!5319 = !DILocation(line: 93, column: 9, scope: !5309)
!5320 = !DILocation(line: 97, column: 60, scope: !5309)
!5321 = !DILocation(line: 97, column: 17, scope: !5309)
!5322 = !DILocation(line: 98, column: 12, scope: !5309)
!5323 = !DILocation(line: 98, column: 5, scope: !5309)
!5324 = !DILocation(line: 99, column: 1, scope: !5309)
!5325 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1147, file: !1147, line: 101, type: !5283, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5326)
!5326 = !{!5327, !5328, !5329}
!5327 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5325, file: !1147, line: 101, type: !5252)
!5328 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5325, file: !1147, line: 101, type: !5285)
!5329 = !DILocalVariable(name: "status", scope: !5325, file: !1147, line: 103, type: !5290)
!5330 = !DILocation(line: 0, scope: !5325)
!5331 = !DILocation(line: 104, column: 18, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5325, file: !1147, line: 104, column: 9)
!5333 = !DILocation(line: 104, column: 9, scope: !5325)
!5334 = !DILocation(line: 108, column: 14, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5325, file: !1147, line: 108, column: 9)
!5336 = !DILocation(line: 108, column: 9, scope: !5325)
!5337 = !DILocation(line: 112, column: 14, scope: !5325)
!5338 = !DILocation(line: 113, column: 18, scope: !5325)
!5339 = !DILocation(line: 113, column: 16, scope: !5325)
!5340 = !DILocation(line: 114, column: 5, scope: !5325)
!5341 = !DILocation(line: 115, column: 1, scope: !5325)
!5342 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1147, file: !1147, line: 117, type: !5343, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5346)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!5272, !5252, !5345}
!5345 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1150, line: 213, baseType: !1197)
!5346 = !{!5347, !5348, !5349}
!5347 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5342, file: !1147, line: 117, type: !5252)
!5348 = !DILocalVariable(name: "direction", arg: 2, scope: !5342, file: !1147, line: 117, type: !5345)
!5349 = !DILocalVariable(name: "ret_value", scope: !5342, file: !1147, line: 119, type: !439)
!5350 = !DILocation(line: 0, scope: !5342)
!5351 = !DILocation(line: 120, column: 18, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5342, file: !1147, line: 120, column: 9)
!5353 = !DILocation(line: 120, column: 9, scope: !5342)
!5354 = !DILocation(line: 123, column: 17, scope: !5342)
!5355 = !DILocation(line: 125, column: 12, scope: !5342)
!5356 = !DILocation(line: 125, column: 5, scope: !5342)
!5357 = !DILocation(line: 126, column: 1, scope: !5342)
!5358 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1147, file: !1147, line: 128, type: !5359, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5362)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!5272, !5252, !5361}
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 32)
!5362 = !{!5363, !5364, !5365}
!5363 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5358, file: !1147, line: 128, type: !5252)
!5364 = !DILocalVariable(name: "direction", arg: 2, scope: !5358, file: !1147, line: 128, type: !5361)
!5365 = !DILocalVariable(name: "status", scope: !5358, file: !1147, line: 131, type: !5290)
!5366 = !DILocation(line: 0, scope: !5358)
!5367 = !DILocation(line: 132, column: 18, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5358, file: !1147, line: 132, column: 9)
!5369 = !DILocation(line: 132, column: 9, scope: !5358)
!5370 = !DILocation(line: 136, column: 14, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5358, file: !1147, line: 136, column: 9)
!5372 = !DILocation(line: 136, column: 9, scope: !5358)
!5373 = !DILocation(line: 140, column: 14, scope: !5358)
!5374 = !DILocation(line: 141, column: 18, scope: !5358)
!5375 = !DILocation(line: 141, column: 16, scope: !5358)
!5376 = !DILocation(line: 142, column: 5, scope: !5358)
!5377 = !DILocation(line: 143, column: 1, scope: !5358)
!5378 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1147, file: !1147, line: 146, type: !5270, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5379)
!5379 = !{!5380, !5381}
!5380 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5378, file: !1147, line: 146, type: !5252)
!5381 = !DILocalVariable(name: "status", scope: !5378, file: !1147, line: 148, type: !5290)
!5382 = !DILocation(line: 0, scope: !5378)
!5383 = !DILocation(line: 149, column: 18, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5378, file: !1147, line: 149, column: 9)
!5385 = !DILocation(line: 149, column: 9, scope: !5378)
!5386 = !DILocation(line: 153, column: 14, scope: !5378)
!5387 = !DILocation(line: 154, column: 76, scope: !5378)
!5388 = !DILocation(line: 154, column: 12, scope: !5378)
!5389 = !DILocation(line: 154, column: 5, scope: !5378)
!5390 = !DILocation(line: 155, column: 1, scope: !5378)
!5391 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1147, file: !1147, line: 157, type: !5270, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5392)
!5392 = !{!5393, !5394}
!5393 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5391, file: !1147, line: 157, type: !5252)
!5394 = !DILocalVariable(name: "ret_value", scope: !5391, file: !1147, line: 159, type: !439)
!5395 = !DILocation(line: 0, scope: !5391)
!5396 = !DILocation(line: 160, column: 18, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5391, file: !1147, line: 160, column: 9)
!5398 = !DILocation(line: 160, column: 9, scope: !5391)
!5399 = !DILocation(line: 164, column: 17, scope: !5391)
!5400 = !DILocation(line: 165, column: 19, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5391, file: !1147, line: 165, column: 9)
!5402 = !DILocation(line: 165, column: 9, scope: !5391)
!5403 = !DILocation(line: 168, column: 17, scope: !5391)
!5404 = !DILocation(line: 169, column: 12, scope: !5391)
!5405 = !DILocation(line: 169, column: 5, scope: !5391)
!5406 = !DILocation(line: 170, column: 1, scope: !5391)
!5407 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1147, file: !1147, line: 172, type: !5270, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5408)
!5408 = !{!5409, !5410}
!5409 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5407, file: !1147, line: 172, type: !5252)
!5410 = !DILocalVariable(name: "ret_value", scope: !5407, file: !1147, line: 174, type: !439)
!5411 = !DILocation(line: 0, scope: !5407)
!5412 = !DILocation(line: 175, column: 18, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5407, file: !1147, line: 175, column: 9)
!5414 = !DILocation(line: 175, column: 9, scope: !5407)
!5415 = !DILocation(line: 179, column: 17, scope: !5407)
!5416 = !DILocation(line: 180, column: 19, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5407, file: !1147, line: 180, column: 9)
!5418 = !DILocation(line: 180, column: 9, scope: !5407)
!5419 = !DILocation(line: 183, column: 17, scope: !5407)
!5420 = !DILocation(line: 184, column: 12, scope: !5407)
!5421 = !DILocation(line: 184, column: 5, scope: !5407)
!5422 = !DILocation(line: 185, column: 1, scope: !5407)
!5423 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1147, file: !1147, line: 187, type: !5270, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5424)
!5424 = !{!5425, !5426}
!5425 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5423, file: !1147, line: 187, type: !5252)
!5426 = !DILocalVariable(name: "ret_value", scope: !5423, file: !1147, line: 189, type: !439)
!5427 = !DILocation(line: 0, scope: !5423)
!5428 = !DILocation(line: 191, column: 18, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5423, file: !1147, line: 191, column: 9)
!5430 = !DILocation(line: 191, column: 9, scope: !5423)
!5431 = !DILocation(line: 195, column: 17, scope: !5423)
!5432 = !DILocation(line: 196, column: 12, scope: !5423)
!5433 = !DILocation(line: 196, column: 5, scope: !5423)
!5434 = !DILocation(line: 197, column: 1, scope: !5423)
!5435 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1147, file: !1147, line: 200, type: !5436, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5438)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!5272, !5252, !1215}
!5438 = !{!5439, !5440, !5441}
!5439 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5435, file: !1147, line: 200, type: !5252)
!5440 = !DILocalVariable(name: "driving", arg: 2, scope: !5435, file: !1147, line: 200, type: !1215)
!5441 = !DILocalVariable(name: "ret_value", scope: !5435, file: !1147, line: 202, type: !439)
!5442 = !DILocation(line: 0, scope: !5435)
!5443 = !DILocation(line: 204, column: 18, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5435, file: !1147, line: 204, column: 9)
!5445 = !DILocation(line: 204, column: 9, scope: !5435)
!5446 = !DILocation(line: 208, column: 64, scope: !5435)
!5447 = !DILocation(line: 208, column: 17, scope: !5435)
!5448 = !DILocation(line: 210, column: 12, scope: !5435)
!5449 = !DILocation(line: 210, column: 5, scope: !5435)
!5450 = !DILocation(line: 211, column: 1, scope: !5435)
!5451 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1147, file: !1147, line: 214, type: !5452, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5455)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!5272, !5252, !5454}
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 32)
!5455 = !{!5456, !5457, !5458, !5459}
!5456 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5451, file: !1147, line: 214, type: !5252)
!5457 = !DILocalVariable(name: "driving", arg: 2, scope: !5451, file: !1147, line: 214, type: !5454)
!5458 = !DILocalVariable(name: "ret_value", scope: !5451, file: !1147, line: 216, type: !439)
!5459 = !DILocalVariable(name: "value", scope: !5451, file: !1147, line: 217, type: !128)
!5460 = !DILocation(line: 0, scope: !5451)
!5461 = !DILocation(line: 217, column: 5, scope: !5451)
!5462 = !DILocation(line: 219, column: 18, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5451, file: !1147, line: 219, column: 9)
!5464 = !DILocation(line: 219, column: 9, scope: !5451)
!5465 = !DILocation(line: 223, column: 17, scope: !5451)
!5466 = !DILocation(line: 225, column: 44, scope: !5451)
!5467 = !DILocation(line: 225, column: 16, scope: !5451)
!5468 = !DILocation(line: 225, column: 14, scope: !5451)
!5469 = !DILocation(line: 227, column: 12, scope: !5451)
!5470 = !DILocation(line: 227, column: 5, scope: !5451)
!5471 = !DILocation(line: 228, column: 1, scope: !5451)
!5472 = distinct !DISubprogram(name: "hal_gpt_init", scope: !528, file: !528, line: 82, type: !5473, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5477)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!5475, !5476}
!5475 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !531, line: 393, baseType: !530)
!5476 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !299, line: 663, baseType: !538)
!5477 = !{!5478}
!5478 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5472, file: !528, line: 82, type: !5476)
!5479 = !DILocation(line: 0, scope: !5472)
!5480 = !DILocation(line: 84, column: 9, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5472, file: !528, line: 84, column: 9)
!5482 = !DILocation(line: 84, column: 33, scope: !5481)
!5483 = !DILocation(line: 84, column: 9, scope: !5472)
!5484 = !DILocation(line: 88, column: 9, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5472, file: !528, line: 88, column: 9)
!5486 = !DILocation(line: 88, column: 9, scope: !5472)
!5487 = !DILocation(line: 89, column: 9, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5485, file: !528, line: 88, column: 50)
!5489 = !DILocation(line: 90, column: 9, scope: !5488)
!5490 = !DILocation(line: 92, column: 12, scope: !5472)
!5491 = !DILocation(line: 92, column: 5, scope: !5472)
!5492 = !DILocation(line: 96, column: 43, scope: !5472)
!5493 = !DILocation(line: 98, column: 5, scope: !5472)
!5494 = !DILocation(line: 99, column: 1, scope: !5472)
!5495 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !528, file: !528, line: 63, type: !5496, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5498)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!126, !5476}
!5498 = !{!5499}
!5499 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5495, file: !528, line: 63, type: !5476)
!5500 = !DILocation(line: 0, scope: !5495)
!5501 = !DILocation(line: 65, column: 19, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5495, file: !528, line: 65, column: 9)
!5503 = !DILocation(line: 65, column: 34, scope: !5502)
!5504 = !DILocation(line: 70, column: 1, scope: !5495)
!5505 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !528, file: !528, line: 101, type: !5473, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5506)
!5506 = !{!5507}
!5507 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5505, file: !528, line: 101, type: !5476)
!5508 = !DILocation(line: 0, scope: !5505)
!5509 = !DILocation(line: 103, column: 9, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5505, file: !528, line: 103, column: 9)
!5511 = !DILocation(line: 103, column: 9, scope: !5505)
!5512 = !DILocation(line: 104, column: 9, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !528, line: 103, column: 50)
!5514 = !DILocation(line: 105, column: 9, scope: !5513)
!5515 = !DILocation(line: 108, column: 9, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5505, file: !528, line: 108, column: 9)
!5517 = !DILocation(line: 108, column: 33, scope: !5516)
!5518 = !DILocation(line: 108, column: 48, scope: !5516)
!5519 = !DILocation(line: 108, column: 9, scope: !5505)
!5520 = !DILocation(line: 109, column: 9, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5516, file: !528, line: 108, column: 68)
!5522 = !DILocation(line: 110, column: 9, scope: !5521)
!5523 = !DILocation(line: 113, column: 12, scope: !5505)
!5524 = !DILocation(line: 113, column: 5, scope: !5505)
!5525 = !DILocation(line: 116, column: 29, scope: !5505)
!5526 = !DILocation(line: 116, column: 43, scope: !5505)
!5527 = !DILocation(line: 117, column: 5, scope: !5505)
!5528 = !DILocation(line: 118, column: 1, scope: !5505)
!5529 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !528, file: !528, line: 120, type: !5530, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5533)
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!5475, !5532, !3859}
!5532 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !299, line: 674, baseType: !549)
!5533 = !{!5534, !5535}
!5534 = !DILocalVariable(name: "clock_source", arg: 1, scope: !5529, file: !528, line: 120, type: !5532)
!5535 = !DILocalVariable(name: "count", arg: 2, scope: !5529, file: !528, line: 120, type: !3859)
!5536 = !DILocation(line: 0, scope: !5529)
!5537 = !DILocation(line: 122, column: 9, scope: !5529)
!5538 = !DILocation(line: 123, column: 50, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5540, file: !528, line: 123, column: 13)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !528, line: 122, column: 51)
!5541 = distinct !DILexicalBlock(scope: !5529, file: !528, line: 122, column: 9)
!5542 = !DILocation(line: 123, column: 65, scope: !5539)
!5543 = !DILocation(line: 123, column: 13, scope: !5540)
!5544 = !DILocation(line: 124, column: 13, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5539, file: !528, line: 123, column: 86)
!5546 = !DILocation(line: 125, column: 9, scope: !5545)
!5547 = !DILocation(line: 126, column: 18, scope: !5540)
!5548 = !DILocation(line: 126, column: 16, scope: !5540)
!5549 = !DILocation(line: 127, column: 49, scope: !5540)
!5550 = !DILocation(line: 128, column: 5, scope: !5540)
!5551 = !DILocation(line: 129, column: 50, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5553, file: !528, line: 129, column: 13)
!5553 = distinct !DILexicalBlock(scope: !5554, file: !528, line: 128, column: 57)
!5554 = distinct !DILexicalBlock(scope: !5541, file: !528, line: 128, column: 16)
!5555 = !DILocation(line: 129, column: 65, scope: !5552)
!5556 = !DILocation(line: 129, column: 13, scope: !5553)
!5557 = !DILocation(line: 130, column: 13, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5552, file: !528, line: 129, column: 86)
!5559 = !DILocation(line: 131, column: 9, scope: !5558)
!5560 = !DILocation(line: 132, column: 18, scope: !5553)
!5561 = !DILocation(line: 132, column: 46, scope: !5553)
!5562 = !DILocation(line: 132, column: 65, scope: !5553)
!5563 = !DILocation(line: 132, column: 43, scope: !5553)
!5564 = !DILocation(line: 132, column: 16, scope: !5553)
!5565 = !DILocation(line: 133, column: 49, scope: !5553)
!5566 = !DILocation(line: 134, column: 5, scope: !5553)
!5567 = !DILocation(line: 135, column: 50, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !528, line: 135, column: 13)
!5569 = distinct !DILexicalBlock(scope: !5570, file: !528, line: 134, column: 58)
!5570 = distinct !DILexicalBlock(scope: !5554, file: !528, line: 134, column: 16)
!5571 = !DILocation(line: 135, column: 65, scope: !5568)
!5572 = !DILocation(line: 135, column: 13, scope: !5569)
!5573 = !DILocation(line: 136, column: 13, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5568, file: !528, line: 135, column: 86)
!5575 = !DILocation(line: 137, column: 9, scope: !5574)
!5576 = !DILocation(line: 138, column: 18, scope: !5569)
!5577 = !DILocation(line: 138, column: 16, scope: !5569)
!5578 = !DILocation(line: 139, column: 49, scope: !5569)
!5579 = !DILocation(line: 141, column: 9, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5570, file: !528, line: 140, column: 11)
!5581 = !DILocation(line: 142, column: 9, scope: !5580)
!5582 = !DILocation(line: 146, column: 1, scope: !5529)
!5583 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !528, file: !528, line: 148, type: !5584, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5586)
!5584 = !DISubroutineType(types: !5585)
!5585 = !{!5475, !136, !136, !3859}
!5586 = !{!5587, !5588, !5589}
!5587 = !DILocalVariable(name: "start_count", arg: 1, scope: !5583, file: !528, line: 148, type: !136)
!5588 = !DILocalVariable(name: "end_count", arg: 2, scope: !5583, file: !528, line: 148, type: !136)
!5589 = !DILocalVariable(name: "duration_count", arg: 3, scope: !5583, file: !528, line: 148, type: !3859)
!5590 = !DILocation(line: 0, scope: !5583)
!5591 = !DILocation(line: 150, column: 24, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5583, file: !528, line: 150, column: 9)
!5593 = !DILocation(line: 150, column: 9, scope: !5583)
!5594 = !DILocation(line: 0, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5583, file: !528, line: 154, column: 9)
!5596 = !DILocation(line: 160, column: 5, scope: !5583)
!5597 = !DILocation(line: 161, column: 1, scope: !5583)
!5598 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !528, file: !528, line: 163, type: !5599, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5602)
!5599 = !DISubroutineType(types: !5600)
!5600 = !{!5475, !5476, !5601}
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 32)
!5602 = !{!5603, !5604}
!5603 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5598, file: !528, line: 163, type: !5476)
!5604 = !DILocalVariable(name: "running_status", arg: 2, scope: !5598, file: !528, line: 164, type: !5601)
!5605 = !DILocation(line: 0, scope: !5598)
!5606 = !DILocation(line: 166, column: 18, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5598, file: !528, line: 166, column: 9)
!5608 = !DILocation(line: 166, column: 9, scope: !5598)
!5609 = !DILocation(line: 167, column: 9, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5607, file: !528, line: 166, column: 34)
!5611 = !DILocation(line: 168, column: 9, scope: !5610)
!5612 = !DILocation(line: 170, column: 47, scope: !5598)
!5613 = !DILocation(line: 170, column: 21, scope: !5598)
!5614 = !DILocation(line: 171, column: 5, scope: !5598)
!5615 = !DILocation(line: 172, column: 1, scope: !5598)
!5616 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !528, file: !528, line: 174, type: !5617, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5619)
!5617 = !DISubroutineType(types: !5618)
!5618 = !{!5475, !5476, !571, !161}
!5619 = !{!5620, !5621, !5622}
!5620 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5616, file: !528, line: 174, type: !5476)
!5621 = !DILocalVariable(name: "callback", arg: 2, scope: !5616, file: !528, line: 175, type: !571)
!5622 = !DILocalVariable(name: "user_data", arg: 3, scope: !5616, file: !528, line: 176, type: !161)
!5623 = !DILocation(line: 0, scope: !5616)
!5624 = !DILocation(line: 178, column: 9, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5616, file: !528, line: 178, column: 9)
!5626 = !DILocation(line: 178, column: 9, scope: !5616)
!5627 = !DILocation(line: 179, column: 9, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5625, file: !528, line: 178, column: 50)
!5629 = !DILocation(line: 180, column: 9, scope: !5628)
!5630 = !DILocation(line: 182, column: 33, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5616, file: !528, line: 182, column: 9)
!5632 = !DILocation(line: 182, column: 47, scope: !5631)
!5633 = !DILocation(line: 182, column: 9, scope: !5616)
!5634 = !DILocation(line: 185, column: 18, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5616, file: !528, line: 185, column: 9)
!5636 = !DILocation(line: 185, column: 9, scope: !5616)
!5637 = !DILocation(line: 188, column: 46, scope: !5616)
!5638 = !DILocation(line: 188, column: 56, scope: !5616)
!5639 = !DILocation(line: 189, column: 46, scope: !5616)
!5640 = !DILocation(line: 189, column: 56, scope: !5616)
!5641 = !DILocation(line: 190, column: 5, scope: !5616)
!5642 = !DILocation(line: 191, column: 1, scope: !5616)
!5643 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !528, file: !528, line: 218, type: !5644, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5647)
!5644 = !DISubroutineType(types: !5645)
!5645 = !{!5475, !5476, !136, !5646}
!5646 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !531, line: 383, baseType: !554)
!5647 = !{!5648, !5649, !5650}
!5648 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5643, file: !528, line: 218, type: !5476)
!5649 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !5643, file: !528, line: 218, type: !136)
!5650 = !DILocalVariable(name: "timer_type", arg: 3, scope: !5643, file: !528, line: 218, type: !5646)
!5651 = !DILocation(line: 0, scope: !5643)
!5652 = !DILocation(line: 220, column: 9, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5643, file: !528, line: 220, column: 9)
!5654 = !DILocation(line: 220, column: 9, scope: !5643)
!5655 = !DILocation(line: 221, column: 9, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5653, file: !528, line: 220, column: 50)
!5657 = !DILocation(line: 222, column: 9, scope: !5656)
!5658 = !DILocation(line: 225, column: 33, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5643, file: !528, line: 225, column: 9)
!5660 = !DILocation(line: 225, column: 47, scope: !5659)
!5661 = !DILocation(line: 225, column: 9, scope: !5643)
!5662 = !DILocation(line: 229, column: 25, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5643, file: !528, line: 229, column: 9)
!5664 = !DILocation(line: 229, column: 9, scope: !5643)
!5665 = !DILocation(line: 234, column: 17, scope: !5643)
!5666 = !DILocation(line: 235, column: 17, scope: !5643)
!5667 = !DILocation(line: 236, column: 17, scope: !5643)
!5668 = !DILocation(line: 233, column: 5, scope: !5643)
!5669 = !DILocation(line: 237, column: 5, scope: !5643)
!5670 = !DILocation(line: 238, column: 29, scope: !5643)
!5671 = !DILocation(line: 238, column: 44, scope: !5643)
!5672 = !DILocation(line: 239, column: 5, scope: !5643)
!5673 = !DILocation(line: 240, column: 1, scope: !5643)
!5674 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !528, file: !528, line: 72, type: !5675, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5677)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!136, !136}
!5677 = !{!5678}
!5678 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !5674, file: !528, line: 72, type: !136)
!5679 = !DILocation(line: 0, scope: !5674)
!5680 = !DILocation(line: 74, column: 37, scope: !5674)
!5681 = !DILocation(line: 74, column: 47, scope: !5674)
!5682 = !DILocation(line: 74, column: 63, scope: !5674)
!5683 = !DILocation(line: 74, column: 42, scope: !5674)
!5684 = !DILocation(line: 74, column: 73, scope: !5674)
!5685 = !DILocation(line: 74, column: 89, scope: !5674)
!5686 = !DILocation(line: 74, column: 68, scope: !5674)
!5687 = !DILocation(line: 74, column: 100, scope: !5674)
!5688 = !DILocation(line: 74, column: 116, scope: !5674)
!5689 = !DILocation(line: 74, column: 95, scope: !5674)
!5690 = !DILocation(line: 74, column: 5, scope: !5674)
!5691 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !528, file: !528, line: 77, type: !5692, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5694)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!126, !5646}
!5694 = !{!5695}
!5695 = !DILocalVariable(name: "type", arg: 1, scope: !5691, file: !528, line: 77, type: !5646)
!5696 = !DILocation(line: 0, scope: !5691)
!5697 = !DILocation(line: 79, column: 38, scope: !5691)
!5698 = !DILocation(line: 79, column: 5, scope: !5691)
!5699 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !528, file: !528, line: 213, type: !5700, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5703)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!5702, !5476}
!5702 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !528, line: 211, baseType: !180)
!5703 = !{!5704}
!5704 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5699, file: !528, line: 213, type: !5476)
!5705 = !DILocation(line: 0, scope: !5699)
!5706 = !DILocation(line: 215, column: 23, scope: !5699)
!5707 = !DILocation(line: 215, column: 12, scope: !5699)
!5708 = !DILocation(line: 215, column: 5, scope: !5699)
!5709 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !528, file: !528, line: 193, type: !181, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5710)
!5710 = !{!5711}
!5711 = !DILocalVariable(name: "context", scope: !5709, file: !528, line: 195, type: !5712)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!5713 = !DILocation(line: 196, column: 26, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5709, file: !528, line: 196, column: 9)
!5715 = !DILocation(line: 196, column: 14, scope: !5714)
!5716 = !DILocation(line: 196, column: 9, scope: !5709)
!5717 = !DILocation(line: 197, column: 36, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5714, file: !528, line: 196, column: 36)
!5719 = !DILocation(line: 197, column: 9, scope: !5718)
!5720 = !DILocation(line: 198, column: 5, scope: !5718)
!5721 = !DILocation(line: 199, column: 45, scope: !5709)
!5722 = !DILocation(line: 200, column: 1, scope: !5709)
!5723 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !528, file: !528, line: 202, type: !181, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5724)
!5724 = !{!5725}
!5725 = !DILocalVariable(name: "context", scope: !5723, file: !528, line: 204, type: !5712)
!5726 = !DILocation(line: 205, column: 26, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5723, file: !528, line: 205, column: 9)
!5728 = !DILocation(line: 205, column: 14, scope: !5727)
!5729 = !DILocation(line: 205, column: 9, scope: !5723)
!5730 = !DILocation(line: 206, column: 36, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5727, file: !528, line: 205, column: 36)
!5732 = !DILocation(line: 206, column: 9, scope: !5731)
!5733 = !DILocation(line: 207, column: 5, scope: !5731)
!5734 = !DILocation(line: 208, column: 45, scope: !5723)
!5735 = !DILocation(line: 209, column: 1, scope: !5723)
!5736 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !528, file: !528, line: 242, type: !5473, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5737)
!5737 = !{!5738}
!5738 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5736, file: !528, line: 242, type: !5476)
!5739 = !DILocation(line: 0, scope: !5736)
!5740 = !DILocation(line: 244, column: 9, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5736, file: !528, line: 244, column: 9)
!5742 = !DILocation(line: 244, column: 9, scope: !5736)
!5743 = !DILocation(line: 245, column: 9, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5741, file: !528, line: 244, column: 50)
!5745 = !DILocation(line: 246, column: 9, scope: !5744)
!5746 = !DILocation(line: 248, column: 5, scope: !5736)
!5747 = !DILocation(line: 249, column: 29, scope: !5736)
!5748 = !DILocation(line: 249, column: 44, scope: !5736)
!5749 = !DILocation(line: 250, column: 5, scope: !5736)
!5750 = !DILocation(line: 251, column: 1, scope: !5736)
!5751 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !528, file: !528, line: 253, type: !5752, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5754)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!5475, !136}
!5754 = !{!5755}
!5755 = !DILocalVariable(name: "ms", arg: 1, scope: !5751, file: !528, line: 253, type: !136)
!5756 = !DILocation(line: 0, scope: !5751)
!5757 = !DILocation(line: 255, column: 46, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5751, file: !528, line: 255, column: 9)
!5759 = !DILocation(line: 255, column: 61, scope: !5758)
!5760 = !DILocation(line: 255, column: 9, scope: !5751)
!5761 = !DILocation(line: 256, column: 9, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5758, file: !528, line: 255, column: 82)
!5763 = !DILocation(line: 257, column: 5, scope: !5762)
!5764 = !DILocation(line: 258, column: 5, scope: !5751)
!5765 = !DILocation(line: 259, column: 57, scope: !5751)
!5766 = !DILocation(line: 260, column: 5, scope: !5751)
!5767 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !528, file: !528, line: 264, type: !5752, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !5768)
!5768 = !{!5769}
!5769 = !DILocalVariable(name: "us", arg: 1, scope: !5767, file: !528, line: 264, type: !136)
!5770 = !DILocation(line: 0, scope: !5767)
!5771 = !DILocation(line: 266, column: 46, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5767, file: !528, line: 266, column: 9)
!5773 = !DILocation(line: 266, column: 61, scope: !5772)
!5774 = !DILocation(line: 266, column: 9, scope: !5767)
!5775 = !DILocation(line: 267, column: 9, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5772, file: !528, line: 266, column: 82)
!5777 = !DILocation(line: 268, column: 5, scope: !5776)
!5778 = !DILocation(line: 269, column: 5, scope: !5767)
!5779 = !DILocation(line: 270, column: 57, scope: !5767)
!5780 = !DILocation(line: 271, column: 5, scope: !5767)
!5781 = distinct !DISubprogram(name: "hal_uart_init", scope: !580, file: !580, line: 234, type: !5782, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5786)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!5784, !639, !5785}
!5784 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !583, line: 351, baseType: !582)
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 32)
!5786 = !{!5787, !5788}
!5787 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5781, file: !580, line: 234, type: !639)
!5788 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5781, file: !580, line: 234, type: !5785)
!5789 = !DILocation(line: 0, scope: !5781)
!5790 = !DILocation(line: 236, column: 10, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5781, file: !580, line: 236, column: 9)
!5792 = !DILocation(line: 236, column: 9, scope: !5781)
!5793 = !DILocation(line: 239, column: 41, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5781, file: !580, line: 239, column: 9)
!5795 = !DILocation(line: 239, column: 9, scope: !5781)
!5796 = !DILocation(line: 242, column: 5, scope: !5781)
!5797 = !DILocation(line: 243, column: 45, scope: !5781)
!5798 = !DILocation(line: 243, column: 12, scope: !5781)
!5799 = !DILocation(line: 244, column: 12, scope: !5781)
!5800 = !DILocation(line: 243, column: 5, scope: !5781)
!5801 = !DILocation(line: 245, column: 58, scope: !5781)
!5802 = !DILocation(line: 246, column: 30, scope: !5781)
!5803 = !{i32 0, i32 2}
!5804 = !DILocation(line: 246, column: 5, scope: !5781)
!5805 = !DILocation(line: 247, column: 5, scope: !5781)
!5806 = !DILocation(line: 249, column: 31, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5781, file: !580, line: 249, column: 9)
!5808 = !DILocation(line: 249, column: 28, scope: !5807)
!5809 = !DILocation(line: 261, column: 1, scope: !5781)
!5810 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !580, file: !580, line: 93, type: !5811, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5815)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!126, !639, !5813}
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 32)
!5814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!5815 = !{!5816, !5817}
!5816 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5810, file: !580, line: 93, type: !639)
!5817 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5810, file: !580, line: 93, type: !5813)
!5818 = !DILocation(line: 0, scope: !5810)
!5819 = !DILocation(line: 95, column: 10, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5810, file: !580, line: 95, column: 9)
!5821 = !DILocation(line: 95, column: 9, scope: !5810)
!5822 = !DILocation(line: 101, column: 23, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5810, file: !580, line: 101, column: 9)
!5824 = !DILocation(line: 101, column: 32, scope: !5823)
!5825 = !DILocation(line: 101, column: 60, scope: !5823)
!5826 = !DILocation(line: 102, column: 27, scope: !5823)
!5827 = !DILocation(line: 102, column: 34, scope: !5823)
!5828 = !DILocation(line: 102, column: 58, scope: !5823)
!5829 = !DILocation(line: 103, column: 27, scope: !5823)
!5830 = !DILocation(line: 103, column: 36, scope: !5823)
!5831 = !DILocation(line: 103, column: 59, scope: !5823)
!5832 = !DILocation(line: 104, column: 27, scope: !5823)
!5833 = !DILocation(line: 104, column: 39, scope: !5823)
!5834 = !DILocation(line: 101, column: 9, scope: !5810)
!5835 = !DILocation(line: 109, column: 1, scope: !5810)
!5836 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !580, file: !580, line: 139, type: !5837, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5839)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{!3714, !639}
!5839 = !{!5840}
!5840 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5836, file: !580, line: 139, type: !639)
!5841 = !DILocation(line: 0, scope: !5836)
!5842 = !DILocation(line: 141, column: 24, scope: !5836)
!5843 = !DILocation(line: 141, column: 12, scope: !5836)
!5844 = !DILocation(line: 141, column: 5, scope: !5836)
!5845 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !580, file: !580, line: 593, type: !5846, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5848)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{!5784, !639, !5813}
!5848 = !{!5849, !5850}
!5849 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5845, file: !580, line: 593, type: !639)
!5850 = !DILocalVariable(name: "config", arg: 2, scope: !5845, file: !580, line: 593, type: !5813)
!5851 = !DILocation(line: 0, scope: !5845)
!5852 = !DILocation(line: 595, column: 10, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5845, file: !580, line: 595, column: 9)
!5854 = !DILocation(line: 595, column: 9, scope: !5845)
!5855 = !DILocation(line: 598, column: 45, scope: !5845)
!5856 = !DILocation(line: 598, column: 12, scope: !5845)
!5857 = !DILocation(line: 598, column: 59, scope: !5845)
!5858 = !DILocation(line: 598, column: 5, scope: !5845)
!5859 = !DILocation(line: 599, column: 23, scope: !5845)
!5860 = !DILocation(line: 600, column: 59, scope: !5845)
!5861 = !DILocation(line: 600, column: 23, scope: !5845)
!5862 = !DILocation(line: 601, column: 62, scope: !5845)
!5863 = !DILocation(line: 601, column: 23, scope: !5845)
!5864 = !DILocation(line: 602, column: 57, scope: !5845)
!5865 = !DILocation(line: 602, column: 23, scope: !5845)
!5866 = !DILocation(line: 603, column: 58, scope: !5845)
!5867 = !DILocation(line: 603, column: 23, scope: !5845)
!5868 = !DILocation(line: 599, column: 5, scope: !5845)
!5869 = !DILocation(line: 604, column: 5, scope: !5845)
!5870 = !DILocation(line: 605, column: 1, scope: !5845)
!5871 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !580, file: !580, line: 145, type: !5872, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5874)
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!136, !654}
!5874 = !{!5875, !5876}
!5875 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5871, file: !580, line: 145, type: !654)
!5876 = !DILocalVariable(name: "baudrate_tbl", scope: !5871, file: !580, line: 147, type: !5877)
!5877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !5878)
!5878 = !{!5879}
!5879 = !DISubrange(count: 13)
!5880 = !DILocation(line: 0, scope: !5871)
!5881 = !DILocation(line: 147, column: 14, scope: !5871)
!5882 = !DILocation(line: 151, column: 12, scope: !5871)
!5883 = !DILocation(line: 151, column: 5, scope: !5871)
!5884 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !580, file: !580, line: 155, type: !5885, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5887)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!307, !656}
!5887 = !{!5888, !5889}
!5888 = !DILocalVariable(name: "word_length", arg: 1, scope: !5884, file: !580, line: 155, type: !656)
!5889 = !DILocalVariable(name: "databit_tbl", scope: !5884, file: !580, line: 157, type: !5890)
!5890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !504)
!5891 = !DILocation(line: 0, scope: !5884)
!5892 = !DILocation(line: 157, column: 14, scope: !5884)
!5893 = !DILocation(line: 160, column: 12, scope: !5884)
!5894 = !DILocation(line: 160, column: 5, scope: !5884)
!5895 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !580, file: !580, line: 164, type: !5896, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5898)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!307, !660}
!5898 = !{!5899, !5900}
!5899 = !DILocalVariable(name: "parity", arg: 1, scope: !5895, file: !580, line: 164, type: !660)
!5900 = !DILocalVariable(name: "parity_tbl", scope: !5895, file: !580, line: 166, type: !5901)
!5901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 80, elements: !508)
!5902 = !DILocation(line: 0, scope: !5895)
!5903 = !DILocation(line: 166, column: 14, scope: !5895)
!5904 = !DILocation(line: 169, column: 12, scope: !5895)
!5905 = !DILocation(line: 169, column: 5, scope: !5895)
!5906 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !580, file: !580, line: 173, type: !5907, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5909)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!307, !658}
!5909 = !{!5910, !5911}
!5910 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5906, file: !580, line: 173, type: !658)
!5911 = !DILocalVariable(name: "stopbit_tbl", scope: !5906, file: !580, line: 175, type: !5912)
!5912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 48, elements: !806)
!5913 = !DILocation(line: 0, scope: !5906)
!5914 = !DILocation(line: 175, column: 14, scope: !5906)
!5915 = !DILocation(line: 178, column: 12, scope: !5906)
!5916 = !DILocation(line: 178, column: 5, scope: !5906)
!5917 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !580, file: !580, line: 87, type: !5918, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5920)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!126, !639}
!5920 = !{!5921}
!5921 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5917, file: !580, line: 87, type: !639)
!5922 = !DILocation(line: 0, scope: !5917)
!5923 = !DILocation(line: 89, column: 23, scope: !5917)
!5924 = !DILocation(line: 89, column: 5, scope: !5917)
!5925 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !580, file: !580, line: 264, type: !5926, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5928)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!5784, !639}
!5928 = !{!5929}
!5929 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5925, file: !580, line: 264, type: !639)
!5930 = !DILocation(line: 0, scope: !5925)
!5931 = !DILocation(line: 266, column: 10, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5925, file: !580, line: 266, column: 9)
!5933 = !DILocation(line: 266, column: 9, scope: !5925)
!5934 = !DILocation(line: 269, column: 41, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5925, file: !580, line: 269, column: 9)
!5936 = !DILocation(line: 269, column: 62, scope: !5935)
!5937 = !DILocation(line: 269, column: 9, scope: !5925)
!5938 = !DILocation(line: 272, column: 5, scope: !5925)
!5939 = !DILocation(line: 275, column: 22, scope: !5925)
!5940 = !DILocation(line: 275, column: 5, scope: !5925)
!5941 = !DILocation(line: 284, column: 5, scope: !5925)
!5942 = !DILocation(line: 286, column: 5, scope: !5925)
!5943 = !DILocation(line: 287, column: 1, scope: !5925)
!5944 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !580, file: !580, line: 290, type: !5945, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5947)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{null, !639, !632}
!5947 = !{!5948, !5949, !5950}
!5948 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5944, file: !580, line: 290, type: !639)
!5949 = !DILocalVariable(name: "byte", arg: 2, scope: !5944, file: !580, line: 290, type: !632)
!5950 = !DILocalVariable(name: "int_no", scope: !5944, file: !580, line: 292, type: !3714)
!5951 = !DILocation(line: 0, scope: !5944)
!5952 = !DILocation(line: 292, column: 26, scope: !5944)
!5953 = !DILocation(line: 294, column: 16, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5944, file: !580, line: 294, column: 9)
!5955 = !DILocation(line: 294, column: 9, scope: !5944)
!5956 = !DILocation(line: 295, column: 9, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5954, file: !580, line: 294, column: 34)
!5958 = !DILocation(line: 296, column: 5, scope: !5957)
!5959 = !DILocation(line: 299, column: 1, scope: !5944)
!5960 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !580, file: !580, line: 302, type: !5961, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5963)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!136, !639, !3919, !136}
!5963 = !{!5964, !5965, !5966, !5967, !5968}
!5964 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5960, file: !580, line: 302, type: !639)
!5965 = !DILocalVariable(name: "data", arg: 2, scope: !5960, file: !580, line: 302, type: !3919)
!5966 = !DILocalVariable(name: "size", arg: 3, scope: !5960, file: !580, line: 302, type: !136)
!5967 = !DILocalVariable(name: "int_no", scope: !5960, file: !580, line: 304, type: !3714)
!5968 = !DILocalVariable(name: "index", scope: !5960, file: !580, line: 305, type: !136)
!5969 = !DILocation(line: 0, scope: !5960)
!5970 = !DILocation(line: 304, column: 26, scope: !5960)
!5971 = !DILocation(line: 307, column: 14, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5960, file: !580, line: 307, column: 9)
!5973 = !DILocation(line: 307, column: 9, scope: !5960)
!5974 = !DILocation(line: 313, column: 53, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5976, file: !580, line: 312, column: 48)
!5976 = distinct !DILexicalBlock(scope: !5977, file: !580, line: 312, column: 9)
!5977 = distinct !DILexicalBlock(scope: !5978, file: !580, line: 312, column: 9)
!5978 = distinct !DILexicalBlock(scope: !5979, file: !580, line: 311, column: 33)
!5979 = distinct !DILexicalBlock(scope: !5960, file: !580, line: 311, column: 9)
!5980 = !DILocation(line: 313, column: 13, scope: !5975)
!5981 = !DILocation(line: 312, column: 44, scope: !5976)
!5982 = !DILocation(line: 312, column: 31, scope: !5976)
!5983 = !DILocation(line: 312, column: 9, scope: !5977)
!5984 = distinct !{!5984, !5983, !5985}
!5985 = !DILocation(line: 314, column: 9, scope: !5977)
!5986 = !DILocation(line: 318, column: 1, scope: !5960)
!5987 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !580, file: !580, line: 320, type: !5961, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !5988)
!5988 = !{!5989, !5990, !5991, !5992, !5993, !5994}
!5989 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5987, file: !580, line: 320, type: !639)
!5990 = !DILocalVariable(name: "data", arg: 2, scope: !5987, file: !580, line: 320, type: !3919)
!5991 = !DILocalVariable(name: "size", arg: 3, scope: !5987, file: !580, line: 320, type: !136)
!5992 = !DILocalVariable(name: "actual_space", scope: !5987, file: !580, line: 322, type: !136)
!5993 = !DILocalVariable(name: "send_size", scope: !5987, file: !580, line: 322, type: !136)
!5994 = !DILocalVariable(name: "ch", scope: !5987, file: !580, line: 323, type: !1995)
!5995 = !DILocation(line: 0, scope: !5987)
!5996 = !DILocation(line: 322, column: 5, scope: !5987)
!5997 = !DILocation(line: 328, column: 10, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5987, file: !580, line: 328, column: 9)
!5999 = !DILocation(line: 328, column: 9, scope: !5987)
!6000 = !DILocation(line: 332, column: 15, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5987, file: !580, line: 332, column: 9)
!6002 = !DILocation(line: 332, column: 24, scope: !6001)
!6003 = !DILocation(line: 335, column: 42, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5987, file: !580, line: 335, column: 9)
!6005 = !DILocation(line: 335, column: 9, scope: !5987)
!6006 = !DILocation(line: 349, column: 30, scope: !5987)
!6007 = !DILocation(line: 349, column: 5, scope: !5987)
!6008 = !DILocation(line: 350, column: 9, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5987, file: !580, line: 350, column: 9)
!6010 = !DILocation(line: 350, column: 22, scope: !6009)
!6011 = !DILocation(line: 355, column: 5, scope: !5987)
!6012 = !DILocation(line: 357, column: 22, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5987, file: !580, line: 357, column: 9)
!6014 = !DILocation(line: 357, column: 19, scope: !6013)
!6015 = !DILocation(line: 357, column: 9, scope: !5987)
!6016 = !DILocation(line: 358, column: 14, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6013, file: !580, line: 357, column: 36)
!6018 = !{i32 14, i32 18}
!6019 = !DILocation(line: 359, column: 9, scope: !6017)
!6020 = !DILocation(line: 360, column: 5, scope: !6017)
!6021 = !DILocation(line: 362, column: 1, scope: !5987)
!6022 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !580, file: !580, line: 191, type: !6023, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6025)
!6023 = !DISubroutineType(types: !6024)
!6024 = !{!1995, !3714, !126}
!6025 = !{!6026, !6027, !6028}
!6026 = !DILocalVariable(name: "port", arg: 1, scope: !6022, file: !580, line: 191, type: !3714)
!6027 = !DILocalVariable(name: "is_rx", arg: 2, scope: !6022, file: !580, line: 191, type: !126)
!6028 = !DILocalVariable(name: "ch", scope: !6022, file: !580, line: 193, type: !1995)
!6029 = !DILocation(line: 0, scope: !6022)
!6030 = !DILocation(line: 195, column: 14, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6022, file: !580, line: 195, column: 9)
!6032 = !DILocation(line: 195, column: 9, scope: !6022)
!6033 = !DILocation(line: 209, column: 5, scope: !6022)
!6034 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !580, file: !580, line: 365, type: !6035, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6037)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!632, !639}
!6037 = !{!6038, !6039}
!6038 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6034, file: !580, line: 365, type: !639)
!6039 = !DILocalVariable(name: "int_no", scope: !6034, file: !580, line: 367, type: !3714)
!6040 = !DILocation(line: 0, scope: !6034)
!6041 = !DILocation(line: 367, column: 26, scope: !6034)
!6042 = !DILocation(line: 369, column: 16, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6034, file: !580, line: 369, column: 9)
!6044 = !DILocation(line: 369, column: 9, scope: !6034)
!6045 = !DILocation(line: 370, column: 22, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6043, file: !580, line: 369, column: 33)
!6047 = !DILocation(line: 370, column: 9, scope: !6046)
!6048 = !DILocation(line: 0, scope: !6043)
!6049 = !DILocation(line: 375, column: 1, scope: !6034)
!6050 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !580, file: !580, line: 377, type: !6051, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6053)
!6051 = !DISubroutineType(types: !6052)
!6052 = !{!136, !639}
!6053 = !{!6054, !6055}
!6054 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6050, file: !580, line: 377, type: !639)
!6055 = !DILocalVariable(name: "int_no", scope: !6050, file: !580, line: 379, type: !3714)
!6056 = !DILocation(line: 0, scope: !6050)
!6057 = !DILocation(line: 379, column: 26, scope: !6050)
!6058 = !DILocation(line: 381, column: 16, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6050, file: !580, line: 381, column: 9)
!6060 = !DILocation(line: 381, column: 9, scope: !6050)
!6061 = !DILocation(line: 382, column: 16, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6059, file: !580, line: 381, column: 33)
!6063 = !DILocation(line: 382, column: 9, scope: !6062)
!6064 = !DILocation(line: 0, scope: !6059)
!6065 = !DILocation(line: 387, column: 1, scope: !6050)
!6066 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !580, file: !580, line: 390, type: !6067, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6069)
!6067 = !DISubroutineType(types: !6068)
!6068 = !{!136, !639, !679, !136}
!6069 = !{!6070, !6071, !6072, !6073, !6074}
!6070 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6066, file: !580, line: 390, type: !639)
!6071 = !DILocalVariable(name: "buffer", arg: 2, scope: !6066, file: !580, line: 390, type: !679)
!6072 = !DILocalVariable(name: "size", arg: 3, scope: !6066, file: !580, line: 390, type: !136)
!6073 = !DILocalVariable(name: "int_no", scope: !6066, file: !580, line: 392, type: !3714)
!6074 = !DILocalVariable(name: "index", scope: !6066, file: !580, line: 393, type: !136)
!6075 = !DILocation(line: 0, scope: !6066)
!6076 = !DILocation(line: 392, column: 26, scope: !6066)
!6077 = !DILocation(line: 395, column: 16, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6066, file: !580, line: 395, column: 9)
!6079 = !DILocation(line: 395, column: 9, scope: !6066)
!6080 = !DILocation(line: 401, column: 38, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6082, file: !580, line: 400, column: 48)
!6082 = distinct !DILexicalBlock(scope: !6083, file: !580, line: 400, column: 9)
!6083 = distinct !DILexicalBlock(scope: !6084, file: !580, line: 400, column: 9)
!6084 = distinct !DILexicalBlock(scope: !6085, file: !580, line: 399, column: 33)
!6085 = distinct !DILexicalBlock(scope: !6066, file: !580, line: 399, column: 9)
!6086 = !DILocation(line: 401, column: 13, scope: !6081)
!6087 = !DILocation(line: 401, column: 27, scope: !6081)
!6088 = !DILocation(line: 400, column: 44, scope: !6082)
!6089 = !DILocation(line: 400, column: 31, scope: !6082)
!6090 = !DILocation(line: 400, column: 9, scope: !6083)
!6091 = distinct !{!6091, !6090, !6092}
!6092 = !DILocation(line: 402, column: 9, scope: !6083)
!6093 = !DILocation(line: 406, column: 1, scope: !6066)
!6094 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !580, file: !580, line: 408, type: !6067, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6095)
!6095 = !{!6096, !6097, !6098, !6099, !6100, !6101}
!6096 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6094, file: !580, line: 408, type: !639)
!6097 = !DILocalVariable(name: "buffer", arg: 2, scope: !6094, file: !580, line: 408, type: !679)
!6098 = !DILocalVariable(name: "size", arg: 3, scope: !6094, file: !580, line: 408, type: !136)
!6099 = !DILocalVariable(name: "actual_size", scope: !6094, file: !580, line: 410, type: !136)
!6100 = !DILocalVariable(name: "receive_size", scope: !6094, file: !580, line: 410, type: !136)
!6101 = !DILocalVariable(name: "ch", scope: !6094, file: !580, line: 411, type: !1995)
!6102 = !DILocation(line: 0, scope: !6094)
!6103 = !DILocation(line: 410, column: 5, scope: !6094)
!6104 = !DILocation(line: 413, column: 10, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6094, file: !580, line: 413, column: 9)
!6106 = !DILocation(line: 413, column: 9, scope: !6094)
!6107 = !DILocation(line: 417, column: 17, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6094, file: !580, line: 417, column: 9)
!6109 = !DILocation(line: 417, column: 26, scope: !6108)
!6110 = !DILocation(line: 421, column: 30, scope: !6094)
!6111 = !DILocation(line: 421, column: 5, scope: !6094)
!6112 = !DILocation(line: 422, column: 9, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6094, file: !580, line: 422, column: 9)
!6114 = !DILocation(line: 422, column: 21, scope: !6113)
!6115 = !DILocation(line: 427, column: 5, scope: !6094)
!6116 = !DILocation(line: 429, column: 25, scope: !6117)
!6117 = distinct !DILexicalBlock(scope: !6094, file: !580, line: 429, column: 9)
!6118 = !DILocation(line: 429, column: 22, scope: !6117)
!6119 = !DILocation(line: 429, column: 9, scope: !6094)
!6120 = !DILocation(line: 430, column: 14, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6117, file: !580, line: 429, column: 38)
!6122 = !DILocation(line: 431, column: 9, scope: !6121)
!6123 = !DILocation(line: 432, column: 5, scope: !6121)
!6124 = !DILocation(line: 435, column: 1, scope: !6094)
!6125 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !580, file: !580, line: 438, type: !6051, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6126)
!6126 = !{!6127, !6128}
!6127 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6125, file: !580, line: 438, type: !639)
!6128 = !DILocalVariable(name: "length", scope: !6125, file: !580, line: 440, type: !136)
!6129 = !DILocation(line: 0, scope: !6125)
!6130 = !DILocation(line: 440, column: 5, scope: !6125)
!6131 = !DILocation(line: 440, column: 14, scope: !6125)
!6132 = !DILocation(line: 442, column: 10, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6125, file: !580, line: 442, column: 9)
!6134 = !DILocation(line: 442, column: 9, scope: !6125)
!6135 = !DILocation(line: 446, column: 30, scope: !6125)
!6136 = !DILocation(line: 446, column: 5, scope: !6125)
!6137 = !DILocation(line: 447, column: 12, scope: !6125)
!6138 = !DILocation(line: 447, column: 5, scope: !6125)
!6139 = !DILocation(line: 448, column: 1, scope: !6125)
!6140 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !580, file: !580, line: 451, type: !6051, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6141)
!6141 = !{!6142, !6143}
!6142 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6140, file: !580, line: 451, type: !639)
!6143 = !DILocalVariable(name: "length", scope: !6140, file: !580, line: 453, type: !136)
!6144 = !DILocation(line: 0, scope: !6140)
!6145 = !DILocation(line: 453, column: 5, scope: !6140)
!6146 = !DILocation(line: 453, column: 14, scope: !6140)
!6147 = !DILocation(line: 455, column: 10, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6140, file: !580, line: 455, column: 9)
!6149 = !DILocation(line: 455, column: 9, scope: !6140)
!6150 = !DILocation(line: 459, column: 30, scope: !6140)
!6151 = !DILocation(line: 459, column: 5, scope: !6140)
!6152 = !DILocation(line: 461, column: 12, scope: !6140)
!6153 = !DILocation(line: 461, column: 5, scope: !6140)
!6154 = !DILocation(line: 462, column: 1, scope: !6140)
!6155 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !580, file: !580, line: 543, type: !6156, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6158)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{!5784, !639, !667, !161}
!6158 = !{!6159, !6160, !6161, !6162}
!6159 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6155, file: !580, line: 543, type: !639)
!6160 = !DILocalVariable(name: "user_callback", arg: 2, scope: !6155, file: !580, line: 544, type: !667)
!6161 = !DILocalVariable(name: "user_data", arg: 3, scope: !6155, file: !580, line: 545, type: !161)
!6162 = !DILocalVariable(name: "ch", scope: !6155, file: !580, line: 547, type: !1995)
!6163 = !DILocation(line: 0, scope: !6155)
!6164 = !DILocation(line: 549, column: 10, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6155, file: !580, line: 549, column: 9)
!6166 = !DILocation(line: 549, column: 9, scope: !6155)
!6167 = !DILocation(line: 556, column: 53, scope: !6155)
!6168 = !DILocation(line: 556, column: 62, scope: !6155)
!6169 = !DILocation(line: 557, column: 53, scope: !6155)
!6170 = !DILocation(line: 557, column: 63, scope: !6155)
!6171 = !DILocation(line: 558, column: 37, scope: !6155)
!6172 = !DILocation(line: 558, column: 54, scope: !6155)
!6173 = !DILocation(line: 560, column: 39, scope: !6155)
!6174 = !DILocation(line: 561, column: 39, scope: !6155)
!6175 = !DILocation(line: 560, column: 5, scope: !6155)
!6176 = !DILocation(line: 562, column: 5, scope: !6155)
!6177 = !DILocation(line: 564, column: 44, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6155, file: !580, line: 564, column: 9)
!6179 = !DILocation(line: 564, column: 9, scope: !6155)
!6180 = !DILocation(line: 565, column: 9, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6178, file: !580, line: 564, column: 59)
!6182 = !DILocation(line: 566, column: 5, scope: !6181)
!6183 = !DILocation(line: 567, column: 9, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6178, file: !580, line: 566, column: 12)
!6185 = !DILocation(line: 569, column: 10, scope: !6155)
!6186 = !DILocation(line: 570, column: 5, scope: !6155)
!6187 = !DILocation(line: 578, column: 5, scope: !6155)
!6188 = !DILocation(line: 579, column: 1, scope: !6155)
!6189 = !DILocation(line: 0, scope: !636)
!6190 = !DILocation(line: 539, column: 12, scope: !636)
!6191 = !DILocation(line: 539, column: 5, scope: !636)
!6192 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !580, file: !580, line: 511, type: !181, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6193)
!6193 = !{!6194}
!6194 = !DILocalVariable(name: "callback_context", scope: !6195, file: !580, line: 514, type: !6197)
!6195 = distinct !DILexicalBlock(scope: !6196, file: !580, line: 513, column: 60)
!6196 = distinct !DILexicalBlock(scope: !6192, file: !580, line: 513, column: 9)
!6197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 32)
!6198 = !DILocation(line: 513, column: 42, scope: !6196)
!6199 = !DILocation(line: 513, column: 9, scope: !6192)
!6200 = !DILocation(line: 515, column: 39, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6195, file: !580, line: 515, column: 13)
!6202 = !DILocation(line: 515, column: 18, scope: !6201)
!6203 = !DILocation(line: 515, column: 13, scope: !6195)
!6204 = !DILocation(line: 516, column: 89, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6201, file: !580, line: 515, column: 49)
!6206 = !DILocation(line: 516, column: 13, scope: !6205)
!6207 = !DILocation(line: 517, column: 9, scope: !6205)
!6208 = !DILocation(line: 519, column: 32, scope: !6192)
!6209 = !DILocation(line: 519, column: 5, scope: !6192)
!6210 = !DILocation(line: 520, column: 1, scope: !6192)
!6211 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !580, file: !580, line: 523, type: !181, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6212)
!6212 = !{!6213}
!6213 = !DILocalVariable(name: "callback_context", scope: !6214, file: !580, line: 526, type: !6197)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !580, line: 525, column: 60)
!6215 = distinct !DILexicalBlock(scope: !6211, file: !580, line: 525, column: 9)
!6216 = !DILocation(line: 525, column: 42, scope: !6215)
!6217 = !DILocation(line: 525, column: 9, scope: !6211)
!6218 = !DILocation(line: 527, column: 39, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6214, file: !580, line: 527, column: 13)
!6220 = !DILocation(line: 527, column: 18, scope: !6219)
!6221 = !DILocation(line: 527, column: 13, scope: !6214)
!6222 = !DILocation(line: 528, column: 89, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6219, file: !580, line: 527, column: 49)
!6224 = !DILocation(line: 528, column: 13, scope: !6223)
!6225 = !DILocation(line: 529, column: 9, scope: !6223)
!6226 = !DILocation(line: 531, column: 32, scope: !6211)
!6227 = !DILocation(line: 531, column: 5, scope: !6211)
!6228 = !DILocation(line: 532, column: 1, scope: !6211)
!6229 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !580, file: !580, line: 464, type: !6230, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6232)
!6230 = !DISubroutineType(types: !6231)
!6231 = !{null, !3714, !126}
!6232 = !{!6233, !6234, !6235, !6236, !6237, !6239}
!6233 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6229, file: !580, line: 464, type: !3714)
!6234 = !DILocalVariable(name: "is_rx", arg: 2, scope: !6229, file: !580, line: 464, type: !126)
!6235 = !DILocalVariable(name: "avail_size", scope: !6229, file: !580, line: 466, type: !136)
!6236 = !DILocalVariable(name: "avail_space", scope: !6229, file: !580, line: 466, type: !136)
!6237 = !DILocalVariable(name: "dma_config", scope: !6229, file: !580, line: 467, type: !6238)
!6238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 32)
!6239 = !DILocalVariable(name: "ch", scope: !6229, file: !580, line: 468, type: !1995)
!6240 = !DILocation(line: 0, scope: !6229)
!6241 = !DILocation(line: 466, column: 5, scope: !6229)
!6242 = !DILocation(line: 471, column: 9, scope: !6229)
!6243 = !DILocation(line: 472, column: 9, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !580, line: 471, column: 16)
!6245 = distinct !DILexicalBlock(scope: !6229, file: !580, line: 471, column: 9)
!6246 = !DILocation(line: 473, column: 13, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6244, file: !580, line: 473, column: 13)
!6248 = !DILocation(line: 473, column: 39, scope: !6247)
!6249 = !DILocation(line: 473, column: 24, scope: !6247)
!6250 = !DILocation(line: 473, column: 13, scope: !6244)
!6251 = !DILocation(line: 478, column: 9, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6245, file: !580, line: 477, column: 12)
!6253 = !DILocation(line: 479, column: 13, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6252, file: !580, line: 479, column: 13)
!6255 = !DILocation(line: 479, column: 40, scope: !6254)
!6256 = !DILocation(line: 479, column: 77, scope: !6254)
!6257 = !DILocation(line: 479, column: 63, scope: !6254)
!6258 = !DILocation(line: 479, column: 25, scope: !6254)
!6259 = !DILocation(line: 479, column: 13, scope: !6252)
!6260 = !DILocation(line: 0, scope: !6245)
!6261 = !DILocation(line: 484, column: 1, scope: !6229)
!6262 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !580, file: !580, line: 486, type: !181, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6263)
!6263 = !{!6264}
!6264 = !DILocalVariable(name: "callback_context", scope: !6265, file: !580, line: 490, type: !6197)
!6265 = distinct !DILexicalBlock(scope: !6266, file: !580, line: 489, column: 70)
!6266 = distinct !DILexicalBlock(scope: !6262, file: !580, line: 488, column: 9)
!6267 = !DILocation(line: 488, column: 43, scope: !6266)
!6268 = !DILocation(line: 488, column: 61, scope: !6266)
!6269 = !DILocation(line: 489, column: 14, scope: !6266)
!6270 = !DILocation(line: 489, column: 63, scope: !6266)
!6271 = !DILocation(line: 488, column: 9, scope: !6262)
!6272 = !DILocation(line: 491, column: 39, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6265, file: !580, line: 491, column: 13)
!6274 = !DILocation(line: 491, column: 18, scope: !6273)
!6275 = !DILocation(line: 491, column: 13, scope: !6265)
!6276 = !DILocation(line: 492, column: 88, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6273, file: !580, line: 491, column: 49)
!6278 = !DILocation(line: 492, column: 13, scope: !6277)
!6279 = !DILocation(line: 493, column: 9, scope: !6277)
!6280 = !DILocation(line: 495, column: 32, scope: !6262)
!6281 = !DILocation(line: 495, column: 5, scope: !6262)
!6282 = !DILocation(line: 496, column: 1, scope: !6262)
!6283 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !580, file: !580, line: 499, type: !181, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6284)
!6284 = !{!6285}
!6285 = !DILocalVariable(name: "callback_context", scope: !6286, file: !580, line: 503, type: !6197)
!6286 = distinct !DILexicalBlock(scope: !6287, file: !580, line: 502, column: 70)
!6287 = distinct !DILexicalBlock(scope: !6283, file: !580, line: 501, column: 9)
!6288 = !DILocation(line: 501, column: 43, scope: !6287)
!6289 = !DILocation(line: 501, column: 61, scope: !6287)
!6290 = !DILocation(line: 502, column: 14, scope: !6287)
!6291 = !DILocation(line: 502, column: 63, scope: !6287)
!6292 = !DILocation(line: 501, column: 9, scope: !6283)
!6293 = !DILocation(line: 504, column: 39, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6286, file: !580, line: 504, column: 13)
!6295 = !DILocation(line: 504, column: 18, scope: !6294)
!6296 = !DILocation(line: 504, column: 13, scope: !6286)
!6297 = !DILocation(line: 505, column: 88, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6294, file: !580, line: 504, column: 49)
!6299 = !DILocation(line: 505, column: 13, scope: !6298)
!6300 = !DILocation(line: 506, column: 9, scope: !6298)
!6301 = !DILocation(line: 508, column: 32, scope: !6283)
!6302 = !DILocation(line: 508, column: 5, scope: !6283)
!6303 = !DILocation(line: 509, column: 1, scope: !6283)
!6304 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !580, file: !580, line: 582, type: !6305, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6307)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!5784, !639, !654}
!6307 = !{!6308, !6309}
!6308 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6304, file: !580, line: 582, type: !639)
!6309 = !DILocalVariable(name: "baudrate", arg: 2, scope: !6304, file: !580, line: 582, type: !654)
!6310 = !DILocation(line: 0, scope: !6304)
!6311 = !DILocation(line: 584, column: 11, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6304, file: !580, line: 584, column: 9)
!6313 = !DILocation(line: 584, column: 46, scope: !6312)
!6314 = !DILocation(line: 588, column: 37, scope: !6304)
!6315 = !DILocation(line: 588, column: 50, scope: !6304)
!6316 = !DILocation(line: 588, column: 59, scope: !6304)
!6317 = !DILocation(line: 589, column: 12, scope: !6304)
!6318 = !DILocation(line: 589, column: 5, scope: !6304)
!6319 = !DILocation(line: 590, column: 1, scope: !6304)
!6320 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !580, file: !580, line: 608, type: !6321, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6325)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{!5784, !639, !6323}
!6323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6324, size: 32)
!6324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!6325 = !{!6326, !6327}
!6326 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6320, file: !580, line: 608, type: !639)
!6327 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !6320, file: !580, line: 608, type: !6323)
!6328 = !DILocation(line: 0, scope: !6320)
!6329 = !DILocation(line: 610, column: 10, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6320, file: !580, line: 610, column: 9)
!6331 = !DILocation(line: 610, column: 9, scope: !6320)
!6332 = !DILocation(line: 614, column: 10, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6320, file: !580, line: 614, column: 9)
!6334 = !DILocation(line: 614, column: 9, scope: !6320)
!6335 = !DILocation(line: 618, column: 37, scope: !6320)
!6336 = !DILocation(line: 618, column: 56, scope: !6320)
!6337 = !DILocation(line: 619, column: 45, scope: !6320)
!6338 = !DILocation(line: 619, column: 12, scope: !6320)
!6339 = !DILocation(line: 620, column: 12, scope: !6320)
!6340 = !DILocation(line: 619, column: 5, scope: !6320)
!6341 = !DILocation(line: 621, column: 5, scope: !6320)
!6342 = !DILocation(line: 622, column: 5, scope: !6320)
!6343 = !DILocation(line: 623, column: 33, scope: !6320)
!6344 = !DILocation(line: 624, column: 50, scope: !6320)
!6345 = !DILocation(line: 625, column: 50, scope: !6320)
!6346 = !DILocation(line: 626, column: 50, scope: !6320)
!6347 = !DILocation(line: 627, column: 50, scope: !6320)
!6348 = !DILocation(line: 628, column: 33, scope: !6320)
!6349 = !DILocation(line: 623, column: 5, scope: !6320)
!6350 = !DILocation(line: 630, column: 50, scope: !6320)
!6351 = !DILocation(line: 631, column: 50, scope: !6320)
!6352 = !DILocation(line: 632, column: 50, scope: !6320)
!6353 = !DILocation(line: 629, column: 5, scope: !6320)
!6354 = !DILocation(line: 634, column: 5, scope: !6320)
!6355 = !DILocation(line: 635, column: 1, scope: !6320)
!6356 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !580, file: !580, line: 112, type: !6357, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6359)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!126, !6323}
!6359 = !{!6360}
!6360 = !DILocalVariable(name: "dma_config", arg: 1, scope: !6356, file: !580, line: 112, type: !6323)
!6361 = !DILocation(line: 0, scope: !6356)
!6362 = !DILocation(line: 114, column: 14, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6356, file: !580, line: 114, column: 9)
!6364 = !DILocation(line: 114, column: 9, scope: !6356)
!6365 = !DILocation(line: 117, column: 29, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6356, file: !580, line: 117, column: 9)
!6367 = !DILocation(line: 117, column: 14, scope: !6366)
!6368 = !DILocation(line: 117, column: 9, scope: !6356)
!6369 = !DILocation(line: 120, column: 21, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6356, file: !580, line: 120, column: 9)
!6371 = !DILocation(line: 120, column: 61, scope: !6370)
!6372 = !DILocation(line: 120, column: 47, scope: !6370)
!6373 = !DILocation(line: 120, column: 9, scope: !6356)
!6374 = !DILocation(line: 123, column: 61, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6356, file: !580, line: 123, column: 9)
!6376 = !DILocation(line: 123, column: 47, scope: !6375)
!6377 = !DILocation(line: 123, column: 9, scope: !6356)
!6378 = !DILocation(line: 126, column: 29, scope: !6379)
!6379 = distinct !DILexicalBlock(scope: !6356, file: !580, line: 126, column: 9)
!6380 = !DILocation(line: 126, column: 14, scope: !6379)
!6381 = !DILocation(line: 126, column: 9, scope: !6356)
!6382 = !DILocation(line: 129, column: 21, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6356, file: !580, line: 129, column: 9)
!6384 = !DILocation(line: 129, column: 58, scope: !6383)
!6385 = !DILocation(line: 129, column: 44, scope: !6383)
!6386 = !DILocation(line: 129, column: 9, scope: !6356)
!6387 = !DILocation(line: 136, column: 1, scope: !6356)
!6388 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !580, file: !580, line: 182, type: !5675, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6389)
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !6388, file: !580, line: 182, type: !136)
!6391 = !DILocalVariable(name: "ticks_per_us", scope: !6388, file: !580, line: 184, type: !136)
!6392 = !DILocation(line: 0, scope: !6388)
!6393 = !DILocation(line: 186, column: 20, scope: !6388)
!6394 = !DILocation(line: 186, column: 39, scope: !6388)
!6395 = !DILocation(line: 188, column: 25, scope: !6388)
!6396 = !DILocation(line: 188, column: 5, scope: !6388)
!6397 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !580, file: !580, line: 637, type: !5926, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6398)
!6398 = !{!6399, !6400}
!6399 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6397, file: !580, line: 637, type: !639)
!6400 = !DILocalVariable(name: "int_no", scope: !6397, file: !580, line: 639, type: !3714)
!6401 = !DILocation(line: 0, scope: !6397)
!6402 = !DILocation(line: 641, column: 10, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6397, file: !580, line: 641, column: 9)
!6404 = !DILocation(line: 641, column: 9, scope: !6397)
!6405 = !DILocation(line: 645, column: 14, scope: !6397)
!6406 = !DILocation(line: 646, column: 5, scope: !6397)
!6407 = !DILocation(line: 648, column: 5, scope: !6397)
!6408 = !DILocation(line: 649, column: 1, scope: !6397)
!6409 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !580, file: !580, line: 651, type: !6410, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6412)
!6410 = !DISubroutineType(types: !6411)
!6411 = !{!5784, !639, !128, !128, !128}
!6412 = !{!6413, !6414, !6415, !6416, !6417}
!6413 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6409, file: !580, line: 651, type: !639)
!6414 = !DILocalVariable(name: "xon", arg: 2, scope: !6409, file: !580, line: 652, type: !128)
!6415 = !DILocalVariable(name: "xoff", arg: 3, scope: !6409, file: !580, line: 653, type: !128)
!6416 = !DILocalVariable(name: "escape_character", arg: 4, scope: !6409, file: !580, line: 654, type: !128)
!6417 = !DILocalVariable(name: "int_no", scope: !6409, file: !580, line: 656, type: !3714)
!6418 = !DILocation(line: 0, scope: !6409)
!6419 = !DILocation(line: 658, column: 10, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6409, file: !580, line: 658, column: 9)
!6421 = !DILocation(line: 658, column: 9, scope: !6409)
!6422 = !DILocation(line: 662, column: 14, scope: !6409)
!6423 = !DILocation(line: 663, column: 5, scope: !6409)
!6424 = !DILocation(line: 665, column: 5, scope: !6409)
!6425 = !DILocation(line: 666, column: 1, scope: !6409)
!6426 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !580, file: !580, line: 668, type: !5926, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6427)
!6427 = !{!6428, !6429}
!6428 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6426, file: !580, line: 668, type: !639)
!6429 = !DILocalVariable(name: "int_no", scope: !6426, file: !580, line: 670, type: !3714)
!6430 = !DILocation(line: 0, scope: !6426)
!6431 = !DILocation(line: 672, column: 10, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6426, file: !580, line: 672, column: 9)
!6433 = !DILocation(line: 672, column: 9, scope: !6426)
!6434 = !DILocation(line: 676, column: 14, scope: !6426)
!6435 = !DILocation(line: 677, column: 5, scope: !6426)
!6436 = !DILocation(line: 679, column: 5, scope: !6426)
!6437 = !DILocation(line: 680, column: 1, scope: !6426)
!6438 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !580, file: !580, line: 683, type: !6439, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !6441)
!6439 = !DISubroutineType(types: !6440)
!6440 = !{!5784, !639, !136}
!6441 = !{!6442, !6443}
!6442 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6438, file: !580, line: 683, type: !639)
!6443 = !DILocalVariable(name: "timeout", arg: 2, scope: !6438, file: !580, line: 683, type: !136)
!6444 = !DILocation(line: 0, scope: !6438)
!6445 = !DILocation(line: 685, column: 10, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6438, file: !580, line: 685, column: 9)
!6447 = !DILocation(line: 685, column: 9, scope: !6438)
!6448 = !DILocation(line: 689, column: 19, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6438, file: !580, line: 689, column: 9)
!6450 = !DILocation(line: 0, scope: !6449)
!6451 = !DILocation(line: 696, column: 1, scope: !6438)
!6452 = distinct !DISubprogram(name: "__io_putchar", scope: !1218, file: !1218, line: 54, type: !6453, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !6455)
!6453 = !DISubroutineType(types: !6454)
!6454 = !{!53, !53}
!6455 = !{!6456}
!6456 = !DILocalVariable(name: "ch", arg: 1, scope: !6452, file: !1218, line: 54, type: !53)
!6457 = !DILocation(line: 0, scope: !6452)
!6458 = !DILocation(line: 61, column: 35, scope: !6452)
!6459 = !DILocation(line: 61, column: 5, scope: !6452)
!6460 = !DILocation(line: 62, column: 5, scope: !6452)
!6461 = distinct !DISubprogram(name: "main", scope: !1218, file: !1218, line: 155, type: !3690, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !1232)
!6462 = !DILocation(line: 158, column: 5, scope: !6461)
!6463 = !DILocation(line: 161, column: 5, scope: !6461)
!6464 = !DILocation(line: 319, column: 3, scope: !6465, inlinedAt: !6466)
!6465 = distinct !DISubprogram(name: "__enable_irq", scope: !1263, file: !1263, line: 317, type: !181, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !1232)
!6466 = distinct !DILocation(line: 164, column: 5, scope: !6461)
!6467 = !{i64 501309}
!6468 = !DILocation(line: 496, column: 3, scope: !6469, inlinedAt: !6470)
!6469 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1263, file: !1263, line: 494, type: !181, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !1232)
!6470 = distinct !DILocation(line: 165, column: 5, scope: !6461)
!6471 = !{i64 505584}
!6472 = !DILocation(line: 168, column: 5, scope: !6461)
!6473 = !DILocation(line: 169, column: 5, scope: !6461)
!6474 = !DILocation(line: 170, column: 5, scope: !6461)
!6475 = !DILocation(line: 172, column: 5, scope: !6461)
!6476 = !DILocation(line: 174, column: 5, scope: !6461)
!6477 = !DILocation(line: 174, column: 5, scope: !6478)
!6478 = distinct !DILexicalBlock(scope: !6479, file: !1218, line: 174, column: 5)
!6479 = distinct !DILexicalBlock(scope: !6461, file: !1218, line: 174, column: 5)
!6480 = distinct !{!6480, !6481, !6482}
!6481 = !DILocation(line: 174, column: 5, scope: !6479)
!6482 = !DILocation(line: 174, column: 13, scope: !6479)
!6483 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1218, file: !1218, line: 92, type: !181, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !1232)
!6484 = !DILocation(line: 94, column: 5, scope: !6483)
!6485 = !DILocation(line: 95, column: 1, scope: !6483)
!6486 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1218, file: !1218, line: 103, type: !181, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !1232)
!6487 = !DILocation(line: 106, column: 5, scope: !6486)
!6488 = !DILocation(line: 107, column: 1, scope: !6486)
!6489 = distinct !DISubprogram(name: "adc_get_data_polling_example", scope: !1218, file: !1218, line: 129, type: !181, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !6490)
!6490 = !{!6491, !6492, !6493}
!6491 = !DILocalVariable(name: "adc_data", scope: !6489, file: !1218, line: 131, type: !136)
!6492 = !DILocalVariable(name: "adc_voltage", scope: !6489, file: !1218, line: 132, type: !136)
!6493 = !DILocalVariable(name: "test_times", scope: !6489, file: !1218, line: 133, type: !136)
!6494 = !DILocation(line: 131, column: 5, scope: !6489)
!6495 = !DILocation(line: 135, column: 5, scope: !6489)
!6496 = !DILocation(line: 137, column: 5, scope: !6489)
!6497 = !DILocation(line: 0, scope: !6489)
!6498 = !DILocation(line: 139, column: 5, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6489, file: !1218, line: 139, column: 5)
!6500 = !DILocation(line: 140, column: 9, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6502, file: !1218, line: 139, column: 57)
!6502 = distinct !DILexicalBlock(scope: !6499, file: !1218, line: 139, column: 5)
!6503 = !DILocation(line: 142, column: 9, scope: !6501)
!6504 = !DILocation(line: 143, column: 42, scope: !6501)
!6505 = !DILocation(line: 143, column: 23, scope: !6501)
!6506 = !DILocation(line: 144, column: 9, scope: !6501)
!6507 = !DILocation(line: 145, column: 72, scope: !6501)
!6508 = !DILocation(line: 145, column: 9, scope: !6501)
!6509 = !DILocation(line: 147, column: 9, scope: !6501)
!6510 = !DILocation(line: 139, column: 53, scope: !6502)
!6511 = !DILocation(line: 139, column: 37, scope: !6502)
!6512 = distinct !{!6512, !6498, !6513}
!6513 = !DILocation(line: 148, column: 5, scope: !6499)
!6514 = !DILocation(line: 150, column: 5, scope: !6489)
!6515 = !DILocation(line: 152, column: 5, scope: !6489)
!6516 = !DILocation(line: 153, column: 1, scope: !6489)
!6517 = distinct !DISubprogram(name: "adc_raw_to_voltage", scope: !1218, file: !1218, line: 116, type: !5675, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !6518)
!6518 = !{!6519, !6520}
!6519 = !DILocalVariable(name: "adc_data", arg: 1, scope: !6517, file: !1218, line: 116, type: !136)
!6520 = !DILocalVariable(name: "voltage", scope: !6517, file: !1218, line: 120, type: !136)
!6521 = !DILocation(line: 0, scope: !6517)
!6522 = !DILocation(line: 120, column: 34, scope: !6517)
!6523 = !DILocation(line: 120, column: 42, scope: !6517)
!6524 = !DILocation(line: 121, column: 5, scope: !6517)
!6525 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1218, file: !1218, line: 70, type: !181, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1217, retainedNodes: !6526)
!6526 = !{!6527}
!6527 = !DILocalVariable(name: "uart_config", scope: !6525, file: !1218, line: 72, type: !6528)
!6528 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !583, line: 378, baseType: !6529)
!6529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 373, size: 128, elements: !6530)
!6530 = !{!6531, !6532, !6533, !6534}
!6531 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !6529, file: !583, line: 374, baseType: !654, size: 32)
!6532 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !6529, file: !583, line: 375, baseType: !656, size: 32, offset: 32)
!6533 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !6529, file: !583, line: 376, baseType: !658, size: 32, offset: 64)
!6534 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6529, file: !583, line: 377, baseType: !660, size: 32, offset: 96)
!6535 = !DILocation(line: 72, column: 5, scope: !6525)
!6536 = !DILocation(line: 72, column: 23, scope: !6525)
!6537 = !DILocation(line: 74, column: 5, scope: !6525)
!6538 = !DILocation(line: 75, column: 5, scope: !6525)
!6539 = !DILocation(line: 76, column: 5, scope: !6525)
!6540 = !DILocation(line: 77, column: 5, scope: !6525)
!6541 = !DILocation(line: 80, column: 17, scope: !6525)
!6542 = !DILocation(line: 80, column: 26, scope: !6525)
!6543 = !DILocation(line: 81, column: 17, scope: !6525)
!6544 = !DILocation(line: 81, column: 29, scope: !6525)
!6545 = !DILocation(line: 82, column: 17, scope: !6525)
!6546 = !DILocation(line: 82, column: 26, scope: !6525)
!6547 = !DILocation(line: 83, column: 17, scope: !6525)
!6548 = !DILocation(line: 83, column: 24, scope: !6525)
!6549 = !DILocation(line: 84, column: 5, scope: !6525)
!6550 = !DILocation(line: 85, column: 1, scope: !6525)
!6551 = distinct !DISubprogram(name: "SysTick_Set", scope: !689, file: !689, line: 70, type: !5675, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !6552)
!6552 = !{!6553, !6554}
!6553 = !DILocalVariable(name: "ticks", arg: 1, scope: !6551, file: !689, line: 70, type: !136)
!6554 = !DILocalVariable(name: "val", scope: !6551, file: !689, line: 72, type: !136)
!6555 = !DILocation(line: 0, scope: !6551)
!6556 = !DILocation(line: 74, column: 16, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6551, file: !689, line: 74, column: 9)
!6558 = !DILocation(line: 74, column: 21, scope: !6557)
!6559 = !DILocation(line: 74, column: 9, scope: !6551)
!6560 = !DILocation(line: 78, column: 20, scope: !6551)
!6561 = !DILocation(line: 80, column: 19, scope: !6551)
!6562 = !DILocation(line: 83, column: 20, scope: !6551)
!6563 = !DILocation(line: 84, column: 20, scope: !6551)
!6564 = !DILocation(line: 86, column: 19, scope: !6551)
!6565 = !DILocation(line: 88, column: 5, scope: !6551)
!6566 = !DILocation(line: 89, column: 1, scope: !6551)
!6567 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !689, file: !689, line: 98, type: !181, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1232)
!6568 = !DILocation(line: 100, column: 28, scope: !6567)
!6569 = !DILocation(line: 101, column: 1, scope: !6567)
!6570 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !689, file: !689, line: 110, type: !1264, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1232)
!6571 = !DILocation(line: 112, column: 12, scope: !6570)
!6572 = !DILocation(line: 112, column: 5, scope: !6570)
!6573 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !689, file: !689, line: 122, type: !181, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1232)
!6574 = !DILocation(line: 124, column: 23, scope: !6573)
!6575 = !DILocation(line: 124, column: 21, scope: !6573)
!6576 = !DILocation(line: 125, column: 1, scope: !6573)
!6577 = distinct !DISubprogram(name: "SystemInit", scope: !689, file: !689, line: 136, type: !181, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1232)
!6578 = !DILocation(line: 140, column: 16, scope: !6577)
!6579 = !DILocation(line: 144, column: 16, scope: !6577)
!6580 = !DILocation(line: 147, column: 16, scope: !6577)
!6581 = !DILocation(line: 150, column: 1, scope: !6577)
!6582 = distinct !DISubprogram(name: "CachePreInit", scope: !689, file: !689, line: 158, type: !181, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !1232)
!6583 = !DILocation(line: 161, column: 22, scope: !6582)
!6584 = !DILocation(line: 164, column: 21, scope: !6582)
!6585 = !DILocation(line: 167, column: 21, scope: !6582)
!6586 = !DILocation(line: 170, column: 29, scope: !6582)
!6587 = !DILocation(line: 171, column: 33, scope: !6582)
!6588 = !DILocation(line: 173, column: 28, scope: !6582)
!6589 = !DILocation(line: 178, column: 30, scope: !6582)
!6590 = !DILocation(line: 192, column: 1, scope: !6582)
!6591 = distinct !DISubprogram(name: "_close", scope: !749, file: !749, line: 11, type: !6453, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6592)
!6592 = !{!6593}
!6593 = !DILocalVariable(name: "file", arg: 1, scope: !6591, file: !749, line: 11, type: !53)
!6594 = !DILocation(line: 0, scope: !6591)
!6595 = !DILocation(line: 13, column: 5, scope: !6591)
!6596 = distinct !DISubprogram(name: "_fstat", scope: !749, file: !749, line: 16, type: !6597, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6645)
!6597 = !DISubroutineType(types: !6598)
!6598 = !{!53, !53, !6599}
!6599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6600, size: 32)
!6600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !6601, line: 27, size: 704, elements: !6602)
!6601 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!6602 = !{!6603, !6606, !6609, !6612, !6615, !6618, !6621, !6622, !6625, !6635, !6636, !6637, !6640, !6643}
!6603 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !6600, file: !6601, line: 29, baseType: !6604, size: 16)
!6604 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !753, line: 161, baseType: !6605)
!6605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !795, line: 56, baseType: !770)
!6606 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !6600, file: !6601, line: 30, baseType: !6607, size: 16, offset: 16)
!6607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !753, line: 139, baseType: !6608)
!6608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !795, line: 75, baseType: !250)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !6600, file: !6601, line: 31, baseType: !6610, size: 32, offset: 32)
!6610 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !753, line: 189, baseType: !6611)
!6611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !795, line: 90, baseType: !137)
!6612 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !6600, file: !6601, line: 32, baseType: !6613, size: 16, offset: 64)
!6613 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !753, line: 194, baseType: !6614)
!6614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !795, line: 209, baseType: !250)
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !6600, file: !6601, line: 33, baseType: !6616, size: 16, offset: 80)
!6616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !753, line: 165, baseType: !6617)
!6617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !795, line: 60, baseType: !250)
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !6600, file: !6601, line: 34, baseType: !6619, size: 16, offset: 96)
!6619 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !753, line: 169, baseType: !6620)
!6620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !795, line: 63, baseType: !250)
!6621 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !6600, file: !6601, line: 35, baseType: !6604, size: 16, offset: 112)
!6622 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !6600, file: !6601, line: 36, baseType: !6623, size: 32, offset: 128)
!6623 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !753, line: 157, baseType: !6624)
!6624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !795, line: 102, baseType: !813)
!6625 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !6600, file: !6601, line: 42, baseType: !6626, size: 128, offset: 192)
!6626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !6627, line: 47, size: 128, elements: !6628)
!6627 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!6628 = !{!6629, !6634}
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6626, file: !6627, line: 48, baseType: !6630, size: 64)
!6630 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6631, line: 42, baseType: !6632)
!6631 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!6632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !131, line: 200, baseType: !6633)
!6633 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !6626, file: !6627, line: 49, baseType: !796, size: 32, offset: 64)
!6635 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !6600, file: !6601, line: 43, baseType: !6626, size: 128, offset: 320)
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !6600, file: !6601, line: 44, baseType: !6626, size: 128, offset: 448)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !6600, file: !6601, line: 45, baseType: !6638, size: 32, offset: 576)
!6638 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !753, line: 102, baseType: !6639)
!6639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !795, line: 34, baseType: !796)
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !6600, file: !6601, line: 46, baseType: !6641, size: 32, offset: 608)
!6641 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !753, line: 97, baseType: !6642)
!6642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !795, line: 30, baseType: !796)
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !6600, file: !6601, line: 48, baseType: !6644, size: 64, offset: 640)
!6644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 64, elements: !498)
!6645 = !{!6646, !6647}
!6646 = !DILocalVariable(name: "file", arg: 1, scope: !6596, file: !749, line: 16, type: !53)
!6647 = !DILocalVariable(name: "st", arg: 2, scope: !6596, file: !749, line: 16, type: !6599)
!6648 = !DILocation(line: 0, scope: !6596)
!6649 = !DILocation(line: 18, column: 5, scope: !6596)
!6650 = distinct !DISubprogram(name: "_isatty", scope: !749, file: !749, line: 22, type: !6453, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6651)
!6651 = !{!6652}
!6652 = !DILocalVariable(name: "file", arg: 1, scope: !6650, file: !749, line: 22, type: !53)
!6653 = !DILocation(line: 0, scope: !6650)
!6654 = !DILocation(line: 24, column: 5, scope: !6650)
!6655 = distinct !DISubprogram(name: "_lseek", scope: !749, file: !749, line: 27, type: !6656, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6658)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{!53, !53, !53, !53}
!6658 = !{!6659, !6660, !6661}
!6659 = !DILocalVariable(name: "file", arg: 1, scope: !6655, file: !749, line: 27, type: !53)
!6660 = !DILocalVariable(name: "ptr", arg: 2, scope: !6655, file: !749, line: 27, type: !53)
!6661 = !DILocalVariable(name: "dir", arg: 3, scope: !6655, file: !749, line: 27, type: !53)
!6662 = !DILocation(line: 0, scope: !6655)
!6663 = !DILocation(line: 29, column: 5, scope: !6655)
!6664 = distinct !DISubprogram(name: "_open", scope: !749, file: !749, line: 32, type: !6665, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6667)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!53, !788, !53, !53}
!6667 = !{!6668, !6669, !6670}
!6668 = !DILocalVariable(name: "name", arg: 1, scope: !6664, file: !749, line: 32, type: !788)
!6669 = !DILocalVariable(name: "flags", arg: 2, scope: !6664, file: !749, line: 32, type: !53)
!6670 = !DILocalVariable(name: "mode", arg: 3, scope: !6664, file: !749, line: 32, type: !53)
!6671 = !DILocation(line: 0, scope: !6664)
!6672 = !DILocation(line: 34, column: 5, scope: !6664)
!6673 = distinct !DISubprogram(name: "_read", scope: !749, file: !749, line: 37, type: !6674, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6676)
!6674 = !DISubroutineType(types: !6675)
!6675 = !{!53, !53, !754, !53}
!6676 = !{!6677, !6678, !6679}
!6677 = !DILocalVariable(name: "file", arg: 1, scope: !6673, file: !749, line: 37, type: !53)
!6678 = !DILocalVariable(name: "ptr", arg: 2, scope: !6673, file: !749, line: 37, type: !754)
!6679 = !DILocalVariable(name: "len", arg: 3, scope: !6673, file: !749, line: 37, type: !53)
!6680 = !DILocation(line: 0, scope: !6673)
!6681 = !DILocation(line: 39, column: 5, scope: !6673)
!6682 = distinct !DISubprogram(name: "_write", scope: !749, file: !749, line: 52, type: !6674, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6683)
!6683 = !{!6684, !6685, !6686, !6687}
!6684 = !DILocalVariable(name: "file", arg: 1, scope: !6682, file: !749, line: 52, type: !53)
!6685 = !DILocalVariable(name: "ptr", arg: 2, scope: !6682, file: !749, line: 52, type: !754)
!6686 = !DILocalVariable(name: "len", arg: 3, scope: !6682, file: !749, line: 52, type: !53)
!6687 = !DILocalVariable(name: "i", scope: !6682, file: !749, line: 54, type: !53)
!6688 = !DILocation(line: 0, scope: !6682)
!6689 = !DILocation(line: 56, column: 19, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6691, file: !749, line: 56, column: 5)
!6691 = distinct !DILexicalBlock(scope: !6682, file: !749, line: 56, column: 5)
!6692 = !DILocation(line: 56, column: 5, scope: !6691)
!6693 = !DILocation(line: 57, column: 26, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6690, file: !749, line: 56, column: 31)
!6695 = !DILocation(line: 57, column: 22, scope: !6694)
!6696 = !DILocation(line: 57, column: 9, scope: !6694)
!6697 = !DILocation(line: 56, column: 27, scope: !6690)
!6698 = distinct !{!6698, !6692, !6699}
!6699 = !DILocation(line: 58, column: 5, scope: !6691)
!6700 = !DILocation(line: 60, column: 5, scope: !6682)
!6701 = !DILocation(line: 0, scope: !748)
!6702 = !DILocation(line: 70, column: 5, scope: !748)
!6703 = !{i64 1109}
!6704 = !DILocation(line: 72, column: 14, scope: !6705)
!6705 = distinct !DILexicalBlock(scope: !748, file: !749, line: 72, column: 9)
!6706 = !DILocation(line: 72, column: 11, scope: !6705)
!6707 = !DILocation(line: 72, column: 9, scope: !748)
!6708 = !DILocation(line: 78, column: 32, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !748, file: !749, line: 78, column: 9)
!6710 = !DILocation(line: 78, column: 15, scope: !6709)
!6711 = !DILocation(line: 89, column: 1, scope: !748)
!6712 = !DILocation(line: 78, column: 9, scope: !748)
!6713 = distinct !DISubprogram(name: "_exit", scope: !749, file: !749, line: 91, type: !898, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6714)
!6714 = !{!6715}
!6715 = !DILocalVariable(name: "__status", arg: 1, scope: !6713, file: !749, line: 91, type: !53)
!6716 = !DILocation(line: 0, scope: !6713)
!6717 = !DILocation(line: 93, column: 5, scope: !6713)
!6718 = !DILocation(line: 94, column: 5, scope: !6713)
!6719 = distinct !{!6719, !6718, !6720}
!6720 = !DILocation(line: 96, column: 5, scope: !6713)
!6721 = distinct !DISubprogram(name: "_kill", scope: !749, file: !749, line: 100, type: !6722, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !6724)
!6722 = !DISubroutineType(types: !6723)
!6723 = !{!53, !53, !53}
!6724 = !{!6725, !6726}
!6725 = !DILocalVariable(name: "pid", arg: 1, scope: !6721, file: !749, line: 100, type: !53)
!6726 = !DILocalVariable(name: "sig", arg: 2, scope: !6721, file: !749, line: 100, type: !53)
!6727 = !DILocation(line: 0, scope: !6721)
!6728 = !DILocation(line: 102, column: 5, scope: !6721)
!6729 = !DILocation(line: 103, column: 5, scope: !6721)
!6730 = distinct !DISubprogram(name: "_getpid", scope: !749, file: !749, line: 107, type: !6731, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !1232)
!6731 = !DISubroutineType(types: !6732)
!6732 = !{!6733}
!6733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !753, line: 174, baseType: !6734)
!6734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !795, line: 52, baseType: !53)
!6735 = !DILocation(line: 109, column: 5, scope: !6730)
!6736 = !DILocation(line: 110, column: 5, scope: !6730)
