; ModuleID = './build/i2s_internal_loopback.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct._XPLL_INFO = type { i32 }
%union.CACHE_CON_Type = type { %struct._XPLL_INFO }
%struct.CACHE_ENTRY_Type = type { %union.CACHE_CON_Type, %union.CACHE_CON_Type }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.i2s_internal_t = type { i32, %struct.I2S_GBL_CFG, %struct.I2S_DL_CFG, %struct.I2S_UL_CFG, i32, %struct.hal_i2s_config_t, i8, i8, i8, %struct.i2s_vfifo_t, void (i32, i8*)*, void (i32, i8*)*, i8*, i8* }
%struct.I2S_GBL_CFG = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.I2S_DL_CFG = type { i8, i32, i8, i8, i8, i8, i8 }
%struct.I2S_UL_CFG = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.hal_i2s_config_t = type { %struct.hal_i2s_link_config_t, %struct.hal_i2s_link_config_t, i32, i32, i32, i32, i32 }
%struct.hal_i2s_link_config_t = type { i32, i32, i32, i32, i32 }
%struct.i2s_vfifo_t = type { i32*, i32, i32, i8, i8, i32*, i32, i32, i8, i8 }
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
%struct._mbstate_t = type { i32, %struct._XPLL_INFO }
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
@.str.4 = private unnamed_addr constant [20 x i8] c"Error parameter!!!\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.2.6 = private unnamed_addr constant [64 x i8] c"../../../../../driver/chip/mt7687/src/common/hal_i2s_internal.c\00", align 1
@XpllInfo = dso_local local_unnamed_addr global %struct._XPLL_INFO zeroinitializer, align 4, !dbg !198
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !225
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !235
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !237
@g_cache_status = dso_local global i8 0, align 1, !dbg !252
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !335
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@i2s_internal_cfg = internal global %struct.i2s_internal_t zeroinitializer, align 4, !dbg !437
@__FUNCTION__.hal_i2s_set_config = private unnamed_addr constant [19 x i8] c"hal_i2s_set_config\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"i2s_state != I2S_STATE_INIT , i2s_state =%d\0D\0A\00", align 1
@__FUNCTION__.hal_i2s_setup_tx_vfifo = private unnamed_addr constant [23 x i8] c"hal_i2s_setup_tx_vfifo\00", align 1
@__FUNCTION__.hal_i2s_setup_rx_vfifo = private unnamed_addr constant [23 x i8] c"hal_i2s_setup_rx_vfifo\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !620
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !677
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.25 = private unnamed_addr constant [29 x i8] c"\0D\0A ---i2s_example begin---\0D\0A\00", align 1
@.str.1.26 = private unnamed_addr constant [40 x i8] c"\0D\0A ---i2s:    i2s_configure failed---\0D\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [35 x i8] c"\0D\0A ---i2s_example finished!!!---\0D\0A\00", align 1
@.str.3.29 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.4.30 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\0D\0A ---i2s:    hal_i2s_init failed---\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\0D\0A ---i2s:    hal_i2s_set_config failed---\0D\0A\00", align 1
@I2S_TxBuf = internal global [32 x i32] zeroinitializer, align 4, !dbg !729
@.str.7 = private unnamed_addr constant [49 x i8] c"\0D\0A ---i2s:    hal_i2s_setup_tx_vfifo failed---\0D\0A\00", align 1
@I2S_RxBuf = internal global [2048 x i32] zeroinitializer, align 4, !dbg !767
@.str.8 = private unnamed_addr constant [49 x i8] c"\0D\0A ---i2s:    hal_i2s_setup_rx_vfifo failed---\0D\0A\00", align 1
@audio_Tone2k_16kSR = internal unnamed_addr constant [32 x i16] [i16 -1, i16 -13030, i16 -18427, i16 -13029, i16 0, i16 13030, i16 18427, i16 13029, i16 0, i16 -13030, i16 -18427, i16 -13029, i16 0, i16 13029, i16 18427, i16 13029, i16 0, i16 -13029, i16 -18427, i16 -13029, i16 0, i16 13029, i16 18427, i16 13029, i16 0, i16 -13029, i16 -18426, i16 -13030, i16 -1, i16 13029, i16 18425, i16 13030], align 2, !dbg !772
@USER_Rx_Buf = internal unnamed_addr global [32 x i32] zeroinitializer, align 4, !dbg !779
@.str.9.28 = private unnamed_addr constant [23 x i8] c"I2S_TxBuf[%u]=0x%08x\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"USER_Rx_Buf[%u]=0x%08x\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !782
@System_Initialize_Done = internal global i32 0, align 4, !dbg !840
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !842
@end = external dso_local global i8, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.39 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:54 GMT +00:00\00", align 1, !dbg !1049
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !1054
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !1058

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @DMA_ERROR_LISR() #0 !dbg !1284 {
  br label %1, !dbg !1286

1:                                                ; preds = %0, %1
  br label %1, !dbg !1286, !llvm.loop !1287
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Stop(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1289 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1293, metadata !DIExpression()), !dbg !1294
  %2 = zext i8 %0 to i32, !dbg !1295
  %3 = shl nuw nsw i32 %2, 8, !dbg !1295
  %4 = or i32 %3, -2097086440, !dbg !1295
  %5 = inttoptr i32 %4 to i32*, !dbg !1295
  store volatile i32 0, i32* %5, align 8, !dbg !1295
  %6 = or i32 %3, -2097086432, !dbg !1296
  %7 = inttoptr i32 %6 to i32*, !dbg !1296
  store volatile i32 32768, i32* %7, align 32, !dbg !1296
  ret void, !dbg !1297
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Run(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1298 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1300, metadata !DIExpression()), !dbg !1301
  tail call void @DMA_Stop(i8 noundef zeroext %0) #16, !dbg !1302
  %2 = zext i8 %0 to i32, !dbg !1303
  %3 = shl nuw nsw i32 %2, 8, !dbg !1303
  %4 = or i32 %3, -2097086440, !dbg !1303
  %5 = inttoptr i32 %4 to i32*, !dbg !1303
  store volatile i32 32768, i32* %5, align 8, !dbg !1303
  ret void, !dbg !1304
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_GetChannel(i32 noundef %0) local_unnamed_addr #3 !dbg !1305 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i8 -1, metadata !1311, metadata !DIExpression()), !dbg !1313
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1314, !srcloc !1323
  call void @llvm.dbg.value(metadata i32 %2, metadata !1320, metadata !DIExpression()) #17, !dbg !1324
  call void @llvm.dbg.value(metadata i32 %2, metadata !1312, metadata !DIExpression()), !dbg !1313
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1325, !srcloc !1328
  call void @llvm.dbg.value(metadata i8 3, metadata !1310, metadata !DIExpression()), !dbg !1313
  %3 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 3, metadata !1310, metadata !DIExpression()), !dbg !1313
  br label %4, !dbg !1329

4:                                                ; preds = %1, %13
  %5 = phi i32 [ 3, %1 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1310, metadata !DIExpression()), !dbg !1313
  %6 = shl nuw nsw i32 1, %5, !dbg !1331
  %7 = and i32 %3, %6, !dbg !1335
  %8 = icmp eq i32 %7, 0, !dbg !1336
  br i1 %8, label %13, label %9, !dbg !1337

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i8, !dbg !1313
  call void @llvm.dbg.value(metadata i8 %10, metadata !1311, metadata !DIExpression()), !dbg !1313
  %11 = xor i32 %6, -1, !dbg !1338
  %12 = and i32 %3, %11, !dbg !1340
  store i32 %12, i32* @DMA_Channel_Status, align 4, !dbg !1340
  br label %16, !dbg !1341

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %5, 1, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %14, metadata !1310, metadata !DIExpression()), !dbg !1313
  %15 = icmp eq i32 %14, 12, !dbg !1343
  br i1 %15, label %16, label %4, !dbg !1329, !llvm.loop !1344

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ -1, %13 ], !dbg !1313
  call void @llvm.dbg.value(metadata i8 %17, metadata !1311, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %2, metadata !1346, metadata !DIExpression()) #17, !dbg !1351
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #17, !dbg !1354, !srcloc !1355
  %18 = zext i8 %17 to i32, !dbg !1356
  %19 = add nsw i32 %18, -1, !dbg !1357
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %19, !dbg !1358
  store i32 %0, i32* %20, align 4, !dbg !1359
  ret i8 %17, !dbg !1360
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1361 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1363, metadata !DIExpression()), !dbg !1365
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1366, !srcloc !1323
  call void @llvm.dbg.value(metadata i32 %2, metadata !1320, metadata !DIExpression()) #17, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %2, metadata !1364, metadata !DIExpression()), !dbg !1365
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1370, !srcloc !1328
  %3 = zext i8 %0 to i32, !dbg !1372
  %4 = shl nuw i32 1, %3, !dbg !1373
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1374
  %6 = or i32 %5, %4, !dbg !1374
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1374
  tail call void @DMA_Stop(i8 noundef zeroext %0) #16, !dbg !1375
  %7 = add nsw i32 %3, -1, !dbg !1376
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1377
  store i32 26, i32* %8, align 4, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %2, metadata !1346, metadata !DIExpression()) #17, !dbg !1379
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #17, !dbg !1382, !srcloc !1355
  ret void, !dbg !1383
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1388, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 %1, metadata !1389, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i8 -1, metadata !1391, metadata !DIExpression()), !dbg !1393
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1394, !srcloc !1323
  call void @llvm.dbg.value(metadata i32 %3, metadata !1320, metadata !DIExpression()) #17, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %3, metadata !1392, metadata !DIExpression()), !dbg !1393
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1398, !srcloc !1328
  %4 = add i8 %1, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i8 %4, metadata !1390, metadata !DIExpression()), !dbg !1393
  %5 = icmp ugt i8 %4, 2, !dbg !1401
  br i1 %5, label %20, label %6, !dbg !1403

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32, !dbg !1404
  %8 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1405
  %9 = shl nuw nsw i32 1, %7, !dbg !1407
  %10 = and i32 %8, %9, !dbg !1408
  %11 = icmp eq i32 %10, 0, !dbg !1409
  br i1 %11, label %15, label %12, !dbg !1410

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %4, metadata !1391, metadata !DIExpression()), !dbg !1393
  %13 = xor i32 %9, -1, !dbg !1411
  %14 = and i32 %8, %13, !dbg !1413
  store i32 %14, i32* @DMA_Channel_Status, align 4, !dbg !1413
  br label %15, !dbg !1414

15:                                               ; preds = %6, %12
  %16 = phi i8 [ %4, %12 ], [ -1, %6 ], !dbg !1393
  call void @llvm.dbg.value(metadata i8 %16, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i32 %3, metadata !1346, metadata !DIExpression()) #17, !dbg !1415
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #17, !dbg !1418, !srcloc !1355
  %17 = zext i8 %16 to i32, !dbg !1419
  %18 = add nsw i32 %17, -1, !dbg !1420
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %18, !dbg !1421
  store i32 %0, i32* %19, align 4, !dbg !1422
  br label %20, !dbg !1423

20:                                               ; preds = %2, %15
  %21 = phi i8 [ %16, %15 ], [ -1, %2 ], !dbg !1393
  ret i8 %21, !dbg !1424
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FullSize_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1425 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1427, metadata !DIExpression()), !dbg !1429
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1430, !srcloc !1323
  call void @llvm.dbg.value(metadata i32 %2, metadata !1320, metadata !DIExpression()) #17, !dbg !1433
  call void @llvm.dbg.value(metadata i32 %2, metadata !1428, metadata !DIExpression()), !dbg !1429
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1434, !srcloc !1328
  %3 = zext i8 %0 to i32, !dbg !1436
  %4 = shl nuw i32 1, %3, !dbg !1437
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1438
  %6 = or i32 %5, %4, !dbg !1438
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1438
  tail call void @DMA_Stop(i8 noundef zeroext %0) #16, !dbg !1439
  %7 = add nsw i32 %3, -1, !dbg !1440
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1441
  store i32 26, i32* %8, align 4, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %2, metadata !1346, metadata !DIExpression()) #17, !dbg !1443
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #17, !dbg !1446, !srcloc !1355
  ret void, !dbg !1447
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Config_Internal(i8 noundef zeroext %0, %struct.DMA_INPUT* noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 !dbg !1448 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1463, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata %struct.DMA_INPUT* %1, metadata !1464, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %2, metadata !1465, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %3, metadata !1466, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %4, metadata !1467, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i1 %5, metadata !1468, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1469, metadata !DIExpression()), !dbg !1471
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %0) #16, !dbg !1472
  %7 = zext i8 %0 to i32, !dbg !1473
  %8 = icmp ugt i8 %0, 16, !dbg !1473
  br i1 %8, label %9, label %16, !dbg !1475

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1473
  %11 = shl nuw nsw i32 %7, 1, !dbg !1473
  %12 = add nsw i32 %11, -34, !dbg !1473
  %13 = shl nuw i32 1, %12, !dbg !1473
  %14 = and i32 %10, %13, !dbg !1473
  %15 = icmp eq i32 %14, 0, !dbg !1473
  br i1 %15, label %26, label %23, !dbg !1473

16:                                               ; preds = %6
  %17 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1473
  %18 = shl nuw nsw i32 %7, 1, !dbg !1473
  %19 = add nsw i32 %18, -2, !dbg !1473
  %20 = shl nuw i32 1, %19, !dbg !1473
  %21 = and i32 %17, %20, !dbg !1473
  %22 = icmp eq i32 %21, 0, !dbg !1473
  br i1 %22, label %31, label %23, !dbg !1475

23:                                               ; preds = %16, %9
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 187) #18, !dbg !1476
  br label %25, !dbg !1476

25:                                               ; preds = %25, %23
  br label %25, !dbg !1476, !llvm.loop !1480

26:                                               ; preds = %9
  %27 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1481
  %28 = shl i32 2, %12, !dbg !1481
  %29 = and i32 %27, %28, !dbg !1481
  %30 = icmp eq i32 %29, 0, !dbg !1481
  br i1 %30, label %39, label %36, !dbg !1481

31:                                               ; preds = %16
  %32 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1481
  %33 = shl i32 2, %19, !dbg !1481
  %34 = and i32 %32, %33, !dbg !1481
  %35 = icmp eq i32 %34, 0, !dbg !1481
  br i1 %35, label %39, label %36, !dbg !1483

36:                                               ; preds = %31, %26
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 191) #18, !dbg !1484
  br label %38, !dbg !1484

38:                                               ; preds = %38, %36
  br label %38, !dbg !1484, !llvm.loop !1488

39:                                               ; preds = %31, %26
  %40 = add nsw i32 %7, -1, !dbg !1489
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %40, !dbg !1489
  %42 = load i32, i32* %41, align 4, !dbg !1489
  %43 = icmp eq i32 %42, 26, !dbg !1489
  br i1 %43, label %44, label %47, !dbg !1491

44:                                               ; preds = %39
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 194) #18, !dbg !1492
  br label %46, !dbg !1492

46:                                               ; preds = %46, %44
  br label %46, !dbg !1492, !llvm.loop !1494

47:                                               ; preds = %39
  %48 = and i1 %2, %3, !dbg !1495
  br i1 %48, label %49, label %52, !dbg !1495

49:                                               ; preds = %47
  %50 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 197) #18, !dbg !1496
  br label %51, !dbg !1496

51:                                               ; preds = %51, %49
  br label %51, !dbg !1496, !llvm.loop !1501

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 2, !dbg !1502
  %54 = load i32, i32* %53, align 4, !dbg !1502
  %55 = icmp ugt i32 %54, 65535, !dbg !1502
  br i1 %55, label %56, label %59, !dbg !1504

56:                                               ; preds = %52
  %57 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 200) #18, !dbg !1505
  br label %58, !dbg !1505

58:                                               ; preds = %58, %56
  br label %58, !dbg !1505, !llvm.loop !1507

59:                                               ; preds = %52
  tail call void @DMA_Stop(i8 noundef zeroext %0) #16, !dbg !1508
  %60 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 0, !dbg !1509
  %61 = load i32, i32* %60, align 4, !dbg !1509
  switch i32 %61, label %252 [
    i32 0, label %62
    i32 1, label %94
    i32 2, label %126
    i32 3, label %140
    i32 4, label %196
  ], !dbg !1510

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1511
  br i1 %2, label %64, label %81, !dbg !1514

64:                                               ; preds = %62
  %65 = bitcast i8** %63 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1515
  %66 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1515
  %67 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 1, !dbg !1517
  call void @llvm.dbg.value(metadata i32 undef, metadata !1470, metadata !DIExpression()), !dbg !1471
  %68 = load i32, i32* %67, align 4, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %85, metadata !1470, metadata !DIExpression()), !dbg !1471
  %69 = shl i32 %68, 20, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %86, metadata !1469, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %70 = or i32 %69, 20, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %86, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %71 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 2, !dbg !1520
  %72 = load i32, i32* %71, align 4, !dbg !1520
  %73 = shl nuw nsw i32 %7, 8, !dbg !1520
  %74 = or i32 %73, -2097086464, !dbg !1520
  %75 = inttoptr i32 %74 to i32*, !dbg !1520
  store volatile i32 %72, i32* %75, align 256, !dbg !1520
  %76 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1523
  %77 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %76, i32 0, i32 3, !dbg !1523
  %78 = load i32, i32* %77, align 4, !dbg !1523
  %79 = or i32 %73, -2097086460, !dbg !1523
  %80 = inttoptr i32 %79 to i32*, !dbg !1523
  store volatile i32 %78, i32* %80, align 4, !dbg !1523
  br label %255, !dbg !1524

81:                                               ; preds = %62
  %82 = bitcast i8** %63 to %struct.DMA_HWMENU**, !dbg !1525
  %83 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %82, align 4, !dbg !1525
  %84 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 1, !dbg !1527
  call void @llvm.dbg.value(metadata i32 undef, metadata !1470, metadata !DIExpression()), !dbg !1471
  %85 = load i32, i32* %84, align 4, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %85, metadata !1470, metadata !DIExpression()), !dbg !1471
  %86 = shl i32 %85, 20, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %86, metadata !1469, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %86, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %87 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 2, !dbg !1528
  %88 = load i32, i32* %87, align 4, !dbg !1528
  %89 = shl nuw nsw i32 %7, 8, !dbg !1528
  %90 = or i32 %89, -2097086420, !dbg !1528
  %91 = inttoptr i32 %90 to i32*, !dbg !1528
  store volatile i32 %88, i32* %91, align 4, !dbg !1528
  %92 = select i1 %3, i32 52, i32 20, !dbg !1530
  %93 = or i32 %86, %92, !dbg !1530
  br label %255, !dbg !1530

94:                                               ; preds = %59
  %95 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1531
  br i1 %2, label %96, label %113, !dbg !1533

96:                                               ; preds = %94
  %97 = bitcast i8** %95 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1534
  %98 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1534
  %99 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 1, !dbg !1536
  call void @llvm.dbg.value(metadata i32 undef, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  %100 = load i32, i32* %99, align 4, !dbg !1531
  %101 = shl i32 %100, 20, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %118, metadata !1469, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %102 = or i32 %101, 262168, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %118, metadata !1469, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %103 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 2, !dbg !1538
  %104 = load i32, i32* %103, align 4, !dbg !1538
  %105 = shl nuw nsw i32 %7, 8, !dbg !1538
  %106 = or i32 %105, -2097086464, !dbg !1538
  %107 = inttoptr i32 %106 to i32*, !dbg !1538
  store volatile i32 %104, i32* %107, align 256, !dbg !1538
  %108 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1541
  %109 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %108, i32 0, i32 3, !dbg !1541
  %110 = load i32, i32* %109, align 4, !dbg !1541
  %111 = or i32 %105, -2097086460, !dbg !1541
  %112 = inttoptr i32 %111 to i32*, !dbg !1541
  store volatile i32 %110, i32* %112, align 4, !dbg !1541
  br label %255, !dbg !1542

113:                                              ; preds = %94
  %114 = bitcast i8** %95 to %struct.DMA_HWMENU**, !dbg !1543
  %115 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %114, align 4, !dbg !1543
  %116 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 1, !dbg !1545
  call void @llvm.dbg.value(metadata i32 undef, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  %117 = load i32, i32* %116, align 4, !dbg !1531
  %118 = shl i32 %117, 20, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %118, metadata !1469, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %118, metadata !1469, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %119 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 2, !dbg !1546
  %120 = load i32, i32* %119, align 4, !dbg !1546
  %121 = shl nuw nsw i32 %7, 8, !dbg !1546
  %122 = or i32 %121, -2097086420, !dbg !1546
  %123 = inttoptr i32 %122 to i32*, !dbg !1546
  store volatile i32 %120, i32* %123, align 4, !dbg !1546
  %124 = select i1 %3, i32 262200, i32 262168, !dbg !1548
  %125 = or i32 %118, %124, !dbg !1548
  br label %255, !dbg !1548

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1549
  %128 = bitcast i8** %127 to %struct.DMA_SWCOPYMENU**, !dbg !1549
  %129 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1549
  %130 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %129, i32 0, i32 0, !dbg !1549
  %131 = load i32, i32* %130, align 4, !dbg !1549
  %132 = shl nuw nsw i32 %7, 8, !dbg !1549
  %133 = or i32 %132, -2097086464, !dbg !1549
  %134 = inttoptr i32 %133 to i32*, !dbg !1549
  store volatile i32 %131, i32* %134, align 256, !dbg !1549
  %135 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1550
  %136 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %135, i32 0, i32 1, !dbg !1550
  %137 = load i32, i32* %136, align 4, !dbg !1550
  %138 = or i32 %132, -2097086460, !dbg !1550
  %139 = inttoptr i32 %138 to i32*, !dbg !1550
  store volatile i32 %137, i32* %139, align 4, !dbg !1550
  call void @llvm.dbg.value(metadata i32 12, metadata !1469, metadata !DIExpression()), !dbg !1471
  br label %255, !dbg !1551

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1552
  br i1 %2, label %142, label %171, !dbg !1554

142:                                              ; preds = %140
  %143 = bitcast i8** %141 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1555
  %144 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1555
  %145 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 1, !dbg !1557
  call void @llvm.dbg.value(metadata i32 undef, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  %146 = load i32, i32* %145, align 4, !dbg !1552
  %147 = shl i32 %146, 20, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %176, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %148 = or i32 %147, 131092, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %176, metadata !1469, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %149 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 4, !dbg !1559
  %150 = load i8*, i8** %149, align 4, !dbg !1559
  %151 = ptrtoint i8* %150 to i32, !dbg !1559
  %152 = shl nuw nsw i32 %7, 8, !dbg !1559
  %153 = or i32 %152, -2097086456, !dbg !1559
  %154 = inttoptr i32 %153 to i32*, !dbg !1559
  store volatile i32 %151, i32* %154, align 8, !dbg !1559
  %155 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1562
  %156 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %155, i32 0, i32 5, !dbg !1562
  %157 = load i8*, i8** %156, align 4, !dbg !1562
  %158 = ptrtoint i8* %157 to i32, !dbg !1562
  %159 = or i32 %152, -2097086452, !dbg !1562
  %160 = inttoptr i32 %159 to i32*, !dbg !1562
  store volatile i32 %158, i32* %160, align 4, !dbg !1562
  %161 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1563
  %162 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %161, i32 0, i32 2, !dbg !1563
  %163 = load i32, i32* %162, align 4, !dbg !1563
  %164 = or i32 %152, -2097086464, !dbg !1563
  %165 = inttoptr i32 %164 to i32*, !dbg !1563
  store volatile i32 %163, i32* %165, align 256, !dbg !1563
  %166 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1564
  %167 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %166, i32 0, i32 3, !dbg !1564
  %168 = load i32, i32* %167, align 4, !dbg !1564
  %169 = or i32 %152, -2097086460, !dbg !1564
  %170 = inttoptr i32 %169 to i32*, !dbg !1564
  store volatile i32 %168, i32* %170, align 4, !dbg !1564
  br label %255, !dbg !1565

171:                                              ; preds = %140
  %172 = bitcast i8** %141 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1566
  %173 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1566
  %174 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 1, !dbg !1568
  call void @llvm.dbg.value(metadata i32 undef, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  %175 = load i32, i32* %174, align 4, !dbg !1552
  %176 = shl i32 %175, 20, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %176, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %176, metadata !1469, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %177 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 3, !dbg !1569
  %178 = load i8*, i8** %177, align 4, !dbg !1569
  %179 = ptrtoint i8* %178 to i32, !dbg !1569
  %180 = shl nuw nsw i32 %7, 8, !dbg !1569
  %181 = or i32 %180, -2097086456, !dbg !1569
  %182 = inttoptr i32 %181 to i32*, !dbg !1569
  store volatile i32 %179, i32* %182, align 8, !dbg !1569
  %183 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1571
  %184 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %183, i32 0, i32 4, !dbg !1571
  %185 = load i8*, i8** %184, align 4, !dbg !1571
  %186 = ptrtoint i8* %185 to i32, !dbg !1571
  %187 = or i32 %180, -2097086452, !dbg !1571
  %188 = inttoptr i32 %187 to i32*, !dbg !1571
  store volatile i32 %186, i32* %188, align 4, !dbg !1571
  %189 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1572
  %190 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %189, i32 0, i32 2, !dbg !1572
  %191 = load i32, i32* %190, align 4, !dbg !1572
  %192 = or i32 %180, -2097086420, !dbg !1572
  %193 = inttoptr i32 %192 to i32*, !dbg !1572
  store volatile i32 %191, i32* %193, align 4, !dbg !1572
  %194 = select i1 %3, i32 131124, i32 131092, !dbg !1573
  %195 = or i32 %176, %194, !dbg !1573
  br label %255, !dbg !1573

196:                                              ; preds = %59
  %197 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1574
  br i1 %2, label %198, label %227, !dbg !1576

198:                                              ; preds = %196
  %199 = bitcast i8** %197 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1577
  %200 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1577
  %201 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 1, !dbg !1579
  call void @llvm.dbg.value(metadata i32 undef, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  %202 = load i32, i32* %201, align 4, !dbg !1574
  %203 = shl i32 %202, 20, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %232, metadata !1469, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %204 = or i32 %203, 458776, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %232, metadata !1469, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %205 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 4, !dbg !1581
  %206 = load i8*, i8** %205, align 4, !dbg !1581
  %207 = ptrtoint i8* %206 to i32, !dbg !1581
  %208 = shl nuw nsw i32 %7, 8, !dbg !1581
  %209 = or i32 %208, -2097086456, !dbg !1581
  %210 = inttoptr i32 %209 to i32*, !dbg !1581
  store volatile i32 %207, i32* %210, align 8, !dbg !1581
  %211 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1584
  %212 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %211, i32 0, i32 5, !dbg !1584
  %213 = load i8*, i8** %212, align 4, !dbg !1584
  %214 = ptrtoint i8* %213 to i32, !dbg !1584
  %215 = or i32 %208, -2097086452, !dbg !1584
  %216 = inttoptr i32 %215 to i32*, !dbg !1584
  store volatile i32 %214, i32* %216, align 4, !dbg !1584
  %217 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1585
  %218 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %217, i32 0, i32 2, !dbg !1585
  %219 = load i32, i32* %218, align 4, !dbg !1585
  %220 = or i32 %208, -2097086464, !dbg !1585
  %221 = inttoptr i32 %220 to i32*, !dbg !1585
  store volatile i32 %219, i32* %221, align 256, !dbg !1585
  %222 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1586
  %223 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %222, i32 0, i32 3, !dbg !1586
  %224 = load i32, i32* %223, align 4, !dbg !1586
  %225 = or i32 %208, -2097086460, !dbg !1586
  %226 = inttoptr i32 %225 to i32*, !dbg !1586
  store volatile i32 %224, i32* %226, align 4, !dbg !1586
  br label %255, !dbg !1587

227:                                              ; preds = %196
  %228 = bitcast i8** %197 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1588
  %229 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1588
  %230 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 1, !dbg !1590
  call void @llvm.dbg.value(metadata i32 undef, metadata !1469, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1471
  %231 = load i32, i32* %230, align 4, !dbg !1574
  %232 = shl i32 %231, 20, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %232, metadata !1469, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %232, metadata !1469, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1471
  %233 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 3, !dbg !1591
  %234 = load i8*, i8** %233, align 4, !dbg !1591
  %235 = ptrtoint i8* %234 to i32, !dbg !1591
  %236 = shl nuw nsw i32 %7, 8, !dbg !1591
  %237 = or i32 %236, -2097086456, !dbg !1591
  %238 = inttoptr i32 %237 to i32*, !dbg !1591
  store volatile i32 %235, i32* %238, align 8, !dbg !1591
  %239 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1593
  %240 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %239, i32 0, i32 4, !dbg !1593
  %241 = load i8*, i8** %240, align 4, !dbg !1593
  %242 = ptrtoint i8* %241 to i32, !dbg !1593
  %243 = or i32 %236, -2097086452, !dbg !1593
  %244 = inttoptr i32 %243 to i32*, !dbg !1593
  store volatile i32 %242, i32* %244, align 4, !dbg !1593
  %245 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1594
  %246 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %245, i32 0, i32 2, !dbg !1594
  %247 = load i32, i32* %246, align 4, !dbg !1594
  %248 = or i32 %236, -2097086420, !dbg !1594
  %249 = inttoptr i32 %248 to i32*, !dbg !1594
  store volatile i32 %247, i32* %249, align 4, !dbg !1594
  %250 = select i1 %3, i32 458808, i32 458776, !dbg !1595
  %251 = or i32 %232, %250, !dbg !1595
  br label %255, !dbg !1595

252:                                              ; preds = %59
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 410) #18, !dbg !1596
  br label %254, !dbg !1596

254:                                              ; preds = %254, %252
  br label %254, !dbg !1596, !llvm.loop !1599

255:                                              ; preds = %227, %171, %113, %81, %198, %142, %96, %64, %126
  %256 = phi i32 [ %204, %198 ], [ %148, %142 ], [ 12, %126 ], [ %102, %96 ], [ %70, %64 ], [ %93, %81 ], [ %125, %113 ], [ %195, %171 ], [ %251, %227 ], !dbg !1600
  call void @llvm.dbg.value(metadata i32 %256, metadata !1469, metadata !DIExpression()), !dbg !1471
  %257 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 1, !dbg !1601
  %258 = load i32, i32* %257, align 4, !dbg !1601
  switch i32 %258, label %328 [
    i32 0, label %259
    i32 1, label %285
    i32 2, label %309
  ], !dbg !1602

259:                                              ; preds = %255
  %260 = load i32, i32* %60, align 4, !dbg !1603
  %261 = icmp eq i32 %260, 2, !dbg !1606
  br i1 %261, label %331, label %262, !dbg !1607

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1608
  %264 = bitcast i8** %263 to %struct.DMA_TMODE**, !dbg !1608
  %265 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %264, align 4, !dbg !1608
  %266 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 0, !dbg !1611
  %267 = load i8, i8* %266, align 1, !dbg !1611, !range !1612
  %268 = icmp eq i8 %267, 0, !dbg !1611
  br i1 %268, label %331, label %269, !dbg !1613

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 1, !dbg !1614
  %271 = load i8, i8* %270, align 1, !dbg !1614
  %272 = icmp ult i8 %271, 16, !dbg !1615
  br i1 %272, label %275, label %273, !dbg !1616

273:                                              ; preds = %269
  %274 = or i32 %256, 1536, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %274, metadata !1469, metadata !DIExpression()), !dbg !1471
  br label %331, !dbg !1619

275:                                              ; preds = %269
  %276 = and i8 %271, 8, !dbg !1620
  %277 = icmp eq i8 %276, 0, !dbg !1620
  br i1 %277, label %280, label %278, !dbg !1622

278:                                              ; preds = %275
  %279 = or i32 %256, 1024, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %279, metadata !1469, metadata !DIExpression()), !dbg !1471
  br label %331, !dbg !1625

280:                                              ; preds = %275
  %281 = and i8 %271, 4, !dbg !1626
  %282 = zext i8 %281 to i32, !dbg !1628
  %283 = shl nuw nsw i32 %282, 7, !dbg !1628
  %284 = or i32 %283, %256, !dbg !1628
  br label %331, !dbg !1628

285:                                              ; preds = %255
  %286 = load i32, i32* %60, align 4, !dbg !1629
  %287 = icmp eq i32 %286, 2, !dbg !1631
  br i1 %287, label %306, label %288, !dbg !1632

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1633
  %290 = bitcast i8** %289 to %struct.DMA_TMODE**, !dbg !1633
  %291 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %290, align 4, !dbg !1633
  %292 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 0, !dbg !1636
  %293 = load i8, i8* %292, align 1, !dbg !1636, !range !1612
  %294 = icmp eq i8 %293, 0, !dbg !1636
  br i1 %294, label %306, label %295, !dbg !1637

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 1, !dbg !1638
  %297 = load i8, i8* %296, align 1, !dbg !1638
  %298 = icmp ult i8 %297, 8, !dbg !1639
  br i1 %298, label %301, label %299, !dbg !1640

299:                                              ; preds = %295
  %300 = or i32 %256, 1024, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %300, metadata !1469, metadata !DIExpression()), !dbg !1471
  br label %306, !dbg !1643

301:                                              ; preds = %295
  %302 = and i8 %297, 4, !dbg !1644
  %303 = zext i8 %302 to i32, !dbg !1646
  %304 = shl nuw nsw i32 %303, 7, !dbg !1646
  %305 = or i32 %304, %256, !dbg !1646
  br label %306, !dbg !1646

306:                                              ; preds = %288, %301, %299, %285
  %307 = phi i32 [ %300, %299 ], [ %256, %285 ], [ %305, %301 ], [ %256, %288 ], !dbg !1471
  call void @llvm.dbg.value(metadata i32 %307, metadata !1469, metadata !DIExpression()), !dbg !1471
  %308 = or i32 %307, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i32 %308, metadata !1469, metadata !DIExpression()), !dbg !1471
  br label %331, !dbg !1648

309:                                              ; preds = %255
  %310 = load i32, i32* %60, align 4, !dbg !1649
  %311 = icmp eq i32 %310, 2, !dbg !1651
  br i1 %311, label %325, label %312, !dbg !1652

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1653
  %314 = bitcast i8** %313 to %struct.DMA_TMODE**, !dbg !1653
  %315 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %314, align 4, !dbg !1653
  %316 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 0, !dbg !1656
  %317 = load i8, i8* %316, align 1, !dbg !1656, !range !1612
  %318 = icmp eq i8 %317, 0, !dbg !1656
  br i1 %318, label %325, label %319, !dbg !1657

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 1, !dbg !1658
  %321 = load i8, i8* %320, align 1, !dbg !1658
  %322 = icmp ult i8 %321, 4, !dbg !1659
  %323 = or i32 %256, 512
  %324 = select i1 %322, i32 %256, i32 %323, !dbg !1660
  br label %325, !dbg !1660

325:                                              ; preds = %319, %312, %309
  %326 = phi i32 [ %256, %312 ], [ %256, %309 ], [ %324, %319 ], !dbg !1471
  call void @llvm.dbg.value(metadata i32 %326, metadata !1469, metadata !DIExpression()), !dbg !1471
  %327 = or i32 %326, 2, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %327, metadata !1469, metadata !DIExpression()), !dbg !1471
  br label %331, !dbg !1662

328:                                              ; preds = %255
  %329 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 486) #18, !dbg !1663
  br label %330, !dbg !1663

330:                                              ; preds = %330, %328
  br label %330, !dbg !1663, !llvm.loop !1666

331:                                              ; preds = %262, %280, %259, %278, %273, %325, %306
  %332 = phi i32 [ %327, %325 ], [ %308, %306 ], [ %274, %273 ], [ %279, %278 ], [ %256, %259 ], [ %284, %280 ], [ %256, %262 ], !dbg !1471
  call void @llvm.dbg.value(metadata i32 %332, metadata !1469, metadata !DIExpression()), !dbg !1471
  %333 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 4, !dbg !1667
  %334 = load void ()*, void ()** %333, align 4, !dbg !1667
  %335 = icmp eq void ()* %334, null, !dbg !1669
  br i1 %335, label %339, label %336, !dbg !1670

336:                                              ; preds = %331
  %337 = or i32 %332, 32768, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %337, metadata !1469, metadata !DIExpression()), !dbg !1471
  %338 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %40, !dbg !1673
  store void ()* %334, void ()** %338, align 4, !dbg !1674
  br label %339, !dbg !1675

339:                                              ; preds = %336, %331
  %340 = phi i32 [ %337, %336 ], [ %332, %331 ], !dbg !1471
  call void @llvm.dbg.value(metadata i32 %340, metadata !1469, metadata !DIExpression()), !dbg !1471
  %341 = shl nuw nsw i32 %7, 8, !dbg !1676
  %342 = or i32 %341, -2097086444, !dbg !1676
  %343 = inttoptr i32 %342 to i32*, !dbg !1676
  store volatile i32 %340, i32* %343, align 4, !dbg !1676
  %344 = load i32, i32* %53, align 4, !dbg !1677
  %345 = or i32 %341, -2097086448, !dbg !1677
  %346 = inttoptr i32 %345 to i32*, !dbg !1677
  store volatile i32 %344, i32* %346, align 16, !dbg !1677
  br i1 %5, label %347, label %350, !dbg !1678

347:                                              ; preds = %339
  %348 = or i32 %341, -2097086440, !dbg !1679
  %349 = inttoptr i32 %348 to i32*, !dbg !1679
  store volatile i32 32768, i32* %349, align 8, !dbg !1679
  br label %350, !dbg !1682

350:                                              ; preds = %347, %339
  ret void, !dbg !1683
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Enable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1684 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1686, metadata !DIExpression()), !dbg !1687
  %2 = zext i8 %0 to i32, !dbg !1688
  %3 = add nsw i32 %2, -1, !dbg !1689
  %4 = shl nuw i32 1, %3, !dbg !1690
  store volatile i32 %4, i32* inttoptr (i32 -2097151976 to i32*), align 8, !dbg !1691
  ret void, !dbg !1692
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_Register(i8 noundef zeroext %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !1693 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1698, metadata !DIExpression()), !dbg !1699
  %3 = zext i8 %0 to i32, !dbg !1700
  %4 = add i8 %0, -12, !dbg !1702
  %5 = icmp ult i8 %4, -11, !dbg !1702
  br i1 %5, label %6, label %8, !dbg !1702

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.DMA_Register, i32 0, i32 0), i32 noundef %3) #18, !dbg !1703
  br label %11, !dbg !1705

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1, !dbg !1706
  %10 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %9, !dbg !1707
  store void ()* %1, void ()** %10, align 4, !dbg !1708
  br label %11, !dbg !1709

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ], !dbg !1699
  ret i32 %12, !dbg !1710
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_UnRegister(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1715, metadata !DIExpression()), !dbg !1716
  %2 = zext i8 %0 to i32, !dbg !1717
  %3 = add i8 %0, -12, !dbg !1719
  %4 = icmp ult i8 %3, -11, !dbg !1719
  br i1 %4, label %5, label %7, !dbg !1719

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.DMA_UnRegister, i32 0, i32 0), i32 noundef %2) #18, !dbg !1720
  br label %10, !dbg !1722

7:                                                ; preds = %1
  %8 = add nsw i32 %2, -1, !dbg !1723
  %9 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %8, !dbg !1724
  store void ()* @DMA_ERROR_LISR, void ()** %9, align 4, !dbg !1725
  br label %10, !dbg !1726

10:                                               ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ 0, %7 ], !dbg !1716
  ret i32 %11, !dbg !1727
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_LISR(i32 %0) #3 !dbg !1728 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1730, metadata !DIExpression()), !dbg !1733
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 1) #18, !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1733
  br label %3, !dbg !1735

3:                                                ; preds = %1, %25
  %4 = phi i32 [ 0, %1 ], [ %5, %25 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1731, metadata !DIExpression()), !dbg !1733
  %5 = add nuw nsw i32 %4, 1, !dbg !1737
  %6 = shl nuw nsw i32 %5, 8, !dbg !1737
  %7 = add nuw nsw i32 %6, -2097086436, !dbg !1737
  %8 = inttoptr i32 %7 to i32*, !dbg !1737
  %9 = load volatile i32, i32* %8, align 4, !dbg !1737
  %10 = and i32 %9, 32768, !dbg !1741
  %11 = icmp eq i32 %10, 0, !dbg !1741
  br i1 %11, label %25, label %12, !dbg !1742

12:                                               ; preds = %3
  %13 = trunc i32 %5 to i8, !dbg !1743
  tail call void @DMA_Stop(i8 noundef zeroext %13) #16, !dbg !1745
  %14 = add nuw nsw i32 %6, -2097086432, !dbg !1746
  %15 = inttoptr i32 %14 to i32*, !dbg !1746
  store volatile i32 32768, i32* %15, align 32, !dbg !1746
  %16 = shl nuw nsw i32 %4, 1
  %17 = shl nuw i32 1, %16
  br label %18, !dbg !1747

18:                                               ; preds = %18, %12
  %19 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1748
  %20 = and i32 %19, %17, !dbg !1747
  %21 = icmp eq i32 %20, 0, !dbg !1747
  br i1 %21, label %22, label %18, !dbg !1747, !llvm.loop !1749

22:                                               ; preds = %18
  tail call void @DMA_Clock_Disable(i8 noundef zeroext %13) #16, !dbg !1751
  %23 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %4, !dbg !1752
  %24 = load void ()*, void ()** %23, align 4, !dbg !1752
  tail call void %24() #18, !dbg !1752
  br label %25, !dbg !1753

25:                                               ; preds = %3, %22
  call void @llvm.dbg.value(metadata i32 %5, metadata !1731, metadata !DIExpression()), !dbg !1733
  %26 = icmp eq i32 %5, 11, !dbg !1754
  br i1 %26, label %27, label %3, !dbg !1735, !llvm.loop !1755

27:                                               ; preds = %25, %87
  %28 = phi i32 [ %88, %87 ], [ 12, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1731, metadata !DIExpression()), !dbg !1733
  %29 = shl nuw nsw i32 %28, 8, !dbg !1757
  %30 = or i32 %29, -2097086444, !dbg !1757
  %31 = inttoptr i32 %30 to i32*, !dbg !1757
  %32 = load volatile i32, i32* %31, align 4, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %32, metadata !1732, metadata !DIExpression()), !dbg !1733
  %33 = or i32 %29, -2097086436, !dbg !1761
  %34 = inttoptr i32 %33 to i32*, !dbg !1761
  %35 = load volatile i32, i32* %34, align 4, !dbg !1761
  %36 = and i32 %35, 32768, !dbg !1763
  %37 = icmp eq i32 %36, 0, !dbg !1763
  br i1 %37, label %87, label %38, !dbg !1764

38:                                               ; preds = %27
  %39 = lshr i32 %32, 20, !dbg !1765
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
  ], !dbg !1767

40:                                               ; preds = %38
  %41 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1768
  %42 = icmp eq void ()* %41, null, !dbg !1771
  br i1 %42, label %84, label %82, !dbg !1772

43:                                               ; preds = %38
  %44 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1773
  %45 = icmp eq void ()* %44, null, !dbg !1775
  br i1 %45, label %84, label %82, !dbg !1776

46:                                               ; preds = %38
  %47 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1777
  %48 = icmp eq void ()* %47, null, !dbg !1779
  br i1 %48, label %84, label %82, !dbg !1780

49:                                               ; preds = %38
  %50 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1781
  %51 = icmp eq void ()* %50, null, !dbg !1783
  br i1 %51, label %84, label %82, !dbg !1784

52:                                               ; preds = %38
  %53 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1785
  %54 = icmp eq void ()* %53, null, !dbg !1787
  br i1 %54, label %84, label %82, !dbg !1788

55:                                               ; preds = %38
  %56 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1789
  %57 = icmp eq void ()* %56, null, !dbg !1791
  br i1 %57, label %84, label %82, !dbg !1792

58:                                               ; preds = %38
  %59 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1793
  %60 = icmp eq void ()* %59, null, !dbg !1795
  br i1 %60, label %84, label %82, !dbg !1796

61:                                               ; preds = %38
  %62 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1797
  %63 = icmp eq void ()* %62, null, !dbg !1799
  br i1 %63, label %84, label %82, !dbg !1800

64:                                               ; preds = %38
  %65 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1801
  %66 = icmp eq void ()* %65, null, !dbg !1803
  br i1 %66, label %84, label %82, !dbg !1804

67:                                               ; preds = %38
  %68 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1805
  %69 = icmp eq void ()* %68, null, !dbg !1807
  br i1 %69, label %84, label %82, !dbg !1808

70:                                               ; preds = %38
  %71 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1809
  %72 = icmp eq void ()* %71, null, !dbg !1811
  br i1 %72, label %84, label %82, !dbg !1812

73:                                               ; preds = %38
  %74 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1813
  %75 = icmp eq void ()* %74, null, !dbg !1815
  br i1 %75, label %84, label %82, !dbg !1816

76:                                               ; preds = %38
  %77 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1817
  %78 = icmp eq void ()* %77, null, !dbg !1819
  br i1 %78, label %84, label %82, !dbg !1820

79:                                               ; preds = %38
  %80 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1821
  %81 = icmp eq void ()* %80, null, !dbg !1823
  br i1 %81, label %84, label %82, !dbg !1824

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  %83 = phi void ()* [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ]
  tail call void %83() #18, !dbg !1825
  br label %84, !dbg !1826

84:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %38
  %85 = or i32 %29, -2097086432, !dbg !1826
  %86 = inttoptr i32 %85 to i32*, !dbg !1826
  store volatile i32 32768, i32* %86, align 32, !dbg !1826
  br label %87, !dbg !1827

87:                                               ; preds = %27, %84
  %88 = add nuw nsw i32 %28, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i32 %88, metadata !1731, metadata !DIExpression()), !dbg !1733
  %89 = icmp eq i32 %88, 26, !dbg !1829
  br i1 %89, label %90, label %27, !dbg !1830, !llvm.loop !1831

90:                                               ; preds = %87, %150
  %91 = phi i32 [ %151, %150 ], [ 12, %87 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1731, metadata !DIExpression()), !dbg !1733
  %92 = shl nuw nsw i32 %91, 8, !dbg !1833
  %93 = or i32 %92, -2097086444, !dbg !1833
  %94 = inttoptr i32 %93 to i32*, !dbg !1833
  %95 = load volatile i32, i32* %94, align 4, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %95, metadata !1732, metadata !DIExpression()), !dbg !1733
  %96 = or i32 %92, -2097086436, !dbg !1837
  %97 = inttoptr i32 %96 to i32*, !dbg !1837
  %98 = load volatile i32, i32* %97, align 4, !dbg !1837
  %99 = and i32 %98, 65536, !dbg !1839
  %100 = icmp eq i32 %99, 0, !dbg !1839
  br i1 %100, label %150, label %101, !dbg !1840

101:                                              ; preds = %90
  %102 = lshr i32 %95, 20, !dbg !1841
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
  ], !dbg !1843

103:                                              ; preds = %101
  %104 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1844
  %105 = icmp eq void ()* %104, null, !dbg !1847
  br i1 %105, label %147, label %145, !dbg !1848

106:                                              ; preds = %101
  %107 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1849
  %108 = icmp eq void ()* %107, null, !dbg !1851
  br i1 %108, label %147, label %145, !dbg !1852

109:                                              ; preds = %101
  %110 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1853
  %111 = icmp eq void ()* %110, null, !dbg !1855
  br i1 %111, label %147, label %145, !dbg !1856

112:                                              ; preds = %101
  %113 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1857
  %114 = icmp eq void ()* %113, null, !dbg !1859
  br i1 %114, label %147, label %145, !dbg !1860

115:                                              ; preds = %101
  %116 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1861
  %117 = icmp eq void ()* %116, null, !dbg !1863
  br i1 %117, label %147, label %145, !dbg !1864

118:                                              ; preds = %101
  %119 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1865
  %120 = icmp eq void ()* %119, null, !dbg !1867
  br i1 %120, label %147, label %145, !dbg !1868

121:                                              ; preds = %101
  %122 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1869
  %123 = icmp eq void ()* %122, null, !dbg !1871
  br i1 %123, label %147, label %145, !dbg !1872

124:                                              ; preds = %101
  %125 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1873
  %126 = icmp eq void ()* %125, null, !dbg !1875
  br i1 %126, label %147, label %145, !dbg !1876

127:                                              ; preds = %101
  %128 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1877
  %129 = icmp eq void ()* %128, null, !dbg !1879
  br i1 %129, label %147, label %145, !dbg !1880

130:                                              ; preds = %101
  %131 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1881
  %132 = icmp eq void ()* %131, null, !dbg !1883
  br i1 %132, label %147, label %145, !dbg !1884

133:                                              ; preds = %101
  %134 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1885
  %135 = icmp eq void ()* %134, null, !dbg !1887
  br i1 %135, label %147, label %145, !dbg !1888

136:                                              ; preds = %101
  %137 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1889
  %138 = icmp eq void ()* %137, null, !dbg !1891
  br i1 %138, label %147, label %145, !dbg !1892

139:                                              ; preds = %101
  %140 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1893
  %141 = icmp eq void ()* %140, null, !dbg !1895
  br i1 %141, label %147, label %145, !dbg !1896

142:                                              ; preds = %101
  %143 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1897
  %144 = icmp eq void ()* %143, null, !dbg !1899
  br i1 %144, label %147, label %145, !dbg !1900

145:                                              ; preds = %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %146 = phi void ()* [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ], [ %128, %127 ], [ %131, %130 ], [ %134, %133 ], [ %137, %136 ], [ %140, %139 ], [ %143, %142 ]
  tail call void %146() #18, !dbg !1901
  br label %147, !dbg !1902

147:                                              ; preds = %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %101
  %148 = or i32 %92, -2097086432, !dbg !1902
  %149 = inttoptr i32 %148 to i32*, !dbg !1902
  store volatile i32 65536, i32* %149, align 32, !dbg !1902
  br label %150, !dbg !1903

150:                                              ; preds = %90, %147
  %151 = add nuw nsw i32 %91, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %151, metadata !1731, metadata !DIExpression()), !dbg !1733
  %152 = icmp eq i32 %151, 26, !dbg !1905
  br i1 %152, label %153, label %90, !dbg !1906, !llvm.loop !1907

153:                                              ; preds = %150
  %154 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #18, !dbg !1909
  ret void, !dbg !1910
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Disable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1911 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1913, metadata !DIExpression()), !dbg !1914
  %2 = zext i8 %0 to i32, !dbg !1915
  %3 = add nsw i32 %2, -1, !dbg !1916
  %4 = shl nuw i32 1, %3, !dbg !1917
  store volatile i32 %4, i32* inttoptr (i32 -2097151980 to i32*), align 4, !dbg !1918
  ret void, !dbg !1919
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Init() local_unnamed_addr #3 !dbg !1920 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1923
  %1 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1923
  br label %2, !dbg !1924

2:                                                ; preds = %0, %9
  %3 = phi i32 [ 0, %0 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1922, metadata !DIExpression()), !dbg !1923
  %4 = shl nuw i32 1, %3, !dbg !1926
  %5 = and i32 %1, %4, !dbg !1930
  %6 = icmp eq i32 %5, 0, !dbg !1931
  br i1 %6, label %9, label %7, !dbg !1932

7:                                                ; preds = %2
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %3, !dbg !1933
  store i32 26, i32* %8, align 4, !dbg !1935
  br label %9, !dbg !1936

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i32 %3, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %10, metadata !1922, metadata !DIExpression()), !dbg !1923
  %11 = icmp eq i32 %10, 11, !dbg !1938
  br i1 %11, label %12, label %2, !dbg !1924, !llvm.loop !1939

12:                                               ; preds = %9, %12
  %13 = phi i8 [ %14, %12 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1922, metadata !DIExpression()), !dbg !1923
  %14 = add nuw nsw i8 %13, 1, !dbg !1941
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %14) #16, !dbg !1945
  call void @llvm.dbg.value(metadata i8 %14, metadata !1922, metadata !DIExpression()), !dbg !1923
  %15 = icmp ult i8 %13, 10, !dbg !1946
  br i1 %15, label %12, label %16, !dbg !1947, !llvm.loop !1948

16:                                               ; preds = %12
  %17 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #18, !dbg !1950
  %18 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #18, !dbg !1951
  %19 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #18, !dbg !1952
  ret void, !dbg !1953
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1954 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1958, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8 -1, metadata !1959, metadata !DIExpression()), !dbg !1962
  %2 = add i8 %0, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i8 %2, metadata !1961, metadata !DIExpression()), !dbg !1962
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1964, !srcloc !1323
  call void @llvm.dbg.value(metadata i32 %3, metadata !1320, metadata !DIExpression()) #17, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %3, metadata !1960, metadata !DIExpression()), !dbg !1962
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1968, !srcloc !1328
  %4 = zext i8 %2 to i32, !dbg !1970
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1970
  %6 = load i8, i8* %5, align 1, !dbg !1970, !range !1612
  %7 = icmp eq i8 %6, 0, !dbg !1972
  br i1 %7, label %8, label %12, !dbg !1973

8:                                                ; preds = %1
  store i8 1, i8* %5, align 1, !dbg !1974
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %2) #16, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %3, metadata !1346, metadata !DIExpression()) #17, !dbg !1977
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #17, !dbg !1980, !srcloc !1355
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #18, !dbg !1981
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #18, !dbg !1982
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #18, !dbg !1983
  br label %12, !dbg !1984

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %0, %8 ], [ -1, %1 ], !dbg !1962
  ret i8 %13, !dbg !1985
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_idle(i8 noundef returned zeroext %0) local_unnamed_addr #3 !dbg !1986 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1988, metadata !DIExpression()), !dbg !1991
  %2 = add i8 %0, 1, !dbg !1992
  call void @llvm.dbg.value(metadata i8 %2, metadata !1990, metadata !DIExpression()), !dbg !1991
  tail call void @DMA_Stop(i8 noundef zeroext %2) #16, !dbg !1993
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1994, !srcloc !1323
  call void @llvm.dbg.value(metadata i32 %3, metadata !1320, metadata !DIExpression()) #17, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %3, metadata !1989, metadata !DIExpression()), !dbg !1991
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1998, !srcloc !1328
  %4 = zext i8 %2 to i32, !dbg !2000
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !2000
  store i8 0, i8* %5, align 1, !dbg !2001
  %6 = shl nuw i32 1, %4, !dbg !2002
  %7 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !2003
  %8 = or i32 %7, %6, !dbg !2003
  store i32 %8, i32* @DMA_Channel_Status, align 4, !dbg !2003
  %9 = add nsw i32 %4, -1, !dbg !2004
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %9, !dbg !2005
  store i32 26, i32* %10, align 4, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %3, metadata !1346, metadata !DIExpression()) #17, !dbg !2007
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #17, !dbg !2010, !srcloc !1355
  ret i8 %0, !dbg !2011
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_init() local_unnamed_addr #1 !dbg !2012 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2014, metadata !DIExpression()), !dbg !2015
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 12) #16, !dbg !2016
  call void @llvm.dbg.value(metadata i32 6293010, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 6293010, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !2017
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 13) #16, !dbg !2018
  call void @llvm.dbg.value(metadata i32 7603730, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 7603730, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !2019
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 14) #16, !dbg !2020
  call void @llvm.dbg.value(metadata i32 8388624, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 8388624, i32* inttoptr (i32 -2097082860 to i32*), align 4, !dbg !2021
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 15) #16, !dbg !2022
  call void @llvm.dbg.value(metadata i32 9748496, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 9748496, i32* inttoptr (i32 -2097082604 to i32*), align 4, !dbg !2023
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 16) #16, !dbg !2024
  call void @llvm.dbg.value(metadata i32 10485776, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 10485776, i32* inttoptr (i32 -2097082348 to i32*), align 4, !dbg !2025
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 17) #16, !dbg !2026
  call void @llvm.dbg.value(metadata i32 11845648, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 11845648, i32* inttoptr (i32 -2097082092 to i32*), align 4, !dbg !2027
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 18) #16, !dbg !2028
  call void @llvm.dbg.value(metadata i32 12582928, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 12582928, i32* inttoptr (i32 -2097081836 to i32*), align 4, !dbg !2029
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 19) #16, !dbg !2030
  call void @llvm.dbg.value(metadata i32 13942800, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 13942800, i32* inttoptr (i32 -2097081580 to i32*), align 4, !dbg !2031
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 20) #16, !dbg !2032
  call void @llvm.dbg.value(metadata i32 16023568, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 16023568, i32* inttoptr (i32 -2097081324 to i32*), align 4, !dbg !2033
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 21) #16, !dbg !2034
  call void @llvm.dbg.value(metadata i32 17072144, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 17072144, i32* inttoptr (i32 -2097081068 to i32*), align 4, !dbg !2035
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 22) #16, !dbg !2036
  call void @llvm.dbg.value(metadata i32 18120720, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 18120720, i32* inttoptr (i32 -2097080812 to i32*), align 4, !dbg !2037
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 23) #16, !dbg !2038
  call void @llvm.dbg.value(metadata i32 19169296, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 19169296, i32* inttoptr (i32 -2097080556 to i32*), align 4, !dbg !2039
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 24) #16, !dbg !2040
  call void @llvm.dbg.value(metadata i32 20217872, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 20217872, i32* inttoptr (i32 -2097080300 to i32*), align 4, !dbg !2041
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 25) #16, !dbg !2042
  call void @llvm.dbg.value(metadata i32 21282834, metadata !2014, metadata !DIExpression()), !dbg !2015
  store volatile i32 21282834, i32* inttoptr (i32 -2097080044 to i32*), align 4, !dbg !2043
  ret void, !dbg !2044
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_SetAdrs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !dbg !2045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %1, metadata !2050, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %2, metadata !2051, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %3, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %4, metadata !2053, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %5, metadata !2054, metadata !DIExpression()), !dbg !2055
  %7 = shl i32 %2, 8, !dbg !2056
  %8 = add i32 %7, -2097086420, !dbg !2056
  %9 = inttoptr i32 %8 to i32*, !dbg !2056
  store volatile i32 %0, i32* %9, align 4, !dbg !2056
  %10 = add i32 %7, -2097086396, !dbg !2057
  %11 = inttoptr i32 %10 to i32*, !dbg !2057
  store volatile i32 %1, i32* %11, align 4, !dbg !2057
  %12 = add i32 %7, -2097086400, !dbg !2058
  %13 = inttoptr i32 %12 to i32*, !dbg !2058
  store volatile i32 %3, i32* %13, align 64, !dbg !2058
  %14 = add i32 %7, -2097086448, !dbg !2059
  %15 = inttoptr i32 %14 to i32*, !dbg !2059
  store volatile i32 %4, i32* %15, align 16, !dbg !2060
  %16 = add i32 %7, -2097086384, !dbg !2061
  %17 = inttoptr i32 %16 to i32*, !dbg !2061
  store volatile i32 %5, i32* %17, align 16, !dbg !2062
  ret void, !dbg !2063
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2068, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 %1, metadata !2069, metadata !DIExpression()), !dbg !2070
  %3 = shl i32 %0, 8, !dbg !2071
  %4 = add i32 %3, -2097086384, !dbg !2071
  %5 = inttoptr i32 %4 to i32*, !dbg !2071
  store volatile i32 %1, i32* %5, align 16, !dbg !2072
  ret void, !dbg !2073
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !2074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2078, metadata !DIExpression()), !dbg !2079
  %2 = shl i32 %0, 8, !dbg !2080
  %3 = add i32 %2, -2097086444, !dbg !2080
  %4 = inttoptr i32 %3 to i32*, !dbg !2080
  %5 = load volatile i32, i32* %4, align 4, !dbg !2080
  %6 = or i32 %5, 32768, !dbg !2080
  store volatile i32 %6, i32* %4, align 4, !dbg !2080
  ret void, !dbg !2081
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !2082 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2084, metadata !DIExpression()), !dbg !2085
  %2 = shl i32 %0, 8, !dbg !2086
  %3 = add i32 %2, -2097086444, !dbg !2086
  %4 = inttoptr i32 %3 to i32*, !dbg !2086
  %5 = load volatile i32, i32* %4, align 4, !dbg !2086
  %6 = and i32 %5, -32769, !dbg !2086
  store volatile i32 %6, i32* %4, align 4, !dbg !2086
  ret void, !dbg !2087
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Flush(i32 noundef %0) local_unnamed_addr #1 !dbg !2088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression()), !dbg !2091
  %2 = trunc i32 %0 to i8, !dbg !2092
  tail call void @DMA_Stop(i8 noundef zeroext %2) #16, !dbg !2093
  %3 = shl i32 %0, 8, !dbg !2094
  %4 = add i32 %3, -2097086440, !dbg !2094
  %5 = inttoptr i32 %4 to i32*, !dbg !2094
  store volatile i32 32768, i32* %5, align 8, !dbg !2094
  ret void, !dbg !2095
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !2096 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2100, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2101, metadata !DIExpression()), !dbg !2102
  %3 = add i32 %0, -12, !dbg !2103
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !2104
  store void ()* %1, void ()** %4, align 4, !dbg !2105
  ret void, !dbg !2106
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !2107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2110, metadata !DIExpression()), !dbg !2111
  %3 = add i32 %0, -12, !dbg !2112
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !2113
  store void ()* %1, void ()** %4, align 4, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sVdmaTxStart(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !2116 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2121, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %1, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %2, metadata !2123, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %3, metadata !2124, metadata !DIExpression()), !dbg !2125
  %5 = icmp ugt i8 %3, 1, !dbg !2126
  br i1 %5, label %17, label %6, !dbg !2128

6:                                                ; preds = %4
  store volatile i32 %0, i32* inttoptr (i32 -2097083348 to i32*), align 4, !dbg !2129
  store volatile i32 %1, i32* inttoptr (i32 -2097083324 to i32*), align 4, !dbg !2130
  %7 = icmp eq i8 %3, 1, !dbg !2131
  br i1 %7, label %8, label %12, !dbg !2133

8:                                                ; preds = %6
  %9 = shl i32 %2, 8, !dbg !2134
  %10 = add i32 %9, -3072, !dbg !2134
  %11 = or i32 %10, 2030043137, !dbg !2136
  br label %15, !dbg !2137

12:                                               ; preds = %6
  %13 = load volatile i32, i32* inttoptr (i32 -2097083320 to i32*), align 8, !dbg !2138
  %14 = and i32 %13, -2, !dbg !2138
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ %11, %8 ]
  store volatile i32 %16, i32* inttoptr (i32 -2097083320 to i32*), align 8, !dbg !2140
  tail call void @DMA_Vfifo_Flush(i32 noundef 12) #18, !dbg !2141
  br label %17, !dbg !2142

17:                                               ; preds = %4, %15
  %18 = phi i8 [ 1, %15 ], [ 0, %4 ], !dbg !2125
  ret i8 %18, !dbg !2143
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sVdmaRxStart(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !2144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %1, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %2, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8 %3, metadata !2149, metadata !DIExpression()), !dbg !2150
  %5 = icmp ugt i8 %3, 1, !dbg !2151
  br i1 %5, label %17, label %6, !dbg !2153

6:                                                ; preds = %4
  store volatile i32 %0, i32* inttoptr (i32 -2097083092 to i32*), align 4, !dbg !2154
  store volatile i32 %1, i32* inttoptr (i32 -2097083068 to i32*), align 4, !dbg !2155
  %7 = icmp eq i8 %3, 1, !dbg !2156
  br i1 %7, label %8, label %12, !dbg !2158

8:                                                ; preds = %6
  %9 = shl i32 %2, 8, !dbg !2159
  %10 = add i32 %9, -3072, !dbg !2159
  %11 = or i32 %10, 2030043137, !dbg !2161
  br label %15, !dbg !2162

12:                                               ; preds = %6
  %13 = load volatile i32, i32* inttoptr (i32 -2097083064 to i32*), align 8, !dbg !2163
  %14 = and i32 %13, -2, !dbg !2163
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ %11, %8 ]
  store volatile i32 %16, i32* inttoptr (i32 -2097083064 to i32*), align 8, !dbg !2165
  tail call void @DMA_Vfifo_Flush(i32 noundef 13) #18, !dbg !2166
  br label %17, !dbg !2167

17:                                               ; preds = %4, %15
  %18 = phi i8 [ 1, %15 ], [ 0, %4 ], !dbg !2150
  ret i8 %18, !dbg !2168
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sSetVdmaTxIntrEn(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !2169 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2173, metadata !DIExpression()), !dbg !2175
  %2 = load volatile i32, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %2, metadata !2174, metadata !DIExpression()), !dbg !2175
  switch i8 %0, label %7 [
    i8 1, label %3
    i8 0, label %5
  ], !dbg !2177

3:                                                ; preds = %1
  %4 = or i32 %2, 32768, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %4, metadata !2174, metadata !DIExpression()), !dbg !2175
  br label %9, !dbg !2181

5:                                                ; preds = %1
  %6 = and i32 %2, -32769, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %6, metadata !2174, metadata !DIExpression()), !dbg !2175
  br label %9, !dbg !2185

7:                                                ; preds = %1
  %8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #18, !dbg !2186
  br label %9

9:                                                ; preds = %5, %7, %3
  %10 = phi i32 [ %4, %3 ], [ %6, %5 ], [ %2, %7 ], !dbg !2175
  call void @llvm.dbg.value(metadata i32 %10, metadata !2174, metadata !DIExpression()), !dbg !2175
  store volatile i32 %10, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !2188
  ret i8 1, !dbg !2189
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sSetVdmaRxIntrEn(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !2190 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2192, metadata !DIExpression()), !dbg !2194
  %2 = load volatile i32, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %2, metadata !2193, metadata !DIExpression()), !dbg !2194
  switch i8 %0, label %7 [
    i8 1, label %3
    i8 0, label %5
  ], !dbg !2196

3:                                                ; preds = %1
  %4 = or i32 %2, 32768, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %4, metadata !2193, metadata !DIExpression()), !dbg !2194
  br label %9, !dbg !2200

5:                                                ; preds = %1
  %6 = and i32 %2, -32769, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %6, metadata !2193, metadata !DIExpression()), !dbg !2194
  br label %9, !dbg !2204

7:                                                ; preds = %1
  %8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #18, !dbg !2205
  br label %9

9:                                                ; preds = %5, %7, %3
  %10 = phi i32 [ %4, %3 ], [ %6, %5 ], [ %2, %7 ], !dbg !2194
  call void @llvm.dbg.value(metadata i32 %10, metadata !2193, metadata !DIExpression()), !dbg !2194
  store volatile i32 %10, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !2207
  ret i8 1, !dbg !2208
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sVdmaTxStop() local_unnamed_addr #3 !dbg !2209 {
  tail call void @DMA_Stop(i8 noundef zeroext 12) #18, !dbg !2212
  ret i8 1, !dbg !2213
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sVdmaRxStop() local_unnamed_addr #3 !dbg !2214 {
  tail call void @DMA_Stop(i8 noundef zeroext 13) #18, !dbg !2215
  ret i8 1, !dbg !2216
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sSetVdmaTxThreshold(i32 noundef %0) local_unnamed_addr #1 !dbg !2217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  store volatile i32 %0, i32* inttoptr (i32 -2097083376 to i32*), align 16, !dbg !2223
  ret i8 1, !dbg !2224
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sSetVdmaRxThreshold(i32 noundef %0) local_unnamed_addr #1 !dbg !2225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2227, metadata !DIExpression()), !dbg !2228
  store volatile i32 %0, i32* inttoptr (i32 -2097083120 to i32*), align 16, !dbg !2229
  ret i8 1, !dbg !2230
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sWriteVdmaTxFifo(i32 noundef %0) local_unnamed_addr #1 !dbg !2231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2233, metadata !DIExpression()), !dbg !2234
  store volatile i32 %0, i32* inttoptr (i32 2030043136 to i32*), align 16777216, !dbg !2235
  ret i8 1, !dbg !2236
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @I2sReadVdmaRxFifo(i32* nocapture noundef writeonly %0) local_unnamed_addr #6 !dbg !2237 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2243, metadata !DIExpression()), !dbg !2244
  %2 = load volatile i32, i32* inttoptr (i32 2030043392 to i32*), align 256, !dbg !2245
  store i32 %2, i32* %0, align 4, !dbg !2246
  ret i8 1, !dbg !2247
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i16 @I2sGetVdmaTxFifoCnt() local_unnamed_addr #6 !dbg !2248 {
  %1 = load volatile i16, i16* inttoptr (i32 -2097083336 to i16*), align 8, !dbg !2252
  ret i16 %1, !dbg !2253
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i16 @I2sGetVdmaRxFifoCnt() local_unnamed_addr #6 !dbg !2254 {
  %1 = load volatile i16, i16* inttoptr (i32 -2097083080 to i16*), align 8, !dbg !2255
  ret i16 %1, !dbg !2256
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sSetGblCfg(%struct.I2S_GBL_CFG* noundef readonly %0) local_unnamed_addr #3 !dbg !2257 {
  call void @llvm.dbg.value(metadata %struct.I2S_GBL_CFG* %0, metadata !2277, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()), !dbg !2279
  %2 = icmp eq %struct.I2S_GBL_CFG* %0, null, !dbg !2280
  br i1 %2, label %3, label %6, !dbg !2282

3:                                                ; preds = %1
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.6, i32 0, i32 0), i32 noundef 281) #18, !dbg !2283
  br label %5, !dbg !2283

5:                                                ; preds = %5, %3
  br label %5, !dbg !2283, !llvm.loop !2285

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 11, !dbg !2286
  %8 = load i8, i8* %7, align 1, !dbg !2286
  %9 = icmp eq i8 %8, 1, !dbg !2288
  %10 = select i1 %9, i32 32, i32 0, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %10, metadata !2278, metadata !DIExpression()), !dbg !2279
  %11 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 10, !dbg !2290
  %12 = load i8, i8* %11, align 1, !dbg !2290
  %13 = icmp eq i8 %12, 1, !dbg !2292
  %14 = or i32 %10, 64, !dbg !2293
  %15 = select i1 %13, i32 %14, i32 %10, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %15, metadata !2278, metadata !DIExpression()), !dbg !2279
  %16 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 9, !dbg !2294
  %17 = load i8, i8* %16, align 1, !dbg !2294
  %18 = icmp eq i8 %17, 1, !dbg !2296
  %19 = or i32 %15, 128, !dbg !2297
  %20 = select i1 %18, i32 %19, i32 %15, !dbg !2297
  call void @llvm.dbg.value(metadata i32 %20, metadata !2278, metadata !DIExpression()), !dbg !2279
  %21 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 8, !dbg !2298
  %22 = load i8, i8* %21, align 1, !dbg !2298
  %23 = icmp eq i8 %22, 1, !dbg !2300
  %24 = or i32 %20, 256, !dbg !2301
  %25 = select i1 %23, i32 %24, i32 %20, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %25, metadata !2278, metadata !DIExpression()), !dbg !2279
  %26 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 5, !dbg !2302
  %27 = load i8, i8* %26, align 1, !dbg !2302
  %28 = icmp eq i8 %27, 1, !dbg !2304
  %29 = or i32 %25, 512, !dbg !2305
  %30 = select i1 %28, i32 %29, i32 %25, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %30, metadata !2278, metadata !DIExpression()), !dbg !2279
  %31 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 6, !dbg !2306
  %32 = load i8, i8* %31, align 1, !dbg !2306
  %33 = icmp eq i8 %32, 1, !dbg !2308
  %34 = or i32 %30, 131072, !dbg !2309
  %35 = select i1 %33, i32 %34, i32 %30, !dbg !2309
  call void @llvm.dbg.value(metadata i32 %35, metadata !2278, metadata !DIExpression()), !dbg !2279
  %36 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 7, !dbg !2310
  %37 = load i8, i8* %36, align 1, !dbg !2310
  %38 = icmp eq i8 %37, 1, !dbg !2312
  %39 = or i32 %35, 262144, !dbg !2313
  %40 = select i1 %38, i32 %39, i32 %35, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %40, metadata !2278, metadata !DIExpression()), !dbg !2279
  %41 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 3, !dbg !2314
  %42 = load i8, i8* %41, align 1, !dbg !2314
  %43 = icmp eq i8 %42, 1, !dbg !2316
  %44 = or i32 %40, 524288, !dbg !2317
  %45 = select i1 %43, i32 %44, i32 %40, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %45, metadata !2278, metadata !DIExpression()), !dbg !2279
  %46 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 4, !dbg !2318
  %47 = load i8, i8* %46, align 1, !dbg !2318
  %48 = icmp eq i8 %47, 1, !dbg !2320
  %49 = or i32 %45, 1048576, !dbg !2321
  %50 = select i1 %48, i32 %49, i32 %45, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %50, metadata !2278, metadata !DIExpression()), !dbg !2279
  %51 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 0, !dbg !2322
  %52 = load i8, i8* %51, align 1, !dbg !2322
  %53 = icmp eq i8 %52, 1, !dbg !2324
  %54 = or i32 %50, -2147483648, !dbg !2325
  %55 = select i1 %53, i32 %54, i32 %50, !dbg !2325
  call void @llvm.dbg.value(metadata i32 %55, metadata !2278, metadata !DIExpression()), !dbg !2279
  %56 = and i32 %55, -50331649, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %55, metadata !2278, metadata !DIExpression(DW_OP_constu, 18446744073659219967, DW_OP_and, DW_OP_stack_value)), !dbg !2279
  %57 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 1, !dbg !2327
  %58 = load i8, i8* %57, align 1, !dbg !2327
  switch i8 %58, label %65 [
    i8 3, label %63
    i8 1, label %59
    i8 2, label %61
  ], !dbg !2328

59:                                               ; preds = %6
  %60 = or i32 %56, 16777216, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %60, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %65, !dbg !2331

61:                                               ; preds = %6
  %62 = or i32 %56, 33554432, !dbg !2332
  call void @llvm.dbg.value(metadata i32 %62, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %65, !dbg !2333

63:                                               ; preds = %6
  %64 = or i32 %55, 50331648, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %64, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %65, !dbg !2335

65:                                               ; preds = %6, %63, %61, %59
  %66 = phi i32 [ %56, %6 ], [ %62, %61 ], [ %60, %59 ], [ %64, %63 ], !dbg !2279
  call void @llvm.dbg.value(metadata i32 %66, metadata !2278, metadata !DIExpression()), !dbg !2279
  %67 = and i32 %66, -201326593, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %66, metadata !2278, metadata !DIExpression(DW_OP_constu, 18446744073508225023, DW_OP_and, DW_OP_stack_value)), !dbg !2279
  %68 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %0, i32 0, i32 2, !dbg !2337
  %69 = load i8, i8* %68, align 1, !dbg !2337
  switch i8 %69, label %76 [
    i8 3, label %74
    i8 1, label %70
    i8 2, label %72
  ], !dbg !2338

70:                                               ; preds = %65
  %71 = or i32 %67, 67108864, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %71, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %76, !dbg !2341

72:                                               ; preds = %65
  %73 = or i32 %67, 134217728, !dbg !2342
  call void @llvm.dbg.value(metadata i32 %73, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %76, !dbg !2343

74:                                               ; preds = %65
  %75 = or i32 %66, 201326592, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %75, metadata !2278, metadata !DIExpression()), !dbg !2279
  br label %76, !dbg !2345

76:                                               ; preds = %65, %74, %72, %70
  %77 = phi i32 [ %67, %65 ], [ %73, %72 ], [ %71, %70 ], [ %75, %74 ], !dbg !2279
  call void @llvm.dbg.value(metadata i32 %77, metadata !2278, metadata !DIExpression()), !dbg !2279
  store volatile i32 %77, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2346
  ret i8 1, !dbg !2347
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sSetDlCfg(%struct.I2S_DL_CFG* noundef readonly %0) local_unnamed_addr #3 !dbg !2348 {
  call void @llvm.dbg.value(metadata %struct.I2S_DL_CFG* %0, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()), !dbg !2365
  %2 = icmp eq %struct.I2S_DL_CFG* %0, null, !dbg !2366
  br i1 %2, label %3, label %6, !dbg !2368

3:                                                ; preds = %1
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.6, i32 0, i32 0), i32 noundef 382) #18, !dbg !2369
  br label %5, !dbg !2369

5:                                                ; preds = %5, %3
  br label %5, !dbg !2369, !llvm.loop !2371

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 6, !dbg !2372
  %8 = load i8, i8* %7, align 4, !dbg !2372
  %9 = icmp eq i8 %8, 1, !dbg !2374
  %10 = select i1 %9, i32 4, i32 0, !dbg !2375
  call void @llvm.dbg.value(metadata i32 %10, metadata !2364, metadata !DIExpression()), !dbg !2365
  %11 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 5, !dbg !2376
  %12 = load i8, i8* %11, align 1, !dbg !2376
  %13 = icmp eq i8 %12, 1, !dbg !2378
  %14 = or i32 %10, 8, !dbg !2379
  %15 = select i1 %13, i32 %14, i32 %10, !dbg !2379
  call void @llvm.dbg.value(metadata i32 %15, metadata !2364, metadata !DIExpression()), !dbg !2365
  %16 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 4, !dbg !2380
  %17 = load i8, i8* %16, align 2, !dbg !2380
  %18 = icmp eq i8 %17, 1, !dbg !2382
  %19 = or i32 %15, 32, !dbg !2383
  %20 = select i1 %18, i32 %19, i32 %15, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %20, metadata !2364, metadata !DIExpression()), !dbg !2365
  %21 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 1, !dbg !2384
  %22 = load i32, i32* %21, align 4, !dbg !2384
  %23 = shl i32 %22, 17, !dbg !2385
  %24 = and i32 %23, 16646144, !dbg !2386
  call void @llvm.dbg.value(metadata !DIArgList(i32 %20, i32 %24), metadata !2364, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2365
  %25 = or i32 %20, %24, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %25, metadata !2364, metadata !DIExpression()), !dbg !2365
  %26 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 3, !dbg !2388
  %27 = load i8, i8* %26, align 1, !dbg !2388
  switch i8 %27, label %38 [
    i8 10, label %36
    i8 2, label %28
    i8 4, label %30
    i8 6, label %32
    i8 8, label %34
  ], !dbg !2389

28:                                               ; preds = %6
  %29 = or i32 %25, 512, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %29, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %38, !dbg !2392

30:                                               ; preds = %6
  %31 = or i32 %25, 1024, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %31, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %38, !dbg !2394

32:                                               ; preds = %6
  %33 = or i32 %25, 1536, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %33, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %38, !dbg !2396

34:                                               ; preds = %6
  %35 = or i32 %25, 2048, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %35, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %38, !dbg !2398

36:                                               ; preds = %6
  %37 = or i32 %25, 2560, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %37, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %38, !dbg !2400

38:                                               ; preds = %6, %36, %34, %32, %30, %28
  %39 = phi i32 [ %25, %6 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %37, %36 ], !dbg !2365
  call void @llvm.dbg.value(metadata i32 %39, metadata !2364, metadata !DIExpression()), !dbg !2365
  %40 = and i32 %39, -24577, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %40, metadata !2364, metadata !DIExpression()), !dbg !2365
  %41 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 2, !dbg !2402
  %42 = load i8, i8* %41, align 4, !dbg !2402
  switch i8 %42, label %47 [
    i8 2, label %45
    i8 1, label %43
  ], !dbg !2403

43:                                               ; preds = %38
  %44 = or i32 %40, 8192, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %44, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %47, !dbg !2406

45:                                               ; preds = %38
  %46 = or i32 %40, 16384, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %46, metadata !2364, metadata !DIExpression()), !dbg !2365
  br label %47, !dbg !2408

47:                                               ; preds = %38, %45, %43
  %48 = phi i32 [ %40, %38 ], [ %44, %43 ], [ %46, %45 ], !dbg !2365
  call void @llvm.dbg.value(metadata i32 %48, metadata !2364, metadata !DIExpression()), !dbg !2365
  %49 = and i32 %48, -1610612737, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %49, metadata !2364, metadata !DIExpression()), !dbg !2365
  %50 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %0, i32 0, i32 0, !dbg !2410
  %51 = load i8, i8* %50, align 4, !dbg !2410
  %52 = icmp eq i8 %51, 1, !dbg !2411
  %53 = or i32 %49, 536870912
  %54 = select i1 %52, i32 %53, i32 %49, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %54, metadata !2364, metadata !DIExpression()), !dbg !2365
  %55 = or i32 %54, 32768, !dbg !2412
  store volatile i32 %55, i32* inttoptr (i32 -2096431100 to i32*), align 4, !dbg !2413
  ret i8 1, !dbg !2414
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sSetUlCfg(%struct.I2S_UL_CFG* noundef readonly %0) local_unnamed_addr #3 !dbg !2415 {
  call void @llvm.dbg.value(metadata %struct.I2S_UL_CFG* %0, metadata !2433, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()), !dbg !2435
  %2 = icmp eq %struct.I2S_UL_CFG* %0, null, !dbg !2436
  br i1 %2, label %3, label %6, !dbg !2438

3:                                                ; preds = %1
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.6, i32 0, i32 0), i32 noundef 469) #18, !dbg !2439
  br label %5, !dbg !2439

5:                                                ; preds = %5, %3
  br label %5, !dbg !2439, !llvm.loop !2441

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 9, !dbg !2442
  %8 = load i8, i8* %7, align 1, !dbg !2442
  %9 = icmp eq i8 %8, 1, !dbg !2444
  %10 = select i1 %9, i32 4, i32 0, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %10, metadata !2434, metadata !DIExpression()), !dbg !2435
  %11 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 8, !dbg !2446
  %12 = load i8, i8* %11, align 4, !dbg !2446
  %13 = icmp eq i8 %12, 1, !dbg !2448
  %14 = or i32 %10, 8, !dbg !2449
  %15 = select i1 %13, i32 %14, i32 %10, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %15, metadata !2434, metadata !DIExpression()), !dbg !2435
  %16 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 7, !dbg !2450
  %17 = load i8, i8* %16, align 1, !dbg !2450
  %18 = icmp eq i8 %17, 1, !dbg !2452
  %19 = or i32 %15, 32, !dbg !2453
  %20 = select i1 %18, i32 %19, i32 %15, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %20, metadata !2434, metadata !DIExpression()), !dbg !2435
  %21 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 4, !dbg !2454
  %22 = load i8, i8* %21, align 4, !dbg !2454
  %23 = icmp eq i8 %22, 1, !dbg !2456
  %24 = or i32 %20, 65536, !dbg !2457
  %25 = select i1 %23, i32 %24, i32 %20, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %25, metadata !2434, metadata !DIExpression()), !dbg !2435
  %26 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 0, !dbg !2458
  %27 = load i8, i8* %26, align 4, !dbg !2458
  %28 = icmp eq i8 %27, 1, !dbg !2460
  %29 = or i32 %25, -2147483648, !dbg !2461
  %30 = select i1 %28, i32 %29, i32 %25, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %30, metadata !2434, metadata !DIExpression()), !dbg !2435
  %31 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 3, !dbg !2462
  %32 = load i32, i32* %31, align 4, !dbg !2462
  %33 = shl i32 %32, 17, !dbg !2463
  %34 = and i32 %33, 16646144, !dbg !2464
  call void @llvm.dbg.value(metadata !DIArgList(i32 %30, i32 %34), metadata !2434, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2435
  %35 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 2, !dbg !2465
  %36 = load i32, i32* %35, align 4, !dbg !2465
  %37 = shl i32 %36, 24, !dbg !2466
  %38 = and i32 %37, 520093696, !dbg !2467
  call void @llvm.dbg.value(metadata !DIArgList(i32 %30, i32 %38, i32 %34), metadata !2434, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2435
  %39 = and i32 %30, -3841, !dbg !2468
  %40 = or i32 %38, %34, !dbg !2468
  %41 = or i32 %40, %39, !dbg !2468
  call void @llvm.dbg.value(metadata i32 %41, metadata !2434, metadata !DIExpression()), !dbg !2435
  %42 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 6, !dbg !2469
  %43 = load i8, i8* %42, align 2, !dbg !2469
  switch i8 %43, label %54 [
    i8 10, label %52
    i8 2, label %44
    i8 4, label %46
    i8 6, label %48
    i8 8, label %50
  ], !dbg !2470

44:                                               ; preds = %6
  %45 = or i32 %41, 512, !dbg !2471
  call void @llvm.dbg.value(metadata i32 %45, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %54, !dbg !2473

46:                                               ; preds = %6
  %47 = or i32 %41, 1024, !dbg !2474
  call void @llvm.dbg.value(metadata i32 %47, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %54, !dbg !2475

48:                                               ; preds = %6
  %49 = or i32 %41, 1536, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %49, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %54, !dbg !2477

50:                                               ; preds = %6
  %51 = or i32 %41, 2048, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %51, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %54, !dbg !2479

52:                                               ; preds = %6
  %53 = or i32 %41, 2560, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %53, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %54, !dbg !2481

54:                                               ; preds = %6, %52, %50, %48, %46, %44
  %55 = phi i32 [ %41, %6 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %53, %52 ], !dbg !2435
  call void @llvm.dbg.value(metadata i32 %55, metadata !2434, metadata !DIExpression()), !dbg !2435
  %56 = and i32 %55, -24577, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %56, metadata !2434, metadata !DIExpression()), !dbg !2435
  %57 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 5, !dbg !2483
  %58 = load i8, i8* %57, align 1, !dbg !2483
  switch i8 %58, label %63 [
    i8 2, label %61
    i8 1, label %59
  ], !dbg !2484

59:                                               ; preds = %54
  %60 = or i32 %56, 8192, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %60, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %63, !dbg !2487

61:                                               ; preds = %54
  %62 = or i32 %56, 16384, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %62, metadata !2434, metadata !DIExpression()), !dbg !2435
  br label %63, !dbg !2489

63:                                               ; preds = %54, %61, %59
  %64 = phi i32 [ %56, %54 ], [ %60, %59 ], [ %62, %61 ], !dbg !2435
  call void @llvm.dbg.value(metadata i32 %64, metadata !2434, metadata !DIExpression()), !dbg !2435
  %65 = and i32 %64, -1610612737, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %65, metadata !2434, metadata !DIExpression()), !dbg !2435
  %66 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %0, i32 0, i32 1, !dbg !2491
  %67 = load i8, i8* %66, align 1, !dbg !2491
  %68 = icmp eq i8 %67, 1, !dbg !2492
  %69 = or i32 %65, 536870912
  %70 = select i1 %68, i32 %69, i32 %65, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %70, metadata !2434, metadata !DIExpression()), !dbg !2435
  %71 = or i32 %70, 32768, !dbg !2493
  store volatile i32 %71, i32* inttoptr (i32 -2096431096 to i32*), align 8, !dbg !2494
  ret i8 1, !dbg !2495
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sClkFifoEn(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !2496 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2498, metadata !DIExpression()), !dbg !2499
  %2 = icmp eq i8 %0, 1, !dbg !2500
  %3 = load volatile i32, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2502
  br i1 %2, label %4, label %6, !dbg !2503

4:                                                ; preds = %1
  %5 = or i32 %3, 1, !dbg !2504
  br label %14, !dbg !2506

6:                                                ; preds = %1
  %7 = and i32 %3, -2, !dbg !2507
  store volatile i32 %7, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2507
  %8 = load volatile i32, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2509
  %9 = and i32 %8, -5, !dbg !2509
  store volatile i32 %9, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2509
  %10 = load volatile i32, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2510
  %11 = and i32 %10, -3, !dbg !2510
  store volatile i32 %11, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2510
  %12 = load volatile i32, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2511
  %13 = and i32 %12, -9, !dbg !2511
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i32 [ %13, %6 ], [ %5, %4 ]
  store volatile i32 %15, i32* inttoptr (i32 -2096431104 to i32*), align 65536, !dbg !2502
  ret i8 1, !dbg !2512
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sDlEn(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !2513 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2515, metadata !DIExpression()), !dbg !2516
  %2 = icmp eq i8 %0, 1, !dbg !2517
  %3 = load volatile i32, i32* inttoptr (i32 -2096431100 to i32*), align 4, !dbg !2519
  %4 = and i32 %3, -2, !dbg !2520
  %5 = zext i1 %2 to i32, !dbg !2520
  %6 = or i32 %4, %5, !dbg !2520
  store volatile i32 %6, i32* inttoptr (i32 -2096431100 to i32*), align 4, !dbg !2519
  ret i8 1, !dbg !2521
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sUlEn(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !2522 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2524, metadata !DIExpression()), !dbg !2525
  %2 = icmp eq i8 %0, 1, !dbg !2526
  %3 = load volatile i32, i32* inttoptr (i32 -2096431096 to i32*), align 8, !dbg !2528
  %4 = and i32 %3, -2, !dbg !2529
  %5 = zext i1 %2 to i32, !dbg !2529
  %6 = or i32 %4, %5, !dbg !2529
  store volatile i32 %6, i32* inttoptr (i32 -2096431096 to i32*), align 8, !dbg !2528
  ret i8 1, !dbg !2530
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @I2sReset() local_unnamed_addr #1 !dbg !2531 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096431092 to i32*), align 4, !dbg !2532
  %2 = or i32 %1, 1, !dbg !2532
  store volatile i32 %2, i32* inttoptr (i32 -2096431092 to i32*), align 4, !dbg !2532
  %3 = load volatile i32, i32* inttoptr (i32 -2096431092 to i32*), align 4, !dbg !2533
  %4 = and i32 %3, -2, !dbg !2533
  store volatile i32 %4, i32* inttoptr (i32 -2096431092 to i32*), align 4, !dbg !2533
  ret i8 1, !dbg !2534
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @I2sCfgInitialSetting(i32 noundef %0, %struct.I2S_GBL_CFG* noundef writeonly %1, %struct.I2S_DL_CFG* noundef writeonly %2, %struct.I2S_UL_CFG* noundef writeonly %3) local_unnamed_addr #3 !dbg !2535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata %struct.I2S_GBL_CFG* %1, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata %struct.I2S_DL_CFG* %2, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata %struct.I2S_UL_CFG* %3, metadata !2542, metadata !DIExpression()), !dbg !2543
  %5 = icmp eq %struct.I2S_GBL_CFG* %1, null, !dbg !2544
  br i1 %5, label %6, label %9, !dbg !2546

6:                                                ; preds = %4
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.6, i32 0, i32 0), i32 noundef 641) #18, !dbg !2547
  br label %8, !dbg !2547

8:                                                ; preds = %6, %8
  br label %8, !dbg !2547, !llvm.loop !2549

9:                                                ; preds = %4
  %10 = icmp eq %struct.I2S_DL_CFG* %2, null, !dbg !2550
  br i1 %10, label %11, label %14, !dbg !2552

11:                                               ; preds = %9
  %12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.6, i32 0, i32 0), i32 noundef 642) #18, !dbg !2553
  br label %13, !dbg !2553

13:                                               ; preds = %11, %13
  br label %13, !dbg !2553, !llvm.loop !2555

14:                                               ; preds = %9
  %15 = icmp eq %struct.I2S_UL_CFG* %3, null, !dbg !2556
  br i1 %15, label %16, label %19, !dbg !2558

16:                                               ; preds = %14
  %17 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.6, i32 0, i32 0), i32 noundef 643) #18, !dbg !2559
  br label %18, !dbg !2559

18:                                               ; preds = %16, %18
  br label %18, !dbg !2559, !llvm.loop !2561

19:                                               ; preds = %14
  switch i32 %0, label %49 [
    i32 0, label %21
    i32 2, label %20
  ], !dbg !2562

20:                                               ; preds = %19
  br label %21, !dbg !2563

21:                                               ; preds = %19, %20
  %22 = phi i8 [ 0, %20 ], [ 1, %19 ]
  %23 = phi i8 [ 3, %20 ], [ 0, %19 ]
  %24 = phi i8 [ 1, %20 ], [ 0, %19 ]
  %25 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 0, !dbg !2565
  store i8 %22, i8* %25, align 1, !dbg !2565
  %26 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 1, !dbg !2565
  store i8 %23, i8* %26, align 1, !dbg !2565
  %27 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 2, !dbg !2565
  store i8 %23, i8* %27, align 1, !dbg !2565
  %28 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 3, !dbg !2565
  store i8 %24, i8* %28, align 1, !dbg !2565
  %29 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 4, !dbg !2565
  store i8 %24, i8* %29, align 1, !dbg !2565
  %30 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 6, !dbg !2565
  store i8 0, i8* %30, align 1, !dbg !2565
  %31 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 7, !dbg !2565
  store i8 0, i8* %31, align 1, !dbg !2565
  %32 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 9, !dbg !2565
  store i8 0, i8* %32, align 1, !dbg !2565
  %33 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 10, !dbg !2565
  store i8 0, i8* %33, align 1, !dbg !2565
  %34 = getelementptr inbounds %struct.I2S_GBL_CFG, %struct.I2S_GBL_CFG* %1, i32 0, i32 11, !dbg !2565
  store i8 %24, i8* %34, align 1, !dbg !2565
  %35 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %2, i32 0, i32 0, !dbg !2565
  store i8 0, i8* %35, align 4, !dbg !2565
  %36 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %2, i32 0, i32 1, !dbg !2565
  store i32 0, i32* %36, align 4, !dbg !2565
  %37 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %2, i32 0, i32 2, !dbg !2565
  store i8 0, i8* %37, align 4, !dbg !2565
  %38 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %2, i32 0, i32 4, !dbg !2565
  store i8 0, i8* %38, align 2, !dbg !2565
  %39 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %2, i32 0, i32 5, !dbg !2565
  store i8 1, i8* %39, align 1, !dbg !2565
  %40 = getelementptr inbounds %struct.I2S_DL_CFG, %struct.I2S_DL_CFG* %2, i32 0, i32 6, !dbg !2565
  store i8 %24, i8* %40, align 4, !dbg !2565
  %41 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 0, !dbg !2565
  store i8 0, i8* %41, align 4, !dbg !2565
  %42 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 1, !dbg !2565
  store i8 0, i8* %42, align 1, !dbg !2565
  %43 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 2, !dbg !2565
  store i32 8, i32* %43, align 4, !dbg !2565
  %44 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 3, !dbg !2565
  store i32 0, i32* %44, align 4, !dbg !2565
  %45 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 5, !dbg !2565
  store i8 0, i8* %45, align 1, !dbg !2565
  %46 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 7, !dbg !2565
  store i8 0, i8* %46, align 1, !dbg !2565
  %47 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 8, !dbg !2565
  store i8 1, i8* %47, align 4, !dbg !2565
  %48 = getelementptr inbounds %struct.I2S_UL_CFG, %struct.I2S_UL_CFG* %3, i32 0, i32 9, !dbg !2565
  store i8 %24, i8* %48, align 1, !dbg !2565
  br label %49, !dbg !2566

49:                                               ; preds = %21, %19
  %50 = phi i8 [ 0, %19 ], [ 1, %21 ], !dbg !2543
  ret i8 %50, !dbg !2566
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @xpllMicroDelay(i32 noundef %0) local_unnamed_addr #7 !dbg !2567 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2573
  %3 = bitcast i32* %2 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2574
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2572, metadata !DIExpression()), !dbg !2575
  %4 = mul i32 %0, 5, !dbg !2576
  store volatile i32 %4, i32* %2, align 4, !dbg !2577
  br label %5, !dbg !2578

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !2579
  %7 = add i32 %6, -1, !dbg !2579
  store volatile i32 %7, i32* %2, align 4, !dbg !2579
  %8 = icmp eq i32 %6, 0, !dbg !2578
  br i1 %8, label %9, label %5, !dbg !2578, !llvm.loop !2580

9:                                                ; preds = %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2582
  ret void, !dbg !2582
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @xpllOpen() local_unnamed_addr #3 !dbg !2583 {
  store i32 251658240, i32* getelementptr inbounds (%struct._XPLL_INFO, %struct._XPLL_INFO* @XpllInfo, i32 0, i32 0), align 4, !dbg !2587
  %1 = load volatile i32, i32* inttoptr (i32 -2130571224 to i32*), align 8, !dbg !2588
  %2 = or i32 %1, 6291456, !dbg !2588
  store volatile i32 %2, i32* inttoptr (i32 -2130571224 to i32*), align 8, !dbg !2588
  %3 = tail call i32 @top_xtal_freq_get() #18, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %3, metadata !2586, metadata !DIExpression()), !dbg !2590
  switch i32 %3, label %27 [
    i32 26000000, label %4
    i32 40000000, label %26
  ], !dbg !2591

4:                                                ; preds = %0
  store volatile i32 29727, i32* inttoptr (i32 -2130570624 to i32*), align 128, !dbg !2592
  store volatile i32 55393, i32* inttoptr (i32 -2130570620 to i32*), align 4, !dbg !2595
  store volatile i32 29442, i32* inttoptr (i32 -2130570616 to i32*), align 8, !dbg !2596
  store volatile i32 503316480, i32* inttoptr (i32 -2130570612 to i32*), align 4, !dbg !2597
  store volatile i32 258048, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2598
  tail call void @xpllMicroDelay(i32 noundef 10) #16, !dbg !2599
  %5 = load volatile i32, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2600
  %6 = and i32 %5, -65537, !dbg !2600
  store volatile i32 %6, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2600
  %7 = load volatile i32, i32* inttoptr (i32 -2130570624 to i32*), align 128, !dbg !2601
  %8 = and i32 %7, -2, !dbg !2601
  store volatile i32 %8, i32* inttoptr (i32 -2130570624 to i32*), align 128, !dbg !2601
  %9 = load volatile i32, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2602
  %10 = or i32 %9, 8, !dbg !2602
  store volatile i32 %10, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2602
  br label %11, !dbg !2603

11:                                               ; preds = %11, %4
  %12 = load volatile i32, i32* inttoptr (i32 -2130570608 to i32*), align 16, !dbg !2604
  %13 = and i32 %12, 2, !dbg !2605
  %14 = icmp eq i32 %13, 0, !dbg !2606
  br i1 %14, label %11, label %15, !dbg !2603, !llvm.loop !2607

15:                                               ; preds = %11
  tail call void @xpllMicroDelay(i32 noundef 20) #16, !dbg !2609
  %16 = load volatile i32, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2610
  %17 = or i32 %16, 16, !dbg !2610
  store volatile i32 %17, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2610
  %18 = load volatile i32, i32* inttoptr (i32 -2130570612 to i32*), align 4, !dbg !2611
  %19 = or i32 %18, 1, !dbg !2611
  store volatile i32 %19, i32* inttoptr (i32 -2130570612 to i32*), align 4, !dbg !2611
  %20 = load volatile i32, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2612
  %21 = or i32 %20, 32, !dbg !2612
  store volatile i32 %21, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2612
  %22 = load volatile i32, i32* inttoptr (i32 -2130570616 to i32*), align 8, !dbg !2613
  %23 = or i32 %22, 32768, !dbg !2613
  store volatile i32 %23, i32* inttoptr (i32 -2130570616 to i32*), align 8, !dbg !2613
  %24 = load volatile i32, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2614
  %25 = and i32 %24, -131073, !dbg !2614
  store volatile i32 %25, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2614
  br label %27, !dbg !2615

26:                                               ; preds = %0
  store volatile i32 29715, i32* inttoptr (i32 -2130570624 to i32*), align 128, !dbg !2616
  store volatile i32 14533, i32* inttoptr (i32 -2130570620 to i32*), align 4, !dbg !2619
  store volatile i32 29443, i32* inttoptr (i32 -2130570616 to i32*), align 8, !dbg !2620
  store volatile i32 315359232, i32* inttoptr (i32 -2130570612 to i32*), align 4, !dbg !2621
  store volatile i32 261120, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2622
  tail call void @xpllMicroDelay(i32 noundef 10) #16, !dbg !2623
  store volatile i32 195584, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2624
  tail call void @xpllMicroDelay(i32 noundef 10) #16, !dbg !2625
  store volatile i32 29714, i32* inttoptr (i32 -2130570624 to i32*), align 128, !dbg !2626
  store volatile i32 195592, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2627
  tail call void @xpllMicroDelay(i32 noundef 300) #16, !dbg !2628
  store volatile i32 195608, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2629
  tail call void @xpllMicroDelay(i32 noundef 10) #16, !dbg !2630
  store volatile i32 315359233, i32* inttoptr (i32 -2130570612 to i32*), align 4, !dbg !2631
  tail call void @xpllMicroDelay(i32 noundef 10) #16, !dbg !2632
  store volatile i32 195640, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2633
  tail call void @xpllMicroDelay(i32 noundef 10) #16, !dbg !2634
  store volatile i32 62211, i32* inttoptr (i32 -2130570616 to i32*), align 8, !dbg !2635
  store volatile i32 64568, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2636
  store volatile i32 64696, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2637
  tail call void @xpllMicroDelay(i32 noundef 200) #16, !dbg !2638
  br label %27, !dbg !2639

27:                                               ; preds = %0, %26, %15
  tail call void @xpllMicroDelay(i32 noundef 20) #16, !dbg !2640
  %28 = load volatile i32, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %28, metadata !2585, metadata !DIExpression()), !dbg !2590
  %29 = and i32 %28, 150994943, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %29, metadata !2585, metadata !DIExpression()), !dbg !2590
  %30 = or i32 %29, -1006632960, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %30, metadata !2585, metadata !DIExpression()), !dbg !2590
  store volatile i32 %30, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !2644
  tail call void @xpllMicroDelay(i32 noundef 300) #16, !dbg !2645
  store volatile i32 0, i32* inttoptr (i32 -2096421596 to i32*), align 4, !dbg !2646
  store volatile i32 0, i32* inttoptr (i32 -2096421592 to i32*), align 8, !dbg !2647
  store volatile i32 0, i32* inttoptr (i32 -2096421588 to i32*), align 4, !dbg !2648
  tail call void @xpllMicroDelay(i32 noundef 30000) #16, !dbg !2649
  ret void, !dbg !2650
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @xpllClose() local_unnamed_addr #1 !dbg !2651 {
  store volatile i32 1, i32* inttoptr (i32 -2096421588 to i32*), align 4, !dbg !2652
  %1 = load volatile i32, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !2653
  %2 = and i32 %1, 2147483647, !dbg !2653
  store volatile i32 %2, i32* inttoptr (i32 -2130570184 to i32*), align 8, !dbg !2653
  store volatile i32 61488, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2654
  store volatile i32 29727, i32* inttoptr (i32 -2130570624 to i32*), align 128, !dbg !2655
  store volatile i32 127024, i32* inttoptr (i32 -2130570592 to i32*), align 32, !dbg !2656
  %3 = load volatile i32, i32* inttoptr (i32 -2130571224 to i32*), align 8, !dbg !2657
  %4 = and i32 %3, -6291457, !dbg !2657
  store volatile i32 %4, i32* inttoptr (i32 -2130571224 to i32*), align 8, !dbg !2657
  %5 = load volatile i32, i32* inttoptr (i32 -2130571224 to i32*), align 8, !dbg !2658
  %6 = or i32 %5, 4194304, !dbg !2658
  store volatile i32 %6, i32* inttoptr (i32 -2130571224 to i32*), align 8, !dbg !2658
  ret void, !dbg !2659
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2665, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8 %1, metadata !2666, metadata !DIExpression()), !dbg !2669
  %3 = lshr i32 %0, 5, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %3, metadata !2667, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2669
  %4 = trunc i32 %0 to i16, !dbg !2671
  %5 = and i16 %4, 31, !dbg !2671
  call void @llvm.dbg.value(metadata i16 %4, metadata !2668, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2669
  %6 = trunc i32 %3 to i16, !dbg !2672
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !2672

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !2673
  %9 = zext i16 %5 to i32, !dbg !2676
  %10 = icmp ult i16 %5, 27, !dbg !2676
  br i1 %8, label %11, label %46, !dbg !2677

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !2678

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !2680
  %14 = xor i32 %13, -1, !dbg !2683
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2684
  %16 = and i32 %15, %14, !dbg !2684
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2684
  br label %44, !dbg !2685

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !2686
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !2686

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2687
  %21 = and i32 %20, -3, !dbg !2687
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2687
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2690
  %23 = or i32 %22, 2048, !dbg !2690
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2690
  br label %44, !dbg !2691

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2692
  %26 = and i32 %25, -3, !dbg !2692
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2692
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2695
  %28 = or i32 %27, 2048, !dbg !2695
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2695
  br label %44, !dbg !2696

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2697
  %31 = and i32 %30, -3, !dbg !2697
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2697
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2700
  %33 = or i32 %32, 2048, !dbg !2700
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2700
  br label %44, !dbg !2701

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2702
  %36 = and i32 %35, -3, !dbg !2702
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2702
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2705
  %38 = or i32 %37, 2048, !dbg !2705
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2705
  br label %44, !dbg !2706

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2707
  %41 = and i32 %40, -3, !dbg !2707
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2707
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2710
  %43 = or i32 %42, 2048, !dbg !2710
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2710
  br label %44, !dbg !2711

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !2712
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !2712
  br label %97, !dbg !2713

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !2714

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !2716
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2719
  %50 = or i32 %49, %48, !dbg !2719
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2719
  br label %68, !dbg !2720

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !2721
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !2721

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2722
  %55 = or i32 %54, 2050, !dbg !2722
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2722
  br label %68, !dbg !2725

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2726
  %58 = or i32 %57, 2050, !dbg !2726
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2726
  br label %68, !dbg !2729

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2730
  %61 = or i32 %60, 2050, !dbg !2730
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2730
  br label %68, !dbg !2733

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2734
  %64 = or i32 %63, 2050, !dbg !2734
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2734
  br label %68, !dbg !2737

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2738
  %67 = or i32 %66, 2050, !dbg !2738
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2738
  br label %68, !dbg !2741

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !2742
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !2742
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !2743
  %72 = zext i16 %5 to i32, !dbg !2745
  %73 = icmp eq i16 %5, 0, !dbg !2745
  br i1 %71, label %74, label %87, !dbg !2746

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !2747

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !2749
  %77 = xor i32 %76, -1, !dbg !2752
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2753
  %79 = and i32 %78, %77, !dbg !2753
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2753
  br label %85, !dbg !2754

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2755
  %82 = and i32 %81, -3, !dbg !2755
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2755
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2757
  %84 = or i32 %83, 2048, !dbg !2757
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2757
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !2758
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !2758
  br label %97, !dbg !2759

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !2760

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !2762
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2765
  %91 = or i32 %90, %89, !dbg !2765
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2765
  br label %95, !dbg !2766

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2767
  %94 = or i32 %93, 2050, !dbg !2767
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2767
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !2769
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !2769
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !2669
  ret i32 %98, !dbg !2770
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8 %1, metadata !2774, metadata !DIExpression()), !dbg !2777
  %3 = lshr i32 %0, 5, !dbg !2778
  call void @llvm.dbg.value(metadata i32 %3, metadata !2775, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2777
  %4 = trunc i32 %0 to i16, !dbg !2779
  %5 = and i16 %4, 31, !dbg !2779
  call void @llvm.dbg.value(metadata i16 %5, metadata !2776, metadata !DIExpression()), !dbg !2777
  %6 = trunc i32 %3 to i16, !dbg !2780
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !2780

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !2781
  %9 = zext i16 %5 to i32, !dbg !2784
  %10 = shl nuw i32 1, %9, !dbg !2784
  br i1 %8, label %12, label %11, !dbg !2785

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !2786
  br label %19, !dbg !2788

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !2789
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !2791
  %15 = zext i16 %5 to i32, !dbg !2793
  %16 = shl nuw i32 1, %15, !dbg !2793
  br i1 %14, label %18, label %17, !dbg !2794

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !2795
  br label %19, !dbg !2797

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !2798
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !2777
  ret i32 %20, !dbg !2800
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #6 !dbg !2801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2805, metadata !DIExpression()), !dbg !2809
  %2 = lshr i32 %0, 5, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %2, metadata !2806, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2809
  %3 = and i32 %0, 31, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %0, metadata !2807, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2809
  call void @llvm.dbg.value(metadata i8 0, metadata !2808, metadata !DIExpression()), !dbg !2809
  %4 = trunc i32 %2 to i16, !dbg !2812
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2812

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2808, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2809
  br label %6, !dbg !2813

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2815
  %9 = lshr i32 %8, %3, !dbg !2815
  %10 = trunc i32 %9 to i8, !dbg !2815
  %11 = and i8 %10, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i8 %11, metadata !2808, metadata !DIExpression()), !dbg !2809
  br label %12, !dbg !2816

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2809
  ret i8 %13, !dbg !2817
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #6 !dbg !2818 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2824
  %2 = lshr i32 %0, 5, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %2, metadata !2821, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2824
  %3 = and i32 %0, 31, !dbg !2826
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2824
  call void @llvm.dbg.value(metadata i8 0, metadata !2823, metadata !DIExpression()), !dbg !2824
  %4 = trunc i32 %2 to i16, !dbg !2827
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2827

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2823, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2824
  br label %6, !dbg !2828

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !2830
  %9 = lshr i32 %8, %3, !dbg !2830
  %10 = trunc i32 %9 to i8, !dbg !2830
  %11 = and i8 %10, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i8 %11, metadata !2823, metadata !DIExpression()), !dbg !2824
  br label %12, !dbg !2831

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2824
  ret i8 %13, !dbg !2832
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #6 !dbg !2833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2835, metadata !DIExpression()), !dbg !2839
  %2 = lshr i32 %0, 5, !dbg !2840
  call void @llvm.dbg.value(metadata i32 %2, metadata !2836, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2839
  %3 = and i32 %0, 31, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2839
  call void @llvm.dbg.value(metadata i8 0, metadata !2838, metadata !DIExpression()), !dbg !2839
  %4 = trunc i32 %2 to i16, !dbg !2842
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2842

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2838, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2839
  br label %6, !dbg !2843

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2845
  %9 = lshr i32 %8, %3, !dbg !2845
  %10 = trunc i32 %9 to i8, !dbg !2845
  %11 = and i8 %10, 1, !dbg !2845
  call void @llvm.dbg.value(metadata i8 %11, metadata !2838, metadata !DIExpression()), !dbg !2839
  br label %12, !dbg !2846

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2839
  ret i8 %13, !dbg !2847
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2855
  %2 = lshr i32 %0, 5, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %2, metadata !2853, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2855
  %3 = trunc i32 %0 to i16, !dbg !2857
  %4 = and i16 %3, 31, !dbg !2857
  call void @llvm.dbg.value(metadata i16 %3, metadata !2854, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2855
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #16, !dbg !2858
  %6 = trunc i32 %2 to i16, !dbg !2859
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2859

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2860
  br i1 %8, label %9, label %12, !dbg !2863

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2864
  %11 = shl nuw nsw i32 1, %10, !dbg !2865
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !2865
  br label %49, !dbg !2867

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2868
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2868

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2869
  %16 = and i32 %15, -29, !dbg !2869
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2869
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2872
  %18 = or i32 %17, 2052, !dbg !2872
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2872
  br label %49, !dbg !2873

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2874
  %21 = and i32 %20, -29, !dbg !2874
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2874
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2877
  %23 = or i32 %22, 2052, !dbg !2877
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2877
  br label %49, !dbg !2878

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2879
  %26 = and i32 %25, -29, !dbg !2879
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2879
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2882
  %28 = or i32 %27, 2052, !dbg !2882
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2882
  br label %49, !dbg !2883

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2884
  %31 = and i32 %30, -29, !dbg !2884
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2884
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2887
  %33 = or i32 %32, 2052, !dbg !2887
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2887
  br label %49, !dbg !2888

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2889
  %36 = and i32 %35, -29, !dbg !2889
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2889
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2892
  %38 = or i32 %37, 2052, !dbg !2892
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2892
  br label %49, !dbg !2893

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2894
  br i1 %40, label %41, label %46, !dbg !2896

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2897
  %43 = and i32 %42, -29, !dbg !2897
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2897
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2899
  %45 = or i32 %44, 2052, !dbg !2899
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2899
  br label %49, !dbg !2900

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2901
  %48 = shl nuw i32 1, %47, !dbg !2901
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !2901
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2855
  ret i32 %50, !dbg !2903
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2906, metadata !DIExpression()), !dbg !2909
  %2 = lshr i32 %0, 5, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %2, metadata !2907, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2909
  %3 = trunc i32 %0 to i16, !dbg !2911
  %4 = and i16 %3, 31, !dbg !2911
  call void @llvm.dbg.value(metadata i16 %3, metadata !2908, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2909
  %5 = trunc i32 %2 to i16, !dbg !2912
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2912

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2913
  br i1 %7, label %8, label %11, !dbg !2916

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2917
  %10 = shl nuw nsw i32 1, %9, !dbg !2918
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !2918
  br label %48, !dbg !2920

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2921
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2921

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2922
  %15 = and i32 %14, -29, !dbg !2922
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2922
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2925
  %17 = or i32 %16, 2048, !dbg !2925
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2925
  br label %48, !dbg !2926

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2927
  %20 = and i32 %19, -29, !dbg !2927
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2927
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2930
  %22 = or i32 %21, 2048, !dbg !2930
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2930
  br label %48, !dbg !2931

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2932
  %25 = and i32 %24, -29, !dbg !2932
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2932
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2935
  %27 = or i32 %26, 2048, !dbg !2935
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2935
  br label %48, !dbg !2936

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2937
  %30 = and i32 %29, -29, !dbg !2937
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2937
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2940
  %32 = or i32 %31, 2048, !dbg !2940
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2940
  br label %48, !dbg !2941

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2942
  %35 = and i32 %34, -29, !dbg !2942
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2942
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2945
  %37 = or i32 %36, 2048, !dbg !2945
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2945
  br label %48, !dbg !2946

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2947
  br i1 %39, label %40, label %45, !dbg !2949

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2950
  %42 = and i32 %41, -29, !dbg !2950
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2950
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2952
  %44 = or i32 %43, 2048, !dbg !2952
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2952
  br label %48, !dbg !2953

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2954
  %47 = shl nuw i32 1, %46, !dbg !2954
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !2954
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2909
  ret i32 %49, !dbg !2956
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2959, metadata !DIExpression()), !dbg !2962
  %2 = lshr i32 %0, 5, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %2, metadata !2960, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2962
  %3 = trunc i32 %0 to i16, !dbg !2964
  %4 = and i16 %3, 31, !dbg !2964
  call void @llvm.dbg.value(metadata i16 %3, metadata !2961, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2962
  %5 = trunc i32 %2 to i16, !dbg !2965
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2965

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2966
  br i1 %7, label %8, label %11, !dbg !2969

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2970
  %10 = shl nuw nsw i32 1, %9, !dbg !2971
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !2971
  br label %48, !dbg !2973

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2974
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2974

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2975
  %15 = and i32 %14, -29, !dbg !2975
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2975
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2978
  %17 = or i32 %16, 2048, !dbg !2978
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2978
  br label %48, !dbg !2979

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2980
  %20 = and i32 %19, -29, !dbg !2980
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2980
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2983
  %22 = or i32 %21, 2048, !dbg !2983
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2983
  br label %48, !dbg !2984

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2985
  %25 = and i32 %24, -29, !dbg !2985
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2985
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2988
  %27 = or i32 %26, 2048, !dbg !2988
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2988
  br label %48, !dbg !2989

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2990
  %30 = and i32 %29, -29, !dbg !2990
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2990
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2993
  %32 = or i32 %31, 2048, !dbg !2993
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2993
  br label %48, !dbg !2994

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2995
  %35 = and i32 %34, -29, !dbg !2995
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2995
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2998
  %37 = or i32 %36, 2048, !dbg !2998
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2998
  br label %48, !dbg !2999

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !3000
  br i1 %39, label %40, label %45, !dbg !3002

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3003
  %42 = and i32 %41, -29, !dbg !3003
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3003
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3005
  %44 = or i32 %43, 2048, !dbg !3005
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3005
  br label %48, !dbg !3006

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !3007
  %47 = shl nuw i32 1, %46, !dbg !3007
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !3007
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2962
  ret i32 %49, !dbg !3009
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !3010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3012, metadata !DIExpression()), !dbg !3015
  %2 = lshr i32 %0, 5, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %2, metadata !3013, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3015
  %3 = trunc i32 %0 to i16, !dbg !3017
  %4 = and i16 %3, 31, !dbg !3017
  call void @llvm.dbg.value(metadata i16 %3, metadata !3014, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !3015
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #16, !dbg !3018
  %6 = trunc i32 %2 to i16, !dbg !3019
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !3019

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !3020
  br i1 %8, label %9, label %12, !dbg !3023

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !3024
  %11 = shl nuw nsw i32 1, %10, !dbg !3025
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !3025
  br label %49, !dbg !3027

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !3028
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !3028

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3029
  %16 = and i32 %15, -29, !dbg !3029
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3029
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3032
  %18 = or i32 %17, 2068, !dbg !3032
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3032
  br label %49, !dbg !3033

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3034
  %21 = and i32 %20, -29, !dbg !3034
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3034
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3037
  %23 = or i32 %22, 2068, !dbg !3037
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3037
  br label %49, !dbg !3038

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3039
  %26 = and i32 %25, -29, !dbg !3039
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3039
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3042
  %28 = or i32 %27, 2068, !dbg !3042
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3042
  br label %49, !dbg !3043

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3044
  %31 = and i32 %30, -29, !dbg !3044
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3044
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3047
  %33 = or i32 %32, 2068, !dbg !3047
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3047
  br label %49, !dbg !3048

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3049
  %36 = and i32 %35, -29, !dbg !3049
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3049
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3052
  %38 = or i32 %37, 2068, !dbg !3052
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3052
  br label %49, !dbg !3053

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !3054
  br i1 %40, label %41, label %46, !dbg !3056

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3057
  %43 = and i32 %42, -29, !dbg !3057
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3057
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3059
  %45 = or i32 %44, 2068, !dbg !3059
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3059
  br label %49, !dbg !3060

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !3061
  %48 = shl nuw i32 1, %47, !dbg !3061
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !3061
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !3015
  ret i32 %50, !dbg !3063
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !3064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8 %1, metadata !3067, metadata !DIExpression()), !dbg !3070
  %3 = lshr i32 %0, 4, !dbg !3071
  call void @llvm.dbg.value(metadata i32 %3, metadata !3068, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3070
  %4 = trunc i32 %0 to i16, !dbg !3072
  %5 = and i16 %4, 15, !dbg !3072
  call void @llvm.dbg.value(metadata i16 %4, metadata !3069, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !3070
  %6 = trunc i32 %3 to i16, !dbg !3073
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !3073

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !3074
  %9 = zext i16 %8 to i32, !dbg !3074
  %10 = shl nuw i32 3, %9, !dbg !3076
  %11 = xor i32 %10, -1, !dbg !3077
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !3078
  %13 = and i32 %12, %11, !dbg !3078
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !3078
  %14 = lshr i8 %1, 2, !dbg !3079
  %15 = zext i8 %14 to i32, !dbg !3079
  %16 = add nsw i32 %15, -1, !dbg !3080
  %17 = shl i32 %16, %9, !dbg !3081
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !3082
  %19 = or i32 %18, %17, !dbg !3082
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !3082
  br label %131, !dbg !3083

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !3084
  br i1 %21, label %22, label %35, !dbg !3086

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !3087
  %24 = zext i16 %23 to i32, !dbg !3087
  %25 = shl nuw nsw i32 3, %24, !dbg !3089
  %26 = xor i32 %25, -1, !dbg !3090
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !3091
  %28 = and i32 %27, %26, !dbg !3091
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !3091
  %29 = lshr i8 %1, 2, !dbg !3092
  %30 = zext i8 %29 to i32, !dbg !3092
  %31 = add nsw i32 %30, -1, !dbg !3093
  %32 = shl nsw i32 %31, %24, !dbg !3094
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !3095
  %34 = or i32 %33, %32, !dbg !3095
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !3095
  br label %131, !dbg !3096

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !3097
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !3097

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3098
  %39 = and i32 %38, -449, !dbg !3098
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3098
  %40 = lshr i8 %1, 1, !dbg !3101
  %41 = zext i8 %40 to i32, !dbg !3101
  %42 = shl nuw nsw i32 %41, 6, !dbg !3102
  %43 = add nsw i32 %42, -64, !dbg !3102
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3103
  %45 = or i32 %44, %43, !dbg !3103
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3103
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3104
  %47 = or i32 %46, 2048, !dbg !3104
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3104
  br label %131, !dbg !3105

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3106
  %50 = and i32 %49, -449, !dbg !3106
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3106
  %51 = lshr i8 %1, 1, !dbg !3109
  %52 = zext i8 %51 to i32, !dbg !3109
  %53 = shl nuw nsw i32 %52, 6, !dbg !3110
  %54 = add nsw i32 %53, -64, !dbg !3110
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3111
  %56 = or i32 %55, %54, !dbg !3111
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3111
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3112
  %58 = or i32 %57, 2048, !dbg !3112
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3112
  br label %131, !dbg !3113

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3114
  %61 = and i32 %60, -449, !dbg !3114
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3114
  %62 = lshr i8 %1, 1, !dbg !3117
  %63 = zext i8 %62 to i32, !dbg !3117
  %64 = shl nuw nsw i32 %63, 6, !dbg !3118
  %65 = add nsw i32 %64, -64, !dbg !3118
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3119
  %67 = or i32 %66, %65, !dbg !3119
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3119
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3120
  %69 = or i32 %68, 2048, !dbg !3120
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3120
  br label %131, !dbg !3121

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3122
  %72 = and i32 %71, -449, !dbg !3122
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3122
  %73 = lshr i8 %1, 1, !dbg !3125
  %74 = zext i8 %73 to i32, !dbg !3125
  %75 = shl nuw nsw i32 %74, 6, !dbg !3126
  %76 = add nsw i32 %75, -64, !dbg !3126
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3127
  %78 = or i32 %77, %76, !dbg !3127
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3127
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3128
  %80 = or i32 %79, 2048, !dbg !3128
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3128
  br label %131, !dbg !3129

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3130
  %83 = and i32 %82, -449, !dbg !3130
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3130
  %84 = lshr i8 %1, 1, !dbg !3133
  %85 = zext i8 %84 to i32, !dbg !3133
  %86 = shl nuw nsw i32 %85, 6, !dbg !3134
  %87 = add nsw i32 %86, -64, !dbg !3134
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3135
  %89 = or i32 %88, %87, !dbg !3135
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3135
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3136
  %91 = or i32 %90, 2048, !dbg !3136
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3136
  br label %131, !dbg !3137

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !3138
  br i1 %93, label %94, label %105, !dbg !3140

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3141
  %96 = and i32 %95, -449, !dbg !3141
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3141
  %97 = lshr i8 %1, 1, !dbg !3143
  %98 = zext i8 %97 to i32, !dbg !3143
  %99 = shl nuw nsw i32 %98, 6, !dbg !3144
  %100 = add nsw i32 %99, -64, !dbg !3144
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3145
  %102 = or i32 %101, %100, !dbg !3145
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3145
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3146
  %104 = or i32 %103, 2048, !dbg !3146
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3146
  br label %131, !dbg !3147

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !3148
  %107 = zext i16 %106 to i32, !dbg !3148
  %108 = shl nuw i32 3, %107, !dbg !3150
  %109 = xor i32 %108, -1, !dbg !3151
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !3152
  %111 = and i32 %110, %109, !dbg !3152
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !3152
  %112 = lshr i8 %1, 2, !dbg !3153
  %113 = zext i8 %112 to i32, !dbg !3153
  %114 = add nsw i32 %113, -1, !dbg !3154
  %115 = shl i32 %114, %107, !dbg !3155
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !3156
  %117 = or i32 %116, %115, !dbg !3156
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !3156
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !3157
  %120 = zext i16 %119 to i32, !dbg !3157
  %121 = shl nuw i32 3, %120, !dbg !3158
  %122 = xor i32 %121, -1, !dbg !3159
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !3160
  %124 = and i32 %123, %122, !dbg !3160
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !3160
  %125 = lshr i8 %1, 2, !dbg !3161
  %126 = zext i8 %125 to i32, !dbg !3161
  %127 = add nsw i32 %126, -1, !dbg !3162
  %128 = shl i32 %127, %120, !dbg !3163
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !3164
  %130 = or i32 %129, %128, !dbg !3164
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !3164
  br label %131, !dbg !3165

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !3070
  ret i32 %132, !dbg !3166
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !3167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3173, metadata !DIExpression()), !dbg !3177
  %3 = lshr i32 %0, 4, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %3, metadata !3174, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3177
  %4 = trunc i32 %0 to i16, !dbg !3179
  %5 = and i16 %4, 15, !dbg !3179
  call void @llvm.dbg.value(metadata i16 %4, metadata !3175, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %6 = trunc i32 %3 to i16, !dbg !3180
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !3180

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !3181
  call void @llvm.dbg.value(metadata i32 %8, metadata !3176, metadata !DIExpression()), !dbg !3177
  %9 = shl nuw nsw i16 %5, 1, !dbg !3183
  %10 = zext i16 %9 to i32, !dbg !3183
  %11 = shl nuw i32 3, %10, !dbg !3184
  %12 = and i32 %8, %11, !dbg !3185
  call void @llvm.dbg.value(metadata i32 %12, metadata !3176, metadata !DIExpression()), !dbg !3177
  %13 = lshr i32 %12, %10, !dbg !3186
  %14 = trunc i32 %13 to i8, !dbg !3187
  %15 = shl i8 %14, 2, !dbg !3187
  %16 = add i8 %15, 4, !dbg !3187
  br label %89, !dbg !3188

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !3189
  br i1 %18, label %19, label %29, !dbg !3191

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !3192
  call void @llvm.dbg.value(metadata i32 %20, metadata !3176, metadata !DIExpression()), !dbg !3177
  %21 = shl nuw nsw i16 %5, 1, !dbg !3194
  %22 = zext i16 %21 to i32, !dbg !3194
  %23 = shl nuw nsw i32 3, %22, !dbg !3195
  %24 = and i32 %20, %23, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %24, metadata !3176, metadata !DIExpression()), !dbg !3177
  %25 = lshr i32 %24, %22, !dbg !3197
  %26 = trunc i32 %25 to i8, !dbg !3198
  %27 = shl i8 %26, 2, !dbg !3198
  %28 = add i8 %27, 4, !dbg !3198
  br label %89, !dbg !3199

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !3200
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !3200

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3201
  call void @llvm.dbg.value(metadata i32 %32, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %32, metadata !3176, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %33 = lshr i32 %32, 5, !dbg !3204
  %34 = trunc i32 %33 to i8, !dbg !3205
  %35 = and i8 %34, 14, !dbg !3205
  %36 = add nuw nsw i8 %35, 2, !dbg !3205
  br label %89, !dbg !3206

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3207
  call void @llvm.dbg.value(metadata i32 %38, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %38, metadata !3176, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %39 = lshr i32 %38, 5, !dbg !3210
  %40 = trunc i32 %39 to i8, !dbg !3211
  %41 = and i8 %40, 14, !dbg !3211
  %42 = add nuw nsw i8 %41, 2, !dbg !3211
  br label %89, !dbg !3212

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3213
  call void @llvm.dbg.value(metadata i32 %44, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %44, metadata !3176, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %45 = lshr i32 %44, 5, !dbg !3216
  %46 = trunc i32 %45 to i8, !dbg !3217
  %47 = and i8 %46, 14, !dbg !3217
  %48 = add nuw nsw i8 %47, 2, !dbg !3217
  br label %89, !dbg !3218

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %50, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %50, metadata !3176, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %51 = lshr i32 %50, 5, !dbg !3222
  %52 = trunc i32 %51 to i8, !dbg !3223
  %53 = and i8 %52, 14, !dbg !3223
  %54 = add nuw nsw i8 %53, 2, !dbg !3223
  br label %89, !dbg !3224

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %56, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %56, metadata !3176, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %57 = lshr i32 %56, 5, !dbg !3228
  %58 = trunc i32 %57 to i8, !dbg !3229
  %59 = and i8 %58, 14, !dbg !3229
  %60 = add nuw nsw i8 %59, 2, !dbg !3229
  br label %89, !dbg !3230

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !3231
  br i1 %62, label %63, label %69, !dbg !3233

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %64, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %64, metadata !3176, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !3177
  %65 = lshr i32 %64, 5, !dbg !3236
  %66 = trunc i32 %65 to i8, !dbg !3237
  %67 = and i8 %66, 14, !dbg !3237
  %68 = add nuw nsw i8 %67, 2, !dbg !3237
  br label %89, !dbg !3238

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %70, metadata !3176, metadata !DIExpression()), !dbg !3177
  %71 = shl nuw nsw i16 %5, 1, !dbg !3241
  %72 = zext i16 %71 to i32, !dbg !3241
  %73 = shl nuw i32 3, %72, !dbg !3242
  %74 = and i32 %70, %73, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %74, metadata !3176, metadata !DIExpression()), !dbg !3177
  %75 = lshr i32 %74, %72, !dbg !3244
  %76 = trunc i32 %75 to i8, !dbg !3245
  %77 = shl i8 %76, 2, !dbg !3245
  %78 = add i8 %77, 4, !dbg !3245
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %80, metadata !3176, metadata !DIExpression()), !dbg !3177
  %81 = shl nuw nsw i16 %5, 1, !dbg !3247
  %82 = zext i16 %81 to i32, !dbg !3247
  %83 = shl nuw i32 3, %82, !dbg !3248
  %84 = and i32 %80, %83, !dbg !3249
  call void @llvm.dbg.value(metadata i32 %84, metadata !3176, metadata !DIExpression()), !dbg !3177
  %85 = lshr i32 %84, %82, !dbg !3250
  %86 = trunc i32 %85 to i8, !dbg !3251
  %87 = shl i8 %86, 2, !dbg !3251
  %88 = add i8 %87, 4, !dbg !3251
  br label %89, !dbg !3252

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !3253
  br label %91, !dbg !3254

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !3177
  ret i32 %92, !dbg !3254
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !3255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 %1, metadata !3261, metadata !DIExpression()), !dbg !3264
  %3 = lshr i32 %0, 5, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %3, metadata !3262, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3264
  %4 = trunc i32 %0 to i16, !dbg !3266
  %5 = and i16 %4, 31, !dbg !3266
  call void @llvm.dbg.value(metadata i16 %5, metadata !3263, metadata !DIExpression()), !dbg !3264
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !3267

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !3262, metadata !DIExpression()), !dbg !3264
  %7 = trunc i32 %3 to i16, !dbg !3268
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !3268

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !3271
  %10 = shl nuw i32 1, %9, !dbg !3273
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !3274
  %12 = or i32 %11, %10, !dbg !3274
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !3274
  br label %32, !dbg !3275

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !3276
  %15 = shl nuw i32 1, %14, !dbg !3277
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !3278
  %17 = or i32 %16, %15, !dbg !3278
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !3278
  br label %32, !dbg !3279

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !3280
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !3280

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !3283
  %22 = shl nuw i32 1, %21, !dbg !3285
  %23 = xor i32 %22, -1, !dbg !3286
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !3287
  %25 = and i32 %24, %23, !dbg !3287
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !3287
  br label %32, !dbg !3288

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !3289
  %28 = shl nuw i32 1, %27, !dbg !3290
  %29 = xor i32 %28, -1, !dbg !3291
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !3292
  %31 = and i32 %30, %29, !dbg !3292
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !3292
  br label %32, !dbg !3293

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !3294
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8 %1, metadata !3302, metadata !DIExpression()), !dbg !3304
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
  ], !dbg !3305

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %4, metadata !3303, metadata !DIExpression()), !dbg !3304
  %5 = and i32 %4, -16, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %5, metadata !3303, metadata !DIExpression()), !dbg !3304
  %6 = zext i8 %1 to i32, !dbg !3309
  %7 = or i32 %5, %6, !dbg !3310
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3311
  br label %187, !dbg !3312

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %9, metadata !3303, metadata !DIExpression()), !dbg !3304
  %10 = and i32 %9, -241, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %10, metadata !3303, metadata !DIExpression()), !dbg !3304
  %11 = zext i8 %1 to i32, !dbg !3315
  %12 = shl nuw nsw i32 %11, 4, !dbg !3316
  %13 = or i32 %10, %12, !dbg !3317
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3318
  br label %187, !dbg !3319

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %15, metadata !3303, metadata !DIExpression()), !dbg !3304
  %16 = and i32 %15, -3841, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %16, metadata !3303, metadata !DIExpression()), !dbg !3304
  %17 = zext i8 %1 to i32, !dbg !3322
  %18 = shl nuw nsw i32 %17, 8, !dbg !3323
  %19 = or i32 %16, %18, !dbg !3324
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3325
  br label %187, !dbg !3326

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %21, metadata !3303, metadata !DIExpression()), !dbg !3304
  %22 = and i32 %21, -61441, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %22, metadata !3303, metadata !DIExpression()), !dbg !3304
  %23 = zext i8 %1 to i32, !dbg !3329
  %24 = shl nuw nsw i32 %23, 12, !dbg !3330
  %25 = or i32 %22, %24, !dbg !3331
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3332
  br label %187, !dbg !3333

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %27, metadata !3303, metadata !DIExpression()), !dbg !3304
  %28 = and i32 %27, -983041, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %28, metadata !3303, metadata !DIExpression()), !dbg !3304
  %29 = zext i8 %1 to i32, !dbg !3336
  %30 = shl nuw nsw i32 %29, 16, !dbg !3337
  %31 = or i32 %28, %30, !dbg !3338
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3339
  br label %187, !dbg !3340

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %33, metadata !3303, metadata !DIExpression()), !dbg !3304
  %34 = and i32 %33, -15728641, !dbg !3342
  call void @llvm.dbg.value(metadata i32 %34, metadata !3303, metadata !DIExpression()), !dbg !3304
  %35 = zext i8 %1 to i32, !dbg !3343
  %36 = shl nuw nsw i32 %35, 20, !dbg !3344
  %37 = or i32 %34, %36, !dbg !3345
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3346
  br label %187, !dbg !3347

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3348
  call void @llvm.dbg.value(metadata i32 %39, metadata !3303, metadata !DIExpression()), !dbg !3304
  %40 = and i32 %39, -251658241, !dbg !3349
  call void @llvm.dbg.value(metadata i32 %40, metadata !3303, metadata !DIExpression()), !dbg !3304
  %41 = zext i8 %1 to i32, !dbg !3350
  %42 = shl nuw i32 %41, 24, !dbg !3351
  %43 = or i32 %40, %42, !dbg !3352
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3353
  br label %187, !dbg !3354

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3355
  call void @llvm.dbg.value(metadata i32 %45, metadata !3303, metadata !DIExpression()), !dbg !3304
  %46 = and i32 %45, 268435455, !dbg !3356
  call void @llvm.dbg.value(metadata i32 %46, metadata !3303, metadata !DIExpression()), !dbg !3304
  %47 = zext i8 %1 to i32, !dbg !3357
  %48 = shl i32 %47, 28, !dbg !3358
  %49 = or i32 %46, %48, !dbg !3359
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !3360
  br label %187, !dbg !3361

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %51, metadata !3303, metadata !DIExpression()), !dbg !3304
  %52 = and i32 %51, -16, !dbg !3363
  call void @llvm.dbg.value(metadata i32 %52, metadata !3303, metadata !DIExpression()), !dbg !3304
  %53 = zext i8 %1 to i32, !dbg !3364
  %54 = or i32 %52, %53, !dbg !3365
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3366
  br label %187, !dbg !3367

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3368
  call void @llvm.dbg.value(metadata i32 %56, metadata !3303, metadata !DIExpression()), !dbg !3304
  %57 = and i32 %56, -241, !dbg !3369
  call void @llvm.dbg.value(metadata i32 %57, metadata !3303, metadata !DIExpression()), !dbg !3304
  %58 = zext i8 %1 to i32, !dbg !3370
  %59 = shl nuw nsw i32 %58, 4, !dbg !3371
  %60 = or i32 %57, %59, !dbg !3372
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3373
  br label %187, !dbg !3374

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3375
  call void @llvm.dbg.value(metadata i32 %62, metadata !3303, metadata !DIExpression()), !dbg !3304
  %63 = and i32 %62, -3841, !dbg !3376
  call void @llvm.dbg.value(metadata i32 %63, metadata !3303, metadata !DIExpression()), !dbg !3304
  %64 = zext i8 %1 to i32, !dbg !3377
  %65 = shl nuw nsw i32 %64, 8, !dbg !3378
  %66 = or i32 %63, %65, !dbg !3379
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3380
  br label %187, !dbg !3381

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3382
  call void @llvm.dbg.value(metadata i32 %68, metadata !3303, metadata !DIExpression()), !dbg !3304
  %69 = and i32 %68, -61441, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %69, metadata !3303, metadata !DIExpression()), !dbg !3304
  %70 = zext i8 %1 to i32, !dbg !3384
  %71 = shl nuw nsw i32 %70, 12, !dbg !3385
  %72 = or i32 %69, %71, !dbg !3386
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3387
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !3388

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #18, !dbg !3390
  br label %187, !dbg !3392

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %76, metadata !3303, metadata !DIExpression()), !dbg !3304
  %77 = and i32 %76, -983041, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %77, metadata !3303, metadata !DIExpression()), !dbg !3304
  %78 = zext i8 %1 to i32, !dbg !3395
  %79 = shl nuw nsw i32 %78, 16, !dbg !3396
  %80 = or i32 %77, %79, !dbg !3397
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3398
  %81 = and i8 %1, -2, !dbg !3399
  %82 = icmp eq i8 %81, 4, !dbg !3399
  br i1 %82, label %83, label %187, !dbg !3399

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #18, !dbg !3401
  br label %187, !dbg !3403

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %86, metadata !3303, metadata !DIExpression()), !dbg !3304
  %87 = and i32 %86, -15728641, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %87, metadata !3303, metadata !DIExpression()), !dbg !3304
  %88 = zext i8 %1 to i32, !dbg !3406
  %89 = shl nuw nsw i32 %88, 20, !dbg !3407
  %90 = or i32 %87, %89, !dbg !3408
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3409
  %91 = icmp eq i8 %1, 6, !dbg !3410
  br i1 %91, label %92, label %187, !dbg !3412

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #18, !dbg !3413
  br label %187, !dbg !3415

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %95, metadata !3303, metadata !DIExpression()), !dbg !3304
  %96 = and i32 %95, -251658241, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %96, metadata !3303, metadata !DIExpression()), !dbg !3304
  %97 = zext i8 %1 to i32, !dbg !3418
  %98 = shl nuw i32 %97, 24, !dbg !3419
  %99 = or i32 %96, %98, !dbg !3420
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3421
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !3422

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #18, !dbg !3424
  br label %187, !dbg !3426

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %103, metadata !3303, metadata !DIExpression()), !dbg !3304
  %104 = and i32 %103, 268435455, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %104, metadata !3303, metadata !DIExpression()), !dbg !3304
  %105 = zext i8 %1 to i32, !dbg !3429
  %106 = shl i32 %105, 28, !dbg !3430
  %107 = or i32 %104, %106, !dbg !3431
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !3432
  %108 = and i8 %1, -3, !dbg !3433
  %109 = icmp eq i8 %108, 4, !dbg !3433
  br i1 %109, label %110, label %187, !dbg !3433

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #18, !dbg !3435
  br label %187, !dbg !3437

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3438
  call void @llvm.dbg.value(metadata i32 %113, metadata !3303, metadata !DIExpression()), !dbg !3304
  %114 = and i32 %113, -16, !dbg !3439
  call void @llvm.dbg.value(metadata i32 %114, metadata !3303, metadata !DIExpression()), !dbg !3304
  %115 = zext i8 %1 to i32, !dbg !3440
  %116 = or i32 %114, %115, !dbg !3441
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3442
  %117 = and i8 %1, -3, !dbg !3443
  %118 = icmp eq i8 %117, 4, !dbg !3443
  br i1 %118, label %119, label %187, !dbg !3443

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #18, !dbg !3445
  br label %187, !dbg !3447

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %122, metadata !3303, metadata !DIExpression()), !dbg !3304
  %123 = and i32 %122, -241, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %123, metadata !3303, metadata !DIExpression()), !dbg !3304
  %124 = zext i8 %1 to i32, !dbg !3450
  %125 = shl nuw nsw i32 %124, 4, !dbg !3451
  %126 = or i32 %123, %125, !dbg !3452
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3453
  br label %187, !dbg !3454

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %128, metadata !3303, metadata !DIExpression()), !dbg !3304
  %129 = and i32 %128, -3841, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %129, metadata !3303, metadata !DIExpression()), !dbg !3304
  %130 = zext i8 %1 to i32, !dbg !3457
  %131 = shl nuw nsw i32 %130, 8, !dbg !3458
  %132 = or i32 %129, %131, !dbg !3459
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3460
  br label %187, !dbg !3461

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %134, metadata !3303, metadata !DIExpression()), !dbg !3304
  %135 = and i32 %134, -61441, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %135, metadata !3303, metadata !DIExpression()), !dbg !3304
  %136 = zext i8 %1 to i32, !dbg !3464
  %137 = shl nuw nsw i32 %136, 12, !dbg !3465
  %138 = or i32 %135, %137, !dbg !3466
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3467
  br label %187, !dbg !3468

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %140, metadata !3303, metadata !DIExpression()), !dbg !3304
  %141 = and i32 %140, -983041, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %141, metadata !3303, metadata !DIExpression()), !dbg !3304
  %142 = zext i8 %1 to i32, !dbg !3471
  %143 = shl nuw nsw i32 %142, 16, !dbg !3472
  %144 = or i32 %141, %143, !dbg !3473
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3474
  br label %187, !dbg !3475

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3476
  call void @llvm.dbg.value(metadata i32 %146, metadata !3303, metadata !DIExpression()), !dbg !3304
  %147 = and i32 %146, -15728641, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %147, metadata !3303, metadata !DIExpression()), !dbg !3304
  %148 = zext i8 %1 to i32, !dbg !3478
  %149 = shl nuw nsw i32 %148, 20, !dbg !3479
  %150 = or i32 %147, %149, !dbg !3480
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3481
  br label %187, !dbg !3482

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3483
  call void @llvm.dbg.value(metadata i32 %152, metadata !3303, metadata !DIExpression()), !dbg !3304
  %153 = and i32 %152, -251658241, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %153, metadata !3303, metadata !DIExpression()), !dbg !3304
  %154 = zext i8 %1 to i32, !dbg !3485
  %155 = shl nuw i32 %154, 24, !dbg !3486
  %156 = or i32 %153, %155, !dbg !3487
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3488
  br label %187, !dbg !3489

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %158, metadata !3303, metadata !DIExpression()), !dbg !3304
  %159 = and i32 %158, 268435455, !dbg !3491
  call void @llvm.dbg.value(metadata i32 %159, metadata !3303, metadata !DIExpression()), !dbg !3304
  %160 = zext i8 %1 to i32, !dbg !3492
  %161 = shl i32 %160, 28, !dbg !3493
  %162 = or i32 %159, %161, !dbg !3494
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !3495
  br label %187, !dbg !3496

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3497
  call void @llvm.dbg.value(metadata i32 %164, metadata !3303, metadata !DIExpression()), !dbg !3304
  %165 = and i32 %164, -241, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %165, metadata !3303, metadata !DIExpression()), !dbg !3304
  %166 = zext i8 %1 to i32, !dbg !3499
  %167 = shl nuw nsw i32 %166, 4, !dbg !3500
  %168 = or i32 %165, %167, !dbg !3501
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3502
  br label %187, !dbg !3503

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %170, metadata !3303, metadata !DIExpression()), !dbg !3304
  %171 = and i32 %170, -3841, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %171, metadata !3303, metadata !DIExpression()), !dbg !3304
  %172 = zext i8 %1 to i32, !dbg !3506
  %173 = shl nuw nsw i32 %172, 8, !dbg !3507
  %174 = or i32 %171, %173, !dbg !3508
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3509
  br label %187, !dbg !3510

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %176, metadata !3303, metadata !DIExpression()), !dbg !3304
  %177 = and i32 %176, -61441, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %177, metadata !3303, metadata !DIExpression()), !dbg !3304
  %178 = zext i8 %1 to i32, !dbg !3513
  %179 = shl nuw nsw i32 %178, 12, !dbg !3514
  %180 = or i32 %177, %179, !dbg !3515
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3516
  br label %187, !dbg !3517

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3518
  call void @llvm.dbg.value(metadata i32 %182, metadata !3303, metadata !DIExpression()), !dbg !3304
  %183 = and i32 %182, -983041, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %183, metadata !3303, metadata !DIExpression()), !dbg !3304
  %184 = zext i8 %1 to i32, !dbg !3520
  %185 = shl nuw nsw i32 %184, 16, !dbg !3521
  %186 = or i32 %183, %185, !dbg !3522
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !3523
  br label %187, !dbg !3524

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !3525
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !3526 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3528, metadata !DIExpression()), !dbg !3529
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !3530
  tail call void asm sideeffect "dsb", ""() #17, !dbg !3531, !srcloc !3532
  tail call void asm sideeffect "isb", ""() #17, !dbg !3533, !srcloc !3534
  ret void, !dbg !3535
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #1 !dbg !3536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3540, metadata !DIExpression()), !dbg !3541
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !3542
  ret void, !dbg !3543
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !3544 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !3547, !srcloc !3553
  call void @llvm.dbg.value(metadata i32 %1, metadata !3550, metadata !DIExpression()) #17, !dbg !3554
  call void @llvm.dbg.value(metadata i32 %1, metadata !3546, metadata !DIExpression()), !dbg !3555
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !3556, !srcloc !3559
  ret i32 %1, !dbg !3560
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3561 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3563, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 %0, metadata !3565, metadata !DIExpression()) #17, !dbg !3568
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #17, !dbg !3571, !srcloc !3572
  ret void, !dbg !3573
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i32 %1, metadata !3579, metadata !DIExpression()), !dbg !3581
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
  ], !dbg !3582

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3581
  %4 = trunc i32 %1 to i8, !dbg !3583
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #18, !dbg !3584
  br label %5, !dbg !3585

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !3581
  ret i32 %6, !dbg !3586
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !3587 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3591
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !3592
  call void @llvm.dbg.value(metadata i32 %1, metadata !3590, metadata !DIExpression()), !dbg !3591
  %2 = lshr i32 %1, 13, !dbg !3593
  %3 = and i32 %2, 7, !dbg !3594
  call void @llvm.dbg.value(metadata i32 %3, metadata !3590, metadata !DIExpression()), !dbg !3591
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %4, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %4, metadata !3589, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !3591
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !3596
  %6 = load i32, i32* %5, align 4, !dbg !3596
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !3596
  %8 = load i32, i32* %7, align 4, !dbg !3596
  %9 = and i32 %4, -2048, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %9, metadata !3589, metadata !DIExpression()), !dbg !3591
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !3598
  %10 = or i32 %9, %8, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %10, metadata !3589, metadata !DIExpression()), !dbg !3591
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3600
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !3601
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !3602
  tail call void @SystemCoreClockUpdate() #18, !dbg !3603
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !3604
  %13 = udiv i32 %12, 1000, !dbg !3605
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #18, !dbg !3606
  ret void, !dbg !3607
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #9 !dbg !3608 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !3609
  ret i32 %1, !dbg !3610
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #9 !dbg !3611 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !3612
  ret i32 %1, !dbg !3613
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !3614 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3618
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3617, metadata !DIExpression()), !dbg !3620
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3621
  store volatile i32 %3, i32* %1, align 4, !dbg !3622
  %4 = load volatile i32, i32* %1, align 4, !dbg !3623
  %5 = lshr i32 %4, 28, !dbg !3624
  %6 = and i32 %5, 3, !dbg !3625
  store volatile i32 %6, i32* %1, align 4, !dbg !3626
  %7 = load volatile i32, i32* %1, align 4, !dbg !3627
  %8 = icmp eq i32 %7, 0, !dbg !3629
  br i1 %8, label %9, label %22, !dbg !3630

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3631
  store volatile i32 %10, i32* %1, align 4, !dbg !3633
  %11 = load volatile i32, i32* %1, align 4, !dbg !3634
  %12 = and i32 %11, -16777217, !dbg !3635
  store volatile i32 %12, i32* %1, align 4, !dbg !3636
  %13 = load volatile i32, i32* %1, align 4, !dbg !3637
  %14 = or i32 %13, 536870912, !dbg !3638
  store volatile i32 %14, i32* %1, align 4, !dbg !3639
  %15 = load volatile i32, i32* %1, align 4, !dbg !3640
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #16, !dbg !3641
  br label %16, !dbg !3642

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3643
  store volatile i32 %17, i32* %1, align 4, !dbg !3645
  %18 = load volatile i32, i32* %1, align 4, !dbg !3646
  %19 = and i32 %18, 134217728, !dbg !3647
  store volatile i32 %19, i32* %1, align 4, !dbg !3648
  %20 = load volatile i32, i32* %1, align 4, !dbg !3649
  %21 = icmp eq i32 %20, 0, !dbg !3650
  br i1 %21, label %16, label %22, !dbg !3651, !llvm.loop !3652

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3654
  ret void, !dbg !3654
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #6 !dbg !3655 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3662, metadata !DIExpression()), !dbg !3663
  %2 = bitcast i8* %0 to i32*, !dbg !3664
  %3 = load volatile i32, i32* %2, align 4, !dbg !3665
  ret i32 %3, !dbg !3666
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !3667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %1, metadata !3672, metadata !DIExpression()), !dbg !3673
  %3 = bitcast i8* %0 to i32*, !dbg !3674
  store volatile i32 %1, i32* %3, align 4, !dbg !3675
  ret void, !dbg !3676
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !3677 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3679, metadata !DIExpression()), !dbg !3682
  %3 = bitcast i32* %2 to i8*, !dbg !3683
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3683
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3680, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3681, metadata !DIExpression()), !dbg !3682
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3685
  store volatile i32 %4, i32* %2, align 4, !dbg !3686
  %5 = load volatile i32, i32* %2, align 4, !dbg !3687
  %6 = lshr i32 %5, 28, !dbg !3688
  %7 = and i32 %6, 3, !dbg !3689
  store volatile i32 %7, i32* %2, align 4, !dbg !3690
  %8 = load volatile i32, i32* %2, align 4, !dbg !3691
  %9 = icmp eq i32 %8, 3, !dbg !3693
  br i1 %9, label %38, label %10, !dbg !3694

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3695
  store volatile i32 %11, i32* %2, align 4, !dbg !3697
  %12 = load volatile i32, i32* %2, align 4, !dbg !3698
  %13 = and i32 %12, -262145, !dbg !3699
  store volatile i32 %13, i32* %2, align 4, !dbg !3700
  %14 = load volatile i32, i32* %2, align 4, !dbg !3701
  %15 = and i32 %14, -16777217, !dbg !3702
  store volatile i32 %15, i32* %2, align 4, !dbg !3703
  %16 = load volatile i32, i32* %2, align 4, !dbg !3704
  store volatile i32 %16, i32* %2, align 4, !dbg !3705
  %17 = load volatile i32, i32* %2, align 4, !dbg !3706
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #16, !dbg !3707
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3708
  store volatile i32 %18, i32* %2, align 4, !dbg !3709
  %19 = load volatile i32, i32* %2, align 4, !dbg !3710
  %20 = and i32 %19, -805306369, !dbg !3711
  store volatile i32 %20, i32* %2, align 4, !dbg !3712
  %21 = load volatile i32, i32* %2, align 4, !dbg !3713
  %22 = and i32 %21, -16777217, !dbg !3714
  store volatile i32 %22, i32* %2, align 4, !dbg !3715
  %23 = load volatile i32, i32* %2, align 4, !dbg !3716
  %24 = or i32 %23, 805306368, !dbg !3717
  store volatile i32 %24, i32* %2, align 4, !dbg !3718
  %25 = load volatile i32, i32* %2, align 4, !dbg !3719
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #16, !dbg !3720
  br label %26, !dbg !3721

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3722
  store volatile i32 %27, i32* %2, align 4, !dbg !3724
  %28 = load volatile i32, i32* %2, align 4, !dbg !3725
  %29 = and i32 %28, 67108864, !dbg !3726
  store volatile i32 %29, i32* %2, align 4, !dbg !3727
  %30 = load volatile i32, i32* %2, align 4, !dbg !3728
  %31 = icmp eq i32 %30, 0, !dbg !3729
  br i1 %31, label %26, label %32, !dbg !3730, !llvm.loop !3731

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3733
  store volatile i32 %33, i32* %2, align 4, !dbg !3734
  %34 = load volatile i32, i32* %2, align 4, !dbg !3735
  %35 = and i32 %34, -262145, !dbg !3736
  store volatile i32 %35, i32* %2, align 4, !dbg !3737
  %36 = load volatile i32, i32* %2, align 4, !dbg !3738
  %37 = and i32 %36, -16777217, !dbg !3739
  store volatile i32 %37, i32* %2, align 4, !dbg !3740
  br label %38, !dbg !3741

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3742
  store volatile i32 %39, i32* %2, align 4, !dbg !3743
  %40 = icmp eq i8 %0, 0, !dbg !3744
  %41 = load volatile i32, i32* %2, align 4, !dbg !3746
  br i1 %40, label %44, label %42, !dbg !3747

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3748
  store volatile i32 %43, i32* %2, align 4, !dbg !3750
  br label %45, !dbg !3751

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3752
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3754
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #16, !dbg !3755
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3756
  ret void, !dbg !3756
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !3757 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3761
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3761
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3759, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3760, metadata !DIExpression()), !dbg !3763
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3764
  store volatile i32 %3, i32* %1, align 4, !dbg !3765
  %4 = load volatile i32, i32* %1, align 4, !dbg !3766
  %5 = and i32 %4, -805306369, !dbg !3767
  store volatile i32 %5, i32* %1, align 4, !dbg !3768
  %6 = load volatile i32, i32* %1, align 4, !dbg !3769
  %7 = and i32 %6, -16777217, !dbg !3770
  store volatile i32 %7, i32* %1, align 4, !dbg !3771
  %8 = load volatile i32, i32* %1, align 4, !dbg !3772
  store volatile i32 %8, i32* %1, align 4, !dbg !3773
  %9 = load volatile i32, i32* %1, align 4, !dbg !3774
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #16, !dbg !3775
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3776
  store volatile i32 %10, i32* %1, align 4, !dbg !3777
  %11 = load volatile i32, i32* %1, align 4, !dbg !3778
  %12 = and i32 %11, -262145, !dbg !3779
  store volatile i32 %12, i32* %1, align 4, !dbg !3780
  %13 = load volatile i32, i32* %1, align 4, !dbg !3781
  %14 = and i32 %13, -16777217, !dbg !3782
  store volatile i32 %14, i32* %1, align 4, !dbg !3783
  %15 = load volatile i32, i32* %1, align 4, !dbg !3784
  store volatile i32 %15, i32* %1, align 4, !dbg !3785
  %16 = load volatile i32, i32* %1, align 4, !dbg !3786
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #16, !dbg !3787
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3788
  ret void, !dbg !3788
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !3789 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3793
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3793
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3791, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3792, metadata !DIExpression()), !dbg !3795
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3796
  store volatile i32 %3, i32* %1, align 4, !dbg !3797
  %4 = load volatile i32, i32* %1, align 4, !dbg !3798
  %5 = and i32 %4, -8, !dbg !3799
  store volatile i32 %5, i32* %1, align 4, !dbg !3800
  %6 = load volatile i32, i32* %1, align 4, !dbg !3801
  store volatile i32 %6, i32* %1, align 4, !dbg !3802
  %7 = load volatile i32, i32* %1, align 4, !dbg !3803
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3804
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3805
  store volatile i32 %8, i32* %1, align 4, !dbg !3806
  %9 = load volatile i32, i32* %1, align 4, !dbg !3807
  %10 = and i32 %9, -49153, !dbg !3808
  store volatile i32 %10, i32* %1, align 4, !dbg !3809
  %11 = load volatile i32, i32* %1, align 4, !dbg !3810
  store volatile i32 %11, i32* %1, align 4, !dbg !3811
  %12 = load volatile i32, i32* %1, align 4, !dbg !3812
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #16, !dbg !3813
  br label %13, !dbg !3814

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3815
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3816
  %16 = icmp eq i32 %14, %15, !dbg !3817
  br i1 %16, label %17, label %13, !dbg !3814, !llvm.loop !3818

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #16, !dbg !3820
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3821
  tail call void @SystemCoreClockUpdate() #18, !dbg !3822
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3823
  %20 = udiv i32 %19, 1000, !dbg !3824
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #18, !dbg !3825
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3826
  ret void, !dbg !3826
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !3827 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3831
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3831
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3829, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3830, metadata !DIExpression()), !dbg !3833
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #16, !dbg !3834
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3835
  store volatile i32 %3, i32* %1, align 4, !dbg !3836
  %4 = load volatile i32, i32* %1, align 4, !dbg !3837
  %5 = and i32 %4, -49153, !dbg !3838
  store volatile i32 %5, i32* %1, align 4, !dbg !3839
  %6 = load volatile i32, i32* %1, align 4, !dbg !3840
  %7 = or i32 %6, 16384, !dbg !3841
  store volatile i32 %7, i32* %1, align 4, !dbg !3842
  %8 = load volatile i32, i32* %1, align 4, !dbg !3843
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3844
  br label %9, !dbg !3845

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3846
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3847
  %12 = icmp eq i32 %10, %11, !dbg !3848
  br i1 %12, label %13, label %9, !dbg !3845, !llvm.loop !3849

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3851
  store volatile i32 %14, i32* %1, align 4, !dbg !3852
  %15 = load volatile i32, i32* %1, align 4, !dbg !3853
  %16 = and i32 %15, -1009, !dbg !3854
  store volatile i32 %16, i32* %1, align 4, !dbg !3855
  %17 = load volatile i32, i32* %1, align 4, !dbg !3856
  %18 = or i32 %17, 128, !dbg !3857
  store volatile i32 %18, i32* %1, align 4, !dbg !3858
  %19 = load volatile i32, i32* %1, align 4, !dbg !3859
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3860
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3861
  store volatile i32 %20, i32* %1, align 4, !dbg !3862
  %21 = load volatile i32, i32* %1, align 4, !dbg !3863
  %22 = and i32 %21, -8, !dbg !3864
  store volatile i32 %22, i32* %1, align 4, !dbg !3865
  %23 = load volatile i32, i32* %1, align 4, !dbg !3866
  %24 = or i32 %23, 4, !dbg !3867
  store volatile i32 %24, i32* %1, align 4, !dbg !3868
  %25 = load volatile i32, i32* %1, align 4, !dbg !3869
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3870
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3871
  tail call void @SystemCoreClockUpdate() #18, !dbg !3872
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3873
  %27 = udiv i32 %26, 1000, !dbg !3874
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #18, !dbg !3875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3876
  ret void, !dbg !3876
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !3877 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3881
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3881
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3879, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3880, metadata !DIExpression()), !dbg !3883
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #16, !dbg !3884
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3885
  store volatile i32 %3, i32* %1, align 4, !dbg !3886
  %4 = load volatile i32, i32* %1, align 4, !dbg !3887
  %5 = and i32 %4, -49153, !dbg !3888
  store volatile i32 %5, i32* %1, align 4, !dbg !3889
  %6 = load volatile i32, i32* %1, align 4, !dbg !3890
  %7 = or i32 %6, 32768, !dbg !3891
  store volatile i32 %7, i32* %1, align 4, !dbg !3892
  %8 = load volatile i32, i32* %1, align 4, !dbg !3893
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3894
  br label %9, !dbg !3895

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3896
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3897
  %12 = icmp eq i32 %10, %11, !dbg !3898
  br i1 %12, label %13, label %9, !dbg !3895, !llvm.loop !3899

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3901
  store volatile i32 %14, i32* %1, align 4, !dbg !3902
  %15 = load volatile i32, i32* %1, align 4, !dbg !3903
  %16 = and i32 %15, -1009, !dbg !3904
  store volatile i32 %16, i32* %1, align 4, !dbg !3905
  %17 = load volatile i32, i32* %1, align 4, !dbg !3906
  %18 = or i32 %17, 32, !dbg !3907
  store volatile i32 %18, i32* %1, align 4, !dbg !3908
  %19 = load volatile i32, i32* %1, align 4, !dbg !3909
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3910
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3911
  store volatile i32 %20, i32* %1, align 4, !dbg !3912
  %21 = load volatile i32, i32* %1, align 4, !dbg !3913
  %22 = and i32 %21, -8, !dbg !3914
  store volatile i32 %22, i32* %1, align 4, !dbg !3915
  %23 = load volatile i32, i32* %1, align 4, !dbg !3916
  %24 = or i32 %23, 4, !dbg !3917
  store volatile i32 %24, i32* %1, align 4, !dbg !3918
  %25 = load volatile i32, i32* %1, align 4, !dbg !3919
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3920
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3921
  tail call void @SystemCoreClockUpdate() #18, !dbg !3922
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3923
  %27 = udiv i32 %26, 1000, !dbg !3924
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #18, !dbg !3925
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3926
  ret void, !dbg !3926
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !3927 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3931
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3931
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3929, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3930, metadata !DIExpression()), !dbg !3933
  tail call void @cmnPLL1ON() #16, !dbg !3934
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3935
  store volatile i32 %3, i32* %1, align 4, !dbg !3936
  %4 = load volatile i32, i32* %1, align 4, !dbg !3937
  %5 = and i32 %4, -49153, !dbg !3938
  store volatile i32 %5, i32* %1, align 4, !dbg !3939
  %6 = load volatile i32, i32* %1, align 4, !dbg !3940
  store volatile i32 %6, i32* %1, align 4, !dbg !3941
  %7 = load volatile i32, i32* %1, align 4, !dbg !3942
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3943
  br label %8, !dbg !3944

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3945
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3946
  %11 = icmp eq i32 %9, %10, !dbg !3947
  br i1 %11, label %12, label %8, !dbg !3944, !llvm.loop !3948

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3950
  store volatile i32 %13, i32* %1, align 4, !dbg !3951
  %14 = load volatile i32, i32* %1, align 4, !dbg !3952
  %15 = and i32 %14, -8, !dbg !3953
  store volatile i32 %15, i32* %1, align 4, !dbg !3954
  %16 = load volatile i32, i32* %1, align 4, !dbg !3955
  %17 = or i32 %16, 2, !dbg !3956
  store volatile i32 %17, i32* %1, align 4, !dbg !3957
  %18 = load volatile i32, i32* %1, align 4, !dbg !3958
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #16, !dbg !3959
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3960
  tail call void @SystemCoreClockUpdate() #18, !dbg !3961
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3962
  %20 = udiv i32 %19, 1000, !dbg !3963
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #18, !dbg !3964
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3965
  ret void, !dbg !3965
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !3966 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3970
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3970
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3969, metadata !DIExpression()), !dbg !3972
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #16, !dbg !3973
  store volatile i32 %3, i32* %1, align 4, !dbg !3974
  %4 = load volatile i32, i32* %1, align 4, !dbg !3975
  %5 = and i32 %4, -24577, !dbg !3976
  store volatile i32 %5, i32* %1, align 4, !dbg !3977
  %6 = load volatile i32, i32* %1, align 4, !dbg !3978
  store volatile i32 %6, i32* %1, align 4, !dbg !3979
  %7 = load volatile i32, i32* %1, align 4, !dbg !3980
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #16, !dbg !3981
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3982
  ret void, !dbg !3982
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #6 !dbg !3983 {
  %1 = tail call i32 @getc_nowait() #16, !dbg !3988
  call void @llvm.dbg.value(metadata i32 %1, metadata !3987, metadata !DIExpression()), !dbg !3989
  ret i32 %1, !dbg !3990
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #6 !dbg !3991 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3994
  %2 = and i32 %1, 1, !dbg !3996
  %3 = icmp eq i32 %2, 0, !dbg !3996
  br i1 %3, label %7, label %4, !dbg !3997

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3998
  %6 = and i32 %5, 255, !dbg !4000
  call void @llvm.dbg.value(metadata i32 %5, metadata !3993, metadata !DIExpression()), !dbg !4001
  br label %7, !dbg !4002

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !4003
  ret i32 %8, !dbg !4004
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !4005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4010, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8 %1, metadata !4011, metadata !DIExpression()), !dbg !4013
  %3 = icmp eq i32 %0, 0, !dbg !4014
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %4, metadata !4012, metadata !DIExpression()), !dbg !4013
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !4015

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !4016
  %9 = and i32 %8, 32, !dbg !4017
  %10 = icmp eq i32 %9, 0, !dbg !4018
  br i1 %10, label %7, label %11, !dbg !4015, !llvm.loop !4019

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !4021
  %13 = inttoptr i32 %4 to i32*, !dbg !4022
  store volatile i32 %12, i32* %13, align 65536, !dbg !4023
  ret void, !dbg !4024
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #1 !dbg !4025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4029, metadata !DIExpression()), !dbg !4032
  %2 = icmp eq i32 %0, 0, !dbg !4033
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %3, metadata !4030, metadata !DIExpression()), !dbg !4032
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !4034

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !4035
  %8 = and i32 %7, 1, !dbg !4036
  %9 = icmp eq i32 %8, 0, !dbg !4037
  br i1 %9, label %6, label %10, !dbg !4034, !llvm.loop !4038

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !4040
  %12 = load volatile i32, i32* %11, align 65536, !dbg !4040
  %13 = trunc i32 %12 to i8, !dbg !4040
  call void @llvm.dbg.value(metadata i8 %13, metadata !4031, metadata !DIExpression()), !dbg !4032
  ret i8 %13, !dbg !4041
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #6 !dbg !4042 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4046, metadata !DIExpression()), !dbg !4049
  %2 = icmp eq i32 %0, 0, !dbg !4050
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %3, metadata !4047, metadata !DIExpression()), !dbg !4049
  %4 = or i32 %3, 20, !dbg !4051
  %5 = inttoptr i32 %4 to i32*, !dbg !4051
  %6 = load volatile i32, i32* %5, align 4, !dbg !4051
  %7 = and i32 %6, 1, !dbg !4053
  %8 = icmp eq i32 %7, 0, !dbg !4053
  br i1 %8, label %13, label %9, !dbg !4054

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !4055
  %11 = load volatile i32, i32* %10, align 65536, !dbg !4055
  %12 = and i32 %11, 255, !dbg !4057
  call void @llvm.dbg.value(metadata i32 %11, metadata !4048, metadata !DIExpression()), !dbg !4049
  br label %13, !dbg !4058

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !4059
  ret i32 %14, !dbg !4060
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !4061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4065, metadata !DIExpression()), !dbg !4066
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #16, !dbg !4067
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !4068

2:                                                ; preds = %1
  br label %3, !dbg !4069

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !4073
  %6 = or i32 %5, 1, !dbg !4073
  store volatile i32 %6, i32* %4, align 4, !dbg !4073
  br label %7, !dbg !4074

7:                                                ; preds = %3, %1
  ret void, !dbg !4074
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !4075 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 %1, metadata !4080, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i16 %2, metadata !4081, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i16 %3, metadata !4082, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i16 %4, metadata !4083, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !4085, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !4092, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !4094, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i32 0, metadata !4095, metadata !DIExpression()), !dbg !4096
  %6 = tail call i32 @top_xtal_freq_get() #18, !dbg !4099
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !4100
  %7 = icmp eq i32 %0, 1, !dbg !4101
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !4101
  call void @llvm.dbg.value(metadata i32 %8, metadata !4085, metadata !DIExpression()), !dbg !4096
  %9 = or i32 %8, 36, !dbg !4102
  %10 = inttoptr i32 %9 to i32*, !dbg !4102
  store volatile i32 3, i32* %10, align 4, !dbg !4103
  %11 = or i32 %8, 12, !dbg !4104
  %12 = inttoptr i32 %11 to i32*, !dbg !4104
  %13 = load volatile i32, i32* %12, align 4, !dbg !4104
  call void @llvm.dbg.value(metadata i32 %13, metadata !4087, metadata !DIExpression()), !dbg !4096
  %14 = or i32 %13, 128, !dbg !4105
  store volatile i32 %14, i32* %12, align 4, !dbg !4106
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !4107
  %16 = udiv i32 %15, %1, !dbg !4108
  call void @llvm.dbg.value(metadata i32 %16, metadata !4086, metadata !DIExpression()), !dbg !4096
  %17 = lshr i32 %16, 8, !dbg !4109
  %18 = add nuw nsw i32 %17, 1, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %18, metadata !4088, metadata !DIExpression()), !dbg !4096
  %19 = udiv i32 %16, %18, !dbg !4111
  %20 = add i32 %19, -1, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %20, metadata !4089, metadata !DIExpression()), !dbg !4096
  %21 = icmp eq i32 %20, 3, !dbg !4114
  %22 = lshr i32 %20, 1, !dbg !4116
  %23 = add nsw i32 %22, -1, !dbg !4116
  %24 = select i1 %21, i32 0, i32 %23, !dbg !4116
  call void @llvm.dbg.value(metadata i32 %24, metadata !4090, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata i32 undef, metadata !4095, metadata !DIExpression()), !dbg !4096
  %25 = mul i32 %15, 10, !dbg !4117
  %26 = udiv i32 %25, %1, !dbg !4118
  %27 = udiv i32 %26, %16, !dbg !4119
  %28 = mul i32 %19, -10, !dbg !4120
  %29 = add i32 %27, %28, !dbg !4121
  %30 = urem i32 %29, 10, !dbg !4122
  call void @llvm.dbg.value(metadata i32 %30, metadata !4091, metadata !DIExpression()), !dbg !4096
  %31 = and i32 %18, 255, !dbg !4123
  %32 = inttoptr i32 %8 to i32*, !dbg !4124
  store volatile i32 %31, i32* %32, align 65536, !dbg !4125
  %33 = lshr i32 %18, 8, !dbg !4126
  %34 = and i32 %33, 255, !dbg !4127
  %35 = or i32 %8, 4, !dbg !4128
  %36 = inttoptr i32 %35 to i32*, !dbg !4128
  store volatile i32 %34, i32* %36, align 4, !dbg !4129
  %37 = or i32 %8, 40, !dbg !4130
  %38 = inttoptr i32 %37 to i32*, !dbg !4130
  store volatile i32 %20, i32* %38, align 8, !dbg !4131
  %39 = or i32 %8, 44, !dbg !4132
  %40 = inttoptr i32 %39 to i32*, !dbg !4132
  store volatile i32 %24, i32* %40, align 4, !dbg !4133
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !4134
  %42 = load i16, i16* %41, align 2, !dbg !4134
  %43 = zext i16 %42 to i32, !dbg !4134
  %44 = or i32 %8, 88, !dbg !4135
  %45 = inttoptr i32 %44 to i32*, !dbg !4135
  store volatile i32 %43, i32* %45, align 8, !dbg !4136
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !4137
  %47 = load i16, i16* %46, align 2, !dbg !4137
  %48 = zext i16 %47 to i32, !dbg !4137
  %49 = or i32 %8, 84, !dbg !4138
  %50 = inttoptr i32 %49 to i32*, !dbg !4138
  store volatile i32 %48, i32* %50, align 4, !dbg !4139
  store volatile i32 %13, i32* %12, align 4, !dbg !4140
  %51 = or i32 %8, 8, !dbg !4141
  %52 = inttoptr i32 %51 to i32*, !dbg !4141
  store volatile i32 71, i32* %52, align 8, !dbg !4142
  %53 = inttoptr i32 %11 to i16*, !dbg !4143
  %54 = load volatile i16, i16* %53, align 4, !dbg !4143
  call void @llvm.dbg.value(metadata i16 %54, metadata !4084, metadata !DIExpression()), !dbg !4096
  %55 = and i16 %54, -64, !dbg !4144
  call void @llvm.dbg.value(metadata i16 %54, metadata !4084, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !4096
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !4084, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4096
  %56 = and i16 %2, -61, !dbg !4145
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !4084, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4096
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !4084, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4096
  %57 = and i16 %4, -57, !dbg !4146
  call void @llvm.dbg.value(metadata i16 undef, metadata !4084, metadata !DIExpression()), !dbg !4096
  %58 = or i16 %56, %3, !dbg !4145
  %59 = or i16 %58, %57, !dbg !4146
  %60 = or i16 %59, %55, !dbg !4147
  call void @llvm.dbg.value(metadata i16 %60, metadata !4084, metadata !DIExpression()), !dbg !4096
  store volatile i16 %60, i16* %53, align 4, !dbg !4148
  ret void, !dbg !4149
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !4150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 %1, metadata !4155, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32* %2, metadata !4156, metadata !DIExpression()), !dbg !4157
  %4 = icmp eq i32 %0, 0, !dbg !4158
  %5 = icmp eq i32 %1, 0, !dbg !4160
  br i1 %4, label %6, label %16, !dbg !4161

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !4162

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !4164
  %9 = zext i16 %8 to i32, !dbg !4164
  br label %26, !dbg !4167

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !4168
  %12 = zext i16 %11 to i32, !dbg !4168
  store i32 %12, i32* %2, align 4, !dbg !4170
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !4171
  %14 = zext i16 %13 to i32, !dbg !4171
  %15 = sub nsw i32 %12, %14, !dbg !4172
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !4173

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !4175
  %19 = zext i16 %18 to i32, !dbg !4175
  br label %26, !dbg !4178

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !4179
  %22 = zext i16 %21 to i32, !dbg !4179
  store i32 %22, i32* %2, align 4, !dbg !4181
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !4182
  %24 = zext i16 %23 to i32, !dbg !4182
  %25 = sub nsw i32 %22, %24, !dbg !4183
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !4160
  ret void, !dbg !4184
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !4185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i8* %1, metadata !4190, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i32 %2, metadata !4191, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i32 0, metadata !4192, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i32 0, metadata !4192, metadata !DIExpression()), !dbg !4193
  %4 = icmp eq i32 %2, 0, !dbg !4194
  br i1 %4, label %15, label %5, !dbg !4197

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4192, metadata !DIExpression()), !dbg !4193
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !4198

7:                                                ; preds = %5
  br label %8, !dbg !4200

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !4204
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !4204
  store i8 %10, i8* %11, align 1, !dbg !4204
  br label %12, !dbg !4205

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !4205
  call void @llvm.dbg.value(metadata i32 %13, metadata !4192, metadata !DIExpression()), !dbg !4193
  %14 = icmp eq i32 %13, %2, !dbg !4194
  br i1 %14, label %15, label %5, !dbg !4197, !llvm.loop !4206

15:                                               ; preds = %12, %3
  ret void, !dbg !4208
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !4209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4215, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i8* %1, metadata !4216, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i32 %2, metadata !4217, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i32 0, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata i32 0, metadata !4218, metadata !DIExpression()), !dbg !4219
  %4 = icmp eq i32 %2, 0, !dbg !4220
  br i1 %4, label %16, label %5, !dbg !4223

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4218, metadata !DIExpression()), !dbg !4219
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !4224

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !4226
  %9 = load i8, i8* %8, align 1, !dbg !4226
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !4229
  br label %13, !dbg !4230

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !4231
  %12 = load i8, i8* %11, align 1, !dbg !4231
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !4234
  br label %13, !dbg !4235

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !4236
  call void @llvm.dbg.value(metadata i32 %14, metadata !4218, metadata !DIExpression()), !dbg !4219
  %15 = icmp eq i32 %14, %2, !dbg !4220
  br i1 %15, label %16, label %5, !dbg !4223, !llvm.loop !4237

16:                                               ; preds = %13, %3
  ret void, !dbg !4239
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !4240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4244, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i8* %1, metadata !4245, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i32 %2, metadata !4246, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i32 %3, metadata !4247, metadata !DIExpression()), !dbg !4248
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !4249

5:                                                ; preds = %4
  br label %6, !dbg !4250

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !4254
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #18, !dbg !4254
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #18, !dbg !4254
  br label %9, !dbg !4255

9:                                                ; preds = %6, %4
  ret void, !dbg !4255
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !4256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4260, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i8* %1, metadata !4261, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %2, metadata !4262, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %3, metadata !4263, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %4, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %5, metadata !4265, metadata !DIExpression()), !dbg !4266
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !4267

7:                                                ; preds = %6
  br label %8, !dbg !4268

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !4272
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #18, !dbg !4272
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #18, !dbg !4272
  br label %11, !dbg !4273

11:                                               ; preds = %8, %6
  ret void, !dbg !4273
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !4274 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4278, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata void ()* %1, metadata !4279, metadata !DIExpression()), !dbg !4280
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !4281

3:                                                ; preds = %2
  br label %4, !dbg !4282

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #18, !dbg !4286
  br label %6, !dbg !4287

6:                                                ; preds = %4, %2
  ret void, !dbg !4287
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !4288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4290, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata void ()* %1, metadata !4291, metadata !DIExpression()), !dbg !4292
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !4293

3:                                                ; preds = %2
  br label %4, !dbg !4294

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #18, !dbg !4298
  br label %6, !dbg !4299

6:                                                ; preds = %4, %2
  ret void, !dbg !4299
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !4300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4302, metadata !DIExpression()), !dbg !4306
  %2 = icmp eq i32 %0, 0, !dbg !4307
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4307
  call void @llvm.dbg.value(metadata i32 %3, metadata !4303, metadata !DIExpression()), !dbg !4306
  %4 = or i32 %3, 12, !dbg !4308
  %5 = inttoptr i32 %4 to i32*, !dbg !4308
  %6 = load volatile i32, i32* %5, align 4, !dbg !4308
  call void @llvm.dbg.value(metadata i32 %6, metadata !4305, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4306
  store volatile i32 191, i32* %5, align 4, !dbg !4309
  %7 = or i32 %3, 8, !dbg !4310
  %8 = inttoptr i32 %7 to i32*, !dbg !4310
  %9 = load volatile i32, i32* %8, align 8, !dbg !4310
  call void @llvm.dbg.value(metadata i32 %9, metadata !4304, metadata !DIExpression()), !dbg !4306
  %10 = and i32 %9, 65327, !dbg !4311
  %11 = or i32 %10, 208, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %9, metadata !4304, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !4306
  store volatile i32 %11, i32* %8, align 8, !dbg !4312
  %12 = or i32 %3, 68, !dbg !4313
  %13 = inttoptr i32 %12 to i32*, !dbg !4313
  store volatile i32 0, i32* %13, align 4, !dbg !4314
  store volatile i32 0, i32* %5, align 4, !dbg !4315
  %14 = or i32 %3, 16, !dbg !4316
  %15 = inttoptr i32 %14 to i32*, !dbg !4316
  store volatile i32 2, i32* %15, align 16, !dbg !4317
  %16 = and i32 %6, 65535, !dbg !4318
  store volatile i32 %16, i32* %5, align 4, !dbg !4319
  ret void, !dbg !4320
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 !dbg !4321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i8 %1, metadata !4326, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i8 %2, metadata !4327, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i8 %3, metadata !4328, metadata !DIExpression()), !dbg !4332
  %5 = icmp eq i32 %0, 0, !dbg !4333
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !4333
  call void @llvm.dbg.value(metadata i32 %6, metadata !4329, metadata !DIExpression()), !dbg !4332
  %7 = or i32 %6, 12, !dbg !4334
  %8 = inttoptr i32 %7 to i32*, !dbg !4334
  %9 = load volatile i32, i32* %8, align 4, !dbg !4334
  call void @llvm.dbg.value(metadata i32 %9, metadata !4331, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4332
  store volatile i32 191, i32* %8, align 4, !dbg !4335
  %10 = zext i8 %1 to i32, !dbg !4336
  %11 = or i32 %6, 16, !dbg !4337
  %12 = inttoptr i32 %11 to i32*, !dbg !4337
  store volatile i32 %10, i32* %12, align 16, !dbg !4338
  %13 = or i32 %6, 20, !dbg !4339
  %14 = inttoptr i32 %13 to i32*, !dbg !4339
  store volatile i32 %10, i32* %14, align 4, !dbg !4340
  %15 = zext i8 %2 to i32, !dbg !4341
  %16 = or i32 %6, 24, !dbg !4342
  %17 = inttoptr i32 %16 to i32*, !dbg !4342
  store volatile i32 %15, i32* %17, align 8, !dbg !4343
  %18 = or i32 %6, 28, !dbg !4344
  %19 = inttoptr i32 %18 to i32*, !dbg !4344
  store volatile i32 %15, i32* %19, align 4, !dbg !4345
  %20 = or i32 %6, 8, !dbg !4346
  %21 = inttoptr i32 %20 to i32*, !dbg !4346
  %22 = load volatile i32, i32* %21, align 8, !dbg !4346
  call void @llvm.dbg.value(metadata i32 %22, metadata !4330, metadata !DIExpression()), !dbg !4332
  %23 = and i32 %22, 65525, !dbg !4347
  %24 = or i32 %23, 10, !dbg !4347
  call void @llvm.dbg.value(metadata i32 %22, metadata !4330, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !4332
  store volatile i32 %24, i32* %21, align 8, !dbg !4348
  %25 = and i32 %9, 65535, !dbg !4349
  store volatile i32 %25, i32* %8, align 4, !dbg !4350
  %26 = zext i8 %3 to i32, !dbg !4351
  %27 = or i32 %6, 64, !dbg !4352
  %28 = inttoptr i32 %27 to i32*, !dbg !4352
  store volatile i32 %26, i32* %28, align 64, !dbg !4353
  %29 = or i32 %6, 68, !dbg !4354
  %30 = inttoptr i32 %29 to i32*, !dbg !4354
  store volatile i32 1, i32* %30, align 4, !dbg !4355
  ret void, !dbg !4356
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !4357 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4359, metadata !DIExpression()), !dbg !4362
  %2 = icmp eq i32 %0, 0, !dbg !4363
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %3, metadata !4360, metadata !DIExpression()), !dbg !4362
  %4 = or i32 %3, 12, !dbg !4364
  %5 = inttoptr i32 %4 to i32*, !dbg !4364
  %6 = load volatile i32, i32* %5, align 4, !dbg !4364
  call void @llvm.dbg.value(metadata i32 %6, metadata !4361, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4362
  store volatile i32 191, i32* %5, align 4, !dbg !4365
  %7 = or i32 %3, 8, !dbg !4366
  %8 = inttoptr i32 %7 to i32*, !dbg !4366
  store volatile i32 0, i32* %8, align 8, !dbg !4367
  store volatile i32 0, i32* %5, align 4, !dbg !4368
  %9 = and i32 %6, 65535, !dbg !4369
  store volatile i32 %9, i32* %5, align 4, !dbg !4370
  ret void, !dbg !4371
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #1 !dbg !4372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4374, metadata !DIExpression()), !dbg !4376
  %2 = icmp eq i32 %0, 0, !dbg !4377
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4377
  call void @llvm.dbg.value(metadata i32 %3, metadata !4375, metadata !DIExpression()), !dbg !4376
  %4 = or i32 %3, 12, !dbg !4378
  %5 = inttoptr i32 %4 to i32*, !dbg !4378
  store volatile i32 191, i32* %5, align 4, !dbg !4379
  %6 = or i32 %3, 8, !dbg !4380
  %7 = inttoptr i32 %6 to i32*, !dbg !4380
  store volatile i32 16, i32* %7, align 8, !dbg !4381
  %8 = or i32 %3, 16, !dbg !4382
  %9 = inttoptr i32 %8 to i32*, !dbg !4382
  store volatile i32 0, i32* %9, align 16, !dbg !4383
  %10 = or i32 %3, 24, !dbg !4384
  %11 = inttoptr i32 %10 to i32*, !dbg !4384
  store volatile i32 0, i32* %11, align 8, !dbg !4385
  store volatile i32 128, i32* %5, align 4, !dbg !4386
  %12 = inttoptr i32 %3 to i32*, !dbg !4387
  store volatile i32 0, i32* %12, align 65536, !dbg !4388
  %13 = or i32 %3, 4, !dbg !4389
  %14 = inttoptr i32 %13 to i32*, !dbg !4389
  store volatile i32 0, i32* %14, align 4, !dbg !4390
  store volatile i32 0, i32* %5, align 4, !dbg !4391
  store volatile i32 0, i32* %14, align 4, !dbg !4392
  store volatile i32 0, i32* %7, align 8, !dbg !4393
  store volatile i32 191, i32* %5, align 4, !dbg !4394
  store volatile i32 0, i32* %7, align 8, !dbg !4395
  store volatile i32 0, i32* %5, align 4, !dbg !4396
  store volatile i32 0, i32* %9, align 16, !dbg !4397
  %15 = or i32 %3, 28, !dbg !4398
  %16 = inttoptr i32 %15 to i32*, !dbg !4398
  store volatile i32 0, i32* %16, align 4, !dbg !4399
  %17 = or i32 %3, 36, !dbg !4400
  %18 = inttoptr i32 %17 to i32*, !dbg !4400
  store volatile i32 0, i32* %18, align 4, !dbg !4401
  %19 = or i32 %3, 40, !dbg !4402
  %20 = inttoptr i32 %19 to i32*, !dbg !4402
  store volatile i32 0, i32* %20, align 8, !dbg !4403
  %21 = or i32 %3, 44, !dbg !4404
  %22 = inttoptr i32 %21 to i32*, !dbg !4404
  store volatile i32 0, i32* %22, align 4, !dbg !4405
  %23 = or i32 %3, 52, !dbg !4406
  %24 = inttoptr i32 %23 to i32*, !dbg !4406
  store volatile i32 0, i32* %24, align 4, !dbg !4407
  %25 = or i32 %3, 60, !dbg !4408
  %26 = inttoptr i32 %25 to i32*, !dbg !4408
  store volatile i32 0, i32* %26, align 4, !dbg !4409
  %27 = or i32 %3, 64, !dbg !4410
  %28 = inttoptr i32 %27 to i32*, !dbg !4410
  store volatile i32 0, i32* %28, align 64, !dbg !4411
  %29 = or i32 %3, 68, !dbg !4412
  %30 = inttoptr i32 %29 to i32*, !dbg !4412
  store volatile i32 0, i32* %30, align 4, !dbg !4413
  %31 = or i32 %3, 72, !dbg !4414
  %32 = inttoptr i32 %31 to i32*, !dbg !4414
  store volatile i32 0, i32* %32, align 8, !dbg !4415
  %33 = or i32 %3, 76, !dbg !4416
  %34 = inttoptr i32 %33 to i32*, !dbg !4416
  store volatile i32 0, i32* %34, align 4, !dbg !4417
  %35 = or i32 %3, 80, !dbg !4418
  %36 = inttoptr i32 %35 to i32*, !dbg !4418
  store volatile i32 0, i32* %36, align 16, !dbg !4419
  %37 = or i32 %3, 84, !dbg !4420
  %38 = inttoptr i32 %37 to i32*, !dbg !4420
  store volatile i32 0, i32* %38, align 4, !dbg !4421
  %39 = or i32 %3, 88, !dbg !4422
  %40 = inttoptr i32 %39 to i32*, !dbg !4422
  store volatile i32 0, i32* %40, align 8, !dbg !4423
  %41 = or i32 %3, 96, !dbg !4424
  %42 = inttoptr i32 %41 to i32*, !dbg !4424
  store volatile i32 0, i32* %42, align 32, !dbg !4425
  ret void, !dbg !4426
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #1 !dbg !4427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4429, metadata !DIExpression()), !dbg !4431
  %2 = icmp eq i32 %0, 0, !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4430, metadata !DIExpression()), !dbg !4431
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !4433

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !4434
  %7 = and i32 %6, 64, !dbg !4435
  %8 = icmp eq i32 %7, 0, !dbg !4436
  br i1 %8, label %5, label %9, !dbg !4433, !llvm.loop !4437

9:                                                ; preds = %5
  ret void, !dbg !4439
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4440 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4444, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i32 %1, metadata !4445, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i8* %2, metadata !4446, metadata !DIExpression()), !dbg !4457
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4458
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4458
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4447, metadata !DIExpression()), !dbg !4459
  %7 = bitcast i32* %5 to i8*, !dbg !4460
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4460
  call void @llvm.dbg.value(metadata i32* %5, metadata !4456, metadata !DIExpression(DW_OP_deref)), !dbg !4457
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #18, !dbg !4461
  call void @llvm.va_start(i8* nonnull %6), !dbg !4462
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4463
  %10 = load i32, i32* %9, align 4, !dbg !4463
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4463
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #18, !dbg !4463
  call void @llvm.va_end(i8* nonnull %6), !dbg !4464
  %13 = load i32, i32* %5, align 4, !dbg !4465
  call void @llvm.dbg.value(metadata i32 %13, metadata !4456, metadata !DIExpression()), !dbg !4457
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #18, !dbg !4466
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4467
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4467
  ret void, !dbg !4467
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4468 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4470, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i32 %1, metadata !4471, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i8* %2, metadata !4472, metadata !DIExpression()), !dbg !4475
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4476
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4476
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4473, metadata !DIExpression()), !dbg !4477
  %7 = bitcast i32* %5 to i8*, !dbg !4478
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4478
  call void @llvm.dbg.value(metadata i32* %5, metadata !4474, metadata !DIExpression(DW_OP_deref)), !dbg !4475
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #18, !dbg !4479
  call void @llvm.va_start(i8* nonnull %6), !dbg !4480
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4481
  %10 = load i32, i32* %9, align 4, !dbg !4481
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4481
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #18, !dbg !4481
  call void @llvm.va_end(i8* nonnull %6), !dbg !4482
  %13 = load i32, i32* %5, align 4, !dbg !4483
  call void @llvm.dbg.value(metadata i32 %13, metadata !4474, metadata !DIExpression()), !dbg !4475
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #18, !dbg !4484
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4485
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4485
  ret void, !dbg !4485
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4486 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4488, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 %1, metadata !4489, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i8* %2, metadata !4490, metadata !DIExpression()), !dbg !4493
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4494
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4494
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4491, metadata !DIExpression()), !dbg !4495
  %7 = bitcast i32* %5 to i8*, !dbg !4496
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4496
  call void @llvm.dbg.value(metadata i32* %5, metadata !4492, metadata !DIExpression(DW_OP_deref)), !dbg !4493
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #18, !dbg !4497
  call void @llvm.va_start(i8* nonnull %6), !dbg !4498
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4499
  %10 = load i32, i32* %9, align 4, !dbg !4499
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4499
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #18, !dbg !4499
  call void @llvm.va_end(i8* nonnull %6), !dbg !4500
  %13 = load i32, i32* %5, align 4, !dbg !4501
  call void @llvm.dbg.value(metadata i32 %13, metadata !4492, metadata !DIExpression()), !dbg !4493
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #18, !dbg !4502
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4503
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4503
  ret void, !dbg !4503
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !4504 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 %1, metadata !4507, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8* %2, metadata !4508, metadata !DIExpression()), !dbg !4511
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4512
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4512
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4509, metadata !DIExpression()), !dbg !4513
  %7 = bitcast i32* %5 to i8*, !dbg !4514
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4514
  call void @llvm.dbg.value(metadata i32* %5, metadata !4510, metadata !DIExpression(DW_OP_deref)), !dbg !4511
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #18, !dbg !4515
  call void @llvm.va_start(i8* nonnull %6), !dbg !4516
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4517
  %10 = load i32, i32* %9, align 4, !dbg !4517
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4517
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #18, !dbg !4517
  call void @llvm.va_end(i8* nonnull %6), !dbg !4518
  %13 = load i32, i32* %5, align 4, !dbg !4519
  call void @llvm.dbg.value(metadata i32 %13, metadata !4510, metadata !DIExpression()), !dbg !4511
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #18, !dbg !4520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !4521
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4521
  ret void, !dbg !4521
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #11 !dbg !4522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4528, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i32 %1, metadata !4529, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i8* %2, metadata !4530, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i8* %3, metadata !4531, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.value(metadata i32 %4, metadata !4532, metadata !DIExpression()), !dbg !4533
  ret void, !dbg !4534
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !4535 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4543
  call void @llvm.dbg.value(metadata i32 %1, metadata !4542, metadata !DIExpression()), !dbg !4544
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !4545, !range !1612
  %3 = icmp eq i8 %2, 0, !dbg !4545
  br i1 %3, label %5, label %4, !dbg !4547

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !4548
  br label %15, !dbg !4550

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !4551
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !4553
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #16, !dbg !4554
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4555
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4556
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4557
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4558
  call void @llvm.dbg.value(metadata i32 0, metadata !4540, metadata !DIExpression()), !dbg !4544
  br label %7, !dbg !4559

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !4540, metadata !DIExpression()), !dbg !4544
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !4561
  store volatile i32 0, i32* %9, align 4, !dbg !4564
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !4565
  store volatile i32 0, i32* %10, align 4, !dbg !4566
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !4567
  store i32 0, i32* %11, align 4, !dbg !4568
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !4569
  store i32 0, i32* %12, align 4, !dbg !4570
  %13 = add nuw nsw i32 %8, 1, !dbg !4571
  call void @llvm.dbg.value(metadata i32 %13, metadata !4540, metadata !DIExpression()), !dbg !4544
  %14 = icmp eq i32 %13, 16, !dbg !4572
  br i1 %14, label %15, label %7, !dbg !4559, !llvm.loop !4573

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !4544
  ret i32 %16, !dbg !4575
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4576 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4579
  call void @llvm.dbg.value(metadata i32 %1, metadata !4578, metadata !DIExpression()), !dbg !4580
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4581
  %3 = and i32 %2, -31, !dbg !4581
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4581
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4582
  %5 = or i32 %4, 19, !dbg !4582
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4582
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4583
  %7 = and i32 %6, -31, !dbg !4583
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4583
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4584
  %9 = or i32 %8, 3, !dbg !4584
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4584
  tail call void asm sideeffect "isb", ""() #17, !dbg !4585, !srcloc !4589
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !4590
  ret i32 0, !dbg !4591
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !4592 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #16, !dbg !4595
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4596
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4597
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4598
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4599
  call void @llvm.dbg.value(metadata i32 0, metadata !4594, metadata !DIExpression()), !dbg !4600
  br label %2, !dbg !4601

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4594, metadata !DIExpression()), !dbg !4600
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !4603
  store volatile i32 0, i32* %4, align 4, !dbg !4606
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !4607
  store volatile i32 0, i32* %5, align 4, !dbg !4608
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !4609
  store i32 0, i32* %6, align 4, !dbg !4610
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !4611
  store i32 0, i32* %7, align 4, !dbg !4612
  %8 = add nuw nsw i32 %3, 1, !dbg !4613
  call void @llvm.dbg.value(metadata i32 %8, metadata !4594, metadata !DIExpression()), !dbg !4600
  %9 = icmp eq i32 %8, 16, !dbg !4614
  br i1 %9, label %10, label %2, !dbg !4601, !llvm.loop !4615

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !4617
  ret i32 0, !dbg !4618
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #1 !dbg !4619 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4620
  %2 = and i32 %1, 768, !dbg !4622
  %3 = icmp eq i32 %2, 0, !dbg !4622
  br i1 %3, label %8, label %4, !dbg !4623

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4624
  %6 = or i32 %5, 13, !dbg !4624
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4624
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4625
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4626
  br label %8, !dbg !4627

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !4628
  ret i32 %9, !dbg !4629
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !4630 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4633
  call void @llvm.dbg.value(metadata i32 %1, metadata !4632, metadata !DIExpression()), !dbg !4634
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4635
  %3 = and i32 %2, 1, !dbg !4637
  %4 = icmp eq i32 %3, 0, !dbg !4637
  br i1 %4, label %7, label %5, !dbg !4638

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #16, !dbg !4639
  br label %7, !dbg !4641

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4642
  %9 = and i32 %8, -2, !dbg !4642
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4642
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4643
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4644
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !4645
  ret i32 0, !dbg !4646
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #1 !dbg !4647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4651, metadata !DIExpression()), !dbg !4652
  %2 = icmp ugt i32 %0, 15, !dbg !4653
  br i1 %2, label %13, label %3, !dbg !4655

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4656
  %5 = load volatile i32, i32* %4, align 4, !dbg !4656
  %6 = and i32 %5, 256, !dbg !4658
  %7 = icmp eq i32 %6, 0, !dbg !4658
  br i1 %7, label %13, label %8, !dbg !4659

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !4660
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4662
  %11 = or i32 %10, %9, !dbg !4662
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4662
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4663
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !4664
  br label %13, !dbg !4665

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !4652
  ret i32 %14, !dbg !4666
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #1 !dbg !4667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4669, metadata !DIExpression()), !dbg !4670
  %2 = icmp ugt i32 %0, 15, !dbg !4671
  br i1 %2, label %11, label %3, !dbg !4673

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !4674
  %5 = xor i32 %4, -1, !dbg !4675
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4676
  %7 = and i32 %6, %5, !dbg !4676
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4676
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4677
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !4678
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4679
  store i32 0, i32* %9, align 4, !dbg !4680
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4681
  store i32 0, i32* %10, align 4, !dbg !4682
  br label %11, !dbg !4683

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4670
  ret i32 %12, !dbg !4684
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #1 !dbg !4685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4690, metadata !DIExpression()), !dbg !4691
  %2 = icmp ugt i32 %0, 3, !dbg !4692
  br i1 %2, label %13, label %3, !dbg !4694

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4695
  %5 = and i32 %4, -769, !dbg !4695
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4695
  %6 = shl nuw nsw i32 %0, 8, !dbg !4696
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4697
  %8 = or i32 %7, %6, !dbg !4697
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4697
  %9 = icmp eq i32 %0, 0, !dbg !4698
  br i1 %9, label %10, label %11, !dbg !4700

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4701
  br label %11, !dbg !4703

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4704
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4705
  br label %13, !dbg !4706

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !4691
  ret i32 %14, !dbg !4707
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.DMA_SWCOPYMENU* noundef readonly %1) local_unnamed_addr #3 !dbg !4708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4719, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata %struct.DMA_SWCOPYMENU* %1, metadata !4720, metadata !DIExpression()), !dbg !4721
  %3 = icmp ugt i32 %0, 15, !dbg !4722
  br i1 %3, label %30, label %4, !dbg !4724

4:                                                ; preds = %2
  %5 = icmp eq %struct.DMA_SWCOPYMENU* %1, null, !dbg !4725
  br i1 %5, label %30, label %6, !dbg !4727

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 0, !dbg !4728
  %8 = load i32, i32* %7, align 4, !dbg !4728
  %9 = and i32 %8, 4095, !dbg !4730
  %10 = icmp eq i32 %9, 0, !dbg !4730
  br i1 %10, label %12, label %11, !dbg !4731

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.10, i32 0, i32 0)) #19, !dbg !4732
  unreachable, !dbg !4732

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 1, !dbg !4734
  %14 = load i32, i32* %13, align 4, !dbg !4734
  %15 = and i32 %14, 4095, !dbg !4736
  %16 = icmp eq i32 %15, 0, !dbg !4736
  br i1 %16, label %18, label %17, !dbg !4737

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.10, i32 0, i32 0)) #19, !dbg !4738
  unreachable, !dbg !4738

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4740
  store volatile i32 %8, i32* %19, align 4, !dbg !4741
  %20 = load i32, i32* %7, align 4, !dbg !4742
  %21 = load i32, i32* %13, align 4, !dbg !4743
  %22 = add i32 %21, %20, !dbg !4744
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !4745
  store volatile i32 %22, i32* %23, align 4, !dbg !4746
  %24 = load volatile i32, i32* %19, align 4, !dbg !4747
  %25 = or i32 %24, 256, !dbg !4747
  store volatile i32 %25, i32* %19, align 4, !dbg !4747
  %26 = load volatile i32, i32* %19, align 4, !dbg !4748
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4749
  store i32 %26, i32* %27, align 4, !dbg !4750
  %28 = load volatile i32, i32* %23, align 4, !dbg !4751
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4752
  store i32 %28, i32* %29, align 4, !dbg !4753
  br label %30, !dbg !4754

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !4721
  ret i32 %31, !dbg !4755
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4760, metadata !DIExpression()), !dbg !4762
  %2 = and i32 %0, 31, !dbg !4763
  %3 = icmp eq i32 %2, 0, !dbg !4763
  br i1 %3, label %4, label %9, !dbg !4765

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4766
  call void @llvm.dbg.value(metadata i32 %5, metadata !4761, metadata !DIExpression()), !dbg !4762
  %6 = and i32 %0, -32, !dbg !4767
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4768
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4769
  %8 = or i32 %7, 5, !dbg !4769
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4769
  tail call void asm sideeffect "isb", ""() #17, !dbg !4770, !srcloc !4589
  tail call void @restore_interrupt_mask(i32 noundef %5) #18, !dbg !4772
  br label %9, !dbg !4773

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4762
  ret i32 %10, !dbg !4774
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4779, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 %1, metadata !4780, metadata !DIExpression()), !dbg !4783
  %3 = add i32 %1, %0, !dbg !4784
  call void @llvm.dbg.value(metadata i32 %3, metadata !4782, metadata !DIExpression()), !dbg !4783
  %4 = or i32 %1, %0, !dbg !4785
  %5 = and i32 %4, 31, !dbg !4785
  %6 = icmp eq i32 %5, 0, !dbg !4785
  br i1 %6, label %7, label %16, !dbg !4785

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %8, metadata !4781, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 %0, metadata !4779, metadata !DIExpression()), !dbg !4783
  %9 = icmp ugt i32 %3, %0, !dbg !4788
  br i1 %9, label %10, label %15, !dbg !4789

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4779, metadata !DIExpression()), !dbg !4783
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #16, !dbg !4790
  %13 = add i32 %11, 32, !dbg !4792
  call void @llvm.dbg.value(metadata i32 %13, metadata !4779, metadata !DIExpression()), !dbg !4783
  %14 = icmp ult i32 %13, %3, !dbg !4788
  br i1 %14, label %10, label %15, !dbg !4789, !llvm.loop !4793

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #17, !dbg !4795, !srcloc !4589
  tail call void @restore_interrupt_mask(i32 noundef %8) #18, !dbg !4797
  br label %16, !dbg !4798

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4783
  ret i32 %17, !dbg !4799
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4800 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4802, metadata !DIExpression()), !dbg !4804
  %2 = and i32 %0, 31, !dbg !4805
  %3 = icmp eq i32 %2, 0, !dbg !4805
  br i1 %3, label %4, label %9, !dbg !4807

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4808
  call void @llvm.dbg.value(metadata i32 %5, metadata !4803, metadata !DIExpression()), !dbg !4804
  %6 = and i32 %0, -32, !dbg !4809
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4810
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4811
  %8 = or i32 %7, 21, !dbg !4811
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4811
  tail call void asm sideeffect "isb", ""() #17, !dbg !4812, !srcloc !4589
  tail call void @restore_interrupt_mask(i32 noundef %5) #18, !dbg !4814
  br label %9, !dbg !4815

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4804
  ret i32 %10, !dbg !4816
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4819, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 %1, metadata !4820, metadata !DIExpression()), !dbg !4823
  %3 = add i32 %1, %0, !dbg !4824
  call void @llvm.dbg.value(metadata i32 %3, metadata !4822, metadata !DIExpression()), !dbg !4823
  %4 = or i32 %1, %0, !dbg !4825
  %5 = and i32 %4, 31, !dbg !4825
  %6 = icmp eq i32 %5, 0, !dbg !4825
  br i1 %6, label %7, label %16, !dbg !4825

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4827
  call void @llvm.dbg.value(metadata i32 %8, metadata !4821, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i32 %0, metadata !4819, metadata !DIExpression()), !dbg !4823
  %9 = icmp ugt i32 %3, %0, !dbg !4828
  br i1 %9, label %10, label %15, !dbg !4829

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4819, metadata !DIExpression()), !dbg !4823
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #16, !dbg !4830
  %13 = add i32 %11, 32, !dbg !4832
  call void @llvm.dbg.value(metadata i32 %13, metadata !4819, metadata !DIExpression()), !dbg !4823
  %14 = icmp ult i32 %13, %3, !dbg !4828
  br i1 %14, label %10, label %15, !dbg !4829, !llvm.loop !4833

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #17, !dbg !4835, !srcloc !4589
  tail call void @restore_interrupt_mask(i32 noundef %8) #18, !dbg !4837
  br label %16, !dbg !4838

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4823
  ret i32 %17, !dbg !4839
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4840 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !4843
  call void @llvm.dbg.value(metadata i32 %1, metadata !4842, metadata !DIExpression()), !dbg !4844
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4845
  %3 = and i32 %2, -31, !dbg !4845
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4845
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4846
  %5 = or i32 %4, 19, !dbg !4846
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4846
  tail call void asm sideeffect "isb", ""() #17, !dbg !4847, !srcloc !4589
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !4849
  ret i32 0, !dbg !4850
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #1 !dbg !4851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4855, metadata !DIExpression()), !dbg !4857
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4858
  %3 = and i32 %2, 8, !dbg !4860
  %4 = icmp eq i32 %3, 0, !dbg !4860
  br i1 %4, label %23, label %5, !dbg !4861

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4856, metadata !DIExpression()), !dbg !4857
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4862
  %8 = shl nuw nsw i32 1, %6, !dbg !4867
  %9 = and i32 %7, %8, !dbg !4868
  %10 = icmp eq i32 %9, 0, !dbg !4868
  br i1 %10, label %20, label %11, !dbg !4869

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4870
  %13 = load volatile i32, i32* %12, align 4, !dbg !4870
  %14 = and i32 %13, -257, !dbg !4873
  %15 = icmp ugt i32 %14, %0, !dbg !4874
  br i1 %15, label %20, label %16, !dbg !4875

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !4876
  %18 = load volatile i32, i32* %17, align 4, !dbg !4876
  %19 = icmp ugt i32 %18, %0, !dbg !4877
  br i1 %19, label %23, label %20, !dbg !4878

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !4879
  call void @llvm.dbg.value(metadata i32 %21, metadata !4856, metadata !DIExpression()), !dbg !4857
  %22 = icmp eq i32 %21, 16, !dbg !4880
  br i1 %22, label %23, label %5, !dbg !4881, !llvm.loop !4882

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4857
  ret i1 %24, !dbg !4884
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #11 !dbg !4885 {
  ret i32 0, !dbg !4889
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4894, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i32 -1, metadata !4895, metadata !DIExpression()), !dbg !4896
  %2 = icmp ugt i32 %0, 95, !dbg !4897
  br i1 %2, label %4, label %3, !dbg !4897

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #16, !dbg !4899
  call void @llvm.dbg.value(metadata i32 0, metadata !4895, metadata !DIExpression()), !dbg !4896
  br label %4, !dbg !4901

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4896
  ret i32 %5, !dbg !4902
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4908
  %2 = and i32 %0, 31, !dbg !4909
  %3 = shl nuw i32 1, %2, !dbg !4910
  %4 = lshr i32 %0, 5, !dbg !4911
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4912
  store volatile i32 %3, i32* %5, align 4, !dbg !4913
  ret void, !dbg !4914
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4917, metadata !DIExpression()), !dbg !4919
  call void @llvm.dbg.value(metadata i32 -1, metadata !4918, metadata !DIExpression()), !dbg !4919
  %2 = icmp ugt i32 %0, 95, !dbg !4920
  br i1 %2, label %4, label %3, !dbg !4920

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #16, !dbg !4922
  call void @llvm.dbg.value(metadata i32 0, metadata !4918, metadata !DIExpression()), !dbg !4919
  br label %4, !dbg !4924

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4919
  ret i32 %5, !dbg !4925
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4926 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4928, metadata !DIExpression()), !dbg !4929
  %2 = and i32 %0, 31, !dbg !4930
  %3 = shl nuw i32 1, %2, !dbg !4931
  %4 = lshr i32 %0, 5, !dbg !4932
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4933
  store volatile i32 %3, i32* %5, align 4, !dbg !4934
  ret void, !dbg !4935
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #6 !dbg !4936 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4940, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i32 255, metadata !4941, metadata !DIExpression()), !dbg !4942
  %2 = icmp ugt i32 %0, 95, !dbg !4943
  br i1 %2, label %5, label %3, !dbg !4943

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #16, !dbg !4945
  call void @llvm.dbg.value(metadata i32 %4, metadata !4941, metadata !DIExpression()), !dbg !4942
  br label %5, !dbg !4947

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4942
  ret i32 %6, !dbg !4948
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !4949 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4953, metadata !DIExpression()), !dbg !4954
  %2 = lshr i32 %0, 5, !dbg !4955
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4956
  %4 = load volatile i32, i32* %3, align 4, !dbg !4956
  %5 = and i32 %0, 31, !dbg !4957
  %6 = lshr i32 %4, %5, !dbg !4958
  %7 = and i32 %6, 1, !dbg !4958
  ret i32 %7, !dbg !4959
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4962, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i32 -1, metadata !4963, metadata !DIExpression()), !dbg !4964
  %2 = icmp ugt i32 %0, 95, !dbg !4965
  br i1 %2, label %4, label %3, !dbg !4965

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #16, !dbg !4967
  call void @llvm.dbg.value(metadata i32 0, metadata !4963, metadata !DIExpression()), !dbg !4964
  br label %4, !dbg !4969

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4964
  ret i32 %5, !dbg !4970
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4971 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4973, metadata !DIExpression()), !dbg !4974
  %2 = and i32 %0, 31, !dbg !4975
  %3 = shl nuw i32 1, %2, !dbg !4976
  %4 = lshr i32 %0, 5, !dbg !4977
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4978
  store volatile i32 %3, i32* %5, align 4, !dbg !4979
  ret void, !dbg !4980
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4981 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4983, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.value(metadata i32 -1, metadata !4984, metadata !DIExpression()), !dbg !4985
  %2 = icmp ugt i32 %0, 95, !dbg !4986
  br i1 %2, label %4, label %3, !dbg !4986

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #16, !dbg !4988
  call void @llvm.dbg.value(metadata i32 0, metadata !4984, metadata !DIExpression()), !dbg !4985
  br label %4, !dbg !4990

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4985
  ret i32 %5, !dbg !4991
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4994, metadata !DIExpression()), !dbg !4995
  %2 = and i32 %0, 31, !dbg !4996
  %3 = shl nuw i32 1, %2, !dbg !4997
  %4 = lshr i32 %0, 5, !dbg !4998
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4999
  store volatile i32 %3, i32* %5, align 4, !dbg !5000
  ret void, !dbg !5001
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !5002 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5006, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i32 %1, metadata !5007, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i32 -1, metadata !5008, metadata !DIExpression()), !dbg !5009
  %3 = icmp ugt i32 %0, 95, !dbg !5010
  br i1 %3, label %5, label %4, !dbg !5010

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #16, !dbg !5012
  call void @llvm.dbg.value(metadata i32 0, metadata !5008, metadata !DIExpression()), !dbg !5009
  br label %5, !dbg !5014

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !5009
  ret i32 %6, !dbg !5015
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !5016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5020, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.value(metadata i32 %1, metadata !5021, metadata !DIExpression()), !dbg !5022
  %3 = trunc i32 %1 to i8, !dbg !5023
  %4 = shl i8 %3, 5, !dbg !5023
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5026
  store volatile i8 %4, i8* %5, align 1, !dbg !5027
  ret void, !dbg !5028
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #6 !dbg !5029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5031, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.value(metadata i32 68, metadata !5032, metadata !DIExpression()), !dbg !5033
  %2 = icmp ugt i32 %0, 95, !dbg !5034
  br i1 %2, label %5, label %3, !dbg !5034

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #16, !dbg !5036
  call void @llvm.dbg.value(metadata i32 %4, metadata !5032, metadata !DIExpression()), !dbg !5033
  br label %5, !dbg !5038

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !5033
  ret i32 %6, !dbg !5039
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #6 !dbg !5040 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5042, metadata !DIExpression()), !dbg !5043
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5044
  %3 = load volatile i8, i8* %2, align 1, !dbg !5044
  %4 = lshr i8 %3, 5, !dbg !5047
  %5 = zext i8 %4 to i32, !dbg !5047
  ret i32 %5, !dbg !5048
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #11 !dbg !5049 {
  ret void, !dbg !5050
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !5051 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !5053, metadata !DIExpression()), !dbg !5055
  %1 = tail call fastcc i32 @get_current_irq() #16, !dbg !5056
  call void @llvm.dbg.value(metadata i32 %1, metadata !5054, metadata !DIExpression()), !dbg !5055
  %2 = icmp ugt i32 %1, 95, !dbg !5057
  br i1 %2, label %12, label %3, !dbg !5057

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !5059
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !5059
  %6 = icmp eq void (i32)* %5, null, !dbg !5061
  br i1 %6, label %7, label %8, !dbg !5062

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !5053, metadata !DIExpression()), !dbg !5055
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #18, !dbg !5063
  br label %12, !dbg !5065

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #16, !dbg !5066
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !5068
  store i32 %9, i32* %10, align 4, !dbg !5069
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !5070
  tail call void %11(i32 noundef %1) #18, !dbg !5071
  call void @llvm.dbg.value(metadata i32 0, metadata !5053, metadata !DIExpression()), !dbg !5055
  br label %12, !dbg !5072

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !5055
  ret i32 %13, !dbg !5073
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #6 !dbg !5074 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5077
  %2 = and i32 %1, 511, !dbg !5078
  call void @llvm.dbg.value(metadata i32 %2, metadata !5076, metadata !DIExpression()), !dbg !5079
  %3 = add nsw i32 %2, -16, !dbg !5080
  ret i32 %3, !dbg !5081
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #6 !dbg !5082 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5083
  %2 = lshr i32 %1, 22, !dbg !5084
  %3 = and i32 %2, 1, !dbg !5084
  ret i32 %3, !dbg !5085
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !5086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5091, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !5092, metadata !DIExpression()), !dbg !5094
  %3 = icmp ugt i32 %0, 95, !dbg !5095
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !5095
  br i1 %5, label %10, label %6, !dbg !5095

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !5097
  call void @llvm.dbg.value(metadata i32 %7, metadata !5093, metadata !DIExpression()), !dbg !5094
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #16, !dbg !5098
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !5099
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !5100
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !5101
  store i32 0, i32* %9, align 4, !dbg !5102
  tail call void @restore_interrupt_mask(i32 noundef %7) #18, !dbg !5103
  br label %10, !dbg !5104

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !5094
  ret i32 %11, !dbg !5105
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !5106 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5110, metadata !DIExpression()), !dbg !5111
  %2 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !5112
  store i32 %2, i32* %0, align 4, !dbg !5113
  ret i32 0, !dbg !5114
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !5115 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5119, metadata !DIExpression()), !dbg !5120
  tail call void @restore_interrupt_mask(i32 noundef %0) #18, !dbg !5121
  ret i32 0, !dbg !5122
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5129, metadata !DIExpression()), !dbg !5132
  call void @llvm.dbg.value(metadata i8 %1, metadata !5130, metadata !DIExpression()), !dbg !5132
  %3 = icmp ugt i32 %0, 60, !dbg !5133
  br i1 %3, label %11, label %4, !dbg !5135

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !5136
  br i1 %5, label %11, label %6, !dbg !5138

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !5139
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #18, !dbg !5140
  call void @llvm.dbg.value(metadata i32 %8, metadata !5131, metadata !DIExpression()), !dbg !5132
  %9 = icmp slt i32 %8, 0, !dbg !5141
  %10 = select i1 %9, i32 -3, i32 0, !dbg !5141
  br label %11, !dbg !5142

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !5132
  ret i32 %12, !dbg !5143
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #11 !dbg !5144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5149, metadata !DIExpression()), !dbg !5150
  ret i32 0, !dbg !5151
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #11 !dbg !5152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5154, metadata !DIExpression()), !dbg !5155
  ret i32 0, !dbg !5156
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5157 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5162, metadata !DIExpression()), !dbg !5172
  call void @llvm.dbg.value(metadata i32* %1, metadata !5163, metadata !DIExpression()), !dbg !5172
  %4 = icmp eq i32* %1, null, !dbg !5173
  br i1 %4, label %12, label %5, !dbg !5175

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !5176
  br i1 %6, label %12, label %7, !dbg !5178

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5179
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !5179
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #18, !dbg !5179
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !5179
  %10 = load i8, i8* %9, align 1, !dbg !5179
  call void @llvm.dbg.value(metadata i8 %10, metadata !5164, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !5172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !5179
  %11 = zext i8 %10 to i32, !dbg !5180
  store i32 %11, i32* %1, align 4, !dbg !5181
  br label %12, !dbg !5182

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !5172
  ret i32 %13, !dbg !5183
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5184 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5188, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i32 %1, metadata !5189, metadata !DIExpression()), !dbg !5191
  %3 = icmp ugt i32 %0, 60, !dbg !5192
  br i1 %3, label %9, label %4, !dbg !5194

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !5195
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #18, !dbg !5196
  call void @llvm.dbg.value(metadata i32 %6, metadata !5190, metadata !DIExpression()), !dbg !5191
  %7 = icmp slt i32 %6, 0, !dbg !5197
  %8 = select i1 %7, i32 -3, i32 0, !dbg !5197
  br label %9, !dbg !5198

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !5191
  ret i32 %10, !dbg !5199
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5200 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5202, metadata !DIExpression()), !dbg !5205
  call void @llvm.dbg.value(metadata i32* %1, metadata !5203, metadata !DIExpression()), !dbg !5205
  %4 = icmp ugt i32 %0, 60, !dbg !5206
  br i1 %4, label %12, label %5, !dbg !5208

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !5209
  br i1 %6, label %12, label %7, !dbg !5211

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !5212
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #18, !dbg !5212
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !5212
  %10 = load i8, i8* %9, align 2, !dbg !5212
  call void @llvm.dbg.value(metadata i8 %10, metadata !5204, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !5205
  call void @llvm.dbg.value(metadata i8 undef, metadata !5204, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !5205
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !5212
  %11 = zext i8 %10 to i32, !dbg !5213
  store i32 %11, i32* %1, align 4, !dbg !5214
  br label %12, !dbg !5215

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !5205
  ret i32 %13, !dbg !5216
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5222, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.value(metadata i32 %1, metadata !5223, metadata !DIExpression()), !dbg !5225
  %3 = icmp ugt i32 %0, 60, !dbg !5226
  br i1 %3, label %8, label %4, !dbg !5228

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #18, !dbg !5229
  call void @llvm.dbg.value(metadata i32 %5, metadata !5224, metadata !DIExpression()), !dbg !5225
  %6 = icmp slt i32 %5, 0, !dbg !5230
  %7 = select i1 %6, i32 -3, i32 0, !dbg !5230
  br label %8, !dbg !5231

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !5225
  ret i32 %9, !dbg !5232
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !5233 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5238, metadata !DIExpression()), !dbg !5241
  call void @llvm.dbg.value(metadata i32* %1, metadata !5239, metadata !DIExpression()), !dbg !5241
  %4 = icmp ugt i32 %0, 60, !dbg !5242
  br i1 %4, label %13, label %5, !dbg !5244

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !5245
  br i1 %6, label %13, label %7, !dbg !5247

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !5248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !5248
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #18, !dbg !5248
  call void @llvm.dbg.value(metadata i32 undef, metadata !5240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !5241
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !5248
  %10 = load i8, i8* %9, align 4, !dbg !5248
  call void @llvm.dbg.value(metadata i8 %10, metadata !5240, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !5241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !5248
  %11 = icmp ne i8 %10, 0, !dbg !5249
  %12 = zext i1 %11 to i32, !dbg !5249
  store i32 %12, i32* %1, align 4, !dbg !5250
  br label %13, !dbg !5251

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !5241
  ret i32 %14, !dbg !5252
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !5253 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5255, metadata !DIExpression()), !dbg !5257
  %3 = icmp ugt i32 %0, 60, !dbg !5258
  br i1 %3, label %11, label %4, !dbg !5260

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !5261
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #17, !dbg !5261
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #18, !dbg !5261
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !5261
  %7 = load i8, i8* %6, align 2, !dbg !5261
  call void @llvm.dbg.value(metadata i8 %7, metadata !5256, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !5257
  call void @llvm.dbg.value(metadata i8 undef, metadata !5256, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !5257
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #17, !dbg !5261
  %8 = xor i8 %7, 1, !dbg !5262
  %9 = zext i8 %8 to i32, !dbg !5262
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #16, !dbg !5263
  br label %11, !dbg !5264

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !5257
  ret i32 %12, !dbg !5265
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !5266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5268, metadata !DIExpression()), !dbg !5270
  %2 = icmp ugt i32 %0, 60, !dbg !5271
  br i1 %2, label %10, label %3, !dbg !5273

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #18, !dbg !5274
  call void @llvm.dbg.value(metadata i32 %4, metadata !5269, metadata !DIExpression()), !dbg !5270
  %5 = icmp slt i32 %4, 0, !dbg !5275
  br i1 %5, label %10, label %6, !dbg !5277

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #18, !dbg !5278
  call void @llvm.dbg.value(metadata i32 %7, metadata !5269, metadata !DIExpression()), !dbg !5270
  %8 = icmp slt i32 %7, 0, !dbg !5279
  %9 = select i1 %8, i32 -3, i32 0, !dbg !5279
  br label %10, !dbg !5280

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !5270
  ret i32 %11, !dbg !5281
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !5282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5284, metadata !DIExpression()), !dbg !5286
  %2 = icmp ugt i32 %0, 60, !dbg !5287
  br i1 %2, label %10, label %3, !dbg !5289

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #18, !dbg !5290
  call void @llvm.dbg.value(metadata i32 %4, metadata !5285, metadata !DIExpression()), !dbg !5286
  %5 = icmp slt i32 %4, 0, !dbg !5291
  br i1 %5, label %10, label %6, !dbg !5293

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #18, !dbg !5294
  call void @llvm.dbg.value(metadata i32 %7, metadata !5285, metadata !DIExpression()), !dbg !5286
  %8 = icmp slt i32 %7, 0, !dbg !5295
  %9 = select i1 %8, i32 -3, i32 0, !dbg !5295
  br label %10, !dbg !5296

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !5286
  ret i32 %11, !dbg !5297
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !5298 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5300, metadata !DIExpression()), !dbg !5302
  %2 = icmp ugt i32 %0, 60, !dbg !5303
  br i1 %2, label %7, label %3, !dbg !5305

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #18, !dbg !5306
  call void @llvm.dbg.value(metadata i32 %4, metadata !5301, metadata !DIExpression()), !dbg !5302
  %5 = icmp slt i32 %4, 0, !dbg !5307
  %6 = select i1 %5, i32 -3, i32 0, !dbg !5307
  br label %7, !dbg !5308

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !5302
  ret i32 %8, !dbg !5309
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5314, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.value(metadata i32 %1, metadata !5315, metadata !DIExpression()), !dbg !5317
  %3 = icmp ugt i32 %0, 60, !dbg !5318
  br i1 %3, label %9, label %4, !dbg !5320

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !5321
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #18, !dbg !5322
  call void @llvm.dbg.value(metadata i32 %6, metadata !5316, metadata !DIExpression()), !dbg !5317
  %7 = icmp slt i32 %6, 0, !dbg !5323
  %8 = select i1 %7, i32 -3, i32 0, !dbg !5323
  br label %9, !dbg !5324

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !5317
  ret i32 %10, !dbg !5325
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !5326 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5331, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.value(metadata i32* %1, metadata !5332, metadata !DIExpression()), !dbg !5335
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #17, !dbg !5336
  %4 = icmp ugt i32 %0, 60, !dbg !5337
  br i1 %4, label %11, label %5, !dbg !5339

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !5334, metadata !DIExpression(DW_OP_deref)), !dbg !5335
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #18, !dbg !5340
  call void @llvm.dbg.value(metadata i32 %6, metadata !5333, metadata !DIExpression()), !dbg !5335
  %7 = load i8, i8* %3, align 1, !dbg !5341
  call void @llvm.dbg.value(metadata i8 %7, metadata !5334, metadata !DIExpression()), !dbg !5335
  %8 = zext i8 %7 to i32, !dbg !5342
  store i32 %8, i32* %1, align 4, !dbg !5343
  %9 = icmp slt i32 %6, 0, !dbg !5344
  %10 = select i1 %9, i32 -3, i32 0, !dbg !5344
  br label %11, !dbg !5345

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !5335
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #17, !dbg !5346
  ret i32 %12, !dbg !5346
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_init(i32 noundef %0) local_unnamed_addr #3 !dbg !5347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5352, metadata !DIExpression()), !dbg !5353
  %2 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5354
  %3 = icmp eq i8 %2, 0, !dbg !5356
  br i1 %3, label %4, label %12, !dbg !5357

4:                                                ; preds = %1
  switch i32 %0, label %12 [
    i32 3, label %6
    i32 0, label %5
  ], !dbg !5358

5:                                                ; preds = %4
  br label %6, !dbg !5359

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 2, %5 ], [ 0, %4 ], !dbg !5361
  %8 = phi i32 [ 0, %5 ], [ %0, %4 ], !dbg !5361
  store i32 %7, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 0), align 4, !dbg !5361
  store i32 %8, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 4), align 4, !dbg !5361
  %9 = tail call zeroext i8 @I2sCfgInitialSetting(i32 noundef %7, %struct.I2S_GBL_CFG* noundef getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 1), %struct.I2S_DL_CFG* noundef getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2), %struct.I2S_UL_CFG* noundef getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3)) #18, !dbg !5362
  %10 = icmp eq i8 %9, 0, !dbg !5362
  br i1 %10, label %12, label %11, !dbg !5364

11:                                               ; preds = %6
  store volatile i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5365
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 7), align 1, !dbg !5367
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 8), align 2, !dbg !5368
  br label %12, !dbg !5369

12:                                               ; preds = %6, %4, %1, %11
  %13 = phi i32 [ 0, %11 ], [ -1, %1 ], [ -2, %4 ], [ -1, %6 ], !dbg !5353
  ret i32 %13, !dbg !5370
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_deinit() local_unnamed_addr #3 !dbg !5371 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5374
  %2 = icmp eq i8 %1, 1, !dbg !5376
  br i1 %2, label %3, label %7, !dbg !5377

3:                                                ; preds = %0
  store volatile i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5378
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 7), align 1, !dbg !5379
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 8), align 2, !dbg !5380
  %4 = tail call zeroext i8 @I2sReset() #18, !dbg !5381
  %5 = icmp eq i8 %4, 0, !dbg !5381
  %6 = sext i1 %5 to i32, !dbg !5383
  br label %7, !dbg !5383

7:                                                ; preds = %3, %0
  %8 = phi i32 [ -1, %0 ], [ %6, %3 ], !dbg !5384
  ret i32 %8, !dbg !5385
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn
define dso_local i32 @hal_i2s_get_config(%struct.hal_i2s_config_t* nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !5386 {
  call void @llvm.dbg.value(metadata %struct.hal_i2s_config_t* %0, metadata !5391, metadata !DIExpression()), !dbg !5392
  %2 = bitcast %struct.hal_i2s_config_t* %0 to i8*, !dbg !5393
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(60) %2, i8* noundef nonnull align 4 dereferenceable(60) bitcast (%struct.hal_i2s_config_t* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 5) to i8*), i32 60, i1 false), !dbg !5393
  ret i32 0, !dbg !5394
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_set_config(%struct.hal_i2s_config_t* noundef readonly %0) local_unnamed_addr #3 !dbg !5395 {
  call void @llvm.dbg.value(metadata %struct.hal_i2s_config_t* %0, metadata !5401, metadata !DIExpression()), !dbg !5402
  %2 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5403
  %3 = icmp eq i8 %2, 1, !dbg !5405
  br i1 %3, label %7, label %4, !dbg !5406

4:                                                ; preds = %1
  %5 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5407
  %6 = zext i8 %5 to i32, !dbg !5407
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_i2s_set_config, i32 0, i32 0), i32 noundef 149, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i32 noundef %6) #18, !dbg !5407
  br label %66, !dbg !5409

7:                                                ; preds = %1
  %8 = icmp eq %struct.hal_i2s_config_t* %0, null, !dbg !5410
  br i1 %8, label %66, label %9, !dbg !5412

9:                                                ; preds = %7
  tail call void @DMA_Init() #18, !dbg !5413
  tail call void @DMA_Vfifo_init() #18, !dbg !5414
  %10 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 1, i32 0, !dbg !5415
  %11 = load i32, i32* %10, align 4, !dbg !5415
  %12 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 0, i32 0, !dbg !5417
  %13 = load i32, i32* %12, align 4, !dbg !5417
  %14 = icmp eq i32 %11, %13, !dbg !5418
  br i1 %14, label %15, label %66, !dbg !5419

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @i2s_is_sample_rate(i32 noundef %11, i1 noundef zeroext false) #16, !dbg !5420
  %17 = icmp eq i32 %16, 0, !dbg !5422
  br i1 %17, label %18, label %66, !dbg !5423

18:                                               ; preds = %15
  %19 = load i32, i32* %12, align 4, !dbg !5424
  %20 = tail call fastcc i32 @i2s_is_sample_rate(i32 noundef %19, i1 noundef zeroext true) #16, !dbg !5426
  %21 = icmp eq i32 %20, 0, !dbg !5427
  br i1 %21, label %22, label %66, !dbg !5428

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 1, i32 1, !dbg !5429
  %24 = load i32, i32* %23, align 4, !dbg !5429
  switch i32 %24, label %66 [
    i32 1, label %28
    i32 0, label %25
  ], !dbg !5431

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 5
  %27 = load i32, i32* %26, align 4, !dbg !5432
  br label %32, !dbg !5431

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 5, !dbg !5433
  %30 = load i32, i32* %29, align 4, !dbg !5433
  %31 = icmp eq i32 %30, 1, !dbg !5434
  br i1 %31, label %66, label %32, !dbg !5435

32:                                               ; preds = %25, %28
  %33 = phi i32 [ %27, %25 ], [ %30, %28 ], !dbg !5432
  %34 = phi i8 [ 1, %25 ], [ 0, %28 ], !dbg !5436
  store i8 %34, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 1, i32 8), align 4, !dbg !5436
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 4), align 4, !dbg !5438
  %35 = icmp eq i32 %33, 1, !dbg !5440
  %36 = zext i1 %35 to i8, !dbg !5440
  store i8 %36, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 1, i32 5), align 1, !dbg !5441
  %37 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 2, !dbg !5443
  %38 = load i32, i32* %37, align 4, !dbg !5443
  switch i32 %38, label %66 [
    i32 0, label %40
    i32 1, label %39
  ], !dbg !5444

39:                                               ; preds = %32
  br label %40, !dbg !5445

40:                                               ; preds = %32, %39
  %41 = phi i8 [ 1, %39 ], [ 0, %32 ], !dbg !5447
  store i8 %41, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 6), align 4, !dbg !5447
  store i8 %41, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 9), align 1, !dbg !5447
  store i32 1, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 5, i32 4), align 4, !dbg !5448
  store i32 0, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 5, i32 3), align 4, !dbg !5449
  %42 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 1, i32 3, !dbg !5450
  %43 = load i32, i32* %42, align 4, !dbg !5450
  %44 = icmp eq i32 %43, 1, !dbg !5451
  %45 = zext i1 %44 to i8, !dbg !5452
  store i8 %45, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 1, i32 9), align 1, !dbg !5452
  %46 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 0, i32 3, !dbg !5454
  %47 = load i32, i32* %46, align 4, !dbg !5454
  %48 = icmp eq i32 %47, 1, !dbg !5455
  %49 = zext i1 %48 to i8, !dbg !5455
  store i8 %49, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 0), align 4, !dbg !5456
  %50 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 1, i32 2, !dbg !5458
  %51 = load i32, i32* %50, align 4, !dbg !5458
  store i32 %51, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 1), align 4, !dbg !5459
  %52 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 0, i32 2, !dbg !5460
  %53 = load i32, i32* %52, align 4, !dbg !5460
  store i32 %53, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 3), align 4, !dbg !5461
  %54 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 1, i32 4, !dbg !5462
  %55 = load i32, i32* %54, align 4, !dbg !5462
  %56 = icmp eq i32 %55, 1, !dbg !5463
  %57 = zext i1 %56 to i8, !dbg !5463
  store i8 %57, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 4), align 2, !dbg !5464
  %58 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %0, i32 0, i32 0, i32 4, !dbg !5466
  %59 = load i32, i32* %58, align 4, !dbg !5466
  %60 = icmp eq i32 %59, 1, !dbg !5467
  %61 = zext i1 %60 to i8, !dbg !5467
  store i8 %61, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 7), align 1, !dbg !5468
  %62 = tail call zeroext i8 @I2sSetGblCfg(%struct.I2S_GBL_CFG* noundef getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 1)) #18, !dbg !5470
  %63 = tail call zeroext i8 @I2sSetDlCfg(%struct.I2S_DL_CFG* noundef getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2)) #18, !dbg !5471
  %64 = tail call zeroext i8 @I2sSetUlCfg(%struct.I2S_UL_CFG* noundef getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3)) #18, !dbg !5472
  %65 = bitcast %struct.hal_i2s_config_t* %0 to i8*, !dbg !5473
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(60) bitcast (%struct.hal_i2s_config_t* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 5) to i8*), i8* noundef nonnull align 4 dereferenceable(60) %65, i32 60, i1 false), !dbg !5473
  store i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 7), align 1, !dbg !5474
  br label %66, !dbg !5475

66:                                               ; preds = %22, %32, %28, %18, %15, %9, %7, %40, %4
  %67 = phi i32 [ -1, %4 ], [ 0, %40 ], [ -2, %7 ], [ -2, %9 ], [ -2, %15 ], [ -2, %18 ], [ -2, %28 ], [ -2, %32 ], [ -2, %22 ], !dbg !5402
  ret i32 %67, !dbg !5476
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define internal fastcc i32 @i2s_is_sample_rate(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #5 !dbg !5477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5481, metadata !DIExpression()), !dbg !5483
  call void @llvm.dbg.value(metadata i1 %1, metadata !5482, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5483
  switch i32 %0, label %21 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
    i32 3, label %12
    i32 4, label %15
    i32 5, label %18
  ], !dbg !5484

3:                                                ; preds = %2
  br i1 %1, label %4, label %5, !dbg !5485

4:                                                ; preds = %3
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 6), align 2, !dbg !5487
  br label %21, !dbg !5490

5:                                                ; preds = %3
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 3), align 1, !dbg !5491
  br label %21

6:                                                ; preds = %2
  br i1 %1, label %7, label %8, !dbg !5493

7:                                                ; preds = %6
  store i8 2, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 6), align 2, !dbg !5494
  br label %21, !dbg !5497

8:                                                ; preds = %6
  store i8 2, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 3), align 1, !dbg !5498
  br label %21

9:                                                ; preds = %2
  br i1 %1, label %10, label %11, !dbg !5500

10:                                               ; preds = %9
  store i8 4, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 6), align 2, !dbg !5501
  br label %21, !dbg !5504

11:                                               ; preds = %9
  store i8 4, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 3), align 1, !dbg !5505
  br label %21

12:                                               ; preds = %2
  br i1 %1, label %13, label %14, !dbg !5507

13:                                               ; preds = %12
  store i8 6, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 6), align 2, !dbg !5508
  br label %21, !dbg !5511

14:                                               ; preds = %12
  store i8 6, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 3), align 1, !dbg !5512
  br label %21

15:                                               ; preds = %2
  br i1 %1, label %16, label %17, !dbg !5514

16:                                               ; preds = %15
  store i8 8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 6), align 2, !dbg !5515
  br label %21, !dbg !5518

17:                                               ; preds = %15
  store i8 8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 3), align 1, !dbg !5519
  br label %21

18:                                               ; preds = %2
  br i1 %1, label %19, label %20, !dbg !5521

19:                                               ; preds = %18
  store i8 10, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 3, i32 6), align 2, !dbg !5522
  br label %21, !dbg !5525

20:                                               ; preds = %18
  store i8 10, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 2, i32 3), align 1, !dbg !5526
  br label %21

21:                                               ; preds = %5, %4, %8, %7, %11, %10, %14, %13, %17, %16, %20, %19, %2
  %22 = phi i32 [ -2, %2 ], [ 0, %19 ], [ 0, %20 ], [ 0, %16 ], [ 0, %17 ], [ 0, %13 ], [ 0, %14 ], [ 0, %10 ], [ 0, %11 ], [ 0, %7 ], [ 0, %8 ], [ 0, %4 ], [ 0, %5 ], !dbg !5483
  ret i32 %22, !dbg !5528
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_enable_audio_top() local_unnamed_addr #3 !dbg !5529 {
  tail call void @xpllOpen() #18, !dbg !5530
  %1 = tail call zeroext i8 @I2sClkFifoEn(i8 noundef zeroext 1) #18, !dbg !5531
  store i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 8), align 2, !dbg !5532
  ret i32 0, !dbg !5533
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_disable_audio_top() local_unnamed_addr #3 !dbg !5534 {
  %1 = tail call zeroext i8 @I2sClkFifoEn(i8 noundef zeroext 0) #18, !dbg !5535
  tail call void @xpllClose() #18, !dbg !5536
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 8), align 2, !dbg !5537
  ret i32 0, !dbg !5538
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_enable_tx_dma_interrupt() local_unnamed_addr #3 !dbg !5539 {
  %1 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 10), align 4, !dbg !5540
  %2 = icmp eq void (i32, i8*)* %1, null, !dbg !5542
  br i1 %2, label %5, label %3, !dbg !5543

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @I2sSetVdmaTxIntrEn(i8 noundef zeroext 1) #18, !dbg !5544
  store i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 3), align 4, !dbg !5545
  br label %5, !dbg !5546

5:                                                ; preds = %0, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %0 ], !dbg !5547
  ret i32 %6, !dbg !5548
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_disable_tx_dma_interrupt() local_unnamed_addr #3 !dbg !5549 {
  %1 = tail call zeroext i8 @I2sSetVdmaTxIntrEn(i8 noundef zeroext 0) #18, !dbg !5550
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 3), align 4, !dbg !5551
  ret i32 0, !dbg !5552
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_enable_rx_dma_interrupt() local_unnamed_addr #3 !dbg !5553 {
  %1 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 11), align 4, !dbg !5554
  %2 = icmp eq void (i32, i8*)* %1, null, !dbg !5556
  br i1 %2, label %5, label %3, !dbg !5557

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @I2sSetVdmaRxIntrEn(i8 noundef zeroext 1) #18, !dbg !5558
  store i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 8), align 4, !dbg !5559
  br label %5, !dbg !5560

5:                                                ; preds = %0, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %0 ], !dbg !5561
  ret i32 %6, !dbg !5562
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_disable_rx_dma_interrupt() local_unnamed_addr #3 !dbg !5563 {
  %1 = tail call zeroext i8 @I2sSetVdmaRxIntrEn(i8 noundef zeroext 0) #18, !dbg !5564
  store i8 0, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 8), align 4, !dbg !5565
  ret i32 0, !dbg !5566
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_get_tx_sample_count(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !5567 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5571, metadata !DIExpression()), !dbg !5572
  %2 = load i32, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 1), align 4, !dbg !5573
  %3 = icmp eq i32 %2, 0, !dbg !5575
  br i1 %3, label %8, label %4, !dbg !5576

4:                                                ; preds = %1
  %5 = tail call zeroext i16 @I2sGetVdmaTxFifoCnt() #18, !dbg !5577
  %6 = zext i16 %5 to i32, !dbg !5577
  %7 = sub i32 %2, %6, !dbg !5578
  store i32 %7, i32* %0, align 4, !dbg !5579
  br label %8, !dbg !5580

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ -1, %1 ], !dbg !5572
  ret i32 %9, !dbg !5581
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_get_rx_sample_count(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !5582 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5584, metadata !DIExpression()), !dbg !5585
  %2 = tail call zeroext i16 @I2sGetVdmaRxFifoCnt() #18, !dbg !5586
  %3 = zext i16 %2 to i32, !dbg !5586
  store i32 %3, i32* %0, align 4, !dbg !5587
  ret i32 0, !dbg !5588
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_setup_tx_vfifo(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5589 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5593, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.value(metadata i32 %1, metadata !5594, metadata !DIExpression()), !dbg !5596
  call void @llvm.dbg.value(metadata i32 %2, metadata !5595, metadata !DIExpression()), !dbg !5596
  %4 = icmp eq i32* %0, null, !dbg !5597
  br i1 %4, label %15, label %5, !dbg !5599

5:                                                ; preds = %3
  %6 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5600
  %7 = icmp eq i8 %6, 1, !dbg !5602
  br i1 %7, label %11, label %8, !dbg !5603

8:                                                ; preds = %5
  %9 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5604
  %10 = zext i8 %9 to i32, !dbg !5604
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_i2s_setup_tx_vfifo, i32 0, i32 0), i32 noundef 429, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i32 noundef %10) #18, !dbg !5604
  br label %15, !dbg !5606

11:                                               ; preds = %5
  %12 = ptrtoint i32* %0 to i32, !dbg !5607
  %13 = tail call zeroext i8 @I2sVdmaTxStart(i32 noundef %12, i32 noundef %2, i32 noundef 0, i8 noundef zeroext 0) #18, !dbg !5608
  %14 = tail call zeroext i8 @I2sSetVdmaTxThreshold(i32 noundef %1) #18, !dbg !5609
  store i32* %0, i32** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 0), align 4, !dbg !5610
  store i32 %2, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 1), align 4, !dbg !5611
  store i32 %1, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 2), align 4, !dbg !5612
  store i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 4), align 1, !dbg !5613
  br label %15, !dbg !5614

15:                                               ; preds = %3, %11, %8
  %16 = phi i32 [ -1, %8 ], [ 0, %11 ], [ -2, %3 ], !dbg !5596
  ret i32 %16, !dbg !5615
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_setup_rx_vfifo(i32* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5616 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5618, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.value(metadata i32 %1, metadata !5619, metadata !DIExpression()), !dbg !5621
  call void @llvm.dbg.value(metadata i32 %2, metadata !5620, metadata !DIExpression()), !dbg !5621
  %4 = icmp eq i32* %0, null, !dbg !5622
  br i1 %4, label %15, label %5, !dbg !5624

5:                                                ; preds = %3
  %6 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5625
  %7 = icmp eq i8 %6, 1, !dbg !5627
  br i1 %7, label %11, label %8, !dbg !5628

8:                                                ; preds = %5
  %9 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5629
  %10 = zext i8 %9 to i32, !dbg !5629
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_i2s_setup_rx_vfifo, i32 0, i32 0), i32 noundef 456, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i32 0, i32 0), i32 noundef %10) #18, !dbg !5629
  br label %15, !dbg !5631

11:                                               ; preds = %5
  %12 = ptrtoint i32* %0 to i32, !dbg !5632
  %13 = tail call zeroext i8 @I2sVdmaRxStart(i32 noundef %12, i32 noundef %2, i32 noundef 0, i8 noundef zeroext 0) #18, !dbg !5633
  %14 = tail call zeroext i8 @I2sSetVdmaRxThreshold(i32 noundef %1) #18, !dbg !5634
  store i32* %0, i32** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 5), align 4, !dbg !5635
  store i32 %2, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 6), align 4, !dbg !5636
  store i32 %1, i32* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 7), align 4, !dbg !5637
  store i8 1, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 9), align 1, !dbg !5638
  br label %15, !dbg !5639

15:                                               ; preds = %3, %11, %8
  %16 = phi i32 [ -1, %8 ], [ 0, %11 ], [ -2, %3 ], !dbg !5621
  ret i32 %16, !dbg !5640
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_stop_tx_vfifo() local_unnamed_addr #3 !dbg !5641 {
  %1 = load i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 4), align 1, !dbg !5642, !range !1612
  %2 = icmp eq i8 %1, 0, !dbg !5642
  br i1 %2, label %4, label %3, !dbg !5644

3:                                                ; preds = %0
  tail call void @DMA_Stop(i8 noundef zeroext 12) #18, !dbg !5645
  br label %4, !dbg !5647

4:                                                ; preds = %3, %0
  ret i32 0, !dbg !5648
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_stop_rx_vfifo() local_unnamed_addr #3 !dbg !5649 {
  %1 = load i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 9), align 1, !dbg !5650, !range !1612
  %2 = icmp eq i8 %1, 0, !dbg !5650
  br i1 %2, label %4, label %3, !dbg !5652

3:                                                ; preds = %0
  tail call void @DMA_Stop(i8 noundef zeroext 13) #18, !dbg !5653
  br label %4, !dbg !5655

4:                                                ; preds = %3, %0
  ret i32 0, !dbg !5656
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_register_tx_vfifo_callback(void (i32, i8*)* noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !5657 {
  call void @llvm.dbg.value(metadata void (i32, i8*)* %0, metadata !5661, metadata !DIExpression()), !dbg !5663
  call void @llvm.dbg.value(metadata i8* %1, metadata !5662, metadata !DIExpression()), !dbg !5663
  %3 = icmp eq void (i32, i8*)* %0, null, !dbg !5664
  br i1 %3, label %5, label %4, !dbg !5666

4:                                                ; preds = %2
  store void (i32, i8*)* %0, void (i32, i8*)** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 10), align 4, !dbg !5667
  store i8* %1, i8** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 12), align 4, !dbg !5668
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 12, void ()* noundef nonnull @i2x_tx_handler) #18, !dbg !5669
  br label %5, !dbg !5670

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -2, %2 ], !dbg !5663
  ret i32 %6, !dbg !5671
}

; Function Attrs: noinline nounwind optsize
define internal void @i2x_tx_handler() #3 !dbg !5672 {
  tail call fastcc void @i2s_dma_callback(i1 noundef zeroext false) #16, !dbg !5673
  ret void, !dbg !5674
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_dma_callback(i1 noundef zeroext %0) unnamed_addr #3 !dbg !5675 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !5679, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5680
  %2 = zext i1 %0 to i32
  %3 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 11), align 4, !dbg !5681
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 10), align 4, !dbg !5681
  %5 = select i1 %0, void (i32, i8*)* %3, void (i32, i8*)* %4, !dbg !5681
  %6 = load i8*, i8** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 13), align 4, !dbg !5681
  %7 = load i8*, i8** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 12), align 4, !dbg !5681
  %8 = select i1 %0, i8* %6, i8* %7, !dbg !5681
  tail call void %5(i32 noundef %2, i8* noundef %8) #18, !dbg !5681
  ret void, !dbg !5683
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_register_rx_vfifo_callback(void (i32, i8*)* noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !5684 {
  call void @llvm.dbg.value(metadata void (i32, i8*)* %0, metadata !5688, metadata !DIExpression()), !dbg !5690
  call void @llvm.dbg.value(metadata i8* %1, metadata !5689, metadata !DIExpression()), !dbg !5690
  %3 = icmp eq void (i32, i8*)* %0, null, !dbg !5691
  br i1 %3, label %5, label %4, !dbg !5693

4:                                                ; preds = %2
  store void (i32, i8*)* %0, void (i32, i8*)** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 11), align 4, !dbg !5694
  store i8* %1, i8** getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 13), align 4, !dbg !5695
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 13, void ()* noundef nonnull @i2x_rx_handler) #18, !dbg !5696
  br label %5, !dbg !5697

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -2, %2 ], !dbg !5690
  ret i32 %6, !dbg !5698
}

; Function Attrs: noinline nounwind optsize
define internal void @i2x_rx_handler() #3 !dbg !5699 {
  tail call fastcc void @i2s_dma_callback(i1 noundef zeroext true) #16, !dbg !5700
  ret void, !dbg !5701
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_enable_tx() local_unnamed_addr #3 !dbg !5702 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5703
  %2 = or i8 %1, 8, !dbg !5703
  store volatile i8 %2, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5703
  %3 = tail call zeroext i8 @I2sDlEn(i8 noundef zeroext 1) #18, !dbg !5704
  ret i32 0, !dbg !5705
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_enable_rx() local_unnamed_addr #3 !dbg !5706 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5707
  %2 = or i8 %1, 4, !dbg !5707
  store volatile i8 %2, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5707
  %3 = tail call zeroext i8 @I2sUlEn(i8 noundef zeroext 1) #18, !dbg !5708
  ret i32 0, !dbg !5709
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_disable_tx() local_unnamed_addr #3 !dbg !5710 {
  tail call fastcc void @i2s_query_tx_vfifo_empty() #16, !dbg !5711
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5712
  %2 = and i8 %1, -9, !dbg !5712
  store volatile i8 %2, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5712
  %3 = tail call zeroext i8 @I2sDlEn(i8 noundef zeroext 0) #18, !dbg !5713
  ret i32 0, !dbg !5714
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_query_tx_vfifo_empty() unnamed_addr #3 !dbg !5715 {
  br label %1, !dbg !5716

1:                                                ; preds = %11, %0
  %2 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5717
  %3 = and i8 %2, 8, !dbg !5717
  %4 = icmp eq i8 %3, 0, !dbg !5720
  %5 = load i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 9, i32 4), align 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6, !dbg !5721
  %8 = load i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 8), align 2
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5721
  br i1 %10, label %14, label %11, !dbg !5721

11:                                               ; preds = %1
  %12 = tail call zeroext i16 @I2sGetVdmaTxFifoCnt() #18, !dbg !5722
  %13 = icmp eq i16 %12, 0, !dbg !5725
  br i1 %13, label %14, label %1, !dbg !5726, !llvm.loop !5727

14:                                               ; preds = %1, %11
  ret void, !dbg !5729
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_i2s_disable_rx() local_unnamed_addr #3 !dbg !5730 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5731
  %2 = and i8 %1, -5, !dbg !5731
  store volatile i8 %2, i8* getelementptr inbounds (%struct.i2s_internal_t, %struct.i2s_internal_t* @i2s_internal_cfg, i32 0, i32 6), align 4, !dbg !5731
  %3 = tail call zeroext i8 @I2sUlEn(i8 noundef zeroext 0) #18, !dbg !5732
  ret i32 0, !dbg !5733
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_i2s_tx_write(i32 noundef %0) local_unnamed_addr #1 !dbg !5734 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5738, metadata !DIExpression()), !dbg !5739
  store volatile i32 %0, i32* inttoptr (i32 2030043136 to i32*), align 16777216, !dbg !5740
  ret i32 0, !dbg !5741
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_i2s_rx_read(i32* nocapture noundef writeonly %0) local_unnamed_addr #6 !dbg !5742 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5744, metadata !DIExpression()), !dbg !5745
  %2 = load volatile i32, i32* inttoptr (i32 2030043392 to i32*), align 256, !dbg !5746
  store i32 %2, i32* %0, align 4, !dbg !5747
  ret i32 0, !dbg !5748
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !5749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5755, metadata !DIExpression()), !dbg !5757
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5756, metadata !DIExpression()), !dbg !5757
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #16, !dbg !5758
  br i1 %3, label %4, label %18, !dbg !5760

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5761
  %6 = load i8, i8* %5, align 4, !dbg !5761, !range !1612
  %7 = icmp eq i8 %6, 0, !dbg !5761
  br i1 %7, label %8, label %18, !dbg !5763

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #18, !dbg !5764
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5765
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !5766
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5767
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #18, !dbg !5768
  store i8 1, i8* %5, align 4, !dbg !5769
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5770, !range !5771
  tail call void @uart_reset_default_value(i32 noundef %14) #18, !dbg !5772
  tail call void @halUART_HWInit(i32 noundef %14) #18, !dbg !5773
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #16, !dbg !5774
  %16 = icmp eq i32 %15, 0, !dbg !5776
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5757
  br label %18, !dbg !5757

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5757
  ret i32 %19, !dbg !5777
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #9 !dbg !5778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5784, metadata !DIExpression()), !dbg !5786
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5785, metadata !DIExpression()), !dbg !5786
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5787
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !5789
  br i1 %5, label %6, label %22, !dbg !5789

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5790
  %8 = load i32, i32* %7, align 4, !dbg !5790
  %9 = icmp ugt i32 %8, 12, !dbg !5792
  br i1 %9, label %22, label %10, !dbg !5793

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5794
  %12 = load i32, i32* %11, align 4, !dbg !5794
  %13 = icmp ugt i32 %12, 2, !dbg !5795
  br i1 %13, label %22, label %14, !dbg !5796

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5797
  %16 = load i32, i32* %15, align 4, !dbg !5797
  %17 = icmp ugt i32 %16, 1, !dbg !5798
  br i1 %17, label %22, label %18, !dbg !5799

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5800
  %20 = load i32, i32* %19, align 4, !dbg !5800
  %21 = icmp ult i32 %20, 4, !dbg !5801
  br label %22, !dbg !5802

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5786
  ret i1 %23, !dbg !5803
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #11 !dbg !5804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5808, metadata !DIExpression()), !dbg !5809
  %2 = icmp ne i32 %0, 0, !dbg !5810
  %3 = zext i1 %2 to i32, !dbg !5811
  ret i32 %3, !dbg !5812
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !5813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5817, metadata !DIExpression()), !dbg !5819
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5818, metadata !DIExpression()), !dbg !5819
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #16, !dbg !5820
  br i1 %3, label %4, label %22, !dbg !5822

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5823
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5824
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5825
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #18, !dbg !5826
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5827
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5828
  %11 = load i32, i32* %10, align 4, !dbg !5828
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #16, !dbg !5829
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5830
  %14 = load i32, i32* %13, align 4, !dbg !5830
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #16, !dbg !5831
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5832
  %17 = load i32, i32* %16, align 4, !dbg !5832
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #16, !dbg !5833
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5834
  %20 = load i32, i32* %19, align 4, !dbg !5834
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #16, !dbg !5835
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #18, !dbg !5836
  br label %22, !dbg !5837

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5819
  ret i32 %23, !dbg !5838
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #11 !dbg !5839 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5843, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5844, metadata !DIExpression()), !dbg !5849
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5850
  %3 = load i32, i32* %2, align 4, !dbg !5850
  ret i32 %3, !dbg !5851
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #11 !dbg !5852 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5856, metadata !DIExpression()), !dbg !5859
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5857, metadata !DIExpression()), !dbg !5860
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5861
  %3 = load i16, i16* %2, align 2, !dbg !5861
  ret i16 %3, !dbg !5862
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #11 !dbg !5863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5867, metadata !DIExpression()), !dbg !5870
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5868, metadata !DIExpression()), !dbg !5871
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5872
  %3 = load i16, i16* %2, align 2, !dbg !5872
  ret i16 %3, !dbg !5873
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #11 !dbg !5874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5878, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5879, metadata !DIExpression()), !dbg !5882
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5883
  %3 = load i16, i16* %2, align 2, !dbg !5883
  ret i16 %3, !dbg !5884
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !5885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5889, metadata !DIExpression()), !dbg !5890
  %2 = icmp ult i32 %0, 2, !dbg !5891
  ret i1 %2, !dbg !5892
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !5893 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5897, metadata !DIExpression()), !dbg !5898
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5899
  br i1 %2, label %3, label %10, !dbg !5901

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5902
  %5 = load i8, i8* %4, align 4, !dbg !5902, !range !1612
  %6 = icmp eq i8 %5, 0, !dbg !5904
  br i1 %6, label %10, label %7, !dbg !5905

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #18, !dbg !5906
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5907, !range !5771
  tail call void @uart_query_empty(i32 noundef %9) #18, !dbg !5908
  tail call void @uart_reset_default_value(i32 noundef %9) #18, !dbg !5909
  br label %10, !dbg !5910

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5898
  ret i32 %11, !dbg !5911
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5916, metadata !DIExpression()), !dbg !5919
  call void @llvm.dbg.value(metadata i8 %1, metadata !5917, metadata !DIExpression()), !dbg !5919
  %3 = icmp eq i32 %0, 0, !dbg !5920
  %4 = icmp eq i32 %0, 1, !dbg !5920
  %5 = select i1 %4, i32 1, i32 2, !dbg !5920
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5920
  call void @llvm.dbg.value(metadata i32 %6, metadata !5918, metadata !DIExpression()), !dbg !5919
  %7 = icmp eq i32 %6, 2, !dbg !5921
  br i1 %7, label %9, label %8, !dbg !5923

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #18, !dbg !5924
  br label %9, !dbg !5926

9:                                                ; preds = %2, %8
  ret void, !dbg !5927
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5932, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.value(metadata i8* %1, metadata !5933, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.value(metadata i32 %2, metadata !5934, metadata !DIExpression()), !dbg !5937
  %4 = icmp eq i32 %0, 0, !dbg !5938
  %5 = icmp eq i32 %0, 1, !dbg !5938
  %6 = select i1 %5, i32 1, i32 2, !dbg !5938
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5938
  call void @llvm.dbg.value(metadata i32 %7, metadata !5935, metadata !DIExpression()), !dbg !5937
  %8 = icmp eq i8* %1, null, !dbg !5939
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5941
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5941
  call void @llvm.dbg.value(metadata i32 0, metadata !5936, metadata !DIExpression()), !dbg !5937
  br i1 %12, label %19, label %13, !dbg !5941

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5936, metadata !DIExpression()), !dbg !5937
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5942
  %16 = load i8, i8* %15, align 1, !dbg !5942
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #18, !dbg !5948
  %17 = add nuw i32 %14, 1, !dbg !5949
  call void @llvm.dbg.value(metadata i32 %17, metadata !5936, metadata !DIExpression()), !dbg !5937
  %18 = icmp eq i32 %17, %2, !dbg !5950
  br i1 %18, label %19, label %13, !dbg !5951, !llvm.loop !5952

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5937
  ret i32 %20, !dbg !5954
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5955 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5957, metadata !DIExpression()), !dbg !5963
  call void @llvm.dbg.value(metadata i8* %1, metadata !5958, metadata !DIExpression()), !dbg !5963
  call void @llvm.dbg.value(metadata i32 %2, metadata !5959, metadata !DIExpression()), !dbg !5963
  %5 = bitcast i32* %4 to i8*, !dbg !5964
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !5964
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5965
  br i1 %6, label %7, label %24, !dbg !5967

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5968
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5970
  br i1 %10, label %24, label %11, !dbg !5970

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5971
  %13 = load i8, i8* %12, align 4, !dbg !5971, !range !1612
  %14 = icmp eq i8 %13, 0, !dbg !5971
  br i1 %14, label %24, label %15, !dbg !5973

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5974, !range !5771
  call void @llvm.dbg.value(metadata i32* %4, metadata !5960, metadata !DIExpression(DW_OP_deref)), !dbg !5963
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #18, !dbg !5975
  %17 = load i32, i32* %4, align 4, !dbg !5976
  call void @llvm.dbg.value(metadata i32 %17, metadata !5960, metadata !DIExpression()), !dbg !5963
  %18 = icmp ult i32 %17, %2, !dbg !5978
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5961, metadata !DIExpression()), !dbg !5963
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #18, !dbg !5979
  %20 = load i32, i32* %4, align 4, !dbg !5980
  call void @llvm.dbg.value(metadata i32 %20, metadata !5960, metadata !DIExpression()), !dbg !5963
  %21 = icmp eq i32 %19, %20, !dbg !5982
  br i1 %21, label %22, label %24, !dbg !5983

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #16, !dbg !5984, !range !5986
  call void @llvm.dbg.value(metadata i32 %23, metadata !5962, metadata !DIExpression()), !dbg !5963
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #18, !dbg !5987
  br label %24, !dbg !5988

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5963
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !5989
  ret i32 %25, !dbg !5989
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #11 !dbg !5990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5994, metadata !DIExpression()), !dbg !5997
  call void @llvm.dbg.value(metadata i1 %1, metadata !5995, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5997
  %3 = icmp eq i32 %0, 0, !dbg !5998
  %4 = select i1 %1, i32 15, i32 14, !dbg !6000
  %5 = select i1 %1, i32 17, i32 16, !dbg !6000
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !6000
  call void @llvm.dbg.value(metadata i32 %6, metadata !5996, metadata !DIExpression()), !dbg !5997
  ret i32 %6, !dbg !6001
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !6002 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6006, metadata !DIExpression()), !dbg !6008
  %2 = icmp eq i32 %0, 0, !dbg !6009
  %3 = icmp eq i32 %0, 1, !dbg !6009
  %4 = select i1 %3, i32 1, i32 2, !dbg !6009
  %5 = select i1 %2, i32 0, i32 %4, !dbg !6009
  call void @llvm.dbg.value(metadata i32 %5, metadata !6007, metadata !DIExpression()), !dbg !6008
  %6 = icmp ult i32 %5, 2, !dbg !6010
  br i1 %6, label %7, label %9, !dbg !6012

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #18, !dbg !6013
  br label %9, !dbg !6015

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !6016
  ret i8 %10, !dbg !6017
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !6018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6022, metadata !DIExpression()), !dbg !6024
  %2 = icmp eq i32 %0, 0, !dbg !6025
  %3 = icmp eq i32 %0, 1, !dbg !6025
  %4 = select i1 %3, i32 1, i32 2, !dbg !6025
  %5 = select i1 %2, i32 0, i32 %4, !dbg !6025
  call void @llvm.dbg.value(metadata i32 %5, metadata !6023, metadata !DIExpression()), !dbg !6024
  %6 = icmp ult i32 %5, 2, !dbg !6026
  br i1 %6, label %7, label %9, !dbg !6028

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #18, !dbg !6029
  br label %9, !dbg !6031

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !6032
  ret i32 %10, !dbg !6033
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !6034 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6038, metadata !DIExpression()), !dbg !6043
  call void @llvm.dbg.value(metadata i8* %1, metadata !6039, metadata !DIExpression()), !dbg !6043
  call void @llvm.dbg.value(metadata i32 %2, metadata !6040, metadata !DIExpression()), !dbg !6043
  %4 = icmp eq i32 %0, 0, !dbg !6044
  %5 = icmp eq i32 %0, 1, !dbg !6044
  %6 = select i1 %5, i32 1, i32 2, !dbg !6044
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6044
  call void @llvm.dbg.value(metadata i32 %7, metadata !6041, metadata !DIExpression()), !dbg !6043
  %8 = icmp eq i8* %1, null, !dbg !6045
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !6047
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !6047
  call void @llvm.dbg.value(metadata i32 0, metadata !6042, metadata !DIExpression()), !dbg !6043
  br i1 %12, label %19, label %13, !dbg !6047

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !6042, metadata !DIExpression()), !dbg !6043
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #18, !dbg !6048
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !6054
  store i8 %15, i8* %16, align 1, !dbg !6055
  %17 = add nuw i32 %14, 1, !dbg !6056
  call void @llvm.dbg.value(metadata i32 %17, metadata !6042, metadata !DIExpression()), !dbg !6043
  %18 = icmp eq i32 %17, %2, !dbg !6057
  br i1 %18, label %19, label %13, !dbg !6058, !llvm.loop !6059

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !6043
  ret i32 %20, !dbg !6061
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !6062 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6064, metadata !DIExpression()), !dbg !6070
  call void @llvm.dbg.value(metadata i8* %1, metadata !6065, metadata !DIExpression()), !dbg !6070
  call void @llvm.dbg.value(metadata i32 %2, metadata !6066, metadata !DIExpression()), !dbg !6070
  %5 = bitcast i32* %4 to i8*, !dbg !6071
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !6071
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6072
  br i1 %6, label %7, label %20, !dbg !6074

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !6075
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !6077
  br i1 %10, label %20, label %11, !dbg !6077

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !6078, !range !5771
  call void @llvm.dbg.value(metadata i32* %4, metadata !6067, metadata !DIExpression(DW_OP_deref)), !dbg !6070
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #18, !dbg !6079
  %13 = load i32, i32* %4, align 4, !dbg !6080
  call void @llvm.dbg.value(metadata i32 %13, metadata !6067, metadata !DIExpression()), !dbg !6070
  %14 = icmp ult i32 %13, %2, !dbg !6082
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !6068, metadata !DIExpression()), !dbg !6070
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #18, !dbg !6083
  %16 = load i32, i32* %4, align 4, !dbg !6084
  call void @llvm.dbg.value(metadata i32 %16, metadata !6067, metadata !DIExpression()), !dbg !6070
  %17 = icmp eq i32 %15, %16, !dbg !6086
  br i1 %17, label %18, label %20, !dbg !6087

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !6088, !range !5986
  call void @llvm.dbg.value(metadata i32 %19, metadata !6069, metadata !DIExpression()), !dbg !6070
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #18, !dbg !6090
  br label %20, !dbg !6091

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !6070
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !6092
  ret i32 %21, !dbg !6092
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !6093 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6095, metadata !DIExpression()), !dbg !6097
  %3 = bitcast i32* %2 to i8*, !dbg !6098
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !6098
  call void @llvm.dbg.value(metadata i32 0, metadata !6096, metadata !DIExpression()), !dbg !6097
  store i32 0, i32* %2, align 4, !dbg !6099
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6100
  br i1 %4, label %5, label %8, !dbg !6102

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !6103, !range !5771
  call void @llvm.dbg.value(metadata i32* %2, metadata !6096, metadata !DIExpression(DW_OP_deref)), !dbg !6097
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #18, !dbg !6104
  %7 = load i32, i32* %2, align 4, !dbg !6105
  call void @llvm.dbg.value(metadata i32 %7, metadata !6096, metadata !DIExpression()), !dbg !6097
  br label %8, !dbg !6106

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !6097
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !6107
  ret i32 %9, !dbg !6107
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !6108 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6110, metadata !DIExpression()), !dbg !6112
  %3 = bitcast i32* %2 to i8*, !dbg !6113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !6113
  call void @llvm.dbg.value(metadata i32 0, metadata !6111, metadata !DIExpression()), !dbg !6112
  store i32 0, i32* %2, align 4, !dbg !6114
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6115
  br i1 %4, label %5, label %8, !dbg !6117

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !6118, !range !5771
  call void @llvm.dbg.value(metadata i32* %2, metadata !6111, metadata !DIExpression(DW_OP_deref)), !dbg !6112
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #18, !dbg !6119
  %7 = load i32, i32* %2, align 4, !dbg !6120
  call void @llvm.dbg.value(metadata i32 %7, metadata !6111, metadata !DIExpression()), !dbg !6112
  br label %8, !dbg !6121

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !6112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !6122
  ret i32 %9, !dbg !6122
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !6123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6127, metadata !DIExpression()), !dbg !6131
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !6128, metadata !DIExpression()), !dbg !6131
  call void @llvm.dbg.value(metadata i8* %2, metadata !6129, metadata !DIExpression()), !dbg !6131
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6132
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !6134
  br i1 %6, label %7, label %18, !dbg !6134

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !6135
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !6136
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !6137
  store i8* %2, i8** %9, align 4, !dbg !6138
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !6139
  store i8 1, i8* %10, align 4, !dbg !6140
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !6141
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #16, !dbg !6142
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #18, !dbg !6143
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #18, !dbg !6144
  %13 = icmp eq i32 %11, 0, !dbg !6145
  br i1 %13, label %14, label %15, !dbg !6147

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #18, !dbg !6148
  br label %16, !dbg !6150

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #18, !dbg !6151
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #16, !dbg !6153, !range !5986
  call void @llvm.dbg.value(metadata i32 %17, metadata !6130, metadata !DIExpression()), !dbg !6131
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #18, !dbg !6154
  br label %18, !dbg !6155

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !6131
  ret i32 %19, !dbg !6156
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #11 !dbg !679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !684, metadata !DIExpression()), !dbg !6157
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !6158
  %3 = load void ()*, void ()** %2, align 4, !dbg !6158
  ret void ()* %3, !dbg !6159
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !6160 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !6166, !range !1612
  %2 = icmp eq i8 %1, 0, !dbg !6166
  br i1 %2, label %8, label %3, !dbg !6167

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !6168
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !6170
  br i1 %5, label %8, label %6, !dbg !6171

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !6172
  tail call void %4(i32 noundef 2, i8* noundef %7) #18, !dbg !6174
  br label %8, !dbg !6175

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !6176, !range !5771
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !6177
  ret void, !dbg !6178
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !6179 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !6184, !range !1612
  %2 = icmp eq i8 %1, 0, !dbg !6184
  br i1 %2, label %8, label %3, !dbg !6185

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !6186
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !6188
  br i1 %5, label %8, label %6, !dbg !6189

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !6190
  tail call void %4(i32 noundef 2, i8* noundef %7) #18, !dbg !6192
  br label %8, !dbg !6193

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !6194, !range !5771
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !6195
  ret void, !dbg !6196
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !6197 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6201, metadata !DIExpression()), !dbg !6208
  call void @llvm.dbg.value(metadata i1 %1, metadata !6202, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !6208
  %5 = bitcast i32* %3 to i8*, !dbg !6209
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !6209
  %6 = bitcast i32* %4 to i8*, !dbg !6209
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !6209
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !6205, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !6208
  br i1 %1, label %7, label %12, !dbg !6210

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !6205, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !6208
  call void @llvm.dbg.value(metadata i32* %3, metadata !6203, metadata !DIExpression(DW_OP_deref)), !dbg !6208
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #18, !dbg !6211
  %8 = load i32, i32* %3, align 4, !dbg !6214
  call void @llvm.dbg.value(metadata i32 %8, metadata !6203, metadata !DIExpression()), !dbg !6208
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !6216
  %10 = load i32, i32* %9, align 4, !dbg !6216
  %11 = icmp ult i32 %8, %10, !dbg !6217
  br i1 %11, label %22, label %20, !dbg !6218

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !6204, metadata !DIExpression(DW_OP_deref)), !dbg !6208
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #18, !dbg !6219
  %13 = load i32, i32* %4, align 4, !dbg !6221
  call void @llvm.dbg.value(metadata i32 %13, metadata !6204, metadata !DIExpression()), !dbg !6208
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !6223
  %15 = load i32, i32* %14, align 4, !dbg !6223
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !6224
  %17 = load i32, i32* %16, align 4, !dbg !6224
  %18 = sub i32 %15, %17, !dbg !6225
  %19 = icmp ult i32 %13, %18, !dbg !6226
  br i1 %19, label %22, label %20, !dbg !6227

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #16, !dbg !6228, !range !5986
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #18, !dbg !6228
  br label %22, !dbg !6229

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !6229
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !6229
  ret void, !dbg !6229
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !6230 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !6235, !range !1612
  %2 = icmp eq i8 %1, 0, !dbg !6235
  br i1 %2, label %11, label %3, !dbg !6236

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #16, !dbg !6237
  %5 = icmp eq i32 %4, 0, !dbg !6238
  br i1 %5, label %11, label %6, !dbg !6239

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !6240
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !6242
  br i1 %8, label %11, label %9, !dbg !6243

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !6244
  tail call void %7(i32 noundef 1, i8* noundef %10) #18, !dbg !6246
  br label %11, !dbg !6247

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !6248, !range !5771
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !6249
  ret void, !dbg !6250
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !6251 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !6256, !range !1612
  %2 = icmp eq i8 %1, 0, !dbg !6256
  br i1 %2, label %11, label %3, !dbg !6257

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #16, !dbg !6258
  %5 = icmp eq i32 %4, 0, !dbg !6259
  br i1 %5, label %11, label %6, !dbg !6260

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !6261
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !6263
  br i1 %8, label %11, label %9, !dbg !6264

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !6265
  tail call void %7(i32 noundef 1, i8* noundef %10) #18, !dbg !6267
  br label %11, !dbg !6268

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !6269, !range !5771
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !6270
  ret void, !dbg !6271
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6276, metadata !DIExpression()), !dbg !6278
  call void @llvm.dbg.value(metadata i32 %1, metadata !6277, metadata !DIExpression()), !dbg !6278
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6279
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !6281
  br i1 %5, label %6, label %10, !dbg !6281

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !6282
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !6283
  store i32 %1, i32* %8, align 4, !dbg !6284
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #16, !dbg !6285
  br label %10, !dbg !6286

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !6278
  ret i32 %11, !dbg !6287
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !6288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6294, metadata !DIExpression()), !dbg !6296
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !6295, metadata !DIExpression()), !dbg !6296
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6297
  br i1 %3, label %4, label %28, !dbg !6299

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #16, !dbg !6300
  br i1 %5, label %6, label %28, !dbg !6302

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !6303
  store i8 1, i8* %7, align 4, !dbg !6304
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !6305
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !6306
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !6307
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #18, !dbg !6308
  tail call void @DMA_Init() #18, !dbg !6309
  tail call void @DMA_Vfifo_init() #18, !dbg !6310
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !6311
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !6312
  %14 = load i8*, i8** %13, align 4, !dbg !6312
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !6313
  %16 = load i32, i32* %15, align 4, !dbg !6313
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !6314
  %18 = load i32, i32* %17, align 4, !dbg !6314
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !6315
  %20 = load i32, i32* %19, align 4, !dbg !6315
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #16, !dbg !6316
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #18, !dbg !6317
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !6318
  %23 = load i8*, i8** %22, align 4, !dbg !6318
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !6319
  %25 = load i32, i32* %24, align 4, !dbg !6319
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !6320
  %27 = load i32, i32* %26, align 4, !dbg !6320
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #18, !dbg !6321
  br label %28, !dbg !6322

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !6296
  ret i32 %29, !dbg !6323
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #9 !dbg !6324 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !6328, metadata !DIExpression()), !dbg !6329
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !6330
  br i1 %2, label %27, label %3, !dbg !6332

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !6333
  %5 = load i8*, i8** %4, align 4, !dbg !6333
  %6 = icmp eq i8* %5, null, !dbg !6335
  br i1 %6, label %27, label %7, !dbg !6336

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !6337
  %9 = load i32, i32* %8, align 4, !dbg !6337
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !6339
  %11 = load i32, i32* %10, align 4, !dbg !6339
  %12 = icmp ult i32 %9, %11, !dbg !6340
  br i1 %12, label %27, label %13, !dbg !6341

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !6342
  %15 = load i32, i32* %14, align 4, !dbg !6342
  %16 = icmp ult i32 %9, %15, !dbg !6344
  br i1 %16, label %27, label %17, !dbg !6345

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !6346
  %19 = load i8*, i8** %18, align 4, !dbg !6346
  %20 = icmp eq i8* %19, null, !dbg !6348
  br i1 %20, label %27, label %21, !dbg !6349

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !6350
  %23 = load i32, i32* %22, align 4, !dbg !6350
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !6352
  %25 = load i32, i32* %24, align 4, !dbg !6352
  %26 = icmp uge i32 %23, %25, !dbg !6353
  br label %27, !dbg !6354

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !6329
  ret i1 %28, !dbg !6355
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !6356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6360, metadata !DIExpression()), !dbg !6362
  %2 = tail call i32 @top_mcu_freq_get() #18, !dbg !6363
  %3 = udiv i32 %2, 1000000, !dbg !6364
  call void @llvm.dbg.value(metadata i32 %3, metadata !6361, metadata !DIExpression()), !dbg !6362
  %4 = mul i32 %3, %0, !dbg !6365
  ret i32 %4, !dbg !6366
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !6367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6369, metadata !DIExpression()), !dbg !6371
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6372
  br i1 %2, label %3, label %8, !dbg !6374

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !6375
  %5 = icmp eq i32 %0, 1, !dbg !6375
  %6 = select i1 %5, i32 1, i32 2, !dbg !6375
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6375
  call void @llvm.dbg.value(metadata i32 %7, metadata !6370, metadata !DIExpression()), !dbg !6371
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #18, !dbg !6376
  br label %8, !dbg !6377

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !6371
  ret i32 %9, !dbg !6378
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !6379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6383, metadata !DIExpression()), !dbg !6388
  call void @llvm.dbg.value(metadata i8 %1, metadata !6384, metadata !DIExpression()), !dbg !6388
  call void @llvm.dbg.value(metadata i8 %2, metadata !6385, metadata !DIExpression()), !dbg !6388
  call void @llvm.dbg.value(metadata i8 %3, metadata !6386, metadata !DIExpression()), !dbg !6388
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6389
  br i1 %5, label %6, label %11, !dbg !6391

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !6392
  %8 = icmp eq i32 %0, 1, !dbg !6392
  %9 = select i1 %8, i32 1, i32 2, !dbg !6392
  %10 = select i1 %7, i32 0, i32 %9, !dbg !6392
  call void @llvm.dbg.value(metadata i32 %10, metadata !6387, metadata !DIExpression()), !dbg !6388
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #18, !dbg !6393
  br label %11, !dbg !6394

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !6388
  ret i32 %12, !dbg !6395
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !6396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6398, metadata !DIExpression()), !dbg !6400
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6401
  br i1 %2, label %3, label %8, !dbg !6403

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !6404
  %5 = icmp eq i32 %0, 1, !dbg !6404
  %6 = select i1 %5, i32 1, i32 2, !dbg !6404
  %7 = select i1 %4, i32 0, i32 %6, !dbg !6404
  call void @llvm.dbg.value(metadata i32 %7, metadata !6399, metadata !DIExpression()), !dbg !6400
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #18, !dbg !6405
  br label %8, !dbg !6406

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !6400
  ret i32 %9, !dbg !6407
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6412, metadata !DIExpression()), !dbg !6414
  call void @llvm.dbg.value(metadata i32 %1, metadata !6413, metadata !DIExpression()), !dbg !6414
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !6415
  br i1 %3, label %4, label %8, !dbg !6417

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !6418
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #16, !dbg !6420
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #18, !dbg !6420
  br label %8, !dbg !6421

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !6414
  ret i32 %9, !dbg !6421
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !6422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6426, metadata !DIExpression()), !dbg !6427
  %2 = trunc i32 %0 to i8, !dbg !6428
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #18, !dbg !6429
  ret i32 %0, !dbg !6430
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_uart_init() local_unnamed_addr #3 !dbg !6431 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !6441
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #17, !dbg !6441
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !6433, metadata !DIExpression()), !dbg !6442
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #18, !dbg !6443
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #18, !dbg !6444
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #18, !dbg !6445
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #18, !dbg !6446
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !6447
  store i32 9, i32* %7, align 4, !dbg !6448
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !6449
  store i32 3, i32* %8, align 4, !dbg !6450
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !6451
  store i32 0, i32* %9, align 4, !dbg !6452
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !6453
  store i32 0, i32* %10, align 4, !dbg !6454
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #18, !dbg !6455
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #17, !dbg !6456
  ret void, !dbg !6456
}

; Function Attrs: noinline nounwind optsize
define dso_local void @i2s_write_data_example() local_unnamed_addr #3 !dbg !6457 {
  call void @llvm.dbg.value(metadata i8 0, metadata !6459, metadata !DIExpression()), !dbg !6463
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i32 0, i32 0)) #18, !dbg !6464
  %2 = tail call fastcc signext i8 @i2s_configure() #16, !dbg !6465
  call void @llvm.dbg.value(metadata i8 %2, metadata !6459, metadata !DIExpression()), !dbg !6463
  %3 = icmp eq i8 %2, -1, !dbg !6466
  br i1 %3, label %4, label %6, !dbg !6468

4:                                                ; preds = %0
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1.26, i32 0, i32 0)) #18, !dbg !6469
  br label %6, !dbg !6471

6:                                                ; preds = %4, %0
  tail call fastcc void @i2s_write() #16, !dbg !6472
  tail call fastcc void @i2s_open() #16, !dbg !6473
  tail call fastcc void @i2s_read() #16, !dbg !6474
  tail call fastcc void @i2s_close() #16, !dbg !6475
  tail call fastcc void @i2s_dump() #16, !dbg !6476
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.27, i32 0, i32 0)) #18, !dbg !6477
  ret void, !dbg !6478
}

; Function Attrs: noinline nounwind optsize
define internal fastcc signext i8 @i2s_configure() unnamed_addr #3 !dbg !6479 {
  %1 = alloca %struct.hal_i2s_config_t, align 4
  %2 = bitcast %struct.hal_i2s_config_t* %1 to i8*, !dbg !6503
  call void @llvm.lifetime.start.p0i8(i64 60, i8* nonnull %2) #17, !dbg !6503
  call void @llvm.dbg.declare(metadata %struct.hal_i2s_config_t* %1, metadata !6483, metadata !DIExpression()), !dbg !6504
  call void @llvm.dbg.value(metadata i32 0, metadata !6502, metadata !DIExpression()), !dbg !6505
  %3 = tail call i32 @hal_i2s_init(i32 noundef 3) #18, !dbg !6506
  call void @llvm.dbg.value(metadata i32 %3, metadata !6502, metadata !DIExpression()), !dbg !6505
  %4 = icmp eq i32 %3, 0, !dbg !6507
  br i1 %4, label %7, label %5, !dbg !6509

5:                                                ; preds = %0
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0)) #18, !dbg !6510
  br label %34, !dbg !6512

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 2, !dbg !6513
  store i32 0, i32* %8, align 4, !dbg !6514
  %9 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 6, !dbg !6515
  store i32 0, i32* %9, align 4, !dbg !6516
  %10 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 5, !dbg !6517
  store i32 0, i32* %10, align 4, !dbg !6518
  %11 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 1, i32 1, !dbg !6519
  store i32 0, i32* %11, align 4, !dbg !6520
  %12 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 1, i32 0, !dbg !6521
  store i32 2, i32* %12, align 4, !dbg !6522
  %13 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 0, i32 0, !dbg !6523
  store i32 2, i32* %13, align 4, !dbg !6524
  %14 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 0, i32 2, !dbg !6525
  store i32 0, i32* %14, align 4, !dbg !6526
  %15 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 1, i32 2, !dbg !6527
  store i32 0, i32* %15, align 4, !dbg !6528
  %16 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 0, i32 4, !dbg !6529
  store i32 0, i32* %16, align 4, !dbg !6530
  %17 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 1, i32 4, !dbg !6531
  store i32 0, i32* %17, align 4, !dbg !6532
  %18 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 0, i32 3, !dbg !6533
  store i32 0, i32* %18, align 4, !dbg !6534
  %19 = getelementptr inbounds %struct.hal_i2s_config_t, %struct.hal_i2s_config_t* %1, i32 0, i32 1, i32 3, !dbg !6535
  store i32 0, i32* %19, align 4, !dbg !6536
  %20 = call i32 @hal_i2s_set_config(%struct.hal_i2s_config_t* noundef nonnull %1) #18, !dbg !6537
  call void @llvm.dbg.value(metadata i32 %20, metadata !6502, metadata !DIExpression()), !dbg !6505
  %21 = icmp eq i32 %20, 0, !dbg !6538
  br i1 %21, label %24, label %22, !dbg !6540

22:                                               ; preds = %7
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0)) #18, !dbg !6541
  br label %34, !dbg !6543

24:                                               ; preds = %7
  %25 = call i32 @hal_i2s_setup_tx_vfifo(i32* noundef getelementptr inbounds ([32 x i32], [32 x i32]* @I2S_TxBuf, i32 0, i32 0), i32 noundef 16, i32 noundef 32) #18, !dbg !6544
  call void @llvm.dbg.value(metadata i32 %25, metadata !6502, metadata !DIExpression()), !dbg !6505
  %26 = icmp eq i32 %25, 0, !dbg !6545
  br i1 %26, label %29, label %27, !dbg !6547

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i32 0, i32 0)) #18, !dbg !6548
  br label %34, !dbg !6550

29:                                               ; preds = %24
  %30 = call i32 @hal_i2s_setup_rx_vfifo(i32* noundef getelementptr inbounds ([2048 x i32], [2048 x i32]* @I2S_RxBuf, i32 0, i32 0), i32 noundef 1024, i32 noundef 2048) #18, !dbg !6551
  call void @llvm.dbg.value(metadata i32 %30, metadata !6502, metadata !DIExpression()), !dbg !6505
  %31 = icmp eq i32 %30, 0, !dbg !6552
  br i1 %31, label %34, label %32, !dbg !6554

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0)) #18, !dbg !6555
  br label %34, !dbg !6557

34:                                               ; preds = %29, %32, %27, %22, %5
  %35 = phi i8 [ -1, %5 ], [ -1, %22 ], [ -1, %27 ], [ -1, %32 ], [ 1, %29 ], !dbg !6505
  call void @llvm.lifetime.end.p0i8(i64 60, i8* nonnull %2) #17, !dbg !6558
  ret i8 %35, !dbg !6558
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_write() unnamed_addr #3 !dbg !6559 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !6563
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #17, !dbg !6563
  call void @llvm.dbg.value(metadata i32 0, metadata !6561, metadata !DIExpression()), !dbg !6564
  store i32 0, i32* %1, align 4, !dbg !6565
  call void @llvm.dbg.value(metadata i32 0, metadata !6562, metadata !DIExpression()), !dbg !6564
  call void @llvm.dbg.value(metadata i32* %1, metadata !6561, metadata !DIExpression(DW_OP_deref)), !dbg !6564
  %3 = call i32 @hal_i2s_get_tx_sample_count(i32* noundef nonnull %1) #18, !dbg !6566
  %4 = load i32, i32* %1, align 4, !dbg !6567
  call void @llvm.dbg.value(metadata i32 %4, metadata !6561, metadata !DIExpression()), !dbg !6564
  %5 = icmp ugt i32 %4, 31, !dbg !6569
  br i1 %5, label %6, label %14, !dbg !6570

6:                                                ; preds = %0, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !6562, metadata !DIExpression()), !dbg !6564
  %8 = getelementptr inbounds [32 x i16], [32 x i16]* @audio_Tone2k_16kSR, i32 0, i32 %7, !dbg !6571
  %9 = load i16, i16* %8, align 2, !dbg !6571
  %10 = zext i16 %9 to i32, !dbg !6571
  %11 = call i32 @hal_i2s_tx_write(i32 noundef %10) #18, !dbg !6576
  %12 = add nuw nsw i32 %7, 1, !dbg !6577
  call void @llvm.dbg.value(metadata i32 %12, metadata !6562, metadata !DIExpression()), !dbg !6564
  %13 = icmp eq i32 %12, 32, !dbg !6578
  br i1 %13, label %14, label %6, !dbg !6579, !llvm.loop !6580

14:                                               ; preds = %6, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #17, !dbg !6582
  ret void, !dbg !6582
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_open() unnamed_addr #3 !dbg !6583 {
  %1 = tail call i32 @hal_i2s_enable_tx() #18, !dbg !6584
  %2 = tail call i32 @hal_i2s_enable_rx() #18, !dbg !6585
  %3 = tail call i32 @hal_i2s_enable_audio_top() #18, !dbg !6586
  ret void, !dbg !6587
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_read() unnamed_addr #3 !dbg !6588 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !6593
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !6593
  call void @llvm.dbg.value(metadata i32 0, metadata !6590, metadata !DIExpression()), !dbg !6594
  store i32 0, i32* %1, align 4, !dbg !6595
  %4 = bitcast i32* %2 to i8*, !dbg !6596
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #17, !dbg !6596
  call void @llvm.dbg.value(metadata i32 0, metadata !6591, metadata !DIExpression()), !dbg !6594
  store i32 0, i32* %2, align 4, !dbg !6597
  call void @llvm.dbg.value(metadata i32 0, metadata !6592, metadata !DIExpression()), !dbg !6594
  br label %5, !dbg !6598

5:                                                ; preds = %5, %0
  call void @llvm.dbg.value(metadata i32* %1, metadata !6590, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %6 = call i32 @hal_i2s_get_rx_sample_count(i32* noundef nonnull %1) #18, !dbg !6599
  %7 = load i32, i32* %1, align 4, !dbg !6601
  call void @llvm.dbg.value(metadata i32 %7, metadata !6590, metadata !DIExpression()), !dbg !6594
  %8 = icmp ugt i32 %7, 1024, !dbg !6603
  br i1 %8, label %9, label %5, !dbg !6604, !llvm.loop !6605

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i32* %1, metadata !6590, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %10 = call i32 @hal_i2s_get_rx_sample_count(i32* noundef nonnull %1) #18, !dbg !6607
  %11 = load i32, i32* %1, align 4, !dbg !6608
  call void @llvm.dbg.value(metadata i32 %11, metadata !6590, metadata !DIExpression()), !dbg !6594
  %12 = icmp eq i32 %11, 0, !dbg !6609
  br i1 %12, label %22, label %13, !dbg !6610

13:                                               ; preds = %9, %18
  call void @llvm.dbg.value(metadata i32* %2, metadata !6591, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %14 = call i32 @hal_i2s_rx_read(i32* noundef nonnull %2) #18, !dbg !6611
  %15 = load i32, i32* %2, align 4, !dbg !6613
  call void @llvm.dbg.value(metadata i32 %15, metadata !6591, metadata !DIExpression()), !dbg !6594
  %16 = icmp eq i32 %15, 0, !dbg !6615
  br i1 %16, label %18, label %17, !dbg !6616

17:                                               ; preds = %13
  store i32 %15, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @USER_Rx_Buf, i32 0, i32 0), align 4, !dbg !6617
  call void @llvm.dbg.value(metadata i32 1, metadata !6592, metadata !DIExpression()), !dbg !6594
  br label %22, !dbg !6619

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32* %1, metadata !6590, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %19 = call i32 @hal_i2s_get_rx_sample_count(i32* noundef nonnull %1) #18, !dbg !6620
  %20 = load i32, i32* %1, align 4, !dbg !6608
  call void @llvm.dbg.value(metadata i32 %20, metadata !6590, metadata !DIExpression()), !dbg !6594
  %21 = icmp eq i32 %20, 0, !dbg !6609
  br i1 %21, label %22, label %13, !dbg !6610, !llvm.loop !6621

22:                                               ; preds = %18, %9, %17
  %23 = phi i32 [ 1, %17 ], [ 0, %9 ], [ 0, %18 ], !dbg !6594
  call void @llvm.dbg.value(metadata i32 %23, metadata !6592, metadata !DIExpression()), !dbg !6594
  call void @llvm.dbg.value(metadata i32* %1, metadata !6590, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %24 = call i32 @hal_i2s_get_rx_sample_count(i32* noundef nonnull %1) #18, !dbg !6623
  %25 = load i32, i32* %1, align 4, !dbg !6624
  call void @llvm.dbg.value(metadata i32 %25, metadata !6590, metadata !DIExpression()), !dbg !6594
  %26 = icmp eq i32 %25, 0, !dbg !6625
  br i1 %26, label %38, label %27, !dbg !6626

27:                                               ; preds = %22, %31
  %28 = phi i32 [ %34, %31 ], [ %23, %22 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !6592, metadata !DIExpression()), !dbg !6594
  call void @llvm.dbg.value(metadata i32* %2, metadata !6591, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %29 = call i32 @hal_i2s_rx_read(i32* noundef nonnull %2) #18, !dbg !6627
  %30 = icmp eq i32 %28, 32, !dbg !6629
  br i1 %30, label %38, label %31, !dbg !6631

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4, !dbg !6632
  call void @llvm.dbg.value(metadata i32 %32, metadata !6591, metadata !DIExpression()), !dbg !6594
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* @USER_Rx_Buf, i32 0, i32 %28, !dbg !6634
  store i32 %32, i32* %33, align 4, !dbg !6635
  %34 = add nuw nsw i32 %28, 1, !dbg !6636
  call void @llvm.dbg.value(metadata i32 %34, metadata !6592, metadata !DIExpression()), !dbg !6594
  call void @llvm.dbg.value(metadata i32* %1, metadata !6590, metadata !DIExpression(DW_OP_deref)), !dbg !6594
  %35 = call i32 @hal_i2s_get_rx_sample_count(i32* noundef nonnull %1) #18, !dbg !6637
  %36 = load i32, i32* %1, align 4, !dbg !6624
  call void @llvm.dbg.value(metadata i32 %36, metadata !6590, metadata !DIExpression()), !dbg !6594
  %37 = icmp eq i32 %36, 0, !dbg !6625
  br i1 %37, label %38, label %27, !dbg !6626, !llvm.loop !6638

38:                                               ; preds = %31, %27, %22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #17, !dbg !6640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !6640
  ret void, !dbg !6640
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_close() unnamed_addr #3 !dbg !6641 {
  %1 = tail call i32 @hal_i2s_disable_tx() #18, !dbg !6642
  %2 = tail call i32 @hal_i2s_disable_rx() #18, !dbg !6643
  %3 = tail call i32 @hal_i2s_disable_audio_top() #18, !dbg !6644
  %4 = tail call i32 @hal_i2s_deinit() #18, !dbg !6645
  %5 = tail call i32 @hal_i2s_stop_tx_vfifo() #18, !dbg !6646
  %6 = tail call i32 @hal_i2s_stop_rx_vfifo() #18, !dbg !6647
  ret void, !dbg !6648
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @i2s_dump() unnamed_addr #3 !dbg !6649 {
  call void @llvm.dbg.value(metadata i32 0, metadata !6651, metadata !DIExpression()), !dbg !6652
  call void @llvm.dbg.value(metadata i32 0, metadata !6651, metadata !DIExpression()), !dbg !6652
  br label %1, !dbg !6653

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %6, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !6651, metadata !DIExpression()), !dbg !6652
  %3 = getelementptr inbounds [32 x i32], [32 x i32]* @I2S_TxBuf, i32 0, i32 %2, !dbg !6655
  %4 = load i32, i32* %3, align 4, !dbg !6655
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9.28, i32 0, i32 0), i32 noundef %2, i32 noundef %4) #18, !dbg !6658
  %6 = add nuw nsw i32 %2, 1, !dbg !6659
  call void @llvm.dbg.value(metadata i32 %6, metadata !6651, metadata !DIExpression()), !dbg !6652
  %7 = icmp eq i32 %6, 32, !dbg !6660
  br i1 %7, label %8, label %1, !dbg !6653, !llvm.loop !6661

8:                                                ; preds = %1, %8
  %9 = phi i32 [ %13, %8 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !6651, metadata !DIExpression()), !dbg !6652
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* @USER_Rx_Buf, i32 0, i32 %9, !dbg !6663
  %11 = load i32, i32* %10, align 4, !dbg !6663
  %12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 noundef %9, i32 noundef %11) #18, !dbg !6667
  %13 = add nuw nsw i32 %9, 1, !dbg !6668
  call void @llvm.dbg.value(metadata i32 %13, metadata !6651, metadata !DIExpression()), !dbg !6652
  %14 = icmp eq i32 %13, 32, !dbg !6669
  br i1 %14, label %15, label %8, !dbg !6670, !llvm.loop !6671

15:                                               ; preds = %8
  ret void, !dbg !6673
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #15 !dbg !6674 {
  tail call fastcc void @SystemClock_Config() #16, !dbg !6675
  tail call fastcc void @prvSetupHardware() #16, !dbg !6676
  tail call void asm sideeffect "cpsie i", "~{memory}"() #17, !dbg !6677, !srcloc !6680
  tail call void asm sideeffect "cpsie f", "~{memory}"() #17, !dbg !6681, !srcloc !6684
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.29, i32 0, i32 0)) #18, !dbg !6685
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.30, i32 0, i32 0)) #18, !dbg !6686
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.29, i32 0, i32 0)) #18, !dbg !6687
  tail call void @i2s_write_data_example() #16, !dbg !6688
  br label %4, !dbg !6689

4:                                                ; preds = %4, %0
  br label %4, !dbg !6690, !llvm.loop !6693
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !6696 {
  tail call void @top_xtal_init() #18, !dbg !6697
  ret void, !dbg !6698
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !6699 {
  tail call void @log_uart_init() #16, !dbg !6700
  ret void, !dbg !6701
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #1 !dbg !6702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6704, metadata !DIExpression()), !dbg !6706
  %2 = add i32 %0, -1, !dbg !6707
  %3 = icmp ugt i32 %2, 16777215, !dbg !6709
  br i1 %3, label %8, label %4, !dbg !6710

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6711
  call void @llvm.dbg.value(metadata i32 %5, metadata !6705, metadata !DIExpression()), !dbg !6706
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6712
  %7 = and i32 %6, -4, !dbg !6712
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6712
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !6713
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !6714
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6715
  br label %8, !dbg !6716

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !6706
  ret i32 %9, !dbg !6717
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #1 !dbg !6718 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !6719
  ret void, !dbg !6720
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #6 !dbg !6721 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !6722
  ret i32 %1, !dbg !6723
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !6724 {
  %1 = tail call i32 @top_mcu_freq_get() #18, !dbg !6725
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !6726
  ret void, !dbg !6727
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #1 !dbg !6728 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6729
  %2 = or i32 %1, 15728640, !dbg !6729
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6729
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !6730
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6731
  %4 = or i32 %3, 458752, !dbg !6731
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6731
  ret void, !dbg !6732
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #1 !dbg !6733 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6734
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6735
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6736
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !6737
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !6738
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !6739
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6740
  ret void, !dbg !6741
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #11 !dbg !6742 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6744, metadata !DIExpression()), !dbg !6745
  ret i32 0, !dbg !6746
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #11 !dbg !6747 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6797, metadata !DIExpression()), !dbg !6799
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6798, metadata !DIExpression()), !dbg !6799
  ret i32 0, !dbg !6800
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #11 !dbg !6801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6803, metadata !DIExpression()), !dbg !6804
  ret i32 1, !dbg !6805
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6806 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6810, metadata !DIExpression()), !dbg !6813
  call void @llvm.dbg.value(metadata i32 %1, metadata !6811, metadata !DIExpression()), !dbg !6813
  call void @llvm.dbg.value(metadata i32 %2, metadata !6812, metadata !DIExpression()), !dbg !6813
  ret i32 0, !dbg !6814
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6815 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6819, metadata !DIExpression()), !dbg !6822
  call void @llvm.dbg.value(metadata i32 %1, metadata !6820, metadata !DIExpression()), !dbg !6822
  call void @llvm.dbg.value(metadata i32 %2, metadata !6821, metadata !DIExpression()), !dbg !6822
  ret i32 -1, !dbg !6823
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #11 !dbg !6824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6828, metadata !DIExpression()), !dbg !6831
  call void @llvm.dbg.value(metadata i8* %1, metadata !6829, metadata !DIExpression()), !dbg !6831
  call void @llvm.dbg.value(metadata i32 %2, metadata !6830, metadata !DIExpression()), !dbg !6831
  ret i32 0, !dbg !6832
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !6833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6835, metadata !DIExpression()), !dbg !6839
  call void @llvm.dbg.value(metadata i8* %1, metadata !6836, metadata !DIExpression()), !dbg !6839
  call void @llvm.dbg.value(metadata i32 %2, metadata !6837, metadata !DIExpression()), !dbg !6839
  call void @llvm.dbg.value(metadata i32 0, metadata !6838, metadata !DIExpression()), !dbg !6839
  %4 = icmp sgt i32 %2, 0, !dbg !6840
  br i1 %4, label %5, label %14, !dbg !6843

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6838, metadata !DIExpression()), !dbg !6839
  call void @llvm.dbg.value(metadata i8* %7, metadata !6836, metadata !DIExpression()), !dbg !6839
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6844
  call void @llvm.dbg.value(metadata i8* %8, metadata !6836, metadata !DIExpression()), !dbg !6839
  %9 = load i8, i8* %7, align 1, !dbg !6846
  %10 = zext i8 %9 to i32, !dbg !6846
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #18, !dbg !6847
  %12 = add nuw nsw i32 %6, 1, !dbg !6848
  call void @llvm.dbg.value(metadata i32 %12, metadata !6838, metadata !DIExpression()), !dbg !6839
  %13 = icmp eq i32 %12, %2, !dbg !6840
  br i1 %13, label %14, label %5, !dbg !6843, !llvm.loop !6849

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6851
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !844 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !1045, metadata !DIExpression()), !dbg !6852
  call void @llvm.dbg.value(metadata i32 %1, metadata !1046, metadata !DIExpression()), !dbg !6852
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #17, !dbg !6853, !srcloc !6854
  call void @llvm.dbg.value(metadata i8* %3, metadata !1048, metadata !DIExpression()), !dbg !6852
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6855
  %5 = icmp eq i8* %4, null, !dbg !6857
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6858
  call void @llvm.dbg.value(metadata i8* %6, metadata !1047, metadata !DIExpression()), !dbg !6852
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6859
  %8 = icmp ult i8* %3, %7, !dbg !6861
  %9 = xor i1 %8, true, !dbg !6862
  %10 = or i1 %5, %9, !dbg !6862
  br i1 %10, label %11, label %13, !dbg !6862

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6863
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6862
  br label %13, !dbg !6862

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6863
  ret i8* %14, !dbg !6862
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #15 !dbg !6864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6866, metadata !DIExpression()), !dbg !6867
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #18, !dbg !6868
  br label %3, !dbg !6869

3:                                                ; preds = %1, %3
  br label %3, !dbg !6869, !llvm.loop !6870
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !6872 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6876, metadata !DIExpression()), !dbg !6878
  call void @llvm.dbg.value(metadata i32 %1, metadata !6877, metadata !DIExpression()), !dbg !6878
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.38, i32 0, i32 0), i32 noundef %1) #18, !dbg !6879
  ret i32 -1, !dbg !6880
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !6881 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.39, i32 0, i32 0)) #18, !dbg !6886
  ret i32 0, !dbg !6887
}

attributes #0 = { nofree noinline norecurse noreturn nosync nounwind optsize readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { mustprogress nofree noinline nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #16 = { nobuiltin optsize "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin nounwind optsize "no-builtins" }
attributes #19 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!2, !200, !1063, !1072, !1153, !1198, !227, !239, !1232, !254, !337, !1234, !439, !622, !731, !784, !1040, !1051}
!llvm.ident = !{!1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274, !1274}
!llvm.module.flags = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DMA_LISR_FUNC", scope: !2, file: !3, line: 56, type: !197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/dma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!4 = !{!5, !34, !41, !46, !51, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
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
!47 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!50 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !52, line: 47, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
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
!199 = distinct !DIGlobalVariable(name: "XpllInfo", scope: !200, file: !201, line: 762, type: !221, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !211, globals: !220, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_i2s_internal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!202 = !{!97, !46, !203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_I2S_INITIAL_TYPE_T", file: !204, line: 552, baseType: !7, size: 32, elements: !205)
!204 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_i2s_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!205 = !{!206, !207, !208, !209, !210}
!206 = !DIEnumerator(name: "I2S_INTERNAL_LOOPBACK_MODE", value: 0)
!207 = !DIEnumerator(name: "I2S_INTERNAL_MODE", value: 1)
!208 = !DIEnumerator(name: "I2S_EXTERNAL_MODE", value: 2)
!209 = !DIEnumerator(name: "I2S_EXTERNAL_TDM_MODE", value: 3)
!210 = !DIEnumerator(name: "I2S_INITIAL_TYPE_NUM", value: 4)
!211 = !{!114, !115, !212, !213, !217, !218}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !47, line: 59, baseType: !132)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !47, line: 113, baseType: !216)
!216 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !47, line: 62, baseType: !7)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!220 = !{!198}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPLL_INFO", file: !204, line: 508, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_XPLL_INFO", file: !204, line: 506, size: 32, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "u4NcpoValue", scope: !222, file: !204, line: 507, baseType: !217, size: 32)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !227, file: !228, line: 43, type: !136, isLocal: true, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !229, globals: !234, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!229 = !{!218, !217, !230, !232}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !217)
!234 = !{!225, !235}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !227, file: !228, line: 44, type: !136, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !239, file: !240, line: 54, type: !136, isLocal: false, isDefinition: true)
!239 = distinct !DICompileUnit(language: DW_LANG_C99, file: !240, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !241, retainedTypes: !248, globals: !251, splitDebugInlining: false, nameTableKind: None)
!240 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!241 = !{!242, !97}
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !243, line: 71, baseType: !7, size: 32, elements: !244)
!243 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!244 = !{!245, !246, !247}
!245 = !DIEnumerator(name: "UART_PORT0", value: 0)
!246 = !DIEnumerator(name: "UART_PORT1", value: 1)
!247 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!248 = !{!218, !136, !213, !215, !212, !249, !217}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !212)
!251 = !{!237}
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !254, file: !255, line: 51, type: !334, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !303, globals: !333, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!256 = !{!257, !268, !287, !294}
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 163, baseType: !53, size: 32, elements: !259)
!258 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267}
!260 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!261 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!262 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!263 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!264 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!265 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!266 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!267 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 186, baseType: !7, size: 32, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!270 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!271 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!272 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!273 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!274 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!275 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!276 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!277 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!278 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!279 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!280 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!281 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!282 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!283 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!284 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!285 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!286 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 176, baseType: !7, size: 32, elements: !288)
!288 = !{!289, !290, !291, !292, !293}
!289 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!290 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!291 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!292 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!293 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 99, baseType: !7, size: 32, elements: !296)
!295 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!298 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!299 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!300 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!301 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!302 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!303 = !{!304, !161}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !306, line: 72, baseType: !307)
!306 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 56, size: 525312, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !324, !328, !332}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !307, file: !306, line: 57, baseType: !231, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !307, file: !306, line: 58, baseType: !231, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !307, file: !306, line: 59, baseType: !231, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !307, file: !306, line: 60, baseType: !231, size: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !307, file: !306, line: 61, baseType: !231, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !307, file: !306, line: 62, baseType: !231, size: 32, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !307, file: !306, line: 63, baseType: !231, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !307, file: !306, line: 64, baseType: !231, size: 32, offset: 224)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !307, file: !306, line: 65, baseType: !231, size: 32, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !307, file: !306, line: 66, baseType: !231, size: 32, offset: 288)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !307, file: !306, line: 67, baseType: !320, size: 32, offset: 320)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 1)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !307, file: !306, line: 68, baseType: !231, size: 32, offset: 352)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !307, file: !306, line: 69, baseType: !325, size: 523904, offset: 384)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 523904, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 16372)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !307, file: !306, line: 70, baseType: !329, size: 512, offset: 524288)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 512, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !307, file: !306, line: 71, baseType: !329, size: 512, offset: 524800)
!333 = !{!252}
!334 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !337, file: !338, line: 53, type: !426, isLocal: false, isDefinition: true)
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !339, retainedTypes: !348, globals: !425, splitDebugInlining: false, nameTableKind: None)
!338 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!339 = !{!340, !51}
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !341, line: 152, baseType: !53, size: 32, elements: !342)
!341 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!342 = !{!343, !344, !345, !346, !347}
!343 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!344 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!345 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!346 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!347 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!348 = !{!349, !161, !136, !350, !352, !386}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !52, line: 97, baseType: !173)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 44, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !131, line: 77, baseType: !53)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !354, line: 378, baseType: !355)
!354 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 363, size: 28704, elements: !356)
!356 = !{!357, !361, !365, !366, !367, !368, !369, !370, !371, !372, !376, !381, !385}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !355, file: !354, line: 365, baseType: !358, size: 256)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 8)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !355, file: !354, line: 366, baseType: !362, size: 768, offset: 256)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 768, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 24)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !355, file: !354, line: 367, baseType: !358, size: 256, offset: 1024)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !355, file: !354, line: 368, baseType: !362, size: 768, offset: 1280)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !355, file: !354, line: 369, baseType: !358, size: 256, offset: 2048)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !355, file: !354, line: 370, baseType: !362, size: 768, offset: 2304)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !355, file: !354, line: 371, baseType: !358, size: 256, offset: 3072)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !355, file: !354, line: 372, baseType: !362, size: 768, offset: 3328)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !355, file: !354, line: 373, baseType: !358, size: 256, offset: 4096)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !355, file: !354, line: 374, baseType: !373, size: 1792, offset: 4352)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1792, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 56)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !355, file: !354, line: 375, baseType: !377, size: 1920, offset: 6144)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1920, elements: !379)
!378 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!379 = !{!380}
!380 = !DISubrange(count: 240)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !355, file: !354, line: 376, baseType: !382, size: 20608, offset: 8064)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 20608, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 644)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !355, file: !354, line: 377, baseType: !231, size: 32, offset: 28672)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !354, line: 418, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 395, size: 1120, elements: !389)
!389 = !{!390, !392, !393, !394, !395, !396, !397, !401, !402, !403, !404, !405, !406, !407, !408, !412, !413, !414, !418, !422, !424}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !388, file: !354, line: 397, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !388, file: !354, line: 398, baseType: !231, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !388, file: !354, line: 399, baseType: !231, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !388, file: !354, line: 400, baseType: !231, size: 32, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !388, file: !354, line: 401, baseType: !231, size: 32, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !388, file: !354, line: 402, baseType: !231, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !388, file: !354, line: 403, baseType: !398, size: 96, offset: 192)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 96, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 12)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !388, file: !354, line: 404, baseType: !231, size: 32, offset: 288)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !388, file: !354, line: 405, baseType: !231, size: 32, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !388, file: !354, line: 406, baseType: !231, size: 32, offset: 352)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !388, file: !354, line: 407, baseType: !231, size: 32, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !388, file: !354, line: 408, baseType: !231, size: 32, offset: 416)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !388, file: !354, line: 409, baseType: !231, size: 32, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !388, file: !354, line: 410, baseType: !231, size: 32, offset: 480)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !388, file: !354, line: 411, baseType: !409, size: 64, offset: 512)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 64, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 2)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !388, file: !354, line: 412, baseType: !391, size: 32, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !388, file: !354, line: 413, baseType: !391, size: 32, offset: 608)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !388, file: !354, line: 414, baseType: !415, size: 128, offset: 640)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 4)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !388, file: !354, line: 415, baseType: !419, size: 160, offset: 768)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 160, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 5)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !388, file: !354, line: 416, baseType: !423, size: 160, offset: 928)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 160, elements: !420)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !388, file: !354, line: 417, baseType: !231, size: 32, offset: 1088)
!425 = !{!335}
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 6144, elements: !435)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !338, line: 50, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 47, size: 64, elements: !429)
!429 = !{!430, !434}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !428, file: !338, line: 48, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !349}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !428, file: !338, line: 49, baseType: !136, size: 32, offset: 32)
!435 = !{!436}
!436 = !DISubrange(count: 96)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "i2s_internal_cfg", scope: !439, file: !440, line: 47, type: !517, isLocal: true, isDefinition: true)
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !441, retainedTypes: !513, globals: !516, splitDebugInlining: false, nameTableKind: None)
!440 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_i2s.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!441 = !{!442, !448, !203, !455, !463, !467, !471, !475, !479, !484, !489, !493, !497, !97, !501, !46, !505}
!442 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !443, line: 627, baseType: !53, size: 32, elements: !444)
!443 = !DIFile(filename: "../../../../../driver/chip/inc/hal_i2s.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!444 = !{!445, !446, !447}
!445 = !DIEnumerator(name: "HAL_I2S_STATUS_INVALID_PARAMETER", value: -2)
!446 = !DIEnumerator(name: "HAL_I2S_STATUS_ERROR", value: -1)
!447 = !DIEnumerator(name: "HAL_I2S_STATUS_OK", value: 0)
!448 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 346, baseType: !7, size: 32, elements: !450)
!449 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!450 = !{!451, !452, !453, !454}
!451 = !DIEnumerator(name: "HAL_I2S_TYPE_EXTERNAL_MODE", value: 0)
!452 = !DIEnumerator(name: "HAL_I2S_TYPE_EXTERNAL_TDM_MODE", value: 1)
!453 = !DIEnumerator(name: "HAL_I2S_TYPE_INTERNAL_MODE", value: 2)
!454 = !DIEnumerator(name: "HAL_I2S_TYPE_INTERNAL_LOOPBACK_MODE", value: 3)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 360, baseType: !7, size: 32, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462}
!457 = !DIEnumerator(name: "HAL_I2S_SAMPLE_RATE_8K", value: 0)
!458 = !DIEnumerator(name: "HAL_I2S_SAMPLE_RATE_12K", value: 1)
!459 = !DIEnumerator(name: "HAL_I2S_SAMPLE_RATE_16K", value: 2)
!460 = !DIEnumerator(name: "HAL_I2S_SAMPLE_RATE_24K", value: 3)
!461 = !DIEnumerator(name: "HAL_I2S_SAMPLE_RATE_32K", value: 4)
!462 = !DIEnumerator(name: "HAL_I2S_SAMPLE_RATE_48K", value: 5)
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !443, line: 642, baseType: !7, size: 32, elements: !464)
!464 = !{!465, !466}
!465 = !DIEnumerator(name: "HAL_I2S_MONO", value: 0)
!466 = !DIEnumerator(name: "HAL_I2S_STEREO", value: 1)
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 397, baseType: !7, size: 32, elements: !468)
!468 = !{!469, !470}
!469 = !DIEnumerator(name: "HAL_I2S_LR_SWAP_DISABLE", value: 0)
!470 = !DIEnumerator(name: "HAL_I2S_LR_SWAP_ENABLE", value: 1)
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 403, baseType: !7, size: 32, elements: !472)
!472 = !{!473, !474}
!473 = !DIEnumerator(name: "HAL_I2S_WORD_SELECT_INVERSE_DISABLE", value: 0)
!474 = !DIEnumerator(name: "HAL_I2S_WORD_SELECT_INVERSE_ENABLE", value: 1)
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !443, line: 635, baseType: !7, size: 32, elements: !476)
!476 = !{!477, !478}
!477 = !DIEnumerator(name: "HAL_I2S_MASTER", value: 0)
!478 = !DIEnumerator(name: "HAL_I2S_SLAVE", value: 1)
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 377, baseType: !7, size: 32, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIEnumerator(name: "HAL_I2S_FRAME_SYNC_WIDTH_32", value: 0)
!482 = !DIEnumerator(name: "HAL_I2S_FRAME_SYNC_WIDTH_64", value: 1)
!483 = !DIEnumerator(name: "HAL_I2S_FRAME_SYNC_WIDTH_128", value: 2)
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 370, baseType: !7, size: 32, elements: !485)
!485 = !{!486, !487, !488}
!486 = !DIEnumerator(name: "HAL_I2S_SAMPLE_WIDTH_8BIT", value: 0)
!487 = !DIEnumerator(name: "HAL_I2S_SAMPLE_WIDTH_16BIT", value: 1)
!488 = !DIEnumerator(name: "HAL_I2S_SAMPLE_WIDTH_24BIT", value: 2)
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 384, baseType: !7, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIEnumerator(name: "HAL_I2S_TX_MONO_DUPLICATE_DISABLE", value: 0)
!492 = !DIEnumerator(name: "HAL_I2S_TX_MONO_DUPLICATE_ENABLE", value: 1)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 391, baseType: !7, size: 32, elements: !494)
!494 = !{!495, !496}
!495 = !DIEnumerator(name: "HAL_I2S_RX_DOWN_RATE_DISABLE", value: 0)
!496 = !DIEnumerator(name: "HAL_I2S_RX_DOWN_RATE_ENABLE", value: 1)
!497 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_I2S_DL_MONO_STEREO_MODE_T", file: !204, line: 570, baseType: !7, size: 32, elements: !498)
!498 = !{!499, !500}
!499 = !DIEnumerator(name: "I2S_DL_MONO_MODE", value: 1)
!500 = !DIEnumerator(name: "I2S_DL_STEREO_MODE", value: 0)
!501 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 354, baseType: !7, size: 32, elements: !502)
!502 = !{!503, !504}
!503 = !DIEnumerator(name: "HAL_I2S_EVENT_DATA_REQUEST", value: 0)
!504 = !DIEnumerator(name: "HAL_I2S_EVENT_DATA_NOTIFICATION", value: 1)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_I2S_DL_SAMPLE_RATE_T", file: !204, line: 561, baseType: !7, size: 32, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DIEnumerator(name: "I2S_SAMPLE_RATE_8K", value: 0)
!508 = !DIEnumerator(name: "I2S_SAMPLE_RATE_12K", value: 2)
!509 = !DIEnumerator(name: "I2S_SAMPLE_RATE_16K", value: 4)
!510 = !DIEnumerator(name: "I2S_SAMPLE_RATE_24K", value: 6)
!511 = !DIEnumerator(name: "I2S_SAMPLE_RATE_32K", value: 8)
!512 = !DIEnumerator(name: "I2S_SAMPLE_RATE_48K", value: 10)
!513 = !{!132, !161, !217, !514, !515, !212, !115}
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !6, line: 144, baseType: !97)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!516 = !{!437}
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "i2s_internal_t", file: !204, line: 627, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 602, size: 1344, elements: !519)
!519 = !{!520, !522, !538, !549, !563, !565, !593, !594, !595, !596, !610, !616, !618, !619}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "I2S_INITIAL_TYPE", scope: !518, file: !204, line: 605, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_I2S_INITIAL_TYPE_T", file: !204, line: 558, baseType: !203)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "I2SGblCfg", scope: !518, file: !204, line: 608, baseType: !523, size: 96, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "I2S_GBL_CFG", file: !204, line: 525, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I2S_GBL_CFG", file: !204, line: 512, size: 96, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SLoopBackEn", scope: !524, file: !204, line: 513, baseType: !128, size: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SInClkSel", scope: !524, file: !204, line: 514, baseType: !128, size: 8, offset: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SOutClkSel", scope: !524, file: !204, line: 515, baseType: !128, size: 8, offset: 16)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SClkInvEn", scope: !524, file: !204, line: 516, baseType: !128, size: 8, offset: 24)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SNegCapEn", scope: !524, file: !204, line: 517, baseType: !128, size: 8, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SDLMonoDupEn", scope: !524, file: !204, line: 518, baseType: !128, size: 8, offset: 40)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "bI2S_CODEC_26M_EN", scope: !524, file: !204, line: 519, baseType: !128, size: 8, offset: 48)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "bI2S_26M_SEL", scope: !524, file: !204, line: 520, baseType: !128, size: 8, offset: 56)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SDLMonoStereoSel", scope: !524, file: !204, line: 521, baseType: !128, size: 8, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SDLSwapLR", scope: !524, file: !204, line: 522, baseType: !128, size: 8, offset: 72)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SExtSwapLR", scope: !524, file: !204, line: 523, baseType: !128, size: 8, offset: 80)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SExtCodecSel", scope: !524, file: !204, line: 524, baseType: !128, size: 8, offset: 88)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "I2SDLCfg", scope: !518, file: !204, line: 609, baseType: !539, size: 128, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "I2S_DL_CFG", file: !204, line: 535, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I2S_DL_CFG", file: !204, line: 527, size: 128, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SChPerSample", scope: !540, file: !204, line: 528, baseType: !128, size: 8)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SMsbOffset", scope: !540, file: !204, line: 529, baseType: !136, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SBitPerSample", scope: !540, file: !204, line: 530, baseType: !128, size: 8, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SSampleRate", scope: !540, file: !204, line: 531, baseType: !128, size: 8, offset: 72)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SWordSelInv", scope: !540, file: !204, line: 532, baseType: !128, size: 8, offset: 80)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SFormat", scope: !540, file: !204, line: 533, baseType: !128, size: 8, offset: 88)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SSRC", scope: !540, file: !204, line: 534, baseType: !128, size: 8, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "I2SULCfg", scope: !518, file: !204, line: 610, baseType: !550, size: 160, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "I2S_UL_CFG", file: !204, line: 548, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I2S_UL_CFG", file: !204, line: 537, size: 160, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SLRSwap", scope: !551, file: !204, line: 538, baseType: !128, size: 8)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SChPerSample", scope: !551, file: !204, line: 539, baseType: !128, size: 8, offset: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SUpdateWord", scope: !551, file: !204, line: 540, baseType: !136, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SMsbOffset", scope: !551, file: !204, line: 541, baseType: !136, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SDownRateEn", scope: !551, file: !204, line: 542, baseType: !128, size: 8, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SBitPerSample", scope: !551, file: !204, line: 543, baseType: !128, size: 8, offset: 104)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SSampleRate", scope: !551, file: !204, line: 544, baseType: !128, size: 8, offset: 112)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SWordSelInv", scope: !551, file: !204, line: 545, baseType: !128, size: 8, offset: 120)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SFormat", scope: !551, file: !204, line: 546, baseType: !128, size: 8, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SSRC", scope: !551, file: !204, line: 547, baseType: !128, size: 8, offset: 136)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_initial_type", scope: !518, file: !204, line: 612, baseType: !564, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_initial_type_t", file: !449, line: 351, baseType: !448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_user_config", scope: !518, file: !204, line: 614, baseType: !566, size: 480, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_config_t", file: !443, line: 685, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 671, size: 480, elements: !568)
!568 = !{!569, !582, !583, !585, !587, !589, !591}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_in", scope: !567, file: !443, line: 672, baseType: !570, size: 160)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_link_config_t", file: !443, line: 667, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 658, size: 160, elements: !572)
!572 = !{!573, !575, !577, !578, !580}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sample_rate", scope: !571, file: !443, line: 659, baseType: !574, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_sample_rate_t", file: !449, line: 367, baseType: !455)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "channel_number", scope: !571, file: !443, line: 660, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_channel_number_t", file: !443, line: 645, baseType: !463)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "msb_offset", scope: !571, file: !443, line: 662, baseType: !136, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lr_swap", scope: !571, file: !443, line: 664, baseType: !579, size: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_lr_swap_t", file: !449, line: 400, baseType: !467)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "word_select_inverse", scope: !571, file: !443, line: 665, baseType: !581, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_word_select_inverse_t", file: !449, line: 406, baseType: !471)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_out", scope: !567, file: !443, line: 673, baseType: !570, size: 160, offset: 160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !567, file: !443, line: 674, baseType: !584, size: 32, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_clock_mode_t", file: !443, line: 638, baseType: !475)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "frame_sync_width", scope: !567, file: !443, line: 679, baseType: !586, size: 32, offset: 352)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_frame_sync_width_t", file: !449, line: 381, baseType: !479)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sample_width", scope: !567, file: !443, line: 680, baseType: !588, size: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_sample_width_t", file: !449, line: 374, baseType: !484)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tx_mode", scope: !567, file: !443, line: 681, baseType: !590, size: 32, offset: 416)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_tx_mode_t", file: !449, line: 387, baseType: !489)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "rx_down_rate", scope: !567, file: !443, line: 683, baseType: !592, size: 32, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_rx_down_rate_t", file: !449, line: 394, baseType: !493)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_state", scope: !518, file: !204, line: 617, baseType: !378, size: 8, offset: 928)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_configured", scope: !518, file: !204, line: 618, baseType: !126, size: 8, offset: 936)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_audiotop_enabled", scope: !518, file: !204, line: 619, baseType: !126, size: 8, offset: 944)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_vfifo", scope: !518, file: !204, line: 621, baseType: !597, size: 256, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "i2s_vfifo_t", file: !204, line: 599, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 587, size: 256, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vfifo_base", scope: !598, file: !204, line: 588, baseType: !515, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vfifo_length", scope: !598, file: !204, line: 589, baseType: !136, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tx_vfifo_threshold", scope: !598, file: !204, line: 590, baseType: !136, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma_interrupt", scope: !598, file: !204, line: 591, baseType: !126, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tx_dma_configured", scope: !598, file: !204, line: 592, baseType: !126, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vfifo_base", scope: !598, file: !204, line: 594, baseType: !515, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vfifo_length", scope: !598, file: !204, line: 595, baseType: !136, size: 32, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rx_vfifo_threshold", scope: !598, file: !204, line: 596, baseType: !136, size: 32, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma_interrupt", scope: !598, file: !204, line: 597, baseType: !126, size: 8, offset: 224)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rx_dma_configured", scope: !598, file: !204, line: 598, baseType: !126, size: 8, offset: 232)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "user_tx_callback_func", scope: !518, file: !204, line: 623, baseType: !611, size: 32, offset: 1216)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_tx_callback_t", file: !443, line: 730, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 32)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615, !161}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_event_t", file: !449, line: 357, baseType: !501)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "user_rx_callback_func", scope: !518, file: !204, line: 624, baseType: !617, size: 32, offset: 1248)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_rx_callback_t", file: !443, line: 712, baseType: !612)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "user_tx_data", scope: !518, file: !204, line: 625, baseType: !161, size: 32, offset: 1280)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "user_rx_data", scope: !518, file: !204, line: 626, baseType: !161, size: 32, offset: 1312)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !622, file: !623, line: 77, type: !687, isLocal: true, isDefinition: true)
!622 = distinct !DICompileUnit(language: DW_LANG_C99, file: !623, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !624, retainedTypes: !674, globals: !676, splitDebugInlining: false, nameTableKind: None)
!623 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!624 = !{!625, !633, !638, !654, !660, !664, !242, !97, !669}
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 345, baseType: !53, size: 32, elements: !627)
!626 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!627 = !{!628, !629, !630, !631, !632}
!628 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!629 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!630 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!631 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!632 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!633 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 109, baseType: !7, size: 32, elements: !634)
!634 = !{!635, !636, !637}
!635 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!636 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!637 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!638 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 302, baseType: !7, size: 32, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!640 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!641 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!642 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!643 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!644 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!645 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!646 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!647 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!648 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!649 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!650 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!651 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!652 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!653 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!654 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 321, baseType: !7, size: 32, elements: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!657 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!658 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!659 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!660 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 330, baseType: !7, size: 32, elements: !661)
!661 = !{!662, !663}
!662 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!663 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!664 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 337, baseType: !7, size: 32, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!667 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!668 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!669 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !626, line: 355, baseType: !53, size: 32, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!672 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!673 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!674 = !{!7, !161, !132, !675, !128}
!675 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!676 = !{!620, !677}
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(name: "func_tbl", scope: !679, file: !623, line: 536, type: !685, isLocal: true, isDefinition: true)
!679 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !623, file: !623, line: 534, type: !680, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{!179, !682}
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !449, line: 113, baseType: !633)
!683 = !{!684}
!684 = !DILocalVariable(name: "uart_port", arg: 1, scope: !679, file: !623, line: 534, type: !682)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 64, elements: !410)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 1024, elements: !410)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !623, line: 75, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 68, size: 512, elements: !690)
!690 = !{!691, !692, !704, !705, !716, !717}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !689, file: !623, line: 69, baseType: !126, size: 8)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !689, file: !623, line: 70, baseType: !693, size: 128, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !626, line: 378, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !626, line: 373, size: 128, elements: !695)
!695 = !{!696, !698, !700, !702}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !694, file: !626, line: 374, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !626, line: 317, baseType: !638)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !694, file: !626, line: 375, baseType: !699, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !626, line: 326, baseType: !654)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !694, file: !626, line: 376, baseType: !701, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !626, line: 333, baseType: !660)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !694, file: !626, line: 377, baseType: !703, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !626, line: 341, baseType: !664)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !689, file: !623, line: 71, baseType: !126, size: 8, offset: 160)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !689, file: !623, line: 72, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !623, line: 66, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 63, size: 64, elements: !708)
!708 = !{!709, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !707, file: !623, line: 64, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !626, line: 410, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714, !161}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !626, line: 359, baseType: !669)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !707, file: !623, line: 65, baseType: !161, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !689, file: !623, line: 73, baseType: !126, size: 8, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !689, file: !623, line: 74, baseType: !718, size: 224, offset: 288)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !626, line: 390, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !626, line: 382, size: 224, elements: !720)
!720 = !{!721, !723, !724, !725, !726, !727, !728}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !719, file: !626, line: 383, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !719, file: !626, line: 384, baseType: !136, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !719, file: !626, line: 385, baseType: !136, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !719, file: !626, line: 386, baseType: !722, size: 32, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !719, file: !626, line: 387, baseType: !136, size: 32, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !719, file: !626, line: 388, baseType: !136, size: 32, offset: 160)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !719, file: !626, line: 389, baseType: !136, size: 32, offset: 192)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(name: "I2S_TxBuf", scope: !731, file: !732, line: 50, type: !781, isLocal: true, isDefinition: true)
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !732, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !733, retainedTypes: !765, globals: !766, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/i2s_internal_loopback/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!733 = !{!633, !638, !654, !660, !664, !734, !455, !463, !467, !471, !475, !479, !484, !489, !493, !442, !448}
!734 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !449, line: 249, baseType: !7, size: 32, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!736 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!737 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!738 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!739 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!740 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!741 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!742 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!743 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!744 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!745 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!746 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!747 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!748 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!749 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!750 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!751 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!752 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!753 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!754 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!755 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!756 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!757 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!758 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!759 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!760 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!761 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!762 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!763 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!764 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!765 = !{!53, !7}
!766 = !{!729, !767, !772, !779}
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "I2S_RxBuf", scope: !731, file: !732, line: 51, type: !769, isLocal: true, isDefinition: true)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 65536, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 2048)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "audio_Tone2k_16kSR", scope: !731, file: !732, line: 54, type: !774, isLocal: true, isDefinition: true)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 512, elements: !777)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 36, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 57, baseType: !216)
!777 = !{!778}
!778 = !DISubrange(count: 32)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(name: "USER_Rx_Buf", scope: !731, file: !732, line: 52, type: !781, isLocal: true, isDefinition: true)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1024, elements: !777)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !784, file: !785, line: 59, type: !136, isLocal: false, isDefinition: true)
!784 = distinct !DICompileUnit(language: DW_LANG_C99, file: !785, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !786, globals: !839, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/i2s_internal_loopback/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!786 = !{!787, !795, !820}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !354, line: 656, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 650, size: 128, elements: !790)
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !789, file: !354, line: 652, baseType: !231, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !789, file: !354, line: 653, baseType: !231, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !789, file: !354, line: 654, baseType: !231, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !789, file: !354, line: 655, baseType: !391, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !354, line: 418, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 395, size: 1120, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !797, file: !354, line: 397, baseType: !391, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !797, file: !354, line: 398, baseType: !231, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !797, file: !354, line: 399, baseType: !231, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !797, file: !354, line: 400, baseType: !231, size: 32, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !797, file: !354, line: 401, baseType: !231, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !797, file: !354, line: 402, baseType: !231, size: 32, offset: 160)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !797, file: !354, line: 403, baseType: !398, size: 96, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !797, file: !354, line: 404, baseType: !231, size: 32, offset: 288)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !797, file: !354, line: 405, baseType: !231, size: 32, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !797, file: !354, line: 406, baseType: !231, size: 32, offset: 352)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !797, file: !354, line: 407, baseType: !231, size: 32, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !797, file: !354, line: 408, baseType: !231, size: 32, offset: 416)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !797, file: !354, line: 409, baseType: !231, size: 32, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !797, file: !354, line: 410, baseType: !231, size: 32, offset: 480)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !797, file: !354, line: 411, baseType: !409, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !797, file: !354, line: 412, baseType: !391, size: 32, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !797, file: !354, line: 413, baseType: !391, size: 32, offset: 608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !797, file: !354, line: 414, baseType: !415, size: 128, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !797, file: !354, line: 415, baseType: !419, size: 160, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !797, file: !354, line: 416, baseType: !423, size: 160, offset: 928)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !797, file: !354, line: 417, baseType: !231, size: 32, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !306, line: 72, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 56, size: 525312, elements: !823)
!823 = !{!824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !822, file: !306, line: 57, baseType: !231, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !822, file: !306, line: 58, baseType: !231, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !822, file: !306, line: 59, baseType: !231, size: 32, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !822, file: !306, line: 60, baseType: !231, size: 32, offset: 96)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !822, file: !306, line: 61, baseType: !231, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !822, file: !306, line: 62, baseType: !231, size: 32, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !822, file: !306, line: 63, baseType: !231, size: 32, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !822, file: !306, line: 64, baseType: !231, size: 32, offset: 224)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !822, file: !306, line: 65, baseType: !231, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !822, file: !306, line: 66, baseType: !231, size: 32, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !822, file: !306, line: 67, baseType: !320, size: 32, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !822, file: !306, line: 68, baseType: !231, size: 32, offset: 352)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !822, file: !306, line: 69, baseType: !325, size: 523904, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !822, file: !306, line: 70, baseType: !329, size: 512, offset: 524288)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !822, file: !306, line: 71, baseType: !329, size: 512, offset: 524800)
!839 = !{!782, !840}
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !784, file: !785, line: 61, type: !231, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "heap_end", scope: !844, file: !845, line: 66, type: !850, isLocal: true, isDefinition: true)
!844 = distinct !DISubprogram(name: "_sbrk_r", scope: !845, file: !845, line: 63, type: !846, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !1044)
!845 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!846 = !DISubroutineType(types: !847)
!847 = !{!848, !851, !1039}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !849, line: 123, baseType: !850)
!849 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 32)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !853, line: 377, size: 1920, elements: !854)
!853 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!854 = !{!855, !856, !930, !931, !932, !933, !934, !935, !936, !939, !960, !964, !965, !966, !967, !977, !990, !991, !996, !1013, !1014, !1021, !1022, !1038}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !852, file: !853, line: 381, baseType: !53, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !852, file: !853, line: 386, baseType: !857, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !853, line: 292, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !853, line: 186, size: 832, elements: !860)
!860 = !{!861, !863, !864, !865, !867, !868, !873, !874, !875, !876, !880, !886, !893, !897, !898, !899, !900, !904, !906, !907, !908, !910, !916, !929}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !859, file: !853, line: 187, baseType: !862, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !859, file: !853, line: 188, baseType: !53, size: 32, offset: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !859, file: !853, line: 189, baseType: !53, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !859, file: !853, line: 190, baseType: !866, size: 16, offset: 96)
!866 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !859, file: !853, line: 191, baseType: !866, size: 16, offset: 112)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !859, file: !853, line: 192, baseType: !869, size: 64, offset: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !853, line: 122, size: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !869, file: !853, line: 123, baseType: !862, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !869, file: !853, line: 124, baseType: !53, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !859, file: !853, line: 193, baseType: !53, size: 32, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !859, file: !853, line: 196, baseType: !851, size: 32, offset: 224)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !859, file: !853, line: 200, baseType: !161, size: 32, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !859, file: !853, line: 202, baseType: !877, size: 32, offset: 288)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 32)
!878 = !DISubroutineType(types: !879)
!879 = !{!53, !851, !161, !850, !53}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !859, file: !853, line: 204, baseType: !881, size: 32, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 32)
!882 = !DISubroutineType(types: !883)
!883 = !{!53, !851, !161, !884, !53}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !859, file: !853, line: 207, baseType: !887, size: 32, offset: 352)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 32)
!888 = !DISubroutineType(types: !889)
!889 = !{!890, !851, !161, !890, !53}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !891, line: 116, baseType: !892)
!891 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!892 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !859, file: !853, line: 208, baseType: !894, size: 32, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 32)
!895 = !DISubroutineType(types: !896)
!896 = !{!53, !851, !161}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !859, file: !853, line: 211, baseType: !869, size: 64, offset: 416)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !859, file: !853, line: 212, baseType: !862, size: 32, offset: 480)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !859, file: !853, line: 213, baseType: !53, size: 32, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !859, file: !853, line: 216, baseType: !901, size: 24, offset: 544)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 24, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 3)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !859, file: !853, line: 217, baseType: !905, size: 8, offset: 568)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8, elements: !321)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !859, file: !853, line: 220, baseType: !869, size: 64, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !859, file: !853, line: 223, baseType: !53, size: 32, offset: 640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !859, file: !853, line: 224, baseType: !909, size: 32, offset: 672)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !891, line: 46, baseType: !892)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !859, file: !853, line: 231, baseType: !911, size: 32, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !853, line: 35, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !913, line: 34, baseType: !914)
!913 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 32)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !913, line: 33, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !859, file: !853, line: 233, baseType: !917, size: 64, offset: 736)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !891, line: 170, baseType: !918)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 162, size: 64, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !918, file: !891, line: 164, baseType: !53, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !918, file: !891, line: 169, baseType: !922, size: 32, offset: 32)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !891, line: 165, size: 32, elements: !923)
!923 = !{!924, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !922, file: !891, line: 167, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !926, line: 116, baseType: !53)
!926 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !922, file: !891, line: 168, baseType: !928, size: 32)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !416)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !859, file: !853, line: 234, baseType: !53, size: 32, offset: 800)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !852, file: !853, line: 386, baseType: !857, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !852, file: !853, line: 386, baseType: !857, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !852, file: !853, line: 388, baseType: !53, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !852, file: !853, line: 390, baseType: !850, size: 32, offset: 160)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !852, file: !853, line: 392, baseType: !53, size: 32, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !852, file: !853, line: 394, baseType: !53, size: 32, offset: 224)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !852, file: !853, line: 395, baseType: !937, size: 32, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 32)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !853, line: 45, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !852, file: !853, line: 397, baseType: !940, size: 32, offset: 288)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 32)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !853, line: 349, size: 128, elements: !942)
!942 = !{!943, !956, !957, !958}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !941, file: !853, line: 352, baseType: !944, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 32)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !853, line: 52, size: 192, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !945, file: !853, line: 54, baseType: !944, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !945, file: !853, line: 55, baseType: !53, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !945, file: !853, line: 55, baseType: !53, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !945, file: !853, line: 55, baseType: !53, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !945, file: !853, line: 55, baseType: !53, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !945, file: !853, line: 56, baseType: !953, size: 32, offset: 160)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 32, elements: !321)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !853, line: 22, baseType: !955)
!955 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !941, file: !853, line: 353, baseType: !53, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !941, file: !853, line: 354, baseType: !944, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !941, file: !853, line: 355, baseType: !959, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !852, file: !853, line: 399, baseType: !961, size: 32, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 32)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !851}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !852, file: !853, line: 401, baseType: !53, size: 32, offset: 352)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !852, file: !853, line: 404, baseType: !53, size: 32, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !852, file: !853, line: 405, baseType: !850, size: 32, offset: 416)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !852, file: !853, line: 407, baseType: !968, size: 32, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 32)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !853, line: 324, size: 192, elements: !970)
!970 = !{!971, !973, !974, !975}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !969, file: !853, line: 325, baseType: !972, size: 48)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 48, elements: !902)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !969, file: !853, line: 326, baseType: !972, size: 48, offset: 48)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !969, file: !853, line: 327, baseType: !216, size: 16, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !969, file: !853, line: 330, baseType: !976, size: 64, offset: 128)
!976 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !852, file: !853, line: 408, baseType: !978, size: 32, offset: 480)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 32)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !853, line: 60, size: 288, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !979, file: !853, line: 62, baseType: !53, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !979, file: !853, line: 63, baseType: !53, size: 32, offset: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !979, file: !853, line: 64, baseType: !53, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !979, file: !853, line: 65, baseType: !53, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !979, file: !853, line: 66, baseType: !53, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !979, file: !853, line: 67, baseType: !53, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !979, file: !853, line: 68, baseType: !53, size: 32, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !979, file: !853, line: 69, baseType: !53, size: 32, offset: 224)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !979, file: !853, line: 70, baseType: !53, size: 32, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !852, file: !853, line: 409, baseType: !850, size: 32, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !852, file: !853, line: 412, baseType: !992, size: 32, offset: 544)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 32)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !53}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !852, file: !853, line: 416, baseType: !997, size: 32, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 32)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !853, line: 90, size: 1120, elements: !999)
!999 = !{!1000, !1001, !1002, !1004}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !998, file: !853, line: 91, baseType: !997, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !998, file: !853, line: 92, baseType: !53, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !998, file: !853, line: 93, baseType: !1003, size: 1024, offset: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !777)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !998, file: !853, line: 94, baseType: !1005, size: 32, offset: 1088)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 32)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !853, line: 79, size: 2112, elements: !1007)
!1007 = !{!1008, !1010, !1011, !1012}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1006, file: !853, line: 80, baseType: !1009, size: 1024)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !777)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1006, file: !853, line: 81, baseType: !1009, size: 1024, offset: 1024)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1006, file: !853, line: 83, baseType: !954, size: 32, offset: 2048)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1006, file: !853, line: 86, baseType: !954, size: 32, offset: 2080)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !852, file: !853, line: 417, baseType: !998, size: 1120, offset: 608)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !852, file: !853, line: 420, baseType: !1015, size: 96, offset: 1728)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !853, line: 296, size: 96, elements: !1016)
!1016 = !{!1017, !1019, !1020}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1015, file: !853, line: 298, baseType: !1018, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1015, file: !853, line: 299, baseType: !53, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1015, file: !853, line: 300, baseType: !857, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !852, file: !853, line: 421, baseType: !857, size: 32, offset: 1824)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !852, file: !853, line: 422, baseType: !1023, size: 32, offset: 1856)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 32)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !853, line: 359, size: 640, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1032, !1033, !1034, !1035, !1036, !1037}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1024, file: !853, line: 362, baseType: !850, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1024, file: !853, line: 363, baseType: !917, size: 64, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1024, file: !853, line: 364, baseType: !917, size: 64, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1024, file: !853, line: 365, baseType: !917, size: 64, offset: 160)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1024, file: !853, line: 366, baseType: !1031, size: 64, offset: 224)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 64, elements: !359)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1024, file: !853, line: 367, baseType: !53, size: 32, offset: 288)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1024, file: !853, line: 368, baseType: !917, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1024, file: !853, line: 369, baseType: !917, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1024, file: !853, line: 370, baseType: !917, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1024, file: !853, line: 371, baseType: !917, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1024, file: !853, line: 372, baseType: !917, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !852, file: !853, line: 423, baseType: !850, size: 32, offset: 1888)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !926, line: 46, baseType: !7)
!1040 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1041, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1042, globals: !1043, splitDebugInlining: false, nameTableKind: None)
!1041 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1042 = !{!850, !848}
!1043 = !{!842}
!1044 = !{!1045, !1046, !1047, !1048}
!1045 = !DILocalVariable(name: "r", arg: 1, scope: !844, file: !845, line: 63, type: !851)
!1046 = !DILocalVariable(name: "nbytes", arg: 2, scope: !844, file: !845, line: 63, type: !1039)
!1047 = !DILocalVariable(name: "prev_heap_end", scope: !844, file: !845, line: 67, type: !850)
!1048 = !DILocalVariable(name: "stack", scope: !844, file: !845, line: 68, type: !850)
!1049 = !DIGlobalVariableExpression(var: !1050, expr: !DIExpression())
!1050 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !1051, file: !1056, line: 4, type: !1060, isLocal: false, isDefinition: true)
!1051 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1052, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1053, splitDebugInlining: false, nameTableKind: None)
!1052 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1053 = !{!1049, !1054, !1058}
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !1051, file: !1056, line: 5, type: !1057, isLocal: false, isDefinition: true)
!1056 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 88, elements: !190)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !1051, file: !1056, line: 6, type: !1057, isLocal: false, isDefinition: true)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 248, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 31)
!1063 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1064, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1065, retainedTypes: !1071, splitDebugInlining: false, nameTableKind: None)
!1064 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1065 = !{!1066}
!1066 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1067, line: 1209, baseType: !7, size: 32, elements: !1068)
!1067 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1068 = !{!1069, !1070}
!1069 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!1070 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!1071 = !{!115, !114}
!1072 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1073, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1074, retainedTypes: !1152, splitDebugInlining: false, nameTableKind: None)
!1073 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1074 = !{!1075}
!1075 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1076, line: 150, baseType: !7, size: 32, elements: !1077)
!1076 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1078 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!1079 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!1080 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!1081 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!1082 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!1083 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!1084 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!1085 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!1086 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!1087 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!1088 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!1089 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!1090 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!1091 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!1092 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!1093 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!1094 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!1095 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!1096 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!1097 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!1098 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!1099 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!1100 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!1101 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!1102 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!1103 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!1104 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!1105 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!1106 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!1107 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!1108 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!1109 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!1110 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!1111 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!1112 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!1113 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!1114 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!1115 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!1116 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!1117 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!1118 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!1119 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!1120 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!1121 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!1122 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!1123 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!1124 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!1125 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!1126 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!1127 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!1128 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!1129 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!1130 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!1131 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!1132 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!1133 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!1134 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!1135 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!1136 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!1137 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!1138 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!1139 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!1140 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!1141 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!1142 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!1143 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!1144 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!1145 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!1146 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!1147 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!1148 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!1149 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!1150 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!1151 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!1152 = !{!115, !217}
!1153 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1154, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1155, splitDebugInlining: false, nameTableKind: None)
!1154 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1155 = !{!1156, !1181}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !354, line: 418, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 395, size: 1120, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1158, file: !354, line: 397, baseType: !391, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1158, file: !354, line: 398, baseType: !231, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1158, file: !354, line: 399, baseType: !231, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1158, file: !354, line: 400, baseType: !231, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1158, file: !354, line: 401, baseType: !231, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1158, file: !354, line: 402, baseType: !231, size: 32, offset: 160)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1158, file: !354, line: 403, baseType: !398, size: 96, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1158, file: !354, line: 404, baseType: !231, size: 32, offset: 288)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1158, file: !354, line: 405, baseType: !231, size: 32, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1158, file: !354, line: 406, baseType: !231, size: 32, offset: 352)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1158, file: !354, line: 407, baseType: !231, size: 32, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1158, file: !354, line: 408, baseType: !231, size: 32, offset: 416)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1158, file: !354, line: 409, baseType: !231, size: 32, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1158, file: !354, line: 410, baseType: !231, size: 32, offset: 480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1158, file: !354, line: 411, baseType: !409, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1158, file: !354, line: 412, baseType: !391, size: 32, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1158, file: !354, line: 413, baseType: !391, size: 32, offset: 608)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1158, file: !354, line: 414, baseType: !415, size: 128, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1158, file: !354, line: 415, baseType: !419, size: 160, offset: 768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1158, file: !354, line: 416, baseType: !423, size: 160, offset: 928)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1158, file: !354, line: 417, baseType: !231, size: 32, offset: 1088)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !354, line: 378, baseType: !1183)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 363, size: 28704, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1183, file: !354, line: 365, baseType: !358, size: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1183, file: !354, line: 366, baseType: !362, size: 768, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1183, file: !354, line: 367, baseType: !358, size: 256, offset: 1024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1183, file: !354, line: 368, baseType: !362, size: 768, offset: 1280)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1183, file: !354, line: 369, baseType: !358, size: 256, offset: 2048)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1183, file: !354, line: 370, baseType: !362, size: 768, offset: 2304)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1183, file: !354, line: 371, baseType: !358, size: 256, offset: 3072)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1183, file: !354, line: 372, baseType: !362, size: 768, offset: 3328)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1183, file: !354, line: 373, baseType: !358, size: 256, offset: 4096)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1183, file: !354, line: 374, baseType: !373, size: 1792, offset: 4352)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1183, file: !354, line: 375, baseType: !377, size: 1920, offset: 6144)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1183, file: !354, line: 376, baseType: !382, size: 20608, offset: 8064)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1183, file: !354, line: 377, baseType: !231, size: 32, offset: 28672)
!1198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1199, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1200, splitDebugInlining: false, nameTableKind: None)
!1199 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1200 = !{!1201, !1075}
!1201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1202, line: 55, baseType: !7, size: 32, elements: !1203)
!1202 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1204 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1205 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1206 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1207 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1208 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1209 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1210 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1211 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1212 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1213 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1214 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1215 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1216 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1217 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1218 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1219 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1220 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1221 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1222 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1223 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1224 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1225 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1226 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1227 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1228 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1229 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1230 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1231 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1232 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1233, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1233 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1235, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1236, retainedTypes: !1269, splitDebugInlining: false, nameTableKind: None)
!1235 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1236 = !{!1237, !734, !1201, !1244, !1250, !1254, !1258, !1264}
!1237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1238, line: 233, baseType: !53, size: 32, elements: !1239)
!1238 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1239 = !{!1240, !1241, !1242, !1243}
!1240 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1241 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1242 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1243 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1238, line: 224, baseType: !53, size: 32, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249}
!1246 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1247 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1248 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1249 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1250 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1238, line: 217, baseType: !7, size: 32, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1253 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1254 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1238, line: 210, baseType: !7, size: 32, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1257 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1258 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1238, line: 242, baseType: !7, size: 32, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1261 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1262 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1263 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1265, line: 57, baseType: !7, size: 32, elements: !1266)
!1265 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1266 = !{!1267, !1268}
!1267 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1268 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1269 = !{!1270, !161, !1271, !128, !1272, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1202, line: 87, baseType: !1201)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1238, line: 220, baseType: !1250)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1238, line: 247, baseType: !1258)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1265, line: 60, baseType: !1264)
!1274 = !{!"Ubuntu clang version 14.0.6"}
!1275 = !{i32 7, !"Dwarf Version", i32 2}
!1276 = !{i32 2, !"Debug Info Version", i32 3}
!1277 = !{i32 1, !"wchar_size", i32 4}
!1278 = !{i32 1, !"min_enum_size", i32 4}
!1279 = !{i32 1, !"branch-target-enforcement", i32 0}
!1280 = !{i32 1, !"sign-return-address", i32 0}
!1281 = !{i32 1, !"sign-return-address-all", i32 0}
!1282 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1283 = !{i32 7, !"frame-pointer", i32 2}
!1284 = distinct !DISubprogram(name: "DMA_ERROR_LISR", scope: !3, file: !3, line: 509, type: !181, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1285 = !{}
!1286 = !DILocation(line: 511, column: 5, scope: !1284)
!1287 = distinct !{!1287, !1286, !1288}
!1288 = !DILocation(line: 511, column: 14, scope: !1284)
!1289 = distinct !DISubprogram(name: "DMA_Stop", scope: !3, file: !3, line: 73, type: !1290, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !128}
!1292 = !{!1293}
!1293 = !DILocalVariable(name: "channel", arg: 1, scope: !1289, file: !3, line: 73, type: !128)
!1294 = !DILocation(line: 0, scope: !1289)
!1295 = !DILocation(line: 75, column: 5, scope: !1289)
!1296 = !DILocation(line: 76, column: 5, scope: !1289)
!1297 = !DILocation(line: 77, column: 1, scope: !1289)
!1298 = distinct !DISubprogram(name: "DMA_Run", scope: !3, file: !3, line: 79, type: !1290, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1299 = !{!1300}
!1300 = !DILocalVariable(name: "channel", arg: 1, scope: !1298, file: !3, line: 79, type: !128)
!1301 = !DILocation(line: 0, scope: !1298)
!1302 = !DILocation(line: 81, column: 5, scope: !1298)
!1303 = !DILocation(line: 82, column: 5, scope: !1298)
!1304 = !DILocation(line: 83, column: 1, scope: !1298)
!1305 = distinct !DISubprogram(name: "DMA_GetChannel", scope: !3, file: !3, line: 86, type: !1306, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!128, !134}
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1305, file: !3, line: 86, type: !134)
!1310 = !DILocalVariable(name: "index", scope: !1305, file: !3, line: 88, type: !174)
!1311 = !DILocalVariable(name: "handle", scope: !1305, file: !3, line: 89, type: !174)
!1312 = !DILocalVariable(name: "flags", scope: !1305, file: !3, line: 90, type: !955)
!1313 = !DILocation(line: 0, scope: !1305)
!1314 = !DILocation(line: 470, column: 3, scope: !1315, inlinedAt: !1321)
!1315 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1316, file: !1316, line: 466, type: !1317, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1316 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!136}
!1319 = !{!1320}
!1320 = !DILocalVariable(name: "result", scope: !1315, file: !1316, line: 468, type: !136)
!1321 = distinct !DILocation(line: 93, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 93, column: 5)
!1323 = !{i64 316311}
!1324 = !DILocation(line: 0, scope: !1315, inlinedAt: !1321)
!1325 = !DILocation(line: 330, column: 3, scope: !1326, inlinedAt: !1327)
!1326 = distinct !DISubprogram(name: "__disable_irq", scope: !1316, file: !1316, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1327 = distinct !DILocation(line: 93, column: 5, scope: !1322)
!1328 = !{i64 312975}
!1329 = !DILocation(line: 95, column: 5, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 95, column: 5)
!1331 = !DILocation(line: 96, column: 41, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 96, column: 13)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 95, column: 79)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 95, column: 5)
!1335 = !DILocation(line: 96, column: 33, scope: !1332)
!1336 = !DILocation(line: 96, column: 52, scope: !1332)
!1337 = !DILocation(line: 96, column: 13, scope: !1333)
!1338 = !DILocation(line: 100, column: 35, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 96, column: 58)
!1340 = !DILocation(line: 100, column: 32, scope: !1339)
!1341 = !DILocation(line: 102, column: 13, scope: !1339)
!1342 = !DILocation(line: 95, column: 75, scope: !1334)
!1343 = !DILocation(line: 95, column: 50, scope: !1334)
!1344 = distinct !{!1344, !1329, !1345}
!1345 = !DILocation(line: 104, column: 5, scope: !1330)
!1346 = !DILocalVariable(name: "priMask", arg: 1, scope: !1347, file: !1316, line: 481, type: !136)
!1347 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1316, file: !1316, line: 481, type: !1348, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !136}
!1350 = !{!1346}
!1351 = !DILocation(line: 0, scope: !1347, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 105, column: 5, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 105, column: 5)
!1354 = !DILocation(line: 483, column: 3, scope: !1347, inlinedAt: !1352)
!1355 = !{i64 316629}
!1356 = !DILocation(line: 109, column: 15, scope: !1305)
!1357 = !DILocation(line: 109, column: 22, scope: !1305)
!1358 = !DILocation(line: 109, column: 5, scope: !1305)
!1359 = !DILocation(line: 109, column: 27, scope: !1305)
!1360 = !DILocation(line: 111, column: 5, scope: !1305)
!1361 = distinct !DISubprogram(name: "DMA_FreeChannel", scope: !3, file: !3, line: 114, type: !1290, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1362 = !{!1363, !1364}
!1363 = !DILocalVariable(name: "handle", arg: 1, scope: !1361, file: !3, line: 114, type: !128)
!1364 = !DILocalVariable(name: "flags", scope: !1361, file: !3, line: 116, type: !955)
!1365 = !DILocation(line: 0, scope: !1361)
!1366 = !DILocation(line: 470, column: 3, scope: !1315, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 118, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 118, column: 5)
!1369 = !DILocation(line: 0, scope: !1315, inlinedAt: !1367)
!1370 = !DILocation(line: 330, column: 3, scope: !1326, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 118, column: 5, scope: !1368)
!1372 = !DILocation(line: 121, column: 36, scope: !1361)
!1373 = !DILocation(line: 121, column: 33, scope: !1361)
!1374 = !DILocation(line: 121, column: 24, scope: !1361)
!1375 = !DILocation(line: 123, column: 5, scope: !1361)
!1376 = !DILocation(line: 125, column: 22, scope: !1361)
!1377 = !DILocation(line: 125, column: 5, scope: !1361)
!1378 = !DILocation(line: 125, column: 27, scope: !1361)
!1379 = !DILocation(line: 0, scope: !1347, inlinedAt: !1380)
!1380 = distinct !DILocation(line: 127, column: 5, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 127, column: 5)
!1382 = !DILocation(line: 483, column: 3, scope: !1347, inlinedAt: !1380)
!1383 = !DILocation(line: 129, column: 1, scope: !1361)
!1384 = distinct !DISubprogram(name: "DMA_FullSize_CheckIdleChannel", scope: !3, file: !3, line: 131, type: !1385, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!128, !134, !128}
!1387 = !{!1388, !1389, !1390, !1391, !1392}
!1388 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1384, file: !3, line: 131, type: !134)
!1389 = !DILocalVariable(name: "channel", arg: 2, scope: !1384, file: !3, line: 131, type: !128)
!1390 = !DILocalVariable(name: "index", scope: !1384, file: !3, line: 133, type: !174)
!1391 = !DILocalVariable(name: "handle", scope: !1384, file: !3, line: 134, type: !174)
!1392 = !DILocalVariable(name: "flags", scope: !1384, file: !3, line: 135, type: !955)
!1393 = !DILocation(line: 0, scope: !1384)
!1394 = !DILocation(line: 470, column: 3, scope: !1315, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 137, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 137, column: 5)
!1397 = !DILocation(line: 0, scope: !1315, inlinedAt: !1395)
!1398 = !DILocation(line: 330, column: 3, scope: !1326, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 137, column: 5, scope: !1396)
!1400 = !DILocation(line: 139, column: 21, scope: !1384)
!1401 = !DILocation(line: 140, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 140, column: 9)
!1403 = !DILocation(line: 140, column: 9, scope: !1384)
!1404 = !DILocation(line: 140, column: 9, scope: !1402)
!1405 = !DILocation(line: 144, column: 10, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 144, column: 9)
!1407 = !DILocation(line: 144, column: 37, scope: !1406)
!1408 = !DILocation(line: 144, column: 29, scope: !1406)
!1409 = !DILocation(line: 144, column: 48, scope: !1406)
!1410 = !DILocation(line: 144, column: 9, scope: !1384)
!1411 = !DILocation(line: 148, column: 31, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 144, column: 54)
!1413 = !DILocation(line: 148, column: 28, scope: !1412)
!1414 = !DILocation(line: 150, column: 5, scope: !1412)
!1415 = !DILocation(line: 0, scope: !1347, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 153, column: 5, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 153, column: 5)
!1418 = !DILocation(line: 483, column: 3, scope: !1347, inlinedAt: !1416)
!1419 = !DILocation(line: 156, column: 15, scope: !1384)
!1420 = !DILocation(line: 156, column: 22, scope: !1384)
!1421 = !DILocation(line: 156, column: 5, scope: !1384)
!1422 = !DILocation(line: 156, column: 27, scope: !1384)
!1423 = !DILocation(line: 157, column: 5, scope: !1384)
!1424 = !DILocation(line: 158, column: 1, scope: !1384)
!1425 = distinct !DISubprogram(name: "DMA_FullSize_FreeChannel", scope: !3, file: !3, line: 160, type: !1290, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1426)
!1426 = !{!1427, !1428}
!1427 = !DILocalVariable(name: "handle", arg: 1, scope: !1425, file: !3, line: 160, type: !128)
!1428 = !DILocalVariable(name: "flags", scope: !1425, file: !3, line: 162, type: !955)
!1429 = !DILocation(line: 0, scope: !1425)
!1430 = !DILocation(line: 470, column: 3, scope: !1315, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 164, column: 5, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 164, column: 5)
!1433 = !DILocation(line: 0, scope: !1315, inlinedAt: !1431)
!1434 = !DILocation(line: 330, column: 3, scope: !1326, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 164, column: 5, scope: !1432)
!1436 = !DILocation(line: 165, column: 36, scope: !1425)
!1437 = !DILocation(line: 165, column: 33, scope: !1425)
!1438 = !DILocation(line: 165, column: 24, scope: !1425)
!1439 = !DILocation(line: 167, column: 5, scope: !1425)
!1440 = !DILocation(line: 169, column: 22, scope: !1425)
!1441 = !DILocation(line: 169, column: 5, scope: !1425)
!1442 = !DILocation(line: 169, column: 27, scope: !1425)
!1443 = !DILocation(line: 0, scope: !1347, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 171, column: 5, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 171, column: 5)
!1446 = !DILocation(line: 483, column: 3, scope: !1347, inlinedAt: !1444)
!1447 = !DILocation(line: 173, column: 1, scope: !1425)
!1448 = distinct !DISubprogram(name: "DMA_Config_Internal", scope: !3, file: !3, line: 175, type: !1449, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1462)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !128, !1451, !126, !126, !128, !126}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !1454)
!1454 = !{!1455, !1457, !1459, !1460, !1461}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !6, line: 190, baseType: !1456, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Type", file: !6, line: 122, baseType: !34)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1453, file: !6, line: 191, baseType: !1458, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TranSize", file: !6, line: 114, baseType: !41)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1453, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !1453, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1453, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1463 = !DILocalVariable(name: "dma_no", arg: 1, scope: !1448, file: !3, line: 175, type: !128)
!1464 = !DILocalVariable(name: "dma_menu", arg: 2, scope: !1448, file: !3, line: 176, type: !1451)
!1465 = !DILocalVariable(name: "fullsize", arg: 3, scope: !1448, file: !3, line: 177, type: !126)
!1466 = !DILocalVariable(name: "b2w", arg: 4, scope: !1448, file: !3, line: 178, type: !126)
!1467 = !DILocalVariable(name: "limit", arg: 5, scope: !1448, file: !3, line: 178, type: !128)
!1468 = !DILocalVariable(name: "start", arg: 6, scope: !1448, file: !3, line: 179, type: !126)
!1469 = !DILocalVariable(name: "dma_con", scope: !1448, file: !3, line: 181, type: !114)
!1470 = !DILocalVariable(name: "temp", scope: !1448, file: !3, line: 182, type: !114)
!1471 = !DILocation(line: 0, scope: !1448)
!1472 = !DILocation(line: 184, column: 5, scope: !1448)
!1473 = !DILocation(line: 186, column: 9, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 186, column: 9)
!1475 = !DILocation(line: 186, column: 9, scope: !1448)
!1476 = !DILocation(line: 187, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 187, column: 9)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 187, column: 9)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 186, column: 35)
!1480 = distinct !{!1480, !1476, !1476}
!1481 = !DILocation(line: 190, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 190, column: 9)
!1483 = !DILocation(line: 190, column: 9, scope: !1448)
!1484 = !DILocation(line: 191, column: 9, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 191, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 191, column: 9)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 190, column: 34)
!1488 = distinct !{!1488, !1484, !1484}
!1489 = !DILocation(line: 194, column: 5, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 194, column: 5)
!1491 = !DILocation(line: 194, column: 5, scope: !1448)
!1492 = !DILocation(line: 194, column: 5, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 194, column: 5)
!1494 = distinct !{!1494, !1492, !1492}
!1495 = !DILocation(line: 196, column: 9, scope: !1448)
!1496 = !DILocation(line: 197, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 197, column: 9)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 197, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 196, column: 31)
!1500 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 196, column: 9)
!1501 = distinct !{!1501, !1496, !1496}
!1502 = !DILocation(line: 200, column: 5, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 200, column: 5)
!1504 = !DILocation(line: 200, column: 5, scope: !1448)
!1505 = !DILocation(line: 200, column: 5, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 200, column: 5)
!1507 = distinct !{!1507, !1505, !1505}
!1508 = !DILocation(line: 202, column: 5, scope: !1448)
!1509 = !DILocation(line: 204, column: 23, scope: !1448)
!1510 = !DILocation(line: 204, column: 5, scope: !1448)
!1511 = !DILocation(line: 0, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 209, column: 17)
!1513 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 204, column: 29)
!1514 = !DILocation(line: 209, column: 17, scope: !1513)
!1515 = !DILocation(line: 212, column: 71, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 211, column: 13)
!1517 = !DILocation(line: 212, column: 78, scope: !1516)
!1518 = !DILocation(line: 219, column: 42, scope: !1513)
!1519 = !DILocation(line: 224, column: 21, scope: !1513)
!1520 = !DILocation(line: 228, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 226, column: 39)
!1522 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 226, column: 17)
!1523 = !DILocation(line: 230, column: 17, scope: !1521)
!1524 = !DILocation(line: 231, column: 13, scope: !1521)
!1525 = !DILocation(line: 216, column: 62, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 215, column: 13)
!1527 = !DILocation(line: 216, column: 69, scope: !1526)
!1528 = !DILocation(line: 236, column: 17, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 231, column: 20)
!1530 = !DILocation(line: 239, column: 21, scope: !1529)
!1531 = !DILocation(line: 0, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 250, column: 17)
!1533 = !DILocation(line: 250, column: 17, scope: !1513)
!1534 = !DILocation(line: 253, column: 75, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 252, column: 13)
!1536 = !DILocation(line: 253, column: 82, scope: !1535)
!1537 = !DILocation(line: 263, column: 21, scope: !1513)
!1538 = !DILocation(line: 267, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 265, column: 39)
!1540 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 265, column: 17)
!1541 = !DILocation(line: 269, column: 17, scope: !1539)
!1542 = !DILocation(line: 270, column: 13, scope: !1539)
!1543 = !DILocation(line: 257, column: 66, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 256, column: 13)
!1545 = !DILocation(line: 257, column: 73, scope: !1544)
!1546 = !DILocation(line: 275, column: 17, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 270, column: 20)
!1548 = !DILocation(line: 278, column: 21, scope: !1547)
!1549 = !DILocation(line: 288, column: 13, scope: !1513)
!1550 = !DILocation(line: 290, column: 13, scope: !1513)
!1551 = !DILocation(line: 294, column: 13, scope: !1513)
!1552 = !DILocation(line: 0, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 299, column: 17)
!1554 = !DILocation(line: 299, column: 17, scope: !1513)
!1555 = !DILocation(line: 302, column: 84, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 301, column: 13)
!1557 = !DILocation(line: 302, column: 91, scope: !1556)
!1558 = !DILocation(line: 314, column: 21, scope: !1513)
!1559 = !DILocation(line: 318, column: 17, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 316, column: 39)
!1561 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 316, column: 17)
!1562 = !DILocation(line: 323, column: 17, scope: !1560)
!1563 = !DILocation(line: 326, column: 17, scope: !1560)
!1564 = !DILocation(line: 328, column: 17, scope: !1560)
!1565 = !DILocation(line: 329, column: 13, scope: !1560)
!1566 = !DILocation(line: 306, column: 75, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 305, column: 13)
!1568 = !DILocation(line: 306, column: 82, scope: !1567)
!1569 = !DILocation(line: 331, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 329, column: 20)
!1571 = !DILocation(line: 338, column: 17, scope: !1570)
!1572 = !DILocation(line: 340, column: 17, scope: !1570)
!1573 = !DILocation(line: 343, column: 21, scope: !1570)
!1574 = !DILocation(line: 0, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 354, column: 17)
!1576 = !DILocation(line: 354, column: 17, scope: !1513)
!1577 = !DILocation(line: 357, column: 84, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 356, column: 13)
!1579 = !DILocation(line: 357, column: 91, scope: !1578)
!1580 = !DILocation(line: 371, column: 21, scope: !1513)
!1581 = !DILocation(line: 375, column: 17, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 373, column: 39)
!1583 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 373, column: 17)
!1584 = !DILocation(line: 380, column: 17, scope: !1582)
!1585 = !DILocation(line: 383, column: 17, scope: !1582)
!1586 = !DILocation(line: 385, column: 17, scope: !1582)
!1587 = !DILocation(line: 386, column: 13, scope: !1582)
!1588 = !DILocation(line: 361, column: 75, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 360, column: 13)
!1590 = !DILocation(line: 361, column: 82, scope: !1589)
!1591 = !DILocation(line: 388, column: 17, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 386, column: 20)
!1593 = !DILocation(line: 395, column: 17, scope: !1592)
!1594 = !DILocation(line: 397, column: 17, scope: !1592)
!1595 = !DILocation(line: 400, column: 21, scope: !1592)
!1596 = !DILocation(line: 410, column: 13, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 410, column: 13)
!1598 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 410, column: 13)
!1599 = distinct !{!1599, !1596, !1596}
!1600 = !DILocation(line: 0, scope: !1513)
!1601 = !DILocation(line: 415, column: 23, scope: !1448)
!1602 = !DILocation(line: 415, column: 5, scope: !1448)
!1603 = !DILocation(line: 419, column: 27, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 419, column: 17)
!1605 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 415, column: 29)
!1606 = !DILocation(line: 419, column: 32, scope: !1604)
!1607 = !DILocation(line: 419, column: 17, scope: !1605)
!1608 = !DILocation(line: 421, column: 47, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 421, column: 21)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 419, column: 47)
!1611 = !DILocation(line: 421, column: 55, scope: !1609)
!1612 = !{i8 0, i8 2}
!1613 = !DILocation(line: 421, column: 79, scope: !1609)
!1614 = !DILocation(line: 422, column: 59, scope: !1609)
!1615 = !DILocation(line: 422, column: 65, scope: !1609)
!1616 = !DILocation(line: 421, column: 21, scope: !1610)
!1617 = !DILocation(line: 425, column: 29, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 424, column: 17)
!1619 = !DILocation(line: 426, column: 17, scope: !1618)
!1620 = !DILocation(line: 429, column: 66, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 428, column: 26)
!1622 = !DILocation(line: 428, column: 26, scope: !1609)
!1623 = !DILocation(line: 432, column: 29, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 431, column: 17)
!1625 = !DILocation(line: 433, column: 17, scope: !1624)
!1626 = !DILocation(line: 436, column: 66, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 435, column: 26)
!1628 = !DILocation(line: 435, column: 26, scope: !1621)
!1629 = !DILocation(line: 447, column: 27, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 447, column: 17)
!1631 = !DILocation(line: 447, column: 32, scope: !1630)
!1632 = !DILocation(line: 447, column: 17, scope: !1605)
!1633 = !DILocation(line: 449, column: 47, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 449, column: 21)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 447, column: 47)
!1636 = !DILocation(line: 449, column: 55, scope: !1634)
!1637 = !DILocation(line: 449, column: 79, scope: !1634)
!1638 = !DILocation(line: 450, column: 59, scope: !1634)
!1639 = !DILocation(line: 450, column: 65, scope: !1634)
!1640 = !DILocation(line: 449, column: 21, scope: !1635)
!1641 = !DILocation(line: 453, column: 29, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 452, column: 17)
!1643 = !DILocation(line: 454, column: 17, scope: !1642)
!1644 = !DILocation(line: 457, column: 66, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 456, column: 26)
!1646 = !DILocation(line: 456, column: 26, scope: !1634)
!1647 = !DILocation(line: 464, column: 21, scope: !1605)
!1648 = !DILocation(line: 466, column: 13, scope: !1605)
!1649 = !DILocation(line: 470, column: 27, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 470, column: 17)
!1651 = !DILocation(line: 470, column: 32, scope: !1650)
!1652 = !DILocation(line: 470, column: 17, scope: !1605)
!1653 = !DILocation(line: 472, column: 47, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 472, column: 21)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 470, column: 47)
!1656 = !DILocation(line: 472, column: 55, scope: !1654)
!1657 = !DILocation(line: 472, column: 79, scope: !1654)
!1658 = !DILocation(line: 473, column: 59, scope: !1654)
!1659 = !DILocation(line: 473, column: 65, scope: !1654)
!1660 = !DILocation(line: 472, column: 21, scope: !1655)
!1661 = !DILocation(line: 480, column: 21, scope: !1605)
!1662 = !DILocation(line: 482, column: 13, scope: !1605)
!1663 = !DILocation(line: 486, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 486, column: 13)
!1665 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 486, column: 13)
!1666 = distinct !{!1666, !1663, !1663}
!1667 = !DILocation(line: 491, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 491, column: 9)
!1669 = !DILocation(line: 491, column: 28, scope: !1668)
!1670 = !DILocation(line: 491, column: 9, scope: !1448)
!1671 = !DILocation(line: 493, column: 17, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 491, column: 37)
!1673 = !DILocation(line: 495, column: 9, scope: !1672)
!1674 = !DILocation(line: 495, column: 35, scope: !1672)
!1675 = !DILocation(line: 496, column: 5, scope: !1672)
!1676 = !DILocation(line: 498, column: 5, scope: !1448)
!1677 = !DILocation(line: 500, column: 5, scope: !1448)
!1678 = !DILocation(line: 502, column: 9, scope: !1448)
!1679 = !DILocation(line: 504, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 502, column: 16)
!1681 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 502, column: 9)
!1682 = !DILocation(line: 505, column: 5, scope: !1680)
!1683 = !DILocation(line: 506, column: 1, scope: !1448)
!1684 = distinct !DISubprogram(name: "DMA_Clock_Enable", scope: !3, file: !3, line: 912, type: !1290, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "channel", arg: 1, scope: !1684, file: !3, line: 912, type: !128)
!1687 = !DILocation(line: 0, scope: !1684)
!1688 = !DILocation(line: 914, column: 59, scope: !1684)
!1689 = !DILocation(line: 914, column: 67, scope: !1684)
!1690 = !DILocation(line: 914, column: 55, scope: !1684)
!1691 = !DILocation(line: 914, column: 51, scope: !1684)
!1692 = !DILocation(line: 915, column: 1, scope: !1684)
!1693 = distinct !DISubprogram(name: "DMA_Register", scope: !3, file: !3, line: 514, type: !1694, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!53, !128, !179}
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1693, file: !3, line: 514, type: !128)
!1698 = !DILocalVariable(name: "handler", arg: 2, scope: !1693, file: !3, line: 514, type: !179)
!1699 = !DILocation(line: 0, scope: !1693)
!1700 = !DILocation(line: 516, column: 9, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 516, column: 9)
!1702 = !DILocation(line: 516, column: 20, scope: !1701)
!1703 = !DILocation(line: 517, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 516, column: 49)
!1705 = !DILocation(line: 518, column: 9, scope: !1704)
!1706 = !DILocation(line: 521, column: 26, scope: !1693)
!1707 = !DILocation(line: 521, column: 5, scope: !1693)
!1708 = !DILocation(line: 521, column: 31, scope: !1693)
!1709 = !DILocation(line: 523, column: 5, scope: !1693)
!1710 = !DILocation(line: 524, column: 1, scope: !1693)
!1711 = distinct !DISubprogram(name: "DMA_UnRegister", scope: !3, file: !3, line: 526, type: !1712, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!53, !128}
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1711, file: !3, line: 526, type: !128)
!1716 = !DILocation(line: 0, scope: !1711)
!1717 = !DILocation(line: 528, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 528, column: 9)
!1719 = !DILocation(line: 528, column: 20, scope: !1718)
!1720 = !DILocation(line: 529, column: 9, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 528, column: 49)
!1722 = !DILocation(line: 530, column: 9, scope: !1721)
!1723 = !DILocation(line: 532, column: 26, scope: !1711)
!1724 = !DILocation(line: 532, column: 5, scope: !1711)
!1725 = !DILocation(line: 532, column: 31, scope: !1711)
!1726 = !DILocation(line: 533, column: 5, scope: !1711)
!1727 = !DILocation(line: 534, column: 1, scope: !1711)
!1728 = distinct !DISubprogram(name: "DMA_LISR", scope: !3, file: !3, line: 536, type: !432, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1728, file: !3, line: 536, type: !349)
!1731 = !DILocalVariable(name: "index", scope: !1728, file: !3, line: 538, type: !174)
!1732 = !DILocalVariable(name: "con", scope: !1728, file: !3, line: 539, type: !114)
!1733 = !DILocation(line: 0, scope: !1728)
!1734 = !DILocation(line: 542, column: 5, scope: !1728)
!1735 = !DILocation(line: 545, column: 5, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 545, column: 5)
!1737 = !DILocation(line: 547, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 547, column: 13)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 545, column: 55)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 545, column: 5)
!1741 = !DILocation(line: 547, column: 46, scope: !1738)
!1742 = !DILocation(line: 547, column: 13, scope: !1739)
!1743 = !DILocation(line: 549, column: 22, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 547, column: 64)
!1745 = !DILocation(line: 549, column: 13, scope: !1744)
!1746 = !DILocation(line: 551, column: 13, scope: !1744)
!1747 = !DILocation(line: 553, column: 13, scope: !1744)
!1748 = !DILocation(line: 553, column: 20, scope: !1744)
!1749 = distinct !{!1749, !1747, !1750}
!1750 = !DILocation(line: 553, column: 48, scope: !1744)
!1751 = !DILocation(line: 554, column: 13, scope: !1744)
!1752 = !DILocation(line: 555, column: 13, scope: !1744)
!1753 = !DILocation(line: 557, column: 9, scope: !1744)
!1754 = !DILocation(line: 545, column: 27, scope: !1740)
!1755 = distinct !{!1755, !1735, !1756}
!1756 = !DILocation(line: 558, column: 5, scope: !1736)
!1757 = !DILocation(line: 562, column: 15, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 560, column: 68)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 560, column: 5)
!1760 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 560, column: 5)
!1761 = !DILocation(line: 564, column: 13, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 564, column: 13)
!1763 = !DILocation(line: 564, column: 42, scope: !1762)
!1764 = !DILocation(line: 564, column: 13, scope: !1758)
!1765 = !DILocation(line: 566, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 564, column: 60)
!1767 = !DILocation(line: 566, column: 13, scope: !1766)
!1768 = !DILocation(line: 569, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 569, column: 25)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 566, column: 32)
!1771 = !DILocation(line: 569, column: 78, scope: !1769)
!1772 = !DILocation(line: 569, column: 25, scope: !1770)
!1773 = !DILocation(line: 574, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 574, column: 25)
!1775 = !DILocation(line: 574, column: 78, scope: !1774)
!1776 = !DILocation(line: 574, column: 25, scope: !1770)
!1777 = !DILocation(line: 579, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 579, column: 25)
!1779 = !DILocation(line: 579, column: 79, scope: !1778)
!1780 = !DILocation(line: 579, column: 25, scope: !1770)
!1781 = !DILocation(line: 584, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 584, column: 25)
!1783 = !DILocation(line: 584, column: 79, scope: !1782)
!1784 = !DILocation(line: 584, column: 25, scope: !1770)
!1785 = !DILocation(line: 589, column: 25, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 589, column: 25)
!1787 = !DILocation(line: 589, column: 79, scope: !1786)
!1788 = !DILocation(line: 589, column: 25, scope: !1770)
!1789 = !DILocation(line: 594, column: 25, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 594, column: 25)
!1791 = !DILocation(line: 594, column: 79, scope: !1790)
!1792 = !DILocation(line: 594, column: 25, scope: !1770)
!1793 = !DILocation(line: 599, column: 25, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 599, column: 25)
!1795 = !DILocation(line: 599, column: 79, scope: !1794)
!1796 = !DILocation(line: 599, column: 25, scope: !1770)
!1797 = !DILocation(line: 604, column: 25, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 604, column: 25)
!1799 = !DILocation(line: 604, column: 79, scope: !1798)
!1800 = !DILocation(line: 604, column: 25, scope: !1770)
!1801 = !DILocation(line: 609, column: 25, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 609, column: 25)
!1803 = !DILocation(line: 609, column: 80, scope: !1802)
!1804 = !DILocation(line: 609, column: 25, scope: !1770)
!1805 = !DILocation(line: 614, column: 25, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 614, column: 25)
!1807 = !DILocation(line: 614, column: 80, scope: !1806)
!1808 = !DILocation(line: 614, column: 25, scope: !1770)
!1809 = !DILocation(line: 619, column: 25, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 619, column: 25)
!1811 = !DILocation(line: 619, column: 80, scope: !1810)
!1812 = !DILocation(line: 619, column: 25, scope: !1770)
!1813 = !DILocation(line: 624, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 624, column: 25)
!1815 = !DILocation(line: 624, column: 80, scope: !1814)
!1816 = !DILocation(line: 624, column: 25, scope: !1770)
!1817 = !DILocation(line: 629, column: 25, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 629, column: 25)
!1819 = !DILocation(line: 629, column: 80, scope: !1818)
!1820 = !DILocation(line: 629, column: 25, scope: !1770)
!1821 = !DILocation(line: 634, column: 25, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 634, column: 25)
!1823 = !DILocation(line: 634, column: 78, scope: !1822)
!1824 = !DILocation(line: 634, column: 25, scope: !1770)
!1825 = !DILocation(line: 0, scope: !1770)
!1826 = !DILocation(line: 640, column: 13, scope: !1766)
!1827 = !DILocation(line: 641, column: 9, scope: !1766)
!1828 = !DILocation(line: 560, column: 64, scope: !1759)
!1829 = !DILocation(line: 560, column: 40, scope: !1759)
!1830 = !DILocation(line: 560, column: 5, scope: !1760)
!1831 = distinct !{!1831, !1830, !1832}
!1832 = !DILocation(line: 642, column: 5, scope: !1760)
!1833 = !DILocation(line: 646, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 644, column: 68)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 644, column: 5)
!1836 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 644, column: 5)
!1837 = !DILocation(line: 648, column: 13, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 648, column: 13)
!1839 = !DILocation(line: 648, column: 42, scope: !1838)
!1840 = !DILocation(line: 648, column: 13, scope: !1834)
!1841 = !DILocation(line: 650, column: 25, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 648, column: 62)
!1843 = !DILocation(line: 650, column: 13, scope: !1842)
!1844 = !DILocation(line: 653, column: 25, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 653, column: 25)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 650, column: 32)
!1847 = !DILocation(line: 653, column: 81, scope: !1845)
!1848 = !DILocation(line: 653, column: 25, scope: !1846)
!1849 = !DILocation(line: 658, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 658, column: 25)
!1851 = !DILocation(line: 658, column: 81, scope: !1850)
!1852 = !DILocation(line: 658, column: 25, scope: !1846)
!1853 = !DILocation(line: 663, column: 25, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 663, column: 25)
!1855 = !DILocation(line: 663, column: 82, scope: !1854)
!1856 = !DILocation(line: 663, column: 25, scope: !1846)
!1857 = !DILocation(line: 668, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 668, column: 25)
!1859 = !DILocation(line: 668, column: 82, scope: !1858)
!1860 = !DILocation(line: 668, column: 25, scope: !1846)
!1861 = !DILocation(line: 673, column: 25, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 673, column: 25)
!1863 = !DILocation(line: 673, column: 82, scope: !1862)
!1864 = !DILocation(line: 673, column: 25, scope: !1846)
!1865 = !DILocation(line: 678, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 678, column: 25)
!1867 = !DILocation(line: 678, column: 82, scope: !1866)
!1868 = !DILocation(line: 678, column: 25, scope: !1846)
!1869 = !DILocation(line: 683, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 683, column: 25)
!1871 = !DILocation(line: 683, column: 82, scope: !1870)
!1872 = !DILocation(line: 683, column: 25, scope: !1846)
!1873 = !DILocation(line: 688, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 688, column: 25)
!1875 = !DILocation(line: 688, column: 82, scope: !1874)
!1876 = !DILocation(line: 688, column: 25, scope: !1846)
!1877 = !DILocation(line: 693, column: 25, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 693, column: 25)
!1879 = !DILocation(line: 693, column: 83, scope: !1878)
!1880 = !DILocation(line: 693, column: 25, scope: !1846)
!1881 = !DILocation(line: 698, column: 25, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 698, column: 25)
!1883 = !DILocation(line: 698, column: 83, scope: !1882)
!1884 = !DILocation(line: 698, column: 25, scope: !1846)
!1885 = !DILocation(line: 703, column: 25, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 703, column: 25)
!1887 = !DILocation(line: 703, column: 83, scope: !1886)
!1888 = !DILocation(line: 703, column: 25, scope: !1846)
!1889 = !DILocation(line: 708, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 708, column: 25)
!1891 = !DILocation(line: 708, column: 83, scope: !1890)
!1892 = !DILocation(line: 708, column: 25, scope: !1846)
!1893 = !DILocation(line: 713, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 713, column: 25)
!1895 = !DILocation(line: 713, column: 83, scope: !1894)
!1896 = !DILocation(line: 713, column: 25, scope: !1846)
!1897 = !DILocation(line: 718, column: 25, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 718, column: 25)
!1899 = !DILocation(line: 718, column: 81, scope: !1898)
!1900 = !DILocation(line: 718, column: 25, scope: !1846)
!1901 = !DILocation(line: 0, scope: !1846)
!1902 = !DILocation(line: 724, column: 13, scope: !1842)
!1903 = !DILocation(line: 725, column: 9, scope: !1842)
!1904 = !DILocation(line: 644, column: 64, scope: !1835)
!1905 = !DILocation(line: 644, column: 40, scope: !1835)
!1906 = !DILocation(line: 644, column: 5, scope: !1836)
!1907 = distinct !{!1907, !1906, !1908}
!1908 = !DILocation(line: 726, column: 5, scope: !1836)
!1909 = !DILocation(line: 728, column: 5, scope: !1728)
!1910 = !DILocation(line: 729, column: 1, scope: !1728)
!1911 = distinct !DISubprogram(name: "DMA_Clock_Disable", scope: !3, file: !3, line: 917, type: !1290, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "channel", arg: 1, scope: !1911, file: !3, line: 917, type: !128)
!1914 = !DILocation(line: 0, scope: !1911)
!1915 = !DILocation(line: 919, column: 59, scope: !1911)
!1916 = !DILocation(line: 919, column: 67, scope: !1911)
!1917 = !DILocation(line: 919, column: 55, scope: !1911)
!1918 = !DILocation(line: 919, column: 51, scope: !1911)
!1919 = !DILocation(line: 920, column: 1, scope: !1911)
!1920 = distinct !DISubprogram(name: "DMA_Init", scope: !3, file: !3, line: 732, type: !181, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1921 = !{!1922}
!1922 = !DILocalVariable(name: "index", scope: !1920, file: !3, line: 734, type: !174)
!1923 = !DILocation(line: 0, scope: !1920)
!1924 = !DILocation(line: 739, column: 5, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 739, column: 5)
!1926 = !DILocation(line: 740, column: 41, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 740, column: 13)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 739, column: 55)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 739, column: 5)
!1930 = !DILocation(line: 740, column: 33, scope: !1927)
!1931 = !DILocation(line: 740, column: 52, scope: !1927)
!1932 = !DILocation(line: 740, column: 13, scope: !1928)
!1933 = !DILocation(line: 741, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 740, column: 58)
!1935 = !DILocation(line: 741, column: 30, scope: !1934)
!1936 = !DILocation(line: 742, column: 9, scope: !1934)
!1937 = !DILocation(line: 739, column: 51, scope: !1929)
!1938 = !DILocation(line: 739, column: 27, scope: !1929)
!1939 = distinct !{!1939, !1924, !1940}
!1940 = !DILocation(line: 743, column: 5, scope: !1925)
!1941 = !DILocation(line: 748, column: 32, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 746, column: 55)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 746, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 746, column: 5)
!1945 = !DILocation(line: 748, column: 9, scope: !1942)
!1946 = !DILocation(line: 746, column: 27, scope: !1943)
!1947 = !DILocation(line: 746, column: 5, scope: !1944)
!1948 = distinct !{!1948, !1947, !1949}
!1949 = !DILocation(line: 749, column: 5, scope: !1944)
!1950 = !DILocation(line: 752, column: 5, scope: !1920)
!1951 = !DILocation(line: 753, column: 5, scope: !1920)
!1952 = !DILocation(line: 754, column: 5, scope: !1920)
!1953 = !DILocation(line: 755, column: 1, scope: !1920)
!1954 = distinct !DISubprogram(name: "dma_set_channel_busy", scope: !3, file: !3, line: 757, type: !1955, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!128, !128}
!1957 = !{!1958, !1959, !1960, !1961}
!1958 = !DILocalVariable(name: "channel", arg: 1, scope: !1954, file: !3, line: 757, type: !128)
!1959 = !DILocalVariable(name: "channel_index", scope: !1954, file: !3, line: 759, type: !128)
!1960 = !DILocalVariable(name: "flags", scope: !1954, file: !3, line: 760, type: !955)
!1961 = !DILocalVariable(name: "index", scope: !1954, file: !3, line: 764, type: !128)
!1962 = !DILocation(line: 0, scope: !1954)
!1963 = !DILocation(line: 764, column: 29, scope: !1954)
!1964 = !DILocation(line: 470, column: 3, scope: !1315, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 766, column: 5, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 766, column: 5)
!1967 = !DILocation(line: 0, scope: !1315, inlinedAt: !1965)
!1968 = !DILocation(line: 330, column: 3, scope: !1326, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 766, column: 5, scope: !1966)
!1970 = !DILocation(line: 768, column: 9, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 768, column: 9)
!1972 = !DILocation(line: 768, column: 33, scope: !1971)
!1973 = !DILocation(line: 768, column: 9, scope: !1954)
!1974 = !DILocation(line: 769, column: 33, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 768, column: 43)
!1976 = !DILocation(line: 770, column: 9, scope: !1975)
!1977 = !DILocation(line: 0, scope: !1347, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 774, column: 5, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 774, column: 5)
!1980 = !DILocation(line: 483, column: 3, scope: !1347, inlinedAt: !1978)
!1981 = !DILocation(line: 776, column: 5, scope: !1954)
!1982 = !DILocation(line: 777, column: 5, scope: !1954)
!1983 = !DILocation(line: 778, column: 5, scope: !1954)
!1984 = !DILocation(line: 779, column: 5, scope: !1954)
!1985 = !DILocation(line: 781, column: 1, scope: !1954)
!1986 = distinct !DISubprogram(name: "dma_set_channel_idle", scope: !3, file: !3, line: 783, type: !1955, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "channel", arg: 1, scope: !1986, file: !3, line: 783, type: !128)
!1989 = !DILocalVariable(name: "flags", scope: !1986, file: !3, line: 785, type: !955)
!1990 = !DILocalVariable(name: "index", scope: !1986, file: !3, line: 786, type: !128)
!1991 = !DILocation(line: 0, scope: !1986)
!1992 = !DILocation(line: 786, column: 29, scope: !1986)
!1993 = !DILocation(line: 787, column: 5, scope: !1986)
!1994 = !DILocation(line: 470, column: 3, scope: !1315, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 788, column: 5, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 788, column: 5)
!1997 = !DILocation(line: 0, scope: !1315, inlinedAt: !1995)
!1998 = !DILocation(line: 330, column: 3, scope: !1326, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 788, column: 5, scope: !1996)
!2000 = !DILocation(line: 789, column: 5, scope: !1986)
!2001 = !DILocation(line: 789, column: 29, scope: !1986)
!2002 = !DILocation(line: 790, column: 33, scope: !1986)
!2003 = !DILocation(line: 790, column: 24, scope: !1986)
!2004 = !DILocation(line: 791, column: 21, scope: !1986)
!2005 = !DILocation(line: 791, column: 5, scope: !1986)
!2006 = !DILocation(line: 791, column: 26, scope: !1986)
!2007 = !DILocation(line: 0, scope: !1347, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 792, column: 5, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 792, column: 5)
!2010 = !DILocation(line: 483, column: 3, scope: !1347, inlinedAt: !2008)
!2011 = !DILocation(line: 794, column: 5, scope: !1986)
!2012 = distinct !DISubprogram(name: "DMA_Vfifo_init", scope: !3, file: !3, line: 798, type: !181, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "dma_con", scope: !2012, file: !3, line: 800, type: !114)
!2015 = !DILocation(line: 0, scope: !2012)
!2016 = !DILocation(line: 802, column: 5, scope: !2012)
!2017 = !DILocation(line: 804, column: 5, scope: !2012)
!2018 = !DILocation(line: 806, column: 5, scope: !2012)
!2019 = !DILocation(line: 808, column: 5, scope: !2012)
!2020 = !DILocation(line: 810, column: 5, scope: !2012)
!2021 = !DILocation(line: 812, column: 5, scope: !2012)
!2022 = !DILocation(line: 814, column: 5, scope: !2012)
!2023 = !DILocation(line: 816, column: 5, scope: !2012)
!2024 = !DILocation(line: 818, column: 5, scope: !2012)
!2025 = !DILocation(line: 820, column: 5, scope: !2012)
!2026 = !DILocation(line: 822, column: 5, scope: !2012)
!2027 = !DILocation(line: 824, column: 5, scope: !2012)
!2028 = !DILocation(line: 826, column: 5, scope: !2012)
!2029 = !DILocation(line: 828, column: 5, scope: !2012)
!2030 = !DILocation(line: 830, column: 5, scope: !2012)
!2031 = !DILocation(line: 832, column: 5, scope: !2012)
!2032 = !DILocation(line: 834, column: 5, scope: !2012)
!2033 = !DILocation(line: 836, column: 5, scope: !2012)
!2034 = !DILocation(line: 838, column: 5, scope: !2012)
!2035 = !DILocation(line: 840, column: 5, scope: !2012)
!2036 = !DILocation(line: 842, column: 5, scope: !2012)
!2037 = !DILocation(line: 844, column: 5, scope: !2012)
!2038 = !DILocation(line: 846, column: 5, scope: !2012)
!2039 = !DILocation(line: 848, column: 5, scope: !2012)
!2040 = !DILocation(line: 850, column: 5, scope: !2012)
!2041 = !DILocation(line: 852, column: 5, scope: !2012)
!2042 = !DILocation(line: 854, column: 5, scope: !2012)
!2043 = !DILocation(line: 856, column: 5, scope: !2012)
!2044 = !DILocation(line: 858, column: 1, scope: !2012)
!2045 = distinct !DISubprogram(name: "DMA_Vfifo_SetAdrs", scope: !3, file: !3, line: 861, type: !2046, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !136, !136, !514, !136, !136, !136}
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054}
!2049 = !DILocalVariable(name: "adrs", arg: 1, scope: !2045, file: !3, line: 861, type: !136)
!2050 = !DILocalVariable(name: "len", arg: 2, scope: !2045, file: !3, line: 862, type: !136)
!2051 = !DILocalVariable(name: "ch", arg: 3, scope: !2045, file: !3, line: 862, type: !514)
!2052 = !DILocalVariable(name: "alt_len", arg: 4, scope: !2045, file: !3, line: 863, type: !136)
!2053 = !DILocalVariable(name: "dma_count", arg: 5, scope: !2045, file: !3, line: 864, type: !136)
!2054 = !DILocalVariable(name: "timeout_counter", arg: 6, scope: !2045, file: !3, line: 865, type: !136)
!2055 = !DILocation(line: 0, scope: !2045)
!2056 = !DILocation(line: 867, column: 5, scope: !2045)
!2057 = !DILocation(line: 868, column: 5, scope: !2045)
!2058 = !DILocation(line: 869, column: 5, scope: !2045)
!2059 = !DILocation(line: 870, column: 5, scope: !2045)
!2060 = !DILocation(line: 870, column: 30, scope: !2045)
!2061 = !DILocation(line: 871, column: 5, scope: !2045)
!2062 = !DILocation(line: 871, column: 27, scope: !2045)
!2063 = !DILocation(line: 872, column: 1, scope: !2045)
!2064 = distinct !DISubprogram(name: "DMA_Vfifo_Set_timeout", scope: !3, file: !3, line: 874, type: !2065, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !514, !136}
!2067 = !{!2068, !2069}
!2068 = !DILocalVariable(name: "ch", arg: 1, scope: !2064, file: !3, line: 874, type: !514)
!2069 = !DILocalVariable(name: "timeout_counter", arg: 2, scope: !2064, file: !3, line: 874, type: !136)
!2070 = !DILocation(line: 0, scope: !2064)
!2071 = !DILocation(line: 877, column: 5, scope: !2064)
!2072 = !DILocation(line: 877, column: 27, scope: !2064)
!2073 = !DILocation(line: 878, column: 1, scope: !2064)
!2074 = distinct !DISubprogram(name: "DMA_Vfifo_enable_interrupt", scope: !3, file: !3, line: 880, type: !2075, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !514}
!2077 = !{!2078}
!2078 = !DILocalVariable(name: "ch", arg: 1, scope: !2074, file: !3, line: 880, type: !514)
!2079 = !DILocation(line: 0, scope: !2074)
!2080 = !DILocation(line: 883, column: 5, scope: !2074)
!2081 = !DILocation(line: 884, column: 1, scope: !2074)
!2082 = distinct !DISubprogram(name: "DMA_Vfifo_disable_interrupt", scope: !3, file: !3, line: 886, type: !2075, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "ch", arg: 1, scope: !2082, file: !3, line: 886, type: !514)
!2085 = !DILocation(line: 0, scope: !2082)
!2086 = !DILocation(line: 889, column: 5, scope: !2082)
!2087 = !DILocation(line: 890, column: 1, scope: !2082)
!2088 = distinct !DISubprogram(name: "DMA_Vfifo_Flush", scope: !3, file: !3, line: 893, type: !2075, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "ch", arg: 1, scope: !2088, file: !3, line: 893, type: !514)
!2091 = !DILocation(line: 0, scope: !2088)
!2092 = !DILocation(line: 895, column: 14, scope: !2088)
!2093 = !DILocation(line: 895, column: 5, scope: !2088)
!2094 = !DILocation(line: 897, column: 5, scope: !2088)
!2095 = !DILocation(line: 898, column: 1, scope: !2088)
!2096 = distinct !DISubprogram(name: "DMA_Vfifo_Register_Callback", scope: !3, file: !3, line: 900, type: !2097, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !514, !179}
!2099 = !{!2100, !2101}
!2100 = !DILocalVariable(name: "ch", arg: 1, scope: !2096, file: !3, line: 900, type: !514)
!2101 = !DILocalVariable(name: "callback_func", arg: 2, scope: !2096, file: !3, line: 901, type: !179)
!2102 = !DILocation(line: 0, scope: !2096)
!2103 = !DILocation(line: 903, column: 28, scope: !2096)
!2104 = !DILocation(line: 903, column: 5, scope: !2096)
!2105 = !DILocation(line: 903, column: 46, scope: !2096)
!2106 = !DILocation(line: 904, column: 1, scope: !2096)
!2107 = distinct !DISubprogram(name: "DMA_Vfifo_Register_TO_Callback", scope: !3, file: !3, line: 906, type: !2097, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2108 = !{!2109, !2110}
!2109 = !DILocalVariable(name: "ch", arg: 1, scope: !2107, file: !3, line: 906, type: !514)
!2110 = !DILocalVariable(name: "callback_func", arg: 2, scope: !2107, file: !3, line: 907, type: !179)
!2111 = !DILocation(line: 0, scope: !2107)
!2112 = !DILocation(line: 909, column: 31, scope: !2107)
!2113 = !DILocation(line: 909, column: 5, scope: !2107)
!2114 = !DILocation(line: 909, column: 49, scope: !2107)
!2115 = !DILocation(line: 910, column: 1, scope: !2107)
!2116 = distinct !DISubprogram(name: "I2sVdmaTxStart", scope: !201, file: !201, line: 139, type: !2117, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2120)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!2119, !217, !217, !514, !2119}
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !47, line: 119, baseType: !132)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DILocalVariable(name: "u4TxBufAddr", arg: 1, scope: !2116, file: !201, line: 139, type: !217)
!2122 = !DILocalVariable(name: "u4TxBufLen", arg: 2, scope: !2116, file: !201, line: 139, type: !217)
!2123 = !DILocalVariable(name: "TxCasPortAddr", arg: 3, scope: !2116, file: !201, line: 139, type: !514)
!2124 = !DILocalVariable(name: "bTxCasEn", arg: 4, scope: !2116, file: !201, line: 139, type: !2119)
!2125 = !DILocation(line: 0, scope: !2116)
!2126 = !DILocation(line: 141, column: 18, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2116, file: !201, line: 141, column: 9)
!2128 = !DILocation(line: 141, column: 9, scope: !2116)
!2129 = !DILocation(line: 144, column: 5, scope: !2116)
!2130 = !DILocation(line: 145, column: 5, scope: !2116)
!2131 = !DILocation(line: 147, column: 18, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2116, file: !201, line: 147, column: 9)
!2133 = !DILocation(line: 147, column: 9, scope: !2116)
!2134 = !DILocation(line: 148, column: 94, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !201, line: 147, column: 31)
!2136 = !DILocation(line: 148, column: 100, scope: !2135)
!2137 = !DILocation(line: 149, column: 5, scope: !2135)
!2138 = !DILocation(line: 150, column: 45, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2132, file: !201, line: 149, column: 12)
!2140 = !DILocation(line: 0, scope: !2132)
!2141 = !DILocation(line: 153, column: 5, scope: !2116)
!2142 = !DILocation(line: 155, column: 5, scope: !2116)
!2143 = !DILocation(line: 156, column: 1, scope: !2116)
!2144 = distinct !DISubprogram(name: "I2sVdmaRxStart", scope: !201, file: !201, line: 165, type: !2117, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2145)
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DILocalVariable(name: "u4RxBufAddr", arg: 1, scope: !2144, file: !201, line: 165, type: !217)
!2147 = !DILocalVariable(name: "u4RxBufLen", arg: 2, scope: !2144, file: !201, line: 165, type: !217)
!2148 = !DILocalVariable(name: "RxCasPortAddr", arg: 3, scope: !2144, file: !201, line: 165, type: !514)
!2149 = !DILocalVariable(name: "bRxCasEn", arg: 4, scope: !2144, file: !201, line: 165, type: !2119)
!2150 = !DILocation(line: 0, scope: !2144)
!2151 = !DILocation(line: 167, column: 18, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2144, file: !201, line: 167, column: 9)
!2153 = !DILocation(line: 167, column: 9, scope: !2144)
!2154 = !DILocation(line: 170, column: 5, scope: !2144)
!2155 = !DILocation(line: 171, column: 5, scope: !2144)
!2156 = !DILocation(line: 173, column: 18, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2144, file: !201, line: 173, column: 9)
!2158 = !DILocation(line: 173, column: 9, scope: !2144)
!2159 = !DILocation(line: 174, column: 94, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !201, line: 173, column: 31)
!2161 = !DILocation(line: 174, column: 100, scope: !2160)
!2162 = !DILocation(line: 175, column: 5, scope: !2160)
!2163 = !DILocation(line: 176, column: 45, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2157, file: !201, line: 175, column: 12)
!2165 = !DILocation(line: 0, scope: !2157)
!2166 = !DILocation(line: 179, column: 5, scope: !2144)
!2167 = !DILocation(line: 181, column: 5, scope: !2144)
!2168 = !DILocation(line: 182, column: 1, scope: !2144)
!2169 = distinct !DISubprogram(name: "I2sSetVdmaTxIntrEn", scope: !201, file: !201, line: 184, type: !2170, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2119, !2119}
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "bI2sVdmaTxIntrEn", arg: 1, scope: !2169, file: !201, line: 184, type: !2119)
!2174 = !DILocalVariable(name: "u4DmaCon", scope: !2169, file: !201, line: 186, type: !217)
!2175 = !DILocation(line: 0, scope: !2169)
!2176 = !DILocation(line: 188, column: 16, scope: !2169)
!2177 = !DILocation(line: 190, column: 9, scope: !2169)
!2178 = !DILocation(line: 191, column: 18, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !201, line: 190, column: 46)
!2180 = distinct !DILexicalBlock(scope: !2169, file: !201, line: 190, column: 9)
!2181 = !DILocation(line: 192, column: 5, scope: !2179)
!2182 = !DILocation(line: 193, column: 18, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !201, line: 192, column: 54)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !201, line: 192, column: 16)
!2185 = !DILocation(line: 194, column: 5, scope: !2183)
!2186 = !DILocation(line: 195, column: 9, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !201, line: 194, column: 12)
!2188 = !DILocation(line: 198, column: 5, scope: !2169)
!2189 = !DILocation(line: 200, column: 5, scope: !2169)
!2190 = distinct !DISubprogram(name: "I2sSetVdmaRxIntrEn", scope: !201, file: !201, line: 203, type: !2170, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2191)
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "bI2sVdmaRxIntrEn", arg: 1, scope: !2190, file: !201, line: 203, type: !2119)
!2193 = !DILocalVariable(name: "u4DmaCon", scope: !2190, file: !201, line: 205, type: !217)
!2194 = !DILocation(line: 0, scope: !2190)
!2195 = !DILocation(line: 207, column: 16, scope: !2190)
!2196 = !DILocation(line: 209, column: 9, scope: !2190)
!2197 = !DILocation(line: 210, column: 18, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !201, line: 209, column: 46)
!2199 = distinct !DILexicalBlock(scope: !2190, file: !201, line: 209, column: 9)
!2200 = !DILocation(line: 211, column: 5, scope: !2198)
!2201 = !DILocation(line: 212, column: 18, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !201, line: 211, column: 54)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !201, line: 211, column: 16)
!2204 = !DILocation(line: 213, column: 5, scope: !2202)
!2205 = !DILocation(line: 214, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !201, line: 213, column: 12)
!2207 = !DILocation(line: 217, column: 5, scope: !2190)
!2208 = !DILocation(line: 219, column: 5, scope: !2190)
!2209 = distinct !DISubprogram(name: "I2sVdmaTxStop", scope: !201, file: !201, line: 222, type: !2210, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1285)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!2119}
!2212 = !DILocation(line: 224, column: 5, scope: !2209)
!2213 = !DILocation(line: 226, column: 5, scope: !2209)
!2214 = distinct !DISubprogram(name: "I2sVdmaRxStop", scope: !201, file: !201, line: 229, type: !2210, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1285)
!2215 = !DILocation(line: 231, column: 5, scope: !2214)
!2216 = !DILocation(line: 233, column: 5, scope: !2214)
!2217 = distinct !DISubprogram(name: "I2sSetVdmaTxThreshold", scope: !201, file: !201, line: 236, type: !2218, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2119, !217}
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "u4TxThreshold", arg: 1, scope: !2217, file: !201, line: 236, type: !217)
!2222 = !DILocation(line: 0, scope: !2217)
!2223 = !DILocation(line: 238, column: 42, scope: !2217)
!2224 = !DILocation(line: 240, column: 5, scope: !2217)
!2225 = distinct !DISubprogram(name: "I2sSetVdmaRxThreshold", scope: !201, file: !201, line: 243, type: !2218, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2226)
!2226 = !{!2227}
!2227 = !DILocalVariable(name: "u4RxThreshold", arg: 1, scope: !2225, file: !201, line: 243, type: !217)
!2228 = !DILocation(line: 0, scope: !2225)
!2229 = !DILocation(line: 245, column: 42, scope: !2225)
!2230 = !DILocation(line: 247, column: 5, scope: !2225)
!2231 = distinct !DISubprogram(name: "I2sWriteVdmaTxFifo", scope: !201, file: !201, line: 250, type: !2218, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2232)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "u4Txdata", arg: 1, scope: !2231, file: !201, line: 250, type: !217)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 252, column: 32, scope: !2231)
!2236 = !DILocation(line: 254, column: 5, scope: !2231)
!2237 = distinct !DISubprogram(name: "I2sReadVdmaRxFifo", scope: !201, file: !201, line: 257, type: !2238, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2242)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!2119, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT32", file: !47, line: 86, baseType: !2241)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "pu4Rxdata", arg: 1, scope: !2237, file: !201, line: 257, type: !2240)
!2244 = !DILocation(line: 0, scope: !2237)
!2245 = !DILocation(line: 259, column: 18, scope: !2237)
!2246 = !DILocation(line: 259, column: 16, scope: !2237)
!2247 = !DILocation(line: 261, column: 5, scope: !2237)
!2248 = distinct !DISubprogram(name: "I2sGetVdmaTxFifoCnt", scope: !201, file: !201, line: 264, type: !2249, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1285)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 60, baseType: !216)
!2252 = !DILocation(line: 266, column: 12, scope: !2248)
!2253 = !DILocation(line: 266, column: 5, scope: !2248)
!2254 = distinct !DISubprogram(name: "I2sGetVdmaRxFifoCnt", scope: !201, file: !201, line: 269, type: !2249, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1285)
!2255 = !DILocation(line: 271, column: 12, scope: !2254)
!2256 = !DILocation(line: 271, column: 5, scope: !2254)
!2257 = distinct !DISubprogram(name: "I2sSetGblCfg", scope: !201, file: !201, line: 277, type: !2258, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2276)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!2119, !2260}
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_I2S_GBL_CFG", file: !204, line: 525, baseType: !2261)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 32)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I2S_GBL_CFG", file: !204, line: 512, size: 96, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SLoopBackEn", scope: !2262, file: !204, line: 513, baseType: !128, size: 8)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SInClkSel", scope: !2262, file: !204, line: 514, baseType: !128, size: 8, offset: 8)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SOutClkSel", scope: !2262, file: !204, line: 515, baseType: !128, size: 8, offset: 16)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SClkInvEn", scope: !2262, file: !204, line: 516, baseType: !128, size: 8, offset: 24)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SNegCapEn", scope: !2262, file: !204, line: 517, baseType: !128, size: 8, offset: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SDLMonoDupEn", scope: !2262, file: !204, line: 518, baseType: !128, size: 8, offset: 40)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bI2S_CODEC_26M_EN", scope: !2262, file: !204, line: 519, baseType: !128, size: 8, offset: 48)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bI2S_26M_SEL", scope: !2262, file: !204, line: 520, baseType: !128, size: 8, offset: 56)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SDLMonoStereoSel", scope: !2262, file: !204, line: 521, baseType: !128, size: 8, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SDLSwapLR", scope: !2262, file: !204, line: 522, baseType: !128, size: 8, offset: 72)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SExtSwapLR", scope: !2262, file: !204, line: 523, baseType: !128, size: 8, offset: 80)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SExtCodecSel", scope: !2262, file: !204, line: 524, baseType: !128, size: 8, offset: 88)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "pI2sGblCfg", arg: 1, scope: !2257, file: !201, line: 277, type: !2260)
!2278 = !DILocalVariable(name: "u4RegCfg", scope: !2257, file: !201, line: 279, type: !217)
!2279 = !DILocation(line: 0, scope: !2257)
!2280 = !DILocation(line: 281, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 281, column: 5)
!2282 = !DILocation(line: 281, column: 5, scope: !2257)
!2283 = !DILocation(line: 281, column: 5, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !201, line: 281, column: 5)
!2285 = distinct !{!2285, !2283, !2283}
!2286 = !DILocation(line: 283, column: 21, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 283, column: 9)
!2288 = !DILocation(line: 283, column: 38, scope: !2287)
!2289 = !DILocation(line: 283, column: 9, scope: !2257)
!2290 = !DILocation(line: 287, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 287, column: 9)
!2292 = !DILocation(line: 287, column: 36, scope: !2291)
!2293 = !DILocation(line: 287, column: 9, scope: !2257)
!2294 = !DILocation(line: 291, column: 21, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 291, column: 9)
!2296 = !DILocation(line: 291, column: 35, scope: !2295)
!2297 = !DILocation(line: 291, column: 9, scope: !2257)
!2298 = !DILocation(line: 295, column: 21, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 295, column: 9)
!2300 = !DILocation(line: 295, column: 42, scope: !2299)
!2301 = !DILocation(line: 295, column: 9, scope: !2257)
!2302 = !DILocation(line: 299, column: 21, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 299, column: 9)
!2304 = !DILocation(line: 299, column: 37, scope: !2303)
!2305 = !DILocation(line: 299, column: 9, scope: !2257)
!2306 = !DILocation(line: 303, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 303, column: 9)
!2308 = !DILocation(line: 303, column: 39, scope: !2307)
!2309 = !DILocation(line: 303, column: 9, scope: !2257)
!2310 = !DILocation(line: 307, column: 21, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 307, column: 9)
!2312 = !DILocation(line: 307, column: 34, scope: !2311)
!2313 = !DILocation(line: 307, column: 9, scope: !2257)
!2314 = !DILocation(line: 311, column: 21, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 311, column: 9)
!2316 = !DILocation(line: 311, column: 34, scope: !2315)
!2317 = !DILocation(line: 311, column: 9, scope: !2257)
!2318 = !DILocation(line: 315, column: 21, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 315, column: 9)
!2320 = !DILocation(line: 315, column: 34, scope: !2319)
!2321 = !DILocation(line: 315, column: 9, scope: !2257)
!2322 = !DILocation(line: 322, column: 21, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 322, column: 9)
!2324 = !DILocation(line: 322, column: 37, scope: !2323)
!2325 = !DILocation(line: 322, column: 9, scope: !2257)
!2326 = !DILocation(line: 331, column: 14, scope: !2257)
!2327 = !DILocation(line: 333, column: 25, scope: !2257)
!2328 = !DILocation(line: 333, column: 5, scope: !2257)
!2329 = !DILocation(line: 338, column: 22, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 333, column: 40)
!2331 = !DILocation(line: 339, column: 13, scope: !2330)
!2332 = !DILocation(line: 341, column: 22, scope: !2330)
!2333 = !DILocation(line: 342, column: 13, scope: !2330)
!2334 = !DILocation(line: 344, column: 22, scope: !2330)
!2335 = !DILocation(line: 345, column: 13, scope: !2330)
!2336 = !DILocation(line: 351, column: 14, scope: !2257)
!2337 = !DILocation(line: 353, column: 25, scope: !2257)
!2338 = !DILocation(line: 353, column: 5, scope: !2257)
!2339 = !DILocation(line: 358, column: 22, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2257, file: !201, line: 353, column: 41)
!2341 = !DILocation(line: 359, column: 13, scope: !2340)
!2342 = !DILocation(line: 361, column: 22, scope: !2340)
!2343 = !DILocation(line: 362, column: 13, scope: !2340)
!2344 = !DILocation(line: 364, column: 22, scope: !2340)
!2345 = !DILocation(line: 365, column: 13, scope: !2340)
!2346 = !DILocation(line: 370, column: 37, scope: !2257)
!2347 = !DILocation(line: 372, column: 5, scope: !2257)
!2348 = distinct !DISubprogram(name: "I2sSetDlCfg", scope: !201, file: !201, line: 378, type: !2349, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2362)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!2119, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_I2S_DL_CFG", file: !204, line: 535, baseType: !2352)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 32)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I2S_DL_CFG", file: !204, line: 527, size: 128, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SChPerSample", scope: !2353, file: !204, line: 528, baseType: !128, size: 8)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SMsbOffset", scope: !2353, file: !204, line: 529, baseType: !136, size: 32, offset: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SBitPerSample", scope: !2353, file: !204, line: 530, baseType: !128, size: 8, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SSampleRate", scope: !2353, file: !204, line: 531, baseType: !128, size: 8, offset: 72)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SWordSelInv", scope: !2353, file: !204, line: 532, baseType: !128, size: 8, offset: 80)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SFormat", scope: !2353, file: !204, line: 533, baseType: !128, size: 8, offset: 88)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SSRC", scope: !2353, file: !204, line: 534, baseType: !128, size: 8, offset: 96)
!2362 = !{!2363, !2364}
!2363 = !DILocalVariable(name: "pI2sDlCfg", arg: 1, scope: !2348, file: !201, line: 378, type: !2351)
!2364 = !DILocalVariable(name: "u4RegCfg", scope: !2348, file: !201, line: 380, type: !217)
!2365 = !DILocation(line: 0, scope: !2348)
!2366 = !DILocation(line: 382, column: 5, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2348, file: !201, line: 382, column: 5)
!2368 = !DILocation(line: 382, column: 5, scope: !2348)
!2369 = !DILocation(line: 382, column: 5, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !201, line: 382, column: 5)
!2371 = distinct !{!2371, !2369, !2369}
!2372 = !DILocation(line: 384, column: 20, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2348, file: !201, line: 384, column: 9)
!2374 = !DILocation(line: 384, column: 29, scope: !2373)
!2375 = !DILocation(line: 384, column: 9, scope: !2348)
!2376 = !DILocation(line: 388, column: 20, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2348, file: !201, line: 388, column: 9)
!2378 = !DILocation(line: 388, column: 32, scope: !2377)
!2379 = !DILocation(line: 388, column: 9, scope: !2348)
!2380 = !DILocation(line: 392, column: 20, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2348, file: !201, line: 392, column: 9)
!2382 = !DILocation(line: 392, column: 36, scope: !2381)
!2383 = !DILocation(line: 392, column: 9, scope: !2348)
!2384 = !DILocation(line: 400, column: 29, scope: !2348)
!2385 = !DILocation(line: 400, column: 44, scope: !2348)
!2386 = !DILocation(line: 400, column: 71, scope: !2348)
!2387 = !DILocation(line: 406, column: 14, scope: !2348)
!2388 = !DILocation(line: 408, column: 24, scope: !2348)
!2389 = !DILocation(line: 408, column: 5, scope: !2348)
!2390 = !DILocation(line: 412, column: 22, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2348, file: !201, line: 408, column: 41)
!2392 = !DILocation(line: 413, column: 13, scope: !2391)
!2393 = !DILocation(line: 415, column: 22, scope: !2391)
!2394 = !DILocation(line: 416, column: 13, scope: !2391)
!2395 = !DILocation(line: 418, column: 22, scope: !2391)
!2396 = !DILocation(line: 419, column: 13, scope: !2391)
!2397 = !DILocation(line: 421, column: 22, scope: !2391)
!2398 = !DILocation(line: 422, column: 13, scope: !2391)
!2399 = !DILocation(line: 424, column: 22, scope: !2391)
!2400 = !DILocation(line: 425, column: 13, scope: !2391)
!2401 = !DILocation(line: 430, column: 14, scope: !2348)
!2402 = !DILocation(line: 432, column: 24, scope: !2348)
!2403 = !DILocation(line: 432, column: 5, scope: !2348)
!2404 = !DILocation(line: 436, column: 22, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2348, file: !201, line: 432, column: 43)
!2406 = !DILocation(line: 437, column: 13, scope: !2405)
!2407 = !DILocation(line: 439, column: 22, scope: !2405)
!2408 = !DILocation(line: 440, column: 13, scope: !2405)
!2409 = !DILocation(line: 445, column: 14, scope: !2348)
!2410 = !DILocation(line: 447, column: 24, scope: !2348)
!2411 = !DILocation(line: 447, column: 5, scope: !2348)
!2412 = !DILocation(line: 457, column: 47, scope: !2348)
!2413 = !DILocation(line: 457, column: 36, scope: !2348)
!2414 = !DILocation(line: 459, column: 5, scope: !2348)
!2415 = distinct !DISubprogram(name: "I2sSetUlCfg", scope: !201, file: !201, line: 465, type: !2416, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2432)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2119, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_I2S_UL_CFG", file: !204, line: 548, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 32)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "I2S_UL_CFG", file: !204, line: 537, size: 160, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SLRSwap", scope: !2420, file: !204, line: 538, baseType: !128, size: 8)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SChPerSample", scope: !2420, file: !204, line: 539, baseType: !128, size: 8, offset: 8)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SUpdateWord", scope: !2420, file: !204, line: 540, baseType: !136, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SMsbOffset", scope: !2420, file: !204, line: 541, baseType: !136, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bI2SDownRateEn", scope: !2420, file: !204, line: 542, baseType: !128, size: 8, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SBitPerSample", scope: !2420, file: !204, line: 543, baseType: !128, size: 8, offset: 104)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "u4I2SSampleRate", scope: !2420, file: !204, line: 544, baseType: !128, size: 8, offset: 112)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SWordSelInv", scope: !2420, file: !204, line: 545, baseType: !128, size: 8, offset: 120)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SFormat", scope: !2420, file: !204, line: 546, baseType: !128, size: 8, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ucI2SSRC", scope: !2420, file: !204, line: 547, baseType: !128, size: 8, offset: 136)
!2432 = !{!2433, !2434}
!2433 = !DILocalVariable(name: "pI2sUlCfg", arg: 1, scope: !2415, file: !201, line: 465, type: !2418)
!2434 = !DILocalVariable(name: "u4RegCfg", scope: !2415, file: !201, line: 467, type: !217)
!2435 = !DILocation(line: 0, scope: !2415)
!2436 = !DILocation(line: 469, column: 5, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 469, column: 5)
!2438 = !DILocation(line: 469, column: 5, scope: !2415)
!2439 = !DILocation(line: 469, column: 5, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !201, line: 469, column: 5)
!2441 = distinct !{!2441, !2439, !2439}
!2442 = !DILocation(line: 471, column: 20, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 471, column: 9)
!2444 = !DILocation(line: 471, column: 29, scope: !2443)
!2445 = !DILocation(line: 471, column: 9, scope: !2415)
!2446 = !DILocation(line: 475, column: 20, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 475, column: 9)
!2448 = !DILocation(line: 475, column: 32, scope: !2447)
!2449 = !DILocation(line: 475, column: 9, scope: !2415)
!2450 = !DILocation(line: 479, column: 20, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 479, column: 9)
!2452 = !DILocation(line: 479, column: 36, scope: !2451)
!2453 = !DILocation(line: 479, column: 9, scope: !2415)
!2454 = !DILocation(line: 487, column: 20, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 487, column: 9)
!2456 = !DILocation(line: 487, column: 35, scope: !2455)
!2457 = !DILocation(line: 487, column: 9, scope: !2415)
!2458 = !DILocation(line: 491, column: 20, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 491, column: 9)
!2460 = !DILocation(line: 491, column: 32, scope: !2459)
!2461 = !DILocation(line: 491, column: 9, scope: !2415)
!2462 = !DILocation(line: 495, column: 29, scope: !2415)
!2463 = !DILocation(line: 495, column: 44, scope: !2415)
!2464 = !DILocation(line: 495, column: 71, scope: !2415)
!2465 = !DILocation(line: 497, column: 29, scope: !2415)
!2466 = !DILocation(line: 497, column: 45, scope: !2415)
!2467 = !DILocation(line: 497, column: 73, scope: !2415)
!2468 = !DILocation(line: 503, column: 14, scope: !2415)
!2469 = !DILocation(line: 505, column: 24, scope: !2415)
!2470 = !DILocation(line: 505, column: 5, scope: !2415)
!2471 = !DILocation(line: 509, column: 22, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 505, column: 41)
!2473 = !DILocation(line: 510, column: 13, scope: !2472)
!2474 = !DILocation(line: 512, column: 22, scope: !2472)
!2475 = !DILocation(line: 513, column: 13, scope: !2472)
!2476 = !DILocation(line: 515, column: 22, scope: !2472)
!2477 = !DILocation(line: 516, column: 13, scope: !2472)
!2478 = !DILocation(line: 518, column: 22, scope: !2472)
!2479 = !DILocation(line: 519, column: 13, scope: !2472)
!2480 = !DILocation(line: 521, column: 22, scope: !2472)
!2481 = !DILocation(line: 522, column: 13, scope: !2472)
!2482 = !DILocation(line: 527, column: 14, scope: !2415)
!2483 = !DILocation(line: 529, column: 24, scope: !2415)
!2484 = !DILocation(line: 529, column: 5, scope: !2415)
!2485 = !DILocation(line: 533, column: 22, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2415, file: !201, line: 529, column: 43)
!2487 = !DILocation(line: 534, column: 13, scope: !2486)
!2488 = !DILocation(line: 536, column: 22, scope: !2486)
!2489 = !DILocation(line: 537, column: 13, scope: !2486)
!2490 = !DILocation(line: 542, column: 14, scope: !2415)
!2491 = !DILocation(line: 544, column: 24, scope: !2415)
!2492 = !DILocation(line: 544, column: 5, scope: !2415)
!2493 = !DILocation(line: 554, column: 47, scope: !2415)
!2494 = !DILocation(line: 554, column: 36, scope: !2415)
!2495 = !DILocation(line: 568, column: 5, scope: !2415)
!2496 = distinct !DISubprogram(name: "I2sClkFifoEn", scope: !201, file: !201, line: 576, type: !2170, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2497)
!2497 = !{!2498}
!2498 = !DILocalVariable(name: "bI2sEn", arg: 1, scope: !2496, file: !201, line: 576, type: !2119)
!2499 = !DILocation(line: 0, scope: !2496)
!2500 = !DILocation(line: 578, column: 16, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2496, file: !201, line: 578, column: 9)
!2502 = !DILocation(line: 0, scope: !2501)
!2503 = !DILocation(line: 578, column: 9, scope: !2496)
!2504 = !DILocation(line: 579, column: 41, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !201, line: 578, column: 27)
!2506 = !DILocation(line: 581, column: 5, scope: !2505)
!2507 = !DILocation(line: 582, column: 41, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2501, file: !201, line: 581, column: 12)
!2509 = !DILocation(line: 583, column: 41, scope: !2508)
!2510 = !DILocation(line: 584, column: 41, scope: !2508)
!2511 = !DILocation(line: 585, column: 41, scope: !2508)
!2512 = !DILocation(line: 588, column: 5, scope: !2496)
!2513 = distinct !DISubprogram(name: "I2sDlEn", scope: !201, file: !201, line: 596, type: !2170, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2514)
!2514 = !{!2515}
!2515 = !DILocalVariable(name: "bI2sEn", arg: 1, scope: !2513, file: !201, line: 596, type: !2119)
!2516 = !DILocation(line: 0, scope: !2513)
!2517 = !DILocation(line: 598, column: 16, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2513, file: !201, line: 598, column: 9)
!2519 = !DILocation(line: 0, scope: !2518)
!2520 = !DILocation(line: 598, column: 9, scope: !2513)
!2521 = !DILocation(line: 606, column: 5, scope: !2513)
!2522 = distinct !DISubprogram(name: "I2sUlEn", scope: !201, file: !201, line: 614, type: !2170, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2523)
!2523 = !{!2524}
!2524 = !DILocalVariable(name: "bI2sEn", arg: 1, scope: !2522, file: !201, line: 614, type: !2119)
!2525 = !DILocation(line: 0, scope: !2522)
!2526 = !DILocation(line: 616, column: 16, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !201, line: 616, column: 9)
!2528 = !DILocation(line: 0, scope: !2527)
!2529 = !DILocation(line: 616, column: 9, scope: !2522)
!2530 = !DILocation(line: 624, column: 5, scope: !2522)
!2531 = distinct !DISubprogram(name: "I2sReset", scope: !201, file: !201, line: 630, type: !2210, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1285)
!2532 = !DILocation(line: 632, column: 34, scope: !2531)
!2533 = !DILocation(line: 633, column: 34, scope: !2531)
!2534 = !DILocation(line: 635, column: 5, scope: !2531)
!2535 = distinct !DISubprogram(name: "I2sCfgInitialSetting", scope: !201, file: !201, line: 639, type: !2536, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!2119, !521, !2260, !2351, !2418}
!2538 = !{!2539, !2540, !2541, !2542}
!2539 = !DILocalVariable(name: "I2sInitialType", arg: 1, scope: !2535, file: !201, line: 639, type: !521)
!2540 = !DILocalVariable(name: "pI2sGblCfg", arg: 2, scope: !2535, file: !201, line: 639, type: !2260)
!2541 = !DILocalVariable(name: "pI2sDlCfg", arg: 3, scope: !2535, file: !201, line: 639, type: !2351)
!2542 = !DILocalVariable(name: "pI2sUlCfg", arg: 4, scope: !2535, file: !201, line: 639, type: !2418)
!2543 = !DILocation(line: 0, scope: !2535)
!2544 = !DILocation(line: 641, column: 5, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2535, file: !201, line: 641, column: 5)
!2546 = !DILocation(line: 641, column: 5, scope: !2535)
!2547 = !DILocation(line: 641, column: 5, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !201, line: 641, column: 5)
!2549 = distinct !{!2549, !2547, !2547}
!2550 = !DILocation(line: 642, column: 5, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2535, file: !201, line: 642, column: 5)
!2552 = !DILocation(line: 642, column: 5, scope: !2535)
!2553 = !DILocation(line: 642, column: 5, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !201, line: 642, column: 5)
!2555 = distinct !{!2555, !2553, !2553}
!2556 = !DILocation(line: 643, column: 5, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2535, file: !201, line: 643, column: 5)
!2558 = !DILocation(line: 643, column: 5, scope: !2535)
!2559 = !DILocation(line: 643, column: 5, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !201, line: 643, column: 5)
!2561 = distinct !{!2561, !2559, !2559}
!2562 = !DILocation(line: 645, column: 5, scope: !2535)
!2563 = !DILocation(line: 697, column: 13, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2535, file: !201, line: 645, column: 29)
!2565 = !DILocation(line: 0, scope: !2564)
!2566 = !DILocation(line: 703, column: 1, scope: !2535)
!2567 = distinct !DISubprogram(name: "xpllMicroDelay", scope: !201, file: !201, line: 764, type: !2568, scopeLine: 765, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2570)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{null, !217}
!2570 = !{!2571, !2572}
!2571 = !DILocalVariable(name: "u4DelayUS", arg: 1, scope: !2567, file: !201, line: 764, type: !217)
!2572 = !DILocalVariable(name: "u4DealyCount", scope: !2567, file: !201, line: 766, type: !233)
!2573 = !DILocation(line: 0, scope: !2567)
!2574 = !DILocation(line: 766, column: 5, scope: !2567)
!2575 = !DILocation(line: 766, column: 21, scope: !2567)
!2576 = !DILocation(line: 768, column: 30, scope: !2567)
!2577 = !DILocation(line: 768, column: 18, scope: !2567)
!2578 = !DILocation(line: 770, column: 5, scope: !2567)
!2579 = !DILocation(line: 770, column: 24, scope: !2567)
!2580 = distinct !{!2580, !2578, !2581}
!2581 = !DILocation(line: 770, column: 27, scope: !2567)
!2582 = !DILocation(line: 771, column: 1, scope: !2567)
!2583 = distinct !DISubprogram(name: "xpllOpen", scope: !201, file: !201, line: 773, type: !181, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2584)
!2584 = !{!2585, !2586}
!2585 = !DILocalVariable(name: "u4Reg", scope: !2583, file: !201, line: 775, type: !217)
!2586 = !DILocalVariable(name: "xtal_freq", scope: !2583, file: !201, line: 776, type: !136)
!2587 = !DILocation(line: 778, column: 26, scope: !2583)
!2588 = !DILocation(line: 787, column: 28, scope: !2583)
!2589 = !DILocation(line: 789, column: 17, scope: !2583)
!2590 = !DILocation(line: 0, scope: !2583)
!2591 = !DILocation(line: 790, column: 9, scope: !2583)
!2592 = !DILocation(line: 792, column: 31, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !201, line: 790, column: 32)
!2594 = distinct !DILexicalBlock(scope: !2583, file: !201, line: 790, column: 9)
!2595 = !DILocation(line: 794, column: 31, scope: !2593)
!2596 = !DILocation(line: 796, column: 31, scope: !2593)
!2597 = !DILocation(line: 798, column: 31, scope: !2593)
!2598 = !DILocation(line: 799, column: 31, scope: !2593)
!2599 = !DILocation(line: 802, column: 9, scope: !2593)
!2600 = !DILocation(line: 804, column: 31, scope: !2593)
!2601 = !DILocation(line: 805, column: 31, scope: !2593)
!2602 = !DILocation(line: 806, column: 31, scope: !2593)
!2603 = !DILocation(line: 808, column: 9, scope: !2593)
!2604 = !DILocation(line: 808, column: 17, scope: !2593)
!2605 = !DILocation(line: 808, column: 39, scope: !2593)
!2606 = !DILocation(line: 808, column: 70, scope: !2593)
!2607 = distinct !{!2607, !2603, !2608}
!2608 = !DILocation(line: 808, column: 96, scope: !2593)
!2609 = !DILocation(line: 810, column: 9, scope: !2593)
!2610 = !DILocation(line: 811, column: 31, scope: !2593)
!2611 = !DILocation(line: 812, column: 31, scope: !2593)
!2612 = !DILocation(line: 813, column: 31, scope: !2593)
!2613 = !DILocation(line: 814, column: 31, scope: !2593)
!2614 = !DILocation(line: 815, column: 31, scope: !2593)
!2615 = !DILocation(line: 816, column: 5, scope: !2593)
!2616 = !DILocation(line: 817, column: 31, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !201, line: 816, column: 39)
!2618 = distinct !DILexicalBlock(scope: !2594, file: !201, line: 816, column: 16)
!2619 = !DILocation(line: 818, column: 31, scope: !2617)
!2620 = !DILocation(line: 819, column: 31, scope: !2617)
!2621 = !DILocation(line: 820, column: 31, scope: !2617)
!2622 = !DILocation(line: 821, column: 31, scope: !2617)
!2623 = !DILocation(line: 823, column: 9, scope: !2617)
!2624 = !DILocation(line: 825, column: 31, scope: !2617)
!2625 = !DILocation(line: 827, column: 9, scope: !2617)
!2626 = !DILocation(line: 829, column: 31, scope: !2617)
!2627 = !DILocation(line: 830, column: 31, scope: !2617)
!2628 = !DILocation(line: 832, column: 9, scope: !2617)
!2629 = !DILocation(line: 834, column: 31, scope: !2617)
!2630 = !DILocation(line: 836, column: 9, scope: !2617)
!2631 = !DILocation(line: 838, column: 31, scope: !2617)
!2632 = !DILocation(line: 840, column: 9, scope: !2617)
!2633 = !DILocation(line: 842, column: 31, scope: !2617)
!2634 = !DILocation(line: 844, column: 9, scope: !2617)
!2635 = !DILocation(line: 846, column: 31, scope: !2617)
!2636 = !DILocation(line: 847, column: 31, scope: !2617)
!2637 = !DILocation(line: 848, column: 31, scope: !2617)
!2638 = !DILocation(line: 850, column: 9, scope: !2617)
!2639 = !DILocation(line: 853, column: 5, scope: !2617)
!2640 = !DILocation(line: 855, column: 5, scope: !2583)
!2641 = !DILocation(line: 856, column: 13, scope: !2583)
!2642 = !DILocation(line: 857, column: 11, scope: !2583)
!2643 = !DILocation(line: 858, column: 11, scope: !2583)
!2644 = !DILocation(line: 859, column: 27, scope: !2583)
!2645 = !DILocation(line: 861, column: 5, scope: !2583)
!2646 = !DILocation(line: 862, column: 29, scope: !2583)
!2647 = !DILocation(line: 863, column: 30, scope: !2583)
!2648 = !DILocation(line: 864, column: 30, scope: !2583)
!2649 = !DILocation(line: 866, column: 5, scope: !2583)
!2650 = !DILocation(line: 880, column: 1, scope: !2583)
!2651 = distinct !DISubprogram(name: "xpllClose", scope: !201, file: !201, line: 882, type: !181, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1285)
!2652 = !DILocation(line: 885, column: 30, scope: !2651)
!2653 = !DILocation(line: 886, column: 27, scope: !2651)
!2654 = !DILocation(line: 887, column: 27, scope: !2651)
!2655 = !DILocation(line: 888, column: 26, scope: !2651)
!2656 = !DILocation(line: 890, column: 27, scope: !2651)
!2657 = !DILocation(line: 893, column: 28, scope: !2651)
!2658 = !DILocation(line: 894, column: 28, scope: !2651)
!2659 = !DILocation(line: 896, column: 1, scope: !2651)
!2660 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !1064, file: !1064, line: 54, type: !2661, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2664)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!2663, !217, !212}
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 56, baseType: !53)
!2664 = !{!2665, !2666, !2667, !2668}
!2665 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2660, file: !1064, line: 54, type: !217)
!2666 = !DILocalVariable(name: "outEnable", arg: 2, scope: !2660, file: !1064, line: 54, type: !212)
!2667 = !DILocalVariable(name: "no", scope: !2660, file: !1064, line: 57, type: !2251)
!2668 = !DILocalVariable(name: "remainder", scope: !2660, file: !1064, line: 58, type: !2251)
!2669 = !DILocation(line: 0, scope: !2660)
!2670 = !DILocation(line: 59, column: 19, scope: !2660)
!2671 = !DILocation(line: 60, column: 17, scope: !2660)
!2672 = !DILocation(line: 61, column: 5, scope: !2660)
!2673 = !DILocation(line: 65, column: 27, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !1064, line: 65, column: 17)
!2675 = distinct !DILexicalBlock(scope: !2660, file: !1064, line: 61, column: 17)
!2676 = !DILocation(line: 0, scope: !2674)
!2677 = !DILocation(line: 65, column: 17, scope: !2675)
!2678 = !DILocation(line: 66, column: 21, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2674, file: !1064, line: 65, column: 33)
!2680 = !DILocation(line: 67, column: 73, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !1064, line: 66, column: 38)
!2682 = distinct !DILexicalBlock(scope: !2679, file: !1064, line: 66, column: 21)
!2683 = !DILocation(line: 67, column: 69, scope: !2681)
!2684 = !DILocation(line: 67, column: 66, scope: !2681)
!2685 = !DILocation(line: 68, column: 17, scope: !2681)
!2686 = !DILocation(line: 68, column: 28, scope: !2682)
!2687 = !DILocation(line: 69, column: 77, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !1064, line: 68, column: 45)
!2689 = distinct !DILexicalBlock(scope: !2682, file: !1064, line: 68, column: 28)
!2690 = !DILocation(line: 70, column: 77, scope: !2688)
!2691 = !DILocation(line: 71, column: 17, scope: !2688)
!2692 = !DILocation(line: 72, column: 77, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !1064, line: 71, column: 45)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !1064, line: 71, column: 28)
!2695 = !DILocation(line: 73, column: 77, scope: !2693)
!2696 = !DILocation(line: 74, column: 17, scope: !2693)
!2697 = !DILocation(line: 75, column: 79, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !1064, line: 74, column: 45)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !1064, line: 74, column: 28)
!2700 = !DILocation(line: 76, column: 79, scope: !2698)
!2701 = !DILocation(line: 77, column: 17, scope: !2698)
!2702 = !DILocation(line: 78, column: 79, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !1064, line: 77, column: 45)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !1064, line: 77, column: 28)
!2705 = !DILocation(line: 79, column: 79, scope: !2703)
!2706 = !DILocation(line: 80, column: 17, scope: !2703)
!2707 = !DILocation(line: 81, column: 79, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !1064, line: 80, column: 45)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !1064, line: 80, column: 28)
!2710 = !DILocation(line: 82, column: 79, scope: !2708)
!2711 = !DILocation(line: 83, column: 17, scope: !2708)
!2712 = !DILocation(line: 85, column: 17, scope: !2679)
!2713 = !DILocation(line: 86, column: 13, scope: !2679)
!2714 = !DILocation(line: 88, column: 21, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2674, file: !1064, line: 86, column: 20)
!2716 = !DILocation(line: 89, column: 72, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !1064, line: 88, column: 38)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !1064, line: 88, column: 21)
!2719 = !DILocation(line: 89, column: 66, scope: !2717)
!2720 = !DILocation(line: 90, column: 17, scope: !2717)
!2721 = !DILocation(line: 90, column: 28, scope: !2718)
!2722 = !DILocation(line: 91, column: 77, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !1064, line: 90, column: 45)
!2724 = distinct !DILexicalBlock(scope: !2718, file: !1064, line: 90, column: 28)
!2725 = !DILocation(line: 92, column: 17, scope: !2723)
!2726 = !DILocation(line: 93, column: 77, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !1064, line: 92, column: 45)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !1064, line: 92, column: 28)
!2729 = !DILocation(line: 94, column: 17, scope: !2727)
!2730 = !DILocation(line: 95, column: 79, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !1064, line: 94, column: 45)
!2732 = distinct !DILexicalBlock(scope: !2728, file: !1064, line: 94, column: 28)
!2733 = !DILocation(line: 96, column: 17, scope: !2731)
!2734 = !DILocation(line: 97, column: 79, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !1064, line: 96, column: 45)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !1064, line: 96, column: 28)
!2737 = !DILocation(line: 98, column: 17, scope: !2735)
!2738 = !DILocation(line: 99, column: 79, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !1064, line: 98, column: 45)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !1064, line: 98, column: 28)
!2741 = !DILocation(line: 100, column: 17, scope: !2739)
!2742 = !DILocation(line: 103, column: 17, scope: !2715)
!2743 = !DILocation(line: 109, column: 27, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2675, file: !1064, line: 109, column: 17)
!2745 = !DILocation(line: 0, scope: !2744)
!2746 = !DILocation(line: 109, column: 17, scope: !2675)
!2747 = !DILocation(line: 110, column: 21, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !1064, line: 109, column: 33)
!2749 = !DILocation(line: 111, column: 73, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !1064, line: 110, column: 36)
!2751 = distinct !DILexicalBlock(scope: !2748, file: !1064, line: 110, column: 21)
!2752 = !DILocation(line: 111, column: 69, scope: !2750)
!2753 = !DILocation(line: 111, column: 66, scope: !2750)
!2754 = !DILocation(line: 112, column: 17, scope: !2750)
!2755 = !DILocation(line: 113, column: 79, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !1064, line: 112, column: 24)
!2757 = !DILocation(line: 114, column: 79, scope: !2756)
!2758 = !DILocation(line: 117, column: 17, scope: !2748)
!2759 = !DILocation(line: 118, column: 13, scope: !2748)
!2760 = !DILocation(line: 120, column: 21, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2744, file: !1064, line: 118, column: 20)
!2762 = !DILocation(line: 121, column: 72, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !1064, line: 120, column: 36)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !1064, line: 120, column: 21)
!2765 = !DILocation(line: 121, column: 66, scope: !2763)
!2766 = !DILocation(line: 122, column: 17, scope: !2763)
!2767 = !DILocation(line: 123, column: 79, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2764, file: !1064, line: 122, column: 24)
!2769 = !DILocation(line: 126, column: 17, scope: !2761)
!2770 = !DILocation(line: 133, column: 1, scope: !2660)
!2771 = distinct !DISubprogram(name: "halGPO_Write", scope: !1064, file: !1064, line: 136, type: !2661, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2772)
!2772 = !{!2773, !2774, !2775, !2776}
!2773 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2771, file: !1064, line: 136, type: !217)
!2774 = !DILocalVariable(name: "writeValue", arg: 2, scope: !2771, file: !1064, line: 136, type: !212)
!2775 = !DILocalVariable(name: "no", scope: !2771, file: !1064, line: 138, type: !2251)
!2776 = !DILocalVariable(name: "remainder", scope: !2771, file: !1064, line: 139, type: !2251)
!2777 = !DILocation(line: 0, scope: !2771)
!2778 = !DILocation(line: 140, column: 19, scope: !2771)
!2779 = !DILocation(line: 141, column: 17, scope: !2771)
!2780 = !DILocation(line: 142, column: 5, scope: !2771)
!2781 = !DILocation(line: 145, column: 17, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !1064, line: 145, column: 17)
!2783 = distinct !DILexicalBlock(scope: !2771, file: !1064, line: 142, column: 17)
!2784 = !DILocation(line: 0, scope: !2782)
!2785 = !DILocation(line: 145, column: 17, scope: !2783)
!2786 = !DILocation(line: 146, column: 17, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !1064, line: 145, column: 29)
!2788 = !DILocation(line: 147, column: 13, scope: !2787)
!2789 = !DILocation(line: 148, column: 17, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !1064, line: 147, column: 20)
!2791 = !DILocation(line: 153, column: 17, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2783, file: !1064, line: 153, column: 17)
!2793 = !DILocation(line: 0, scope: !2792)
!2794 = !DILocation(line: 153, column: 17, scope: !2783)
!2795 = !DILocation(line: 154, column: 17, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !1064, line: 153, column: 29)
!2797 = !DILocation(line: 155, column: 13, scope: !2796)
!2798 = !DILocation(line: 156, column: 17, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2792, file: !1064, line: 155, column: 20)
!2800 = !DILocation(line: 163, column: 1, scope: !2771)
!2801 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !1064, file: !1064, line: 169, type: !2802, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!212, !217}
!2804 = !{!2805, !2806, !2807, !2808}
!2805 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2801, file: !1064, line: 169, type: !217)
!2806 = !DILocalVariable(name: "no", scope: !2801, file: !1064, line: 171, type: !2251)
!2807 = !DILocalVariable(name: "remainder", scope: !2801, file: !1064, line: 172, type: !2251)
!2808 = !DILocalVariable(name: "dout", scope: !2801, file: !1064, line: 175, type: !212)
!2809 = !DILocation(line: 0, scope: !2801)
!2810 = !DILocation(line: 173, column: 19, scope: !2801)
!2811 = !DILocation(line: 174, column: 17, scope: !2801)
!2812 = !DILocation(line: 177, column: 5, scope: !2801)
!2813 = !DILocation(line: 183, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2801, file: !1064, line: 177, column: 17)
!2815 = !DILocation(line: 0, scope: !2814)
!2816 = !DILocation(line: 187, column: 5, scope: !2801)
!2817 = !DILocation(line: 188, column: 1, scope: !2801)
!2818 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !1064, file: !1064, line: 189, type: !2802, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2819)
!2819 = !{!2820, !2821, !2822, !2823}
!2820 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2818, file: !1064, line: 189, type: !217)
!2821 = !DILocalVariable(name: "no", scope: !2818, file: !1064, line: 191, type: !2251)
!2822 = !DILocalVariable(name: "remainder", scope: !2818, file: !1064, line: 192, type: !2251)
!2823 = !DILocalVariable(name: "din", scope: !2818, file: !1064, line: 195, type: !212)
!2824 = !DILocation(line: 0, scope: !2818)
!2825 = !DILocation(line: 193, column: 19, scope: !2818)
!2826 = !DILocation(line: 194, column: 17, scope: !2818)
!2827 = !DILocation(line: 196, column: 5, scope: !2818)
!2828 = !DILocation(line: 203, column: 13, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !1064, line: 196, column: 17)
!2830 = !DILocation(line: 0, scope: !2829)
!2831 = !DILocation(line: 208, column: 5, scope: !2818)
!2832 = !DILocation(line: 209, column: 1, scope: !2818)
!2833 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !1064, file: !1064, line: 210, type: !2802, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2834)
!2834 = !{!2835, !2836, !2837, !2838}
!2835 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2833, file: !1064, line: 210, type: !217)
!2836 = !DILocalVariable(name: "no", scope: !2833, file: !1064, line: 212, type: !2251)
!2837 = !DILocalVariable(name: "remainder", scope: !2833, file: !1064, line: 213, type: !2251)
!2838 = !DILocalVariable(name: "outEnable", scope: !2833, file: !1064, line: 216, type: !212)
!2839 = !DILocation(line: 0, scope: !2833)
!2840 = !DILocation(line: 214, column: 19, scope: !2833)
!2841 = !DILocation(line: 215, column: 17, scope: !2833)
!2842 = !DILocation(line: 218, column: 5, scope: !2833)
!2843 = !DILocation(line: 224, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2833, file: !1064, line: 218, column: 17)
!2845 = !DILocation(line: 0, scope: !2844)
!2846 = !DILocation(line: 228, column: 5, scope: !2833)
!2847 = !DILocation(line: 229, column: 1, scope: !2833)
!2848 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !1064, file: !1064, line: 232, type: !2849, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!2663, !217}
!2851 = !{!2852, !2853, !2854}
!2852 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2848, file: !1064, line: 232, type: !217)
!2853 = !DILocalVariable(name: "no", scope: !2848, file: !1064, line: 234, type: !2251)
!2854 = !DILocalVariable(name: "remainder", scope: !2848, file: !1064, line: 235, type: !2251)
!2855 = !DILocation(line: 0, scope: !2848)
!2856 = !DILocation(line: 236, column: 19, scope: !2848)
!2857 = !DILocation(line: 237, column: 17, scope: !2848)
!2858 = !DILocation(line: 238, column: 5, scope: !2848)
!2859 = !DILocation(line: 239, column: 5, scope: !2848)
!2860 = !DILocation(line: 241, column: 27, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1064, line: 241, column: 17)
!2862 = distinct !DILexicalBlock(scope: !2848, file: !1064, line: 239, column: 17)
!2863 = !DILocation(line: 241, column: 17, scope: !2862)
!2864 = !DILocation(line: 241, column: 17, scope: !2861)
!2865 = !DILocation(line: 242, column: 17, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !1064, line: 241, column: 34)
!2867 = !DILocation(line: 243, column: 13, scope: !2866)
!2868 = !DILocation(line: 243, column: 24, scope: !2861)
!2869 = !DILocation(line: 244, column: 73, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !1064, line: 243, column: 41)
!2871 = distinct !DILexicalBlock(scope: !2861, file: !1064, line: 243, column: 24)
!2872 = !DILocation(line: 245, column: 73, scope: !2870)
!2873 = !DILocation(line: 246, column: 13, scope: !2870)
!2874 = !DILocation(line: 247, column: 73, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !1064, line: 246, column: 41)
!2876 = distinct !DILexicalBlock(scope: !2871, file: !1064, line: 246, column: 24)
!2877 = !DILocation(line: 248, column: 73, scope: !2875)
!2878 = !DILocation(line: 249, column: 13, scope: !2875)
!2879 = !DILocation(line: 250, column: 75, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !1064, line: 249, column: 41)
!2881 = distinct !DILexicalBlock(scope: !2876, file: !1064, line: 249, column: 24)
!2882 = !DILocation(line: 251, column: 75, scope: !2880)
!2883 = !DILocation(line: 252, column: 13, scope: !2880)
!2884 = !DILocation(line: 253, column: 75, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !1064, line: 252, column: 41)
!2886 = distinct !DILexicalBlock(scope: !2881, file: !1064, line: 252, column: 24)
!2887 = !DILocation(line: 254, column: 75, scope: !2885)
!2888 = !DILocation(line: 255, column: 13, scope: !2885)
!2889 = !DILocation(line: 256, column: 75, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !1064, line: 255, column: 41)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !1064, line: 255, column: 24)
!2892 = !DILocation(line: 257, column: 75, scope: !2890)
!2893 = !DILocation(line: 258, column: 13, scope: !2890)
!2894 = !DILocation(line: 261, column: 18, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2862, file: !1064, line: 261, column: 17)
!2896 = !DILocation(line: 261, column: 17, scope: !2862)
!2897 = !DILocation(line: 262, column: 75, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2895, file: !1064, line: 261, column: 29)
!2899 = !DILocation(line: 263, column: 75, scope: !2898)
!2900 = !DILocation(line: 264, column: 13, scope: !2898)
!2901 = !DILocation(line: 265, column: 17, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !1064, line: 264, column: 20)
!2903 = !DILocation(line: 272, column: 1, scope: !2848)
!2904 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !1064, file: !1064, line: 359, type: !2849, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2905)
!2905 = !{!2906, !2907, !2908}
!2906 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2904, file: !1064, line: 359, type: !217)
!2907 = !DILocalVariable(name: "no", scope: !2904, file: !1064, line: 362, type: !2251)
!2908 = !DILocalVariable(name: "remainder", scope: !2904, file: !1064, line: 363, type: !2251)
!2909 = !DILocation(line: 0, scope: !2904)
!2910 = !DILocation(line: 364, column: 19, scope: !2904)
!2911 = !DILocation(line: 365, column: 17, scope: !2904)
!2912 = !DILocation(line: 367, column: 5, scope: !2904)
!2913 = !DILocation(line: 369, column: 27, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !1064, line: 369, column: 17)
!2915 = distinct !DILexicalBlock(scope: !2904, file: !1064, line: 367, column: 17)
!2916 = !DILocation(line: 369, column: 17, scope: !2915)
!2917 = !DILocation(line: 369, column: 17, scope: !2914)
!2918 = !DILocation(line: 370, column: 17, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2914, file: !1064, line: 369, column: 34)
!2920 = !DILocation(line: 371, column: 13, scope: !2919)
!2921 = !DILocation(line: 371, column: 24, scope: !2914)
!2922 = !DILocation(line: 372, column: 73, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !1064, line: 371, column: 41)
!2924 = distinct !DILexicalBlock(scope: !2914, file: !1064, line: 371, column: 24)
!2925 = !DILocation(line: 373, column: 73, scope: !2923)
!2926 = !DILocation(line: 374, column: 13, scope: !2923)
!2927 = !DILocation(line: 375, column: 73, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !1064, line: 374, column: 41)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !1064, line: 374, column: 24)
!2930 = !DILocation(line: 376, column: 73, scope: !2928)
!2931 = !DILocation(line: 377, column: 13, scope: !2928)
!2932 = !DILocation(line: 378, column: 75, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !1064, line: 377, column: 41)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !1064, line: 377, column: 24)
!2935 = !DILocation(line: 379, column: 75, scope: !2933)
!2936 = !DILocation(line: 380, column: 13, scope: !2933)
!2937 = !DILocation(line: 381, column: 75, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !1064, line: 380, column: 41)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !1064, line: 380, column: 24)
!2940 = !DILocation(line: 382, column: 75, scope: !2938)
!2941 = !DILocation(line: 383, column: 13, scope: !2938)
!2942 = !DILocation(line: 384, column: 75, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !1064, line: 383, column: 41)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !1064, line: 383, column: 24)
!2945 = !DILocation(line: 385, column: 75, scope: !2943)
!2946 = !DILocation(line: 386, column: 13, scope: !2943)
!2947 = !DILocation(line: 389, column: 18, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2915, file: !1064, line: 389, column: 17)
!2949 = !DILocation(line: 389, column: 17, scope: !2915)
!2950 = !DILocation(line: 390, column: 75, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !1064, line: 389, column: 29)
!2952 = !DILocation(line: 391, column: 75, scope: !2951)
!2953 = !DILocation(line: 392, column: 13, scope: !2951)
!2954 = !DILocation(line: 393, column: 17, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2948, file: !1064, line: 392, column: 20)
!2956 = !DILocation(line: 401, column: 1, scope: !2904)
!2957 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !1064, file: !1064, line: 274, type: !2849, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !2958)
!2958 = !{!2959, !2960, !2961}
!2959 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2957, file: !1064, line: 274, type: !217)
!2960 = !DILocalVariable(name: "no", scope: !2957, file: !1064, line: 276, type: !2251)
!2961 = !DILocalVariable(name: "remainder", scope: !2957, file: !1064, line: 277, type: !2251)
!2962 = !DILocation(line: 0, scope: !2957)
!2963 = !DILocation(line: 278, column: 19, scope: !2957)
!2964 = !DILocation(line: 279, column: 17, scope: !2957)
!2965 = !DILocation(line: 281, column: 5, scope: !2957)
!2966 = !DILocation(line: 283, column: 27, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !1064, line: 283, column: 17)
!2968 = distinct !DILexicalBlock(scope: !2957, file: !1064, line: 281, column: 17)
!2969 = !DILocation(line: 283, column: 17, scope: !2968)
!2970 = !DILocation(line: 283, column: 17, scope: !2967)
!2971 = !DILocation(line: 284, column: 17, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !1064, line: 283, column: 34)
!2973 = !DILocation(line: 285, column: 13, scope: !2972)
!2974 = !DILocation(line: 285, column: 24, scope: !2967)
!2975 = !DILocation(line: 286, column: 73, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !1064, line: 285, column: 41)
!2977 = distinct !DILexicalBlock(scope: !2967, file: !1064, line: 285, column: 24)
!2978 = !DILocation(line: 287, column: 73, scope: !2976)
!2979 = !DILocation(line: 288, column: 13, scope: !2976)
!2980 = !DILocation(line: 289, column: 73, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !1064, line: 288, column: 41)
!2982 = distinct !DILexicalBlock(scope: !2977, file: !1064, line: 288, column: 24)
!2983 = !DILocation(line: 290, column: 73, scope: !2981)
!2984 = !DILocation(line: 291, column: 13, scope: !2981)
!2985 = !DILocation(line: 292, column: 75, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !1064, line: 291, column: 41)
!2987 = distinct !DILexicalBlock(scope: !2982, file: !1064, line: 291, column: 24)
!2988 = !DILocation(line: 293, column: 75, scope: !2986)
!2989 = !DILocation(line: 294, column: 13, scope: !2986)
!2990 = !DILocation(line: 295, column: 75, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !1064, line: 294, column: 41)
!2992 = distinct !DILexicalBlock(scope: !2987, file: !1064, line: 294, column: 24)
!2993 = !DILocation(line: 296, column: 75, scope: !2991)
!2994 = !DILocation(line: 297, column: 13, scope: !2991)
!2995 = !DILocation(line: 298, column: 75, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !1064, line: 297, column: 41)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !1064, line: 297, column: 24)
!2998 = !DILocation(line: 299, column: 75, scope: !2996)
!2999 = !DILocation(line: 300, column: 13, scope: !2996)
!3000 = !DILocation(line: 303, column: 18, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2968, file: !1064, line: 303, column: 17)
!3002 = !DILocation(line: 303, column: 17, scope: !2968)
!3003 = !DILocation(line: 304, column: 75, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3001, file: !1064, line: 303, column: 29)
!3005 = !DILocation(line: 305, column: 75, scope: !3004)
!3006 = !DILocation(line: 306, column: 13, scope: !3004)
!3007 = !DILocation(line: 307, column: 17, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3001, file: !1064, line: 306, column: 20)
!3009 = !DILocation(line: 314, column: 1, scope: !2957)
!3010 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !1064, file: !1064, line: 316, type: !2849, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !3011)
!3011 = !{!3012, !3013, !3014}
!3012 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !3010, file: !1064, line: 316, type: !217)
!3013 = !DILocalVariable(name: "no", scope: !3010, file: !1064, line: 318, type: !2251)
!3014 = !DILocalVariable(name: "remainder", scope: !3010, file: !1064, line: 319, type: !2251)
!3015 = !DILocation(line: 0, scope: !3010)
!3016 = !DILocation(line: 320, column: 19, scope: !3010)
!3017 = !DILocation(line: 321, column: 17, scope: !3010)
!3018 = !DILocation(line: 322, column: 5, scope: !3010)
!3019 = !DILocation(line: 323, column: 5, scope: !3010)
!3020 = !DILocation(line: 325, column: 27, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !1064, line: 325, column: 17)
!3022 = distinct !DILexicalBlock(scope: !3010, file: !1064, line: 323, column: 17)
!3023 = !DILocation(line: 325, column: 17, scope: !3022)
!3024 = !DILocation(line: 325, column: 17, scope: !3021)
!3025 = !DILocation(line: 326, column: 17, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3021, file: !1064, line: 325, column: 34)
!3027 = !DILocation(line: 327, column: 13, scope: !3026)
!3028 = !DILocation(line: 327, column: 24, scope: !3021)
!3029 = !DILocation(line: 328, column: 73, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !1064, line: 327, column: 41)
!3031 = distinct !DILexicalBlock(scope: !3021, file: !1064, line: 327, column: 24)
!3032 = !DILocation(line: 329, column: 73, scope: !3030)
!3033 = !DILocation(line: 330, column: 13, scope: !3030)
!3034 = !DILocation(line: 331, column: 73, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !1064, line: 330, column: 41)
!3036 = distinct !DILexicalBlock(scope: !3031, file: !1064, line: 330, column: 24)
!3037 = !DILocation(line: 332, column: 73, scope: !3035)
!3038 = !DILocation(line: 333, column: 13, scope: !3035)
!3039 = !DILocation(line: 334, column: 75, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !1064, line: 333, column: 41)
!3041 = distinct !DILexicalBlock(scope: !3036, file: !1064, line: 333, column: 24)
!3042 = !DILocation(line: 335, column: 75, scope: !3040)
!3043 = !DILocation(line: 336, column: 13, scope: !3040)
!3044 = !DILocation(line: 337, column: 75, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !1064, line: 336, column: 41)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !1064, line: 336, column: 24)
!3047 = !DILocation(line: 338, column: 75, scope: !3045)
!3048 = !DILocation(line: 339, column: 13, scope: !3045)
!3049 = !DILocation(line: 340, column: 75, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !1064, line: 339, column: 41)
!3051 = distinct !DILexicalBlock(scope: !3046, file: !1064, line: 339, column: 24)
!3052 = !DILocation(line: 341, column: 75, scope: !3050)
!3053 = !DILocation(line: 342, column: 13, scope: !3050)
!3054 = !DILocation(line: 345, column: 18, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3022, file: !1064, line: 345, column: 17)
!3056 = !DILocation(line: 345, column: 17, scope: !3022)
!3057 = !DILocation(line: 346, column: 75, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !1064, line: 345, column: 29)
!3059 = !DILocation(line: 347, column: 75, scope: !3058)
!3060 = !DILocation(line: 348, column: 13, scope: !3058)
!3061 = !DILocation(line: 349, column: 17, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3055, file: !1064, line: 348, column: 20)
!3063 = !DILocation(line: 357, column: 1, scope: !3010)
!3064 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !1064, file: !1064, line: 404, type: !2661, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !3065)
!3065 = !{!3066, !3067, !3068, !3069}
!3066 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !3064, file: !1064, line: 404, type: !217)
!3067 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !3064, file: !1064, line: 404, type: !212)
!3068 = !DILocalVariable(name: "no", scope: !3064, file: !1064, line: 406, type: !2251)
!3069 = !DILocalVariable(name: "remainder", scope: !3064, file: !1064, line: 407, type: !2251)
!3070 = !DILocation(line: 0, scope: !3064)
!3071 = !DILocation(line: 408, column: 19, scope: !3064)
!3072 = !DILocation(line: 409, column: 17, scope: !3064)
!3073 = !DILocation(line: 411, column: 5, scope: !3064)
!3074 = !DILocation(line: 413, column: 84, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3064, file: !1064, line: 411, column: 17)
!3076 = !DILocation(line: 413, column: 70, scope: !3075)
!3077 = !DILocation(line: 413, column: 64, scope: !3075)
!3078 = !DILocation(line: 413, column: 61, scope: !3075)
!3079 = !DILocation(line: 414, column: 79, scope: !3075)
!3080 = !DILocation(line: 414, column: 83, scope: !3075)
!3081 = !DILocation(line: 414, column: 88, scope: !3075)
!3082 = !DILocation(line: 414, column: 61, scope: !3075)
!3083 = !DILocation(line: 415, column: 13, scope: !3075)
!3084 = !DILocation(line: 417, column: 27, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3075, file: !1064, line: 417, column: 17)
!3086 = !DILocation(line: 417, column: 17, scope: !3075)
!3087 = !DILocation(line: 418, column: 88, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3085, file: !1064, line: 417, column: 33)
!3089 = !DILocation(line: 418, column: 74, scope: !3088)
!3090 = !DILocation(line: 418, column: 68, scope: !3088)
!3091 = !DILocation(line: 418, column: 65, scope: !3088)
!3092 = !DILocation(line: 419, column: 83, scope: !3088)
!3093 = !DILocation(line: 419, column: 87, scope: !3088)
!3094 = !DILocation(line: 419, column: 92, scope: !3088)
!3095 = !DILocation(line: 419, column: 65, scope: !3088)
!3096 = !DILocation(line: 420, column: 13, scope: !3088)
!3097 = !DILocation(line: 420, column: 24, scope: !3085)
!3098 = !DILocation(line: 421, column: 73, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !1064, line: 420, column: 41)
!3100 = distinct !DILexicalBlock(scope: !3085, file: !1064, line: 420, column: 24)
!3101 = !DILocation(line: 422, column: 91, scope: !3099)
!3102 = !DILocation(line: 422, column: 100, scope: !3099)
!3103 = !DILocation(line: 422, column: 73, scope: !3099)
!3104 = !DILocation(line: 423, column: 73, scope: !3099)
!3105 = !DILocation(line: 424, column: 13, scope: !3099)
!3106 = !DILocation(line: 425, column: 73, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !1064, line: 424, column: 41)
!3108 = distinct !DILexicalBlock(scope: !3100, file: !1064, line: 424, column: 24)
!3109 = !DILocation(line: 426, column: 91, scope: !3107)
!3110 = !DILocation(line: 426, column: 100, scope: !3107)
!3111 = !DILocation(line: 426, column: 73, scope: !3107)
!3112 = !DILocation(line: 427, column: 73, scope: !3107)
!3113 = !DILocation(line: 428, column: 13, scope: !3107)
!3114 = !DILocation(line: 429, column: 75, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !1064, line: 428, column: 41)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !1064, line: 428, column: 24)
!3117 = !DILocation(line: 430, column: 93, scope: !3115)
!3118 = !DILocation(line: 430, column: 102, scope: !3115)
!3119 = !DILocation(line: 430, column: 75, scope: !3115)
!3120 = !DILocation(line: 431, column: 75, scope: !3115)
!3121 = !DILocation(line: 432, column: 13, scope: !3115)
!3122 = !DILocation(line: 433, column: 75, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !1064, line: 432, column: 41)
!3124 = distinct !DILexicalBlock(scope: !3116, file: !1064, line: 432, column: 24)
!3125 = !DILocation(line: 434, column: 93, scope: !3123)
!3126 = !DILocation(line: 434, column: 102, scope: !3123)
!3127 = !DILocation(line: 434, column: 75, scope: !3123)
!3128 = !DILocation(line: 435, column: 75, scope: !3123)
!3129 = !DILocation(line: 436, column: 13, scope: !3123)
!3130 = !DILocation(line: 437, column: 75, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !1064, line: 436, column: 41)
!3132 = distinct !DILexicalBlock(scope: !3124, file: !1064, line: 436, column: 24)
!3133 = !DILocation(line: 438, column: 93, scope: !3131)
!3134 = !DILocation(line: 438, column: 102, scope: !3131)
!3135 = !DILocation(line: 438, column: 75, scope: !3131)
!3136 = !DILocation(line: 439, column: 75, scope: !3131)
!3137 = !DILocation(line: 440, column: 13, scope: !3131)
!3138 = !DILocation(line: 443, column: 18, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3075, file: !1064, line: 443, column: 17)
!3140 = !DILocation(line: 443, column: 17, scope: !3075)
!3141 = !DILocation(line: 444, column: 75, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !1064, line: 443, column: 29)
!3143 = !DILocation(line: 445, column: 93, scope: !3142)
!3144 = !DILocation(line: 445, column: 102, scope: !3142)
!3145 = !DILocation(line: 445, column: 75, scope: !3142)
!3146 = !DILocation(line: 446, column: 75, scope: !3142)
!3147 = !DILocation(line: 447, column: 13, scope: !3142)
!3148 = !DILocation(line: 448, column: 88, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3139, file: !1064, line: 447, column: 20)
!3150 = !DILocation(line: 448, column: 74, scope: !3149)
!3151 = !DILocation(line: 448, column: 68, scope: !3149)
!3152 = !DILocation(line: 448, column: 65, scope: !3149)
!3153 = !DILocation(line: 449, column: 83, scope: !3149)
!3154 = !DILocation(line: 449, column: 87, scope: !3149)
!3155 = !DILocation(line: 449, column: 92, scope: !3149)
!3156 = !DILocation(line: 449, column: 65, scope: !3149)
!3157 = !DILocation(line: 453, column: 84, scope: !3075)
!3158 = !DILocation(line: 453, column: 70, scope: !3075)
!3159 = !DILocation(line: 453, column: 64, scope: !3075)
!3160 = !DILocation(line: 453, column: 61, scope: !3075)
!3161 = !DILocation(line: 454, column: 79, scope: !3075)
!3162 = !DILocation(line: 454, column: 83, scope: !3075)
!3163 = !DILocation(line: 454, column: 88, scope: !3075)
!3164 = !DILocation(line: 454, column: 61, scope: !3075)
!3165 = !DILocation(line: 455, column: 13, scope: !3075)
!3166 = !DILocation(line: 460, column: 1, scope: !3064)
!3167 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !1064, file: !1064, line: 463, type: !3168, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !3171)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!2663, !217, !3170}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!3171 = !{!3172, !3173, !3174, !3175, !3176}
!3172 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !3167, file: !1064, line: 463, type: !217)
!3173 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !3167, file: !1064, line: 463, type: !3170)
!3174 = !DILocalVariable(name: "no", scope: !3167, file: !1064, line: 465, type: !2251)
!3175 = !DILocalVariable(name: "remainder", scope: !3167, file: !1064, line: 466, type: !2251)
!3176 = !DILocalVariable(name: "temp", scope: !3167, file: !1064, line: 467, type: !217)
!3177 = !DILocation(line: 0, scope: !3167)
!3178 = !DILocation(line: 468, column: 19, scope: !3167)
!3179 = !DILocation(line: 469, column: 17, scope: !3167)
!3180 = !DILocation(line: 471, column: 5, scope: !3167)
!3181 = !DILocation(line: 473, column: 20, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3167, file: !1064, line: 471, column: 17)
!3183 = !DILocation(line: 474, column: 40, scope: !3182)
!3184 = !DILocation(line: 474, column: 26, scope: !3182)
!3185 = !DILocation(line: 474, column: 18, scope: !3182)
!3186 = !DILocation(line: 475, column: 40, scope: !3182)
!3187 = !DILocation(line: 475, column: 29, scope: !3182)
!3188 = !DILocation(line: 476, column: 13, scope: !3182)
!3189 = !DILocation(line: 478, column: 27, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3182, file: !1064, line: 478, column: 17)
!3191 = !DILocation(line: 478, column: 17, scope: !3182)
!3192 = !DILocation(line: 479, column: 24, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3190, file: !1064, line: 478, column: 33)
!3194 = !DILocation(line: 480, column: 44, scope: !3193)
!3195 = !DILocation(line: 480, column: 30, scope: !3193)
!3196 = !DILocation(line: 480, column: 22, scope: !3193)
!3197 = !DILocation(line: 481, column: 44, scope: !3193)
!3198 = !DILocation(line: 481, column: 33, scope: !3193)
!3199 = !DILocation(line: 482, column: 13, scope: !3193)
!3200 = !DILocation(line: 482, column: 24, scope: !3190)
!3201 = !DILocation(line: 483, column: 24, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !1064, line: 482, column: 41)
!3203 = distinct !DILexicalBlock(scope: !3190, file: !1064, line: 482, column: 24)
!3204 = !DILocation(line: 485, column: 53, scope: !3202)
!3205 = !DILocation(line: 485, column: 33, scope: !3202)
!3206 = !DILocation(line: 486, column: 13, scope: !3202)
!3207 = !DILocation(line: 487, column: 24, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !1064, line: 486, column: 41)
!3209 = distinct !DILexicalBlock(scope: !3203, file: !1064, line: 486, column: 24)
!3210 = !DILocation(line: 489, column: 53, scope: !3208)
!3211 = !DILocation(line: 489, column: 33, scope: !3208)
!3212 = !DILocation(line: 490, column: 13, scope: !3208)
!3213 = !DILocation(line: 491, column: 24, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !1064, line: 490, column: 41)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !1064, line: 490, column: 24)
!3216 = !DILocation(line: 493, column: 53, scope: !3214)
!3217 = !DILocation(line: 493, column: 33, scope: !3214)
!3218 = !DILocation(line: 494, column: 13, scope: !3214)
!3219 = !DILocation(line: 495, column: 24, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !1064, line: 494, column: 41)
!3221 = distinct !DILexicalBlock(scope: !3215, file: !1064, line: 494, column: 24)
!3222 = !DILocation(line: 497, column: 53, scope: !3220)
!3223 = !DILocation(line: 497, column: 33, scope: !3220)
!3224 = !DILocation(line: 498, column: 13, scope: !3220)
!3225 = !DILocation(line: 499, column: 24, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !1064, line: 498, column: 41)
!3227 = distinct !DILexicalBlock(scope: !3221, file: !1064, line: 498, column: 24)
!3228 = !DILocation(line: 501, column: 53, scope: !3226)
!3229 = !DILocation(line: 501, column: 33, scope: !3226)
!3230 = !DILocation(line: 502, column: 13, scope: !3226)
!3231 = !DILocation(line: 505, column: 18, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3182, file: !1064, line: 505, column: 17)
!3233 = !DILocation(line: 505, column: 17, scope: !3182)
!3234 = !DILocation(line: 506, column: 24, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3232, file: !1064, line: 505, column: 29)
!3236 = !DILocation(line: 508, column: 53, scope: !3235)
!3237 = !DILocation(line: 508, column: 33, scope: !3235)
!3238 = !DILocation(line: 509, column: 13, scope: !3235)
!3239 = !DILocation(line: 510, column: 24, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3232, file: !1064, line: 509, column: 20)
!3241 = !DILocation(line: 511, column: 44, scope: !3240)
!3242 = !DILocation(line: 511, column: 30, scope: !3240)
!3243 = !DILocation(line: 511, column: 22, scope: !3240)
!3244 = !DILocation(line: 512, column: 44, scope: !3240)
!3245 = !DILocation(line: 512, column: 33, scope: !3240)
!3246 = !DILocation(line: 516, column: 20, scope: !3182)
!3247 = !DILocation(line: 517, column: 40, scope: !3182)
!3248 = !DILocation(line: 517, column: 26, scope: !3182)
!3249 = !DILocation(line: 517, column: 18, scope: !3182)
!3250 = !DILocation(line: 518, column: 40, scope: !3182)
!3251 = !DILocation(line: 518, column: 29, scope: !3182)
!3252 = !DILocation(line: 519, column: 13, scope: !3182)
!3253 = !DILocation(line: 0, scope: !3182)
!3254 = !DILocation(line: 524, column: 1, scope: !3167)
!3255 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !1064, file: !1064, line: 526, type: !3256, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !3259)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !217, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !1067, line: 1212, baseType: !1066)
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !3255, file: !1064, line: 526, type: !217)
!3261 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !3255, file: !1064, line: 526, type: !3258)
!3262 = !DILocalVariable(name: "no", scope: !3255, file: !1064, line: 529, type: !2251)
!3263 = !DILocalVariable(name: "remainder", scope: !3255, file: !1064, line: 530, type: !2251)
!3264 = !DILocation(line: 0, scope: !3255)
!3265 = !DILocation(line: 531, column: 19, scope: !3255)
!3266 = !DILocation(line: 532, column: 17, scope: !3255)
!3267 = !DILocation(line: 534, column: 9, scope: !3255)
!3268 = !DILocation(line: 536, column: 9, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !1064, line: 534, column: 45)
!3270 = distinct !DILexicalBlock(scope: !3255, file: !1064, line: 534, column: 9)
!3271 = !DILocation(line: 538, column: 56, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !1064, line: 536, column: 21)
!3273 = !DILocation(line: 538, column: 53, scope: !3272)
!3274 = !DILocation(line: 538, column: 47, scope: !3272)
!3275 = !DILocation(line: 539, column: 17, scope: !3272)
!3276 = !DILocation(line: 541, column: 56, scope: !3272)
!3277 = !DILocation(line: 541, column: 53, scope: !3272)
!3278 = !DILocation(line: 541, column: 47, scope: !3272)
!3279 = !DILocation(line: 542, column: 17, scope: !3272)
!3280 = !DILocation(line: 548, column: 9, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !1064, line: 547, column: 51)
!3282 = distinct !DILexicalBlock(scope: !3270, file: !1064, line: 547, column: 16)
!3283 = !DILocation(line: 550, column: 57, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !1064, line: 548, column: 21)
!3285 = !DILocation(line: 550, column: 54, scope: !3284)
!3286 = !DILocation(line: 550, column: 50, scope: !3284)
!3287 = !DILocation(line: 550, column: 47, scope: !3284)
!3288 = !DILocation(line: 551, column: 17, scope: !3284)
!3289 = !DILocation(line: 553, column: 57, scope: !3284)
!3290 = !DILocation(line: 553, column: 54, scope: !3284)
!3291 = !DILocation(line: 553, column: 50, scope: !3284)
!3292 = !DILocation(line: 553, column: 47, scope: !3284)
!3293 = !DILocation(line: 554, column: 17, scope: !3284)
!3294 = !DILocation(line: 560, column: 1, scope: !3255)
!3295 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !1073, file: !1073, line: 85, type: !3296, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3300)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!3298, !3299, !212}
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !47, line: 79, baseType: null)
!3299 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !1076, line: 225, baseType: !1075)
!3300 = !{!3301, !3302, !3303}
!3301 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !3295, file: !1073, line: 85, type: !3299)
!3302 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !3295, file: !1073, line: 85, type: !212)
!3303 = !DILocalVariable(name: "temp", scope: !3295, file: !1073, line: 87, type: !136)
!3304 = !DILocation(line: 0, scope: !3295)
!3305 = !DILocation(line: 88, column: 5, scope: !3295)
!3306 = !DILocation(line: 91, column: 20, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3295, file: !1073, line: 88, column: 24)
!3308 = !DILocation(line: 92, column: 18, scope: !3307)
!3309 = !DILocation(line: 93, column: 66, scope: !3307)
!3310 = !DILocation(line: 93, column: 63, scope: !3307)
!3311 = !DILocation(line: 93, column: 56, scope: !3307)
!3312 = !DILocation(line: 94, column: 13, scope: !3307)
!3313 = !DILocation(line: 97, column: 20, scope: !3307)
!3314 = !DILocation(line: 98, column: 18, scope: !3307)
!3315 = !DILocation(line: 99, column: 67, scope: !3307)
!3316 = !DILocation(line: 99, column: 74, scope: !3307)
!3317 = !DILocation(line: 99, column: 64, scope: !3307)
!3318 = !DILocation(line: 99, column: 56, scope: !3307)
!3319 = !DILocation(line: 100, column: 13, scope: !3307)
!3320 = !DILocation(line: 103, column: 20, scope: !3307)
!3321 = !DILocation(line: 104, column: 18, scope: !3307)
!3322 = !DILocation(line: 105, column: 67, scope: !3307)
!3323 = !DILocation(line: 105, column: 74, scope: !3307)
!3324 = !DILocation(line: 105, column: 64, scope: !3307)
!3325 = !DILocation(line: 105, column: 56, scope: !3307)
!3326 = !DILocation(line: 106, column: 13, scope: !3307)
!3327 = !DILocation(line: 109, column: 20, scope: !3307)
!3328 = !DILocation(line: 110, column: 18, scope: !3307)
!3329 = !DILocation(line: 111, column: 67, scope: !3307)
!3330 = !DILocation(line: 111, column: 74, scope: !3307)
!3331 = !DILocation(line: 111, column: 64, scope: !3307)
!3332 = !DILocation(line: 111, column: 56, scope: !3307)
!3333 = !DILocation(line: 112, column: 13, scope: !3307)
!3334 = !DILocation(line: 115, column: 20, scope: !3307)
!3335 = !DILocation(line: 116, column: 18, scope: !3307)
!3336 = !DILocation(line: 117, column: 67, scope: !3307)
!3337 = !DILocation(line: 117, column: 74, scope: !3307)
!3338 = !DILocation(line: 117, column: 64, scope: !3307)
!3339 = !DILocation(line: 117, column: 56, scope: !3307)
!3340 = !DILocation(line: 118, column: 13, scope: !3307)
!3341 = !DILocation(line: 121, column: 20, scope: !3307)
!3342 = !DILocation(line: 122, column: 18, scope: !3307)
!3343 = !DILocation(line: 123, column: 67, scope: !3307)
!3344 = !DILocation(line: 123, column: 74, scope: !3307)
!3345 = !DILocation(line: 123, column: 64, scope: !3307)
!3346 = !DILocation(line: 123, column: 56, scope: !3307)
!3347 = !DILocation(line: 124, column: 13, scope: !3307)
!3348 = !DILocation(line: 127, column: 20, scope: !3307)
!3349 = !DILocation(line: 128, column: 18, scope: !3307)
!3350 = !DILocation(line: 129, column: 67, scope: !3307)
!3351 = !DILocation(line: 129, column: 74, scope: !3307)
!3352 = !DILocation(line: 129, column: 64, scope: !3307)
!3353 = !DILocation(line: 129, column: 56, scope: !3307)
!3354 = !DILocation(line: 130, column: 13, scope: !3307)
!3355 = !DILocation(line: 133, column: 20, scope: !3307)
!3356 = !DILocation(line: 134, column: 18, scope: !3307)
!3357 = !DILocation(line: 135, column: 67, scope: !3307)
!3358 = !DILocation(line: 135, column: 74, scope: !3307)
!3359 = !DILocation(line: 135, column: 64, scope: !3307)
!3360 = !DILocation(line: 135, column: 56, scope: !3307)
!3361 = !DILocation(line: 136, column: 13, scope: !3307)
!3362 = !DILocation(line: 139, column: 20, scope: !3307)
!3363 = !DILocation(line: 140, column: 18, scope: !3307)
!3364 = !DILocation(line: 141, column: 67, scope: !3307)
!3365 = !DILocation(line: 141, column: 64, scope: !3307)
!3366 = !DILocation(line: 141, column: 56, scope: !3307)
!3367 = !DILocation(line: 142, column: 13, scope: !3307)
!3368 = !DILocation(line: 145, column: 20, scope: !3307)
!3369 = !DILocation(line: 146, column: 18, scope: !3307)
!3370 = !DILocation(line: 147, column: 67, scope: !3307)
!3371 = !DILocation(line: 147, column: 74, scope: !3307)
!3372 = !DILocation(line: 147, column: 64, scope: !3307)
!3373 = !DILocation(line: 147, column: 56, scope: !3307)
!3374 = !DILocation(line: 148, column: 13, scope: !3307)
!3375 = !DILocation(line: 151, column: 20, scope: !3307)
!3376 = !DILocation(line: 152, column: 18, scope: !3307)
!3377 = !DILocation(line: 153, column: 67, scope: !3307)
!3378 = !DILocation(line: 153, column: 74, scope: !3307)
!3379 = !DILocation(line: 153, column: 64, scope: !3307)
!3380 = !DILocation(line: 153, column: 56, scope: !3307)
!3381 = !DILocation(line: 154, column: 13, scope: !3307)
!3382 = !DILocation(line: 157, column: 20, scope: !3307)
!3383 = !DILocation(line: 158, column: 18, scope: !3307)
!3384 = !DILocation(line: 159, column: 67, scope: !3307)
!3385 = !DILocation(line: 159, column: 74, scope: !3307)
!3386 = !DILocation(line: 159, column: 64, scope: !3307)
!3387 = !DILocation(line: 159, column: 56, scope: !3307)
!3388 = !DILocation(line: 160, column: 29, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3307, file: !1073, line: 160, column: 17)
!3390 = !DILocation(line: 161, column: 17, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3389, file: !1073, line: 160, column: 60)
!3392 = !DILocation(line: 162, column: 13, scope: !3391)
!3393 = !DILocation(line: 166, column: 20, scope: !3307)
!3394 = !DILocation(line: 167, column: 18, scope: !3307)
!3395 = !DILocation(line: 168, column: 67, scope: !3307)
!3396 = !DILocation(line: 168, column: 74, scope: !3307)
!3397 = !DILocation(line: 168, column: 64, scope: !3307)
!3398 = !DILocation(line: 168, column: 56, scope: !3307)
!3399 = !DILocation(line: 169, column: 29, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3307, file: !1073, line: 169, column: 17)
!3401 = !DILocation(line: 170, column: 17, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3400, file: !1073, line: 169, column: 45)
!3403 = !DILocation(line: 171, column: 13, scope: !3402)
!3404 = !DILocation(line: 175, column: 20, scope: !3307)
!3405 = !DILocation(line: 176, column: 18, scope: !3307)
!3406 = !DILocation(line: 177, column: 67, scope: !3307)
!3407 = !DILocation(line: 177, column: 74, scope: !3307)
!3408 = !DILocation(line: 177, column: 64, scope: !3307)
!3409 = !DILocation(line: 177, column: 56, scope: !3307)
!3410 = !DILocation(line: 178, column: 19, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3307, file: !1073, line: 178, column: 17)
!3412 = !DILocation(line: 178, column: 17, scope: !3307)
!3413 = !DILocation(line: 179, column: 17, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3411, file: !1073, line: 178, column: 30)
!3415 = !DILocation(line: 180, column: 13, scope: !3414)
!3416 = !DILocation(line: 184, column: 20, scope: !3307)
!3417 = !DILocation(line: 185, column: 18, scope: !3307)
!3418 = !DILocation(line: 186, column: 67, scope: !3307)
!3419 = !DILocation(line: 186, column: 74, scope: !3307)
!3420 = !DILocation(line: 186, column: 64, scope: !3307)
!3421 = !DILocation(line: 186, column: 56, scope: !3307)
!3422 = !DILocation(line: 187, column: 29, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3307, file: !1073, line: 187, column: 17)
!3424 = !DILocation(line: 188, column: 17, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3423, file: !1073, line: 187, column: 45)
!3426 = !DILocation(line: 189, column: 13, scope: !3425)
!3427 = !DILocation(line: 193, column: 20, scope: !3307)
!3428 = !DILocation(line: 194, column: 18, scope: !3307)
!3429 = !DILocation(line: 195, column: 67, scope: !3307)
!3430 = !DILocation(line: 195, column: 74, scope: !3307)
!3431 = !DILocation(line: 195, column: 64, scope: !3307)
!3432 = !DILocation(line: 195, column: 56, scope: !3307)
!3433 = !DILocation(line: 196, column: 29, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3307, file: !1073, line: 196, column: 17)
!3435 = !DILocation(line: 197, column: 17, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3434, file: !1073, line: 196, column: 45)
!3437 = !DILocation(line: 198, column: 13, scope: !3436)
!3438 = !DILocation(line: 202, column: 20, scope: !3307)
!3439 = !DILocation(line: 203, column: 18, scope: !3307)
!3440 = !DILocation(line: 204, column: 67, scope: !3307)
!3441 = !DILocation(line: 204, column: 64, scope: !3307)
!3442 = !DILocation(line: 204, column: 56, scope: !3307)
!3443 = !DILocation(line: 205, column: 29, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3307, file: !1073, line: 205, column: 17)
!3445 = !DILocation(line: 206, column: 17, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !1073, line: 205, column: 45)
!3447 = !DILocation(line: 207, column: 13, scope: !3446)
!3448 = !DILocation(line: 211, column: 20, scope: !3307)
!3449 = !DILocation(line: 212, column: 18, scope: !3307)
!3450 = !DILocation(line: 213, column: 67, scope: !3307)
!3451 = !DILocation(line: 213, column: 74, scope: !3307)
!3452 = !DILocation(line: 213, column: 64, scope: !3307)
!3453 = !DILocation(line: 213, column: 56, scope: !3307)
!3454 = !DILocation(line: 214, column: 13, scope: !3307)
!3455 = !DILocation(line: 217, column: 20, scope: !3307)
!3456 = !DILocation(line: 218, column: 18, scope: !3307)
!3457 = !DILocation(line: 219, column: 67, scope: !3307)
!3458 = !DILocation(line: 219, column: 74, scope: !3307)
!3459 = !DILocation(line: 219, column: 64, scope: !3307)
!3460 = !DILocation(line: 219, column: 56, scope: !3307)
!3461 = !DILocation(line: 220, column: 13, scope: !3307)
!3462 = !DILocation(line: 223, column: 20, scope: !3307)
!3463 = !DILocation(line: 224, column: 18, scope: !3307)
!3464 = !DILocation(line: 225, column: 67, scope: !3307)
!3465 = !DILocation(line: 225, column: 74, scope: !3307)
!3466 = !DILocation(line: 225, column: 64, scope: !3307)
!3467 = !DILocation(line: 225, column: 56, scope: !3307)
!3468 = !DILocation(line: 226, column: 13, scope: !3307)
!3469 = !DILocation(line: 229, column: 20, scope: !3307)
!3470 = !DILocation(line: 230, column: 18, scope: !3307)
!3471 = !DILocation(line: 231, column: 67, scope: !3307)
!3472 = !DILocation(line: 231, column: 74, scope: !3307)
!3473 = !DILocation(line: 231, column: 64, scope: !3307)
!3474 = !DILocation(line: 231, column: 56, scope: !3307)
!3475 = !DILocation(line: 232, column: 13, scope: !3307)
!3476 = !DILocation(line: 235, column: 20, scope: !3307)
!3477 = !DILocation(line: 236, column: 18, scope: !3307)
!3478 = !DILocation(line: 237, column: 66, scope: !3307)
!3479 = !DILocation(line: 237, column: 73, scope: !3307)
!3480 = !DILocation(line: 237, column: 63, scope: !3307)
!3481 = !DILocation(line: 237, column: 56, scope: !3307)
!3482 = !DILocation(line: 238, column: 13, scope: !3307)
!3483 = !DILocation(line: 241, column: 20, scope: !3307)
!3484 = !DILocation(line: 242, column: 18, scope: !3307)
!3485 = !DILocation(line: 243, column: 67, scope: !3307)
!3486 = !DILocation(line: 243, column: 74, scope: !3307)
!3487 = !DILocation(line: 243, column: 64, scope: !3307)
!3488 = !DILocation(line: 243, column: 56, scope: !3307)
!3489 = !DILocation(line: 244, column: 13, scope: !3307)
!3490 = !DILocation(line: 247, column: 20, scope: !3307)
!3491 = !DILocation(line: 248, column: 18, scope: !3307)
!3492 = !DILocation(line: 249, column: 67, scope: !3307)
!3493 = !DILocation(line: 249, column: 74, scope: !3307)
!3494 = !DILocation(line: 249, column: 64, scope: !3307)
!3495 = !DILocation(line: 249, column: 56, scope: !3307)
!3496 = !DILocation(line: 250, column: 13, scope: !3307)
!3497 = !DILocation(line: 253, column: 20, scope: !3307)
!3498 = !DILocation(line: 254, column: 18, scope: !3307)
!3499 = !DILocation(line: 255, column: 67, scope: !3307)
!3500 = !DILocation(line: 255, column: 74, scope: !3307)
!3501 = !DILocation(line: 255, column: 64, scope: !3307)
!3502 = !DILocation(line: 255, column: 56, scope: !3307)
!3503 = !DILocation(line: 256, column: 13, scope: !3307)
!3504 = !DILocation(line: 259, column: 20, scope: !3307)
!3505 = !DILocation(line: 260, column: 18, scope: !3307)
!3506 = !DILocation(line: 261, column: 67, scope: !3307)
!3507 = !DILocation(line: 261, column: 74, scope: !3307)
!3508 = !DILocation(line: 261, column: 64, scope: !3307)
!3509 = !DILocation(line: 261, column: 56, scope: !3307)
!3510 = !DILocation(line: 262, column: 13, scope: !3307)
!3511 = !DILocation(line: 265, column: 20, scope: !3307)
!3512 = !DILocation(line: 266, column: 18, scope: !3307)
!3513 = !DILocation(line: 267, column: 67, scope: !3307)
!3514 = !DILocation(line: 267, column: 74, scope: !3307)
!3515 = !DILocation(line: 267, column: 64, scope: !3307)
!3516 = !DILocation(line: 267, column: 56, scope: !3307)
!3517 = !DILocation(line: 268, column: 13, scope: !3307)
!3518 = !DILocation(line: 271, column: 20, scope: !3307)
!3519 = !DILocation(line: 272, column: 18, scope: !3307)
!3520 = !DILocation(line: 273, column: 67, scope: !3307)
!3521 = !DILocation(line: 273, column: 74, scope: !3307)
!3522 = !DILocation(line: 273, column: 64, scope: !3307)
!3523 = !DILocation(line: 273, column: 56, scope: !3307)
!3524 = !DILocation(line: 274, column: 13, scope: !3307)
!3525 = !DILocation(line: 278, column: 1, scope: !3295)
!3526 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1154, file: !1154, line: 47, type: !1348, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !3527)
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "addr", arg: 1, scope: !3526, file: !1154, line: 47, type: !136)
!3529 = !DILocation(line: 0, scope: !3526)
!3530 = !DILocation(line: 49, column: 15, scope: !3526)
!3531 = !DILocation(line: 51, column: 5, scope: !3526)
!3532 = !{i64 2624}
!3533 = !DILocation(line: 52, column: 5, scope: !3526)
!3534 = !{i64 2651}
!3535 = !DILocation(line: 53, column: 1, scope: !3526)
!3536 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1154, file: !1154, line: 56, type: !3537, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !7}
!3539 = !{!3540}
!3540 = !DILocalVariable(name: "source", arg: 1, scope: !3536, file: !1154, line: 56, type: !7)
!3541 = !DILocation(line: 0, scope: !3536)
!3542 = !DILocation(line: 58, column: 16, scope: !3536)
!3543 = !DILocation(line: 59, column: 1, scope: !3536)
!3544 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1154, file: !1154, line: 61, type: !1317, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !3545)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "mask", scope: !3544, file: !1154, line: 63, type: !136)
!3547 = !DILocation(line: 470, column: 3, scope: !3548, inlinedAt: !3551)
!3548 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1316, file: !1316, line: 466, type: !1317, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !3549)
!3549 = !{!3550}
!3550 = !DILocalVariable(name: "result", scope: !3548, file: !1316, line: 468, type: !136)
!3551 = distinct !DILocation(line: 64, column: 5, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3544, file: !1154, line: 64, column: 5)
!3553 = !{i64 302174}
!3554 = !DILocation(line: 0, scope: !3548, inlinedAt: !3551)
!3555 = !DILocation(line: 0, scope: !3544)
!3556 = !DILocation(line: 330, column: 3, scope: !3557, inlinedAt: !3558)
!3557 = distinct !DISubprogram(name: "__disable_irq", scope: !1316, file: !1316, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !1285)
!3558 = distinct !DILocation(line: 64, column: 5, scope: !3552)
!3559 = !{i64 298838}
!3560 = !DILocation(line: 65, column: 5, scope: !3544)
!3561 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1154, file: !1154, line: 68, type: !1348, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !3562)
!3562 = !{!3563}
!3563 = !DILocalVariable(name: "mask", arg: 1, scope: !3561, file: !1154, line: 68, type: !136)
!3564 = !DILocation(line: 0, scope: !3561)
!3565 = !DILocalVariable(name: "priMask", arg: 1, scope: !3566, file: !1316, line: 481, type: !136)
!3566 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1316, file: !1316, line: 481, type: !1348, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1153, retainedNodes: !3567)
!3567 = !{!3565}
!3568 = !DILocation(line: 0, scope: !3566, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 70, column: 5, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3561, file: !1154, line: 70, column: 5)
!3571 = !DILocation(line: 483, column: 3, scope: !3566, inlinedAt: !3569)
!3572 = !{i64 302492}
!3573 = !DILocation(line: 71, column: 1, scope: !3561)
!3574 = distinct !DISubprogram(name: "pinmux_config", scope: !1199, file: !1199, line: 54, type: !3575, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1198, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!350, !1270, !136}
!3577 = !{!3578, !3579, !3580}
!3578 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !3574, file: !1199, line: 54, type: !1270)
!3579 = !DILocalVariable(name: "function", arg: 2, scope: !3574, file: !1199, line: 54, type: !136)
!3580 = !DILocalVariable(name: "ePadIndex", scope: !3574, file: !1199, line: 56, type: !3299)
!3581 = !DILocation(line: 0, scope: !3574)
!3582 = !DILocation(line: 60, column: 5, scope: !3574)
!3583 = !DILocation(line: 205, column: 38, scope: !3574)
!3584 = !DILocation(line: 205, column: 5, scope: !3574)
!3585 = !DILocation(line: 207, column: 5, scope: !3574)
!3586 = !DILocation(line: 208, column: 1, scope: !3574)
!3587 = distinct !DISubprogram(name: "top_xtal_init", scope: !228, file: !228, line: 52, type: !181, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3588)
!3588 = !{!3589, !3590}
!3589 = !DILocalVariable(name: "u4RegVal", scope: !3587, file: !228, line: 54, type: !136)
!3590 = !DILocalVariable(name: "reg", scope: !3587, file: !228, line: 55, type: !955)
!3591 = !DILocation(line: 0, scope: !3587)
!3592 = !DILocation(line: 55, column: 25, scope: !3587)
!3593 = !DILocation(line: 56, column: 16, scope: !3587)
!3594 = !DILocation(line: 56, column: 23, scope: !3587)
!3595 = !DILocation(line: 58, column: 16, scope: !3587)
!3596 = !DILocation(line: 61, column: 5, scope: !3587)
!3597 = !DILocation(line: 59, column: 14, scope: !3587)
!3598 = !DILocation(line: 0, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3587, file: !228, line: 61, column: 18)
!3600 = !DILocation(line: 87, column: 38, scope: !3587)
!3601 = !DILocation(line: 88, column: 21, scope: !3587)
!3602 = !DILocation(line: 88, column: 19, scope: !3587)
!3603 = !DILocation(line: 89, column: 5, scope: !3587)
!3604 = !DILocation(line: 90, column: 17, scope: !3587)
!3605 = !DILocation(line: 90, column: 33, scope: !3587)
!3606 = !DILocation(line: 90, column: 5, scope: !3587)
!3607 = !DILocation(line: 91, column: 1, scope: !3587)
!3608 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !228, file: !228, line: 98, type: !1317, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1285)
!3609 = !DILocation(line: 100, column: 12, scope: !3608)
!3610 = !DILocation(line: 100, column: 5, scope: !3608)
!3611 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !228, file: !228, line: 108, type: !1317, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1285)
!3612 = !DILocation(line: 110, column: 12, scope: !3611)
!3613 = !DILocation(line: 110, column: 5, scope: !3611)
!3614 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !228, file: !228, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3615)
!3615 = !{!3616, !3617}
!3616 = !DILocalVariable(name: "reg", scope: !3614, file: !228, line: 120, type: !231)
!3617 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3614, file: !228, line: 121, type: !230)
!3618 = !DILocation(line: 120, column: 5, scope: !3614)
!3619 = !DILocation(line: 120, column: 23, scope: !3614)
!3620 = !DILocation(line: 0, scope: !3614)
!3621 = !DILocation(line: 123, column: 11, scope: !3614)
!3622 = !DILocation(line: 123, column: 9, scope: !3614)
!3623 = !DILocation(line: 124, column: 12, scope: !3614)
!3624 = !DILocation(line: 124, column: 16, scope: !3614)
!3625 = !DILocation(line: 124, column: 39, scope: !3614)
!3626 = !DILocation(line: 124, column: 9, scope: !3614)
!3627 = !DILocation(line: 126, column: 9, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3614, file: !228, line: 126, column: 9)
!3629 = !DILocation(line: 126, column: 13, scope: !3628)
!3630 = !DILocation(line: 126, column: 9, scope: !3614)
!3631 = !DILocation(line: 127, column: 15, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3628, file: !228, line: 126, column: 47)
!3633 = !DILocation(line: 127, column: 13, scope: !3632)
!3634 = !DILocation(line: 128, column: 15, scope: !3632)
!3635 = !DILocation(line: 128, column: 19, scope: !3632)
!3636 = !DILocation(line: 128, column: 13, scope: !3632)
!3637 = !DILocation(line: 129, column: 15, scope: !3632)
!3638 = !DILocation(line: 129, column: 19, scope: !3632)
!3639 = !DILocation(line: 129, column: 13, scope: !3632)
!3640 = !DILocation(line: 130, column: 46, scope: !3632)
!3641 = !DILocation(line: 130, column: 9, scope: !3632)
!3642 = !DILocation(line: 132, column: 9, scope: !3632)
!3643 = !DILocation(line: 133, column: 19, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3632, file: !228, line: 132, column: 12)
!3645 = !DILocation(line: 133, column: 17, scope: !3644)
!3646 = !DILocation(line: 134, column: 19, scope: !3644)
!3647 = !DILocation(line: 134, column: 23, scope: !3644)
!3648 = !DILocation(line: 134, column: 17, scope: !3644)
!3649 = !DILocation(line: 135, column: 19, scope: !3632)
!3650 = !DILocation(line: 135, column: 18, scope: !3632)
!3651 = !DILocation(line: 135, column: 9, scope: !3644)
!3652 = distinct !{!3652, !3642, !3653}
!3653 = !DILocation(line: 135, column: 22, scope: !3632)
!3654 = !DILocation(line: 138, column: 1, scope: !3614)
!3655 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !3656, file: !3656, line: 176, type: !3657, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3661)
!3656 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!136, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3661 = !{!3662}
!3662 = !DILocalVariable(name: "Register", arg: 1, scope: !3655, file: !3656, line: 176, type: !3659)
!3663 = !DILocation(line: 0, scope: !3655)
!3664 = !DILocation(line: 178, column: 13, scope: !3655)
!3665 = !DILocation(line: 178, column: 12, scope: !3655)
!3666 = !DILocation(line: 178, column: 5, scope: !3655)
!3667 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !3656, file: !3656, line: 171, type: !3668, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3659, !136}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "Register", arg: 1, scope: !3667, file: !3656, line: 171, type: !3659)
!3672 = !DILocalVariable(name: "Value", arg: 2, scope: !3667, file: !3656, line: 171, type: !136)
!3673 = !DILocation(line: 0, scope: !3667)
!3674 = !DILocation(line: 173, column: 6, scope: !3667)
!3675 = !DILocation(line: 173, column: 36, scope: !3667)
!3676 = !DILocation(line: 174, column: 1, scope: !3667)
!3677 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !228, file: !228, line: 145, type: !1290, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3678)
!3678 = !{!3679, !3680, !3681}
!3679 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3677, file: !228, line: 145, type: !128)
!3680 = !DILocalVariable(name: "reg", scope: !3677, file: !228, line: 147, type: !231)
!3681 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3677, file: !228, line: 148, type: !230)
!3682 = !DILocation(line: 0, scope: !3677)
!3683 = !DILocation(line: 147, column: 5, scope: !3677)
!3684 = !DILocation(line: 147, column: 23, scope: !3677)
!3685 = !DILocation(line: 150, column: 11, scope: !3677)
!3686 = !DILocation(line: 150, column: 9, scope: !3677)
!3687 = !DILocation(line: 151, column: 12, scope: !3677)
!3688 = !DILocation(line: 151, column: 16, scope: !3677)
!3689 = !DILocation(line: 151, column: 39, scope: !3677)
!3690 = !DILocation(line: 151, column: 9, scope: !3677)
!3691 = !DILocation(line: 153, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3677, file: !228, line: 153, column: 9)
!3693 = !DILocation(line: 153, column: 13, scope: !3692)
!3694 = !DILocation(line: 153, column: 9, scope: !3677)
!3695 = !DILocation(line: 154, column: 15, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !228, line: 153, column: 45)
!3697 = !DILocation(line: 154, column: 13, scope: !3696)
!3698 = !DILocation(line: 155, column: 15, scope: !3696)
!3699 = !DILocation(line: 155, column: 19, scope: !3696)
!3700 = !DILocation(line: 155, column: 13, scope: !3696)
!3701 = !DILocation(line: 156, column: 15, scope: !3696)
!3702 = !DILocation(line: 156, column: 19, scope: !3696)
!3703 = !DILocation(line: 156, column: 13, scope: !3696)
!3704 = !DILocation(line: 157, column: 15, scope: !3696)
!3705 = !DILocation(line: 157, column: 13, scope: !3696)
!3706 = !DILocation(line: 158, column: 46, scope: !3696)
!3707 = !DILocation(line: 158, column: 9, scope: !3696)
!3708 = !DILocation(line: 160, column: 15, scope: !3696)
!3709 = !DILocation(line: 160, column: 13, scope: !3696)
!3710 = !DILocation(line: 161, column: 15, scope: !3696)
!3711 = !DILocation(line: 161, column: 19, scope: !3696)
!3712 = !DILocation(line: 161, column: 13, scope: !3696)
!3713 = !DILocation(line: 162, column: 15, scope: !3696)
!3714 = !DILocation(line: 162, column: 19, scope: !3696)
!3715 = !DILocation(line: 162, column: 13, scope: !3696)
!3716 = !DILocation(line: 163, column: 15, scope: !3696)
!3717 = !DILocation(line: 163, column: 19, scope: !3696)
!3718 = !DILocation(line: 163, column: 13, scope: !3696)
!3719 = !DILocation(line: 164, column: 46, scope: !3696)
!3720 = !DILocation(line: 164, column: 9, scope: !3696)
!3721 = !DILocation(line: 166, column: 9, scope: !3696)
!3722 = !DILocation(line: 167, column: 19, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3696, file: !228, line: 166, column: 12)
!3724 = !DILocation(line: 167, column: 17, scope: !3723)
!3725 = !DILocation(line: 168, column: 19, scope: !3723)
!3726 = !DILocation(line: 168, column: 23, scope: !3723)
!3727 = !DILocation(line: 168, column: 17, scope: !3723)
!3728 = !DILocation(line: 169, column: 19, scope: !3696)
!3729 = !DILocation(line: 169, column: 18, scope: !3696)
!3730 = !DILocation(line: 169, column: 9, scope: !3723)
!3731 = distinct !{!3731, !3721, !3732}
!3732 = !DILocation(line: 169, column: 22, scope: !3696)
!3733 = !DILocation(line: 171, column: 15, scope: !3696)
!3734 = !DILocation(line: 171, column: 13, scope: !3696)
!3735 = !DILocation(line: 172, column: 15, scope: !3696)
!3736 = !DILocation(line: 172, column: 19, scope: !3696)
!3737 = !DILocation(line: 172, column: 13, scope: !3696)
!3738 = !DILocation(line: 173, column: 15, scope: !3696)
!3739 = !DILocation(line: 173, column: 19, scope: !3696)
!3740 = !DILocation(line: 173, column: 13, scope: !3696)
!3741 = !DILocation(line: 174, column: 5, scope: !3696)
!3742 = !DILocation(line: 176, column: 11, scope: !3677)
!3743 = !DILocation(line: 176, column: 9, scope: !3677)
!3744 = !DILocation(line: 177, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3677, file: !228, line: 177, column: 9)
!3746 = !DILocation(line: 0, scope: !3745)
!3747 = !DILocation(line: 177, column: 9, scope: !3677)
!3748 = !DILocation(line: 178, column: 19, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3745, file: !228, line: 177, column: 17)
!3750 = !DILocation(line: 178, column: 13, scope: !3749)
!3751 = !DILocation(line: 179, column: 5, scope: !3749)
!3752 = !DILocation(line: 180, column: 13, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3745, file: !228, line: 179, column: 12)
!3754 = !DILocation(line: 182, column: 42, scope: !3677)
!3755 = !DILocation(line: 182, column: 5, scope: !3677)
!3756 = !DILocation(line: 184, column: 1, scope: !3677)
!3757 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !228, file: !228, line: 191, type: !181, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3758)
!3758 = !{!3759, !3760}
!3759 = !DILocalVariable(name: "reg", scope: !3757, file: !228, line: 193, type: !231)
!3760 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3757, file: !228, line: 194, type: !230)
!3761 = !DILocation(line: 193, column: 5, scope: !3757)
!3762 = !DILocation(line: 193, column: 23, scope: !3757)
!3763 = !DILocation(line: 0, scope: !3757)
!3764 = !DILocation(line: 196, column: 11, scope: !3757)
!3765 = !DILocation(line: 196, column: 9, scope: !3757)
!3766 = !DILocation(line: 197, column: 11, scope: !3757)
!3767 = !DILocation(line: 197, column: 15, scope: !3757)
!3768 = !DILocation(line: 197, column: 9, scope: !3757)
!3769 = !DILocation(line: 198, column: 11, scope: !3757)
!3770 = !DILocation(line: 198, column: 15, scope: !3757)
!3771 = !DILocation(line: 198, column: 9, scope: !3757)
!3772 = !DILocation(line: 199, column: 11, scope: !3757)
!3773 = !DILocation(line: 199, column: 9, scope: !3757)
!3774 = !DILocation(line: 200, column: 42, scope: !3757)
!3775 = !DILocation(line: 200, column: 5, scope: !3757)
!3776 = !DILocation(line: 202, column: 11, scope: !3757)
!3777 = !DILocation(line: 202, column: 9, scope: !3757)
!3778 = !DILocation(line: 203, column: 11, scope: !3757)
!3779 = !DILocation(line: 203, column: 15, scope: !3757)
!3780 = !DILocation(line: 203, column: 9, scope: !3757)
!3781 = !DILocation(line: 204, column: 11, scope: !3757)
!3782 = !DILocation(line: 204, column: 15, scope: !3757)
!3783 = !DILocation(line: 204, column: 9, scope: !3757)
!3784 = !DILocation(line: 205, column: 11, scope: !3757)
!3785 = !DILocation(line: 205, column: 9, scope: !3757)
!3786 = !DILocation(line: 206, column: 42, scope: !3757)
!3787 = !DILocation(line: 206, column: 5, scope: !3757)
!3788 = !DILocation(line: 209, column: 1, scope: !3757)
!3789 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !228, file: !228, line: 216, type: !181, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3790)
!3790 = !{!3791, !3792}
!3791 = !DILocalVariable(name: "reg", scope: !3789, file: !228, line: 218, type: !231)
!3792 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3789, file: !228, line: 219, type: !230)
!3793 = !DILocation(line: 218, column: 5, scope: !3789)
!3794 = !DILocation(line: 218, column: 23, scope: !3789)
!3795 = !DILocation(line: 0, scope: !3789)
!3796 = !DILocation(line: 222, column: 11, scope: !3789)
!3797 = !DILocation(line: 222, column: 9, scope: !3789)
!3798 = !DILocation(line: 223, column: 11, scope: !3789)
!3799 = !DILocation(line: 223, column: 15, scope: !3789)
!3800 = !DILocation(line: 223, column: 9, scope: !3789)
!3801 = !DILocation(line: 224, column: 11, scope: !3789)
!3802 = !DILocation(line: 224, column: 9, scope: !3789)
!3803 = !DILocation(line: 225, column: 39, scope: !3789)
!3804 = !DILocation(line: 225, column: 5, scope: !3789)
!3805 = !DILocation(line: 228, column: 11, scope: !3789)
!3806 = !DILocation(line: 228, column: 9, scope: !3789)
!3807 = !DILocation(line: 229, column: 11, scope: !3789)
!3808 = !DILocation(line: 229, column: 15, scope: !3789)
!3809 = !DILocation(line: 229, column: 9, scope: !3789)
!3810 = !DILocation(line: 230, column: 11, scope: !3789)
!3811 = !DILocation(line: 230, column: 9, scope: !3789)
!3812 = !DILocation(line: 231, column: 39, scope: !3789)
!3813 = !DILocation(line: 231, column: 5, scope: !3789)
!3814 = !DILocation(line: 233, column: 5, scope: !3789)
!3815 = !DILocation(line: 233, column: 12, scope: !3789)
!3816 = !DILocation(line: 233, column: 19, scope: !3789)
!3817 = !DILocation(line: 233, column: 16, scope: !3789)
!3818 = distinct !{!3818, !3814, !3819}
!3819 = !DILocation(line: 233, column: 52, scope: !3789)
!3820 = !DILocation(line: 235, column: 21, scope: !3789)
!3821 = !DILocation(line: 235, column: 19, scope: !3789)
!3822 = !DILocation(line: 236, column: 5, scope: !3789)
!3823 = !DILocation(line: 237, column: 17, scope: !3789)
!3824 = !DILocation(line: 237, column: 33, scope: !3789)
!3825 = !DILocation(line: 237, column: 5, scope: !3789)
!3826 = !DILocation(line: 239, column: 1, scope: !3789)
!3827 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !228, file: !228, line: 246, type: !181, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3828)
!3828 = !{!3829, !3830}
!3829 = !DILocalVariable(name: "reg", scope: !3827, file: !228, line: 248, type: !231)
!3830 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3827, file: !228, line: 249, type: !230)
!3831 = !DILocation(line: 248, column: 5, scope: !3827)
!3832 = !DILocation(line: 248, column: 23, scope: !3827)
!3833 = !DILocation(line: 0, scope: !3827)
!3834 = !DILocation(line: 252, column: 5, scope: !3827)
!3835 = !DILocation(line: 255, column: 11, scope: !3827)
!3836 = !DILocation(line: 255, column: 9, scope: !3827)
!3837 = !DILocation(line: 256, column: 11, scope: !3827)
!3838 = !DILocation(line: 256, column: 15, scope: !3827)
!3839 = !DILocation(line: 256, column: 9, scope: !3827)
!3840 = !DILocation(line: 257, column: 11, scope: !3827)
!3841 = !DILocation(line: 257, column: 15, scope: !3827)
!3842 = !DILocation(line: 257, column: 9, scope: !3827)
!3843 = !DILocation(line: 258, column: 39, scope: !3827)
!3844 = !DILocation(line: 258, column: 5, scope: !3827)
!3845 = !DILocation(line: 260, column: 5, scope: !3827)
!3846 = !DILocation(line: 260, column: 12, scope: !3827)
!3847 = !DILocation(line: 260, column: 19, scope: !3827)
!3848 = !DILocation(line: 260, column: 16, scope: !3827)
!3849 = distinct !{!3849, !3845, !3850}
!3850 = !DILocation(line: 260, column: 52, scope: !3827)
!3851 = !DILocation(line: 263, column: 11, scope: !3827)
!3852 = !DILocation(line: 263, column: 9, scope: !3827)
!3853 = !DILocation(line: 264, column: 11, scope: !3827)
!3854 = !DILocation(line: 264, column: 15, scope: !3827)
!3855 = !DILocation(line: 264, column: 9, scope: !3827)
!3856 = !DILocation(line: 265, column: 11, scope: !3827)
!3857 = !DILocation(line: 265, column: 15, scope: !3827)
!3858 = !DILocation(line: 265, column: 9, scope: !3827)
!3859 = !DILocation(line: 266, column: 39, scope: !3827)
!3860 = !DILocation(line: 266, column: 5, scope: !3827)
!3861 = !DILocation(line: 269, column: 11, scope: !3827)
!3862 = !DILocation(line: 269, column: 9, scope: !3827)
!3863 = !DILocation(line: 270, column: 11, scope: !3827)
!3864 = !DILocation(line: 270, column: 15, scope: !3827)
!3865 = !DILocation(line: 270, column: 9, scope: !3827)
!3866 = !DILocation(line: 271, column: 11, scope: !3827)
!3867 = !DILocation(line: 271, column: 15, scope: !3827)
!3868 = !DILocation(line: 271, column: 9, scope: !3827)
!3869 = !DILocation(line: 272, column: 39, scope: !3827)
!3870 = !DILocation(line: 272, column: 5, scope: !3827)
!3871 = !DILocation(line: 273, column: 19, scope: !3827)
!3872 = !DILocation(line: 274, column: 5, scope: !3827)
!3873 = !DILocation(line: 275, column: 17, scope: !3827)
!3874 = !DILocation(line: 275, column: 33, scope: !3827)
!3875 = !DILocation(line: 275, column: 5, scope: !3827)
!3876 = !DILocation(line: 277, column: 1, scope: !3827)
!3877 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !228, file: !228, line: 284, type: !181, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3878)
!3878 = !{!3879, !3880}
!3879 = !DILocalVariable(name: "reg", scope: !3877, file: !228, line: 286, type: !231)
!3880 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3877, file: !228, line: 287, type: !230)
!3881 = !DILocation(line: 286, column: 5, scope: !3877)
!3882 = !DILocation(line: 286, column: 23, scope: !3877)
!3883 = !DILocation(line: 0, scope: !3877)
!3884 = !DILocation(line: 290, column: 5, scope: !3877)
!3885 = !DILocation(line: 293, column: 11, scope: !3877)
!3886 = !DILocation(line: 293, column: 9, scope: !3877)
!3887 = !DILocation(line: 294, column: 11, scope: !3877)
!3888 = !DILocation(line: 294, column: 15, scope: !3877)
!3889 = !DILocation(line: 294, column: 9, scope: !3877)
!3890 = !DILocation(line: 295, column: 11, scope: !3877)
!3891 = !DILocation(line: 295, column: 15, scope: !3877)
!3892 = !DILocation(line: 295, column: 9, scope: !3877)
!3893 = !DILocation(line: 296, column: 39, scope: !3877)
!3894 = !DILocation(line: 296, column: 5, scope: !3877)
!3895 = !DILocation(line: 298, column: 5, scope: !3877)
!3896 = !DILocation(line: 298, column: 12, scope: !3877)
!3897 = !DILocation(line: 298, column: 19, scope: !3877)
!3898 = !DILocation(line: 298, column: 16, scope: !3877)
!3899 = distinct !{!3899, !3895, !3900}
!3900 = !DILocation(line: 298, column: 52, scope: !3877)
!3901 = !DILocation(line: 301, column: 11, scope: !3877)
!3902 = !DILocation(line: 301, column: 9, scope: !3877)
!3903 = !DILocation(line: 302, column: 11, scope: !3877)
!3904 = !DILocation(line: 302, column: 15, scope: !3877)
!3905 = !DILocation(line: 302, column: 9, scope: !3877)
!3906 = !DILocation(line: 303, column: 11, scope: !3877)
!3907 = !DILocation(line: 303, column: 15, scope: !3877)
!3908 = !DILocation(line: 303, column: 9, scope: !3877)
!3909 = !DILocation(line: 304, column: 39, scope: !3877)
!3910 = !DILocation(line: 304, column: 5, scope: !3877)
!3911 = !DILocation(line: 307, column: 11, scope: !3877)
!3912 = !DILocation(line: 307, column: 9, scope: !3877)
!3913 = !DILocation(line: 308, column: 11, scope: !3877)
!3914 = !DILocation(line: 308, column: 15, scope: !3877)
!3915 = !DILocation(line: 308, column: 9, scope: !3877)
!3916 = !DILocation(line: 309, column: 11, scope: !3877)
!3917 = !DILocation(line: 309, column: 15, scope: !3877)
!3918 = !DILocation(line: 309, column: 9, scope: !3877)
!3919 = !DILocation(line: 310, column: 39, scope: !3877)
!3920 = !DILocation(line: 310, column: 5, scope: !3877)
!3921 = !DILocation(line: 311, column: 19, scope: !3877)
!3922 = !DILocation(line: 312, column: 5, scope: !3877)
!3923 = !DILocation(line: 313, column: 17, scope: !3877)
!3924 = !DILocation(line: 313, column: 33, scope: !3877)
!3925 = !DILocation(line: 313, column: 5, scope: !3877)
!3926 = !DILocation(line: 315, column: 1, scope: !3877)
!3927 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !228, file: !228, line: 323, type: !181, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3928)
!3928 = !{!3929, !3930}
!3929 = !DILocalVariable(name: "reg", scope: !3927, file: !228, line: 325, type: !231)
!3930 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3927, file: !228, line: 326, type: !230)
!3931 = !DILocation(line: 325, column: 5, scope: !3927)
!3932 = !DILocation(line: 325, column: 23, scope: !3927)
!3933 = !DILocation(line: 0, scope: !3927)
!3934 = !DILocation(line: 329, column: 5, scope: !3927)
!3935 = !DILocation(line: 332, column: 11, scope: !3927)
!3936 = !DILocation(line: 332, column: 9, scope: !3927)
!3937 = !DILocation(line: 333, column: 11, scope: !3927)
!3938 = !DILocation(line: 333, column: 15, scope: !3927)
!3939 = !DILocation(line: 333, column: 9, scope: !3927)
!3940 = !DILocation(line: 334, column: 11, scope: !3927)
!3941 = !DILocation(line: 334, column: 9, scope: !3927)
!3942 = !DILocation(line: 335, column: 39, scope: !3927)
!3943 = !DILocation(line: 335, column: 5, scope: !3927)
!3944 = !DILocation(line: 337, column: 5, scope: !3927)
!3945 = !DILocation(line: 337, column: 12, scope: !3927)
!3946 = !DILocation(line: 337, column: 19, scope: !3927)
!3947 = !DILocation(line: 337, column: 16, scope: !3927)
!3948 = distinct !{!3948, !3944, !3949}
!3949 = !DILocation(line: 337, column: 52, scope: !3927)
!3950 = !DILocation(line: 340, column: 11, scope: !3927)
!3951 = !DILocation(line: 340, column: 9, scope: !3927)
!3952 = !DILocation(line: 341, column: 11, scope: !3927)
!3953 = !DILocation(line: 341, column: 15, scope: !3927)
!3954 = !DILocation(line: 341, column: 9, scope: !3927)
!3955 = !DILocation(line: 342, column: 11, scope: !3927)
!3956 = !DILocation(line: 342, column: 15, scope: !3927)
!3957 = !DILocation(line: 342, column: 9, scope: !3927)
!3958 = !DILocation(line: 343, column: 39, scope: !3927)
!3959 = !DILocation(line: 343, column: 5, scope: !3927)
!3960 = !DILocation(line: 344, column: 19, scope: !3927)
!3961 = !DILocation(line: 345, column: 5, scope: !3927)
!3962 = !DILocation(line: 346, column: 17, scope: !3927)
!3963 = !DILocation(line: 346, column: 33, scope: !3927)
!3964 = !DILocation(line: 346, column: 5, scope: !3927)
!3965 = !DILocation(line: 348, column: 1, scope: !3927)
!3966 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !228, file: !228, line: 353, type: !181, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !3967)
!3967 = !{!3968, !3969}
!3968 = !DILocalVariable(name: "reg", scope: !3966, file: !228, line: 355, type: !233)
!3969 = !DILocalVariable(name: "pTopCfgHclk", scope: !3966, file: !228, line: 356, type: !232)
!3970 = !DILocation(line: 355, column: 5, scope: !3966)
!3971 = !DILocation(line: 355, column: 21, scope: !3966)
!3972 = !DILocation(line: 0, scope: !3966)
!3973 = !DILocation(line: 358, column: 11, scope: !3966)
!3974 = !DILocation(line: 358, column: 9, scope: !3966)
!3975 = !DILocation(line: 359, column: 11, scope: !3966)
!3976 = !DILocation(line: 359, column: 15, scope: !3966)
!3977 = !DILocation(line: 359, column: 9, scope: !3966)
!3978 = !DILocation(line: 360, column: 11, scope: !3966)
!3979 = !DILocation(line: 360, column: 9, scope: !3966)
!3980 = !DILocation(line: 361, column: 37, scope: !3966)
!3981 = !DILocation(line: 361, column: 5, scope: !3966)
!3982 = !DILocation(line: 362, column: 1, scope: !3966)
!3983 = distinct !DISubprogram(name: "getc", scope: !240, file: !240, line: 68, type: !3984, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!53}
!3986 = !{!3987}
!3987 = !DILocalVariable(name: "rc", scope: !3983, file: !240, line: 71, type: !53)
!3988 = !DILocation(line: 71, column: 14, scope: !3983)
!3989 = !DILocation(line: 0, scope: !3983)
!3990 = !DILocation(line: 72, column: 5, scope: !3983)
!3991 = distinct !DISubprogram(name: "getc_nowait", scope: !240, file: !240, line: 80, type: !3984, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !3992)
!3992 = !{!3993}
!3993 = !DILocalVariable(name: "c", scope: !3991, file: !240, line: 82, type: !675)
!3994 = !DILocation(line: 84, column: 9, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3991, file: !240, line: 84, column: 9)
!3996 = !DILocation(line: 84, column: 40, scope: !3995)
!3997 = !DILocation(line: 84, column: 9, scope: !3991)
!3998 = !DILocation(line: 85, column: 13, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !240, line: 84, column: 47)
!4000 = !DILocation(line: 86, column: 16, scope: !3999)
!4001 = !DILocation(line: 0, scope: !3991)
!4002 = !DILocation(line: 86, column: 9, scope: !3999)
!4003 = !DILocation(line: 0, scope: !3995)
!4004 = !DILocation(line: 90, column: 1, scope: !3991)
!4005 = distinct !DISubprogram(name: "uart_output_char", scope: !240, file: !240, line: 93, type: !4006, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4009)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !4008, !132}
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !243, line: 75, baseType: !242)
!4009 = !{!4010, !4011, !4012}
!4010 = !DILocalVariable(name: "port_no", arg: 1, scope: !4005, file: !240, line: 93, type: !4008)
!4011 = !DILocalVariable(name: "c", arg: 2, scope: !4005, file: !240, line: 93, type: !132)
!4012 = !DILocalVariable(name: "base", scope: !4005, file: !240, line: 95, type: !7)
!4013 = !DILocation(line: 0, scope: !4005)
!4014 = !DILocation(line: 95, column: 25, scope: !4005)
!4015 = !DILocation(line: 97, column: 5, scope: !4005)
!4016 = !DILocation(line: 97, column: 14, scope: !4005)
!4017 = !DILocation(line: 97, column: 42, scope: !4005)
!4018 = !DILocation(line: 97, column: 12, scope: !4005)
!4019 = distinct !{!4019, !4015, !4020}
!4020 = !DILocation(line: 98, column: 9, scope: !4005)
!4021 = !DILocation(line: 99, column: 35, scope: !4005)
!4022 = !DILocation(line: 99, column: 5, scope: !4005)
!4023 = !DILocation(line: 99, column: 33, scope: !4005)
!4024 = !DILocation(line: 102, column: 1, scope: !4005)
!4025 = distinct !DISubprogram(name: "uart_input_char", scope: !240, file: !240, line: 106, type: !4026, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4028)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!128, !4008}
!4028 = !{!4029, !4030, !4031}
!4029 = !DILocalVariable(name: "port_no", arg: 1, scope: !4025, file: !240, line: 106, type: !4008)
!4030 = !DILocalVariable(name: "base", scope: !4025, file: !240, line: 108, type: !7)
!4031 = !DILocalVariable(name: "c", scope: !4025, file: !240, line: 109, type: !675)
!4032 = !DILocation(line: 0, scope: !4025)
!4033 = !DILocation(line: 108, column: 25, scope: !4025)
!4034 = !DILocation(line: 111, column: 5, scope: !4025)
!4035 = !DILocation(line: 111, column: 14, scope: !4025)
!4036 = !DILocation(line: 111, column: 42, scope: !4025)
!4037 = !DILocation(line: 111, column: 12, scope: !4025)
!4038 = distinct !{!4038, !4034, !4039}
!4039 = !DILocation(line: 112, column: 9, scope: !4025)
!4040 = !DILocation(line: 114, column: 9, scope: !4025)
!4041 = !DILocation(line: 116, column: 5, scope: !4025)
!4042 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !240, file: !240, line: 120, type: !4043, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4045)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!136, !4008}
!4045 = !{!4046, !4047, !4048}
!4046 = !DILocalVariable(name: "port_no", arg: 1, scope: !4042, file: !240, line: 120, type: !4008)
!4047 = !DILocalVariable(name: "base", scope: !4042, file: !240, line: 122, type: !7)
!4048 = !DILocalVariable(name: "c", scope: !4042, file: !240, line: 123, type: !675)
!4049 = !DILocation(line: 0, scope: !4042)
!4050 = !DILocation(line: 122, column: 25, scope: !4042)
!4051 = !DILocation(line: 125, column: 9, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4042, file: !240, line: 125, column: 9)
!4053 = !DILocation(line: 125, column: 37, scope: !4052)
!4054 = !DILocation(line: 125, column: 9, scope: !4042)
!4055 = !DILocation(line: 126, column: 13, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4052, file: !240, line: 125, column: 44)
!4057 = !DILocation(line: 127, column: 16, scope: !4056)
!4058 = !DILocation(line: 127, column: 9, scope: !4056)
!4059 = !DILocation(line: 0, scope: !4052)
!4060 = !DILocation(line: 131, column: 1, scope: !4042)
!4061 = distinct !DISubprogram(name: "halUART_HWInit", scope: !240, file: !240, line: 136, type: !4062, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4064)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !4008}
!4064 = !{!4065}
!4065 = !DILocalVariable(name: "u_port", arg: 1, scope: !4061, file: !240, line: 136, type: !4008)
!4066 = !DILocation(line: 0, scope: !4061)
!4067 = !DILocation(line: 139, column: 5, scope: !4061)
!4068 = !DILocation(line: 140, column: 9, scope: !4061)
!4069 = !DILocation(line: 153, column: 5, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !240, line: 147, column: 38)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !240, line: 147, column: 16)
!4072 = distinct !DILexicalBlock(scope: !4061, file: !240, line: 140, column: 9)
!4073 = !DILocation(line: 0, scope: !4072)
!4074 = !DILocation(line: 155, column: 1, scope: !4061)
!4075 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !240, file: !240, line: 158, type: !4076, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{null, !4008, !136, !775, !775, !775}
!4078 = !{!4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4094, !4095}
!4079 = !DILocalVariable(name: "u_port", arg: 1, scope: !4075, file: !240, line: 158, type: !4008)
!4080 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4075, file: !240, line: 158, type: !136)
!4081 = !DILocalVariable(name: "databit", arg: 3, scope: !4075, file: !240, line: 158, type: !775)
!4082 = !DILocalVariable(name: "parity", arg: 4, scope: !4075, file: !240, line: 158, type: !775)
!4083 = !DILocalVariable(name: "stopbit", arg: 5, scope: !4075, file: !240, line: 158, type: !775)
!4084 = !DILocalVariable(name: "control_word", scope: !4075, file: !240, line: 160, type: !775)
!4085 = !DILocalVariable(name: "UART_BASE", scope: !4075, file: !240, line: 161, type: !136)
!4086 = !DILocalVariable(name: "data", scope: !4075, file: !240, line: 162, type: !136)
!4087 = !DILocalVariable(name: "uart_lcr", scope: !4075, file: !240, line: 162, type: !136)
!4088 = !DILocalVariable(name: "high_speed_div", scope: !4075, file: !240, line: 162, type: !136)
!4089 = !DILocalVariable(name: "sample_count", scope: !4075, file: !240, line: 162, type: !136)
!4090 = !DILocalVariable(name: "sample_point", scope: !4075, file: !240, line: 162, type: !136)
!4091 = !DILocalVariable(name: "fraction", scope: !4075, file: !240, line: 162, type: !136)
!4092 = !DILocalVariable(name: "fraction_L_mapping", scope: !4075, file: !240, line: 163, type: !4093)
!4093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 176, elements: !190)
!4094 = !DILocalVariable(name: "fraction_M_mapping", scope: !4075, file: !240, line: 164, type: !4093)
!4095 = !DILocalVariable(name: "status", scope: !4075, file: !240, line: 165, type: !350)
!4096 = !DILocation(line: 0, scope: !4075)
!4097 = !DILocation(line: 163, column: 15, scope: !4075)
!4098 = !DILocation(line: 164, column: 15, scope: !4075)
!4099 = !DILocation(line: 166, column: 20, scope: !4075)
!4100 = !DILocation(line: 166, column: 18, scope: !4075)
!4101 = !DILocation(line: 168, column: 9, scope: !4075)
!4102 = !DILocation(line: 176, column: 5, scope: !4075)
!4103 = !DILocation(line: 176, column: 44, scope: !4075)
!4104 = !DILocation(line: 177, column: 16, scope: !4075)
!4105 = !DILocation(line: 178, column: 50, scope: !4075)
!4106 = !DILocation(line: 178, column: 38, scope: !4075)
!4107 = !DILocation(line: 179, column: 12, scope: !4075)
!4108 = !DILocation(line: 179, column: 25, scope: !4075)
!4109 = !DILocation(line: 180, column: 28, scope: !4075)
!4110 = !DILocation(line: 180, column: 34, scope: !4075)
!4111 = !DILocation(line: 182, column: 29, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4075, file: !240, line: 181, column: 5)
!4113 = !DILocation(line: 182, column: 46, scope: !4112)
!4114 = !DILocation(line: 183, column: 26, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4112, file: !240, line: 183, column: 13)
!4116 = !DILocation(line: 183, column: 13, scope: !4112)
!4117 = !DILocation(line: 192, column: 30, scope: !4075)
!4118 = !DILocation(line: 192, column: 35, scope: !4075)
!4119 = !DILocation(line: 192, column: 46, scope: !4075)
!4120 = !DILocation(line: 192, column: 74, scope: !4075)
!4121 = !DILocation(line: 192, column: 53, scope: !4075)
!4122 = !DILocation(line: 192, column: 80, scope: !4075)
!4123 = !DILocation(line: 193, column: 56, scope: !4075)
!4124 = !DILocation(line: 193, column: 5, scope: !4075)
!4125 = !DILocation(line: 193, column: 38, scope: !4075)
!4126 = !DILocation(line: 194, column: 57, scope: !4075)
!4127 = !DILocation(line: 194, column: 63, scope: !4075)
!4128 = !DILocation(line: 194, column: 5, scope: !4075)
!4129 = !DILocation(line: 194, column: 38, scope: !4075)
!4130 = !DILocation(line: 195, column: 5, scope: !4075)
!4131 = !DILocation(line: 195, column: 45, scope: !4075)
!4132 = !DILocation(line: 196, column: 5, scope: !4075)
!4133 = !DILocation(line: 196, column: 47, scope: !4075)
!4134 = !DILocation(line: 197, column: 46, scope: !4075)
!4135 = !DILocation(line: 197, column: 5, scope: !4075)
!4136 = !DILocation(line: 197, column: 44, scope: !4075)
!4137 = !DILocation(line: 198, column: 46, scope: !4075)
!4138 = !DILocation(line: 198, column: 5, scope: !4075)
!4139 = !DILocation(line: 198, column: 44, scope: !4075)
!4140 = !DILocation(line: 199, column: 38, scope: !4075)
!4141 = !DILocation(line: 200, column: 5, scope: !4075)
!4142 = !DILocation(line: 200, column: 38, scope: !4075)
!4143 = !DILocation(line: 202, column: 20, scope: !4075)
!4144 = !DILocation(line: 203, column: 18, scope: !4075)
!4145 = !DILocation(line: 205, column: 18, scope: !4075)
!4146 = !DILocation(line: 207, column: 18, scope: !4075)
!4147 = !DILocation(line: 208, column: 18, scope: !4075)
!4148 = !DILocation(line: 209, column: 5, scope: !4075)
!4149 = !DILocation(line: 213, column: 1, scope: !4075)
!4150 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !240, file: !240, line: 215, type: !4151, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !4008, !350, !515}
!4153 = !{!4154, !4155, !4156}
!4154 = !DILocalVariable(name: "u_port", arg: 1, scope: !4150, file: !240, line: 215, type: !4008)
!4155 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4150, file: !240, line: 215, type: !350)
!4156 = !DILocalVariable(name: "length", arg: 3, scope: !4150, file: !240, line: 215, type: !515)
!4157 = !DILocation(line: 0, scope: !4150)
!4158 = !DILocation(line: 217, column: 16, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4150, file: !240, line: 217, column: 9)
!4160 = !DILocation(line: 0, scope: !4159)
!4161 = !DILocation(line: 217, column: 9, scope: !4150)
!4162 = !DILocation(line: 218, column: 13, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4159, file: !240, line: 217, column: 31)
!4164 = !DILocation(line: 219, column: 23, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !240, line: 218, column: 20)
!4166 = distinct !DILexicalBlock(scope: !4163, file: !240, line: 218, column: 13)
!4167 = !DILocation(line: 220, column: 9, scope: !4165)
!4168 = !DILocation(line: 221, column: 23, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4166, file: !240, line: 220, column: 16)
!4170 = !DILocation(line: 221, column: 21, scope: !4169)
!4171 = !DILocation(line: 222, column: 24, scope: !4169)
!4172 = !DILocation(line: 222, column: 21, scope: !4169)
!4173 = !DILocation(line: 225, column: 13, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4159, file: !240, line: 224, column: 12)
!4175 = !DILocation(line: 226, column: 23, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !240, line: 225, column: 20)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !240, line: 225, column: 13)
!4178 = !DILocation(line: 227, column: 9, scope: !4176)
!4179 = !DILocation(line: 228, column: 23, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !240, line: 227, column: 16)
!4181 = !DILocation(line: 228, column: 21, scope: !4180)
!4182 = !DILocation(line: 229, column: 24, scope: !4180)
!4183 = !DILocation(line: 229, column: 21, scope: !4180)
!4184 = !DILocation(line: 233, column: 5, scope: !4150)
!4185 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !240, file: !240, line: 236, type: !4186, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !4008, !722, !136}
!4188 = !{!4189, !4190, !4191, !4192}
!4189 = !DILocalVariable(name: "u_port", arg: 1, scope: !4185, file: !240, line: 236, type: !4008)
!4190 = !DILocalVariable(name: "data", arg: 2, scope: !4185, file: !240, line: 236, type: !722)
!4191 = !DILocalVariable(name: "length", arg: 3, scope: !4185, file: !240, line: 236, type: !136)
!4192 = !DILocalVariable(name: "idx", scope: !4185, file: !240, line: 238, type: !217)
!4193 = !DILocation(line: 0, scope: !4185)
!4194 = !DILocation(line: 239, column: 23, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !240, line: 239, column: 5)
!4196 = distinct !DILexicalBlock(scope: !4185, file: !240, line: 239, column: 5)
!4197 = !DILocation(line: 239, column: 5, scope: !4196)
!4198 = !DILocation(line: 240, column: 13, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !240, line: 239, column: 40)
!4200 = !DILocation(line: 244, column: 9, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !240, line: 242, column: 42)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !240, line: 242, column: 20)
!4203 = distinct !DILexicalBlock(scope: !4199, file: !240, line: 240, column: 13)
!4204 = !DILocation(line: 0, scope: !4203)
!4205 = !DILocation(line: 239, column: 36, scope: !4195)
!4206 = distinct !{!4206, !4197, !4207}
!4207 = !DILocation(line: 246, column: 5, scope: !4196)
!4208 = !DILocation(line: 249, column: 1, scope: !4185)
!4209 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !240, file: !240, line: 251, type: !4210, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4214)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{null, !4008, !4212, !136}
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!4214 = !{!4215, !4216, !4217, !4218}
!4215 = !DILocalVariable(name: "u_port", arg: 1, scope: !4209, file: !240, line: 251, type: !4008)
!4216 = !DILocalVariable(name: "data", arg: 2, scope: !4209, file: !240, line: 251, type: !4212)
!4217 = !DILocalVariable(name: "length", arg: 3, scope: !4209, file: !240, line: 251, type: !136)
!4218 = !DILocalVariable(name: "idx", scope: !4209, file: !240, line: 253, type: !217)
!4219 = !DILocation(line: 0, scope: !4209)
!4220 = !DILocation(line: 254, column: 23, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !240, line: 254, column: 5)
!4222 = distinct !DILexicalBlock(scope: !4209, file: !240, line: 254, column: 5)
!4223 = !DILocation(line: 254, column: 5, scope: !4222)
!4224 = !DILocation(line: 255, column: 13, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4221, file: !240, line: 254, column: 40)
!4226 = !DILocation(line: 256, column: 61, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !240, line: 255, column: 35)
!4228 = distinct !DILexicalBlock(scope: !4225, file: !240, line: 255, column: 13)
!4229 = !DILocation(line: 256, column: 59, scope: !4227)
!4230 = !DILocation(line: 257, column: 9, scope: !4227)
!4231 = !DILocation(line: 258, column: 61, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !240, line: 257, column: 42)
!4233 = distinct !DILexicalBlock(scope: !4228, file: !240, line: 257, column: 20)
!4234 = !DILocation(line: 258, column: 59, scope: !4232)
!4235 = !DILocation(line: 259, column: 9, scope: !4232)
!4236 = !DILocation(line: 254, column: 36, scope: !4221)
!4237 = distinct !{!4237, !4223, !4238}
!4238 = !DILocation(line: 261, column: 5, scope: !4222)
!4239 = !DILocation(line: 264, column: 1, scope: !4209)
!4240 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !240, file: !240, line: 266, type: !4241, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4008, !722, !136, !136}
!4243 = !{!4244, !4245, !4246, !4247}
!4244 = !DILocalVariable(name: "u_port", arg: 1, scope: !4240, file: !240, line: 266, type: !4008)
!4245 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !4240, file: !240, line: 266, type: !722)
!4246 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !4240, file: !240, line: 266, type: !136)
!4247 = !DILocalVariable(name: "threshold", arg: 4, scope: !4240, file: !240, line: 266, type: !136)
!4248 = !DILocation(line: 0, scope: !4240)
!4249 = !DILocation(line: 268, column: 9, scope: !4240)
!4250 = !DILocation(line: 274, column: 5, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !240, line: 271, column: 38)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !240, line: 271, column: 16)
!4253 = distinct !DILexicalBlock(scope: !4240, file: !240, line: 268, column: 9)
!4254 = !DILocation(line: 0, scope: !4253)
!4255 = !DILocation(line: 276, column: 1, scope: !4240)
!4256 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !240, file: !240, line: 278, type: !4257, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4008, !722, !136, !136, !136, !136}
!4259 = !{!4260, !4261, !4262, !4263, !4264, !4265}
!4260 = !DILocalVariable(name: "u_port", arg: 1, scope: !4256, file: !240, line: 278, type: !4008)
!4261 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !4256, file: !240, line: 278, type: !722)
!4262 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !4256, file: !240, line: 278, type: !136)
!4263 = !DILocalVariable(name: "alert_length", arg: 4, scope: !4256, file: !240, line: 278, type: !136)
!4264 = !DILocalVariable(name: "threshold", arg: 5, scope: !4256, file: !240, line: 278, type: !136)
!4265 = !DILocalVariable(name: "timeout", arg: 6, scope: !4256, file: !240, line: 278, type: !136)
!4266 = !DILocation(line: 0, scope: !4256)
!4267 = !DILocation(line: 280, column: 9, scope: !4256)
!4268 = !DILocation(line: 286, column: 5, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !240, line: 283, column: 38)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !240, line: 283, column: 16)
!4271 = distinct !DILexicalBlock(scope: !4256, file: !240, line: 280, column: 9)
!4272 = !DILocation(line: 0, scope: !4271)
!4273 = !DILocation(line: 288, column: 1, scope: !4256)
!4274 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !240, file: !240, line: 290, type: !4275, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4277)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !4008, !179}
!4277 = !{!4278, !4279}
!4278 = !DILocalVariable(name: "u_port", arg: 1, scope: !4274, file: !240, line: 290, type: !4008)
!4279 = !DILocalVariable(name: "func", arg: 2, scope: !4274, file: !240, line: 290, type: !179)
!4280 = !DILocation(line: 0, scope: !4274)
!4281 = !DILocation(line: 292, column: 9, scope: !4274)
!4282 = !DILocation(line: 296, column: 5, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !240, line: 294, column: 38)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !240, line: 294, column: 16)
!4285 = distinct !DILexicalBlock(scope: !4274, file: !240, line: 292, column: 9)
!4286 = !DILocation(line: 0, scope: !4285)
!4287 = !DILocation(line: 298, column: 1, scope: !4274)
!4288 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !240, file: !240, line: 300, type: !4275, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4289)
!4289 = !{!4290, !4291}
!4290 = !DILocalVariable(name: "u_port", arg: 1, scope: !4288, file: !240, line: 300, type: !4008)
!4291 = !DILocalVariable(name: "func", arg: 2, scope: !4288, file: !240, line: 300, type: !179)
!4292 = !DILocation(line: 0, scope: !4288)
!4293 = !DILocation(line: 302, column: 9, scope: !4288)
!4294 = !DILocation(line: 306, column: 5, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !240, line: 304, column: 38)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !240, line: 304, column: 16)
!4297 = distinct !DILexicalBlock(scope: !4288, file: !240, line: 302, column: 9)
!4298 = !DILocation(line: 0, scope: !4297)
!4299 = !DILocation(line: 308, column: 1, scope: !4288)
!4300 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !240, file: !240, line: 310, type: !4062, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4301)
!4301 = !{!4302, !4303, !4304, !4305}
!4302 = !DILocalVariable(name: "u_port", arg: 1, scope: !4300, file: !240, line: 310, type: !4008)
!4303 = !DILocalVariable(name: "base", scope: !4300, file: !240, line: 312, type: !7)
!4304 = !DILocalVariable(name: "EFR", scope: !4300, file: !240, line: 313, type: !775)
!4305 = !DILocalVariable(name: "LCR", scope: !4300, file: !240, line: 313, type: !775)
!4306 = !DILocation(line: 0, scope: !4300)
!4307 = !DILocation(line: 312, column: 25, scope: !4300)
!4308 = !DILocation(line: 315, column: 11, scope: !4300)
!4309 = !DILocation(line: 317, column: 33, scope: !4300)
!4310 = !DILocation(line: 318, column: 11, scope: !4300)
!4311 = !DILocation(line: 320, column: 35, scope: !4300)
!4312 = !DILocation(line: 320, column: 33, scope: !4300)
!4313 = !DILocation(line: 322, column: 5, scope: !4300)
!4314 = !DILocation(line: 322, column: 39, scope: !4300)
!4315 = !DILocation(line: 324, column: 33, scope: !4300)
!4316 = !DILocation(line: 325, column: 5, scope: !4300)
!4317 = !DILocation(line: 325, column: 33, scope: !4300)
!4318 = !DILocation(line: 327, column: 35, scope: !4300)
!4319 = !DILocation(line: 327, column: 33, scope: !4300)
!4320 = !DILocation(line: 328, column: 1, scope: !4300)
!4321 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !240, file: !240, line: 330, type: !4322, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4008, !128, !128, !128}
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330, !4331}
!4325 = !DILocalVariable(name: "u_port", arg: 1, scope: !4321, file: !240, line: 330, type: !4008)
!4326 = !DILocalVariable(name: "xon", arg: 2, scope: !4321, file: !240, line: 330, type: !128)
!4327 = !DILocalVariable(name: "xoff", arg: 3, scope: !4321, file: !240, line: 330, type: !128)
!4328 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4321, file: !240, line: 330, type: !128)
!4329 = !DILocalVariable(name: "base", scope: !4321, file: !240, line: 332, type: !7)
!4330 = !DILocalVariable(name: "EFR", scope: !4321, file: !240, line: 333, type: !775)
!4331 = !DILocalVariable(name: "LCR", scope: !4321, file: !240, line: 333, type: !775)
!4332 = !DILocation(line: 0, scope: !4321)
!4333 = !DILocation(line: 332, column: 25, scope: !4321)
!4334 = !DILocation(line: 335, column: 11, scope: !4321)
!4335 = !DILocation(line: 337, column: 33, scope: !4321)
!4336 = !DILocation(line: 338, column: 36, scope: !4321)
!4337 = !DILocation(line: 338, column: 5, scope: !4321)
!4338 = !DILocation(line: 338, column: 34, scope: !4321)
!4339 = !DILocation(line: 339, column: 5, scope: !4321)
!4340 = !DILocation(line: 339, column: 34, scope: !4321)
!4341 = !DILocation(line: 340, column: 37, scope: !4321)
!4342 = !DILocation(line: 340, column: 5, scope: !4321)
!4343 = !DILocation(line: 340, column: 35, scope: !4321)
!4344 = !DILocation(line: 341, column: 5, scope: !4321)
!4345 = !DILocation(line: 341, column: 35, scope: !4321)
!4346 = !DILocation(line: 343, column: 11, scope: !4321)
!4347 = !DILocation(line: 345, column: 35, scope: !4321)
!4348 = !DILocation(line: 345, column: 33, scope: !4321)
!4349 = !DILocation(line: 347, column: 35, scope: !4321)
!4350 = !DILocation(line: 347, column: 33, scope: !4321)
!4351 = !DILocation(line: 349, column: 43, scope: !4321)
!4352 = !DILocation(line: 349, column: 5, scope: !4321)
!4353 = !DILocation(line: 349, column: 41, scope: !4321)
!4354 = !DILocation(line: 350, column: 5, scope: !4321)
!4355 = !DILocation(line: 350, column: 39, scope: !4321)
!4356 = !DILocation(line: 351, column: 1, scope: !4321)
!4357 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !240, file: !240, line: 353, type: !4062, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4358)
!4358 = !{!4359, !4360, !4361}
!4359 = !DILocalVariable(name: "u_port", arg: 1, scope: !4357, file: !240, line: 353, type: !4008)
!4360 = !DILocalVariable(name: "base", scope: !4357, file: !240, line: 355, type: !7)
!4361 = !DILocalVariable(name: "LCR", scope: !4357, file: !240, line: 356, type: !775)
!4362 = !DILocation(line: 0, scope: !4357)
!4363 = !DILocation(line: 355, column: 25, scope: !4357)
!4364 = !DILocation(line: 358, column: 11, scope: !4357)
!4365 = !DILocation(line: 360, column: 33, scope: !4357)
!4366 = !DILocation(line: 362, column: 5, scope: !4357)
!4367 = !DILocation(line: 362, column: 33, scope: !4357)
!4368 = !DILocation(line: 364, column: 33, scope: !4357)
!4369 = !DILocation(line: 366, column: 35, scope: !4357)
!4370 = !DILocation(line: 366, column: 33, scope: !4357)
!4371 = !DILocation(line: 367, column: 1, scope: !4357)
!4372 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !240, file: !240, line: 436, type: !4062, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4373)
!4373 = !{!4374, !4375}
!4374 = !DILocalVariable(name: "u_port", arg: 1, scope: !4372, file: !240, line: 436, type: !4008)
!4375 = !DILocalVariable(name: "base", scope: !4372, file: !240, line: 438, type: !7)
!4376 = !DILocation(line: 0, scope: !4372)
!4377 = !DILocation(line: 438, column: 25, scope: !4372)
!4378 = !DILocation(line: 440, column: 5, scope: !4372)
!4379 = !DILocation(line: 440, column: 33, scope: !4372)
!4380 = !DILocation(line: 441, column: 5, scope: !4372)
!4381 = !DILocation(line: 441, column: 33, scope: !4372)
!4382 = !DILocation(line: 442, column: 5, scope: !4372)
!4383 = !DILocation(line: 442, column: 34, scope: !4372)
!4384 = !DILocation(line: 443, column: 5, scope: !4372)
!4385 = !DILocation(line: 443, column: 35, scope: !4372)
!4386 = !DILocation(line: 445, column: 33, scope: !4372)
!4387 = !DILocation(line: 446, column: 5, scope: !4372)
!4388 = !DILocation(line: 446, column: 33, scope: !4372)
!4389 = !DILocation(line: 447, column: 5, scope: !4372)
!4390 = !DILocation(line: 447, column: 33, scope: !4372)
!4391 = !DILocation(line: 449, column: 33, scope: !4372)
!4392 = !DILocation(line: 450, column: 33, scope: !4372)
!4393 = !DILocation(line: 451, column: 33, scope: !4372)
!4394 = !DILocation(line: 453, column: 33, scope: !4372)
!4395 = !DILocation(line: 454, column: 33, scope: !4372)
!4396 = !DILocation(line: 455, column: 33, scope: !4372)
!4397 = !DILocation(line: 457, column: 33, scope: !4372)
!4398 = !DILocation(line: 458, column: 5, scope: !4372)
!4399 = !DILocation(line: 458, column: 33, scope: !4372)
!4400 = !DILocation(line: 459, column: 5, scope: !4372)
!4401 = !DILocation(line: 459, column: 39, scope: !4372)
!4402 = !DILocation(line: 460, column: 5, scope: !4372)
!4403 = !DILocation(line: 460, column: 40, scope: !4372)
!4404 = !DILocation(line: 461, column: 5, scope: !4372)
!4405 = !DILocation(line: 461, column: 42, scope: !4372)
!4406 = !DILocation(line: 462, column: 5, scope: !4372)
!4407 = !DILocation(line: 462, column: 42, scope: !4372)
!4408 = !DILocation(line: 463, column: 5, scope: !4372)
!4409 = !DILocation(line: 463, column: 35, scope: !4372)
!4410 = !DILocation(line: 464, column: 5, scope: !4372)
!4411 = !DILocation(line: 464, column: 41, scope: !4372)
!4412 = !DILocation(line: 465, column: 5, scope: !4372)
!4413 = !DILocation(line: 465, column: 39, scope: !4372)
!4414 = !DILocation(line: 466, column: 5, scope: !4372)
!4415 = !DILocation(line: 466, column: 38, scope: !4372)
!4416 = !DILocation(line: 467, column: 5, scope: !4372)
!4417 = !DILocation(line: 467, column: 42, scope: !4372)
!4418 = !DILocation(line: 468, column: 5, scope: !4372)
!4419 = !DILocation(line: 468, column: 45, scope: !4372)
!4420 = !DILocation(line: 469, column: 5, scope: !4372)
!4421 = !DILocation(line: 469, column: 39, scope: !4372)
!4422 = !DILocation(line: 470, column: 5, scope: !4372)
!4423 = !DILocation(line: 470, column: 39, scope: !4372)
!4424 = !DILocation(line: 471, column: 5, scope: !4372)
!4425 = !DILocation(line: 471, column: 42, scope: !4372)
!4426 = !DILocation(line: 472, column: 1, scope: !4372)
!4427 = distinct !DISubprogram(name: "uart_query_empty", scope: !240, file: !240, line: 474, type: !4062, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !239, retainedNodes: !4428)
!4428 = !{!4429, !4430}
!4429 = !DILocalVariable(name: "u_port", arg: 1, scope: !4427, file: !240, line: 474, type: !4008)
!4430 = !DILocalVariable(name: "base", scope: !4427, file: !240, line: 476, type: !7)
!4431 = !DILocation(line: 0, scope: !4427)
!4432 = !DILocation(line: 476, column: 25, scope: !4427)
!4433 = !DILocation(line: 478, column: 5, scope: !4427)
!4434 = !DILocation(line: 478, column: 14, scope: !4427)
!4435 = !DILocation(line: 478, column: 42, scope: !4427)
!4436 = !DILocation(line: 478, column: 12, scope: !4427)
!4437 = distinct !{!4437, !4433, !4438}
!4438 = !DILocation(line: 478, column: 50, scope: !4427)
!4439 = !DILocation(line: 479, column: 1, scope: !4427)
!4440 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1233, file: !1233, line: 64, type: !4441, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1232, retainedNodes: !4443)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !884, !53, !884, null}
!4443 = !{!4444, !4445, !4446, !4447, !4456}
!4444 = !DILocalVariable(name: "func", arg: 1, scope: !4440, file: !1233, line: 64, type: !884)
!4445 = !DILocalVariable(name: "line", arg: 2, scope: !4440, file: !1233, line: 64, type: !53)
!4446 = !DILocalVariable(name: "message", arg: 3, scope: !4440, file: !1233, line: 64, type: !884)
!4447 = !DILocalVariable(name: "ap", scope: !4440, file: !1233, line: 66, type: !4448)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4449, line: 46, baseType: !4450)
!4449 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4451, line: 32, baseType: !4452)
!4451 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1233, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !4454)
!4454 = !{!4455}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !4453, file: !1233, line: 66, baseType: !161, size: 32)
!4456 = !DILocalVariable(name: "mask", scope: !4440, file: !1233, line: 68, type: !136)
!4457 = !DILocation(line: 0, scope: !4440)
!4458 = !DILocation(line: 66, column: 5, scope: !4440)
!4459 = !DILocation(line: 66, column: 13, scope: !4440)
!4460 = !DILocation(line: 68, column: 5, scope: !4440)
!4461 = !DILocation(line: 69, column: 5, scope: !4440)
!4462 = !DILocation(line: 71, column: 5, scope: !4440)
!4463 = !DILocation(line: 72, column: 5, scope: !4440)
!4464 = !DILocation(line: 73, column: 5, scope: !4440)
!4465 = !DILocation(line: 75, column: 37, scope: !4440)
!4466 = !DILocation(line: 75, column: 5, scope: !4440)
!4467 = !DILocation(line: 77, column: 1, scope: !4440)
!4468 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1233, file: !1233, line: 78, type: !4441, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1232, retainedNodes: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474}
!4470 = !DILocalVariable(name: "func", arg: 1, scope: !4468, file: !1233, line: 78, type: !884)
!4471 = !DILocalVariable(name: "line", arg: 2, scope: !4468, file: !1233, line: 78, type: !53)
!4472 = !DILocalVariable(name: "message", arg: 3, scope: !4468, file: !1233, line: 78, type: !884)
!4473 = !DILocalVariable(name: "ap", scope: !4468, file: !1233, line: 80, type: !4448)
!4474 = !DILocalVariable(name: "mask", scope: !4468, file: !1233, line: 82, type: !136)
!4475 = !DILocation(line: 0, scope: !4468)
!4476 = !DILocation(line: 80, column: 5, scope: !4468)
!4477 = !DILocation(line: 80, column: 13, scope: !4468)
!4478 = !DILocation(line: 82, column: 5, scope: !4468)
!4479 = !DILocation(line: 83, column: 5, scope: !4468)
!4480 = !DILocation(line: 85, column: 5, scope: !4468)
!4481 = !DILocation(line: 86, column: 5, scope: !4468)
!4482 = !DILocation(line: 87, column: 5, scope: !4468)
!4483 = !DILocation(line: 89, column: 37, scope: !4468)
!4484 = !DILocation(line: 89, column: 5, scope: !4468)
!4485 = !DILocation(line: 91, column: 1, scope: !4468)
!4486 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1233, file: !1233, line: 92, type: !4441, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1232, retainedNodes: !4487)
!4487 = !{!4488, !4489, !4490, !4491, !4492}
!4488 = !DILocalVariable(name: "func", arg: 1, scope: !4486, file: !1233, line: 92, type: !884)
!4489 = !DILocalVariable(name: "line", arg: 2, scope: !4486, file: !1233, line: 92, type: !53)
!4490 = !DILocalVariable(name: "message", arg: 3, scope: !4486, file: !1233, line: 92, type: !884)
!4491 = !DILocalVariable(name: "ap", scope: !4486, file: !1233, line: 94, type: !4448)
!4492 = !DILocalVariable(name: "mask", scope: !4486, file: !1233, line: 96, type: !136)
!4493 = !DILocation(line: 0, scope: !4486)
!4494 = !DILocation(line: 94, column: 5, scope: !4486)
!4495 = !DILocation(line: 94, column: 13, scope: !4486)
!4496 = !DILocation(line: 96, column: 5, scope: !4486)
!4497 = !DILocation(line: 97, column: 5, scope: !4486)
!4498 = !DILocation(line: 99, column: 5, scope: !4486)
!4499 = !DILocation(line: 100, column: 5, scope: !4486)
!4500 = !DILocation(line: 101, column: 5, scope: !4486)
!4501 = !DILocation(line: 103, column: 37, scope: !4486)
!4502 = !DILocation(line: 103, column: 5, scope: !4486)
!4503 = !DILocation(line: 105, column: 1, scope: !4486)
!4504 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1233, file: !1233, line: 106, type: !4441, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1232, retainedNodes: !4505)
!4505 = !{!4506, !4507, !4508, !4509, !4510}
!4506 = !DILocalVariable(name: "func", arg: 1, scope: !4504, file: !1233, line: 106, type: !884)
!4507 = !DILocalVariable(name: "line", arg: 2, scope: !4504, file: !1233, line: 106, type: !53)
!4508 = !DILocalVariable(name: "message", arg: 3, scope: !4504, file: !1233, line: 106, type: !884)
!4509 = !DILocalVariable(name: "ap", scope: !4504, file: !1233, line: 108, type: !4448)
!4510 = !DILocalVariable(name: "mask", scope: !4504, file: !1233, line: 110, type: !136)
!4511 = !DILocation(line: 0, scope: !4504)
!4512 = !DILocation(line: 108, column: 5, scope: !4504)
!4513 = !DILocation(line: 108, column: 13, scope: !4504)
!4514 = !DILocation(line: 110, column: 5, scope: !4504)
!4515 = !DILocation(line: 111, column: 5, scope: !4504)
!4516 = !DILocation(line: 113, column: 5, scope: !4504)
!4517 = !DILocation(line: 114, column: 5, scope: !4504)
!4518 = !DILocation(line: 115, column: 5, scope: !4504)
!4519 = !DILocation(line: 117, column: 37, scope: !4504)
!4520 = !DILocation(line: 117, column: 5, scope: !4504)
!4521 = !DILocation(line: 119, column: 1, scope: !4504)
!4522 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1233, file: !1233, line: 121, type: !4523, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1232, retainedNodes: !4527)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !884, !53, !884, !4525, !53, null}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 32)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4527 = !{!4528, !4529, !4530, !4531, !4532}
!4528 = !DILocalVariable(name: "func", arg: 1, scope: !4522, file: !1233, line: 121, type: !884)
!4529 = !DILocalVariable(name: "line", arg: 2, scope: !4522, file: !1233, line: 121, type: !53)
!4530 = !DILocalVariable(name: "message", arg: 3, scope: !4522, file: !1233, line: 121, type: !884)
!4531 = !DILocalVariable(name: "data", arg: 4, scope: !4522, file: !1233, line: 121, type: !4525)
!4532 = !DILocalVariable(name: "length", arg: 5, scope: !4522, file: !1233, line: 121, type: !53)
!4533 = !DILocation(line: 0, scope: !4522)
!4534 = !DILocation(line: 123, column: 1, scope: !4522)
!4535 = distinct !DISubprogram(name: "hal_cache_init", scope: !255, file: !255, line: 53, type: !4536, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4539)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!4538}
!4538 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !258, line: 172, baseType: !257)
!4539 = !{!4540, !4542}
!4540 = !DILocalVariable(name: "region", scope: !4535, file: !255, line: 55, type: !4541)
!4541 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !258, line: 204, baseType: !268)
!4542 = !DILocalVariable(name: "irq_flag", scope: !4535, file: !255, line: 56, type: !136)
!4543 = !DILocation(line: 59, column: 16, scope: !4535)
!4544 = !DILocation(line: 0, scope: !4535)
!4545 = !DILocation(line: 62, column: 9, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4535, file: !255, line: 62, column: 9)
!4547 = !DILocation(line: 62, column: 9, scope: !4535)
!4548 = !DILocation(line: 64, column: 9, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4546, file: !255, line: 62, column: 39)
!4550 = !DILocation(line: 66, column: 9, scope: !4549)
!4551 = !DILocation(line: 69, column: 24, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4546, file: !255, line: 67, column: 12)
!4553 = !DILocation(line: 72, column: 9, scope: !4552)
!4554 = !DILocation(line: 77, column: 5, scope: !4535)
!4555 = !DILocation(line: 80, column: 22, scope: !4535)
!4556 = !DILocation(line: 81, column: 28, scope: !4535)
!4557 = !DILocation(line: 84, column: 19, scope: !4535)
!4558 = !DILocation(line: 85, column: 23, scope: !4535)
!4559 = !DILocation(line: 88, column: 5, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4535, file: !255, line: 88, column: 5)
!4561 = !DILocation(line: 90, column: 9, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !255, line: 88, column: 81)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !255, line: 88, column: 5)
!4564 = !DILocation(line: 90, column: 38, scope: !4562)
!4565 = !DILocation(line: 91, column: 9, scope: !4562)
!4566 = !DILocation(line: 91, column: 42, scope: !4562)
!4567 = !DILocation(line: 94, column: 45, scope: !4562)
!4568 = !DILocation(line: 94, column: 47, scope: !4562)
!4569 = !DILocation(line: 95, column: 49, scope: !4562)
!4570 = !DILocation(line: 95, column: 51, scope: !4562)
!4571 = !DILocation(line: 88, column: 77, scope: !4563)
!4572 = !DILocation(line: 88, column: 46, scope: !4563)
!4573 = distinct !{!4573, !4559, !4574}
!4574 = !DILocation(line: 96, column: 5, scope: !4560)
!4575 = !DILocation(line: 99, column: 1, scope: !4535)
!4576 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !255, file: !255, line: 327, type: !4536, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4577)
!4577 = !{!4578}
!4578 = !DILocalVariable(name: "irq_flag", scope: !4576, file: !255, line: 329, type: !136)
!4579 = !DILocation(line: 332, column: 16, scope: !4576)
!4580 = !DILocation(line: 0, scope: !4576)
!4581 = !DILocation(line: 335, column: 21, scope: !4576)
!4582 = !DILocation(line: 336, column: 21, scope: !4576)
!4583 = !DILocation(line: 339, column: 21, scope: !4576)
!4584 = !DILocation(line: 340, column: 21, scope: !4576)
!4585 = !DILocation(line: 434, column: 3, scope: !4586, inlinedAt: !4588)
!4586 = distinct !DISubprogram(name: "__ISB", scope: !4587, file: !4587, line: 432, type: !181, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1285)
!4587 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/i2s_internal_loopback/GCC")
!4588 = distinct !DILocation(line: 343, column: 5, scope: !4576)
!4589 = !{i64 296587}
!4590 = !DILocation(line: 346, column: 5, scope: !4576)
!4591 = !DILocation(line: 348, column: 5, scope: !4576)
!4592 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !255, file: !255, line: 101, type: !4536, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4593)
!4593 = !{!4594}
!4594 = !DILocalVariable(name: "region", scope: !4592, file: !255, line: 103, type: !4541)
!4595 = !DILocation(line: 107, column: 5, scope: !4592)
!4596 = !DILocation(line: 110, column: 22, scope: !4592)
!4597 = !DILocation(line: 111, column: 28, scope: !4592)
!4598 = !DILocation(line: 114, column: 19, scope: !4592)
!4599 = !DILocation(line: 115, column: 23, scope: !4592)
!4600 = !DILocation(line: 0, scope: !4592)
!4601 = !DILocation(line: 118, column: 5, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4592, file: !255, line: 118, column: 5)
!4603 = !DILocation(line: 120, column: 9, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !255, line: 118, column: 81)
!4605 = distinct !DILexicalBlock(scope: !4602, file: !255, line: 118, column: 5)
!4606 = !DILocation(line: 120, column: 38, scope: !4604)
!4607 = !DILocation(line: 121, column: 9, scope: !4604)
!4608 = !DILocation(line: 121, column: 42, scope: !4604)
!4609 = !DILocation(line: 124, column: 45, scope: !4604)
!4610 = !DILocation(line: 124, column: 47, scope: !4604)
!4611 = !DILocation(line: 125, column: 49, scope: !4604)
!4612 = !DILocation(line: 125, column: 51, scope: !4604)
!4613 = !DILocation(line: 118, column: 77, scope: !4605)
!4614 = !DILocation(line: 118, column: 46, scope: !4605)
!4615 = distinct !{!4615, !4601, !4616}
!4616 = !DILocation(line: 126, column: 5, scope: !4602)
!4617 = !DILocation(line: 129, column: 20, scope: !4592)
!4618 = !DILocation(line: 131, column: 5, scope: !4592)
!4619 = distinct !DISubprogram(name: "hal_cache_enable", scope: !255, file: !255, line: 134, type: !4536, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1285)
!4620 = !DILocation(line: 137, column: 45, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4619, file: !255, line: 137, column: 9)
!4622 = !DILocation(line: 137, column: 28, scope: !4621)
!4623 = !DILocation(line: 137, column: 9, scope: !4619)
!4624 = !DILocation(line: 142, column: 22, scope: !4619)
!4625 = !DILocation(line: 145, column: 28, scope: !4619)
!4626 = !DILocation(line: 145, column: 19, scope: !4619)
!4627 = !DILocation(line: 147, column: 5, scope: !4619)
!4628 = !DILocation(line: 0, scope: !4619)
!4629 = !DILocation(line: 148, column: 1, scope: !4619)
!4630 = distinct !DISubprogram(name: "hal_cache_disable", scope: !255, file: !255, line: 150, type: !4536, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4631)
!4631 = !{!4632}
!4632 = !DILocalVariable(name: "irq_flag", scope: !4630, file: !255, line: 152, type: !136)
!4633 = !DILocation(line: 155, column: 16, scope: !4630)
!4634 = !DILocation(line: 0, scope: !4630)
!4635 = !DILocation(line: 158, column: 16, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4630, file: !255, line: 158, column: 9)
!4637 = !DILocation(line: 158, column: 26, scope: !4636)
!4638 = !DILocation(line: 158, column: 9, scope: !4630)
!4639 = !DILocation(line: 160, column: 9, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4636, file: !255, line: 158, column: 49)
!4641 = !DILocation(line: 161, column: 5, scope: !4640)
!4642 = !DILocation(line: 164, column: 22, scope: !4630)
!4643 = !DILocation(line: 167, column: 28, scope: !4630)
!4644 = !DILocation(line: 167, column: 19, scope: !4630)
!4645 = !DILocation(line: 170, column: 5, scope: !4630)
!4646 = !DILocation(line: 172, column: 5, scope: !4630)
!4647 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !255, file: !255, line: 175, type: !4648, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!4538, !4541}
!4650 = !{!4651}
!4651 = !DILocalVariable(name: "region", arg: 1, scope: !4647, file: !255, line: 175, type: !4541)
!4652 = !DILocation(line: 0, scope: !4647)
!4653 = !DILocation(line: 178, column: 16, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4647, file: !255, line: 178, column: 9)
!4655 = !DILocation(line: 178, column: 9, scope: !4647)
!4656 = !DILocation(line: 183, column: 9, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4647, file: !255, line: 183, column: 9)
!4658 = !DILocation(line: 183, column: 38, scope: !4657)
!4659 = !DILocation(line: 183, column: 9, scope: !4647)
!4660 = !DILocation(line: 184, column: 38, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4657, file: !255, line: 183, column: 62)
!4662 = !DILocation(line: 184, column: 32, scope: !4661)
!4663 = !DILocation(line: 190, column: 32, scope: !4647)
!4664 = !DILocation(line: 190, column: 23, scope: !4647)
!4665 = !DILocation(line: 192, column: 5, scope: !4647)
!4666 = !DILocation(line: 193, column: 1, scope: !4647)
!4667 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !255, file: !255, line: 195, type: !4648, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4668)
!4668 = !{!4669}
!4669 = !DILocalVariable(name: "region", arg: 1, scope: !4667, file: !255, line: 195, type: !4541)
!4670 = !DILocation(line: 0, scope: !4667)
!4671 = !DILocation(line: 198, column: 16, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4667, file: !255, line: 198, column: 9)
!4673 = !DILocation(line: 198, column: 9, scope: !4667)
!4674 = !DILocation(line: 203, column: 35, scope: !4667)
!4675 = !DILocation(line: 203, column: 31, scope: !4667)
!4676 = !DILocation(line: 203, column: 28, scope: !4667)
!4677 = !DILocation(line: 206, column: 32, scope: !4667)
!4678 = !DILocation(line: 206, column: 23, scope: !4667)
!4679 = !DILocation(line: 209, column: 41, scope: !4667)
!4680 = !DILocation(line: 209, column: 43, scope: !4667)
!4681 = !DILocation(line: 210, column: 45, scope: !4667)
!4682 = !DILocation(line: 210, column: 47, scope: !4667)
!4683 = !DILocation(line: 212, column: 5, scope: !4667)
!4684 = !DILocation(line: 213, column: 1, scope: !4667)
!4685 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !255, file: !255, line: 215, type: !4686, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4689)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!4538, !4688}
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !258, line: 182, baseType: !287)
!4689 = !{!4690}
!4690 = !DILocalVariable(name: "cache_size", arg: 1, scope: !4685, file: !255, line: 215, type: !4688)
!4691 = !DILocation(line: 0, scope: !4685)
!4692 = !DILocation(line: 218, column: 20, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4685, file: !255, line: 218, column: 9)
!4694 = !DILocation(line: 218, column: 9, scope: !4685)
!4695 = !DILocation(line: 223, column: 22, scope: !4685)
!4696 = !DILocation(line: 224, column: 37, scope: !4685)
!4697 = !DILocation(line: 224, column: 22, scope: !4685)
!4698 = !DILocation(line: 227, column: 20, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4685, file: !255, line: 227, column: 9)
!4700 = !DILocation(line: 227, column: 9, scope: !4685)
!4701 = !DILocation(line: 228, column: 26, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4699, file: !255, line: 227, column: 43)
!4703 = !DILocation(line: 229, column: 5, scope: !4702)
!4704 = !DILocation(line: 232, column: 28, scope: !4685)
!4705 = !DILocation(line: 232, column: 19, scope: !4685)
!4706 = !DILocation(line: 234, column: 5, scope: !4685)
!4707 = !DILocation(line: 235, column: 1, scope: !4685)
!4708 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !255, file: !255, line: 237, type: !4709, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4718)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!4538, !4541, !4711}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4713)
!4713 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !258, line: 222, baseType: !4714)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 219, size: 64, elements: !4715)
!4715 = !{!4716, !4717}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !4714, file: !258, line: 220, baseType: !136, size: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !4714, file: !258, line: 221, baseType: !136, size: 32, offset: 32)
!4718 = !{!4719, !4720}
!4719 = !DILocalVariable(name: "region", arg: 1, scope: !4708, file: !255, line: 237, type: !4541)
!4720 = !DILocalVariable(name: "region_config", arg: 2, scope: !4708, file: !255, line: 237, type: !4711)
!4721 = !DILocation(line: 0, scope: !4708)
!4722 = !DILocation(line: 240, column: 16, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4708, file: !255, line: 240, column: 9)
!4724 = !DILocation(line: 240, column: 9, scope: !4708)
!4725 = !DILocation(line: 245, column: 23, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4708, file: !255, line: 245, column: 9)
!4727 = !DILocation(line: 245, column: 9, scope: !4708)
!4728 = !DILocation(line: 250, column: 24, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4708, file: !255, line: 250, column: 9)
!4730 = !DILocation(line: 250, column: 45, scope: !4729)
!4731 = !DILocation(line: 250, column: 9, scope: !4708)
!4732 = !DILocation(line: 251, column: 9, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4729, file: !255, line: 250, column: 81)
!4734 = !DILocation(line: 256, column: 24, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4708, file: !255, line: 256, column: 9)
!4736 = !DILocation(line: 256, column: 42, scope: !4735)
!4737 = !DILocation(line: 256, column: 9, scope: !4708)
!4738 = !DILocation(line: 257, column: 9, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4735, file: !255, line: 256, column: 78)
!4740 = !DILocation(line: 262, column: 5, scope: !4708)
!4741 = !DILocation(line: 262, column: 34, scope: !4708)
!4742 = !DILocation(line: 263, column: 55, scope: !4708)
!4743 = !DILocation(line: 263, column: 93, scope: !4708)
!4744 = !DILocation(line: 263, column: 76, scope: !4708)
!4745 = !DILocation(line: 263, column: 5, scope: !4708)
!4746 = !DILocation(line: 263, column: 38, scope: !4708)
!4747 = !DILocation(line: 266, column: 34, scope: !4708)
!4748 = !DILocation(line: 269, column: 45, scope: !4708)
!4749 = !DILocation(line: 269, column: 41, scope: !4708)
!4750 = !DILocation(line: 269, column: 43, scope: !4708)
!4751 = !DILocation(line: 270, column: 49, scope: !4708)
!4752 = !DILocation(line: 270, column: 45, scope: !4708)
!4753 = !DILocation(line: 270, column: 47, scope: !4708)
!4754 = !DILocation(line: 272, column: 5, scope: !4708)
!4755 = !DILocation(line: 273, column: 1, scope: !4708)
!4756 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !255, file: !255, line: 275, type: !4757, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4759)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{!4538, !136}
!4759 = !{!4760, !4761}
!4760 = !DILocalVariable(name: "address", arg: 1, scope: !4756, file: !255, line: 275, type: !136)
!4761 = !DILocalVariable(name: "irq_flag", scope: !4756, file: !255, line: 277, type: !136)
!4762 = !DILocation(line: 0, scope: !4756)
!4763 = !DILocation(line: 280, column: 17, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4756, file: !255, line: 280, column: 9)
!4765 = !DILocation(line: 280, column: 9, scope: !4756)
!4766 = !DILocation(line: 284, column: 16, scope: !4756)
!4767 = !DILocation(line: 287, column: 32, scope: !4756)
!4768 = !DILocation(line: 287, column: 21, scope: !4756)
!4769 = !DILocation(line: 288, column: 21, scope: !4756)
!4770 = !DILocation(line: 434, column: 3, scope: !4586, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 291, column: 5, scope: !4756)
!4772 = !DILocation(line: 294, column: 5, scope: !4756)
!4773 = !DILocation(line: 296, column: 5, scope: !4756)
!4774 = !DILocation(line: 297, column: 1, scope: !4756)
!4775 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !255, file: !255, line: 299, type: !4776, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4778)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!4538, !136, !136}
!4778 = !{!4779, !4780, !4781, !4782}
!4779 = !DILocalVariable(name: "address", arg: 1, scope: !4775, file: !255, line: 299, type: !136)
!4780 = !DILocalVariable(name: "length", arg: 2, scope: !4775, file: !255, line: 299, type: !136)
!4781 = !DILocalVariable(name: "irq_flag", scope: !4775, file: !255, line: 301, type: !136)
!4782 = !DILocalVariable(name: "end_address", scope: !4775, file: !255, line: 302, type: !136)
!4783 = !DILocation(line: 0, scope: !4775)
!4784 = !DILocation(line: 302, column: 36, scope: !4775)
!4785 = !DILocation(line: 305, column: 47, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4775, file: !255, line: 305, column: 9)
!4787 = !DILocation(line: 310, column: 16, scope: !4775)
!4788 = !DILocation(line: 313, column: 20, scope: !4775)
!4789 = !DILocation(line: 313, column: 5, scope: !4775)
!4790 = !DILocation(line: 314, column: 9, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4775, file: !255, line: 313, column: 35)
!4792 = !DILocation(line: 315, column: 17, scope: !4791)
!4793 = distinct !{!4793, !4789, !4794}
!4794 = !DILocation(line: 316, column: 5, scope: !4775)
!4795 = !DILocation(line: 434, column: 3, scope: !4586, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 319, column: 5, scope: !4775)
!4797 = !DILocation(line: 322, column: 5, scope: !4775)
!4798 = !DILocation(line: 324, column: 5, scope: !4775)
!4799 = !DILocation(line: 325, column: 1, scope: !4775)
!4800 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !255, file: !255, line: 351, type: !4757, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4801)
!4801 = !{!4802, !4803}
!4802 = !DILocalVariable(name: "address", arg: 1, scope: !4800, file: !255, line: 351, type: !136)
!4803 = !DILocalVariable(name: "irq_flag", scope: !4800, file: !255, line: 353, type: !136)
!4804 = !DILocation(line: 0, scope: !4800)
!4805 = !DILocation(line: 356, column: 17, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4800, file: !255, line: 356, column: 9)
!4807 = !DILocation(line: 356, column: 9, scope: !4800)
!4808 = !DILocation(line: 361, column: 16, scope: !4800)
!4809 = !DILocation(line: 364, column: 32, scope: !4800)
!4810 = !DILocation(line: 364, column: 21, scope: !4800)
!4811 = !DILocation(line: 365, column: 21, scope: !4800)
!4812 = !DILocation(line: 434, column: 3, scope: !4586, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 368, column: 5, scope: !4800)
!4814 = !DILocation(line: 371, column: 5, scope: !4800)
!4815 = !DILocation(line: 373, column: 5, scope: !4800)
!4816 = !DILocation(line: 374, column: 1, scope: !4800)
!4817 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !255, file: !255, line: 376, type: !4776, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4818)
!4818 = !{!4819, !4820, !4821, !4822}
!4819 = !DILocalVariable(name: "address", arg: 1, scope: !4817, file: !255, line: 376, type: !136)
!4820 = !DILocalVariable(name: "length", arg: 2, scope: !4817, file: !255, line: 376, type: !136)
!4821 = !DILocalVariable(name: "irq_flag", scope: !4817, file: !255, line: 378, type: !136)
!4822 = !DILocalVariable(name: "end_address", scope: !4817, file: !255, line: 379, type: !136)
!4823 = !DILocation(line: 0, scope: !4817)
!4824 = !DILocation(line: 379, column: 36, scope: !4817)
!4825 = !DILocation(line: 382, column: 47, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4817, file: !255, line: 382, column: 9)
!4827 = !DILocation(line: 387, column: 16, scope: !4817)
!4828 = !DILocation(line: 390, column: 20, scope: !4817)
!4829 = !DILocation(line: 390, column: 5, scope: !4817)
!4830 = !DILocation(line: 391, column: 9, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4817, file: !255, line: 390, column: 35)
!4832 = !DILocation(line: 392, column: 17, scope: !4831)
!4833 = distinct !{!4833, !4829, !4834}
!4834 = !DILocation(line: 393, column: 5, scope: !4817)
!4835 = !DILocation(line: 434, column: 3, scope: !4586, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 396, column: 5, scope: !4817)
!4837 = !DILocation(line: 399, column: 5, scope: !4817)
!4838 = !DILocation(line: 401, column: 5, scope: !4817)
!4839 = !DILocation(line: 402, column: 1, scope: !4817)
!4840 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !255, file: !255, line: 404, type: !4536, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4841)
!4841 = !{!4842}
!4842 = !DILocalVariable(name: "irq_flag", scope: !4840, file: !255, line: 406, type: !136)
!4843 = !DILocation(line: 409, column: 16, scope: !4840)
!4844 = !DILocation(line: 0, scope: !4840)
!4845 = !DILocation(line: 412, column: 21, scope: !4840)
!4846 = !DILocation(line: 413, column: 21, scope: !4840)
!4847 = !DILocation(line: 434, column: 3, scope: !4586, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 416, column: 5, scope: !4840)
!4849 = !DILocation(line: 419, column: 5, scope: !4840)
!4850 = !DILocation(line: 421, column: 5, scope: !4840)
!4851 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !255, file: !255, line: 424, type: !4852, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!126, !136}
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "address", arg: 1, scope: !4851, file: !255, line: 424, type: !136)
!4856 = !DILocalVariable(name: "region", scope: !4851, file: !255, line: 426, type: !4541)
!4857 = !DILocation(line: 0, scope: !4851)
!4858 = !DILocation(line: 429, column: 18, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4851, file: !255, line: 429, column: 9)
!4860 = !DILocation(line: 429, column: 28, scope: !4859)
!4861 = !DILocation(line: 429, column: 9, scope: !4851)
!4862 = !DILocation(line: 435, column: 20, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !255, line: 435, column: 13)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !255, line: 433, column: 81)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !255, line: 433, column: 5)
!4866 = distinct !DILexicalBlock(scope: !4851, file: !255, line: 433, column: 5)
!4867 = !DILocation(line: 435, column: 41, scope: !4863)
!4868 = !DILocation(line: 435, column: 36, scope: !4863)
!4869 = !DILocation(line: 435, column: 13, scope: !4864)
!4870 = !DILocation(line: 436, column: 30, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !255, line: 436, column: 17)
!4872 = distinct !DILexicalBlock(scope: !4863, file: !255, line: 435, column: 53)
!4873 = !DILocation(line: 436, column: 59, scope: !4871)
!4874 = !DILocation(line: 436, column: 26, scope: !4871)
!4875 = !DILocation(line: 436, column: 85, scope: !4871)
!4876 = !DILocation(line: 436, column: 99, scope: !4871)
!4877 = !DILocation(line: 436, column: 97, scope: !4871)
!4878 = !DILocation(line: 436, column: 17, scope: !4872)
!4879 = !DILocation(line: 433, column: 77, scope: !4865)
!4880 = !DILocation(line: 433, column: 46, scope: !4865)
!4881 = !DILocation(line: 433, column: 5, scope: !4866)
!4882 = distinct !{!4882, !4881, !4883}
!4883 = !DILocation(line: 440, column: 5, scope: !4866)
!4884 = !DILocation(line: 442, column: 1, scope: !4851)
!4885 = distinct !DISubprogram(name: "hal_nvic_init", scope: !338, file: !338, line: 60, type: !4886, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !1285)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!4888}
!4888 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !341, line: 158, baseType: !340)
!4889 = !DILocation(line: 62, column: 5, scope: !4885)
!4890 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !338, file: !338, line: 65, type: !4891, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4893)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!4888, !349}
!4893 = !{!4894, !4895}
!4894 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4890, file: !338, line: 65, type: !349)
!4895 = !DILocalVariable(name: "status", scope: !4890, file: !338, line: 67, type: !4888)
!4896 = !DILocation(line: 0, scope: !4890)
!4897 = !DILocation(line: 69, column: 40, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4890, file: !338, line: 69, column: 9)
!4899 = !DILocation(line: 73, column: 9, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4898, file: !338, line: 72, column: 12)
!4901 = !DILocation(line: 77, column: 5, scope: !4890)
!4902 = !DILocation(line: 78, column: 1, scope: !4890)
!4903 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !354, file: !354, line: 1494, type: !4904, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{null, !173}
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4903, file: !354, line: 1494, type: !173)
!4908 = !DILocation(line: 0, scope: !4903)
!4909 = !DILocation(line: 1497, column: 91, scope: !4903)
!4910 = !DILocation(line: 1497, column: 61, scope: !4903)
!4911 = !DILocation(line: 1497, column: 40, scope: !4903)
!4912 = !DILocation(line: 1497, column: 3, scope: !4903)
!4913 = !DILocation(line: 1497, column: 46, scope: !4903)
!4914 = !DILocation(line: 1498, column: 1, scope: !4903)
!4915 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !338, file: !338, line: 80, type: !4891, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4916)
!4916 = !{!4917, !4918}
!4917 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4915, file: !338, line: 80, type: !349)
!4918 = !DILocalVariable(name: "status", scope: !4915, file: !338, line: 82, type: !4888)
!4919 = !DILocation(line: 0, scope: !4915)
!4920 = !DILocation(line: 84, column: 40, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4915, file: !338, line: 84, column: 9)
!4922 = !DILocation(line: 88, column: 9, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4921, file: !338, line: 87, column: 12)
!4924 = !DILocation(line: 92, column: 5, scope: !4915)
!4925 = !DILocation(line: 93, column: 1, scope: !4915)
!4926 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !354, file: !354, line: 1507, type: !4904, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4927)
!4927 = !{!4928}
!4928 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4926, file: !354, line: 1507, type: !173)
!4929 = !DILocation(line: 0, scope: !4926)
!4930 = !DILocation(line: 1509, column: 65, scope: !4926)
!4931 = !DILocation(line: 1509, column: 44, scope: !4926)
!4932 = !DILocation(line: 1509, column: 32, scope: !4926)
!4933 = !DILocation(line: 1509, column: 3, scope: !4926)
!4934 = !DILocation(line: 1509, column: 39, scope: !4926)
!4935 = !DILocation(line: 1510, column: 1, scope: !4926)
!4936 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !338, file: !338, line: 95, type: !4937, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4939)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!136, !349}
!4939 = !{!4940, !4941}
!4940 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4936, file: !338, line: 95, type: !349)
!4941 = !DILocalVariable(name: "ret", scope: !4936, file: !338, line: 97, type: !136)
!4942 = !DILocation(line: 0, scope: !4936)
!4943 = !DILocation(line: 99, column: 40, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4936, file: !338, line: 99, column: 9)
!4945 = !DILocation(line: 102, column: 15, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4944, file: !338, line: 101, column: 12)
!4947 = !DILocation(line: 105, column: 5, scope: !4936)
!4948 = !DILocation(line: 106, column: 1, scope: !4936)
!4949 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !354, file: !354, line: 1523, type: !4950, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4952)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!136, !173}
!4952 = !{!4953}
!4953 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4949, file: !354, line: 1523, type: !173)
!4954 = !DILocation(line: 0, scope: !4949)
!4955 = !DILocation(line: 1525, column: 51, scope: !4949)
!4956 = !DILocation(line: 1525, column: 23, scope: !4949)
!4957 = !DILocation(line: 1525, column: 83, scope: !4949)
!4958 = !DILocation(line: 1525, column: 22, scope: !4949)
!4959 = !DILocation(line: 1525, column: 3, scope: !4949)
!4960 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !338, file: !338, line: 108, type: !4891, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4961)
!4961 = !{!4962, !4963}
!4962 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4960, file: !338, line: 108, type: !349)
!4963 = !DILocalVariable(name: "status", scope: !4960, file: !338, line: 110, type: !4888)
!4964 = !DILocation(line: 0, scope: !4960)
!4965 = !DILocation(line: 112, column: 40, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4960, file: !338, line: 112, column: 9)
!4967 = !DILocation(line: 116, column: 9, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4966, file: !338, line: 115, column: 12)
!4969 = !DILocation(line: 120, column: 5, scope: !4960)
!4970 = !DILocation(line: 121, column: 1, scope: !4960)
!4971 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !354, file: !354, line: 1535, type: !4904, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4972)
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4971, file: !354, line: 1535, type: !173)
!4974 = !DILocation(line: 0, scope: !4971)
!4975 = !DILocation(line: 1537, column: 65, scope: !4971)
!4976 = !DILocation(line: 1537, column: 44, scope: !4971)
!4977 = !DILocation(line: 1537, column: 32, scope: !4971)
!4978 = !DILocation(line: 1537, column: 3, scope: !4971)
!4979 = !DILocation(line: 1537, column: 39, scope: !4971)
!4980 = !DILocation(line: 1538, column: 1, scope: !4971)
!4981 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !338, file: !338, line: 123, type: !4891, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4982)
!4982 = !{!4983, !4984}
!4983 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4981, file: !338, line: 123, type: !349)
!4984 = !DILocalVariable(name: "status", scope: !4981, file: !338, line: 125, type: !4888)
!4985 = !DILocation(line: 0, scope: !4981)
!4986 = !DILocation(line: 127, column: 40, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4981, file: !338, line: 127, column: 9)
!4988 = !DILocation(line: 131, column: 9, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4987, file: !338, line: 130, column: 12)
!4990 = !DILocation(line: 135, column: 5, scope: !4981)
!4991 = !DILocation(line: 136, column: 1, scope: !4981)
!4992 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !354, file: !354, line: 1547, type: !4904, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !4993)
!4993 = !{!4994}
!4994 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4992, file: !354, line: 1547, type: !173)
!4995 = !DILocation(line: 0, scope: !4992)
!4996 = !DILocation(line: 1549, column: 65, scope: !4992)
!4997 = !DILocation(line: 1549, column: 44, scope: !4992)
!4998 = !DILocation(line: 1549, column: 32, scope: !4992)
!4999 = !DILocation(line: 1549, column: 3, scope: !4992)
!5000 = !DILocation(line: 1549, column: 39, scope: !4992)
!5001 = !DILocation(line: 1550, column: 1, scope: !4992)
!5002 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !338, file: !338, line: 138, type: !5003, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5005)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!4888, !349, !136}
!5005 = !{!5006, !5007, !5008}
!5006 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5002, file: !338, line: 138, type: !349)
!5007 = !DILocalVariable(name: "priority", arg: 2, scope: !5002, file: !338, line: 138, type: !136)
!5008 = !DILocalVariable(name: "status", scope: !5002, file: !338, line: 140, type: !4888)
!5009 = !DILocation(line: 0, scope: !5002)
!5010 = !DILocation(line: 142, column: 40, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5002, file: !338, line: 142, column: 9)
!5012 = !DILocation(line: 146, column: 9, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5011, file: !338, line: 145, column: 12)
!5014 = !DILocation(line: 150, column: 5, scope: !5002)
!5015 = !DILocation(line: 151, column: 1, scope: !5002)
!5016 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !354, file: !354, line: 1577, type: !5017, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5019)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{null, !173, !136}
!5019 = !{!5020, !5021}
!5020 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5016, file: !354, line: 1577, type: !173)
!5021 = !DILocalVariable(name: "priority", arg: 2, scope: !5016, file: !354, line: 1577, type: !136)
!5022 = !DILocation(line: 0, scope: !5016)
!5023 = !DILocation(line: 1582, column: 34, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !354, line: 1581, column: 8)
!5025 = distinct !DILexicalBlock(scope: !5016, file: !354, line: 1579, column: 6)
!5026 = !DILocation(line: 1582, column: 5, scope: !5024)
!5027 = !DILocation(line: 1582, column: 32, scope: !5024)
!5028 = !DILocation(line: 1583, column: 1, scope: !5016)
!5029 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !338, file: !338, line: 153, type: !4937, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5030)
!5030 = !{!5031, !5032}
!5031 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5029, file: !338, line: 153, type: !349)
!5032 = !DILocalVariable(name: "ret", scope: !5029, file: !338, line: 155, type: !136)
!5033 = !DILocation(line: 0, scope: !5029)
!5034 = !DILocation(line: 157, column: 40, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5029, file: !338, line: 157, column: 9)
!5036 = !DILocation(line: 160, column: 15, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5035, file: !338, line: 159, column: 12)
!5038 = !DILocation(line: 163, column: 5, scope: !5029)
!5039 = !DILocation(line: 164, column: 1, scope: !5029)
!5040 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !354, file: !354, line: 1597, type: !4950, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5041)
!5041 = !{!5042}
!5042 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5040, file: !354, line: 1597, type: !173)
!5043 = !DILocation(line: 0, scope: !5040)
!5044 = !DILocation(line: 1603, column: 23, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !354, line: 1602, column: 8)
!5046 = distinct !DILexicalBlock(scope: !5040, file: !354, line: 1600, column: 6)
!5047 = !DILocation(line: 1603, column: 60, scope: !5045)
!5048 = !DILocation(line: 1604, column: 1, scope: !5040)
!5049 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !338, file: !338, line: 173, type: !181, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !1285)
!5050 = !DILocation(line: 175, column: 1, scope: !5049)
!5051 = distinct !DISubprogram(name: "isrC_main", scope: !338, file: !338, line: 178, type: !4886, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5052)
!5052 = !{!5053, !5054}
!5053 = !DILocalVariable(name: "status", scope: !5051, file: !338, line: 180, type: !4888)
!5054 = !DILocalVariable(name: "irq_number", scope: !5051, file: !338, line: 181, type: !349)
!5055 = !DILocation(line: 0, scope: !5051)
!5056 = !DILocation(line: 188, column: 34, scope: !5051)
!5057 = !DILocation(line: 189, column: 24, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5051, file: !338, line: 189, column: 9)
!5059 = !DILocation(line: 192, column: 48, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5058, file: !338, line: 192, column: 16)
!5061 = !DILocation(line: 192, column: 62, scope: !5060)
!5062 = !DILocation(line: 192, column: 16, scope: !5058)
!5063 = !DILocation(line: 194, column: 9, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5060, file: !338, line: 192, column: 71)
!5065 = !DILocation(line: 195, column: 9, scope: !5064)
!5066 = !DILocation(line: 197, column: 55, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5060, file: !338, line: 196, column: 12)
!5068 = !DILocation(line: 197, column: 41, scope: !5067)
!5069 = !DILocation(line: 197, column: 53, scope: !5067)
!5070 = !DILocation(line: 198, column: 41, scope: !5067)
!5071 = !DILocation(line: 198, column: 9, scope: !5067)
!5072 = !DILocation(line: 202, column: 5, scope: !5051)
!5073 = !DILocation(line: 203, column: 1, scope: !5051)
!5074 = distinct !DISubprogram(name: "get_current_irq", scope: !338, file: !338, line: 166, type: !1317, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5075)
!5075 = !{!5076}
!5076 = !DILocalVariable(name: "irq_num", scope: !5074, file: !338, line: 168, type: !136)
!5077 = !DILocation(line: 168, column: 31, scope: !5074)
!5078 = !DILocation(line: 168, column: 36, scope: !5074)
!5079 = !DILocation(line: 0, scope: !5074)
!5080 = !DILocation(line: 169, column: 21, scope: !5074)
!5081 = !DILocation(line: 169, column: 5, scope: !5074)
!5082 = distinct !DISubprogram(name: "get_pending_irq", scope: !338, file: !338, line: 55, type: !1317, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !1285)
!5083 = !DILocation(line: 57, column: 19, scope: !5082)
!5084 = !DILocation(line: 57, column: 51, scope: !5082)
!5085 = !DILocation(line: 57, column: 5, scope: !5082)
!5086 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !338, file: !338, line: 205, type: !5087, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5090)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!4888, !349, !5089}
!5089 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !341, line: 175, baseType: !431)
!5090 = !{!5091, !5092, !5093}
!5091 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5086, file: !338, line: 205, type: !349)
!5092 = !DILocalVariable(name: "callback", arg: 2, scope: !5086, file: !338, line: 205, type: !5089)
!5093 = !DILocalVariable(name: "mask", scope: !5086, file: !338, line: 207, type: !136)
!5094 = !DILocation(line: 0, scope: !5086)
!5095 = !DILocation(line: 209, column: 24, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5086, file: !338, line: 209, column: 9)
!5097 = !DILocation(line: 213, column: 12, scope: !5086)
!5098 = !DILocation(line: 214, column: 5, scope: !5086)
!5099 = !DILocation(line: 215, column: 37, scope: !5086)
!5100 = !DILocation(line: 215, column: 51, scope: !5086)
!5101 = !DILocation(line: 216, column: 37, scope: !5086)
!5102 = !DILocation(line: 216, column: 49, scope: !5086)
!5103 = !DILocation(line: 217, column: 5, scope: !5086)
!5104 = !DILocation(line: 219, column: 5, scope: !5086)
!5105 = !DILocation(line: 220, column: 1, scope: !5086)
!5106 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !338, file: !338, line: 222, type: !5107, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5109)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!4888, !515}
!5109 = !{!5110}
!5110 = !DILocalVariable(name: "mask", arg: 1, scope: !5106, file: !338, line: 222, type: !515)
!5111 = !DILocation(line: 0, scope: !5106)
!5112 = !DILocation(line: 224, column: 13, scope: !5106)
!5113 = !DILocation(line: 224, column: 11, scope: !5106)
!5114 = !DILocation(line: 225, column: 5, scope: !5106)
!5115 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !338, file: !338, line: 228, type: !5116, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !337, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!4888, !136}
!5118 = !{!5119}
!5119 = !DILocalVariable(name: "mask", arg: 1, scope: !5115, file: !338, line: 228, type: !136)
!5120 = !DILocation(line: 0, scope: !5115)
!5121 = !DILocation(line: 230, column: 5, scope: !5115)
!5122 = !DILocation(line: 231, column: 5, scope: !5115)
!5123 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1235, file: !1235, line: 50, type: !5124, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5128)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!5126, !5127, !128}
!5126 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1238, line: 238, baseType: !1237)
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !449, line: 281, baseType: !734)
!5128 = !{!5129, !5130, !5131}
!5129 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5123, file: !1235, line: 50, type: !5127)
!5130 = !DILocalVariable(name: "function_index", arg: 2, scope: !5123, file: !1235, line: 50, type: !128)
!5131 = !DILocalVariable(name: "ret_value", scope: !5123, file: !1235, line: 52, type: !350)
!5132 = !DILocation(line: 0, scope: !5123)
!5133 = !DILocation(line: 53, column: 18, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5123, file: !1235, line: 53, column: 9)
!5135 = !DILocation(line: 53, column: 9, scope: !5123)
!5136 = !DILocation(line: 57, column: 24, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5123, file: !1235, line: 57, column: 9)
!5138 = !DILocation(line: 57, column: 9, scope: !5123)
!5139 = !DILocation(line: 57, column: 9, scope: !5137)
!5140 = !DILocation(line: 60, column: 17, scope: !5123)
!5141 = !DILocation(line: 61, column: 12, scope: !5123)
!5142 = !DILocation(line: 61, column: 5, scope: !5123)
!5143 = !DILocation(line: 62, column: 1, scope: !5123)
!5144 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1235, file: !1235, line: 64, type: !5145, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5148)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!5147, !5127}
!5147 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1238, line: 229, baseType: !1244)
!5148 = !{!5149}
!5149 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5144, file: !1235, line: 64, type: !5127)
!5150 = !DILocation(line: 0, scope: !5144)
!5151 = !DILocation(line: 66, column: 5, scope: !5144)
!5152 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1235, file: !1235, line: 69, type: !5145, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5153)
!5153 = !{!5154}
!5154 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5152, file: !1235, line: 69, type: !5127)
!5155 = !DILocation(line: 0, scope: !5152)
!5156 = !DILocation(line: 71, column: 5, scope: !5152)
!5157 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1235, file: !1235, line: 74, type: !5158, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5161)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{!5147, !5127, !5160}
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 32)
!5161 = !{!5162, !5163, !5164}
!5162 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5157, file: !1235, line: 74, type: !5127)
!5163 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5157, file: !1235, line: 74, type: !5160)
!5164 = !DILocalVariable(name: "status", scope: !5157, file: !1235, line: 76, type: !5165)
!5165 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1265, line: 67, baseType: !5166)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1265, line: 62, size: 64, elements: !5167)
!5167 = !{!5168, !5169, !5170, !5171}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !5166, file: !1265, line: 63, baseType: !136, size: 32)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !5166, file: !1265, line: 64, baseType: !128, size: 8, offset: 32)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !5166, file: !1265, line: 65, baseType: !128, size: 8, offset: 40)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !5166, file: !1265, line: 66, baseType: !128, size: 8, offset: 48)
!5172 = !DILocation(line: 0, scope: !5157)
!5173 = !DILocation(line: 77, column: 14, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5157, file: !1235, line: 77, column: 9)
!5175 = !DILocation(line: 77, column: 9, scope: !5157)
!5176 = !DILocation(line: 81, column: 18, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5157, file: !1235, line: 81, column: 9)
!5178 = !DILocation(line: 81, column: 9, scope: !5157)
!5179 = !DILocation(line: 85, column: 14, scope: !5157)
!5180 = !DILocation(line: 86, column: 18, scope: !5157)
!5181 = !DILocation(line: 86, column: 16, scope: !5157)
!5182 = !DILocation(line: 87, column: 5, scope: !5157)
!5183 = !DILocation(line: 88, column: 1, scope: !5157)
!5184 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1235, file: !1235, line: 90, type: !5185, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5187)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!5147, !5127, !1271}
!5187 = !{!5188, !5189, !5190}
!5188 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5184, file: !1235, line: 90, type: !5127)
!5189 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5184, file: !1235, line: 90, type: !1271)
!5190 = !DILocalVariable(name: "ret_value", scope: !5184, file: !1235, line: 92, type: !350)
!5191 = !DILocation(line: 0, scope: !5184)
!5192 = !DILocation(line: 93, column: 18, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5184, file: !1235, line: 93, column: 9)
!5194 = !DILocation(line: 93, column: 9, scope: !5184)
!5195 = !DILocation(line: 97, column: 60, scope: !5184)
!5196 = !DILocation(line: 97, column: 17, scope: !5184)
!5197 = !DILocation(line: 98, column: 12, scope: !5184)
!5198 = !DILocation(line: 98, column: 5, scope: !5184)
!5199 = !DILocation(line: 99, column: 1, scope: !5184)
!5200 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1235, file: !1235, line: 101, type: !5158, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5201)
!5201 = !{!5202, !5203, !5204}
!5202 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5200, file: !1235, line: 101, type: !5127)
!5203 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !5200, file: !1235, line: 101, type: !5160)
!5204 = !DILocalVariable(name: "status", scope: !5200, file: !1235, line: 103, type: !5165)
!5205 = !DILocation(line: 0, scope: !5200)
!5206 = !DILocation(line: 104, column: 18, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5200, file: !1235, line: 104, column: 9)
!5208 = !DILocation(line: 104, column: 9, scope: !5200)
!5209 = !DILocation(line: 108, column: 14, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5200, file: !1235, line: 108, column: 9)
!5211 = !DILocation(line: 108, column: 9, scope: !5200)
!5212 = !DILocation(line: 112, column: 14, scope: !5200)
!5213 = !DILocation(line: 113, column: 18, scope: !5200)
!5214 = !DILocation(line: 113, column: 16, scope: !5200)
!5215 = !DILocation(line: 114, column: 5, scope: !5200)
!5216 = !DILocation(line: 115, column: 1, scope: !5200)
!5217 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1235, file: !1235, line: 117, type: !5218, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5221)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!5147, !5127, !5220}
!5220 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1238, line: 213, baseType: !1254)
!5221 = !{!5222, !5223, !5224}
!5222 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5217, file: !1235, line: 117, type: !5127)
!5223 = !DILocalVariable(name: "direction", arg: 2, scope: !5217, file: !1235, line: 117, type: !5220)
!5224 = !DILocalVariable(name: "ret_value", scope: !5217, file: !1235, line: 119, type: !350)
!5225 = !DILocation(line: 0, scope: !5217)
!5226 = !DILocation(line: 120, column: 18, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5217, file: !1235, line: 120, column: 9)
!5228 = !DILocation(line: 120, column: 9, scope: !5217)
!5229 = !DILocation(line: 123, column: 17, scope: !5217)
!5230 = !DILocation(line: 125, column: 12, scope: !5217)
!5231 = !DILocation(line: 125, column: 5, scope: !5217)
!5232 = !DILocation(line: 126, column: 1, scope: !5217)
!5233 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1235, file: !1235, line: 128, type: !5234, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5237)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!5147, !5127, !5236}
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5220, size: 32)
!5237 = !{!5238, !5239, !5240}
!5238 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5233, file: !1235, line: 128, type: !5127)
!5239 = !DILocalVariable(name: "direction", arg: 2, scope: !5233, file: !1235, line: 128, type: !5236)
!5240 = !DILocalVariable(name: "status", scope: !5233, file: !1235, line: 131, type: !5165)
!5241 = !DILocation(line: 0, scope: !5233)
!5242 = !DILocation(line: 132, column: 18, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5233, file: !1235, line: 132, column: 9)
!5244 = !DILocation(line: 132, column: 9, scope: !5233)
!5245 = !DILocation(line: 136, column: 14, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5233, file: !1235, line: 136, column: 9)
!5247 = !DILocation(line: 136, column: 9, scope: !5233)
!5248 = !DILocation(line: 140, column: 14, scope: !5233)
!5249 = !DILocation(line: 141, column: 18, scope: !5233)
!5250 = !DILocation(line: 141, column: 16, scope: !5233)
!5251 = !DILocation(line: 142, column: 5, scope: !5233)
!5252 = !DILocation(line: 143, column: 1, scope: !5233)
!5253 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1235, file: !1235, line: 146, type: !5145, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5254)
!5254 = !{!5255, !5256}
!5255 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5253, file: !1235, line: 146, type: !5127)
!5256 = !DILocalVariable(name: "status", scope: !5253, file: !1235, line: 148, type: !5165)
!5257 = !DILocation(line: 0, scope: !5253)
!5258 = !DILocation(line: 149, column: 18, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5253, file: !1235, line: 149, column: 9)
!5260 = !DILocation(line: 149, column: 9, scope: !5253)
!5261 = !DILocation(line: 153, column: 14, scope: !5253)
!5262 = !DILocation(line: 154, column: 76, scope: !5253)
!5263 = !DILocation(line: 154, column: 12, scope: !5253)
!5264 = !DILocation(line: 154, column: 5, scope: !5253)
!5265 = !DILocation(line: 155, column: 1, scope: !5253)
!5266 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1235, file: !1235, line: 157, type: !5145, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5267)
!5267 = !{!5268, !5269}
!5268 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5266, file: !1235, line: 157, type: !5127)
!5269 = !DILocalVariable(name: "ret_value", scope: !5266, file: !1235, line: 159, type: !350)
!5270 = !DILocation(line: 0, scope: !5266)
!5271 = !DILocation(line: 160, column: 18, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5266, file: !1235, line: 160, column: 9)
!5273 = !DILocation(line: 160, column: 9, scope: !5266)
!5274 = !DILocation(line: 164, column: 17, scope: !5266)
!5275 = !DILocation(line: 165, column: 19, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5266, file: !1235, line: 165, column: 9)
!5277 = !DILocation(line: 165, column: 9, scope: !5266)
!5278 = !DILocation(line: 168, column: 17, scope: !5266)
!5279 = !DILocation(line: 169, column: 12, scope: !5266)
!5280 = !DILocation(line: 169, column: 5, scope: !5266)
!5281 = !DILocation(line: 170, column: 1, scope: !5266)
!5282 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1235, file: !1235, line: 172, type: !5145, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5283)
!5283 = !{!5284, !5285}
!5284 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5282, file: !1235, line: 172, type: !5127)
!5285 = !DILocalVariable(name: "ret_value", scope: !5282, file: !1235, line: 174, type: !350)
!5286 = !DILocation(line: 0, scope: !5282)
!5287 = !DILocation(line: 175, column: 18, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5282, file: !1235, line: 175, column: 9)
!5289 = !DILocation(line: 175, column: 9, scope: !5282)
!5290 = !DILocation(line: 179, column: 17, scope: !5282)
!5291 = !DILocation(line: 180, column: 19, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5282, file: !1235, line: 180, column: 9)
!5293 = !DILocation(line: 180, column: 9, scope: !5282)
!5294 = !DILocation(line: 183, column: 17, scope: !5282)
!5295 = !DILocation(line: 184, column: 12, scope: !5282)
!5296 = !DILocation(line: 184, column: 5, scope: !5282)
!5297 = !DILocation(line: 185, column: 1, scope: !5282)
!5298 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1235, file: !1235, line: 187, type: !5145, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5299)
!5299 = !{!5300, !5301}
!5300 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5298, file: !1235, line: 187, type: !5127)
!5301 = !DILocalVariable(name: "ret_value", scope: !5298, file: !1235, line: 189, type: !350)
!5302 = !DILocation(line: 0, scope: !5298)
!5303 = !DILocation(line: 191, column: 18, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5298, file: !1235, line: 191, column: 9)
!5305 = !DILocation(line: 191, column: 9, scope: !5298)
!5306 = !DILocation(line: 195, column: 17, scope: !5298)
!5307 = !DILocation(line: 196, column: 12, scope: !5298)
!5308 = !DILocation(line: 196, column: 5, scope: !5298)
!5309 = !DILocation(line: 197, column: 1, scope: !5298)
!5310 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1235, file: !1235, line: 200, type: !5311, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5313)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{!5147, !5127, !1272}
!5313 = !{!5314, !5315, !5316}
!5314 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5310, file: !1235, line: 200, type: !5127)
!5315 = !DILocalVariable(name: "driving", arg: 2, scope: !5310, file: !1235, line: 200, type: !1272)
!5316 = !DILocalVariable(name: "ret_value", scope: !5310, file: !1235, line: 202, type: !350)
!5317 = !DILocation(line: 0, scope: !5310)
!5318 = !DILocation(line: 204, column: 18, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5310, file: !1235, line: 204, column: 9)
!5320 = !DILocation(line: 204, column: 9, scope: !5310)
!5321 = !DILocation(line: 208, column: 64, scope: !5310)
!5322 = !DILocation(line: 208, column: 17, scope: !5310)
!5323 = !DILocation(line: 210, column: 12, scope: !5310)
!5324 = !DILocation(line: 210, column: 5, scope: !5310)
!5325 = !DILocation(line: 211, column: 1, scope: !5310)
!5326 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1235, file: !1235, line: 214, type: !5327, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1234, retainedNodes: !5330)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!5147, !5127, !5329}
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 32)
!5330 = !{!5331, !5332, !5333, !5334}
!5331 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !5326, file: !1235, line: 214, type: !5127)
!5332 = !DILocalVariable(name: "driving", arg: 2, scope: !5326, file: !1235, line: 214, type: !5329)
!5333 = !DILocalVariable(name: "ret_value", scope: !5326, file: !1235, line: 216, type: !350)
!5334 = !DILocalVariable(name: "value", scope: !5326, file: !1235, line: 217, type: !128)
!5335 = !DILocation(line: 0, scope: !5326)
!5336 = !DILocation(line: 217, column: 5, scope: !5326)
!5337 = !DILocation(line: 219, column: 18, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5326, file: !1235, line: 219, column: 9)
!5339 = !DILocation(line: 219, column: 9, scope: !5326)
!5340 = !DILocation(line: 223, column: 17, scope: !5326)
!5341 = !DILocation(line: 225, column: 44, scope: !5326)
!5342 = !DILocation(line: 225, column: 16, scope: !5326)
!5343 = !DILocation(line: 225, column: 14, scope: !5326)
!5344 = !DILocation(line: 227, column: 12, scope: !5326)
!5345 = !DILocation(line: 227, column: 5, scope: !5326)
!5346 = !DILocation(line: 228, column: 1, scope: !5326)
!5347 = distinct !DISubprogram(name: "hal_i2s_init", scope: !440, file: !440, line: 75, type: !5348, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5351)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!5350, !564}
!5350 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_status_t", file: !443, line: 631, baseType: !442)
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "i2s_initial_type", arg: 1, scope: !5347, file: !440, line: 75, type: !564)
!5353 = !DILocation(line: 0, scope: !5347)
!5354 = !DILocation(line: 78, column: 26, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5347, file: !440, line: 78, column: 9)
!5356 = !DILocation(line: 78, column: 36, scope: !5355)
!5357 = !DILocation(line: 78, column: 9, scope: !5347)
!5358 = !DILocation(line: 82, column: 5, scope: !5347)
!5359 = !DILocation(line: 93, column: 13, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5347, file: !440, line: 82, column: 31)
!5361 = !DILocation(line: 0, scope: !5360)
!5362 = !DILocation(line: 103, column: 9, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5347, file: !440, line: 103, column: 9)
!5364 = !DILocation(line: 103, column: 9, scope: !5347)
!5365 = !DILocation(line: 108, column: 36, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5363, file: !440, line: 107, column: 46)
!5367 = !DILocation(line: 109, column: 41, scope: !5366)
!5368 = !DILocation(line: 110, column: 47, scope: !5366)
!5369 = !DILocation(line: 111, column: 9, scope: !5366)
!5370 = !DILocation(line: 116, column: 1, scope: !5347)
!5371 = distinct !DISubprogram(name: "hal_i2s_deinit", scope: !440, file: !440, line: 119, type: !5372, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!5350}
!5374 = !DILocation(line: 121, column: 26, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5371, file: !440, line: 121, column: 9)
!5376 = !DILocation(line: 121, column: 36, scope: !5375)
!5377 = !DILocation(line: 121, column: 9, scope: !5371)
!5378 = !DILocation(line: 126, column: 32, scope: !5371)
!5379 = !DILocation(line: 127, column: 37, scope: !5371)
!5380 = !DILocation(line: 128, column: 43, scope: !5371)
!5381 = !DILocation(line: 129, column: 9, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5371, file: !440, line: 129, column: 9)
!5383 = !DILocation(line: 0, scope: !5382)
!5384 = !DILocation(line: 0, scope: !5371)
!5385 = !DILocation(line: 134, column: 1, scope: !5371)
!5386 = distinct !DISubprogram(name: "hal_i2s_get_config", scope: !440, file: !440, line: 137, type: !5387, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5390)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!5350, !5389}
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 32)
!5390 = !{!5391}
!5391 = !DILocalVariable(name: "config", arg: 1, scope: !5386, file: !440, line: 137, type: !5389)
!5392 = !DILocation(line: 0, scope: !5386)
!5393 = !DILocation(line: 140, column: 32, scope: !5386)
!5394 = !DILocation(line: 141, column: 5, scope: !5386)
!5395 = distinct !DISubprogram(name: "hal_i2s_set_config", scope: !440, file: !440, line: 145, type: !5396, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5400)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!5350, !5398}
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 32)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!5400 = !{!5401}
!5401 = !DILocalVariable(name: "config", arg: 1, scope: !5395, file: !440, line: 145, type: !5398)
!5402 = !DILocation(line: 0, scope: !5395)
!5403 = !DILocation(line: 148, column: 26, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 148, column: 9)
!5405 = !DILocation(line: 148, column: 36, scope: !5404)
!5406 = !DILocation(line: 148, column: 9, scope: !5395)
!5407 = !DILocation(line: 149, column: 9, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5404, file: !440, line: 148, column: 55)
!5409 = !DILocation(line: 150, column: 9, scope: !5408)
!5410 = !DILocation(line: 153, column: 14, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 153, column: 9)
!5412 = !DILocation(line: 153, column: 9, scope: !5395)
!5413 = !DILocation(line: 158, column: 5, scope: !5395)
!5414 = !DILocation(line: 159, column: 5, scope: !5395)
!5415 = !DILocation(line: 162, column: 26, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 162, column: 9)
!5417 = !DILocation(line: 162, column: 58, scope: !5416)
!5418 = !DILocation(line: 162, column: 39, scope: !5416)
!5419 = !DILocation(line: 162, column: 9, scope: !5395)
!5420 = !DILocation(line: 167, column: 9, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 167, column: 9)
!5422 = !DILocation(line: 167, column: 64, scope: !5421)
!5423 = !DILocation(line: 167, column: 9, scope: !5395)
!5424 = !DILocation(line: 172, column: 43, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 172, column: 9)
!5426 = !DILocation(line: 172, column: 9, scope: !5425)
!5427 = !DILocation(line: 172, column: 62, scope: !5425)
!5428 = !DILocation(line: 172, column: 9, scope: !5395)
!5429 = !DILocation(line: 177, column: 26, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 177, column: 9)
!5431 = !DILocation(line: 177, column: 60, scope: !5430)
!5432 = !DILocation(line: 205, column: 21, scope: !5395)
!5433 = !DILocation(line: 177, column: 72, scope: !5430)
!5434 = !DILocation(line: 177, column: 80, scope: !5430)
!5435 = !DILocation(line: 177, column: 9, scope: !5395)
!5436 = !DILocation(line: 0, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 182, column: 45)
!5438 = !DILocation(line: 0, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 194, column: 35)
!5440 = !DILocation(line: 205, column: 5, scope: !5395)
!5441 = !DILocation(line: 0, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 205, column: 30)
!5443 = !DILocation(line: 216, column: 21, scope: !5395)
!5444 = !DILocation(line: 216, column: 5, scope: !5395)
!5445 = !DILocation(line: 225, column: 13, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 216, column: 33)
!5447 = !DILocation(line: 0, scope: !5446)
!5448 = !DILocation(line: 232, column: 51, scope: !5395)
!5449 = !DILocation(line: 234, column: 55, scope: !5395)
!5450 = !DILocation(line: 238, column: 29, scope: !5395)
!5451 = !DILocation(line: 238, column: 5, scope: !5395)
!5452 = !DILocation(line: 0, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 238, column: 38)
!5454 = !DILocation(line: 249, column: 28, scope: !5395)
!5455 = !DILocation(line: 249, column: 5, scope: !5395)
!5456 = !DILocation(line: 0, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 249, column: 37)
!5458 = !DILocation(line: 269, column: 64, scope: !5395)
!5459 = !DILocation(line: 269, column: 46, scope: !5395)
!5460 = !DILocation(line: 272, column: 63, scope: !5395)
!5461 = !DILocation(line: 272, column: 46, scope: !5395)
!5462 = !DILocation(line: 275, column: 29, scope: !5395)
!5463 = !DILocation(line: 275, column: 5, scope: !5395)
!5464 = !DILocation(line: 0, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 275, column: 50)
!5466 = !DILocation(line: 285, column: 28, scope: !5395)
!5467 = !DILocation(line: 285, column: 5, scope: !5395)
!5468 = !DILocation(line: 0, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5395, file: !440, line: 285, column: 49)
!5470 = !DILocation(line: 294, column: 5, scope: !5395)
!5471 = !DILocation(line: 295, column: 5, scope: !5395)
!5472 = !DILocation(line: 296, column: 5, scope: !5395)
!5473 = !DILocation(line: 298, column: 40, scope: !5395)
!5474 = !DILocation(line: 319, column: 37, scope: !5395)
!5475 = !DILocation(line: 321, column: 5, scope: !5395)
!5476 = !DILocation(line: 323, column: 1, scope: !5395)
!5477 = distinct !DISubprogram(name: "i2s_is_sample_rate", scope: !440, file: !440, line: 669, type: !5478, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5480)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!5350, !574, !126}
!5480 = !{!5481, !5482}
!5481 = !DILocalVariable(name: "sample_rate", arg: 1, scope: !5477, file: !440, line: 669, type: !574)
!5482 = !DILocalVariable(name: "IsRx", arg: 2, scope: !5477, file: !440, line: 669, type: !126)
!5483 = !DILocation(line: 0, scope: !5477)
!5484 = !DILocation(line: 671, column: 5, scope: !5477)
!5485 = !DILocation(line: 673, column: 17, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5477, file: !440, line: 671, column: 26)
!5487 = !DILocation(line: 674, column: 59, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5489, file: !440, line: 673, column: 23)
!5489 = distinct !DILexicalBlock(scope: !5486, file: !440, line: 673, column: 17)
!5490 = !DILocation(line: 675, column: 13, scope: !5488)
!5491 = !DILocation(line: 676, column: 59, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5489, file: !440, line: 675, column: 20)
!5493 = !DILocation(line: 680, column: 17, scope: !5486)
!5494 = !DILocation(line: 681, column: 59, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !440, line: 680, column: 23)
!5496 = distinct !DILexicalBlock(scope: !5486, file: !440, line: 680, column: 17)
!5497 = !DILocation(line: 682, column: 13, scope: !5495)
!5498 = !DILocation(line: 683, column: 59, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5496, file: !440, line: 682, column: 20)
!5500 = !DILocation(line: 687, column: 17, scope: !5486)
!5501 = !DILocation(line: 688, column: 59, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5503, file: !440, line: 687, column: 23)
!5503 = distinct !DILexicalBlock(scope: !5486, file: !440, line: 687, column: 17)
!5504 = !DILocation(line: 689, column: 13, scope: !5502)
!5505 = !DILocation(line: 690, column: 59, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5503, file: !440, line: 689, column: 20)
!5507 = !DILocation(line: 694, column: 17, scope: !5486)
!5508 = !DILocation(line: 695, column: 59, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !440, line: 694, column: 23)
!5510 = distinct !DILexicalBlock(scope: !5486, file: !440, line: 694, column: 17)
!5511 = !DILocation(line: 696, column: 13, scope: !5509)
!5512 = !DILocation(line: 697, column: 59, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !440, line: 696, column: 20)
!5514 = !DILocation(line: 701, column: 17, scope: !5486)
!5515 = !DILocation(line: 702, column: 59, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5517, file: !440, line: 701, column: 23)
!5517 = distinct !DILexicalBlock(scope: !5486, file: !440, line: 701, column: 17)
!5518 = !DILocation(line: 703, column: 13, scope: !5516)
!5519 = !DILocation(line: 704, column: 59, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5517, file: !440, line: 703, column: 20)
!5521 = !DILocation(line: 708, column: 17, scope: !5486)
!5522 = !DILocation(line: 709, column: 59, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !440, line: 708, column: 23)
!5524 = distinct !DILexicalBlock(scope: !5486, file: !440, line: 708, column: 17)
!5525 = !DILocation(line: 710, column: 13, scope: !5523)
!5526 = !DILocation(line: 711, column: 59, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5524, file: !440, line: 710, column: 20)
!5528 = !DILocation(line: 719, column: 1, scope: !5477)
!5529 = distinct !DISubprogram(name: "hal_i2s_enable_audio_top", scope: !440, file: !440, line: 326, type: !5372, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5530 = !DILocation(line: 329, column: 5, scope: !5529)
!5531 = !DILocation(line: 330, column: 5, scope: !5529)
!5532 = !DILocation(line: 331, column: 43, scope: !5529)
!5533 = !DILocation(line: 333, column: 5, scope: !5529)
!5534 = distinct !DISubprogram(name: "hal_i2s_disable_audio_top", scope: !440, file: !440, line: 337, type: !5372, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5535 = !DILocation(line: 340, column: 5, scope: !5534)
!5536 = !DILocation(line: 341, column: 5, scope: !5534)
!5537 = !DILocation(line: 342, column: 43, scope: !5534)
!5538 = !DILocation(line: 344, column: 5, scope: !5534)
!5539 = distinct !DISubprogram(name: "hal_i2s_enable_tx_dma_interrupt", scope: !440, file: !440, line: 348, type: !5372, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5540 = !DILocation(line: 350, column: 26, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5539, file: !440, line: 350, column: 9)
!5542 = !DILocation(line: 350, column: 48, scope: !5541)
!5543 = !DILocation(line: 350, column: 9, scope: !5539)
!5544 = !DILocation(line: 355, column: 5, scope: !5539)
!5545 = !DILocation(line: 356, column: 49, scope: !5539)
!5546 = !DILocation(line: 358, column: 5, scope: !5539)
!5547 = !DILocation(line: 0, scope: !5539)
!5548 = !DILocation(line: 359, column: 1, scope: !5539)
!5549 = distinct !DISubprogram(name: "hal_i2s_disable_tx_dma_interrupt", scope: !440, file: !440, line: 362, type: !5372, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5550 = !DILocation(line: 366, column: 5, scope: !5549)
!5551 = !DILocation(line: 367, column: 49, scope: !5549)
!5552 = !DILocation(line: 369, column: 5, scope: !5549)
!5553 = distinct !DISubprogram(name: "hal_i2s_enable_rx_dma_interrupt", scope: !440, file: !440, line: 373, type: !5372, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5554 = !DILocation(line: 376, column: 26, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5553, file: !440, line: 376, column: 9)
!5556 = !DILocation(line: 376, column: 48, scope: !5555)
!5557 = !DILocation(line: 376, column: 9, scope: !5553)
!5558 = !DILocation(line: 381, column: 5, scope: !5553)
!5559 = !DILocation(line: 382, column: 49, scope: !5553)
!5560 = !DILocation(line: 384, column: 5, scope: !5553)
!5561 = !DILocation(line: 0, scope: !5553)
!5562 = !DILocation(line: 385, column: 1, scope: !5553)
!5563 = distinct !DISubprogram(name: "hal_i2s_disable_rx_dma_interrupt", scope: !440, file: !440, line: 387, type: !5372, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5564 = !DILocation(line: 391, column: 5, scope: !5563)
!5565 = !DILocation(line: 392, column: 49, scope: !5563)
!5566 = !DILocation(line: 394, column: 5, scope: !5563)
!5567 = distinct !DISubprogram(name: "hal_i2s_get_tx_sample_count", scope: !440, file: !440, line: 399, type: !5568, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5570)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!5350, !515}
!5570 = !{!5571}
!5571 = !DILocalVariable(name: "sample_count", arg: 1, scope: !5567, file: !440, line: 399, type: !515)
!5572 = !DILocation(line: 0, scope: !5567)
!5573 = !DILocation(line: 401, column: 36, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5567, file: !440, line: 401, column: 9)
!5575 = !DILocation(line: 401, column: 52, scope: !5574)
!5576 = !DILocation(line: 401, column: 9, scope: !5567)
!5577 = !DILocation(line: 406, column: 66, scope: !5567)
!5578 = !DILocation(line: 406, column: 64, scope: !5567)
!5579 = !DILocation(line: 406, column: 19, scope: !5567)
!5580 = !DILocation(line: 408, column: 5, scope: !5567)
!5581 = !DILocation(line: 409, column: 1, scope: !5567)
!5582 = distinct !DISubprogram(name: "hal_i2s_get_rx_sample_count", scope: !440, file: !440, line: 412, type: !5568, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5583)
!5583 = !{!5584}
!5584 = !DILocalVariable(name: "sample_count", arg: 1, scope: !5582, file: !440, line: 412, type: !515)
!5585 = !DILocation(line: 0, scope: !5582)
!5586 = !DILocation(line: 415, column: 21, scope: !5582)
!5587 = !DILocation(line: 415, column: 19, scope: !5582)
!5588 = !DILocation(line: 417, column: 5, scope: !5582)
!5589 = distinct !DISubprogram(name: "hal_i2s_setup_tx_vfifo", scope: !440, file: !440, line: 421, type: !5590, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5592)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!5350, !515, !136, !136}
!5592 = !{!5593, !5594, !5595}
!5593 = !DILocalVariable(name: "buffer", arg: 1, scope: !5589, file: !440, line: 421, type: !515)
!5594 = !DILocalVariable(name: "threshold", arg: 2, scope: !5589, file: !440, line: 421, type: !136)
!5595 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !5589, file: !440, line: 421, type: !136)
!5596 = !DILocation(line: 0, scope: !5589)
!5597 = !DILocation(line: 424, column: 14, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5589, file: !440, line: 424, column: 9)
!5599 = !DILocation(line: 424, column: 9, scope: !5589)
!5600 = !DILocation(line: 428, column: 26, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5589, file: !440, line: 428, column: 9)
!5602 = !DILocation(line: 428, column: 36, scope: !5601)
!5603 = !DILocation(line: 428, column: 9, scope: !5589)
!5604 = !DILocation(line: 429, column: 9, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5601, file: !440, line: 428, column: 55)
!5606 = !DILocation(line: 430, column: 9, scope: !5605)
!5607 = !DILocation(line: 434, column: 20, scope: !5589)
!5608 = !DILocation(line: 434, column: 5, scope: !5589)
!5609 = !DILocation(line: 437, column: 5, scope: !5589)
!5610 = !DILocation(line: 439, column: 46, scope: !5589)
!5611 = !DILocation(line: 440, column: 48, scope: !5589)
!5612 = !DILocation(line: 441, column: 51, scope: !5589)
!5613 = !DILocation(line: 442, column: 50, scope: !5589)
!5614 = !DILocation(line: 444, column: 5, scope: !5589)
!5615 = !DILocation(line: 445, column: 1, scope: !5589)
!5616 = distinct !DISubprogram(name: "hal_i2s_setup_rx_vfifo", scope: !440, file: !440, line: 448, type: !5590, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5617)
!5617 = !{!5618, !5619, !5620}
!5618 = !DILocalVariable(name: "buffer", arg: 1, scope: !5616, file: !440, line: 448, type: !515)
!5619 = !DILocalVariable(name: "threshold", arg: 2, scope: !5616, file: !440, line: 448, type: !136)
!5620 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !5616, file: !440, line: 448, type: !136)
!5621 = !DILocation(line: 0, scope: !5616)
!5622 = !DILocation(line: 451, column: 14, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5616, file: !440, line: 451, column: 9)
!5624 = !DILocation(line: 451, column: 9, scope: !5616)
!5625 = !DILocation(line: 455, column: 26, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5616, file: !440, line: 455, column: 9)
!5627 = !DILocation(line: 455, column: 36, scope: !5626)
!5628 = !DILocation(line: 455, column: 9, scope: !5616)
!5629 = !DILocation(line: 456, column: 9, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5626, file: !440, line: 455, column: 55)
!5631 = !DILocation(line: 457, column: 9, scope: !5630)
!5632 = !DILocation(line: 461, column: 20, scope: !5616)
!5633 = !DILocation(line: 461, column: 5, scope: !5616)
!5634 = !DILocation(line: 464, column: 5, scope: !5616)
!5635 = !DILocation(line: 466, column: 46, scope: !5616)
!5636 = !DILocation(line: 467, column: 48, scope: !5616)
!5637 = !DILocation(line: 468, column: 51, scope: !5616)
!5638 = !DILocation(line: 469, column: 50, scope: !5616)
!5639 = !DILocation(line: 471, column: 5, scope: !5616)
!5640 = !DILocation(line: 473, column: 1, scope: !5616)
!5641 = distinct !DISubprogram(name: "hal_i2s_stop_tx_vfifo", scope: !440, file: !440, line: 476, type: !5372, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5642 = !DILocation(line: 479, column: 36, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5641, file: !440, line: 479, column: 9)
!5644 = !DILocation(line: 479, column: 9, scope: !5641)
!5645 = !DILocation(line: 480, column: 9, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5643, file: !440, line: 479, column: 55)
!5647 = !DILocation(line: 481, column: 5, scope: !5646)
!5648 = !DILocation(line: 483, column: 5, scope: !5641)
!5649 = distinct !DISubprogram(name: "hal_i2s_stop_rx_vfifo", scope: !440, file: !440, line: 487, type: !5372, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5650 = !DILocation(line: 489, column: 36, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !440, line: 489, column: 9)
!5652 = !DILocation(line: 489, column: 9, scope: !5649)
!5653 = !DILocation(line: 490, column: 9, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5651, file: !440, line: 489, column: 55)
!5655 = !DILocation(line: 491, column: 5, scope: !5654)
!5656 = !DILocation(line: 493, column: 5, scope: !5649)
!5657 = distinct !DISubprogram(name: "hal_i2s_register_tx_vfifo_callback", scope: !440, file: !440, line: 497, type: !5658, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5660)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!5350, !611, !161}
!5660 = !{!5661, !5662}
!5661 = !DILocalVariable(name: "tx_callback", arg: 1, scope: !5657, file: !440, line: 497, type: !611)
!5662 = !DILocalVariable(name: "user_data", arg: 2, scope: !5657, file: !440, line: 497, type: !161)
!5663 = !DILocation(line: 0, scope: !5657)
!5664 = !DILocation(line: 500, column: 14, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5657, file: !440, line: 500, column: 9)
!5666 = !DILocation(line: 500, column: 9, scope: !5657)
!5667 = !DILocation(line: 504, column: 44, scope: !5657)
!5668 = !DILocation(line: 505, column: 35, scope: !5657)
!5669 = !DILocation(line: 507, column: 5, scope: !5657)
!5670 = !DILocation(line: 509, column: 5, scope: !5657)
!5671 = !DILocation(line: 511, column: 1, scope: !5657)
!5672 = distinct !DISubprogram(name: "i2x_tx_handler", scope: !440, file: !440, line: 657, type: !181, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5673 = !DILocation(line: 659, column: 5, scope: !5672)
!5674 = !DILocation(line: 660, column: 1, scope: !5672)
!5675 = distinct !DISubprogram(name: "i2s_dma_callback", scope: !440, file: !440, line: 643, type: !5676, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !126}
!5678 = !{!5679}
!5679 = !DILocalVariable(name: "is_rx", arg: 1, scope: !5675, file: !440, line: 643, type: !126)
!5680 = !DILocation(line: 0, scope: !5675)
!5681 = !DILocation(line: 0, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5675, file: !440, line: 645, column: 9)
!5683 = !DILocation(line: 654, column: 1, scope: !5675)
!5684 = distinct !DISubprogram(name: "hal_i2s_register_rx_vfifo_callback", scope: !440, file: !440, line: 514, type: !5685, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5687)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!5350, !617, !161}
!5687 = !{!5688, !5689}
!5688 = !DILocalVariable(name: "rx_callback", arg: 1, scope: !5684, file: !440, line: 514, type: !617)
!5689 = !DILocalVariable(name: "user_data", arg: 2, scope: !5684, file: !440, line: 514, type: !161)
!5690 = !DILocation(line: 0, scope: !5684)
!5691 = !DILocation(line: 517, column: 14, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5684, file: !440, line: 517, column: 9)
!5693 = !DILocation(line: 517, column: 9, scope: !5684)
!5694 = !DILocation(line: 521, column: 44, scope: !5684)
!5695 = !DILocation(line: 522, column: 35, scope: !5684)
!5696 = !DILocation(line: 524, column: 5, scope: !5684)
!5697 = !DILocation(line: 526, column: 5, scope: !5684)
!5698 = !DILocation(line: 527, column: 1, scope: !5684)
!5699 = distinct !DISubprogram(name: "i2x_rx_handler", scope: !440, file: !440, line: 663, type: !181, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5700 = !DILocation(line: 665, column: 5, scope: !5699)
!5701 = !DILocation(line: 666, column: 1, scope: !5699)
!5702 = distinct !DISubprogram(name: "hal_i2s_enable_tx", scope: !440, file: !440, line: 530, type: !5372, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5703 = !DILocation(line: 533, column: 32, scope: !5702)
!5704 = !DILocation(line: 535, column: 5, scope: !5702)
!5705 = !DILocation(line: 550, column: 5, scope: !5702)
!5706 = distinct !DISubprogram(name: "hal_i2s_enable_rx", scope: !440, file: !440, line: 554, type: !5372, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5707 = !DILocation(line: 556, column: 32, scope: !5706)
!5708 = !DILocation(line: 558, column: 5, scope: !5706)
!5709 = !DILocation(line: 574, column: 5, scope: !5706)
!5710 = distinct !DISubprogram(name: "hal_i2s_disable_tx", scope: !440, file: !440, line: 579, type: !5372, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5711 = !DILocation(line: 582, column: 5, scope: !5710)
!5712 = !DILocation(line: 584, column: 32, scope: !5710)
!5713 = !DILocation(line: 586, column: 5, scope: !5710)
!5714 = !DILocation(line: 598, column: 5, scope: !5710)
!5715 = distinct !DISubprogram(name: "i2s_query_tx_vfifo_empty", scope: !440, file: !440, line: 59, type: !181, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5716 = !DILocation(line: 62, column: 5, scope: !5715)
!5717 = !DILocation(line: 63, column: 14, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !440, line: 63, column: 13)
!5719 = distinct !DILexicalBlock(scope: !5715, file: !440, line: 62, column: 15)
!5720 = !DILocation(line: 63, column: 78, scope: !5718)
!5721 = !DILocation(line: 63, column: 84, scope: !5718)
!5722 = !DILocation(line: 66, column: 17, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5724, file: !440, line: 66, column: 17)
!5724 = distinct !DILexicalBlock(scope: !5718, file: !440, line: 65, column: 66)
!5725 = !DILocation(line: 66, column: 39, scope: !5723)
!5726 = !DILocation(line: 66, column: 17, scope: !5724)
!5727 = distinct !{!5727, !5716, !5728}
!5728 = !DILocation(line: 72, column: 5, scope: !5715)
!5729 = !DILocation(line: 73, column: 1, scope: !5715)
!5730 = distinct !DISubprogram(name: "hal_i2s_disable_rx", scope: !440, file: !440, line: 602, type: !5372, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !1285)
!5731 = !DILocation(line: 605, column: 32, scope: !5730)
!5732 = !DILocation(line: 607, column: 5, scope: !5730)
!5733 = !DILocation(line: 619, column: 5, scope: !5730)
!5734 = distinct !DISubprogram(name: "hal_i2s_tx_write", scope: !440, file: !440, line: 624, type: !5735, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5737)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!5350, !136}
!5737 = !{!5738}
!5738 = !DILocalVariable(name: "data", arg: 1, scope: !5734, file: !440, line: 624, type: !136)
!5739 = !DILocation(line: 0, scope: !5734)
!5740 = !DILocation(line: 627, column: 32, scope: !5734)
!5741 = !DILocation(line: 629, column: 5, scope: !5734)
!5742 = distinct !DISubprogram(name: "hal_i2s_rx_read", scope: !440, file: !440, line: 633, type: !5568, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !5743)
!5743 = !{!5744}
!5744 = !DILocalVariable(name: "data", arg: 1, scope: !5742, file: !440, line: 633, type: !515)
!5745 = !DILocation(line: 0, scope: !5742)
!5746 = !DILocation(line: 636, column: 13, scope: !5742)
!5747 = !DILocation(line: 636, column: 11, scope: !5742)
!5748 = !DILocation(line: 638, column: 5, scope: !5742)
!5749 = distinct !DISubprogram(name: "hal_uart_init", scope: !623, file: !623, line: 234, type: !5750, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5754)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!5752, !682, !5753}
!5752 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !626, line: 351, baseType: !625)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32)
!5754 = !{!5755, !5756}
!5755 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5749, file: !623, line: 234, type: !682)
!5756 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5749, file: !623, line: 234, type: !5753)
!5757 = !DILocation(line: 0, scope: !5749)
!5758 = !DILocation(line: 236, column: 10, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5749, file: !623, line: 236, column: 9)
!5760 = !DILocation(line: 236, column: 9, scope: !5749)
!5761 = !DILocation(line: 239, column: 41, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5749, file: !623, line: 239, column: 9)
!5763 = !DILocation(line: 239, column: 9, scope: !5749)
!5764 = !DILocation(line: 242, column: 5, scope: !5749)
!5765 = !DILocation(line: 243, column: 45, scope: !5749)
!5766 = !DILocation(line: 243, column: 12, scope: !5749)
!5767 = !DILocation(line: 244, column: 12, scope: !5749)
!5768 = !DILocation(line: 243, column: 5, scope: !5749)
!5769 = !DILocation(line: 245, column: 58, scope: !5749)
!5770 = !DILocation(line: 246, column: 30, scope: !5749)
!5771 = !{i32 0, i32 2}
!5772 = !DILocation(line: 246, column: 5, scope: !5749)
!5773 = !DILocation(line: 247, column: 5, scope: !5749)
!5774 = !DILocation(line: 249, column: 31, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5749, file: !623, line: 249, column: 9)
!5776 = !DILocation(line: 249, column: 28, scope: !5775)
!5777 = !DILocation(line: 261, column: 1, scope: !5749)
!5778 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !623, file: !623, line: 93, type: !5779, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5783)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!126, !682, !5781}
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 32)
!5782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!5783 = !{!5784, !5785}
!5784 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5778, file: !623, line: 93, type: !682)
!5785 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5778, file: !623, line: 93, type: !5781)
!5786 = !DILocation(line: 0, scope: !5778)
!5787 = !DILocation(line: 95, column: 10, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5778, file: !623, line: 95, column: 9)
!5789 = !DILocation(line: 95, column: 9, scope: !5778)
!5790 = !DILocation(line: 101, column: 23, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5778, file: !623, line: 101, column: 9)
!5792 = !DILocation(line: 101, column: 32, scope: !5791)
!5793 = !DILocation(line: 101, column: 60, scope: !5791)
!5794 = !DILocation(line: 102, column: 27, scope: !5791)
!5795 = !DILocation(line: 102, column: 34, scope: !5791)
!5796 = !DILocation(line: 102, column: 58, scope: !5791)
!5797 = !DILocation(line: 103, column: 27, scope: !5791)
!5798 = !DILocation(line: 103, column: 36, scope: !5791)
!5799 = !DILocation(line: 103, column: 59, scope: !5791)
!5800 = !DILocation(line: 104, column: 27, scope: !5791)
!5801 = !DILocation(line: 104, column: 39, scope: !5791)
!5802 = !DILocation(line: 101, column: 9, scope: !5778)
!5803 = !DILocation(line: 109, column: 1, scope: !5778)
!5804 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !623, file: !623, line: 139, type: !5805, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5807)
!5805 = !DISubroutineType(types: !5806)
!5806 = !{!4008, !682}
!5807 = !{!5808}
!5808 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5804, file: !623, line: 139, type: !682)
!5809 = !DILocation(line: 0, scope: !5804)
!5810 = !DILocation(line: 141, column: 24, scope: !5804)
!5811 = !DILocation(line: 141, column: 12, scope: !5804)
!5812 = !DILocation(line: 141, column: 5, scope: !5804)
!5813 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !623, file: !623, line: 593, type: !5814, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5816)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!5752, !682, !5781}
!5816 = !{!5817, !5818}
!5817 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5813, file: !623, line: 593, type: !682)
!5818 = !DILocalVariable(name: "config", arg: 2, scope: !5813, file: !623, line: 593, type: !5781)
!5819 = !DILocation(line: 0, scope: !5813)
!5820 = !DILocation(line: 595, column: 10, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5813, file: !623, line: 595, column: 9)
!5822 = !DILocation(line: 595, column: 9, scope: !5813)
!5823 = !DILocation(line: 598, column: 45, scope: !5813)
!5824 = !DILocation(line: 598, column: 12, scope: !5813)
!5825 = !DILocation(line: 598, column: 59, scope: !5813)
!5826 = !DILocation(line: 598, column: 5, scope: !5813)
!5827 = !DILocation(line: 599, column: 23, scope: !5813)
!5828 = !DILocation(line: 600, column: 59, scope: !5813)
!5829 = !DILocation(line: 600, column: 23, scope: !5813)
!5830 = !DILocation(line: 601, column: 62, scope: !5813)
!5831 = !DILocation(line: 601, column: 23, scope: !5813)
!5832 = !DILocation(line: 602, column: 57, scope: !5813)
!5833 = !DILocation(line: 602, column: 23, scope: !5813)
!5834 = !DILocation(line: 603, column: 58, scope: !5813)
!5835 = !DILocation(line: 603, column: 23, scope: !5813)
!5836 = !DILocation(line: 599, column: 5, scope: !5813)
!5837 = !DILocation(line: 604, column: 5, scope: !5813)
!5838 = !DILocation(line: 605, column: 1, scope: !5813)
!5839 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !623, file: !623, line: 145, type: !5840, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5842)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!136, !697}
!5842 = !{!5843, !5844}
!5843 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5839, file: !623, line: 145, type: !697)
!5844 = !DILocalVariable(name: "baudrate_tbl", scope: !5839, file: !623, line: 147, type: !5845)
!5845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !5846)
!5846 = !{!5847}
!5847 = !DISubrange(count: 13)
!5848 = !DILocation(line: 0, scope: !5839)
!5849 = !DILocation(line: 147, column: 14, scope: !5839)
!5850 = !DILocation(line: 151, column: 12, scope: !5839)
!5851 = !DILocation(line: 151, column: 5, scope: !5839)
!5852 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !623, file: !623, line: 155, type: !5853, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5855)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!775, !699}
!5855 = !{!5856, !5857}
!5856 = !DILocalVariable(name: "word_length", arg: 1, scope: !5852, file: !623, line: 155, type: !699)
!5857 = !DILocalVariable(name: "databit_tbl", scope: !5852, file: !623, line: 157, type: !5858)
!5858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 64, elements: !416)
!5859 = !DILocation(line: 0, scope: !5852)
!5860 = !DILocation(line: 157, column: 14, scope: !5852)
!5861 = !DILocation(line: 160, column: 12, scope: !5852)
!5862 = !DILocation(line: 160, column: 5, scope: !5852)
!5863 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !623, file: !623, line: 164, type: !5864, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5866)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!775, !703}
!5866 = !{!5867, !5868}
!5867 = !DILocalVariable(name: "parity", arg: 1, scope: !5863, file: !623, line: 164, type: !703)
!5868 = !DILocalVariable(name: "parity_tbl", scope: !5863, file: !623, line: 166, type: !5869)
!5869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 80, elements: !420)
!5870 = !DILocation(line: 0, scope: !5863)
!5871 = !DILocation(line: 166, column: 14, scope: !5863)
!5872 = !DILocation(line: 169, column: 12, scope: !5863)
!5873 = !DILocation(line: 169, column: 5, scope: !5863)
!5874 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !623, file: !623, line: 173, type: !5875, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5877)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!775, !701}
!5877 = !{!5878, !5879}
!5878 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5874, file: !623, line: 173, type: !701)
!5879 = !DILocalVariable(name: "stopbit_tbl", scope: !5874, file: !623, line: 175, type: !5880)
!5880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 48, elements: !902)
!5881 = !DILocation(line: 0, scope: !5874)
!5882 = !DILocation(line: 175, column: 14, scope: !5874)
!5883 = !DILocation(line: 178, column: 12, scope: !5874)
!5884 = !DILocation(line: 178, column: 5, scope: !5874)
!5885 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !623, file: !623, line: 87, type: !5886, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5888)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!126, !682}
!5888 = !{!5889}
!5889 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5885, file: !623, line: 87, type: !682)
!5890 = !DILocation(line: 0, scope: !5885)
!5891 = !DILocation(line: 89, column: 23, scope: !5885)
!5892 = !DILocation(line: 89, column: 5, scope: !5885)
!5893 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !623, file: !623, line: 264, type: !5894, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5896)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{!5752, !682}
!5896 = !{!5897}
!5897 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5893, file: !623, line: 264, type: !682)
!5898 = !DILocation(line: 0, scope: !5893)
!5899 = !DILocation(line: 266, column: 10, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5893, file: !623, line: 266, column: 9)
!5901 = !DILocation(line: 266, column: 9, scope: !5893)
!5902 = !DILocation(line: 269, column: 41, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5893, file: !623, line: 269, column: 9)
!5904 = !DILocation(line: 269, column: 62, scope: !5903)
!5905 = !DILocation(line: 269, column: 9, scope: !5893)
!5906 = !DILocation(line: 272, column: 5, scope: !5893)
!5907 = !DILocation(line: 275, column: 22, scope: !5893)
!5908 = !DILocation(line: 275, column: 5, scope: !5893)
!5909 = !DILocation(line: 284, column: 5, scope: !5893)
!5910 = !DILocation(line: 286, column: 5, scope: !5893)
!5911 = !DILocation(line: 287, column: 1, scope: !5893)
!5912 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !623, file: !623, line: 290, type: !5913, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5915)
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !682, !675}
!5915 = !{!5916, !5917, !5918}
!5916 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5912, file: !623, line: 290, type: !682)
!5917 = !DILocalVariable(name: "byte", arg: 2, scope: !5912, file: !623, line: 290, type: !675)
!5918 = !DILocalVariable(name: "int_no", scope: !5912, file: !623, line: 292, type: !4008)
!5919 = !DILocation(line: 0, scope: !5912)
!5920 = !DILocation(line: 292, column: 26, scope: !5912)
!5921 = !DILocation(line: 294, column: 16, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5912, file: !623, line: 294, column: 9)
!5923 = !DILocation(line: 294, column: 9, scope: !5912)
!5924 = !DILocation(line: 295, column: 9, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5922, file: !623, line: 294, column: 34)
!5926 = !DILocation(line: 296, column: 5, scope: !5925)
!5927 = !DILocation(line: 299, column: 1, scope: !5912)
!5928 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !623, file: !623, line: 302, type: !5929, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5931)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!136, !682, !4212, !136}
!5931 = !{!5932, !5933, !5934, !5935, !5936}
!5932 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5928, file: !623, line: 302, type: !682)
!5933 = !DILocalVariable(name: "data", arg: 2, scope: !5928, file: !623, line: 302, type: !4212)
!5934 = !DILocalVariable(name: "size", arg: 3, scope: !5928, file: !623, line: 302, type: !136)
!5935 = !DILocalVariable(name: "int_no", scope: !5928, file: !623, line: 304, type: !4008)
!5936 = !DILocalVariable(name: "index", scope: !5928, file: !623, line: 305, type: !136)
!5937 = !DILocation(line: 0, scope: !5928)
!5938 = !DILocation(line: 304, column: 26, scope: !5928)
!5939 = !DILocation(line: 307, column: 14, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5928, file: !623, line: 307, column: 9)
!5941 = !DILocation(line: 307, column: 9, scope: !5928)
!5942 = !DILocation(line: 313, column: 53, scope: !5943)
!5943 = distinct !DILexicalBlock(scope: !5944, file: !623, line: 312, column: 48)
!5944 = distinct !DILexicalBlock(scope: !5945, file: !623, line: 312, column: 9)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !623, line: 312, column: 9)
!5946 = distinct !DILexicalBlock(scope: !5947, file: !623, line: 311, column: 33)
!5947 = distinct !DILexicalBlock(scope: !5928, file: !623, line: 311, column: 9)
!5948 = !DILocation(line: 313, column: 13, scope: !5943)
!5949 = !DILocation(line: 312, column: 44, scope: !5944)
!5950 = !DILocation(line: 312, column: 31, scope: !5944)
!5951 = !DILocation(line: 312, column: 9, scope: !5945)
!5952 = distinct !{!5952, !5951, !5953}
!5953 = !DILocation(line: 314, column: 9, scope: !5945)
!5954 = !DILocation(line: 318, column: 1, scope: !5928)
!5955 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !623, file: !623, line: 320, type: !5929, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5956)
!5956 = !{!5957, !5958, !5959, !5960, !5961, !5962}
!5957 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5955, file: !623, line: 320, type: !682)
!5958 = !DILocalVariable(name: "data", arg: 2, scope: !5955, file: !623, line: 320, type: !4212)
!5959 = !DILocalVariable(name: "size", arg: 3, scope: !5955, file: !623, line: 320, type: !136)
!5960 = !DILocalVariable(name: "actual_space", scope: !5955, file: !623, line: 322, type: !136)
!5961 = !DILocalVariable(name: "send_size", scope: !5955, file: !623, line: 322, type: !136)
!5962 = !DILocalVariable(name: "ch", scope: !5955, file: !623, line: 323, type: !514)
!5963 = !DILocation(line: 0, scope: !5955)
!5964 = !DILocation(line: 322, column: 5, scope: !5955)
!5965 = !DILocation(line: 328, column: 10, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5955, file: !623, line: 328, column: 9)
!5967 = !DILocation(line: 328, column: 9, scope: !5955)
!5968 = !DILocation(line: 332, column: 15, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5955, file: !623, line: 332, column: 9)
!5970 = !DILocation(line: 332, column: 24, scope: !5969)
!5971 = !DILocation(line: 335, column: 42, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5955, file: !623, line: 335, column: 9)
!5973 = !DILocation(line: 335, column: 9, scope: !5955)
!5974 = !DILocation(line: 349, column: 30, scope: !5955)
!5975 = !DILocation(line: 349, column: 5, scope: !5955)
!5976 = !DILocation(line: 350, column: 9, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5955, file: !623, line: 350, column: 9)
!5978 = !DILocation(line: 350, column: 22, scope: !5977)
!5979 = !DILocation(line: 355, column: 5, scope: !5955)
!5980 = !DILocation(line: 357, column: 22, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5955, file: !623, line: 357, column: 9)
!5982 = !DILocation(line: 357, column: 19, scope: !5981)
!5983 = !DILocation(line: 357, column: 9, scope: !5955)
!5984 = !DILocation(line: 358, column: 14, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5981, file: !623, line: 357, column: 36)
!5986 = !{i32 14, i32 18}
!5987 = !DILocation(line: 359, column: 9, scope: !5985)
!5988 = !DILocation(line: 360, column: 5, scope: !5985)
!5989 = !DILocation(line: 362, column: 1, scope: !5955)
!5990 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !623, file: !623, line: 191, type: !5991, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !5993)
!5991 = !DISubroutineType(types: !5992)
!5992 = !{!514, !4008, !126}
!5993 = !{!5994, !5995, !5996}
!5994 = !DILocalVariable(name: "port", arg: 1, scope: !5990, file: !623, line: 191, type: !4008)
!5995 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5990, file: !623, line: 191, type: !126)
!5996 = !DILocalVariable(name: "ch", scope: !5990, file: !623, line: 193, type: !514)
!5997 = !DILocation(line: 0, scope: !5990)
!5998 = !DILocation(line: 195, column: 14, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5990, file: !623, line: 195, column: 9)
!6000 = !DILocation(line: 195, column: 9, scope: !5990)
!6001 = !DILocation(line: 209, column: 5, scope: !5990)
!6002 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !623, file: !623, line: 365, type: !6003, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6005)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{!675, !682}
!6005 = !{!6006, !6007}
!6006 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6002, file: !623, line: 365, type: !682)
!6007 = !DILocalVariable(name: "int_no", scope: !6002, file: !623, line: 367, type: !4008)
!6008 = !DILocation(line: 0, scope: !6002)
!6009 = !DILocation(line: 367, column: 26, scope: !6002)
!6010 = !DILocation(line: 369, column: 16, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6002, file: !623, line: 369, column: 9)
!6012 = !DILocation(line: 369, column: 9, scope: !6002)
!6013 = !DILocation(line: 370, column: 22, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6011, file: !623, line: 369, column: 33)
!6015 = !DILocation(line: 370, column: 9, scope: !6014)
!6016 = !DILocation(line: 0, scope: !6011)
!6017 = !DILocation(line: 375, column: 1, scope: !6002)
!6018 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !623, file: !623, line: 377, type: !6019, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6021)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!136, !682}
!6021 = !{!6022, !6023}
!6022 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6018, file: !623, line: 377, type: !682)
!6023 = !DILocalVariable(name: "int_no", scope: !6018, file: !623, line: 379, type: !4008)
!6024 = !DILocation(line: 0, scope: !6018)
!6025 = !DILocation(line: 379, column: 26, scope: !6018)
!6026 = !DILocation(line: 381, column: 16, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6018, file: !623, line: 381, column: 9)
!6028 = !DILocation(line: 381, column: 9, scope: !6018)
!6029 = !DILocation(line: 382, column: 16, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6027, file: !623, line: 381, column: 33)
!6031 = !DILocation(line: 382, column: 9, scope: !6030)
!6032 = !DILocation(line: 0, scope: !6027)
!6033 = !DILocation(line: 387, column: 1, scope: !6018)
!6034 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !623, file: !623, line: 390, type: !6035, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6037)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!136, !682, !722, !136}
!6037 = !{!6038, !6039, !6040, !6041, !6042}
!6038 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6034, file: !623, line: 390, type: !682)
!6039 = !DILocalVariable(name: "buffer", arg: 2, scope: !6034, file: !623, line: 390, type: !722)
!6040 = !DILocalVariable(name: "size", arg: 3, scope: !6034, file: !623, line: 390, type: !136)
!6041 = !DILocalVariable(name: "int_no", scope: !6034, file: !623, line: 392, type: !4008)
!6042 = !DILocalVariable(name: "index", scope: !6034, file: !623, line: 393, type: !136)
!6043 = !DILocation(line: 0, scope: !6034)
!6044 = !DILocation(line: 392, column: 26, scope: !6034)
!6045 = !DILocation(line: 395, column: 16, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6034, file: !623, line: 395, column: 9)
!6047 = !DILocation(line: 395, column: 9, scope: !6034)
!6048 = !DILocation(line: 401, column: 38, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6050, file: !623, line: 400, column: 48)
!6050 = distinct !DILexicalBlock(scope: !6051, file: !623, line: 400, column: 9)
!6051 = distinct !DILexicalBlock(scope: !6052, file: !623, line: 400, column: 9)
!6052 = distinct !DILexicalBlock(scope: !6053, file: !623, line: 399, column: 33)
!6053 = distinct !DILexicalBlock(scope: !6034, file: !623, line: 399, column: 9)
!6054 = !DILocation(line: 401, column: 13, scope: !6049)
!6055 = !DILocation(line: 401, column: 27, scope: !6049)
!6056 = !DILocation(line: 400, column: 44, scope: !6050)
!6057 = !DILocation(line: 400, column: 31, scope: !6050)
!6058 = !DILocation(line: 400, column: 9, scope: !6051)
!6059 = distinct !{!6059, !6058, !6060}
!6060 = !DILocation(line: 402, column: 9, scope: !6051)
!6061 = !DILocation(line: 406, column: 1, scope: !6034)
!6062 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !623, file: !623, line: 408, type: !6035, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6063)
!6063 = !{!6064, !6065, !6066, !6067, !6068, !6069}
!6064 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6062, file: !623, line: 408, type: !682)
!6065 = !DILocalVariable(name: "buffer", arg: 2, scope: !6062, file: !623, line: 408, type: !722)
!6066 = !DILocalVariable(name: "size", arg: 3, scope: !6062, file: !623, line: 408, type: !136)
!6067 = !DILocalVariable(name: "actual_size", scope: !6062, file: !623, line: 410, type: !136)
!6068 = !DILocalVariable(name: "receive_size", scope: !6062, file: !623, line: 410, type: !136)
!6069 = !DILocalVariable(name: "ch", scope: !6062, file: !623, line: 411, type: !514)
!6070 = !DILocation(line: 0, scope: !6062)
!6071 = !DILocation(line: 410, column: 5, scope: !6062)
!6072 = !DILocation(line: 413, column: 10, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6062, file: !623, line: 413, column: 9)
!6074 = !DILocation(line: 413, column: 9, scope: !6062)
!6075 = !DILocation(line: 417, column: 17, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6062, file: !623, line: 417, column: 9)
!6077 = !DILocation(line: 417, column: 26, scope: !6076)
!6078 = !DILocation(line: 421, column: 30, scope: !6062)
!6079 = !DILocation(line: 421, column: 5, scope: !6062)
!6080 = !DILocation(line: 422, column: 9, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6062, file: !623, line: 422, column: 9)
!6082 = !DILocation(line: 422, column: 21, scope: !6081)
!6083 = !DILocation(line: 427, column: 5, scope: !6062)
!6084 = !DILocation(line: 429, column: 25, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6062, file: !623, line: 429, column: 9)
!6086 = !DILocation(line: 429, column: 22, scope: !6085)
!6087 = !DILocation(line: 429, column: 9, scope: !6062)
!6088 = !DILocation(line: 430, column: 14, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6085, file: !623, line: 429, column: 38)
!6090 = !DILocation(line: 431, column: 9, scope: !6089)
!6091 = !DILocation(line: 432, column: 5, scope: !6089)
!6092 = !DILocation(line: 435, column: 1, scope: !6062)
!6093 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !623, file: !623, line: 438, type: !6019, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6094)
!6094 = !{!6095, !6096}
!6095 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6093, file: !623, line: 438, type: !682)
!6096 = !DILocalVariable(name: "length", scope: !6093, file: !623, line: 440, type: !136)
!6097 = !DILocation(line: 0, scope: !6093)
!6098 = !DILocation(line: 440, column: 5, scope: !6093)
!6099 = !DILocation(line: 440, column: 14, scope: !6093)
!6100 = !DILocation(line: 442, column: 10, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6093, file: !623, line: 442, column: 9)
!6102 = !DILocation(line: 442, column: 9, scope: !6093)
!6103 = !DILocation(line: 446, column: 30, scope: !6093)
!6104 = !DILocation(line: 446, column: 5, scope: !6093)
!6105 = !DILocation(line: 447, column: 12, scope: !6093)
!6106 = !DILocation(line: 447, column: 5, scope: !6093)
!6107 = !DILocation(line: 448, column: 1, scope: !6093)
!6108 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !623, file: !623, line: 451, type: !6019, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6109)
!6109 = !{!6110, !6111}
!6110 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6108, file: !623, line: 451, type: !682)
!6111 = !DILocalVariable(name: "length", scope: !6108, file: !623, line: 453, type: !136)
!6112 = !DILocation(line: 0, scope: !6108)
!6113 = !DILocation(line: 453, column: 5, scope: !6108)
!6114 = !DILocation(line: 453, column: 14, scope: !6108)
!6115 = !DILocation(line: 455, column: 10, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6108, file: !623, line: 455, column: 9)
!6117 = !DILocation(line: 455, column: 9, scope: !6108)
!6118 = !DILocation(line: 459, column: 30, scope: !6108)
!6119 = !DILocation(line: 459, column: 5, scope: !6108)
!6120 = !DILocation(line: 461, column: 12, scope: !6108)
!6121 = !DILocation(line: 461, column: 5, scope: !6108)
!6122 = !DILocation(line: 462, column: 1, scope: !6108)
!6123 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !623, file: !623, line: 543, type: !6124, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6126)
!6124 = !DISubroutineType(types: !6125)
!6125 = !{!5752, !682, !710, !161}
!6126 = !{!6127, !6128, !6129, !6130}
!6127 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6123, file: !623, line: 543, type: !682)
!6128 = !DILocalVariable(name: "user_callback", arg: 2, scope: !6123, file: !623, line: 544, type: !710)
!6129 = !DILocalVariable(name: "user_data", arg: 3, scope: !6123, file: !623, line: 545, type: !161)
!6130 = !DILocalVariable(name: "ch", scope: !6123, file: !623, line: 547, type: !514)
!6131 = !DILocation(line: 0, scope: !6123)
!6132 = !DILocation(line: 549, column: 10, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6123, file: !623, line: 549, column: 9)
!6134 = !DILocation(line: 549, column: 9, scope: !6123)
!6135 = !DILocation(line: 556, column: 53, scope: !6123)
!6136 = !DILocation(line: 556, column: 62, scope: !6123)
!6137 = !DILocation(line: 557, column: 53, scope: !6123)
!6138 = !DILocation(line: 557, column: 63, scope: !6123)
!6139 = !DILocation(line: 558, column: 37, scope: !6123)
!6140 = !DILocation(line: 558, column: 54, scope: !6123)
!6141 = !DILocation(line: 560, column: 39, scope: !6123)
!6142 = !DILocation(line: 561, column: 39, scope: !6123)
!6143 = !DILocation(line: 560, column: 5, scope: !6123)
!6144 = !DILocation(line: 562, column: 5, scope: !6123)
!6145 = !DILocation(line: 564, column: 44, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6123, file: !623, line: 564, column: 9)
!6147 = !DILocation(line: 564, column: 9, scope: !6123)
!6148 = !DILocation(line: 565, column: 9, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6146, file: !623, line: 564, column: 59)
!6150 = !DILocation(line: 566, column: 5, scope: !6149)
!6151 = !DILocation(line: 567, column: 9, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6146, file: !623, line: 566, column: 12)
!6153 = !DILocation(line: 569, column: 10, scope: !6123)
!6154 = !DILocation(line: 570, column: 5, scope: !6123)
!6155 = !DILocation(line: 578, column: 5, scope: !6123)
!6156 = !DILocation(line: 579, column: 1, scope: !6123)
!6157 = !DILocation(line: 0, scope: !679)
!6158 = !DILocation(line: 539, column: 12, scope: !679)
!6159 = !DILocation(line: 539, column: 5, scope: !679)
!6160 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !623, file: !623, line: 511, type: !181, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6161)
!6161 = !{!6162}
!6162 = !DILocalVariable(name: "callback_context", scope: !6163, file: !623, line: 514, type: !6165)
!6163 = distinct !DILexicalBlock(scope: !6164, file: !623, line: 513, column: 60)
!6164 = distinct !DILexicalBlock(scope: !6160, file: !623, line: 513, column: 9)
!6165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 32)
!6166 = !DILocation(line: 513, column: 42, scope: !6164)
!6167 = !DILocation(line: 513, column: 9, scope: !6160)
!6168 = !DILocation(line: 515, column: 39, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6163, file: !623, line: 515, column: 13)
!6170 = !DILocation(line: 515, column: 18, scope: !6169)
!6171 = !DILocation(line: 515, column: 13, scope: !6163)
!6172 = !DILocation(line: 516, column: 89, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6169, file: !623, line: 515, column: 49)
!6174 = !DILocation(line: 516, column: 13, scope: !6173)
!6175 = !DILocation(line: 517, column: 9, scope: !6173)
!6176 = !DILocation(line: 519, column: 32, scope: !6160)
!6177 = !DILocation(line: 519, column: 5, scope: !6160)
!6178 = !DILocation(line: 520, column: 1, scope: !6160)
!6179 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !623, file: !623, line: 523, type: !181, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6180)
!6180 = !{!6181}
!6181 = !DILocalVariable(name: "callback_context", scope: !6182, file: !623, line: 526, type: !6165)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !623, line: 525, column: 60)
!6183 = distinct !DILexicalBlock(scope: !6179, file: !623, line: 525, column: 9)
!6184 = !DILocation(line: 525, column: 42, scope: !6183)
!6185 = !DILocation(line: 525, column: 9, scope: !6179)
!6186 = !DILocation(line: 527, column: 39, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6182, file: !623, line: 527, column: 13)
!6188 = !DILocation(line: 527, column: 18, scope: !6187)
!6189 = !DILocation(line: 527, column: 13, scope: !6182)
!6190 = !DILocation(line: 528, column: 89, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6187, file: !623, line: 527, column: 49)
!6192 = !DILocation(line: 528, column: 13, scope: !6191)
!6193 = !DILocation(line: 529, column: 9, scope: !6191)
!6194 = !DILocation(line: 531, column: 32, scope: !6179)
!6195 = !DILocation(line: 531, column: 5, scope: !6179)
!6196 = !DILocation(line: 532, column: 1, scope: !6179)
!6197 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !623, file: !623, line: 464, type: !6198, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6200)
!6198 = !DISubroutineType(types: !6199)
!6199 = !{null, !4008, !126}
!6200 = !{!6201, !6202, !6203, !6204, !6205, !6207}
!6201 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6197, file: !623, line: 464, type: !4008)
!6202 = !DILocalVariable(name: "is_rx", arg: 2, scope: !6197, file: !623, line: 464, type: !126)
!6203 = !DILocalVariable(name: "avail_size", scope: !6197, file: !623, line: 466, type: !136)
!6204 = !DILocalVariable(name: "avail_space", scope: !6197, file: !623, line: 466, type: !136)
!6205 = !DILocalVariable(name: "dma_config", scope: !6197, file: !623, line: 467, type: !6206)
!6206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 32)
!6207 = !DILocalVariable(name: "ch", scope: !6197, file: !623, line: 468, type: !514)
!6208 = !DILocation(line: 0, scope: !6197)
!6209 = !DILocation(line: 466, column: 5, scope: !6197)
!6210 = !DILocation(line: 471, column: 9, scope: !6197)
!6211 = !DILocation(line: 472, column: 9, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6213, file: !623, line: 471, column: 16)
!6213 = distinct !DILexicalBlock(scope: !6197, file: !623, line: 471, column: 9)
!6214 = !DILocation(line: 473, column: 13, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6212, file: !623, line: 473, column: 13)
!6216 = !DILocation(line: 473, column: 39, scope: !6215)
!6217 = !DILocation(line: 473, column: 24, scope: !6215)
!6218 = !DILocation(line: 473, column: 13, scope: !6212)
!6219 = !DILocation(line: 478, column: 9, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6213, file: !623, line: 477, column: 12)
!6221 = !DILocation(line: 479, column: 13, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6220, file: !623, line: 479, column: 13)
!6223 = !DILocation(line: 479, column: 40, scope: !6222)
!6224 = !DILocation(line: 479, column: 77, scope: !6222)
!6225 = !DILocation(line: 479, column: 63, scope: !6222)
!6226 = !DILocation(line: 479, column: 25, scope: !6222)
!6227 = !DILocation(line: 479, column: 13, scope: !6220)
!6228 = !DILocation(line: 0, scope: !6213)
!6229 = !DILocation(line: 484, column: 1, scope: !6197)
!6230 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !623, file: !623, line: 486, type: !181, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6231)
!6231 = !{!6232}
!6232 = !DILocalVariable(name: "callback_context", scope: !6233, file: !623, line: 490, type: !6165)
!6233 = distinct !DILexicalBlock(scope: !6234, file: !623, line: 489, column: 70)
!6234 = distinct !DILexicalBlock(scope: !6230, file: !623, line: 488, column: 9)
!6235 = !DILocation(line: 488, column: 43, scope: !6234)
!6236 = !DILocation(line: 488, column: 61, scope: !6234)
!6237 = !DILocation(line: 489, column: 14, scope: !6234)
!6238 = !DILocation(line: 489, column: 63, scope: !6234)
!6239 = !DILocation(line: 488, column: 9, scope: !6230)
!6240 = !DILocation(line: 491, column: 39, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6233, file: !623, line: 491, column: 13)
!6242 = !DILocation(line: 491, column: 18, scope: !6241)
!6243 = !DILocation(line: 491, column: 13, scope: !6233)
!6244 = !DILocation(line: 492, column: 88, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6241, file: !623, line: 491, column: 49)
!6246 = !DILocation(line: 492, column: 13, scope: !6245)
!6247 = !DILocation(line: 493, column: 9, scope: !6245)
!6248 = !DILocation(line: 495, column: 32, scope: !6230)
!6249 = !DILocation(line: 495, column: 5, scope: !6230)
!6250 = !DILocation(line: 496, column: 1, scope: !6230)
!6251 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !623, file: !623, line: 499, type: !181, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6252)
!6252 = !{!6253}
!6253 = !DILocalVariable(name: "callback_context", scope: !6254, file: !623, line: 503, type: !6165)
!6254 = distinct !DILexicalBlock(scope: !6255, file: !623, line: 502, column: 70)
!6255 = distinct !DILexicalBlock(scope: !6251, file: !623, line: 501, column: 9)
!6256 = !DILocation(line: 501, column: 43, scope: !6255)
!6257 = !DILocation(line: 501, column: 61, scope: !6255)
!6258 = !DILocation(line: 502, column: 14, scope: !6255)
!6259 = !DILocation(line: 502, column: 63, scope: !6255)
!6260 = !DILocation(line: 501, column: 9, scope: !6251)
!6261 = !DILocation(line: 504, column: 39, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6254, file: !623, line: 504, column: 13)
!6263 = !DILocation(line: 504, column: 18, scope: !6262)
!6264 = !DILocation(line: 504, column: 13, scope: !6254)
!6265 = !DILocation(line: 505, column: 88, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6262, file: !623, line: 504, column: 49)
!6267 = !DILocation(line: 505, column: 13, scope: !6266)
!6268 = !DILocation(line: 506, column: 9, scope: !6266)
!6269 = !DILocation(line: 508, column: 32, scope: !6251)
!6270 = !DILocation(line: 508, column: 5, scope: !6251)
!6271 = !DILocation(line: 509, column: 1, scope: !6251)
!6272 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !623, file: !623, line: 582, type: !6273, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6275)
!6273 = !DISubroutineType(types: !6274)
!6274 = !{!5752, !682, !697}
!6275 = !{!6276, !6277}
!6276 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6272, file: !623, line: 582, type: !682)
!6277 = !DILocalVariable(name: "baudrate", arg: 2, scope: !6272, file: !623, line: 582, type: !697)
!6278 = !DILocation(line: 0, scope: !6272)
!6279 = !DILocation(line: 584, column: 11, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6272, file: !623, line: 584, column: 9)
!6281 = !DILocation(line: 584, column: 46, scope: !6280)
!6282 = !DILocation(line: 588, column: 37, scope: !6272)
!6283 = !DILocation(line: 588, column: 50, scope: !6272)
!6284 = !DILocation(line: 588, column: 59, scope: !6272)
!6285 = !DILocation(line: 589, column: 12, scope: !6272)
!6286 = !DILocation(line: 589, column: 5, scope: !6272)
!6287 = !DILocation(line: 590, column: 1, scope: !6272)
!6288 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !623, file: !623, line: 608, type: !6289, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6293)
!6289 = !DISubroutineType(types: !6290)
!6290 = !{!5752, !682, !6291}
!6291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6292, size: 32)
!6292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!6293 = !{!6294, !6295}
!6294 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6288, file: !623, line: 608, type: !682)
!6295 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !6288, file: !623, line: 608, type: !6291)
!6296 = !DILocation(line: 0, scope: !6288)
!6297 = !DILocation(line: 610, column: 10, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6288, file: !623, line: 610, column: 9)
!6299 = !DILocation(line: 610, column: 9, scope: !6288)
!6300 = !DILocation(line: 614, column: 10, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6288, file: !623, line: 614, column: 9)
!6302 = !DILocation(line: 614, column: 9, scope: !6288)
!6303 = !DILocation(line: 618, column: 37, scope: !6288)
!6304 = !DILocation(line: 618, column: 56, scope: !6288)
!6305 = !DILocation(line: 619, column: 45, scope: !6288)
!6306 = !DILocation(line: 619, column: 12, scope: !6288)
!6307 = !DILocation(line: 620, column: 12, scope: !6288)
!6308 = !DILocation(line: 619, column: 5, scope: !6288)
!6309 = !DILocation(line: 621, column: 5, scope: !6288)
!6310 = !DILocation(line: 622, column: 5, scope: !6288)
!6311 = !DILocation(line: 623, column: 33, scope: !6288)
!6312 = !DILocation(line: 624, column: 50, scope: !6288)
!6313 = !DILocation(line: 625, column: 50, scope: !6288)
!6314 = !DILocation(line: 626, column: 50, scope: !6288)
!6315 = !DILocation(line: 627, column: 50, scope: !6288)
!6316 = !DILocation(line: 628, column: 33, scope: !6288)
!6317 = !DILocation(line: 623, column: 5, scope: !6288)
!6318 = !DILocation(line: 630, column: 50, scope: !6288)
!6319 = !DILocation(line: 631, column: 50, scope: !6288)
!6320 = !DILocation(line: 632, column: 50, scope: !6288)
!6321 = !DILocation(line: 629, column: 5, scope: !6288)
!6322 = !DILocation(line: 634, column: 5, scope: !6288)
!6323 = !DILocation(line: 635, column: 1, scope: !6288)
!6324 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !623, file: !623, line: 112, type: !6325, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6327)
!6325 = !DISubroutineType(types: !6326)
!6326 = !{!126, !6291}
!6327 = !{!6328}
!6328 = !DILocalVariable(name: "dma_config", arg: 1, scope: !6324, file: !623, line: 112, type: !6291)
!6329 = !DILocation(line: 0, scope: !6324)
!6330 = !DILocation(line: 114, column: 14, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6324, file: !623, line: 114, column: 9)
!6332 = !DILocation(line: 114, column: 9, scope: !6324)
!6333 = !DILocation(line: 117, column: 29, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6324, file: !623, line: 117, column: 9)
!6335 = !DILocation(line: 117, column: 14, scope: !6334)
!6336 = !DILocation(line: 117, column: 9, scope: !6324)
!6337 = !DILocation(line: 120, column: 21, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6324, file: !623, line: 120, column: 9)
!6339 = !DILocation(line: 120, column: 61, scope: !6338)
!6340 = !DILocation(line: 120, column: 47, scope: !6338)
!6341 = !DILocation(line: 120, column: 9, scope: !6324)
!6342 = !DILocation(line: 123, column: 61, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6324, file: !623, line: 123, column: 9)
!6344 = !DILocation(line: 123, column: 47, scope: !6343)
!6345 = !DILocation(line: 123, column: 9, scope: !6324)
!6346 = !DILocation(line: 126, column: 29, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6324, file: !623, line: 126, column: 9)
!6348 = !DILocation(line: 126, column: 14, scope: !6347)
!6349 = !DILocation(line: 126, column: 9, scope: !6324)
!6350 = !DILocation(line: 129, column: 21, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6324, file: !623, line: 129, column: 9)
!6352 = !DILocation(line: 129, column: 58, scope: !6351)
!6353 = !DILocation(line: 129, column: 44, scope: !6351)
!6354 = !DILocation(line: 129, column: 9, scope: !6324)
!6355 = !DILocation(line: 136, column: 1, scope: !6324)
!6356 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !623, file: !623, line: 182, type: !6357, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6359)
!6357 = !DISubroutineType(types: !6358)
!6358 = !{!136, !136}
!6359 = !{!6360, !6361}
!6360 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !6356, file: !623, line: 182, type: !136)
!6361 = !DILocalVariable(name: "ticks_per_us", scope: !6356, file: !623, line: 184, type: !136)
!6362 = !DILocation(line: 0, scope: !6356)
!6363 = !DILocation(line: 186, column: 20, scope: !6356)
!6364 = !DILocation(line: 186, column: 39, scope: !6356)
!6365 = !DILocation(line: 188, column: 25, scope: !6356)
!6366 = !DILocation(line: 188, column: 5, scope: !6356)
!6367 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !623, file: !623, line: 637, type: !5894, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6368)
!6368 = !{!6369, !6370}
!6369 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6367, file: !623, line: 637, type: !682)
!6370 = !DILocalVariable(name: "int_no", scope: !6367, file: !623, line: 639, type: !4008)
!6371 = !DILocation(line: 0, scope: !6367)
!6372 = !DILocation(line: 641, column: 10, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6367, file: !623, line: 641, column: 9)
!6374 = !DILocation(line: 641, column: 9, scope: !6367)
!6375 = !DILocation(line: 645, column: 14, scope: !6367)
!6376 = !DILocation(line: 646, column: 5, scope: !6367)
!6377 = !DILocation(line: 648, column: 5, scope: !6367)
!6378 = !DILocation(line: 649, column: 1, scope: !6367)
!6379 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !623, file: !623, line: 651, type: !6380, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6382)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!5752, !682, !128, !128, !128}
!6382 = !{!6383, !6384, !6385, !6386, !6387}
!6383 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6379, file: !623, line: 651, type: !682)
!6384 = !DILocalVariable(name: "xon", arg: 2, scope: !6379, file: !623, line: 652, type: !128)
!6385 = !DILocalVariable(name: "xoff", arg: 3, scope: !6379, file: !623, line: 653, type: !128)
!6386 = !DILocalVariable(name: "escape_character", arg: 4, scope: !6379, file: !623, line: 654, type: !128)
!6387 = !DILocalVariable(name: "int_no", scope: !6379, file: !623, line: 656, type: !4008)
!6388 = !DILocation(line: 0, scope: !6379)
!6389 = !DILocation(line: 658, column: 10, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6379, file: !623, line: 658, column: 9)
!6391 = !DILocation(line: 658, column: 9, scope: !6379)
!6392 = !DILocation(line: 662, column: 14, scope: !6379)
!6393 = !DILocation(line: 663, column: 5, scope: !6379)
!6394 = !DILocation(line: 665, column: 5, scope: !6379)
!6395 = !DILocation(line: 666, column: 1, scope: !6379)
!6396 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !623, file: !623, line: 668, type: !5894, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6397)
!6397 = !{!6398, !6399}
!6398 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6396, file: !623, line: 668, type: !682)
!6399 = !DILocalVariable(name: "int_no", scope: !6396, file: !623, line: 670, type: !4008)
!6400 = !DILocation(line: 0, scope: !6396)
!6401 = !DILocation(line: 672, column: 10, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6396, file: !623, line: 672, column: 9)
!6403 = !DILocation(line: 672, column: 9, scope: !6396)
!6404 = !DILocation(line: 676, column: 14, scope: !6396)
!6405 = !DILocation(line: 677, column: 5, scope: !6396)
!6406 = !DILocation(line: 679, column: 5, scope: !6396)
!6407 = !DILocation(line: 680, column: 1, scope: !6396)
!6408 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !623, file: !623, line: 683, type: !6409, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !622, retainedNodes: !6411)
!6409 = !DISubroutineType(types: !6410)
!6410 = !{!5752, !682, !136}
!6411 = !{!6412, !6413}
!6412 = !DILocalVariable(name: "uart_port", arg: 1, scope: !6408, file: !623, line: 683, type: !682)
!6413 = !DILocalVariable(name: "timeout", arg: 2, scope: !6408, file: !623, line: 683, type: !136)
!6414 = !DILocation(line: 0, scope: !6408)
!6415 = !DILocation(line: 685, column: 10, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6408, file: !623, line: 685, column: 9)
!6417 = !DILocation(line: 685, column: 9, scope: !6408)
!6418 = !DILocation(line: 689, column: 19, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6408, file: !623, line: 689, column: 9)
!6420 = !DILocation(line: 0, scope: !6419)
!6421 = !DILocation(line: 696, column: 1, scope: !6408)
!6422 = distinct !DISubprogram(name: "__io_putchar", scope: !732, file: !732, line: 67, type: !6423, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6425)
!6423 = !DISubroutineType(types: !6424)
!6424 = !{!53, !53}
!6425 = !{!6426}
!6426 = !DILocalVariable(name: "ch", arg: 1, scope: !6422, file: !732, line: 67, type: !53)
!6427 = !DILocation(line: 0, scope: !6422)
!6428 = !DILocation(line: 74, column: 35, scope: !6422)
!6429 = !DILocation(line: 74, column: 5, scope: !6422)
!6430 = !DILocation(line: 75, column: 5, scope: !6422)
!6431 = distinct !DISubprogram(name: "log_uart_init", scope: !732, file: !732, line: 79, type: !181, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6432)
!6432 = !{!6433}
!6433 = !DILocalVariable(name: "uart_config", scope: !6431, file: !732, line: 81, type: !6434)
!6434 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !626, line: 378, baseType: !6435)
!6435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !626, line: 373, size: 128, elements: !6436)
!6436 = !{!6437, !6438, !6439, !6440}
!6437 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !6435, file: !626, line: 374, baseType: !697, size: 32)
!6438 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !6435, file: !626, line: 375, baseType: !699, size: 32, offset: 32)
!6439 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !6435, file: !626, line: 376, baseType: !701, size: 32, offset: 64)
!6440 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6435, file: !626, line: 377, baseType: !703, size: 32, offset: 96)
!6441 = !DILocation(line: 81, column: 5, scope: !6431)
!6442 = !DILocation(line: 81, column: 23, scope: !6431)
!6443 = !DILocation(line: 83, column: 5, scope: !6431)
!6444 = !DILocation(line: 84, column: 5, scope: !6431)
!6445 = !DILocation(line: 85, column: 5, scope: !6431)
!6446 = !DILocation(line: 86, column: 5, scope: !6431)
!6447 = !DILocation(line: 88, column: 17, scope: !6431)
!6448 = !DILocation(line: 88, column: 26, scope: !6431)
!6449 = !DILocation(line: 89, column: 17, scope: !6431)
!6450 = !DILocation(line: 89, column: 29, scope: !6431)
!6451 = !DILocation(line: 90, column: 17, scope: !6431)
!6452 = !DILocation(line: 90, column: 26, scope: !6431)
!6453 = !DILocation(line: 91, column: 17, scope: !6431)
!6454 = !DILocation(line: 91, column: 24, scope: !6431)
!6455 = !DILocation(line: 92, column: 5, scope: !6431)
!6456 = !DILocation(line: 93, column: 1, scope: !6431)
!6457 = distinct !DISubprogram(name: "i2s_write_data_example", scope: !732, file: !732, line: 261, type: !181, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6458)
!6458 = !{!6459}
!6459 = !DILocalVariable(name: "result", scope: !6457, file: !732, line: 263, type: !6460)
!6460 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !129, line: 20, baseType: !6461)
!6461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !131, line: 41, baseType: !6462)
!6462 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!6463 = !DILocation(line: 0, scope: !6457)
!6464 = !DILocation(line: 265, column: 5, scope: !6457)
!6465 = !DILocation(line: 267, column: 14, scope: !6457)
!6466 = !DILocation(line: 268, column: 16, scope: !6467)
!6467 = distinct !DILexicalBlock(scope: !6457, file: !732, line: 268, column: 9)
!6468 = !DILocation(line: 268, column: 9, scope: !6457)
!6469 = !DILocation(line: 269, column: 9, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6467, file: !732, line: 268, column: 23)
!6471 = !DILocation(line: 270, column: 5, scope: !6470)
!6472 = !DILocation(line: 272, column: 5, scope: !6457)
!6473 = !DILocation(line: 273, column: 5, scope: !6457)
!6474 = !DILocation(line: 274, column: 5, scope: !6457)
!6475 = !DILocation(line: 276, column: 5, scope: !6457)
!6476 = !DILocation(line: 277, column: 5, scope: !6457)
!6477 = !DILocation(line: 280, column: 5, scope: !6457)
!6478 = !DILocation(line: 281, column: 1, scope: !6457)
!6479 = distinct !DISubprogram(name: "i2s_configure", scope: !732, file: !732, line: 112, type: !6480, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6482)
!6480 = !DISubroutineType(types: !6481)
!6481 = !{!6460}
!6482 = !{!6483, !6502}
!6483 = !DILocalVariable(name: "i2s_config", scope: !6479, file: !732, line: 114, type: !6484)
!6484 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_config_t", file: !443, line: 685, baseType: !6485)
!6485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 671, size: 480, elements: !6486)
!6486 = !{!6487, !6496, !6497, !6498, !6499, !6500, !6501}
!6487 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_in", scope: !6485, file: !443, line: 672, baseType: !6488, size: 160)
!6488 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_i2s_link_config_t", file: !443, line: 667, baseType: !6489)
!6489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 658, size: 160, elements: !6490)
!6490 = !{!6491, !6492, !6493, !6494, !6495}
!6491 = !DIDerivedType(tag: DW_TAG_member, name: "sample_rate", scope: !6489, file: !443, line: 659, baseType: !574, size: 32)
!6492 = !DIDerivedType(tag: DW_TAG_member, name: "channel_number", scope: !6489, file: !443, line: 660, baseType: !576, size: 32, offset: 32)
!6493 = !DIDerivedType(tag: DW_TAG_member, name: "msb_offset", scope: !6489, file: !443, line: 662, baseType: !136, size: 32, offset: 64)
!6494 = !DIDerivedType(tag: DW_TAG_member, name: "lr_swap", scope: !6489, file: !443, line: 664, baseType: !579, size: 32, offset: 96)
!6495 = !DIDerivedType(tag: DW_TAG_member, name: "word_select_inverse", scope: !6489, file: !443, line: 665, baseType: !581, size: 32, offset: 128)
!6496 = !DIDerivedType(tag: DW_TAG_member, name: "i2s_out", scope: !6485, file: !443, line: 673, baseType: !6488, size: 160, offset: 160)
!6497 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !6485, file: !443, line: 674, baseType: !584, size: 32, offset: 320)
!6498 = !DIDerivedType(tag: DW_TAG_member, name: "frame_sync_width", scope: !6485, file: !443, line: 679, baseType: !586, size: 32, offset: 352)
!6499 = !DIDerivedType(tag: DW_TAG_member, name: "sample_width", scope: !6485, file: !443, line: 680, baseType: !588, size: 32, offset: 384)
!6500 = !DIDerivedType(tag: DW_TAG_member, name: "tx_mode", scope: !6485, file: !443, line: 681, baseType: !590, size: 32, offset: 416)
!6501 = !DIDerivedType(tag: DW_TAG_member, name: "rx_down_rate", scope: !6485, file: !443, line: 683, baseType: !592, size: 32, offset: 448)
!6502 = !DILocalVariable(name: "result", scope: !6479, file: !732, line: 115, type: !5350)
!6503 = !DILocation(line: 114, column: 5, scope: !6479)
!6504 = !DILocation(line: 114, column: 22, scope: !6479)
!6505 = !DILocation(line: 0, scope: !6479)
!6506 = !DILocation(line: 118, column: 14, scope: !6479)
!6507 = !DILocation(line: 119, column: 27, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6479, file: !732, line: 119, column: 9)
!6509 = !DILocation(line: 119, column: 9, scope: !6479)
!6510 = !DILocation(line: 120, column: 9, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6508, file: !732, line: 119, column: 38)
!6512 = !DILocation(line: 121, column: 9, scope: !6511)
!6513 = !DILocation(line: 125, column: 16, scope: !6479)
!6514 = !DILocation(line: 125, column: 27, scope: !6479)
!6515 = !DILocation(line: 126, column: 16, scope: !6479)
!6516 = !DILocation(line: 126, column: 29, scope: !6479)
!6517 = !DILocation(line: 127, column: 16, scope: !6479)
!6518 = !DILocation(line: 127, column: 24, scope: !6479)
!6519 = !DILocation(line: 128, column: 24, scope: !6479)
!6520 = !DILocation(line: 128, column: 39, scope: !6479)
!6521 = !DILocation(line: 130, column: 24, scope: !6479)
!6522 = !DILocation(line: 130, column: 36, scope: !6479)
!6523 = !DILocation(line: 131, column: 23, scope: !6479)
!6524 = !DILocation(line: 131, column: 35, scope: !6479)
!6525 = !DILocation(line: 132, column: 23, scope: !6479)
!6526 = !DILocation(line: 132, column: 34, scope: !6479)
!6527 = !DILocation(line: 133, column: 24, scope: !6479)
!6528 = !DILocation(line: 133, column: 35, scope: !6479)
!6529 = !DILocation(line: 134, column: 23, scope: !6479)
!6530 = !DILocation(line: 134, column: 43, scope: !6479)
!6531 = !DILocation(line: 135, column: 24, scope: !6479)
!6532 = !DILocation(line: 135, column: 44, scope: !6479)
!6533 = !DILocation(line: 136, column: 23, scope: !6479)
!6534 = !DILocation(line: 136, column: 31, scope: !6479)
!6535 = !DILocation(line: 137, column: 24, scope: !6479)
!6536 = !DILocation(line: 137, column: 32, scope: !6479)
!6537 = !DILocation(line: 139, column: 14, scope: !6479)
!6538 = !DILocation(line: 140, column: 27, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6479, file: !732, line: 140, column: 9)
!6540 = !DILocation(line: 140, column: 9, scope: !6479)
!6541 = !DILocation(line: 141, column: 9, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6539, file: !732, line: 140, column: 38)
!6543 = !DILocation(line: 142, column: 9, scope: !6542)
!6544 = !DILocation(line: 145, column: 14, scope: !6479)
!6545 = !DILocation(line: 146, column: 27, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6479, file: !732, line: 146, column: 9)
!6547 = !DILocation(line: 146, column: 9, scope: !6479)
!6548 = !DILocation(line: 147, column: 9, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6546, file: !732, line: 146, column: 38)
!6550 = !DILocation(line: 148, column: 9, scope: !6549)
!6551 = !DILocation(line: 151, column: 14, scope: !6479)
!6552 = !DILocation(line: 152, column: 27, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6479, file: !732, line: 152, column: 9)
!6554 = !DILocation(line: 152, column: 9, scope: !6479)
!6555 = !DILocation(line: 153, column: 9, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6553, file: !732, line: 152, column: 38)
!6557 = !DILocation(line: 154, column: 9, scope: !6556)
!6558 = !DILocation(line: 158, column: 1, scope: !6479)
!6559 = distinct !DISubprogram(name: "i2s_write", scope: !732, file: !732, line: 177, type: !181, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6560)
!6560 = !{!6561, !6562}
!6561 = !DILocalVariable(name: "write_sample_count", scope: !6559, file: !732, line: 179, type: !136)
!6562 = !DILocalVariable(name: "i", scope: !6559, file: !732, line: 180, type: !136)
!6563 = !DILocation(line: 179, column: 5, scope: !6559)
!6564 = !DILocation(line: 0, scope: !6559)
!6565 = !DILocation(line: 179, column: 14, scope: !6559)
!6566 = !DILocation(line: 181, column: 5, scope: !6559)
!6567 = !DILocation(line: 182, column: 9, scope: !6568)
!6568 = distinct !DILexicalBlock(scope: !6559, file: !732, line: 182, column: 9)
!6569 = !DILocation(line: 182, column: 28, scope: !6568)
!6570 = !DILocation(line: 182, column: 9, scope: !6559)
!6571 = !DILocation(line: 184, column: 30, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6573, file: !732, line: 183, column: 52)
!6573 = distinct !DILexicalBlock(scope: !6574, file: !732, line: 183, column: 9)
!6574 = distinct !DILexicalBlock(scope: !6575, file: !732, line: 183, column: 9)
!6575 = distinct !DILexicalBlock(scope: !6568, file: !732, line: 182, column: 53)
!6576 = !DILocation(line: 184, column: 13, scope: !6572)
!6577 = !DILocation(line: 183, column: 48, scope: !6573)
!6578 = !DILocation(line: 183, column: 23, scope: !6573)
!6579 = !DILocation(line: 183, column: 9, scope: !6574)
!6580 = distinct !{!6580, !6579, !6581}
!6581 = !DILocation(line: 185, column: 9, scope: !6574)
!6582 = !DILocation(line: 188, column: 1, scope: !6559)
!6583 = distinct !DISubprogram(name: "i2s_open", scope: !732, file: !732, line: 162, type: !181, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6584 = !DILocation(line: 164, column: 5, scope: !6583)
!6585 = !DILocation(line: 165, column: 5, scope: !6583)
!6586 = !DILocation(line: 166, column: 5, scope: !6583)
!6587 = !DILocation(line: 167, column: 1, scope: !6583)
!6588 = distinct !DISubprogram(name: "i2s_read", scope: !732, file: !732, line: 192, type: !181, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6589)
!6589 = !{!6590, !6591, !6592}
!6590 = !DILocalVariable(name: "read_sample_count", scope: !6588, file: !732, line: 194, type: !136)
!6591 = !DILocalVariable(name: "rx_data_temp", scope: !6588, file: !732, line: 195, type: !136)
!6592 = !DILocalVariable(name: "i", scope: !6588, file: !732, line: 196, type: !136)
!6593 = !DILocation(line: 194, column: 5, scope: !6588)
!6594 = !DILocation(line: 0, scope: !6588)
!6595 = !DILocation(line: 194, column: 14, scope: !6588)
!6596 = !DILocation(line: 195, column: 5, scope: !6588)
!6597 = !DILocation(line: 195, column: 14, scope: !6588)
!6598 = !DILocation(line: 198, column: 5, scope: !6588)
!6599 = !DILocation(line: 199, column: 9, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6588, file: !732, line: 198, column: 15)
!6601 = !DILocation(line: 200, column: 13, scope: !6602)
!6602 = distinct !DILexicalBlock(scope: !6600, file: !732, line: 200, column: 13)
!6603 = !DILocation(line: 200, column: 31, scope: !6602)
!6604 = !DILocation(line: 200, column: 13, scope: !6600)
!6605 = distinct !{!6605, !6598, !6606}
!6606 = !DILocation(line: 203, column: 5, scope: !6588)
!6607 = !DILocation(line: 205, column: 5, scope: !6588)
!6608 = !DILocation(line: 206, column: 12, scope: !6588)
!6609 = !DILocation(line: 206, column: 30, scope: !6588)
!6610 = !DILocation(line: 206, column: 5, scope: !6588)
!6611 = !DILocation(line: 207, column: 9, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6588, file: !732, line: 206, column: 36)
!6613 = !DILocation(line: 208, column: 13, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6612, file: !732, line: 208, column: 13)
!6615 = !DILocation(line: 208, column: 26, scope: !6614)
!6616 = !DILocation(line: 208, column: 13, scope: !6612)
!6617 = !DILocation(line: 209, column: 28, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6614, file: !732, line: 208, column: 32)
!6619 = !DILocation(line: 211, column: 13, scope: !6618)
!6620 = !DILocation(line: 213, column: 9, scope: !6612)
!6621 = distinct !{!6621, !6610, !6622}
!6622 = !DILocation(line: 214, column: 5, scope: !6588)
!6623 = !DILocation(line: 216, column: 5, scope: !6588)
!6624 = !DILocation(line: 217, column: 12, scope: !6588)
!6625 = !DILocation(line: 217, column: 30, scope: !6588)
!6626 = !DILocation(line: 217, column: 5, scope: !6588)
!6627 = !DILocation(line: 218, column: 9, scope: !6628)
!6628 = distinct !DILexicalBlock(scope: !6588, file: !732, line: 217, column: 36)
!6629 = !DILocation(line: 219, column: 15, scope: !6630)
!6630 = distinct !DILexicalBlock(scope: !6628, file: !732, line: 219, column: 13)
!6631 = !DILocation(line: 219, column: 13, scope: !6628)
!6632 = !DILocation(line: 220, column: 30, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6630, file: !732, line: 219, column: 41)
!6634 = !DILocation(line: 220, column: 13, scope: !6633)
!6635 = !DILocation(line: 220, column: 28, scope: !6633)
!6636 = !DILocation(line: 221, column: 14, scope: !6633)
!6637 = !DILocation(line: 225, column: 9, scope: !6628)
!6638 = distinct !{!6638, !6626, !6639}
!6639 = !DILocation(line: 226, column: 5, scope: !6588)
!6640 = !DILocation(line: 228, column: 1, scope: !6588)
!6641 = distinct !DISubprogram(name: "i2s_close", scope: !732, file: !732, line: 232, type: !181, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6642 = !DILocation(line: 235, column: 5, scope: !6641)
!6643 = !DILocation(line: 236, column: 5, scope: !6641)
!6644 = !DILocation(line: 237, column: 5, scope: !6641)
!6645 = !DILocation(line: 238, column: 5, scope: !6641)
!6646 = !DILocation(line: 239, column: 5, scope: !6641)
!6647 = !DILocation(line: 240, column: 5, scope: !6641)
!6648 = !DILocation(line: 241, column: 1, scope: !6641)
!6649 = distinct !DISubprogram(name: "i2s_dump", scope: !732, file: !732, line: 244, type: !181, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !6650)
!6650 = !{!6651}
!6651 = !DILocalVariable(name: "i", scope: !6649, file: !732, line: 246, type: !136)
!6652 = !DILocation(line: 0, scope: !6649)
!6653 = !DILocation(line: 247, column: 5, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6649, file: !732, line: 247, column: 5)
!6655 = !DILocation(line: 248, column: 66, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !732, line: 247, column: 48)
!6657 = distinct !DILexicalBlock(scope: !6654, file: !732, line: 247, column: 5)
!6658 = !DILocation(line: 248, column: 9, scope: !6656)
!6659 = !DILocation(line: 247, column: 44, scope: !6657)
!6660 = !DILocation(line: 247, column: 19, scope: !6657)
!6661 = distinct !{!6661, !6653, !6662}
!6662 = !DILocation(line: 249, column: 5, scope: !6654)
!6663 = !DILocation(line: 255, column: 68, scope: !6664)
!6664 = distinct !DILexicalBlock(scope: !6665, file: !732, line: 254, column: 48)
!6665 = distinct !DILexicalBlock(scope: !6666, file: !732, line: 254, column: 5)
!6666 = distinct !DILexicalBlock(scope: !6649, file: !732, line: 254, column: 5)
!6667 = !DILocation(line: 255, column: 9, scope: !6664)
!6668 = !DILocation(line: 254, column: 44, scope: !6665)
!6669 = !DILocation(line: 254, column: 19, scope: !6665)
!6670 = !DILocation(line: 254, column: 5, scope: !6666)
!6671 = distinct !{!6671, !6670, !6672}
!6672 = !DILocation(line: 256, column: 5, scope: !6666)
!6673 = !DILocation(line: 258, column: 1, scope: !6649)
!6674 = distinct !DISubprogram(name: "main", scope: !732, file: !732, line: 283, type: !3984, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6675 = !DILocation(line: 286, column: 5, scope: !6674)
!6676 = !DILocation(line: 289, column: 5, scope: !6674)
!6677 = !DILocation(line: 319, column: 3, scope: !6678, inlinedAt: !6679)
!6678 = distinct !DISubprogram(name: "__enable_irq", scope: !1316, file: !1316, line: 317, type: !181, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6679 = distinct !DILocation(line: 292, column: 5, scope: !6674)
!6680 = !{i64 504687}
!6681 = !DILocation(line: 496, column: 3, scope: !6682, inlinedAt: !6683)
!6682 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1316, file: !1316, line: 494, type: !181, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6683 = distinct !DILocation(line: 293, column: 5, scope: !6674)
!6684 = !{i64 508962}
!6685 = !DILocation(line: 296, column: 5, scope: !6674)
!6686 = !DILocation(line: 297, column: 5, scope: !6674)
!6687 = !DILocation(line: 298, column: 5, scope: !6674)
!6688 = !DILocation(line: 300, column: 5, scope: !6674)
!6689 = !DILocation(line: 302, column: 5, scope: !6674)
!6690 = !DILocation(line: 302, column: 5, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6692, file: !732, line: 302, column: 5)
!6692 = distinct !DILexicalBlock(scope: !6674, file: !732, line: 302, column: 5)
!6693 = distinct !{!6693, !6694, !6695}
!6694 = !DILocation(line: 302, column: 5, scope: !6692)
!6695 = !DILocation(line: 302, column: 13, scope: !6692)
!6696 = distinct !DISubprogram(name: "SystemClock_Config", scope: !732, file: !732, line: 95, type: !181, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6697 = !DILocation(line: 97, column: 5, scope: !6696)
!6698 = !DILocation(line: 98, column: 1, scope: !6696)
!6699 = distinct !DISubprogram(name: "prvSetupHardware", scope: !732, file: !732, line: 100, type: !181, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1285)
!6700 = !DILocation(line: 105, column: 5, scope: !6699)
!6701 = !DILocation(line: 108, column: 1, scope: !6699)
!6702 = distinct !DISubprogram(name: "SysTick_Set", scope: !785, file: !785, line: 70, type: !6357, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !6703)
!6703 = !{!6704, !6705}
!6704 = !DILocalVariable(name: "ticks", arg: 1, scope: !6702, file: !785, line: 70, type: !136)
!6705 = !DILocalVariable(name: "val", scope: !6702, file: !785, line: 72, type: !136)
!6706 = !DILocation(line: 0, scope: !6702)
!6707 = !DILocation(line: 74, column: 16, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6702, file: !785, line: 74, column: 9)
!6709 = !DILocation(line: 74, column: 21, scope: !6708)
!6710 = !DILocation(line: 74, column: 9, scope: !6702)
!6711 = !DILocation(line: 78, column: 20, scope: !6702)
!6712 = !DILocation(line: 80, column: 19, scope: !6702)
!6713 = !DILocation(line: 83, column: 20, scope: !6702)
!6714 = !DILocation(line: 84, column: 20, scope: !6702)
!6715 = !DILocation(line: 86, column: 19, scope: !6702)
!6716 = !DILocation(line: 88, column: 5, scope: !6702)
!6717 = !DILocation(line: 89, column: 1, scope: !6702)
!6718 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !785, file: !785, line: 98, type: !181, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1285)
!6719 = !DILocation(line: 100, column: 28, scope: !6718)
!6720 = !DILocation(line: 101, column: 1, scope: !6718)
!6721 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !785, file: !785, line: 110, type: !1317, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1285)
!6722 = !DILocation(line: 112, column: 12, scope: !6721)
!6723 = !DILocation(line: 112, column: 5, scope: !6721)
!6724 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !785, file: !785, line: 122, type: !181, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1285)
!6725 = !DILocation(line: 124, column: 23, scope: !6724)
!6726 = !DILocation(line: 124, column: 21, scope: !6724)
!6727 = !DILocation(line: 125, column: 1, scope: !6724)
!6728 = distinct !DISubprogram(name: "SystemInit", scope: !785, file: !785, line: 136, type: !181, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1285)
!6729 = !DILocation(line: 140, column: 16, scope: !6728)
!6730 = !DILocation(line: 144, column: 16, scope: !6728)
!6731 = !DILocation(line: 147, column: 16, scope: !6728)
!6732 = !DILocation(line: 150, column: 1, scope: !6728)
!6733 = distinct !DISubprogram(name: "CachePreInit", scope: !785, file: !785, line: 158, type: !181, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !1285)
!6734 = !DILocation(line: 161, column: 22, scope: !6733)
!6735 = !DILocation(line: 164, column: 21, scope: !6733)
!6736 = !DILocation(line: 167, column: 21, scope: !6733)
!6737 = !DILocation(line: 170, column: 29, scope: !6733)
!6738 = !DILocation(line: 171, column: 33, scope: !6733)
!6739 = !DILocation(line: 173, column: 28, scope: !6733)
!6740 = !DILocation(line: 178, column: 30, scope: !6733)
!6741 = !DILocation(line: 192, column: 1, scope: !6733)
!6742 = distinct !DISubprogram(name: "_close", scope: !845, file: !845, line: 11, type: !6423, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6743)
!6743 = !{!6744}
!6744 = !DILocalVariable(name: "file", arg: 1, scope: !6742, file: !845, line: 11, type: !53)
!6745 = !DILocation(line: 0, scope: !6742)
!6746 = !DILocation(line: 13, column: 5, scope: !6742)
!6747 = distinct !DISubprogram(name: "_fstat", scope: !845, file: !845, line: 16, type: !6748, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6796)
!6748 = !DISubroutineType(types: !6749)
!6749 = !{!53, !53, !6750}
!6750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6751, size: 32)
!6751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !6752, line: 27, size: 704, elements: !6753)
!6752 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!6753 = !{!6754, !6757, !6760, !6763, !6766, !6769, !6772, !6773, !6776, !6786, !6787, !6788, !6791, !6794}
!6754 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !6751, file: !6752, line: 29, baseType: !6755, size: 16)
!6755 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !849, line: 161, baseType: !6756)
!6756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !891, line: 56, baseType: !866)
!6757 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !6751, file: !6752, line: 30, baseType: !6758, size: 16, offset: 16)
!6758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !849, line: 139, baseType: !6759)
!6759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !891, line: 75, baseType: !216)
!6760 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !6751, file: !6752, line: 31, baseType: !6761, size: 32, offset: 32)
!6761 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !849, line: 189, baseType: !6762)
!6762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !891, line: 90, baseType: !137)
!6763 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !6751, file: !6752, line: 32, baseType: !6764, size: 16, offset: 64)
!6764 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !849, line: 194, baseType: !6765)
!6765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !891, line: 209, baseType: !216)
!6766 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !6751, file: !6752, line: 33, baseType: !6767, size: 16, offset: 80)
!6767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !849, line: 165, baseType: !6768)
!6768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !891, line: 60, baseType: !216)
!6769 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !6751, file: !6752, line: 34, baseType: !6770, size: 16, offset: 96)
!6770 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !849, line: 169, baseType: !6771)
!6771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !891, line: 63, baseType: !216)
!6772 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !6751, file: !6752, line: 35, baseType: !6755, size: 16, offset: 112)
!6773 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !6751, file: !6752, line: 36, baseType: !6774, size: 32, offset: 128)
!6774 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !849, line: 157, baseType: !6775)
!6775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !891, line: 102, baseType: !909)
!6776 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !6751, file: !6752, line: 42, baseType: !6777, size: 128, offset: 192)
!6777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !6778, line: 47, size: 128, elements: !6779)
!6778 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!6779 = !{!6780, !6785}
!6780 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6777, file: !6778, line: 48, baseType: !6781, size: 64)
!6781 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6782, line: 42, baseType: !6783)
!6782 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!6783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !131, line: 200, baseType: !6784)
!6784 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !6777, file: !6778, line: 49, baseType: !892, size: 32, offset: 64)
!6786 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !6751, file: !6752, line: 43, baseType: !6777, size: 128, offset: 320)
!6787 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !6751, file: !6752, line: 44, baseType: !6777, size: 128, offset: 448)
!6788 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !6751, file: !6752, line: 45, baseType: !6789, size: 32, offset: 576)
!6789 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !849, line: 102, baseType: !6790)
!6790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !891, line: 34, baseType: !892)
!6791 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !6751, file: !6752, line: 46, baseType: !6792, size: 32, offset: 608)
!6792 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !849, line: 97, baseType: !6793)
!6793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !891, line: 30, baseType: !892)
!6794 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !6751, file: !6752, line: 48, baseType: !6795, size: 64, offset: 640)
!6795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 64, elements: !410)
!6796 = !{!6797, !6798}
!6797 = !DILocalVariable(name: "file", arg: 1, scope: !6747, file: !845, line: 16, type: !53)
!6798 = !DILocalVariable(name: "st", arg: 2, scope: !6747, file: !845, line: 16, type: !6750)
!6799 = !DILocation(line: 0, scope: !6747)
!6800 = !DILocation(line: 18, column: 5, scope: !6747)
!6801 = distinct !DISubprogram(name: "_isatty", scope: !845, file: !845, line: 22, type: !6423, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6802)
!6802 = !{!6803}
!6803 = !DILocalVariable(name: "file", arg: 1, scope: !6801, file: !845, line: 22, type: !53)
!6804 = !DILocation(line: 0, scope: !6801)
!6805 = !DILocation(line: 24, column: 5, scope: !6801)
!6806 = distinct !DISubprogram(name: "_lseek", scope: !845, file: !845, line: 27, type: !6807, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6809)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{!53, !53, !53, !53}
!6809 = !{!6810, !6811, !6812}
!6810 = !DILocalVariable(name: "file", arg: 1, scope: !6806, file: !845, line: 27, type: !53)
!6811 = !DILocalVariable(name: "ptr", arg: 2, scope: !6806, file: !845, line: 27, type: !53)
!6812 = !DILocalVariable(name: "dir", arg: 3, scope: !6806, file: !845, line: 27, type: !53)
!6813 = !DILocation(line: 0, scope: !6806)
!6814 = !DILocation(line: 29, column: 5, scope: !6806)
!6815 = distinct !DISubprogram(name: "_open", scope: !845, file: !845, line: 32, type: !6816, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6818)
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!53, !884, !53, !53}
!6818 = !{!6819, !6820, !6821}
!6819 = !DILocalVariable(name: "name", arg: 1, scope: !6815, file: !845, line: 32, type: !884)
!6820 = !DILocalVariable(name: "flags", arg: 2, scope: !6815, file: !845, line: 32, type: !53)
!6821 = !DILocalVariable(name: "mode", arg: 3, scope: !6815, file: !845, line: 32, type: !53)
!6822 = !DILocation(line: 0, scope: !6815)
!6823 = !DILocation(line: 34, column: 5, scope: !6815)
!6824 = distinct !DISubprogram(name: "_read", scope: !845, file: !845, line: 37, type: !6825, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6827)
!6825 = !DISubroutineType(types: !6826)
!6826 = !{!53, !53, !850, !53}
!6827 = !{!6828, !6829, !6830}
!6828 = !DILocalVariable(name: "file", arg: 1, scope: !6824, file: !845, line: 37, type: !53)
!6829 = !DILocalVariable(name: "ptr", arg: 2, scope: !6824, file: !845, line: 37, type: !850)
!6830 = !DILocalVariable(name: "len", arg: 3, scope: !6824, file: !845, line: 37, type: !53)
!6831 = !DILocation(line: 0, scope: !6824)
!6832 = !DILocation(line: 39, column: 5, scope: !6824)
!6833 = distinct !DISubprogram(name: "_write", scope: !845, file: !845, line: 52, type: !6825, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6834)
!6834 = !{!6835, !6836, !6837, !6838}
!6835 = !DILocalVariable(name: "file", arg: 1, scope: !6833, file: !845, line: 52, type: !53)
!6836 = !DILocalVariable(name: "ptr", arg: 2, scope: !6833, file: !845, line: 52, type: !850)
!6837 = !DILocalVariable(name: "len", arg: 3, scope: !6833, file: !845, line: 52, type: !53)
!6838 = !DILocalVariable(name: "i", scope: !6833, file: !845, line: 54, type: !53)
!6839 = !DILocation(line: 0, scope: !6833)
!6840 = !DILocation(line: 56, column: 19, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6842, file: !845, line: 56, column: 5)
!6842 = distinct !DILexicalBlock(scope: !6833, file: !845, line: 56, column: 5)
!6843 = !DILocation(line: 56, column: 5, scope: !6842)
!6844 = !DILocation(line: 57, column: 26, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6841, file: !845, line: 56, column: 31)
!6846 = !DILocation(line: 57, column: 22, scope: !6845)
!6847 = !DILocation(line: 57, column: 9, scope: !6845)
!6848 = !DILocation(line: 56, column: 27, scope: !6841)
!6849 = distinct !{!6849, !6843, !6850}
!6850 = !DILocation(line: 58, column: 5, scope: !6842)
!6851 = !DILocation(line: 60, column: 5, scope: !6833)
!6852 = !DILocation(line: 0, scope: !844)
!6853 = !DILocation(line: 70, column: 5, scope: !844)
!6854 = !{i64 1109}
!6855 = !DILocation(line: 72, column: 14, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !844, file: !845, line: 72, column: 9)
!6857 = !DILocation(line: 72, column: 11, scope: !6856)
!6858 = !DILocation(line: 72, column: 9, scope: !844)
!6859 = !DILocation(line: 78, column: 32, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !844, file: !845, line: 78, column: 9)
!6861 = !DILocation(line: 78, column: 15, scope: !6860)
!6862 = !DILocation(line: 89, column: 1, scope: !844)
!6863 = !DILocation(line: 78, column: 9, scope: !844)
!6864 = distinct !DISubprogram(name: "_exit", scope: !845, file: !845, line: 91, type: !994, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6865)
!6865 = !{!6866}
!6866 = !DILocalVariable(name: "__status", arg: 1, scope: !6864, file: !845, line: 91, type: !53)
!6867 = !DILocation(line: 0, scope: !6864)
!6868 = !DILocation(line: 93, column: 5, scope: !6864)
!6869 = !DILocation(line: 94, column: 5, scope: !6864)
!6870 = distinct !{!6870, !6869, !6871}
!6871 = !DILocation(line: 96, column: 5, scope: !6864)
!6872 = distinct !DISubprogram(name: "_kill", scope: !845, file: !845, line: 100, type: !6873, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !6875)
!6873 = !DISubroutineType(types: !6874)
!6874 = !{!53, !53, !53}
!6875 = !{!6876, !6877}
!6876 = !DILocalVariable(name: "pid", arg: 1, scope: !6872, file: !845, line: 100, type: !53)
!6877 = !DILocalVariable(name: "sig", arg: 2, scope: !6872, file: !845, line: 100, type: !53)
!6878 = !DILocation(line: 0, scope: !6872)
!6879 = !DILocation(line: 102, column: 5, scope: !6872)
!6880 = !DILocation(line: 103, column: 5, scope: !6872)
!6881 = distinct !DISubprogram(name: "_getpid", scope: !845, file: !845, line: 107, type: !6882, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1040, retainedNodes: !1285)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!6884}
!6884 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !849, line: 174, baseType: !6885)
!6885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !891, line: 52, baseType: !53)
!6886 = !DILocation(line: 109, column: 5, scope: !6881)
!6887 = !DILocation(line: 110, column: 5, scope: !6881)
