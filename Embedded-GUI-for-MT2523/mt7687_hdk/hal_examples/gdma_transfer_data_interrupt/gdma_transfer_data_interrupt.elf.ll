; ModuleID = './build/gdma_transfer_data_interrupt.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%union.CACHE_CON_Type = type { %struct.anon }
%struct.anon = type { i32 }
%struct.CACHE_ENTRY_Type = type { %union.CACHE_CON_Type, %union.CACHE_CON_Type }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_gdma_callback_context = type { void (i32, i8*)*, i8* }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_gdma_callback_context, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
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
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !198
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !211
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !213
@g_cache_status = dso_local global i8 0, align 1, !dbg !233
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !316
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@__FUNCTION__.hal_gdma_init = private unnamed_addr constant [14 x i8] c"hal_gdma_init\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"channel invalid: %d\00", align 1
@g_gdma_callback_context = internal global [2 x %struct.hal_gdma_callback_context] zeroinitializer, align 4, !dbg !418
@__FUNCTION__.hal_gdma_deinit = private unnamed_addr constant [16 x i8] c"hal_gdma_deinit\00", align 1
@__FUNCTION__.hal_gdma_start_interrupt = private unnamed_addr constant [25 x i8] c"hal_gdma_start_interrupt\00", align 1
@.str.1.20 = private unnamed_addr constant [30 x i8] c"DMA_FullSize_GetChannel fail.\00", align 1
@__FUNCTION__.hal_gdma_start_polling = private unnamed_addr constant [23 x i8] c"hal_gdma_start_polling\00", align 1
@__FUNCTION__.hal_gdma_register_callback = private unnamed_addr constant [27 x i8] c"hal_gdma_register_callback\00", align 1
@__FUNCTION__.hal_gdma_get_running_status = private unnamed_addr constant [28 x i8] c"hal_gdma_get_running_status\00", align 1
@__FUNCTION__.hal_gdma_stop = private unnamed_addr constant [14 x i8] c"hal_gdma_stop\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !503
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !560
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.21 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.22 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.23 = private unnamed_addr constant [30 x i8] c"\0D\0A ---gdma_example begin---\0D\0A\00", align 1
@source_data = internal global [64 x i8] zeroinitializer, align 4, !dbg !612
@destination_data = internal global [64 x i8] zeroinitializer, align 4, !dbg !653
@.str.3.24 = private unnamed_addr constant [54 x i8] c"GDMA destination data is not match with source data.\0A\00", align 1
@.str.4.25 = private unnamed_addr constant [36 x i8] c"\0D\0A ---gdma_example finished!!!---\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"example project test success.\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !658
@System_Initialize_Done = internal global i32 0, align 4, !dbg !716
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !718
@end = external dso_local global i8, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.33 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.34 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:22 GMT +00:00\00", align 1, !dbg !927
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !932
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !936

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @DMA_ERROR_LISR() #0 !dbg !1162 {
  br label %1, !dbg !1164

1:                                                ; preds = %0, %1
  br label %1, !dbg !1164, !llvm.loop !1165
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Stop(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1167 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1171, metadata !DIExpression()), !dbg !1172
  %2 = zext i8 %0 to i32, !dbg !1173
  %3 = shl nuw nsw i32 %2, 8, !dbg !1173
  %4 = or i32 %3, -2097086440, !dbg !1173
  %5 = inttoptr i32 %4 to i32*, !dbg !1173
  store volatile i32 0, i32* %5, align 8, !dbg !1173
  %6 = or i32 %3, -2097086432, !dbg !1174
  %7 = inttoptr i32 %6 to i32*, !dbg !1174
  store volatile i32 32768, i32* %7, align 32, !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Run(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1176 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1178, metadata !DIExpression()), !dbg !1179
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1180
  %2 = zext i8 %0 to i32, !dbg !1181
  %3 = shl nuw nsw i32 %2, 8, !dbg !1181
  %4 = or i32 %3, -2097086440, !dbg !1181
  %5 = inttoptr i32 %4 to i32*, !dbg !1181
  store volatile i32 32768, i32* %5, align 8, !dbg !1181
  ret void, !dbg !1182
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_GetChannel(i32 noundef %0) local_unnamed_addr #3 !dbg !1183 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1187, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 -1, metadata !1189, metadata !DIExpression()), !dbg !1191
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1192, !srcloc !1201
  call void @llvm.dbg.value(metadata i32 %2, metadata !1198, metadata !DIExpression()) #15, !dbg !1202
  call void @llvm.dbg.value(metadata i32 %2, metadata !1190, metadata !DIExpression()), !dbg !1191
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1203, !srcloc !1206
  call void @llvm.dbg.value(metadata i8 3, metadata !1188, metadata !DIExpression()), !dbg !1191
  %3 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 3, metadata !1188, metadata !DIExpression()), !dbg !1191
  br label %4, !dbg !1207

4:                                                ; preds = %1, %13
  %5 = phi i32 [ 3, %1 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1188, metadata !DIExpression()), !dbg !1191
  %6 = shl nuw nsw i32 1, %5, !dbg !1209
  %7 = and i32 %3, %6, !dbg !1213
  %8 = icmp eq i32 %7, 0, !dbg !1214
  br i1 %8, label %13, label %9, !dbg !1215

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i8, !dbg !1191
  call void @llvm.dbg.value(metadata i8 %10, metadata !1189, metadata !DIExpression()), !dbg !1191
  %11 = xor i32 %6, -1, !dbg !1216
  %12 = and i32 %3, %11, !dbg !1218
  store i32 %12, i32* @DMA_Channel_Status, align 4, !dbg !1218
  br label %16, !dbg !1219

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %5, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %14, metadata !1188, metadata !DIExpression()), !dbg !1191
  %15 = icmp eq i32 %14, 12, !dbg !1221
  br i1 %15, label %16, label %4, !dbg !1207, !llvm.loop !1222

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ -1, %13 ], !dbg !1191
  call void @llvm.dbg.value(metadata i8 %17, metadata !1189, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %2, metadata !1224, metadata !DIExpression()) #15, !dbg !1229
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1232, !srcloc !1233
  %18 = zext i8 %17 to i32, !dbg !1234
  %19 = add nsw i32 %18, -1, !dbg !1235
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %19, !dbg !1236
  store i32 %0, i32* %20, align 4, !dbg !1237
  ret i8 %17, !dbg !1238
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1239 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1241, metadata !DIExpression()), !dbg !1243
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1244, !srcloc !1201
  call void @llvm.dbg.value(metadata i32 %2, metadata !1198, metadata !DIExpression()) #15, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %2, metadata !1242, metadata !DIExpression()), !dbg !1243
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1248, !srcloc !1206
  %3 = zext i8 %0 to i32, !dbg !1250
  %4 = shl nuw i32 1, %3, !dbg !1251
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1252
  %6 = or i32 %5, %4, !dbg !1252
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1252
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1253
  %7 = add nsw i32 %3, -1, !dbg !1254
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1255
  store i32 26, i32* %8, align 4, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %2, metadata !1224, metadata !DIExpression()) #15, !dbg !1257
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1260, !srcloc !1233
  ret void, !dbg !1261
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1266, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 %1, metadata !1267, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8 -1, metadata !1269, metadata !DIExpression()), !dbg !1271
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1272, !srcloc !1201
  call void @llvm.dbg.value(metadata i32 %3, metadata !1198, metadata !DIExpression()) #15, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %3, metadata !1270, metadata !DIExpression()), !dbg !1271
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1276, !srcloc !1206
  %4 = add i8 %1, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i8 %4, metadata !1268, metadata !DIExpression()), !dbg !1271
  %5 = icmp ugt i8 %4, 2, !dbg !1279
  br i1 %5, label %20, label %6, !dbg !1281

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32, !dbg !1282
  %8 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1283
  %9 = shl nuw nsw i32 1, %7, !dbg !1285
  %10 = and i32 %8, %9, !dbg !1286
  %11 = icmp eq i32 %10, 0, !dbg !1287
  br i1 %11, label %15, label %12, !dbg !1288

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %4, metadata !1269, metadata !DIExpression()), !dbg !1271
  %13 = xor i32 %9, -1, !dbg !1289
  %14 = and i32 %8, %13, !dbg !1291
  store i32 %14, i32* @DMA_Channel_Status, align 4, !dbg !1291
  br label %15, !dbg !1292

15:                                               ; preds = %6, %12
  %16 = phi i8 [ %4, %12 ], [ -1, %6 ], !dbg !1271
  call void @llvm.dbg.value(metadata i8 %16, metadata !1269, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 %3, metadata !1224, metadata !DIExpression()) #15, !dbg !1293
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1296, !srcloc !1233
  %17 = zext i8 %16 to i32, !dbg !1297
  %18 = add nsw i32 %17, -1, !dbg !1298
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %18, !dbg !1299
  store i32 %0, i32* %19, align 4, !dbg !1300
  br label %20, !dbg !1301

20:                                               ; preds = %2, %15
  %21 = phi i8 [ %16, %15 ], [ -1, %2 ], !dbg !1271
  ret i8 %21, !dbg !1302
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FullSize_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1303 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1305, metadata !DIExpression()), !dbg !1307
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1308, !srcloc !1201
  call void @llvm.dbg.value(metadata i32 %2, metadata !1198, metadata !DIExpression()) #15, !dbg !1311
  call void @llvm.dbg.value(metadata i32 %2, metadata !1306, metadata !DIExpression()), !dbg !1307
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1312, !srcloc !1206
  %3 = zext i8 %0 to i32, !dbg !1314
  %4 = shl nuw i32 1, %3, !dbg !1315
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1316
  %6 = or i32 %5, %4, !dbg !1316
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1316
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1317
  %7 = add nsw i32 %3, -1, !dbg !1318
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1319
  store i32 26, i32* %8, align 4, !dbg !1320
  call void @llvm.dbg.value(metadata i32 %2, metadata !1224, metadata !DIExpression()) #15, !dbg !1321
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1324, !srcloc !1233
  ret void, !dbg !1325
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Config_Internal(i8 noundef zeroext %0, %struct.DMA_INPUT* noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 !dbg !1326 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1339, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata %struct.DMA_INPUT* %1, metadata !1340, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 %2, metadata !1341, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i1 %3, metadata !1342, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i8 %4, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i1 %5, metadata !1344, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 0, metadata !1345, metadata !DIExpression()), !dbg !1347
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %0) #14, !dbg !1348
  %7 = zext i8 %0 to i32, !dbg !1349
  %8 = icmp ugt i8 %0, 16, !dbg !1349
  br i1 %8, label %9, label %16, !dbg !1351

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1349
  %11 = shl nuw nsw i32 %7, 1, !dbg !1349
  %12 = add nsw i32 %11, -34, !dbg !1349
  %13 = shl nuw i32 1, %12, !dbg !1349
  %14 = and i32 %10, %13, !dbg !1349
  %15 = icmp eq i32 %14, 0, !dbg !1349
  br i1 %15, label %26, label %23, !dbg !1349

16:                                               ; preds = %6
  %17 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1349
  %18 = shl nuw nsw i32 %7, 1, !dbg !1349
  %19 = add nsw i32 %18, -2, !dbg !1349
  %20 = shl nuw i32 1, %19, !dbg !1349
  %21 = and i32 %17, %20, !dbg !1349
  %22 = icmp eq i32 %21, 0, !dbg !1349
  br i1 %22, label %31, label %23, !dbg !1351

23:                                               ; preds = %16, %9
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 187) #16, !dbg !1352
  br label %25, !dbg !1352

25:                                               ; preds = %25, %23
  br label %25, !dbg !1352, !llvm.loop !1356

26:                                               ; preds = %9
  %27 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1357
  %28 = shl i32 2, %12, !dbg !1357
  %29 = and i32 %27, %28, !dbg !1357
  %30 = icmp eq i32 %29, 0, !dbg !1357
  br i1 %30, label %39, label %36, !dbg !1357

31:                                               ; preds = %16
  %32 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1357
  %33 = shl i32 2, %19, !dbg !1357
  %34 = and i32 %32, %33, !dbg !1357
  %35 = icmp eq i32 %34, 0, !dbg !1357
  br i1 %35, label %39, label %36, !dbg !1359

36:                                               ; preds = %31, %26
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 191) #16, !dbg !1360
  br label %38, !dbg !1360

38:                                               ; preds = %38, %36
  br label %38, !dbg !1360, !llvm.loop !1364

39:                                               ; preds = %31, %26
  %40 = add nsw i32 %7, -1, !dbg !1365
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %40, !dbg !1365
  %42 = load i32, i32* %41, align 4, !dbg !1365
  %43 = icmp eq i32 %42, 26, !dbg !1365
  br i1 %43, label %44, label %47, !dbg !1367

44:                                               ; preds = %39
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 194) #16, !dbg !1368
  br label %46, !dbg !1368

46:                                               ; preds = %46, %44
  br label %46, !dbg !1368, !llvm.loop !1370

47:                                               ; preds = %39
  %48 = and i1 %2, %3, !dbg !1371
  br i1 %48, label %49, label %52, !dbg !1371

49:                                               ; preds = %47
  %50 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 197) #16, !dbg !1372
  br label %51, !dbg !1372

51:                                               ; preds = %51, %49
  br label %51, !dbg !1372, !llvm.loop !1377

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 2, !dbg !1378
  %54 = load i32, i32* %53, align 4, !dbg !1378
  %55 = icmp ugt i32 %54, 65535, !dbg !1378
  br i1 %55, label %56, label %59, !dbg !1380

56:                                               ; preds = %52
  %57 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 200) #16, !dbg !1381
  br label %58, !dbg !1381

58:                                               ; preds = %58, %56
  br label %58, !dbg !1381, !llvm.loop !1383

59:                                               ; preds = %52
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1384
  %60 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 0, !dbg !1385
  %61 = load i32, i32* %60, align 4, !dbg !1385
  switch i32 %61, label %252 [
    i32 0, label %62
    i32 1, label %94
    i32 2, label %126
    i32 3, label %140
    i32 4, label %196
  ], !dbg !1386

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1387
  br i1 %2, label %64, label %81, !dbg !1390

64:                                               ; preds = %62
  %65 = bitcast i8** %63 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1391
  %66 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1391
  %67 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 1, !dbg !1393
  call void @llvm.dbg.value(metadata i32 undef, metadata !1346, metadata !DIExpression()), !dbg !1347
  %68 = load i32, i32* %67, align 4, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %85, metadata !1346, metadata !DIExpression()), !dbg !1347
  %69 = shl i32 %68, 20, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %86, metadata !1345, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %70 = or i32 %69, 20, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %86, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %71 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 2, !dbg !1396
  %72 = load i32, i32* %71, align 4, !dbg !1396
  %73 = shl nuw nsw i32 %7, 8, !dbg !1396
  %74 = or i32 %73, -2097086464, !dbg !1396
  %75 = inttoptr i32 %74 to i32*, !dbg !1396
  store volatile i32 %72, i32* %75, align 256, !dbg !1396
  %76 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1399
  %77 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %76, i32 0, i32 3, !dbg !1399
  %78 = load i32, i32* %77, align 4, !dbg !1399
  %79 = or i32 %73, -2097086460, !dbg !1399
  %80 = inttoptr i32 %79 to i32*, !dbg !1399
  store volatile i32 %78, i32* %80, align 4, !dbg !1399
  br label %255, !dbg !1400

81:                                               ; preds = %62
  %82 = bitcast i8** %63 to %struct.DMA_HWMENU**, !dbg !1401
  %83 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %82, align 4, !dbg !1401
  %84 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 1, !dbg !1403
  call void @llvm.dbg.value(metadata i32 undef, metadata !1346, metadata !DIExpression()), !dbg !1347
  %85 = load i32, i32* %84, align 4, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %85, metadata !1346, metadata !DIExpression()), !dbg !1347
  %86 = shl i32 %85, 20, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %86, metadata !1345, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %86, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %87 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 2, !dbg !1404
  %88 = load i32, i32* %87, align 4, !dbg !1404
  %89 = shl nuw nsw i32 %7, 8, !dbg !1404
  %90 = or i32 %89, -2097086420, !dbg !1404
  %91 = inttoptr i32 %90 to i32*, !dbg !1404
  store volatile i32 %88, i32* %91, align 4, !dbg !1404
  %92 = select i1 %3, i32 52, i32 20, !dbg !1406
  %93 = or i32 %86, %92, !dbg !1406
  br label %255, !dbg !1406

94:                                               ; preds = %59
  %95 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1407
  br i1 %2, label %96, label %113, !dbg !1409

96:                                               ; preds = %94
  %97 = bitcast i8** %95 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1410
  %98 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1410
  %99 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 1, !dbg !1412
  call void @llvm.dbg.value(metadata i32 undef, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1347
  %100 = load i32, i32* %99, align 4, !dbg !1407
  %101 = shl i32 %100, 20, !dbg !1407
  call void @llvm.dbg.value(metadata i32 %118, metadata !1345, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %102 = or i32 %101, 262168, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %118, metadata !1345, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %103 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 2, !dbg !1414
  %104 = load i32, i32* %103, align 4, !dbg !1414
  %105 = shl nuw nsw i32 %7, 8, !dbg !1414
  %106 = or i32 %105, -2097086464, !dbg !1414
  %107 = inttoptr i32 %106 to i32*, !dbg !1414
  store volatile i32 %104, i32* %107, align 256, !dbg !1414
  %108 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1417
  %109 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %108, i32 0, i32 3, !dbg !1417
  %110 = load i32, i32* %109, align 4, !dbg !1417
  %111 = or i32 %105, -2097086460, !dbg !1417
  %112 = inttoptr i32 %111 to i32*, !dbg !1417
  store volatile i32 %110, i32* %112, align 4, !dbg !1417
  br label %255, !dbg !1418

113:                                              ; preds = %94
  %114 = bitcast i8** %95 to %struct.DMA_HWMENU**, !dbg !1419
  %115 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %114, align 4, !dbg !1419
  %116 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 1, !dbg !1421
  call void @llvm.dbg.value(metadata i32 undef, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1347
  %117 = load i32, i32* %116, align 4, !dbg !1407
  %118 = shl i32 %117, 20, !dbg !1407
  call void @llvm.dbg.value(metadata i32 %118, metadata !1345, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %118, metadata !1345, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %119 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 2, !dbg !1422
  %120 = load i32, i32* %119, align 4, !dbg !1422
  %121 = shl nuw nsw i32 %7, 8, !dbg !1422
  %122 = or i32 %121, -2097086420, !dbg !1422
  %123 = inttoptr i32 %122 to i32*, !dbg !1422
  store volatile i32 %120, i32* %123, align 4, !dbg !1422
  %124 = select i1 %3, i32 262200, i32 262168, !dbg !1424
  %125 = or i32 %118, %124, !dbg !1424
  br label %255, !dbg !1424

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1425
  %128 = bitcast i8** %127 to %struct.DMA_SWCOPYMENU**, !dbg !1425
  %129 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1425
  %130 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %129, i32 0, i32 0, !dbg !1425
  %131 = load i32, i32* %130, align 4, !dbg !1425
  %132 = shl nuw nsw i32 %7, 8, !dbg !1425
  %133 = or i32 %132, -2097086464, !dbg !1425
  %134 = inttoptr i32 %133 to i32*, !dbg !1425
  store volatile i32 %131, i32* %134, align 256, !dbg !1425
  %135 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1426
  %136 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %135, i32 0, i32 1, !dbg !1426
  %137 = load i32, i32* %136, align 4, !dbg !1426
  %138 = or i32 %132, -2097086460, !dbg !1426
  %139 = inttoptr i32 %138 to i32*, !dbg !1426
  store volatile i32 %137, i32* %139, align 4, !dbg !1426
  call void @llvm.dbg.value(metadata i32 12, metadata !1345, metadata !DIExpression()), !dbg !1347
  br label %255, !dbg !1427

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1428
  br i1 %2, label %142, label %171, !dbg !1430

142:                                              ; preds = %140
  %143 = bitcast i8** %141 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1431
  %144 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1431
  %145 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 1, !dbg !1433
  call void @llvm.dbg.value(metadata i32 undef, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1347
  %146 = load i32, i32* %145, align 4, !dbg !1428
  %147 = shl i32 %146, 20, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %176, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %148 = or i32 %147, 131092, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %176, metadata !1345, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %149 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 4, !dbg !1435
  %150 = load i8*, i8** %149, align 4, !dbg !1435
  %151 = ptrtoint i8* %150 to i32, !dbg !1435
  %152 = shl nuw nsw i32 %7, 8, !dbg !1435
  %153 = or i32 %152, -2097086456, !dbg !1435
  %154 = inttoptr i32 %153 to i32*, !dbg !1435
  store volatile i32 %151, i32* %154, align 8, !dbg !1435
  %155 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1438
  %156 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %155, i32 0, i32 5, !dbg !1438
  %157 = load i8*, i8** %156, align 4, !dbg !1438
  %158 = ptrtoint i8* %157 to i32, !dbg !1438
  %159 = or i32 %152, -2097086452, !dbg !1438
  %160 = inttoptr i32 %159 to i32*, !dbg !1438
  store volatile i32 %158, i32* %160, align 4, !dbg !1438
  %161 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1439
  %162 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %161, i32 0, i32 2, !dbg !1439
  %163 = load i32, i32* %162, align 4, !dbg !1439
  %164 = or i32 %152, -2097086464, !dbg !1439
  %165 = inttoptr i32 %164 to i32*, !dbg !1439
  store volatile i32 %163, i32* %165, align 256, !dbg !1439
  %166 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1440
  %167 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %166, i32 0, i32 3, !dbg !1440
  %168 = load i32, i32* %167, align 4, !dbg !1440
  %169 = or i32 %152, -2097086460, !dbg !1440
  %170 = inttoptr i32 %169 to i32*, !dbg !1440
  store volatile i32 %168, i32* %170, align 4, !dbg !1440
  br label %255, !dbg !1441

171:                                              ; preds = %140
  %172 = bitcast i8** %141 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1442
  %173 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1442
  %174 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 1, !dbg !1444
  call void @llvm.dbg.value(metadata i32 undef, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1347
  %175 = load i32, i32* %174, align 4, !dbg !1428
  %176 = shl i32 %175, 20, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %176, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %176, metadata !1345, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %177 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 3, !dbg !1445
  %178 = load i8*, i8** %177, align 4, !dbg !1445
  %179 = ptrtoint i8* %178 to i32, !dbg !1445
  %180 = shl nuw nsw i32 %7, 8, !dbg !1445
  %181 = or i32 %180, -2097086456, !dbg !1445
  %182 = inttoptr i32 %181 to i32*, !dbg !1445
  store volatile i32 %179, i32* %182, align 8, !dbg !1445
  %183 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1447
  %184 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %183, i32 0, i32 4, !dbg !1447
  %185 = load i8*, i8** %184, align 4, !dbg !1447
  %186 = ptrtoint i8* %185 to i32, !dbg !1447
  %187 = or i32 %180, -2097086452, !dbg !1447
  %188 = inttoptr i32 %187 to i32*, !dbg !1447
  store volatile i32 %186, i32* %188, align 4, !dbg !1447
  %189 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1448
  %190 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %189, i32 0, i32 2, !dbg !1448
  %191 = load i32, i32* %190, align 4, !dbg !1448
  %192 = or i32 %180, -2097086420, !dbg !1448
  %193 = inttoptr i32 %192 to i32*, !dbg !1448
  store volatile i32 %191, i32* %193, align 4, !dbg !1448
  %194 = select i1 %3, i32 131124, i32 131092, !dbg !1449
  %195 = or i32 %176, %194, !dbg !1449
  br label %255, !dbg !1449

196:                                              ; preds = %59
  %197 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1450
  br i1 %2, label %198, label %227, !dbg !1452

198:                                              ; preds = %196
  %199 = bitcast i8** %197 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1453
  %200 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1453
  %201 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 1, !dbg !1455
  call void @llvm.dbg.value(metadata i32 undef, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1347
  %202 = load i32, i32* %201, align 4, !dbg !1450
  %203 = shl i32 %202, 20, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %232, metadata !1345, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %204 = or i32 %203, 458776, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %232, metadata !1345, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %205 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 4, !dbg !1457
  %206 = load i8*, i8** %205, align 4, !dbg !1457
  %207 = ptrtoint i8* %206 to i32, !dbg !1457
  %208 = shl nuw nsw i32 %7, 8, !dbg !1457
  %209 = or i32 %208, -2097086456, !dbg !1457
  %210 = inttoptr i32 %209 to i32*, !dbg !1457
  store volatile i32 %207, i32* %210, align 8, !dbg !1457
  %211 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1460
  %212 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %211, i32 0, i32 5, !dbg !1460
  %213 = load i8*, i8** %212, align 4, !dbg !1460
  %214 = ptrtoint i8* %213 to i32, !dbg !1460
  %215 = or i32 %208, -2097086452, !dbg !1460
  %216 = inttoptr i32 %215 to i32*, !dbg !1460
  store volatile i32 %214, i32* %216, align 4, !dbg !1460
  %217 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1461
  %218 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %217, i32 0, i32 2, !dbg !1461
  %219 = load i32, i32* %218, align 4, !dbg !1461
  %220 = or i32 %208, -2097086464, !dbg !1461
  %221 = inttoptr i32 %220 to i32*, !dbg !1461
  store volatile i32 %219, i32* %221, align 256, !dbg !1461
  %222 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1462
  %223 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %222, i32 0, i32 3, !dbg !1462
  %224 = load i32, i32* %223, align 4, !dbg !1462
  %225 = or i32 %208, -2097086460, !dbg !1462
  %226 = inttoptr i32 %225 to i32*, !dbg !1462
  store volatile i32 %224, i32* %226, align 4, !dbg !1462
  br label %255, !dbg !1463

227:                                              ; preds = %196
  %228 = bitcast i8** %197 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1464
  %229 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1464
  %230 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 1, !dbg !1466
  call void @llvm.dbg.value(metadata i32 undef, metadata !1345, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1347
  %231 = load i32, i32* %230, align 4, !dbg !1450
  %232 = shl i32 %231, 20, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %232, metadata !1345, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %232, metadata !1345, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1347
  %233 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 3, !dbg !1467
  %234 = load i8*, i8** %233, align 4, !dbg !1467
  %235 = ptrtoint i8* %234 to i32, !dbg !1467
  %236 = shl nuw nsw i32 %7, 8, !dbg !1467
  %237 = or i32 %236, -2097086456, !dbg !1467
  %238 = inttoptr i32 %237 to i32*, !dbg !1467
  store volatile i32 %235, i32* %238, align 8, !dbg !1467
  %239 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1469
  %240 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %239, i32 0, i32 4, !dbg !1469
  %241 = load i8*, i8** %240, align 4, !dbg !1469
  %242 = ptrtoint i8* %241 to i32, !dbg !1469
  %243 = or i32 %236, -2097086452, !dbg !1469
  %244 = inttoptr i32 %243 to i32*, !dbg !1469
  store volatile i32 %242, i32* %244, align 4, !dbg !1469
  %245 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1470
  %246 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %245, i32 0, i32 2, !dbg !1470
  %247 = load i32, i32* %246, align 4, !dbg !1470
  %248 = or i32 %236, -2097086420, !dbg !1470
  %249 = inttoptr i32 %248 to i32*, !dbg !1470
  store volatile i32 %247, i32* %249, align 4, !dbg !1470
  %250 = select i1 %3, i32 458808, i32 458776, !dbg !1471
  %251 = or i32 %232, %250, !dbg !1471
  br label %255, !dbg !1471

252:                                              ; preds = %59
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 410) #16, !dbg !1472
  br label %254, !dbg !1472

254:                                              ; preds = %254, %252
  br label %254, !dbg !1472, !llvm.loop !1475

255:                                              ; preds = %227, %171, %113, %81, %198, %142, %96, %64, %126
  %256 = phi i32 [ %204, %198 ], [ %148, %142 ], [ 12, %126 ], [ %102, %96 ], [ %70, %64 ], [ %93, %81 ], [ %125, %113 ], [ %195, %171 ], [ %251, %227 ], !dbg !1476
  call void @llvm.dbg.value(metadata i32 %256, metadata !1345, metadata !DIExpression()), !dbg !1347
  %257 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 1, !dbg !1477
  %258 = load i32, i32* %257, align 4, !dbg !1477
  switch i32 %258, label %328 [
    i32 0, label %259
    i32 1, label %285
    i32 2, label %309
  ], !dbg !1478

259:                                              ; preds = %255
  %260 = load i32, i32* %60, align 4, !dbg !1479
  %261 = icmp eq i32 %260, 2, !dbg !1482
  br i1 %261, label %331, label %262, !dbg !1483

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1484
  %264 = bitcast i8** %263 to %struct.DMA_TMODE**, !dbg !1484
  %265 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %264, align 4, !dbg !1484
  %266 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 0, !dbg !1487
  %267 = load i8, i8* %266, align 1, !dbg !1487, !range !1488
  %268 = icmp eq i8 %267, 0, !dbg !1487
  br i1 %268, label %331, label %269, !dbg !1489

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 1, !dbg !1490
  %271 = load i8, i8* %270, align 1, !dbg !1490
  %272 = icmp ult i8 %271, 16, !dbg !1491
  br i1 %272, label %275, label %273, !dbg !1492

273:                                              ; preds = %269
  %274 = or i32 %256, 1536, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %274, metadata !1345, metadata !DIExpression()), !dbg !1347
  br label %331, !dbg !1495

275:                                              ; preds = %269
  %276 = and i8 %271, 8, !dbg !1496
  %277 = icmp eq i8 %276, 0, !dbg !1496
  br i1 %277, label %280, label %278, !dbg !1498

278:                                              ; preds = %275
  %279 = or i32 %256, 1024, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %279, metadata !1345, metadata !DIExpression()), !dbg !1347
  br label %331, !dbg !1501

280:                                              ; preds = %275
  %281 = and i8 %271, 4, !dbg !1502
  %282 = zext i8 %281 to i32, !dbg !1504
  %283 = shl nuw nsw i32 %282, 7, !dbg !1504
  %284 = or i32 %283, %256, !dbg !1504
  br label %331, !dbg !1504

285:                                              ; preds = %255
  %286 = load i32, i32* %60, align 4, !dbg !1505
  %287 = icmp eq i32 %286, 2, !dbg !1507
  br i1 %287, label %306, label %288, !dbg !1508

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1509
  %290 = bitcast i8** %289 to %struct.DMA_TMODE**, !dbg !1509
  %291 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %290, align 4, !dbg !1509
  %292 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 0, !dbg !1512
  %293 = load i8, i8* %292, align 1, !dbg !1512, !range !1488
  %294 = icmp eq i8 %293, 0, !dbg !1512
  br i1 %294, label %306, label %295, !dbg !1513

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 1, !dbg !1514
  %297 = load i8, i8* %296, align 1, !dbg !1514
  %298 = icmp ult i8 %297, 8, !dbg !1515
  br i1 %298, label %301, label %299, !dbg !1516

299:                                              ; preds = %295
  %300 = or i32 %256, 1024, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %300, metadata !1345, metadata !DIExpression()), !dbg !1347
  br label %306, !dbg !1519

301:                                              ; preds = %295
  %302 = and i8 %297, 4, !dbg !1520
  %303 = zext i8 %302 to i32, !dbg !1522
  %304 = shl nuw nsw i32 %303, 7, !dbg !1522
  %305 = or i32 %304, %256, !dbg !1522
  br label %306, !dbg !1522

306:                                              ; preds = %288, %301, %299, %285
  %307 = phi i32 [ %300, %299 ], [ %256, %285 ], [ %305, %301 ], [ %256, %288 ], !dbg !1347
  call void @llvm.dbg.value(metadata i32 %307, metadata !1345, metadata !DIExpression()), !dbg !1347
  %308 = or i32 %307, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %308, metadata !1345, metadata !DIExpression()), !dbg !1347
  br label %331, !dbg !1524

309:                                              ; preds = %255
  %310 = load i32, i32* %60, align 4, !dbg !1525
  %311 = icmp eq i32 %310, 2, !dbg !1527
  br i1 %311, label %325, label %312, !dbg !1528

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1529
  %314 = bitcast i8** %313 to %struct.DMA_TMODE**, !dbg !1529
  %315 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %314, align 4, !dbg !1529
  %316 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 0, !dbg !1532
  %317 = load i8, i8* %316, align 1, !dbg !1532, !range !1488
  %318 = icmp eq i8 %317, 0, !dbg !1532
  br i1 %318, label %325, label %319, !dbg !1533

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 1, !dbg !1534
  %321 = load i8, i8* %320, align 1, !dbg !1534
  %322 = icmp ult i8 %321, 4, !dbg !1535
  %323 = or i32 %256, 512
  %324 = select i1 %322, i32 %256, i32 %323, !dbg !1536
  br label %325, !dbg !1536

325:                                              ; preds = %319, %312, %309
  %326 = phi i32 [ %256, %312 ], [ %256, %309 ], [ %324, %319 ], !dbg !1347
  call void @llvm.dbg.value(metadata i32 %326, metadata !1345, metadata !DIExpression()), !dbg !1347
  %327 = or i32 %326, 2, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %327, metadata !1345, metadata !DIExpression()), !dbg !1347
  br label %331, !dbg !1538

328:                                              ; preds = %255
  %329 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 486) #16, !dbg !1539
  br label %330, !dbg !1539

330:                                              ; preds = %330, %328
  br label %330, !dbg !1539, !llvm.loop !1542

331:                                              ; preds = %262, %280, %259, %278, %273, %325, %306
  %332 = phi i32 [ %327, %325 ], [ %308, %306 ], [ %274, %273 ], [ %279, %278 ], [ %256, %259 ], [ %284, %280 ], [ %256, %262 ], !dbg !1347
  call void @llvm.dbg.value(metadata i32 %332, metadata !1345, metadata !DIExpression()), !dbg !1347
  %333 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 4, !dbg !1543
  %334 = load void ()*, void ()** %333, align 4, !dbg !1543
  %335 = icmp eq void ()* %334, null, !dbg !1545
  br i1 %335, label %339, label %336, !dbg !1546

336:                                              ; preds = %331
  %337 = or i32 %332, 32768, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %337, metadata !1345, metadata !DIExpression()), !dbg !1347
  %338 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %40, !dbg !1549
  store void ()* %334, void ()** %338, align 4, !dbg !1550
  br label %339, !dbg !1551

339:                                              ; preds = %336, %331
  %340 = phi i32 [ %337, %336 ], [ %332, %331 ], !dbg !1347
  call void @llvm.dbg.value(metadata i32 %340, metadata !1345, metadata !DIExpression()), !dbg !1347
  %341 = shl nuw nsw i32 %7, 8, !dbg !1552
  %342 = or i32 %341, -2097086444, !dbg !1552
  %343 = inttoptr i32 %342 to i32*, !dbg !1552
  store volatile i32 %340, i32* %343, align 4, !dbg !1552
  %344 = load i32, i32* %53, align 4, !dbg !1553
  %345 = or i32 %341, -2097086448, !dbg !1553
  %346 = inttoptr i32 %345 to i32*, !dbg !1553
  store volatile i32 %344, i32* %346, align 16, !dbg !1553
  br i1 %5, label %347, label %350, !dbg !1554

347:                                              ; preds = %339
  %348 = or i32 %341, -2097086440, !dbg !1555
  %349 = inttoptr i32 %348 to i32*, !dbg !1555
  store volatile i32 32768, i32* %349, align 8, !dbg !1555
  br label %350, !dbg !1558

350:                                              ; preds = %347, %339
  ret void, !dbg !1559
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Enable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1560 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1562, metadata !DIExpression()), !dbg !1563
  %2 = zext i8 %0 to i32, !dbg !1564
  %3 = add nsw i32 %2, -1, !dbg !1565
  %4 = shl nuw i32 1, %3, !dbg !1566
  store volatile i32 %4, i32* inttoptr (i32 -2097151976 to i32*), align 8, !dbg !1567
  ret void, !dbg !1568
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_Register(i8 noundef zeroext %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !1569 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1573, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1574, metadata !DIExpression()), !dbg !1575
  %3 = zext i8 %0 to i32, !dbg !1576
  %4 = add i8 %0, -12, !dbg !1578
  %5 = icmp ult i8 %4, -11, !dbg !1578
  br i1 %5, label %6, label %8, !dbg !1578

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.DMA_Register, i32 0, i32 0), i32 noundef %3) #16, !dbg !1579
  br label %11, !dbg !1581

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1, !dbg !1582
  %10 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %9, !dbg !1583
  store void ()* %1, void ()** %10, align 4, !dbg !1584
  br label %11, !dbg !1585

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ], !dbg !1575
  ret i32 %12, !dbg !1586
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_UnRegister(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1587 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1591, metadata !DIExpression()), !dbg !1592
  %2 = zext i8 %0 to i32, !dbg !1593
  %3 = add i8 %0, -12, !dbg !1595
  %4 = icmp ult i8 %3, -11, !dbg !1595
  br i1 %4, label %5, label %7, !dbg !1595

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.DMA_UnRegister, i32 0, i32 0), i32 noundef %2) #16, !dbg !1596
  br label %10, !dbg !1598

7:                                                ; preds = %1
  %8 = add nsw i32 %2, -1, !dbg !1599
  %9 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %8, !dbg !1600
  store void ()* @DMA_ERROR_LISR, void ()** %9, align 4, !dbg !1601
  br label %10, !dbg !1602

10:                                               ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ 0, %7 ], !dbg !1592
  ret i32 %11, !dbg !1603
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_LISR(i32 %0) #3 !dbg !1604 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1606, metadata !DIExpression()), !dbg !1609
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 1) #16, !dbg !1610
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1609
  br label %3, !dbg !1611

3:                                                ; preds = %1, %25
  %4 = phi i32 [ 0, %1 ], [ %5, %25 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1607, metadata !DIExpression()), !dbg !1609
  %5 = add nuw nsw i32 %4, 1, !dbg !1613
  %6 = shl nuw nsw i32 %5, 8, !dbg !1613
  %7 = add nuw nsw i32 %6, -2097086436, !dbg !1613
  %8 = inttoptr i32 %7 to i32*, !dbg !1613
  %9 = load volatile i32, i32* %8, align 4, !dbg !1613
  %10 = and i32 %9, 32768, !dbg !1617
  %11 = icmp eq i32 %10, 0, !dbg !1617
  br i1 %11, label %25, label %12, !dbg !1618

12:                                               ; preds = %3
  %13 = trunc i32 %5 to i8, !dbg !1619
  tail call void @DMA_Stop(i8 noundef zeroext %13) #14, !dbg !1621
  %14 = add nuw nsw i32 %6, -2097086432, !dbg !1622
  %15 = inttoptr i32 %14 to i32*, !dbg !1622
  store volatile i32 32768, i32* %15, align 32, !dbg !1622
  %16 = shl nuw nsw i32 %4, 1
  %17 = shl nuw i32 1, %16
  br label %18, !dbg !1623

18:                                               ; preds = %18, %12
  %19 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1624
  %20 = and i32 %19, %17, !dbg !1623
  %21 = icmp eq i32 %20, 0, !dbg !1623
  br i1 %21, label %22, label %18, !dbg !1623, !llvm.loop !1625

22:                                               ; preds = %18
  tail call void @DMA_Clock_Disable(i8 noundef zeroext %13) #14, !dbg !1627
  %23 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %4, !dbg !1628
  %24 = load void ()*, void ()** %23, align 4, !dbg !1628
  tail call void %24() #16, !dbg !1628
  br label %25, !dbg !1629

25:                                               ; preds = %3, %22
  call void @llvm.dbg.value(metadata i32 %5, metadata !1607, metadata !DIExpression()), !dbg !1609
  %26 = icmp eq i32 %5, 11, !dbg !1630
  br i1 %26, label %27, label %3, !dbg !1611, !llvm.loop !1631

27:                                               ; preds = %25, %87
  %28 = phi i32 [ %88, %87 ], [ 12, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1607, metadata !DIExpression()), !dbg !1609
  %29 = shl nuw nsw i32 %28, 8, !dbg !1633
  %30 = or i32 %29, -2097086444, !dbg !1633
  %31 = inttoptr i32 %30 to i32*, !dbg !1633
  %32 = load volatile i32, i32* %31, align 4, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %32, metadata !1608, metadata !DIExpression()), !dbg !1609
  %33 = or i32 %29, -2097086436, !dbg !1637
  %34 = inttoptr i32 %33 to i32*, !dbg !1637
  %35 = load volatile i32, i32* %34, align 4, !dbg !1637
  %36 = and i32 %35, 32768, !dbg !1639
  %37 = icmp eq i32 %36, 0, !dbg !1639
  br i1 %37, label %87, label %38, !dbg !1640

38:                                               ; preds = %27
  %39 = lshr i32 %32, 20, !dbg !1641
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
  ], !dbg !1643

40:                                               ; preds = %38
  %41 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1644
  %42 = icmp eq void ()* %41, null, !dbg !1647
  br i1 %42, label %84, label %82, !dbg !1648

43:                                               ; preds = %38
  %44 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1649
  %45 = icmp eq void ()* %44, null, !dbg !1651
  br i1 %45, label %84, label %82, !dbg !1652

46:                                               ; preds = %38
  %47 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1653
  %48 = icmp eq void ()* %47, null, !dbg !1655
  br i1 %48, label %84, label %82, !dbg !1656

49:                                               ; preds = %38
  %50 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1657
  %51 = icmp eq void ()* %50, null, !dbg !1659
  br i1 %51, label %84, label %82, !dbg !1660

52:                                               ; preds = %38
  %53 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1661
  %54 = icmp eq void ()* %53, null, !dbg !1663
  br i1 %54, label %84, label %82, !dbg !1664

55:                                               ; preds = %38
  %56 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1665
  %57 = icmp eq void ()* %56, null, !dbg !1667
  br i1 %57, label %84, label %82, !dbg !1668

58:                                               ; preds = %38
  %59 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1669
  %60 = icmp eq void ()* %59, null, !dbg !1671
  br i1 %60, label %84, label %82, !dbg !1672

61:                                               ; preds = %38
  %62 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1673
  %63 = icmp eq void ()* %62, null, !dbg !1675
  br i1 %63, label %84, label %82, !dbg !1676

64:                                               ; preds = %38
  %65 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1677
  %66 = icmp eq void ()* %65, null, !dbg !1679
  br i1 %66, label %84, label %82, !dbg !1680

67:                                               ; preds = %38
  %68 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1681
  %69 = icmp eq void ()* %68, null, !dbg !1683
  br i1 %69, label %84, label %82, !dbg !1684

70:                                               ; preds = %38
  %71 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1685
  %72 = icmp eq void ()* %71, null, !dbg !1687
  br i1 %72, label %84, label %82, !dbg !1688

73:                                               ; preds = %38
  %74 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1689
  %75 = icmp eq void ()* %74, null, !dbg !1691
  br i1 %75, label %84, label %82, !dbg !1692

76:                                               ; preds = %38
  %77 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1693
  %78 = icmp eq void ()* %77, null, !dbg !1695
  br i1 %78, label %84, label %82, !dbg !1696

79:                                               ; preds = %38
  %80 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1697
  %81 = icmp eq void ()* %80, null, !dbg !1699
  br i1 %81, label %84, label %82, !dbg !1700

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  %83 = phi void ()* [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ]
  tail call void %83() #16, !dbg !1701
  br label %84, !dbg !1702

84:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %38
  %85 = or i32 %29, -2097086432, !dbg !1702
  %86 = inttoptr i32 %85 to i32*, !dbg !1702
  store volatile i32 32768, i32* %86, align 32, !dbg !1702
  br label %87, !dbg !1703

87:                                               ; preds = %27, %84
  %88 = add nuw nsw i32 %28, 1, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %88, metadata !1607, metadata !DIExpression()), !dbg !1609
  %89 = icmp eq i32 %88, 26, !dbg !1705
  br i1 %89, label %90, label %27, !dbg !1706, !llvm.loop !1707

90:                                               ; preds = %87, %150
  %91 = phi i32 [ %151, %150 ], [ 12, %87 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1607, metadata !DIExpression()), !dbg !1609
  %92 = shl nuw nsw i32 %91, 8, !dbg !1709
  %93 = or i32 %92, -2097086444, !dbg !1709
  %94 = inttoptr i32 %93 to i32*, !dbg !1709
  %95 = load volatile i32, i32* %94, align 4, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %95, metadata !1608, metadata !DIExpression()), !dbg !1609
  %96 = or i32 %92, -2097086436, !dbg !1713
  %97 = inttoptr i32 %96 to i32*, !dbg !1713
  %98 = load volatile i32, i32* %97, align 4, !dbg !1713
  %99 = and i32 %98, 65536, !dbg !1715
  %100 = icmp eq i32 %99, 0, !dbg !1715
  br i1 %100, label %150, label %101, !dbg !1716

101:                                              ; preds = %90
  %102 = lshr i32 %95, 20, !dbg !1717
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
  ], !dbg !1719

103:                                              ; preds = %101
  %104 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1720
  %105 = icmp eq void ()* %104, null, !dbg !1723
  br i1 %105, label %147, label %145, !dbg !1724

106:                                              ; preds = %101
  %107 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1725
  %108 = icmp eq void ()* %107, null, !dbg !1727
  br i1 %108, label %147, label %145, !dbg !1728

109:                                              ; preds = %101
  %110 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1729
  %111 = icmp eq void ()* %110, null, !dbg !1731
  br i1 %111, label %147, label %145, !dbg !1732

112:                                              ; preds = %101
  %113 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1733
  %114 = icmp eq void ()* %113, null, !dbg !1735
  br i1 %114, label %147, label %145, !dbg !1736

115:                                              ; preds = %101
  %116 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1737
  %117 = icmp eq void ()* %116, null, !dbg !1739
  br i1 %117, label %147, label %145, !dbg !1740

118:                                              ; preds = %101
  %119 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1741
  %120 = icmp eq void ()* %119, null, !dbg !1743
  br i1 %120, label %147, label %145, !dbg !1744

121:                                              ; preds = %101
  %122 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1745
  %123 = icmp eq void ()* %122, null, !dbg !1747
  br i1 %123, label %147, label %145, !dbg !1748

124:                                              ; preds = %101
  %125 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1749
  %126 = icmp eq void ()* %125, null, !dbg !1751
  br i1 %126, label %147, label %145, !dbg !1752

127:                                              ; preds = %101
  %128 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1753
  %129 = icmp eq void ()* %128, null, !dbg !1755
  br i1 %129, label %147, label %145, !dbg !1756

130:                                              ; preds = %101
  %131 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1757
  %132 = icmp eq void ()* %131, null, !dbg !1759
  br i1 %132, label %147, label %145, !dbg !1760

133:                                              ; preds = %101
  %134 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1761
  %135 = icmp eq void ()* %134, null, !dbg !1763
  br i1 %135, label %147, label %145, !dbg !1764

136:                                              ; preds = %101
  %137 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1765
  %138 = icmp eq void ()* %137, null, !dbg !1767
  br i1 %138, label %147, label %145, !dbg !1768

139:                                              ; preds = %101
  %140 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1769
  %141 = icmp eq void ()* %140, null, !dbg !1771
  br i1 %141, label %147, label %145, !dbg !1772

142:                                              ; preds = %101
  %143 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1773
  %144 = icmp eq void ()* %143, null, !dbg !1775
  br i1 %144, label %147, label %145, !dbg !1776

145:                                              ; preds = %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %146 = phi void ()* [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ], [ %128, %127 ], [ %131, %130 ], [ %134, %133 ], [ %137, %136 ], [ %140, %139 ], [ %143, %142 ]
  tail call void %146() #16, !dbg !1777
  br label %147, !dbg !1778

147:                                              ; preds = %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %101
  %148 = or i32 %92, -2097086432, !dbg !1778
  %149 = inttoptr i32 %148 to i32*, !dbg !1778
  store volatile i32 65536, i32* %149, align 32, !dbg !1778
  br label %150, !dbg !1779

150:                                              ; preds = %90, %147
  %151 = add nuw nsw i32 %91, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %151, metadata !1607, metadata !DIExpression()), !dbg !1609
  %152 = icmp eq i32 %151, 26, !dbg !1781
  br i1 %152, label %153, label %90, !dbg !1782, !llvm.loop !1783

153:                                              ; preds = %150
  %154 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1785
  ret void, !dbg !1786
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Disable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1787 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1789, metadata !DIExpression()), !dbg !1790
  %2 = zext i8 %0 to i32, !dbg !1791
  %3 = add nsw i32 %2, -1, !dbg !1792
  %4 = shl nuw i32 1, %3, !dbg !1793
  store volatile i32 %4, i32* inttoptr (i32 -2097151980 to i32*), align 4, !dbg !1794
  ret void, !dbg !1795
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Init() local_unnamed_addr #3 !dbg !1796 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1799
  %1 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1799
  br label %2, !dbg !1800

2:                                                ; preds = %0, %9
  %3 = phi i32 [ 0, %0 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1798, metadata !DIExpression()), !dbg !1799
  %4 = shl nuw i32 1, %3, !dbg !1802
  %5 = and i32 %1, %4, !dbg !1806
  %6 = icmp eq i32 %5, 0, !dbg !1807
  br i1 %6, label %9, label %7, !dbg !1808

7:                                                ; preds = %2
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %3, !dbg !1809
  store i32 26, i32* %8, align 4, !dbg !1811
  br label %9, !dbg !1812

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i32 %3, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %10, metadata !1798, metadata !DIExpression()), !dbg !1799
  %11 = icmp eq i32 %10, 11, !dbg !1814
  br i1 %11, label %12, label %2, !dbg !1800, !llvm.loop !1815

12:                                               ; preds = %9, %12
  %13 = phi i8 [ %14, %12 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1798, metadata !DIExpression()), !dbg !1799
  %14 = add nuw nsw i8 %13, 1, !dbg !1817
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %14) #14, !dbg !1821
  call void @llvm.dbg.value(metadata i8 %14, metadata !1798, metadata !DIExpression()), !dbg !1799
  %15 = icmp ult i8 %13, 10, !dbg !1822
  br i1 %15, label %12, label %16, !dbg !1823, !llvm.loop !1824

16:                                               ; preds = %12
  %17 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1826
  %18 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1827
  %19 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1828
  ret void, !dbg !1829
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1830 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1834, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 -1, metadata !1835, metadata !DIExpression()), !dbg !1838
  %2 = add i8 %0, 1, !dbg !1839
  call void @llvm.dbg.value(metadata i8 %2, metadata !1837, metadata !DIExpression()), !dbg !1838
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1840, !srcloc !1201
  call void @llvm.dbg.value(metadata i32 %3, metadata !1198, metadata !DIExpression()) #15, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %3, metadata !1836, metadata !DIExpression()), !dbg !1838
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1844, !srcloc !1206
  %4 = zext i8 %2 to i32, !dbg !1846
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1846
  %6 = load i8, i8* %5, align 1, !dbg !1846, !range !1488
  %7 = icmp eq i8 %6, 0, !dbg !1848
  br i1 %7, label %8, label %12, !dbg !1849

8:                                                ; preds = %1
  store i8 1, i8* %5, align 1, !dbg !1850
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %2) #14, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %3, metadata !1224, metadata !DIExpression()) #15, !dbg !1853
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1856, !srcloc !1233
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1857
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1858
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1859
  br label %12, !dbg !1860

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %0, %8 ], [ -1, %1 ], !dbg !1838
  ret i8 %13, !dbg !1861
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_idle(i8 noundef returned zeroext %0) local_unnamed_addr #3 !dbg !1862 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1864, metadata !DIExpression()), !dbg !1867
  %2 = add i8 %0, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i8 %2, metadata !1866, metadata !DIExpression()), !dbg !1867
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1869
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1870, !srcloc !1201
  call void @llvm.dbg.value(metadata i32 %3, metadata !1198, metadata !DIExpression()) #15, !dbg !1873
  call void @llvm.dbg.value(metadata i32 %3, metadata !1865, metadata !DIExpression()), !dbg !1867
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1874, !srcloc !1206
  %4 = zext i8 %2 to i32, !dbg !1876
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1876
  store i8 0, i8* %5, align 1, !dbg !1877
  %6 = shl nuw i32 1, %4, !dbg !1878
  %7 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1879
  %8 = or i32 %7, %6, !dbg !1879
  store i32 %8, i32* @DMA_Channel_Status, align 4, !dbg !1879
  %9 = add nsw i32 %4, -1, !dbg !1880
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %9, !dbg !1881
  store i32 26, i32* %10, align 4, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %3, metadata !1224, metadata !DIExpression()) #15, !dbg !1883
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1886, !srcloc !1233
  ret i8 %0, !dbg !1887
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_init() local_unnamed_addr #1 !dbg !1888 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1890, metadata !DIExpression()), !dbg !1891
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 12) #14, !dbg !1892
  call void @llvm.dbg.value(metadata i32 6293010, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 6293010, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !1893
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 13) #14, !dbg !1894
  call void @llvm.dbg.value(metadata i32 7603730, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 7603730, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !1895
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 14) #14, !dbg !1896
  call void @llvm.dbg.value(metadata i32 8388624, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 8388624, i32* inttoptr (i32 -2097082860 to i32*), align 4, !dbg !1897
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 15) #14, !dbg !1898
  call void @llvm.dbg.value(metadata i32 9748496, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 9748496, i32* inttoptr (i32 -2097082604 to i32*), align 4, !dbg !1899
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 16) #14, !dbg !1900
  call void @llvm.dbg.value(metadata i32 10485776, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 10485776, i32* inttoptr (i32 -2097082348 to i32*), align 4, !dbg !1901
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 17) #14, !dbg !1902
  call void @llvm.dbg.value(metadata i32 11845648, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 11845648, i32* inttoptr (i32 -2097082092 to i32*), align 4, !dbg !1903
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 18) #14, !dbg !1904
  call void @llvm.dbg.value(metadata i32 12582928, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 12582928, i32* inttoptr (i32 -2097081836 to i32*), align 4, !dbg !1905
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 19) #14, !dbg !1906
  call void @llvm.dbg.value(metadata i32 13942800, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 13942800, i32* inttoptr (i32 -2097081580 to i32*), align 4, !dbg !1907
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 20) #14, !dbg !1908
  call void @llvm.dbg.value(metadata i32 16023568, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 16023568, i32* inttoptr (i32 -2097081324 to i32*), align 4, !dbg !1909
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 21) #14, !dbg !1910
  call void @llvm.dbg.value(metadata i32 17072144, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 17072144, i32* inttoptr (i32 -2097081068 to i32*), align 4, !dbg !1911
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 22) #14, !dbg !1912
  call void @llvm.dbg.value(metadata i32 18120720, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 18120720, i32* inttoptr (i32 -2097080812 to i32*), align 4, !dbg !1913
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 23) #14, !dbg !1914
  call void @llvm.dbg.value(metadata i32 19169296, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 19169296, i32* inttoptr (i32 -2097080556 to i32*), align 4, !dbg !1915
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 24) #14, !dbg !1916
  call void @llvm.dbg.value(metadata i32 20217872, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 20217872, i32* inttoptr (i32 -2097080300 to i32*), align 4, !dbg !1917
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 25) #14, !dbg !1918
  call void @llvm.dbg.value(metadata i32 21282834, metadata !1890, metadata !DIExpression()), !dbg !1891
  store volatile i32 21282834, i32* inttoptr (i32 -2097080044 to i32*), align 4, !dbg !1919
  ret void, !dbg !1920
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_SetAdrs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !dbg !1921 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1926, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %1, metadata !1927, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %2, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %3, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %4, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %5, metadata !1931, metadata !DIExpression()), !dbg !1932
  %7 = shl i32 %2, 8, !dbg !1933
  %8 = add i32 %7, -2097086420, !dbg !1933
  %9 = inttoptr i32 %8 to i32*, !dbg !1933
  store volatile i32 %0, i32* %9, align 4, !dbg !1933
  %10 = add i32 %7, -2097086396, !dbg !1934
  %11 = inttoptr i32 %10 to i32*, !dbg !1934
  store volatile i32 %1, i32* %11, align 4, !dbg !1934
  %12 = add i32 %7, -2097086400, !dbg !1935
  %13 = inttoptr i32 %12 to i32*, !dbg !1935
  store volatile i32 %3, i32* %13, align 64, !dbg !1935
  %14 = add i32 %7, -2097086448, !dbg !1936
  %15 = inttoptr i32 %14 to i32*, !dbg !1936
  store volatile i32 %4, i32* %15, align 16, !dbg !1937
  %16 = add i32 %7, -2097086384, !dbg !1938
  %17 = inttoptr i32 %16 to i32*, !dbg !1938
  store volatile i32 %5, i32* %17, align 16, !dbg !1939
  ret void, !dbg !1940
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !1941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1945, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %1, metadata !1946, metadata !DIExpression()), !dbg !1947
  %3 = shl i32 %0, 8, !dbg !1948
  %4 = add i32 %3, -2097086384, !dbg !1948
  %5 = inttoptr i32 %4 to i32*, !dbg !1948
  store volatile i32 %1, i32* %5, align 16, !dbg !1949
  ret void, !dbg !1950
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !1951 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1955, metadata !DIExpression()), !dbg !1956
  %2 = shl i32 %0, 8, !dbg !1957
  %3 = add i32 %2, -2097086444, !dbg !1957
  %4 = inttoptr i32 %3 to i32*, !dbg !1957
  %5 = load volatile i32, i32* %4, align 4, !dbg !1957
  %6 = or i32 %5, 32768, !dbg !1957
  store volatile i32 %6, i32* %4, align 4, !dbg !1957
  ret void, !dbg !1958
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !1959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1961, metadata !DIExpression()), !dbg !1962
  %2 = shl i32 %0, 8, !dbg !1963
  %3 = add i32 %2, -2097086444, !dbg !1963
  %4 = inttoptr i32 %3 to i32*, !dbg !1963
  %5 = load volatile i32, i32* %4, align 4, !dbg !1963
  %6 = and i32 %5, -32769, !dbg !1963
  store volatile i32 %6, i32* %4, align 4, !dbg !1963
  ret void, !dbg !1964
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Flush(i32 noundef %0) local_unnamed_addr #1 !dbg !1965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1967, metadata !DIExpression()), !dbg !1968
  %2 = trunc i32 %0 to i8, !dbg !1969
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1970
  %3 = shl i32 %0, 8, !dbg !1971
  %4 = add i32 %3, -2097086440, !dbg !1971
  %5 = inttoptr i32 %4 to i32*, !dbg !1971
  store volatile i32 32768, i32* %5, align 8, !dbg !1971
  ret void, !dbg !1972
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !1973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1977, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1978, metadata !DIExpression()), !dbg !1979
  %3 = add i32 %0, -12, !dbg !1980
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !1981
  store void ()* %1, void ()** %4, align 4, !dbg !1982
  ret void, !dbg !1983
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !1984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1987, metadata !DIExpression()), !dbg !1988
  %3 = add i32 %0, -12, !dbg !1989
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !1990
  store void ()* %1, void ()** %4, align 4, !dbg !1991
  ret void, !dbg !1992
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !1993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1998, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 %1, metadata !1999, metadata !DIExpression()), !dbg !2003
  %3 = lshr i32 %0, 5, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %3, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  %4 = trunc i32 %0 to i16, !dbg !2005
  %5 = and i16 %4, 31, !dbg !2005
  call void @llvm.dbg.value(metadata i16 %4, metadata !2002, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2003
  %6 = trunc i32 %3 to i16, !dbg !2006
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !2006

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !2007
  %9 = zext i16 %5 to i32, !dbg !2010
  %10 = icmp ult i16 %5, 27, !dbg !2010
  br i1 %8, label %11, label %46, !dbg !2011

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !2012

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !2014
  %14 = xor i32 %13, -1, !dbg !2017
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2018
  %16 = and i32 %15, %14, !dbg !2018
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2018
  br label %44, !dbg !2019

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !2020
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !2020

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2021
  %21 = and i32 %20, -3, !dbg !2021
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2021
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2024
  %23 = or i32 %22, 2048, !dbg !2024
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2024
  br label %44, !dbg !2025

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2026
  %26 = and i32 %25, -3, !dbg !2026
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2026
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2029
  %28 = or i32 %27, 2048, !dbg !2029
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2029
  br label %44, !dbg !2030

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2031
  %31 = and i32 %30, -3, !dbg !2031
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2031
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2034
  %33 = or i32 %32, 2048, !dbg !2034
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2034
  br label %44, !dbg !2035

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2036
  %36 = and i32 %35, -3, !dbg !2036
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2036
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2039
  %38 = or i32 %37, 2048, !dbg !2039
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2039
  br label %44, !dbg !2040

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2041
  %41 = and i32 %40, -3, !dbg !2041
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2041
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2044
  %43 = or i32 %42, 2048, !dbg !2044
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2044
  br label %44, !dbg !2045

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !2046
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !2046
  br label %97, !dbg !2047

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !2048

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !2050
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2053
  %50 = or i32 %49, %48, !dbg !2053
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !2053
  br label %68, !dbg !2054

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !2055
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !2055

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2056
  %55 = or i32 %54, 2050, !dbg !2056
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2056
  br label %68, !dbg !2059

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2060
  %58 = or i32 %57, 2050, !dbg !2060
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2060
  br label %68, !dbg !2063

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2064
  %61 = or i32 %60, 2050, !dbg !2064
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2064
  br label %68, !dbg !2067

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2068
  %64 = or i32 %63, 2050, !dbg !2068
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2068
  br label %68, !dbg !2071

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2072
  %67 = or i32 %66, 2050, !dbg !2072
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2072
  br label %68, !dbg !2075

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !2076
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !2076
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !2077
  %72 = zext i16 %5 to i32, !dbg !2079
  %73 = icmp eq i16 %5, 0, !dbg !2079
  br i1 %71, label %74, label %87, !dbg !2080

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !2081

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !2083
  %77 = xor i32 %76, -1, !dbg !2086
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2087
  %79 = and i32 %78, %77, !dbg !2087
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2087
  br label %85, !dbg !2088

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2089
  %82 = and i32 %81, -3, !dbg !2089
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2089
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2091
  %84 = or i32 %83, 2048, !dbg !2091
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2091
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !2092
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !2092
  br label %97, !dbg !2093

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !2094

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !2096
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2099
  %91 = or i32 %90, %89, !dbg !2099
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2099
  br label %95, !dbg !2100

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2101
  %94 = or i32 %93, 2050, !dbg !2101
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2101
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !2103
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !2103
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !2003
  ret i32 %98, !dbg !2104
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2107, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %1, metadata !2108, metadata !DIExpression()), !dbg !2111
  %3 = lshr i32 %0, 5, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %3, metadata !2109, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2111
  %4 = trunc i32 %0 to i16, !dbg !2113
  %5 = and i16 %4, 31, !dbg !2113
  call void @llvm.dbg.value(metadata i16 %5, metadata !2110, metadata !DIExpression()), !dbg !2111
  %6 = trunc i32 %3 to i16, !dbg !2114
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !2114

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !2115
  %9 = zext i16 %5 to i32, !dbg !2118
  %10 = shl nuw i32 1, %9, !dbg !2118
  br i1 %8, label %12, label %11, !dbg !2119

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !2120
  br label %19, !dbg !2122

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !2123
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !2125
  %15 = zext i16 %5 to i32, !dbg !2127
  %16 = shl nuw i32 1, %15, !dbg !2127
  br i1 %14, label %18, label %17, !dbg !2128

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !2129
  br label %19, !dbg !2131

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !2132
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !2111
  ret i32 %20, !dbg !2134
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #6 !dbg !2135 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()), !dbg !2143
  %2 = lshr i32 %0, 5, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %2, metadata !2140, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2143
  %3 = and i32 %0, 31, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2142, metadata !DIExpression()), !dbg !2143
  %4 = trunc i32 %2 to i16, !dbg !2146
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2146

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2142, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2143
  br label %6, !dbg !2147

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2149
  %9 = lshr i32 %8, %3, !dbg !2149
  %10 = trunc i32 %9 to i8, !dbg !2149
  %11 = and i8 %10, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i8 %11, metadata !2142, metadata !DIExpression()), !dbg !2143
  br label %12, !dbg !2150

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2143
  ret i8 %13, !dbg !2151
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #6 !dbg !2152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2154, metadata !DIExpression()), !dbg !2158
  %2 = lshr i32 %0, 5, !dbg !2159
  call void @llvm.dbg.value(metadata i32 %2, metadata !2155, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2158
  %3 = and i32 %0, 31, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2158
  call void @llvm.dbg.value(metadata i8 0, metadata !2157, metadata !DIExpression()), !dbg !2158
  %4 = trunc i32 %2 to i16, !dbg !2161
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2161

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2157, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2158
  br label %6, !dbg !2162

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !2164
  %9 = lshr i32 %8, %3, !dbg !2164
  %10 = trunc i32 %9 to i8, !dbg !2164
  %11 = and i8 %10, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i8 %11, metadata !2157, metadata !DIExpression()), !dbg !2158
  br label %12, !dbg !2165

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2158
  ret i8 %13, !dbg !2166
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #6 !dbg !2167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2169, metadata !DIExpression()), !dbg !2173
  %2 = lshr i32 %0, 5, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %2, metadata !2170, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2173
  %3 = and i32 %0, 31, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2173
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2173
  %4 = trunc i32 %2 to i16, !dbg !2176
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2176

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2172, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2173
  br label %6, !dbg !2177

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2179
  %9 = lshr i32 %8, %3, !dbg !2179
  %10 = trunc i32 %9 to i8, !dbg !2179
  %11 = and i8 %10, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i8 %11, metadata !2172, metadata !DIExpression()), !dbg !2173
  br label %12, !dbg !2180

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2173
  ret i8 %13, !dbg !2181
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2186, metadata !DIExpression()), !dbg !2189
  %2 = lshr i32 %0, 5, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %2, metadata !2187, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2189
  %3 = trunc i32 %0 to i16, !dbg !2191
  %4 = and i16 %3, 31, !dbg !2191
  call void @llvm.dbg.value(metadata i16 %3, metadata !2188, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2189
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !2192
  %6 = trunc i32 %2 to i16, !dbg !2193
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2193

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2194
  br i1 %8, label %9, label %12, !dbg !2197

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2198
  %11 = shl nuw nsw i32 1, %10, !dbg !2199
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !2199
  br label %49, !dbg !2201

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2202
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2202

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2203
  %16 = and i32 %15, -29, !dbg !2203
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2203
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2206
  %18 = or i32 %17, 2052, !dbg !2206
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2206
  br label %49, !dbg !2207

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2208
  %21 = and i32 %20, -29, !dbg !2208
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2208
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2211
  %23 = or i32 %22, 2052, !dbg !2211
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2211
  br label %49, !dbg !2212

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2213
  %26 = and i32 %25, -29, !dbg !2213
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2213
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2216
  %28 = or i32 %27, 2052, !dbg !2216
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2216
  br label %49, !dbg !2217

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2218
  %31 = and i32 %30, -29, !dbg !2218
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2218
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2221
  %33 = or i32 %32, 2052, !dbg !2221
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2221
  br label %49, !dbg !2222

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2223
  %36 = and i32 %35, -29, !dbg !2223
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2223
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2226
  %38 = or i32 %37, 2052, !dbg !2226
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2226
  br label %49, !dbg !2227

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2228
  br i1 %40, label %41, label %46, !dbg !2230

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2231
  %43 = and i32 %42, -29, !dbg !2231
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2231
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2233
  %45 = or i32 %44, 2052, !dbg !2233
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2233
  br label %49, !dbg !2234

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2235
  %48 = shl nuw i32 1, %47, !dbg !2235
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !2235
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2189
  ret i32 %50, !dbg !2237
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2240, metadata !DIExpression()), !dbg !2243
  %2 = lshr i32 %0, 5, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %2, metadata !2241, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2243
  %3 = trunc i32 %0 to i16, !dbg !2245
  %4 = and i16 %3, 31, !dbg !2245
  call void @llvm.dbg.value(metadata i16 %3, metadata !2242, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2243
  %5 = trunc i32 %2 to i16, !dbg !2246
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2246

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2247
  br i1 %7, label %8, label %11, !dbg !2250

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2251
  %10 = shl nuw nsw i32 1, %9, !dbg !2252
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !2252
  br label %48, !dbg !2254

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2255
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2255

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2256
  %15 = and i32 %14, -29, !dbg !2256
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2256
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2259
  %17 = or i32 %16, 2048, !dbg !2259
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2259
  br label %48, !dbg !2260

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2261
  %20 = and i32 %19, -29, !dbg !2261
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2261
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2264
  %22 = or i32 %21, 2048, !dbg !2264
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2264
  br label %48, !dbg !2265

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2266
  %25 = and i32 %24, -29, !dbg !2266
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2266
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2269
  %27 = or i32 %26, 2048, !dbg !2269
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2269
  br label %48, !dbg !2270

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2271
  %30 = and i32 %29, -29, !dbg !2271
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2271
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2274
  %32 = or i32 %31, 2048, !dbg !2274
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2274
  br label %48, !dbg !2275

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2276
  %35 = and i32 %34, -29, !dbg !2276
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2276
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2279
  %37 = or i32 %36, 2048, !dbg !2279
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2279
  br label %48, !dbg !2280

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2281
  br i1 %39, label %40, label %45, !dbg !2283

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2284
  %42 = and i32 %41, -29, !dbg !2284
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2284
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2286
  %44 = or i32 %43, 2048, !dbg !2286
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2286
  br label %48, !dbg !2287

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2288
  %47 = shl nuw i32 1, %46, !dbg !2288
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !2288
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2243
  ret i32 %49, !dbg !2290
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2291 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()), !dbg !2296
  %2 = lshr i32 %0, 5, !dbg !2297
  call void @llvm.dbg.value(metadata i32 %2, metadata !2294, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2296
  %3 = trunc i32 %0 to i16, !dbg !2298
  %4 = and i16 %3, 31, !dbg !2298
  call void @llvm.dbg.value(metadata i16 %3, metadata !2295, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2296
  %5 = trunc i32 %2 to i16, !dbg !2299
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2299

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2300
  br i1 %7, label %8, label %11, !dbg !2303

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2304
  %10 = shl nuw nsw i32 1, %9, !dbg !2305
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !2305
  br label %48, !dbg !2307

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2308
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2308

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2309
  %15 = and i32 %14, -29, !dbg !2309
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2309
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2312
  %17 = or i32 %16, 2048, !dbg !2312
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2312
  br label %48, !dbg !2313

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2314
  %20 = and i32 %19, -29, !dbg !2314
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2314
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2317
  %22 = or i32 %21, 2048, !dbg !2317
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2317
  br label %48, !dbg !2318

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2319
  %25 = and i32 %24, -29, !dbg !2319
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2319
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2322
  %27 = or i32 %26, 2048, !dbg !2322
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2322
  br label %48, !dbg !2323

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2324
  %30 = and i32 %29, -29, !dbg !2324
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2324
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2327
  %32 = or i32 %31, 2048, !dbg !2327
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2327
  br label %48, !dbg !2328

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2329
  %35 = and i32 %34, -29, !dbg !2329
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2329
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2332
  %37 = or i32 %36, 2048, !dbg !2332
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2332
  br label %48, !dbg !2333

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2334
  br i1 %39, label %40, label %45, !dbg !2336

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2337
  %42 = and i32 %41, -29, !dbg !2337
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2337
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2339
  %44 = or i32 %43, 2048, !dbg !2339
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2339
  br label %48, !dbg !2340

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2341
  %47 = shl nuw i32 1, %46, !dbg !2341
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !2341
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2296
  ret i32 %49, !dbg !2343
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2346, metadata !DIExpression()), !dbg !2349
  %2 = lshr i32 %0, 5, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %2, metadata !2347, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2349
  %3 = trunc i32 %0 to i16, !dbg !2351
  %4 = and i16 %3, 31, !dbg !2351
  call void @llvm.dbg.value(metadata i16 %3, metadata !2348, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2349
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !2352
  %6 = trunc i32 %2 to i16, !dbg !2353
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2353

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2354
  br i1 %8, label %9, label %12, !dbg !2357

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2358
  %11 = shl nuw nsw i32 1, %10, !dbg !2359
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !2359
  br label %49, !dbg !2361

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2362
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2362

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2363
  %16 = and i32 %15, -29, !dbg !2363
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2363
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2366
  %18 = or i32 %17, 2068, !dbg !2366
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2366
  br label %49, !dbg !2367

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2368
  %21 = and i32 %20, -29, !dbg !2368
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2368
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2371
  %23 = or i32 %22, 2068, !dbg !2371
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2371
  br label %49, !dbg !2372

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2373
  %26 = and i32 %25, -29, !dbg !2373
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2373
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2376
  %28 = or i32 %27, 2068, !dbg !2376
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2376
  br label %49, !dbg !2377

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2378
  %31 = and i32 %30, -29, !dbg !2378
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2378
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2381
  %33 = or i32 %32, 2068, !dbg !2381
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2381
  br label %49, !dbg !2382

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2383
  %36 = and i32 %35, -29, !dbg !2383
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2383
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2386
  %38 = or i32 %37, 2068, !dbg !2386
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2386
  br label %49, !dbg !2387

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2388
  br i1 %40, label %41, label %46, !dbg !2390

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2391
  %43 = and i32 %42, -29, !dbg !2391
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2391
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2393
  %45 = or i32 %44, 2068, !dbg !2393
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2393
  br label %49, !dbg !2394

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2395
  %48 = shl nuw i32 1, %47, !dbg !2395
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !2395
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2349
  ret i32 %50, !dbg !2397
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 %1, metadata !2401, metadata !DIExpression()), !dbg !2404
  %3 = lshr i32 %0, 4, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %3, metadata !2402, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2404
  %4 = trunc i32 %0 to i16, !dbg !2406
  %5 = and i16 %4, 15, !dbg !2406
  call void @llvm.dbg.value(metadata i16 %4, metadata !2403, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2404
  %6 = trunc i32 %3 to i16, !dbg !2407
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !2407

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !2408
  %9 = zext i16 %8 to i32, !dbg !2408
  %10 = shl nuw i32 3, %9, !dbg !2410
  %11 = xor i32 %10, -1, !dbg !2411
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2412
  %13 = and i32 %12, %11, !dbg !2412
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2412
  %14 = lshr i8 %1, 2, !dbg !2413
  %15 = zext i8 %14 to i32, !dbg !2413
  %16 = add nsw i32 %15, -1, !dbg !2414
  %17 = shl i32 %16, %9, !dbg !2415
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2416
  %19 = or i32 %18, %17, !dbg !2416
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2416
  br label %131, !dbg !2417

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2418
  br i1 %21, label %22, label %35, !dbg !2420

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2421
  %24 = zext i16 %23 to i32, !dbg !2421
  %25 = shl nuw nsw i32 3, %24, !dbg !2423
  %26 = xor i32 %25, -1, !dbg !2424
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2425
  %28 = and i32 %27, %26, !dbg !2425
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2425
  %29 = lshr i8 %1, 2, !dbg !2426
  %30 = zext i8 %29 to i32, !dbg !2426
  %31 = add nsw i32 %30, -1, !dbg !2427
  %32 = shl nsw i32 %31, %24, !dbg !2428
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2429
  %34 = or i32 %33, %32, !dbg !2429
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2429
  br label %131, !dbg !2430

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2431
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2431

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2432
  %39 = and i32 %38, -449, !dbg !2432
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2432
  %40 = lshr i8 %1, 1, !dbg !2435
  %41 = zext i8 %40 to i32, !dbg !2435
  %42 = shl nuw nsw i32 %41, 6, !dbg !2436
  %43 = add nsw i32 %42, -64, !dbg !2436
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2437
  %45 = or i32 %44, %43, !dbg !2437
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2437
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2438
  %47 = or i32 %46, 2048, !dbg !2438
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2438
  br label %131, !dbg !2439

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2440
  %50 = and i32 %49, -449, !dbg !2440
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2440
  %51 = lshr i8 %1, 1, !dbg !2443
  %52 = zext i8 %51 to i32, !dbg !2443
  %53 = shl nuw nsw i32 %52, 6, !dbg !2444
  %54 = add nsw i32 %53, -64, !dbg !2444
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2445
  %56 = or i32 %55, %54, !dbg !2445
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2445
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2446
  %58 = or i32 %57, 2048, !dbg !2446
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2446
  br label %131, !dbg !2447

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2448
  %61 = and i32 %60, -449, !dbg !2448
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2448
  %62 = lshr i8 %1, 1, !dbg !2451
  %63 = zext i8 %62 to i32, !dbg !2451
  %64 = shl nuw nsw i32 %63, 6, !dbg !2452
  %65 = add nsw i32 %64, -64, !dbg !2452
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2453
  %67 = or i32 %66, %65, !dbg !2453
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2453
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2454
  %69 = or i32 %68, 2048, !dbg !2454
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2454
  br label %131, !dbg !2455

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2456
  %72 = and i32 %71, -449, !dbg !2456
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2456
  %73 = lshr i8 %1, 1, !dbg !2459
  %74 = zext i8 %73 to i32, !dbg !2459
  %75 = shl nuw nsw i32 %74, 6, !dbg !2460
  %76 = add nsw i32 %75, -64, !dbg !2460
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2461
  %78 = or i32 %77, %76, !dbg !2461
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2461
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2462
  %80 = or i32 %79, 2048, !dbg !2462
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2462
  br label %131, !dbg !2463

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2464
  %83 = and i32 %82, -449, !dbg !2464
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2464
  %84 = lshr i8 %1, 1, !dbg !2467
  %85 = zext i8 %84 to i32, !dbg !2467
  %86 = shl nuw nsw i32 %85, 6, !dbg !2468
  %87 = add nsw i32 %86, -64, !dbg !2468
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2469
  %89 = or i32 %88, %87, !dbg !2469
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2469
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2470
  %91 = or i32 %90, 2048, !dbg !2470
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2470
  br label %131, !dbg !2471

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2472
  br i1 %93, label %94, label %105, !dbg !2474

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2475
  %96 = and i32 %95, -449, !dbg !2475
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2475
  %97 = lshr i8 %1, 1, !dbg !2477
  %98 = zext i8 %97 to i32, !dbg !2477
  %99 = shl nuw nsw i32 %98, 6, !dbg !2478
  %100 = add nsw i32 %99, -64, !dbg !2478
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2479
  %102 = or i32 %101, %100, !dbg !2479
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2479
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2480
  %104 = or i32 %103, 2048, !dbg !2480
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2480
  br label %131, !dbg !2481

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2482
  %107 = zext i16 %106 to i32, !dbg !2482
  %108 = shl nuw i32 3, %107, !dbg !2484
  %109 = xor i32 %108, -1, !dbg !2485
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2486
  %111 = and i32 %110, %109, !dbg !2486
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2486
  %112 = lshr i8 %1, 2, !dbg !2487
  %113 = zext i8 %112 to i32, !dbg !2487
  %114 = add nsw i32 %113, -1, !dbg !2488
  %115 = shl i32 %114, %107, !dbg !2489
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2490
  %117 = or i32 %116, %115, !dbg !2490
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2490
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2491
  %120 = zext i16 %119 to i32, !dbg !2491
  %121 = shl nuw i32 3, %120, !dbg !2492
  %122 = xor i32 %121, -1, !dbg !2493
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2494
  %124 = and i32 %123, %122, !dbg !2494
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2494
  %125 = lshr i8 %1, 2, !dbg !2495
  %126 = zext i8 %125 to i32, !dbg !2495
  %127 = add nsw i32 %126, -1, !dbg !2496
  %128 = shl i32 %127, %120, !dbg !2497
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2498
  %130 = or i32 %129, %128, !dbg !2498
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2498
  br label %131, !dbg !2499

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !2404
  ret i32 %132, !dbg !2500
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !2501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2506, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2507, metadata !DIExpression()), !dbg !2511
  %3 = lshr i32 %0, 4, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %3, metadata !2508, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2511
  %4 = trunc i32 %0 to i16, !dbg !2513
  %5 = and i16 %4, 15, !dbg !2513
  call void @llvm.dbg.value(metadata i16 %4, metadata !2509, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %6 = trunc i32 %3 to i16, !dbg !2514
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2514

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %8, metadata !2510, metadata !DIExpression()), !dbg !2511
  %9 = shl nuw nsw i16 %5, 1, !dbg !2517
  %10 = zext i16 %9 to i32, !dbg !2517
  %11 = shl nuw i32 3, %10, !dbg !2518
  %12 = and i32 %8, %11, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %12, metadata !2510, metadata !DIExpression()), !dbg !2511
  %13 = lshr i32 %12, %10, !dbg !2520
  %14 = trunc i32 %13 to i8, !dbg !2521
  %15 = shl i8 %14, 2, !dbg !2521
  %16 = add i8 %15, 4, !dbg !2521
  br label %89, !dbg !2522

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2523
  br i1 %18, label %19, label %29, !dbg !2525

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %20, metadata !2510, metadata !DIExpression()), !dbg !2511
  %21 = shl nuw nsw i16 %5, 1, !dbg !2528
  %22 = zext i16 %21 to i32, !dbg !2528
  %23 = shl nuw nsw i32 3, %22, !dbg !2529
  %24 = and i32 %20, %23, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %24, metadata !2510, metadata !DIExpression()), !dbg !2511
  %25 = lshr i32 %24, %22, !dbg !2531
  %26 = trunc i32 %25 to i8, !dbg !2532
  %27 = shl i8 %26, 2, !dbg !2532
  %28 = add i8 %27, 4, !dbg !2532
  br label %89, !dbg !2533

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2534
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2534

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %32, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %32, metadata !2510, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %33 = lshr i32 %32, 5, !dbg !2538
  %34 = trunc i32 %33 to i8, !dbg !2539
  %35 = and i8 %34, 14, !dbg !2539
  %36 = add nuw nsw i8 %35, 2, !dbg !2539
  br label %89, !dbg !2540

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %38, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %38, metadata !2510, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %39 = lshr i32 %38, 5, !dbg !2544
  %40 = trunc i32 %39 to i8, !dbg !2545
  %41 = and i8 %40, 14, !dbg !2545
  %42 = add nuw nsw i8 %41, 2, !dbg !2545
  br label %89, !dbg !2546

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %44, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %44, metadata !2510, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %45 = lshr i32 %44, 5, !dbg !2550
  %46 = trunc i32 %45 to i8, !dbg !2551
  %47 = and i8 %46, 14, !dbg !2551
  %48 = add nuw nsw i8 %47, 2, !dbg !2551
  br label %89, !dbg !2552

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %50, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %50, metadata !2510, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %51 = lshr i32 %50, 5, !dbg !2556
  %52 = trunc i32 %51 to i8, !dbg !2557
  %53 = and i8 %52, 14, !dbg !2557
  %54 = add nuw nsw i8 %53, 2, !dbg !2557
  br label %89, !dbg !2558

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %56, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %56, metadata !2510, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %57 = lshr i32 %56, 5, !dbg !2562
  %58 = trunc i32 %57 to i8, !dbg !2563
  %59 = and i8 %58, 14, !dbg !2563
  %60 = add nuw nsw i8 %59, 2, !dbg !2563
  br label %89, !dbg !2564

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2565
  br i1 %62, label %63, label %69, !dbg !2567

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %64, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %64, metadata !2510, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2511
  %65 = lshr i32 %64, 5, !dbg !2570
  %66 = trunc i32 %65 to i8, !dbg !2571
  %67 = and i8 %66, 14, !dbg !2571
  %68 = add nuw nsw i8 %67, 2, !dbg !2571
  br label %89, !dbg !2572

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %70, metadata !2510, metadata !DIExpression()), !dbg !2511
  %71 = shl nuw nsw i16 %5, 1, !dbg !2575
  %72 = zext i16 %71 to i32, !dbg !2575
  %73 = shl nuw i32 3, %72, !dbg !2576
  %74 = and i32 %70, %73, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %74, metadata !2510, metadata !DIExpression()), !dbg !2511
  %75 = lshr i32 %74, %72, !dbg !2578
  %76 = trunc i32 %75 to i8, !dbg !2579
  %77 = shl i8 %76, 2, !dbg !2579
  %78 = add i8 %77, 4, !dbg !2579
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %80, metadata !2510, metadata !DIExpression()), !dbg !2511
  %81 = shl nuw nsw i16 %5, 1, !dbg !2581
  %82 = zext i16 %81 to i32, !dbg !2581
  %83 = shl nuw i32 3, %82, !dbg !2582
  %84 = and i32 %80, %83, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %84, metadata !2510, metadata !DIExpression()), !dbg !2511
  %85 = lshr i32 %84, %82, !dbg !2584
  %86 = trunc i32 %85 to i8, !dbg !2585
  %87 = shl i8 %86, 2, !dbg !2585
  %88 = add i8 %87, 4, !dbg !2585
  br label %89, !dbg !2586

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2587
  br label %91, !dbg !2588

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2511
  ret i32 %92, !dbg !2588
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2594, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 %1, metadata !2595, metadata !DIExpression()), !dbg !2598
  %3 = lshr i32 %0, 5, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %3, metadata !2596, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2598
  %4 = trunc i32 %0 to i16, !dbg !2600
  %5 = and i16 %4, 31, !dbg !2600
  call void @llvm.dbg.value(metadata i16 %5, metadata !2597, metadata !DIExpression()), !dbg !2598
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2601

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2596, metadata !DIExpression()), !dbg !2598
  %7 = trunc i32 %3 to i16, !dbg !2602
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2602

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2605
  %10 = shl nuw i32 1, %9, !dbg !2607
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2608
  %12 = or i32 %11, %10, !dbg !2608
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2608
  br label %32, !dbg !2609

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2610
  %15 = shl nuw i32 1, %14, !dbg !2611
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2612
  %17 = or i32 %16, %15, !dbg !2612
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2612
  br label %32, !dbg !2613

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2614
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2614

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2617
  %22 = shl nuw i32 1, %21, !dbg !2619
  %23 = xor i32 %22, -1, !dbg !2620
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2621
  %25 = and i32 %24, %23, !dbg !2621
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2621
  br label %32, !dbg !2622

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2623
  %28 = shl nuw i32 1, %27, !dbg !2624
  %29 = xor i32 %28, -1, !dbg !2625
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2626
  %31 = and i32 %30, %29, !dbg !2626
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2626
  br label %32, !dbg !2627

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2628
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 %1, metadata !2636, metadata !DIExpression()), !dbg !2638
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
  ], !dbg !2639

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %4, metadata !2637, metadata !DIExpression()), !dbg !2638
  %5 = and i32 %4, -16, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %5, metadata !2637, metadata !DIExpression()), !dbg !2638
  %6 = zext i8 %1 to i32, !dbg !2643
  %7 = or i32 %5, %6, !dbg !2644
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2645
  br label %187, !dbg !2646

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %9, metadata !2637, metadata !DIExpression()), !dbg !2638
  %10 = and i32 %9, -241, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %10, metadata !2637, metadata !DIExpression()), !dbg !2638
  %11 = zext i8 %1 to i32, !dbg !2649
  %12 = shl nuw nsw i32 %11, 4, !dbg !2650
  %13 = or i32 %10, %12, !dbg !2651
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2652
  br label %187, !dbg !2653

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %15, metadata !2637, metadata !DIExpression()), !dbg !2638
  %16 = and i32 %15, -3841, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %16, metadata !2637, metadata !DIExpression()), !dbg !2638
  %17 = zext i8 %1 to i32, !dbg !2656
  %18 = shl nuw nsw i32 %17, 8, !dbg !2657
  %19 = or i32 %16, %18, !dbg !2658
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2659
  br label %187, !dbg !2660

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %21, metadata !2637, metadata !DIExpression()), !dbg !2638
  %22 = and i32 %21, -61441, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %22, metadata !2637, metadata !DIExpression()), !dbg !2638
  %23 = zext i8 %1 to i32, !dbg !2663
  %24 = shl nuw nsw i32 %23, 12, !dbg !2664
  %25 = or i32 %22, %24, !dbg !2665
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2666
  br label %187, !dbg !2667

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %27, metadata !2637, metadata !DIExpression()), !dbg !2638
  %28 = and i32 %27, -983041, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %28, metadata !2637, metadata !DIExpression()), !dbg !2638
  %29 = zext i8 %1 to i32, !dbg !2670
  %30 = shl nuw nsw i32 %29, 16, !dbg !2671
  %31 = or i32 %28, %30, !dbg !2672
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2673
  br label %187, !dbg !2674

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %33, metadata !2637, metadata !DIExpression()), !dbg !2638
  %34 = and i32 %33, -15728641, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %34, metadata !2637, metadata !DIExpression()), !dbg !2638
  %35 = zext i8 %1 to i32, !dbg !2677
  %36 = shl nuw nsw i32 %35, 20, !dbg !2678
  %37 = or i32 %34, %36, !dbg !2679
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2680
  br label %187, !dbg !2681

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %39, metadata !2637, metadata !DIExpression()), !dbg !2638
  %40 = and i32 %39, -251658241, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %40, metadata !2637, metadata !DIExpression()), !dbg !2638
  %41 = zext i8 %1 to i32, !dbg !2684
  %42 = shl nuw i32 %41, 24, !dbg !2685
  %43 = or i32 %40, %42, !dbg !2686
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2687
  br label %187, !dbg !2688

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2689
  call void @llvm.dbg.value(metadata i32 %45, metadata !2637, metadata !DIExpression()), !dbg !2638
  %46 = and i32 %45, 268435455, !dbg !2690
  call void @llvm.dbg.value(metadata i32 %46, metadata !2637, metadata !DIExpression()), !dbg !2638
  %47 = zext i8 %1 to i32, !dbg !2691
  %48 = shl i32 %47, 28, !dbg !2692
  %49 = or i32 %46, %48, !dbg !2693
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2694
  br label %187, !dbg !2695

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %51, metadata !2637, metadata !DIExpression()), !dbg !2638
  %52 = and i32 %51, -16, !dbg !2697
  call void @llvm.dbg.value(metadata i32 %52, metadata !2637, metadata !DIExpression()), !dbg !2638
  %53 = zext i8 %1 to i32, !dbg !2698
  %54 = or i32 %52, %53, !dbg !2699
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2700
  br label %187, !dbg !2701

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %56, metadata !2637, metadata !DIExpression()), !dbg !2638
  %57 = and i32 %56, -241, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %57, metadata !2637, metadata !DIExpression()), !dbg !2638
  %58 = zext i8 %1 to i32, !dbg !2704
  %59 = shl nuw nsw i32 %58, 4, !dbg !2705
  %60 = or i32 %57, %59, !dbg !2706
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2707
  br label %187, !dbg !2708

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %62, metadata !2637, metadata !DIExpression()), !dbg !2638
  %63 = and i32 %62, -3841, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %63, metadata !2637, metadata !DIExpression()), !dbg !2638
  %64 = zext i8 %1 to i32, !dbg !2711
  %65 = shl nuw nsw i32 %64, 8, !dbg !2712
  %66 = or i32 %63, %65, !dbg !2713
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2714
  br label %187, !dbg !2715

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2716
  call void @llvm.dbg.value(metadata i32 %68, metadata !2637, metadata !DIExpression()), !dbg !2638
  %69 = and i32 %68, -61441, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %69, metadata !2637, metadata !DIExpression()), !dbg !2638
  %70 = zext i8 %1 to i32, !dbg !2718
  %71 = shl nuw nsw i32 %70, 12, !dbg !2719
  %72 = or i32 %69, %71, !dbg !2720
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2721
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2722

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !2724
  br label %187, !dbg !2726

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %76, metadata !2637, metadata !DIExpression()), !dbg !2638
  %77 = and i32 %76, -983041, !dbg !2728
  call void @llvm.dbg.value(metadata i32 %77, metadata !2637, metadata !DIExpression()), !dbg !2638
  %78 = zext i8 %1 to i32, !dbg !2729
  %79 = shl nuw nsw i32 %78, 16, !dbg !2730
  %80 = or i32 %77, %79, !dbg !2731
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2732
  %81 = and i8 %1, -2, !dbg !2733
  %82 = icmp eq i8 %81, 4, !dbg !2733
  br i1 %82, label %83, label %187, !dbg !2733

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !2735
  br label %187, !dbg !2737

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %86, metadata !2637, metadata !DIExpression()), !dbg !2638
  %87 = and i32 %86, -15728641, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %87, metadata !2637, metadata !DIExpression()), !dbg !2638
  %88 = zext i8 %1 to i32, !dbg !2740
  %89 = shl nuw nsw i32 %88, 20, !dbg !2741
  %90 = or i32 %87, %89, !dbg !2742
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2743
  %91 = icmp eq i8 %1, 6, !dbg !2744
  br i1 %91, label %92, label %187, !dbg !2746

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !2747
  br label %187, !dbg !2749

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2750
  call void @llvm.dbg.value(metadata i32 %95, metadata !2637, metadata !DIExpression()), !dbg !2638
  %96 = and i32 %95, -251658241, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %96, metadata !2637, metadata !DIExpression()), !dbg !2638
  %97 = zext i8 %1 to i32, !dbg !2752
  %98 = shl nuw i32 %97, 24, !dbg !2753
  %99 = or i32 %96, %98, !dbg !2754
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2755
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2756

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !2758
  br label %187, !dbg !2760

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %103, metadata !2637, metadata !DIExpression()), !dbg !2638
  %104 = and i32 %103, 268435455, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %104, metadata !2637, metadata !DIExpression()), !dbg !2638
  %105 = zext i8 %1 to i32, !dbg !2763
  %106 = shl i32 %105, 28, !dbg !2764
  %107 = or i32 %104, %106, !dbg !2765
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2766
  %108 = and i8 %1, -3, !dbg !2767
  %109 = icmp eq i8 %108, 4, !dbg !2767
  br i1 %109, label %110, label %187, !dbg !2767

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !2769
  br label %187, !dbg !2771

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %113, metadata !2637, metadata !DIExpression()), !dbg !2638
  %114 = and i32 %113, -16, !dbg !2773
  call void @llvm.dbg.value(metadata i32 %114, metadata !2637, metadata !DIExpression()), !dbg !2638
  %115 = zext i8 %1 to i32, !dbg !2774
  %116 = or i32 %114, %115, !dbg !2775
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2776
  %117 = and i8 %1, -3, !dbg !2777
  %118 = icmp eq i8 %117, 4, !dbg !2777
  br i1 %118, label %119, label %187, !dbg !2777

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !2779
  br label %187, !dbg !2781

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2782
  call void @llvm.dbg.value(metadata i32 %122, metadata !2637, metadata !DIExpression()), !dbg !2638
  %123 = and i32 %122, -241, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %123, metadata !2637, metadata !DIExpression()), !dbg !2638
  %124 = zext i8 %1 to i32, !dbg !2784
  %125 = shl nuw nsw i32 %124, 4, !dbg !2785
  %126 = or i32 %123, %125, !dbg !2786
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2787
  br label %187, !dbg !2788

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2789
  call void @llvm.dbg.value(metadata i32 %128, metadata !2637, metadata !DIExpression()), !dbg !2638
  %129 = and i32 %128, -3841, !dbg !2790
  call void @llvm.dbg.value(metadata i32 %129, metadata !2637, metadata !DIExpression()), !dbg !2638
  %130 = zext i8 %1 to i32, !dbg !2791
  %131 = shl nuw nsw i32 %130, 8, !dbg !2792
  %132 = or i32 %129, %131, !dbg !2793
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2794
  br label %187, !dbg !2795

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %134, metadata !2637, metadata !DIExpression()), !dbg !2638
  %135 = and i32 %134, -61441, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %135, metadata !2637, metadata !DIExpression()), !dbg !2638
  %136 = zext i8 %1 to i32, !dbg !2798
  %137 = shl nuw nsw i32 %136, 12, !dbg !2799
  %138 = or i32 %135, %137, !dbg !2800
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2801
  br label %187, !dbg !2802

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2803
  call void @llvm.dbg.value(metadata i32 %140, metadata !2637, metadata !DIExpression()), !dbg !2638
  %141 = and i32 %140, -983041, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %141, metadata !2637, metadata !DIExpression()), !dbg !2638
  %142 = zext i8 %1 to i32, !dbg !2805
  %143 = shl nuw nsw i32 %142, 16, !dbg !2806
  %144 = or i32 %141, %143, !dbg !2807
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2808
  br label %187, !dbg !2809

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %146, metadata !2637, metadata !DIExpression()), !dbg !2638
  %147 = and i32 %146, -15728641, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %147, metadata !2637, metadata !DIExpression()), !dbg !2638
  %148 = zext i8 %1 to i32, !dbg !2812
  %149 = shl nuw nsw i32 %148, 20, !dbg !2813
  %150 = or i32 %147, %149, !dbg !2814
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2815
  br label %187, !dbg !2816

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %152, metadata !2637, metadata !DIExpression()), !dbg !2638
  %153 = and i32 %152, -251658241, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %153, metadata !2637, metadata !DIExpression()), !dbg !2638
  %154 = zext i8 %1 to i32, !dbg !2819
  %155 = shl nuw i32 %154, 24, !dbg !2820
  %156 = or i32 %153, %155, !dbg !2821
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2822
  br label %187, !dbg !2823

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %158, metadata !2637, metadata !DIExpression()), !dbg !2638
  %159 = and i32 %158, 268435455, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %159, metadata !2637, metadata !DIExpression()), !dbg !2638
  %160 = zext i8 %1 to i32, !dbg !2826
  %161 = shl i32 %160, 28, !dbg !2827
  %162 = or i32 %159, %161, !dbg !2828
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2829
  br label %187, !dbg !2830

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %164, metadata !2637, metadata !DIExpression()), !dbg !2638
  %165 = and i32 %164, -241, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %165, metadata !2637, metadata !DIExpression()), !dbg !2638
  %166 = zext i8 %1 to i32, !dbg !2833
  %167 = shl nuw nsw i32 %166, 4, !dbg !2834
  %168 = or i32 %165, %167, !dbg !2835
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2836
  br label %187, !dbg !2837

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %170, metadata !2637, metadata !DIExpression()), !dbg !2638
  %171 = and i32 %170, -3841, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %171, metadata !2637, metadata !DIExpression()), !dbg !2638
  %172 = zext i8 %1 to i32, !dbg !2840
  %173 = shl nuw nsw i32 %172, 8, !dbg !2841
  %174 = or i32 %171, %173, !dbg !2842
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2843
  br label %187, !dbg !2844

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %176, metadata !2637, metadata !DIExpression()), !dbg !2638
  %177 = and i32 %176, -61441, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %177, metadata !2637, metadata !DIExpression()), !dbg !2638
  %178 = zext i8 %1 to i32, !dbg !2847
  %179 = shl nuw nsw i32 %178, 12, !dbg !2848
  %180 = or i32 %177, %179, !dbg !2849
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2850
  br label %187, !dbg !2851

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %182, metadata !2637, metadata !DIExpression()), !dbg !2638
  %183 = and i32 %182, -983041, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %183, metadata !2637, metadata !DIExpression()), !dbg !2638
  %184 = zext i8 %1 to i32, !dbg !2854
  %185 = shl nuw nsw i32 %184, 16, !dbg !2855
  %186 = or i32 %183, %185, !dbg !2856
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2857
  br label %187, !dbg !2858

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2859
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2862, metadata !DIExpression()), !dbg !2863
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2864
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2865, !srcloc !2866
  tail call void asm sideeffect "isb", ""() #15, !dbg !2867, !srcloc !2868
  ret void, !dbg !2869
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #1 !dbg !2870 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2874, metadata !DIExpression()), !dbg !2875
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2876
  ret void, !dbg !2877
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2878 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2881, !srcloc !2887
  call void @llvm.dbg.value(metadata i32 %1, metadata !2884, metadata !DIExpression()) #15, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %1, metadata !2880, metadata !DIExpression()), !dbg !2889
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2890, !srcloc !2893
  ret i32 %1, !dbg !2894
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2897, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i32 %0, metadata !2899, metadata !DIExpression()) #15, !dbg !2902
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2905, !srcloc !2906
  ret void, !dbg !2907
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 %1, metadata !2913, metadata !DIExpression()), !dbg !2915
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
  ], !dbg !2916

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2915
  %4 = trunc i32 %1 to i8, !dbg !2917
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !2918
  br label %5, !dbg !2919

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2915
  ret i32 %6, !dbg !2920
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2921 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2923, metadata !DIExpression()), !dbg !2925
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %1, metadata !2924, metadata !DIExpression()), !dbg !2925
  %2 = lshr i32 %1, 13, !dbg !2927
  %3 = and i32 %2, 7, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %3, metadata !2924, metadata !DIExpression()), !dbg !2925
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %4, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i32 %4, metadata !2923, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2925
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2930
  %6 = load i32, i32* %5, align 4, !dbg !2930
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2930
  %8 = load i32, i32* %7, align 4, !dbg !2930
  %9 = and i32 %4, -2048, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %9, metadata !2923, metadata !DIExpression()), !dbg !2925
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2932
  %10 = or i32 %9, %8, !dbg !2932
  call void @llvm.dbg.value(metadata i32 %10, metadata !2923, metadata !DIExpression()), !dbg !2925
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2934
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2935
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2936
  tail call void @SystemCoreClockUpdate() #16, !dbg !2937
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2938
  %13 = udiv i32 %12, 1000, !dbg !2939
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !2940
  ret void, !dbg !2941
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #7 !dbg !2942 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2943
  ret i32 %1, !dbg !2944
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #7 !dbg !2945 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2946
  ret i32 %1, !dbg !2947
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #8 !dbg !2948 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2952
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2950, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2951, metadata !DIExpression()), !dbg !2954
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2955
  store volatile i32 %3, i32* %1, align 4, !dbg !2956
  %4 = load volatile i32, i32* %1, align 4, !dbg !2957
  %5 = lshr i32 %4, 28, !dbg !2958
  %6 = and i32 %5, 3, !dbg !2959
  store volatile i32 %6, i32* %1, align 4, !dbg !2960
  %7 = load volatile i32, i32* %1, align 4, !dbg !2961
  %8 = icmp eq i32 %7, 0, !dbg !2963
  br i1 %8, label %9, label %22, !dbg !2964

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2965
  store volatile i32 %10, i32* %1, align 4, !dbg !2967
  %11 = load volatile i32, i32* %1, align 4, !dbg !2968
  %12 = and i32 %11, -16777217, !dbg !2969
  store volatile i32 %12, i32* %1, align 4, !dbg !2970
  %13 = load volatile i32, i32* %1, align 4, !dbg !2971
  %14 = or i32 %13, 536870912, !dbg !2972
  store volatile i32 %14, i32* %1, align 4, !dbg !2973
  %15 = load volatile i32, i32* %1, align 4, !dbg !2974
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2975
  br label %16, !dbg !2976

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2977
  store volatile i32 %17, i32* %1, align 4, !dbg !2979
  %18 = load volatile i32, i32* %1, align 4, !dbg !2980
  %19 = and i32 %18, 134217728, !dbg !2981
  store volatile i32 %19, i32* %1, align 4, !dbg !2982
  %20 = load volatile i32, i32* %1, align 4, !dbg !2983
  %21 = icmp eq i32 %20, 0, !dbg !2984
  br i1 %21, label %16, label %22, !dbg !2985, !llvm.loop !2986

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2988
  ret void, !dbg !2988
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #6 !dbg !2989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2996, metadata !DIExpression()), !dbg !2997
  %2 = bitcast i8* %0 to i32*, !dbg !2998
  %3 = load volatile i32, i32* %2, align 4, !dbg !2999
  ret i32 %3, !dbg !3000
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !3001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 %1, metadata !3006, metadata !DIExpression()), !dbg !3007
  %3 = bitcast i8* %0 to i32*, !dbg !3008
  store volatile i32 %1, i32* %3, align 4, !dbg !3009
  ret void, !dbg !3010
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #8 !dbg !3011 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  %3 = bitcast i32* %2 to i8*, !dbg !3017
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3017
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3014, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3015, metadata !DIExpression()), !dbg !3016
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3019
  store volatile i32 %4, i32* %2, align 4, !dbg !3020
  %5 = load volatile i32, i32* %2, align 4, !dbg !3021
  %6 = lshr i32 %5, 28, !dbg !3022
  %7 = and i32 %6, 3, !dbg !3023
  store volatile i32 %7, i32* %2, align 4, !dbg !3024
  %8 = load volatile i32, i32* %2, align 4, !dbg !3025
  %9 = icmp eq i32 %8, 3, !dbg !3027
  br i1 %9, label %38, label %10, !dbg !3028

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3029
  store volatile i32 %11, i32* %2, align 4, !dbg !3031
  %12 = load volatile i32, i32* %2, align 4, !dbg !3032
  %13 = and i32 %12, -262145, !dbg !3033
  store volatile i32 %13, i32* %2, align 4, !dbg !3034
  %14 = load volatile i32, i32* %2, align 4, !dbg !3035
  %15 = and i32 %14, -16777217, !dbg !3036
  store volatile i32 %15, i32* %2, align 4, !dbg !3037
  %16 = load volatile i32, i32* %2, align 4, !dbg !3038
  store volatile i32 %16, i32* %2, align 4, !dbg !3039
  %17 = load volatile i32, i32* %2, align 4, !dbg !3040
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !3041
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3042
  store volatile i32 %18, i32* %2, align 4, !dbg !3043
  %19 = load volatile i32, i32* %2, align 4, !dbg !3044
  %20 = and i32 %19, -805306369, !dbg !3045
  store volatile i32 %20, i32* %2, align 4, !dbg !3046
  %21 = load volatile i32, i32* %2, align 4, !dbg !3047
  %22 = and i32 %21, -16777217, !dbg !3048
  store volatile i32 %22, i32* %2, align 4, !dbg !3049
  %23 = load volatile i32, i32* %2, align 4, !dbg !3050
  %24 = or i32 %23, 805306368, !dbg !3051
  store volatile i32 %24, i32* %2, align 4, !dbg !3052
  %25 = load volatile i32, i32* %2, align 4, !dbg !3053
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !3054
  br label %26, !dbg !3055

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3056
  store volatile i32 %27, i32* %2, align 4, !dbg !3058
  %28 = load volatile i32, i32* %2, align 4, !dbg !3059
  %29 = and i32 %28, 67108864, !dbg !3060
  store volatile i32 %29, i32* %2, align 4, !dbg !3061
  %30 = load volatile i32, i32* %2, align 4, !dbg !3062
  %31 = icmp eq i32 %30, 0, !dbg !3063
  br i1 %31, label %26, label %32, !dbg !3064, !llvm.loop !3065

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3067
  store volatile i32 %33, i32* %2, align 4, !dbg !3068
  %34 = load volatile i32, i32* %2, align 4, !dbg !3069
  %35 = and i32 %34, -262145, !dbg !3070
  store volatile i32 %35, i32* %2, align 4, !dbg !3071
  %36 = load volatile i32, i32* %2, align 4, !dbg !3072
  %37 = and i32 %36, -16777217, !dbg !3073
  store volatile i32 %37, i32* %2, align 4, !dbg !3074
  br label %38, !dbg !3075

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3076
  store volatile i32 %39, i32* %2, align 4, !dbg !3077
  %40 = icmp eq i8 %0, 0, !dbg !3078
  %41 = load volatile i32, i32* %2, align 4, !dbg !3080
  br i1 %40, label %44, label %42, !dbg !3081

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3082
  store volatile i32 %43, i32* %2, align 4, !dbg !3084
  br label %45, !dbg !3085

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3086
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3088
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3090
  ret void, !dbg !3090
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #8 !dbg !3091 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3095
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3094, metadata !DIExpression()), !dbg !3097
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3098
  store volatile i32 %3, i32* %1, align 4, !dbg !3099
  %4 = load volatile i32, i32* %1, align 4, !dbg !3100
  %5 = and i32 %4, -805306369, !dbg !3101
  store volatile i32 %5, i32* %1, align 4, !dbg !3102
  %6 = load volatile i32, i32* %1, align 4, !dbg !3103
  %7 = and i32 %6, -16777217, !dbg !3104
  store volatile i32 %7, i32* %1, align 4, !dbg !3105
  %8 = load volatile i32, i32* %1, align 4, !dbg !3106
  store volatile i32 %8, i32* %1, align 4, !dbg !3107
  %9 = load volatile i32, i32* %1, align 4, !dbg !3108
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !3109
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3110
  store volatile i32 %10, i32* %1, align 4, !dbg !3111
  %11 = load volatile i32, i32* %1, align 4, !dbg !3112
  %12 = and i32 %11, -262145, !dbg !3113
  store volatile i32 %12, i32* %1, align 4, !dbg !3114
  %13 = load volatile i32, i32* %1, align 4, !dbg !3115
  %14 = and i32 %13, -16777217, !dbg !3116
  store volatile i32 %14, i32* %1, align 4, !dbg !3117
  %15 = load volatile i32, i32* %1, align 4, !dbg !3118
  store volatile i32 %15, i32* %1, align 4, !dbg !3119
  %16 = load volatile i32, i32* %1, align 4, !dbg !3120
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !3121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3122
  ret void, !dbg !3122
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !3123 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3127
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3125, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3126, metadata !DIExpression()), !dbg !3129
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3130
  store volatile i32 %3, i32* %1, align 4, !dbg !3131
  %4 = load volatile i32, i32* %1, align 4, !dbg !3132
  %5 = and i32 %4, -8, !dbg !3133
  store volatile i32 %5, i32* %1, align 4, !dbg !3134
  %6 = load volatile i32, i32* %1, align 4, !dbg !3135
  store volatile i32 %6, i32* %1, align 4, !dbg !3136
  %7 = load volatile i32, i32* %1, align 4, !dbg !3137
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3138
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3139
  store volatile i32 %8, i32* %1, align 4, !dbg !3140
  %9 = load volatile i32, i32* %1, align 4, !dbg !3141
  %10 = and i32 %9, -49153, !dbg !3142
  store volatile i32 %10, i32* %1, align 4, !dbg !3143
  %11 = load volatile i32, i32* %1, align 4, !dbg !3144
  store volatile i32 %11, i32* %1, align 4, !dbg !3145
  %12 = load volatile i32, i32* %1, align 4, !dbg !3146
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !3147
  br label %13, !dbg !3148

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3149
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3150
  %16 = icmp eq i32 %14, %15, !dbg !3151
  br i1 %16, label %17, label %13, !dbg !3148, !llvm.loop !3152

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !3154
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3155
  tail call void @SystemCoreClockUpdate() #16, !dbg !3156
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3157
  %20 = udiv i32 %19, 1000, !dbg !3158
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3160
  ret void, !dbg !3160
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !3161 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3165
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3165
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3163, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3164, metadata !DIExpression()), !dbg !3167
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !3168
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3169
  store volatile i32 %3, i32* %1, align 4, !dbg !3170
  %4 = load volatile i32, i32* %1, align 4, !dbg !3171
  %5 = and i32 %4, -49153, !dbg !3172
  store volatile i32 %5, i32* %1, align 4, !dbg !3173
  %6 = load volatile i32, i32* %1, align 4, !dbg !3174
  %7 = or i32 %6, 16384, !dbg !3175
  store volatile i32 %7, i32* %1, align 4, !dbg !3176
  %8 = load volatile i32, i32* %1, align 4, !dbg !3177
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3178
  br label %9, !dbg !3179

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3180
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3181
  %12 = icmp eq i32 %10, %11, !dbg !3182
  br i1 %12, label %13, label %9, !dbg !3179, !llvm.loop !3183

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3185
  store volatile i32 %14, i32* %1, align 4, !dbg !3186
  %15 = load volatile i32, i32* %1, align 4, !dbg !3187
  %16 = and i32 %15, -1009, !dbg !3188
  store volatile i32 %16, i32* %1, align 4, !dbg !3189
  %17 = load volatile i32, i32* %1, align 4, !dbg !3190
  %18 = or i32 %17, 128, !dbg !3191
  store volatile i32 %18, i32* %1, align 4, !dbg !3192
  %19 = load volatile i32, i32* %1, align 4, !dbg !3193
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3194
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3195
  store volatile i32 %20, i32* %1, align 4, !dbg !3196
  %21 = load volatile i32, i32* %1, align 4, !dbg !3197
  %22 = and i32 %21, -8, !dbg !3198
  store volatile i32 %22, i32* %1, align 4, !dbg !3199
  %23 = load volatile i32, i32* %1, align 4, !dbg !3200
  %24 = or i32 %23, 4, !dbg !3201
  store volatile i32 %24, i32* %1, align 4, !dbg !3202
  %25 = load volatile i32, i32* %1, align 4, !dbg !3203
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3204
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3205
  tail call void @SystemCoreClockUpdate() #16, !dbg !3206
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3207
  %27 = udiv i32 %26, 1000, !dbg !3208
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3210
  ret void, !dbg !3210
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !3211 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3215
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3215
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3213, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3214, metadata !DIExpression()), !dbg !3217
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !3218
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3219
  store volatile i32 %3, i32* %1, align 4, !dbg !3220
  %4 = load volatile i32, i32* %1, align 4, !dbg !3221
  %5 = and i32 %4, -49153, !dbg !3222
  store volatile i32 %5, i32* %1, align 4, !dbg !3223
  %6 = load volatile i32, i32* %1, align 4, !dbg !3224
  %7 = or i32 %6, 32768, !dbg !3225
  store volatile i32 %7, i32* %1, align 4, !dbg !3226
  %8 = load volatile i32, i32* %1, align 4, !dbg !3227
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3228
  br label %9, !dbg !3229

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3230
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3231
  %12 = icmp eq i32 %10, %11, !dbg !3232
  br i1 %12, label %13, label %9, !dbg !3229, !llvm.loop !3233

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3235
  store volatile i32 %14, i32* %1, align 4, !dbg !3236
  %15 = load volatile i32, i32* %1, align 4, !dbg !3237
  %16 = and i32 %15, -1009, !dbg !3238
  store volatile i32 %16, i32* %1, align 4, !dbg !3239
  %17 = load volatile i32, i32* %1, align 4, !dbg !3240
  %18 = or i32 %17, 32, !dbg !3241
  store volatile i32 %18, i32* %1, align 4, !dbg !3242
  %19 = load volatile i32, i32* %1, align 4, !dbg !3243
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3244
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3245
  store volatile i32 %20, i32* %1, align 4, !dbg !3246
  %21 = load volatile i32, i32* %1, align 4, !dbg !3247
  %22 = and i32 %21, -8, !dbg !3248
  store volatile i32 %22, i32* %1, align 4, !dbg !3249
  %23 = load volatile i32, i32* %1, align 4, !dbg !3250
  %24 = or i32 %23, 4, !dbg !3251
  store volatile i32 %24, i32* %1, align 4, !dbg !3252
  %25 = load volatile i32, i32* %1, align 4, !dbg !3253
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3254
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3255
  tail call void @SystemCoreClockUpdate() #16, !dbg !3256
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3257
  %27 = udiv i32 %26, 1000, !dbg !3258
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3259
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3260
  ret void, !dbg !3260
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !3261 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3265
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3265
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3264, metadata !DIExpression()), !dbg !3267
  tail call void @cmnPLL1ON() #14, !dbg !3268
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3269
  store volatile i32 %3, i32* %1, align 4, !dbg !3270
  %4 = load volatile i32, i32* %1, align 4, !dbg !3271
  %5 = and i32 %4, -49153, !dbg !3272
  store volatile i32 %5, i32* %1, align 4, !dbg !3273
  %6 = load volatile i32, i32* %1, align 4, !dbg !3274
  store volatile i32 %6, i32* %1, align 4, !dbg !3275
  %7 = load volatile i32, i32* %1, align 4, !dbg !3276
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3277
  br label %8, !dbg !3278

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3279
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3280
  %11 = icmp eq i32 %9, %10, !dbg !3281
  br i1 %11, label %12, label %8, !dbg !3278, !llvm.loop !3282

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3284
  store volatile i32 %13, i32* %1, align 4, !dbg !3285
  %14 = load volatile i32, i32* %1, align 4, !dbg !3286
  %15 = and i32 %14, -8, !dbg !3287
  store volatile i32 %15, i32* %1, align 4, !dbg !3288
  %16 = load volatile i32, i32* %1, align 4, !dbg !3289
  %17 = or i32 %16, 2, !dbg !3290
  store volatile i32 %17, i32* %1, align 4, !dbg !3291
  %18 = load volatile i32, i32* %1, align 4, !dbg !3292
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3293
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3294
  tail call void @SystemCoreClockUpdate() #16, !dbg !3295
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3296
  %20 = udiv i32 %19, 1000, !dbg !3297
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3299
  ret void, !dbg !3299
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #8 section ".ramTEXT" !dbg !3300 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3304
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3304
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3302, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3303, metadata !DIExpression()), !dbg !3306
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3307
  store volatile i32 %3, i32* %1, align 4, !dbg !3308
  %4 = load volatile i32, i32* %1, align 4, !dbg !3309
  %5 = and i32 %4, -24577, !dbg !3310
  store volatile i32 %5, i32* %1, align 4, !dbg !3311
  %6 = load volatile i32, i32* %1, align 4, !dbg !3312
  store volatile i32 %6, i32* %1, align 4, !dbg !3313
  %7 = load volatile i32, i32* %1, align 4, !dbg !3314
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3316
  ret void, !dbg !3316
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #6 !dbg !3317 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %1, metadata !3321, metadata !DIExpression()), !dbg !3323
  ret i32 %1, !dbg !3324
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #6 !dbg !3325 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3328
  %2 = and i32 %1, 1, !dbg !3330
  %3 = icmp eq i32 %2, 0, !dbg !3330
  br i1 %3, label %7, label %4, !dbg !3331

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3332
  %6 = and i32 %5, 255, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %5, metadata !3327, metadata !DIExpression()), !dbg !3335
  br label %7, !dbg !3336

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3337
  ret i32 %8, !dbg !3338
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !3339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i8 %1, metadata !3345, metadata !DIExpression()), !dbg !3347
  %3 = icmp eq i32 %0, 0, !dbg !3348
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3348
  call void @llvm.dbg.value(metadata i32 %4, metadata !3346, metadata !DIExpression()), !dbg !3347
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3349

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3350
  %9 = and i32 %8, 32, !dbg !3351
  %10 = icmp eq i32 %9, 0, !dbg !3352
  br i1 %10, label %7, label %11, !dbg !3349, !llvm.loop !3353

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3355
  %13 = inttoptr i32 %4 to i32*, !dbg !3356
  store volatile i32 %12, i32* %13, align 65536, !dbg !3357
  ret void, !dbg !3358
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #1 !dbg !3359 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()), !dbg !3366
  %2 = icmp eq i32 %0, 0, !dbg !3367
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3367
  call void @llvm.dbg.value(metadata i32 %3, metadata !3364, metadata !DIExpression()), !dbg !3366
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3368

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3369
  %8 = and i32 %7, 1, !dbg !3370
  %9 = icmp eq i32 %8, 0, !dbg !3371
  br i1 %9, label %6, label %10, !dbg !3368, !llvm.loop !3372

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3374
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3374
  %13 = trunc i32 %12 to i8, !dbg !3374
  call void @llvm.dbg.value(metadata i8 %13, metadata !3365, metadata !DIExpression()), !dbg !3366
  ret i8 %13, !dbg !3375
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #6 !dbg !3376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3383
  %2 = icmp eq i32 %0, 0, !dbg !3384
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3384
  call void @llvm.dbg.value(metadata i32 %3, metadata !3381, metadata !DIExpression()), !dbg !3383
  %4 = or i32 %3, 20, !dbg !3385
  %5 = inttoptr i32 %4 to i32*, !dbg !3385
  %6 = load volatile i32, i32* %5, align 4, !dbg !3385
  %7 = and i32 %6, 1, !dbg !3387
  %8 = icmp eq i32 %7, 0, !dbg !3387
  br i1 %8, label %13, label %9, !dbg !3388

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3389
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3389
  %12 = and i32 %11, 255, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %11, metadata !3382, metadata !DIExpression()), !dbg !3383
  br label %13, !dbg !3392

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3393
  ret i32 %14, !dbg !3394
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3399, metadata !DIExpression()), !dbg !3400
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3401
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3402

2:                                                ; preds = %1
  br label %3, !dbg !3403

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3407
  %6 = or i32 %5, 1, !dbg !3407
  store volatile i32 %6, i32* %4, align 4, !dbg !3407
  br label %7, !dbg !3408

7:                                                ; preds = %3, %1
  ret void, !dbg !3408
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i16 %2, metadata !3417, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i16 %3, metadata !3418, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i16 %4, metadata !3419, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3421, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3428, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3430, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()), !dbg !3432
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !3435
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3436
  %7 = icmp eq i32 %0, 1, !dbg !3437
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3437
  call void @llvm.dbg.value(metadata i32 %8, metadata !3421, metadata !DIExpression()), !dbg !3432
  %9 = or i32 %8, 36, !dbg !3438
  %10 = inttoptr i32 %9 to i32*, !dbg !3438
  store volatile i32 3, i32* %10, align 4, !dbg !3439
  %11 = or i32 %8, 12, !dbg !3440
  %12 = inttoptr i32 %11 to i32*, !dbg !3440
  %13 = load volatile i32, i32* %12, align 4, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %13, metadata !3423, metadata !DIExpression()), !dbg !3432
  %14 = or i32 %13, 128, !dbg !3441
  store volatile i32 %14, i32* %12, align 4, !dbg !3442
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3443
  %16 = udiv i32 %15, %1, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %16, metadata !3422, metadata !DIExpression()), !dbg !3432
  %17 = lshr i32 %16, 8, !dbg !3445
  %18 = add nuw nsw i32 %17, 1, !dbg !3446
  call void @llvm.dbg.value(metadata i32 %18, metadata !3424, metadata !DIExpression()), !dbg !3432
  %19 = udiv i32 %16, %18, !dbg !3447
  %20 = add i32 %19, -1, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %20, metadata !3425, metadata !DIExpression()), !dbg !3432
  %21 = icmp eq i32 %20, 3, !dbg !3450
  %22 = lshr i32 %20, 1, !dbg !3452
  %23 = add nsw i32 %22, -1, !dbg !3452
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %24, metadata !3426, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3431, metadata !DIExpression()), !dbg !3432
  %25 = mul i32 %15, 10, !dbg !3453
  %26 = udiv i32 %25, %1, !dbg !3454
  %27 = udiv i32 %26, %16, !dbg !3455
  %28 = mul i32 %19, -10, !dbg !3456
  %29 = add i32 %27, %28, !dbg !3457
  %30 = urem i32 %29, 10, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %30, metadata !3427, metadata !DIExpression()), !dbg !3432
  %31 = and i32 %18, 255, !dbg !3459
  %32 = inttoptr i32 %8 to i32*, !dbg !3460
  store volatile i32 %31, i32* %32, align 65536, !dbg !3461
  %33 = lshr i32 %18, 8, !dbg !3462
  %34 = and i32 %33, 255, !dbg !3463
  %35 = or i32 %8, 4, !dbg !3464
  %36 = inttoptr i32 %35 to i32*, !dbg !3464
  store volatile i32 %34, i32* %36, align 4, !dbg !3465
  %37 = or i32 %8, 40, !dbg !3466
  %38 = inttoptr i32 %37 to i32*, !dbg !3466
  store volatile i32 %20, i32* %38, align 8, !dbg !3467
  %39 = or i32 %8, 44, !dbg !3468
  %40 = inttoptr i32 %39 to i32*, !dbg !3468
  store volatile i32 %24, i32* %40, align 4, !dbg !3469
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3470
  %42 = load i16, i16* %41, align 2, !dbg !3470
  %43 = zext i16 %42 to i32, !dbg !3470
  %44 = or i32 %8, 88, !dbg !3471
  %45 = inttoptr i32 %44 to i32*, !dbg !3471
  store volatile i32 %43, i32* %45, align 8, !dbg !3472
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3473
  %47 = load i16, i16* %46, align 2, !dbg !3473
  %48 = zext i16 %47 to i32, !dbg !3473
  %49 = or i32 %8, 84, !dbg !3474
  %50 = inttoptr i32 %49 to i32*, !dbg !3474
  store volatile i32 %48, i32* %50, align 4, !dbg !3475
  store volatile i32 %13, i32* %12, align 4, !dbg !3476
  %51 = or i32 %8, 8, !dbg !3477
  %52 = inttoptr i32 %51 to i32*, !dbg !3477
  store volatile i32 71, i32* %52, align 8, !dbg !3478
  %53 = inttoptr i32 %11 to i16*, !dbg !3479
  %54 = load volatile i16, i16* %53, align 4, !dbg !3479
  call void @llvm.dbg.value(metadata i16 %54, metadata !3420, metadata !DIExpression()), !dbg !3432
  %55 = and i16 %54, -64, !dbg !3480
  call void @llvm.dbg.value(metadata i16 %54, metadata !3420, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3420, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3432
  %56 = and i16 %2, -61, !dbg !3481
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3420, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3420, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3432
  %57 = and i16 %4, -57, !dbg !3482
  call void @llvm.dbg.value(metadata i16 undef, metadata !3420, metadata !DIExpression()), !dbg !3432
  %58 = or i16 %56, %3, !dbg !3481
  %59 = or i16 %58, %57, !dbg !3482
  %60 = or i16 %59, %55, !dbg !3483
  call void @llvm.dbg.value(metadata i16 %60, metadata !3420, metadata !DIExpression()), !dbg !3432
  store volatile i16 %60, i16* %53, align 4, !dbg !3484
  ret void, !dbg !3485
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !3486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %1, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32* %2, metadata !3493, metadata !DIExpression()), !dbg !3494
  %4 = icmp eq i32 %0, 0, !dbg !3495
  %5 = icmp eq i32 %1, 0, !dbg !3497
  br i1 %4, label %6, label %16, !dbg !3498

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3499

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3501
  %9 = zext i16 %8 to i32, !dbg !3501
  br label %26, !dbg !3504

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3505
  %12 = zext i16 %11 to i32, !dbg !3505
  store i32 %12, i32* %2, align 4, !dbg !3507
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3508
  %14 = zext i16 %13 to i32, !dbg !3508
  %15 = sub nsw i32 %12, %14, !dbg !3509
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3510

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3512
  %19 = zext i16 %18 to i32, !dbg !3512
  br label %26, !dbg !3515

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3516
  %22 = zext i16 %21 to i32, !dbg !3516
  store i32 %22, i32* %2, align 4, !dbg !3518
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3519
  %24 = zext i16 %23 to i32, !dbg !3519
  %25 = sub nsw i32 %22, %24, !dbg !3520
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3497
  ret void, !dbg !3521
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3522 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3526, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8* %1, metadata !3527, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 %2, metadata !3528, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %4 = icmp eq i32 %2, 0, !dbg !3531
  br i1 %4, label %15, label %5, !dbg !3534

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3529, metadata !DIExpression()), !dbg !3530
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3535

7:                                                ; preds = %5
  br label %8, !dbg !3537

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3541
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3541
  store i8 %10, i8* %11, align 1, !dbg !3541
  br label %12, !dbg !3542

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %13, metadata !3529, metadata !DIExpression()), !dbg !3530
  %14 = icmp eq i32 %13, %2, !dbg !3531
  br i1 %14, label %15, label %5, !dbg !3534, !llvm.loop !3543

15:                                               ; preds = %12, %3
  ret void, !dbg !3545
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3551, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3552, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 %2, metadata !3553, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()), !dbg !3555
  %4 = icmp eq i32 %2, 0, !dbg !3556
  br i1 %4, label %16, label %5, !dbg !3559

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3554, metadata !DIExpression()), !dbg !3555
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3560

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3562
  %9 = load i8, i8* %8, align 1, !dbg !3562
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3565
  br label %13, !dbg !3566

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3567
  %12 = load i8, i8* %11, align 1, !dbg !3567
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3570
  br label %13, !dbg !3571

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3572
  call void @llvm.dbg.value(metadata i32 %14, metadata !3554, metadata !DIExpression()), !dbg !3555
  %15 = icmp eq i32 %14, %2, !dbg !3556
  br i1 %15, label %16, label %5, !dbg !3559, !llvm.loop !3573

16:                                               ; preds = %13, %3
  ret void, !dbg !3575
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i8* %1, metadata !3581, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %2, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %3, metadata !3583, metadata !DIExpression()), !dbg !3584
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3585

5:                                                ; preds = %4
  br label %6, !dbg !3586

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3590
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !3590
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !3590
  br label %9, !dbg !3591

9:                                                ; preds = %6, %4
  ret void, !dbg !3591
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3596, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i8* %1, metadata !3597, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %2, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %3, metadata !3599, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %4, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %5, metadata !3601, metadata !DIExpression()), !dbg !3602
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3603

7:                                                ; preds = %6
  br label %8, !dbg !3604

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3608
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !3608
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !3608
  br label %11, !dbg !3609

11:                                               ; preds = %8, %6
  ret void, !dbg !3609
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3614, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3615, metadata !DIExpression()), !dbg !3616
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3617

3:                                                ; preds = %2
  br label %4, !dbg !3618

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3622
  br label %6, !dbg !3623

6:                                                ; preds = %4, %2
  ret void, !dbg !3623
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3626, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3627, metadata !DIExpression()), !dbg !3628
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3629

3:                                                ; preds = %2
  br label %4, !dbg !3630

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3634
  br label %6, !dbg !3635

6:                                                ; preds = %4, %2
  ret void, !dbg !3635
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !3636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3638, metadata !DIExpression()), !dbg !3642
  %2 = icmp eq i32 %0, 0, !dbg !3643
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %3, metadata !3639, metadata !DIExpression()), !dbg !3642
  %4 = or i32 %3, 12, !dbg !3644
  %5 = inttoptr i32 %4 to i32*, !dbg !3644
  %6 = load volatile i32, i32* %5, align 4, !dbg !3644
  call void @llvm.dbg.value(metadata i32 %6, metadata !3641, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3642
  store volatile i32 191, i32* %5, align 4, !dbg !3645
  %7 = or i32 %3, 8, !dbg !3646
  %8 = inttoptr i32 %7 to i32*, !dbg !3646
  %9 = load volatile i32, i32* %8, align 8, !dbg !3646
  call void @llvm.dbg.value(metadata i32 %9, metadata !3640, metadata !DIExpression()), !dbg !3642
  %10 = and i32 %9, 65327, !dbg !3647
  %11 = or i32 %10, 208, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %9, metadata !3640, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3642
  store volatile i32 %11, i32* %8, align 8, !dbg !3648
  %12 = or i32 %3, 68, !dbg !3649
  %13 = inttoptr i32 %12 to i32*, !dbg !3649
  store volatile i32 0, i32* %13, align 4, !dbg !3650
  store volatile i32 0, i32* %5, align 4, !dbg !3651
  %14 = or i32 %3, 16, !dbg !3652
  %15 = inttoptr i32 %14 to i32*, !dbg !3652
  store volatile i32 2, i32* %15, align 16, !dbg !3653
  %16 = and i32 %6, 65535, !dbg !3654
  store volatile i32 %16, i32* %5, align 4, !dbg !3655
  ret void, !dbg !3656
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 !dbg !3657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3661, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8 %1, metadata !3662, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8 %2, metadata !3663, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i8 %3, metadata !3664, metadata !DIExpression()), !dbg !3668
  %5 = icmp eq i32 %0, 0, !dbg !3669
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %6, metadata !3665, metadata !DIExpression()), !dbg !3668
  %7 = or i32 %6, 12, !dbg !3670
  %8 = inttoptr i32 %7 to i32*, !dbg !3670
  %9 = load volatile i32, i32* %8, align 4, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %9, metadata !3667, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3668
  store volatile i32 191, i32* %8, align 4, !dbg !3671
  %10 = zext i8 %1 to i32, !dbg !3672
  %11 = or i32 %6, 16, !dbg !3673
  %12 = inttoptr i32 %11 to i32*, !dbg !3673
  store volatile i32 %10, i32* %12, align 16, !dbg !3674
  %13 = or i32 %6, 20, !dbg !3675
  %14 = inttoptr i32 %13 to i32*, !dbg !3675
  store volatile i32 %10, i32* %14, align 4, !dbg !3676
  %15 = zext i8 %2 to i32, !dbg !3677
  %16 = or i32 %6, 24, !dbg !3678
  %17 = inttoptr i32 %16 to i32*, !dbg !3678
  store volatile i32 %15, i32* %17, align 8, !dbg !3679
  %18 = or i32 %6, 28, !dbg !3680
  %19 = inttoptr i32 %18 to i32*, !dbg !3680
  store volatile i32 %15, i32* %19, align 4, !dbg !3681
  %20 = or i32 %6, 8, !dbg !3682
  %21 = inttoptr i32 %20 to i32*, !dbg !3682
  %22 = load volatile i32, i32* %21, align 8, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %22, metadata !3666, metadata !DIExpression()), !dbg !3668
  %23 = and i32 %22, 65525, !dbg !3683
  %24 = or i32 %23, 10, !dbg !3683
  call void @llvm.dbg.value(metadata i32 %22, metadata !3666, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3668
  store volatile i32 %24, i32* %21, align 8, !dbg !3684
  %25 = and i32 %9, 65535, !dbg !3685
  store volatile i32 %25, i32* %8, align 4, !dbg !3686
  %26 = zext i8 %3 to i32, !dbg !3687
  %27 = or i32 %6, 64, !dbg !3688
  %28 = inttoptr i32 %27 to i32*, !dbg !3688
  store volatile i32 %26, i32* %28, align 64, !dbg !3689
  %29 = or i32 %6, 68, !dbg !3690
  %30 = inttoptr i32 %29 to i32*, !dbg !3690
  store volatile i32 1, i32* %30, align 4, !dbg !3691
  ret void, !dbg !3692
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !3693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3698
  %2 = icmp eq i32 %0, 0, !dbg !3699
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %3, metadata !3696, metadata !DIExpression()), !dbg !3698
  %4 = or i32 %3, 12, !dbg !3700
  %5 = inttoptr i32 %4 to i32*, !dbg !3700
  %6 = load volatile i32, i32* %5, align 4, !dbg !3700
  call void @llvm.dbg.value(metadata i32 %6, metadata !3697, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3698
  store volatile i32 191, i32* %5, align 4, !dbg !3701
  %7 = or i32 %3, 8, !dbg !3702
  %8 = inttoptr i32 %7 to i32*, !dbg !3702
  store volatile i32 0, i32* %8, align 8, !dbg !3703
  store volatile i32 0, i32* %5, align 4, !dbg !3704
  %9 = and i32 %6, 65535, !dbg !3705
  store volatile i32 %9, i32* %5, align 4, !dbg !3706
  ret void, !dbg !3707
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #1 !dbg !3708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3712
  %2 = icmp eq i32 %0, 0, !dbg !3713
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3713
  call void @llvm.dbg.value(metadata i32 %3, metadata !3711, metadata !DIExpression()), !dbg !3712
  %4 = or i32 %3, 12, !dbg !3714
  %5 = inttoptr i32 %4 to i32*, !dbg !3714
  store volatile i32 191, i32* %5, align 4, !dbg !3715
  %6 = or i32 %3, 8, !dbg !3716
  %7 = inttoptr i32 %6 to i32*, !dbg !3716
  store volatile i32 16, i32* %7, align 8, !dbg !3717
  %8 = or i32 %3, 16, !dbg !3718
  %9 = inttoptr i32 %8 to i32*, !dbg !3718
  store volatile i32 0, i32* %9, align 16, !dbg !3719
  %10 = or i32 %3, 24, !dbg !3720
  %11 = inttoptr i32 %10 to i32*, !dbg !3720
  store volatile i32 0, i32* %11, align 8, !dbg !3721
  store volatile i32 128, i32* %5, align 4, !dbg !3722
  %12 = inttoptr i32 %3 to i32*, !dbg !3723
  store volatile i32 0, i32* %12, align 65536, !dbg !3724
  %13 = or i32 %3, 4, !dbg !3725
  %14 = inttoptr i32 %13 to i32*, !dbg !3725
  store volatile i32 0, i32* %14, align 4, !dbg !3726
  store volatile i32 0, i32* %5, align 4, !dbg !3727
  store volatile i32 0, i32* %14, align 4, !dbg !3728
  store volatile i32 0, i32* %7, align 8, !dbg !3729
  store volatile i32 191, i32* %5, align 4, !dbg !3730
  store volatile i32 0, i32* %7, align 8, !dbg !3731
  store volatile i32 0, i32* %5, align 4, !dbg !3732
  store volatile i32 0, i32* %9, align 16, !dbg !3733
  %15 = or i32 %3, 28, !dbg !3734
  %16 = inttoptr i32 %15 to i32*, !dbg !3734
  store volatile i32 0, i32* %16, align 4, !dbg !3735
  %17 = or i32 %3, 36, !dbg !3736
  %18 = inttoptr i32 %17 to i32*, !dbg !3736
  store volatile i32 0, i32* %18, align 4, !dbg !3737
  %19 = or i32 %3, 40, !dbg !3738
  %20 = inttoptr i32 %19 to i32*, !dbg !3738
  store volatile i32 0, i32* %20, align 8, !dbg !3739
  %21 = or i32 %3, 44, !dbg !3740
  %22 = inttoptr i32 %21 to i32*, !dbg !3740
  store volatile i32 0, i32* %22, align 4, !dbg !3741
  %23 = or i32 %3, 52, !dbg !3742
  %24 = inttoptr i32 %23 to i32*, !dbg !3742
  store volatile i32 0, i32* %24, align 4, !dbg !3743
  %25 = or i32 %3, 60, !dbg !3744
  %26 = inttoptr i32 %25 to i32*, !dbg !3744
  store volatile i32 0, i32* %26, align 4, !dbg !3745
  %27 = or i32 %3, 64, !dbg !3746
  %28 = inttoptr i32 %27 to i32*, !dbg !3746
  store volatile i32 0, i32* %28, align 64, !dbg !3747
  %29 = or i32 %3, 68, !dbg !3748
  %30 = inttoptr i32 %29 to i32*, !dbg !3748
  store volatile i32 0, i32* %30, align 4, !dbg !3749
  %31 = or i32 %3, 72, !dbg !3750
  %32 = inttoptr i32 %31 to i32*, !dbg !3750
  store volatile i32 0, i32* %32, align 8, !dbg !3751
  %33 = or i32 %3, 76, !dbg !3752
  %34 = inttoptr i32 %33 to i32*, !dbg !3752
  store volatile i32 0, i32* %34, align 4, !dbg !3753
  %35 = or i32 %3, 80, !dbg !3754
  %36 = inttoptr i32 %35 to i32*, !dbg !3754
  store volatile i32 0, i32* %36, align 16, !dbg !3755
  %37 = or i32 %3, 84, !dbg !3756
  %38 = inttoptr i32 %37 to i32*, !dbg !3756
  store volatile i32 0, i32* %38, align 4, !dbg !3757
  %39 = or i32 %3, 88, !dbg !3758
  %40 = inttoptr i32 %39 to i32*, !dbg !3758
  store volatile i32 0, i32* %40, align 8, !dbg !3759
  %41 = or i32 %3, 96, !dbg !3760
  %42 = inttoptr i32 %41 to i32*, !dbg !3760
  store volatile i32 0, i32* %42, align 32, !dbg !3761
  ret void, !dbg !3762
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #1 !dbg !3763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3765, metadata !DIExpression()), !dbg !3767
  %2 = icmp eq i32 %0, 0, !dbg !3768
  call void @llvm.dbg.value(metadata i32 undef, metadata !3766, metadata !DIExpression()), !dbg !3767
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3769

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3770
  %7 = and i32 %6, 64, !dbg !3771
  %8 = icmp eq i32 %7, 0, !dbg !3772
  br i1 %8, label %5, label %9, !dbg !3769, !llvm.loop !3773

9:                                                ; preds = %5
  ret void, !dbg !3775
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3776 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3780, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i32 %1, metadata !3781, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i8* %2, metadata !3782, metadata !DIExpression()), !dbg !3793
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3794
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3794
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3783, metadata !DIExpression()), !dbg !3795
  %7 = bitcast i32* %5 to i8*, !dbg !3796
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3796
  call void @llvm.dbg.value(metadata i32* %5, metadata !3792, metadata !DIExpression(DW_OP_deref)), !dbg !3793
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3797
  call void @llvm.va_start(i8* nonnull %6), !dbg !3798
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3799
  %10 = load i32, i32* %9, align 4, !dbg !3799
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3799
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3799
  call void @llvm.va_end(i8* nonnull %6), !dbg !3800
  %13 = load i32, i32* %5, align 4, !dbg !3801
  call void @llvm.dbg.value(metadata i32 %13, metadata !3792, metadata !DIExpression()), !dbg !3793
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3802
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3803
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3803
  ret void, !dbg !3803
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3804 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 %1, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* %2, metadata !3808, metadata !DIExpression()), !dbg !3811
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3812
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3812
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3809, metadata !DIExpression()), !dbg !3813
  %7 = bitcast i32* %5 to i8*, !dbg !3814
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3814
  call void @llvm.dbg.value(metadata i32* %5, metadata !3810, metadata !DIExpression(DW_OP_deref)), !dbg !3811
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3815
  call void @llvm.va_start(i8* nonnull %6), !dbg !3816
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3817
  %10 = load i32, i32* %9, align 4, !dbg !3817
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3817
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3817
  call void @llvm.va_end(i8* nonnull %6), !dbg !3818
  %13 = load i32, i32* %5, align 4, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %13, metadata !3810, metadata !DIExpression()), !dbg !3811
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3820
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3821
  ret void, !dbg !3821
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3822 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3824, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i32 %1, metadata !3825, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8* %2, metadata !3826, metadata !DIExpression()), !dbg !3829
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3830
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3830
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3827, metadata !DIExpression()), !dbg !3831
  %7 = bitcast i32* %5 to i8*, !dbg !3832
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3832
  call void @llvm.dbg.value(metadata i32* %5, metadata !3828, metadata !DIExpression(DW_OP_deref)), !dbg !3829
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3833
  call void @llvm.va_start(i8* nonnull %6), !dbg !3834
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3835
  %10 = load i32, i32* %9, align 4, !dbg !3835
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3835
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3835
  call void @llvm.va_end(i8* nonnull %6), !dbg !3836
  %13 = load i32, i32* %5, align 4, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %13, metadata !3828, metadata !DIExpression()), !dbg !3829
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3839
  ret void, !dbg !3839
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3840 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3842, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i32 %1, metadata !3843, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i8* %2, metadata !3844, metadata !DIExpression()), !dbg !3847
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3848
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3848
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3845, metadata !DIExpression()), !dbg !3849
  %7 = bitcast i32* %5 to i8*, !dbg !3850
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3850
  call void @llvm.dbg.value(metadata i32* %5, metadata !3846, metadata !DIExpression(DW_OP_deref)), !dbg !3847
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3851
  call void @llvm.va_start(i8* nonnull %6), !dbg !3852
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3853
  %10 = load i32, i32* %9, align 4, !dbg !3853
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3853
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3853
  call void @llvm.va_end(i8* nonnull %6), !dbg !3854
  %13 = load i32, i32* %5, align 4, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %13, metadata !3846, metadata !DIExpression()), !dbg !3847
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3856
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3857
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3857
  ret void, !dbg !3857
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #11 !dbg !3858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3864, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %1, metadata !3865, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i8* %2, metadata !3866, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i8* %3, metadata !3867, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %4, metadata !3868, metadata !DIExpression()), !dbg !3869
  ret void, !dbg !3870
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3871 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %1, metadata !3878, metadata !DIExpression()), !dbg !3880
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3881, !range !1488
  %3 = icmp eq i8 %2, 0, !dbg !3881
  br i1 %3, label %5, label %4, !dbg !3883

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3884
  br label %15, !dbg !3886

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3887
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3889
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3890
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3891
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3892
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3893
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3894
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3880
  br label %7, !dbg !3895

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3876, metadata !DIExpression()), !dbg !3880
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3897
  store volatile i32 0, i32* %9, align 4, !dbg !3900
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3901
  store volatile i32 0, i32* %10, align 4, !dbg !3902
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3903
  store i32 0, i32* %11, align 4, !dbg !3904
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3905
  store i32 0, i32* %12, align 4, !dbg !3906
  %13 = add nuw nsw i32 %8, 1, !dbg !3907
  call void @llvm.dbg.value(metadata i32 %13, metadata !3876, metadata !DIExpression()), !dbg !3880
  %14 = icmp eq i32 %13, 16, !dbg !3908
  br i1 %14, label %15, label %7, !dbg !3895, !llvm.loop !3909

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3880
  ret i32 %16, !dbg !3911
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3912 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3915
  call void @llvm.dbg.value(metadata i32 %1, metadata !3914, metadata !DIExpression()), !dbg !3916
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3917
  %3 = and i32 %2, -31, !dbg !3917
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3917
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3918
  %5 = or i32 %4, 19, !dbg !3918
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3918
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3919
  %7 = and i32 %6, -31, !dbg !3919
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3919
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3920
  %9 = or i32 %8, 3, !dbg !3920
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3920
  tail call void asm sideeffect "isb", ""() #15, !dbg !3921, !srcloc !3925
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3926
  ret i32 0, !dbg !3927
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3928 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3931
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3932
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3933
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3934
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3935
  call void @llvm.dbg.value(metadata i32 0, metadata !3930, metadata !DIExpression()), !dbg !3936
  br label %2, !dbg !3937

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3930, metadata !DIExpression()), !dbg !3936
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3939
  store volatile i32 0, i32* %4, align 4, !dbg !3942
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3943
  store volatile i32 0, i32* %5, align 4, !dbg !3944
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3945
  store i32 0, i32* %6, align 4, !dbg !3946
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3947
  store i32 0, i32* %7, align 4, !dbg !3948
  %8 = add nuw nsw i32 %3, 1, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %8, metadata !3930, metadata !DIExpression()), !dbg !3936
  %9 = icmp eq i32 %8, 16, !dbg !3950
  br i1 %9, label %10, label %2, !dbg !3937, !llvm.loop !3951

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3953
  ret i32 0, !dbg !3954
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #1 !dbg !3955 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3956
  %2 = and i32 %1, 768, !dbg !3958
  %3 = icmp eq i32 %2, 0, !dbg !3958
  br i1 %3, label %8, label %4, !dbg !3959

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3960
  %6 = or i32 %5, 13, !dbg !3960
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3960
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3961
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3962
  br label %8, !dbg !3963

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3964
  ret i32 %9, !dbg !3965
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3966 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3969
  call void @llvm.dbg.value(metadata i32 %1, metadata !3968, metadata !DIExpression()), !dbg !3970
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3971
  %3 = and i32 %2, 1, !dbg !3973
  %4 = icmp eq i32 %3, 0, !dbg !3973
  br i1 %4, label %7, label %5, !dbg !3974

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3975
  br label %7, !dbg !3977

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3978
  %9 = and i32 %8, -2, !dbg !3978
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3978
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3979
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3980
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3981
  ret i32 0, !dbg !3982
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #1 !dbg !3983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3987, metadata !DIExpression()), !dbg !3988
  %2 = icmp ugt i32 %0, 15, !dbg !3989
  br i1 %2, label %13, label %3, !dbg !3991

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3992
  %5 = load volatile i32, i32* %4, align 4, !dbg !3992
  %6 = and i32 %5, 256, !dbg !3994
  %7 = icmp eq i32 %6, 0, !dbg !3994
  br i1 %7, label %13, label %8, !dbg !3995

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3996
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3998
  %11 = or i32 %10, %9, !dbg !3998
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3998
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3999
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !4000
  br label %13, !dbg !4001

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3988
  ret i32 %14, !dbg !4002
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #1 !dbg !4003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4005, metadata !DIExpression()), !dbg !4006
  %2 = icmp ugt i32 %0, 15, !dbg !4007
  br i1 %2, label %11, label %3, !dbg !4009

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !4010
  %5 = xor i32 %4, -1, !dbg !4011
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4012
  %7 = and i32 %6, %5, !dbg !4012
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4012
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4013
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !4014
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4015
  store i32 0, i32* %9, align 4, !dbg !4016
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4017
  store i32 0, i32* %10, align 4, !dbg !4018
  br label %11, !dbg !4019

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4006
  ret i32 %12, !dbg !4020
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #1 !dbg !4021 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4026, metadata !DIExpression()), !dbg !4027
  %2 = icmp ugt i32 %0, 3, !dbg !4028
  br i1 %2, label %13, label %3, !dbg !4030

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4031
  %5 = and i32 %4, -769, !dbg !4031
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4031
  %6 = shl nuw nsw i32 %0, 8, !dbg !4032
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4033
  %8 = or i32 %7, %6, !dbg !4033
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4033
  %9 = icmp eq i32 %0, 0, !dbg !4034
  br i1 %9, label %10, label %11, !dbg !4036

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4037
  br label %11, !dbg !4039

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4040
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4041
  br label %13, !dbg !4042

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !4027
  ret i32 %14, !dbg !4043
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.DMA_SWCOPYMENU* noundef readonly %1) local_unnamed_addr #3 !dbg !4044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4055, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata %struct.DMA_SWCOPYMENU* %1, metadata !4056, metadata !DIExpression()), !dbg !4057
  %3 = icmp ugt i32 %0, 15, !dbg !4058
  br i1 %3, label %30, label %4, !dbg !4060

4:                                                ; preds = %2
  %5 = icmp eq %struct.DMA_SWCOPYMENU* %1, null, !dbg !4061
  br i1 %5, label %30, label %6, !dbg !4063

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 0, !dbg !4064
  %8 = load i32, i32* %7, align 4, !dbg !4064
  %9 = and i32 %8, 4095, !dbg !4066
  %10 = icmp eq i32 %9, 0, !dbg !4066
  br i1 %10, label %12, label %11, !dbg !4067

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0)) #17, !dbg !4068
  unreachable, !dbg !4068

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 1, !dbg !4070
  %14 = load i32, i32* %13, align 4, !dbg !4070
  %15 = and i32 %14, 4095, !dbg !4072
  %16 = icmp eq i32 %15, 0, !dbg !4072
  br i1 %16, label %18, label %17, !dbg !4073

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0)) #17, !dbg !4074
  unreachable, !dbg !4074

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4076
  store volatile i32 %8, i32* %19, align 4, !dbg !4077
  %20 = load i32, i32* %7, align 4, !dbg !4078
  %21 = load i32, i32* %13, align 4, !dbg !4079
  %22 = add i32 %21, %20, !dbg !4080
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !4081
  store volatile i32 %22, i32* %23, align 4, !dbg !4082
  %24 = load volatile i32, i32* %19, align 4, !dbg !4083
  %25 = or i32 %24, 256, !dbg !4083
  store volatile i32 %25, i32* %19, align 4, !dbg !4083
  %26 = load volatile i32, i32* %19, align 4, !dbg !4084
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4085
  store i32 %26, i32* %27, align 4, !dbg !4086
  %28 = load volatile i32, i32* %23, align 4, !dbg !4087
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4088
  store i32 %28, i32* %29, align 4, !dbg !4089
  br label %30, !dbg !4090

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !4057
  ret i32 %31, !dbg !4091
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4096, metadata !DIExpression()), !dbg !4098
  %2 = and i32 %0, 31, !dbg !4099
  %3 = icmp eq i32 %2, 0, !dbg !4099
  br i1 %3, label %4, label %9, !dbg !4101

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4102
  call void @llvm.dbg.value(metadata i32 %5, metadata !4097, metadata !DIExpression()), !dbg !4098
  %6 = and i32 %0, -32, !dbg !4103
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4104
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4105
  %8 = or i32 %7, 5, !dbg !4105
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4105
  tail call void asm sideeffect "isb", ""() #15, !dbg !4106, !srcloc !3925
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4108
  br label %9, !dbg !4109

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4098
  ret i32 %10, !dbg !4110
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4115, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 %1, metadata !4116, metadata !DIExpression()), !dbg !4119
  %3 = add i32 %1, %0, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %3, metadata !4118, metadata !DIExpression()), !dbg !4119
  %4 = or i32 %1, %0, !dbg !4121
  %5 = and i32 %4, 31, !dbg !4121
  %6 = icmp eq i32 %5, 0, !dbg !4121
  br i1 %6, label %7, label %16, !dbg !4121

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4123
  call void @llvm.dbg.value(metadata i32 %8, metadata !4117, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i32 %0, metadata !4115, metadata !DIExpression()), !dbg !4119
  %9 = icmp ugt i32 %3, %0, !dbg !4124
  br i1 %9, label %10, label %15, !dbg !4125

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4115, metadata !DIExpression()), !dbg !4119
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !4126
  %13 = add i32 %11, 32, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %13, metadata !4115, metadata !DIExpression()), !dbg !4119
  %14 = icmp ult i32 %13, %3, !dbg !4124
  br i1 %14, label %10, label %15, !dbg !4125, !llvm.loop !4129

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4131, !srcloc !3925
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4133
  br label %16, !dbg !4134

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4119
  ret i32 %17, !dbg !4135
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4138, metadata !DIExpression()), !dbg !4140
  %2 = and i32 %0, 31, !dbg !4141
  %3 = icmp eq i32 %2, 0, !dbg !4141
  br i1 %3, label %4, label %9, !dbg !4143

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %5, metadata !4139, metadata !DIExpression()), !dbg !4140
  %6 = and i32 %0, -32, !dbg !4145
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4146
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4147
  %8 = or i32 %7, 21, !dbg !4147
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4147
  tail call void asm sideeffect "isb", ""() #15, !dbg !4148, !srcloc !3925
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4150
  br label %9, !dbg !4151

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4140
  ret i32 %10, !dbg !4152
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4153 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4155, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 %1, metadata !4156, metadata !DIExpression()), !dbg !4159
  %3 = add i32 %1, %0, !dbg !4160
  call void @llvm.dbg.value(metadata i32 %3, metadata !4158, metadata !DIExpression()), !dbg !4159
  %4 = or i32 %1, %0, !dbg !4161
  %5 = and i32 %4, 31, !dbg !4161
  %6 = icmp eq i32 %5, 0, !dbg !4161
  br i1 %6, label %7, label %16, !dbg !4161

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4163
  call void @llvm.dbg.value(metadata i32 %8, metadata !4157, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 %0, metadata !4155, metadata !DIExpression()), !dbg !4159
  %9 = icmp ugt i32 %3, %0, !dbg !4164
  br i1 %9, label %10, label %15, !dbg !4165

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4155, metadata !DIExpression()), !dbg !4159
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !4166
  %13 = add i32 %11, 32, !dbg !4168
  call void @llvm.dbg.value(metadata i32 %13, metadata !4155, metadata !DIExpression()), !dbg !4159
  %14 = icmp ult i32 %13, %3, !dbg !4164
  br i1 %14, label %10, label %15, !dbg !4165, !llvm.loop !4169

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4171, !srcloc !3925
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4173
  br label %16, !dbg !4174

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4159
  ret i32 %17, !dbg !4175
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4176 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4179
  call void @llvm.dbg.value(metadata i32 %1, metadata !4178, metadata !DIExpression()), !dbg !4180
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4181
  %3 = and i32 %2, -31, !dbg !4181
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4181
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4182
  %5 = or i32 %4, 19, !dbg !4182
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4182
  tail call void asm sideeffect "isb", ""() #15, !dbg !4183, !srcloc !3925
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4185
  ret i32 0, !dbg !4186
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #1 !dbg !4187 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4191, metadata !DIExpression()), !dbg !4193
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4194
  %3 = and i32 %2, 8, !dbg !4196
  %4 = icmp eq i32 %3, 0, !dbg !4196
  br i1 %4, label %23, label %5, !dbg !4197

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4192, metadata !DIExpression()), !dbg !4193
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4198
  %8 = shl nuw nsw i32 1, %6, !dbg !4203
  %9 = and i32 %7, %8, !dbg !4204
  %10 = icmp eq i32 %9, 0, !dbg !4204
  br i1 %10, label %20, label %11, !dbg !4205

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4206
  %13 = load volatile i32, i32* %12, align 4, !dbg !4206
  %14 = and i32 %13, -257, !dbg !4209
  %15 = icmp ugt i32 %14, %0, !dbg !4210
  br i1 %15, label %20, label %16, !dbg !4211

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !4212
  %18 = load volatile i32, i32* %17, align 4, !dbg !4212
  %19 = icmp ugt i32 %18, %0, !dbg !4213
  br i1 %19, label %23, label %20, !dbg !4214

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !4215
  call void @llvm.dbg.value(metadata i32 %21, metadata !4192, metadata !DIExpression()), !dbg !4193
  %22 = icmp eq i32 %21, 16, !dbg !4216
  br i1 %22, label %23, label %5, !dbg !4217, !llvm.loop !4218

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4193
  ret i1 %24, !dbg !4220
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #11 !dbg !4221 {
  ret i32 0, !dbg !4225
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4230, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i32 -1, metadata !4231, metadata !DIExpression()), !dbg !4232
  %2 = icmp ugt i32 %0, 95, !dbg !4233
  br i1 %2, label %4, label %3, !dbg !4233

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !4235
  call void @llvm.dbg.value(metadata i32 0, metadata !4231, metadata !DIExpression()), !dbg !4232
  br label %4, !dbg !4237

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4232
  ret i32 %5, !dbg !4238
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4243, metadata !DIExpression()), !dbg !4244
  %2 = and i32 %0, 31, !dbg !4245
  %3 = shl nuw i32 1, %2, !dbg !4246
  %4 = lshr i32 %0, 5, !dbg !4247
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4248
  store volatile i32 %3, i32* %5, align 4, !dbg !4249
  ret void, !dbg !4250
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4251 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4253, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 -1, metadata !4254, metadata !DIExpression()), !dbg !4255
  %2 = icmp ugt i32 %0, 95, !dbg !4256
  br i1 %2, label %4, label %3, !dbg !4256

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !4258
  call void @llvm.dbg.value(metadata i32 0, metadata !4254, metadata !DIExpression()), !dbg !4255
  br label %4, !dbg !4260

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4255
  ret i32 %5, !dbg !4261
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4264, metadata !DIExpression()), !dbg !4265
  %2 = and i32 %0, 31, !dbg !4266
  %3 = shl nuw i32 1, %2, !dbg !4267
  %4 = lshr i32 %0, 5, !dbg !4268
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4269
  store volatile i32 %3, i32* %5, align 4, !dbg !4270
  ret void, !dbg !4271
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #6 !dbg !4272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4276, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i32 255, metadata !4277, metadata !DIExpression()), !dbg !4278
  %2 = icmp ugt i32 %0, 95, !dbg !4279
  br i1 %2, label %5, label %3, !dbg !4279

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !4281
  call void @llvm.dbg.value(metadata i32 %4, metadata !4277, metadata !DIExpression()), !dbg !4278
  br label %5, !dbg !4283

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4278
  ret i32 %6, !dbg !4284
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !4285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4289, metadata !DIExpression()), !dbg !4290
  %2 = lshr i32 %0, 5, !dbg !4291
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4292
  %4 = load volatile i32, i32* %3, align 4, !dbg !4292
  %5 = and i32 %0, 31, !dbg !4293
  %6 = lshr i32 %4, %5, !dbg !4294
  %7 = and i32 %6, 1, !dbg !4294
  ret i32 %7, !dbg !4295
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i32 -1, metadata !4299, metadata !DIExpression()), !dbg !4300
  %2 = icmp ugt i32 %0, 95, !dbg !4301
  br i1 %2, label %4, label %3, !dbg !4301

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !4303
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4300
  br label %4, !dbg !4305

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4300
  ret i32 %5, !dbg !4306
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4309, metadata !DIExpression()), !dbg !4310
  %2 = and i32 %0, 31, !dbg !4311
  %3 = shl nuw i32 1, %2, !dbg !4312
  %4 = lshr i32 %0, 5, !dbg !4313
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4314
  store volatile i32 %3, i32* %5, align 4, !dbg !4315
  ret void, !dbg !4316
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4319, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32 -1, metadata !4320, metadata !DIExpression()), !dbg !4321
  %2 = icmp ugt i32 %0, 95, !dbg !4322
  br i1 %2, label %4, label %3, !dbg !4322

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4320, metadata !DIExpression()), !dbg !4321
  br label %4, !dbg !4326

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4321
  ret i32 %5, !dbg !4327
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4330, metadata !DIExpression()), !dbg !4331
  %2 = and i32 %0, 31, !dbg !4332
  %3 = shl nuw i32 1, %2, !dbg !4333
  %4 = lshr i32 %0, 5, !dbg !4334
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4335
  store volatile i32 %3, i32* %5, align 4, !dbg !4336
  ret void, !dbg !4337
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !4338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %1, metadata !4343, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 -1, metadata !4344, metadata !DIExpression()), !dbg !4345
  %3 = icmp ugt i32 %0, 95, !dbg !4346
  br i1 %3, label %5, label %4, !dbg !4346

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4344, metadata !DIExpression()), !dbg !4345
  br label %5, !dbg !4350

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4345
  ret i32 %6, !dbg !4351
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !4352 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4356, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i32 %1, metadata !4357, metadata !DIExpression()), !dbg !4358
  %3 = trunc i32 %1 to i8, !dbg !4359
  %4 = shl i8 %3, 5, !dbg !4359
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4362
  store volatile i8 %4, i8* %5, align 1, !dbg !4363
  ret void, !dbg !4364
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #6 !dbg !4365 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4367, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i32 68, metadata !4368, metadata !DIExpression()), !dbg !4369
  %2 = icmp ugt i32 %0, 95, !dbg !4370
  br i1 %2, label %5, label %3, !dbg !4370

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !4372
  call void @llvm.dbg.value(metadata i32 %4, metadata !4368, metadata !DIExpression()), !dbg !4369
  br label %5, !dbg !4374

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4369
  ret i32 %6, !dbg !4375
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #6 !dbg !4376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4378, metadata !DIExpression()), !dbg !4379
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4380
  %3 = load volatile i8, i8* %2, align 1, !dbg !4380
  %4 = lshr i8 %3, 5, !dbg !4383
  %5 = zext i8 %4 to i32, !dbg !4383
  ret i32 %5, !dbg !4384
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #11 !dbg !4385 {
  ret void, !dbg !4386
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4387 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4389, metadata !DIExpression()), !dbg !4391
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4392
  call void @llvm.dbg.value(metadata i32 %1, metadata !4390, metadata !DIExpression()), !dbg !4391
  %2 = icmp ugt i32 %1, 95, !dbg !4393
  br i1 %2, label %12, label %3, !dbg !4393

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4395
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4395
  %6 = icmp eq void (i32)* %5, null, !dbg !4397
  br i1 %6, label %7, label %8, !dbg !4398

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4389, metadata !DIExpression()), !dbg !4391
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #16, !dbg !4399
  br label %12, !dbg !4401

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4402
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4404
  store i32 %9, i32* %10, align 4, !dbg !4405
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4406
  tail call void %11(i32 noundef %1) #16, !dbg !4407
  call void @llvm.dbg.value(metadata i32 0, metadata !4389, metadata !DIExpression()), !dbg !4391
  br label %12, !dbg !4408

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4391
  ret i32 %13, !dbg !4409
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #6 !dbg !4410 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4413
  %2 = and i32 %1, 511, !dbg !4414
  call void @llvm.dbg.value(metadata i32 %2, metadata !4412, metadata !DIExpression()), !dbg !4415
  %3 = add nsw i32 %2, -16, !dbg !4416
  ret i32 %3, !dbg !4417
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #6 !dbg !4418 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4419
  %2 = lshr i32 %1, 22, !dbg !4420
  %3 = and i32 %2, 1, !dbg !4420
  ret i32 %3, !dbg !4421
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4427, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4428, metadata !DIExpression()), !dbg !4430
  %3 = icmp ugt i32 %0, 95, !dbg !4431
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4431
  br i1 %5, label %10, label %6, !dbg !4431

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4433
  call void @llvm.dbg.value(metadata i32 %7, metadata !4429, metadata !DIExpression()), !dbg !4430
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4434
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4435
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4436
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4437
  store i32 0, i32* %9, align 4, !dbg !4438
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !4439
  br label %10, !dbg !4440

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4430
  ret i32 %11, !dbg !4441
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4442 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4446, metadata !DIExpression()), !dbg !4447
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4448
  store i32 %2, i32* %0, align 4, !dbg !4449
  ret i32 0, !dbg !4450
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4455, metadata !DIExpression()), !dbg !4456
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !4457
  ret i32 0, !dbg !4458
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4465, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i8 %1, metadata !4466, metadata !DIExpression()), !dbg !4468
  %3 = icmp ugt i32 %0, 60, !dbg !4469
  br i1 %3, label %11, label %4, !dbg !4471

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4472
  br i1 %5, label %11, label %6, !dbg !4474

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4475
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !4476
  call void @llvm.dbg.value(metadata i32 %8, metadata !4467, metadata !DIExpression()), !dbg !4468
  %9 = icmp slt i32 %8, 0, !dbg !4477
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4477
  br label %11, !dbg !4478

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4468
  ret i32 %12, !dbg !4479
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #11 !dbg !4480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4485, metadata !DIExpression()), !dbg !4486
  ret i32 0, !dbg !4487
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #11 !dbg !4488 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4490, metadata !DIExpression()), !dbg !4491
  ret i32 0, !dbg !4492
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4493 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4498, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32* %1, metadata !4499, metadata !DIExpression()), !dbg !4508
  %4 = icmp eq i32* %1, null, !dbg !4509
  br i1 %4, label %12, label %5, !dbg !4511

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4512
  br i1 %6, label %12, label %7, !dbg !4514

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4515
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4515
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4515
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4515
  %10 = load i8, i8* %9, align 1, !dbg !4515
  call void @llvm.dbg.value(metadata i8 %10, metadata !4500, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4515
  %11 = zext i8 %10 to i32, !dbg !4516
  store i32 %11, i32* %1, align 4, !dbg !4517
  br label %12, !dbg !4518

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4508
  ret i32 %13, !dbg !4519
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4524, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i32 %1, metadata !4525, metadata !DIExpression()), !dbg !4527
  %3 = icmp ugt i32 %0, 60, !dbg !4528
  br i1 %3, label %9, label %4, !dbg !4530

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4531
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %6, metadata !4526, metadata !DIExpression()), !dbg !4527
  %7 = icmp slt i32 %6, 0, !dbg !4533
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4533
  br label %9, !dbg !4534

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4527
  ret i32 %10, !dbg !4535
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4536 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4538, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i32* %1, metadata !4539, metadata !DIExpression()), !dbg !4541
  %4 = icmp ugt i32 %0, 60, !dbg !4542
  br i1 %4, label %12, label %5, !dbg !4544

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4545
  br i1 %6, label %12, label %7, !dbg !4547

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4548
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4548
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4548
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4548
  %10 = load i8, i8* %9, align 2, !dbg !4548
  call void @llvm.dbg.value(metadata i8 %10, metadata !4540, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4541
  call void @llvm.dbg.value(metadata i8 undef, metadata !4540, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4541
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4548
  %11 = zext i8 %10 to i32, !dbg !4549
  store i32 %11, i32* %1, align 4, !dbg !4550
  br label %12, !dbg !4551

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4541
  ret i32 %13, !dbg !4552
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4558, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i32 %1, metadata !4559, metadata !DIExpression()), !dbg !4561
  %3 = icmp ugt i32 %0, 60, !dbg !4562
  br i1 %3, label %8, label %4, !dbg !4564

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !4565
  call void @llvm.dbg.value(metadata i32 %5, metadata !4560, metadata !DIExpression()), !dbg !4561
  %6 = icmp slt i32 %5, 0, !dbg !4566
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4566
  br label %8, !dbg !4567

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4561
  ret i32 %9, !dbg !4568
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4569 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4574, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i32* %1, metadata !4575, metadata !DIExpression()), !dbg !4577
  %4 = icmp ugt i32 %0, 60, !dbg !4578
  br i1 %4, label %13, label %5, !dbg !4580

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4581
  br i1 %6, label %13, label %7, !dbg !4583

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4584
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4584
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4584
  call void @llvm.dbg.value(metadata i32 undef, metadata !4576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4577
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4584
  %10 = load i8, i8* %9, align 4, !dbg !4584
  call void @llvm.dbg.value(metadata i8 %10, metadata !4576, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4584
  %11 = icmp ne i8 %10, 0, !dbg !4585
  %12 = zext i1 %11 to i32, !dbg !4585
  store i32 %12, i32* %1, align 4, !dbg !4586
  br label %13, !dbg !4587

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4577
  ret i32 %14, !dbg !4588
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4589 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4591, metadata !DIExpression()), !dbg !4593
  %3 = icmp ugt i32 %0, 60, !dbg !4594
  br i1 %3, label %11, label %4, !dbg !4596

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4597
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4597
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !4597
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4597
  %7 = load i8, i8* %6, align 2, !dbg !4597
  call void @llvm.dbg.value(metadata i8 %7, metadata !4592, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4593
  call void @llvm.dbg.value(metadata i8 undef, metadata !4592, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4593
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4597
  %8 = xor i8 %7, 1, !dbg !4598
  %9 = zext i8 %8 to i32, !dbg !4598
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4599
  br label %11, !dbg !4600

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4593
  ret i32 %12, !dbg !4601
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4604, metadata !DIExpression()), !dbg !4606
  %2 = icmp ugt i32 %0, 60, !dbg !4607
  br i1 %2, label %10, label %3, !dbg !4609

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4610
  call void @llvm.dbg.value(metadata i32 %4, metadata !4605, metadata !DIExpression()), !dbg !4606
  %5 = icmp slt i32 %4, 0, !dbg !4611
  br i1 %5, label %10, label %6, !dbg !4613

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !4614
  call void @llvm.dbg.value(metadata i32 %7, metadata !4605, metadata !DIExpression()), !dbg !4606
  %8 = icmp slt i32 %7, 0, !dbg !4615
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4615
  br label %10, !dbg !4616

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4606
  ret i32 %11, !dbg !4617
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4620, metadata !DIExpression()), !dbg !4622
  %2 = icmp ugt i32 %0, 60, !dbg !4623
  br i1 %2, label %10, label %3, !dbg !4625

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4626
  call void @llvm.dbg.value(metadata i32 %4, metadata !4621, metadata !DIExpression()), !dbg !4622
  %5 = icmp slt i32 %4, 0, !dbg !4627
  br i1 %5, label %10, label %6, !dbg !4629

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !4630
  call void @llvm.dbg.value(metadata i32 %7, metadata !4621, metadata !DIExpression()), !dbg !4622
  %8 = icmp slt i32 %7, 0, !dbg !4631
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4631
  br label %10, !dbg !4632

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4622
  ret i32 %11, !dbg !4633
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4634 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4636, metadata !DIExpression()), !dbg !4638
  %2 = icmp ugt i32 %0, 60, !dbg !4639
  br i1 %2, label %7, label %3, !dbg !4641

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4642
  call void @llvm.dbg.value(metadata i32 %4, metadata !4637, metadata !DIExpression()), !dbg !4638
  %5 = icmp slt i32 %4, 0, !dbg !4643
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4643
  br label %7, !dbg !4644

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4638
  ret i32 %8, !dbg !4645
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4650, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i32 %1, metadata !4651, metadata !DIExpression()), !dbg !4653
  %3 = icmp ugt i32 %0, 60, !dbg !4654
  br i1 %3, label %9, label %4, !dbg !4656

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4657
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4658
  call void @llvm.dbg.value(metadata i32 %6, metadata !4652, metadata !DIExpression()), !dbg !4653
  %7 = icmp slt i32 %6, 0, !dbg !4659
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4659
  br label %9, !dbg !4660

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4653
  ret i32 %10, !dbg !4661
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4662 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4667, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i32* %1, metadata !4668, metadata !DIExpression()), !dbg !4671
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4672
  %4 = icmp ugt i32 %0, 60, !dbg !4673
  br i1 %4, label %11, label %5, !dbg !4675

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4670, metadata !DIExpression(DW_OP_deref)), !dbg !4671
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !4676
  call void @llvm.dbg.value(metadata i32 %6, metadata !4669, metadata !DIExpression()), !dbg !4671
  %7 = load i8, i8* %3, align 1, !dbg !4677
  call void @llvm.dbg.value(metadata i8 %7, metadata !4670, metadata !DIExpression()), !dbg !4671
  %8 = zext i8 %7 to i32, !dbg !4678
  store i32 %8, i32* %1, align 4, !dbg !4679
  %9 = icmp slt i32 %6, 0, !dbg !4680
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4680
  br label %11, !dbg !4681

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4671
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4682
  ret i32 %12, !dbg !4682
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_init(i32 noundef %0) local_unnamed_addr #3 !dbg !4683 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4687, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i8 -1, metadata !4688, metadata !DIExpression()), !dbg !4689
  %2 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4690
  br i1 %2, label %4, label %3, !dbg !4692

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_gdma_init, i32 0, i32 0), i32 noundef 105, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4693
  br label %12, !dbg !4695

4:                                                ; preds = %1
  %5 = getelementptr inbounds [2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 %0, !dbg !4696
  %6 = bitcast %struct.hal_gdma_callback_context* %5 to i8*, !dbg !4697
  %7 = tail call i8* @memset(i8* noundef nonnull %6, i32 noundef 0, i32 noundef 16) #16, !dbg !4698
  %8 = trunc i32 %0 to i8, !dbg !4699
  %9 = tail call zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %8) #16, !dbg !4700
  call void @llvm.dbg.value(metadata i8 %9, metadata !4688, metadata !DIExpression()), !dbg !4689
  %10 = icmp eq i8 %9, -1, !dbg !4701
  %11 = select i1 %10, i32 -3, i32 0, !dbg !4689
  br label %12, !dbg !4689

12:                                               ; preds = %4, %3
  %13 = phi i32 [ -2, %3 ], [ %11, %4 ], !dbg !4689
  ret i32 %13, !dbg !4703
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) unnamed_addr #11 !dbg !4704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4708, metadata !DIExpression()), !dbg !4709
  %2 = icmp ult i32 %0, 2, !dbg !4710
  ret i1 %2, !dbg !4711
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4714, metadata !DIExpression()), !dbg !4715
  %2 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4716
  br i1 %2, label %4, label %3, !dbg !4718

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_gdma_deinit, i32 0, i32 0), i32 noundef 128, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4719
  br label %10, !dbg !4721

4:                                                ; preds = %1
  %5 = trunc i32 %0 to i8, !dbg !4722
  %6 = tail call zeroext i8 @dma_set_channel_idle(i8 noundef zeroext %5) #16, !dbg !4723
  %7 = getelementptr inbounds [2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 %0, !dbg !4724
  %8 = bitcast %struct.hal_gdma_callback_context* %7 to i8*, !dbg !4725
  %9 = tail call i8* @memset(i8* noundef nonnull %8, i32 noundef 0, i32 noundef 16) #16, !dbg !4726
  br label %10, !dbg !4727

10:                                               ; preds = %4, %3
  %11 = phi i32 [ 0, %4 ], [ -2, %3 ], !dbg !4715
  ret i32 %11, !dbg !4728
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_start_interrupt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !449 {
  %5 = alloca %struct.DMA_INPUT, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.DMA_SWCOPYMENU, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !455, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i32 %1, metadata !456, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i32 %2, metadata !457, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i32 %3, metadata !458, metadata !DIExpression()), !dbg !4729
  %8 = bitcast %struct.DMA_INPUT* %5 to i8*, !dbg !4730
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #15, !dbg !4730
  call void @llvm.dbg.declare(metadata %struct.DMA_INPUT* %5, metadata !459, metadata !DIExpression()), !dbg !4731
  %9 = bitcast i32* %6 to i8*, !dbg !4732
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #15, !dbg !4732
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !4729
  store i32 0, i32* %6, align 4, !dbg !4733
  call void @llvm.dbg.value(metadata i32 0, metadata !470, metadata !DIExpression()), !dbg !4729
  %10 = bitcast %struct.DMA_SWCOPYMENU* %7 to i8*, !dbg !4734
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #15, !dbg !4734
  call void @llvm.dbg.declare(metadata %struct.DMA_SWCOPYMENU* %7, metadata !471, metadata !DIExpression()), !dbg !4735
  %11 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4736
  br i1 %11, label %13, label %12, !dbg !4738

12:                                               ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.hal_gdma_start_interrupt, i32 0, i32 0), i32 noundef 154, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4739
  br label %41, !dbg !4741

13:                                               ; preds = %4
  %14 = trunc i32 %0 to i8, !dbg !4742
  %15 = tail call zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef 25, i8 noundef zeroext %14) #16, !dbg !4743
  call void @llvm.dbg.value(metadata i8 %15, metadata !477, metadata !DIExpression()), !dbg !4729
  %16 = icmp eq i8 %15, -1, !dbg !4744
  br i1 %16, label %17, label %18, !dbg !4746

17:                                               ; preds = %13
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.hal_gdma_start_interrupt, i32 0, i32 0), i32 noundef 160, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.20, i32 0, i32 0)) #16, !dbg !4747
  br label %41, !dbg !4749

18:                                               ; preds = %13
  %19 = icmp eq i32 %3, 0, !dbg !4750
  br i1 %19, label %41, label %20, !dbg !4752

20:                                               ; preds = %18
  %21 = and i32 %1, -268435456, !dbg !4753
  %22 = icmp eq i32 %21, 268435456, !dbg !4755
  %23 = or i32 %1, 805306368
  %24 = select i1 %22, i32 %23, i32 %1, !dbg !4756
  call void @llvm.dbg.value(metadata i32 %24, metadata !456, metadata !DIExpression()), !dbg !4729
  %25 = and i32 %2, -268435456, !dbg !4757
  %26 = icmp eq i32 %25, 268435456, !dbg !4759
  %27 = or i32 %2, 805306368, !dbg !4760
  %28 = select i1 %26, i32 %27, i32 %2, !dbg !4760
  call void @llvm.dbg.value(metadata i32 %28, metadata !457, metadata !DIExpression()), !dbg !4729
  %29 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %7, i32 0, i32 0, !dbg !4761
  store i32 %28, i32* %29, align 4, !dbg !4762
  %30 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %7, i32 0, i32 1, !dbg !4763
  store i32 %24, i32* %30, align 4, !dbg !4764
  call void @llvm.dbg.value(metadata i32* %6, metadata !469, metadata !DIExpression(DW_OP_deref)), !dbg !4729
  %31 = call fastcc i32 @hal_gdma_calc_size(i32 noundef %28, i32 noundef %24, i32 noundef %3, i32* noundef nonnull %6) #14, !dbg !4765
  call void @llvm.dbg.value(metadata i32 %31, metadata !470, metadata !DIExpression()), !dbg !4729
  %32 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 0, !dbg !4766
  store i32 2, i32* %32, align 4, !dbg !4767
  %33 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 1, !dbg !4768
  store i32 %31, i32* %33, align 4, !dbg !4769
  %34 = load i32, i32* %6, align 4, !dbg !4770
  call void @llvm.dbg.value(metadata i32 %34, metadata !469, metadata !DIExpression()), !dbg !4729
  %35 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 2, !dbg !4771
  store i32 %34, i32* %35, align 4, !dbg !4772
  %36 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 3, !dbg !4773
  %37 = bitcast i8** %36 to %struct.DMA_SWCOPYMENU**, !dbg !4774
  store %struct.DMA_SWCOPYMENU* %7, %struct.DMA_SWCOPYMENU** %37, align 4, !dbg !4774
  %38 = icmp eq i8 %15, 1, !dbg !4775
  %39 = select i1 %38, void ()* @hal_gdma1_callback, void ()* @hal_gdma2_callback, !dbg !4777
  %40 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 4, !dbg !4778
  store void ()* %39, void ()** %40, align 4, !dbg !4780
  call void @DMA_Config_Internal(i8 noundef zeroext %15, %struct.DMA_INPUT* noundef nonnull %5, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0, i1 noundef zeroext true) #16, !dbg !4781
  br label %41, !dbg !4782

41:                                               ; preds = %18, %20, %17, %12
  %42 = phi i32 [ -3, %17 ], [ 0, %20 ], [ -2, %12 ], [ -1, %18 ], !dbg !4729
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #15, !dbg !4783
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #15, !dbg !4783
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #15, !dbg !4783
  ret i32 %42, !dbg !4783
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define internal fastcc i32 @hal_gdma_calc_size(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3) unnamed_addr #5 !dbg !4784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4788, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i32 %1, metadata !4789, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i32 %2, metadata !4790, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i32* %3, metadata !4791, metadata !DIExpression()), !dbg !4792
  %5 = or i32 %1, %0, !dbg !4793
  %6 = or i32 %5, %2, !dbg !4793
  %7 = and i32 %6, 3, !dbg !4793
  %8 = icmp eq i32 %7, 0, !dbg !4793
  br i1 %8, label %9, label %11, !dbg !4793

9:                                                ; preds = %4
  %10 = lshr i32 %2, 2, !dbg !4795
  br label %16, !dbg !4797

11:                                               ; preds = %4
  %12 = and i32 %6, 1, !dbg !4798
  %13 = xor i32 %12, 1, !dbg !4798
  %14 = lshr i32 %2, %13, !dbg !4798
  %15 = xor i32 %12, 1, !dbg !4798
  br label %16, !dbg !4798

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %18 = phi i32 [ 2, %9 ], [ %15, %11 ], !dbg !4800
  store i32 %17, i32* %3, align 4, !dbg !4800
  ret i32 %18, !dbg !4801
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gdma1_callback() #3 !dbg !4802 {
  %1 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 0, i32 0), align 4, !dbg !4803
  %2 = icmp eq void (i32, i8*)* %1, null, !dbg !4805
  br i1 %2, label %5, label %3, !dbg !4806

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 0, i32 1), align 4, !dbg !4807
  tail call void %1(i32 noundef 0, i8* noundef %4) #16, !dbg !4809
  br label %5, !dbg !4810

5:                                                ; preds = %3, %0
  ret void, !dbg !4811
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gdma2_callback() #3 !dbg !4812 {
  %1 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 1, i32 0), align 4, !dbg !4813
  %2 = icmp eq void (i32, i8*)* %1, null, !dbg !4815
  br i1 %2, label %5, label %3, !dbg !4816

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 1, i32 1), align 4, !dbg !4817
  tail call void %1(i32 noundef 0, i8* noundef %4) #16, !dbg !4819
  br label %5, !dbg !4820

5:                                                ; preds = %3, %0
  ret void, !dbg !4821
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_start_polling(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !481 {
  %5 = alloca %struct.DMA_INPUT, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.DMA_SWCOPYMENU, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !483, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i32 %1, metadata !484, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i32 %2, metadata !485, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i32 %3, metadata !486, metadata !DIExpression()), !dbg !4822
  %8 = bitcast %struct.DMA_INPUT* %5 to i8*, !dbg !4823
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #15, !dbg !4823
  call void @llvm.dbg.declare(metadata %struct.DMA_INPUT* %5, metadata !487, metadata !DIExpression()), !dbg !4824
  %9 = bitcast i32* %6 to i8*, !dbg !4825
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #15, !dbg !4825
  call void @llvm.dbg.value(metadata i32 0, metadata !488, metadata !DIExpression()), !dbg !4822
  store i32 0, i32* %6, align 4, !dbg !4826
  call void @llvm.dbg.value(metadata i32 0, metadata !489, metadata !DIExpression()), !dbg !4822
  %10 = bitcast %struct.DMA_SWCOPYMENU* %7 to i8*, !dbg !4827
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #15, !dbg !4827
  call void @llvm.dbg.declare(metadata %struct.DMA_SWCOPYMENU* %7, metadata !490, metadata !DIExpression()), !dbg !4828
  %11 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4829
  br i1 %11, label %13, label %12, !dbg !4831

12:                                               ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gdma_start_polling, i32 0, i32 0), i32 noundef 220, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4832
  br label %54, !dbg !4834

13:                                               ; preds = %4
  %14 = trunc i32 %0 to i8, !dbg !4835
  %15 = tail call zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef 25, i8 noundef zeroext %14) #16, !dbg !4836
  call void @llvm.dbg.value(metadata i8 %15, metadata !491, metadata !DIExpression()), !dbg !4822
  %16 = icmp eq i8 %15, -1, !dbg !4837
  br i1 %16, label %17, label %18, !dbg !4839

17:                                               ; preds = %13
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gdma_start_polling, i32 0, i32 0), i32 noundef 225, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.20, i32 0, i32 0)) #16, !dbg !4840
  br label %54, !dbg !4842

18:                                               ; preds = %13
  %19 = icmp eq i32 %3, 0, !dbg !4843
  br i1 %19, label %54, label %20, !dbg !4845

20:                                               ; preds = %18
  %21 = and i32 %1, -268435456, !dbg !4846
  %22 = icmp eq i32 %21, 268435456, !dbg !4848
  %23 = or i32 %1, 805306368
  %24 = select i1 %22, i32 %23, i32 %1, !dbg !4849
  call void @llvm.dbg.value(metadata i32 %24, metadata !484, metadata !DIExpression()), !dbg !4822
  %25 = and i32 %2, -268435456, !dbg !4850
  %26 = icmp eq i32 %25, 268435456, !dbg !4852
  %27 = or i32 %2, 805306368, !dbg !4853
  %28 = select i1 %26, i32 %27, i32 %2, !dbg !4853
  call void @llvm.dbg.value(metadata i32 %28, metadata !485, metadata !DIExpression()), !dbg !4822
  %29 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %7, i32 0, i32 0, !dbg !4854
  store i32 %28, i32* %29, align 4, !dbg !4855
  %30 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %7, i32 0, i32 1, !dbg !4856
  store i32 %24, i32* %30, align 4, !dbg !4857
  call void @llvm.dbg.value(metadata i32* %6, metadata !488, metadata !DIExpression(DW_OP_deref)), !dbg !4822
  %31 = call fastcc i32 @hal_gdma_calc_size(i32 noundef %28, i32 noundef %24, i32 noundef %3, i32* noundef nonnull %6) #14, !dbg !4858
  call void @llvm.dbg.value(metadata i32 %31, metadata !489, metadata !DIExpression()), !dbg !4822
  %32 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 0, !dbg !4859
  store i32 2, i32* %32, align 4, !dbg !4860
  %33 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 1, !dbg !4861
  store i32 %31, i32* %33, align 4, !dbg !4862
  %34 = load i32, i32* %6, align 4, !dbg !4863
  call void @llvm.dbg.value(metadata i32 %34, metadata !488, metadata !DIExpression()), !dbg !4822
  %35 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 2, !dbg !4864
  store i32 %34, i32* %35, align 4, !dbg !4865
  %36 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 3, !dbg !4866
  %37 = bitcast i8** %36 to %struct.DMA_SWCOPYMENU**, !dbg !4867
  store %struct.DMA_SWCOPYMENU* %7, %struct.DMA_SWCOPYMENU** %37, align 4, !dbg !4867
  %38 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %5, i32 0, i32 4, !dbg !4868
  store void ()* null, void ()** %38, align 4, !dbg !4869
  call void @DMA_Config_Internal(i8 noundef zeroext %15, %struct.DMA_INPUT* noundef nonnull %5, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext 0, i1 noundef zeroext true) #16, !dbg !4870
  %39 = add i32 %0, -16
  %40 = icmp ult i32 %39, -17
  %41 = shl i32 %0, 1
  %42 = add i32 %41, -32
  br label %43, !dbg !4871

43:                                               ; preds = %50, %20
  br i1 %40, label %44, label %47, !dbg !4872

44:                                               ; preds = %43
  %45 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !4872
  %46 = lshr i32 %45, %42, !dbg !4872
  br label %50, !dbg !4872

47:                                               ; preds = %43
  %48 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !4872
  %49 = lshr i32 %48, %41, !dbg !4872
  br label %50, !dbg !4872

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  %52 = and i32 %51, 1, !dbg !4872
  %53 = icmp eq i32 %52, 0, !dbg !4871
  br i1 %53, label %54, label %43, !dbg !4871, !llvm.loop !4873

54:                                               ; preds = %50, %18, %17, %12
  %55 = phi i32 [ -3, %17 ], [ -2, %12 ], [ -1, %18 ], [ 0, %50 ], !dbg !4822
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #15, !dbg !4875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #15, !dbg !4875
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %8) #15, !dbg !4875
  ret i32 %55, !dbg !4875
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4880, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4881, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.value(metadata i8* %2, metadata !4882, metadata !DIExpression()), !dbg !4883
  %4 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4884
  br i1 %4, label %6, label %5, !dbg !4886

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gdma_register_callback, i32 0, i32 0), i32 noundef 272, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4887
  br label %9, !dbg !4889

6:                                                ; preds = %3
  %7 = getelementptr inbounds [2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 %0, i32 0, !dbg !4890
  store void (i32, i8*)* %1, void (i32, i8*)** %7, align 4, !dbg !4891
  %8 = getelementptr inbounds [2 x %struct.hal_gdma_callback_context], [2 x %struct.hal_gdma_callback_context]* @g_gdma_callback_context, i32 0, i32 %0, i32 1, !dbg !4892
  store i8* %2, i8** %8, align 4, !dbg !4893
  br label %9, !dbg !4894

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 0, %6 ], [ -2, %5 ], !dbg !4883
  ret i32 %10, !dbg !4895
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4902, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32* %1, metadata !4903, metadata !DIExpression()), !dbg !4904
  %3 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4905
  br i1 %3, label %5, label %4, !dbg !4907

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.hal_gdma_get_running_status, i32 0, i32 0), i32 noundef 286, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4908
  br label %24, !dbg !4910

5:                                                ; preds = %2
  %6 = add i32 %0, -16, !dbg !4911
  %7 = icmp ult i32 %6, -17, !dbg !4911
  br i1 %7, label %8, label %15, !dbg !4913

8:                                                ; preds = %5
  %9 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !4911
  %10 = shl i32 %0, 1, !dbg !4911
  %11 = add i32 %10, -32, !dbg !4911
  %12 = shl nuw i32 1, %11, !dbg !4911
  %13 = and i32 %9, %12, !dbg !4911
  %14 = icmp eq i32 %13, 0, !dbg !4911
  br i1 %14, label %21, label %22, !dbg !4911

15:                                               ; preds = %5
  %16 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !4911
  %17 = shl nsw i32 %0, 1, !dbg !4911
  %18 = shl nuw i32 1, %17, !dbg !4911
  %19 = and i32 %16, %18, !dbg !4911
  %20 = icmp eq i32 %19, 0, !dbg !4911
  br i1 %20, label %21, label %22, !dbg !4913

21:                                               ; preds = %15, %8
  br label %22

22:                                               ; preds = %8, %15, %21
  %23 = phi i32 [ 0, %21 ], [ 1, %15 ], [ 1, %8 ], !dbg !4914
  store i32 %23, i32* %1, align 4, !dbg !4914
  br label %24, !dbg !4915

24:                                               ; preds = %22, %4
  %25 = phi i32 [ 0, %22 ], [ -2, %4 ], !dbg !4904
  ret i32 %25, !dbg !4916
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gdma_stop(i32 noundef %0) local_unnamed_addr #3 !dbg !4917 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i8 0, metadata !4920, metadata !DIExpression()), !dbg !4921
  %2 = tail call fastcc zeroext i1 @hal_gdma_is_channel_vaild(i32 noundef %0) #14, !dbg !4922
  br i1 %2, label %4, label %3, !dbg !4924

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_gdma_stop, i32 0, i32 0), i32 noundef 304, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 noundef %0) #16, !dbg !4925
  br label %7, !dbg !4927

4:                                                ; preds = %1
  %5 = trunc i32 %0 to i8, !dbg !4928
  %6 = add i8 %5, 1, !dbg !4928
  call void @llvm.dbg.value(metadata i8 %6, metadata !4920, metadata !DIExpression()), !dbg !4921
  tail call void @DMA_FullSize_FreeChannel(i8 noundef zeroext %6) #16, !dbg !4929
  br label %7, !dbg !4930

7:                                                ; preds = %4, %3
  %8 = phi i32 [ 0, %4 ], [ -2, %3 ], !dbg !4921
  ret i32 %8, !dbg !4931
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4939, metadata !DIExpression()), !dbg !4940
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4941
  br i1 %3, label %4, label %18, !dbg !4943

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4944
  %6 = load i8, i8* %5, align 4, !dbg !4944, !range !1488
  %7 = icmp eq i8 %6, 0, !dbg !4944
  br i1 %7, label %8, label %18, !dbg !4946

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !4947
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4948
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4949
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4950
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !4951
  store i8 1, i8* %5, align 4, !dbg !4952
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4953, !range !4954
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !4955
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !4956
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4957
  %16 = icmp eq i32 %15, 0, !dbg !4959
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4940
  br label %18, !dbg !4940

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4940
  ret i32 %19, !dbg !4960
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #7 !dbg !4961 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4967, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4968, metadata !DIExpression()), !dbg !4969
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4970
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4972
  br i1 %5, label %6, label %22, !dbg !4972

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4973
  %8 = load i32, i32* %7, align 4, !dbg !4973
  %9 = icmp ugt i32 %8, 12, !dbg !4975
  br i1 %9, label %22, label %10, !dbg !4976

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4977
  %12 = load i32, i32* %11, align 4, !dbg !4977
  %13 = icmp ugt i32 %12, 2, !dbg !4978
  br i1 %13, label %22, label %14, !dbg !4979

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4980
  %16 = load i32, i32* %15, align 4, !dbg !4980
  %17 = icmp ugt i32 %16, 1, !dbg !4981
  br i1 %17, label %22, label %18, !dbg !4982

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4983
  %20 = load i32, i32* %19, align 4, !dbg !4983
  %21 = icmp ult i32 %20, 4, !dbg !4984
  br label %22, !dbg !4985

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4969
  ret i1 %23, !dbg !4986
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #11 !dbg !4987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4991, metadata !DIExpression()), !dbg !4992
  %2 = icmp ne i32 %0, 0, !dbg !4993
  %3 = zext i1 %2 to i32, !dbg !4994
  ret i32 %3, !dbg !4995
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5000, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5001, metadata !DIExpression()), !dbg !5002
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !5003
  br i1 %3, label %4, label %22, !dbg !5005

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5006
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5007
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5008
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !5009
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5010
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5011
  %11 = load i32, i32* %10, align 4, !dbg !5011
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !5012
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5013
  %14 = load i32, i32* %13, align 4, !dbg !5013
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !5014
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5015
  %17 = load i32, i32* %16, align 4, !dbg !5015
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !5016
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5017
  %20 = load i32, i32* %19, align 4, !dbg !5017
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !5018
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !5019
  br label %22, !dbg !5020

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5002
  ret i32 %23, !dbg !5021
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #11 !dbg !5022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5026, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5027, metadata !DIExpression()), !dbg !5032
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5033
  %3 = load i32, i32* %2, align 4, !dbg !5033
  ret i32 %3, !dbg !5034
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #11 !dbg !5035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5039, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5040, metadata !DIExpression()), !dbg !5043
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5044
  %3 = load i16, i16* %2, align 2, !dbg !5044
  ret i16 %3, !dbg !5045
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #11 !dbg !5046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5050, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5051, metadata !DIExpression()), !dbg !5054
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5055
  %3 = load i16, i16* %2, align 2, !dbg !5055
  ret i16 %3, !dbg !5056
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #11 !dbg !5057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5061, metadata !DIExpression()), !dbg !5064
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5062, metadata !DIExpression()), !dbg !5065
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5066
  %3 = load i16, i16* %2, align 2, !dbg !5066
  ret i16 %3, !dbg !5067
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !5068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5072, metadata !DIExpression()), !dbg !5073
  %2 = icmp ult i32 %0, 2, !dbg !5074
  ret i1 %2, !dbg !5075
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !5076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5080, metadata !DIExpression()), !dbg !5081
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5082
  br i1 %2, label %3, label %10, !dbg !5084

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5085
  %5 = load i8, i8* %4, align 4, !dbg !5085, !range !1488
  %6 = icmp eq i8 %5, 0, !dbg !5087
  br i1 %6, label %10, label %7, !dbg !5088

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !5089
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5090, !range !4954
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !5091
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !5092
  br label %10, !dbg !5093

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5081
  ret i32 %11, !dbg !5094
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !5095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5099, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.value(metadata i8 %1, metadata !5100, metadata !DIExpression()), !dbg !5102
  %3 = icmp eq i32 %0, 0, !dbg !5103
  %4 = icmp eq i32 %0, 1, !dbg !5103
  %5 = select i1 %4, i32 1, i32 2, !dbg !5103
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5103
  call void @llvm.dbg.value(metadata i32 %6, metadata !5101, metadata !DIExpression()), !dbg !5102
  %7 = icmp eq i32 %6, 2, !dbg !5104
  br i1 %7, label %9, label %8, !dbg !5106

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !5107
  br label %9, !dbg !5109

9:                                                ; preds = %2, %8
  ret void, !dbg !5110
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5115, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i8* %1, metadata !5116, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.value(metadata i32 %2, metadata !5117, metadata !DIExpression()), !dbg !5120
  %4 = icmp eq i32 %0, 0, !dbg !5121
  %5 = icmp eq i32 %0, 1, !dbg !5121
  %6 = select i1 %5, i32 1, i32 2, !dbg !5121
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5121
  call void @llvm.dbg.value(metadata i32 %7, metadata !5118, metadata !DIExpression()), !dbg !5120
  %8 = icmp eq i8* %1, null, !dbg !5122
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5124
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5124
  call void @llvm.dbg.value(metadata i32 0, metadata !5119, metadata !DIExpression()), !dbg !5120
  br i1 %12, label %19, label %13, !dbg !5124

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5119, metadata !DIExpression()), !dbg !5120
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5125
  %16 = load i8, i8* %15, align 1, !dbg !5125
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !5131
  %17 = add nuw i32 %14, 1, !dbg !5132
  call void @llvm.dbg.value(metadata i32 %17, metadata !5119, metadata !DIExpression()), !dbg !5120
  %18 = icmp eq i32 %17, %2, !dbg !5133
  br i1 %18, label %19, label %13, !dbg !5134, !llvm.loop !5135

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5120
  ret i32 %20, !dbg !5137
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5138 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5140, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.value(metadata i8* %1, metadata !5141, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.value(metadata i32 %2, metadata !5142, metadata !DIExpression()), !dbg !5146
  %5 = bitcast i32* %4 to i8*, !dbg !5147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5147
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5148
  br i1 %6, label %7, label %24, !dbg !5150

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5151
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5153
  br i1 %10, label %24, label %11, !dbg !5153

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5154
  %13 = load i8, i8* %12, align 4, !dbg !5154, !range !1488
  %14 = icmp eq i8 %13, 0, !dbg !5154
  br i1 %14, label %24, label %15, !dbg !5156

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5157, !range !4954
  call void @llvm.dbg.value(metadata i32* %4, metadata !5143, metadata !DIExpression(DW_OP_deref)), !dbg !5146
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !5158
  %17 = load i32, i32* %4, align 4, !dbg !5159
  call void @llvm.dbg.value(metadata i32 %17, metadata !5143, metadata !DIExpression()), !dbg !5146
  %18 = icmp ult i32 %17, %2, !dbg !5161
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5144, metadata !DIExpression()), !dbg !5146
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !5162
  %20 = load i32, i32* %4, align 4, !dbg !5163
  call void @llvm.dbg.value(metadata i32 %20, metadata !5143, metadata !DIExpression()), !dbg !5146
  %21 = icmp eq i32 %19, %20, !dbg !5165
  br i1 %21, label %22, label %24, !dbg !5166

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !5167, !range !5169
  call void @llvm.dbg.value(metadata i32 %23, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !5170
  br label %24, !dbg !5171

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5172
  ret i32 %25, !dbg !5172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #11 !dbg !5173 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5177, metadata !DIExpression()), !dbg !5180
  call void @llvm.dbg.value(metadata i1 %1, metadata !5178, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5180
  %3 = icmp eq i32 %0, 0, !dbg !5181
  %4 = select i1 %1, i32 15, i32 14, !dbg !5183
  %5 = select i1 %1, i32 17, i32 16, !dbg !5183
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !5183
  call void @llvm.dbg.value(metadata i32 %6, metadata !5179, metadata !DIExpression()), !dbg !5180
  ret i32 %6, !dbg !5184
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !5185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5189, metadata !DIExpression()), !dbg !5191
  %2 = icmp eq i32 %0, 0, !dbg !5192
  %3 = icmp eq i32 %0, 1, !dbg !5192
  %4 = select i1 %3, i32 1, i32 2, !dbg !5192
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5192
  call void @llvm.dbg.value(metadata i32 %5, metadata !5190, metadata !DIExpression()), !dbg !5191
  %6 = icmp ult i32 %5, 2, !dbg !5193
  br i1 %6, label %7, label %9, !dbg !5195

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !5196
  br label %9, !dbg !5198

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !5199
  ret i8 %10, !dbg !5200
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !5201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5205, metadata !DIExpression()), !dbg !5207
  %2 = icmp eq i32 %0, 0, !dbg !5208
  %3 = icmp eq i32 %0, 1, !dbg !5208
  %4 = select i1 %3, i32 1, i32 2, !dbg !5208
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5208
  call void @llvm.dbg.value(metadata i32 %5, metadata !5206, metadata !DIExpression()), !dbg !5207
  %6 = icmp ult i32 %5, 2, !dbg !5209
  br i1 %6, label %7, label %9, !dbg !5211

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !5212
  br label %9, !dbg !5214

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !5215
  ret i32 %10, !dbg !5216
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5221, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.value(metadata i8* %1, metadata !5222, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.value(metadata i32 %2, metadata !5223, metadata !DIExpression()), !dbg !5226
  %4 = icmp eq i32 %0, 0, !dbg !5227
  %5 = icmp eq i32 %0, 1, !dbg !5227
  %6 = select i1 %5, i32 1, i32 2, !dbg !5227
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5227
  call void @llvm.dbg.value(metadata i32 %7, metadata !5224, metadata !DIExpression()), !dbg !5226
  %8 = icmp eq i8* %1, null, !dbg !5228
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5230
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5230
  call void @llvm.dbg.value(metadata i32 0, metadata !5225, metadata !DIExpression()), !dbg !5226
  br i1 %12, label %19, label %13, !dbg !5230

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5225, metadata !DIExpression()), !dbg !5226
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !5231
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5237
  store i8 %15, i8* %16, align 1, !dbg !5238
  %17 = add nuw i32 %14, 1, !dbg !5239
  call void @llvm.dbg.value(metadata i32 %17, metadata !5225, metadata !DIExpression()), !dbg !5226
  %18 = icmp eq i32 %17, %2, !dbg !5240
  br i1 %18, label %19, label %13, !dbg !5241, !llvm.loop !5242

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5226
  ret i32 %20, !dbg !5244
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !5245 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5247, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.value(metadata i8* %1, metadata !5248, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.value(metadata i32 %2, metadata !5249, metadata !DIExpression()), !dbg !5253
  %5 = bitcast i32* %4 to i8*, !dbg !5254
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5254
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5255
  br i1 %6, label %7, label %20, !dbg !5257

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5258
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5260
  br i1 %10, label %20, label %11, !dbg !5260

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5261, !range !4954
  call void @llvm.dbg.value(metadata i32* %4, metadata !5250, metadata !DIExpression(DW_OP_deref)), !dbg !5253
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !5262
  %13 = load i32, i32* %4, align 4, !dbg !5263
  call void @llvm.dbg.value(metadata i32 %13, metadata !5250, metadata !DIExpression()), !dbg !5253
  %14 = icmp ult i32 %13, %2, !dbg !5265
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !5251, metadata !DIExpression()), !dbg !5253
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !5266
  %16 = load i32, i32* %4, align 4, !dbg !5267
  call void @llvm.dbg.value(metadata i32 %16, metadata !5250, metadata !DIExpression()), !dbg !5253
  %17 = icmp eq i32 %15, %16, !dbg !5269
  br i1 %17, label %18, label %20, !dbg !5270

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5271, !range !5169
  call void @llvm.dbg.value(metadata i32 %19, metadata !5252, metadata !DIExpression()), !dbg !5253
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !5273
  br label %20, !dbg !5274

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !5253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5275
  ret i32 %21, !dbg !5275
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !5276 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5278, metadata !DIExpression()), !dbg !5280
  %3 = bitcast i32* %2 to i8*, !dbg !5281
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5281
  call void @llvm.dbg.value(metadata i32 0, metadata !5279, metadata !DIExpression()), !dbg !5280
  store i32 0, i32* %2, align 4, !dbg !5282
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5283
  br i1 %4, label %5, label %8, !dbg !5285

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5286, !range !4954
  call void @llvm.dbg.value(metadata i32* %2, metadata !5279, metadata !DIExpression(DW_OP_deref)), !dbg !5280
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !5287
  %7 = load i32, i32* %2, align 4, !dbg !5288
  call void @llvm.dbg.value(metadata i32 %7, metadata !5279, metadata !DIExpression()), !dbg !5280
  br label %8, !dbg !5289

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5280
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5290
  ret i32 %9, !dbg !5290
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !5291 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5293, metadata !DIExpression()), !dbg !5295
  %3 = bitcast i32* %2 to i8*, !dbg !5296
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5296
  call void @llvm.dbg.value(metadata i32 0, metadata !5294, metadata !DIExpression()), !dbg !5295
  store i32 0, i32* %2, align 4, !dbg !5297
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5298
  br i1 %4, label %5, label %8, !dbg !5300

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5301, !range !4954
  call void @llvm.dbg.value(metadata i32* %2, metadata !5294, metadata !DIExpression(DW_OP_deref)), !dbg !5295
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !5302
  %7 = load i32, i32* %2, align 4, !dbg !5303
  call void @llvm.dbg.value(metadata i32 %7, metadata !5294, metadata !DIExpression()), !dbg !5295
  br label %8, !dbg !5304

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5305
  ret i32 %9, !dbg !5305
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !5306 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5310, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5311, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.value(metadata i8* %2, metadata !5312, metadata !DIExpression()), !dbg !5314
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5315
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5317
  br i1 %6, label %7, label %18, !dbg !5317

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5318
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5319
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5320
  store i8* %2, i8** %9, align 4, !dbg !5321
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5322
  store i8 1, i8* %10, align 4, !dbg !5323
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5324
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !5325
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !5326
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !5327
  %13 = icmp eq i32 %11, 0, !dbg !5328
  br i1 %13, label %14, label %15, !dbg !5330

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !5331
  br label %16, !dbg !5333

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !5334
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !5336, !range !5169
  call void @llvm.dbg.value(metadata i32 %17, metadata !5313, metadata !DIExpression()), !dbg !5314
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !5337
  br label %18, !dbg !5338

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5314
  ret i32 %19, !dbg !5339
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #11 !dbg !562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !567, metadata !DIExpression()), !dbg !5340
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5341
  %3 = load void ()*, void ()** %2, align 4, !dbg !5341
  ret void ()* %3, !dbg !5342
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !5343 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5349, !range !1488
  %2 = icmp eq i8 %1, 0, !dbg !5349
  br i1 %2, label %8, label %3, !dbg !5350

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5351
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5353
  br i1 %5, label %8, label %6, !dbg !5354

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5355
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !5357
  br label %8, !dbg !5358

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5359, !range !4954
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5360
  ret void, !dbg !5361
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !5362 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5367, !range !1488
  %2 = icmp eq i8 %1, 0, !dbg !5367
  br i1 %2, label %8, label %3, !dbg !5368

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5369
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5371
  br i1 %5, label %8, label %6, !dbg !5372

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5373
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !5375
  br label %8, !dbg !5376

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5377, !range !4954
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5378
  ret void, !dbg !5379
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5380 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5384, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.value(metadata i1 %1, metadata !5385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5391
  %5 = bitcast i32* %3 to i8*, !dbg !5392
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5392
  %6 = bitcast i32* %4 to i8*, !dbg !5392
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5392
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5388, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5391
  br i1 %1, label %7, label %12, !dbg !5393

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5388, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5391
  call void @llvm.dbg.value(metadata i32* %3, metadata !5386, metadata !DIExpression(DW_OP_deref)), !dbg !5391
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !5394
  %8 = load i32, i32* %3, align 4, !dbg !5397
  call void @llvm.dbg.value(metadata i32 %8, metadata !5386, metadata !DIExpression()), !dbg !5391
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5399
  %10 = load i32, i32* %9, align 4, !dbg !5399
  %11 = icmp ult i32 %8, %10, !dbg !5400
  br i1 %11, label %22, label %20, !dbg !5401

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5387, metadata !DIExpression(DW_OP_deref)), !dbg !5391
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !5402
  %13 = load i32, i32* %4, align 4, !dbg !5404
  call void @llvm.dbg.value(metadata i32 %13, metadata !5387, metadata !DIExpression()), !dbg !5391
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5406
  %15 = load i32, i32* %14, align 4, !dbg !5406
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5407
  %17 = load i32, i32* %16, align 4, !dbg !5407
  %18 = sub i32 %15, %17, !dbg !5408
  %19 = icmp ult i32 %13, %18, !dbg !5409
  br i1 %19, label %22, label %20, !dbg !5410

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5411, !range !5169
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !5411
  br label %22, !dbg !5412

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5412
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5412
  ret void, !dbg !5412
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5413 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5418, !range !1488
  %2 = icmp eq i8 %1, 0, !dbg !5418
  br i1 %2, label %11, label %3, !dbg !5419

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5420
  %5 = icmp eq i32 %4, 0, !dbg !5421
  br i1 %5, label %11, label %6, !dbg !5422

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5423
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5425
  br i1 %8, label %11, label %9, !dbg !5426

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5427
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !5429
  br label %11, !dbg !5430

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5431, !range !4954
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5434 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5439, !range !1488
  %2 = icmp eq i8 %1, 0, !dbg !5439
  br i1 %2, label %11, label %3, !dbg !5440

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5441
  %5 = icmp eq i32 %4, 0, !dbg !5442
  br i1 %5, label %11, label %6, !dbg !5443

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5444
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5446
  br i1 %8, label %11, label %9, !dbg !5447

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5448
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !5450
  br label %11, !dbg !5451

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5452, !range !4954
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5453
  ret void, !dbg !5454
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5455 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5459, metadata !DIExpression()), !dbg !5461
  call void @llvm.dbg.value(metadata i32 %1, metadata !5460, metadata !DIExpression()), !dbg !5461
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5462
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5464
  br i1 %5, label %6, label %10, !dbg !5464

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5465
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5466
  store i32 %1, i32* %8, align 4, !dbg !5467
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5468
  br label %10, !dbg !5469

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5461
  ret i32 %11, !dbg !5470
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5471 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5477, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5478, metadata !DIExpression()), !dbg !5479
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5480
  br i1 %3, label %4, label %28, !dbg !5482

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5483
  br i1 %5, label %6, label %28, !dbg !5485

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5486
  store i8 1, i8* %7, align 4, !dbg !5487
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5488
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5489
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5490
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !5491
  tail call void @DMA_Init() #16, !dbg !5492
  tail call void @DMA_Vfifo_init() #16, !dbg !5493
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5494
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5495
  %14 = load i8*, i8** %13, align 4, !dbg !5495
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5496
  %16 = load i32, i32* %15, align 4, !dbg !5496
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5497
  %18 = load i32, i32* %17, align 4, !dbg !5497
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5498
  %20 = load i32, i32* %19, align 4, !dbg !5498
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5499
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !5500
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5501
  %23 = load i8*, i8** %22, align 4, !dbg !5501
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5502
  %25 = load i32, i32* %24, align 4, !dbg !5502
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5503
  %27 = load i32, i32* %26, align 4, !dbg !5503
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !5504
  br label %28, !dbg !5505

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5479
  ret i32 %29, !dbg !5506
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #7 !dbg !5507 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5511, metadata !DIExpression()), !dbg !5512
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5513
  br i1 %2, label %27, label %3, !dbg !5515

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5516
  %5 = load i8*, i8** %4, align 4, !dbg !5516
  %6 = icmp eq i8* %5, null, !dbg !5518
  br i1 %6, label %27, label %7, !dbg !5519

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5520
  %9 = load i32, i32* %8, align 4, !dbg !5520
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5522
  %11 = load i32, i32* %10, align 4, !dbg !5522
  %12 = icmp ult i32 %9, %11, !dbg !5523
  br i1 %12, label %27, label %13, !dbg !5524

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5525
  %15 = load i32, i32* %14, align 4, !dbg !5525
  %16 = icmp ult i32 %9, %15, !dbg !5527
  br i1 %16, label %27, label %17, !dbg !5528

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5529
  %19 = load i8*, i8** %18, align 4, !dbg !5529
  %20 = icmp eq i8* %19, null, !dbg !5531
  br i1 %20, label %27, label %21, !dbg !5532

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5533
  %23 = load i32, i32* %22, align 4, !dbg !5533
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5535
  %25 = load i32, i32* %24, align 4, !dbg !5535
  %26 = icmp uge i32 %23, %25, !dbg !5536
  br label %27, !dbg !5537

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5512
  ret i1 %28, !dbg !5538
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5543, metadata !DIExpression()), !dbg !5545
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !5546
  %3 = udiv i32 %2, 1000000, !dbg !5547
  call void @llvm.dbg.value(metadata i32 %3, metadata !5544, metadata !DIExpression()), !dbg !5545
  %4 = mul i32 %3, %0, !dbg !5548
  ret i32 %4, !dbg !5549
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5550 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5552, metadata !DIExpression()), !dbg !5554
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5555
  br i1 %2, label %3, label %8, !dbg !5557

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5558
  %5 = icmp eq i32 %0, 1, !dbg !5558
  %6 = select i1 %5, i32 1, i32 2, !dbg !5558
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5558
  call void @llvm.dbg.value(metadata i32 %7, metadata !5553, metadata !DIExpression()), !dbg !5554
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !5559
  br label %8, !dbg !5560

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5554
  ret i32 %9, !dbg !5561
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5566, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.value(metadata i8 %1, metadata !5567, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.value(metadata i8 %2, metadata !5568, metadata !DIExpression()), !dbg !5571
  call void @llvm.dbg.value(metadata i8 %3, metadata !5569, metadata !DIExpression()), !dbg !5571
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5572
  br i1 %5, label %6, label %11, !dbg !5574

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5575
  %8 = icmp eq i32 %0, 1, !dbg !5575
  %9 = select i1 %8, i32 1, i32 2, !dbg !5575
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5575
  call void @llvm.dbg.value(metadata i32 %10, metadata !5570, metadata !DIExpression()), !dbg !5571
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !5576
  br label %11, !dbg !5577

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5571
  ret i32 %12, !dbg !5578
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5581, metadata !DIExpression()), !dbg !5583
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5584
  br i1 %2, label %3, label %8, !dbg !5586

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5587
  %5 = icmp eq i32 %0, 1, !dbg !5587
  %6 = select i1 %5, i32 1, i32 2, !dbg !5587
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5587
  call void @llvm.dbg.value(metadata i32 %7, metadata !5582, metadata !DIExpression()), !dbg !5583
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !5588
  br label %8, !dbg !5589

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5583
  ret i32 %9, !dbg !5590
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5595, metadata !DIExpression()), !dbg !5597
  call void @llvm.dbg.value(metadata i32 %1, metadata !5596, metadata !DIExpression()), !dbg !5597
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5598
  br i1 %3, label %4, label %8, !dbg !5600

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5601
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5603
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !5603
  br label %8, !dbg !5604

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5597
  ret i32 %9, !dbg !5604
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !5605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5609, metadata !DIExpression()), !dbg !5610
  %2 = trunc i32 %0 to i8, !dbg !5611
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #16, !dbg !5612
  ret i32 %0, !dbg !5613
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !5614 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5615
  tail call fastcc void @prvSetupHardware() #14, !dbg !5616
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !5617, !srcloc !5620
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !5621, !srcloc !5624
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #16, !dbg !5625
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.22, i32 0, i32 0)) #16, !dbg !5626
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #16, !dbg !5627
  tail call fastcc void @gdma_transfer_data_interrupt() #14, !dbg !5628
  br label %4, !dbg !5629

4:                                                ; preds = %4, %0
  br label %4, !dbg !5630, !llvm.loop !5633
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5636 {
  tail call void @top_xtal_init() #16, !dbg !5637
  ret void, !dbg !5638
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !5639 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5640
  ret void, !dbg !5641
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @gdma_transfer_data_interrupt() unnamed_addr #3 !dbg !5642 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5644, metadata !DIExpression()), !dbg !5645
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.23, i32 0, i32 0)) #16, !dbg !5646
  call void @llvm.dbg.value(metadata i32 0, metadata !5644, metadata !DIExpression()), !dbg !5645
  br label %2, !dbg !5647

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %6, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !5644, metadata !DIExpression()), !dbg !5645
  %4 = trunc i32 %3 to i8, !dbg !5649
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* @source_data, i32 0, i32 %3, !dbg !5652
  store i8 %4, i8* %5, align 1, !dbg !5653
  %6 = add nuw nsw i32 %3, 1, !dbg !5654
  call void @llvm.dbg.value(metadata i32 %6, metadata !5644, metadata !DIExpression()), !dbg !5645
  %7 = icmp eq i32 %6, 64, !dbg !5655
  br i1 %7, label %8, label %2, !dbg !5647, !llvm.loop !5656

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !5644, metadata !DIExpression()), !dbg !5645
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* @destination_data, i32 0, i32 %9, !dbg !5658
  store i8 90, i8* %10, align 1, !dbg !5662
  %11 = add nuw nsw i32 %9, 1, !dbg !5663
  call void @llvm.dbg.value(metadata i32 %11, metadata !5644, metadata !DIExpression()), !dbg !5645
  %12 = icmp eq i32 %11, 64, !dbg !5664
  br i1 %12, label %13, label %8, !dbg !5665, !llvm.loop !5666

13:                                               ; preds = %8
  %14 = tail call i32 @hal_gdma_init(i32 noundef 0) #16, !dbg !5668
  %15 = tail call i32 @hal_gdma_register_callback(i32 noundef 0, void (i32, i8*)* noundef nonnull @gdma_callback, i8* noundef nonnull inttoptr (i32 1 to i8*)) #16, !dbg !5669
  %16 = tail call i32 @hal_gdma_start_interrupt(i32 noundef 0, i32 noundef ptrtoint ([64 x i8]* @destination_data to i32), i32 noundef ptrtoint ([64 x i8]* @source_data to i32), i32 noundef 64) #16, !dbg !5670
  ret void, !dbg !5671
}

; Function Attrs: noinline nounwind optsize
define internal void @gdma_callback(i32 noundef %0, i8* nocapture noundef readnone %1) #3 !dbg !5672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5674, metadata !DIExpression()), !dbg !5677
  call void @llvm.dbg.value(metadata i8* %1, metadata !5675, metadata !DIExpression()), !dbg !5677
  call void @llvm.dbg.value(metadata i32 0, metadata !5676, metadata !DIExpression()), !dbg !5677
  %3 = tail call i32 @hal_gdma_stop(i32 noundef 0) #16, !dbg !5678
  %4 = tail call i32 @hal_gdma_deinit(i32 noundef 0) #16, !dbg !5679
  call void @llvm.dbg.value(metadata i32 0, metadata !5676, metadata !DIExpression()), !dbg !5677
  br label %5, !dbg !5680

5:                                                ; preds = %2, %14
  %6 = phi i32 [ 0, %2 ], [ %15, %14 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5676, metadata !DIExpression()), !dbg !5677
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* @destination_data, i32 0, i32 %6, !dbg !5682
  %8 = load i8, i8* %7, align 1, !dbg !5682
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* @source_data, i32 0, i32 %6, !dbg !5686
  %10 = load i8, i8* %9, align 1, !dbg !5686
  %11 = icmp eq i8 %8, %10, !dbg !5687
  br i1 %11, label %14, label %12, !dbg !5688

12:                                               ; preds = %5
  %13 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3.24, i32 0, i32 0)) #16, !dbg !5689
  br label %14, !dbg !5691

14:                                               ; preds = %5, %12
  %15 = add nuw nsw i32 %6, 1, !dbg !5692
  call void @llvm.dbg.value(metadata i32 %15, metadata !5676, metadata !DIExpression()), !dbg !5677
  %16 = icmp eq i32 %15, 64, !dbg !5693
  br i1 %16, label %17, label %5, !dbg !5680, !llvm.loop !5694

17:                                               ; preds = %14
  %18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4.25, i32 0, i32 0)) #16, !dbg !5696
  %19 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #16, !dbg !5697
  ret void, !dbg !5698
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !5699 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5709
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5709
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5701, metadata !DIExpression()), !dbg !5710
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #16, !dbg !5711
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #16, !dbg !5712
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !5713
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !5714
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5715
  store i32 9, i32* %7, align 4, !dbg !5716
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5717
  store i32 3, i32* %8, align 4, !dbg !5718
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5719
  store i32 0, i32* %9, align 4, !dbg !5720
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5721
  store i32 0, i32* %10, align 4, !dbg !5722
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !5723
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5724
  ret void, !dbg !5724
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #1 !dbg !5725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5727, metadata !DIExpression()), !dbg !5729
  %2 = add i32 %0, -1, !dbg !5730
  %3 = icmp ugt i32 %2, 16777215, !dbg !5732
  br i1 %3, label %8, label %4, !dbg !5733

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5734
  call void @llvm.dbg.value(metadata i32 %5, metadata !5728, metadata !DIExpression()), !dbg !5729
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5735
  %7 = and i32 %6, -4, !dbg !5735
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5735
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5736
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5737
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5738
  br label %8, !dbg !5739

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5729
  ret i32 %9, !dbg !5740
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #1 !dbg !5741 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5742
  ret void, !dbg !5743
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #6 !dbg !5744 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5745
  ret i32 %1, !dbg !5746
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5747 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !5748
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5749
  ret void, !dbg !5750
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #1 !dbg !5751 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5752
  %2 = or i32 %1, 15728640, !dbg !5752
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5752
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5753
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5754
  %4 = or i32 %3, 458752, !dbg !5754
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5754
  ret void, !dbg !5755
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #1 !dbg !5756 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5757
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5758
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5759
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5760
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5761
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5762
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5763
  ret void, !dbg !5764
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #11 !dbg !5765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5767, metadata !DIExpression()), !dbg !5768
  ret i32 0, !dbg !5769
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #11 !dbg !5770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5820, metadata !DIExpression()), !dbg !5822
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5821, metadata !DIExpression()), !dbg !5822
  ret i32 0, !dbg !5823
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #11 !dbg !5824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5826, metadata !DIExpression()), !dbg !5827
  ret i32 1, !dbg !5828
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5833, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.value(metadata i32 %1, metadata !5834, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.value(metadata i32 %2, metadata !5835, metadata !DIExpression()), !dbg !5836
  ret i32 0, !dbg !5837
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5838 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5842, metadata !DIExpression()), !dbg !5845
  call void @llvm.dbg.value(metadata i32 %1, metadata !5843, metadata !DIExpression()), !dbg !5845
  call void @llvm.dbg.value(metadata i32 %2, metadata !5844, metadata !DIExpression()), !dbg !5845
  ret i32 -1, !dbg !5846
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5847 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5851, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.value(metadata i8* %1, metadata !5852, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.value(metadata i32 %2, metadata !5853, metadata !DIExpression()), !dbg !5854
  ret i32 0, !dbg !5855
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5856 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5858, metadata !DIExpression()), !dbg !5862
  call void @llvm.dbg.value(metadata i8* %1, metadata !5859, metadata !DIExpression()), !dbg !5862
  call void @llvm.dbg.value(metadata i32 %2, metadata !5860, metadata !DIExpression()), !dbg !5862
  call void @llvm.dbg.value(metadata i32 0, metadata !5861, metadata !DIExpression()), !dbg !5862
  %4 = icmp sgt i32 %2, 0, !dbg !5863
  br i1 %4, label %5, label %14, !dbg !5866

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5861, metadata !DIExpression()), !dbg !5862
  call void @llvm.dbg.value(metadata i8* %7, metadata !5859, metadata !DIExpression()), !dbg !5862
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5867
  call void @llvm.dbg.value(metadata i8* %8, metadata !5859, metadata !DIExpression()), !dbg !5862
  %9 = load i8, i8* %7, align 1, !dbg !5869
  %10 = zext i8 %9 to i32, !dbg !5869
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !5870
  %12 = add nuw nsw i32 %6, 1, !dbg !5871
  call void @llvm.dbg.value(metadata i32 %12, metadata !5861, metadata !DIExpression()), !dbg !5862
  %13 = icmp eq i32 %12, %2, !dbg !5863
  br i1 %13, label %14, label %5, !dbg !5866, !llvm.loop !5872

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5874
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !720 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !923, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.value(metadata i32 %1, metadata !924, metadata !DIExpression()), !dbg !5875
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !5876, !srcloc !5877
  call void @llvm.dbg.value(metadata i8* %3, metadata !926, metadata !DIExpression()), !dbg !5875
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5878
  %5 = icmp eq i8* %4, null, !dbg !5880
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5881
  call void @llvm.dbg.value(metadata i8* %6, metadata !925, metadata !DIExpression()), !dbg !5875
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5882
  %8 = icmp ult i8* %3, %7, !dbg !5884
  %9 = xor i1 %8, true, !dbg !5885
  %10 = or i1 %5, %9, !dbg !5885
  br i1 %10, label %11, label %13, !dbg !5885

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5886
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5885
  br label %13, !dbg !5885

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5886
  ret i8* %14, !dbg !5885
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5889, metadata !DIExpression()), !dbg !5890
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #16, !dbg !5891
  br label %3, !dbg !5892

3:                                                ; preds = %1, %3
  br label %3, !dbg !5892, !llvm.loop !5893
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5899, metadata !DIExpression()), !dbg !5901
  call void @llvm.dbg.value(metadata i32 %1, metadata !5900, metadata !DIExpression()), !dbg !5901
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.33, i32 0, i32 0), i32 noundef %1) #16, !dbg !5902
  ret i32 -1, !dbg !5903
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5904 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.34, i32 0, i32 0)) #16, !dbg !5909
  ret i32 0, !dbg !5910
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

!llvm.dbg.cu = !{!2, !941, !950, !1031, !1076, !200, !215, !1110, !235, !318, !1112, !420, !505, !614, !660, !918, !929}
!llvm.ident = !{!1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152, !1152}
!llvm.module.flags = !{!1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DMA_LISR_FUNC", scope: !2, file: !3, line: 56, type: !197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/dma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!4 = !{!5, !34, !41, !46, !51, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
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
!47 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!50 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !52, line: 47, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
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
!199 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !200, file: !201, line: 43, type: !136, isLocal: true, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !202, globals: !210, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!202 = !{!203, !205, !206, !208}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !47, line: 62, baseType: !7)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !205)
!210 = !{!198, !211}
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !200, file: !201, line: 44, type: !136, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !215, file: !216, line: 54, type: !136, isLocal: false, isDefinition: true)
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !216, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !217, retainedTypes: !224, globals: !232, splitDebugInlining: false, nameTableKind: None)
!216 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!217 = !{!218, !97}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !219, line: 71, baseType: !7, size: 32, elements: !220)
!219 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "UART_PORT0", value: 0)
!222 = !DIEnumerator(name: "UART_PORT1", value: 1)
!223 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!224 = !{!203, !136, !225, !227, !229, !230, !205}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !47, line: 113, baseType: !228)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !47, line: 59, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !229)
!232 = !{!213}
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !235, file: !236, line: 51, type: !315, isLocal: false, isDefinition: true)
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !284, globals: !314, splitDebugInlining: false, nameTableKind: None)
!236 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!237 = !{!238, !249, !268, !275}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 163, baseType: !53, size: 32, elements: !240)
!239 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248}
!241 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!242 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!243 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!244 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!245 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!246 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!247 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!248 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 186, baseType: !7, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!251 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!252 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!253 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!254 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!255 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!256 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!257 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!258 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!259 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!260 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!261 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!262 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!263 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!264 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!265 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!266 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!267 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!268 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 176, baseType: !7, size: 32, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!271 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!272 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!273 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!274 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 99, baseType: !7, size: 32, elements: !277)
!276 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!279 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!280 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!281 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!282 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!283 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!284 = !{!285, !161}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !287, line: 72, baseType: !288)
!287 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 56, size: 525312, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !304, !305, !309, !313}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !288, file: !287, line: 57, baseType: !207, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !288, file: !287, line: 58, baseType: !207, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !288, file: !287, line: 59, baseType: !207, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !288, file: !287, line: 60, baseType: !207, size: 32, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !288, file: !287, line: 61, baseType: !207, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !288, file: !287, line: 62, baseType: !207, size: 32, offset: 160)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !288, file: !287, line: 63, baseType: !207, size: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !288, file: !287, line: 64, baseType: !207, size: 32, offset: 224)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !288, file: !287, line: 65, baseType: !207, size: 32, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !288, file: !287, line: 66, baseType: !207, size: 32, offset: 288)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !288, file: !287, line: 67, baseType: !301, size: 32, offset: 320)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 1)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !288, file: !287, line: 68, baseType: !207, size: 32, offset: 352)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !288, file: !287, line: 69, baseType: !306, size: 523904, offset: 384)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 523904, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 16372)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !288, file: !287, line: 70, baseType: !310, size: 512, offset: 524288)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 512, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !288, file: !287, line: 71, baseType: !310, size: 512, offset: 524800)
!314 = !{!233}
!315 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !318, file: !319, line: 53, type: !407, isLocal: false, isDefinition: true)
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !320, retainedTypes: !329, globals: !406, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!320 = !{!321, !51}
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 152, baseType: !53, size: 32, elements: !323)
!322 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!323 = !{!324, !325, !326, !327, !328}
!324 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!325 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!326 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!327 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!328 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!329 = !{!330, !161, !136, !331, !333, !367}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !52, line: 97, baseType: !173)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !129, line: 44, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !131, line: 77, baseType: !53)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !335, line: 378, baseType: !336)
!335 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 363, size: 28704, elements: !337)
!337 = !{!338, !342, !346, !347, !348, !349, !350, !351, !352, !353, !357, !362, !366}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !336, file: !335, line: 365, baseType: !339, size: 256)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !336, file: !335, line: 366, baseType: !343, size: 768, offset: 256)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 768, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 24)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !336, file: !335, line: 367, baseType: !339, size: 256, offset: 1024)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !336, file: !335, line: 368, baseType: !343, size: 768, offset: 1280)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !336, file: !335, line: 369, baseType: !339, size: 256, offset: 2048)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !336, file: !335, line: 370, baseType: !343, size: 768, offset: 2304)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !336, file: !335, line: 371, baseType: !339, size: 256, offset: 3072)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !336, file: !335, line: 372, baseType: !343, size: 768, offset: 3328)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !336, file: !335, line: 373, baseType: !339, size: 256, offset: 4096)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !336, file: !335, line: 374, baseType: !354, size: 1792, offset: 4352)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1792, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 56)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !336, file: !335, line: 375, baseType: !358, size: 1920, offset: 6144)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 1920, elements: !360)
!359 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!360 = !{!361}
!361 = !DISubrange(count: 240)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !336, file: !335, line: 376, baseType: !363, size: 20608, offset: 8064)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 20608, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 644)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !336, file: !335, line: 377, baseType: !207, size: 32, offset: 28672)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !335, line: 418, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 395, size: 1120, elements: !370)
!370 = !{!371, !373, !374, !375, !376, !377, !378, !382, !383, !384, !385, !386, !387, !388, !389, !393, !394, !395, !399, !403, !405}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !369, file: !335, line: 397, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !369, file: !335, line: 398, baseType: !207, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !369, file: !335, line: 399, baseType: !207, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !369, file: !335, line: 400, baseType: !207, size: 32, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !369, file: !335, line: 401, baseType: !207, size: 32, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !369, file: !335, line: 402, baseType: !207, size: 32, offset: 160)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !369, file: !335, line: 403, baseType: !379, size: 96, offset: 192)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 96, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 12)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !369, file: !335, line: 404, baseType: !207, size: 32, offset: 288)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !369, file: !335, line: 405, baseType: !207, size: 32, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !369, file: !335, line: 406, baseType: !207, size: 32, offset: 352)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !369, file: !335, line: 407, baseType: !207, size: 32, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !369, file: !335, line: 408, baseType: !207, size: 32, offset: 416)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !369, file: !335, line: 409, baseType: !207, size: 32, offset: 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !369, file: !335, line: 410, baseType: !207, size: 32, offset: 480)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !369, file: !335, line: 411, baseType: !390, size: 64, offset: 512)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 64, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 2)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !369, file: !335, line: 412, baseType: !372, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !369, file: !335, line: 413, baseType: !372, size: 32, offset: 608)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !369, file: !335, line: 414, baseType: !396, size: 128, offset: 640)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 128, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 4)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !369, file: !335, line: 415, baseType: !400, size: 160, offset: 768)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 160, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 5)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !369, file: !335, line: 416, baseType: !404, size: 160, offset: 928)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 160, elements: !401)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !369, file: !335, line: 417, baseType: !207, size: 32, offset: 1088)
!406 = !{!316}
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 6144, elements: !416)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !319, line: 50, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 47, size: 64, elements: !410)
!410 = !{!411, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !409, file: !319, line: 48, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !330}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !409, file: !319, line: 49, baseType: !136, size: 32, offset: 32)
!416 = !{!417}
!417 = !DISubrange(count: 96)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "g_gdma_callback_context", scope: !420, file: !421, line: 51, type: !492, isLocal: true, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !422, retainedTypes: !444, globals: !446, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gdma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!422 = !{!423, !430, !34, !41, !5, !436, !440}
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 192, baseType: !53, size: 32, elements: !425)
!424 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gdma.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!425 = !{!426, !427, !428, !429}
!426 = !DIEnumerator(name: "HAL_GDMA_STATUS_ERROR", value: -3)
!427 = !DIEnumerator(name: "HAL_GDMA_STATUS_ERROR_CHANNEL", value: -2)
!428 = !DIEnumerator(name: "HAL_GDMA_STATUS_INVALID_PARAMETER", value: -1)
!429 = !DIEnumerator(name: "HAL_GDMA_STATUS_OK", value: 0)
!430 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !431, line: 731, baseType: !7, size: 32, elements: !432)
!431 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!432 = !{!433, !434, !435}
!433 = !DIEnumerator(name: "HAL_GDMA_CHANNEL_0", value: 0)
!434 = !DIEnumerator(name: "HAL_GDMA_CHANNEL_1", value: 1)
!435 = !DIEnumerator(name: "HAL_GDMA_CHANNEL_MAX", value: 2)
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 201, baseType: !53, size: 32, elements: !437)
!437 = !{!438, !439}
!438 = !DIEnumerator(name: "HAL_GDMA_EVENT_TRANSACTION_ERROR", value: -1)
!439 = !DIEnumerator(name: "HAL_GDMA_EVENT_TRANSACTION_SUCCESS", value: 0)
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 208, baseType: !7, size: 32, elements: !441)
!441 = !{!442, !443}
!442 = !DIEnumerator(name: "HAL_GDMA_IDLE", value: 0)
!443 = !DIEnumerator(name: "HAL_GDMA_BUSY", value: 1)
!444 = !{!445, !115, !128, !161}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TranSize", file: !6, line: 114, baseType: !41)
!446 = !{!447, !479, !418}
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "invalid_handle", scope: !449, file: !421, line: 151, type: !478, isLocal: true, isDefinition: true)
!449 = distinct !DISubprogram(name: "hal_gdma_start_interrupt", scope: !421, file: !421, line: 142, type: !450, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !454)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !453, !136, !136, !136}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gdma_status_t", file: !424, line: 197, baseType: !423)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gdma_channel_t", file: !431, line: 735, baseType: !430)
!454 = !{!455, !456, !457, !458, !459, !469, !470, !471, !477}
!455 = !DILocalVariable(name: "channel", arg: 1, scope: !449, file: !421, line: 142, type: !453)
!456 = !DILocalVariable(name: "destination_address", arg: 2, scope: !449, file: !421, line: 143, type: !136)
!457 = !DILocalVariable(name: "source_address", arg: 3, scope: !449, file: !421, line: 144, type: !136)
!458 = !DILocalVariable(name: "data_length", arg: 4, scope: !449, file: !421, line: 145, type: !136)
!459 = !DILocalVariable(name: "input", scope: !449, file: !421, line: 147, type: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !462)
!462 = !{!463, !465, !466, !467, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !6, line: 190, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Type", file: !6, line: 122, baseType: !34)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !461, file: !6, line: 191, baseType: !445, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !461, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !461, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !461, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!469 = !DILocalVariable(name: "count", scope: !449, file: !421, line: 148, type: !136)
!470 = !DILocalVariable(name: "size", scope: !449, file: !421, line: 149, type: !136)
!471 = !DILocalVariable(name: "menu", scope: !449, file: !421, line: 150, type: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_SWCOPYMENU", file: !6, line: 179, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 176, size: 64, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "srcaddr", scope: !473, file: !6, line: 177, baseType: !136, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dstaddr", scope: !473, file: !6, line: 178, baseType: !136, size: 32, offset: 32)
!477 = !DILocalVariable(name: "handle", scope: !449, file: !421, line: 152, type: !128)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "invalid_handle", scope: !481, file: !421, line: 217, type: !478, isLocal: true, isDefinition: true)
!481 = distinct !DISubprogram(name: "hal_gdma_start_polling", scope: !421, file: !421, line: 208, type: !450, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491}
!483 = !DILocalVariable(name: "channel", arg: 1, scope: !481, file: !421, line: 208, type: !453)
!484 = !DILocalVariable(name: "destination_address", arg: 2, scope: !481, file: !421, line: 209, type: !136)
!485 = !DILocalVariable(name: "source_address", arg: 3, scope: !481, file: !421, line: 210, type: !136)
!486 = !DILocalVariable(name: "data_length", arg: 4, scope: !481, file: !421, line: 211, type: !136)
!487 = !DILocalVariable(name: "input", scope: !481, file: !421, line: 213, type: !460)
!488 = !DILocalVariable(name: "count", scope: !481, file: !421, line: 214, type: !136)
!489 = !DILocalVariable(name: "size", scope: !481, file: !421, line: 215, type: !136)
!490 = !DILocalVariable(name: "menu", scope: !481, file: !421, line: 216, type: !472)
!491 = !DILocalVariable(name: "handle", scope: !481, file: !421, line: 218, type: !128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 128, elements: !391)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gdma_callback_context", file: !421, line: 49, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 46, size: 64, elements: !495)
!495 = !{!496, !502}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !494, file: !421, line: 47, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gdma_callback_t", file: !424, line: 230, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 32)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501, !161}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gdma_event_t", file: !424, line: 204, baseType: !436)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !494, file: !421, line: 48, baseType: !161, size: 32, offset: 32)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !505, file: !506, line: 77, type: !570, isLocal: true, isDefinition: true)
!505 = distinct !DICompileUnit(language: DW_LANG_C99, file: !506, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !507, retainedTypes: !557, globals: !559, splitDebugInlining: false, nameTableKind: None)
!506 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!507 = !{!508, !516, !521, !537, !543, !547, !218, !97, !552}
!508 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 345, baseType: !53, size: 32, elements: !510)
!509 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!510 = !{!511, !512, !513, !514, !515}
!511 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!512 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!513 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!514 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!515 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!516 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !431, line: 109, baseType: !7, size: 32, elements: !517)
!517 = !{!518, !519, !520}
!518 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!519 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!520 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!521 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 302, baseType: !7, size: 32, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!523 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!524 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!525 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!526 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!527 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!528 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!529 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!530 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!531 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!532 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!533 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!534 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!535 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!536 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!537 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 321, baseType: !7, size: 32, elements: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!540 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!541 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!542 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!543 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 330, baseType: !7, size: 32, elements: !544)
!544 = !{!545, !546}
!545 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!546 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 337, baseType: !7, size: 32, elements: !548)
!548 = !{!549, !550, !551}
!549 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!550 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!551 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !509, line: 355, baseType: !53, size: 32, elements: !553)
!553 = !{!554, !555, !556}
!554 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!555 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!556 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!557 = !{!7, !161, !132, !558, !128}
!558 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!559 = !{!503, !560}
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "func_tbl", scope: !562, file: !506, line: 536, type: !568, isLocal: true, isDefinition: true)
!562 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !506, file: !506, line: 534, type: !563, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !566)
!563 = !DISubroutineType(types: !564)
!564 = !{!179, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !431, line: 113, baseType: !516)
!566 = !{!567}
!567 = !DILocalVariable(name: "uart_port", arg: 1, scope: !562, file: !506, line: 534, type: !565)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 64, elements: !391)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 1024, elements: !391)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !506, line: 75, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 68, size: 512, elements: !573)
!573 = !{!574, !575, !587, !588, !599, !600}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !572, file: !506, line: 69, baseType: !126, size: 8)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !572, file: !506, line: 70, baseType: !576, size: 128, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !509, line: 378, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 373, size: 128, elements: !578)
!578 = !{!579, !581, !583, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !577, file: !509, line: 374, baseType: !580, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !509, line: 317, baseType: !521)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !577, file: !509, line: 375, baseType: !582, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !509, line: 326, baseType: !537)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !577, file: !509, line: 376, baseType: !584, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !509, line: 333, baseType: !543)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !577, file: !509, line: 377, baseType: !586, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !509, line: 341, baseType: !547)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !572, file: !506, line: 71, baseType: !126, size: 8, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !572, file: !506, line: 72, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !506, line: 66, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 63, size: 64, elements: !591)
!591 = !{!592, !598}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !590, file: !506, line: 64, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !509, line: 410, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 32)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !597, !161}
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !509, line: 359, baseType: !552)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !590, file: !506, line: 65, baseType: !161, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !572, file: !506, line: 73, baseType: !126, size: 8, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !572, file: !506, line: 74, baseType: !601, size: 224, offset: 288)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !509, line: 390, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 382, size: 224, elements: !603)
!603 = !{!604, !606, !607, !608, !609, !610, !611}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !602, file: !509, line: 383, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !602, file: !509, line: 384, baseType: !136, size: 32, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !602, file: !509, line: 385, baseType: !136, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !602, file: !509, line: 386, baseType: !605, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !602, file: !509, line: 387, baseType: !136, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !602, file: !509, line: 388, baseType: !136, size: 32, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !602, file: !509, line: 389, baseType: !136, size: 32, offset: 192)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "source_data", scope: !614, file: !615, line: 54, type: !655, isLocal: true, isDefinition: true, align: 32)
!614 = distinct !DICompileUnit(language: DW_LANG_C99, file: !615, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !616, retainedTypes: !648, globals: !649, splitDebugInlining: false, nameTableKind: None)
!615 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!616 = !{!516, !521, !537, !543, !547, !617, !430, !436}
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !431, line: 249, baseType: !7, size: 32, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!619 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!620 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!621 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!622 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!623 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!624 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!625 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!626 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!627 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!628 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!629 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!630 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!631 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!632 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!633 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!634 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!635 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!636 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!637 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!638 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!639 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!640 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!641 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!642 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!643 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!644 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!645 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!646 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!647 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!648 = !{!161, !136}
!649 = !{!650, !612, !653}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!651 = distinct !DIGlobalVariable(name: "dma_length", scope: !614, file: !615, line: 53, type: !652, isLocal: true, isDefinition: true)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "destination_data", scope: !614, file: !615, line: 55, type: !655, isLocal: true, isDefinition: true, align: 32)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 64)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !660, file: !661, line: 59, type: !136, isLocal: false, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C99, file: !661, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !662, globals: !715, splitDebugInlining: false, nameTableKind: None)
!661 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!662 = !{!663, !671, !696}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !335, line: 656, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 650, size: 128, elements: !666)
!666 = !{!667, !668, !669, !670}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !665, file: !335, line: 652, baseType: !207, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !665, file: !335, line: 653, baseType: !207, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !665, file: !335, line: 654, baseType: !207, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !665, file: !335, line: 655, baseType: !372, size: 32, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !335, line: 418, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 395, size: 1120, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !673, file: !335, line: 397, baseType: !372, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !673, file: !335, line: 398, baseType: !207, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !673, file: !335, line: 399, baseType: !207, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !673, file: !335, line: 400, baseType: !207, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !673, file: !335, line: 401, baseType: !207, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !673, file: !335, line: 402, baseType: !207, size: 32, offset: 160)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !673, file: !335, line: 403, baseType: !379, size: 96, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !673, file: !335, line: 404, baseType: !207, size: 32, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !673, file: !335, line: 405, baseType: !207, size: 32, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !673, file: !335, line: 406, baseType: !207, size: 32, offset: 352)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !673, file: !335, line: 407, baseType: !207, size: 32, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !673, file: !335, line: 408, baseType: !207, size: 32, offset: 416)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !673, file: !335, line: 409, baseType: !207, size: 32, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !673, file: !335, line: 410, baseType: !207, size: 32, offset: 480)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !673, file: !335, line: 411, baseType: !390, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !673, file: !335, line: 412, baseType: !372, size: 32, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !673, file: !335, line: 413, baseType: !372, size: 32, offset: 608)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !673, file: !335, line: 414, baseType: !396, size: 128, offset: 640)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !673, file: !335, line: 415, baseType: !400, size: 160, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !673, file: !335, line: 416, baseType: !404, size: 160, offset: 928)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !673, file: !335, line: 417, baseType: !207, size: 32, offset: 1088)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !287, line: 72, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 56, size: 525312, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !698, file: !287, line: 57, baseType: !207, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !698, file: !287, line: 58, baseType: !207, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !698, file: !287, line: 59, baseType: !207, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !698, file: !287, line: 60, baseType: !207, size: 32, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !698, file: !287, line: 61, baseType: !207, size: 32, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !698, file: !287, line: 62, baseType: !207, size: 32, offset: 160)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !698, file: !287, line: 63, baseType: !207, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !698, file: !287, line: 64, baseType: !207, size: 32, offset: 224)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !698, file: !287, line: 65, baseType: !207, size: 32, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !698, file: !287, line: 66, baseType: !207, size: 32, offset: 288)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !698, file: !287, line: 67, baseType: !301, size: 32, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !698, file: !287, line: 68, baseType: !207, size: 32, offset: 352)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !698, file: !287, line: 69, baseType: !306, size: 523904, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !698, file: !287, line: 70, baseType: !310, size: 512, offset: 524288)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !698, file: !287, line: 71, baseType: !310, size: 512, offset: 524800)
!715 = !{!658, !716}
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !660, file: !661, line: 61, type: !207, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(name: "heap_end", scope: !720, file: !721, line: 66, type: !726, isLocal: true, isDefinition: true)
!720 = distinct !DISubprogram(name: "_sbrk_r", scope: !721, file: !721, line: 63, type: !722, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !922)
!721 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!722 = !DISubroutineType(types: !723)
!723 = !{!724, !727, !917}
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !725, line: 123, baseType: !726)
!725 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 32)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !729, line: 377, size: 1920, elements: !730)
!729 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!730 = !{!731, !732, !806, !807, !808, !809, !810, !811, !812, !815, !836, !840, !841, !842, !843, !853, !866, !867, !872, !891, !892, !899, !900, !916}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !728, file: !729, line: 381, baseType: !53, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !728, file: !729, line: 386, baseType: !733, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !729, line: 292, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !729, line: 186, size: 832, elements: !736)
!736 = !{!737, !739, !740, !741, !743, !744, !749, !750, !751, !752, !756, !762, !769, !773, !774, !775, !776, !780, !782, !783, !784, !786, !792, !805}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !735, file: !729, line: 187, baseType: !738, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !735, file: !729, line: 188, baseType: !53, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !735, file: !729, line: 189, baseType: !53, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !735, file: !729, line: 190, baseType: !742, size: 16, offset: 96)
!742 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !735, file: !729, line: 191, baseType: !742, size: 16, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !735, file: !729, line: 192, baseType: !745, size: 64, offset: 128)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !729, line: 122, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !745, file: !729, line: 123, baseType: !738, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !745, file: !729, line: 124, baseType: !53, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !735, file: !729, line: 193, baseType: !53, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !735, file: !729, line: 196, baseType: !727, size: 32, offset: 224)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !735, file: !729, line: 200, baseType: !161, size: 32, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !735, file: !729, line: 202, baseType: !753, size: 32, offset: 288)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 32)
!754 = !DISubroutineType(types: !755)
!755 = !{!53, !727, !161, !726, !53}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !735, file: !729, line: 204, baseType: !757, size: 32, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 32)
!758 = !DISubroutineType(types: !759)
!759 = !{!53, !727, !161, !760, !53}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !735, file: !729, line: 207, baseType: !763, size: 32, offset: 352)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 32)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !727, !161, !766, !53}
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !767, line: 116, baseType: !768)
!767 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!768 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !735, file: !729, line: 208, baseType: !770, size: 32, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 32)
!771 = !DISubroutineType(types: !772)
!772 = !{!53, !727, !161}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !735, file: !729, line: 211, baseType: !745, size: 64, offset: 416)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !735, file: !729, line: 212, baseType: !738, size: 32, offset: 480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !735, file: !729, line: 213, baseType: !53, size: 32, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !735, file: !729, line: 216, baseType: !777, size: 24, offset: 544)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 24, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 3)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !735, file: !729, line: 217, baseType: !781, size: 8, offset: 568)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8, elements: !302)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !735, file: !729, line: 220, baseType: !745, size: 64, offset: 576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !735, file: !729, line: 223, baseType: !53, size: 32, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !735, file: !729, line: 224, baseType: !785, size: 32, offset: 672)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !767, line: 46, baseType: !768)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !735, file: !729, line: 231, baseType: !787, size: 32, offset: 704)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !729, line: 35, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !789, line: 34, baseType: !790)
!789 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 32)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !789, line: 33, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !735, file: !729, line: 233, baseType: !793, size: 64, offset: 736)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !767, line: 170, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 162, size: 64, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !794, file: !767, line: 164, baseType: !53, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !794, file: !767, line: 169, baseType: !798, size: 32, offset: 32)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !767, line: 165, size: 32, elements: !799)
!799 = !{!800, !803}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !798, file: !767, line: 167, baseType: !801, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !802, line: 116, baseType: !53)
!802 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !798, file: !767, line: 168, baseType: !804, size: 32)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !397)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !735, file: !729, line: 234, baseType: !53, size: 32, offset: 800)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !728, file: !729, line: 386, baseType: !733, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !728, file: !729, line: 386, baseType: !733, size: 32, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !728, file: !729, line: 388, baseType: !53, size: 32, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !728, file: !729, line: 390, baseType: !726, size: 32, offset: 160)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !728, file: !729, line: 392, baseType: !53, size: 32, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !728, file: !729, line: 394, baseType: !53, size: 32, offset: 224)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !728, file: !729, line: 395, baseType: !813, size: 32, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 32)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !729, line: 45, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !728, file: !729, line: 397, baseType: !816, size: 32, offset: 288)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 32)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !729, line: 349, size: 128, elements: !818)
!818 = !{!819, !832, !833, !834}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !817, file: !729, line: 352, baseType: !820, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !729, line: 52, size: 192, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !821, file: !729, line: 54, baseType: !820, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !821, file: !729, line: 55, baseType: !53, size: 32, offset: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !821, file: !729, line: 55, baseType: !53, size: 32, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !821, file: !729, line: 55, baseType: !53, size: 32, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !821, file: !729, line: 55, baseType: !53, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !821, file: !729, line: 56, baseType: !829, size: 32, offset: 160)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 32, elements: !302)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !729, line: 22, baseType: !831)
!831 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !817, file: !729, line: 353, baseType: !53, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !817, file: !729, line: 354, baseType: !820, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !817, file: !729, line: 355, baseType: !835, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !728, file: !729, line: 399, baseType: !837, size: 32, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 32)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !727}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !728, file: !729, line: 401, baseType: !53, size: 32, offset: 352)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !728, file: !729, line: 404, baseType: !53, size: 32, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !728, file: !729, line: 405, baseType: !726, size: 32, offset: 416)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !728, file: !729, line: 407, baseType: !844, size: 32, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 32)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !729, line: 324, size: 192, elements: !846)
!846 = !{!847, !849, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !845, file: !729, line: 325, baseType: !848, size: 48)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !778)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !845, file: !729, line: 326, baseType: !848, size: 48, offset: 48)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !845, file: !729, line: 327, baseType: !228, size: 16, offset: 96)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !845, file: !729, line: 330, baseType: !852, size: 64, offset: 128)
!852 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !728, file: !729, line: 408, baseType: !854, size: 32, offset: 480)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 32)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !729, line: 60, size: 288, elements: !856)
!856 = !{!857, !858, !859, !860, !861, !862, !863, !864, !865}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !855, file: !729, line: 62, baseType: !53, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !855, file: !729, line: 63, baseType: !53, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !855, file: !729, line: 64, baseType: !53, size: 32, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !855, file: !729, line: 65, baseType: !53, size: 32, offset: 96)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !855, file: !729, line: 66, baseType: !53, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !855, file: !729, line: 67, baseType: !53, size: 32, offset: 160)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !855, file: !729, line: 68, baseType: !53, size: 32, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !855, file: !729, line: 69, baseType: !53, size: 32, offset: 224)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !855, file: !729, line: 70, baseType: !53, size: 32, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !728, file: !729, line: 409, baseType: !726, size: 32, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !728, file: !729, line: 412, baseType: !868, size: 32, offset: 544)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 32)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !53}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !728, file: !729, line: 416, baseType: !873, size: 32, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 32)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !729, line: 90, size: 1120, elements: !875)
!875 = !{!876, !877, !878, !882}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !874, file: !729, line: 91, baseType: !873, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !874, file: !729, line: 92, baseType: !53, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !874, file: !729, line: 93, baseType: !879, size: 1024, offset: 64)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !874, file: !729, line: 94, baseType: !883, size: 32, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 32)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !729, line: 79, size: 2112, elements: !885)
!885 = !{!886, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !884, file: !729, line: 80, baseType: !887, size: 1024)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !880)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !884, file: !729, line: 81, baseType: !887, size: 1024, offset: 1024)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !884, file: !729, line: 83, baseType: !830, size: 32, offset: 2048)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !884, file: !729, line: 86, baseType: !830, size: 32, offset: 2080)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !728, file: !729, line: 417, baseType: !874, size: 1120, offset: 608)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !728, file: !729, line: 420, baseType: !893, size: 96, offset: 1728)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !729, line: 296, size: 96, elements: !894)
!894 = !{!895, !897, !898}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !893, file: !729, line: 298, baseType: !896, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !893, file: !729, line: 299, baseType: !53, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !893, file: !729, line: 300, baseType: !733, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !728, file: !729, line: 421, baseType: !733, size: 32, offset: 1824)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !728, file: !729, line: 422, baseType: !901, size: 32, offset: 1856)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !729, line: 359, size: 640, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !910, !911, !912, !913, !914, !915}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !902, file: !729, line: 362, baseType: !726, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !902, file: !729, line: 363, baseType: !793, size: 64, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !902, file: !729, line: 364, baseType: !793, size: 64, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !902, file: !729, line: 365, baseType: !793, size: 64, offset: 160)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !902, file: !729, line: 366, baseType: !909, size: 64, offset: 224)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 64, elements: !340)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !902, file: !729, line: 367, baseType: !53, size: 32, offset: 288)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !902, file: !729, line: 368, baseType: !793, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !902, file: !729, line: 369, baseType: !793, size: 64, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !902, file: !729, line: 370, baseType: !793, size: 64, offset: 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !902, file: !729, line: 371, baseType: !793, size: 64, offset: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !902, file: !729, line: 372, baseType: !793, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !728, file: !729, line: 423, baseType: !726, size: 32, offset: 1888)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !802, line: 46, baseType: !7)
!918 = distinct !DICompileUnit(language: DW_LANG_C99, file: !919, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !920, globals: !921, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!920 = !{!726, !724}
!921 = !{!718}
!922 = !{!923, !924, !925, !926}
!923 = !DILocalVariable(name: "r", arg: 1, scope: !720, file: !721, line: 63, type: !727)
!924 = !DILocalVariable(name: "nbytes", arg: 2, scope: !720, file: !721, line: 63, type: !917)
!925 = !DILocalVariable(name: "prev_heap_end", scope: !720, file: !721, line: 67, type: !726)
!926 = !DILocalVariable(name: "stack", scope: !720, file: !721, line: 68, type: !726)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !929, file: !934, line: 4, type: !938, isLocal: false, isDefinition: true)
!929 = distinct !DICompileUnit(language: DW_LANG_C99, file: !930, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !931, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!931 = !{!927, !932, !936}
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !929, file: !934, line: 5, type: !935, isLocal: false, isDefinition: true)
!934 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 88, elements: !190)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !929, file: !934, line: 6, type: !935, isLocal: false, isDefinition: true)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 248, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 31)
!941 = distinct !DICompileUnit(language: DW_LANG_C99, file: !942, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !943, retainedTypes: !949, splitDebugInlining: false, nameTableKind: None)
!942 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!943 = !{!944}
!944 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !945, line: 1209, baseType: !7, size: 32, elements: !946)
!945 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!946 = !{!947, !948}
!947 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!948 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!949 = !{!115, !114}
!950 = distinct !DICompileUnit(language: DW_LANG_C99, file: !951, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !952, retainedTypes: !1030, splitDebugInlining: false, nameTableKind: None)
!951 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!952 = !{!953}
!953 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !954, line: 150, baseType: !7, size: 32, elements: !955)
!954 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!955 = !{!956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!956 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!957 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!958 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!959 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!960 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!961 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!962 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!963 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!964 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!965 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!966 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!967 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!968 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!969 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!970 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!971 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!972 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!973 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!974 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!975 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!976 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!977 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!978 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!979 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!980 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!981 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!982 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!983 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!984 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!985 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!986 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!987 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!988 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!989 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!990 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!991 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!992 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!993 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!994 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!995 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!996 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!997 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!998 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!999 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!1000 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!1001 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!1002 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!1003 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!1004 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!1005 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!1006 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!1007 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!1008 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!1009 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!1010 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!1011 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!1012 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!1013 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!1014 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!1015 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!1016 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!1017 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!1018 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!1019 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!1020 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!1021 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!1022 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!1023 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!1024 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!1025 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!1026 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!1027 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!1028 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!1029 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!1030 = !{!115, !205}
!1031 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1032, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1033, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1033 = !{!1034, !1059}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !335, line: 418, baseType: !1036)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 395, size: 1120, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1036, file: !335, line: 397, baseType: !372, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1036, file: !335, line: 398, baseType: !207, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1036, file: !335, line: 399, baseType: !207, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1036, file: !335, line: 400, baseType: !207, size: 32, offset: 96)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1036, file: !335, line: 401, baseType: !207, size: 32, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1036, file: !335, line: 402, baseType: !207, size: 32, offset: 160)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1036, file: !335, line: 403, baseType: !379, size: 96, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1036, file: !335, line: 404, baseType: !207, size: 32, offset: 288)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1036, file: !335, line: 405, baseType: !207, size: 32, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1036, file: !335, line: 406, baseType: !207, size: 32, offset: 352)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1036, file: !335, line: 407, baseType: !207, size: 32, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1036, file: !335, line: 408, baseType: !207, size: 32, offset: 416)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1036, file: !335, line: 409, baseType: !207, size: 32, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1036, file: !335, line: 410, baseType: !207, size: 32, offset: 480)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1036, file: !335, line: 411, baseType: !390, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1036, file: !335, line: 412, baseType: !372, size: 32, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1036, file: !335, line: 413, baseType: !372, size: 32, offset: 608)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1036, file: !335, line: 414, baseType: !396, size: 128, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1036, file: !335, line: 415, baseType: !400, size: 160, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1036, file: !335, line: 416, baseType: !404, size: 160, offset: 928)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1036, file: !335, line: 417, baseType: !207, size: 32, offset: 1088)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !335, line: 378, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 363, size: 28704, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1061, file: !335, line: 365, baseType: !339, size: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1061, file: !335, line: 366, baseType: !343, size: 768, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1061, file: !335, line: 367, baseType: !339, size: 256, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1061, file: !335, line: 368, baseType: !343, size: 768, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1061, file: !335, line: 369, baseType: !339, size: 256, offset: 2048)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1061, file: !335, line: 370, baseType: !343, size: 768, offset: 2304)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1061, file: !335, line: 371, baseType: !339, size: 256, offset: 3072)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1061, file: !335, line: 372, baseType: !343, size: 768, offset: 3328)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1061, file: !335, line: 373, baseType: !339, size: 256, offset: 4096)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1061, file: !335, line: 374, baseType: !354, size: 1792, offset: 4352)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1061, file: !335, line: 375, baseType: !358, size: 1920, offset: 6144)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1061, file: !335, line: 376, baseType: !363, size: 20608, offset: 8064)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1061, file: !335, line: 377, baseType: !207, size: 32, offset: 28672)
!1076 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1077, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1078, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1078 = !{!1079, !953}
!1079 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1080, line: 55, baseType: !7, size: 32, elements: !1081)
!1080 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1082 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1083 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1084 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1085 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1086 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1087 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1088 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1089 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1090 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1091 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1092 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1093 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1094 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1095 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1096 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1097 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1098 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1099 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1100 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1101 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1102 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1103 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1104 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1105 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1106 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1107 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1108 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1109 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1111, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1111 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1113, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1114, retainedTypes: !1147, splitDebugInlining: false, nameTableKind: None)
!1113 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1114 = !{!1115, !617, !1079, !1122, !1128, !1132, !1136, !1142}
!1115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1116, line: 233, baseType: !53, size: 32, elements: !1117)
!1116 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1119 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1120 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1121 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1116, line: 224, baseType: !53, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1125 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1126 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1127 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1116, line: 217, baseType: !7, size: 32, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1131 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1116, line: 210, baseType: !7, size: 32, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1135 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1116, line: 242, baseType: !7, size: 32, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1139 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1140 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1141 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1143, line: 57, baseType: !7, size: 32, elements: !1144)
!1143 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1144 = !{!1145, !1146}
!1145 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1146 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1147 = !{!1148, !161, !1149, !128, !1150, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1080, line: 87, baseType: !1079)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1116, line: 220, baseType: !1128)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1116, line: 247, baseType: !1136)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1143, line: 60, baseType: !1142)
!1152 = !{!"Ubuntu clang version 14.0.6"}
!1153 = !{i32 7, !"Dwarf Version", i32 2}
!1154 = !{i32 2, !"Debug Info Version", i32 3}
!1155 = !{i32 1, !"wchar_size", i32 4}
!1156 = !{i32 1, !"min_enum_size", i32 4}
!1157 = !{i32 1, !"branch-target-enforcement", i32 0}
!1158 = !{i32 1, !"sign-return-address", i32 0}
!1159 = !{i32 1, !"sign-return-address-all", i32 0}
!1160 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1161 = !{i32 7, !"frame-pointer", i32 2}
!1162 = distinct !DISubprogram(name: "DMA_ERROR_LISR", scope: !3, file: !3, line: 509, type: !181, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1163 = !{}
!1164 = !DILocation(line: 511, column: 5, scope: !1162)
!1165 = distinct !{!1165, !1164, !1166}
!1166 = !DILocation(line: 511, column: 14, scope: !1162)
!1167 = distinct !DISubprogram(name: "DMA_Stop", scope: !3, file: !3, line: 73, type: !1168, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !128}
!1170 = !{!1171}
!1171 = !DILocalVariable(name: "channel", arg: 1, scope: !1167, file: !3, line: 73, type: !128)
!1172 = !DILocation(line: 0, scope: !1167)
!1173 = !DILocation(line: 75, column: 5, scope: !1167)
!1174 = !DILocation(line: 76, column: 5, scope: !1167)
!1175 = !DILocation(line: 77, column: 1, scope: !1167)
!1176 = distinct !DISubprogram(name: "DMA_Run", scope: !3, file: !3, line: 79, type: !1168, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1177 = !{!1178}
!1178 = !DILocalVariable(name: "channel", arg: 1, scope: !1176, file: !3, line: 79, type: !128)
!1179 = !DILocation(line: 0, scope: !1176)
!1180 = !DILocation(line: 81, column: 5, scope: !1176)
!1181 = !DILocation(line: 82, column: 5, scope: !1176)
!1182 = !DILocation(line: 83, column: 1, scope: !1176)
!1183 = distinct !DISubprogram(name: "DMA_GetChannel", scope: !3, file: !3, line: 86, type: !1184, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!128, !134}
!1186 = !{!1187, !1188, !1189, !1190}
!1187 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1183, file: !3, line: 86, type: !134)
!1188 = !DILocalVariable(name: "index", scope: !1183, file: !3, line: 88, type: !174)
!1189 = !DILocalVariable(name: "handle", scope: !1183, file: !3, line: 89, type: !174)
!1190 = !DILocalVariable(name: "flags", scope: !1183, file: !3, line: 90, type: !831)
!1191 = !DILocation(line: 0, scope: !1183)
!1192 = !DILocation(line: 470, column: 3, scope: !1193, inlinedAt: !1199)
!1193 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1194, file: !1194, line: 466, type: !1195, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1194 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!136}
!1197 = !{!1198}
!1198 = !DILocalVariable(name: "result", scope: !1193, file: !1194, line: 468, type: !136)
!1199 = distinct !DILocation(line: 93, column: 5, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 93, column: 5)
!1201 = !{i64 316308}
!1202 = !DILocation(line: 0, scope: !1193, inlinedAt: !1199)
!1203 = !DILocation(line: 330, column: 3, scope: !1204, inlinedAt: !1205)
!1204 = distinct !DISubprogram(name: "__disable_irq", scope: !1194, file: !1194, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1205 = distinct !DILocation(line: 93, column: 5, scope: !1200)
!1206 = !{i64 312972}
!1207 = !DILocation(line: 95, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 95, column: 5)
!1209 = !DILocation(line: 96, column: 41, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 96, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 95, column: 79)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 95, column: 5)
!1213 = !DILocation(line: 96, column: 33, scope: !1210)
!1214 = !DILocation(line: 96, column: 52, scope: !1210)
!1215 = !DILocation(line: 96, column: 13, scope: !1211)
!1216 = !DILocation(line: 100, column: 35, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 96, column: 58)
!1218 = !DILocation(line: 100, column: 32, scope: !1217)
!1219 = !DILocation(line: 102, column: 13, scope: !1217)
!1220 = !DILocation(line: 95, column: 75, scope: !1212)
!1221 = !DILocation(line: 95, column: 50, scope: !1212)
!1222 = distinct !{!1222, !1207, !1223}
!1223 = !DILocation(line: 104, column: 5, scope: !1208)
!1224 = !DILocalVariable(name: "priMask", arg: 1, scope: !1225, file: !1194, line: 481, type: !136)
!1225 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1194, file: !1194, line: 481, type: !1226, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !136}
!1228 = !{!1224}
!1229 = !DILocation(line: 0, scope: !1225, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 105, column: 5, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 105, column: 5)
!1232 = !DILocation(line: 483, column: 3, scope: !1225, inlinedAt: !1230)
!1233 = !{i64 316626}
!1234 = !DILocation(line: 109, column: 15, scope: !1183)
!1235 = !DILocation(line: 109, column: 22, scope: !1183)
!1236 = !DILocation(line: 109, column: 5, scope: !1183)
!1237 = !DILocation(line: 109, column: 27, scope: !1183)
!1238 = !DILocation(line: 111, column: 5, scope: !1183)
!1239 = distinct !DISubprogram(name: "DMA_FreeChannel", scope: !3, file: !3, line: 114, type: !1168, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1240)
!1240 = !{!1241, !1242}
!1241 = !DILocalVariable(name: "handle", arg: 1, scope: !1239, file: !3, line: 114, type: !128)
!1242 = !DILocalVariable(name: "flags", scope: !1239, file: !3, line: 116, type: !831)
!1243 = !DILocation(line: 0, scope: !1239)
!1244 = !DILocation(line: 470, column: 3, scope: !1193, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 118, column: 5, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 118, column: 5)
!1247 = !DILocation(line: 0, scope: !1193, inlinedAt: !1245)
!1248 = !DILocation(line: 330, column: 3, scope: !1204, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 118, column: 5, scope: !1246)
!1250 = !DILocation(line: 121, column: 36, scope: !1239)
!1251 = !DILocation(line: 121, column: 33, scope: !1239)
!1252 = !DILocation(line: 121, column: 24, scope: !1239)
!1253 = !DILocation(line: 123, column: 5, scope: !1239)
!1254 = !DILocation(line: 125, column: 22, scope: !1239)
!1255 = !DILocation(line: 125, column: 5, scope: !1239)
!1256 = !DILocation(line: 125, column: 27, scope: !1239)
!1257 = !DILocation(line: 0, scope: !1225, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 127, column: 5, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 127, column: 5)
!1260 = !DILocation(line: 483, column: 3, scope: !1225, inlinedAt: !1258)
!1261 = !DILocation(line: 129, column: 1, scope: !1239)
!1262 = distinct !DISubprogram(name: "DMA_FullSize_CheckIdleChannel", scope: !3, file: !3, line: 131, type: !1263, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!128, !134, !128}
!1265 = !{!1266, !1267, !1268, !1269, !1270}
!1266 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1262, file: !3, line: 131, type: !134)
!1267 = !DILocalVariable(name: "channel", arg: 2, scope: !1262, file: !3, line: 131, type: !128)
!1268 = !DILocalVariable(name: "index", scope: !1262, file: !3, line: 133, type: !174)
!1269 = !DILocalVariable(name: "handle", scope: !1262, file: !3, line: 134, type: !174)
!1270 = !DILocalVariable(name: "flags", scope: !1262, file: !3, line: 135, type: !831)
!1271 = !DILocation(line: 0, scope: !1262)
!1272 = !DILocation(line: 470, column: 3, scope: !1193, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 137, column: 5, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 137, column: 5)
!1275 = !DILocation(line: 0, scope: !1193, inlinedAt: !1273)
!1276 = !DILocation(line: 330, column: 3, scope: !1204, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 137, column: 5, scope: !1274)
!1278 = !DILocation(line: 139, column: 21, scope: !1262)
!1279 = !DILocation(line: 140, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 140, column: 9)
!1281 = !DILocation(line: 140, column: 9, scope: !1262)
!1282 = !DILocation(line: 140, column: 9, scope: !1280)
!1283 = !DILocation(line: 144, column: 10, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 144, column: 9)
!1285 = !DILocation(line: 144, column: 37, scope: !1284)
!1286 = !DILocation(line: 144, column: 29, scope: !1284)
!1287 = !DILocation(line: 144, column: 48, scope: !1284)
!1288 = !DILocation(line: 144, column: 9, scope: !1262)
!1289 = !DILocation(line: 148, column: 31, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 144, column: 54)
!1291 = !DILocation(line: 148, column: 28, scope: !1290)
!1292 = !DILocation(line: 150, column: 5, scope: !1290)
!1293 = !DILocation(line: 0, scope: !1225, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 153, column: 5, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 153, column: 5)
!1296 = !DILocation(line: 483, column: 3, scope: !1225, inlinedAt: !1294)
!1297 = !DILocation(line: 156, column: 15, scope: !1262)
!1298 = !DILocation(line: 156, column: 22, scope: !1262)
!1299 = !DILocation(line: 156, column: 5, scope: !1262)
!1300 = !DILocation(line: 156, column: 27, scope: !1262)
!1301 = !DILocation(line: 157, column: 5, scope: !1262)
!1302 = !DILocation(line: 158, column: 1, scope: !1262)
!1303 = distinct !DISubprogram(name: "DMA_FullSize_FreeChannel", scope: !3, file: !3, line: 160, type: !1168, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1304)
!1304 = !{!1305, !1306}
!1305 = !DILocalVariable(name: "handle", arg: 1, scope: !1303, file: !3, line: 160, type: !128)
!1306 = !DILocalVariable(name: "flags", scope: !1303, file: !3, line: 162, type: !831)
!1307 = !DILocation(line: 0, scope: !1303)
!1308 = !DILocation(line: 470, column: 3, scope: !1193, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 164, column: 5, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 164, column: 5)
!1311 = !DILocation(line: 0, scope: !1193, inlinedAt: !1309)
!1312 = !DILocation(line: 330, column: 3, scope: !1204, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 164, column: 5, scope: !1310)
!1314 = !DILocation(line: 165, column: 36, scope: !1303)
!1315 = !DILocation(line: 165, column: 33, scope: !1303)
!1316 = !DILocation(line: 165, column: 24, scope: !1303)
!1317 = !DILocation(line: 167, column: 5, scope: !1303)
!1318 = !DILocation(line: 169, column: 22, scope: !1303)
!1319 = !DILocation(line: 169, column: 5, scope: !1303)
!1320 = !DILocation(line: 169, column: 27, scope: !1303)
!1321 = !DILocation(line: 0, scope: !1225, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 171, column: 5, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 171, column: 5)
!1324 = !DILocation(line: 483, column: 3, scope: !1225, inlinedAt: !1322)
!1325 = !DILocation(line: 173, column: 1, scope: !1303)
!1326 = distinct !DISubprogram(name: "DMA_Config_Internal", scope: !3, file: !3, line: 175, type: !1327, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{null, !128, !1329, !126, !126, !128, !126}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !6, line: 190, baseType: !464, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1331, file: !6, line: 191, baseType: !445, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1331, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !1331, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1331, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1339 = !DILocalVariable(name: "dma_no", arg: 1, scope: !1326, file: !3, line: 175, type: !128)
!1340 = !DILocalVariable(name: "dma_menu", arg: 2, scope: !1326, file: !3, line: 176, type: !1329)
!1341 = !DILocalVariable(name: "fullsize", arg: 3, scope: !1326, file: !3, line: 177, type: !126)
!1342 = !DILocalVariable(name: "b2w", arg: 4, scope: !1326, file: !3, line: 178, type: !126)
!1343 = !DILocalVariable(name: "limit", arg: 5, scope: !1326, file: !3, line: 178, type: !128)
!1344 = !DILocalVariable(name: "start", arg: 6, scope: !1326, file: !3, line: 179, type: !126)
!1345 = !DILocalVariable(name: "dma_con", scope: !1326, file: !3, line: 181, type: !114)
!1346 = !DILocalVariable(name: "temp", scope: !1326, file: !3, line: 182, type: !114)
!1347 = !DILocation(line: 0, scope: !1326)
!1348 = !DILocation(line: 184, column: 5, scope: !1326)
!1349 = !DILocation(line: 186, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 186, column: 9)
!1351 = !DILocation(line: 186, column: 9, scope: !1326)
!1352 = !DILocation(line: 187, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 187, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 187, column: 9)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 186, column: 35)
!1356 = distinct !{!1356, !1352, !1352}
!1357 = !DILocation(line: 190, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 190, column: 9)
!1359 = !DILocation(line: 190, column: 9, scope: !1326)
!1360 = !DILocation(line: 191, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 191, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 191, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 190, column: 34)
!1364 = distinct !{!1364, !1360, !1360}
!1365 = !DILocation(line: 194, column: 5, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 194, column: 5)
!1367 = !DILocation(line: 194, column: 5, scope: !1326)
!1368 = !DILocation(line: 194, column: 5, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 194, column: 5)
!1370 = distinct !{!1370, !1368, !1368}
!1371 = !DILocation(line: 196, column: 9, scope: !1326)
!1372 = !DILocation(line: 197, column: 9, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 197, column: 9)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 197, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 196, column: 31)
!1376 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 196, column: 9)
!1377 = distinct !{!1377, !1372, !1372}
!1378 = !DILocation(line: 200, column: 5, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 200, column: 5)
!1380 = !DILocation(line: 200, column: 5, scope: !1326)
!1381 = !DILocation(line: 200, column: 5, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 200, column: 5)
!1383 = distinct !{!1383, !1381, !1381}
!1384 = !DILocation(line: 202, column: 5, scope: !1326)
!1385 = !DILocation(line: 204, column: 23, scope: !1326)
!1386 = !DILocation(line: 204, column: 5, scope: !1326)
!1387 = !DILocation(line: 0, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 209, column: 17)
!1389 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 204, column: 29)
!1390 = !DILocation(line: 209, column: 17, scope: !1389)
!1391 = !DILocation(line: 212, column: 71, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 211, column: 13)
!1393 = !DILocation(line: 212, column: 78, scope: !1392)
!1394 = !DILocation(line: 219, column: 42, scope: !1389)
!1395 = !DILocation(line: 224, column: 21, scope: !1389)
!1396 = !DILocation(line: 228, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 226, column: 39)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 226, column: 17)
!1399 = !DILocation(line: 230, column: 17, scope: !1397)
!1400 = !DILocation(line: 231, column: 13, scope: !1397)
!1401 = !DILocation(line: 216, column: 62, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 215, column: 13)
!1403 = !DILocation(line: 216, column: 69, scope: !1402)
!1404 = !DILocation(line: 236, column: 17, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 231, column: 20)
!1406 = !DILocation(line: 239, column: 21, scope: !1405)
!1407 = !DILocation(line: 0, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 250, column: 17)
!1409 = !DILocation(line: 250, column: 17, scope: !1389)
!1410 = !DILocation(line: 253, column: 75, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 252, column: 13)
!1412 = !DILocation(line: 253, column: 82, scope: !1411)
!1413 = !DILocation(line: 263, column: 21, scope: !1389)
!1414 = !DILocation(line: 267, column: 17, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 265, column: 39)
!1416 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 265, column: 17)
!1417 = !DILocation(line: 269, column: 17, scope: !1415)
!1418 = !DILocation(line: 270, column: 13, scope: !1415)
!1419 = !DILocation(line: 257, column: 66, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 256, column: 13)
!1421 = !DILocation(line: 257, column: 73, scope: !1420)
!1422 = !DILocation(line: 275, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 270, column: 20)
!1424 = !DILocation(line: 278, column: 21, scope: !1423)
!1425 = !DILocation(line: 288, column: 13, scope: !1389)
!1426 = !DILocation(line: 290, column: 13, scope: !1389)
!1427 = !DILocation(line: 294, column: 13, scope: !1389)
!1428 = !DILocation(line: 0, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 299, column: 17)
!1430 = !DILocation(line: 299, column: 17, scope: !1389)
!1431 = !DILocation(line: 302, column: 84, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 301, column: 13)
!1433 = !DILocation(line: 302, column: 91, scope: !1432)
!1434 = !DILocation(line: 314, column: 21, scope: !1389)
!1435 = !DILocation(line: 318, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 316, column: 39)
!1437 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 316, column: 17)
!1438 = !DILocation(line: 323, column: 17, scope: !1436)
!1439 = !DILocation(line: 326, column: 17, scope: !1436)
!1440 = !DILocation(line: 328, column: 17, scope: !1436)
!1441 = !DILocation(line: 329, column: 13, scope: !1436)
!1442 = !DILocation(line: 306, column: 75, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 305, column: 13)
!1444 = !DILocation(line: 306, column: 82, scope: !1443)
!1445 = !DILocation(line: 331, column: 17, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 329, column: 20)
!1447 = !DILocation(line: 338, column: 17, scope: !1446)
!1448 = !DILocation(line: 340, column: 17, scope: !1446)
!1449 = !DILocation(line: 343, column: 21, scope: !1446)
!1450 = !DILocation(line: 0, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 354, column: 17)
!1452 = !DILocation(line: 354, column: 17, scope: !1389)
!1453 = !DILocation(line: 357, column: 84, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 356, column: 13)
!1455 = !DILocation(line: 357, column: 91, scope: !1454)
!1456 = !DILocation(line: 371, column: 21, scope: !1389)
!1457 = !DILocation(line: 375, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 373, column: 39)
!1459 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 373, column: 17)
!1460 = !DILocation(line: 380, column: 17, scope: !1458)
!1461 = !DILocation(line: 383, column: 17, scope: !1458)
!1462 = !DILocation(line: 385, column: 17, scope: !1458)
!1463 = !DILocation(line: 386, column: 13, scope: !1458)
!1464 = !DILocation(line: 361, column: 75, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 360, column: 13)
!1466 = !DILocation(line: 361, column: 82, scope: !1465)
!1467 = !DILocation(line: 388, column: 17, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 386, column: 20)
!1469 = !DILocation(line: 395, column: 17, scope: !1468)
!1470 = !DILocation(line: 397, column: 17, scope: !1468)
!1471 = !DILocation(line: 400, column: 21, scope: !1468)
!1472 = !DILocation(line: 410, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 410, column: 13)
!1474 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 410, column: 13)
!1475 = distinct !{!1475, !1472, !1472}
!1476 = !DILocation(line: 0, scope: !1389)
!1477 = !DILocation(line: 415, column: 23, scope: !1326)
!1478 = !DILocation(line: 415, column: 5, scope: !1326)
!1479 = !DILocation(line: 419, column: 27, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 419, column: 17)
!1481 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 415, column: 29)
!1482 = !DILocation(line: 419, column: 32, scope: !1480)
!1483 = !DILocation(line: 419, column: 17, scope: !1481)
!1484 = !DILocation(line: 421, column: 47, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 421, column: 21)
!1486 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 419, column: 47)
!1487 = !DILocation(line: 421, column: 55, scope: !1485)
!1488 = !{i8 0, i8 2}
!1489 = !DILocation(line: 421, column: 79, scope: !1485)
!1490 = !DILocation(line: 422, column: 59, scope: !1485)
!1491 = !DILocation(line: 422, column: 65, scope: !1485)
!1492 = !DILocation(line: 421, column: 21, scope: !1486)
!1493 = !DILocation(line: 425, column: 29, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 424, column: 17)
!1495 = !DILocation(line: 426, column: 17, scope: !1494)
!1496 = !DILocation(line: 429, column: 66, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 428, column: 26)
!1498 = !DILocation(line: 428, column: 26, scope: !1485)
!1499 = !DILocation(line: 432, column: 29, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 431, column: 17)
!1501 = !DILocation(line: 433, column: 17, scope: !1500)
!1502 = !DILocation(line: 436, column: 66, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 435, column: 26)
!1504 = !DILocation(line: 435, column: 26, scope: !1497)
!1505 = !DILocation(line: 447, column: 27, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 447, column: 17)
!1507 = !DILocation(line: 447, column: 32, scope: !1506)
!1508 = !DILocation(line: 447, column: 17, scope: !1481)
!1509 = !DILocation(line: 449, column: 47, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 449, column: 21)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 447, column: 47)
!1512 = !DILocation(line: 449, column: 55, scope: !1510)
!1513 = !DILocation(line: 449, column: 79, scope: !1510)
!1514 = !DILocation(line: 450, column: 59, scope: !1510)
!1515 = !DILocation(line: 450, column: 65, scope: !1510)
!1516 = !DILocation(line: 449, column: 21, scope: !1511)
!1517 = !DILocation(line: 453, column: 29, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 452, column: 17)
!1519 = !DILocation(line: 454, column: 17, scope: !1518)
!1520 = !DILocation(line: 457, column: 66, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 456, column: 26)
!1522 = !DILocation(line: 456, column: 26, scope: !1510)
!1523 = !DILocation(line: 464, column: 21, scope: !1481)
!1524 = !DILocation(line: 466, column: 13, scope: !1481)
!1525 = !DILocation(line: 470, column: 27, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 470, column: 17)
!1527 = !DILocation(line: 470, column: 32, scope: !1526)
!1528 = !DILocation(line: 470, column: 17, scope: !1481)
!1529 = !DILocation(line: 472, column: 47, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 472, column: 21)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 470, column: 47)
!1532 = !DILocation(line: 472, column: 55, scope: !1530)
!1533 = !DILocation(line: 472, column: 79, scope: !1530)
!1534 = !DILocation(line: 473, column: 59, scope: !1530)
!1535 = !DILocation(line: 473, column: 65, scope: !1530)
!1536 = !DILocation(line: 472, column: 21, scope: !1531)
!1537 = !DILocation(line: 480, column: 21, scope: !1481)
!1538 = !DILocation(line: 482, column: 13, scope: !1481)
!1539 = !DILocation(line: 486, column: 13, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 486, column: 13)
!1541 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 486, column: 13)
!1542 = distinct !{!1542, !1539, !1539}
!1543 = !DILocation(line: 491, column: 19, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 491, column: 9)
!1545 = !DILocation(line: 491, column: 28, scope: !1544)
!1546 = !DILocation(line: 491, column: 9, scope: !1326)
!1547 = !DILocation(line: 493, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 491, column: 37)
!1549 = !DILocation(line: 495, column: 9, scope: !1548)
!1550 = !DILocation(line: 495, column: 35, scope: !1548)
!1551 = !DILocation(line: 496, column: 5, scope: !1548)
!1552 = !DILocation(line: 498, column: 5, scope: !1326)
!1553 = !DILocation(line: 500, column: 5, scope: !1326)
!1554 = !DILocation(line: 502, column: 9, scope: !1326)
!1555 = !DILocation(line: 504, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 502, column: 16)
!1557 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 502, column: 9)
!1558 = !DILocation(line: 505, column: 5, scope: !1556)
!1559 = !DILocation(line: 506, column: 1, scope: !1326)
!1560 = distinct !DISubprogram(name: "DMA_Clock_Enable", scope: !3, file: !3, line: 912, type: !1168, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1561 = !{!1562}
!1562 = !DILocalVariable(name: "channel", arg: 1, scope: !1560, file: !3, line: 912, type: !128)
!1563 = !DILocation(line: 0, scope: !1560)
!1564 = !DILocation(line: 914, column: 59, scope: !1560)
!1565 = !DILocation(line: 914, column: 67, scope: !1560)
!1566 = !DILocation(line: 914, column: 55, scope: !1560)
!1567 = !DILocation(line: 914, column: 51, scope: !1560)
!1568 = !DILocation(line: 915, column: 1, scope: !1560)
!1569 = distinct !DISubprogram(name: "DMA_Register", scope: !3, file: !3, line: 514, type: !1570, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!53, !128, !179}
!1572 = !{!1573, !1574}
!1573 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1569, file: !3, line: 514, type: !128)
!1574 = !DILocalVariable(name: "handler", arg: 2, scope: !1569, file: !3, line: 514, type: !179)
!1575 = !DILocation(line: 0, scope: !1569)
!1576 = !DILocation(line: 516, column: 9, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 516, column: 9)
!1578 = !DILocation(line: 516, column: 20, scope: !1577)
!1579 = !DILocation(line: 517, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 516, column: 49)
!1581 = !DILocation(line: 518, column: 9, scope: !1580)
!1582 = !DILocation(line: 521, column: 26, scope: !1569)
!1583 = !DILocation(line: 521, column: 5, scope: !1569)
!1584 = !DILocation(line: 521, column: 31, scope: !1569)
!1585 = !DILocation(line: 523, column: 5, scope: !1569)
!1586 = !DILocation(line: 524, column: 1, scope: !1569)
!1587 = distinct !DISubprogram(name: "DMA_UnRegister", scope: !3, file: !3, line: 526, type: !1588, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!53, !128}
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1587, file: !3, line: 526, type: !128)
!1592 = !DILocation(line: 0, scope: !1587)
!1593 = !DILocation(line: 528, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 528, column: 9)
!1595 = !DILocation(line: 528, column: 20, scope: !1594)
!1596 = !DILocation(line: 529, column: 9, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 528, column: 49)
!1598 = !DILocation(line: 530, column: 9, scope: !1597)
!1599 = !DILocation(line: 532, column: 26, scope: !1587)
!1600 = !DILocation(line: 532, column: 5, scope: !1587)
!1601 = !DILocation(line: 532, column: 31, scope: !1587)
!1602 = !DILocation(line: 533, column: 5, scope: !1587)
!1603 = !DILocation(line: 534, column: 1, scope: !1587)
!1604 = distinct !DISubprogram(name: "DMA_LISR", scope: !3, file: !3, line: 536, type: !413, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1604, file: !3, line: 536, type: !330)
!1607 = !DILocalVariable(name: "index", scope: !1604, file: !3, line: 538, type: !174)
!1608 = !DILocalVariable(name: "con", scope: !1604, file: !3, line: 539, type: !114)
!1609 = !DILocation(line: 0, scope: !1604)
!1610 = !DILocation(line: 542, column: 5, scope: !1604)
!1611 = !DILocation(line: 545, column: 5, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 545, column: 5)
!1613 = !DILocation(line: 547, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 547, column: 13)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 545, column: 55)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 545, column: 5)
!1617 = !DILocation(line: 547, column: 46, scope: !1614)
!1618 = !DILocation(line: 547, column: 13, scope: !1615)
!1619 = !DILocation(line: 549, column: 22, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 547, column: 64)
!1621 = !DILocation(line: 549, column: 13, scope: !1620)
!1622 = !DILocation(line: 551, column: 13, scope: !1620)
!1623 = !DILocation(line: 553, column: 13, scope: !1620)
!1624 = !DILocation(line: 553, column: 20, scope: !1620)
!1625 = distinct !{!1625, !1623, !1626}
!1626 = !DILocation(line: 553, column: 48, scope: !1620)
!1627 = !DILocation(line: 554, column: 13, scope: !1620)
!1628 = !DILocation(line: 555, column: 13, scope: !1620)
!1629 = !DILocation(line: 557, column: 9, scope: !1620)
!1630 = !DILocation(line: 545, column: 27, scope: !1616)
!1631 = distinct !{!1631, !1611, !1632}
!1632 = !DILocation(line: 558, column: 5, scope: !1612)
!1633 = !DILocation(line: 562, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 560, column: 68)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 560, column: 5)
!1636 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 560, column: 5)
!1637 = !DILocation(line: 564, column: 13, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 564, column: 13)
!1639 = !DILocation(line: 564, column: 42, scope: !1638)
!1640 = !DILocation(line: 564, column: 13, scope: !1634)
!1641 = !DILocation(line: 566, column: 25, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 564, column: 60)
!1643 = !DILocation(line: 566, column: 13, scope: !1642)
!1644 = !DILocation(line: 569, column: 25, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 569, column: 25)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 566, column: 32)
!1647 = !DILocation(line: 569, column: 78, scope: !1645)
!1648 = !DILocation(line: 569, column: 25, scope: !1646)
!1649 = !DILocation(line: 574, column: 25, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 574, column: 25)
!1651 = !DILocation(line: 574, column: 78, scope: !1650)
!1652 = !DILocation(line: 574, column: 25, scope: !1646)
!1653 = !DILocation(line: 579, column: 25, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 579, column: 25)
!1655 = !DILocation(line: 579, column: 79, scope: !1654)
!1656 = !DILocation(line: 579, column: 25, scope: !1646)
!1657 = !DILocation(line: 584, column: 25, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 584, column: 25)
!1659 = !DILocation(line: 584, column: 79, scope: !1658)
!1660 = !DILocation(line: 584, column: 25, scope: !1646)
!1661 = !DILocation(line: 589, column: 25, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 589, column: 25)
!1663 = !DILocation(line: 589, column: 79, scope: !1662)
!1664 = !DILocation(line: 589, column: 25, scope: !1646)
!1665 = !DILocation(line: 594, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 594, column: 25)
!1667 = !DILocation(line: 594, column: 79, scope: !1666)
!1668 = !DILocation(line: 594, column: 25, scope: !1646)
!1669 = !DILocation(line: 599, column: 25, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 599, column: 25)
!1671 = !DILocation(line: 599, column: 79, scope: !1670)
!1672 = !DILocation(line: 599, column: 25, scope: !1646)
!1673 = !DILocation(line: 604, column: 25, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 604, column: 25)
!1675 = !DILocation(line: 604, column: 79, scope: !1674)
!1676 = !DILocation(line: 604, column: 25, scope: !1646)
!1677 = !DILocation(line: 609, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 609, column: 25)
!1679 = !DILocation(line: 609, column: 80, scope: !1678)
!1680 = !DILocation(line: 609, column: 25, scope: !1646)
!1681 = !DILocation(line: 614, column: 25, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 614, column: 25)
!1683 = !DILocation(line: 614, column: 80, scope: !1682)
!1684 = !DILocation(line: 614, column: 25, scope: !1646)
!1685 = !DILocation(line: 619, column: 25, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 619, column: 25)
!1687 = !DILocation(line: 619, column: 80, scope: !1686)
!1688 = !DILocation(line: 619, column: 25, scope: !1646)
!1689 = !DILocation(line: 624, column: 25, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 624, column: 25)
!1691 = !DILocation(line: 624, column: 80, scope: !1690)
!1692 = !DILocation(line: 624, column: 25, scope: !1646)
!1693 = !DILocation(line: 629, column: 25, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 629, column: 25)
!1695 = !DILocation(line: 629, column: 80, scope: !1694)
!1696 = !DILocation(line: 629, column: 25, scope: !1646)
!1697 = !DILocation(line: 634, column: 25, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 634, column: 25)
!1699 = !DILocation(line: 634, column: 78, scope: !1698)
!1700 = !DILocation(line: 634, column: 25, scope: !1646)
!1701 = !DILocation(line: 0, scope: !1646)
!1702 = !DILocation(line: 640, column: 13, scope: !1642)
!1703 = !DILocation(line: 641, column: 9, scope: !1642)
!1704 = !DILocation(line: 560, column: 64, scope: !1635)
!1705 = !DILocation(line: 560, column: 40, scope: !1635)
!1706 = !DILocation(line: 560, column: 5, scope: !1636)
!1707 = distinct !{!1707, !1706, !1708}
!1708 = !DILocation(line: 642, column: 5, scope: !1636)
!1709 = !DILocation(line: 646, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 644, column: 68)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 644, column: 5)
!1712 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 644, column: 5)
!1713 = !DILocation(line: 648, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 648, column: 13)
!1715 = !DILocation(line: 648, column: 42, scope: !1714)
!1716 = !DILocation(line: 648, column: 13, scope: !1710)
!1717 = !DILocation(line: 650, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 648, column: 62)
!1719 = !DILocation(line: 650, column: 13, scope: !1718)
!1720 = !DILocation(line: 653, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 653, column: 25)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 650, column: 32)
!1723 = !DILocation(line: 653, column: 81, scope: !1721)
!1724 = !DILocation(line: 653, column: 25, scope: !1722)
!1725 = !DILocation(line: 658, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 658, column: 25)
!1727 = !DILocation(line: 658, column: 81, scope: !1726)
!1728 = !DILocation(line: 658, column: 25, scope: !1722)
!1729 = !DILocation(line: 663, column: 25, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 663, column: 25)
!1731 = !DILocation(line: 663, column: 82, scope: !1730)
!1732 = !DILocation(line: 663, column: 25, scope: !1722)
!1733 = !DILocation(line: 668, column: 25, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 668, column: 25)
!1735 = !DILocation(line: 668, column: 82, scope: !1734)
!1736 = !DILocation(line: 668, column: 25, scope: !1722)
!1737 = !DILocation(line: 673, column: 25, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 673, column: 25)
!1739 = !DILocation(line: 673, column: 82, scope: !1738)
!1740 = !DILocation(line: 673, column: 25, scope: !1722)
!1741 = !DILocation(line: 678, column: 25, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 678, column: 25)
!1743 = !DILocation(line: 678, column: 82, scope: !1742)
!1744 = !DILocation(line: 678, column: 25, scope: !1722)
!1745 = !DILocation(line: 683, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 683, column: 25)
!1747 = !DILocation(line: 683, column: 82, scope: !1746)
!1748 = !DILocation(line: 683, column: 25, scope: !1722)
!1749 = !DILocation(line: 688, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 688, column: 25)
!1751 = !DILocation(line: 688, column: 82, scope: !1750)
!1752 = !DILocation(line: 688, column: 25, scope: !1722)
!1753 = !DILocation(line: 693, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 693, column: 25)
!1755 = !DILocation(line: 693, column: 83, scope: !1754)
!1756 = !DILocation(line: 693, column: 25, scope: !1722)
!1757 = !DILocation(line: 698, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 698, column: 25)
!1759 = !DILocation(line: 698, column: 83, scope: !1758)
!1760 = !DILocation(line: 698, column: 25, scope: !1722)
!1761 = !DILocation(line: 703, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 703, column: 25)
!1763 = !DILocation(line: 703, column: 83, scope: !1762)
!1764 = !DILocation(line: 703, column: 25, scope: !1722)
!1765 = !DILocation(line: 708, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 708, column: 25)
!1767 = !DILocation(line: 708, column: 83, scope: !1766)
!1768 = !DILocation(line: 708, column: 25, scope: !1722)
!1769 = !DILocation(line: 713, column: 25, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 713, column: 25)
!1771 = !DILocation(line: 713, column: 83, scope: !1770)
!1772 = !DILocation(line: 713, column: 25, scope: !1722)
!1773 = !DILocation(line: 718, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 718, column: 25)
!1775 = !DILocation(line: 718, column: 81, scope: !1774)
!1776 = !DILocation(line: 718, column: 25, scope: !1722)
!1777 = !DILocation(line: 0, scope: !1722)
!1778 = !DILocation(line: 724, column: 13, scope: !1718)
!1779 = !DILocation(line: 725, column: 9, scope: !1718)
!1780 = !DILocation(line: 644, column: 64, scope: !1711)
!1781 = !DILocation(line: 644, column: 40, scope: !1711)
!1782 = !DILocation(line: 644, column: 5, scope: !1712)
!1783 = distinct !{!1783, !1782, !1784}
!1784 = !DILocation(line: 726, column: 5, scope: !1712)
!1785 = !DILocation(line: 728, column: 5, scope: !1604)
!1786 = !DILocation(line: 729, column: 1, scope: !1604)
!1787 = distinct !DISubprogram(name: "DMA_Clock_Disable", scope: !3, file: !3, line: 917, type: !1168, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1788 = !{!1789}
!1789 = !DILocalVariable(name: "channel", arg: 1, scope: !1787, file: !3, line: 917, type: !128)
!1790 = !DILocation(line: 0, scope: !1787)
!1791 = !DILocation(line: 919, column: 59, scope: !1787)
!1792 = !DILocation(line: 919, column: 67, scope: !1787)
!1793 = !DILocation(line: 919, column: 55, scope: !1787)
!1794 = !DILocation(line: 919, column: 51, scope: !1787)
!1795 = !DILocation(line: 920, column: 1, scope: !1787)
!1796 = distinct !DISubprogram(name: "DMA_Init", scope: !3, file: !3, line: 732, type: !181, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1797 = !{!1798}
!1798 = !DILocalVariable(name: "index", scope: !1796, file: !3, line: 734, type: !174)
!1799 = !DILocation(line: 0, scope: !1796)
!1800 = !DILocation(line: 739, column: 5, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 739, column: 5)
!1802 = !DILocation(line: 740, column: 41, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 740, column: 13)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 739, column: 55)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 739, column: 5)
!1806 = !DILocation(line: 740, column: 33, scope: !1803)
!1807 = !DILocation(line: 740, column: 52, scope: !1803)
!1808 = !DILocation(line: 740, column: 13, scope: !1804)
!1809 = !DILocation(line: 741, column: 13, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 740, column: 58)
!1811 = !DILocation(line: 741, column: 30, scope: !1810)
!1812 = !DILocation(line: 742, column: 9, scope: !1810)
!1813 = !DILocation(line: 739, column: 51, scope: !1805)
!1814 = !DILocation(line: 739, column: 27, scope: !1805)
!1815 = distinct !{!1815, !1800, !1816}
!1816 = !DILocation(line: 743, column: 5, scope: !1801)
!1817 = !DILocation(line: 748, column: 32, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 746, column: 55)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 746, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 746, column: 5)
!1821 = !DILocation(line: 748, column: 9, scope: !1818)
!1822 = !DILocation(line: 746, column: 27, scope: !1819)
!1823 = !DILocation(line: 746, column: 5, scope: !1820)
!1824 = distinct !{!1824, !1823, !1825}
!1825 = !DILocation(line: 749, column: 5, scope: !1820)
!1826 = !DILocation(line: 752, column: 5, scope: !1796)
!1827 = !DILocation(line: 753, column: 5, scope: !1796)
!1828 = !DILocation(line: 754, column: 5, scope: !1796)
!1829 = !DILocation(line: 755, column: 1, scope: !1796)
!1830 = distinct !DISubprogram(name: "dma_set_channel_busy", scope: !3, file: !3, line: 757, type: !1831, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1833)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!128, !128}
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DILocalVariable(name: "channel", arg: 1, scope: !1830, file: !3, line: 757, type: !128)
!1835 = !DILocalVariable(name: "channel_index", scope: !1830, file: !3, line: 759, type: !128)
!1836 = !DILocalVariable(name: "flags", scope: !1830, file: !3, line: 760, type: !831)
!1837 = !DILocalVariable(name: "index", scope: !1830, file: !3, line: 764, type: !128)
!1838 = !DILocation(line: 0, scope: !1830)
!1839 = !DILocation(line: 764, column: 29, scope: !1830)
!1840 = !DILocation(line: 470, column: 3, scope: !1193, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 766, column: 5, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 766, column: 5)
!1843 = !DILocation(line: 0, scope: !1193, inlinedAt: !1841)
!1844 = !DILocation(line: 330, column: 3, scope: !1204, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 766, column: 5, scope: !1842)
!1846 = !DILocation(line: 768, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 768, column: 9)
!1848 = !DILocation(line: 768, column: 33, scope: !1847)
!1849 = !DILocation(line: 768, column: 9, scope: !1830)
!1850 = !DILocation(line: 769, column: 33, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 768, column: 43)
!1852 = !DILocation(line: 770, column: 9, scope: !1851)
!1853 = !DILocation(line: 0, scope: !1225, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 774, column: 5, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 774, column: 5)
!1856 = !DILocation(line: 483, column: 3, scope: !1225, inlinedAt: !1854)
!1857 = !DILocation(line: 776, column: 5, scope: !1830)
!1858 = !DILocation(line: 777, column: 5, scope: !1830)
!1859 = !DILocation(line: 778, column: 5, scope: !1830)
!1860 = !DILocation(line: 779, column: 5, scope: !1830)
!1861 = !DILocation(line: 781, column: 1, scope: !1830)
!1862 = distinct !DISubprogram(name: "dma_set_channel_idle", scope: !3, file: !3, line: 783, type: !1831, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DILocalVariable(name: "channel", arg: 1, scope: !1862, file: !3, line: 783, type: !128)
!1865 = !DILocalVariable(name: "flags", scope: !1862, file: !3, line: 785, type: !831)
!1866 = !DILocalVariable(name: "index", scope: !1862, file: !3, line: 786, type: !128)
!1867 = !DILocation(line: 0, scope: !1862)
!1868 = !DILocation(line: 786, column: 29, scope: !1862)
!1869 = !DILocation(line: 787, column: 5, scope: !1862)
!1870 = !DILocation(line: 470, column: 3, scope: !1193, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 788, column: 5, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 788, column: 5)
!1873 = !DILocation(line: 0, scope: !1193, inlinedAt: !1871)
!1874 = !DILocation(line: 330, column: 3, scope: !1204, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 788, column: 5, scope: !1872)
!1876 = !DILocation(line: 789, column: 5, scope: !1862)
!1877 = !DILocation(line: 789, column: 29, scope: !1862)
!1878 = !DILocation(line: 790, column: 33, scope: !1862)
!1879 = !DILocation(line: 790, column: 24, scope: !1862)
!1880 = !DILocation(line: 791, column: 21, scope: !1862)
!1881 = !DILocation(line: 791, column: 5, scope: !1862)
!1882 = !DILocation(line: 791, column: 26, scope: !1862)
!1883 = !DILocation(line: 0, scope: !1225, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 792, column: 5, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 792, column: 5)
!1886 = !DILocation(line: 483, column: 3, scope: !1225, inlinedAt: !1884)
!1887 = !DILocation(line: 794, column: 5, scope: !1862)
!1888 = distinct !DISubprogram(name: "DMA_Vfifo_init", scope: !3, file: !3, line: 798, type: !181, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "dma_con", scope: !1888, file: !3, line: 800, type: !114)
!1891 = !DILocation(line: 0, scope: !1888)
!1892 = !DILocation(line: 802, column: 5, scope: !1888)
!1893 = !DILocation(line: 804, column: 5, scope: !1888)
!1894 = !DILocation(line: 806, column: 5, scope: !1888)
!1895 = !DILocation(line: 808, column: 5, scope: !1888)
!1896 = !DILocation(line: 810, column: 5, scope: !1888)
!1897 = !DILocation(line: 812, column: 5, scope: !1888)
!1898 = !DILocation(line: 814, column: 5, scope: !1888)
!1899 = !DILocation(line: 816, column: 5, scope: !1888)
!1900 = !DILocation(line: 818, column: 5, scope: !1888)
!1901 = !DILocation(line: 820, column: 5, scope: !1888)
!1902 = !DILocation(line: 822, column: 5, scope: !1888)
!1903 = !DILocation(line: 824, column: 5, scope: !1888)
!1904 = !DILocation(line: 826, column: 5, scope: !1888)
!1905 = !DILocation(line: 828, column: 5, scope: !1888)
!1906 = !DILocation(line: 830, column: 5, scope: !1888)
!1907 = !DILocation(line: 832, column: 5, scope: !1888)
!1908 = !DILocation(line: 834, column: 5, scope: !1888)
!1909 = !DILocation(line: 836, column: 5, scope: !1888)
!1910 = !DILocation(line: 838, column: 5, scope: !1888)
!1911 = !DILocation(line: 840, column: 5, scope: !1888)
!1912 = !DILocation(line: 842, column: 5, scope: !1888)
!1913 = !DILocation(line: 844, column: 5, scope: !1888)
!1914 = !DILocation(line: 846, column: 5, scope: !1888)
!1915 = !DILocation(line: 848, column: 5, scope: !1888)
!1916 = !DILocation(line: 850, column: 5, scope: !1888)
!1917 = !DILocation(line: 852, column: 5, scope: !1888)
!1918 = !DILocation(line: 854, column: 5, scope: !1888)
!1919 = !DILocation(line: 856, column: 5, scope: !1888)
!1920 = !DILocation(line: 858, column: 1, scope: !1888)
!1921 = distinct !DISubprogram(name: "DMA_Vfifo_SetAdrs", scope: !3, file: !3, line: 861, type: !1922, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1925)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !136, !136, !1924, !136, !136, !136}
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !6, line: 144, baseType: !97)
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931}
!1926 = !DILocalVariable(name: "adrs", arg: 1, scope: !1921, file: !3, line: 861, type: !136)
!1927 = !DILocalVariable(name: "len", arg: 2, scope: !1921, file: !3, line: 862, type: !136)
!1928 = !DILocalVariable(name: "ch", arg: 3, scope: !1921, file: !3, line: 862, type: !1924)
!1929 = !DILocalVariable(name: "alt_len", arg: 4, scope: !1921, file: !3, line: 863, type: !136)
!1930 = !DILocalVariable(name: "dma_count", arg: 5, scope: !1921, file: !3, line: 864, type: !136)
!1931 = !DILocalVariable(name: "timeout_counter", arg: 6, scope: !1921, file: !3, line: 865, type: !136)
!1932 = !DILocation(line: 0, scope: !1921)
!1933 = !DILocation(line: 867, column: 5, scope: !1921)
!1934 = !DILocation(line: 868, column: 5, scope: !1921)
!1935 = !DILocation(line: 869, column: 5, scope: !1921)
!1936 = !DILocation(line: 870, column: 5, scope: !1921)
!1937 = !DILocation(line: 870, column: 30, scope: !1921)
!1938 = !DILocation(line: 871, column: 5, scope: !1921)
!1939 = !DILocation(line: 871, column: 27, scope: !1921)
!1940 = !DILocation(line: 872, column: 1, scope: !1921)
!1941 = distinct !DISubprogram(name: "DMA_Vfifo_Set_timeout", scope: !3, file: !3, line: 874, type: !1942, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1924, !136}
!1944 = !{!1945, !1946}
!1945 = !DILocalVariable(name: "ch", arg: 1, scope: !1941, file: !3, line: 874, type: !1924)
!1946 = !DILocalVariable(name: "timeout_counter", arg: 2, scope: !1941, file: !3, line: 874, type: !136)
!1947 = !DILocation(line: 0, scope: !1941)
!1948 = !DILocation(line: 877, column: 5, scope: !1941)
!1949 = !DILocation(line: 877, column: 27, scope: !1941)
!1950 = !DILocation(line: 878, column: 1, scope: !1941)
!1951 = distinct !DISubprogram(name: "DMA_Vfifo_enable_interrupt", scope: !3, file: !3, line: 880, type: !1952, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1924}
!1954 = !{!1955}
!1955 = !DILocalVariable(name: "ch", arg: 1, scope: !1951, file: !3, line: 880, type: !1924)
!1956 = !DILocation(line: 0, scope: !1951)
!1957 = !DILocation(line: 883, column: 5, scope: !1951)
!1958 = !DILocation(line: 884, column: 1, scope: !1951)
!1959 = distinct !DISubprogram(name: "DMA_Vfifo_disable_interrupt", scope: !3, file: !3, line: 886, type: !1952, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1960)
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "ch", arg: 1, scope: !1959, file: !3, line: 886, type: !1924)
!1962 = !DILocation(line: 0, scope: !1959)
!1963 = !DILocation(line: 889, column: 5, scope: !1959)
!1964 = !DILocation(line: 890, column: 1, scope: !1959)
!1965 = distinct !DISubprogram(name: "DMA_Vfifo_Flush", scope: !3, file: !3, line: 893, type: !1952, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1966)
!1966 = !{!1967}
!1967 = !DILocalVariable(name: "ch", arg: 1, scope: !1965, file: !3, line: 893, type: !1924)
!1968 = !DILocation(line: 0, scope: !1965)
!1969 = !DILocation(line: 895, column: 14, scope: !1965)
!1970 = !DILocation(line: 895, column: 5, scope: !1965)
!1971 = !DILocation(line: 897, column: 5, scope: !1965)
!1972 = !DILocation(line: 898, column: 1, scope: !1965)
!1973 = distinct !DISubprogram(name: "DMA_Vfifo_Register_Callback", scope: !3, file: !3, line: 900, type: !1974, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1924, !179}
!1976 = !{!1977, !1978}
!1977 = !DILocalVariable(name: "ch", arg: 1, scope: !1973, file: !3, line: 900, type: !1924)
!1978 = !DILocalVariable(name: "callback_func", arg: 2, scope: !1973, file: !3, line: 901, type: !179)
!1979 = !DILocation(line: 0, scope: !1973)
!1980 = !DILocation(line: 903, column: 28, scope: !1973)
!1981 = !DILocation(line: 903, column: 5, scope: !1973)
!1982 = !DILocation(line: 903, column: 46, scope: !1973)
!1983 = !DILocation(line: 904, column: 1, scope: !1973)
!1984 = distinct !DISubprogram(name: "DMA_Vfifo_Register_TO_Callback", scope: !3, file: !3, line: 906, type: !1974, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1985)
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "ch", arg: 1, scope: !1984, file: !3, line: 906, type: !1924)
!1987 = !DILocalVariable(name: "callback_func", arg: 2, scope: !1984, file: !3, line: 907, type: !179)
!1988 = !DILocation(line: 0, scope: !1984)
!1989 = !DILocation(line: 909, column: 31, scope: !1984)
!1990 = !DILocation(line: 909, column: 5, scope: !1984)
!1991 = !DILocation(line: 909, column: 49, scope: !1984)
!1992 = !DILocation(line: 910, column: 1, scope: !1984)
!1993 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !942, file: !942, line: 54, type: !1994, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !1997)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!1996, !205, !229}
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 56, baseType: !53)
!1997 = !{!1998, !1999, !2000, !2002}
!1998 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1993, file: !942, line: 54, type: !205)
!1999 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1993, file: !942, line: 54, type: !229)
!2000 = !DILocalVariable(name: "no", scope: !1993, file: !942, line: 57, type: !2001)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 60, baseType: !228)
!2002 = !DILocalVariable(name: "remainder", scope: !1993, file: !942, line: 58, type: !2001)
!2003 = !DILocation(line: 0, scope: !1993)
!2004 = !DILocation(line: 59, column: 19, scope: !1993)
!2005 = !DILocation(line: 60, column: 17, scope: !1993)
!2006 = !DILocation(line: 61, column: 5, scope: !1993)
!2007 = !DILocation(line: 65, column: 27, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !942, line: 65, column: 17)
!2009 = distinct !DILexicalBlock(scope: !1993, file: !942, line: 61, column: 17)
!2010 = !DILocation(line: 0, scope: !2008)
!2011 = !DILocation(line: 65, column: 17, scope: !2009)
!2012 = !DILocation(line: 66, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !942, line: 65, column: 33)
!2014 = !DILocation(line: 67, column: 73, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !942, line: 66, column: 38)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !942, line: 66, column: 21)
!2017 = !DILocation(line: 67, column: 69, scope: !2015)
!2018 = !DILocation(line: 67, column: 66, scope: !2015)
!2019 = !DILocation(line: 68, column: 17, scope: !2015)
!2020 = !DILocation(line: 68, column: 28, scope: !2016)
!2021 = !DILocation(line: 69, column: 77, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !942, line: 68, column: 45)
!2023 = distinct !DILexicalBlock(scope: !2016, file: !942, line: 68, column: 28)
!2024 = !DILocation(line: 70, column: 77, scope: !2022)
!2025 = !DILocation(line: 71, column: 17, scope: !2022)
!2026 = !DILocation(line: 72, column: 77, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !942, line: 71, column: 45)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !942, line: 71, column: 28)
!2029 = !DILocation(line: 73, column: 77, scope: !2027)
!2030 = !DILocation(line: 74, column: 17, scope: !2027)
!2031 = !DILocation(line: 75, column: 79, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !942, line: 74, column: 45)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !942, line: 74, column: 28)
!2034 = !DILocation(line: 76, column: 79, scope: !2032)
!2035 = !DILocation(line: 77, column: 17, scope: !2032)
!2036 = !DILocation(line: 78, column: 79, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !942, line: 77, column: 45)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !942, line: 77, column: 28)
!2039 = !DILocation(line: 79, column: 79, scope: !2037)
!2040 = !DILocation(line: 80, column: 17, scope: !2037)
!2041 = !DILocation(line: 81, column: 79, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !942, line: 80, column: 45)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !942, line: 80, column: 28)
!2044 = !DILocation(line: 82, column: 79, scope: !2042)
!2045 = !DILocation(line: 83, column: 17, scope: !2042)
!2046 = !DILocation(line: 85, column: 17, scope: !2013)
!2047 = !DILocation(line: 86, column: 13, scope: !2013)
!2048 = !DILocation(line: 88, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2008, file: !942, line: 86, column: 20)
!2050 = !DILocation(line: 89, column: 72, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !942, line: 88, column: 38)
!2052 = distinct !DILexicalBlock(scope: !2049, file: !942, line: 88, column: 21)
!2053 = !DILocation(line: 89, column: 66, scope: !2051)
!2054 = !DILocation(line: 90, column: 17, scope: !2051)
!2055 = !DILocation(line: 90, column: 28, scope: !2052)
!2056 = !DILocation(line: 91, column: 77, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !942, line: 90, column: 45)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !942, line: 90, column: 28)
!2059 = !DILocation(line: 92, column: 17, scope: !2057)
!2060 = !DILocation(line: 93, column: 77, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !942, line: 92, column: 45)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !942, line: 92, column: 28)
!2063 = !DILocation(line: 94, column: 17, scope: !2061)
!2064 = !DILocation(line: 95, column: 79, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !942, line: 94, column: 45)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !942, line: 94, column: 28)
!2067 = !DILocation(line: 96, column: 17, scope: !2065)
!2068 = !DILocation(line: 97, column: 79, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !942, line: 96, column: 45)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !942, line: 96, column: 28)
!2071 = !DILocation(line: 98, column: 17, scope: !2069)
!2072 = !DILocation(line: 99, column: 79, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !942, line: 98, column: 45)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !942, line: 98, column: 28)
!2075 = !DILocation(line: 100, column: 17, scope: !2073)
!2076 = !DILocation(line: 103, column: 17, scope: !2049)
!2077 = !DILocation(line: 109, column: 27, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2009, file: !942, line: 109, column: 17)
!2079 = !DILocation(line: 0, scope: !2078)
!2080 = !DILocation(line: 109, column: 17, scope: !2009)
!2081 = !DILocation(line: 110, column: 21, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !942, line: 109, column: 33)
!2083 = !DILocation(line: 111, column: 73, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !942, line: 110, column: 36)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !942, line: 110, column: 21)
!2086 = !DILocation(line: 111, column: 69, scope: !2084)
!2087 = !DILocation(line: 111, column: 66, scope: !2084)
!2088 = !DILocation(line: 112, column: 17, scope: !2084)
!2089 = !DILocation(line: 113, column: 79, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !942, line: 112, column: 24)
!2091 = !DILocation(line: 114, column: 79, scope: !2090)
!2092 = !DILocation(line: 117, column: 17, scope: !2082)
!2093 = !DILocation(line: 118, column: 13, scope: !2082)
!2094 = !DILocation(line: 120, column: 21, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2078, file: !942, line: 118, column: 20)
!2096 = !DILocation(line: 121, column: 72, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !942, line: 120, column: 36)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !942, line: 120, column: 21)
!2099 = !DILocation(line: 121, column: 66, scope: !2097)
!2100 = !DILocation(line: 122, column: 17, scope: !2097)
!2101 = !DILocation(line: 123, column: 79, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !942, line: 122, column: 24)
!2103 = !DILocation(line: 126, column: 17, scope: !2095)
!2104 = !DILocation(line: 133, column: 1, scope: !1993)
!2105 = distinct !DISubprogram(name: "halGPO_Write", scope: !942, file: !942, line: 136, type: !1994, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2106)
!2106 = !{!2107, !2108, !2109, !2110}
!2107 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2105, file: !942, line: 136, type: !205)
!2108 = !DILocalVariable(name: "writeValue", arg: 2, scope: !2105, file: !942, line: 136, type: !229)
!2109 = !DILocalVariable(name: "no", scope: !2105, file: !942, line: 138, type: !2001)
!2110 = !DILocalVariable(name: "remainder", scope: !2105, file: !942, line: 139, type: !2001)
!2111 = !DILocation(line: 0, scope: !2105)
!2112 = !DILocation(line: 140, column: 19, scope: !2105)
!2113 = !DILocation(line: 141, column: 17, scope: !2105)
!2114 = !DILocation(line: 142, column: 5, scope: !2105)
!2115 = !DILocation(line: 145, column: 17, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !942, line: 145, column: 17)
!2117 = distinct !DILexicalBlock(scope: !2105, file: !942, line: 142, column: 17)
!2118 = !DILocation(line: 0, scope: !2116)
!2119 = !DILocation(line: 145, column: 17, scope: !2117)
!2120 = !DILocation(line: 146, column: 17, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !942, line: 145, column: 29)
!2122 = !DILocation(line: 147, column: 13, scope: !2121)
!2123 = !DILocation(line: 148, column: 17, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !942, line: 147, column: 20)
!2125 = !DILocation(line: 153, column: 17, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2117, file: !942, line: 153, column: 17)
!2127 = !DILocation(line: 0, scope: !2126)
!2128 = !DILocation(line: 153, column: 17, scope: !2117)
!2129 = !DILocation(line: 154, column: 17, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !942, line: 153, column: 29)
!2131 = !DILocation(line: 155, column: 13, scope: !2130)
!2132 = !DILocation(line: 156, column: 17, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2126, file: !942, line: 155, column: 20)
!2134 = !DILocation(line: 163, column: 1, scope: !2105)
!2135 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !942, file: !942, line: 169, type: !2136, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!229, !205}
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2135, file: !942, line: 169, type: !205)
!2140 = !DILocalVariable(name: "no", scope: !2135, file: !942, line: 171, type: !2001)
!2141 = !DILocalVariable(name: "remainder", scope: !2135, file: !942, line: 172, type: !2001)
!2142 = !DILocalVariable(name: "dout", scope: !2135, file: !942, line: 175, type: !229)
!2143 = !DILocation(line: 0, scope: !2135)
!2144 = !DILocation(line: 173, column: 19, scope: !2135)
!2145 = !DILocation(line: 174, column: 17, scope: !2135)
!2146 = !DILocation(line: 177, column: 5, scope: !2135)
!2147 = !DILocation(line: 183, column: 13, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2135, file: !942, line: 177, column: 17)
!2149 = !DILocation(line: 0, scope: !2148)
!2150 = !DILocation(line: 187, column: 5, scope: !2135)
!2151 = !DILocation(line: 188, column: 1, scope: !2135)
!2152 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !942, file: !942, line: 189, type: !2136, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2153)
!2153 = !{!2154, !2155, !2156, !2157}
!2154 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2152, file: !942, line: 189, type: !205)
!2155 = !DILocalVariable(name: "no", scope: !2152, file: !942, line: 191, type: !2001)
!2156 = !DILocalVariable(name: "remainder", scope: !2152, file: !942, line: 192, type: !2001)
!2157 = !DILocalVariable(name: "din", scope: !2152, file: !942, line: 195, type: !229)
!2158 = !DILocation(line: 0, scope: !2152)
!2159 = !DILocation(line: 193, column: 19, scope: !2152)
!2160 = !DILocation(line: 194, column: 17, scope: !2152)
!2161 = !DILocation(line: 196, column: 5, scope: !2152)
!2162 = !DILocation(line: 203, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2152, file: !942, line: 196, column: 17)
!2164 = !DILocation(line: 0, scope: !2163)
!2165 = !DILocation(line: 208, column: 5, scope: !2152)
!2166 = !DILocation(line: 209, column: 1, scope: !2152)
!2167 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !942, file: !942, line: 210, type: !2136, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2168)
!2168 = !{!2169, !2170, !2171, !2172}
!2169 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2167, file: !942, line: 210, type: !205)
!2170 = !DILocalVariable(name: "no", scope: !2167, file: !942, line: 212, type: !2001)
!2171 = !DILocalVariable(name: "remainder", scope: !2167, file: !942, line: 213, type: !2001)
!2172 = !DILocalVariable(name: "outEnable", scope: !2167, file: !942, line: 216, type: !229)
!2173 = !DILocation(line: 0, scope: !2167)
!2174 = !DILocation(line: 214, column: 19, scope: !2167)
!2175 = !DILocation(line: 215, column: 17, scope: !2167)
!2176 = !DILocation(line: 218, column: 5, scope: !2167)
!2177 = !DILocation(line: 224, column: 13, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2167, file: !942, line: 218, column: 17)
!2179 = !DILocation(line: 0, scope: !2178)
!2180 = !DILocation(line: 228, column: 5, scope: !2167)
!2181 = !DILocation(line: 229, column: 1, scope: !2167)
!2182 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !942, file: !942, line: 232, type: !2183, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!1996, !205}
!2185 = !{!2186, !2187, !2188}
!2186 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2182, file: !942, line: 232, type: !205)
!2187 = !DILocalVariable(name: "no", scope: !2182, file: !942, line: 234, type: !2001)
!2188 = !DILocalVariable(name: "remainder", scope: !2182, file: !942, line: 235, type: !2001)
!2189 = !DILocation(line: 0, scope: !2182)
!2190 = !DILocation(line: 236, column: 19, scope: !2182)
!2191 = !DILocation(line: 237, column: 17, scope: !2182)
!2192 = !DILocation(line: 238, column: 5, scope: !2182)
!2193 = !DILocation(line: 239, column: 5, scope: !2182)
!2194 = !DILocation(line: 241, column: 27, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !942, line: 241, column: 17)
!2196 = distinct !DILexicalBlock(scope: !2182, file: !942, line: 239, column: 17)
!2197 = !DILocation(line: 241, column: 17, scope: !2196)
!2198 = !DILocation(line: 241, column: 17, scope: !2195)
!2199 = !DILocation(line: 242, column: 17, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !942, line: 241, column: 34)
!2201 = !DILocation(line: 243, column: 13, scope: !2200)
!2202 = !DILocation(line: 243, column: 24, scope: !2195)
!2203 = !DILocation(line: 244, column: 73, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !942, line: 243, column: 41)
!2205 = distinct !DILexicalBlock(scope: !2195, file: !942, line: 243, column: 24)
!2206 = !DILocation(line: 245, column: 73, scope: !2204)
!2207 = !DILocation(line: 246, column: 13, scope: !2204)
!2208 = !DILocation(line: 247, column: 73, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !942, line: 246, column: 41)
!2210 = distinct !DILexicalBlock(scope: !2205, file: !942, line: 246, column: 24)
!2211 = !DILocation(line: 248, column: 73, scope: !2209)
!2212 = !DILocation(line: 249, column: 13, scope: !2209)
!2213 = !DILocation(line: 250, column: 75, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !942, line: 249, column: 41)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !942, line: 249, column: 24)
!2216 = !DILocation(line: 251, column: 75, scope: !2214)
!2217 = !DILocation(line: 252, column: 13, scope: !2214)
!2218 = !DILocation(line: 253, column: 75, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !942, line: 252, column: 41)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !942, line: 252, column: 24)
!2221 = !DILocation(line: 254, column: 75, scope: !2219)
!2222 = !DILocation(line: 255, column: 13, scope: !2219)
!2223 = !DILocation(line: 256, column: 75, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !942, line: 255, column: 41)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !942, line: 255, column: 24)
!2226 = !DILocation(line: 257, column: 75, scope: !2224)
!2227 = !DILocation(line: 258, column: 13, scope: !2224)
!2228 = !DILocation(line: 261, column: 18, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2196, file: !942, line: 261, column: 17)
!2230 = !DILocation(line: 261, column: 17, scope: !2196)
!2231 = !DILocation(line: 262, column: 75, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !942, line: 261, column: 29)
!2233 = !DILocation(line: 263, column: 75, scope: !2232)
!2234 = !DILocation(line: 264, column: 13, scope: !2232)
!2235 = !DILocation(line: 265, column: 17, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2229, file: !942, line: 264, column: 20)
!2237 = !DILocation(line: 272, column: 1, scope: !2182)
!2238 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !942, file: !942, line: 359, type: !2183, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2239)
!2239 = !{!2240, !2241, !2242}
!2240 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2238, file: !942, line: 359, type: !205)
!2241 = !DILocalVariable(name: "no", scope: !2238, file: !942, line: 362, type: !2001)
!2242 = !DILocalVariable(name: "remainder", scope: !2238, file: !942, line: 363, type: !2001)
!2243 = !DILocation(line: 0, scope: !2238)
!2244 = !DILocation(line: 364, column: 19, scope: !2238)
!2245 = !DILocation(line: 365, column: 17, scope: !2238)
!2246 = !DILocation(line: 367, column: 5, scope: !2238)
!2247 = !DILocation(line: 369, column: 27, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !942, line: 369, column: 17)
!2249 = distinct !DILexicalBlock(scope: !2238, file: !942, line: 367, column: 17)
!2250 = !DILocation(line: 369, column: 17, scope: !2249)
!2251 = !DILocation(line: 369, column: 17, scope: !2248)
!2252 = !DILocation(line: 370, column: 17, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !942, line: 369, column: 34)
!2254 = !DILocation(line: 371, column: 13, scope: !2253)
!2255 = !DILocation(line: 371, column: 24, scope: !2248)
!2256 = !DILocation(line: 372, column: 73, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !942, line: 371, column: 41)
!2258 = distinct !DILexicalBlock(scope: !2248, file: !942, line: 371, column: 24)
!2259 = !DILocation(line: 373, column: 73, scope: !2257)
!2260 = !DILocation(line: 374, column: 13, scope: !2257)
!2261 = !DILocation(line: 375, column: 73, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !942, line: 374, column: 41)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !942, line: 374, column: 24)
!2264 = !DILocation(line: 376, column: 73, scope: !2262)
!2265 = !DILocation(line: 377, column: 13, scope: !2262)
!2266 = !DILocation(line: 378, column: 75, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !942, line: 377, column: 41)
!2268 = distinct !DILexicalBlock(scope: !2263, file: !942, line: 377, column: 24)
!2269 = !DILocation(line: 379, column: 75, scope: !2267)
!2270 = !DILocation(line: 380, column: 13, scope: !2267)
!2271 = !DILocation(line: 381, column: 75, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !942, line: 380, column: 41)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !942, line: 380, column: 24)
!2274 = !DILocation(line: 382, column: 75, scope: !2272)
!2275 = !DILocation(line: 383, column: 13, scope: !2272)
!2276 = !DILocation(line: 384, column: 75, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !942, line: 383, column: 41)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !942, line: 383, column: 24)
!2279 = !DILocation(line: 385, column: 75, scope: !2277)
!2280 = !DILocation(line: 386, column: 13, scope: !2277)
!2281 = !DILocation(line: 389, column: 18, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2249, file: !942, line: 389, column: 17)
!2283 = !DILocation(line: 389, column: 17, scope: !2249)
!2284 = !DILocation(line: 390, column: 75, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !942, line: 389, column: 29)
!2286 = !DILocation(line: 391, column: 75, scope: !2285)
!2287 = !DILocation(line: 392, column: 13, scope: !2285)
!2288 = !DILocation(line: 393, column: 17, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !942, line: 392, column: 20)
!2290 = !DILocation(line: 401, column: 1, scope: !2238)
!2291 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !942, file: !942, line: 274, type: !2183, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2292)
!2292 = !{!2293, !2294, !2295}
!2293 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2291, file: !942, line: 274, type: !205)
!2294 = !DILocalVariable(name: "no", scope: !2291, file: !942, line: 276, type: !2001)
!2295 = !DILocalVariable(name: "remainder", scope: !2291, file: !942, line: 277, type: !2001)
!2296 = !DILocation(line: 0, scope: !2291)
!2297 = !DILocation(line: 278, column: 19, scope: !2291)
!2298 = !DILocation(line: 279, column: 17, scope: !2291)
!2299 = !DILocation(line: 281, column: 5, scope: !2291)
!2300 = !DILocation(line: 283, column: 27, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !942, line: 283, column: 17)
!2302 = distinct !DILexicalBlock(scope: !2291, file: !942, line: 281, column: 17)
!2303 = !DILocation(line: 283, column: 17, scope: !2302)
!2304 = !DILocation(line: 283, column: 17, scope: !2301)
!2305 = !DILocation(line: 284, column: 17, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2301, file: !942, line: 283, column: 34)
!2307 = !DILocation(line: 285, column: 13, scope: !2306)
!2308 = !DILocation(line: 285, column: 24, scope: !2301)
!2309 = !DILocation(line: 286, column: 73, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !942, line: 285, column: 41)
!2311 = distinct !DILexicalBlock(scope: !2301, file: !942, line: 285, column: 24)
!2312 = !DILocation(line: 287, column: 73, scope: !2310)
!2313 = !DILocation(line: 288, column: 13, scope: !2310)
!2314 = !DILocation(line: 289, column: 73, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !942, line: 288, column: 41)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !942, line: 288, column: 24)
!2317 = !DILocation(line: 290, column: 73, scope: !2315)
!2318 = !DILocation(line: 291, column: 13, scope: !2315)
!2319 = !DILocation(line: 292, column: 75, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !942, line: 291, column: 41)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !942, line: 291, column: 24)
!2322 = !DILocation(line: 293, column: 75, scope: !2320)
!2323 = !DILocation(line: 294, column: 13, scope: !2320)
!2324 = !DILocation(line: 295, column: 75, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !942, line: 294, column: 41)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !942, line: 294, column: 24)
!2327 = !DILocation(line: 296, column: 75, scope: !2325)
!2328 = !DILocation(line: 297, column: 13, scope: !2325)
!2329 = !DILocation(line: 298, column: 75, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !942, line: 297, column: 41)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !942, line: 297, column: 24)
!2332 = !DILocation(line: 299, column: 75, scope: !2330)
!2333 = !DILocation(line: 300, column: 13, scope: !2330)
!2334 = !DILocation(line: 303, column: 18, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2302, file: !942, line: 303, column: 17)
!2336 = !DILocation(line: 303, column: 17, scope: !2302)
!2337 = !DILocation(line: 304, column: 75, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !942, line: 303, column: 29)
!2339 = !DILocation(line: 305, column: 75, scope: !2338)
!2340 = !DILocation(line: 306, column: 13, scope: !2338)
!2341 = !DILocation(line: 307, column: 17, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !942, line: 306, column: 20)
!2343 = !DILocation(line: 314, column: 1, scope: !2291)
!2344 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !942, file: !942, line: 316, type: !2183, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2344, file: !942, line: 316, type: !205)
!2347 = !DILocalVariable(name: "no", scope: !2344, file: !942, line: 318, type: !2001)
!2348 = !DILocalVariable(name: "remainder", scope: !2344, file: !942, line: 319, type: !2001)
!2349 = !DILocation(line: 0, scope: !2344)
!2350 = !DILocation(line: 320, column: 19, scope: !2344)
!2351 = !DILocation(line: 321, column: 17, scope: !2344)
!2352 = !DILocation(line: 322, column: 5, scope: !2344)
!2353 = !DILocation(line: 323, column: 5, scope: !2344)
!2354 = !DILocation(line: 325, column: 27, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !942, line: 325, column: 17)
!2356 = distinct !DILexicalBlock(scope: !2344, file: !942, line: 323, column: 17)
!2357 = !DILocation(line: 325, column: 17, scope: !2356)
!2358 = !DILocation(line: 325, column: 17, scope: !2355)
!2359 = !DILocation(line: 326, column: 17, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !942, line: 325, column: 34)
!2361 = !DILocation(line: 327, column: 13, scope: !2360)
!2362 = !DILocation(line: 327, column: 24, scope: !2355)
!2363 = !DILocation(line: 328, column: 73, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !942, line: 327, column: 41)
!2365 = distinct !DILexicalBlock(scope: !2355, file: !942, line: 327, column: 24)
!2366 = !DILocation(line: 329, column: 73, scope: !2364)
!2367 = !DILocation(line: 330, column: 13, scope: !2364)
!2368 = !DILocation(line: 331, column: 73, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !942, line: 330, column: 41)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !942, line: 330, column: 24)
!2371 = !DILocation(line: 332, column: 73, scope: !2369)
!2372 = !DILocation(line: 333, column: 13, scope: !2369)
!2373 = !DILocation(line: 334, column: 75, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !942, line: 333, column: 41)
!2375 = distinct !DILexicalBlock(scope: !2370, file: !942, line: 333, column: 24)
!2376 = !DILocation(line: 335, column: 75, scope: !2374)
!2377 = !DILocation(line: 336, column: 13, scope: !2374)
!2378 = !DILocation(line: 337, column: 75, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !942, line: 336, column: 41)
!2380 = distinct !DILexicalBlock(scope: !2375, file: !942, line: 336, column: 24)
!2381 = !DILocation(line: 338, column: 75, scope: !2379)
!2382 = !DILocation(line: 339, column: 13, scope: !2379)
!2383 = !DILocation(line: 340, column: 75, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !942, line: 339, column: 41)
!2385 = distinct !DILexicalBlock(scope: !2380, file: !942, line: 339, column: 24)
!2386 = !DILocation(line: 341, column: 75, scope: !2384)
!2387 = !DILocation(line: 342, column: 13, scope: !2384)
!2388 = !DILocation(line: 345, column: 18, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2356, file: !942, line: 345, column: 17)
!2390 = !DILocation(line: 345, column: 17, scope: !2356)
!2391 = !DILocation(line: 346, column: 75, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !942, line: 345, column: 29)
!2393 = !DILocation(line: 347, column: 75, scope: !2392)
!2394 = !DILocation(line: 348, column: 13, scope: !2392)
!2395 = !DILocation(line: 349, column: 17, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2389, file: !942, line: 348, column: 20)
!2397 = !DILocation(line: 357, column: 1, scope: !2344)
!2398 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !942, file: !942, line: 404, type: !1994, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2399)
!2399 = !{!2400, !2401, !2402, !2403}
!2400 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2398, file: !942, line: 404, type: !205)
!2401 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2398, file: !942, line: 404, type: !229)
!2402 = !DILocalVariable(name: "no", scope: !2398, file: !942, line: 406, type: !2001)
!2403 = !DILocalVariable(name: "remainder", scope: !2398, file: !942, line: 407, type: !2001)
!2404 = !DILocation(line: 0, scope: !2398)
!2405 = !DILocation(line: 408, column: 19, scope: !2398)
!2406 = !DILocation(line: 409, column: 17, scope: !2398)
!2407 = !DILocation(line: 411, column: 5, scope: !2398)
!2408 = !DILocation(line: 413, column: 84, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2398, file: !942, line: 411, column: 17)
!2410 = !DILocation(line: 413, column: 70, scope: !2409)
!2411 = !DILocation(line: 413, column: 64, scope: !2409)
!2412 = !DILocation(line: 413, column: 61, scope: !2409)
!2413 = !DILocation(line: 414, column: 79, scope: !2409)
!2414 = !DILocation(line: 414, column: 83, scope: !2409)
!2415 = !DILocation(line: 414, column: 88, scope: !2409)
!2416 = !DILocation(line: 414, column: 61, scope: !2409)
!2417 = !DILocation(line: 415, column: 13, scope: !2409)
!2418 = !DILocation(line: 417, column: 27, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2409, file: !942, line: 417, column: 17)
!2420 = !DILocation(line: 417, column: 17, scope: !2409)
!2421 = !DILocation(line: 418, column: 88, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !942, line: 417, column: 33)
!2423 = !DILocation(line: 418, column: 74, scope: !2422)
!2424 = !DILocation(line: 418, column: 68, scope: !2422)
!2425 = !DILocation(line: 418, column: 65, scope: !2422)
!2426 = !DILocation(line: 419, column: 83, scope: !2422)
!2427 = !DILocation(line: 419, column: 87, scope: !2422)
!2428 = !DILocation(line: 419, column: 92, scope: !2422)
!2429 = !DILocation(line: 419, column: 65, scope: !2422)
!2430 = !DILocation(line: 420, column: 13, scope: !2422)
!2431 = !DILocation(line: 420, column: 24, scope: !2419)
!2432 = !DILocation(line: 421, column: 73, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !942, line: 420, column: 41)
!2434 = distinct !DILexicalBlock(scope: !2419, file: !942, line: 420, column: 24)
!2435 = !DILocation(line: 422, column: 91, scope: !2433)
!2436 = !DILocation(line: 422, column: 100, scope: !2433)
!2437 = !DILocation(line: 422, column: 73, scope: !2433)
!2438 = !DILocation(line: 423, column: 73, scope: !2433)
!2439 = !DILocation(line: 424, column: 13, scope: !2433)
!2440 = !DILocation(line: 425, column: 73, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !942, line: 424, column: 41)
!2442 = distinct !DILexicalBlock(scope: !2434, file: !942, line: 424, column: 24)
!2443 = !DILocation(line: 426, column: 91, scope: !2441)
!2444 = !DILocation(line: 426, column: 100, scope: !2441)
!2445 = !DILocation(line: 426, column: 73, scope: !2441)
!2446 = !DILocation(line: 427, column: 73, scope: !2441)
!2447 = !DILocation(line: 428, column: 13, scope: !2441)
!2448 = !DILocation(line: 429, column: 75, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !942, line: 428, column: 41)
!2450 = distinct !DILexicalBlock(scope: !2442, file: !942, line: 428, column: 24)
!2451 = !DILocation(line: 430, column: 93, scope: !2449)
!2452 = !DILocation(line: 430, column: 102, scope: !2449)
!2453 = !DILocation(line: 430, column: 75, scope: !2449)
!2454 = !DILocation(line: 431, column: 75, scope: !2449)
!2455 = !DILocation(line: 432, column: 13, scope: !2449)
!2456 = !DILocation(line: 433, column: 75, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !942, line: 432, column: 41)
!2458 = distinct !DILexicalBlock(scope: !2450, file: !942, line: 432, column: 24)
!2459 = !DILocation(line: 434, column: 93, scope: !2457)
!2460 = !DILocation(line: 434, column: 102, scope: !2457)
!2461 = !DILocation(line: 434, column: 75, scope: !2457)
!2462 = !DILocation(line: 435, column: 75, scope: !2457)
!2463 = !DILocation(line: 436, column: 13, scope: !2457)
!2464 = !DILocation(line: 437, column: 75, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !942, line: 436, column: 41)
!2466 = distinct !DILexicalBlock(scope: !2458, file: !942, line: 436, column: 24)
!2467 = !DILocation(line: 438, column: 93, scope: !2465)
!2468 = !DILocation(line: 438, column: 102, scope: !2465)
!2469 = !DILocation(line: 438, column: 75, scope: !2465)
!2470 = !DILocation(line: 439, column: 75, scope: !2465)
!2471 = !DILocation(line: 440, column: 13, scope: !2465)
!2472 = !DILocation(line: 443, column: 18, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2409, file: !942, line: 443, column: 17)
!2474 = !DILocation(line: 443, column: 17, scope: !2409)
!2475 = !DILocation(line: 444, column: 75, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2473, file: !942, line: 443, column: 29)
!2477 = !DILocation(line: 445, column: 93, scope: !2476)
!2478 = !DILocation(line: 445, column: 102, scope: !2476)
!2479 = !DILocation(line: 445, column: 75, scope: !2476)
!2480 = !DILocation(line: 446, column: 75, scope: !2476)
!2481 = !DILocation(line: 447, column: 13, scope: !2476)
!2482 = !DILocation(line: 448, column: 88, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2473, file: !942, line: 447, column: 20)
!2484 = !DILocation(line: 448, column: 74, scope: !2483)
!2485 = !DILocation(line: 448, column: 68, scope: !2483)
!2486 = !DILocation(line: 448, column: 65, scope: !2483)
!2487 = !DILocation(line: 449, column: 83, scope: !2483)
!2488 = !DILocation(line: 449, column: 87, scope: !2483)
!2489 = !DILocation(line: 449, column: 92, scope: !2483)
!2490 = !DILocation(line: 449, column: 65, scope: !2483)
!2491 = !DILocation(line: 453, column: 84, scope: !2409)
!2492 = !DILocation(line: 453, column: 70, scope: !2409)
!2493 = !DILocation(line: 453, column: 64, scope: !2409)
!2494 = !DILocation(line: 453, column: 61, scope: !2409)
!2495 = !DILocation(line: 454, column: 79, scope: !2409)
!2496 = !DILocation(line: 454, column: 83, scope: !2409)
!2497 = !DILocation(line: 454, column: 88, scope: !2409)
!2498 = !DILocation(line: 454, column: 61, scope: !2409)
!2499 = !DILocation(line: 455, column: 13, scope: !2409)
!2500 = !DILocation(line: 460, column: 1, scope: !2398)
!2501 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !942, file: !942, line: 463, type: !2502, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2505)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!1996, !205, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!2505 = !{!2506, !2507, !2508, !2509, !2510}
!2506 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2501, file: !942, line: 463, type: !205)
!2507 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2501, file: !942, line: 463, type: !2504)
!2508 = !DILocalVariable(name: "no", scope: !2501, file: !942, line: 465, type: !2001)
!2509 = !DILocalVariable(name: "remainder", scope: !2501, file: !942, line: 466, type: !2001)
!2510 = !DILocalVariable(name: "temp", scope: !2501, file: !942, line: 467, type: !205)
!2511 = !DILocation(line: 0, scope: !2501)
!2512 = !DILocation(line: 468, column: 19, scope: !2501)
!2513 = !DILocation(line: 469, column: 17, scope: !2501)
!2514 = !DILocation(line: 471, column: 5, scope: !2501)
!2515 = !DILocation(line: 473, column: 20, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2501, file: !942, line: 471, column: 17)
!2517 = !DILocation(line: 474, column: 40, scope: !2516)
!2518 = !DILocation(line: 474, column: 26, scope: !2516)
!2519 = !DILocation(line: 474, column: 18, scope: !2516)
!2520 = !DILocation(line: 475, column: 40, scope: !2516)
!2521 = !DILocation(line: 475, column: 29, scope: !2516)
!2522 = !DILocation(line: 476, column: 13, scope: !2516)
!2523 = !DILocation(line: 478, column: 27, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2516, file: !942, line: 478, column: 17)
!2525 = !DILocation(line: 478, column: 17, scope: !2516)
!2526 = !DILocation(line: 479, column: 24, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !942, line: 478, column: 33)
!2528 = !DILocation(line: 480, column: 44, scope: !2527)
!2529 = !DILocation(line: 480, column: 30, scope: !2527)
!2530 = !DILocation(line: 480, column: 22, scope: !2527)
!2531 = !DILocation(line: 481, column: 44, scope: !2527)
!2532 = !DILocation(line: 481, column: 33, scope: !2527)
!2533 = !DILocation(line: 482, column: 13, scope: !2527)
!2534 = !DILocation(line: 482, column: 24, scope: !2524)
!2535 = !DILocation(line: 483, column: 24, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !942, line: 482, column: 41)
!2537 = distinct !DILexicalBlock(scope: !2524, file: !942, line: 482, column: 24)
!2538 = !DILocation(line: 485, column: 53, scope: !2536)
!2539 = !DILocation(line: 485, column: 33, scope: !2536)
!2540 = !DILocation(line: 486, column: 13, scope: !2536)
!2541 = !DILocation(line: 487, column: 24, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !942, line: 486, column: 41)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !942, line: 486, column: 24)
!2544 = !DILocation(line: 489, column: 53, scope: !2542)
!2545 = !DILocation(line: 489, column: 33, scope: !2542)
!2546 = !DILocation(line: 490, column: 13, scope: !2542)
!2547 = !DILocation(line: 491, column: 24, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !942, line: 490, column: 41)
!2549 = distinct !DILexicalBlock(scope: !2543, file: !942, line: 490, column: 24)
!2550 = !DILocation(line: 493, column: 53, scope: !2548)
!2551 = !DILocation(line: 493, column: 33, scope: !2548)
!2552 = !DILocation(line: 494, column: 13, scope: !2548)
!2553 = !DILocation(line: 495, column: 24, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !942, line: 494, column: 41)
!2555 = distinct !DILexicalBlock(scope: !2549, file: !942, line: 494, column: 24)
!2556 = !DILocation(line: 497, column: 53, scope: !2554)
!2557 = !DILocation(line: 497, column: 33, scope: !2554)
!2558 = !DILocation(line: 498, column: 13, scope: !2554)
!2559 = !DILocation(line: 499, column: 24, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !942, line: 498, column: 41)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !942, line: 498, column: 24)
!2562 = !DILocation(line: 501, column: 53, scope: !2560)
!2563 = !DILocation(line: 501, column: 33, scope: !2560)
!2564 = !DILocation(line: 502, column: 13, scope: !2560)
!2565 = !DILocation(line: 505, column: 18, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2516, file: !942, line: 505, column: 17)
!2567 = !DILocation(line: 505, column: 17, scope: !2516)
!2568 = !DILocation(line: 506, column: 24, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !942, line: 505, column: 29)
!2570 = !DILocation(line: 508, column: 53, scope: !2569)
!2571 = !DILocation(line: 508, column: 33, scope: !2569)
!2572 = !DILocation(line: 509, column: 13, scope: !2569)
!2573 = !DILocation(line: 510, column: 24, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2566, file: !942, line: 509, column: 20)
!2575 = !DILocation(line: 511, column: 44, scope: !2574)
!2576 = !DILocation(line: 511, column: 30, scope: !2574)
!2577 = !DILocation(line: 511, column: 22, scope: !2574)
!2578 = !DILocation(line: 512, column: 44, scope: !2574)
!2579 = !DILocation(line: 512, column: 33, scope: !2574)
!2580 = !DILocation(line: 516, column: 20, scope: !2516)
!2581 = !DILocation(line: 517, column: 40, scope: !2516)
!2582 = !DILocation(line: 517, column: 26, scope: !2516)
!2583 = !DILocation(line: 517, column: 18, scope: !2516)
!2584 = !DILocation(line: 518, column: 40, scope: !2516)
!2585 = !DILocation(line: 518, column: 29, scope: !2516)
!2586 = !DILocation(line: 519, column: 13, scope: !2516)
!2587 = !DILocation(line: 0, scope: !2516)
!2588 = !DILocation(line: 524, column: 1, scope: !2501)
!2589 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !942, file: !942, line: 526, type: !2590, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !2593)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !205, !2592}
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !945, line: 1212, baseType: !944)
!2593 = !{!2594, !2595, !2596, !2597}
!2594 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2589, file: !942, line: 526, type: !205)
!2595 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2589, file: !942, line: 526, type: !2592)
!2596 = !DILocalVariable(name: "no", scope: !2589, file: !942, line: 529, type: !2001)
!2597 = !DILocalVariable(name: "remainder", scope: !2589, file: !942, line: 530, type: !2001)
!2598 = !DILocation(line: 0, scope: !2589)
!2599 = !DILocation(line: 531, column: 19, scope: !2589)
!2600 = !DILocation(line: 532, column: 17, scope: !2589)
!2601 = !DILocation(line: 534, column: 9, scope: !2589)
!2602 = !DILocation(line: 536, column: 9, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !942, line: 534, column: 45)
!2604 = distinct !DILexicalBlock(scope: !2589, file: !942, line: 534, column: 9)
!2605 = !DILocation(line: 538, column: 56, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !942, line: 536, column: 21)
!2607 = !DILocation(line: 538, column: 53, scope: !2606)
!2608 = !DILocation(line: 538, column: 47, scope: !2606)
!2609 = !DILocation(line: 539, column: 17, scope: !2606)
!2610 = !DILocation(line: 541, column: 56, scope: !2606)
!2611 = !DILocation(line: 541, column: 53, scope: !2606)
!2612 = !DILocation(line: 541, column: 47, scope: !2606)
!2613 = !DILocation(line: 542, column: 17, scope: !2606)
!2614 = !DILocation(line: 548, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !942, line: 547, column: 51)
!2616 = distinct !DILexicalBlock(scope: !2604, file: !942, line: 547, column: 16)
!2617 = !DILocation(line: 550, column: 57, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !942, line: 548, column: 21)
!2619 = !DILocation(line: 550, column: 54, scope: !2618)
!2620 = !DILocation(line: 550, column: 50, scope: !2618)
!2621 = !DILocation(line: 550, column: 47, scope: !2618)
!2622 = !DILocation(line: 551, column: 17, scope: !2618)
!2623 = !DILocation(line: 553, column: 57, scope: !2618)
!2624 = !DILocation(line: 553, column: 54, scope: !2618)
!2625 = !DILocation(line: 553, column: 50, scope: !2618)
!2626 = !DILocation(line: 553, column: 47, scope: !2618)
!2627 = !DILocation(line: 554, column: 17, scope: !2618)
!2628 = !DILocation(line: 560, column: 1, scope: !2589)
!2629 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !951, file: !951, line: 85, type: !2630, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !950, retainedNodes: !2634)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!2632, !2633, !229}
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !47, line: 79, baseType: null)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !954, line: 225, baseType: !953)
!2634 = !{!2635, !2636, !2637}
!2635 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2629, file: !951, line: 85, type: !2633)
!2636 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2629, file: !951, line: 85, type: !229)
!2637 = !DILocalVariable(name: "temp", scope: !2629, file: !951, line: 87, type: !136)
!2638 = !DILocation(line: 0, scope: !2629)
!2639 = !DILocation(line: 88, column: 5, scope: !2629)
!2640 = !DILocation(line: 91, column: 20, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2629, file: !951, line: 88, column: 24)
!2642 = !DILocation(line: 92, column: 18, scope: !2641)
!2643 = !DILocation(line: 93, column: 66, scope: !2641)
!2644 = !DILocation(line: 93, column: 63, scope: !2641)
!2645 = !DILocation(line: 93, column: 56, scope: !2641)
!2646 = !DILocation(line: 94, column: 13, scope: !2641)
!2647 = !DILocation(line: 97, column: 20, scope: !2641)
!2648 = !DILocation(line: 98, column: 18, scope: !2641)
!2649 = !DILocation(line: 99, column: 67, scope: !2641)
!2650 = !DILocation(line: 99, column: 74, scope: !2641)
!2651 = !DILocation(line: 99, column: 64, scope: !2641)
!2652 = !DILocation(line: 99, column: 56, scope: !2641)
!2653 = !DILocation(line: 100, column: 13, scope: !2641)
!2654 = !DILocation(line: 103, column: 20, scope: !2641)
!2655 = !DILocation(line: 104, column: 18, scope: !2641)
!2656 = !DILocation(line: 105, column: 67, scope: !2641)
!2657 = !DILocation(line: 105, column: 74, scope: !2641)
!2658 = !DILocation(line: 105, column: 64, scope: !2641)
!2659 = !DILocation(line: 105, column: 56, scope: !2641)
!2660 = !DILocation(line: 106, column: 13, scope: !2641)
!2661 = !DILocation(line: 109, column: 20, scope: !2641)
!2662 = !DILocation(line: 110, column: 18, scope: !2641)
!2663 = !DILocation(line: 111, column: 67, scope: !2641)
!2664 = !DILocation(line: 111, column: 74, scope: !2641)
!2665 = !DILocation(line: 111, column: 64, scope: !2641)
!2666 = !DILocation(line: 111, column: 56, scope: !2641)
!2667 = !DILocation(line: 112, column: 13, scope: !2641)
!2668 = !DILocation(line: 115, column: 20, scope: !2641)
!2669 = !DILocation(line: 116, column: 18, scope: !2641)
!2670 = !DILocation(line: 117, column: 67, scope: !2641)
!2671 = !DILocation(line: 117, column: 74, scope: !2641)
!2672 = !DILocation(line: 117, column: 64, scope: !2641)
!2673 = !DILocation(line: 117, column: 56, scope: !2641)
!2674 = !DILocation(line: 118, column: 13, scope: !2641)
!2675 = !DILocation(line: 121, column: 20, scope: !2641)
!2676 = !DILocation(line: 122, column: 18, scope: !2641)
!2677 = !DILocation(line: 123, column: 67, scope: !2641)
!2678 = !DILocation(line: 123, column: 74, scope: !2641)
!2679 = !DILocation(line: 123, column: 64, scope: !2641)
!2680 = !DILocation(line: 123, column: 56, scope: !2641)
!2681 = !DILocation(line: 124, column: 13, scope: !2641)
!2682 = !DILocation(line: 127, column: 20, scope: !2641)
!2683 = !DILocation(line: 128, column: 18, scope: !2641)
!2684 = !DILocation(line: 129, column: 67, scope: !2641)
!2685 = !DILocation(line: 129, column: 74, scope: !2641)
!2686 = !DILocation(line: 129, column: 64, scope: !2641)
!2687 = !DILocation(line: 129, column: 56, scope: !2641)
!2688 = !DILocation(line: 130, column: 13, scope: !2641)
!2689 = !DILocation(line: 133, column: 20, scope: !2641)
!2690 = !DILocation(line: 134, column: 18, scope: !2641)
!2691 = !DILocation(line: 135, column: 67, scope: !2641)
!2692 = !DILocation(line: 135, column: 74, scope: !2641)
!2693 = !DILocation(line: 135, column: 64, scope: !2641)
!2694 = !DILocation(line: 135, column: 56, scope: !2641)
!2695 = !DILocation(line: 136, column: 13, scope: !2641)
!2696 = !DILocation(line: 139, column: 20, scope: !2641)
!2697 = !DILocation(line: 140, column: 18, scope: !2641)
!2698 = !DILocation(line: 141, column: 67, scope: !2641)
!2699 = !DILocation(line: 141, column: 64, scope: !2641)
!2700 = !DILocation(line: 141, column: 56, scope: !2641)
!2701 = !DILocation(line: 142, column: 13, scope: !2641)
!2702 = !DILocation(line: 145, column: 20, scope: !2641)
!2703 = !DILocation(line: 146, column: 18, scope: !2641)
!2704 = !DILocation(line: 147, column: 67, scope: !2641)
!2705 = !DILocation(line: 147, column: 74, scope: !2641)
!2706 = !DILocation(line: 147, column: 64, scope: !2641)
!2707 = !DILocation(line: 147, column: 56, scope: !2641)
!2708 = !DILocation(line: 148, column: 13, scope: !2641)
!2709 = !DILocation(line: 151, column: 20, scope: !2641)
!2710 = !DILocation(line: 152, column: 18, scope: !2641)
!2711 = !DILocation(line: 153, column: 67, scope: !2641)
!2712 = !DILocation(line: 153, column: 74, scope: !2641)
!2713 = !DILocation(line: 153, column: 64, scope: !2641)
!2714 = !DILocation(line: 153, column: 56, scope: !2641)
!2715 = !DILocation(line: 154, column: 13, scope: !2641)
!2716 = !DILocation(line: 157, column: 20, scope: !2641)
!2717 = !DILocation(line: 158, column: 18, scope: !2641)
!2718 = !DILocation(line: 159, column: 67, scope: !2641)
!2719 = !DILocation(line: 159, column: 74, scope: !2641)
!2720 = !DILocation(line: 159, column: 64, scope: !2641)
!2721 = !DILocation(line: 159, column: 56, scope: !2641)
!2722 = !DILocation(line: 160, column: 29, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2641, file: !951, line: 160, column: 17)
!2724 = !DILocation(line: 161, column: 17, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2723, file: !951, line: 160, column: 60)
!2726 = !DILocation(line: 162, column: 13, scope: !2725)
!2727 = !DILocation(line: 166, column: 20, scope: !2641)
!2728 = !DILocation(line: 167, column: 18, scope: !2641)
!2729 = !DILocation(line: 168, column: 67, scope: !2641)
!2730 = !DILocation(line: 168, column: 74, scope: !2641)
!2731 = !DILocation(line: 168, column: 64, scope: !2641)
!2732 = !DILocation(line: 168, column: 56, scope: !2641)
!2733 = !DILocation(line: 169, column: 29, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2641, file: !951, line: 169, column: 17)
!2735 = !DILocation(line: 170, column: 17, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2734, file: !951, line: 169, column: 45)
!2737 = !DILocation(line: 171, column: 13, scope: !2736)
!2738 = !DILocation(line: 175, column: 20, scope: !2641)
!2739 = !DILocation(line: 176, column: 18, scope: !2641)
!2740 = !DILocation(line: 177, column: 67, scope: !2641)
!2741 = !DILocation(line: 177, column: 74, scope: !2641)
!2742 = !DILocation(line: 177, column: 64, scope: !2641)
!2743 = !DILocation(line: 177, column: 56, scope: !2641)
!2744 = !DILocation(line: 178, column: 19, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2641, file: !951, line: 178, column: 17)
!2746 = !DILocation(line: 178, column: 17, scope: !2641)
!2747 = !DILocation(line: 179, column: 17, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !951, line: 178, column: 30)
!2749 = !DILocation(line: 180, column: 13, scope: !2748)
!2750 = !DILocation(line: 184, column: 20, scope: !2641)
!2751 = !DILocation(line: 185, column: 18, scope: !2641)
!2752 = !DILocation(line: 186, column: 67, scope: !2641)
!2753 = !DILocation(line: 186, column: 74, scope: !2641)
!2754 = !DILocation(line: 186, column: 64, scope: !2641)
!2755 = !DILocation(line: 186, column: 56, scope: !2641)
!2756 = !DILocation(line: 187, column: 29, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2641, file: !951, line: 187, column: 17)
!2758 = !DILocation(line: 188, column: 17, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2757, file: !951, line: 187, column: 45)
!2760 = !DILocation(line: 189, column: 13, scope: !2759)
!2761 = !DILocation(line: 193, column: 20, scope: !2641)
!2762 = !DILocation(line: 194, column: 18, scope: !2641)
!2763 = !DILocation(line: 195, column: 67, scope: !2641)
!2764 = !DILocation(line: 195, column: 74, scope: !2641)
!2765 = !DILocation(line: 195, column: 64, scope: !2641)
!2766 = !DILocation(line: 195, column: 56, scope: !2641)
!2767 = !DILocation(line: 196, column: 29, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2641, file: !951, line: 196, column: 17)
!2769 = !DILocation(line: 197, column: 17, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2768, file: !951, line: 196, column: 45)
!2771 = !DILocation(line: 198, column: 13, scope: !2770)
!2772 = !DILocation(line: 202, column: 20, scope: !2641)
!2773 = !DILocation(line: 203, column: 18, scope: !2641)
!2774 = !DILocation(line: 204, column: 67, scope: !2641)
!2775 = !DILocation(line: 204, column: 64, scope: !2641)
!2776 = !DILocation(line: 204, column: 56, scope: !2641)
!2777 = !DILocation(line: 205, column: 29, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2641, file: !951, line: 205, column: 17)
!2779 = !DILocation(line: 206, column: 17, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2778, file: !951, line: 205, column: 45)
!2781 = !DILocation(line: 207, column: 13, scope: !2780)
!2782 = !DILocation(line: 211, column: 20, scope: !2641)
!2783 = !DILocation(line: 212, column: 18, scope: !2641)
!2784 = !DILocation(line: 213, column: 67, scope: !2641)
!2785 = !DILocation(line: 213, column: 74, scope: !2641)
!2786 = !DILocation(line: 213, column: 64, scope: !2641)
!2787 = !DILocation(line: 213, column: 56, scope: !2641)
!2788 = !DILocation(line: 214, column: 13, scope: !2641)
!2789 = !DILocation(line: 217, column: 20, scope: !2641)
!2790 = !DILocation(line: 218, column: 18, scope: !2641)
!2791 = !DILocation(line: 219, column: 67, scope: !2641)
!2792 = !DILocation(line: 219, column: 74, scope: !2641)
!2793 = !DILocation(line: 219, column: 64, scope: !2641)
!2794 = !DILocation(line: 219, column: 56, scope: !2641)
!2795 = !DILocation(line: 220, column: 13, scope: !2641)
!2796 = !DILocation(line: 223, column: 20, scope: !2641)
!2797 = !DILocation(line: 224, column: 18, scope: !2641)
!2798 = !DILocation(line: 225, column: 67, scope: !2641)
!2799 = !DILocation(line: 225, column: 74, scope: !2641)
!2800 = !DILocation(line: 225, column: 64, scope: !2641)
!2801 = !DILocation(line: 225, column: 56, scope: !2641)
!2802 = !DILocation(line: 226, column: 13, scope: !2641)
!2803 = !DILocation(line: 229, column: 20, scope: !2641)
!2804 = !DILocation(line: 230, column: 18, scope: !2641)
!2805 = !DILocation(line: 231, column: 67, scope: !2641)
!2806 = !DILocation(line: 231, column: 74, scope: !2641)
!2807 = !DILocation(line: 231, column: 64, scope: !2641)
!2808 = !DILocation(line: 231, column: 56, scope: !2641)
!2809 = !DILocation(line: 232, column: 13, scope: !2641)
!2810 = !DILocation(line: 235, column: 20, scope: !2641)
!2811 = !DILocation(line: 236, column: 18, scope: !2641)
!2812 = !DILocation(line: 237, column: 66, scope: !2641)
!2813 = !DILocation(line: 237, column: 73, scope: !2641)
!2814 = !DILocation(line: 237, column: 63, scope: !2641)
!2815 = !DILocation(line: 237, column: 56, scope: !2641)
!2816 = !DILocation(line: 238, column: 13, scope: !2641)
!2817 = !DILocation(line: 241, column: 20, scope: !2641)
!2818 = !DILocation(line: 242, column: 18, scope: !2641)
!2819 = !DILocation(line: 243, column: 67, scope: !2641)
!2820 = !DILocation(line: 243, column: 74, scope: !2641)
!2821 = !DILocation(line: 243, column: 64, scope: !2641)
!2822 = !DILocation(line: 243, column: 56, scope: !2641)
!2823 = !DILocation(line: 244, column: 13, scope: !2641)
!2824 = !DILocation(line: 247, column: 20, scope: !2641)
!2825 = !DILocation(line: 248, column: 18, scope: !2641)
!2826 = !DILocation(line: 249, column: 67, scope: !2641)
!2827 = !DILocation(line: 249, column: 74, scope: !2641)
!2828 = !DILocation(line: 249, column: 64, scope: !2641)
!2829 = !DILocation(line: 249, column: 56, scope: !2641)
!2830 = !DILocation(line: 250, column: 13, scope: !2641)
!2831 = !DILocation(line: 253, column: 20, scope: !2641)
!2832 = !DILocation(line: 254, column: 18, scope: !2641)
!2833 = !DILocation(line: 255, column: 67, scope: !2641)
!2834 = !DILocation(line: 255, column: 74, scope: !2641)
!2835 = !DILocation(line: 255, column: 64, scope: !2641)
!2836 = !DILocation(line: 255, column: 56, scope: !2641)
!2837 = !DILocation(line: 256, column: 13, scope: !2641)
!2838 = !DILocation(line: 259, column: 20, scope: !2641)
!2839 = !DILocation(line: 260, column: 18, scope: !2641)
!2840 = !DILocation(line: 261, column: 67, scope: !2641)
!2841 = !DILocation(line: 261, column: 74, scope: !2641)
!2842 = !DILocation(line: 261, column: 64, scope: !2641)
!2843 = !DILocation(line: 261, column: 56, scope: !2641)
!2844 = !DILocation(line: 262, column: 13, scope: !2641)
!2845 = !DILocation(line: 265, column: 20, scope: !2641)
!2846 = !DILocation(line: 266, column: 18, scope: !2641)
!2847 = !DILocation(line: 267, column: 67, scope: !2641)
!2848 = !DILocation(line: 267, column: 74, scope: !2641)
!2849 = !DILocation(line: 267, column: 64, scope: !2641)
!2850 = !DILocation(line: 267, column: 56, scope: !2641)
!2851 = !DILocation(line: 268, column: 13, scope: !2641)
!2852 = !DILocation(line: 271, column: 20, scope: !2641)
!2853 = !DILocation(line: 272, column: 18, scope: !2641)
!2854 = !DILocation(line: 273, column: 67, scope: !2641)
!2855 = !DILocation(line: 273, column: 74, scope: !2641)
!2856 = !DILocation(line: 273, column: 64, scope: !2641)
!2857 = !DILocation(line: 273, column: 56, scope: !2641)
!2858 = !DILocation(line: 274, column: 13, scope: !2641)
!2859 = !DILocation(line: 278, column: 1, scope: !2629)
!2860 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1032, file: !1032, line: 47, type: !1226, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2861)
!2861 = !{!2862}
!2862 = !DILocalVariable(name: "addr", arg: 1, scope: !2860, file: !1032, line: 47, type: !136)
!2863 = !DILocation(line: 0, scope: !2860)
!2864 = !DILocation(line: 49, column: 15, scope: !2860)
!2865 = !DILocation(line: 51, column: 5, scope: !2860)
!2866 = !{i64 2624}
!2867 = !DILocation(line: 52, column: 5, scope: !2860)
!2868 = !{i64 2651}
!2869 = !DILocation(line: 53, column: 1, scope: !2860)
!2870 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1032, file: !1032, line: 56, type: !2871, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{null, !7}
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "source", arg: 1, scope: !2870, file: !1032, line: 56, type: !7)
!2875 = !DILocation(line: 0, scope: !2870)
!2876 = !DILocation(line: 58, column: 16, scope: !2870)
!2877 = !DILocation(line: 59, column: 1, scope: !2870)
!2878 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1032, file: !1032, line: 61, type: !1195, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2879)
!2879 = !{!2880}
!2880 = !DILocalVariable(name: "mask", scope: !2878, file: !1032, line: 63, type: !136)
!2881 = !DILocation(line: 470, column: 3, scope: !2882, inlinedAt: !2885)
!2882 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1194, file: !1194, line: 466, type: !1195, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2883)
!2883 = !{!2884}
!2884 = !DILocalVariable(name: "result", scope: !2882, file: !1194, line: 468, type: !136)
!2885 = distinct !DILocation(line: 64, column: 5, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2878, file: !1032, line: 64, column: 5)
!2887 = !{i64 302171}
!2888 = !DILocation(line: 0, scope: !2882, inlinedAt: !2885)
!2889 = !DILocation(line: 0, scope: !2878)
!2890 = !DILocation(line: 330, column: 3, scope: !2891, inlinedAt: !2892)
!2891 = distinct !DISubprogram(name: "__disable_irq", scope: !1194, file: !1194, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !1163)
!2892 = distinct !DILocation(line: 64, column: 5, scope: !2886)
!2893 = !{i64 298835}
!2894 = !DILocation(line: 65, column: 5, scope: !2878)
!2895 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1032, file: !1032, line: 68, type: !1226, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2896)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "mask", arg: 1, scope: !2895, file: !1032, line: 68, type: !136)
!2898 = !DILocation(line: 0, scope: !2895)
!2899 = !DILocalVariable(name: "priMask", arg: 1, scope: !2900, file: !1194, line: 481, type: !136)
!2900 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1194, file: !1194, line: 481, type: !1226, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2901)
!2901 = !{!2899}
!2902 = !DILocation(line: 0, scope: !2900, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 70, column: 5, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2895, file: !1032, line: 70, column: 5)
!2905 = !DILocation(line: 483, column: 3, scope: !2900, inlinedAt: !2903)
!2906 = !{i64 302489}
!2907 = !DILocation(line: 71, column: 1, scope: !2895)
!2908 = distinct !DISubprogram(name: "pinmux_config", scope: !1077, file: !1077, line: 54, type: !2909, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!331, !1148, !136}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2908, file: !1077, line: 54, type: !1148)
!2913 = !DILocalVariable(name: "function", arg: 2, scope: !2908, file: !1077, line: 54, type: !136)
!2914 = !DILocalVariable(name: "ePadIndex", scope: !2908, file: !1077, line: 56, type: !2633)
!2915 = !DILocation(line: 0, scope: !2908)
!2916 = !DILocation(line: 60, column: 5, scope: !2908)
!2917 = !DILocation(line: 205, column: 38, scope: !2908)
!2918 = !DILocation(line: 205, column: 5, scope: !2908)
!2919 = !DILocation(line: 207, column: 5, scope: !2908)
!2920 = !DILocation(line: 208, column: 1, scope: !2908)
!2921 = distinct !DISubprogram(name: "top_xtal_init", scope: !201, file: !201, line: 52, type: !181, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2922)
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "u4RegVal", scope: !2921, file: !201, line: 54, type: !136)
!2924 = !DILocalVariable(name: "reg", scope: !2921, file: !201, line: 55, type: !831)
!2925 = !DILocation(line: 0, scope: !2921)
!2926 = !DILocation(line: 55, column: 25, scope: !2921)
!2927 = !DILocation(line: 56, column: 16, scope: !2921)
!2928 = !DILocation(line: 56, column: 23, scope: !2921)
!2929 = !DILocation(line: 58, column: 16, scope: !2921)
!2930 = !DILocation(line: 61, column: 5, scope: !2921)
!2931 = !DILocation(line: 59, column: 14, scope: !2921)
!2932 = !DILocation(line: 0, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2921, file: !201, line: 61, column: 18)
!2934 = !DILocation(line: 87, column: 38, scope: !2921)
!2935 = !DILocation(line: 88, column: 21, scope: !2921)
!2936 = !DILocation(line: 88, column: 19, scope: !2921)
!2937 = !DILocation(line: 89, column: 5, scope: !2921)
!2938 = !DILocation(line: 90, column: 17, scope: !2921)
!2939 = !DILocation(line: 90, column: 33, scope: !2921)
!2940 = !DILocation(line: 90, column: 5, scope: !2921)
!2941 = !DILocation(line: 91, column: 1, scope: !2921)
!2942 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !201, file: !201, line: 98, type: !1195, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1163)
!2943 = !DILocation(line: 100, column: 12, scope: !2942)
!2944 = !DILocation(line: 100, column: 5, scope: !2942)
!2945 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !201, file: !201, line: 108, type: !1195, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1163)
!2946 = !DILocation(line: 110, column: 12, scope: !2945)
!2947 = !DILocation(line: 110, column: 5, scope: !2945)
!2948 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !201, file: !201, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2949)
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "reg", scope: !2948, file: !201, line: 120, type: !207)
!2951 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2948, file: !201, line: 121, type: !206)
!2952 = !DILocation(line: 120, column: 5, scope: !2948)
!2953 = !DILocation(line: 120, column: 23, scope: !2948)
!2954 = !DILocation(line: 0, scope: !2948)
!2955 = !DILocation(line: 123, column: 11, scope: !2948)
!2956 = !DILocation(line: 123, column: 9, scope: !2948)
!2957 = !DILocation(line: 124, column: 12, scope: !2948)
!2958 = !DILocation(line: 124, column: 16, scope: !2948)
!2959 = !DILocation(line: 124, column: 39, scope: !2948)
!2960 = !DILocation(line: 124, column: 9, scope: !2948)
!2961 = !DILocation(line: 126, column: 9, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2948, file: !201, line: 126, column: 9)
!2963 = !DILocation(line: 126, column: 13, scope: !2962)
!2964 = !DILocation(line: 126, column: 9, scope: !2948)
!2965 = !DILocation(line: 127, column: 15, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !201, line: 126, column: 47)
!2967 = !DILocation(line: 127, column: 13, scope: !2966)
!2968 = !DILocation(line: 128, column: 15, scope: !2966)
!2969 = !DILocation(line: 128, column: 19, scope: !2966)
!2970 = !DILocation(line: 128, column: 13, scope: !2966)
!2971 = !DILocation(line: 129, column: 15, scope: !2966)
!2972 = !DILocation(line: 129, column: 19, scope: !2966)
!2973 = !DILocation(line: 129, column: 13, scope: !2966)
!2974 = !DILocation(line: 130, column: 46, scope: !2966)
!2975 = !DILocation(line: 130, column: 9, scope: !2966)
!2976 = !DILocation(line: 132, column: 9, scope: !2966)
!2977 = !DILocation(line: 133, column: 19, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2966, file: !201, line: 132, column: 12)
!2979 = !DILocation(line: 133, column: 17, scope: !2978)
!2980 = !DILocation(line: 134, column: 19, scope: !2978)
!2981 = !DILocation(line: 134, column: 23, scope: !2978)
!2982 = !DILocation(line: 134, column: 17, scope: !2978)
!2983 = !DILocation(line: 135, column: 19, scope: !2966)
!2984 = !DILocation(line: 135, column: 18, scope: !2966)
!2985 = !DILocation(line: 135, column: 9, scope: !2978)
!2986 = distinct !{!2986, !2976, !2987}
!2987 = !DILocation(line: 135, column: 22, scope: !2966)
!2988 = !DILocation(line: 138, column: 1, scope: !2948)
!2989 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2990, file: !2990, line: 176, type: !2991, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2995)
!2990 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!136, !2993}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2995 = !{!2996}
!2996 = !DILocalVariable(name: "Register", arg: 1, scope: !2989, file: !2990, line: 176, type: !2993)
!2997 = !DILocation(line: 0, scope: !2989)
!2998 = !DILocation(line: 178, column: 13, scope: !2989)
!2999 = !DILocation(line: 178, column: 12, scope: !2989)
!3000 = !DILocation(line: 178, column: 5, scope: !2989)
!3001 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2990, file: !2990, line: 171, type: !3002, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !2993, !136}
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "Register", arg: 1, scope: !3001, file: !2990, line: 171, type: !2993)
!3006 = !DILocalVariable(name: "Value", arg: 2, scope: !3001, file: !2990, line: 171, type: !136)
!3007 = !DILocation(line: 0, scope: !3001)
!3008 = !DILocation(line: 173, column: 6, scope: !3001)
!3009 = !DILocation(line: 173, column: 36, scope: !3001)
!3010 = !DILocation(line: 174, column: 1, scope: !3001)
!3011 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !201, file: !201, line: 145, type: !1168, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3011, file: !201, line: 145, type: !128)
!3014 = !DILocalVariable(name: "reg", scope: !3011, file: !201, line: 147, type: !207)
!3015 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3011, file: !201, line: 148, type: !206)
!3016 = !DILocation(line: 0, scope: !3011)
!3017 = !DILocation(line: 147, column: 5, scope: !3011)
!3018 = !DILocation(line: 147, column: 23, scope: !3011)
!3019 = !DILocation(line: 150, column: 11, scope: !3011)
!3020 = !DILocation(line: 150, column: 9, scope: !3011)
!3021 = !DILocation(line: 151, column: 12, scope: !3011)
!3022 = !DILocation(line: 151, column: 16, scope: !3011)
!3023 = !DILocation(line: 151, column: 39, scope: !3011)
!3024 = !DILocation(line: 151, column: 9, scope: !3011)
!3025 = !DILocation(line: 153, column: 9, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3011, file: !201, line: 153, column: 9)
!3027 = !DILocation(line: 153, column: 13, scope: !3026)
!3028 = !DILocation(line: 153, column: 9, scope: !3011)
!3029 = !DILocation(line: 154, column: 15, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !201, line: 153, column: 45)
!3031 = !DILocation(line: 154, column: 13, scope: !3030)
!3032 = !DILocation(line: 155, column: 15, scope: !3030)
!3033 = !DILocation(line: 155, column: 19, scope: !3030)
!3034 = !DILocation(line: 155, column: 13, scope: !3030)
!3035 = !DILocation(line: 156, column: 15, scope: !3030)
!3036 = !DILocation(line: 156, column: 19, scope: !3030)
!3037 = !DILocation(line: 156, column: 13, scope: !3030)
!3038 = !DILocation(line: 157, column: 15, scope: !3030)
!3039 = !DILocation(line: 157, column: 13, scope: !3030)
!3040 = !DILocation(line: 158, column: 46, scope: !3030)
!3041 = !DILocation(line: 158, column: 9, scope: !3030)
!3042 = !DILocation(line: 160, column: 15, scope: !3030)
!3043 = !DILocation(line: 160, column: 13, scope: !3030)
!3044 = !DILocation(line: 161, column: 15, scope: !3030)
!3045 = !DILocation(line: 161, column: 19, scope: !3030)
!3046 = !DILocation(line: 161, column: 13, scope: !3030)
!3047 = !DILocation(line: 162, column: 15, scope: !3030)
!3048 = !DILocation(line: 162, column: 19, scope: !3030)
!3049 = !DILocation(line: 162, column: 13, scope: !3030)
!3050 = !DILocation(line: 163, column: 15, scope: !3030)
!3051 = !DILocation(line: 163, column: 19, scope: !3030)
!3052 = !DILocation(line: 163, column: 13, scope: !3030)
!3053 = !DILocation(line: 164, column: 46, scope: !3030)
!3054 = !DILocation(line: 164, column: 9, scope: !3030)
!3055 = !DILocation(line: 166, column: 9, scope: !3030)
!3056 = !DILocation(line: 167, column: 19, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3030, file: !201, line: 166, column: 12)
!3058 = !DILocation(line: 167, column: 17, scope: !3057)
!3059 = !DILocation(line: 168, column: 19, scope: !3057)
!3060 = !DILocation(line: 168, column: 23, scope: !3057)
!3061 = !DILocation(line: 168, column: 17, scope: !3057)
!3062 = !DILocation(line: 169, column: 19, scope: !3030)
!3063 = !DILocation(line: 169, column: 18, scope: !3030)
!3064 = !DILocation(line: 169, column: 9, scope: !3057)
!3065 = distinct !{!3065, !3055, !3066}
!3066 = !DILocation(line: 169, column: 22, scope: !3030)
!3067 = !DILocation(line: 171, column: 15, scope: !3030)
!3068 = !DILocation(line: 171, column: 13, scope: !3030)
!3069 = !DILocation(line: 172, column: 15, scope: !3030)
!3070 = !DILocation(line: 172, column: 19, scope: !3030)
!3071 = !DILocation(line: 172, column: 13, scope: !3030)
!3072 = !DILocation(line: 173, column: 15, scope: !3030)
!3073 = !DILocation(line: 173, column: 19, scope: !3030)
!3074 = !DILocation(line: 173, column: 13, scope: !3030)
!3075 = !DILocation(line: 174, column: 5, scope: !3030)
!3076 = !DILocation(line: 176, column: 11, scope: !3011)
!3077 = !DILocation(line: 176, column: 9, scope: !3011)
!3078 = !DILocation(line: 177, column: 9, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3011, file: !201, line: 177, column: 9)
!3080 = !DILocation(line: 0, scope: !3079)
!3081 = !DILocation(line: 177, column: 9, scope: !3011)
!3082 = !DILocation(line: 178, column: 19, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !201, line: 177, column: 17)
!3084 = !DILocation(line: 178, column: 13, scope: !3083)
!3085 = !DILocation(line: 179, column: 5, scope: !3083)
!3086 = !DILocation(line: 180, column: 13, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3079, file: !201, line: 179, column: 12)
!3088 = !DILocation(line: 182, column: 42, scope: !3011)
!3089 = !DILocation(line: 182, column: 5, scope: !3011)
!3090 = !DILocation(line: 184, column: 1, scope: !3011)
!3091 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !201, file: !201, line: 191, type: !181, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3092)
!3092 = !{!3093, !3094}
!3093 = !DILocalVariable(name: "reg", scope: !3091, file: !201, line: 193, type: !207)
!3094 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3091, file: !201, line: 194, type: !206)
!3095 = !DILocation(line: 193, column: 5, scope: !3091)
!3096 = !DILocation(line: 193, column: 23, scope: !3091)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 196, column: 11, scope: !3091)
!3099 = !DILocation(line: 196, column: 9, scope: !3091)
!3100 = !DILocation(line: 197, column: 11, scope: !3091)
!3101 = !DILocation(line: 197, column: 15, scope: !3091)
!3102 = !DILocation(line: 197, column: 9, scope: !3091)
!3103 = !DILocation(line: 198, column: 11, scope: !3091)
!3104 = !DILocation(line: 198, column: 15, scope: !3091)
!3105 = !DILocation(line: 198, column: 9, scope: !3091)
!3106 = !DILocation(line: 199, column: 11, scope: !3091)
!3107 = !DILocation(line: 199, column: 9, scope: !3091)
!3108 = !DILocation(line: 200, column: 42, scope: !3091)
!3109 = !DILocation(line: 200, column: 5, scope: !3091)
!3110 = !DILocation(line: 202, column: 11, scope: !3091)
!3111 = !DILocation(line: 202, column: 9, scope: !3091)
!3112 = !DILocation(line: 203, column: 11, scope: !3091)
!3113 = !DILocation(line: 203, column: 15, scope: !3091)
!3114 = !DILocation(line: 203, column: 9, scope: !3091)
!3115 = !DILocation(line: 204, column: 11, scope: !3091)
!3116 = !DILocation(line: 204, column: 15, scope: !3091)
!3117 = !DILocation(line: 204, column: 9, scope: !3091)
!3118 = !DILocation(line: 205, column: 11, scope: !3091)
!3119 = !DILocation(line: 205, column: 9, scope: !3091)
!3120 = !DILocation(line: 206, column: 42, scope: !3091)
!3121 = !DILocation(line: 206, column: 5, scope: !3091)
!3122 = !DILocation(line: 209, column: 1, scope: !3091)
!3123 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !201, file: !201, line: 216, type: !181, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3124)
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "reg", scope: !3123, file: !201, line: 218, type: !207)
!3126 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3123, file: !201, line: 219, type: !206)
!3127 = !DILocation(line: 218, column: 5, scope: !3123)
!3128 = !DILocation(line: 218, column: 23, scope: !3123)
!3129 = !DILocation(line: 0, scope: !3123)
!3130 = !DILocation(line: 222, column: 11, scope: !3123)
!3131 = !DILocation(line: 222, column: 9, scope: !3123)
!3132 = !DILocation(line: 223, column: 11, scope: !3123)
!3133 = !DILocation(line: 223, column: 15, scope: !3123)
!3134 = !DILocation(line: 223, column: 9, scope: !3123)
!3135 = !DILocation(line: 224, column: 11, scope: !3123)
!3136 = !DILocation(line: 224, column: 9, scope: !3123)
!3137 = !DILocation(line: 225, column: 39, scope: !3123)
!3138 = !DILocation(line: 225, column: 5, scope: !3123)
!3139 = !DILocation(line: 228, column: 11, scope: !3123)
!3140 = !DILocation(line: 228, column: 9, scope: !3123)
!3141 = !DILocation(line: 229, column: 11, scope: !3123)
!3142 = !DILocation(line: 229, column: 15, scope: !3123)
!3143 = !DILocation(line: 229, column: 9, scope: !3123)
!3144 = !DILocation(line: 230, column: 11, scope: !3123)
!3145 = !DILocation(line: 230, column: 9, scope: !3123)
!3146 = !DILocation(line: 231, column: 39, scope: !3123)
!3147 = !DILocation(line: 231, column: 5, scope: !3123)
!3148 = !DILocation(line: 233, column: 5, scope: !3123)
!3149 = !DILocation(line: 233, column: 12, scope: !3123)
!3150 = !DILocation(line: 233, column: 19, scope: !3123)
!3151 = !DILocation(line: 233, column: 16, scope: !3123)
!3152 = distinct !{!3152, !3148, !3153}
!3153 = !DILocation(line: 233, column: 52, scope: !3123)
!3154 = !DILocation(line: 235, column: 21, scope: !3123)
!3155 = !DILocation(line: 235, column: 19, scope: !3123)
!3156 = !DILocation(line: 236, column: 5, scope: !3123)
!3157 = !DILocation(line: 237, column: 17, scope: !3123)
!3158 = !DILocation(line: 237, column: 33, scope: !3123)
!3159 = !DILocation(line: 237, column: 5, scope: !3123)
!3160 = !DILocation(line: 239, column: 1, scope: !3123)
!3161 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !201, file: !201, line: 246, type: !181, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3162)
!3162 = !{!3163, !3164}
!3163 = !DILocalVariable(name: "reg", scope: !3161, file: !201, line: 248, type: !207)
!3164 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3161, file: !201, line: 249, type: !206)
!3165 = !DILocation(line: 248, column: 5, scope: !3161)
!3166 = !DILocation(line: 248, column: 23, scope: !3161)
!3167 = !DILocation(line: 0, scope: !3161)
!3168 = !DILocation(line: 252, column: 5, scope: !3161)
!3169 = !DILocation(line: 255, column: 11, scope: !3161)
!3170 = !DILocation(line: 255, column: 9, scope: !3161)
!3171 = !DILocation(line: 256, column: 11, scope: !3161)
!3172 = !DILocation(line: 256, column: 15, scope: !3161)
!3173 = !DILocation(line: 256, column: 9, scope: !3161)
!3174 = !DILocation(line: 257, column: 11, scope: !3161)
!3175 = !DILocation(line: 257, column: 15, scope: !3161)
!3176 = !DILocation(line: 257, column: 9, scope: !3161)
!3177 = !DILocation(line: 258, column: 39, scope: !3161)
!3178 = !DILocation(line: 258, column: 5, scope: !3161)
!3179 = !DILocation(line: 260, column: 5, scope: !3161)
!3180 = !DILocation(line: 260, column: 12, scope: !3161)
!3181 = !DILocation(line: 260, column: 19, scope: !3161)
!3182 = !DILocation(line: 260, column: 16, scope: !3161)
!3183 = distinct !{!3183, !3179, !3184}
!3184 = !DILocation(line: 260, column: 52, scope: !3161)
!3185 = !DILocation(line: 263, column: 11, scope: !3161)
!3186 = !DILocation(line: 263, column: 9, scope: !3161)
!3187 = !DILocation(line: 264, column: 11, scope: !3161)
!3188 = !DILocation(line: 264, column: 15, scope: !3161)
!3189 = !DILocation(line: 264, column: 9, scope: !3161)
!3190 = !DILocation(line: 265, column: 11, scope: !3161)
!3191 = !DILocation(line: 265, column: 15, scope: !3161)
!3192 = !DILocation(line: 265, column: 9, scope: !3161)
!3193 = !DILocation(line: 266, column: 39, scope: !3161)
!3194 = !DILocation(line: 266, column: 5, scope: !3161)
!3195 = !DILocation(line: 269, column: 11, scope: !3161)
!3196 = !DILocation(line: 269, column: 9, scope: !3161)
!3197 = !DILocation(line: 270, column: 11, scope: !3161)
!3198 = !DILocation(line: 270, column: 15, scope: !3161)
!3199 = !DILocation(line: 270, column: 9, scope: !3161)
!3200 = !DILocation(line: 271, column: 11, scope: !3161)
!3201 = !DILocation(line: 271, column: 15, scope: !3161)
!3202 = !DILocation(line: 271, column: 9, scope: !3161)
!3203 = !DILocation(line: 272, column: 39, scope: !3161)
!3204 = !DILocation(line: 272, column: 5, scope: !3161)
!3205 = !DILocation(line: 273, column: 19, scope: !3161)
!3206 = !DILocation(line: 274, column: 5, scope: !3161)
!3207 = !DILocation(line: 275, column: 17, scope: !3161)
!3208 = !DILocation(line: 275, column: 33, scope: !3161)
!3209 = !DILocation(line: 275, column: 5, scope: !3161)
!3210 = !DILocation(line: 277, column: 1, scope: !3161)
!3211 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !201, file: !201, line: 284, type: !181, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3212)
!3212 = !{!3213, !3214}
!3213 = !DILocalVariable(name: "reg", scope: !3211, file: !201, line: 286, type: !207)
!3214 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3211, file: !201, line: 287, type: !206)
!3215 = !DILocation(line: 286, column: 5, scope: !3211)
!3216 = !DILocation(line: 286, column: 23, scope: !3211)
!3217 = !DILocation(line: 0, scope: !3211)
!3218 = !DILocation(line: 290, column: 5, scope: !3211)
!3219 = !DILocation(line: 293, column: 11, scope: !3211)
!3220 = !DILocation(line: 293, column: 9, scope: !3211)
!3221 = !DILocation(line: 294, column: 11, scope: !3211)
!3222 = !DILocation(line: 294, column: 15, scope: !3211)
!3223 = !DILocation(line: 294, column: 9, scope: !3211)
!3224 = !DILocation(line: 295, column: 11, scope: !3211)
!3225 = !DILocation(line: 295, column: 15, scope: !3211)
!3226 = !DILocation(line: 295, column: 9, scope: !3211)
!3227 = !DILocation(line: 296, column: 39, scope: !3211)
!3228 = !DILocation(line: 296, column: 5, scope: !3211)
!3229 = !DILocation(line: 298, column: 5, scope: !3211)
!3230 = !DILocation(line: 298, column: 12, scope: !3211)
!3231 = !DILocation(line: 298, column: 19, scope: !3211)
!3232 = !DILocation(line: 298, column: 16, scope: !3211)
!3233 = distinct !{!3233, !3229, !3234}
!3234 = !DILocation(line: 298, column: 52, scope: !3211)
!3235 = !DILocation(line: 301, column: 11, scope: !3211)
!3236 = !DILocation(line: 301, column: 9, scope: !3211)
!3237 = !DILocation(line: 302, column: 11, scope: !3211)
!3238 = !DILocation(line: 302, column: 15, scope: !3211)
!3239 = !DILocation(line: 302, column: 9, scope: !3211)
!3240 = !DILocation(line: 303, column: 11, scope: !3211)
!3241 = !DILocation(line: 303, column: 15, scope: !3211)
!3242 = !DILocation(line: 303, column: 9, scope: !3211)
!3243 = !DILocation(line: 304, column: 39, scope: !3211)
!3244 = !DILocation(line: 304, column: 5, scope: !3211)
!3245 = !DILocation(line: 307, column: 11, scope: !3211)
!3246 = !DILocation(line: 307, column: 9, scope: !3211)
!3247 = !DILocation(line: 308, column: 11, scope: !3211)
!3248 = !DILocation(line: 308, column: 15, scope: !3211)
!3249 = !DILocation(line: 308, column: 9, scope: !3211)
!3250 = !DILocation(line: 309, column: 11, scope: !3211)
!3251 = !DILocation(line: 309, column: 15, scope: !3211)
!3252 = !DILocation(line: 309, column: 9, scope: !3211)
!3253 = !DILocation(line: 310, column: 39, scope: !3211)
!3254 = !DILocation(line: 310, column: 5, scope: !3211)
!3255 = !DILocation(line: 311, column: 19, scope: !3211)
!3256 = !DILocation(line: 312, column: 5, scope: !3211)
!3257 = !DILocation(line: 313, column: 17, scope: !3211)
!3258 = !DILocation(line: 313, column: 33, scope: !3211)
!3259 = !DILocation(line: 313, column: 5, scope: !3211)
!3260 = !DILocation(line: 315, column: 1, scope: !3211)
!3261 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !201, file: !201, line: 323, type: !181, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3262)
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "reg", scope: !3261, file: !201, line: 325, type: !207)
!3264 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3261, file: !201, line: 326, type: !206)
!3265 = !DILocation(line: 325, column: 5, scope: !3261)
!3266 = !DILocation(line: 325, column: 23, scope: !3261)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocation(line: 329, column: 5, scope: !3261)
!3269 = !DILocation(line: 332, column: 11, scope: !3261)
!3270 = !DILocation(line: 332, column: 9, scope: !3261)
!3271 = !DILocation(line: 333, column: 11, scope: !3261)
!3272 = !DILocation(line: 333, column: 15, scope: !3261)
!3273 = !DILocation(line: 333, column: 9, scope: !3261)
!3274 = !DILocation(line: 334, column: 11, scope: !3261)
!3275 = !DILocation(line: 334, column: 9, scope: !3261)
!3276 = !DILocation(line: 335, column: 39, scope: !3261)
!3277 = !DILocation(line: 335, column: 5, scope: !3261)
!3278 = !DILocation(line: 337, column: 5, scope: !3261)
!3279 = !DILocation(line: 337, column: 12, scope: !3261)
!3280 = !DILocation(line: 337, column: 19, scope: !3261)
!3281 = !DILocation(line: 337, column: 16, scope: !3261)
!3282 = distinct !{!3282, !3278, !3283}
!3283 = !DILocation(line: 337, column: 52, scope: !3261)
!3284 = !DILocation(line: 340, column: 11, scope: !3261)
!3285 = !DILocation(line: 340, column: 9, scope: !3261)
!3286 = !DILocation(line: 341, column: 11, scope: !3261)
!3287 = !DILocation(line: 341, column: 15, scope: !3261)
!3288 = !DILocation(line: 341, column: 9, scope: !3261)
!3289 = !DILocation(line: 342, column: 11, scope: !3261)
!3290 = !DILocation(line: 342, column: 15, scope: !3261)
!3291 = !DILocation(line: 342, column: 9, scope: !3261)
!3292 = !DILocation(line: 343, column: 39, scope: !3261)
!3293 = !DILocation(line: 343, column: 5, scope: !3261)
!3294 = !DILocation(line: 344, column: 19, scope: !3261)
!3295 = !DILocation(line: 345, column: 5, scope: !3261)
!3296 = !DILocation(line: 346, column: 17, scope: !3261)
!3297 = !DILocation(line: 346, column: 33, scope: !3261)
!3298 = !DILocation(line: 346, column: 5, scope: !3261)
!3299 = !DILocation(line: 348, column: 1, scope: !3261)
!3300 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !201, file: !201, line: 353, type: !181, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3301)
!3301 = !{!3302, !3303}
!3302 = !DILocalVariable(name: "reg", scope: !3300, file: !201, line: 355, type: !209)
!3303 = !DILocalVariable(name: "pTopCfgHclk", scope: !3300, file: !201, line: 356, type: !208)
!3304 = !DILocation(line: 355, column: 5, scope: !3300)
!3305 = !DILocation(line: 355, column: 21, scope: !3300)
!3306 = !DILocation(line: 0, scope: !3300)
!3307 = !DILocation(line: 358, column: 11, scope: !3300)
!3308 = !DILocation(line: 358, column: 9, scope: !3300)
!3309 = !DILocation(line: 359, column: 11, scope: !3300)
!3310 = !DILocation(line: 359, column: 15, scope: !3300)
!3311 = !DILocation(line: 359, column: 9, scope: !3300)
!3312 = !DILocation(line: 360, column: 11, scope: !3300)
!3313 = !DILocation(line: 360, column: 9, scope: !3300)
!3314 = !DILocation(line: 361, column: 37, scope: !3300)
!3315 = !DILocation(line: 361, column: 5, scope: !3300)
!3316 = !DILocation(line: 362, column: 1, scope: !3300)
!3317 = distinct !DISubprogram(name: "getc", scope: !216, file: !216, line: 68, type: !3318, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!53}
!3320 = !{!3321}
!3321 = !DILocalVariable(name: "rc", scope: !3317, file: !216, line: 71, type: !53)
!3322 = !DILocation(line: 71, column: 14, scope: !3317)
!3323 = !DILocation(line: 0, scope: !3317)
!3324 = !DILocation(line: 72, column: 5, scope: !3317)
!3325 = distinct !DISubprogram(name: "getc_nowait", scope: !216, file: !216, line: 80, type: !3318, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3326)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "c", scope: !3325, file: !216, line: 82, type: !558)
!3328 = !DILocation(line: 84, column: 9, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3325, file: !216, line: 84, column: 9)
!3330 = !DILocation(line: 84, column: 40, scope: !3329)
!3331 = !DILocation(line: 84, column: 9, scope: !3325)
!3332 = !DILocation(line: 85, column: 13, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !216, line: 84, column: 47)
!3334 = !DILocation(line: 86, column: 16, scope: !3333)
!3335 = !DILocation(line: 0, scope: !3325)
!3336 = !DILocation(line: 86, column: 9, scope: !3333)
!3337 = !DILocation(line: 0, scope: !3329)
!3338 = !DILocation(line: 90, column: 1, scope: !3325)
!3339 = distinct !DISubprogram(name: "uart_output_char", scope: !216, file: !216, line: 93, type: !3340, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3343)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3342, !132}
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !219, line: 75, baseType: !218)
!3343 = !{!3344, !3345, !3346}
!3344 = !DILocalVariable(name: "port_no", arg: 1, scope: !3339, file: !216, line: 93, type: !3342)
!3345 = !DILocalVariable(name: "c", arg: 2, scope: !3339, file: !216, line: 93, type: !132)
!3346 = !DILocalVariable(name: "base", scope: !3339, file: !216, line: 95, type: !7)
!3347 = !DILocation(line: 0, scope: !3339)
!3348 = !DILocation(line: 95, column: 25, scope: !3339)
!3349 = !DILocation(line: 97, column: 5, scope: !3339)
!3350 = !DILocation(line: 97, column: 14, scope: !3339)
!3351 = !DILocation(line: 97, column: 42, scope: !3339)
!3352 = !DILocation(line: 97, column: 12, scope: !3339)
!3353 = distinct !{!3353, !3349, !3354}
!3354 = !DILocation(line: 98, column: 9, scope: !3339)
!3355 = !DILocation(line: 99, column: 35, scope: !3339)
!3356 = !DILocation(line: 99, column: 5, scope: !3339)
!3357 = !DILocation(line: 99, column: 33, scope: !3339)
!3358 = !DILocation(line: 102, column: 1, scope: !3339)
!3359 = distinct !DISubprogram(name: "uart_input_char", scope: !216, file: !216, line: 106, type: !3360, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!128, !3342}
!3362 = !{!3363, !3364, !3365}
!3363 = !DILocalVariable(name: "port_no", arg: 1, scope: !3359, file: !216, line: 106, type: !3342)
!3364 = !DILocalVariable(name: "base", scope: !3359, file: !216, line: 108, type: !7)
!3365 = !DILocalVariable(name: "c", scope: !3359, file: !216, line: 109, type: !558)
!3366 = !DILocation(line: 0, scope: !3359)
!3367 = !DILocation(line: 108, column: 25, scope: !3359)
!3368 = !DILocation(line: 111, column: 5, scope: !3359)
!3369 = !DILocation(line: 111, column: 14, scope: !3359)
!3370 = !DILocation(line: 111, column: 42, scope: !3359)
!3371 = !DILocation(line: 111, column: 12, scope: !3359)
!3372 = distinct !{!3372, !3368, !3373}
!3373 = !DILocation(line: 112, column: 9, scope: !3359)
!3374 = !DILocation(line: 114, column: 9, scope: !3359)
!3375 = !DILocation(line: 116, column: 5, scope: !3359)
!3376 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !216, file: !216, line: 120, type: !3377, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!136, !3342}
!3379 = !{!3380, !3381, !3382}
!3380 = !DILocalVariable(name: "port_no", arg: 1, scope: !3376, file: !216, line: 120, type: !3342)
!3381 = !DILocalVariable(name: "base", scope: !3376, file: !216, line: 122, type: !7)
!3382 = !DILocalVariable(name: "c", scope: !3376, file: !216, line: 123, type: !558)
!3383 = !DILocation(line: 0, scope: !3376)
!3384 = !DILocation(line: 122, column: 25, scope: !3376)
!3385 = !DILocation(line: 125, column: 9, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3376, file: !216, line: 125, column: 9)
!3387 = !DILocation(line: 125, column: 37, scope: !3386)
!3388 = !DILocation(line: 125, column: 9, scope: !3376)
!3389 = !DILocation(line: 126, column: 13, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !216, line: 125, column: 44)
!3391 = !DILocation(line: 127, column: 16, scope: !3390)
!3392 = !DILocation(line: 127, column: 9, scope: !3390)
!3393 = !DILocation(line: 0, scope: !3386)
!3394 = !DILocation(line: 131, column: 1, scope: !3376)
!3395 = distinct !DISubprogram(name: "halUART_HWInit", scope: !216, file: !216, line: 136, type: !3396, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !3342}
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "u_port", arg: 1, scope: !3395, file: !216, line: 136, type: !3342)
!3400 = !DILocation(line: 0, scope: !3395)
!3401 = !DILocation(line: 139, column: 5, scope: !3395)
!3402 = !DILocation(line: 140, column: 9, scope: !3395)
!3403 = !DILocation(line: 153, column: 5, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !216, line: 147, column: 38)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !216, line: 147, column: 16)
!3406 = distinct !DILexicalBlock(scope: !3395, file: !216, line: 140, column: 9)
!3407 = !DILocation(line: 0, scope: !3406)
!3408 = !DILocation(line: 155, column: 1, scope: !3395)
!3409 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !216, file: !216, line: 158, type: !3410, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3414)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !3342, !136, !3412, !3412, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 36, baseType: !3413)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 57, baseType: !228)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3430, !3431}
!3415 = !DILocalVariable(name: "u_port", arg: 1, scope: !3409, file: !216, line: 158, type: !3342)
!3416 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3409, file: !216, line: 158, type: !136)
!3417 = !DILocalVariable(name: "databit", arg: 3, scope: !3409, file: !216, line: 158, type: !3412)
!3418 = !DILocalVariable(name: "parity", arg: 4, scope: !3409, file: !216, line: 158, type: !3412)
!3419 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3409, file: !216, line: 158, type: !3412)
!3420 = !DILocalVariable(name: "control_word", scope: !3409, file: !216, line: 160, type: !3412)
!3421 = !DILocalVariable(name: "UART_BASE", scope: !3409, file: !216, line: 161, type: !136)
!3422 = !DILocalVariable(name: "data", scope: !3409, file: !216, line: 162, type: !136)
!3423 = !DILocalVariable(name: "uart_lcr", scope: !3409, file: !216, line: 162, type: !136)
!3424 = !DILocalVariable(name: "high_speed_div", scope: !3409, file: !216, line: 162, type: !136)
!3425 = !DILocalVariable(name: "sample_count", scope: !3409, file: !216, line: 162, type: !136)
!3426 = !DILocalVariable(name: "sample_point", scope: !3409, file: !216, line: 162, type: !136)
!3427 = !DILocalVariable(name: "fraction", scope: !3409, file: !216, line: 162, type: !136)
!3428 = !DILocalVariable(name: "fraction_L_mapping", scope: !3409, file: !216, line: 163, type: !3429)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3412, size: 176, elements: !190)
!3430 = !DILocalVariable(name: "fraction_M_mapping", scope: !3409, file: !216, line: 164, type: !3429)
!3431 = !DILocalVariable(name: "status", scope: !3409, file: !216, line: 165, type: !331)
!3432 = !DILocation(line: 0, scope: !3409)
!3433 = !DILocation(line: 163, column: 15, scope: !3409)
!3434 = !DILocation(line: 164, column: 15, scope: !3409)
!3435 = !DILocation(line: 166, column: 20, scope: !3409)
!3436 = !DILocation(line: 166, column: 18, scope: !3409)
!3437 = !DILocation(line: 168, column: 9, scope: !3409)
!3438 = !DILocation(line: 176, column: 5, scope: !3409)
!3439 = !DILocation(line: 176, column: 44, scope: !3409)
!3440 = !DILocation(line: 177, column: 16, scope: !3409)
!3441 = !DILocation(line: 178, column: 50, scope: !3409)
!3442 = !DILocation(line: 178, column: 38, scope: !3409)
!3443 = !DILocation(line: 179, column: 12, scope: !3409)
!3444 = !DILocation(line: 179, column: 25, scope: !3409)
!3445 = !DILocation(line: 180, column: 28, scope: !3409)
!3446 = !DILocation(line: 180, column: 34, scope: !3409)
!3447 = !DILocation(line: 182, column: 29, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3409, file: !216, line: 181, column: 5)
!3449 = !DILocation(line: 182, column: 46, scope: !3448)
!3450 = !DILocation(line: 183, column: 26, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3448, file: !216, line: 183, column: 13)
!3452 = !DILocation(line: 183, column: 13, scope: !3448)
!3453 = !DILocation(line: 192, column: 30, scope: !3409)
!3454 = !DILocation(line: 192, column: 35, scope: !3409)
!3455 = !DILocation(line: 192, column: 46, scope: !3409)
!3456 = !DILocation(line: 192, column: 74, scope: !3409)
!3457 = !DILocation(line: 192, column: 53, scope: !3409)
!3458 = !DILocation(line: 192, column: 80, scope: !3409)
!3459 = !DILocation(line: 193, column: 56, scope: !3409)
!3460 = !DILocation(line: 193, column: 5, scope: !3409)
!3461 = !DILocation(line: 193, column: 38, scope: !3409)
!3462 = !DILocation(line: 194, column: 57, scope: !3409)
!3463 = !DILocation(line: 194, column: 63, scope: !3409)
!3464 = !DILocation(line: 194, column: 5, scope: !3409)
!3465 = !DILocation(line: 194, column: 38, scope: !3409)
!3466 = !DILocation(line: 195, column: 5, scope: !3409)
!3467 = !DILocation(line: 195, column: 45, scope: !3409)
!3468 = !DILocation(line: 196, column: 5, scope: !3409)
!3469 = !DILocation(line: 196, column: 47, scope: !3409)
!3470 = !DILocation(line: 197, column: 46, scope: !3409)
!3471 = !DILocation(line: 197, column: 5, scope: !3409)
!3472 = !DILocation(line: 197, column: 44, scope: !3409)
!3473 = !DILocation(line: 198, column: 46, scope: !3409)
!3474 = !DILocation(line: 198, column: 5, scope: !3409)
!3475 = !DILocation(line: 198, column: 44, scope: !3409)
!3476 = !DILocation(line: 199, column: 38, scope: !3409)
!3477 = !DILocation(line: 200, column: 5, scope: !3409)
!3478 = !DILocation(line: 200, column: 38, scope: !3409)
!3479 = !DILocation(line: 202, column: 20, scope: !3409)
!3480 = !DILocation(line: 203, column: 18, scope: !3409)
!3481 = !DILocation(line: 205, column: 18, scope: !3409)
!3482 = !DILocation(line: 207, column: 18, scope: !3409)
!3483 = !DILocation(line: 208, column: 18, scope: !3409)
!3484 = !DILocation(line: 209, column: 5, scope: !3409)
!3485 = !DILocation(line: 213, column: 1, scope: !3409)
!3486 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !216, file: !216, line: 215, type: !3487, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3490)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !3342, !331, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!3490 = !{!3491, !3492, !3493}
!3491 = !DILocalVariable(name: "u_port", arg: 1, scope: !3486, file: !216, line: 215, type: !3342)
!3492 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3486, file: !216, line: 215, type: !331)
!3493 = !DILocalVariable(name: "length", arg: 3, scope: !3486, file: !216, line: 215, type: !3489)
!3494 = !DILocation(line: 0, scope: !3486)
!3495 = !DILocation(line: 217, column: 16, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3486, file: !216, line: 217, column: 9)
!3497 = !DILocation(line: 0, scope: !3496)
!3498 = !DILocation(line: 217, column: 9, scope: !3486)
!3499 = !DILocation(line: 218, column: 13, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3496, file: !216, line: 217, column: 31)
!3501 = !DILocation(line: 219, column: 23, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !216, line: 218, column: 20)
!3503 = distinct !DILexicalBlock(scope: !3500, file: !216, line: 218, column: 13)
!3504 = !DILocation(line: 220, column: 9, scope: !3502)
!3505 = !DILocation(line: 221, column: 23, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3503, file: !216, line: 220, column: 16)
!3507 = !DILocation(line: 221, column: 21, scope: !3506)
!3508 = !DILocation(line: 222, column: 24, scope: !3506)
!3509 = !DILocation(line: 222, column: 21, scope: !3506)
!3510 = !DILocation(line: 225, column: 13, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3496, file: !216, line: 224, column: 12)
!3512 = !DILocation(line: 226, column: 23, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !216, line: 225, column: 20)
!3514 = distinct !DILexicalBlock(scope: !3511, file: !216, line: 225, column: 13)
!3515 = !DILocation(line: 227, column: 9, scope: !3513)
!3516 = !DILocation(line: 228, column: 23, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !216, line: 227, column: 16)
!3518 = !DILocation(line: 228, column: 21, scope: !3517)
!3519 = !DILocation(line: 229, column: 24, scope: !3517)
!3520 = !DILocation(line: 229, column: 21, scope: !3517)
!3521 = !DILocation(line: 233, column: 5, scope: !3486)
!3522 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !216, file: !216, line: 236, type: !3523, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3525)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3342, !605, !136}
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DILocalVariable(name: "u_port", arg: 1, scope: !3522, file: !216, line: 236, type: !3342)
!3527 = !DILocalVariable(name: "data", arg: 2, scope: !3522, file: !216, line: 236, type: !605)
!3528 = !DILocalVariable(name: "length", arg: 3, scope: !3522, file: !216, line: 236, type: !136)
!3529 = !DILocalVariable(name: "idx", scope: !3522, file: !216, line: 238, type: !205)
!3530 = !DILocation(line: 0, scope: !3522)
!3531 = !DILocation(line: 239, column: 23, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !216, line: 239, column: 5)
!3533 = distinct !DILexicalBlock(scope: !3522, file: !216, line: 239, column: 5)
!3534 = !DILocation(line: 239, column: 5, scope: !3533)
!3535 = !DILocation(line: 240, column: 13, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3532, file: !216, line: 239, column: 40)
!3537 = !DILocation(line: 244, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !216, line: 242, column: 42)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !216, line: 242, column: 20)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !216, line: 240, column: 13)
!3541 = !DILocation(line: 0, scope: !3540)
!3542 = !DILocation(line: 239, column: 36, scope: !3532)
!3543 = distinct !{!3543, !3534, !3544}
!3544 = !DILocation(line: 246, column: 5, scope: !3533)
!3545 = !DILocation(line: 249, column: 1, scope: !3522)
!3546 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !216, file: !216, line: 251, type: !3547, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3550)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !3342, !3549, !136}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 32)
!3550 = !{!3551, !3552, !3553, !3554}
!3551 = !DILocalVariable(name: "u_port", arg: 1, scope: !3546, file: !216, line: 251, type: !3342)
!3552 = !DILocalVariable(name: "data", arg: 2, scope: !3546, file: !216, line: 251, type: !3549)
!3553 = !DILocalVariable(name: "length", arg: 3, scope: !3546, file: !216, line: 251, type: !136)
!3554 = !DILocalVariable(name: "idx", scope: !3546, file: !216, line: 253, type: !205)
!3555 = !DILocation(line: 0, scope: !3546)
!3556 = !DILocation(line: 254, column: 23, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !216, line: 254, column: 5)
!3558 = distinct !DILexicalBlock(scope: !3546, file: !216, line: 254, column: 5)
!3559 = !DILocation(line: 254, column: 5, scope: !3558)
!3560 = !DILocation(line: 255, column: 13, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !216, line: 254, column: 40)
!3562 = !DILocation(line: 256, column: 61, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !216, line: 255, column: 35)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !216, line: 255, column: 13)
!3565 = !DILocation(line: 256, column: 59, scope: !3563)
!3566 = !DILocation(line: 257, column: 9, scope: !3563)
!3567 = !DILocation(line: 258, column: 61, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !216, line: 257, column: 42)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !216, line: 257, column: 20)
!3570 = !DILocation(line: 258, column: 59, scope: !3568)
!3571 = !DILocation(line: 259, column: 9, scope: !3568)
!3572 = !DILocation(line: 254, column: 36, scope: !3557)
!3573 = distinct !{!3573, !3559, !3574}
!3574 = !DILocation(line: 261, column: 5, scope: !3558)
!3575 = !DILocation(line: 264, column: 1, scope: !3546)
!3576 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !216, file: !216, line: 266, type: !3577, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3342, !605, !136, !136}
!3579 = !{!3580, !3581, !3582, !3583}
!3580 = !DILocalVariable(name: "u_port", arg: 1, scope: !3576, file: !216, line: 266, type: !3342)
!3581 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3576, file: !216, line: 266, type: !605)
!3582 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3576, file: !216, line: 266, type: !136)
!3583 = !DILocalVariable(name: "threshold", arg: 4, scope: !3576, file: !216, line: 266, type: !136)
!3584 = !DILocation(line: 0, scope: !3576)
!3585 = !DILocation(line: 268, column: 9, scope: !3576)
!3586 = !DILocation(line: 274, column: 5, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !216, line: 271, column: 38)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !216, line: 271, column: 16)
!3589 = distinct !DILexicalBlock(scope: !3576, file: !216, line: 268, column: 9)
!3590 = !DILocation(line: 0, scope: !3589)
!3591 = !DILocation(line: 276, column: 1, scope: !3576)
!3592 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !216, file: !216, line: 278, type: !3593, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !3342, !605, !136, !136, !136, !136}
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601}
!3596 = !DILocalVariable(name: "u_port", arg: 1, scope: !3592, file: !216, line: 278, type: !3342)
!3597 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3592, file: !216, line: 278, type: !605)
!3598 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3592, file: !216, line: 278, type: !136)
!3599 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3592, file: !216, line: 278, type: !136)
!3600 = !DILocalVariable(name: "threshold", arg: 5, scope: !3592, file: !216, line: 278, type: !136)
!3601 = !DILocalVariable(name: "timeout", arg: 6, scope: !3592, file: !216, line: 278, type: !136)
!3602 = !DILocation(line: 0, scope: !3592)
!3603 = !DILocation(line: 280, column: 9, scope: !3592)
!3604 = !DILocation(line: 286, column: 5, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !216, line: 283, column: 38)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !216, line: 283, column: 16)
!3607 = distinct !DILexicalBlock(scope: !3592, file: !216, line: 280, column: 9)
!3608 = !DILocation(line: 0, scope: !3607)
!3609 = !DILocation(line: 288, column: 1, scope: !3592)
!3610 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !216, file: !216, line: 290, type: !3611, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !3342, !179}
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "u_port", arg: 1, scope: !3610, file: !216, line: 290, type: !3342)
!3615 = !DILocalVariable(name: "func", arg: 2, scope: !3610, file: !216, line: 290, type: !179)
!3616 = !DILocation(line: 0, scope: !3610)
!3617 = !DILocation(line: 292, column: 9, scope: !3610)
!3618 = !DILocation(line: 296, column: 5, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !216, line: 294, column: 38)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !216, line: 294, column: 16)
!3621 = distinct !DILexicalBlock(scope: !3610, file: !216, line: 292, column: 9)
!3622 = !DILocation(line: 0, scope: !3621)
!3623 = !DILocation(line: 298, column: 1, scope: !3610)
!3624 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !216, file: !216, line: 300, type: !3611, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3625)
!3625 = !{!3626, !3627}
!3626 = !DILocalVariable(name: "u_port", arg: 1, scope: !3624, file: !216, line: 300, type: !3342)
!3627 = !DILocalVariable(name: "func", arg: 2, scope: !3624, file: !216, line: 300, type: !179)
!3628 = !DILocation(line: 0, scope: !3624)
!3629 = !DILocation(line: 302, column: 9, scope: !3624)
!3630 = !DILocation(line: 306, column: 5, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !216, line: 304, column: 38)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !216, line: 304, column: 16)
!3633 = distinct !DILexicalBlock(scope: !3624, file: !216, line: 302, column: 9)
!3634 = !DILocation(line: 0, scope: !3633)
!3635 = !DILocation(line: 308, column: 1, scope: !3624)
!3636 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !216, file: !216, line: 310, type: !3396, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3637)
!3637 = !{!3638, !3639, !3640, !3641}
!3638 = !DILocalVariable(name: "u_port", arg: 1, scope: !3636, file: !216, line: 310, type: !3342)
!3639 = !DILocalVariable(name: "base", scope: !3636, file: !216, line: 312, type: !7)
!3640 = !DILocalVariable(name: "EFR", scope: !3636, file: !216, line: 313, type: !3412)
!3641 = !DILocalVariable(name: "LCR", scope: !3636, file: !216, line: 313, type: !3412)
!3642 = !DILocation(line: 0, scope: !3636)
!3643 = !DILocation(line: 312, column: 25, scope: !3636)
!3644 = !DILocation(line: 315, column: 11, scope: !3636)
!3645 = !DILocation(line: 317, column: 33, scope: !3636)
!3646 = !DILocation(line: 318, column: 11, scope: !3636)
!3647 = !DILocation(line: 320, column: 35, scope: !3636)
!3648 = !DILocation(line: 320, column: 33, scope: !3636)
!3649 = !DILocation(line: 322, column: 5, scope: !3636)
!3650 = !DILocation(line: 322, column: 39, scope: !3636)
!3651 = !DILocation(line: 324, column: 33, scope: !3636)
!3652 = !DILocation(line: 325, column: 5, scope: !3636)
!3653 = !DILocation(line: 325, column: 33, scope: !3636)
!3654 = !DILocation(line: 327, column: 35, scope: !3636)
!3655 = !DILocation(line: 327, column: 33, scope: !3636)
!3656 = !DILocation(line: 328, column: 1, scope: !3636)
!3657 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !216, file: !216, line: 330, type: !3658, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{null, !3342, !128, !128, !128}
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3661 = !DILocalVariable(name: "u_port", arg: 1, scope: !3657, file: !216, line: 330, type: !3342)
!3662 = !DILocalVariable(name: "xon", arg: 2, scope: !3657, file: !216, line: 330, type: !128)
!3663 = !DILocalVariable(name: "xoff", arg: 3, scope: !3657, file: !216, line: 330, type: !128)
!3664 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3657, file: !216, line: 330, type: !128)
!3665 = !DILocalVariable(name: "base", scope: !3657, file: !216, line: 332, type: !7)
!3666 = !DILocalVariable(name: "EFR", scope: !3657, file: !216, line: 333, type: !3412)
!3667 = !DILocalVariable(name: "LCR", scope: !3657, file: !216, line: 333, type: !3412)
!3668 = !DILocation(line: 0, scope: !3657)
!3669 = !DILocation(line: 332, column: 25, scope: !3657)
!3670 = !DILocation(line: 335, column: 11, scope: !3657)
!3671 = !DILocation(line: 337, column: 33, scope: !3657)
!3672 = !DILocation(line: 338, column: 36, scope: !3657)
!3673 = !DILocation(line: 338, column: 5, scope: !3657)
!3674 = !DILocation(line: 338, column: 34, scope: !3657)
!3675 = !DILocation(line: 339, column: 5, scope: !3657)
!3676 = !DILocation(line: 339, column: 34, scope: !3657)
!3677 = !DILocation(line: 340, column: 37, scope: !3657)
!3678 = !DILocation(line: 340, column: 5, scope: !3657)
!3679 = !DILocation(line: 340, column: 35, scope: !3657)
!3680 = !DILocation(line: 341, column: 5, scope: !3657)
!3681 = !DILocation(line: 341, column: 35, scope: !3657)
!3682 = !DILocation(line: 343, column: 11, scope: !3657)
!3683 = !DILocation(line: 345, column: 35, scope: !3657)
!3684 = !DILocation(line: 345, column: 33, scope: !3657)
!3685 = !DILocation(line: 347, column: 35, scope: !3657)
!3686 = !DILocation(line: 347, column: 33, scope: !3657)
!3687 = !DILocation(line: 349, column: 43, scope: !3657)
!3688 = !DILocation(line: 349, column: 5, scope: !3657)
!3689 = !DILocation(line: 349, column: 41, scope: !3657)
!3690 = !DILocation(line: 350, column: 5, scope: !3657)
!3691 = !DILocation(line: 350, column: 39, scope: !3657)
!3692 = !DILocation(line: 351, column: 1, scope: !3657)
!3693 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !216, file: !216, line: 353, type: !3396, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3694)
!3694 = !{!3695, !3696, !3697}
!3695 = !DILocalVariable(name: "u_port", arg: 1, scope: !3693, file: !216, line: 353, type: !3342)
!3696 = !DILocalVariable(name: "base", scope: !3693, file: !216, line: 355, type: !7)
!3697 = !DILocalVariable(name: "LCR", scope: !3693, file: !216, line: 356, type: !3412)
!3698 = !DILocation(line: 0, scope: !3693)
!3699 = !DILocation(line: 355, column: 25, scope: !3693)
!3700 = !DILocation(line: 358, column: 11, scope: !3693)
!3701 = !DILocation(line: 360, column: 33, scope: !3693)
!3702 = !DILocation(line: 362, column: 5, scope: !3693)
!3703 = !DILocation(line: 362, column: 33, scope: !3693)
!3704 = !DILocation(line: 364, column: 33, scope: !3693)
!3705 = !DILocation(line: 366, column: 35, scope: !3693)
!3706 = !DILocation(line: 366, column: 33, scope: !3693)
!3707 = !DILocation(line: 367, column: 1, scope: !3693)
!3708 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !216, file: !216, line: 436, type: !3396, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3709)
!3709 = !{!3710, !3711}
!3710 = !DILocalVariable(name: "u_port", arg: 1, scope: !3708, file: !216, line: 436, type: !3342)
!3711 = !DILocalVariable(name: "base", scope: !3708, file: !216, line: 438, type: !7)
!3712 = !DILocation(line: 0, scope: !3708)
!3713 = !DILocation(line: 438, column: 25, scope: !3708)
!3714 = !DILocation(line: 440, column: 5, scope: !3708)
!3715 = !DILocation(line: 440, column: 33, scope: !3708)
!3716 = !DILocation(line: 441, column: 5, scope: !3708)
!3717 = !DILocation(line: 441, column: 33, scope: !3708)
!3718 = !DILocation(line: 442, column: 5, scope: !3708)
!3719 = !DILocation(line: 442, column: 34, scope: !3708)
!3720 = !DILocation(line: 443, column: 5, scope: !3708)
!3721 = !DILocation(line: 443, column: 35, scope: !3708)
!3722 = !DILocation(line: 445, column: 33, scope: !3708)
!3723 = !DILocation(line: 446, column: 5, scope: !3708)
!3724 = !DILocation(line: 446, column: 33, scope: !3708)
!3725 = !DILocation(line: 447, column: 5, scope: !3708)
!3726 = !DILocation(line: 447, column: 33, scope: !3708)
!3727 = !DILocation(line: 449, column: 33, scope: !3708)
!3728 = !DILocation(line: 450, column: 33, scope: !3708)
!3729 = !DILocation(line: 451, column: 33, scope: !3708)
!3730 = !DILocation(line: 453, column: 33, scope: !3708)
!3731 = !DILocation(line: 454, column: 33, scope: !3708)
!3732 = !DILocation(line: 455, column: 33, scope: !3708)
!3733 = !DILocation(line: 457, column: 33, scope: !3708)
!3734 = !DILocation(line: 458, column: 5, scope: !3708)
!3735 = !DILocation(line: 458, column: 33, scope: !3708)
!3736 = !DILocation(line: 459, column: 5, scope: !3708)
!3737 = !DILocation(line: 459, column: 39, scope: !3708)
!3738 = !DILocation(line: 460, column: 5, scope: !3708)
!3739 = !DILocation(line: 460, column: 40, scope: !3708)
!3740 = !DILocation(line: 461, column: 5, scope: !3708)
!3741 = !DILocation(line: 461, column: 42, scope: !3708)
!3742 = !DILocation(line: 462, column: 5, scope: !3708)
!3743 = !DILocation(line: 462, column: 42, scope: !3708)
!3744 = !DILocation(line: 463, column: 5, scope: !3708)
!3745 = !DILocation(line: 463, column: 35, scope: !3708)
!3746 = !DILocation(line: 464, column: 5, scope: !3708)
!3747 = !DILocation(line: 464, column: 41, scope: !3708)
!3748 = !DILocation(line: 465, column: 5, scope: !3708)
!3749 = !DILocation(line: 465, column: 39, scope: !3708)
!3750 = !DILocation(line: 466, column: 5, scope: !3708)
!3751 = !DILocation(line: 466, column: 38, scope: !3708)
!3752 = !DILocation(line: 467, column: 5, scope: !3708)
!3753 = !DILocation(line: 467, column: 42, scope: !3708)
!3754 = !DILocation(line: 468, column: 5, scope: !3708)
!3755 = !DILocation(line: 468, column: 45, scope: !3708)
!3756 = !DILocation(line: 469, column: 5, scope: !3708)
!3757 = !DILocation(line: 469, column: 39, scope: !3708)
!3758 = !DILocation(line: 470, column: 5, scope: !3708)
!3759 = !DILocation(line: 470, column: 39, scope: !3708)
!3760 = !DILocation(line: 471, column: 5, scope: !3708)
!3761 = !DILocation(line: 471, column: 42, scope: !3708)
!3762 = !DILocation(line: 472, column: 1, scope: !3708)
!3763 = distinct !DISubprogram(name: "uart_query_empty", scope: !216, file: !216, line: 474, type: !3396, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3764)
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "u_port", arg: 1, scope: !3763, file: !216, line: 474, type: !3342)
!3766 = !DILocalVariable(name: "base", scope: !3763, file: !216, line: 476, type: !7)
!3767 = !DILocation(line: 0, scope: !3763)
!3768 = !DILocation(line: 476, column: 25, scope: !3763)
!3769 = !DILocation(line: 478, column: 5, scope: !3763)
!3770 = !DILocation(line: 478, column: 14, scope: !3763)
!3771 = !DILocation(line: 478, column: 42, scope: !3763)
!3772 = !DILocation(line: 478, column: 12, scope: !3763)
!3773 = distinct !{!3773, !3769, !3774}
!3774 = !DILocation(line: 478, column: 50, scope: !3763)
!3775 = !DILocation(line: 479, column: 1, scope: !3763)
!3776 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1111, file: !1111, line: 64, type: !3777, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !760, !53, !760, null}
!3779 = !{!3780, !3781, !3782, !3783, !3792}
!3780 = !DILocalVariable(name: "func", arg: 1, scope: !3776, file: !1111, line: 64, type: !760)
!3781 = !DILocalVariable(name: "line", arg: 2, scope: !3776, file: !1111, line: 64, type: !53)
!3782 = !DILocalVariable(name: "message", arg: 3, scope: !3776, file: !1111, line: 64, type: !760)
!3783 = !DILocalVariable(name: "ap", scope: !3776, file: !1111, line: 66, type: !3784)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3785, line: 46, baseType: !3786)
!3785 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3787, line: 32, baseType: !3788)
!3787 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1111, baseType: !3789)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3790)
!3790 = !{!3791}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3789, file: !1111, line: 66, baseType: !161, size: 32)
!3792 = !DILocalVariable(name: "mask", scope: !3776, file: !1111, line: 68, type: !136)
!3793 = !DILocation(line: 0, scope: !3776)
!3794 = !DILocation(line: 66, column: 5, scope: !3776)
!3795 = !DILocation(line: 66, column: 13, scope: !3776)
!3796 = !DILocation(line: 68, column: 5, scope: !3776)
!3797 = !DILocation(line: 69, column: 5, scope: !3776)
!3798 = !DILocation(line: 71, column: 5, scope: !3776)
!3799 = !DILocation(line: 72, column: 5, scope: !3776)
!3800 = !DILocation(line: 73, column: 5, scope: !3776)
!3801 = !DILocation(line: 75, column: 37, scope: !3776)
!3802 = !DILocation(line: 75, column: 5, scope: !3776)
!3803 = !DILocation(line: 77, column: 1, scope: !3776)
!3804 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1111, file: !1111, line: 78, type: !3777, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3805)
!3805 = !{!3806, !3807, !3808, !3809, !3810}
!3806 = !DILocalVariable(name: "func", arg: 1, scope: !3804, file: !1111, line: 78, type: !760)
!3807 = !DILocalVariable(name: "line", arg: 2, scope: !3804, file: !1111, line: 78, type: !53)
!3808 = !DILocalVariable(name: "message", arg: 3, scope: !3804, file: !1111, line: 78, type: !760)
!3809 = !DILocalVariable(name: "ap", scope: !3804, file: !1111, line: 80, type: !3784)
!3810 = !DILocalVariable(name: "mask", scope: !3804, file: !1111, line: 82, type: !136)
!3811 = !DILocation(line: 0, scope: !3804)
!3812 = !DILocation(line: 80, column: 5, scope: !3804)
!3813 = !DILocation(line: 80, column: 13, scope: !3804)
!3814 = !DILocation(line: 82, column: 5, scope: !3804)
!3815 = !DILocation(line: 83, column: 5, scope: !3804)
!3816 = !DILocation(line: 85, column: 5, scope: !3804)
!3817 = !DILocation(line: 86, column: 5, scope: !3804)
!3818 = !DILocation(line: 87, column: 5, scope: !3804)
!3819 = !DILocation(line: 89, column: 37, scope: !3804)
!3820 = !DILocation(line: 89, column: 5, scope: !3804)
!3821 = !DILocation(line: 91, column: 1, scope: !3804)
!3822 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1111, file: !1111, line: 92, type: !3777, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828}
!3824 = !DILocalVariable(name: "func", arg: 1, scope: !3822, file: !1111, line: 92, type: !760)
!3825 = !DILocalVariable(name: "line", arg: 2, scope: !3822, file: !1111, line: 92, type: !53)
!3826 = !DILocalVariable(name: "message", arg: 3, scope: !3822, file: !1111, line: 92, type: !760)
!3827 = !DILocalVariable(name: "ap", scope: !3822, file: !1111, line: 94, type: !3784)
!3828 = !DILocalVariable(name: "mask", scope: !3822, file: !1111, line: 96, type: !136)
!3829 = !DILocation(line: 0, scope: !3822)
!3830 = !DILocation(line: 94, column: 5, scope: !3822)
!3831 = !DILocation(line: 94, column: 13, scope: !3822)
!3832 = !DILocation(line: 96, column: 5, scope: !3822)
!3833 = !DILocation(line: 97, column: 5, scope: !3822)
!3834 = !DILocation(line: 99, column: 5, scope: !3822)
!3835 = !DILocation(line: 100, column: 5, scope: !3822)
!3836 = !DILocation(line: 101, column: 5, scope: !3822)
!3837 = !DILocation(line: 103, column: 37, scope: !3822)
!3838 = !DILocation(line: 103, column: 5, scope: !3822)
!3839 = !DILocation(line: 105, column: 1, scope: !3822)
!3840 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1111, file: !1111, line: 106, type: !3777, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846}
!3842 = !DILocalVariable(name: "func", arg: 1, scope: !3840, file: !1111, line: 106, type: !760)
!3843 = !DILocalVariable(name: "line", arg: 2, scope: !3840, file: !1111, line: 106, type: !53)
!3844 = !DILocalVariable(name: "message", arg: 3, scope: !3840, file: !1111, line: 106, type: !760)
!3845 = !DILocalVariable(name: "ap", scope: !3840, file: !1111, line: 108, type: !3784)
!3846 = !DILocalVariable(name: "mask", scope: !3840, file: !1111, line: 110, type: !136)
!3847 = !DILocation(line: 0, scope: !3840)
!3848 = !DILocation(line: 108, column: 5, scope: !3840)
!3849 = !DILocation(line: 108, column: 13, scope: !3840)
!3850 = !DILocation(line: 110, column: 5, scope: !3840)
!3851 = !DILocation(line: 111, column: 5, scope: !3840)
!3852 = !DILocation(line: 113, column: 5, scope: !3840)
!3853 = !DILocation(line: 114, column: 5, scope: !3840)
!3854 = !DILocation(line: 115, column: 5, scope: !3840)
!3855 = !DILocation(line: 117, column: 37, scope: !3840)
!3856 = !DILocation(line: 117, column: 5, scope: !3840)
!3857 = !DILocation(line: 119, column: 1, scope: !3840)
!3858 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1111, file: !1111, line: 121, type: !3859, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1110, retainedNodes: !3863)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !760, !53, !760, !3861, !53, null}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3863 = !{!3864, !3865, !3866, !3867, !3868}
!3864 = !DILocalVariable(name: "func", arg: 1, scope: !3858, file: !1111, line: 121, type: !760)
!3865 = !DILocalVariable(name: "line", arg: 2, scope: !3858, file: !1111, line: 121, type: !53)
!3866 = !DILocalVariable(name: "message", arg: 3, scope: !3858, file: !1111, line: 121, type: !760)
!3867 = !DILocalVariable(name: "data", arg: 4, scope: !3858, file: !1111, line: 121, type: !3861)
!3868 = !DILocalVariable(name: "length", arg: 5, scope: !3858, file: !1111, line: 121, type: !53)
!3869 = !DILocation(line: 0, scope: !3858)
!3870 = !DILocation(line: 123, column: 1, scope: !3858)
!3871 = distinct !DISubprogram(name: "hal_cache_init", scope: !236, file: !236, line: 53, type: !3872, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3875)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !239, line: 172, baseType: !238)
!3875 = !{!3876, !3878}
!3876 = !DILocalVariable(name: "region", scope: !3871, file: !236, line: 55, type: !3877)
!3877 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !239, line: 204, baseType: !249)
!3878 = !DILocalVariable(name: "irq_flag", scope: !3871, file: !236, line: 56, type: !136)
!3879 = !DILocation(line: 59, column: 16, scope: !3871)
!3880 = !DILocation(line: 0, scope: !3871)
!3881 = !DILocation(line: 62, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3871, file: !236, line: 62, column: 9)
!3883 = !DILocation(line: 62, column: 9, scope: !3871)
!3884 = !DILocation(line: 64, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !236, line: 62, column: 39)
!3886 = !DILocation(line: 66, column: 9, scope: !3885)
!3887 = !DILocation(line: 69, column: 24, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3882, file: !236, line: 67, column: 12)
!3889 = !DILocation(line: 72, column: 9, scope: !3888)
!3890 = !DILocation(line: 77, column: 5, scope: !3871)
!3891 = !DILocation(line: 80, column: 22, scope: !3871)
!3892 = !DILocation(line: 81, column: 28, scope: !3871)
!3893 = !DILocation(line: 84, column: 19, scope: !3871)
!3894 = !DILocation(line: 85, column: 23, scope: !3871)
!3895 = !DILocation(line: 88, column: 5, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3871, file: !236, line: 88, column: 5)
!3897 = !DILocation(line: 90, column: 9, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !236, line: 88, column: 81)
!3899 = distinct !DILexicalBlock(scope: !3896, file: !236, line: 88, column: 5)
!3900 = !DILocation(line: 90, column: 38, scope: !3898)
!3901 = !DILocation(line: 91, column: 9, scope: !3898)
!3902 = !DILocation(line: 91, column: 42, scope: !3898)
!3903 = !DILocation(line: 94, column: 45, scope: !3898)
!3904 = !DILocation(line: 94, column: 47, scope: !3898)
!3905 = !DILocation(line: 95, column: 49, scope: !3898)
!3906 = !DILocation(line: 95, column: 51, scope: !3898)
!3907 = !DILocation(line: 88, column: 77, scope: !3899)
!3908 = !DILocation(line: 88, column: 46, scope: !3899)
!3909 = distinct !{!3909, !3895, !3910}
!3910 = !DILocation(line: 96, column: 5, scope: !3896)
!3911 = !DILocation(line: 99, column: 1, scope: !3871)
!3912 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !236, file: !236, line: 327, type: !3872, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3913)
!3913 = !{!3914}
!3914 = !DILocalVariable(name: "irq_flag", scope: !3912, file: !236, line: 329, type: !136)
!3915 = !DILocation(line: 332, column: 16, scope: !3912)
!3916 = !DILocation(line: 0, scope: !3912)
!3917 = !DILocation(line: 335, column: 21, scope: !3912)
!3918 = !DILocation(line: 336, column: 21, scope: !3912)
!3919 = !DILocation(line: 339, column: 21, scope: !3912)
!3920 = !DILocation(line: 340, column: 21, scope: !3912)
!3921 = !DILocation(line: 434, column: 3, scope: !3922, inlinedAt: !3924)
!3922 = distinct !DISubprogram(name: "__ISB", scope: !3923, file: !3923, line: 432, type: !181, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1163)
!3923 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gdma_transfer_data_interrupt/GCC")
!3924 = distinct !DILocation(line: 343, column: 5, scope: !3912)
!3925 = !{i64 296584}
!3926 = !DILocation(line: 346, column: 5, scope: !3912)
!3927 = !DILocation(line: 348, column: 5, scope: !3912)
!3928 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !236, file: !236, line: 101, type: !3872, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3929)
!3929 = !{!3930}
!3930 = !DILocalVariable(name: "region", scope: !3928, file: !236, line: 103, type: !3877)
!3931 = !DILocation(line: 107, column: 5, scope: !3928)
!3932 = !DILocation(line: 110, column: 22, scope: !3928)
!3933 = !DILocation(line: 111, column: 28, scope: !3928)
!3934 = !DILocation(line: 114, column: 19, scope: !3928)
!3935 = !DILocation(line: 115, column: 23, scope: !3928)
!3936 = !DILocation(line: 0, scope: !3928)
!3937 = !DILocation(line: 118, column: 5, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3928, file: !236, line: 118, column: 5)
!3939 = !DILocation(line: 120, column: 9, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !236, line: 118, column: 81)
!3941 = distinct !DILexicalBlock(scope: !3938, file: !236, line: 118, column: 5)
!3942 = !DILocation(line: 120, column: 38, scope: !3940)
!3943 = !DILocation(line: 121, column: 9, scope: !3940)
!3944 = !DILocation(line: 121, column: 42, scope: !3940)
!3945 = !DILocation(line: 124, column: 45, scope: !3940)
!3946 = !DILocation(line: 124, column: 47, scope: !3940)
!3947 = !DILocation(line: 125, column: 49, scope: !3940)
!3948 = !DILocation(line: 125, column: 51, scope: !3940)
!3949 = !DILocation(line: 118, column: 77, scope: !3941)
!3950 = !DILocation(line: 118, column: 46, scope: !3941)
!3951 = distinct !{!3951, !3937, !3952}
!3952 = !DILocation(line: 126, column: 5, scope: !3938)
!3953 = !DILocation(line: 129, column: 20, scope: !3928)
!3954 = !DILocation(line: 131, column: 5, scope: !3928)
!3955 = distinct !DISubprogram(name: "hal_cache_enable", scope: !236, file: !236, line: 134, type: !3872, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1163)
!3956 = !DILocation(line: 137, column: 45, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3955, file: !236, line: 137, column: 9)
!3958 = !DILocation(line: 137, column: 28, scope: !3957)
!3959 = !DILocation(line: 137, column: 9, scope: !3955)
!3960 = !DILocation(line: 142, column: 22, scope: !3955)
!3961 = !DILocation(line: 145, column: 28, scope: !3955)
!3962 = !DILocation(line: 145, column: 19, scope: !3955)
!3963 = !DILocation(line: 147, column: 5, scope: !3955)
!3964 = !DILocation(line: 0, scope: !3955)
!3965 = !DILocation(line: 148, column: 1, scope: !3955)
!3966 = distinct !DISubprogram(name: "hal_cache_disable", scope: !236, file: !236, line: 150, type: !3872, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3967)
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "irq_flag", scope: !3966, file: !236, line: 152, type: !136)
!3969 = !DILocation(line: 155, column: 16, scope: !3966)
!3970 = !DILocation(line: 0, scope: !3966)
!3971 = !DILocation(line: 158, column: 16, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3966, file: !236, line: 158, column: 9)
!3973 = !DILocation(line: 158, column: 26, scope: !3972)
!3974 = !DILocation(line: 158, column: 9, scope: !3966)
!3975 = !DILocation(line: 160, column: 9, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !236, line: 158, column: 49)
!3977 = !DILocation(line: 161, column: 5, scope: !3976)
!3978 = !DILocation(line: 164, column: 22, scope: !3966)
!3979 = !DILocation(line: 167, column: 28, scope: !3966)
!3980 = !DILocation(line: 167, column: 19, scope: !3966)
!3981 = !DILocation(line: 170, column: 5, scope: !3966)
!3982 = !DILocation(line: 172, column: 5, scope: !3966)
!3983 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !236, file: !236, line: 175, type: !3984, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3874, !3877}
!3986 = !{!3987}
!3987 = !DILocalVariable(name: "region", arg: 1, scope: !3983, file: !236, line: 175, type: !3877)
!3988 = !DILocation(line: 0, scope: !3983)
!3989 = !DILocation(line: 178, column: 16, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3983, file: !236, line: 178, column: 9)
!3991 = !DILocation(line: 178, column: 9, scope: !3983)
!3992 = !DILocation(line: 183, column: 9, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3983, file: !236, line: 183, column: 9)
!3994 = !DILocation(line: 183, column: 38, scope: !3993)
!3995 = !DILocation(line: 183, column: 9, scope: !3983)
!3996 = !DILocation(line: 184, column: 38, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !236, line: 183, column: 62)
!3998 = !DILocation(line: 184, column: 32, scope: !3997)
!3999 = !DILocation(line: 190, column: 32, scope: !3983)
!4000 = !DILocation(line: 190, column: 23, scope: !3983)
!4001 = !DILocation(line: 192, column: 5, scope: !3983)
!4002 = !DILocation(line: 193, column: 1, scope: !3983)
!4003 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !236, file: !236, line: 195, type: !3984, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4004)
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "region", arg: 1, scope: !4003, file: !236, line: 195, type: !3877)
!4006 = !DILocation(line: 0, scope: !4003)
!4007 = !DILocation(line: 198, column: 16, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !4003, file: !236, line: 198, column: 9)
!4009 = !DILocation(line: 198, column: 9, scope: !4003)
!4010 = !DILocation(line: 203, column: 35, scope: !4003)
!4011 = !DILocation(line: 203, column: 31, scope: !4003)
!4012 = !DILocation(line: 203, column: 28, scope: !4003)
!4013 = !DILocation(line: 206, column: 32, scope: !4003)
!4014 = !DILocation(line: 206, column: 23, scope: !4003)
!4015 = !DILocation(line: 209, column: 41, scope: !4003)
!4016 = !DILocation(line: 209, column: 43, scope: !4003)
!4017 = !DILocation(line: 210, column: 45, scope: !4003)
!4018 = !DILocation(line: 210, column: 47, scope: !4003)
!4019 = !DILocation(line: 212, column: 5, scope: !4003)
!4020 = !DILocation(line: 213, column: 1, scope: !4003)
!4021 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !236, file: !236, line: 215, type: !4022, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4025)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!3874, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !239, line: 182, baseType: !268)
!4025 = !{!4026}
!4026 = !DILocalVariable(name: "cache_size", arg: 1, scope: !4021, file: !236, line: 215, type: !4024)
!4027 = !DILocation(line: 0, scope: !4021)
!4028 = !DILocation(line: 218, column: 20, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4021, file: !236, line: 218, column: 9)
!4030 = !DILocation(line: 218, column: 9, scope: !4021)
!4031 = !DILocation(line: 223, column: 22, scope: !4021)
!4032 = !DILocation(line: 224, column: 37, scope: !4021)
!4033 = !DILocation(line: 224, column: 22, scope: !4021)
!4034 = !DILocation(line: 227, column: 20, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4021, file: !236, line: 227, column: 9)
!4036 = !DILocation(line: 227, column: 9, scope: !4021)
!4037 = !DILocation(line: 228, column: 26, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4035, file: !236, line: 227, column: 43)
!4039 = !DILocation(line: 229, column: 5, scope: !4038)
!4040 = !DILocation(line: 232, column: 28, scope: !4021)
!4041 = !DILocation(line: 232, column: 19, scope: !4021)
!4042 = !DILocation(line: 234, column: 5, scope: !4021)
!4043 = !DILocation(line: 235, column: 1, scope: !4021)
!4044 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !236, file: !236, line: 237, type: !4045, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4054)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!3874, !3877, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 32)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4049)
!4049 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !239, line: 222, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 219, size: 64, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !4050, file: !239, line: 220, baseType: !136, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !4050, file: !239, line: 221, baseType: !136, size: 32, offset: 32)
!4054 = !{!4055, !4056}
!4055 = !DILocalVariable(name: "region", arg: 1, scope: !4044, file: !236, line: 237, type: !3877)
!4056 = !DILocalVariable(name: "region_config", arg: 2, scope: !4044, file: !236, line: 237, type: !4047)
!4057 = !DILocation(line: 0, scope: !4044)
!4058 = !DILocation(line: 240, column: 16, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4044, file: !236, line: 240, column: 9)
!4060 = !DILocation(line: 240, column: 9, scope: !4044)
!4061 = !DILocation(line: 245, column: 23, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4044, file: !236, line: 245, column: 9)
!4063 = !DILocation(line: 245, column: 9, scope: !4044)
!4064 = !DILocation(line: 250, column: 24, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4044, file: !236, line: 250, column: 9)
!4066 = !DILocation(line: 250, column: 45, scope: !4065)
!4067 = !DILocation(line: 250, column: 9, scope: !4044)
!4068 = !DILocation(line: 251, column: 9, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4065, file: !236, line: 250, column: 81)
!4070 = !DILocation(line: 256, column: 24, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4044, file: !236, line: 256, column: 9)
!4072 = !DILocation(line: 256, column: 42, scope: !4071)
!4073 = !DILocation(line: 256, column: 9, scope: !4044)
!4074 = !DILocation(line: 257, column: 9, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4071, file: !236, line: 256, column: 78)
!4076 = !DILocation(line: 262, column: 5, scope: !4044)
!4077 = !DILocation(line: 262, column: 34, scope: !4044)
!4078 = !DILocation(line: 263, column: 55, scope: !4044)
!4079 = !DILocation(line: 263, column: 93, scope: !4044)
!4080 = !DILocation(line: 263, column: 76, scope: !4044)
!4081 = !DILocation(line: 263, column: 5, scope: !4044)
!4082 = !DILocation(line: 263, column: 38, scope: !4044)
!4083 = !DILocation(line: 266, column: 34, scope: !4044)
!4084 = !DILocation(line: 269, column: 45, scope: !4044)
!4085 = !DILocation(line: 269, column: 41, scope: !4044)
!4086 = !DILocation(line: 269, column: 43, scope: !4044)
!4087 = !DILocation(line: 270, column: 49, scope: !4044)
!4088 = !DILocation(line: 270, column: 45, scope: !4044)
!4089 = !DILocation(line: 270, column: 47, scope: !4044)
!4090 = !DILocation(line: 272, column: 5, scope: !4044)
!4091 = !DILocation(line: 273, column: 1, scope: !4044)
!4092 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !236, file: !236, line: 275, type: !4093, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!3874, !136}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "address", arg: 1, scope: !4092, file: !236, line: 275, type: !136)
!4097 = !DILocalVariable(name: "irq_flag", scope: !4092, file: !236, line: 277, type: !136)
!4098 = !DILocation(line: 0, scope: !4092)
!4099 = !DILocation(line: 280, column: 17, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4092, file: !236, line: 280, column: 9)
!4101 = !DILocation(line: 280, column: 9, scope: !4092)
!4102 = !DILocation(line: 284, column: 16, scope: !4092)
!4103 = !DILocation(line: 287, column: 32, scope: !4092)
!4104 = !DILocation(line: 287, column: 21, scope: !4092)
!4105 = !DILocation(line: 288, column: 21, scope: !4092)
!4106 = !DILocation(line: 434, column: 3, scope: !3922, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 291, column: 5, scope: !4092)
!4108 = !DILocation(line: 294, column: 5, scope: !4092)
!4109 = !DILocation(line: 296, column: 5, scope: !4092)
!4110 = !DILocation(line: 297, column: 1, scope: !4092)
!4111 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !236, file: !236, line: 299, type: !4112, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!3874, !136, !136}
!4114 = !{!4115, !4116, !4117, !4118}
!4115 = !DILocalVariable(name: "address", arg: 1, scope: !4111, file: !236, line: 299, type: !136)
!4116 = !DILocalVariable(name: "length", arg: 2, scope: !4111, file: !236, line: 299, type: !136)
!4117 = !DILocalVariable(name: "irq_flag", scope: !4111, file: !236, line: 301, type: !136)
!4118 = !DILocalVariable(name: "end_address", scope: !4111, file: !236, line: 302, type: !136)
!4119 = !DILocation(line: 0, scope: !4111)
!4120 = !DILocation(line: 302, column: 36, scope: !4111)
!4121 = !DILocation(line: 305, column: 47, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4111, file: !236, line: 305, column: 9)
!4123 = !DILocation(line: 310, column: 16, scope: !4111)
!4124 = !DILocation(line: 313, column: 20, scope: !4111)
!4125 = !DILocation(line: 313, column: 5, scope: !4111)
!4126 = !DILocation(line: 314, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4111, file: !236, line: 313, column: 35)
!4128 = !DILocation(line: 315, column: 17, scope: !4127)
!4129 = distinct !{!4129, !4125, !4130}
!4130 = !DILocation(line: 316, column: 5, scope: !4111)
!4131 = !DILocation(line: 434, column: 3, scope: !3922, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 319, column: 5, scope: !4111)
!4133 = !DILocation(line: 322, column: 5, scope: !4111)
!4134 = !DILocation(line: 324, column: 5, scope: !4111)
!4135 = !DILocation(line: 325, column: 1, scope: !4111)
!4136 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !236, file: !236, line: 351, type: !4093, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4137)
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "address", arg: 1, scope: !4136, file: !236, line: 351, type: !136)
!4139 = !DILocalVariable(name: "irq_flag", scope: !4136, file: !236, line: 353, type: !136)
!4140 = !DILocation(line: 0, scope: !4136)
!4141 = !DILocation(line: 356, column: 17, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4136, file: !236, line: 356, column: 9)
!4143 = !DILocation(line: 356, column: 9, scope: !4136)
!4144 = !DILocation(line: 361, column: 16, scope: !4136)
!4145 = !DILocation(line: 364, column: 32, scope: !4136)
!4146 = !DILocation(line: 364, column: 21, scope: !4136)
!4147 = !DILocation(line: 365, column: 21, scope: !4136)
!4148 = !DILocation(line: 434, column: 3, scope: !3922, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 368, column: 5, scope: !4136)
!4150 = !DILocation(line: 371, column: 5, scope: !4136)
!4151 = !DILocation(line: 373, column: 5, scope: !4136)
!4152 = !DILocation(line: 374, column: 1, scope: !4136)
!4153 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !236, file: !236, line: 376, type: !4112, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4154)
!4154 = !{!4155, !4156, !4157, !4158}
!4155 = !DILocalVariable(name: "address", arg: 1, scope: !4153, file: !236, line: 376, type: !136)
!4156 = !DILocalVariable(name: "length", arg: 2, scope: !4153, file: !236, line: 376, type: !136)
!4157 = !DILocalVariable(name: "irq_flag", scope: !4153, file: !236, line: 378, type: !136)
!4158 = !DILocalVariable(name: "end_address", scope: !4153, file: !236, line: 379, type: !136)
!4159 = !DILocation(line: 0, scope: !4153)
!4160 = !DILocation(line: 379, column: 36, scope: !4153)
!4161 = !DILocation(line: 382, column: 47, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4153, file: !236, line: 382, column: 9)
!4163 = !DILocation(line: 387, column: 16, scope: !4153)
!4164 = !DILocation(line: 390, column: 20, scope: !4153)
!4165 = !DILocation(line: 390, column: 5, scope: !4153)
!4166 = !DILocation(line: 391, column: 9, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4153, file: !236, line: 390, column: 35)
!4168 = !DILocation(line: 392, column: 17, scope: !4167)
!4169 = distinct !{!4169, !4165, !4170}
!4170 = !DILocation(line: 393, column: 5, scope: !4153)
!4171 = !DILocation(line: 434, column: 3, scope: !3922, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 396, column: 5, scope: !4153)
!4173 = !DILocation(line: 399, column: 5, scope: !4153)
!4174 = !DILocation(line: 401, column: 5, scope: !4153)
!4175 = !DILocation(line: 402, column: 1, scope: !4153)
!4176 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !236, file: !236, line: 404, type: !3872, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4177)
!4177 = !{!4178}
!4178 = !DILocalVariable(name: "irq_flag", scope: !4176, file: !236, line: 406, type: !136)
!4179 = !DILocation(line: 409, column: 16, scope: !4176)
!4180 = !DILocation(line: 0, scope: !4176)
!4181 = !DILocation(line: 412, column: 21, scope: !4176)
!4182 = !DILocation(line: 413, column: 21, scope: !4176)
!4183 = !DILocation(line: 434, column: 3, scope: !3922, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 416, column: 5, scope: !4176)
!4185 = !DILocation(line: 419, column: 5, scope: !4176)
!4186 = !DILocation(line: 421, column: 5, scope: !4176)
!4187 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !236, file: !236, line: 424, type: !4188, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!126, !136}
!4190 = !{!4191, !4192}
!4191 = !DILocalVariable(name: "address", arg: 1, scope: !4187, file: !236, line: 424, type: !136)
!4192 = !DILocalVariable(name: "region", scope: !4187, file: !236, line: 426, type: !3877)
!4193 = !DILocation(line: 0, scope: !4187)
!4194 = !DILocation(line: 429, column: 18, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4187, file: !236, line: 429, column: 9)
!4196 = !DILocation(line: 429, column: 28, scope: !4195)
!4197 = !DILocation(line: 429, column: 9, scope: !4187)
!4198 = !DILocation(line: 435, column: 20, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !236, line: 435, column: 13)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !236, line: 433, column: 81)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !236, line: 433, column: 5)
!4202 = distinct !DILexicalBlock(scope: !4187, file: !236, line: 433, column: 5)
!4203 = !DILocation(line: 435, column: 41, scope: !4199)
!4204 = !DILocation(line: 435, column: 36, scope: !4199)
!4205 = !DILocation(line: 435, column: 13, scope: !4200)
!4206 = !DILocation(line: 436, column: 30, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !236, line: 436, column: 17)
!4208 = distinct !DILexicalBlock(scope: !4199, file: !236, line: 435, column: 53)
!4209 = !DILocation(line: 436, column: 59, scope: !4207)
!4210 = !DILocation(line: 436, column: 26, scope: !4207)
!4211 = !DILocation(line: 436, column: 85, scope: !4207)
!4212 = !DILocation(line: 436, column: 99, scope: !4207)
!4213 = !DILocation(line: 436, column: 97, scope: !4207)
!4214 = !DILocation(line: 436, column: 17, scope: !4208)
!4215 = !DILocation(line: 433, column: 77, scope: !4201)
!4216 = !DILocation(line: 433, column: 46, scope: !4201)
!4217 = !DILocation(line: 433, column: 5, scope: !4202)
!4218 = distinct !{!4218, !4217, !4219}
!4219 = !DILocation(line: 440, column: 5, scope: !4202)
!4220 = !DILocation(line: 442, column: 1, scope: !4187)
!4221 = distinct !DISubprogram(name: "hal_nvic_init", scope: !319, file: !319, line: 60, type: !4222, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1163)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!4224}
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !322, line: 158, baseType: !321)
!4225 = !DILocation(line: 62, column: 5, scope: !4221)
!4226 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !319, file: !319, line: 65, type: !4227, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!4224, !330}
!4229 = !{!4230, !4231}
!4230 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4226, file: !319, line: 65, type: !330)
!4231 = !DILocalVariable(name: "status", scope: !4226, file: !319, line: 67, type: !4224)
!4232 = !DILocation(line: 0, scope: !4226)
!4233 = !DILocation(line: 69, column: 40, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4226, file: !319, line: 69, column: 9)
!4235 = !DILocation(line: 73, column: 9, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4234, file: !319, line: 72, column: 12)
!4237 = !DILocation(line: 77, column: 5, scope: !4226)
!4238 = !DILocation(line: 78, column: 1, scope: !4226)
!4239 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !335, file: !335, line: 1494, type: !4240, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !173}
!4242 = !{!4243}
!4243 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4239, file: !335, line: 1494, type: !173)
!4244 = !DILocation(line: 0, scope: !4239)
!4245 = !DILocation(line: 1497, column: 91, scope: !4239)
!4246 = !DILocation(line: 1497, column: 61, scope: !4239)
!4247 = !DILocation(line: 1497, column: 40, scope: !4239)
!4248 = !DILocation(line: 1497, column: 3, scope: !4239)
!4249 = !DILocation(line: 1497, column: 46, scope: !4239)
!4250 = !DILocation(line: 1498, column: 1, scope: !4239)
!4251 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !319, file: !319, line: 80, type: !4227, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4252)
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4251, file: !319, line: 80, type: !330)
!4254 = !DILocalVariable(name: "status", scope: !4251, file: !319, line: 82, type: !4224)
!4255 = !DILocation(line: 0, scope: !4251)
!4256 = !DILocation(line: 84, column: 40, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4251, file: !319, line: 84, column: 9)
!4258 = !DILocation(line: 88, column: 9, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4257, file: !319, line: 87, column: 12)
!4260 = !DILocation(line: 92, column: 5, scope: !4251)
!4261 = !DILocation(line: 93, column: 1, scope: !4251)
!4262 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !335, file: !335, line: 1507, type: !4240, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4263)
!4263 = !{!4264}
!4264 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4262, file: !335, line: 1507, type: !173)
!4265 = !DILocation(line: 0, scope: !4262)
!4266 = !DILocation(line: 1509, column: 65, scope: !4262)
!4267 = !DILocation(line: 1509, column: 44, scope: !4262)
!4268 = !DILocation(line: 1509, column: 32, scope: !4262)
!4269 = !DILocation(line: 1509, column: 3, scope: !4262)
!4270 = !DILocation(line: 1509, column: 39, scope: !4262)
!4271 = !DILocation(line: 1510, column: 1, scope: !4262)
!4272 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !319, file: !319, line: 95, type: !4273, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!136, !330}
!4275 = !{!4276, !4277}
!4276 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4272, file: !319, line: 95, type: !330)
!4277 = !DILocalVariable(name: "ret", scope: !4272, file: !319, line: 97, type: !136)
!4278 = !DILocation(line: 0, scope: !4272)
!4279 = !DILocation(line: 99, column: 40, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4272, file: !319, line: 99, column: 9)
!4281 = !DILocation(line: 102, column: 15, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4280, file: !319, line: 101, column: 12)
!4283 = !DILocation(line: 105, column: 5, scope: !4272)
!4284 = !DILocation(line: 106, column: 1, scope: !4272)
!4285 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !335, file: !335, line: 1523, type: !4286, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4288)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!136, !173}
!4288 = !{!4289}
!4289 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4285, file: !335, line: 1523, type: !173)
!4290 = !DILocation(line: 0, scope: !4285)
!4291 = !DILocation(line: 1525, column: 51, scope: !4285)
!4292 = !DILocation(line: 1525, column: 23, scope: !4285)
!4293 = !DILocation(line: 1525, column: 83, scope: !4285)
!4294 = !DILocation(line: 1525, column: 22, scope: !4285)
!4295 = !DILocation(line: 1525, column: 3, scope: !4285)
!4296 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !319, file: !319, line: 108, type: !4227, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4297)
!4297 = !{!4298, !4299}
!4298 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4296, file: !319, line: 108, type: !330)
!4299 = !DILocalVariable(name: "status", scope: !4296, file: !319, line: 110, type: !4224)
!4300 = !DILocation(line: 0, scope: !4296)
!4301 = !DILocation(line: 112, column: 40, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4296, file: !319, line: 112, column: 9)
!4303 = !DILocation(line: 116, column: 9, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4302, file: !319, line: 115, column: 12)
!4305 = !DILocation(line: 120, column: 5, scope: !4296)
!4306 = !DILocation(line: 121, column: 1, scope: !4296)
!4307 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !335, file: !335, line: 1535, type: !4240, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4308)
!4308 = !{!4309}
!4309 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4307, file: !335, line: 1535, type: !173)
!4310 = !DILocation(line: 0, scope: !4307)
!4311 = !DILocation(line: 1537, column: 65, scope: !4307)
!4312 = !DILocation(line: 1537, column: 44, scope: !4307)
!4313 = !DILocation(line: 1537, column: 32, scope: !4307)
!4314 = !DILocation(line: 1537, column: 3, scope: !4307)
!4315 = !DILocation(line: 1537, column: 39, scope: !4307)
!4316 = !DILocation(line: 1538, column: 1, scope: !4307)
!4317 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !319, file: !319, line: 123, type: !4227, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4318)
!4318 = !{!4319, !4320}
!4319 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4317, file: !319, line: 123, type: !330)
!4320 = !DILocalVariable(name: "status", scope: !4317, file: !319, line: 125, type: !4224)
!4321 = !DILocation(line: 0, scope: !4317)
!4322 = !DILocation(line: 127, column: 40, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4317, file: !319, line: 127, column: 9)
!4324 = !DILocation(line: 131, column: 9, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4323, file: !319, line: 130, column: 12)
!4326 = !DILocation(line: 135, column: 5, scope: !4317)
!4327 = !DILocation(line: 136, column: 1, scope: !4317)
!4328 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !335, file: !335, line: 1547, type: !4240, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4329)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4328, file: !335, line: 1547, type: !173)
!4331 = !DILocation(line: 0, scope: !4328)
!4332 = !DILocation(line: 1549, column: 65, scope: !4328)
!4333 = !DILocation(line: 1549, column: 44, scope: !4328)
!4334 = !DILocation(line: 1549, column: 32, scope: !4328)
!4335 = !DILocation(line: 1549, column: 3, scope: !4328)
!4336 = !DILocation(line: 1549, column: 39, scope: !4328)
!4337 = !DILocation(line: 1550, column: 1, scope: !4328)
!4338 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !319, file: !319, line: 138, type: !4339, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!4224, !330, !136}
!4341 = !{!4342, !4343, !4344}
!4342 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4338, file: !319, line: 138, type: !330)
!4343 = !DILocalVariable(name: "priority", arg: 2, scope: !4338, file: !319, line: 138, type: !136)
!4344 = !DILocalVariable(name: "status", scope: !4338, file: !319, line: 140, type: !4224)
!4345 = !DILocation(line: 0, scope: !4338)
!4346 = !DILocation(line: 142, column: 40, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4338, file: !319, line: 142, column: 9)
!4348 = !DILocation(line: 146, column: 9, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4347, file: !319, line: 145, column: 12)
!4350 = !DILocation(line: 150, column: 5, scope: !4338)
!4351 = !DILocation(line: 151, column: 1, scope: !4338)
!4352 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !335, file: !335, line: 1577, type: !4353, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !173, !136}
!4355 = !{!4356, !4357}
!4356 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4352, file: !335, line: 1577, type: !173)
!4357 = !DILocalVariable(name: "priority", arg: 2, scope: !4352, file: !335, line: 1577, type: !136)
!4358 = !DILocation(line: 0, scope: !4352)
!4359 = !DILocation(line: 1582, column: 34, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4361, file: !335, line: 1581, column: 8)
!4361 = distinct !DILexicalBlock(scope: !4352, file: !335, line: 1579, column: 6)
!4362 = !DILocation(line: 1582, column: 5, scope: !4360)
!4363 = !DILocation(line: 1582, column: 32, scope: !4360)
!4364 = !DILocation(line: 1583, column: 1, scope: !4352)
!4365 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !319, file: !319, line: 153, type: !4273, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4366)
!4366 = !{!4367, !4368}
!4367 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4365, file: !319, line: 153, type: !330)
!4368 = !DILocalVariable(name: "ret", scope: !4365, file: !319, line: 155, type: !136)
!4369 = !DILocation(line: 0, scope: !4365)
!4370 = !DILocation(line: 157, column: 40, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4365, file: !319, line: 157, column: 9)
!4372 = !DILocation(line: 160, column: 15, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4371, file: !319, line: 159, column: 12)
!4374 = !DILocation(line: 163, column: 5, scope: !4365)
!4375 = !DILocation(line: 164, column: 1, scope: !4365)
!4376 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !335, file: !335, line: 1597, type: !4286, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4377)
!4377 = !{!4378}
!4378 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4376, file: !335, line: 1597, type: !173)
!4379 = !DILocation(line: 0, scope: !4376)
!4380 = !DILocation(line: 1603, column: 23, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4382, file: !335, line: 1602, column: 8)
!4382 = distinct !DILexicalBlock(scope: !4376, file: !335, line: 1600, column: 6)
!4383 = !DILocation(line: 1603, column: 60, scope: !4381)
!4384 = !DILocation(line: 1604, column: 1, scope: !4376)
!4385 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !319, file: !319, line: 173, type: !181, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1163)
!4386 = !DILocation(line: 175, column: 1, scope: !4385)
!4387 = distinct !DISubprogram(name: "isrC_main", scope: !319, file: !319, line: 178, type: !4222, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4388)
!4388 = !{!4389, !4390}
!4389 = !DILocalVariable(name: "status", scope: !4387, file: !319, line: 180, type: !4224)
!4390 = !DILocalVariable(name: "irq_number", scope: !4387, file: !319, line: 181, type: !330)
!4391 = !DILocation(line: 0, scope: !4387)
!4392 = !DILocation(line: 188, column: 34, scope: !4387)
!4393 = !DILocation(line: 189, column: 24, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4387, file: !319, line: 189, column: 9)
!4395 = !DILocation(line: 192, column: 48, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4394, file: !319, line: 192, column: 16)
!4397 = !DILocation(line: 192, column: 62, scope: !4396)
!4398 = !DILocation(line: 192, column: 16, scope: !4394)
!4399 = !DILocation(line: 194, column: 9, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !319, line: 192, column: 71)
!4401 = !DILocation(line: 195, column: 9, scope: !4400)
!4402 = !DILocation(line: 197, column: 55, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4396, file: !319, line: 196, column: 12)
!4404 = !DILocation(line: 197, column: 41, scope: !4403)
!4405 = !DILocation(line: 197, column: 53, scope: !4403)
!4406 = !DILocation(line: 198, column: 41, scope: !4403)
!4407 = !DILocation(line: 198, column: 9, scope: !4403)
!4408 = !DILocation(line: 202, column: 5, scope: !4387)
!4409 = !DILocation(line: 203, column: 1, scope: !4387)
!4410 = distinct !DISubprogram(name: "get_current_irq", scope: !319, file: !319, line: 166, type: !1195, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4411)
!4411 = !{!4412}
!4412 = !DILocalVariable(name: "irq_num", scope: !4410, file: !319, line: 168, type: !136)
!4413 = !DILocation(line: 168, column: 31, scope: !4410)
!4414 = !DILocation(line: 168, column: 36, scope: !4410)
!4415 = !DILocation(line: 0, scope: !4410)
!4416 = !DILocation(line: 169, column: 21, scope: !4410)
!4417 = !DILocation(line: 169, column: 5, scope: !4410)
!4418 = distinct !DISubprogram(name: "get_pending_irq", scope: !319, file: !319, line: 55, type: !1195, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1163)
!4419 = !DILocation(line: 57, column: 19, scope: !4418)
!4420 = !DILocation(line: 57, column: 51, scope: !4418)
!4421 = !DILocation(line: 57, column: 5, scope: !4418)
!4422 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !319, file: !319, line: 205, type: !4423, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4426)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4224, !330, !4425}
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !322, line: 175, baseType: !412)
!4426 = !{!4427, !4428, !4429}
!4427 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4422, file: !319, line: 205, type: !330)
!4428 = !DILocalVariable(name: "callback", arg: 2, scope: !4422, file: !319, line: 205, type: !4425)
!4429 = !DILocalVariable(name: "mask", scope: !4422, file: !319, line: 207, type: !136)
!4430 = !DILocation(line: 0, scope: !4422)
!4431 = !DILocation(line: 209, column: 24, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4422, file: !319, line: 209, column: 9)
!4433 = !DILocation(line: 213, column: 12, scope: !4422)
!4434 = !DILocation(line: 214, column: 5, scope: !4422)
!4435 = !DILocation(line: 215, column: 37, scope: !4422)
!4436 = !DILocation(line: 215, column: 51, scope: !4422)
!4437 = !DILocation(line: 216, column: 37, scope: !4422)
!4438 = !DILocation(line: 216, column: 49, scope: !4422)
!4439 = !DILocation(line: 217, column: 5, scope: !4422)
!4440 = !DILocation(line: 219, column: 5, scope: !4422)
!4441 = !DILocation(line: 220, column: 1, scope: !4422)
!4442 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !319, file: !319, line: 222, type: !4443, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4224, !3489}
!4445 = !{!4446}
!4446 = !DILocalVariable(name: "mask", arg: 1, scope: !4442, file: !319, line: 222, type: !3489)
!4447 = !DILocation(line: 0, scope: !4442)
!4448 = !DILocation(line: 224, column: 13, scope: !4442)
!4449 = !DILocation(line: 224, column: 11, scope: !4442)
!4450 = !DILocation(line: 225, column: 5, scope: !4442)
!4451 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !319, file: !319, line: 228, type: !4452, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4454)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!4224, !136}
!4454 = !{!4455}
!4455 = !DILocalVariable(name: "mask", arg: 1, scope: !4451, file: !319, line: 228, type: !136)
!4456 = !DILocation(line: 0, scope: !4451)
!4457 = !DILocation(line: 230, column: 5, scope: !4451)
!4458 = !DILocation(line: 231, column: 5, scope: !4451)
!4459 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1113, file: !1113, line: 50, type: !4460, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4464)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4462, !4463, !128}
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1116, line: 238, baseType: !1115)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !431, line: 281, baseType: !617)
!4464 = !{!4465, !4466, !4467}
!4465 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4459, file: !1113, line: 50, type: !4463)
!4466 = !DILocalVariable(name: "function_index", arg: 2, scope: !4459, file: !1113, line: 50, type: !128)
!4467 = !DILocalVariable(name: "ret_value", scope: !4459, file: !1113, line: 52, type: !331)
!4468 = !DILocation(line: 0, scope: !4459)
!4469 = !DILocation(line: 53, column: 18, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4459, file: !1113, line: 53, column: 9)
!4471 = !DILocation(line: 53, column: 9, scope: !4459)
!4472 = !DILocation(line: 57, column: 24, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4459, file: !1113, line: 57, column: 9)
!4474 = !DILocation(line: 57, column: 9, scope: !4459)
!4475 = !DILocation(line: 57, column: 9, scope: !4473)
!4476 = !DILocation(line: 60, column: 17, scope: !4459)
!4477 = !DILocation(line: 61, column: 12, scope: !4459)
!4478 = !DILocation(line: 61, column: 5, scope: !4459)
!4479 = !DILocation(line: 62, column: 1, scope: !4459)
!4480 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1113, file: !1113, line: 64, type: !4481, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4484)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!4483, !4463}
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1116, line: 229, baseType: !1122)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4480, file: !1113, line: 64, type: !4463)
!4486 = !DILocation(line: 0, scope: !4480)
!4487 = !DILocation(line: 66, column: 5, scope: !4480)
!4488 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1113, file: !1113, line: 69, type: !4481, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4489)
!4489 = !{!4490}
!4490 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4488, file: !1113, line: 69, type: !4463)
!4491 = !DILocation(line: 0, scope: !4488)
!4492 = !DILocation(line: 71, column: 5, scope: !4488)
!4493 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1113, file: !1113, line: 74, type: !4494, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4497)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4483, !4463, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 32)
!4497 = !{!4498, !4499, !4500}
!4498 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4493, file: !1113, line: 74, type: !4463)
!4499 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4493, file: !1113, line: 74, type: !4496)
!4500 = !DILocalVariable(name: "status", scope: !4493, file: !1113, line: 76, type: !4501)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1143, line: 67, baseType: !4502)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1143, line: 62, size: 64, elements: !4503)
!4503 = !{!4504, !4505, !4506, !4507}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4502, file: !1143, line: 63, baseType: !136, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4502, file: !1143, line: 64, baseType: !128, size: 8, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4502, file: !1143, line: 65, baseType: !128, size: 8, offset: 40)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4502, file: !1143, line: 66, baseType: !128, size: 8, offset: 48)
!4508 = !DILocation(line: 0, scope: !4493)
!4509 = !DILocation(line: 77, column: 14, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4493, file: !1113, line: 77, column: 9)
!4511 = !DILocation(line: 77, column: 9, scope: !4493)
!4512 = !DILocation(line: 81, column: 18, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4493, file: !1113, line: 81, column: 9)
!4514 = !DILocation(line: 81, column: 9, scope: !4493)
!4515 = !DILocation(line: 85, column: 14, scope: !4493)
!4516 = !DILocation(line: 86, column: 18, scope: !4493)
!4517 = !DILocation(line: 86, column: 16, scope: !4493)
!4518 = !DILocation(line: 87, column: 5, scope: !4493)
!4519 = !DILocation(line: 88, column: 1, scope: !4493)
!4520 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1113, file: !1113, line: 90, type: !4521, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4523)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!4483, !4463, !1149}
!4523 = !{!4524, !4525, !4526}
!4524 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4520, file: !1113, line: 90, type: !4463)
!4525 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4520, file: !1113, line: 90, type: !1149)
!4526 = !DILocalVariable(name: "ret_value", scope: !4520, file: !1113, line: 92, type: !331)
!4527 = !DILocation(line: 0, scope: !4520)
!4528 = !DILocation(line: 93, column: 18, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4520, file: !1113, line: 93, column: 9)
!4530 = !DILocation(line: 93, column: 9, scope: !4520)
!4531 = !DILocation(line: 97, column: 60, scope: !4520)
!4532 = !DILocation(line: 97, column: 17, scope: !4520)
!4533 = !DILocation(line: 98, column: 12, scope: !4520)
!4534 = !DILocation(line: 98, column: 5, scope: !4520)
!4535 = !DILocation(line: 99, column: 1, scope: !4520)
!4536 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1113, file: !1113, line: 101, type: !4494, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4537)
!4537 = !{!4538, !4539, !4540}
!4538 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4536, file: !1113, line: 101, type: !4463)
!4539 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4536, file: !1113, line: 101, type: !4496)
!4540 = !DILocalVariable(name: "status", scope: !4536, file: !1113, line: 103, type: !4501)
!4541 = !DILocation(line: 0, scope: !4536)
!4542 = !DILocation(line: 104, column: 18, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4536, file: !1113, line: 104, column: 9)
!4544 = !DILocation(line: 104, column: 9, scope: !4536)
!4545 = !DILocation(line: 108, column: 14, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4536, file: !1113, line: 108, column: 9)
!4547 = !DILocation(line: 108, column: 9, scope: !4536)
!4548 = !DILocation(line: 112, column: 14, scope: !4536)
!4549 = !DILocation(line: 113, column: 18, scope: !4536)
!4550 = !DILocation(line: 113, column: 16, scope: !4536)
!4551 = !DILocation(line: 114, column: 5, scope: !4536)
!4552 = !DILocation(line: 115, column: 1, scope: !4536)
!4553 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1113, file: !1113, line: 117, type: !4554, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4557)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!4483, !4463, !4556}
!4556 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1116, line: 213, baseType: !1132)
!4557 = !{!4558, !4559, !4560}
!4558 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4553, file: !1113, line: 117, type: !4463)
!4559 = !DILocalVariable(name: "direction", arg: 2, scope: !4553, file: !1113, line: 117, type: !4556)
!4560 = !DILocalVariable(name: "ret_value", scope: !4553, file: !1113, line: 119, type: !331)
!4561 = !DILocation(line: 0, scope: !4553)
!4562 = !DILocation(line: 120, column: 18, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4553, file: !1113, line: 120, column: 9)
!4564 = !DILocation(line: 120, column: 9, scope: !4553)
!4565 = !DILocation(line: 123, column: 17, scope: !4553)
!4566 = !DILocation(line: 125, column: 12, scope: !4553)
!4567 = !DILocation(line: 125, column: 5, scope: !4553)
!4568 = !DILocation(line: 126, column: 1, scope: !4553)
!4569 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1113, file: !1113, line: 128, type: !4570, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4573)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!4483, !4463, !4572}
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 32)
!4573 = !{!4574, !4575, !4576}
!4574 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4569, file: !1113, line: 128, type: !4463)
!4575 = !DILocalVariable(name: "direction", arg: 2, scope: !4569, file: !1113, line: 128, type: !4572)
!4576 = !DILocalVariable(name: "status", scope: !4569, file: !1113, line: 131, type: !4501)
!4577 = !DILocation(line: 0, scope: !4569)
!4578 = !DILocation(line: 132, column: 18, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4569, file: !1113, line: 132, column: 9)
!4580 = !DILocation(line: 132, column: 9, scope: !4569)
!4581 = !DILocation(line: 136, column: 14, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4569, file: !1113, line: 136, column: 9)
!4583 = !DILocation(line: 136, column: 9, scope: !4569)
!4584 = !DILocation(line: 140, column: 14, scope: !4569)
!4585 = !DILocation(line: 141, column: 18, scope: !4569)
!4586 = !DILocation(line: 141, column: 16, scope: !4569)
!4587 = !DILocation(line: 142, column: 5, scope: !4569)
!4588 = !DILocation(line: 143, column: 1, scope: !4569)
!4589 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1113, file: !1113, line: 146, type: !4481, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4590)
!4590 = !{!4591, !4592}
!4591 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4589, file: !1113, line: 146, type: !4463)
!4592 = !DILocalVariable(name: "status", scope: !4589, file: !1113, line: 148, type: !4501)
!4593 = !DILocation(line: 0, scope: !4589)
!4594 = !DILocation(line: 149, column: 18, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4589, file: !1113, line: 149, column: 9)
!4596 = !DILocation(line: 149, column: 9, scope: !4589)
!4597 = !DILocation(line: 153, column: 14, scope: !4589)
!4598 = !DILocation(line: 154, column: 76, scope: !4589)
!4599 = !DILocation(line: 154, column: 12, scope: !4589)
!4600 = !DILocation(line: 154, column: 5, scope: !4589)
!4601 = !DILocation(line: 155, column: 1, scope: !4589)
!4602 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1113, file: !1113, line: 157, type: !4481, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4603)
!4603 = !{!4604, !4605}
!4604 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4602, file: !1113, line: 157, type: !4463)
!4605 = !DILocalVariable(name: "ret_value", scope: !4602, file: !1113, line: 159, type: !331)
!4606 = !DILocation(line: 0, scope: !4602)
!4607 = !DILocation(line: 160, column: 18, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4602, file: !1113, line: 160, column: 9)
!4609 = !DILocation(line: 160, column: 9, scope: !4602)
!4610 = !DILocation(line: 164, column: 17, scope: !4602)
!4611 = !DILocation(line: 165, column: 19, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4602, file: !1113, line: 165, column: 9)
!4613 = !DILocation(line: 165, column: 9, scope: !4602)
!4614 = !DILocation(line: 168, column: 17, scope: !4602)
!4615 = !DILocation(line: 169, column: 12, scope: !4602)
!4616 = !DILocation(line: 169, column: 5, scope: !4602)
!4617 = !DILocation(line: 170, column: 1, scope: !4602)
!4618 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1113, file: !1113, line: 172, type: !4481, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4619)
!4619 = !{!4620, !4621}
!4620 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4618, file: !1113, line: 172, type: !4463)
!4621 = !DILocalVariable(name: "ret_value", scope: !4618, file: !1113, line: 174, type: !331)
!4622 = !DILocation(line: 0, scope: !4618)
!4623 = !DILocation(line: 175, column: 18, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4618, file: !1113, line: 175, column: 9)
!4625 = !DILocation(line: 175, column: 9, scope: !4618)
!4626 = !DILocation(line: 179, column: 17, scope: !4618)
!4627 = !DILocation(line: 180, column: 19, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4618, file: !1113, line: 180, column: 9)
!4629 = !DILocation(line: 180, column: 9, scope: !4618)
!4630 = !DILocation(line: 183, column: 17, scope: !4618)
!4631 = !DILocation(line: 184, column: 12, scope: !4618)
!4632 = !DILocation(line: 184, column: 5, scope: !4618)
!4633 = !DILocation(line: 185, column: 1, scope: !4618)
!4634 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1113, file: !1113, line: 187, type: !4481, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4635)
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4634, file: !1113, line: 187, type: !4463)
!4637 = !DILocalVariable(name: "ret_value", scope: !4634, file: !1113, line: 189, type: !331)
!4638 = !DILocation(line: 0, scope: !4634)
!4639 = !DILocation(line: 191, column: 18, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4634, file: !1113, line: 191, column: 9)
!4641 = !DILocation(line: 191, column: 9, scope: !4634)
!4642 = !DILocation(line: 195, column: 17, scope: !4634)
!4643 = !DILocation(line: 196, column: 12, scope: !4634)
!4644 = !DILocation(line: 196, column: 5, scope: !4634)
!4645 = !DILocation(line: 197, column: 1, scope: !4634)
!4646 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1113, file: !1113, line: 200, type: !4647, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4649)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!4483, !4463, !1150}
!4649 = !{!4650, !4651, !4652}
!4650 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4646, file: !1113, line: 200, type: !4463)
!4651 = !DILocalVariable(name: "driving", arg: 2, scope: !4646, file: !1113, line: 200, type: !1150)
!4652 = !DILocalVariable(name: "ret_value", scope: !4646, file: !1113, line: 202, type: !331)
!4653 = !DILocation(line: 0, scope: !4646)
!4654 = !DILocation(line: 204, column: 18, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4646, file: !1113, line: 204, column: 9)
!4656 = !DILocation(line: 204, column: 9, scope: !4646)
!4657 = !DILocation(line: 208, column: 64, scope: !4646)
!4658 = !DILocation(line: 208, column: 17, scope: !4646)
!4659 = !DILocation(line: 210, column: 12, scope: !4646)
!4660 = !DILocation(line: 210, column: 5, scope: !4646)
!4661 = !DILocation(line: 211, column: 1, scope: !4646)
!4662 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1113, file: !1113, line: 214, type: !4663, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1112, retainedNodes: !4666)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!4483, !4463, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 32)
!4666 = !{!4667, !4668, !4669, !4670}
!4667 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4662, file: !1113, line: 214, type: !4463)
!4668 = !DILocalVariable(name: "driving", arg: 2, scope: !4662, file: !1113, line: 214, type: !4665)
!4669 = !DILocalVariable(name: "ret_value", scope: !4662, file: !1113, line: 216, type: !331)
!4670 = !DILocalVariable(name: "value", scope: !4662, file: !1113, line: 217, type: !128)
!4671 = !DILocation(line: 0, scope: !4662)
!4672 = !DILocation(line: 217, column: 5, scope: !4662)
!4673 = !DILocation(line: 219, column: 18, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4662, file: !1113, line: 219, column: 9)
!4675 = !DILocation(line: 219, column: 9, scope: !4662)
!4676 = !DILocation(line: 223, column: 17, scope: !4662)
!4677 = !DILocation(line: 225, column: 44, scope: !4662)
!4678 = !DILocation(line: 225, column: 16, scope: !4662)
!4679 = !DILocation(line: 225, column: 14, scope: !4662)
!4680 = !DILocation(line: 227, column: 12, scope: !4662)
!4681 = !DILocation(line: 227, column: 5, scope: !4662)
!4682 = !DILocation(line: 228, column: 1, scope: !4662)
!4683 = distinct !DISubprogram(name: "hal_gdma_init", scope: !421, file: !421, line: 101, type: !4684, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4686)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!452, !453}
!4686 = !{!4687, !4688}
!4687 = !DILocalVariable(name: "channel", arg: 1, scope: !4683, file: !421, line: 101, type: !453)
!4688 = !DILocalVariable(name: "channel_used", scope: !4683, file: !421, line: 103, type: !128)
!4689 = !DILocation(line: 0, scope: !4683)
!4690 = !DILocation(line: 104, column: 10, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4683, file: !421, line: 104, column: 9)
!4692 = !DILocation(line: 104, column: 9, scope: !4683)
!4693 = !DILocation(line: 105, column: 9, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4691, file: !421, line: 104, column: 46)
!4695 = !DILocation(line: 106, column: 9, scope: !4694)
!4696 = !DILocation(line: 116, column: 13, scope: !4683)
!4697 = !DILocation(line: 116, column: 12, scope: !4683)
!4698 = !DILocation(line: 116, column: 5, scope: !4683)
!4699 = !DILocation(line: 117, column: 41, scope: !4683)
!4700 = !DILocation(line: 117, column: 20, scope: !4683)
!4701 = !DILocation(line: 118, column: 14, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4683, file: !421, line: 118, column: 9)
!4703 = !DILocation(line: 122, column: 1, scope: !4683)
!4704 = distinct !DISubprogram(name: "hal_gdma_is_channel_vaild", scope: !421, file: !421, line: 59, type: !4705, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!126, !453}
!4707 = !{!4708}
!4708 = !DILocalVariable(name: "channel", arg: 1, scope: !4704, file: !421, line: 59, type: !453)
!4709 = !DILocation(line: 0, scope: !4704)
!4710 = !DILocation(line: 61, column: 20, scope: !4704)
!4711 = !DILocation(line: 61, column: 5, scope: !4704)
!4712 = distinct !DISubprogram(name: "hal_gdma_deinit", scope: !421, file: !421, line: 124, type: !4684, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4713)
!4713 = !{!4714}
!4714 = !DILocalVariable(name: "channel", arg: 1, scope: !4712, file: !421, line: 124, type: !453)
!4715 = !DILocation(line: 0, scope: !4712)
!4716 = !DILocation(line: 127, column: 10, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4712, file: !421, line: 127, column: 9)
!4718 = !DILocation(line: 127, column: 9, scope: !4712)
!4719 = !DILocation(line: 128, column: 9, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4717, file: !421, line: 127, column: 46)
!4721 = !DILocation(line: 129, column: 9, scope: !4720)
!4722 = !DILocation(line: 137, column: 26, scope: !4712)
!4723 = !DILocation(line: 137, column: 5, scope: !4712)
!4724 = !DILocation(line: 138, column: 13, scope: !4712)
!4725 = !DILocation(line: 138, column: 12, scope: !4712)
!4726 = !DILocation(line: 138, column: 5, scope: !4712)
!4727 = !DILocation(line: 139, column: 5, scope: !4712)
!4728 = !DILocation(line: 140, column: 1, scope: !4712)
!4729 = !DILocation(line: 0, scope: !449)
!4730 = !DILocation(line: 147, column: 5, scope: !449)
!4731 = !DILocation(line: 147, column: 15, scope: !449)
!4732 = !DILocation(line: 148, column: 5, scope: !449)
!4733 = !DILocation(line: 148, column: 14, scope: !449)
!4734 = !DILocation(line: 150, column: 5, scope: !449)
!4735 = !DILocation(line: 150, column: 20, scope: !449)
!4736 = !DILocation(line: 153, column: 10, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !449, file: !421, line: 153, column: 9)
!4738 = !DILocation(line: 153, column: 9, scope: !449)
!4739 = !DILocation(line: 154, column: 9, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4737, file: !421, line: 153, column: 46)
!4741 = !DILocation(line: 155, column: 9, scope: !4740)
!4742 = !DILocation(line: 157, column: 52, scope: !449)
!4743 = !DILocation(line: 157, column: 14, scope: !449)
!4744 = !DILocation(line: 159, column: 24, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !449, file: !421, line: 159, column: 9)
!4746 = !DILocation(line: 159, column: 9, scope: !449)
!4747 = !DILocation(line: 160, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !421, line: 159, column: 35)
!4749 = !DILocation(line: 161, column: 9, scope: !4748)
!4750 = !DILocation(line: 163, column: 21, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !449, file: !421, line: 163, column: 9)
!4752 = !DILocation(line: 163, column: 9, scope: !449)
!4753 = !DILocation(line: 168, column: 30, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !449, file: !421, line: 168, column: 9)
!4755 = !DILocation(line: 168, column: 76, scope: !4754)
!4756 = !DILocation(line: 168, column: 9, scope: !449)
!4757 = !DILocation(line: 173, column: 25, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !449, file: !421, line: 173, column: 9)
!4759 = !DILocation(line: 173, column: 71, scope: !4758)
!4760 = !DILocation(line: 173, column: 9, scope: !449)
!4761 = !DILocation(line: 184, column: 10, scope: !449)
!4762 = !DILocation(line: 184, column: 18, scope: !449)
!4763 = !DILocation(line: 185, column: 10, scope: !449)
!4764 = !DILocation(line: 185, column: 18, scope: !449)
!4765 = !DILocation(line: 187, column: 12, scope: !449)
!4766 = !DILocation(line: 192, column: 11, scope: !449)
!4767 = !DILocation(line: 192, column: 16, scope: !449)
!4768 = !DILocation(line: 193, column: 11, scope: !449)
!4769 = !DILocation(line: 193, column: 16, scope: !449)
!4770 = !DILocation(line: 194, column: 19, scope: !449)
!4771 = !DILocation(line: 194, column: 11, scope: !449)
!4772 = !DILocation(line: 194, column: 17, scope: !449)
!4773 = !DILocation(line: 195, column: 11, scope: !449)
!4774 = !DILocation(line: 195, column: 16, scope: !449)
!4775 = !DILocation(line: 197, column: 16, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !449, file: !421, line: 197, column: 9)
!4777 = !DILocation(line: 197, column: 9, scope: !449)
!4778 = !DILocation(line: 198, column: 15, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4776, file: !421, line: 197, column: 22)
!4780 = !DILocation(line: 198, column: 24, scope: !4779)
!4781 = !DILocation(line: 204, column: 5, scope: !449)
!4782 = !DILocation(line: 205, column: 5, scope: !449)
!4783 = !DILocation(line: 206, column: 1, scope: !449)
!4784 = distinct !DISubprogram(name: "hal_gdma_calc_size", scope: !421, file: !421, line: 64, type: !4785, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4787)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!445, !136, !136, !136, !3489}
!4787 = !{!4788, !4789, !4790, !4791}
!4788 = !DILocalVariable(name: "src_addr", arg: 1, scope: !4784, file: !421, line: 64, type: !136)
!4789 = !DILocalVariable(name: "dest_addr", arg: 2, scope: !4784, file: !421, line: 65, type: !136)
!4790 = !DILocalVariable(name: "length", arg: 3, scope: !4784, file: !421, line: 66, type: !136)
!4791 = !DILocalVariable(name: "count", arg: 4, scope: !4784, file: !421, line: 67, type: !3489)
!4792 = !DILocation(line: 0, scope: !4784)
!4793 = !DILocation(line: 70, column: 13, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4784, file: !421, line: 69, column: 9)
!4795 = !DILocation(line: 72, column: 25, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4794, file: !421, line: 71, column: 37)
!4797 = !DILocation(line: 73, column: 9, scope: !4796)
!4798 = !DILocation(line: 75, column: 16, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4794, file: !421, line: 74, column: 16)
!4800 = !DILocation(line: 0, scope: !4794)
!4801 = !DILocation(line: 83, column: 1, scope: !4784)
!4802 = distinct !DISubprogram(name: "hal_gdma1_callback", scope: !421, file: !421, line: 85, type: !181, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1163)
!4803 = !DILocation(line: 87, column: 44, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4802, file: !421, line: 87, column: 9)
!4805 = !DILocation(line: 87, column: 14, scope: !4804)
!4806 = !DILocation(line: 87, column: 9, scope: !4802)
!4807 = !DILocation(line: 89, column: 72, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !421, line: 87, column: 54)
!4809 = !DILocation(line: 88, column: 9, scope: !4808)
!4810 = !DILocation(line: 90, column: 5, scope: !4808)
!4811 = !DILocation(line: 91, column: 1, scope: !4802)
!4812 = distinct !DISubprogram(name: "hal_gdma2_callback", scope: !421, file: !421, line: 93, type: !181, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !1163)
!4813 = !DILocation(line: 95, column: 44, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4812, file: !421, line: 95, column: 9)
!4815 = !DILocation(line: 95, column: 14, scope: !4814)
!4816 = !DILocation(line: 95, column: 9, scope: !4812)
!4817 = !DILocation(line: 97, column: 72, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !421, line: 95, column: 54)
!4819 = !DILocation(line: 96, column: 9, scope: !4818)
!4820 = !DILocation(line: 98, column: 5, scope: !4818)
!4821 = !DILocation(line: 99, column: 1, scope: !4812)
!4822 = !DILocation(line: 0, scope: !481)
!4823 = !DILocation(line: 213, column: 5, scope: !481)
!4824 = !DILocation(line: 213, column: 15, scope: !481)
!4825 = !DILocation(line: 214, column: 5, scope: !481)
!4826 = !DILocation(line: 214, column: 14, scope: !481)
!4827 = !DILocation(line: 216, column: 5, scope: !481)
!4828 = !DILocation(line: 216, column: 20, scope: !481)
!4829 = !DILocation(line: 219, column: 10, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !481, file: !421, line: 219, column: 9)
!4831 = !DILocation(line: 219, column: 9, scope: !481)
!4832 = !DILocation(line: 220, column: 9, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !421, line: 219, column: 46)
!4834 = !DILocation(line: 221, column: 9, scope: !4833)
!4835 = !DILocation(line: 223, column: 52, scope: !481)
!4836 = !DILocation(line: 223, column: 14, scope: !481)
!4837 = !DILocation(line: 224, column: 24, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !481, file: !421, line: 224, column: 9)
!4839 = !DILocation(line: 224, column: 9, scope: !481)
!4840 = !DILocation(line: 225, column: 9, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !421, line: 224, column: 35)
!4842 = !DILocation(line: 226, column: 9, scope: !4841)
!4843 = !DILocation(line: 228, column: 21, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !481, file: !421, line: 228, column: 9)
!4845 = !DILocation(line: 228, column: 9, scope: !481)
!4846 = !DILocation(line: 233, column: 30, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !481, file: !421, line: 233, column: 9)
!4848 = !DILocation(line: 233, column: 76, scope: !4847)
!4849 = !DILocation(line: 233, column: 9, scope: !481)
!4850 = !DILocation(line: 238, column: 25, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !481, file: !421, line: 238, column: 9)
!4852 = !DILocation(line: 238, column: 71, scope: !4851)
!4853 = !DILocation(line: 238, column: 9, scope: !481)
!4854 = !DILocation(line: 249, column: 10, scope: !481)
!4855 = !DILocation(line: 249, column: 18, scope: !481)
!4856 = !DILocation(line: 250, column: 10, scope: !481)
!4857 = !DILocation(line: 250, column: 18, scope: !481)
!4858 = !DILocation(line: 252, column: 12, scope: !481)
!4859 = !DILocation(line: 257, column: 11, scope: !481)
!4860 = !DILocation(line: 257, column: 16, scope: !481)
!4861 = !DILocation(line: 258, column: 11, scope: !481)
!4862 = !DILocation(line: 258, column: 16, scope: !481)
!4863 = !DILocation(line: 259, column: 19, scope: !481)
!4864 = !DILocation(line: 259, column: 11, scope: !481)
!4865 = !DILocation(line: 259, column: 17, scope: !481)
!4866 = !DILocation(line: 260, column: 11, scope: !481)
!4867 = !DILocation(line: 260, column: 16, scope: !481)
!4868 = !DILocation(line: 261, column: 11, scope: !481)
!4869 = !DILocation(line: 261, column: 20, scope: !481)
!4870 = !DILocation(line: 262, column: 5, scope: !481)
!4871 = !DILocation(line: 263, column: 5, scope: !481)
!4872 = !DILocation(line: 263, column: 12, scope: !481)
!4873 = distinct !{!4873, !4871, !4874}
!4874 = !DILocation(line: 263, column: 42, scope: !481)
!4875 = !DILocation(line: 265, column: 1, scope: !481)
!4876 = distinct !DISubprogram(name: "hal_gdma_register_callback", scope: !421, file: !421, line: 267, type: !4877, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4879)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!452, !453, !497, !161}
!4879 = !{!4880, !4881, !4882}
!4880 = !DILocalVariable(name: "channel", arg: 1, scope: !4876, file: !421, line: 267, type: !453)
!4881 = !DILocalVariable(name: "callback", arg: 2, scope: !4876, file: !421, line: 268, type: !497)
!4882 = !DILocalVariable(name: "user_data", arg: 3, scope: !4876, file: !421, line: 269, type: !161)
!4883 = !DILocation(line: 0, scope: !4876)
!4884 = !DILocation(line: 271, column: 10, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4876, file: !421, line: 271, column: 9)
!4886 = !DILocation(line: 271, column: 9, scope: !4876)
!4887 = !DILocation(line: 272, column: 9, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4885, file: !421, line: 271, column: 46)
!4889 = !DILocation(line: 273, column: 9, scope: !4888)
!4890 = !DILocation(line: 275, column: 38, scope: !4876)
!4891 = !DILocation(line: 275, column: 47, scope: !4876)
!4892 = !DILocation(line: 276, column: 38, scope: !4876)
!4893 = !DILocation(line: 276, column: 48, scope: !4876)
!4894 = !DILocation(line: 277, column: 5, scope: !4876)
!4895 = !DILocation(line: 278, column: 1, scope: !4876)
!4896 = distinct !DISubprogram(name: "hal_gdma_get_running_status", scope: !421, file: !421, line: 280, type: !4897, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4901)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!452, !453, !4899}
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gdma_running_status_t", file: !424, line: 211, baseType: !440)
!4901 = !{!4902, !4903}
!4902 = !DILocalVariable(name: "channel", arg: 1, scope: !4896, file: !421, line: 280, type: !453)
!4903 = !DILocalVariable(name: "running_status", arg: 2, scope: !4896, file: !421, line: 280, type: !4899)
!4904 = !DILocation(line: 0, scope: !4896)
!4905 = !DILocation(line: 285, column: 10, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4896, file: !421, line: 285, column: 9)
!4907 = !DILocation(line: 285, column: 9, scope: !4896)
!4908 = !DILocation(line: 286, column: 9, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4906, file: !421, line: 285, column: 46)
!4910 = !DILocation(line: 287, column: 9, scope: !4909)
!4911 = !DILocation(line: 290, column: 9, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4896, file: !421, line: 290, column: 9)
!4913 = !DILocation(line: 290, column: 9, scope: !4896)
!4914 = !DILocation(line: 0, scope: !4912)
!4915 = !DILocation(line: 295, column: 5, scope: !4896)
!4916 = !DILocation(line: 296, column: 1, scope: !4896)
!4917 = distinct !DISubprogram(name: "hal_gdma_stop", scope: !421, file: !421, line: 299, type: !4684, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4918)
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "channel", arg: 1, scope: !4917, file: !421, line: 299, type: !453)
!4920 = !DILocalVariable(name: "index", scope: !4917, file: !421, line: 301, type: !128)
!4921 = !DILocation(line: 0, scope: !4917)
!4922 = !DILocation(line: 303, column: 10, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4917, file: !421, line: 303, column: 9)
!4924 = !DILocation(line: 303, column: 9, scope: !4917)
!4925 = !DILocation(line: 304, column: 9, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4923, file: !421, line: 303, column: 46)
!4927 = !DILocation(line: 305, column: 9, scope: !4926)
!4928 = !DILocation(line: 308, column: 13, scope: !4917)
!4929 = !DILocation(line: 310, column: 5, scope: !4917)
!4930 = !DILocation(line: 317, column: 5, scope: !4917)
!4931 = !DILocation(line: 319, column: 1, scope: !4917)
!4932 = distinct !DISubprogram(name: "hal_uart_init", scope: !506, file: !506, line: 234, type: !4933, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !4937)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!4935, !565, !4936}
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !509, line: 351, baseType: !508)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 32)
!4937 = !{!4938, !4939}
!4938 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4932, file: !506, line: 234, type: !565)
!4939 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4932, file: !506, line: 234, type: !4936)
!4940 = !DILocation(line: 0, scope: !4932)
!4941 = !DILocation(line: 236, column: 10, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4932, file: !506, line: 236, column: 9)
!4943 = !DILocation(line: 236, column: 9, scope: !4932)
!4944 = !DILocation(line: 239, column: 41, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4932, file: !506, line: 239, column: 9)
!4946 = !DILocation(line: 239, column: 9, scope: !4932)
!4947 = !DILocation(line: 242, column: 5, scope: !4932)
!4948 = !DILocation(line: 243, column: 45, scope: !4932)
!4949 = !DILocation(line: 243, column: 12, scope: !4932)
!4950 = !DILocation(line: 244, column: 12, scope: !4932)
!4951 = !DILocation(line: 243, column: 5, scope: !4932)
!4952 = !DILocation(line: 245, column: 58, scope: !4932)
!4953 = !DILocation(line: 246, column: 30, scope: !4932)
!4954 = !{i32 0, i32 2}
!4955 = !DILocation(line: 246, column: 5, scope: !4932)
!4956 = !DILocation(line: 247, column: 5, scope: !4932)
!4957 = !DILocation(line: 249, column: 31, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4932, file: !506, line: 249, column: 9)
!4959 = !DILocation(line: 249, column: 28, scope: !4958)
!4960 = !DILocation(line: 261, column: 1, scope: !4932)
!4961 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !506, file: !506, line: 93, type: !4962, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !4966)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!126, !565, !4964}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 32)
!4965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4961, file: !506, line: 93, type: !565)
!4968 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4961, file: !506, line: 93, type: !4964)
!4969 = !DILocation(line: 0, scope: !4961)
!4970 = !DILocation(line: 95, column: 10, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4961, file: !506, line: 95, column: 9)
!4972 = !DILocation(line: 95, column: 9, scope: !4961)
!4973 = !DILocation(line: 101, column: 23, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4961, file: !506, line: 101, column: 9)
!4975 = !DILocation(line: 101, column: 32, scope: !4974)
!4976 = !DILocation(line: 101, column: 60, scope: !4974)
!4977 = !DILocation(line: 102, column: 27, scope: !4974)
!4978 = !DILocation(line: 102, column: 34, scope: !4974)
!4979 = !DILocation(line: 102, column: 58, scope: !4974)
!4980 = !DILocation(line: 103, column: 27, scope: !4974)
!4981 = !DILocation(line: 103, column: 36, scope: !4974)
!4982 = !DILocation(line: 103, column: 59, scope: !4974)
!4983 = !DILocation(line: 104, column: 27, scope: !4974)
!4984 = !DILocation(line: 104, column: 39, scope: !4974)
!4985 = !DILocation(line: 101, column: 9, scope: !4961)
!4986 = !DILocation(line: 109, column: 1, scope: !4961)
!4987 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !506, file: !506, line: 139, type: !4988, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!3342, !565}
!4990 = !{!4991}
!4991 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4987, file: !506, line: 139, type: !565)
!4992 = !DILocation(line: 0, scope: !4987)
!4993 = !DILocation(line: 141, column: 24, scope: !4987)
!4994 = !DILocation(line: 141, column: 12, scope: !4987)
!4995 = !DILocation(line: 141, column: 5, scope: !4987)
!4996 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !506, file: !506, line: 593, type: !4997, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !4999)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!4935, !565, !4964}
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4996, file: !506, line: 593, type: !565)
!5001 = !DILocalVariable(name: "config", arg: 2, scope: !4996, file: !506, line: 593, type: !4964)
!5002 = !DILocation(line: 0, scope: !4996)
!5003 = !DILocation(line: 595, column: 10, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4996, file: !506, line: 595, column: 9)
!5005 = !DILocation(line: 595, column: 9, scope: !4996)
!5006 = !DILocation(line: 598, column: 45, scope: !4996)
!5007 = !DILocation(line: 598, column: 12, scope: !4996)
!5008 = !DILocation(line: 598, column: 59, scope: !4996)
!5009 = !DILocation(line: 598, column: 5, scope: !4996)
!5010 = !DILocation(line: 599, column: 23, scope: !4996)
!5011 = !DILocation(line: 600, column: 59, scope: !4996)
!5012 = !DILocation(line: 600, column: 23, scope: !4996)
!5013 = !DILocation(line: 601, column: 62, scope: !4996)
!5014 = !DILocation(line: 601, column: 23, scope: !4996)
!5015 = !DILocation(line: 602, column: 57, scope: !4996)
!5016 = !DILocation(line: 602, column: 23, scope: !4996)
!5017 = !DILocation(line: 603, column: 58, scope: !4996)
!5018 = !DILocation(line: 603, column: 23, scope: !4996)
!5019 = !DILocation(line: 599, column: 5, scope: !4996)
!5020 = !DILocation(line: 604, column: 5, scope: !4996)
!5021 = !DILocation(line: 605, column: 1, scope: !4996)
!5022 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !506, file: !506, line: 145, type: !5023, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5025)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{!136, !580}
!5025 = !{!5026, !5027}
!5026 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5022, file: !506, line: 145, type: !580)
!5027 = !DILocalVariable(name: "baudrate_tbl", scope: !5022, file: !506, line: 147, type: !5028)
!5028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !5029)
!5029 = !{!5030}
!5030 = !DISubrange(count: 13)
!5031 = !DILocation(line: 0, scope: !5022)
!5032 = !DILocation(line: 147, column: 14, scope: !5022)
!5033 = !DILocation(line: 151, column: 12, scope: !5022)
!5034 = !DILocation(line: 151, column: 5, scope: !5022)
!5035 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !506, file: !506, line: 155, type: !5036, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5038)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!3412, !582}
!5038 = !{!5039, !5040}
!5039 = !DILocalVariable(name: "word_length", arg: 1, scope: !5035, file: !506, line: 155, type: !582)
!5040 = !DILocalVariable(name: "databit_tbl", scope: !5035, file: !506, line: 157, type: !5041)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3412, size: 64, elements: !397)
!5042 = !DILocation(line: 0, scope: !5035)
!5043 = !DILocation(line: 157, column: 14, scope: !5035)
!5044 = !DILocation(line: 160, column: 12, scope: !5035)
!5045 = !DILocation(line: 160, column: 5, scope: !5035)
!5046 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !506, file: !506, line: 164, type: !5047, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5049)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!3412, !586}
!5049 = !{!5050, !5051}
!5050 = !DILocalVariable(name: "parity", arg: 1, scope: !5046, file: !506, line: 164, type: !586)
!5051 = !DILocalVariable(name: "parity_tbl", scope: !5046, file: !506, line: 166, type: !5052)
!5052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3412, size: 80, elements: !401)
!5053 = !DILocation(line: 0, scope: !5046)
!5054 = !DILocation(line: 166, column: 14, scope: !5046)
!5055 = !DILocation(line: 169, column: 12, scope: !5046)
!5056 = !DILocation(line: 169, column: 5, scope: !5046)
!5057 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !506, file: !506, line: 173, type: !5058, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5060)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!3412, !584}
!5060 = !{!5061, !5062}
!5061 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5057, file: !506, line: 173, type: !584)
!5062 = !DILocalVariable(name: "stopbit_tbl", scope: !5057, file: !506, line: 175, type: !5063)
!5063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3412, size: 48, elements: !778)
!5064 = !DILocation(line: 0, scope: !5057)
!5065 = !DILocation(line: 175, column: 14, scope: !5057)
!5066 = !DILocation(line: 178, column: 12, scope: !5057)
!5067 = !DILocation(line: 178, column: 5, scope: !5057)
!5068 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !506, file: !506, line: 87, type: !5069, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5071)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!126, !565}
!5071 = !{!5072}
!5072 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5068, file: !506, line: 87, type: !565)
!5073 = !DILocation(line: 0, scope: !5068)
!5074 = !DILocation(line: 89, column: 23, scope: !5068)
!5075 = !DILocation(line: 89, column: 5, scope: !5068)
!5076 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !506, file: !506, line: 264, type: !5077, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5079)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!4935, !565}
!5079 = !{!5080}
!5080 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5076, file: !506, line: 264, type: !565)
!5081 = !DILocation(line: 0, scope: !5076)
!5082 = !DILocation(line: 266, column: 10, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5076, file: !506, line: 266, column: 9)
!5084 = !DILocation(line: 266, column: 9, scope: !5076)
!5085 = !DILocation(line: 269, column: 41, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5076, file: !506, line: 269, column: 9)
!5087 = !DILocation(line: 269, column: 62, scope: !5086)
!5088 = !DILocation(line: 269, column: 9, scope: !5076)
!5089 = !DILocation(line: 272, column: 5, scope: !5076)
!5090 = !DILocation(line: 275, column: 22, scope: !5076)
!5091 = !DILocation(line: 275, column: 5, scope: !5076)
!5092 = !DILocation(line: 284, column: 5, scope: !5076)
!5093 = !DILocation(line: 286, column: 5, scope: !5076)
!5094 = !DILocation(line: 287, column: 1, scope: !5076)
!5095 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !506, file: !506, line: 290, type: !5096, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5098)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{null, !565, !558}
!5098 = !{!5099, !5100, !5101}
!5099 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5095, file: !506, line: 290, type: !565)
!5100 = !DILocalVariable(name: "byte", arg: 2, scope: !5095, file: !506, line: 290, type: !558)
!5101 = !DILocalVariable(name: "int_no", scope: !5095, file: !506, line: 292, type: !3342)
!5102 = !DILocation(line: 0, scope: !5095)
!5103 = !DILocation(line: 292, column: 26, scope: !5095)
!5104 = !DILocation(line: 294, column: 16, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5095, file: !506, line: 294, column: 9)
!5106 = !DILocation(line: 294, column: 9, scope: !5095)
!5107 = !DILocation(line: 295, column: 9, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5105, file: !506, line: 294, column: 34)
!5109 = !DILocation(line: 296, column: 5, scope: !5108)
!5110 = !DILocation(line: 299, column: 1, scope: !5095)
!5111 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !506, file: !506, line: 302, type: !5112, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!136, !565, !3549, !136}
!5114 = !{!5115, !5116, !5117, !5118, !5119}
!5115 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5111, file: !506, line: 302, type: !565)
!5116 = !DILocalVariable(name: "data", arg: 2, scope: !5111, file: !506, line: 302, type: !3549)
!5117 = !DILocalVariable(name: "size", arg: 3, scope: !5111, file: !506, line: 302, type: !136)
!5118 = !DILocalVariable(name: "int_no", scope: !5111, file: !506, line: 304, type: !3342)
!5119 = !DILocalVariable(name: "index", scope: !5111, file: !506, line: 305, type: !136)
!5120 = !DILocation(line: 0, scope: !5111)
!5121 = !DILocation(line: 304, column: 26, scope: !5111)
!5122 = !DILocation(line: 307, column: 14, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5111, file: !506, line: 307, column: 9)
!5124 = !DILocation(line: 307, column: 9, scope: !5111)
!5125 = !DILocation(line: 313, column: 53, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !506, line: 312, column: 48)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !506, line: 312, column: 9)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !506, line: 312, column: 9)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !506, line: 311, column: 33)
!5130 = distinct !DILexicalBlock(scope: !5111, file: !506, line: 311, column: 9)
!5131 = !DILocation(line: 313, column: 13, scope: !5126)
!5132 = !DILocation(line: 312, column: 44, scope: !5127)
!5133 = !DILocation(line: 312, column: 31, scope: !5127)
!5134 = !DILocation(line: 312, column: 9, scope: !5128)
!5135 = distinct !{!5135, !5134, !5136}
!5136 = !DILocation(line: 314, column: 9, scope: !5128)
!5137 = !DILocation(line: 318, column: 1, scope: !5111)
!5138 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !506, file: !506, line: 320, type: !5112, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5139)
!5139 = !{!5140, !5141, !5142, !5143, !5144, !5145}
!5140 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5138, file: !506, line: 320, type: !565)
!5141 = !DILocalVariable(name: "data", arg: 2, scope: !5138, file: !506, line: 320, type: !3549)
!5142 = !DILocalVariable(name: "size", arg: 3, scope: !5138, file: !506, line: 320, type: !136)
!5143 = !DILocalVariable(name: "actual_space", scope: !5138, file: !506, line: 322, type: !136)
!5144 = !DILocalVariable(name: "send_size", scope: !5138, file: !506, line: 322, type: !136)
!5145 = !DILocalVariable(name: "ch", scope: !5138, file: !506, line: 323, type: !1924)
!5146 = !DILocation(line: 0, scope: !5138)
!5147 = !DILocation(line: 322, column: 5, scope: !5138)
!5148 = !DILocation(line: 328, column: 10, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5138, file: !506, line: 328, column: 9)
!5150 = !DILocation(line: 328, column: 9, scope: !5138)
!5151 = !DILocation(line: 332, column: 15, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5138, file: !506, line: 332, column: 9)
!5153 = !DILocation(line: 332, column: 24, scope: !5152)
!5154 = !DILocation(line: 335, column: 42, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5138, file: !506, line: 335, column: 9)
!5156 = !DILocation(line: 335, column: 9, scope: !5138)
!5157 = !DILocation(line: 349, column: 30, scope: !5138)
!5158 = !DILocation(line: 349, column: 5, scope: !5138)
!5159 = !DILocation(line: 350, column: 9, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5138, file: !506, line: 350, column: 9)
!5161 = !DILocation(line: 350, column: 22, scope: !5160)
!5162 = !DILocation(line: 355, column: 5, scope: !5138)
!5163 = !DILocation(line: 357, column: 22, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5138, file: !506, line: 357, column: 9)
!5165 = !DILocation(line: 357, column: 19, scope: !5164)
!5166 = !DILocation(line: 357, column: 9, scope: !5138)
!5167 = !DILocation(line: 358, column: 14, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5164, file: !506, line: 357, column: 36)
!5169 = !{i32 14, i32 18}
!5170 = !DILocation(line: 359, column: 9, scope: !5168)
!5171 = !DILocation(line: 360, column: 5, scope: !5168)
!5172 = !DILocation(line: 362, column: 1, scope: !5138)
!5173 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !506, file: !506, line: 191, type: !5174, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5176)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!1924, !3342, !126}
!5176 = !{!5177, !5178, !5179}
!5177 = !DILocalVariable(name: "port", arg: 1, scope: !5173, file: !506, line: 191, type: !3342)
!5178 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5173, file: !506, line: 191, type: !126)
!5179 = !DILocalVariable(name: "ch", scope: !5173, file: !506, line: 193, type: !1924)
!5180 = !DILocation(line: 0, scope: !5173)
!5181 = !DILocation(line: 195, column: 14, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5173, file: !506, line: 195, column: 9)
!5183 = !DILocation(line: 195, column: 9, scope: !5173)
!5184 = !DILocation(line: 209, column: 5, scope: !5173)
!5185 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !506, file: !506, line: 365, type: !5186, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5188)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!558, !565}
!5188 = !{!5189, !5190}
!5189 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5185, file: !506, line: 365, type: !565)
!5190 = !DILocalVariable(name: "int_no", scope: !5185, file: !506, line: 367, type: !3342)
!5191 = !DILocation(line: 0, scope: !5185)
!5192 = !DILocation(line: 367, column: 26, scope: !5185)
!5193 = !DILocation(line: 369, column: 16, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5185, file: !506, line: 369, column: 9)
!5195 = !DILocation(line: 369, column: 9, scope: !5185)
!5196 = !DILocation(line: 370, column: 22, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5194, file: !506, line: 369, column: 33)
!5198 = !DILocation(line: 370, column: 9, scope: !5197)
!5199 = !DILocation(line: 0, scope: !5194)
!5200 = !DILocation(line: 375, column: 1, scope: !5185)
!5201 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !506, file: !506, line: 377, type: !5202, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!136, !565}
!5204 = !{!5205, !5206}
!5205 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5201, file: !506, line: 377, type: !565)
!5206 = !DILocalVariable(name: "int_no", scope: !5201, file: !506, line: 379, type: !3342)
!5207 = !DILocation(line: 0, scope: !5201)
!5208 = !DILocation(line: 379, column: 26, scope: !5201)
!5209 = !DILocation(line: 381, column: 16, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5201, file: !506, line: 381, column: 9)
!5211 = !DILocation(line: 381, column: 9, scope: !5201)
!5212 = !DILocation(line: 382, column: 16, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5210, file: !506, line: 381, column: 33)
!5214 = !DILocation(line: 382, column: 9, scope: !5213)
!5215 = !DILocation(line: 0, scope: !5210)
!5216 = !DILocation(line: 387, column: 1, scope: !5201)
!5217 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !506, file: !506, line: 390, type: !5218, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5220)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!136, !565, !605, !136}
!5220 = !{!5221, !5222, !5223, !5224, !5225}
!5221 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5217, file: !506, line: 390, type: !565)
!5222 = !DILocalVariable(name: "buffer", arg: 2, scope: !5217, file: !506, line: 390, type: !605)
!5223 = !DILocalVariable(name: "size", arg: 3, scope: !5217, file: !506, line: 390, type: !136)
!5224 = !DILocalVariable(name: "int_no", scope: !5217, file: !506, line: 392, type: !3342)
!5225 = !DILocalVariable(name: "index", scope: !5217, file: !506, line: 393, type: !136)
!5226 = !DILocation(line: 0, scope: !5217)
!5227 = !DILocation(line: 392, column: 26, scope: !5217)
!5228 = !DILocation(line: 395, column: 16, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5217, file: !506, line: 395, column: 9)
!5230 = !DILocation(line: 395, column: 9, scope: !5217)
!5231 = !DILocation(line: 401, column: 38, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5233, file: !506, line: 400, column: 48)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !506, line: 400, column: 9)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !506, line: 400, column: 9)
!5235 = distinct !DILexicalBlock(scope: !5236, file: !506, line: 399, column: 33)
!5236 = distinct !DILexicalBlock(scope: !5217, file: !506, line: 399, column: 9)
!5237 = !DILocation(line: 401, column: 13, scope: !5232)
!5238 = !DILocation(line: 401, column: 27, scope: !5232)
!5239 = !DILocation(line: 400, column: 44, scope: !5233)
!5240 = !DILocation(line: 400, column: 31, scope: !5233)
!5241 = !DILocation(line: 400, column: 9, scope: !5234)
!5242 = distinct !{!5242, !5241, !5243}
!5243 = !DILocation(line: 402, column: 9, scope: !5234)
!5244 = !DILocation(line: 406, column: 1, scope: !5217)
!5245 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !506, file: !506, line: 408, type: !5218, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5246)
!5246 = !{!5247, !5248, !5249, !5250, !5251, !5252}
!5247 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5245, file: !506, line: 408, type: !565)
!5248 = !DILocalVariable(name: "buffer", arg: 2, scope: !5245, file: !506, line: 408, type: !605)
!5249 = !DILocalVariable(name: "size", arg: 3, scope: !5245, file: !506, line: 408, type: !136)
!5250 = !DILocalVariable(name: "actual_size", scope: !5245, file: !506, line: 410, type: !136)
!5251 = !DILocalVariable(name: "receive_size", scope: !5245, file: !506, line: 410, type: !136)
!5252 = !DILocalVariable(name: "ch", scope: !5245, file: !506, line: 411, type: !1924)
!5253 = !DILocation(line: 0, scope: !5245)
!5254 = !DILocation(line: 410, column: 5, scope: !5245)
!5255 = !DILocation(line: 413, column: 10, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5245, file: !506, line: 413, column: 9)
!5257 = !DILocation(line: 413, column: 9, scope: !5245)
!5258 = !DILocation(line: 417, column: 17, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5245, file: !506, line: 417, column: 9)
!5260 = !DILocation(line: 417, column: 26, scope: !5259)
!5261 = !DILocation(line: 421, column: 30, scope: !5245)
!5262 = !DILocation(line: 421, column: 5, scope: !5245)
!5263 = !DILocation(line: 422, column: 9, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5245, file: !506, line: 422, column: 9)
!5265 = !DILocation(line: 422, column: 21, scope: !5264)
!5266 = !DILocation(line: 427, column: 5, scope: !5245)
!5267 = !DILocation(line: 429, column: 25, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5245, file: !506, line: 429, column: 9)
!5269 = !DILocation(line: 429, column: 22, scope: !5268)
!5270 = !DILocation(line: 429, column: 9, scope: !5245)
!5271 = !DILocation(line: 430, column: 14, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5268, file: !506, line: 429, column: 38)
!5273 = !DILocation(line: 431, column: 9, scope: !5272)
!5274 = !DILocation(line: 432, column: 5, scope: !5272)
!5275 = !DILocation(line: 435, column: 1, scope: !5245)
!5276 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !506, file: !506, line: 438, type: !5202, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5277)
!5277 = !{!5278, !5279}
!5278 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5276, file: !506, line: 438, type: !565)
!5279 = !DILocalVariable(name: "length", scope: !5276, file: !506, line: 440, type: !136)
!5280 = !DILocation(line: 0, scope: !5276)
!5281 = !DILocation(line: 440, column: 5, scope: !5276)
!5282 = !DILocation(line: 440, column: 14, scope: !5276)
!5283 = !DILocation(line: 442, column: 10, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5276, file: !506, line: 442, column: 9)
!5285 = !DILocation(line: 442, column: 9, scope: !5276)
!5286 = !DILocation(line: 446, column: 30, scope: !5276)
!5287 = !DILocation(line: 446, column: 5, scope: !5276)
!5288 = !DILocation(line: 447, column: 12, scope: !5276)
!5289 = !DILocation(line: 447, column: 5, scope: !5276)
!5290 = !DILocation(line: 448, column: 1, scope: !5276)
!5291 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !506, file: !506, line: 451, type: !5202, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5292)
!5292 = !{!5293, !5294}
!5293 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5291, file: !506, line: 451, type: !565)
!5294 = !DILocalVariable(name: "length", scope: !5291, file: !506, line: 453, type: !136)
!5295 = !DILocation(line: 0, scope: !5291)
!5296 = !DILocation(line: 453, column: 5, scope: !5291)
!5297 = !DILocation(line: 453, column: 14, scope: !5291)
!5298 = !DILocation(line: 455, column: 10, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5291, file: !506, line: 455, column: 9)
!5300 = !DILocation(line: 455, column: 9, scope: !5291)
!5301 = !DILocation(line: 459, column: 30, scope: !5291)
!5302 = !DILocation(line: 459, column: 5, scope: !5291)
!5303 = !DILocation(line: 461, column: 12, scope: !5291)
!5304 = !DILocation(line: 461, column: 5, scope: !5291)
!5305 = !DILocation(line: 462, column: 1, scope: !5291)
!5306 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !506, file: !506, line: 543, type: !5307, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5309)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!4935, !565, !593, !161}
!5309 = !{!5310, !5311, !5312, !5313}
!5310 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5306, file: !506, line: 543, type: !565)
!5311 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5306, file: !506, line: 544, type: !593)
!5312 = !DILocalVariable(name: "user_data", arg: 3, scope: !5306, file: !506, line: 545, type: !161)
!5313 = !DILocalVariable(name: "ch", scope: !5306, file: !506, line: 547, type: !1924)
!5314 = !DILocation(line: 0, scope: !5306)
!5315 = !DILocation(line: 549, column: 10, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5306, file: !506, line: 549, column: 9)
!5317 = !DILocation(line: 549, column: 9, scope: !5306)
!5318 = !DILocation(line: 556, column: 53, scope: !5306)
!5319 = !DILocation(line: 556, column: 62, scope: !5306)
!5320 = !DILocation(line: 557, column: 53, scope: !5306)
!5321 = !DILocation(line: 557, column: 63, scope: !5306)
!5322 = !DILocation(line: 558, column: 37, scope: !5306)
!5323 = !DILocation(line: 558, column: 54, scope: !5306)
!5324 = !DILocation(line: 560, column: 39, scope: !5306)
!5325 = !DILocation(line: 561, column: 39, scope: !5306)
!5326 = !DILocation(line: 560, column: 5, scope: !5306)
!5327 = !DILocation(line: 562, column: 5, scope: !5306)
!5328 = !DILocation(line: 564, column: 44, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5306, file: !506, line: 564, column: 9)
!5330 = !DILocation(line: 564, column: 9, scope: !5306)
!5331 = !DILocation(line: 565, column: 9, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5329, file: !506, line: 564, column: 59)
!5333 = !DILocation(line: 566, column: 5, scope: !5332)
!5334 = !DILocation(line: 567, column: 9, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5329, file: !506, line: 566, column: 12)
!5336 = !DILocation(line: 569, column: 10, scope: !5306)
!5337 = !DILocation(line: 570, column: 5, scope: !5306)
!5338 = !DILocation(line: 578, column: 5, scope: !5306)
!5339 = !DILocation(line: 579, column: 1, scope: !5306)
!5340 = !DILocation(line: 0, scope: !562)
!5341 = !DILocation(line: 539, column: 12, scope: !562)
!5342 = !DILocation(line: 539, column: 5, scope: !562)
!5343 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !506, file: !506, line: 511, type: !181, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5344)
!5344 = !{!5345}
!5345 = !DILocalVariable(name: "callback_context", scope: !5346, file: !506, line: 514, type: !5348)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !506, line: 513, column: 60)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !506, line: 513, column: 9)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 32)
!5349 = !DILocation(line: 513, column: 42, scope: !5347)
!5350 = !DILocation(line: 513, column: 9, scope: !5343)
!5351 = !DILocation(line: 515, column: 39, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5346, file: !506, line: 515, column: 13)
!5353 = !DILocation(line: 515, column: 18, scope: !5352)
!5354 = !DILocation(line: 515, column: 13, scope: !5346)
!5355 = !DILocation(line: 516, column: 89, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5352, file: !506, line: 515, column: 49)
!5357 = !DILocation(line: 516, column: 13, scope: !5356)
!5358 = !DILocation(line: 517, column: 9, scope: !5356)
!5359 = !DILocation(line: 519, column: 32, scope: !5343)
!5360 = !DILocation(line: 519, column: 5, scope: !5343)
!5361 = !DILocation(line: 520, column: 1, scope: !5343)
!5362 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !506, file: !506, line: 523, type: !181, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5363)
!5363 = !{!5364}
!5364 = !DILocalVariable(name: "callback_context", scope: !5365, file: !506, line: 526, type: !5348)
!5365 = distinct !DILexicalBlock(scope: !5366, file: !506, line: 525, column: 60)
!5366 = distinct !DILexicalBlock(scope: !5362, file: !506, line: 525, column: 9)
!5367 = !DILocation(line: 525, column: 42, scope: !5366)
!5368 = !DILocation(line: 525, column: 9, scope: !5362)
!5369 = !DILocation(line: 527, column: 39, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5365, file: !506, line: 527, column: 13)
!5371 = !DILocation(line: 527, column: 18, scope: !5370)
!5372 = !DILocation(line: 527, column: 13, scope: !5365)
!5373 = !DILocation(line: 528, column: 89, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5370, file: !506, line: 527, column: 49)
!5375 = !DILocation(line: 528, column: 13, scope: !5374)
!5376 = !DILocation(line: 529, column: 9, scope: !5374)
!5377 = !DILocation(line: 531, column: 32, scope: !5362)
!5378 = !DILocation(line: 531, column: 5, scope: !5362)
!5379 = !DILocation(line: 532, column: 1, scope: !5362)
!5380 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !506, file: !506, line: 464, type: !5381, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5383)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{null, !3342, !126}
!5383 = !{!5384, !5385, !5386, !5387, !5388, !5390}
!5384 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5380, file: !506, line: 464, type: !3342)
!5385 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5380, file: !506, line: 464, type: !126)
!5386 = !DILocalVariable(name: "avail_size", scope: !5380, file: !506, line: 466, type: !136)
!5387 = !DILocalVariable(name: "avail_space", scope: !5380, file: !506, line: 466, type: !136)
!5388 = !DILocalVariable(name: "dma_config", scope: !5380, file: !506, line: 467, type: !5389)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 32)
!5390 = !DILocalVariable(name: "ch", scope: !5380, file: !506, line: 468, type: !1924)
!5391 = !DILocation(line: 0, scope: !5380)
!5392 = !DILocation(line: 466, column: 5, scope: !5380)
!5393 = !DILocation(line: 471, column: 9, scope: !5380)
!5394 = !DILocation(line: 472, column: 9, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5396, file: !506, line: 471, column: 16)
!5396 = distinct !DILexicalBlock(scope: !5380, file: !506, line: 471, column: 9)
!5397 = !DILocation(line: 473, column: 13, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5395, file: !506, line: 473, column: 13)
!5399 = !DILocation(line: 473, column: 39, scope: !5398)
!5400 = !DILocation(line: 473, column: 24, scope: !5398)
!5401 = !DILocation(line: 473, column: 13, scope: !5395)
!5402 = !DILocation(line: 478, column: 9, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5396, file: !506, line: 477, column: 12)
!5404 = !DILocation(line: 479, column: 13, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5403, file: !506, line: 479, column: 13)
!5406 = !DILocation(line: 479, column: 40, scope: !5405)
!5407 = !DILocation(line: 479, column: 77, scope: !5405)
!5408 = !DILocation(line: 479, column: 63, scope: !5405)
!5409 = !DILocation(line: 479, column: 25, scope: !5405)
!5410 = !DILocation(line: 479, column: 13, scope: !5403)
!5411 = !DILocation(line: 0, scope: !5396)
!5412 = !DILocation(line: 484, column: 1, scope: !5380)
!5413 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !506, file: !506, line: 486, type: !181, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5414)
!5414 = !{!5415}
!5415 = !DILocalVariable(name: "callback_context", scope: !5416, file: !506, line: 490, type: !5348)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !506, line: 489, column: 70)
!5417 = distinct !DILexicalBlock(scope: !5413, file: !506, line: 488, column: 9)
!5418 = !DILocation(line: 488, column: 43, scope: !5417)
!5419 = !DILocation(line: 488, column: 61, scope: !5417)
!5420 = !DILocation(line: 489, column: 14, scope: !5417)
!5421 = !DILocation(line: 489, column: 63, scope: !5417)
!5422 = !DILocation(line: 488, column: 9, scope: !5413)
!5423 = !DILocation(line: 491, column: 39, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5416, file: !506, line: 491, column: 13)
!5425 = !DILocation(line: 491, column: 18, scope: !5424)
!5426 = !DILocation(line: 491, column: 13, scope: !5416)
!5427 = !DILocation(line: 492, column: 88, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5424, file: !506, line: 491, column: 49)
!5429 = !DILocation(line: 492, column: 13, scope: !5428)
!5430 = !DILocation(line: 493, column: 9, scope: !5428)
!5431 = !DILocation(line: 495, column: 32, scope: !5413)
!5432 = !DILocation(line: 495, column: 5, scope: !5413)
!5433 = !DILocation(line: 496, column: 1, scope: !5413)
!5434 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !506, file: !506, line: 499, type: !181, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5435)
!5435 = !{!5436}
!5436 = !DILocalVariable(name: "callback_context", scope: !5437, file: !506, line: 503, type: !5348)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !506, line: 502, column: 70)
!5438 = distinct !DILexicalBlock(scope: !5434, file: !506, line: 501, column: 9)
!5439 = !DILocation(line: 501, column: 43, scope: !5438)
!5440 = !DILocation(line: 501, column: 61, scope: !5438)
!5441 = !DILocation(line: 502, column: 14, scope: !5438)
!5442 = !DILocation(line: 502, column: 63, scope: !5438)
!5443 = !DILocation(line: 501, column: 9, scope: !5434)
!5444 = !DILocation(line: 504, column: 39, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5437, file: !506, line: 504, column: 13)
!5446 = !DILocation(line: 504, column: 18, scope: !5445)
!5447 = !DILocation(line: 504, column: 13, scope: !5437)
!5448 = !DILocation(line: 505, column: 88, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5445, file: !506, line: 504, column: 49)
!5450 = !DILocation(line: 505, column: 13, scope: !5449)
!5451 = !DILocation(line: 506, column: 9, scope: !5449)
!5452 = !DILocation(line: 508, column: 32, scope: !5434)
!5453 = !DILocation(line: 508, column: 5, scope: !5434)
!5454 = !DILocation(line: 509, column: 1, scope: !5434)
!5455 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !506, file: !506, line: 582, type: !5456, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5458)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!4935, !565, !580}
!5458 = !{!5459, !5460}
!5459 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5455, file: !506, line: 582, type: !565)
!5460 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5455, file: !506, line: 582, type: !580)
!5461 = !DILocation(line: 0, scope: !5455)
!5462 = !DILocation(line: 584, column: 11, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5455, file: !506, line: 584, column: 9)
!5464 = !DILocation(line: 584, column: 46, scope: !5463)
!5465 = !DILocation(line: 588, column: 37, scope: !5455)
!5466 = !DILocation(line: 588, column: 50, scope: !5455)
!5467 = !DILocation(line: 588, column: 59, scope: !5455)
!5468 = !DILocation(line: 589, column: 12, scope: !5455)
!5469 = !DILocation(line: 589, column: 5, scope: !5455)
!5470 = !DILocation(line: 590, column: 1, scope: !5455)
!5471 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !506, file: !506, line: 608, type: !5472, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5476)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!4935, !565, !5474}
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 32)
!5475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!5476 = !{!5477, !5478}
!5477 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5471, file: !506, line: 608, type: !565)
!5478 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5471, file: !506, line: 608, type: !5474)
!5479 = !DILocation(line: 0, scope: !5471)
!5480 = !DILocation(line: 610, column: 10, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5471, file: !506, line: 610, column: 9)
!5482 = !DILocation(line: 610, column: 9, scope: !5471)
!5483 = !DILocation(line: 614, column: 10, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5471, file: !506, line: 614, column: 9)
!5485 = !DILocation(line: 614, column: 9, scope: !5471)
!5486 = !DILocation(line: 618, column: 37, scope: !5471)
!5487 = !DILocation(line: 618, column: 56, scope: !5471)
!5488 = !DILocation(line: 619, column: 45, scope: !5471)
!5489 = !DILocation(line: 619, column: 12, scope: !5471)
!5490 = !DILocation(line: 620, column: 12, scope: !5471)
!5491 = !DILocation(line: 619, column: 5, scope: !5471)
!5492 = !DILocation(line: 621, column: 5, scope: !5471)
!5493 = !DILocation(line: 622, column: 5, scope: !5471)
!5494 = !DILocation(line: 623, column: 33, scope: !5471)
!5495 = !DILocation(line: 624, column: 50, scope: !5471)
!5496 = !DILocation(line: 625, column: 50, scope: !5471)
!5497 = !DILocation(line: 626, column: 50, scope: !5471)
!5498 = !DILocation(line: 627, column: 50, scope: !5471)
!5499 = !DILocation(line: 628, column: 33, scope: !5471)
!5500 = !DILocation(line: 623, column: 5, scope: !5471)
!5501 = !DILocation(line: 630, column: 50, scope: !5471)
!5502 = !DILocation(line: 631, column: 50, scope: !5471)
!5503 = !DILocation(line: 632, column: 50, scope: !5471)
!5504 = !DILocation(line: 629, column: 5, scope: !5471)
!5505 = !DILocation(line: 634, column: 5, scope: !5471)
!5506 = !DILocation(line: 635, column: 1, scope: !5471)
!5507 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !506, file: !506, line: 112, type: !5508, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5510)
!5508 = !DISubroutineType(types: !5509)
!5509 = !{!126, !5474}
!5510 = !{!5511}
!5511 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5507, file: !506, line: 112, type: !5474)
!5512 = !DILocation(line: 0, scope: !5507)
!5513 = !DILocation(line: 114, column: 14, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5507, file: !506, line: 114, column: 9)
!5515 = !DILocation(line: 114, column: 9, scope: !5507)
!5516 = !DILocation(line: 117, column: 29, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5507, file: !506, line: 117, column: 9)
!5518 = !DILocation(line: 117, column: 14, scope: !5517)
!5519 = !DILocation(line: 117, column: 9, scope: !5507)
!5520 = !DILocation(line: 120, column: 21, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5507, file: !506, line: 120, column: 9)
!5522 = !DILocation(line: 120, column: 61, scope: !5521)
!5523 = !DILocation(line: 120, column: 47, scope: !5521)
!5524 = !DILocation(line: 120, column: 9, scope: !5507)
!5525 = !DILocation(line: 123, column: 61, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5507, file: !506, line: 123, column: 9)
!5527 = !DILocation(line: 123, column: 47, scope: !5526)
!5528 = !DILocation(line: 123, column: 9, scope: !5507)
!5529 = !DILocation(line: 126, column: 29, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5507, file: !506, line: 126, column: 9)
!5531 = !DILocation(line: 126, column: 14, scope: !5530)
!5532 = !DILocation(line: 126, column: 9, scope: !5507)
!5533 = !DILocation(line: 129, column: 21, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5507, file: !506, line: 129, column: 9)
!5535 = !DILocation(line: 129, column: 58, scope: !5534)
!5536 = !DILocation(line: 129, column: 44, scope: !5534)
!5537 = !DILocation(line: 129, column: 9, scope: !5507)
!5538 = !DILocation(line: 136, column: 1, scope: !5507)
!5539 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !506, file: !506, line: 182, type: !5540, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5542)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{!136, !136}
!5542 = !{!5543, !5544}
!5543 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5539, file: !506, line: 182, type: !136)
!5544 = !DILocalVariable(name: "ticks_per_us", scope: !5539, file: !506, line: 184, type: !136)
!5545 = !DILocation(line: 0, scope: !5539)
!5546 = !DILocation(line: 186, column: 20, scope: !5539)
!5547 = !DILocation(line: 186, column: 39, scope: !5539)
!5548 = !DILocation(line: 188, column: 25, scope: !5539)
!5549 = !DILocation(line: 188, column: 5, scope: !5539)
!5550 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !506, file: !506, line: 637, type: !5077, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5551)
!5551 = !{!5552, !5553}
!5552 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5550, file: !506, line: 637, type: !565)
!5553 = !DILocalVariable(name: "int_no", scope: !5550, file: !506, line: 639, type: !3342)
!5554 = !DILocation(line: 0, scope: !5550)
!5555 = !DILocation(line: 641, column: 10, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5550, file: !506, line: 641, column: 9)
!5557 = !DILocation(line: 641, column: 9, scope: !5550)
!5558 = !DILocation(line: 645, column: 14, scope: !5550)
!5559 = !DILocation(line: 646, column: 5, scope: !5550)
!5560 = !DILocation(line: 648, column: 5, scope: !5550)
!5561 = !DILocation(line: 649, column: 1, scope: !5550)
!5562 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !506, file: !506, line: 651, type: !5563, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5565)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!4935, !565, !128, !128, !128}
!5565 = !{!5566, !5567, !5568, !5569, !5570}
!5566 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5562, file: !506, line: 651, type: !565)
!5567 = !DILocalVariable(name: "xon", arg: 2, scope: !5562, file: !506, line: 652, type: !128)
!5568 = !DILocalVariable(name: "xoff", arg: 3, scope: !5562, file: !506, line: 653, type: !128)
!5569 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5562, file: !506, line: 654, type: !128)
!5570 = !DILocalVariable(name: "int_no", scope: !5562, file: !506, line: 656, type: !3342)
!5571 = !DILocation(line: 0, scope: !5562)
!5572 = !DILocation(line: 658, column: 10, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5562, file: !506, line: 658, column: 9)
!5574 = !DILocation(line: 658, column: 9, scope: !5562)
!5575 = !DILocation(line: 662, column: 14, scope: !5562)
!5576 = !DILocation(line: 663, column: 5, scope: !5562)
!5577 = !DILocation(line: 665, column: 5, scope: !5562)
!5578 = !DILocation(line: 666, column: 1, scope: !5562)
!5579 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !506, file: !506, line: 668, type: !5077, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5580)
!5580 = !{!5581, !5582}
!5581 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5579, file: !506, line: 668, type: !565)
!5582 = !DILocalVariable(name: "int_no", scope: !5579, file: !506, line: 670, type: !3342)
!5583 = !DILocation(line: 0, scope: !5579)
!5584 = !DILocation(line: 672, column: 10, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5579, file: !506, line: 672, column: 9)
!5586 = !DILocation(line: 672, column: 9, scope: !5579)
!5587 = !DILocation(line: 676, column: 14, scope: !5579)
!5588 = !DILocation(line: 677, column: 5, scope: !5579)
!5589 = !DILocation(line: 679, column: 5, scope: !5579)
!5590 = !DILocation(line: 680, column: 1, scope: !5579)
!5591 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !506, file: !506, line: 683, type: !5592, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !505, retainedNodes: !5594)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{!4935, !565, !136}
!5594 = !{!5595, !5596}
!5595 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5591, file: !506, line: 683, type: !565)
!5596 = !DILocalVariable(name: "timeout", arg: 2, scope: !5591, file: !506, line: 683, type: !136)
!5597 = !DILocation(line: 0, scope: !5591)
!5598 = !DILocation(line: 685, column: 10, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5591, file: !506, line: 685, column: 9)
!5600 = !DILocation(line: 685, column: 9, scope: !5591)
!5601 = !DILocation(line: 689, column: 19, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5591, file: !506, line: 689, column: 9)
!5603 = !DILocation(line: 0, scope: !5602)
!5604 = !DILocation(line: 696, column: 1, scope: !5591)
!5605 = distinct !DISubprogram(name: "__io_putchar", scope: !615, file: !615, line: 61, type: !5606, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !5608)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!53, !53}
!5608 = !{!5609}
!5609 = !DILocalVariable(name: "ch", arg: 1, scope: !5605, file: !615, line: 61, type: !53)
!5610 = !DILocation(line: 0, scope: !5605)
!5611 = !DILocation(line: 68, column: 35, scope: !5605)
!5612 = !DILocation(line: 68, column: 5, scope: !5605)
!5613 = !DILocation(line: 69, column: 5, scope: !5605)
!5614 = distinct !DISubprogram(name: "main", scope: !615, file: !615, line: 168, type: !3318, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !1163)
!5615 = !DILocation(line: 171, column: 5, scope: !5614)
!5616 = !DILocation(line: 174, column: 5, scope: !5614)
!5617 = !DILocation(line: 319, column: 3, scope: !5618, inlinedAt: !5619)
!5618 = distinct !DISubprogram(name: "__enable_irq", scope: !1194, file: !1194, line: 317, type: !181, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !1163)
!5619 = distinct !DILocation(line: 177, column: 5, scope: !5614)
!5620 = !{i64 501385}
!5621 = !DILocation(line: 496, column: 3, scope: !5622, inlinedAt: !5623)
!5622 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1194, file: !1194, line: 494, type: !181, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !1163)
!5623 = distinct !DILocation(line: 178, column: 5, scope: !5614)
!5624 = !{i64 505660}
!5625 = !DILocation(line: 181, column: 5, scope: !5614)
!5626 = !DILocation(line: 183, column: 5, scope: !5614)
!5627 = !DILocation(line: 184, column: 5, scope: !5614)
!5628 = !DILocation(line: 186, column: 5, scope: !5614)
!5629 = !DILocation(line: 188, column: 5, scope: !5614)
!5630 = !DILocation(line: 188, column: 5, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !615, line: 188, column: 5)
!5632 = distinct !DILexicalBlock(scope: !5614, file: !615, line: 188, column: 5)
!5633 = distinct !{!5633, !5634, !5635}
!5634 = !DILocation(line: 188, column: 5, scope: !5632)
!5635 = !DILocation(line: 188, column: 13, scope: !5632)
!5636 = distinct !DISubprogram(name: "SystemClock_Config", scope: !615, file: !615, line: 100, type: !181, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !1163)
!5637 = !DILocation(line: 102, column: 5, scope: !5636)
!5638 = !DILocation(line: 103, column: 1, scope: !5636)
!5639 = distinct !DISubprogram(name: "prvSetupHardware", scope: !615, file: !615, line: 109, type: !181, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !1163)
!5640 = !DILocation(line: 112, column: 5, scope: !5639)
!5641 = !DILocation(line: 113, column: 1, scope: !5639)
!5642 = distinct !DISubprogram(name: "gdma_transfer_data_interrupt", scope: !615, file: !615, line: 145, type: !181, scopeLine: 146, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !5643)
!5643 = !{!5644}
!5644 = !DILocalVariable(name: "count", scope: !5642, file: !615, line: 147, type: !136)
!5645 = !DILocation(line: 0, scope: !5642)
!5646 = !DILocation(line: 149, column: 5, scope: !5642)
!5647 = !DILocation(line: 151, column: 5, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5642, file: !615, line: 151, column: 5)
!5649 = !DILocation(line: 152, column: 30, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !615, line: 151, column: 50)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !615, line: 151, column: 5)
!5652 = !DILocation(line: 152, column: 9, scope: !5650)
!5653 = !DILocation(line: 152, column: 28, scope: !5650)
!5654 = !DILocation(line: 151, column: 46, scope: !5651)
!5655 = !DILocation(line: 151, column: 27, scope: !5651)
!5656 = distinct !{!5656, !5647, !5657}
!5657 = !DILocation(line: 153, column: 5, scope: !5648)
!5658 = !DILocation(line: 156, column: 9, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !615, line: 155, column: 50)
!5660 = distinct !DILexicalBlock(scope: !5661, file: !615, line: 155, column: 5)
!5661 = distinct !DILexicalBlock(scope: !5642, file: !615, line: 155, column: 5)
!5662 = !DILocation(line: 156, column: 33, scope: !5659)
!5663 = !DILocation(line: 155, column: 46, scope: !5660)
!5664 = !DILocation(line: 155, column: 27, scope: !5660)
!5665 = !DILocation(line: 155, column: 5, scope: !5661)
!5666 = distinct !{!5666, !5665, !5667}
!5667 = !DILocation(line: 157, column: 5, scope: !5661)
!5668 = !DILocation(line: 159, column: 5, scope: !5642)
!5669 = !DILocation(line: 161, column: 5, scope: !5642)
!5670 = !DILocation(line: 163, column: 5, scope: !5642)
!5671 = !DILocation(line: 166, column: 1, scope: !5642)
!5672 = distinct !DISubprogram(name: "gdma_callback", scope: !615, file: !615, line: 120, type: !499, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !5673)
!5673 = !{!5674, !5675, !5676}
!5674 = !DILocalVariable(name: "event", arg: 1, scope: !5672, file: !615, line: 120, type: !501)
!5675 = !DILocalVariable(name: "user_data", arg: 2, scope: !5672, file: !615, line: 120, type: !161)
!5676 = !DILocalVariable(name: "count", scope: !5672, file: !615, line: 123, type: !136)
!5677 = !DILocation(line: 0, scope: !5672)
!5678 = !DILocation(line: 124, column: 5, scope: !5672)
!5679 = !DILocation(line: 125, column: 5, scope: !5672)
!5680 = !DILocation(line: 127, column: 5, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5672, file: !615, line: 127, column: 5)
!5682 = !DILocation(line: 128, column: 13, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !615, line: 128, column: 13)
!5684 = distinct !DILexicalBlock(scope: !5685, file: !615, line: 127, column: 50)
!5685 = distinct !DILexicalBlock(scope: !5681, file: !615, line: 127, column: 5)
!5686 = !DILocation(line: 128, column: 40, scope: !5683)
!5687 = !DILocation(line: 128, column: 37, scope: !5683)
!5688 = !DILocation(line: 128, column: 13, scope: !5684)
!5689 = !DILocation(line: 129, column: 13, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5683, file: !615, line: 128, column: 60)
!5691 = !DILocation(line: 130, column: 9, scope: !5690)
!5692 = !DILocation(line: 127, column: 46, scope: !5685)
!5693 = !DILocation(line: 127, column: 27, scope: !5685)
!5694 = distinct !{!5694, !5680, !5695}
!5695 = !DILocation(line: 132, column: 5, scope: !5681)
!5696 = !DILocation(line: 133, column: 5, scope: !5672)
!5697 = !DILocation(line: 136, column: 5, scope: !5672)
!5698 = !DILocation(line: 138, column: 1, scope: !5672)
!5699 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !615, file: !615, line: 78, type: !181, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !614, retainedNodes: !5700)
!5700 = !{!5701}
!5701 = !DILocalVariable(name: "uart_config", scope: !5699, file: !615, line: 80, type: !5702)
!5702 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !509, line: 378, baseType: !5703)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 373, size: 128, elements: !5704)
!5704 = !{!5705, !5706, !5707, !5708}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5703, file: !509, line: 374, baseType: !580, size: 32)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5703, file: !509, line: 375, baseType: !582, size: 32, offset: 32)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5703, file: !509, line: 376, baseType: !584, size: 32, offset: 64)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5703, file: !509, line: 377, baseType: !586, size: 32, offset: 96)
!5709 = !DILocation(line: 80, column: 5, scope: !5699)
!5710 = !DILocation(line: 80, column: 23, scope: !5699)
!5711 = !DILocation(line: 82, column: 5, scope: !5699)
!5712 = !DILocation(line: 83, column: 5, scope: !5699)
!5713 = !DILocation(line: 84, column: 5, scope: !5699)
!5714 = !DILocation(line: 85, column: 5, scope: !5699)
!5715 = !DILocation(line: 88, column: 17, scope: !5699)
!5716 = !DILocation(line: 88, column: 26, scope: !5699)
!5717 = !DILocation(line: 89, column: 17, scope: !5699)
!5718 = !DILocation(line: 89, column: 29, scope: !5699)
!5719 = !DILocation(line: 90, column: 17, scope: !5699)
!5720 = !DILocation(line: 90, column: 26, scope: !5699)
!5721 = !DILocation(line: 91, column: 17, scope: !5699)
!5722 = !DILocation(line: 91, column: 24, scope: !5699)
!5723 = !DILocation(line: 92, column: 5, scope: !5699)
!5724 = !DILocation(line: 93, column: 1, scope: !5699)
!5725 = distinct !DISubprogram(name: "SysTick_Set", scope: !661, file: !661, line: 70, type: !5540, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !5726)
!5726 = !{!5727, !5728}
!5727 = !DILocalVariable(name: "ticks", arg: 1, scope: !5725, file: !661, line: 70, type: !136)
!5728 = !DILocalVariable(name: "val", scope: !5725, file: !661, line: 72, type: !136)
!5729 = !DILocation(line: 0, scope: !5725)
!5730 = !DILocation(line: 74, column: 16, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5725, file: !661, line: 74, column: 9)
!5732 = !DILocation(line: 74, column: 21, scope: !5731)
!5733 = !DILocation(line: 74, column: 9, scope: !5725)
!5734 = !DILocation(line: 78, column: 20, scope: !5725)
!5735 = !DILocation(line: 80, column: 19, scope: !5725)
!5736 = !DILocation(line: 83, column: 20, scope: !5725)
!5737 = !DILocation(line: 84, column: 20, scope: !5725)
!5738 = !DILocation(line: 86, column: 19, scope: !5725)
!5739 = !DILocation(line: 88, column: 5, scope: !5725)
!5740 = !DILocation(line: 89, column: 1, scope: !5725)
!5741 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !661, file: !661, line: 98, type: !181, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !1163)
!5742 = !DILocation(line: 100, column: 28, scope: !5741)
!5743 = !DILocation(line: 101, column: 1, scope: !5741)
!5744 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !661, file: !661, line: 110, type: !1195, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !1163)
!5745 = !DILocation(line: 112, column: 12, scope: !5744)
!5746 = !DILocation(line: 112, column: 5, scope: !5744)
!5747 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !661, file: !661, line: 122, type: !181, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !1163)
!5748 = !DILocation(line: 124, column: 23, scope: !5747)
!5749 = !DILocation(line: 124, column: 21, scope: !5747)
!5750 = !DILocation(line: 125, column: 1, scope: !5747)
!5751 = distinct !DISubprogram(name: "SystemInit", scope: !661, file: !661, line: 136, type: !181, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !1163)
!5752 = !DILocation(line: 140, column: 16, scope: !5751)
!5753 = !DILocation(line: 144, column: 16, scope: !5751)
!5754 = !DILocation(line: 147, column: 16, scope: !5751)
!5755 = !DILocation(line: 150, column: 1, scope: !5751)
!5756 = distinct !DISubprogram(name: "CachePreInit", scope: !661, file: !661, line: 158, type: !181, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !1163)
!5757 = !DILocation(line: 161, column: 22, scope: !5756)
!5758 = !DILocation(line: 164, column: 21, scope: !5756)
!5759 = !DILocation(line: 167, column: 21, scope: !5756)
!5760 = !DILocation(line: 170, column: 29, scope: !5756)
!5761 = !DILocation(line: 171, column: 33, scope: !5756)
!5762 = !DILocation(line: 173, column: 28, scope: !5756)
!5763 = !DILocation(line: 178, column: 30, scope: !5756)
!5764 = !DILocation(line: 192, column: 1, scope: !5756)
!5765 = distinct !DISubprogram(name: "_close", scope: !721, file: !721, line: 11, type: !5606, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5766)
!5766 = !{!5767}
!5767 = !DILocalVariable(name: "file", arg: 1, scope: !5765, file: !721, line: 11, type: !53)
!5768 = !DILocation(line: 0, scope: !5765)
!5769 = !DILocation(line: 13, column: 5, scope: !5765)
!5770 = distinct !DISubprogram(name: "_fstat", scope: !721, file: !721, line: 16, type: !5771, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5819)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!53, !53, !5773}
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 32)
!5774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5775, line: 27, size: 704, elements: !5776)
!5775 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5776 = !{!5777, !5780, !5783, !5786, !5789, !5792, !5795, !5796, !5799, !5809, !5810, !5811, !5814, !5817}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5774, file: !5775, line: 29, baseType: !5778, size: 16)
!5778 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !725, line: 161, baseType: !5779)
!5779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !767, line: 56, baseType: !742)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5774, file: !5775, line: 30, baseType: !5781, size: 16, offset: 16)
!5781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !725, line: 139, baseType: !5782)
!5782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !767, line: 75, baseType: !228)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5774, file: !5775, line: 31, baseType: !5784, size: 32, offset: 32)
!5784 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !725, line: 189, baseType: !5785)
!5785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !767, line: 90, baseType: !137)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5774, file: !5775, line: 32, baseType: !5787, size: 16, offset: 64)
!5787 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !725, line: 194, baseType: !5788)
!5788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !767, line: 209, baseType: !228)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5774, file: !5775, line: 33, baseType: !5790, size: 16, offset: 80)
!5790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !725, line: 165, baseType: !5791)
!5791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !767, line: 60, baseType: !228)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5774, file: !5775, line: 34, baseType: !5793, size: 16, offset: 96)
!5793 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !725, line: 169, baseType: !5794)
!5794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !767, line: 63, baseType: !228)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5774, file: !5775, line: 35, baseType: !5778, size: 16, offset: 112)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5774, file: !5775, line: 36, baseType: !5797, size: 32, offset: 128)
!5797 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !725, line: 157, baseType: !5798)
!5798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !767, line: 102, baseType: !785)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5774, file: !5775, line: 42, baseType: !5800, size: 128, offset: 192)
!5800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5801, line: 47, size: 128, elements: !5802)
!5801 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5802 = !{!5803, !5808}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5800, file: !5801, line: 48, baseType: !5804, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5805, line: 42, baseType: !5806)
!5805 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !131, line: 200, baseType: !5807)
!5807 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5800, file: !5801, line: 49, baseType: !768, size: 32, offset: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5774, file: !5775, line: 43, baseType: !5800, size: 128, offset: 320)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5774, file: !5775, line: 44, baseType: !5800, size: 128, offset: 448)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5774, file: !5775, line: 45, baseType: !5812, size: 32, offset: 576)
!5812 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !725, line: 102, baseType: !5813)
!5813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !767, line: 34, baseType: !768)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5774, file: !5775, line: 46, baseType: !5815, size: 32, offset: 608)
!5815 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !725, line: 97, baseType: !5816)
!5816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !767, line: 30, baseType: !768)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5774, file: !5775, line: 48, baseType: !5818, size: 64, offset: 640)
!5818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 64, elements: !391)
!5819 = !{!5820, !5821}
!5820 = !DILocalVariable(name: "file", arg: 1, scope: !5770, file: !721, line: 16, type: !53)
!5821 = !DILocalVariable(name: "st", arg: 2, scope: !5770, file: !721, line: 16, type: !5773)
!5822 = !DILocation(line: 0, scope: !5770)
!5823 = !DILocation(line: 18, column: 5, scope: !5770)
!5824 = distinct !DISubprogram(name: "_isatty", scope: !721, file: !721, line: 22, type: !5606, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5825)
!5825 = !{!5826}
!5826 = !DILocalVariable(name: "file", arg: 1, scope: !5824, file: !721, line: 22, type: !53)
!5827 = !DILocation(line: 0, scope: !5824)
!5828 = !DILocation(line: 24, column: 5, scope: !5824)
!5829 = distinct !DISubprogram(name: "_lseek", scope: !721, file: !721, line: 27, type: !5830, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5832)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!53, !53, !53, !53}
!5832 = !{!5833, !5834, !5835}
!5833 = !DILocalVariable(name: "file", arg: 1, scope: !5829, file: !721, line: 27, type: !53)
!5834 = !DILocalVariable(name: "ptr", arg: 2, scope: !5829, file: !721, line: 27, type: !53)
!5835 = !DILocalVariable(name: "dir", arg: 3, scope: !5829, file: !721, line: 27, type: !53)
!5836 = !DILocation(line: 0, scope: !5829)
!5837 = !DILocation(line: 29, column: 5, scope: !5829)
!5838 = distinct !DISubprogram(name: "_open", scope: !721, file: !721, line: 32, type: !5839, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5841)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!53, !760, !53, !53}
!5841 = !{!5842, !5843, !5844}
!5842 = !DILocalVariable(name: "name", arg: 1, scope: !5838, file: !721, line: 32, type: !760)
!5843 = !DILocalVariable(name: "flags", arg: 2, scope: !5838, file: !721, line: 32, type: !53)
!5844 = !DILocalVariable(name: "mode", arg: 3, scope: !5838, file: !721, line: 32, type: !53)
!5845 = !DILocation(line: 0, scope: !5838)
!5846 = !DILocation(line: 34, column: 5, scope: !5838)
!5847 = distinct !DISubprogram(name: "_read", scope: !721, file: !721, line: 37, type: !5848, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5850)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!53, !53, !726, !53}
!5850 = !{!5851, !5852, !5853}
!5851 = !DILocalVariable(name: "file", arg: 1, scope: !5847, file: !721, line: 37, type: !53)
!5852 = !DILocalVariable(name: "ptr", arg: 2, scope: !5847, file: !721, line: 37, type: !726)
!5853 = !DILocalVariable(name: "len", arg: 3, scope: !5847, file: !721, line: 37, type: !53)
!5854 = !DILocation(line: 0, scope: !5847)
!5855 = !DILocation(line: 39, column: 5, scope: !5847)
!5856 = distinct !DISubprogram(name: "_write", scope: !721, file: !721, line: 52, type: !5848, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5857)
!5857 = !{!5858, !5859, !5860, !5861}
!5858 = !DILocalVariable(name: "file", arg: 1, scope: !5856, file: !721, line: 52, type: !53)
!5859 = !DILocalVariable(name: "ptr", arg: 2, scope: !5856, file: !721, line: 52, type: !726)
!5860 = !DILocalVariable(name: "len", arg: 3, scope: !5856, file: !721, line: 52, type: !53)
!5861 = !DILocalVariable(name: "i", scope: !5856, file: !721, line: 54, type: !53)
!5862 = !DILocation(line: 0, scope: !5856)
!5863 = !DILocation(line: 56, column: 19, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5865, file: !721, line: 56, column: 5)
!5865 = distinct !DILexicalBlock(scope: !5856, file: !721, line: 56, column: 5)
!5866 = !DILocation(line: 56, column: 5, scope: !5865)
!5867 = !DILocation(line: 57, column: 26, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5864, file: !721, line: 56, column: 31)
!5869 = !DILocation(line: 57, column: 22, scope: !5868)
!5870 = !DILocation(line: 57, column: 9, scope: !5868)
!5871 = !DILocation(line: 56, column: 27, scope: !5864)
!5872 = distinct !{!5872, !5866, !5873}
!5873 = !DILocation(line: 58, column: 5, scope: !5865)
!5874 = !DILocation(line: 60, column: 5, scope: !5856)
!5875 = !DILocation(line: 0, scope: !720)
!5876 = !DILocation(line: 70, column: 5, scope: !720)
!5877 = !{i64 1109}
!5878 = !DILocation(line: 72, column: 14, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !720, file: !721, line: 72, column: 9)
!5880 = !DILocation(line: 72, column: 11, scope: !5879)
!5881 = !DILocation(line: 72, column: 9, scope: !720)
!5882 = !DILocation(line: 78, column: 32, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !720, file: !721, line: 78, column: 9)
!5884 = !DILocation(line: 78, column: 15, scope: !5883)
!5885 = !DILocation(line: 89, column: 1, scope: !720)
!5886 = !DILocation(line: 78, column: 9, scope: !720)
!5887 = distinct !DISubprogram(name: "_exit", scope: !721, file: !721, line: 91, type: !870, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5888)
!5888 = !{!5889}
!5889 = !DILocalVariable(name: "__status", arg: 1, scope: !5887, file: !721, line: 91, type: !53)
!5890 = !DILocation(line: 0, scope: !5887)
!5891 = !DILocation(line: 93, column: 5, scope: !5887)
!5892 = !DILocation(line: 94, column: 5, scope: !5887)
!5893 = distinct !{!5893, !5892, !5894}
!5894 = !DILocation(line: 96, column: 5, scope: !5887)
!5895 = distinct !DISubprogram(name: "_kill", scope: !721, file: !721, line: 100, type: !5896, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5898)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!53, !53, !53}
!5898 = !{!5899, !5900}
!5899 = !DILocalVariable(name: "pid", arg: 1, scope: !5895, file: !721, line: 100, type: !53)
!5900 = !DILocalVariable(name: "sig", arg: 2, scope: !5895, file: !721, line: 100, type: !53)
!5901 = !DILocation(line: 0, scope: !5895)
!5902 = !DILocation(line: 102, column: 5, scope: !5895)
!5903 = !DILocation(line: 103, column: 5, scope: !5895)
!5904 = distinct !DISubprogram(name: "_getpid", scope: !721, file: !721, line: 107, type: !5905, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !1163)
!5905 = !DISubroutineType(types: !5906)
!5906 = !{!5907}
!5907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !725, line: 174, baseType: !5908)
!5908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !767, line: 52, baseType: !53)
!5909 = !DILocation(line: 109, column: 5, scope: !5904)
!5910 = !DILocation(line: 110, column: 5, scope: !5904)
