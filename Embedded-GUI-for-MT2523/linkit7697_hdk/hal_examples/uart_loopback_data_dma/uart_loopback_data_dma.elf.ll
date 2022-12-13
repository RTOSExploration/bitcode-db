; ModuleID = './build/uart_loopback_data_dma.elf.bc'
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
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !418
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !476
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@g_uart_receive_buffer = internal global [256 x i8] zeroinitializer, align 1, !dbg !528
@g_uart_send_buffer = internal global [256 x i8] zeroinitializer, align 1, !dbg !568
@.str.19 = private unnamed_addr constant [65 x i8] c"\0D\0A\0D\0APlease input data to this UART port and watch it's output:\0D\0A\00", align 1
@g_uart_receive_event = internal global i8 0, align 1, !dbg !573
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !575
@System_Initialize_Done = internal global i32 0, align 4, !dbg !633
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !635
@end = external dso_local global i8, align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.27 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.28 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 08:07:06 GMT +00:00\00", align 1, !dbg !844
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !849
@hw_verno_str = dso_local local_unnamed_addr global [15 x i8] c"linkit7697_hdk\00", align 1, !dbg !853

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @DMA_ERROR_LISR() #0 !dbg !1082 {
  br label %1, !dbg !1084

1:                                                ; preds = %0, %1
  br label %1, !dbg !1084, !llvm.loop !1085
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Stop(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1087 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1091, metadata !DIExpression()), !dbg !1092
  %2 = zext i8 %0 to i32, !dbg !1093
  %3 = shl nuw nsw i32 %2, 8, !dbg !1093
  %4 = or i32 %3, -2097086440, !dbg !1093
  %5 = inttoptr i32 %4 to i32*, !dbg !1093
  store volatile i32 0, i32* %5, align 8, !dbg !1093
  %6 = or i32 %3, -2097086432, !dbg !1094
  %7 = inttoptr i32 %6 to i32*, !dbg !1094
  store volatile i32 32768, i32* %7, align 32, !dbg !1094
  ret void, !dbg !1095
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Run(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1096 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1098, metadata !DIExpression()), !dbg !1099
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1100
  %2 = zext i8 %0 to i32, !dbg !1101
  %3 = shl nuw nsw i32 %2, 8, !dbg !1101
  %4 = or i32 %3, -2097086440, !dbg !1101
  %5 = inttoptr i32 %4 to i32*, !dbg !1101
  store volatile i32 32768, i32* %5, align 8, !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_GetChannel(i32 noundef %0) local_unnamed_addr #3 !dbg !1103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 -1, metadata !1109, metadata !DIExpression()), !dbg !1111
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1112, !srcloc !1121
  call void @llvm.dbg.value(metadata i32 %2, metadata !1118, metadata !DIExpression()) #15, !dbg !1122
  call void @llvm.dbg.value(metadata i32 %2, metadata !1110, metadata !DIExpression()), !dbg !1111
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1123, !srcloc !1126
  call void @llvm.dbg.value(metadata i8 3, metadata !1108, metadata !DIExpression()), !dbg !1111
  %3 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 3, metadata !1108, metadata !DIExpression()), !dbg !1111
  br label %4, !dbg !1127

4:                                                ; preds = %1, %13
  %5 = phi i32 [ 3, %1 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1108, metadata !DIExpression()), !dbg !1111
  %6 = shl nuw nsw i32 1, %5, !dbg !1129
  %7 = and i32 %3, %6, !dbg !1133
  %8 = icmp eq i32 %7, 0, !dbg !1134
  br i1 %8, label %13, label %9, !dbg !1135

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i8, !dbg !1111
  call void @llvm.dbg.value(metadata i8 %10, metadata !1109, metadata !DIExpression()), !dbg !1111
  %11 = xor i32 %6, -1, !dbg !1136
  %12 = and i32 %3, %11, !dbg !1138
  store i32 %12, i32* @DMA_Channel_Status, align 4, !dbg !1138
  br label %16, !dbg !1139

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %5, 1, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %14, metadata !1108, metadata !DIExpression()), !dbg !1111
  %15 = icmp eq i32 %14, 12, !dbg !1141
  br i1 %15, label %16, label %4, !dbg !1127, !llvm.loop !1142

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ -1, %13 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %17, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %2, metadata !1144, metadata !DIExpression()) #15, !dbg !1149
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1152, !srcloc !1153
  %18 = zext i8 %17 to i32, !dbg !1154
  %19 = add nsw i32 %18, -1, !dbg !1155
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %19, !dbg !1156
  store i32 %0, i32* %20, align 4, !dbg !1157
  ret i8 %17, !dbg !1158
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1159 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1161, metadata !DIExpression()), !dbg !1163
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1164, !srcloc !1121
  call void @llvm.dbg.value(metadata i32 %2, metadata !1118, metadata !DIExpression()) #15, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %2, metadata !1162, metadata !DIExpression()), !dbg !1163
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1168, !srcloc !1126
  %3 = zext i8 %0 to i32, !dbg !1170
  %4 = shl nuw i32 1, %3, !dbg !1171
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1172
  %6 = or i32 %5, %4, !dbg !1172
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1172
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1173
  %7 = add nsw i32 %3, -1, !dbg !1174
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1175
  store i32 26, i32* %8, align 4, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %2, metadata !1144, metadata !DIExpression()) #15, !dbg !1177
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1180, !srcloc !1153
  ret void, !dbg !1181
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1186, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %1, metadata !1187, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 -1, metadata !1189, metadata !DIExpression()), !dbg !1191
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1192, !srcloc !1121
  call void @llvm.dbg.value(metadata i32 %3, metadata !1118, metadata !DIExpression()) #15, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %3, metadata !1190, metadata !DIExpression()), !dbg !1191
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1196, !srcloc !1126
  %4 = add i8 %1, 1, !dbg !1198
  call void @llvm.dbg.value(metadata i8 %4, metadata !1188, metadata !DIExpression()), !dbg !1191
  %5 = icmp ugt i8 %4, 2, !dbg !1199
  br i1 %5, label %20, label %6, !dbg !1201

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32, !dbg !1202
  %8 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1203
  %9 = shl nuw nsw i32 1, %7, !dbg !1205
  %10 = and i32 %8, %9, !dbg !1206
  %11 = icmp eq i32 %10, 0, !dbg !1207
  br i1 %11, label %15, label %12, !dbg !1208

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %4, metadata !1189, metadata !DIExpression()), !dbg !1191
  %13 = xor i32 %9, -1, !dbg !1209
  %14 = and i32 %8, %13, !dbg !1211
  store i32 %14, i32* @DMA_Channel_Status, align 4, !dbg !1211
  br label %15, !dbg !1212

15:                                               ; preds = %6, %12
  %16 = phi i8 [ %4, %12 ], [ -1, %6 ], !dbg !1191
  call void @llvm.dbg.value(metadata i8 %16, metadata !1189, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %3, metadata !1144, metadata !DIExpression()) #15, !dbg !1213
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1216, !srcloc !1153
  %17 = zext i8 %16 to i32, !dbg !1217
  %18 = add nsw i32 %17, -1, !dbg !1218
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %18, !dbg !1219
  store i32 %0, i32* %19, align 4, !dbg !1220
  br label %20, !dbg !1221

20:                                               ; preds = %2, %15
  %21 = phi i8 [ %16, %15 ], [ -1, %2 ], !dbg !1191
  ret i8 %21, !dbg !1222
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FullSize_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1223 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1225, metadata !DIExpression()), !dbg !1227
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1228, !srcloc !1121
  call void @llvm.dbg.value(metadata i32 %2, metadata !1118, metadata !DIExpression()) #15, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %2, metadata !1226, metadata !DIExpression()), !dbg !1227
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1232, !srcloc !1126
  %3 = zext i8 %0 to i32, !dbg !1234
  %4 = shl nuw i32 1, %3, !dbg !1235
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1236
  %6 = or i32 %5, %4, !dbg !1236
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1236
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1237
  %7 = add nsw i32 %3, -1, !dbg !1238
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1239
  store i32 26, i32* %8, align 4, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %2, metadata !1144, metadata !DIExpression()) #15, !dbg !1241
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1244, !srcloc !1153
  ret void, !dbg !1245
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Config_Internal(i8 noundef zeroext %0, %struct.DMA_INPUT* noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 !dbg !1246 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1261, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata %struct.DMA_INPUT* %1, metadata !1262, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %2, metadata !1263, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %3, metadata !1264, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i8 %4, metadata !1265, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i1 %5, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i32 0, metadata !1267, metadata !DIExpression()), !dbg !1269
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %0) #14, !dbg !1270
  %7 = zext i8 %0 to i32, !dbg !1271
  %8 = icmp ugt i8 %0, 16, !dbg !1271
  br i1 %8, label %9, label %16, !dbg !1273

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1271
  %11 = shl nuw nsw i32 %7, 1, !dbg !1271
  %12 = add nsw i32 %11, -34, !dbg !1271
  %13 = shl nuw i32 1, %12, !dbg !1271
  %14 = and i32 %10, %13, !dbg !1271
  %15 = icmp eq i32 %14, 0, !dbg !1271
  br i1 %15, label %26, label %23, !dbg !1271

16:                                               ; preds = %6
  %17 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1271
  %18 = shl nuw nsw i32 %7, 1, !dbg !1271
  %19 = add nsw i32 %18, -2, !dbg !1271
  %20 = shl nuw i32 1, %19, !dbg !1271
  %21 = and i32 %17, %20, !dbg !1271
  %22 = icmp eq i32 %21, 0, !dbg !1271
  br i1 %22, label %31, label %23, !dbg !1273

23:                                               ; preds = %16, %9
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 187) #16, !dbg !1274
  br label %25, !dbg !1274

25:                                               ; preds = %25, %23
  br label %25, !dbg !1274, !llvm.loop !1278

26:                                               ; preds = %9
  %27 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1279
  %28 = shl i32 2, %12, !dbg !1279
  %29 = and i32 %27, %28, !dbg !1279
  %30 = icmp eq i32 %29, 0, !dbg !1279
  br i1 %30, label %39, label %36, !dbg !1279

31:                                               ; preds = %16
  %32 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1279
  %33 = shl i32 2, %19, !dbg !1279
  %34 = and i32 %32, %33, !dbg !1279
  %35 = icmp eq i32 %34, 0, !dbg !1279
  br i1 %35, label %39, label %36, !dbg !1281

36:                                               ; preds = %31, %26
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 191) #16, !dbg !1282
  br label %38, !dbg !1282

38:                                               ; preds = %38, %36
  br label %38, !dbg !1282, !llvm.loop !1286

39:                                               ; preds = %31, %26
  %40 = add nsw i32 %7, -1, !dbg !1287
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %40, !dbg !1287
  %42 = load i32, i32* %41, align 4, !dbg !1287
  %43 = icmp eq i32 %42, 26, !dbg !1287
  br i1 %43, label %44, label %47, !dbg !1289

44:                                               ; preds = %39
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 194) #16, !dbg !1290
  br label %46, !dbg !1290

46:                                               ; preds = %46, %44
  br label %46, !dbg !1290, !llvm.loop !1292

47:                                               ; preds = %39
  %48 = and i1 %2, %3, !dbg !1293
  br i1 %48, label %49, label %52, !dbg !1293

49:                                               ; preds = %47
  %50 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 197) #16, !dbg !1294
  br label %51, !dbg !1294

51:                                               ; preds = %51, %49
  br label %51, !dbg !1294, !llvm.loop !1299

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 2, !dbg !1300
  %54 = load i32, i32* %53, align 4, !dbg !1300
  %55 = icmp ugt i32 %54, 65535, !dbg !1300
  br i1 %55, label %56, label %59, !dbg !1302

56:                                               ; preds = %52
  %57 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 200) #16, !dbg !1303
  br label %58, !dbg !1303

58:                                               ; preds = %58, %56
  br label %58, !dbg !1303, !llvm.loop !1305

59:                                               ; preds = %52
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1306
  %60 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 0, !dbg !1307
  %61 = load i32, i32* %60, align 4, !dbg !1307
  switch i32 %61, label %252 [
    i32 0, label %62
    i32 1, label %94
    i32 2, label %126
    i32 3, label %140
    i32 4, label %196
  ], !dbg !1308

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1309
  br i1 %2, label %64, label %81, !dbg !1312

64:                                               ; preds = %62
  %65 = bitcast i8** %63 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1313
  %66 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1313
  %67 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 1, !dbg !1315
  call void @llvm.dbg.value(metadata i32 undef, metadata !1268, metadata !DIExpression()), !dbg !1269
  %68 = load i32, i32* %67, align 4, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %85, metadata !1268, metadata !DIExpression()), !dbg !1269
  %69 = shl i32 %68, 20, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %86, metadata !1267, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %70 = or i32 %69, 20, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %86, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %71 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 2, !dbg !1318
  %72 = load i32, i32* %71, align 4, !dbg !1318
  %73 = shl nuw nsw i32 %7, 8, !dbg !1318
  %74 = or i32 %73, -2097086464, !dbg !1318
  %75 = inttoptr i32 %74 to i32*, !dbg !1318
  store volatile i32 %72, i32* %75, align 256, !dbg !1318
  %76 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1321
  %77 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %76, i32 0, i32 3, !dbg !1321
  %78 = load i32, i32* %77, align 4, !dbg !1321
  %79 = or i32 %73, -2097086460, !dbg !1321
  %80 = inttoptr i32 %79 to i32*, !dbg !1321
  store volatile i32 %78, i32* %80, align 4, !dbg !1321
  br label %255, !dbg !1322

81:                                               ; preds = %62
  %82 = bitcast i8** %63 to %struct.DMA_HWMENU**, !dbg !1323
  %83 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %82, align 4, !dbg !1323
  %84 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 1, !dbg !1325
  call void @llvm.dbg.value(metadata i32 undef, metadata !1268, metadata !DIExpression()), !dbg !1269
  %85 = load i32, i32* %84, align 4, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %85, metadata !1268, metadata !DIExpression()), !dbg !1269
  %86 = shl i32 %85, 20, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %86, metadata !1267, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %86, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %87 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 2, !dbg !1326
  %88 = load i32, i32* %87, align 4, !dbg !1326
  %89 = shl nuw nsw i32 %7, 8, !dbg !1326
  %90 = or i32 %89, -2097086420, !dbg !1326
  %91 = inttoptr i32 %90 to i32*, !dbg !1326
  store volatile i32 %88, i32* %91, align 4, !dbg !1326
  %92 = select i1 %3, i32 52, i32 20, !dbg !1328
  %93 = or i32 %86, %92, !dbg !1328
  br label %255, !dbg !1328

94:                                               ; preds = %59
  %95 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1329
  br i1 %2, label %96, label %113, !dbg !1331

96:                                               ; preds = %94
  %97 = bitcast i8** %95 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1332
  %98 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1332
  %99 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 1, !dbg !1334
  call void @llvm.dbg.value(metadata i32 undef, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1269
  %100 = load i32, i32* %99, align 4, !dbg !1329
  %101 = shl i32 %100, 20, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %118, metadata !1267, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %102 = or i32 %101, 262168, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %118, metadata !1267, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %103 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 2, !dbg !1336
  %104 = load i32, i32* %103, align 4, !dbg !1336
  %105 = shl nuw nsw i32 %7, 8, !dbg !1336
  %106 = or i32 %105, -2097086464, !dbg !1336
  %107 = inttoptr i32 %106 to i32*, !dbg !1336
  store volatile i32 %104, i32* %107, align 256, !dbg !1336
  %108 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1339
  %109 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %108, i32 0, i32 3, !dbg !1339
  %110 = load i32, i32* %109, align 4, !dbg !1339
  %111 = or i32 %105, -2097086460, !dbg !1339
  %112 = inttoptr i32 %111 to i32*, !dbg !1339
  store volatile i32 %110, i32* %112, align 4, !dbg !1339
  br label %255, !dbg !1340

113:                                              ; preds = %94
  %114 = bitcast i8** %95 to %struct.DMA_HWMENU**, !dbg !1341
  %115 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %114, align 4, !dbg !1341
  %116 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 1, !dbg !1343
  call void @llvm.dbg.value(metadata i32 undef, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1269
  %117 = load i32, i32* %116, align 4, !dbg !1329
  %118 = shl i32 %117, 20, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %118, metadata !1267, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %118, metadata !1267, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %119 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 2, !dbg !1344
  %120 = load i32, i32* %119, align 4, !dbg !1344
  %121 = shl nuw nsw i32 %7, 8, !dbg !1344
  %122 = or i32 %121, -2097086420, !dbg !1344
  %123 = inttoptr i32 %122 to i32*, !dbg !1344
  store volatile i32 %120, i32* %123, align 4, !dbg !1344
  %124 = select i1 %3, i32 262200, i32 262168, !dbg !1346
  %125 = or i32 %118, %124, !dbg !1346
  br label %255, !dbg !1346

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1347
  %128 = bitcast i8** %127 to %struct.DMA_SWCOPYMENU**, !dbg !1347
  %129 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1347
  %130 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %129, i32 0, i32 0, !dbg !1347
  %131 = load i32, i32* %130, align 4, !dbg !1347
  %132 = shl nuw nsw i32 %7, 8, !dbg !1347
  %133 = or i32 %132, -2097086464, !dbg !1347
  %134 = inttoptr i32 %133 to i32*, !dbg !1347
  store volatile i32 %131, i32* %134, align 256, !dbg !1347
  %135 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1348
  %136 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %135, i32 0, i32 1, !dbg !1348
  %137 = load i32, i32* %136, align 4, !dbg !1348
  %138 = or i32 %132, -2097086460, !dbg !1348
  %139 = inttoptr i32 %138 to i32*, !dbg !1348
  store volatile i32 %137, i32* %139, align 4, !dbg !1348
  call void @llvm.dbg.value(metadata i32 12, metadata !1267, metadata !DIExpression()), !dbg !1269
  br label %255, !dbg !1349

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1350
  br i1 %2, label %142, label %171, !dbg !1352

142:                                              ; preds = %140
  %143 = bitcast i8** %141 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1353
  %144 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1353
  %145 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 1, !dbg !1355
  call void @llvm.dbg.value(metadata i32 undef, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1269
  %146 = load i32, i32* %145, align 4, !dbg !1350
  %147 = shl i32 %146, 20, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %176, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %148 = or i32 %147, 131092, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %176, metadata !1267, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %149 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 4, !dbg !1357
  %150 = load i8*, i8** %149, align 4, !dbg !1357
  %151 = ptrtoint i8* %150 to i32, !dbg !1357
  %152 = shl nuw nsw i32 %7, 8, !dbg !1357
  %153 = or i32 %152, -2097086456, !dbg !1357
  %154 = inttoptr i32 %153 to i32*, !dbg !1357
  store volatile i32 %151, i32* %154, align 8, !dbg !1357
  %155 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1360
  %156 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %155, i32 0, i32 5, !dbg !1360
  %157 = load i8*, i8** %156, align 4, !dbg !1360
  %158 = ptrtoint i8* %157 to i32, !dbg !1360
  %159 = or i32 %152, -2097086452, !dbg !1360
  %160 = inttoptr i32 %159 to i32*, !dbg !1360
  store volatile i32 %158, i32* %160, align 4, !dbg !1360
  %161 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1361
  %162 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %161, i32 0, i32 2, !dbg !1361
  %163 = load i32, i32* %162, align 4, !dbg !1361
  %164 = or i32 %152, -2097086464, !dbg !1361
  %165 = inttoptr i32 %164 to i32*, !dbg !1361
  store volatile i32 %163, i32* %165, align 256, !dbg !1361
  %166 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1362
  %167 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %166, i32 0, i32 3, !dbg !1362
  %168 = load i32, i32* %167, align 4, !dbg !1362
  %169 = or i32 %152, -2097086460, !dbg !1362
  %170 = inttoptr i32 %169 to i32*, !dbg !1362
  store volatile i32 %168, i32* %170, align 4, !dbg !1362
  br label %255, !dbg !1363

171:                                              ; preds = %140
  %172 = bitcast i8** %141 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1364
  %173 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1364
  %174 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 1, !dbg !1366
  call void @llvm.dbg.value(metadata i32 undef, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1269
  %175 = load i32, i32* %174, align 4, !dbg !1350
  %176 = shl i32 %175, 20, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %176, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %176, metadata !1267, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %177 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 3, !dbg !1367
  %178 = load i8*, i8** %177, align 4, !dbg !1367
  %179 = ptrtoint i8* %178 to i32, !dbg !1367
  %180 = shl nuw nsw i32 %7, 8, !dbg !1367
  %181 = or i32 %180, -2097086456, !dbg !1367
  %182 = inttoptr i32 %181 to i32*, !dbg !1367
  store volatile i32 %179, i32* %182, align 8, !dbg !1367
  %183 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1369
  %184 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %183, i32 0, i32 4, !dbg !1369
  %185 = load i8*, i8** %184, align 4, !dbg !1369
  %186 = ptrtoint i8* %185 to i32, !dbg !1369
  %187 = or i32 %180, -2097086452, !dbg !1369
  %188 = inttoptr i32 %187 to i32*, !dbg !1369
  store volatile i32 %186, i32* %188, align 4, !dbg !1369
  %189 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1370
  %190 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %189, i32 0, i32 2, !dbg !1370
  %191 = load i32, i32* %190, align 4, !dbg !1370
  %192 = or i32 %180, -2097086420, !dbg !1370
  %193 = inttoptr i32 %192 to i32*, !dbg !1370
  store volatile i32 %191, i32* %193, align 4, !dbg !1370
  %194 = select i1 %3, i32 131124, i32 131092, !dbg !1371
  %195 = or i32 %176, %194, !dbg !1371
  br label %255, !dbg !1371

196:                                              ; preds = %59
  %197 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1372
  br i1 %2, label %198, label %227, !dbg !1374

198:                                              ; preds = %196
  %199 = bitcast i8** %197 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1375
  %200 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1375
  %201 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 1, !dbg !1377
  call void @llvm.dbg.value(metadata i32 undef, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1269
  %202 = load i32, i32* %201, align 4, !dbg !1372
  %203 = shl i32 %202, 20, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %232, metadata !1267, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %204 = or i32 %203, 458776, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %232, metadata !1267, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %205 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 4, !dbg !1379
  %206 = load i8*, i8** %205, align 4, !dbg !1379
  %207 = ptrtoint i8* %206 to i32, !dbg !1379
  %208 = shl nuw nsw i32 %7, 8, !dbg !1379
  %209 = or i32 %208, -2097086456, !dbg !1379
  %210 = inttoptr i32 %209 to i32*, !dbg !1379
  store volatile i32 %207, i32* %210, align 8, !dbg !1379
  %211 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1382
  %212 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %211, i32 0, i32 5, !dbg !1382
  %213 = load i8*, i8** %212, align 4, !dbg !1382
  %214 = ptrtoint i8* %213 to i32, !dbg !1382
  %215 = or i32 %208, -2097086452, !dbg !1382
  %216 = inttoptr i32 %215 to i32*, !dbg !1382
  store volatile i32 %214, i32* %216, align 4, !dbg !1382
  %217 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1383
  %218 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %217, i32 0, i32 2, !dbg !1383
  %219 = load i32, i32* %218, align 4, !dbg !1383
  %220 = or i32 %208, -2097086464, !dbg !1383
  %221 = inttoptr i32 %220 to i32*, !dbg !1383
  store volatile i32 %219, i32* %221, align 256, !dbg !1383
  %222 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1384
  %223 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %222, i32 0, i32 3, !dbg !1384
  %224 = load i32, i32* %223, align 4, !dbg !1384
  %225 = or i32 %208, -2097086460, !dbg !1384
  %226 = inttoptr i32 %225 to i32*, !dbg !1384
  store volatile i32 %224, i32* %226, align 4, !dbg !1384
  br label %255, !dbg !1385

227:                                              ; preds = %196
  %228 = bitcast i8** %197 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1386
  %229 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1386
  %230 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 1, !dbg !1388
  call void @llvm.dbg.value(metadata i32 undef, metadata !1267, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1269
  %231 = load i32, i32* %230, align 4, !dbg !1372
  %232 = shl i32 %231, 20, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %232, metadata !1267, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %232, metadata !1267, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1269
  %233 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 3, !dbg !1389
  %234 = load i8*, i8** %233, align 4, !dbg !1389
  %235 = ptrtoint i8* %234 to i32, !dbg !1389
  %236 = shl nuw nsw i32 %7, 8, !dbg !1389
  %237 = or i32 %236, -2097086456, !dbg !1389
  %238 = inttoptr i32 %237 to i32*, !dbg !1389
  store volatile i32 %235, i32* %238, align 8, !dbg !1389
  %239 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1391
  %240 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %239, i32 0, i32 4, !dbg !1391
  %241 = load i8*, i8** %240, align 4, !dbg !1391
  %242 = ptrtoint i8* %241 to i32, !dbg !1391
  %243 = or i32 %236, -2097086452, !dbg !1391
  %244 = inttoptr i32 %243 to i32*, !dbg !1391
  store volatile i32 %242, i32* %244, align 4, !dbg !1391
  %245 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1392
  %246 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %245, i32 0, i32 2, !dbg !1392
  %247 = load i32, i32* %246, align 4, !dbg !1392
  %248 = or i32 %236, -2097086420, !dbg !1392
  %249 = inttoptr i32 %248 to i32*, !dbg !1392
  store volatile i32 %247, i32* %249, align 4, !dbg !1392
  %250 = select i1 %3, i32 458808, i32 458776, !dbg !1393
  %251 = or i32 %232, %250, !dbg !1393
  br label %255, !dbg !1393

252:                                              ; preds = %59
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 410) #16, !dbg !1394
  br label %254, !dbg !1394

254:                                              ; preds = %254, %252
  br label %254, !dbg !1394, !llvm.loop !1397

255:                                              ; preds = %227, %171, %113, %81, %198, %142, %96, %64, %126
  %256 = phi i32 [ %204, %198 ], [ %148, %142 ], [ 12, %126 ], [ %102, %96 ], [ %70, %64 ], [ %93, %81 ], [ %125, %113 ], [ %195, %171 ], [ %251, %227 ], !dbg !1398
  call void @llvm.dbg.value(metadata i32 %256, metadata !1267, metadata !DIExpression()), !dbg !1269
  %257 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 1, !dbg !1399
  %258 = load i32, i32* %257, align 4, !dbg !1399
  switch i32 %258, label %328 [
    i32 0, label %259
    i32 1, label %285
    i32 2, label %309
  ], !dbg !1400

259:                                              ; preds = %255
  %260 = load i32, i32* %60, align 4, !dbg !1401
  %261 = icmp eq i32 %260, 2, !dbg !1404
  br i1 %261, label %331, label %262, !dbg !1405

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1406
  %264 = bitcast i8** %263 to %struct.DMA_TMODE**, !dbg !1406
  %265 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %264, align 4, !dbg !1406
  %266 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 0, !dbg !1409
  %267 = load i8, i8* %266, align 1, !dbg !1409, !range !1410
  %268 = icmp eq i8 %267, 0, !dbg !1409
  br i1 %268, label %331, label %269, !dbg !1411

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 1, !dbg !1412
  %271 = load i8, i8* %270, align 1, !dbg !1412
  %272 = icmp ult i8 %271, 16, !dbg !1413
  br i1 %272, label %275, label %273, !dbg !1414

273:                                              ; preds = %269
  %274 = or i32 %256, 1536, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %274, metadata !1267, metadata !DIExpression()), !dbg !1269
  br label %331, !dbg !1417

275:                                              ; preds = %269
  %276 = and i8 %271, 8, !dbg !1418
  %277 = icmp eq i8 %276, 0, !dbg !1418
  br i1 %277, label %280, label %278, !dbg !1420

278:                                              ; preds = %275
  %279 = or i32 %256, 1024, !dbg !1421
  call void @llvm.dbg.value(metadata i32 %279, metadata !1267, metadata !DIExpression()), !dbg !1269
  br label %331, !dbg !1423

280:                                              ; preds = %275
  %281 = and i8 %271, 4, !dbg !1424
  %282 = zext i8 %281 to i32, !dbg !1426
  %283 = shl nuw nsw i32 %282, 7, !dbg !1426
  %284 = or i32 %283, %256, !dbg !1426
  br label %331, !dbg !1426

285:                                              ; preds = %255
  %286 = load i32, i32* %60, align 4, !dbg !1427
  %287 = icmp eq i32 %286, 2, !dbg !1429
  br i1 %287, label %306, label %288, !dbg !1430

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1431
  %290 = bitcast i8** %289 to %struct.DMA_TMODE**, !dbg !1431
  %291 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %290, align 4, !dbg !1431
  %292 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 0, !dbg !1434
  %293 = load i8, i8* %292, align 1, !dbg !1434, !range !1410
  %294 = icmp eq i8 %293, 0, !dbg !1434
  br i1 %294, label %306, label %295, !dbg !1435

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 1, !dbg !1436
  %297 = load i8, i8* %296, align 1, !dbg !1436
  %298 = icmp ult i8 %297, 8, !dbg !1437
  br i1 %298, label %301, label %299, !dbg !1438

299:                                              ; preds = %295
  %300 = or i32 %256, 1024, !dbg !1439
  call void @llvm.dbg.value(metadata i32 %300, metadata !1267, metadata !DIExpression()), !dbg !1269
  br label %306, !dbg !1441

301:                                              ; preds = %295
  %302 = and i8 %297, 4, !dbg !1442
  %303 = zext i8 %302 to i32, !dbg !1444
  %304 = shl nuw nsw i32 %303, 7, !dbg !1444
  %305 = or i32 %304, %256, !dbg !1444
  br label %306, !dbg !1444

306:                                              ; preds = %288, %301, %299, %285
  %307 = phi i32 [ %300, %299 ], [ %256, %285 ], [ %305, %301 ], [ %256, %288 ], !dbg !1269
  call void @llvm.dbg.value(metadata i32 %307, metadata !1267, metadata !DIExpression()), !dbg !1269
  %308 = or i32 %307, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %308, metadata !1267, metadata !DIExpression()), !dbg !1269
  br label %331, !dbg !1446

309:                                              ; preds = %255
  %310 = load i32, i32* %60, align 4, !dbg !1447
  %311 = icmp eq i32 %310, 2, !dbg !1449
  br i1 %311, label %325, label %312, !dbg !1450

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1451
  %314 = bitcast i8** %313 to %struct.DMA_TMODE**, !dbg !1451
  %315 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %314, align 4, !dbg !1451
  %316 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 0, !dbg !1454
  %317 = load i8, i8* %316, align 1, !dbg !1454, !range !1410
  %318 = icmp eq i8 %317, 0, !dbg !1454
  br i1 %318, label %325, label %319, !dbg !1455

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 1, !dbg !1456
  %321 = load i8, i8* %320, align 1, !dbg !1456
  %322 = icmp ult i8 %321, 4, !dbg !1457
  %323 = or i32 %256, 512
  %324 = select i1 %322, i32 %256, i32 %323, !dbg !1458
  br label %325, !dbg !1458

325:                                              ; preds = %319, %312, %309
  %326 = phi i32 [ %256, %312 ], [ %256, %309 ], [ %324, %319 ], !dbg !1269
  call void @llvm.dbg.value(metadata i32 %326, metadata !1267, metadata !DIExpression()), !dbg !1269
  %327 = or i32 %326, 2, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %327, metadata !1267, metadata !DIExpression()), !dbg !1269
  br label %331, !dbg !1460

328:                                              ; preds = %255
  %329 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 486) #16, !dbg !1461
  br label %330, !dbg !1461

330:                                              ; preds = %330, %328
  br label %330, !dbg !1461, !llvm.loop !1464

331:                                              ; preds = %262, %280, %259, %278, %273, %325, %306
  %332 = phi i32 [ %327, %325 ], [ %308, %306 ], [ %274, %273 ], [ %279, %278 ], [ %256, %259 ], [ %284, %280 ], [ %256, %262 ], !dbg !1269
  call void @llvm.dbg.value(metadata i32 %332, metadata !1267, metadata !DIExpression()), !dbg !1269
  %333 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 4, !dbg !1465
  %334 = load void ()*, void ()** %333, align 4, !dbg !1465
  %335 = icmp eq void ()* %334, null, !dbg !1467
  br i1 %335, label %339, label %336, !dbg !1468

336:                                              ; preds = %331
  %337 = or i32 %332, 32768, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %337, metadata !1267, metadata !DIExpression()), !dbg !1269
  %338 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %40, !dbg !1471
  store void ()* %334, void ()** %338, align 4, !dbg !1472
  br label %339, !dbg !1473

339:                                              ; preds = %336, %331
  %340 = phi i32 [ %337, %336 ], [ %332, %331 ], !dbg !1269
  call void @llvm.dbg.value(metadata i32 %340, metadata !1267, metadata !DIExpression()), !dbg !1269
  %341 = shl nuw nsw i32 %7, 8, !dbg !1474
  %342 = or i32 %341, -2097086444, !dbg !1474
  %343 = inttoptr i32 %342 to i32*, !dbg !1474
  store volatile i32 %340, i32* %343, align 4, !dbg !1474
  %344 = load i32, i32* %53, align 4, !dbg !1475
  %345 = or i32 %341, -2097086448, !dbg !1475
  %346 = inttoptr i32 %345 to i32*, !dbg !1475
  store volatile i32 %344, i32* %346, align 16, !dbg !1475
  br i1 %5, label %347, label %350, !dbg !1476

347:                                              ; preds = %339
  %348 = or i32 %341, -2097086440, !dbg !1477
  %349 = inttoptr i32 %348 to i32*, !dbg !1477
  store volatile i32 32768, i32* %349, align 8, !dbg !1477
  br label %350, !dbg !1480

350:                                              ; preds = %347, %339
  ret void, !dbg !1481
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Enable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1482 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1484, metadata !DIExpression()), !dbg !1485
  %2 = zext i8 %0 to i32, !dbg !1486
  %3 = add nsw i32 %2, -1, !dbg !1487
  %4 = shl nuw i32 1, %3, !dbg !1488
  store volatile i32 %4, i32* inttoptr (i32 -2097151976 to i32*), align 8, !dbg !1489
  ret void, !dbg !1490
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_Register(i8 noundef zeroext %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !1491 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1495, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1496, metadata !DIExpression()), !dbg !1497
  %3 = zext i8 %0 to i32, !dbg !1498
  %4 = add i8 %0, -12, !dbg !1500
  %5 = icmp ult i8 %4, -11, !dbg !1500
  br i1 %5, label %6, label %8, !dbg !1500

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.DMA_Register, i32 0, i32 0), i32 noundef %3) #16, !dbg !1501
  br label %11, !dbg !1503

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1, !dbg !1504
  %10 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %9, !dbg !1505
  store void ()* %1, void ()** %10, align 4, !dbg !1506
  br label %11, !dbg !1507

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ], !dbg !1497
  ret i32 %12, !dbg !1508
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_UnRegister(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1509 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1513, metadata !DIExpression()), !dbg !1514
  %2 = zext i8 %0 to i32, !dbg !1515
  %3 = add i8 %0, -12, !dbg !1517
  %4 = icmp ult i8 %3, -11, !dbg !1517
  br i1 %4, label %5, label %7, !dbg !1517

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.DMA_UnRegister, i32 0, i32 0), i32 noundef %2) #16, !dbg !1518
  br label %10, !dbg !1520

7:                                                ; preds = %1
  %8 = add nsw i32 %2, -1, !dbg !1521
  %9 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %8, !dbg !1522
  store void ()* @DMA_ERROR_LISR, void ()** %9, align 4, !dbg !1523
  br label %10, !dbg !1524

10:                                               ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ 0, %7 ], !dbg !1514
  ret i32 %11, !dbg !1525
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_LISR(i32 %0) #3 !dbg !1526 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1528, metadata !DIExpression()), !dbg !1531
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 1) #16, !dbg !1532
  call void @llvm.dbg.value(metadata i8 0, metadata !1529, metadata !DIExpression()), !dbg !1531
  br label %3, !dbg !1533

3:                                                ; preds = %1, %25
  %4 = phi i32 [ 0, %1 ], [ %5, %25 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1529, metadata !DIExpression()), !dbg !1531
  %5 = add nuw nsw i32 %4, 1, !dbg !1535
  %6 = shl nuw nsw i32 %5, 8, !dbg !1535
  %7 = add nuw nsw i32 %6, -2097086436, !dbg !1535
  %8 = inttoptr i32 %7 to i32*, !dbg !1535
  %9 = load volatile i32, i32* %8, align 4, !dbg !1535
  %10 = and i32 %9, 32768, !dbg !1539
  %11 = icmp eq i32 %10, 0, !dbg !1539
  br i1 %11, label %25, label %12, !dbg !1540

12:                                               ; preds = %3
  %13 = trunc i32 %5 to i8, !dbg !1541
  tail call void @DMA_Stop(i8 noundef zeroext %13) #14, !dbg !1543
  %14 = add nuw nsw i32 %6, -2097086432, !dbg !1544
  %15 = inttoptr i32 %14 to i32*, !dbg !1544
  store volatile i32 32768, i32* %15, align 32, !dbg !1544
  %16 = shl nuw nsw i32 %4, 1
  %17 = shl nuw i32 1, %16
  br label %18, !dbg !1545

18:                                               ; preds = %18, %12
  %19 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1546
  %20 = and i32 %19, %17, !dbg !1545
  %21 = icmp eq i32 %20, 0, !dbg !1545
  br i1 %21, label %22, label %18, !dbg !1545, !llvm.loop !1547

22:                                               ; preds = %18
  tail call void @DMA_Clock_Disable(i8 noundef zeroext %13) #14, !dbg !1549
  %23 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %4, !dbg !1550
  %24 = load void ()*, void ()** %23, align 4, !dbg !1550
  tail call void %24() #16, !dbg !1550
  br label %25, !dbg !1551

25:                                               ; preds = %3, %22
  call void @llvm.dbg.value(metadata i32 %5, metadata !1529, metadata !DIExpression()), !dbg !1531
  %26 = icmp eq i32 %5, 11, !dbg !1552
  br i1 %26, label %27, label %3, !dbg !1533, !llvm.loop !1553

27:                                               ; preds = %25, %87
  %28 = phi i32 [ %88, %87 ], [ 12, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1529, metadata !DIExpression()), !dbg !1531
  %29 = shl nuw nsw i32 %28, 8, !dbg !1555
  %30 = or i32 %29, -2097086444, !dbg !1555
  %31 = inttoptr i32 %30 to i32*, !dbg !1555
  %32 = load volatile i32, i32* %31, align 4, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %32, metadata !1530, metadata !DIExpression()), !dbg !1531
  %33 = or i32 %29, -2097086436, !dbg !1559
  %34 = inttoptr i32 %33 to i32*, !dbg !1559
  %35 = load volatile i32, i32* %34, align 4, !dbg !1559
  %36 = and i32 %35, 32768, !dbg !1561
  %37 = icmp eq i32 %36, 0, !dbg !1561
  br i1 %37, label %87, label %38, !dbg !1562

38:                                               ; preds = %27
  %39 = lshr i32 %32, 20, !dbg !1563
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
  ], !dbg !1565

40:                                               ; preds = %38
  %41 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1566
  %42 = icmp eq void ()* %41, null, !dbg !1569
  br i1 %42, label %84, label %82, !dbg !1570

43:                                               ; preds = %38
  %44 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1571
  %45 = icmp eq void ()* %44, null, !dbg !1573
  br i1 %45, label %84, label %82, !dbg !1574

46:                                               ; preds = %38
  %47 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1575
  %48 = icmp eq void ()* %47, null, !dbg !1577
  br i1 %48, label %84, label %82, !dbg !1578

49:                                               ; preds = %38
  %50 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1579
  %51 = icmp eq void ()* %50, null, !dbg !1581
  br i1 %51, label %84, label %82, !dbg !1582

52:                                               ; preds = %38
  %53 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1583
  %54 = icmp eq void ()* %53, null, !dbg !1585
  br i1 %54, label %84, label %82, !dbg !1586

55:                                               ; preds = %38
  %56 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1587
  %57 = icmp eq void ()* %56, null, !dbg !1589
  br i1 %57, label %84, label %82, !dbg !1590

58:                                               ; preds = %38
  %59 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1591
  %60 = icmp eq void ()* %59, null, !dbg !1593
  br i1 %60, label %84, label %82, !dbg !1594

61:                                               ; preds = %38
  %62 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1595
  %63 = icmp eq void ()* %62, null, !dbg !1597
  br i1 %63, label %84, label %82, !dbg !1598

64:                                               ; preds = %38
  %65 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1599
  %66 = icmp eq void ()* %65, null, !dbg !1601
  br i1 %66, label %84, label %82, !dbg !1602

67:                                               ; preds = %38
  %68 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1603
  %69 = icmp eq void ()* %68, null, !dbg !1605
  br i1 %69, label %84, label %82, !dbg !1606

70:                                               ; preds = %38
  %71 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1607
  %72 = icmp eq void ()* %71, null, !dbg !1609
  br i1 %72, label %84, label %82, !dbg !1610

73:                                               ; preds = %38
  %74 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1611
  %75 = icmp eq void ()* %74, null, !dbg !1613
  br i1 %75, label %84, label %82, !dbg !1614

76:                                               ; preds = %38
  %77 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1615
  %78 = icmp eq void ()* %77, null, !dbg !1617
  br i1 %78, label %84, label %82, !dbg !1618

79:                                               ; preds = %38
  %80 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1619
  %81 = icmp eq void ()* %80, null, !dbg !1621
  br i1 %81, label %84, label %82, !dbg !1622

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  %83 = phi void ()* [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ]
  tail call void %83() #16, !dbg !1623
  br label %84, !dbg !1624

84:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %38
  %85 = or i32 %29, -2097086432, !dbg !1624
  %86 = inttoptr i32 %85 to i32*, !dbg !1624
  store volatile i32 32768, i32* %86, align 32, !dbg !1624
  br label %87, !dbg !1625

87:                                               ; preds = %27, %84
  %88 = add nuw nsw i32 %28, 1, !dbg !1626
  call void @llvm.dbg.value(metadata i32 %88, metadata !1529, metadata !DIExpression()), !dbg !1531
  %89 = icmp eq i32 %88, 26, !dbg !1627
  br i1 %89, label %90, label %27, !dbg !1628, !llvm.loop !1629

90:                                               ; preds = %87, %150
  %91 = phi i32 [ %151, %150 ], [ 12, %87 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1529, metadata !DIExpression()), !dbg !1531
  %92 = shl nuw nsw i32 %91, 8, !dbg !1631
  %93 = or i32 %92, -2097086444, !dbg !1631
  %94 = inttoptr i32 %93 to i32*, !dbg !1631
  %95 = load volatile i32, i32* %94, align 4, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %95, metadata !1530, metadata !DIExpression()), !dbg !1531
  %96 = or i32 %92, -2097086436, !dbg !1635
  %97 = inttoptr i32 %96 to i32*, !dbg !1635
  %98 = load volatile i32, i32* %97, align 4, !dbg !1635
  %99 = and i32 %98, 65536, !dbg !1637
  %100 = icmp eq i32 %99, 0, !dbg !1637
  br i1 %100, label %150, label %101, !dbg !1638

101:                                              ; preds = %90
  %102 = lshr i32 %95, 20, !dbg !1639
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
  ], !dbg !1641

103:                                              ; preds = %101
  %104 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1642
  %105 = icmp eq void ()* %104, null, !dbg !1645
  br i1 %105, label %147, label %145, !dbg !1646

106:                                              ; preds = %101
  %107 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1647
  %108 = icmp eq void ()* %107, null, !dbg !1649
  br i1 %108, label %147, label %145, !dbg !1650

109:                                              ; preds = %101
  %110 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1651
  %111 = icmp eq void ()* %110, null, !dbg !1653
  br i1 %111, label %147, label %145, !dbg !1654

112:                                              ; preds = %101
  %113 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1655
  %114 = icmp eq void ()* %113, null, !dbg !1657
  br i1 %114, label %147, label %145, !dbg !1658

115:                                              ; preds = %101
  %116 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1659
  %117 = icmp eq void ()* %116, null, !dbg !1661
  br i1 %117, label %147, label %145, !dbg !1662

118:                                              ; preds = %101
  %119 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1663
  %120 = icmp eq void ()* %119, null, !dbg !1665
  br i1 %120, label %147, label %145, !dbg !1666

121:                                              ; preds = %101
  %122 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1667
  %123 = icmp eq void ()* %122, null, !dbg !1669
  br i1 %123, label %147, label %145, !dbg !1670

124:                                              ; preds = %101
  %125 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1671
  %126 = icmp eq void ()* %125, null, !dbg !1673
  br i1 %126, label %147, label %145, !dbg !1674

127:                                              ; preds = %101
  %128 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1675
  %129 = icmp eq void ()* %128, null, !dbg !1677
  br i1 %129, label %147, label %145, !dbg !1678

130:                                              ; preds = %101
  %131 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1679
  %132 = icmp eq void ()* %131, null, !dbg !1681
  br i1 %132, label %147, label %145, !dbg !1682

133:                                              ; preds = %101
  %134 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1683
  %135 = icmp eq void ()* %134, null, !dbg !1685
  br i1 %135, label %147, label %145, !dbg !1686

136:                                              ; preds = %101
  %137 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1687
  %138 = icmp eq void ()* %137, null, !dbg !1689
  br i1 %138, label %147, label %145, !dbg !1690

139:                                              ; preds = %101
  %140 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1691
  %141 = icmp eq void ()* %140, null, !dbg !1693
  br i1 %141, label %147, label %145, !dbg !1694

142:                                              ; preds = %101
  %143 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1695
  %144 = icmp eq void ()* %143, null, !dbg !1697
  br i1 %144, label %147, label %145, !dbg !1698

145:                                              ; preds = %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %146 = phi void ()* [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ], [ %128, %127 ], [ %131, %130 ], [ %134, %133 ], [ %137, %136 ], [ %140, %139 ], [ %143, %142 ]
  tail call void %146() #16, !dbg !1699
  br label %147, !dbg !1700

147:                                              ; preds = %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %101
  %148 = or i32 %92, -2097086432, !dbg !1700
  %149 = inttoptr i32 %148 to i32*, !dbg !1700
  store volatile i32 65536, i32* %149, align 32, !dbg !1700
  br label %150, !dbg !1701

150:                                              ; preds = %90, %147
  %151 = add nuw nsw i32 %91, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %151, metadata !1529, metadata !DIExpression()), !dbg !1531
  %152 = icmp eq i32 %151, 26, !dbg !1703
  br i1 %152, label %153, label %90, !dbg !1704, !llvm.loop !1705

153:                                              ; preds = %150
  %154 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1707
  ret void, !dbg !1708
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Disable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1709 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1711, metadata !DIExpression()), !dbg !1712
  %2 = zext i8 %0 to i32, !dbg !1713
  %3 = add nsw i32 %2, -1, !dbg !1714
  %4 = shl nuw i32 1, %3, !dbg !1715
  store volatile i32 %4, i32* inttoptr (i32 -2097151980 to i32*), align 4, !dbg !1716
  ret void, !dbg !1717
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Init() local_unnamed_addr #3 !dbg !1718 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1721
  %1 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1721
  br label %2, !dbg !1722

2:                                                ; preds = %0, %9
  %3 = phi i32 [ 0, %0 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1720, metadata !DIExpression()), !dbg !1721
  %4 = shl nuw i32 1, %3, !dbg !1724
  %5 = and i32 %1, %4, !dbg !1728
  %6 = icmp eq i32 %5, 0, !dbg !1729
  br i1 %6, label %9, label %7, !dbg !1730

7:                                                ; preds = %2
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %3, !dbg !1731
  store i32 26, i32* %8, align 4, !dbg !1733
  br label %9, !dbg !1734

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i32 %3, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %10, metadata !1720, metadata !DIExpression()), !dbg !1721
  %11 = icmp eq i32 %10, 11, !dbg !1736
  br i1 %11, label %12, label %2, !dbg !1722, !llvm.loop !1737

12:                                               ; preds = %9, %12
  %13 = phi i8 [ %14, %12 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1720, metadata !DIExpression()), !dbg !1721
  %14 = add nuw nsw i8 %13, 1, !dbg !1739
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %14) #14, !dbg !1743
  call void @llvm.dbg.value(metadata i8 %14, metadata !1720, metadata !DIExpression()), !dbg !1721
  %15 = icmp ult i8 %13, 10, !dbg !1744
  br i1 %15, label %12, label %16, !dbg !1745, !llvm.loop !1746

16:                                               ; preds = %12
  %17 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1748
  %18 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1749
  %19 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1750
  ret void, !dbg !1751
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1752 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1756, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 -1, metadata !1757, metadata !DIExpression()), !dbg !1760
  %2 = add i8 %0, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i8 %2, metadata !1759, metadata !DIExpression()), !dbg !1760
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1762, !srcloc !1121
  call void @llvm.dbg.value(metadata i32 %3, metadata !1118, metadata !DIExpression()) #15, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %3, metadata !1758, metadata !DIExpression()), !dbg !1760
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1766, !srcloc !1126
  %4 = zext i8 %2 to i32, !dbg !1768
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1768
  %6 = load i8, i8* %5, align 1, !dbg !1768, !range !1410
  %7 = icmp eq i8 %6, 0, !dbg !1770
  br i1 %7, label %8, label %12, !dbg !1771

8:                                                ; preds = %1
  store i8 1, i8* %5, align 1, !dbg !1772
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %2) #14, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %3, metadata !1144, metadata !DIExpression()) #15, !dbg !1775
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1778, !srcloc !1153
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1779
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1780
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1781
  br label %12, !dbg !1782

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %0, %8 ], [ -1, %1 ], !dbg !1760
  ret i8 %13, !dbg !1783
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_idle(i8 noundef returned zeroext %0) local_unnamed_addr #3 !dbg !1784 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1786, metadata !DIExpression()), !dbg !1789
  %2 = add i8 %0, 1, !dbg !1790
  call void @llvm.dbg.value(metadata i8 %2, metadata !1788, metadata !DIExpression()), !dbg !1789
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1791
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1792, !srcloc !1121
  call void @llvm.dbg.value(metadata i32 %3, metadata !1118, metadata !DIExpression()) #15, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %3, metadata !1787, metadata !DIExpression()), !dbg !1789
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1796, !srcloc !1126
  %4 = zext i8 %2 to i32, !dbg !1798
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1798
  store i8 0, i8* %5, align 1, !dbg !1799
  %6 = shl nuw i32 1, %4, !dbg !1800
  %7 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1801
  %8 = or i32 %7, %6, !dbg !1801
  store i32 %8, i32* @DMA_Channel_Status, align 4, !dbg !1801
  %9 = add nsw i32 %4, -1, !dbg !1802
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %9, !dbg !1803
  store i32 26, i32* %10, align 4, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %3, metadata !1144, metadata !DIExpression()) #15, !dbg !1805
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1808, !srcloc !1153
  ret i8 %0, !dbg !1809
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_init() local_unnamed_addr #1 !dbg !1810 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1813
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 12) #14, !dbg !1814
  call void @llvm.dbg.value(metadata i32 6293010, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 6293010, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !1815
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 13) #14, !dbg !1816
  call void @llvm.dbg.value(metadata i32 7603730, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 7603730, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !1817
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 14) #14, !dbg !1818
  call void @llvm.dbg.value(metadata i32 8388624, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 8388624, i32* inttoptr (i32 -2097082860 to i32*), align 4, !dbg !1819
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 15) #14, !dbg !1820
  call void @llvm.dbg.value(metadata i32 9748496, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 9748496, i32* inttoptr (i32 -2097082604 to i32*), align 4, !dbg !1821
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 16) #14, !dbg !1822
  call void @llvm.dbg.value(metadata i32 10485776, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 10485776, i32* inttoptr (i32 -2097082348 to i32*), align 4, !dbg !1823
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 17) #14, !dbg !1824
  call void @llvm.dbg.value(metadata i32 11845648, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 11845648, i32* inttoptr (i32 -2097082092 to i32*), align 4, !dbg !1825
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 18) #14, !dbg !1826
  call void @llvm.dbg.value(metadata i32 12582928, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 12582928, i32* inttoptr (i32 -2097081836 to i32*), align 4, !dbg !1827
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 19) #14, !dbg !1828
  call void @llvm.dbg.value(metadata i32 13942800, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 13942800, i32* inttoptr (i32 -2097081580 to i32*), align 4, !dbg !1829
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 20) #14, !dbg !1830
  call void @llvm.dbg.value(metadata i32 16023568, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 16023568, i32* inttoptr (i32 -2097081324 to i32*), align 4, !dbg !1831
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 21) #14, !dbg !1832
  call void @llvm.dbg.value(metadata i32 17072144, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 17072144, i32* inttoptr (i32 -2097081068 to i32*), align 4, !dbg !1833
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 22) #14, !dbg !1834
  call void @llvm.dbg.value(metadata i32 18120720, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 18120720, i32* inttoptr (i32 -2097080812 to i32*), align 4, !dbg !1835
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 23) #14, !dbg !1836
  call void @llvm.dbg.value(metadata i32 19169296, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 19169296, i32* inttoptr (i32 -2097080556 to i32*), align 4, !dbg !1837
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 24) #14, !dbg !1838
  call void @llvm.dbg.value(metadata i32 20217872, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 20217872, i32* inttoptr (i32 -2097080300 to i32*), align 4, !dbg !1839
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 25) #14, !dbg !1840
  call void @llvm.dbg.value(metadata i32 21282834, metadata !1812, metadata !DIExpression()), !dbg !1813
  store volatile i32 21282834, i32* inttoptr (i32 -2097080044 to i32*), align 4, !dbg !1841
  ret void, !dbg !1842
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_SetAdrs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !dbg !1843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1848, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %1, metadata !1849, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %2, metadata !1850, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %3, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %4, metadata !1852, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %5, metadata !1853, metadata !DIExpression()), !dbg !1854
  %7 = shl i32 %2, 8, !dbg !1855
  %8 = add i32 %7, -2097086420, !dbg !1855
  %9 = inttoptr i32 %8 to i32*, !dbg !1855
  store volatile i32 %0, i32* %9, align 4, !dbg !1855
  %10 = add i32 %7, -2097086396, !dbg !1856
  %11 = inttoptr i32 %10 to i32*, !dbg !1856
  store volatile i32 %1, i32* %11, align 4, !dbg !1856
  %12 = add i32 %7, -2097086400, !dbg !1857
  %13 = inttoptr i32 %12 to i32*, !dbg !1857
  store volatile i32 %3, i32* %13, align 64, !dbg !1857
  %14 = add i32 %7, -2097086448, !dbg !1858
  %15 = inttoptr i32 %14 to i32*, !dbg !1858
  store volatile i32 %4, i32* %15, align 16, !dbg !1859
  %16 = add i32 %7, -2097086384, !dbg !1860
  %17 = inttoptr i32 %16 to i32*, !dbg !1860
  store volatile i32 %5, i32* %17, align 16, !dbg !1861
  ret void, !dbg !1862
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !1863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1867, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 %1, metadata !1868, metadata !DIExpression()), !dbg !1869
  %3 = shl i32 %0, 8, !dbg !1870
  %4 = add i32 %3, -2097086384, !dbg !1870
  %5 = inttoptr i32 %4 to i32*, !dbg !1870
  store volatile i32 %1, i32* %5, align 16, !dbg !1871
  ret void, !dbg !1872
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !1873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1877, metadata !DIExpression()), !dbg !1878
  %2 = shl i32 %0, 8, !dbg !1879
  %3 = add i32 %2, -2097086444, !dbg !1879
  %4 = inttoptr i32 %3 to i32*, !dbg !1879
  %5 = load volatile i32, i32* %4, align 4, !dbg !1879
  %6 = or i32 %5, 32768, !dbg !1879
  store volatile i32 %6, i32* %4, align 4, !dbg !1879
  ret void, !dbg !1880
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !1881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1883, metadata !DIExpression()), !dbg !1884
  %2 = shl i32 %0, 8, !dbg !1885
  %3 = add i32 %2, -2097086444, !dbg !1885
  %4 = inttoptr i32 %3 to i32*, !dbg !1885
  %5 = load volatile i32, i32* %4, align 4, !dbg !1885
  %6 = and i32 %5, -32769, !dbg !1885
  store volatile i32 %6, i32* %4, align 4, !dbg !1885
  ret void, !dbg !1886
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Flush(i32 noundef %0) local_unnamed_addr #1 !dbg !1887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1889, metadata !DIExpression()), !dbg !1890
  %2 = trunc i32 %0 to i8, !dbg !1891
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1892
  %3 = shl i32 %0, 8, !dbg !1893
  %4 = add i32 %3, -2097086440, !dbg !1893
  %5 = inttoptr i32 %4 to i32*, !dbg !1893
  store volatile i32 32768, i32* %5, align 8, !dbg !1893
  ret void, !dbg !1894
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !1895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1899, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1900, metadata !DIExpression()), !dbg !1901
  %3 = add i32 %0, -12, !dbg !1902
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !1903
  store void ()* %1, void ()** %4, align 4, !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !1906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1908, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1909, metadata !DIExpression()), !dbg !1910
  %3 = add i32 %0, -12, !dbg !1911
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !1912
  store void ()* %1, void ()** %4, align 4, !dbg !1913
  ret void, !dbg !1914
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !1915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1920, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8 %1, metadata !1921, metadata !DIExpression()), !dbg !1925
  %3 = lshr i32 %0, 5, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %3, metadata !1922, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1925
  %4 = trunc i32 %0 to i16, !dbg !1927
  %5 = and i16 %4, 31, !dbg !1927
  call void @llvm.dbg.value(metadata i16 %4, metadata !1924, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1925
  %6 = trunc i32 %3 to i16, !dbg !1928
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1928

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1929
  %9 = zext i16 %5 to i32, !dbg !1932
  %10 = icmp ult i16 %5, 27, !dbg !1932
  br i1 %8, label %11, label %46, !dbg !1933

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1934

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1936
  %14 = xor i32 %13, -1, !dbg !1939
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1940
  %16 = and i32 %15, %14, !dbg !1940
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1940
  br label %44, !dbg !1941

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1942
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1942

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1943
  %21 = and i32 %20, -3, !dbg !1943
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1943
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1946
  %23 = or i32 %22, 2048, !dbg !1946
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1946
  br label %44, !dbg !1947

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1948
  %26 = and i32 %25, -3, !dbg !1948
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1948
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1951
  %28 = or i32 %27, 2048, !dbg !1951
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1951
  br label %44, !dbg !1952

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1953
  %31 = and i32 %30, -3, !dbg !1953
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1953
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1956
  %33 = or i32 %32, 2048, !dbg !1956
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1956
  br label %44, !dbg !1957

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1958
  %36 = and i32 %35, -3, !dbg !1958
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1958
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1961
  %38 = or i32 %37, 2048, !dbg !1961
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1961
  br label %44, !dbg !1962

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1963
  %41 = and i32 %40, -3, !dbg !1963
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1963
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1966
  %43 = or i32 %42, 2048, !dbg !1966
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1966
  br label %44, !dbg !1967

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1968
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1968
  br label %97, !dbg !1969

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1970

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1972
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1975
  %50 = or i32 %49, %48, !dbg !1975
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1975
  br label %68, !dbg !1976

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1977
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1977

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1978
  %55 = or i32 %54, 2050, !dbg !1978
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1978
  br label %68, !dbg !1981

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1982
  %58 = or i32 %57, 2050, !dbg !1982
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1982
  br label %68, !dbg !1985

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1986
  %61 = or i32 %60, 2050, !dbg !1986
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1986
  br label %68, !dbg !1989

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1990
  %64 = or i32 %63, 2050, !dbg !1990
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1990
  br label %68, !dbg !1993

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1994
  %67 = or i32 %66, 2050, !dbg !1994
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1994
  br label %68, !dbg !1997

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1998
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1998
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1999
  %72 = zext i16 %5 to i32, !dbg !2001
  %73 = icmp eq i16 %5, 0, !dbg !2001
  br i1 %71, label %74, label %87, !dbg !2002

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !2003

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !2005
  %77 = xor i32 %76, -1, !dbg !2008
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2009
  %79 = and i32 %78, %77, !dbg !2009
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2009
  br label %85, !dbg !2010

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2011
  %82 = and i32 %81, -3, !dbg !2011
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2011
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2013
  %84 = or i32 %83, 2048, !dbg !2013
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2013
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !2014
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !2014
  br label %97, !dbg !2015

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !2016

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !2018
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2021
  %91 = or i32 %90, %89, !dbg !2021
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2021
  br label %95, !dbg !2022

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2023
  %94 = or i32 %93, 2050, !dbg !2023
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2023
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !2025
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !2025
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1925
  ret i32 %98, !dbg !2026
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2027 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2029, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 %1, metadata !2030, metadata !DIExpression()), !dbg !2033
  %3 = lshr i32 %0, 5, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %3, metadata !2031, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2033
  %4 = trunc i32 %0 to i16, !dbg !2035
  %5 = and i16 %4, 31, !dbg !2035
  call void @llvm.dbg.value(metadata i16 %5, metadata !2032, metadata !DIExpression()), !dbg !2033
  %6 = trunc i32 %3 to i16, !dbg !2036
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !2036

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !2037
  %9 = zext i16 %5 to i32, !dbg !2040
  %10 = shl nuw i32 1, %9, !dbg !2040
  br i1 %8, label %12, label %11, !dbg !2041

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !2042
  br label %19, !dbg !2044

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !2045
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !2047
  %15 = zext i16 %5 to i32, !dbg !2049
  %16 = shl nuw i32 1, %15, !dbg !2049
  br i1 %14, label %18, label %17, !dbg !2050

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !2051
  br label %19, !dbg !2053

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !2054
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !2033
  ret i32 %20, !dbg !2056
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #6 !dbg !2057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2061, metadata !DIExpression()), !dbg !2065
  %2 = lshr i32 %0, 5, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %2, metadata !2062, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %3 = and i32 %0, 31, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %0, metadata !2063, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2064, metadata !DIExpression()), !dbg !2065
  %4 = trunc i32 %2 to i16, !dbg !2068
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2068

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2064, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2065
  br label %6, !dbg !2069

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2071
  %9 = lshr i32 %8, %3, !dbg !2071
  %10 = trunc i32 %9 to i8, !dbg !2071
  %11 = and i8 %10, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i8 %11, metadata !2064, metadata !DIExpression()), !dbg !2065
  br label %12, !dbg !2072

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2065
  ret i8 %13, !dbg !2073
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #6 !dbg !2074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2076, metadata !DIExpression()), !dbg !2080
  %2 = lshr i32 %0, 5, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %2, metadata !2077, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2080
  %3 = and i32 %0, 31, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %0, metadata !2078, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2080
  %4 = trunc i32 %2 to i16, !dbg !2083
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2083

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2079, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2080
  br label %6, !dbg !2084

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !2086
  %9 = lshr i32 %8, %3, !dbg !2086
  %10 = trunc i32 %9 to i8, !dbg !2086
  %11 = and i8 %10, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i8 %11, metadata !2079, metadata !DIExpression()), !dbg !2080
  br label %12, !dbg !2087

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2080
  ret i8 %13, !dbg !2088
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #6 !dbg !2089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()), !dbg !2095
  %2 = lshr i32 %0, 5, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %2, metadata !2092, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2095
  %3 = and i32 %0, 31, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2095
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2095
  %4 = trunc i32 %2 to i16, !dbg !2098
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2098

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2094, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2095
  br label %6, !dbg !2099

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2101
  %9 = lshr i32 %8, %3, !dbg !2101
  %10 = trunc i32 %9 to i8, !dbg !2101
  %11 = and i8 %10, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i8 %11, metadata !2094, metadata !DIExpression()), !dbg !2095
  br label %12, !dbg !2102

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2095
  ret i8 %13, !dbg !2103
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2104 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2108, metadata !DIExpression()), !dbg !2111
  %2 = lshr i32 %0, 5, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %2, metadata !2109, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2111
  %3 = trunc i32 %0 to i16, !dbg !2113
  %4 = and i16 %3, 31, !dbg !2113
  call void @llvm.dbg.value(metadata i16 %3, metadata !2110, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2111
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !2114
  %6 = trunc i32 %2 to i16, !dbg !2115
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2115

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2116
  br i1 %8, label %9, label %12, !dbg !2119

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2120
  %11 = shl nuw nsw i32 1, %10, !dbg !2121
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !2121
  br label %49, !dbg !2123

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2124
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2124

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2125
  %16 = and i32 %15, -29, !dbg !2125
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2125
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2128
  %18 = or i32 %17, 2052, !dbg !2128
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2128
  br label %49, !dbg !2129

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2130
  %21 = and i32 %20, -29, !dbg !2130
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2130
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2133
  %23 = or i32 %22, 2052, !dbg !2133
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2133
  br label %49, !dbg !2134

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2135
  %26 = and i32 %25, -29, !dbg !2135
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2135
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2138
  %28 = or i32 %27, 2052, !dbg !2138
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2138
  br label %49, !dbg !2139

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2140
  %31 = and i32 %30, -29, !dbg !2140
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2140
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2143
  %33 = or i32 %32, 2052, !dbg !2143
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2143
  br label %49, !dbg !2144

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2145
  %36 = and i32 %35, -29, !dbg !2145
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2145
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2148
  %38 = or i32 %37, 2052, !dbg !2148
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2148
  br label %49, !dbg !2149

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2150
  br i1 %40, label %41, label %46, !dbg !2152

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2153
  %43 = and i32 %42, -29, !dbg !2153
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2153
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2155
  %45 = or i32 %44, 2052, !dbg !2155
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2155
  br label %49, !dbg !2156

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2157
  %48 = shl nuw i32 1, %47, !dbg !2157
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !2157
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2111
  ret i32 %50, !dbg !2159
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2162, metadata !DIExpression()), !dbg !2165
  %2 = lshr i32 %0, 5, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %2, metadata !2163, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2165
  %3 = trunc i32 %0 to i16, !dbg !2167
  %4 = and i16 %3, 31, !dbg !2167
  call void @llvm.dbg.value(metadata i16 %3, metadata !2164, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2165
  %5 = trunc i32 %2 to i16, !dbg !2168
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2168

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2169
  br i1 %7, label %8, label %11, !dbg !2172

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2173
  %10 = shl nuw nsw i32 1, %9, !dbg !2174
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !2174
  br label %48, !dbg !2176

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2177
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2177

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2178
  %15 = and i32 %14, -29, !dbg !2178
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2178
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2181
  %17 = or i32 %16, 2048, !dbg !2181
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2181
  br label %48, !dbg !2182

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2183
  %20 = and i32 %19, -29, !dbg !2183
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2183
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2186
  %22 = or i32 %21, 2048, !dbg !2186
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2186
  br label %48, !dbg !2187

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2188
  %25 = and i32 %24, -29, !dbg !2188
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2188
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2191
  %27 = or i32 %26, 2048, !dbg !2191
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2191
  br label %48, !dbg !2192

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2193
  %30 = and i32 %29, -29, !dbg !2193
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2193
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2196
  %32 = or i32 %31, 2048, !dbg !2196
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2196
  br label %48, !dbg !2197

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2198
  %35 = and i32 %34, -29, !dbg !2198
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2198
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2201
  %37 = or i32 %36, 2048, !dbg !2201
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2201
  br label %48, !dbg !2202

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2203
  br i1 %39, label %40, label %45, !dbg !2205

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2206
  %42 = and i32 %41, -29, !dbg !2206
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2206
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2208
  %44 = or i32 %43, 2048, !dbg !2208
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2208
  br label %48, !dbg !2209

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2210
  %47 = shl nuw i32 1, %46, !dbg !2210
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !2210
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2165
  ret i32 %49, !dbg !2212
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2213 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2215, metadata !DIExpression()), !dbg !2218
  %2 = lshr i32 %0, 5, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %2, metadata !2216, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2218
  %3 = trunc i32 %0 to i16, !dbg !2220
  %4 = and i16 %3, 31, !dbg !2220
  call void @llvm.dbg.value(metadata i16 %3, metadata !2217, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2218
  %5 = trunc i32 %2 to i16, !dbg !2221
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2221

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2222
  br i1 %7, label %8, label %11, !dbg !2225

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2226
  %10 = shl nuw nsw i32 1, %9, !dbg !2227
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !2227
  br label %48, !dbg !2229

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2230
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2230

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2231
  %15 = and i32 %14, -29, !dbg !2231
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2231
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2234
  %17 = or i32 %16, 2048, !dbg !2234
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2234
  br label %48, !dbg !2235

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2236
  %20 = and i32 %19, -29, !dbg !2236
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2236
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2239
  %22 = or i32 %21, 2048, !dbg !2239
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2239
  br label %48, !dbg !2240

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2241
  %25 = and i32 %24, -29, !dbg !2241
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2241
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2244
  %27 = or i32 %26, 2048, !dbg !2244
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2244
  br label %48, !dbg !2245

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2246
  %30 = and i32 %29, -29, !dbg !2246
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2246
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2249
  %32 = or i32 %31, 2048, !dbg !2249
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2249
  br label %48, !dbg !2250

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2251
  %35 = and i32 %34, -29, !dbg !2251
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2251
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2254
  %37 = or i32 %36, 2048, !dbg !2254
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2254
  br label %48, !dbg !2255

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2256
  br i1 %39, label %40, label %45, !dbg !2258

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2259
  %42 = and i32 %41, -29, !dbg !2259
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2259
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2261
  %44 = or i32 %43, 2048, !dbg !2261
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2261
  br label %48, !dbg !2262

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2263
  %47 = shl nuw i32 1, %46, !dbg !2263
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !2263
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2218
  ret i32 %49, !dbg !2265
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2271
  %2 = lshr i32 %0, 5, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %2, metadata !2269, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2271
  %3 = trunc i32 %0 to i16, !dbg !2273
  %4 = and i16 %3, 31, !dbg !2273
  call void @llvm.dbg.value(metadata i16 %3, metadata !2270, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2271
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !2274
  %6 = trunc i32 %2 to i16, !dbg !2275
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2275

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2276
  br i1 %8, label %9, label %12, !dbg !2279

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2280
  %11 = shl nuw nsw i32 1, %10, !dbg !2281
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !2281
  br label %49, !dbg !2283

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2284
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2284

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2285
  %16 = and i32 %15, -29, !dbg !2285
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2285
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2288
  %18 = or i32 %17, 2068, !dbg !2288
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2288
  br label %49, !dbg !2289

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2290
  %21 = and i32 %20, -29, !dbg !2290
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2290
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2293
  %23 = or i32 %22, 2068, !dbg !2293
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2293
  br label %49, !dbg !2294

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2295
  %26 = and i32 %25, -29, !dbg !2295
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2295
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2298
  %28 = or i32 %27, 2068, !dbg !2298
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2298
  br label %49, !dbg !2299

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2300
  %31 = and i32 %30, -29, !dbg !2300
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2300
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2303
  %33 = or i32 %32, 2068, !dbg !2303
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2303
  br label %49, !dbg !2304

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2305
  %36 = and i32 %35, -29, !dbg !2305
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2305
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2308
  %38 = or i32 %37, 2068, !dbg !2308
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2308
  br label %49, !dbg !2309

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2310
  br i1 %40, label %41, label %46, !dbg !2312

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2313
  %43 = and i32 %42, -29, !dbg !2313
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2313
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2315
  %45 = or i32 %44, 2068, !dbg !2315
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2315
  br label %49, !dbg !2316

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2317
  %48 = shl nuw i32 1, %47, !dbg !2317
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !2317
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2271
  ret i32 %50, !dbg !2319
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2322, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 %1, metadata !2323, metadata !DIExpression()), !dbg !2326
  %3 = lshr i32 %0, 4, !dbg !2327
  call void @llvm.dbg.value(metadata i32 %3, metadata !2324, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2326
  %4 = trunc i32 %0 to i16, !dbg !2328
  %5 = and i16 %4, 15, !dbg !2328
  call void @llvm.dbg.value(metadata i16 %4, metadata !2325, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2326
  %6 = trunc i32 %3 to i16, !dbg !2329
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !2329

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !2330
  %9 = zext i16 %8 to i32, !dbg !2330
  %10 = shl nuw i32 3, %9, !dbg !2332
  %11 = xor i32 %10, -1, !dbg !2333
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2334
  %13 = and i32 %12, %11, !dbg !2334
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2334
  %14 = lshr i8 %1, 2, !dbg !2335
  %15 = zext i8 %14 to i32, !dbg !2335
  %16 = add nsw i32 %15, -1, !dbg !2336
  %17 = shl i32 %16, %9, !dbg !2337
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2338
  %19 = or i32 %18, %17, !dbg !2338
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2338
  br label %131, !dbg !2339

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2340
  br i1 %21, label %22, label %35, !dbg !2342

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2343
  %24 = zext i16 %23 to i32, !dbg !2343
  %25 = shl nuw nsw i32 3, %24, !dbg !2345
  %26 = xor i32 %25, -1, !dbg !2346
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2347
  %28 = and i32 %27, %26, !dbg !2347
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2347
  %29 = lshr i8 %1, 2, !dbg !2348
  %30 = zext i8 %29 to i32, !dbg !2348
  %31 = add nsw i32 %30, -1, !dbg !2349
  %32 = shl nsw i32 %31, %24, !dbg !2350
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2351
  %34 = or i32 %33, %32, !dbg !2351
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2351
  br label %131, !dbg !2352

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2353
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2353

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2354
  %39 = and i32 %38, -449, !dbg !2354
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2354
  %40 = lshr i8 %1, 1, !dbg !2357
  %41 = zext i8 %40 to i32, !dbg !2357
  %42 = shl nuw nsw i32 %41, 6, !dbg !2358
  %43 = add nsw i32 %42, -64, !dbg !2358
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2359
  %45 = or i32 %44, %43, !dbg !2359
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2359
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2360
  %47 = or i32 %46, 2048, !dbg !2360
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2360
  br label %131, !dbg !2361

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2362
  %50 = and i32 %49, -449, !dbg !2362
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2362
  %51 = lshr i8 %1, 1, !dbg !2365
  %52 = zext i8 %51 to i32, !dbg !2365
  %53 = shl nuw nsw i32 %52, 6, !dbg !2366
  %54 = add nsw i32 %53, -64, !dbg !2366
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2367
  %56 = or i32 %55, %54, !dbg !2367
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2367
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2368
  %58 = or i32 %57, 2048, !dbg !2368
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2368
  br label %131, !dbg !2369

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2370
  %61 = and i32 %60, -449, !dbg !2370
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2370
  %62 = lshr i8 %1, 1, !dbg !2373
  %63 = zext i8 %62 to i32, !dbg !2373
  %64 = shl nuw nsw i32 %63, 6, !dbg !2374
  %65 = add nsw i32 %64, -64, !dbg !2374
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2375
  %67 = or i32 %66, %65, !dbg !2375
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2375
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2376
  %69 = or i32 %68, 2048, !dbg !2376
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2376
  br label %131, !dbg !2377

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2378
  %72 = and i32 %71, -449, !dbg !2378
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2378
  %73 = lshr i8 %1, 1, !dbg !2381
  %74 = zext i8 %73 to i32, !dbg !2381
  %75 = shl nuw nsw i32 %74, 6, !dbg !2382
  %76 = add nsw i32 %75, -64, !dbg !2382
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2383
  %78 = or i32 %77, %76, !dbg !2383
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2383
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2384
  %80 = or i32 %79, 2048, !dbg !2384
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2384
  br label %131, !dbg !2385

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2386
  %83 = and i32 %82, -449, !dbg !2386
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2386
  %84 = lshr i8 %1, 1, !dbg !2389
  %85 = zext i8 %84 to i32, !dbg !2389
  %86 = shl nuw nsw i32 %85, 6, !dbg !2390
  %87 = add nsw i32 %86, -64, !dbg !2390
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2391
  %89 = or i32 %88, %87, !dbg !2391
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2391
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2392
  %91 = or i32 %90, 2048, !dbg !2392
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2392
  br label %131, !dbg !2393

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2394
  br i1 %93, label %94, label %105, !dbg !2396

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2397
  %96 = and i32 %95, -449, !dbg !2397
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2397
  %97 = lshr i8 %1, 1, !dbg !2399
  %98 = zext i8 %97 to i32, !dbg !2399
  %99 = shl nuw nsw i32 %98, 6, !dbg !2400
  %100 = add nsw i32 %99, -64, !dbg !2400
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2401
  %102 = or i32 %101, %100, !dbg !2401
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2401
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2402
  %104 = or i32 %103, 2048, !dbg !2402
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2402
  br label %131, !dbg !2403

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2404
  %107 = zext i16 %106 to i32, !dbg !2404
  %108 = shl nuw i32 3, %107, !dbg !2406
  %109 = xor i32 %108, -1, !dbg !2407
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2408
  %111 = and i32 %110, %109, !dbg !2408
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2408
  %112 = lshr i8 %1, 2, !dbg !2409
  %113 = zext i8 %112 to i32, !dbg !2409
  %114 = add nsw i32 %113, -1, !dbg !2410
  %115 = shl i32 %114, %107, !dbg !2411
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2412
  %117 = or i32 %116, %115, !dbg !2412
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2412
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2413
  %120 = zext i16 %119 to i32, !dbg !2413
  %121 = shl nuw i32 3, %120, !dbg !2414
  %122 = xor i32 %121, -1, !dbg !2415
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2416
  %124 = and i32 %123, %122, !dbg !2416
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2416
  %125 = lshr i8 %1, 2, !dbg !2417
  %126 = zext i8 %125 to i32, !dbg !2417
  %127 = add nsw i32 %126, -1, !dbg !2418
  %128 = shl i32 %127, %120, !dbg !2419
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2420
  %130 = or i32 %129, %128, !dbg !2420
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2420
  br label %131, !dbg !2421

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !2326
  ret i32 %132, !dbg !2422
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !2423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()), !dbg !2433
  %3 = lshr i32 %0, 4, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %3, metadata !2430, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2433
  %4 = trunc i32 %0 to i16, !dbg !2435
  %5 = and i16 %4, 15, !dbg !2435
  call void @llvm.dbg.value(metadata i16 %4, metadata !2431, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %6 = trunc i32 %3 to i16, !dbg !2436
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2436

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %8, metadata !2432, metadata !DIExpression()), !dbg !2433
  %9 = shl nuw nsw i16 %5, 1, !dbg !2439
  %10 = zext i16 %9 to i32, !dbg !2439
  %11 = shl nuw i32 3, %10, !dbg !2440
  %12 = and i32 %8, %11, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %12, metadata !2432, metadata !DIExpression()), !dbg !2433
  %13 = lshr i32 %12, %10, !dbg !2442
  %14 = trunc i32 %13 to i8, !dbg !2443
  %15 = shl i8 %14, 2, !dbg !2443
  %16 = add i8 %15, 4, !dbg !2443
  br label %89, !dbg !2444

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2445
  br i1 %18, label %19, label %29, !dbg !2447

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %20, metadata !2432, metadata !DIExpression()), !dbg !2433
  %21 = shl nuw nsw i16 %5, 1, !dbg !2450
  %22 = zext i16 %21 to i32, !dbg !2450
  %23 = shl nuw nsw i32 3, %22, !dbg !2451
  %24 = and i32 %20, %23, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %24, metadata !2432, metadata !DIExpression()), !dbg !2433
  %25 = lshr i32 %24, %22, !dbg !2453
  %26 = trunc i32 %25 to i8, !dbg !2454
  %27 = shl i8 %26, 2, !dbg !2454
  %28 = add i8 %27, 4, !dbg !2454
  br label %89, !dbg !2455

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2456
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2456

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %32, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %32, metadata !2432, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %33 = lshr i32 %32, 5, !dbg !2460
  %34 = trunc i32 %33 to i8, !dbg !2461
  %35 = and i8 %34, 14, !dbg !2461
  %36 = add nuw nsw i8 %35, 2, !dbg !2461
  br label %89, !dbg !2462

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %38, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %38, metadata !2432, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %39 = lshr i32 %38, 5, !dbg !2466
  %40 = trunc i32 %39 to i8, !dbg !2467
  %41 = and i8 %40, 14, !dbg !2467
  %42 = add nuw nsw i8 %41, 2, !dbg !2467
  br label %89, !dbg !2468

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %44, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %44, metadata !2432, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %45 = lshr i32 %44, 5, !dbg !2472
  %46 = trunc i32 %45 to i8, !dbg !2473
  %47 = and i8 %46, 14, !dbg !2473
  %48 = add nuw nsw i8 %47, 2, !dbg !2473
  br label %89, !dbg !2474

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %50, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %50, metadata !2432, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %51 = lshr i32 %50, 5, !dbg !2478
  %52 = trunc i32 %51 to i8, !dbg !2479
  %53 = and i8 %52, 14, !dbg !2479
  %54 = add nuw nsw i8 %53, 2, !dbg !2479
  br label %89, !dbg !2480

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %56, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %56, metadata !2432, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %57 = lshr i32 %56, 5, !dbg !2484
  %58 = trunc i32 %57 to i8, !dbg !2485
  %59 = and i8 %58, 14, !dbg !2485
  %60 = add nuw nsw i8 %59, 2, !dbg !2485
  br label %89, !dbg !2486

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2487
  br i1 %62, label %63, label %69, !dbg !2489

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %64, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %64, metadata !2432, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2433
  %65 = lshr i32 %64, 5, !dbg !2492
  %66 = trunc i32 %65 to i8, !dbg !2493
  %67 = and i8 %66, 14, !dbg !2493
  %68 = add nuw nsw i8 %67, 2, !dbg !2493
  br label %89, !dbg !2494

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2495
  call void @llvm.dbg.value(metadata i32 %70, metadata !2432, metadata !DIExpression()), !dbg !2433
  %71 = shl nuw nsw i16 %5, 1, !dbg !2497
  %72 = zext i16 %71 to i32, !dbg !2497
  %73 = shl nuw i32 3, %72, !dbg !2498
  %74 = and i32 %70, %73, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %74, metadata !2432, metadata !DIExpression()), !dbg !2433
  %75 = lshr i32 %74, %72, !dbg !2500
  %76 = trunc i32 %75 to i8, !dbg !2501
  %77 = shl i8 %76, 2, !dbg !2501
  %78 = add i8 %77, 4, !dbg !2501
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %80, metadata !2432, metadata !DIExpression()), !dbg !2433
  %81 = shl nuw nsw i16 %5, 1, !dbg !2503
  %82 = zext i16 %81 to i32, !dbg !2503
  %83 = shl nuw i32 3, %82, !dbg !2504
  %84 = and i32 %80, %83, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %84, metadata !2432, metadata !DIExpression()), !dbg !2433
  %85 = lshr i32 %84, %82, !dbg !2506
  %86 = trunc i32 %85 to i8, !dbg !2507
  %87 = shl i8 %86, 2, !dbg !2507
  %88 = add i8 %87, 4, !dbg !2507
  br label %89, !dbg !2508

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2509
  br label %91, !dbg !2510

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2433
  ret i32 %92, !dbg !2510
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2516, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %1, metadata !2517, metadata !DIExpression()), !dbg !2520
  %3 = lshr i32 %0, 5, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %3, metadata !2518, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2520
  %4 = trunc i32 %0 to i16, !dbg !2522
  %5 = and i16 %4, 31, !dbg !2522
  call void @llvm.dbg.value(metadata i16 %5, metadata !2519, metadata !DIExpression()), !dbg !2520
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2523

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2518, metadata !DIExpression()), !dbg !2520
  %7 = trunc i32 %3 to i16, !dbg !2524
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2524

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2527
  %10 = shl nuw i32 1, %9, !dbg !2529
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2530
  %12 = or i32 %11, %10, !dbg !2530
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2530
  br label %32, !dbg !2531

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2532
  %15 = shl nuw i32 1, %14, !dbg !2533
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2534
  %17 = or i32 %16, %15, !dbg !2534
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2534
  br label %32, !dbg !2535

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2536
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2536

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2539
  %22 = shl nuw i32 1, %21, !dbg !2541
  %23 = xor i32 %22, -1, !dbg !2542
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2543
  %25 = and i32 %24, %23, !dbg !2543
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2543
  br label %32, !dbg !2544

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2545
  %28 = shl nuw i32 1, %27, !dbg !2546
  %29 = xor i32 %28, -1, !dbg !2547
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2548
  %31 = and i32 %30, %29, !dbg !2548
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2548
  br label %32, !dbg !2549

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2550
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 %1, metadata !2558, metadata !DIExpression()), !dbg !2560
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
  ], !dbg !2561

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2562
  call void @llvm.dbg.value(metadata i32 %4, metadata !2559, metadata !DIExpression()), !dbg !2560
  %5 = and i32 %4, -16, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %5, metadata !2559, metadata !DIExpression()), !dbg !2560
  %6 = zext i8 %1 to i32, !dbg !2565
  %7 = or i32 %5, %6, !dbg !2566
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2567
  br label %187, !dbg !2568

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %9, metadata !2559, metadata !DIExpression()), !dbg !2560
  %10 = and i32 %9, -241, !dbg !2570
  call void @llvm.dbg.value(metadata i32 %10, metadata !2559, metadata !DIExpression()), !dbg !2560
  %11 = zext i8 %1 to i32, !dbg !2571
  %12 = shl nuw nsw i32 %11, 4, !dbg !2572
  %13 = or i32 %10, %12, !dbg !2573
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2574
  br label %187, !dbg !2575

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %15, metadata !2559, metadata !DIExpression()), !dbg !2560
  %16 = and i32 %15, -3841, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %16, metadata !2559, metadata !DIExpression()), !dbg !2560
  %17 = zext i8 %1 to i32, !dbg !2578
  %18 = shl nuw nsw i32 %17, 8, !dbg !2579
  %19 = or i32 %16, %18, !dbg !2580
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2581
  br label %187, !dbg !2582

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %21, metadata !2559, metadata !DIExpression()), !dbg !2560
  %22 = and i32 %21, -61441, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %22, metadata !2559, metadata !DIExpression()), !dbg !2560
  %23 = zext i8 %1 to i32, !dbg !2585
  %24 = shl nuw nsw i32 %23, 12, !dbg !2586
  %25 = or i32 %22, %24, !dbg !2587
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2588
  br label %187, !dbg !2589

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %27, metadata !2559, metadata !DIExpression()), !dbg !2560
  %28 = and i32 %27, -983041, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %28, metadata !2559, metadata !DIExpression()), !dbg !2560
  %29 = zext i8 %1 to i32, !dbg !2592
  %30 = shl nuw nsw i32 %29, 16, !dbg !2593
  %31 = or i32 %28, %30, !dbg !2594
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2595
  br label %187, !dbg !2596

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %33, metadata !2559, metadata !DIExpression()), !dbg !2560
  %34 = and i32 %33, -15728641, !dbg !2598
  call void @llvm.dbg.value(metadata i32 %34, metadata !2559, metadata !DIExpression()), !dbg !2560
  %35 = zext i8 %1 to i32, !dbg !2599
  %36 = shl nuw nsw i32 %35, 20, !dbg !2600
  %37 = or i32 %34, %36, !dbg !2601
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2602
  br label %187, !dbg !2603

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %39, metadata !2559, metadata !DIExpression()), !dbg !2560
  %40 = and i32 %39, -251658241, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %40, metadata !2559, metadata !DIExpression()), !dbg !2560
  %41 = zext i8 %1 to i32, !dbg !2606
  %42 = shl nuw i32 %41, 24, !dbg !2607
  %43 = or i32 %40, %42, !dbg !2608
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2609
  br label %187, !dbg !2610

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %45, metadata !2559, metadata !DIExpression()), !dbg !2560
  %46 = and i32 %45, 268435455, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %46, metadata !2559, metadata !DIExpression()), !dbg !2560
  %47 = zext i8 %1 to i32, !dbg !2613
  %48 = shl i32 %47, 28, !dbg !2614
  %49 = or i32 %46, %48, !dbg !2615
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2616
  br label %187, !dbg !2617

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %51, metadata !2559, metadata !DIExpression()), !dbg !2560
  %52 = and i32 %51, -16, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %52, metadata !2559, metadata !DIExpression()), !dbg !2560
  %53 = zext i8 %1 to i32, !dbg !2620
  %54 = or i32 %52, %53, !dbg !2621
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2622
  br label %187, !dbg !2623

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2624
  call void @llvm.dbg.value(metadata i32 %56, metadata !2559, metadata !DIExpression()), !dbg !2560
  %57 = and i32 %56, -241, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %57, metadata !2559, metadata !DIExpression()), !dbg !2560
  %58 = zext i8 %1 to i32, !dbg !2626
  %59 = shl nuw nsw i32 %58, 4, !dbg !2627
  %60 = or i32 %57, %59, !dbg !2628
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2629
  br label %187, !dbg !2630

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %62, metadata !2559, metadata !DIExpression()), !dbg !2560
  %63 = and i32 %62, -3841, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %63, metadata !2559, metadata !DIExpression()), !dbg !2560
  %64 = zext i8 %1 to i32, !dbg !2633
  %65 = shl nuw nsw i32 %64, 8, !dbg !2634
  %66 = or i32 %63, %65, !dbg !2635
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2636
  br label %187, !dbg !2637

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %68, metadata !2559, metadata !DIExpression()), !dbg !2560
  %69 = and i32 %68, -61441, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %69, metadata !2559, metadata !DIExpression()), !dbg !2560
  %70 = zext i8 %1 to i32, !dbg !2640
  %71 = shl nuw nsw i32 %70, 12, !dbg !2641
  %72 = or i32 %69, %71, !dbg !2642
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2643
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2644

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !2646
  br label %187, !dbg !2648

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %76, metadata !2559, metadata !DIExpression()), !dbg !2560
  %77 = and i32 %76, -983041, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %77, metadata !2559, metadata !DIExpression()), !dbg !2560
  %78 = zext i8 %1 to i32, !dbg !2651
  %79 = shl nuw nsw i32 %78, 16, !dbg !2652
  %80 = or i32 %77, %79, !dbg !2653
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2654
  %81 = and i8 %1, -2, !dbg !2655
  %82 = icmp eq i8 %81, 4, !dbg !2655
  br i1 %82, label %83, label %187, !dbg !2655

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !2657
  br label %187, !dbg !2659

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %86, metadata !2559, metadata !DIExpression()), !dbg !2560
  %87 = and i32 %86, -15728641, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %87, metadata !2559, metadata !DIExpression()), !dbg !2560
  %88 = zext i8 %1 to i32, !dbg !2662
  %89 = shl nuw nsw i32 %88, 20, !dbg !2663
  %90 = or i32 %87, %89, !dbg !2664
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2665
  %91 = icmp eq i8 %1, 6, !dbg !2666
  br i1 %91, label %92, label %187, !dbg !2668

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !2669
  br label %187, !dbg !2671

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2672
  call void @llvm.dbg.value(metadata i32 %95, metadata !2559, metadata !DIExpression()), !dbg !2560
  %96 = and i32 %95, -251658241, !dbg !2673
  call void @llvm.dbg.value(metadata i32 %96, metadata !2559, metadata !DIExpression()), !dbg !2560
  %97 = zext i8 %1 to i32, !dbg !2674
  %98 = shl nuw i32 %97, 24, !dbg !2675
  %99 = or i32 %96, %98, !dbg !2676
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2677
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2678

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !2680
  br label %187, !dbg !2682

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %103, metadata !2559, metadata !DIExpression()), !dbg !2560
  %104 = and i32 %103, 268435455, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %104, metadata !2559, metadata !DIExpression()), !dbg !2560
  %105 = zext i8 %1 to i32, !dbg !2685
  %106 = shl i32 %105, 28, !dbg !2686
  %107 = or i32 %104, %106, !dbg !2687
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2688
  %108 = and i8 %1, -3, !dbg !2689
  %109 = icmp eq i8 %108, 4, !dbg !2689
  br i1 %109, label %110, label %187, !dbg !2689

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !2691
  br label %187, !dbg !2693

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %113, metadata !2559, metadata !DIExpression()), !dbg !2560
  %114 = and i32 %113, -16, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %114, metadata !2559, metadata !DIExpression()), !dbg !2560
  %115 = zext i8 %1 to i32, !dbg !2696
  %116 = or i32 %114, %115, !dbg !2697
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2698
  %117 = and i8 %1, -3, !dbg !2699
  %118 = icmp eq i8 %117, 4, !dbg !2699
  br i1 %118, label %119, label %187, !dbg !2699

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !2701
  br label %187, !dbg !2703

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2704
  call void @llvm.dbg.value(metadata i32 %122, metadata !2559, metadata !DIExpression()), !dbg !2560
  %123 = and i32 %122, -241, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %123, metadata !2559, metadata !DIExpression()), !dbg !2560
  %124 = zext i8 %1 to i32, !dbg !2706
  %125 = shl nuw nsw i32 %124, 4, !dbg !2707
  %126 = or i32 %123, %125, !dbg !2708
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2709
  br label %187, !dbg !2710

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %128, metadata !2559, metadata !DIExpression()), !dbg !2560
  %129 = and i32 %128, -3841, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %129, metadata !2559, metadata !DIExpression()), !dbg !2560
  %130 = zext i8 %1 to i32, !dbg !2713
  %131 = shl nuw nsw i32 %130, 8, !dbg !2714
  %132 = or i32 %129, %131, !dbg !2715
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2716
  br label %187, !dbg !2717

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %134, metadata !2559, metadata !DIExpression()), !dbg !2560
  %135 = and i32 %134, -61441, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %135, metadata !2559, metadata !DIExpression()), !dbg !2560
  %136 = zext i8 %1 to i32, !dbg !2720
  %137 = shl nuw nsw i32 %136, 12, !dbg !2721
  %138 = or i32 %135, %137, !dbg !2722
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2723
  br label %187, !dbg !2724

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2725
  call void @llvm.dbg.value(metadata i32 %140, metadata !2559, metadata !DIExpression()), !dbg !2560
  %141 = and i32 %140, -983041, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %141, metadata !2559, metadata !DIExpression()), !dbg !2560
  %142 = zext i8 %1 to i32, !dbg !2727
  %143 = shl nuw nsw i32 %142, 16, !dbg !2728
  %144 = or i32 %141, %143, !dbg !2729
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2730
  br label %187, !dbg !2731

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2732
  call void @llvm.dbg.value(metadata i32 %146, metadata !2559, metadata !DIExpression()), !dbg !2560
  %147 = and i32 %146, -15728641, !dbg !2733
  call void @llvm.dbg.value(metadata i32 %147, metadata !2559, metadata !DIExpression()), !dbg !2560
  %148 = zext i8 %1 to i32, !dbg !2734
  %149 = shl nuw nsw i32 %148, 20, !dbg !2735
  %150 = or i32 %147, %149, !dbg !2736
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2737
  br label %187, !dbg !2738

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %152, metadata !2559, metadata !DIExpression()), !dbg !2560
  %153 = and i32 %152, -251658241, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %153, metadata !2559, metadata !DIExpression()), !dbg !2560
  %154 = zext i8 %1 to i32, !dbg !2741
  %155 = shl nuw i32 %154, 24, !dbg !2742
  %156 = or i32 %153, %155, !dbg !2743
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2744
  br label %187, !dbg !2745

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %158, metadata !2559, metadata !DIExpression()), !dbg !2560
  %159 = and i32 %158, 268435455, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %159, metadata !2559, metadata !DIExpression()), !dbg !2560
  %160 = zext i8 %1 to i32, !dbg !2748
  %161 = shl i32 %160, 28, !dbg !2749
  %162 = or i32 %159, %161, !dbg !2750
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2751
  br label %187, !dbg !2752

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %164, metadata !2559, metadata !DIExpression()), !dbg !2560
  %165 = and i32 %164, -241, !dbg !2754
  call void @llvm.dbg.value(metadata i32 %165, metadata !2559, metadata !DIExpression()), !dbg !2560
  %166 = zext i8 %1 to i32, !dbg !2755
  %167 = shl nuw nsw i32 %166, 4, !dbg !2756
  %168 = or i32 %165, %167, !dbg !2757
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2758
  br label %187, !dbg !2759

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %170, metadata !2559, metadata !DIExpression()), !dbg !2560
  %171 = and i32 %170, -3841, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %171, metadata !2559, metadata !DIExpression()), !dbg !2560
  %172 = zext i8 %1 to i32, !dbg !2762
  %173 = shl nuw nsw i32 %172, 8, !dbg !2763
  %174 = or i32 %171, %173, !dbg !2764
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2765
  br label %187, !dbg !2766

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2767
  call void @llvm.dbg.value(metadata i32 %176, metadata !2559, metadata !DIExpression()), !dbg !2560
  %177 = and i32 %176, -61441, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %177, metadata !2559, metadata !DIExpression()), !dbg !2560
  %178 = zext i8 %1 to i32, !dbg !2769
  %179 = shl nuw nsw i32 %178, 12, !dbg !2770
  %180 = or i32 %177, %179, !dbg !2771
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2772
  br label %187, !dbg !2773

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %182, metadata !2559, metadata !DIExpression()), !dbg !2560
  %183 = and i32 %182, -983041, !dbg !2775
  call void @llvm.dbg.value(metadata i32 %183, metadata !2559, metadata !DIExpression()), !dbg !2560
  %184 = zext i8 %1 to i32, !dbg !2776
  %185 = shl nuw nsw i32 %184, 16, !dbg !2777
  %186 = or i32 %183, %185, !dbg !2778
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2779
  br label %187, !dbg !2780

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2781
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2782 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2785
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2786
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2787, !srcloc !2788
  tail call void asm sideeffect "isb", ""() #15, !dbg !2789, !srcloc !2790
  ret void, !dbg !2791
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #1 !dbg !2792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2797
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2798
  ret void, !dbg !2799
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2800 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2803, !srcloc !2809
  call void @llvm.dbg.value(metadata i32 %1, metadata !2806, metadata !DIExpression()) #15, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %1, metadata !2802, metadata !DIExpression()), !dbg !2811
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2812, !srcloc !2815
  ret i32 %1, !dbg !2816
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i32 %0, metadata !2821, metadata !DIExpression()) #15, !dbg !2824
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2827, !srcloc !2828
  ret void, !dbg !2829
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2830 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 %1, metadata !2835, metadata !DIExpression()), !dbg !2837
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
  ], !dbg !2838

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2836, metadata !DIExpression()), !dbg !2837
  %4 = trunc i32 %1 to i8, !dbg !2839
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !2840
  br label %5, !dbg !2841

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2837
  ret i32 %6, !dbg !2842
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2843 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2845, metadata !DIExpression()), !dbg !2847
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %1, metadata !2846, metadata !DIExpression()), !dbg !2847
  %2 = lshr i32 %1, 13, !dbg !2849
  %3 = and i32 %2, 7, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %3, metadata !2846, metadata !DIExpression()), !dbg !2847
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %4, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %4, metadata !2845, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2847
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2852
  %6 = load i32, i32* %5, align 4, !dbg !2852
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2852
  %8 = load i32, i32* %7, align 4, !dbg !2852
  %9 = and i32 %4, -2048, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %9, metadata !2845, metadata !DIExpression()), !dbg !2847
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2854
  %10 = or i32 %9, %8, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %10, metadata !2845, metadata !DIExpression()), !dbg !2847
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2856
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2857
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2858
  tail call void @SystemCoreClockUpdate() #16, !dbg !2859
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2860
  %13 = udiv i32 %12, 1000, !dbg !2861
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !2862
  ret void, !dbg !2863
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #7 !dbg !2864 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2865
  ret i32 %1, !dbg !2866
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #7 !dbg !2867 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2868
  ret i32 %1, !dbg !2869
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #8 !dbg !2870 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2874
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2873, metadata !DIExpression()), !dbg !2876
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2877
  store volatile i32 %3, i32* %1, align 4, !dbg !2878
  %4 = load volatile i32, i32* %1, align 4, !dbg !2879
  %5 = lshr i32 %4, 28, !dbg !2880
  %6 = and i32 %5, 3, !dbg !2881
  store volatile i32 %6, i32* %1, align 4, !dbg !2882
  %7 = load volatile i32, i32* %1, align 4, !dbg !2883
  %8 = icmp eq i32 %7, 0, !dbg !2885
  br i1 %8, label %9, label %22, !dbg !2886

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2887
  store volatile i32 %10, i32* %1, align 4, !dbg !2889
  %11 = load volatile i32, i32* %1, align 4, !dbg !2890
  %12 = and i32 %11, -16777217, !dbg !2891
  store volatile i32 %12, i32* %1, align 4, !dbg !2892
  %13 = load volatile i32, i32* %1, align 4, !dbg !2893
  %14 = or i32 %13, 536870912, !dbg !2894
  store volatile i32 %14, i32* %1, align 4, !dbg !2895
  %15 = load volatile i32, i32* %1, align 4, !dbg !2896
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2897
  br label %16, !dbg !2898

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2899
  store volatile i32 %17, i32* %1, align 4, !dbg !2901
  %18 = load volatile i32, i32* %1, align 4, !dbg !2902
  %19 = and i32 %18, 134217728, !dbg !2903
  store volatile i32 %19, i32* %1, align 4, !dbg !2904
  %20 = load volatile i32, i32* %1, align 4, !dbg !2905
  %21 = icmp eq i32 %20, 0, !dbg !2906
  br i1 %21, label %16, label %22, !dbg !2907, !llvm.loop !2908

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2910
  ret void, !dbg !2910
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #6 !dbg !2911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2918, metadata !DIExpression()), !dbg !2919
  %2 = bitcast i8* %0 to i32*, !dbg !2920
  %3 = load volatile i32, i32* %2, align 4, !dbg !2921
  ret i32 %3, !dbg !2922
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !2923 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2927, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 %1, metadata !2928, metadata !DIExpression()), !dbg !2929
  %3 = bitcast i8* %0 to i32*, !dbg !2930
  store volatile i32 %1, i32* %3, align 4, !dbg !2931
  ret void, !dbg !2932
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #8 !dbg !2933 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2935, metadata !DIExpression()), !dbg !2938
  %3 = bitcast i32* %2 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2939
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2937, metadata !DIExpression()), !dbg !2938
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2941
  store volatile i32 %4, i32* %2, align 4, !dbg !2942
  %5 = load volatile i32, i32* %2, align 4, !dbg !2943
  %6 = lshr i32 %5, 28, !dbg !2944
  %7 = and i32 %6, 3, !dbg !2945
  store volatile i32 %7, i32* %2, align 4, !dbg !2946
  %8 = load volatile i32, i32* %2, align 4, !dbg !2947
  %9 = icmp eq i32 %8, 3, !dbg !2949
  br i1 %9, label %38, label %10, !dbg !2950

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2951
  store volatile i32 %11, i32* %2, align 4, !dbg !2953
  %12 = load volatile i32, i32* %2, align 4, !dbg !2954
  %13 = and i32 %12, -262145, !dbg !2955
  store volatile i32 %13, i32* %2, align 4, !dbg !2956
  %14 = load volatile i32, i32* %2, align 4, !dbg !2957
  %15 = and i32 %14, -16777217, !dbg !2958
  store volatile i32 %15, i32* %2, align 4, !dbg !2959
  %16 = load volatile i32, i32* %2, align 4, !dbg !2960
  store volatile i32 %16, i32* %2, align 4, !dbg !2961
  %17 = load volatile i32, i32* %2, align 4, !dbg !2962
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2963
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2964
  store volatile i32 %18, i32* %2, align 4, !dbg !2965
  %19 = load volatile i32, i32* %2, align 4, !dbg !2966
  %20 = and i32 %19, -805306369, !dbg !2967
  store volatile i32 %20, i32* %2, align 4, !dbg !2968
  %21 = load volatile i32, i32* %2, align 4, !dbg !2969
  %22 = and i32 %21, -16777217, !dbg !2970
  store volatile i32 %22, i32* %2, align 4, !dbg !2971
  %23 = load volatile i32, i32* %2, align 4, !dbg !2972
  %24 = or i32 %23, 805306368, !dbg !2973
  store volatile i32 %24, i32* %2, align 4, !dbg !2974
  %25 = load volatile i32, i32* %2, align 4, !dbg !2975
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2976
  br label %26, !dbg !2977

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2978
  store volatile i32 %27, i32* %2, align 4, !dbg !2980
  %28 = load volatile i32, i32* %2, align 4, !dbg !2981
  %29 = and i32 %28, 67108864, !dbg !2982
  store volatile i32 %29, i32* %2, align 4, !dbg !2983
  %30 = load volatile i32, i32* %2, align 4, !dbg !2984
  %31 = icmp eq i32 %30, 0, !dbg !2985
  br i1 %31, label %26, label %32, !dbg !2986, !llvm.loop !2987

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2989
  store volatile i32 %33, i32* %2, align 4, !dbg !2990
  %34 = load volatile i32, i32* %2, align 4, !dbg !2991
  %35 = and i32 %34, -262145, !dbg !2992
  store volatile i32 %35, i32* %2, align 4, !dbg !2993
  %36 = load volatile i32, i32* %2, align 4, !dbg !2994
  %37 = and i32 %36, -16777217, !dbg !2995
  store volatile i32 %37, i32* %2, align 4, !dbg !2996
  br label %38, !dbg !2997

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2998
  store volatile i32 %39, i32* %2, align 4, !dbg !2999
  %40 = icmp eq i8 %0, 0, !dbg !3000
  %41 = load volatile i32, i32* %2, align 4, !dbg !3002
  br i1 %40, label %44, label %42, !dbg !3003

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3004
  store volatile i32 %43, i32* %2, align 4, !dbg !3006
  br label %45, !dbg !3007

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3008
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3010
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3012
  ret void, !dbg !3012
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #8 !dbg !3013 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3017
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3017
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3016, metadata !DIExpression()), !dbg !3019
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3020
  store volatile i32 %3, i32* %1, align 4, !dbg !3021
  %4 = load volatile i32, i32* %1, align 4, !dbg !3022
  %5 = and i32 %4, -805306369, !dbg !3023
  store volatile i32 %5, i32* %1, align 4, !dbg !3024
  %6 = load volatile i32, i32* %1, align 4, !dbg !3025
  %7 = and i32 %6, -16777217, !dbg !3026
  store volatile i32 %7, i32* %1, align 4, !dbg !3027
  %8 = load volatile i32, i32* %1, align 4, !dbg !3028
  store volatile i32 %8, i32* %1, align 4, !dbg !3029
  %9 = load volatile i32, i32* %1, align 4, !dbg !3030
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !3031
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3032
  store volatile i32 %10, i32* %1, align 4, !dbg !3033
  %11 = load volatile i32, i32* %1, align 4, !dbg !3034
  %12 = and i32 %11, -262145, !dbg !3035
  store volatile i32 %12, i32* %1, align 4, !dbg !3036
  %13 = load volatile i32, i32* %1, align 4, !dbg !3037
  %14 = and i32 %13, -16777217, !dbg !3038
  store volatile i32 %14, i32* %1, align 4, !dbg !3039
  %15 = load volatile i32, i32* %1, align 4, !dbg !3040
  store volatile i32 %15, i32* %1, align 4, !dbg !3041
  %16 = load volatile i32, i32* %1, align 4, !dbg !3042
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !3043
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3044
  ret void, !dbg !3044
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !3045 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3047, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3048, metadata !DIExpression()), !dbg !3051
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3052
  store volatile i32 %3, i32* %1, align 4, !dbg !3053
  %4 = load volatile i32, i32* %1, align 4, !dbg !3054
  %5 = and i32 %4, -8, !dbg !3055
  store volatile i32 %5, i32* %1, align 4, !dbg !3056
  %6 = load volatile i32, i32* %1, align 4, !dbg !3057
  store volatile i32 %6, i32* %1, align 4, !dbg !3058
  %7 = load volatile i32, i32* %1, align 4, !dbg !3059
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3060
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3061
  store volatile i32 %8, i32* %1, align 4, !dbg !3062
  %9 = load volatile i32, i32* %1, align 4, !dbg !3063
  %10 = and i32 %9, -49153, !dbg !3064
  store volatile i32 %10, i32* %1, align 4, !dbg !3065
  %11 = load volatile i32, i32* %1, align 4, !dbg !3066
  store volatile i32 %11, i32* %1, align 4, !dbg !3067
  %12 = load volatile i32, i32* %1, align 4, !dbg !3068
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !3069
  br label %13, !dbg !3070

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3071
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3072
  %16 = icmp eq i32 %14, %15, !dbg !3073
  br i1 %16, label %17, label %13, !dbg !3070, !llvm.loop !3074

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !3076
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3077
  tail call void @SystemCoreClockUpdate() #16, !dbg !3078
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3079
  %20 = udiv i32 %19, 1000, !dbg !3080
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3081
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3082
  ret void, !dbg !3082
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !3083 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3087
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3087
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3086, metadata !DIExpression()), !dbg !3089
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !3090
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3091
  store volatile i32 %3, i32* %1, align 4, !dbg !3092
  %4 = load volatile i32, i32* %1, align 4, !dbg !3093
  %5 = and i32 %4, -49153, !dbg !3094
  store volatile i32 %5, i32* %1, align 4, !dbg !3095
  %6 = load volatile i32, i32* %1, align 4, !dbg !3096
  %7 = or i32 %6, 16384, !dbg !3097
  store volatile i32 %7, i32* %1, align 4, !dbg !3098
  %8 = load volatile i32, i32* %1, align 4, !dbg !3099
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3100
  br label %9, !dbg !3101

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3102
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3103
  %12 = icmp eq i32 %10, %11, !dbg !3104
  br i1 %12, label %13, label %9, !dbg !3101, !llvm.loop !3105

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3107
  store volatile i32 %14, i32* %1, align 4, !dbg !3108
  %15 = load volatile i32, i32* %1, align 4, !dbg !3109
  %16 = and i32 %15, -1009, !dbg !3110
  store volatile i32 %16, i32* %1, align 4, !dbg !3111
  %17 = load volatile i32, i32* %1, align 4, !dbg !3112
  %18 = or i32 %17, 128, !dbg !3113
  store volatile i32 %18, i32* %1, align 4, !dbg !3114
  %19 = load volatile i32, i32* %1, align 4, !dbg !3115
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3116
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3117
  store volatile i32 %20, i32* %1, align 4, !dbg !3118
  %21 = load volatile i32, i32* %1, align 4, !dbg !3119
  %22 = and i32 %21, -8, !dbg !3120
  store volatile i32 %22, i32* %1, align 4, !dbg !3121
  %23 = load volatile i32, i32* %1, align 4, !dbg !3122
  %24 = or i32 %23, 4, !dbg !3123
  store volatile i32 %24, i32* %1, align 4, !dbg !3124
  %25 = load volatile i32, i32* %1, align 4, !dbg !3125
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3126
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3127
  tail call void @SystemCoreClockUpdate() #16, !dbg !3128
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3129
  %27 = udiv i32 %26, 1000, !dbg !3130
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3132
  ret void, !dbg !3132
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !3133 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3137
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3136, metadata !DIExpression()), !dbg !3139
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !3140
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3141
  store volatile i32 %3, i32* %1, align 4, !dbg !3142
  %4 = load volatile i32, i32* %1, align 4, !dbg !3143
  %5 = and i32 %4, -49153, !dbg !3144
  store volatile i32 %5, i32* %1, align 4, !dbg !3145
  %6 = load volatile i32, i32* %1, align 4, !dbg !3146
  %7 = or i32 %6, 32768, !dbg !3147
  store volatile i32 %7, i32* %1, align 4, !dbg !3148
  %8 = load volatile i32, i32* %1, align 4, !dbg !3149
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3150
  br label %9, !dbg !3151

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3152
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3153
  %12 = icmp eq i32 %10, %11, !dbg !3154
  br i1 %12, label %13, label %9, !dbg !3151, !llvm.loop !3155

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3157
  store volatile i32 %14, i32* %1, align 4, !dbg !3158
  %15 = load volatile i32, i32* %1, align 4, !dbg !3159
  %16 = and i32 %15, -1009, !dbg !3160
  store volatile i32 %16, i32* %1, align 4, !dbg !3161
  %17 = load volatile i32, i32* %1, align 4, !dbg !3162
  %18 = or i32 %17, 32, !dbg !3163
  store volatile i32 %18, i32* %1, align 4, !dbg !3164
  %19 = load volatile i32, i32* %1, align 4, !dbg !3165
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3166
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3167
  store volatile i32 %20, i32* %1, align 4, !dbg !3168
  %21 = load volatile i32, i32* %1, align 4, !dbg !3169
  %22 = and i32 %21, -8, !dbg !3170
  store volatile i32 %22, i32* %1, align 4, !dbg !3171
  %23 = load volatile i32, i32* %1, align 4, !dbg !3172
  %24 = or i32 %23, 4, !dbg !3173
  store volatile i32 %24, i32* %1, align 4, !dbg !3174
  %25 = load volatile i32, i32* %1, align 4, !dbg !3175
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3176
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3177
  tail call void @SystemCoreClockUpdate() #16, !dbg !3178
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3179
  %27 = udiv i32 %26, 1000, !dbg !3180
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3182
  ret void, !dbg !3182
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !3183 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3187
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3187
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3185, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3186, metadata !DIExpression()), !dbg !3189
  tail call void @cmnPLL1ON() #14, !dbg !3190
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3191
  store volatile i32 %3, i32* %1, align 4, !dbg !3192
  %4 = load volatile i32, i32* %1, align 4, !dbg !3193
  %5 = and i32 %4, -49153, !dbg !3194
  store volatile i32 %5, i32* %1, align 4, !dbg !3195
  %6 = load volatile i32, i32* %1, align 4, !dbg !3196
  store volatile i32 %6, i32* %1, align 4, !dbg !3197
  %7 = load volatile i32, i32* %1, align 4, !dbg !3198
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3199
  br label %8, !dbg !3200

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3201
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3202
  %11 = icmp eq i32 %9, %10, !dbg !3203
  br i1 %11, label %12, label %8, !dbg !3200, !llvm.loop !3204

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3206
  store volatile i32 %13, i32* %1, align 4, !dbg !3207
  %14 = load volatile i32, i32* %1, align 4, !dbg !3208
  %15 = and i32 %14, -8, !dbg !3209
  store volatile i32 %15, i32* %1, align 4, !dbg !3210
  %16 = load volatile i32, i32* %1, align 4, !dbg !3211
  %17 = or i32 %16, 2, !dbg !3212
  store volatile i32 %17, i32* %1, align 4, !dbg !3213
  %18 = load volatile i32, i32* %1, align 4, !dbg !3214
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3215
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3216
  tail call void @SystemCoreClockUpdate() #16, !dbg !3217
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3218
  %20 = udiv i32 %19, 1000, !dbg !3219
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3220
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3221
  ret void, !dbg !3221
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #8 section ".ramTEXT" !dbg !3222 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3226
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3224, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3225, metadata !DIExpression()), !dbg !3228
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3229
  store volatile i32 %3, i32* %1, align 4, !dbg !3230
  %4 = load volatile i32, i32* %1, align 4, !dbg !3231
  %5 = and i32 %4, -24577, !dbg !3232
  store volatile i32 %5, i32* %1, align 4, !dbg !3233
  %6 = load volatile i32, i32* %1, align 4, !dbg !3234
  store volatile i32 %6, i32* %1, align 4, !dbg !3235
  %7 = load volatile i32, i32* %1, align 4, !dbg !3236
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3238
  ret void, !dbg !3238
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #6 !dbg !3239 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3244
  call void @llvm.dbg.value(metadata i32 %1, metadata !3243, metadata !DIExpression()), !dbg !3245
  ret i32 %1, !dbg !3246
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #6 !dbg !3247 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3250
  %2 = and i32 %1, 1, !dbg !3252
  %3 = icmp eq i32 %2, 0, !dbg !3252
  br i1 %3, label %7, label %4, !dbg !3253

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3254
  %6 = and i32 %5, 255, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %5, metadata !3249, metadata !DIExpression()), !dbg !3257
  br label %7, !dbg !3258

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3259
  ret i32 %8, !dbg !3260
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !3261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3266, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8 %1, metadata !3267, metadata !DIExpression()), !dbg !3269
  %3 = icmp eq i32 %0, 0, !dbg !3270
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %4, metadata !3268, metadata !DIExpression()), !dbg !3269
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3271

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3272
  %9 = and i32 %8, 32, !dbg !3273
  %10 = icmp eq i32 %9, 0, !dbg !3274
  br i1 %10, label %7, label %11, !dbg !3271, !llvm.loop !3275

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3277
  %13 = inttoptr i32 %4 to i32*, !dbg !3278
  store volatile i32 %12, i32* %13, align 65536, !dbg !3279
  ret void, !dbg !3280
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #1 !dbg !3281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3288
  %2 = icmp eq i32 %0, 0, !dbg !3289
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3289
  call void @llvm.dbg.value(metadata i32 %3, metadata !3286, metadata !DIExpression()), !dbg !3288
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3290

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3291
  %8 = and i32 %7, 1, !dbg !3292
  %9 = icmp eq i32 %8, 0, !dbg !3293
  br i1 %9, label %6, label %10, !dbg !3290, !llvm.loop !3294

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3296
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3296
  %13 = trunc i32 %12 to i8, !dbg !3296
  call void @llvm.dbg.value(metadata i8 %13, metadata !3287, metadata !DIExpression()), !dbg !3288
  ret i8 %13, !dbg !3297
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #6 !dbg !3298 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3302, metadata !DIExpression()), !dbg !3305
  %2 = icmp eq i32 %0, 0, !dbg !3306
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %3, metadata !3303, metadata !DIExpression()), !dbg !3305
  %4 = or i32 %3, 20, !dbg !3307
  %5 = inttoptr i32 %4 to i32*, !dbg !3307
  %6 = load volatile i32, i32* %5, align 4, !dbg !3307
  %7 = and i32 %6, 1, !dbg !3309
  %8 = icmp eq i32 %7, 0, !dbg !3309
  br i1 %8, label %13, label %9, !dbg !3310

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3311
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3311
  %12 = and i32 %11, 255, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %11, metadata !3304, metadata !DIExpression()), !dbg !3305
  br label %13, !dbg !3314

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3315
  ret i32 %14, !dbg !3316
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3321, metadata !DIExpression()), !dbg !3322
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3323
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3324

2:                                                ; preds = %1
  br label %3, !dbg !3325

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3329
  %6 = or i32 %5, 1, !dbg !3329
  store volatile i32 %6, i32* %4, align 4, !dbg !3329
  br label %7, !dbg !3330

7:                                                ; preds = %3, %1
  ret void, !dbg !3330
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3337, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %1, metadata !3338, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i16 %2, metadata !3339, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i16 %3, metadata !3340, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i16 %4, metadata !3341, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3343, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3350, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3352, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 0, metadata !3353, metadata !DIExpression()), !dbg !3354
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !3357
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3358
  %7 = icmp eq i32 %0, 1, !dbg !3359
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %8, metadata !3343, metadata !DIExpression()), !dbg !3354
  %9 = or i32 %8, 36, !dbg !3360
  %10 = inttoptr i32 %9 to i32*, !dbg !3360
  store volatile i32 3, i32* %10, align 4, !dbg !3361
  %11 = or i32 %8, 12, !dbg !3362
  %12 = inttoptr i32 %11 to i32*, !dbg !3362
  %13 = load volatile i32, i32* %12, align 4, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %13, metadata !3345, metadata !DIExpression()), !dbg !3354
  %14 = or i32 %13, 128, !dbg !3363
  store volatile i32 %14, i32* %12, align 4, !dbg !3364
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3365
  %16 = udiv i32 %15, %1, !dbg !3366
  call void @llvm.dbg.value(metadata i32 %16, metadata !3344, metadata !DIExpression()), !dbg !3354
  %17 = lshr i32 %16, 8, !dbg !3367
  %18 = add nuw nsw i32 %17, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i32 %18, metadata !3346, metadata !DIExpression()), !dbg !3354
  %19 = udiv i32 %16, %18, !dbg !3369
  %20 = add i32 %19, -1, !dbg !3371
  call void @llvm.dbg.value(metadata i32 %20, metadata !3347, metadata !DIExpression()), !dbg !3354
  %21 = icmp eq i32 %20, 3, !dbg !3372
  %22 = lshr i32 %20, 1, !dbg !3374
  %23 = add nsw i32 %22, -1, !dbg !3374
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %24, metadata !3348, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 undef, metadata !3353, metadata !DIExpression()), !dbg !3354
  %25 = mul i32 %15, 10, !dbg !3375
  %26 = udiv i32 %25, %1, !dbg !3376
  %27 = udiv i32 %26, %16, !dbg !3377
  %28 = mul i32 %19, -10, !dbg !3378
  %29 = add i32 %27, %28, !dbg !3379
  %30 = urem i32 %29, 10, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %30, metadata !3349, metadata !DIExpression()), !dbg !3354
  %31 = and i32 %18, 255, !dbg !3381
  %32 = inttoptr i32 %8 to i32*, !dbg !3382
  store volatile i32 %31, i32* %32, align 65536, !dbg !3383
  %33 = lshr i32 %18, 8, !dbg !3384
  %34 = and i32 %33, 255, !dbg !3385
  %35 = or i32 %8, 4, !dbg !3386
  %36 = inttoptr i32 %35 to i32*, !dbg !3386
  store volatile i32 %34, i32* %36, align 4, !dbg !3387
  %37 = or i32 %8, 40, !dbg !3388
  %38 = inttoptr i32 %37 to i32*, !dbg !3388
  store volatile i32 %20, i32* %38, align 8, !dbg !3389
  %39 = or i32 %8, 44, !dbg !3390
  %40 = inttoptr i32 %39 to i32*, !dbg !3390
  store volatile i32 %24, i32* %40, align 4, !dbg !3391
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3392
  %42 = load i16, i16* %41, align 2, !dbg !3392
  %43 = zext i16 %42 to i32, !dbg !3392
  %44 = or i32 %8, 88, !dbg !3393
  %45 = inttoptr i32 %44 to i32*, !dbg !3393
  store volatile i32 %43, i32* %45, align 8, !dbg !3394
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3395
  %47 = load i16, i16* %46, align 2, !dbg !3395
  %48 = zext i16 %47 to i32, !dbg !3395
  %49 = or i32 %8, 84, !dbg !3396
  %50 = inttoptr i32 %49 to i32*, !dbg !3396
  store volatile i32 %48, i32* %50, align 4, !dbg !3397
  store volatile i32 %13, i32* %12, align 4, !dbg !3398
  %51 = or i32 %8, 8, !dbg !3399
  %52 = inttoptr i32 %51 to i32*, !dbg !3399
  store volatile i32 71, i32* %52, align 8, !dbg !3400
  %53 = inttoptr i32 %11 to i16*, !dbg !3401
  %54 = load volatile i16, i16* %53, align 4, !dbg !3401
  call void @llvm.dbg.value(metadata i16 %54, metadata !3342, metadata !DIExpression()), !dbg !3354
  %55 = and i16 %54, -64, !dbg !3402
  call void @llvm.dbg.value(metadata i16 %54, metadata !3342, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3354
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3354
  %56 = and i16 %2, -61, !dbg !3403
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3354
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3342, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3354
  %57 = and i16 %4, -57, !dbg !3404
  call void @llvm.dbg.value(metadata i16 undef, metadata !3342, metadata !DIExpression()), !dbg !3354
  %58 = or i16 %56, %3, !dbg !3403
  %59 = or i16 %58, %57, !dbg !3404
  %60 = or i16 %59, %55, !dbg !3405
  call void @llvm.dbg.value(metadata i16 %60, metadata !3342, metadata !DIExpression()), !dbg !3354
  store volatile i16 %60, i16* %53, align 4, !dbg !3406
  ret void, !dbg !3407
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !3408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 %1, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32* %2, metadata !3415, metadata !DIExpression()), !dbg !3416
  %4 = icmp eq i32 %0, 0, !dbg !3417
  %5 = icmp eq i32 %1, 0, !dbg !3419
  br i1 %4, label %6, label %16, !dbg !3420

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3421

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3423
  %9 = zext i16 %8 to i32, !dbg !3423
  br label %26, !dbg !3426

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3427
  %12 = zext i16 %11 to i32, !dbg !3427
  store i32 %12, i32* %2, align 4, !dbg !3429
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3430
  %14 = zext i16 %13 to i32, !dbg !3430
  %15 = sub nsw i32 %12, %14, !dbg !3431
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3432

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3434
  %19 = zext i16 %18 to i32, !dbg !3434
  br label %26, !dbg !3437

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3438
  %22 = zext i16 %21 to i32, !dbg !3438
  store i32 %22, i32* %2, align 4, !dbg !3440
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3441
  %24 = zext i16 %23 to i32, !dbg !3441
  %25 = sub nsw i32 %22, %24, !dbg !3442
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3419
  ret void, !dbg !3443
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3444 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3448, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8* %1, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %2, metadata !3450, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()), !dbg !3452
  %4 = icmp eq i32 %2, 0, !dbg !3453
  br i1 %4, label %15, label %5, !dbg !3456

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3451, metadata !DIExpression()), !dbg !3452
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3457

7:                                                ; preds = %5
  br label %8, !dbg !3459

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3463
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3463
  store i8 %10, i8* %11, align 1, !dbg !3463
  br label %12, !dbg !3464

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %13, metadata !3451, metadata !DIExpression()), !dbg !3452
  %14 = icmp eq i32 %13, %2, !dbg !3453
  br i1 %14, label %15, label %5, !dbg !3456, !llvm.loop !3465

15:                                               ; preds = %12, %3
  ret void, !dbg !3467
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3472, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8* %1, metadata !3473, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %2, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3476
  %4 = icmp eq i32 %2, 0, !dbg !3477
  br i1 %4, label %16, label %5, !dbg !3480

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3475, metadata !DIExpression()), !dbg !3476
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3481

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3483
  %9 = load i8, i8* %8, align 1, !dbg !3483
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3486
  br label %13, !dbg !3487

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3488
  %12 = load i8, i8* %11, align 1, !dbg !3488
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3491
  br label %13, !dbg !3492

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %14, metadata !3475, metadata !DIExpression()), !dbg !3476
  %15 = icmp eq i32 %14, %2, !dbg !3477
  br i1 %15, label %16, label %5, !dbg !3480, !llvm.loop !3494

16:                                               ; preds = %13, %3
  ret void, !dbg !3496
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3497 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i8* %1, metadata !3502, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %2, metadata !3503, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %3, metadata !3504, metadata !DIExpression()), !dbg !3505
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3506

5:                                                ; preds = %4
  br label %6, !dbg !3507

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3511
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !3511
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !3511
  br label %9, !dbg !3512

9:                                                ; preds = %6, %4
  ret void, !dbg !3512
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3517, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %1, metadata !3518, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %2, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %3, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %4, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %5, metadata !3522, metadata !DIExpression()), !dbg !3523
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3524

7:                                                ; preds = %6
  br label %8, !dbg !3525

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3529
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !3529
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !3529
  br label %11, !dbg !3530

11:                                               ; preds = %8, %6
  ret void, !dbg !3530
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3535, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3536, metadata !DIExpression()), !dbg !3537
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3538

3:                                                ; preds = %2
  br label %4, !dbg !3539

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3543
  br label %6, !dbg !3544

6:                                                ; preds = %4, %2
  ret void, !dbg !3544
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3548, metadata !DIExpression()), !dbg !3549
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3550

3:                                                ; preds = %2
  br label %4, !dbg !3551

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3555
  br label %6, !dbg !3556

6:                                                ; preds = %4, %2
  ret void, !dbg !3556
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !3557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3559, metadata !DIExpression()), !dbg !3563
  %2 = icmp eq i32 %0, 0, !dbg !3564
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %3, metadata !3560, metadata !DIExpression()), !dbg !3563
  %4 = or i32 %3, 12, !dbg !3565
  %5 = inttoptr i32 %4 to i32*, !dbg !3565
  %6 = load volatile i32, i32* %5, align 4, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %6, metadata !3562, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3563
  store volatile i32 191, i32* %5, align 4, !dbg !3566
  %7 = or i32 %3, 8, !dbg !3567
  %8 = inttoptr i32 %7 to i32*, !dbg !3567
  %9 = load volatile i32, i32* %8, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %9, metadata !3561, metadata !DIExpression()), !dbg !3563
  %10 = and i32 %9, 65327, !dbg !3568
  %11 = or i32 %10, 208, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %9, metadata !3561, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3563
  store volatile i32 %11, i32* %8, align 8, !dbg !3569
  %12 = or i32 %3, 68, !dbg !3570
  %13 = inttoptr i32 %12 to i32*, !dbg !3570
  store volatile i32 0, i32* %13, align 4, !dbg !3571
  store volatile i32 0, i32* %5, align 4, !dbg !3572
  %14 = or i32 %3, 16, !dbg !3573
  %15 = inttoptr i32 %14 to i32*, !dbg !3573
  store volatile i32 2, i32* %15, align 16, !dbg !3574
  %16 = and i32 %6, 65535, !dbg !3575
  store volatile i32 %16, i32* %5, align 4, !dbg !3576
  ret void, !dbg !3577
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 !dbg !3578 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8 %1, metadata !3583, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8 %2, metadata !3584, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i8 %3, metadata !3585, metadata !DIExpression()), !dbg !3589
  %5 = icmp eq i32 %0, 0, !dbg !3590
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3590
  call void @llvm.dbg.value(metadata i32 %6, metadata !3586, metadata !DIExpression()), !dbg !3589
  %7 = or i32 %6, 12, !dbg !3591
  %8 = inttoptr i32 %7 to i32*, !dbg !3591
  %9 = load volatile i32, i32* %8, align 4, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %9, metadata !3588, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3589
  store volatile i32 191, i32* %8, align 4, !dbg !3592
  %10 = zext i8 %1 to i32, !dbg !3593
  %11 = or i32 %6, 16, !dbg !3594
  %12 = inttoptr i32 %11 to i32*, !dbg !3594
  store volatile i32 %10, i32* %12, align 16, !dbg !3595
  %13 = or i32 %6, 20, !dbg !3596
  %14 = inttoptr i32 %13 to i32*, !dbg !3596
  store volatile i32 %10, i32* %14, align 4, !dbg !3597
  %15 = zext i8 %2 to i32, !dbg !3598
  %16 = or i32 %6, 24, !dbg !3599
  %17 = inttoptr i32 %16 to i32*, !dbg !3599
  store volatile i32 %15, i32* %17, align 8, !dbg !3600
  %18 = or i32 %6, 28, !dbg !3601
  %19 = inttoptr i32 %18 to i32*, !dbg !3601
  store volatile i32 %15, i32* %19, align 4, !dbg !3602
  %20 = or i32 %6, 8, !dbg !3603
  %21 = inttoptr i32 %20 to i32*, !dbg !3603
  %22 = load volatile i32, i32* %21, align 8, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %22, metadata !3587, metadata !DIExpression()), !dbg !3589
  %23 = and i32 %22, 65525, !dbg !3604
  %24 = or i32 %23, 10, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %22, metadata !3587, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3589
  store volatile i32 %24, i32* %21, align 8, !dbg !3605
  %25 = and i32 %9, 65535, !dbg !3606
  store volatile i32 %25, i32* %8, align 4, !dbg !3607
  %26 = zext i8 %3 to i32, !dbg !3608
  %27 = or i32 %6, 64, !dbg !3609
  %28 = inttoptr i32 %27 to i32*, !dbg !3609
  store volatile i32 %26, i32* %28, align 64, !dbg !3610
  %29 = or i32 %6, 68, !dbg !3611
  %30 = inttoptr i32 %29 to i32*, !dbg !3611
  store volatile i32 1, i32* %30, align 4, !dbg !3612
  ret void, !dbg !3613
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !3614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()), !dbg !3619
  %2 = icmp eq i32 %0, 0, !dbg !3620
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3620
  call void @llvm.dbg.value(metadata i32 %3, metadata !3617, metadata !DIExpression()), !dbg !3619
  %4 = or i32 %3, 12, !dbg !3621
  %5 = inttoptr i32 %4 to i32*, !dbg !3621
  %6 = load volatile i32, i32* %5, align 4, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %6, metadata !3618, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3619
  store volatile i32 191, i32* %5, align 4, !dbg !3622
  %7 = or i32 %3, 8, !dbg !3623
  %8 = inttoptr i32 %7 to i32*, !dbg !3623
  store volatile i32 0, i32* %8, align 8, !dbg !3624
  store volatile i32 0, i32* %5, align 4, !dbg !3625
  %9 = and i32 %6, 65535, !dbg !3626
  store volatile i32 %9, i32* %5, align 4, !dbg !3627
  ret void, !dbg !3628
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #1 !dbg !3629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3633
  %2 = icmp eq i32 %0, 0, !dbg !3634
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %3, metadata !3632, metadata !DIExpression()), !dbg !3633
  %4 = or i32 %3, 12, !dbg !3635
  %5 = inttoptr i32 %4 to i32*, !dbg !3635
  store volatile i32 191, i32* %5, align 4, !dbg !3636
  %6 = or i32 %3, 8, !dbg !3637
  %7 = inttoptr i32 %6 to i32*, !dbg !3637
  store volatile i32 16, i32* %7, align 8, !dbg !3638
  %8 = or i32 %3, 16, !dbg !3639
  %9 = inttoptr i32 %8 to i32*, !dbg !3639
  store volatile i32 0, i32* %9, align 16, !dbg !3640
  %10 = or i32 %3, 24, !dbg !3641
  %11 = inttoptr i32 %10 to i32*, !dbg !3641
  store volatile i32 0, i32* %11, align 8, !dbg !3642
  store volatile i32 128, i32* %5, align 4, !dbg !3643
  %12 = inttoptr i32 %3 to i32*, !dbg !3644
  store volatile i32 0, i32* %12, align 65536, !dbg !3645
  %13 = or i32 %3, 4, !dbg !3646
  %14 = inttoptr i32 %13 to i32*, !dbg !3646
  store volatile i32 0, i32* %14, align 4, !dbg !3647
  store volatile i32 0, i32* %5, align 4, !dbg !3648
  store volatile i32 0, i32* %14, align 4, !dbg !3649
  store volatile i32 0, i32* %7, align 8, !dbg !3650
  store volatile i32 191, i32* %5, align 4, !dbg !3651
  store volatile i32 0, i32* %7, align 8, !dbg !3652
  store volatile i32 0, i32* %5, align 4, !dbg !3653
  store volatile i32 0, i32* %9, align 16, !dbg !3654
  %15 = or i32 %3, 28, !dbg !3655
  %16 = inttoptr i32 %15 to i32*, !dbg !3655
  store volatile i32 0, i32* %16, align 4, !dbg !3656
  %17 = or i32 %3, 36, !dbg !3657
  %18 = inttoptr i32 %17 to i32*, !dbg !3657
  store volatile i32 0, i32* %18, align 4, !dbg !3658
  %19 = or i32 %3, 40, !dbg !3659
  %20 = inttoptr i32 %19 to i32*, !dbg !3659
  store volatile i32 0, i32* %20, align 8, !dbg !3660
  %21 = or i32 %3, 44, !dbg !3661
  %22 = inttoptr i32 %21 to i32*, !dbg !3661
  store volatile i32 0, i32* %22, align 4, !dbg !3662
  %23 = or i32 %3, 52, !dbg !3663
  %24 = inttoptr i32 %23 to i32*, !dbg !3663
  store volatile i32 0, i32* %24, align 4, !dbg !3664
  %25 = or i32 %3, 60, !dbg !3665
  %26 = inttoptr i32 %25 to i32*, !dbg !3665
  store volatile i32 0, i32* %26, align 4, !dbg !3666
  %27 = or i32 %3, 64, !dbg !3667
  %28 = inttoptr i32 %27 to i32*, !dbg !3667
  store volatile i32 0, i32* %28, align 64, !dbg !3668
  %29 = or i32 %3, 68, !dbg !3669
  %30 = inttoptr i32 %29 to i32*, !dbg !3669
  store volatile i32 0, i32* %30, align 4, !dbg !3670
  %31 = or i32 %3, 72, !dbg !3671
  %32 = inttoptr i32 %31 to i32*, !dbg !3671
  store volatile i32 0, i32* %32, align 8, !dbg !3672
  %33 = or i32 %3, 76, !dbg !3673
  %34 = inttoptr i32 %33 to i32*, !dbg !3673
  store volatile i32 0, i32* %34, align 4, !dbg !3674
  %35 = or i32 %3, 80, !dbg !3675
  %36 = inttoptr i32 %35 to i32*, !dbg !3675
  store volatile i32 0, i32* %36, align 16, !dbg !3676
  %37 = or i32 %3, 84, !dbg !3677
  %38 = inttoptr i32 %37 to i32*, !dbg !3677
  store volatile i32 0, i32* %38, align 4, !dbg !3678
  %39 = or i32 %3, 88, !dbg !3679
  %40 = inttoptr i32 %39 to i32*, !dbg !3679
  store volatile i32 0, i32* %40, align 8, !dbg !3680
  %41 = or i32 %3, 96, !dbg !3681
  %42 = inttoptr i32 %41 to i32*, !dbg !3681
  store volatile i32 0, i32* %42, align 32, !dbg !3682
  ret void, !dbg !3683
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #1 !dbg !3684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3686, metadata !DIExpression()), !dbg !3688
  %2 = icmp eq i32 %0, 0, !dbg !3689
  call void @llvm.dbg.value(metadata i32 undef, metadata !3687, metadata !DIExpression()), !dbg !3688
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3690

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3691
  %7 = and i32 %6, 64, !dbg !3692
  %8 = icmp eq i32 %7, 0, !dbg !3693
  br i1 %8, label %5, label %9, !dbg !3690, !llvm.loop !3694

9:                                                ; preds = %5
  ret void, !dbg !3696
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3697 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3701, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i32 %1, metadata !3702, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i8* %2, metadata !3703, metadata !DIExpression()), !dbg !3714
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3715
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3715
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3704, metadata !DIExpression()), !dbg !3716
  %7 = bitcast i32* %5 to i8*, !dbg !3717
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3717
  call void @llvm.dbg.value(metadata i32* %5, metadata !3713, metadata !DIExpression(DW_OP_deref)), !dbg !3714
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3718
  call void @llvm.va_start(i8* nonnull %6), !dbg !3719
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3720
  %10 = load i32, i32* %9, align 4, !dbg !3720
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3720
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3720
  call void @llvm.va_end(i8* nonnull %6), !dbg !3721
  %13 = load i32, i32* %5, align 4, !dbg !3722
  call void @llvm.dbg.value(metadata i32 %13, metadata !3713, metadata !DIExpression()), !dbg !3714
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3723
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3724
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3724
  ret void, !dbg !3724
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3725 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3727, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 %1, metadata !3728, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8* %2, metadata !3729, metadata !DIExpression()), !dbg !3732
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3733
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3733
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3730, metadata !DIExpression()), !dbg !3734
  %7 = bitcast i32* %5 to i8*, !dbg !3735
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3735
  call void @llvm.dbg.value(metadata i32* %5, metadata !3731, metadata !DIExpression(DW_OP_deref)), !dbg !3732
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3736
  call void @llvm.va_start(i8* nonnull %6), !dbg !3737
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3738
  %10 = load i32, i32* %9, align 4, !dbg !3738
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3738
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3738
  call void @llvm.va_end(i8* nonnull %6), !dbg !3739
  %13 = load i32, i32* %5, align 4, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %13, metadata !3731, metadata !DIExpression()), !dbg !3732
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3741
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3742
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3742
  ret void, !dbg !3742
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3743 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3745, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 %1, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8* %2, metadata !3747, metadata !DIExpression()), !dbg !3750
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3751
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3751
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3748, metadata !DIExpression()), !dbg !3752
  %7 = bitcast i32* %5 to i8*, !dbg !3753
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3753
  call void @llvm.dbg.value(metadata i32* %5, metadata !3749, metadata !DIExpression(DW_OP_deref)), !dbg !3750
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3754
  call void @llvm.va_start(i8* nonnull %6), !dbg !3755
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3756
  %10 = load i32, i32* %9, align 4, !dbg !3756
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3756
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3756
  call void @llvm.va_end(i8* nonnull %6), !dbg !3757
  %13 = load i32, i32* %5, align 4, !dbg !3758
  call void @llvm.dbg.value(metadata i32 %13, metadata !3749, metadata !DIExpression()), !dbg !3750
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3759
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3760
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3760
  ret void, !dbg !3760
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3761 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3763, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 %1, metadata !3764, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %2, metadata !3765, metadata !DIExpression()), !dbg !3768
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3769
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3769
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3766, metadata !DIExpression()), !dbg !3770
  %7 = bitcast i32* %5 to i8*, !dbg !3771
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3771
  call void @llvm.dbg.value(metadata i32* %5, metadata !3767, metadata !DIExpression(DW_OP_deref)), !dbg !3768
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3772
  call void @llvm.va_start(i8* nonnull %6), !dbg !3773
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3774
  %10 = load i32, i32* %9, align 4, !dbg !3774
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3774
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3774
  call void @llvm.va_end(i8* nonnull %6), !dbg !3775
  %13 = load i32, i32* %5, align 4, !dbg !3776
  call void @llvm.dbg.value(metadata i32 %13, metadata !3767, metadata !DIExpression()), !dbg !3768
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3777
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3778
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3778
  ret void, !dbg !3778
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #11 !dbg !3779 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3785, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 %1, metadata !3786, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %2, metadata !3787, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i8* %3, metadata !3788, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.value(metadata i32 %4, metadata !3789, metadata !DIExpression()), !dbg !3790
  ret void, !dbg !3791
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3792 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %1, metadata !3799, metadata !DIExpression()), !dbg !3801
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3802, !range !1410
  %3 = icmp eq i8 %2, 0, !dbg !3802
  br i1 %3, label %5, label %4, !dbg !3804

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3805
  br label %15, !dbg !3807

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3808
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3810
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3811
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3812
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3813
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3814
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3815
  call void @llvm.dbg.value(metadata i32 0, metadata !3797, metadata !DIExpression()), !dbg !3801
  br label %7, !dbg !3816

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3797, metadata !DIExpression()), !dbg !3801
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3818
  store volatile i32 0, i32* %9, align 4, !dbg !3821
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3822
  store volatile i32 0, i32* %10, align 4, !dbg !3823
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3824
  store i32 0, i32* %11, align 4, !dbg !3825
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3826
  store i32 0, i32* %12, align 4, !dbg !3827
  %13 = add nuw nsw i32 %8, 1, !dbg !3828
  call void @llvm.dbg.value(metadata i32 %13, metadata !3797, metadata !DIExpression()), !dbg !3801
  %14 = icmp eq i32 %13, 16, !dbg !3829
  br i1 %14, label %15, label %7, !dbg !3816, !llvm.loop !3830

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3801
  ret i32 %16, !dbg !3832
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3833 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %1, metadata !3835, metadata !DIExpression()), !dbg !3837
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3838
  %3 = and i32 %2, -31, !dbg !3838
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3838
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3839
  %5 = or i32 %4, 19, !dbg !3839
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3839
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3840
  %7 = and i32 %6, -31, !dbg !3840
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3840
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3841
  %9 = or i32 %8, 3, !dbg !3841
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3841
  tail call void asm sideeffect "isb", ""() #15, !dbg !3842, !srcloc !3846
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3847
  ret i32 0, !dbg !3848
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3849 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3852
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3853
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3854
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3855
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3856
  call void @llvm.dbg.value(metadata i32 0, metadata !3851, metadata !DIExpression()), !dbg !3857
  br label %2, !dbg !3858

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3851, metadata !DIExpression()), !dbg !3857
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3860
  store volatile i32 0, i32* %4, align 4, !dbg !3863
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3864
  store volatile i32 0, i32* %5, align 4, !dbg !3865
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3866
  store i32 0, i32* %6, align 4, !dbg !3867
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3868
  store i32 0, i32* %7, align 4, !dbg !3869
  %8 = add nuw nsw i32 %3, 1, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %8, metadata !3851, metadata !DIExpression()), !dbg !3857
  %9 = icmp eq i32 %8, 16, !dbg !3871
  br i1 %9, label %10, label %2, !dbg !3858, !llvm.loop !3872

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3874
  ret i32 0, !dbg !3875
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #1 !dbg !3876 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3877
  %2 = and i32 %1, 768, !dbg !3879
  %3 = icmp eq i32 %2, 0, !dbg !3879
  br i1 %3, label %8, label %4, !dbg !3880

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3881
  %6 = or i32 %5, 13, !dbg !3881
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3881
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3882
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3883
  br label %8, !dbg !3884

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3885
  ret i32 %9, !dbg !3886
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3887 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3890
  call void @llvm.dbg.value(metadata i32 %1, metadata !3889, metadata !DIExpression()), !dbg !3891
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3892
  %3 = and i32 %2, 1, !dbg !3894
  %4 = icmp eq i32 %3, 0, !dbg !3894
  br i1 %4, label %7, label %5, !dbg !3895

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3896
  br label %7, !dbg !3898

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3899
  %9 = and i32 %8, -2, !dbg !3899
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3899
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3900
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3901
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3902
  ret i32 0, !dbg !3903
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #1 !dbg !3904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3909
  %2 = icmp ugt i32 %0, 15, !dbg !3910
  br i1 %2, label %13, label %3, !dbg !3912

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3913
  %5 = load volatile i32, i32* %4, align 4, !dbg !3913
  %6 = and i32 %5, 256, !dbg !3915
  %7 = icmp eq i32 %6, 0, !dbg !3915
  br i1 %7, label %13, label %8, !dbg !3916

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3917
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3919
  %11 = or i32 %10, %9, !dbg !3919
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3919
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3920
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3921
  br label %13, !dbg !3922

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3909
  ret i32 %14, !dbg !3923
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #1 !dbg !3924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3926, metadata !DIExpression()), !dbg !3927
  %2 = icmp ugt i32 %0, 15, !dbg !3928
  br i1 %2, label %11, label %3, !dbg !3930

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3931
  %5 = xor i32 %4, -1, !dbg !3932
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3933
  %7 = and i32 %6, %5, !dbg !3933
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3933
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3934
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3935
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3936
  store i32 0, i32* %9, align 4, !dbg !3937
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3938
  store i32 0, i32* %10, align 4, !dbg !3939
  br label %11, !dbg !3940

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3927
  ret i32 %12, !dbg !3941
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #1 !dbg !3942 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3947, metadata !DIExpression()), !dbg !3948
  %2 = icmp ugt i32 %0, 3, !dbg !3949
  br i1 %2, label %13, label %3, !dbg !3951

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3952
  %5 = and i32 %4, -769, !dbg !3952
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3952
  %6 = shl nuw nsw i32 %0, 8, !dbg !3953
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3954
  %8 = or i32 %7, %6, !dbg !3954
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3954
  %9 = icmp eq i32 %0, 0, !dbg !3955
  br i1 %9, label %10, label %11, !dbg !3957

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3958
  br label %11, !dbg !3960

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3961
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3962
  br label %13, !dbg !3963

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3948
  ret i32 %14, !dbg !3964
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.DMA_SWCOPYMENU* noundef readonly %1) local_unnamed_addr #3 !dbg !3965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata %struct.DMA_SWCOPYMENU* %1, metadata !3977, metadata !DIExpression()), !dbg !3978
  %3 = icmp ugt i32 %0, 15, !dbg !3979
  br i1 %3, label %30, label %4, !dbg !3981

4:                                                ; preds = %2
  %5 = icmp eq %struct.DMA_SWCOPYMENU* %1, null, !dbg !3982
  br i1 %5, label %30, label %6, !dbg !3984

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 0, !dbg !3985
  %8 = load i32, i32* %7, align 4, !dbg !3985
  %9 = and i32 %8, 4095, !dbg !3987
  %10 = icmp eq i32 %9, 0, !dbg !3987
  br i1 %10, label %12, label %11, !dbg !3988

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0)) #17, !dbg !3989
  unreachable, !dbg !3989

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 1, !dbg !3991
  %14 = load i32, i32* %13, align 4, !dbg !3991
  %15 = and i32 %14, 4095, !dbg !3993
  %16 = icmp eq i32 %15, 0, !dbg !3993
  br i1 %16, label %18, label %17, !dbg !3994

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0)) #17, !dbg !3995
  unreachable, !dbg !3995

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3997
  store volatile i32 %8, i32* %19, align 4, !dbg !3998
  %20 = load i32, i32* %7, align 4, !dbg !3999
  %21 = load i32, i32* %13, align 4, !dbg !4000
  %22 = add i32 %21, %20, !dbg !4001
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !4002
  store volatile i32 %22, i32* %23, align 4, !dbg !4003
  %24 = load volatile i32, i32* %19, align 4, !dbg !4004
  %25 = or i32 %24, 256, !dbg !4004
  store volatile i32 %25, i32* %19, align 4, !dbg !4004
  %26 = load volatile i32, i32* %19, align 4, !dbg !4005
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4006
  store i32 %26, i32* %27, align 4, !dbg !4007
  %28 = load volatile i32, i32* %23, align 4, !dbg !4008
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4009
  store i32 %28, i32* %29, align 4, !dbg !4010
  br label %30, !dbg !4011

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3978
  ret i32 %31, !dbg !4012
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4017, metadata !DIExpression()), !dbg !4019
  %2 = and i32 %0, 31, !dbg !4020
  %3 = icmp eq i32 %2, 0, !dbg !4020
  br i1 %3, label %4, label %9, !dbg !4022

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4023
  call void @llvm.dbg.value(metadata i32 %5, metadata !4018, metadata !DIExpression()), !dbg !4019
  %6 = and i32 %0, -32, !dbg !4024
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4025
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4026
  %8 = or i32 %7, 5, !dbg !4026
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4026
  tail call void asm sideeffect "isb", ""() #15, !dbg !4027, !srcloc !3846
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4029
  br label %9, !dbg !4030

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4019
  ret i32 %10, !dbg !4031
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4032 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4036, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %1, metadata !4037, metadata !DIExpression()), !dbg !4040
  %3 = add i32 %1, %0, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %3, metadata !4039, metadata !DIExpression()), !dbg !4040
  %4 = or i32 %1, %0, !dbg !4042
  %5 = and i32 %4, 31, !dbg !4042
  %6 = icmp eq i32 %5, 0, !dbg !4042
  br i1 %6, label %7, label %16, !dbg !4042

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4044
  call void @llvm.dbg.value(metadata i32 %8, metadata !4038, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %0, metadata !4036, metadata !DIExpression()), !dbg !4040
  %9 = icmp ugt i32 %3, %0, !dbg !4045
  br i1 %9, label %10, label %15, !dbg !4046

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4036, metadata !DIExpression()), !dbg !4040
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !4047
  %13 = add i32 %11, 32, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %13, metadata !4036, metadata !DIExpression()), !dbg !4040
  %14 = icmp ult i32 %13, %3, !dbg !4045
  br i1 %14, label %10, label %15, !dbg !4046, !llvm.loop !4050

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4052, !srcloc !3846
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4054
  br label %16, !dbg !4055

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4040
  ret i32 %17, !dbg !4056
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4061
  %2 = and i32 %0, 31, !dbg !4062
  %3 = icmp eq i32 %2, 0, !dbg !4062
  br i1 %3, label %4, label %9, !dbg !4064

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4065
  call void @llvm.dbg.value(metadata i32 %5, metadata !4060, metadata !DIExpression()), !dbg !4061
  %6 = and i32 %0, -32, !dbg !4066
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4067
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4068
  %8 = or i32 %7, 21, !dbg !4068
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4068
  tail call void asm sideeffect "isb", ""() #15, !dbg !4069, !srcloc !3846
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4071
  br label %9, !dbg !4072

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4061
  ret i32 %10, !dbg !4073
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4076, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 %1, metadata !4077, metadata !DIExpression()), !dbg !4080
  %3 = add i32 %1, %0, !dbg !4081
  call void @llvm.dbg.value(metadata i32 %3, metadata !4079, metadata !DIExpression()), !dbg !4080
  %4 = or i32 %1, %0, !dbg !4082
  %5 = and i32 %4, 31, !dbg !4082
  %6 = icmp eq i32 %5, 0, !dbg !4082
  br i1 %6, label %7, label %16, !dbg !4082

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %8, metadata !4078, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 %0, metadata !4076, metadata !DIExpression()), !dbg !4080
  %9 = icmp ugt i32 %3, %0, !dbg !4085
  br i1 %9, label %10, label %15, !dbg !4086

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4076, metadata !DIExpression()), !dbg !4080
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !4087
  %13 = add i32 %11, 32, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %13, metadata !4076, metadata !DIExpression()), !dbg !4080
  %14 = icmp ult i32 %13, %3, !dbg !4085
  br i1 %14, label %10, label %15, !dbg !4086, !llvm.loop !4090

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4092, !srcloc !3846
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4094
  br label %16, !dbg !4095

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4080
  ret i32 %17, !dbg !4096
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4097 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4100
  call void @llvm.dbg.value(metadata i32 %1, metadata !4099, metadata !DIExpression()), !dbg !4101
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4102
  %3 = and i32 %2, -31, !dbg !4102
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4102
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4103
  %5 = or i32 %4, 19, !dbg !4103
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4103
  tail call void asm sideeffect "isb", ""() #15, !dbg !4104, !srcloc !3846
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4106
  ret i32 0, !dbg !4107
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #1 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4112, metadata !DIExpression()), !dbg !4114
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4115
  %3 = and i32 %2, 8, !dbg !4117
  %4 = icmp eq i32 %3, 0, !dbg !4117
  br i1 %4, label %23, label %5, !dbg !4118

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4113, metadata !DIExpression()), !dbg !4114
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4119
  %8 = shl nuw nsw i32 1, %6, !dbg !4124
  %9 = and i32 %7, %8, !dbg !4125
  %10 = icmp eq i32 %9, 0, !dbg !4125
  br i1 %10, label %20, label %11, !dbg !4126

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4127
  %13 = load volatile i32, i32* %12, align 4, !dbg !4127
  %14 = and i32 %13, -257, !dbg !4130
  %15 = icmp ugt i32 %14, %0, !dbg !4131
  br i1 %15, label %20, label %16, !dbg !4132

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !4133
  %18 = load volatile i32, i32* %17, align 4, !dbg !4133
  %19 = icmp ugt i32 %18, %0, !dbg !4134
  br i1 %19, label %23, label %20, !dbg !4135

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !4136
  call void @llvm.dbg.value(metadata i32 %21, metadata !4113, metadata !DIExpression()), !dbg !4114
  %22 = icmp eq i32 %21, 16, !dbg !4137
  br i1 %22, label %23, label %5, !dbg !4138, !llvm.loop !4139

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4114
  ret i1 %24, !dbg !4141
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #11 !dbg !4142 {
  ret i32 0, !dbg !4146
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4147 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4151, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 -1, metadata !4152, metadata !DIExpression()), !dbg !4153
  %2 = icmp ugt i32 %0, 95, !dbg !4154
  br i1 %2, label %4, label %3, !dbg !4154

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !4156
  call void @llvm.dbg.value(metadata i32 0, metadata !4152, metadata !DIExpression()), !dbg !4153
  br label %4, !dbg !4158

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4153
  ret i32 %5, !dbg !4159
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4160 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4164, metadata !DIExpression()), !dbg !4165
  %2 = and i32 %0, 31, !dbg !4166
  %3 = shl nuw i32 1, %2, !dbg !4167
  %4 = lshr i32 %0, 5, !dbg !4168
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4169
  store volatile i32 %3, i32* %5, align 4, !dbg !4170
  ret void, !dbg !4171
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4172 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4174, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 -1, metadata !4175, metadata !DIExpression()), !dbg !4176
  %2 = icmp ugt i32 %0, 95, !dbg !4177
  br i1 %2, label %4, label %3, !dbg !4177

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !4179
  call void @llvm.dbg.value(metadata i32 0, metadata !4175, metadata !DIExpression()), !dbg !4176
  br label %4, !dbg !4181

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4176
  ret i32 %5, !dbg !4182
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4183 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4185, metadata !DIExpression()), !dbg !4186
  %2 = and i32 %0, 31, !dbg !4187
  %3 = shl nuw i32 1, %2, !dbg !4188
  %4 = lshr i32 %0, 5, !dbg !4189
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4190
  store volatile i32 %3, i32* %5, align 4, !dbg !4191
  ret void, !dbg !4192
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #6 !dbg !4193 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4197, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i32 255, metadata !4198, metadata !DIExpression()), !dbg !4199
  %2 = icmp ugt i32 %0, 95, !dbg !4200
  br i1 %2, label %5, label %3, !dbg !4200

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !4202
  call void @llvm.dbg.value(metadata i32 %4, metadata !4198, metadata !DIExpression()), !dbg !4199
  br label %5, !dbg !4204

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4199
  ret i32 %6, !dbg !4205
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !4206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4210, metadata !DIExpression()), !dbg !4211
  %2 = lshr i32 %0, 5, !dbg !4212
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4213
  %4 = load volatile i32, i32* %3, align 4, !dbg !4213
  %5 = and i32 %0, 31, !dbg !4214
  %6 = lshr i32 %4, %5, !dbg !4215
  %7 = and i32 %6, 1, !dbg !4215
  ret i32 %7, !dbg !4216
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4219, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i32 -1, metadata !4220, metadata !DIExpression()), !dbg !4221
  %2 = icmp ugt i32 %0, 95, !dbg !4222
  br i1 %2, label %4, label %3, !dbg !4222

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !4224
  call void @llvm.dbg.value(metadata i32 0, metadata !4220, metadata !DIExpression()), !dbg !4221
  br label %4, !dbg !4226

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4221
  ret i32 %5, !dbg !4227
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4230, metadata !DIExpression()), !dbg !4231
  %2 = and i32 %0, 31, !dbg !4232
  %3 = shl nuw i32 1, %2, !dbg !4233
  %4 = lshr i32 %0, 5, !dbg !4234
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4235
  store volatile i32 %3, i32* %5, align 4, !dbg !4236
  ret void, !dbg !4237
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4240, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i32 -1, metadata !4241, metadata !DIExpression()), !dbg !4242
  %2 = icmp ugt i32 %0, 95, !dbg !4243
  br i1 %2, label %4, label %3, !dbg !4243

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4245
  call void @llvm.dbg.value(metadata i32 0, metadata !4241, metadata !DIExpression()), !dbg !4242
  br label %4, !dbg !4247

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4242
  ret i32 %5, !dbg !4248
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4251, metadata !DIExpression()), !dbg !4252
  %2 = and i32 %0, 31, !dbg !4253
  %3 = shl nuw i32 1, %2, !dbg !4254
  %4 = lshr i32 %0, 5, !dbg !4255
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4256
  store volatile i32 %3, i32* %5, align 4, !dbg !4257
  ret void, !dbg !4258
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !4259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4263, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 %1, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i32 -1, metadata !4265, metadata !DIExpression()), !dbg !4266
  %3 = icmp ugt i32 %0, 95, !dbg !4267
  br i1 %3, label %5, label %4, !dbg !4267

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !4269
  call void @llvm.dbg.value(metadata i32 0, metadata !4265, metadata !DIExpression()), !dbg !4266
  br label %5, !dbg !4271

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4266
  ret i32 %6, !dbg !4272
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !4273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4277, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i32 %1, metadata !4278, metadata !DIExpression()), !dbg !4279
  %3 = trunc i32 %1 to i8, !dbg !4280
  %4 = shl i8 %3, 5, !dbg !4280
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4283
  store volatile i8 %4, i8* %5, align 1, !dbg !4284
  ret void, !dbg !4285
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #6 !dbg !4286 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4288, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 68, metadata !4289, metadata !DIExpression()), !dbg !4290
  %2 = icmp ugt i32 %0, 95, !dbg !4291
  br i1 %2, label %5, label %3, !dbg !4291

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !4293
  call void @llvm.dbg.value(metadata i32 %4, metadata !4289, metadata !DIExpression()), !dbg !4290
  br label %5, !dbg !4295

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4290
  ret i32 %6, !dbg !4296
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #6 !dbg !4297 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4300
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4301
  %3 = load volatile i8, i8* %2, align 1, !dbg !4301
  %4 = lshr i8 %3, 5, !dbg !4304
  %5 = zext i8 %4 to i32, !dbg !4304
  ret i32 %5, !dbg !4305
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #11 !dbg !4306 {
  ret void, !dbg !4307
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4308 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4310, metadata !DIExpression()), !dbg !4312
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4313
  call void @llvm.dbg.value(metadata i32 %1, metadata !4311, metadata !DIExpression()), !dbg !4312
  %2 = icmp ugt i32 %1, 95, !dbg !4314
  br i1 %2, label %12, label %3, !dbg !4314

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4316
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4316
  %6 = icmp eq void (i32)* %5, null, !dbg !4318
  br i1 %6, label %7, label %8, !dbg !4319

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4310, metadata !DIExpression()), !dbg !4312
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #16, !dbg !4320
  br label %12, !dbg !4322

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4323
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4325
  store i32 %9, i32* %10, align 4, !dbg !4326
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4327
  tail call void %11(i32 noundef %1) #16, !dbg !4328
  call void @llvm.dbg.value(metadata i32 0, metadata !4310, metadata !DIExpression()), !dbg !4312
  br label %12, !dbg !4329

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4312
  ret i32 %13, !dbg !4330
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #6 !dbg !4331 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4334
  %2 = and i32 %1, 511, !dbg !4335
  call void @llvm.dbg.value(metadata i32 %2, metadata !4333, metadata !DIExpression()), !dbg !4336
  %3 = add nsw i32 %2, -16, !dbg !4337
  ret i32 %3, !dbg !4338
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #6 !dbg !4339 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4340
  %2 = lshr i32 %1, 22, !dbg !4341
  %3 = and i32 %2, 1, !dbg !4341
  ret i32 %3, !dbg !4342
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4348, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4349, metadata !DIExpression()), !dbg !4351
  %3 = icmp ugt i32 %0, 95, !dbg !4352
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4352
  br i1 %5, label %10, label %6, !dbg !4352

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4354
  call void @llvm.dbg.value(metadata i32 %7, metadata !4350, metadata !DIExpression()), !dbg !4351
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4355
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4356
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4357
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4358
  store i32 0, i32* %9, align 4, !dbg !4359
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !4360
  br label %10, !dbg !4361

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4351
  ret i32 %11, !dbg !4362
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4363 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4367, metadata !DIExpression()), !dbg !4368
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4369
  store i32 %2, i32* %0, align 4, !dbg !4370
  ret i32 0, !dbg !4371
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4376, metadata !DIExpression()), !dbg !4377
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !4378
  ret i32 0, !dbg !4379
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4380 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4386, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.value(metadata i8 %1, metadata !4387, metadata !DIExpression()), !dbg !4389
  %3 = icmp ugt i32 %0, 60, !dbg !4390
  br i1 %3, label %11, label %4, !dbg !4392

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4393
  br i1 %5, label %11, label %6, !dbg !4395

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4396
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !4397
  call void @llvm.dbg.value(metadata i32 %8, metadata !4388, metadata !DIExpression()), !dbg !4389
  %9 = icmp slt i32 %8, 0, !dbg !4398
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4398
  br label %11, !dbg !4399

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4389
  ret i32 %12, !dbg !4400
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #11 !dbg !4401 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4406, metadata !DIExpression()), !dbg !4407
  ret i32 0, !dbg !4408
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #11 !dbg !4409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4411, metadata !DIExpression()), !dbg !4412
  ret i32 0, !dbg !4413
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4414 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4419, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i32* %1, metadata !4420, metadata !DIExpression()), !dbg !4429
  %4 = icmp eq i32* %1, null, !dbg !4430
  br i1 %4, label %12, label %5, !dbg !4432

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4433
  br i1 %6, label %12, label %7, !dbg !4435

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4436
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4436
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4436
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4436
  %10 = load i8, i8* %9, align 1, !dbg !4436
  call void @llvm.dbg.value(metadata i8 %10, metadata !4421, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4436
  %11 = zext i8 %10 to i32, !dbg !4437
  store i32 %11, i32* %1, align 4, !dbg !4438
  br label %12, !dbg !4439

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4429
  ret i32 %13, !dbg !4440
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4445, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i32 %1, metadata !4446, metadata !DIExpression()), !dbg !4448
  %3 = icmp ugt i32 %0, 60, !dbg !4449
  br i1 %3, label %9, label %4, !dbg !4451

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4452
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4453
  call void @llvm.dbg.value(metadata i32 %6, metadata !4447, metadata !DIExpression()), !dbg !4448
  %7 = icmp slt i32 %6, 0, !dbg !4454
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4454
  br label %9, !dbg !4455

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4448
  ret i32 %10, !dbg !4456
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4457 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i32* %1, metadata !4460, metadata !DIExpression()), !dbg !4462
  %4 = icmp ugt i32 %0, 60, !dbg !4463
  br i1 %4, label %12, label %5, !dbg !4465

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4466
  br i1 %6, label %12, label %7, !dbg !4468

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4469
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4469
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4469
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4469
  %10 = load i8, i8* %9, align 2, !dbg !4469
  call void @llvm.dbg.value(metadata i8 %10, metadata !4461, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4462
  call void @llvm.dbg.value(metadata i8 undef, metadata !4461, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4462
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4469
  %11 = zext i8 %10 to i32, !dbg !4470
  store i32 %11, i32* %1, align 4, !dbg !4471
  br label %12, !dbg !4472

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4462
  ret i32 %13, !dbg !4473
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4479, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 %1, metadata !4480, metadata !DIExpression()), !dbg !4482
  %3 = icmp ugt i32 %0, 60, !dbg !4483
  br i1 %3, label %8, label %4, !dbg !4485

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %5, metadata !4481, metadata !DIExpression()), !dbg !4482
  %6 = icmp slt i32 %5, 0, !dbg !4487
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4487
  br label %8, !dbg !4488

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4482
  ret i32 %9, !dbg !4489
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4490 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4495, metadata !DIExpression()), !dbg !4498
  call void @llvm.dbg.value(metadata i32* %1, metadata !4496, metadata !DIExpression()), !dbg !4498
  %4 = icmp ugt i32 %0, 60, !dbg !4499
  br i1 %4, label %13, label %5, !dbg !4501

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4502
  br i1 %6, label %13, label %7, !dbg !4504

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4505
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4505
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4505
  call void @llvm.dbg.value(metadata i32 undef, metadata !4497, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4498
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4505
  %10 = load i8, i8* %9, align 4, !dbg !4505
  call void @llvm.dbg.value(metadata i8 %10, metadata !4497, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4498
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4505
  %11 = icmp ne i8 %10, 0, !dbg !4506
  %12 = zext i1 %11 to i32, !dbg !4506
  store i32 %12, i32* %1, align 4, !dbg !4507
  br label %13, !dbg !4508

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4498
  ret i32 %14, !dbg !4509
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4510 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4512, metadata !DIExpression()), !dbg !4514
  %3 = icmp ugt i32 %0, 60, !dbg !4515
  br i1 %3, label %11, label %4, !dbg !4517

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4518
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4518
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !4518
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4518
  %7 = load i8, i8* %6, align 2, !dbg !4518
  call void @llvm.dbg.value(metadata i8 %7, metadata !4513, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4514
  call void @llvm.dbg.value(metadata i8 undef, metadata !4513, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4514
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4518
  %8 = xor i8 %7, 1, !dbg !4519
  %9 = zext i8 %8 to i32, !dbg !4519
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4520
  br label %11, !dbg !4521

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4514
  ret i32 %12, !dbg !4522
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4523 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4525, metadata !DIExpression()), !dbg !4527
  %2 = icmp ugt i32 %0, 60, !dbg !4528
  br i1 %2, label %10, label %3, !dbg !4530

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %4, metadata !4526, metadata !DIExpression()), !dbg !4527
  %5 = icmp slt i32 %4, 0, !dbg !4532
  br i1 %5, label %10, label %6, !dbg !4534

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %7, metadata !4526, metadata !DIExpression()), !dbg !4527
  %8 = icmp slt i32 %7, 0, !dbg !4536
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4536
  br label %10, !dbg !4537

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4527
  ret i32 %11, !dbg !4538
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4541, metadata !DIExpression()), !dbg !4543
  %2 = icmp ugt i32 %0, 60, !dbg !4544
  br i1 %2, label %10, label %3, !dbg !4546

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4547
  call void @llvm.dbg.value(metadata i32 %4, metadata !4542, metadata !DIExpression()), !dbg !4543
  %5 = icmp slt i32 %4, 0, !dbg !4548
  br i1 %5, label %10, label %6, !dbg !4550

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !4551
  call void @llvm.dbg.value(metadata i32 %7, metadata !4542, metadata !DIExpression()), !dbg !4543
  %8 = icmp slt i32 %7, 0, !dbg !4552
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4552
  br label %10, !dbg !4553

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4543
  ret i32 %11, !dbg !4554
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4557, metadata !DIExpression()), !dbg !4559
  %2 = icmp ugt i32 %0, 60, !dbg !4560
  br i1 %2, label %7, label %3, !dbg !4562

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4563
  call void @llvm.dbg.value(metadata i32 %4, metadata !4558, metadata !DIExpression()), !dbg !4559
  %5 = icmp slt i32 %4, 0, !dbg !4564
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4564
  br label %7, !dbg !4565

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4559
  ret i32 %8, !dbg !4566
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4567 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4571, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i32 %1, metadata !4572, metadata !DIExpression()), !dbg !4574
  %3 = icmp ugt i32 %0, 60, !dbg !4575
  br i1 %3, label %9, label %4, !dbg !4577

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4578
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4579
  call void @llvm.dbg.value(metadata i32 %6, metadata !4573, metadata !DIExpression()), !dbg !4574
  %7 = icmp slt i32 %6, 0, !dbg !4580
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4580
  br label %9, !dbg !4581

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4574
  ret i32 %10, !dbg !4582
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4583 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4588, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32* %1, metadata !4589, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4593
  %4 = icmp ugt i32 %0, 60, !dbg !4594
  br i1 %4, label %11, label %5, !dbg !4596

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4591, metadata !DIExpression(DW_OP_deref)), !dbg !4592
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !4597
  call void @llvm.dbg.value(metadata i32 %6, metadata !4590, metadata !DIExpression()), !dbg !4592
  %7 = load i8, i8* %3, align 1, !dbg !4598
  call void @llvm.dbg.value(metadata i8 %7, metadata !4591, metadata !DIExpression()), !dbg !4592
  %8 = zext i8 %7 to i32, !dbg !4599
  store i32 %8, i32* %1, align 4, !dbg !4600
  %9 = icmp slt i32 %6, 0, !dbg !4601
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4601
  br label %11, !dbg !4602

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4592
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4603
  ret i32 %12, !dbg !4603
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4610, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4611, metadata !DIExpression()), !dbg !4612
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4613
  br i1 %3, label %4, label %18, !dbg !4615

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4616
  %6 = load i8, i8* %5, align 4, !dbg !4616, !range !1410
  %7 = icmp eq i8 %6, 0, !dbg !4616
  br i1 %7, label %8, label %18, !dbg !4618

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !4619
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4620
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4621
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4622
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !4623
  store i8 1, i8* %5, align 4, !dbg !4624
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4625, !range !4626
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !4627
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !4628
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4629
  %16 = icmp eq i32 %15, 0, !dbg !4631
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4612
  br label %18, !dbg !4612

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4612
  ret i32 %19, !dbg !4632
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #7 !dbg !4633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4639, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4640, metadata !DIExpression()), !dbg !4641
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4642
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4644
  br i1 %5, label %6, label %22, !dbg !4644

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4645
  %8 = load i32, i32* %7, align 4, !dbg !4645
  %9 = icmp ugt i32 %8, 12, !dbg !4647
  br i1 %9, label %22, label %10, !dbg !4648

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4649
  %12 = load i32, i32* %11, align 4, !dbg !4649
  %13 = icmp ugt i32 %12, 2, !dbg !4650
  br i1 %13, label %22, label %14, !dbg !4651

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4652
  %16 = load i32, i32* %15, align 4, !dbg !4652
  %17 = icmp ugt i32 %16, 1, !dbg !4653
  br i1 %17, label %22, label %18, !dbg !4654

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4655
  %20 = load i32, i32* %19, align 4, !dbg !4655
  %21 = icmp ult i32 %20, 4, !dbg !4656
  br label %22, !dbg !4657

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4641
  ret i1 %23, !dbg !4658
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #11 !dbg !4659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4663, metadata !DIExpression()), !dbg !4664
  %2 = icmp ne i32 %0, 0, !dbg !4665
  %3 = zext i1 %2 to i32, !dbg !4666
  ret i32 %3, !dbg !4667
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4672, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4673, metadata !DIExpression()), !dbg !4674
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4675
  br i1 %3, label %4, label %22, !dbg !4677

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4678
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4679
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4680
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !4681
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4682
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4683
  %11 = load i32, i32* %10, align 4, !dbg !4683
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4684
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4685
  %14 = load i32, i32* %13, align 4, !dbg !4685
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4686
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4687
  %17 = load i32, i32* %16, align 4, !dbg !4687
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4688
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4689
  %20 = load i32, i32* %19, align 4, !dbg !4689
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4690
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !4691
  br label %22, !dbg !4692

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4674
  ret i32 %23, !dbg !4693
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #11 !dbg !4694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4698, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4699, metadata !DIExpression()), !dbg !4704
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4705
  %3 = load i32, i32* %2, align 4, !dbg !4705
  ret i32 %3, !dbg !4706
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #11 !dbg !4707 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4711, metadata !DIExpression()), !dbg !4714
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4712, metadata !DIExpression()), !dbg !4715
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4716
  %3 = load i16, i16* %2, align 2, !dbg !4716
  ret i16 %3, !dbg !4717
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #11 !dbg !4718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4722, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4723, metadata !DIExpression()), !dbg !4726
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4727
  %3 = load i16, i16* %2, align 2, !dbg !4727
  ret i16 %3, !dbg !4728
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #11 !dbg !4729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4733, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4734, metadata !DIExpression()), !dbg !4737
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4738
  %3 = load i16, i16* %2, align 2, !dbg !4738
  ret i16 %3, !dbg !4739
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !4740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4744, metadata !DIExpression()), !dbg !4745
  %2 = icmp ult i32 %0, 2, !dbg !4746
  ret i1 %2, !dbg !4747
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4752, metadata !DIExpression()), !dbg !4753
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4754
  br i1 %2, label %3, label %10, !dbg !4756

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4757
  %5 = load i8, i8* %4, align 4, !dbg !4757, !range !1410
  %6 = icmp eq i8 %5, 0, !dbg !4759
  br i1 %6, label %10, label %7, !dbg !4760

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !4761
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4762, !range !4626
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !4763
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !4764
  br label %10, !dbg !4765

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4753
  ret i32 %11, !dbg !4766
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4767 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4771, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.value(metadata i8 %1, metadata !4772, metadata !DIExpression()), !dbg !4774
  %3 = icmp eq i32 %0, 0, !dbg !4775
  %4 = icmp eq i32 %0, 1, !dbg !4775
  %5 = select i1 %4, i32 1, i32 2, !dbg !4775
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4775
  call void @llvm.dbg.value(metadata i32 %6, metadata !4773, metadata !DIExpression()), !dbg !4774
  %7 = icmp eq i32 %6, 2, !dbg !4776
  br i1 %7, label %9, label %8, !dbg !4778

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !4779
  br label %9, !dbg !4781

9:                                                ; preds = %2, %8
  ret void, !dbg !4782
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4787, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i8* %1, metadata !4788, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.value(metadata i32 %2, metadata !4789, metadata !DIExpression()), !dbg !4792
  %4 = icmp eq i32 %0, 0, !dbg !4793
  %5 = icmp eq i32 %0, 1, !dbg !4793
  %6 = select i1 %5, i32 1, i32 2, !dbg !4793
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4793
  call void @llvm.dbg.value(metadata i32 %7, metadata !4790, metadata !DIExpression()), !dbg !4792
  %8 = icmp eq i8* %1, null, !dbg !4794
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4796
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4796
  call void @llvm.dbg.value(metadata i32 0, metadata !4791, metadata !DIExpression()), !dbg !4792
  br i1 %12, label %19, label %13, !dbg !4796

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4791, metadata !DIExpression()), !dbg !4792
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4797
  %16 = load i8, i8* %15, align 1, !dbg !4797
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !4803
  %17 = add nuw i32 %14, 1, !dbg !4804
  call void @llvm.dbg.value(metadata i32 %17, metadata !4791, metadata !DIExpression()), !dbg !4792
  %18 = icmp eq i32 %17, %2, !dbg !4805
  br i1 %18, label %19, label %13, !dbg !4806, !llvm.loop !4807

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4792
  ret i32 %20, !dbg !4809
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4810 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4812, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i8* %1, metadata !4813, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i32 %2, metadata !4814, metadata !DIExpression()), !dbg !4818
  %5 = bitcast i32* %4 to i8*, !dbg !4819
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4819
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4820
  br i1 %6, label %7, label %24, !dbg !4822

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4823
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4825
  br i1 %10, label %24, label %11, !dbg !4825

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4826
  %13 = load i8, i8* %12, align 4, !dbg !4826, !range !1410
  %14 = icmp eq i8 %13, 0, !dbg !4826
  br i1 %14, label %24, label %15, !dbg !4828

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4829, !range !4626
  call void @llvm.dbg.value(metadata i32* %4, metadata !4815, metadata !DIExpression(DW_OP_deref)), !dbg !4818
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !4830
  %17 = load i32, i32* %4, align 4, !dbg !4831
  call void @llvm.dbg.value(metadata i32 %17, metadata !4815, metadata !DIExpression()), !dbg !4818
  %18 = icmp ult i32 %17, %2, !dbg !4833
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4816, metadata !DIExpression()), !dbg !4818
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !4834
  %20 = load i32, i32* %4, align 4, !dbg !4835
  call void @llvm.dbg.value(metadata i32 %20, metadata !4815, metadata !DIExpression()), !dbg !4818
  %21 = icmp eq i32 %19, %20, !dbg !4837
  br i1 %21, label %22, label %24, !dbg !4838

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4839, !range !4841
  call void @llvm.dbg.value(metadata i32 %23, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !4842
  br label %24, !dbg !4843

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4818
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4844
  ret i32 %25, !dbg !4844
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #11 !dbg !4845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4849, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i1 %1, metadata !4850, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4852
  %3 = icmp eq i32 %0, 0, !dbg !4853
  %4 = select i1 %1, i32 15, i32 14, !dbg !4855
  %5 = select i1 %1, i32 17, i32 16, !dbg !4855
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4855
  call void @llvm.dbg.value(metadata i32 %6, metadata !4851, metadata !DIExpression()), !dbg !4852
  ret i32 %6, !dbg !4856
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4861, metadata !DIExpression()), !dbg !4863
  %2 = icmp eq i32 %0, 0, !dbg !4864
  %3 = icmp eq i32 %0, 1, !dbg !4864
  %4 = select i1 %3, i32 1, i32 2, !dbg !4864
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4864
  call void @llvm.dbg.value(metadata i32 %5, metadata !4862, metadata !DIExpression()), !dbg !4863
  %6 = icmp ult i32 %5, 2, !dbg !4865
  br i1 %6, label %7, label %9, !dbg !4867

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !4868
  br label %9, !dbg !4870

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4871
  ret i8 %10, !dbg !4872
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4877, metadata !DIExpression()), !dbg !4879
  %2 = icmp eq i32 %0, 0, !dbg !4880
  %3 = icmp eq i32 %0, 1, !dbg !4880
  %4 = select i1 %3, i32 1, i32 2, !dbg !4880
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4880
  call void @llvm.dbg.value(metadata i32 %5, metadata !4878, metadata !DIExpression()), !dbg !4879
  %6 = icmp ult i32 %5, 2, !dbg !4881
  br i1 %6, label %7, label %9, !dbg !4883

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !4884
  br label %9, !dbg !4886

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4887
  ret i32 %10, !dbg !4888
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4889 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4893, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i8* %1, metadata !4894, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.value(metadata i32 %2, metadata !4895, metadata !DIExpression()), !dbg !4898
  %4 = icmp eq i32 %0, 0, !dbg !4899
  %5 = icmp eq i32 %0, 1, !dbg !4899
  %6 = select i1 %5, i32 1, i32 2, !dbg !4899
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4899
  call void @llvm.dbg.value(metadata i32 %7, metadata !4896, metadata !DIExpression()), !dbg !4898
  %8 = icmp eq i8* %1, null, !dbg !4900
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4902
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4902
  call void @llvm.dbg.value(metadata i32 0, metadata !4897, metadata !DIExpression()), !dbg !4898
  br i1 %12, label %19, label %13, !dbg !4902

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4897, metadata !DIExpression()), !dbg !4898
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !4903
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4909
  store i8 %15, i8* %16, align 1, !dbg !4910
  %17 = add nuw i32 %14, 1, !dbg !4911
  call void @llvm.dbg.value(metadata i32 %17, metadata !4897, metadata !DIExpression()), !dbg !4898
  %18 = icmp eq i32 %17, %2, !dbg !4912
  br i1 %18, label %19, label %13, !dbg !4913, !llvm.loop !4914

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4898
  ret i32 %20, !dbg !4916
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4917 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i8* %1, metadata !4920, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 %2, metadata !4921, metadata !DIExpression()), !dbg !4925
  %5 = bitcast i32* %4 to i8*, !dbg !4926
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4926
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4927
  br i1 %6, label %7, label %20, !dbg !4929

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4930
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4932
  br i1 %10, label %20, label %11, !dbg !4932

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4933, !range !4626
  call void @llvm.dbg.value(metadata i32* %4, metadata !4922, metadata !DIExpression(DW_OP_deref)), !dbg !4925
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !4934
  %13 = load i32, i32* %4, align 4, !dbg !4935
  call void @llvm.dbg.value(metadata i32 %13, metadata !4922, metadata !DIExpression()), !dbg !4925
  %14 = icmp ult i32 %13, %2, !dbg !4937
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4923, metadata !DIExpression()), !dbg !4925
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !4938
  %16 = load i32, i32* %4, align 4, !dbg !4939
  call void @llvm.dbg.value(metadata i32 %16, metadata !4922, metadata !DIExpression()), !dbg !4925
  %17 = icmp eq i32 %15, %16, !dbg !4941
  br i1 %17, label %18, label %20, !dbg !4942

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4943, !range !4841
  call void @llvm.dbg.value(metadata i32 %19, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !4945
  br label %20, !dbg !4946

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4925
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4947
  ret i32 %21, !dbg !4947
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4948 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4950, metadata !DIExpression()), !dbg !4952
  %3 = bitcast i32* %2 to i8*, !dbg !4953
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4953
  call void @llvm.dbg.value(metadata i32 0, metadata !4951, metadata !DIExpression()), !dbg !4952
  store i32 0, i32* %2, align 4, !dbg !4954
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4955
  br i1 %4, label %5, label %8, !dbg !4957

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4958, !range !4626
  call void @llvm.dbg.value(metadata i32* %2, metadata !4951, metadata !DIExpression(DW_OP_deref)), !dbg !4952
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !4959
  %7 = load i32, i32* %2, align 4, !dbg !4960
  call void @llvm.dbg.value(metadata i32 %7, metadata !4951, metadata !DIExpression()), !dbg !4952
  br label %8, !dbg !4961

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4952
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4962
  ret i32 %9, !dbg !4962
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4963 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4965, metadata !DIExpression()), !dbg !4967
  %3 = bitcast i32* %2 to i8*, !dbg !4968
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4968
  call void @llvm.dbg.value(metadata i32 0, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i32 0, i32* %2, align 4, !dbg !4969
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4970
  br i1 %4, label %5, label %8, !dbg !4972

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4973, !range !4626
  call void @llvm.dbg.value(metadata i32* %2, metadata !4966, metadata !DIExpression(DW_OP_deref)), !dbg !4967
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !4974
  %7 = load i32, i32* %2, align 4, !dbg !4975
  call void @llvm.dbg.value(metadata i32 %7, metadata !4966, metadata !DIExpression()), !dbg !4967
  br label %8, !dbg !4976

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4967
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4977
  ret i32 %9, !dbg !4977
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4978 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4982, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4983, metadata !DIExpression()), !dbg !4986
  call void @llvm.dbg.value(metadata i8* %2, metadata !4984, metadata !DIExpression()), !dbg !4986
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4987
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4989
  br i1 %6, label %7, label %18, !dbg !4989

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4990
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4991
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4992
  store i8* %2, i8** %9, align 4, !dbg !4993
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4994
  store i8 1, i8* %10, align 4, !dbg !4995
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4996
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4997
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4998
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4999
  %13 = icmp eq i32 %11, 0, !dbg !5000
  br i1 %13, label %14, label %15, !dbg !5002

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !5003
  br label %16, !dbg !5005

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !5006
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !5008, !range !4841
  call void @llvm.dbg.value(metadata i32 %17, metadata !4985, metadata !DIExpression()), !dbg !4986
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !5009
  br label %18, !dbg !5010

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4986
  ret i32 %19, !dbg !5011
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #11 !dbg !478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !483, metadata !DIExpression()), !dbg !5012
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5013
  %3 = load void ()*, void ()** %2, align 4, !dbg !5013
  ret void ()* %3, !dbg !5014
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !5015 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5021, !range !1410
  %2 = icmp eq i8 %1, 0, !dbg !5021
  br i1 %2, label %8, label %3, !dbg !5022

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5023
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5025
  br i1 %5, label %8, label %6, !dbg !5026

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5027
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !5029
  br label %8, !dbg !5030

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5031, !range !4626
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5032
  ret void, !dbg !5033
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !5034 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5039, !range !1410
  %2 = icmp eq i8 %1, 0, !dbg !5039
  br i1 %2, label %8, label %3, !dbg !5040

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5041
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5043
  br i1 %5, label %8, label %6, !dbg !5044

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5045
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !5047
  br label %8, !dbg !5048

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5049, !range !4626
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5050
  ret void, !dbg !5051
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5052 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5056, metadata !DIExpression()), !dbg !5063
  call void @llvm.dbg.value(metadata i1 %1, metadata !5057, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5063
  %5 = bitcast i32* %3 to i8*, !dbg !5064
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5064
  %6 = bitcast i32* %4 to i8*, !dbg !5064
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5064
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5060, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5063
  br i1 %1, label %7, label %12, !dbg !5065

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5060, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5063
  call void @llvm.dbg.value(metadata i32* %3, metadata !5058, metadata !DIExpression(DW_OP_deref)), !dbg !5063
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !5066
  %8 = load i32, i32* %3, align 4, !dbg !5069
  call void @llvm.dbg.value(metadata i32 %8, metadata !5058, metadata !DIExpression()), !dbg !5063
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5071
  %10 = load i32, i32* %9, align 4, !dbg !5071
  %11 = icmp ult i32 %8, %10, !dbg !5072
  br i1 %11, label %22, label %20, !dbg !5073

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5059, metadata !DIExpression(DW_OP_deref)), !dbg !5063
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !5074
  %13 = load i32, i32* %4, align 4, !dbg !5076
  call void @llvm.dbg.value(metadata i32 %13, metadata !5059, metadata !DIExpression()), !dbg !5063
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5078
  %15 = load i32, i32* %14, align 4, !dbg !5078
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5079
  %17 = load i32, i32* %16, align 4, !dbg !5079
  %18 = sub i32 %15, %17, !dbg !5080
  %19 = icmp ult i32 %13, %18, !dbg !5081
  br i1 %19, label %22, label %20, !dbg !5082

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5083, !range !4841
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !5083
  br label %22, !dbg !5084

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5084
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5084
  ret void, !dbg !5084
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5085 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5090, !range !1410
  %2 = icmp eq i8 %1, 0, !dbg !5090
  br i1 %2, label %11, label %3, !dbg !5091

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5092
  %5 = icmp eq i32 %4, 0, !dbg !5093
  br i1 %5, label %11, label %6, !dbg !5094

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5095
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5097
  br i1 %8, label %11, label %9, !dbg !5098

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5099
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !5101
  br label %11, !dbg !5102

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5103, !range !4626
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5104
  ret void, !dbg !5105
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5106 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5111, !range !1410
  %2 = icmp eq i8 %1, 0, !dbg !5111
  br i1 %2, label %11, label %3, !dbg !5112

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5113
  %5 = icmp eq i32 %4, 0, !dbg !5114
  br i1 %5, label %11, label %6, !dbg !5115

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5116
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5118
  br i1 %8, label %11, label %9, !dbg !5119

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5120
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !5122
  br label %11, !dbg !5123

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5124, !range !4626
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5125
  ret void, !dbg !5126
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5131, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i32 %1, metadata !5132, metadata !DIExpression()), !dbg !5133
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5134
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5136
  br i1 %5, label %6, label %10, !dbg !5136

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5137
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5138
  store i32 %1, i32* %8, align 4, !dbg !5139
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5140
  br label %10, !dbg !5141

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5133
  ret i32 %11, !dbg !5142
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5143 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5149, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5150, metadata !DIExpression()), !dbg !5151
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5152
  br i1 %3, label %4, label %28, !dbg !5154

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5155
  br i1 %5, label %6, label %28, !dbg !5157

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5158
  store i8 1, i8* %7, align 4, !dbg !5159
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5160
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5161
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5162
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !5163
  tail call void @DMA_Init() #16, !dbg !5164
  tail call void @DMA_Vfifo_init() #16, !dbg !5165
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5166
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5167
  %14 = load i8*, i8** %13, align 4, !dbg !5167
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5168
  %16 = load i32, i32* %15, align 4, !dbg !5168
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5169
  %18 = load i32, i32* %17, align 4, !dbg !5169
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5170
  %20 = load i32, i32* %19, align 4, !dbg !5170
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5171
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !5172
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5173
  %23 = load i8*, i8** %22, align 4, !dbg !5173
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5174
  %25 = load i32, i32* %24, align 4, !dbg !5174
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5175
  %27 = load i32, i32* %26, align 4, !dbg !5175
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !5176
  br label %28, !dbg !5177

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5151
  ret i32 %29, !dbg !5178
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #7 !dbg !5179 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5183, metadata !DIExpression()), !dbg !5184
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5185
  br i1 %2, label %27, label %3, !dbg !5187

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5188
  %5 = load i8*, i8** %4, align 4, !dbg !5188
  %6 = icmp eq i8* %5, null, !dbg !5190
  br i1 %6, label %27, label %7, !dbg !5191

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5192
  %9 = load i32, i32* %8, align 4, !dbg !5192
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5194
  %11 = load i32, i32* %10, align 4, !dbg !5194
  %12 = icmp ult i32 %9, %11, !dbg !5195
  br i1 %12, label %27, label %13, !dbg !5196

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5197
  %15 = load i32, i32* %14, align 4, !dbg !5197
  %16 = icmp ult i32 %9, %15, !dbg !5199
  br i1 %16, label %27, label %17, !dbg !5200

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5201
  %19 = load i8*, i8** %18, align 4, !dbg !5201
  %20 = icmp eq i8* %19, null, !dbg !5203
  br i1 %20, label %27, label %21, !dbg !5204

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5205
  %23 = load i32, i32* %22, align 4, !dbg !5205
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5207
  %25 = load i32, i32* %24, align 4, !dbg !5207
  %26 = icmp uge i32 %23, %25, !dbg !5208
  br label %27, !dbg !5209

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5184
  ret i1 %28, !dbg !5210
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5211 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5215, metadata !DIExpression()), !dbg !5217
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !5218
  %3 = udiv i32 %2, 1000000, !dbg !5219
  call void @llvm.dbg.value(metadata i32 %3, metadata !5216, metadata !DIExpression()), !dbg !5217
  %4 = mul i32 %3, %0, !dbg !5220
  ret i32 %4, !dbg !5221
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5224, metadata !DIExpression()), !dbg !5226
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5227
  br i1 %2, label %3, label %8, !dbg !5229

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5230
  %5 = icmp eq i32 %0, 1, !dbg !5230
  %6 = select i1 %5, i32 1, i32 2, !dbg !5230
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5230
  call void @llvm.dbg.value(metadata i32 %7, metadata !5225, metadata !DIExpression()), !dbg !5226
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !5231
  br label %8, !dbg !5232

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5226
  ret i32 %9, !dbg !5233
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5238, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata i8 %1, metadata !5239, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata i8 %2, metadata !5240, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata i8 %3, metadata !5241, metadata !DIExpression()), !dbg !5243
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5244
  br i1 %5, label %6, label %11, !dbg !5246

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5247
  %8 = icmp eq i32 %0, 1, !dbg !5247
  %9 = select i1 %8, i32 1, i32 2, !dbg !5247
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5247
  call void @llvm.dbg.value(metadata i32 %10, metadata !5242, metadata !DIExpression()), !dbg !5243
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !5248
  br label %11, !dbg !5249

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5243
  ret i32 %12, !dbg !5250
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5251 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5253, metadata !DIExpression()), !dbg !5255
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5256
  br i1 %2, label %3, label %8, !dbg !5258

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5259
  %5 = icmp eq i32 %0, 1, !dbg !5259
  %6 = select i1 %5, i32 1, i32 2, !dbg !5259
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5259
  call void @llvm.dbg.value(metadata i32 %7, metadata !5254, metadata !DIExpression()), !dbg !5255
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !5260
  br label %8, !dbg !5261

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5255
  ret i32 %9, !dbg !5262
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5267, metadata !DIExpression()), !dbg !5269
  call void @llvm.dbg.value(metadata i32 %1, metadata !5268, metadata !DIExpression()), !dbg !5269
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5270
  br i1 %3, label %4, label %8, !dbg !5272

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5273
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5275
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !5275
  br label %8, !dbg !5276

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5269
  ret i32 %9, !dbg !5276
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #11 !dbg !5277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5281, metadata !DIExpression()), !dbg !5282
  ret i32 %0, !dbg !5283
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !5284 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5285
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !5286, !srcloc !5289
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !5290, !srcloc !5293
  tail call fastcc void @uart_loopback_data_dma_example() #14, !dbg !5294
  unreachable, !dbg !5295
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5296 {
  tail call void @top_xtal_init() #16, !dbg !5297
  ret void, !dbg !5298
}

; Function Attrs: noinline noreturn nounwind optsize
define internal fastcc void @uart_loopback_data_dma_example() unnamed_addr #13 !dbg !5299 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = alloca %struct.hal_uart_dma_config_t, align 4
  %3 = alloca [256 x i8], align 1
  %4 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5322
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #15, !dbg !5322
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5301, metadata !DIExpression()), !dbg !5323
  %5 = bitcast %struct.hal_uart_dma_config_t* %2 to i8*, !dbg !5324
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %5) #15, !dbg !5324
  call void @llvm.dbg.declare(metadata %struct.hal_uart_dma_config_t* %2, metadata !5309, metadata !DIExpression()), !dbg !5325
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !5326
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %6) #15, !dbg !5326
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !5320, metadata !DIExpression()), !dbg !5327
  %7 = tail call i32 @hal_gpio_init(i32 noundef 2) #16, !dbg !5328
  %8 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !5329
  %9 = tail call i32 @hal_gpio_init(i32 noundef 3) #16, !dbg !5330
  %10 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !5331
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5332
  store i32 9, i32* %11, align 4, !dbg !5333
  %12 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5334
  store i32 0, i32* %12, align 4, !dbg !5335
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5336
  store i32 0, i32* %13, align 4, !dbg !5337
  %14 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5338
  store i32 3, i32* %14, align 4, !dbg !5339
  %15 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !5340
  %16 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 6, !dbg !5341
  store i32 30, i32* %16, align 4, !dbg !5342
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 3, !dbg !5343
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_uart_receive_buffer, i32 0, i32 0), i8** %17, align 4, !dbg !5344
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 4, !dbg !5345
  store i32 256, i32* %18, align 4, !dbg !5346
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 5, !dbg !5347
  store i32 150, i32* %19, align 4, !dbg !5348
  %20 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 0, !dbg !5349
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_uart_send_buffer, i32 0, i32 0), i8** %20, align 4, !dbg !5350
  %21 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 1, !dbg !5351
  store i32 256, i32* %21, align 4, !dbg !5352
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 2, !dbg !5353
  store i32 50, i32* %22, align 4, !dbg !5354
  %23 = call i32 @hal_uart_set_dma(i32 noundef 0, %struct.hal_uart_dma_config_t* noundef nonnull %2) #16, !dbg !5355
  %24 = call i32 @hal_uart_register_callback(i32 noundef 0, void (i32, i8*)* noundef nonnull @uart_read_from_input, i8* noundef null) #16, !dbg !5356
  %25 = call i32 @hal_uart_send_dma(i32 noundef 0, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0), i32 noundef 65) #16, !dbg !5357
  br label %26, !dbg !5358

26:                                               ; preds = %33, %0
  %27 = load volatile i8, i8* @g_uart_receive_event, align 1, !dbg !5359, !range !1410
  %28 = icmp eq i8 %27, 0, !dbg !5359
  br i1 %28, label %33, label %29, !dbg !5362

29:                                               ; preds = %26
  %30 = call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #16, !dbg !5363
  call void @llvm.dbg.value(metadata i32 %30, metadata !5321, metadata !DIExpression()), !dbg !5365
  %31 = call i32 @hal_uart_receive_dma(i32 noundef 0, i8* noundef nonnull %6, i32 noundef %30) #16, !dbg !5366
  %32 = call i32 @hal_uart_send_dma(i32 noundef 0, i8* noundef nonnull %6, i32 noundef %30) #16, !dbg !5367
  store volatile i8 0, i8* @g_uart_receive_event, align 1, !dbg !5368
  br label %33, !dbg !5369

33:                                               ; preds = %29, %26
  br label %26, !dbg !5359, !llvm.loop !5370
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal void @uart_read_from_input(i32 noundef %0, i8* nocapture noundef readnone %1) #1 !dbg !5372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5374, metadata !DIExpression()), !dbg !5376
  call void @llvm.dbg.value(metadata i8* %1, metadata !5375, metadata !DIExpression()), !dbg !5376
  %3 = icmp eq i32 %0, 1, !dbg !5377
  br i1 %3, label %4, label %5, !dbg !5379

4:                                                ; preds = %2
  store volatile i8 1, i8* @g_uart_receive_event, align 1, !dbg !5380
  br label %5, !dbg !5382

5:                                                ; preds = %4, %2
  ret void, !dbg !5383
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #1 !dbg !5384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5386, metadata !DIExpression()), !dbg !5388
  %2 = add i32 %0, -1, !dbg !5389
  %3 = icmp ugt i32 %2, 16777215, !dbg !5391
  br i1 %3, label %8, label %4, !dbg !5392

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5393
  call void @llvm.dbg.value(metadata i32 %5, metadata !5387, metadata !DIExpression()), !dbg !5388
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5394
  %7 = and i32 %6, -4, !dbg !5394
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5394
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5395
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5396
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5397
  br label %8, !dbg !5398

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5388
  ret i32 %9, !dbg !5399
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #1 !dbg !5400 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5401
  ret void, !dbg !5402
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #6 !dbg !5403 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5404
  ret i32 %1, !dbg !5405
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5406 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !5407
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5408
  ret void, !dbg !5409
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #1 !dbg !5410 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5411
  %2 = or i32 %1, 15728640, !dbg !5411
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5411
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5412
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5413
  %4 = or i32 %3, 458752, !dbg !5413
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5413
  ret void, !dbg !5414
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #1 !dbg !5415 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5416
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5417
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5418
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5419
  store volatile i32 270950400, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5420
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5421
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5422
  ret void, !dbg !5423
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #11 !dbg !5424 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5426, metadata !DIExpression()), !dbg !5427
  ret i32 0, !dbg !5428
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #11 !dbg !5429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5479, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5480, metadata !DIExpression()), !dbg !5481
  ret i32 0, !dbg !5482
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #11 !dbg !5483 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5485, metadata !DIExpression()), !dbg !5486
  ret i32 1, !dbg !5487
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5488 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5492, metadata !DIExpression()), !dbg !5495
  call void @llvm.dbg.value(metadata i32 %1, metadata !5493, metadata !DIExpression()), !dbg !5495
  call void @llvm.dbg.value(metadata i32 %2, metadata !5494, metadata !DIExpression()), !dbg !5495
  ret i32 0, !dbg !5496
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5501, metadata !DIExpression()), !dbg !5504
  call void @llvm.dbg.value(metadata i32 %1, metadata !5502, metadata !DIExpression()), !dbg !5504
  call void @llvm.dbg.value(metadata i32 %2, metadata !5503, metadata !DIExpression()), !dbg !5504
  ret i32 -1, !dbg !5505
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5506 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5510, metadata !DIExpression()), !dbg !5513
  call void @llvm.dbg.value(metadata i8* %1, metadata !5511, metadata !DIExpression()), !dbg !5513
  call void @llvm.dbg.value(metadata i32 %2, metadata !5512, metadata !DIExpression()), !dbg !5513
  ret i32 0, !dbg !5514
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5517, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.value(metadata i8* %1, metadata !5518, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.value(metadata i32 %2, metadata !5519, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.value(metadata i32 0, metadata !5520, metadata !DIExpression()), !dbg !5521
  %4 = icmp sgt i32 %2, 0, !dbg !5522
  br i1 %4, label %5, label %14, !dbg !5525

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5520, metadata !DIExpression()), !dbg !5521
  call void @llvm.dbg.value(metadata i8* %7, metadata !5518, metadata !DIExpression()), !dbg !5521
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5526
  call void @llvm.dbg.value(metadata i8* %8, metadata !5518, metadata !DIExpression()), !dbg !5521
  %9 = load i8, i8* %7, align 1, !dbg !5528
  %10 = zext i8 %9 to i32, !dbg !5528
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !5529
  %12 = add nuw nsw i32 %6, 1, !dbg !5530
  call void @llvm.dbg.value(metadata i32 %12, metadata !5520, metadata !DIExpression()), !dbg !5521
  %13 = icmp eq i32 %12, %2, !dbg !5522
  br i1 %13, label %14, label %5, !dbg !5525, !llvm.loop !5531

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5533
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !637 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !840, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.value(metadata i32 %1, metadata !841, metadata !DIExpression()), !dbg !5534
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !5535, !srcloc !5536
  call void @llvm.dbg.value(metadata i8* %3, metadata !843, metadata !DIExpression()), !dbg !5534
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5537
  %5 = icmp eq i8* %4, null, !dbg !5539
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5540
  call void @llvm.dbg.value(metadata i8* %6, metadata !842, metadata !DIExpression()), !dbg !5534
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5541
  %8 = icmp ult i8* %3, %7, !dbg !5543
  %9 = xor i1 %8, true, !dbg !5544
  %10 = or i1 %5, %9, !dbg !5544
  br i1 %10, label %11, label %13, !dbg !5544

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5545
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5544
  br label %13, !dbg !5544

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5545
  ret i8* %14, !dbg !5544
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5548, metadata !DIExpression()), !dbg !5549
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #16, !dbg !5550
  br label %3, !dbg !5551

3:                                                ; preds = %1, %3
  br label %3, !dbg !5551, !llvm.loop !5552
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5558, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.value(metadata i32 %1, metadata !5559, metadata !DIExpression()), !dbg !5560
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.27, i32 0, i32 0), i32 noundef %1) #16, !dbg !5561
  ret i32 -1, !dbg !5562
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5563 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.28, i32 0, i32 0)) #16, !dbg !5568
  ret i32 0, !dbg !5569
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

!llvm.dbg.cu = !{!2, !861, !870, !951, !996, !200, !215, !1030, !235, !318, !1032, !420, !530, !577, !835, !846}
!llvm.ident = !{!1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072, !1072}
!llvm.module.flags = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DMA_LISR_FUNC", scope: !2, file: !3, line: 56, type: !197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/dma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!4 = !{!5, !34, !41, !46, !51, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!47 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!50 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !52, line: 47, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!201 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!216 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!217 = !{!218, !97}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !219, line: 71, baseType: !7, size: 32, elements: !220)
!219 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!236 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!237 = !{!238, !249, !268, !275}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 163, baseType: !53, size: 32, elements: !240)
!239 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!276 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!287 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!319 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!320 = !{!321, !51}
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 152, baseType: !53, size: 32, elements: !323)
!322 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!335 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!419 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !420, file: !421, line: 77, type: !486, isLocal: true, isDefinition: true)
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !422, retainedTypes: !473, globals: !475, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!422 = !{!423, !431, !437, !453, !459, !463, !218, !97, !468}
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 345, baseType: !53, size: 32, elements: !425)
!424 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!425 = !{!426, !427, !428, !429, !430}
!426 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!427 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!428 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!429 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!430 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !432, line: 109, baseType: !7, size: 32, elements: !433)
!432 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!433 = !{!434, !435, !436}
!434 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!435 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!436 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 302, baseType: !7, size: 32, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!439 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!440 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!441 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!442 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!443 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!444 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!445 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!446 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!447 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!448 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!449 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!450 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!451 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!452 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!453 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 321, baseType: !7, size: 32, elements: !454)
!454 = !{!455, !456, !457, !458}
!455 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!456 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!457 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!458 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 330, baseType: !7, size: 32, elements: !460)
!460 = !{!461, !462}
!461 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!462 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 337, baseType: !7, size: 32, elements: !464)
!464 = !{!465, !466, !467}
!465 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!466 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!467 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 355, baseType: !53, size: 32, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!471 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!472 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!473 = !{!7, !161, !132, !474, !128}
!474 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!475 = !{!418, !476}
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "func_tbl", scope: !478, file: !421, line: 536, type: !484, isLocal: true, isDefinition: true)
!478 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !421, file: !421, line: 534, type: !479, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !482)
!479 = !DISubroutineType(types: !480)
!480 = !{!179, !481}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !432, line: 113, baseType: !431)
!482 = !{!483}
!483 = !DILocalVariable(name: "uart_port", arg: 1, scope: !478, file: !421, line: 534, type: !481)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 64, elements: !391)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 1024, elements: !391)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !421, line: 75, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 68, size: 512, elements: !489)
!489 = !{!490, !491, !503, !504, !515, !516}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !488, file: !421, line: 69, baseType: !126, size: 8)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !488, file: !421, line: 70, baseType: !492, size: 128, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !424, line: 378, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 373, size: 128, elements: !494)
!494 = !{!495, !497, !499, !501}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !493, file: !424, line: 374, baseType: !496, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !424, line: 317, baseType: !437)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !493, file: !424, line: 375, baseType: !498, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !424, line: 326, baseType: !453)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !493, file: !424, line: 376, baseType: !500, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !424, line: 333, baseType: !459)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !493, file: !424, line: 377, baseType: !502, size: 32, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !424, line: 341, baseType: !463)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !488, file: !421, line: 71, baseType: !126, size: 8, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !488, file: !421, line: 72, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !421, line: 66, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 63, size: 64, elements: !507)
!507 = !{!508, !514}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !506, file: !421, line: 64, baseType: !509, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !424, line: 410, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 32)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513, !161}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !424, line: 359, baseType: !468)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !506, file: !421, line: 65, baseType: !161, size: 32, offset: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !488, file: !421, line: 73, baseType: !126, size: 8, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !488, file: !421, line: 74, baseType: !517, size: 224, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !424, line: 390, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 382, size: 224, elements: !519)
!519 = !{!520, !522, !523, !524, !525, !526, !527}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !518, file: !424, line: 383, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !518, file: !424, line: 384, baseType: !136, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !518, file: !424, line: 385, baseType: !136, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !518, file: !424, line: 386, baseType: !521, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !518, file: !424, line: 387, baseType: !136, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !518, file: !424, line: 388, baseType: !136, size: 32, offset: 160)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !518, file: !424, line: 389, baseType: !136, size: 32, offset: 192)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "g_uart_receive_buffer", scope: !530, file: !531, line: 57, type: !570, isLocal: true, isDefinition: true)
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !564, globals: !567, splitDebugInlining: false, nameTableKind: None)
!531 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!532 = !{!437, !453, !459, !463, !533, !431, !468}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !432, line: 249, baseType: !7, size: 32, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!535 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!536 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!537 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!538 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!539 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!540 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!541 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!542 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!543 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!544 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!545 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!546 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!547 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!548 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!549 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!550 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!551 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!552 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!553 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!554 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!555 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!556 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!557 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!558 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!559 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!560 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!561 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!562 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!563 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!564 = !{!161, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!567 = !{!528, !568, !573}
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "g_uart_send_buffer", scope: !530, file: !531, line: 56, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 256)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "g_uart_receive_event", scope: !530, file: !531, line: 58, type: !315, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !577, file: !578, line: 59, type: !136, isLocal: false, isDefinition: true)
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !579, globals: !632, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!579 = !{!580, !588, !613}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !335, line: 656, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 650, size: 128, elements: !583)
!583 = !{!584, !585, !586, !587}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !582, file: !335, line: 652, baseType: !207, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !582, file: !335, line: 653, baseType: !207, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !582, file: !335, line: 654, baseType: !207, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !582, file: !335, line: 655, baseType: !372, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !335, line: 418, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 395, size: 1120, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !590, file: !335, line: 397, baseType: !372, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !590, file: !335, line: 398, baseType: !207, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !590, file: !335, line: 399, baseType: !207, size: 32, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !590, file: !335, line: 400, baseType: !207, size: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !590, file: !335, line: 401, baseType: !207, size: 32, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !590, file: !335, line: 402, baseType: !207, size: 32, offset: 160)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !590, file: !335, line: 403, baseType: !379, size: 96, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !590, file: !335, line: 404, baseType: !207, size: 32, offset: 288)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !590, file: !335, line: 405, baseType: !207, size: 32, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !590, file: !335, line: 406, baseType: !207, size: 32, offset: 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !590, file: !335, line: 407, baseType: !207, size: 32, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !590, file: !335, line: 408, baseType: !207, size: 32, offset: 416)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !590, file: !335, line: 409, baseType: !207, size: 32, offset: 448)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !590, file: !335, line: 410, baseType: !207, size: 32, offset: 480)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !590, file: !335, line: 411, baseType: !390, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !590, file: !335, line: 412, baseType: !372, size: 32, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !590, file: !335, line: 413, baseType: !372, size: 32, offset: 608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !590, file: !335, line: 414, baseType: !396, size: 128, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !590, file: !335, line: 415, baseType: !400, size: 160, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !590, file: !335, line: 416, baseType: !404, size: 160, offset: 928)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !590, file: !335, line: 417, baseType: !207, size: 32, offset: 1088)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !287, line: 72, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 56, size: 525312, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !615, file: !287, line: 57, baseType: !207, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !615, file: !287, line: 58, baseType: !207, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !615, file: !287, line: 59, baseType: !207, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !615, file: !287, line: 60, baseType: !207, size: 32, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !615, file: !287, line: 61, baseType: !207, size: 32, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !615, file: !287, line: 62, baseType: !207, size: 32, offset: 160)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !615, file: !287, line: 63, baseType: !207, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !615, file: !287, line: 64, baseType: !207, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !615, file: !287, line: 65, baseType: !207, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !615, file: !287, line: 66, baseType: !207, size: 32, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !615, file: !287, line: 67, baseType: !301, size: 32, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !615, file: !287, line: 68, baseType: !207, size: 32, offset: 352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !615, file: !287, line: 69, baseType: !306, size: 523904, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !615, file: !287, line: 70, baseType: !310, size: 512, offset: 524288)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !615, file: !287, line: 71, baseType: !310, size: 512, offset: 524800)
!632 = !{!575, !633}
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !577, file: !578, line: 61, type: !207, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "heap_end", scope: !637, file: !638, line: 66, type: !643, isLocal: true, isDefinition: true)
!637 = distinct !DISubprogram(name: "_sbrk_r", scope: !638, file: !638, line: 63, type: !639, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !839)
!638 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!639 = !DISubroutineType(types: !640)
!640 = !{!641, !644, !834}
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !642, line: 123, baseType: !643)
!642 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 32)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !646, line: 377, size: 1920, elements: !647)
!646 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!647 = !{!648, !649, !723, !724, !725, !726, !727, !728, !729, !732, !753, !757, !758, !759, !760, !770, !783, !784, !789, !808, !809, !816, !817, !833}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !645, file: !646, line: 381, baseType: !53, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !645, file: !646, line: 386, baseType: !650, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !646, line: 292, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !646, line: 186, size: 832, elements: !653)
!653 = !{!654, !656, !657, !658, !660, !661, !666, !667, !668, !669, !673, !679, !686, !690, !691, !692, !693, !697, !699, !700, !701, !703, !709, !722}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !652, file: !646, line: 187, baseType: !655, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !652, file: !646, line: 188, baseType: !53, size: 32, offset: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !652, file: !646, line: 189, baseType: !53, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !652, file: !646, line: 190, baseType: !659, size: 16, offset: 96)
!659 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !652, file: !646, line: 191, baseType: !659, size: 16, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !652, file: !646, line: 192, baseType: !662, size: 64, offset: 128)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !646, line: 122, size: 64, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !662, file: !646, line: 123, baseType: !655, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !662, file: !646, line: 124, baseType: !53, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !652, file: !646, line: 193, baseType: !53, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !652, file: !646, line: 196, baseType: !644, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !652, file: !646, line: 200, baseType: !161, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !652, file: !646, line: 202, baseType: !670, size: 32, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 32)
!671 = !DISubroutineType(types: !672)
!672 = !{!53, !644, !161, !643, !53}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !652, file: !646, line: 204, baseType: !674, size: 32, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 32)
!675 = !DISubroutineType(types: !676)
!676 = !{!53, !644, !161, !677, !53}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !652, file: !646, line: 207, baseType: !680, size: 32, offset: 352)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 32)
!681 = !DISubroutineType(types: !682)
!682 = !{!683, !644, !161, !683, !53}
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !684, line: 116, baseType: !685)
!684 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!685 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !652, file: !646, line: 208, baseType: !687, size: 32, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 32)
!688 = !DISubroutineType(types: !689)
!689 = !{!53, !644, !161}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !652, file: !646, line: 211, baseType: !662, size: 64, offset: 416)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !652, file: !646, line: 212, baseType: !655, size: 32, offset: 480)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !652, file: !646, line: 213, baseType: !53, size: 32, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !652, file: !646, line: 216, baseType: !694, size: 24, offset: 544)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 24, elements: !695)
!695 = !{!696}
!696 = !DISubrange(count: 3)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !652, file: !646, line: 217, baseType: !698, size: 8, offset: 568)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 8, elements: !302)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !652, file: !646, line: 220, baseType: !662, size: 64, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !652, file: !646, line: 223, baseType: !53, size: 32, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !652, file: !646, line: 224, baseType: !702, size: 32, offset: 672)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !684, line: 46, baseType: !685)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !652, file: !646, line: 231, baseType: !704, size: 32, offset: 704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !646, line: 35, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !706, line: 34, baseType: !707)
!706 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 32)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !706, line: 33, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !652, file: !646, line: 233, baseType: !710, size: 64, offset: 736)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !684, line: 170, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !684, line: 162, size: 64, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !711, file: !684, line: 164, baseType: !53, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !711, file: !684, line: 169, baseType: !715, size: 32, offset: 32)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !684, line: 165, size: 32, elements: !716)
!716 = !{!717, !720}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !715, file: !684, line: 167, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !719, line: 116, baseType: !53)
!719 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !715, file: !684, line: 168, baseType: !721, size: 32)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !397)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !652, file: !646, line: 234, baseType: !53, size: 32, offset: 800)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !645, file: !646, line: 386, baseType: !650, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !645, file: !646, line: 386, baseType: !650, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !645, file: !646, line: 388, baseType: !53, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !645, file: !646, line: 390, baseType: !643, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !645, file: !646, line: 392, baseType: !53, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !645, file: !646, line: 394, baseType: !53, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !645, file: !646, line: 395, baseType: !730, size: 32, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 32)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !646, line: 45, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !645, file: !646, line: 397, baseType: !733, size: 32, offset: 288)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 32)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !646, line: 349, size: 128, elements: !735)
!735 = !{!736, !749, !750, !751}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !734, file: !646, line: 352, baseType: !737, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 32)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !646, line: 52, size: 192, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !738, file: !646, line: 54, baseType: !737, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !738, file: !646, line: 55, baseType: !53, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !738, file: !646, line: 55, baseType: !53, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !738, file: !646, line: 55, baseType: !53, size: 32, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !738, file: !646, line: 55, baseType: !53, size: 32, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !738, file: !646, line: 56, baseType: !746, size: 32, offset: 160)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 32, elements: !302)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !646, line: 22, baseType: !748)
!748 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !734, file: !646, line: 353, baseType: !53, size: 32, offset: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !734, file: !646, line: 354, baseType: !737, size: 32, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !734, file: !646, line: 355, baseType: !752, size: 32, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !645, file: !646, line: 399, baseType: !754, size: 32, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !644}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !645, file: !646, line: 401, baseType: !53, size: 32, offset: 352)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !645, file: !646, line: 404, baseType: !53, size: 32, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !645, file: !646, line: 405, baseType: !643, size: 32, offset: 416)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !645, file: !646, line: 407, baseType: !761, size: 32, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 32)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !646, line: 324, size: 192, elements: !763)
!763 = !{!764, !766, !767, !768}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !762, file: !646, line: 325, baseType: !765, size: 48)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !695)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !762, file: !646, line: 326, baseType: !765, size: 48, offset: 48)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !762, file: !646, line: 327, baseType: !228, size: 16, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !762, file: !646, line: 330, baseType: !769, size: 64, offset: 128)
!769 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !645, file: !646, line: 408, baseType: !771, size: 32, offset: 480)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 32)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !646, line: 60, size: 288, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !772, file: !646, line: 62, baseType: !53, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !772, file: !646, line: 63, baseType: !53, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !772, file: !646, line: 64, baseType: !53, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !772, file: !646, line: 65, baseType: !53, size: 32, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !772, file: !646, line: 66, baseType: !53, size: 32, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !772, file: !646, line: 67, baseType: !53, size: 32, offset: 160)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !772, file: !646, line: 68, baseType: !53, size: 32, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !772, file: !646, line: 69, baseType: !53, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !772, file: !646, line: 70, baseType: !53, size: 32, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !645, file: !646, line: 409, baseType: !643, size: 32, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !645, file: !646, line: 412, baseType: !785, size: 32, offset: 544)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 32)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !53}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !645, file: !646, line: 416, baseType: !790, size: 32, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !646, line: 90, size: 1120, elements: !792)
!792 = !{!793, !794, !795, !799}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !791, file: !646, line: 91, baseType: !790, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !791, file: !646, line: 92, baseType: !53, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !791, file: !646, line: 93, baseType: !796, size: 1024, offset: 64)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !791, file: !646, line: 94, baseType: !800, size: 32, offset: 1088)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 32)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !646, line: 79, size: 2112, elements: !802)
!802 = !{!803, !805, !806, !807}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !801, file: !646, line: 80, baseType: !804, size: 1024)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !797)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !801, file: !646, line: 81, baseType: !804, size: 1024, offset: 1024)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !801, file: !646, line: 83, baseType: !747, size: 32, offset: 2048)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !801, file: !646, line: 86, baseType: !747, size: 32, offset: 2080)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !645, file: !646, line: 417, baseType: !791, size: 1120, offset: 608)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !645, file: !646, line: 420, baseType: !810, size: 96, offset: 1728)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !646, line: 296, size: 96, elements: !811)
!811 = !{!812, !814, !815}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !810, file: !646, line: 298, baseType: !813, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !810, file: !646, line: 299, baseType: !53, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !810, file: !646, line: 300, baseType: !650, size: 32, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !645, file: !646, line: 421, baseType: !650, size: 32, offset: 1824)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !645, file: !646, line: 422, baseType: !818, size: 32, offset: 1856)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 32)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !646, line: 359, size: 640, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !827, !828, !829, !830, !831, !832}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !819, file: !646, line: 362, baseType: !643, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !819, file: !646, line: 363, baseType: !710, size: 64, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !819, file: !646, line: 364, baseType: !710, size: 64, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !819, file: !646, line: 365, baseType: !710, size: 64, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !819, file: !646, line: 366, baseType: !826, size: 64, offset: 224)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 64, elements: !340)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !819, file: !646, line: 367, baseType: !53, size: 32, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !819, file: !646, line: 368, baseType: !710, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !819, file: !646, line: 369, baseType: !710, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !819, file: !646, line: 370, baseType: !710, size: 64, offset: 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !819, file: !646, line: 371, baseType: !710, size: 64, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !819, file: !646, line: 372, baseType: !710, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !645, file: !646, line: 423, baseType: !643, size: 32, offset: 1888)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !719, line: 46, baseType: !7)
!835 = distinct !DICompileUnit(language: DW_LANG_C99, file: !836, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !837, globals: !838, splitDebugInlining: false, nameTableKind: None)
!836 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!837 = !{!643, !641}
!838 = !{!635}
!839 = !{!840, !841, !842, !843}
!840 = !DILocalVariable(name: "r", arg: 1, scope: !637, file: !638, line: 63, type: !644)
!841 = !DILocalVariable(name: "nbytes", arg: 2, scope: !637, file: !638, line: 63, type: !834)
!842 = !DILocalVariable(name: "prev_heap_end", scope: !637, file: !638, line: 67, type: !643)
!843 = !DILocalVariable(name: "stack", scope: !637, file: !638, line: 68, type: !643)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !846, file: !851, line: 4, type: !858, isLocal: false, isDefinition: true)
!846 = distinct !DICompileUnit(language: DW_LANG_C99, file: !847, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !848, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!848 = !{!844, !849, !853}
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !846, file: !851, line: 5, type: !852, isLocal: false, isDefinition: true)
!851 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 88, elements: !190)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !846, file: !851, line: 6, type: !855, isLocal: false, isDefinition: true)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 120, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 15)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 248, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 31)
!861 = distinct !DICompileUnit(language: DW_LANG_C99, file: !862, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !863, retainedTypes: !869, splitDebugInlining: false, nameTableKind: None)
!862 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!863 = !{!864}
!864 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !865, line: 1209, baseType: !7, size: 32, elements: !866)
!865 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!866 = !{!867, !868}
!867 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!868 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!869 = !{!115, !114}
!870 = distinct !DICompileUnit(language: DW_LANG_C99, file: !871, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !872, retainedTypes: !950, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!872 = !{!873}
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !874, line: 150, baseType: !7, size: 32, elements: !875)
!874 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949}
!876 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!877 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!878 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!879 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!880 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!881 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!882 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!883 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!884 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!885 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!886 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!887 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!888 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!889 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!890 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!891 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!892 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!893 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!894 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!895 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!896 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!897 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!898 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!899 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!900 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!901 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!902 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!903 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!904 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!905 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!906 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!907 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!908 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!909 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!910 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!911 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!912 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!913 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!914 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!915 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!916 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!917 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!918 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!919 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!920 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!921 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!922 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!923 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!924 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!925 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!926 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!927 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!928 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!929 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!930 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!931 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!932 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!933 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!934 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!935 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!936 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!937 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!938 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!939 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!940 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!941 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!942 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!943 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!944 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!945 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!946 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!947 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!948 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!949 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!950 = !{!115, !205}
!951 = distinct !DICompileUnit(language: DW_LANG_C99, file: !952, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !953, splitDebugInlining: false, nameTableKind: None)
!952 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!953 = !{!954, !979}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !335, line: 418, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 395, size: 1120, elements: !957)
!957 = !{!958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !956, file: !335, line: 397, baseType: !372, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !956, file: !335, line: 398, baseType: !207, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !956, file: !335, line: 399, baseType: !207, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !956, file: !335, line: 400, baseType: !207, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !956, file: !335, line: 401, baseType: !207, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !956, file: !335, line: 402, baseType: !207, size: 32, offset: 160)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !956, file: !335, line: 403, baseType: !379, size: 96, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !956, file: !335, line: 404, baseType: !207, size: 32, offset: 288)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !956, file: !335, line: 405, baseType: !207, size: 32, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !956, file: !335, line: 406, baseType: !207, size: 32, offset: 352)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !956, file: !335, line: 407, baseType: !207, size: 32, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !956, file: !335, line: 408, baseType: !207, size: 32, offset: 416)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !956, file: !335, line: 409, baseType: !207, size: 32, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !956, file: !335, line: 410, baseType: !207, size: 32, offset: 480)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !956, file: !335, line: 411, baseType: !390, size: 64, offset: 512)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !956, file: !335, line: 412, baseType: !372, size: 32, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !956, file: !335, line: 413, baseType: !372, size: 32, offset: 608)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !956, file: !335, line: 414, baseType: !396, size: 128, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !956, file: !335, line: 415, baseType: !400, size: 160, offset: 768)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !956, file: !335, line: 416, baseType: !404, size: 160, offset: 928)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !956, file: !335, line: 417, baseType: !207, size: 32, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !335, line: 378, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 363, size: 28704, elements: !982)
!982 = !{!983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !981, file: !335, line: 365, baseType: !339, size: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !981, file: !335, line: 366, baseType: !343, size: 768, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !981, file: !335, line: 367, baseType: !339, size: 256, offset: 1024)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !981, file: !335, line: 368, baseType: !343, size: 768, offset: 1280)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !981, file: !335, line: 369, baseType: !339, size: 256, offset: 2048)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !981, file: !335, line: 370, baseType: !343, size: 768, offset: 2304)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !981, file: !335, line: 371, baseType: !339, size: 256, offset: 3072)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !981, file: !335, line: 372, baseType: !343, size: 768, offset: 3328)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !981, file: !335, line: 373, baseType: !339, size: 256, offset: 4096)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !981, file: !335, line: 374, baseType: !354, size: 1792, offset: 4352)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !981, file: !335, line: 375, baseType: !358, size: 1920, offset: 6144)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !981, file: !335, line: 376, baseType: !363, size: 20608, offset: 8064)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !981, file: !335, line: 377, baseType: !207, size: 32, offset: 28672)
!996 = distinct !DICompileUnit(language: DW_LANG_C99, file: !997, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !998, splitDebugInlining: false, nameTableKind: None)
!997 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!998 = !{!999, !873}
!999 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1000, line: 55, baseType: !7, size: 32, elements: !1001)
!1000 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1002 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1003 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1004 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1005 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1006 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1007 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1008 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1009 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1010 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1011 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1012 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1013 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1014 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1015 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1016 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1017 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1018 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1019 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1020 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1021 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1022 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1023 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1024 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1025 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1026 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1027 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1028 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1029 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1031, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1032 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1033, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1034, retainedTypes: !1067, splitDebugInlining: false, nameTableKind: None)
!1033 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1034 = !{!1035, !533, !999, !1042, !1048, !1052, !1056, !1062}
!1035 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1036, line: 233, baseType: !53, size: 32, elements: !1037)
!1036 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1037 = !{!1038, !1039, !1040, !1041}
!1038 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1039 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1040 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1041 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1042 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1036, line: 224, baseType: !53, size: 32, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047}
!1044 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1045 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1046 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1047 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1048 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1036, line: 217, baseType: !7, size: 32, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1051 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1052 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1036, line: 210, baseType: !7, size: 32, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1055 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1056 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1036, line: 242, baseType: !7, size: 32, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1059 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1060 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1061 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1062 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1063, line: 57, baseType: !7, size: 32, elements: !1064)
!1063 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1064 = !{!1065, !1066}
!1065 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1066 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1067 = !{!1068, !161, !1069, !128, !1070, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1000, line: 87, baseType: !999)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1036, line: 220, baseType: !1048)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1036, line: 247, baseType: !1056)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1063, line: 60, baseType: !1062)
!1072 = !{!"Ubuntu clang version 14.0.6"}
!1073 = !{i32 7, !"Dwarf Version", i32 2}
!1074 = !{i32 2, !"Debug Info Version", i32 3}
!1075 = !{i32 1, !"wchar_size", i32 4}
!1076 = !{i32 1, !"min_enum_size", i32 4}
!1077 = !{i32 1, !"branch-target-enforcement", i32 0}
!1078 = !{i32 1, !"sign-return-address", i32 0}
!1079 = !{i32 1, !"sign-return-address-all", i32 0}
!1080 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1081 = !{i32 7, !"frame-pointer", i32 2}
!1082 = distinct !DISubprogram(name: "DMA_ERROR_LISR", scope: !3, file: !3, line: 509, type: !181, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1083 = !{}
!1084 = !DILocation(line: 511, column: 5, scope: !1082)
!1085 = distinct !{!1085, !1084, !1086}
!1086 = !DILocation(line: 511, column: 14, scope: !1082)
!1087 = distinct !DISubprogram(name: "DMA_Stop", scope: !3, file: !3, line: 73, type: !1088, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !128}
!1090 = !{!1091}
!1091 = !DILocalVariable(name: "channel", arg: 1, scope: !1087, file: !3, line: 73, type: !128)
!1092 = !DILocation(line: 0, scope: !1087)
!1093 = !DILocation(line: 75, column: 5, scope: !1087)
!1094 = !DILocation(line: 76, column: 5, scope: !1087)
!1095 = !DILocation(line: 77, column: 1, scope: !1087)
!1096 = distinct !DISubprogram(name: "DMA_Run", scope: !3, file: !3, line: 79, type: !1088, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1097)
!1097 = !{!1098}
!1098 = !DILocalVariable(name: "channel", arg: 1, scope: !1096, file: !3, line: 79, type: !128)
!1099 = !DILocation(line: 0, scope: !1096)
!1100 = !DILocation(line: 81, column: 5, scope: !1096)
!1101 = !DILocation(line: 82, column: 5, scope: !1096)
!1102 = !DILocation(line: 83, column: 1, scope: !1096)
!1103 = distinct !DISubprogram(name: "DMA_GetChannel", scope: !3, file: !3, line: 86, type: !1104, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!128, !134}
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1103, file: !3, line: 86, type: !134)
!1108 = !DILocalVariable(name: "index", scope: !1103, file: !3, line: 88, type: !174)
!1109 = !DILocalVariable(name: "handle", scope: !1103, file: !3, line: 89, type: !174)
!1110 = !DILocalVariable(name: "flags", scope: !1103, file: !3, line: 90, type: !748)
!1111 = !DILocation(line: 0, scope: !1103)
!1112 = !DILocation(line: 470, column: 3, scope: !1113, inlinedAt: !1119)
!1113 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1114, file: !1114, line: 466, type: !1115, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1117)
!1114 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!136}
!1117 = !{!1118}
!1118 = !DILocalVariable(name: "result", scope: !1113, file: !1114, line: 468, type: !136)
!1119 = distinct !DILocation(line: 93, column: 5, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 93, column: 5)
!1121 = !{i64 316310}
!1122 = !DILocation(line: 0, scope: !1113, inlinedAt: !1119)
!1123 = !DILocation(line: 330, column: 3, scope: !1124, inlinedAt: !1125)
!1124 = distinct !DISubprogram(name: "__disable_irq", scope: !1114, file: !1114, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1125 = distinct !DILocation(line: 93, column: 5, scope: !1120)
!1126 = !{i64 312974}
!1127 = !DILocation(line: 95, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 95, column: 5)
!1129 = !DILocation(line: 96, column: 41, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 96, column: 13)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 95, column: 79)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 95, column: 5)
!1133 = !DILocation(line: 96, column: 33, scope: !1130)
!1134 = !DILocation(line: 96, column: 52, scope: !1130)
!1135 = !DILocation(line: 96, column: 13, scope: !1131)
!1136 = !DILocation(line: 100, column: 35, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 96, column: 58)
!1138 = !DILocation(line: 100, column: 32, scope: !1137)
!1139 = !DILocation(line: 102, column: 13, scope: !1137)
!1140 = !DILocation(line: 95, column: 75, scope: !1132)
!1141 = !DILocation(line: 95, column: 50, scope: !1132)
!1142 = distinct !{!1142, !1127, !1143}
!1143 = !DILocation(line: 104, column: 5, scope: !1128)
!1144 = !DILocalVariable(name: "priMask", arg: 1, scope: !1145, file: !1114, line: 481, type: !136)
!1145 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1114, file: !1114, line: 481, type: !1146, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !136}
!1148 = !{!1144}
!1149 = !DILocation(line: 0, scope: !1145, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 105, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 105, column: 5)
!1152 = !DILocation(line: 483, column: 3, scope: !1145, inlinedAt: !1150)
!1153 = !{i64 316628}
!1154 = !DILocation(line: 109, column: 15, scope: !1103)
!1155 = !DILocation(line: 109, column: 22, scope: !1103)
!1156 = !DILocation(line: 109, column: 5, scope: !1103)
!1157 = !DILocation(line: 109, column: 27, scope: !1103)
!1158 = !DILocation(line: 111, column: 5, scope: !1103)
!1159 = distinct !DISubprogram(name: "DMA_FreeChannel", scope: !3, file: !3, line: 114, type: !1088, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161, !1162}
!1161 = !DILocalVariable(name: "handle", arg: 1, scope: !1159, file: !3, line: 114, type: !128)
!1162 = !DILocalVariable(name: "flags", scope: !1159, file: !3, line: 116, type: !748)
!1163 = !DILocation(line: 0, scope: !1159)
!1164 = !DILocation(line: 470, column: 3, scope: !1113, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 118, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 118, column: 5)
!1167 = !DILocation(line: 0, scope: !1113, inlinedAt: !1165)
!1168 = !DILocation(line: 330, column: 3, scope: !1124, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 118, column: 5, scope: !1166)
!1170 = !DILocation(line: 121, column: 36, scope: !1159)
!1171 = !DILocation(line: 121, column: 33, scope: !1159)
!1172 = !DILocation(line: 121, column: 24, scope: !1159)
!1173 = !DILocation(line: 123, column: 5, scope: !1159)
!1174 = !DILocation(line: 125, column: 22, scope: !1159)
!1175 = !DILocation(line: 125, column: 5, scope: !1159)
!1176 = !DILocation(line: 125, column: 27, scope: !1159)
!1177 = !DILocation(line: 0, scope: !1145, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 127, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 127, column: 5)
!1180 = !DILocation(line: 483, column: 3, scope: !1145, inlinedAt: !1178)
!1181 = !DILocation(line: 129, column: 1, scope: !1159)
!1182 = distinct !DISubprogram(name: "DMA_FullSize_CheckIdleChannel", scope: !3, file: !3, line: 131, type: !1183, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!128, !134, !128}
!1185 = !{!1186, !1187, !1188, !1189, !1190}
!1186 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1182, file: !3, line: 131, type: !134)
!1187 = !DILocalVariable(name: "channel", arg: 2, scope: !1182, file: !3, line: 131, type: !128)
!1188 = !DILocalVariable(name: "index", scope: !1182, file: !3, line: 133, type: !174)
!1189 = !DILocalVariable(name: "handle", scope: !1182, file: !3, line: 134, type: !174)
!1190 = !DILocalVariable(name: "flags", scope: !1182, file: !3, line: 135, type: !748)
!1191 = !DILocation(line: 0, scope: !1182)
!1192 = !DILocation(line: 470, column: 3, scope: !1113, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 137, column: 5, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 137, column: 5)
!1195 = !DILocation(line: 0, scope: !1113, inlinedAt: !1193)
!1196 = !DILocation(line: 330, column: 3, scope: !1124, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 137, column: 5, scope: !1194)
!1198 = !DILocation(line: 139, column: 21, scope: !1182)
!1199 = !DILocation(line: 140, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 140, column: 9)
!1201 = !DILocation(line: 140, column: 9, scope: !1182)
!1202 = !DILocation(line: 140, column: 9, scope: !1200)
!1203 = !DILocation(line: 144, column: 10, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 144, column: 9)
!1205 = !DILocation(line: 144, column: 37, scope: !1204)
!1206 = !DILocation(line: 144, column: 29, scope: !1204)
!1207 = !DILocation(line: 144, column: 48, scope: !1204)
!1208 = !DILocation(line: 144, column: 9, scope: !1182)
!1209 = !DILocation(line: 148, column: 31, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 144, column: 54)
!1211 = !DILocation(line: 148, column: 28, scope: !1210)
!1212 = !DILocation(line: 150, column: 5, scope: !1210)
!1213 = !DILocation(line: 0, scope: !1145, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 153, column: 5, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 153, column: 5)
!1216 = !DILocation(line: 483, column: 3, scope: !1145, inlinedAt: !1214)
!1217 = !DILocation(line: 156, column: 15, scope: !1182)
!1218 = !DILocation(line: 156, column: 22, scope: !1182)
!1219 = !DILocation(line: 156, column: 5, scope: !1182)
!1220 = !DILocation(line: 156, column: 27, scope: !1182)
!1221 = !DILocation(line: 157, column: 5, scope: !1182)
!1222 = !DILocation(line: 158, column: 1, scope: !1182)
!1223 = distinct !DISubprogram(name: "DMA_FullSize_FreeChannel", scope: !3, file: !3, line: 160, type: !1088, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1224)
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "handle", arg: 1, scope: !1223, file: !3, line: 160, type: !128)
!1226 = !DILocalVariable(name: "flags", scope: !1223, file: !3, line: 162, type: !748)
!1227 = !DILocation(line: 0, scope: !1223)
!1228 = !DILocation(line: 470, column: 3, scope: !1113, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 164, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 164, column: 5)
!1231 = !DILocation(line: 0, scope: !1113, inlinedAt: !1229)
!1232 = !DILocation(line: 330, column: 3, scope: !1124, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 164, column: 5, scope: !1230)
!1234 = !DILocation(line: 165, column: 36, scope: !1223)
!1235 = !DILocation(line: 165, column: 33, scope: !1223)
!1236 = !DILocation(line: 165, column: 24, scope: !1223)
!1237 = !DILocation(line: 167, column: 5, scope: !1223)
!1238 = !DILocation(line: 169, column: 22, scope: !1223)
!1239 = !DILocation(line: 169, column: 5, scope: !1223)
!1240 = !DILocation(line: 169, column: 27, scope: !1223)
!1241 = !DILocation(line: 0, scope: !1145, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 171, column: 5, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 171, column: 5)
!1244 = !DILocation(line: 483, column: 3, scope: !1145, inlinedAt: !1242)
!1245 = !DILocation(line: 173, column: 1, scope: !1223)
!1246 = distinct !DISubprogram(name: "DMA_Config_Internal", scope: !3, file: !3, line: 175, type: !1247, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1260)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !128, !1249, !126, !126, !128, !126}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !1252)
!1252 = !{!1253, !1255, !1257, !1258, !1259}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1251, file: !6, line: 190, baseType: !1254, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Type", file: !6, line: 122, baseType: !34)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1251, file: !6, line: 191, baseType: !1256, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TranSize", file: !6, line: 114, baseType: !41)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1251, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !1251, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1251, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1261 = !DILocalVariable(name: "dma_no", arg: 1, scope: !1246, file: !3, line: 175, type: !128)
!1262 = !DILocalVariable(name: "dma_menu", arg: 2, scope: !1246, file: !3, line: 176, type: !1249)
!1263 = !DILocalVariable(name: "fullsize", arg: 3, scope: !1246, file: !3, line: 177, type: !126)
!1264 = !DILocalVariable(name: "b2w", arg: 4, scope: !1246, file: !3, line: 178, type: !126)
!1265 = !DILocalVariable(name: "limit", arg: 5, scope: !1246, file: !3, line: 178, type: !128)
!1266 = !DILocalVariable(name: "start", arg: 6, scope: !1246, file: !3, line: 179, type: !126)
!1267 = !DILocalVariable(name: "dma_con", scope: !1246, file: !3, line: 181, type: !114)
!1268 = !DILocalVariable(name: "temp", scope: !1246, file: !3, line: 182, type: !114)
!1269 = !DILocation(line: 0, scope: !1246)
!1270 = !DILocation(line: 184, column: 5, scope: !1246)
!1271 = !DILocation(line: 186, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 186, column: 9)
!1273 = !DILocation(line: 186, column: 9, scope: !1246)
!1274 = !DILocation(line: 187, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 187, column: 9)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 187, column: 9)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 186, column: 35)
!1278 = distinct !{!1278, !1274, !1274}
!1279 = !DILocation(line: 190, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 190, column: 9)
!1281 = !DILocation(line: 190, column: 9, scope: !1246)
!1282 = !DILocation(line: 191, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 191, column: 9)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 191, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 190, column: 34)
!1286 = distinct !{!1286, !1282, !1282}
!1287 = !DILocation(line: 194, column: 5, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 194, column: 5)
!1289 = !DILocation(line: 194, column: 5, scope: !1246)
!1290 = !DILocation(line: 194, column: 5, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 194, column: 5)
!1292 = distinct !{!1292, !1290, !1290}
!1293 = !DILocation(line: 196, column: 9, scope: !1246)
!1294 = !DILocation(line: 197, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 197, column: 9)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 197, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 196, column: 31)
!1298 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 196, column: 9)
!1299 = distinct !{!1299, !1294, !1294}
!1300 = !DILocation(line: 200, column: 5, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 200, column: 5)
!1302 = !DILocation(line: 200, column: 5, scope: !1246)
!1303 = !DILocation(line: 200, column: 5, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 200, column: 5)
!1305 = distinct !{!1305, !1303, !1303}
!1306 = !DILocation(line: 202, column: 5, scope: !1246)
!1307 = !DILocation(line: 204, column: 23, scope: !1246)
!1308 = !DILocation(line: 204, column: 5, scope: !1246)
!1309 = !DILocation(line: 0, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 209, column: 17)
!1311 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 204, column: 29)
!1312 = !DILocation(line: 209, column: 17, scope: !1311)
!1313 = !DILocation(line: 212, column: 71, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 211, column: 13)
!1315 = !DILocation(line: 212, column: 78, scope: !1314)
!1316 = !DILocation(line: 219, column: 42, scope: !1311)
!1317 = !DILocation(line: 224, column: 21, scope: !1311)
!1318 = !DILocation(line: 228, column: 17, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 226, column: 39)
!1320 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 226, column: 17)
!1321 = !DILocation(line: 230, column: 17, scope: !1319)
!1322 = !DILocation(line: 231, column: 13, scope: !1319)
!1323 = !DILocation(line: 216, column: 62, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 215, column: 13)
!1325 = !DILocation(line: 216, column: 69, scope: !1324)
!1326 = !DILocation(line: 236, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 231, column: 20)
!1328 = !DILocation(line: 239, column: 21, scope: !1327)
!1329 = !DILocation(line: 0, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 250, column: 17)
!1331 = !DILocation(line: 250, column: 17, scope: !1311)
!1332 = !DILocation(line: 253, column: 75, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 252, column: 13)
!1334 = !DILocation(line: 253, column: 82, scope: !1333)
!1335 = !DILocation(line: 263, column: 21, scope: !1311)
!1336 = !DILocation(line: 267, column: 17, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 265, column: 39)
!1338 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 265, column: 17)
!1339 = !DILocation(line: 269, column: 17, scope: !1337)
!1340 = !DILocation(line: 270, column: 13, scope: !1337)
!1341 = !DILocation(line: 257, column: 66, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 256, column: 13)
!1343 = !DILocation(line: 257, column: 73, scope: !1342)
!1344 = !DILocation(line: 275, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 270, column: 20)
!1346 = !DILocation(line: 278, column: 21, scope: !1345)
!1347 = !DILocation(line: 288, column: 13, scope: !1311)
!1348 = !DILocation(line: 290, column: 13, scope: !1311)
!1349 = !DILocation(line: 294, column: 13, scope: !1311)
!1350 = !DILocation(line: 0, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 299, column: 17)
!1352 = !DILocation(line: 299, column: 17, scope: !1311)
!1353 = !DILocation(line: 302, column: 84, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 301, column: 13)
!1355 = !DILocation(line: 302, column: 91, scope: !1354)
!1356 = !DILocation(line: 314, column: 21, scope: !1311)
!1357 = !DILocation(line: 318, column: 17, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 316, column: 39)
!1359 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 316, column: 17)
!1360 = !DILocation(line: 323, column: 17, scope: !1358)
!1361 = !DILocation(line: 326, column: 17, scope: !1358)
!1362 = !DILocation(line: 328, column: 17, scope: !1358)
!1363 = !DILocation(line: 329, column: 13, scope: !1358)
!1364 = !DILocation(line: 306, column: 75, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 305, column: 13)
!1366 = !DILocation(line: 306, column: 82, scope: !1365)
!1367 = !DILocation(line: 331, column: 17, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 329, column: 20)
!1369 = !DILocation(line: 338, column: 17, scope: !1368)
!1370 = !DILocation(line: 340, column: 17, scope: !1368)
!1371 = !DILocation(line: 343, column: 21, scope: !1368)
!1372 = !DILocation(line: 0, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 354, column: 17)
!1374 = !DILocation(line: 354, column: 17, scope: !1311)
!1375 = !DILocation(line: 357, column: 84, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 356, column: 13)
!1377 = !DILocation(line: 357, column: 91, scope: !1376)
!1378 = !DILocation(line: 371, column: 21, scope: !1311)
!1379 = !DILocation(line: 375, column: 17, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 373, column: 39)
!1381 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 373, column: 17)
!1382 = !DILocation(line: 380, column: 17, scope: !1380)
!1383 = !DILocation(line: 383, column: 17, scope: !1380)
!1384 = !DILocation(line: 385, column: 17, scope: !1380)
!1385 = !DILocation(line: 386, column: 13, scope: !1380)
!1386 = !DILocation(line: 361, column: 75, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 360, column: 13)
!1388 = !DILocation(line: 361, column: 82, scope: !1387)
!1389 = !DILocation(line: 388, column: 17, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 386, column: 20)
!1391 = !DILocation(line: 395, column: 17, scope: !1390)
!1392 = !DILocation(line: 397, column: 17, scope: !1390)
!1393 = !DILocation(line: 400, column: 21, scope: !1390)
!1394 = !DILocation(line: 410, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 410, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 410, column: 13)
!1397 = distinct !{!1397, !1394, !1394}
!1398 = !DILocation(line: 0, scope: !1311)
!1399 = !DILocation(line: 415, column: 23, scope: !1246)
!1400 = !DILocation(line: 415, column: 5, scope: !1246)
!1401 = !DILocation(line: 419, column: 27, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 419, column: 17)
!1403 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 415, column: 29)
!1404 = !DILocation(line: 419, column: 32, scope: !1402)
!1405 = !DILocation(line: 419, column: 17, scope: !1403)
!1406 = !DILocation(line: 421, column: 47, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 421, column: 21)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 419, column: 47)
!1409 = !DILocation(line: 421, column: 55, scope: !1407)
!1410 = !{i8 0, i8 2}
!1411 = !DILocation(line: 421, column: 79, scope: !1407)
!1412 = !DILocation(line: 422, column: 59, scope: !1407)
!1413 = !DILocation(line: 422, column: 65, scope: !1407)
!1414 = !DILocation(line: 421, column: 21, scope: !1408)
!1415 = !DILocation(line: 425, column: 29, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 424, column: 17)
!1417 = !DILocation(line: 426, column: 17, scope: !1416)
!1418 = !DILocation(line: 429, column: 66, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 428, column: 26)
!1420 = !DILocation(line: 428, column: 26, scope: !1407)
!1421 = !DILocation(line: 432, column: 29, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 431, column: 17)
!1423 = !DILocation(line: 433, column: 17, scope: !1422)
!1424 = !DILocation(line: 436, column: 66, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 435, column: 26)
!1426 = !DILocation(line: 435, column: 26, scope: !1419)
!1427 = !DILocation(line: 447, column: 27, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 447, column: 17)
!1429 = !DILocation(line: 447, column: 32, scope: !1428)
!1430 = !DILocation(line: 447, column: 17, scope: !1403)
!1431 = !DILocation(line: 449, column: 47, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 449, column: 21)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 447, column: 47)
!1434 = !DILocation(line: 449, column: 55, scope: !1432)
!1435 = !DILocation(line: 449, column: 79, scope: !1432)
!1436 = !DILocation(line: 450, column: 59, scope: !1432)
!1437 = !DILocation(line: 450, column: 65, scope: !1432)
!1438 = !DILocation(line: 449, column: 21, scope: !1433)
!1439 = !DILocation(line: 453, column: 29, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 452, column: 17)
!1441 = !DILocation(line: 454, column: 17, scope: !1440)
!1442 = !DILocation(line: 457, column: 66, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 456, column: 26)
!1444 = !DILocation(line: 456, column: 26, scope: !1432)
!1445 = !DILocation(line: 464, column: 21, scope: !1403)
!1446 = !DILocation(line: 466, column: 13, scope: !1403)
!1447 = !DILocation(line: 470, column: 27, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 470, column: 17)
!1449 = !DILocation(line: 470, column: 32, scope: !1448)
!1450 = !DILocation(line: 470, column: 17, scope: !1403)
!1451 = !DILocation(line: 472, column: 47, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 472, column: 21)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 470, column: 47)
!1454 = !DILocation(line: 472, column: 55, scope: !1452)
!1455 = !DILocation(line: 472, column: 79, scope: !1452)
!1456 = !DILocation(line: 473, column: 59, scope: !1452)
!1457 = !DILocation(line: 473, column: 65, scope: !1452)
!1458 = !DILocation(line: 472, column: 21, scope: !1453)
!1459 = !DILocation(line: 480, column: 21, scope: !1403)
!1460 = !DILocation(line: 482, column: 13, scope: !1403)
!1461 = !DILocation(line: 486, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 486, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 486, column: 13)
!1464 = distinct !{!1464, !1461, !1461}
!1465 = !DILocation(line: 491, column: 19, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 491, column: 9)
!1467 = !DILocation(line: 491, column: 28, scope: !1466)
!1468 = !DILocation(line: 491, column: 9, scope: !1246)
!1469 = !DILocation(line: 493, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 491, column: 37)
!1471 = !DILocation(line: 495, column: 9, scope: !1470)
!1472 = !DILocation(line: 495, column: 35, scope: !1470)
!1473 = !DILocation(line: 496, column: 5, scope: !1470)
!1474 = !DILocation(line: 498, column: 5, scope: !1246)
!1475 = !DILocation(line: 500, column: 5, scope: !1246)
!1476 = !DILocation(line: 502, column: 9, scope: !1246)
!1477 = !DILocation(line: 504, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 502, column: 16)
!1479 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 502, column: 9)
!1480 = !DILocation(line: 505, column: 5, scope: !1478)
!1481 = !DILocation(line: 506, column: 1, scope: !1246)
!1482 = distinct !DISubprogram(name: "DMA_Clock_Enable", scope: !3, file: !3, line: 912, type: !1088, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1483)
!1483 = !{!1484}
!1484 = !DILocalVariable(name: "channel", arg: 1, scope: !1482, file: !3, line: 912, type: !128)
!1485 = !DILocation(line: 0, scope: !1482)
!1486 = !DILocation(line: 914, column: 59, scope: !1482)
!1487 = !DILocation(line: 914, column: 67, scope: !1482)
!1488 = !DILocation(line: 914, column: 55, scope: !1482)
!1489 = !DILocation(line: 914, column: 51, scope: !1482)
!1490 = !DILocation(line: 915, column: 1, scope: !1482)
!1491 = distinct !DISubprogram(name: "DMA_Register", scope: !3, file: !3, line: 514, type: !1492, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!53, !128, !179}
!1494 = !{!1495, !1496}
!1495 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1491, file: !3, line: 514, type: !128)
!1496 = !DILocalVariable(name: "handler", arg: 2, scope: !1491, file: !3, line: 514, type: !179)
!1497 = !DILocation(line: 0, scope: !1491)
!1498 = !DILocation(line: 516, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 516, column: 9)
!1500 = !DILocation(line: 516, column: 20, scope: !1499)
!1501 = !DILocation(line: 517, column: 9, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 516, column: 49)
!1503 = !DILocation(line: 518, column: 9, scope: !1502)
!1504 = !DILocation(line: 521, column: 26, scope: !1491)
!1505 = !DILocation(line: 521, column: 5, scope: !1491)
!1506 = !DILocation(line: 521, column: 31, scope: !1491)
!1507 = !DILocation(line: 523, column: 5, scope: !1491)
!1508 = !DILocation(line: 524, column: 1, scope: !1491)
!1509 = distinct !DISubprogram(name: "DMA_UnRegister", scope: !3, file: !3, line: 526, type: !1510, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!53, !128}
!1512 = !{!1513}
!1513 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1509, file: !3, line: 526, type: !128)
!1514 = !DILocation(line: 0, scope: !1509)
!1515 = !DILocation(line: 528, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 528, column: 9)
!1517 = !DILocation(line: 528, column: 20, scope: !1516)
!1518 = !DILocation(line: 529, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 528, column: 49)
!1520 = !DILocation(line: 530, column: 9, scope: !1519)
!1521 = !DILocation(line: 532, column: 26, scope: !1509)
!1522 = !DILocation(line: 532, column: 5, scope: !1509)
!1523 = !DILocation(line: 532, column: 31, scope: !1509)
!1524 = !DILocation(line: 533, column: 5, scope: !1509)
!1525 = !DILocation(line: 534, column: 1, scope: !1509)
!1526 = distinct !DISubprogram(name: "DMA_LISR", scope: !3, file: !3, line: 536, type: !413, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1527)
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1526, file: !3, line: 536, type: !330)
!1529 = !DILocalVariable(name: "index", scope: !1526, file: !3, line: 538, type: !174)
!1530 = !DILocalVariable(name: "con", scope: !1526, file: !3, line: 539, type: !114)
!1531 = !DILocation(line: 0, scope: !1526)
!1532 = !DILocation(line: 542, column: 5, scope: !1526)
!1533 = !DILocation(line: 545, column: 5, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 545, column: 5)
!1535 = !DILocation(line: 547, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 547, column: 13)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 545, column: 55)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 545, column: 5)
!1539 = !DILocation(line: 547, column: 46, scope: !1536)
!1540 = !DILocation(line: 547, column: 13, scope: !1537)
!1541 = !DILocation(line: 549, column: 22, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 547, column: 64)
!1543 = !DILocation(line: 549, column: 13, scope: !1542)
!1544 = !DILocation(line: 551, column: 13, scope: !1542)
!1545 = !DILocation(line: 553, column: 13, scope: !1542)
!1546 = !DILocation(line: 553, column: 20, scope: !1542)
!1547 = distinct !{!1547, !1545, !1548}
!1548 = !DILocation(line: 553, column: 48, scope: !1542)
!1549 = !DILocation(line: 554, column: 13, scope: !1542)
!1550 = !DILocation(line: 555, column: 13, scope: !1542)
!1551 = !DILocation(line: 557, column: 9, scope: !1542)
!1552 = !DILocation(line: 545, column: 27, scope: !1538)
!1553 = distinct !{!1553, !1533, !1554}
!1554 = !DILocation(line: 558, column: 5, scope: !1534)
!1555 = !DILocation(line: 562, column: 15, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 560, column: 68)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 560, column: 5)
!1558 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 560, column: 5)
!1559 = !DILocation(line: 564, column: 13, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 564, column: 13)
!1561 = !DILocation(line: 564, column: 42, scope: !1560)
!1562 = !DILocation(line: 564, column: 13, scope: !1556)
!1563 = !DILocation(line: 566, column: 25, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 564, column: 60)
!1565 = !DILocation(line: 566, column: 13, scope: !1564)
!1566 = !DILocation(line: 569, column: 25, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 569, column: 25)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 566, column: 32)
!1569 = !DILocation(line: 569, column: 78, scope: !1567)
!1570 = !DILocation(line: 569, column: 25, scope: !1568)
!1571 = !DILocation(line: 574, column: 25, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 574, column: 25)
!1573 = !DILocation(line: 574, column: 78, scope: !1572)
!1574 = !DILocation(line: 574, column: 25, scope: !1568)
!1575 = !DILocation(line: 579, column: 25, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 579, column: 25)
!1577 = !DILocation(line: 579, column: 79, scope: !1576)
!1578 = !DILocation(line: 579, column: 25, scope: !1568)
!1579 = !DILocation(line: 584, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 584, column: 25)
!1581 = !DILocation(line: 584, column: 79, scope: !1580)
!1582 = !DILocation(line: 584, column: 25, scope: !1568)
!1583 = !DILocation(line: 589, column: 25, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 589, column: 25)
!1585 = !DILocation(line: 589, column: 79, scope: !1584)
!1586 = !DILocation(line: 589, column: 25, scope: !1568)
!1587 = !DILocation(line: 594, column: 25, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 594, column: 25)
!1589 = !DILocation(line: 594, column: 79, scope: !1588)
!1590 = !DILocation(line: 594, column: 25, scope: !1568)
!1591 = !DILocation(line: 599, column: 25, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 599, column: 25)
!1593 = !DILocation(line: 599, column: 79, scope: !1592)
!1594 = !DILocation(line: 599, column: 25, scope: !1568)
!1595 = !DILocation(line: 604, column: 25, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 604, column: 25)
!1597 = !DILocation(line: 604, column: 79, scope: !1596)
!1598 = !DILocation(line: 604, column: 25, scope: !1568)
!1599 = !DILocation(line: 609, column: 25, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 609, column: 25)
!1601 = !DILocation(line: 609, column: 80, scope: !1600)
!1602 = !DILocation(line: 609, column: 25, scope: !1568)
!1603 = !DILocation(line: 614, column: 25, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 614, column: 25)
!1605 = !DILocation(line: 614, column: 80, scope: !1604)
!1606 = !DILocation(line: 614, column: 25, scope: !1568)
!1607 = !DILocation(line: 619, column: 25, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 619, column: 25)
!1609 = !DILocation(line: 619, column: 80, scope: !1608)
!1610 = !DILocation(line: 619, column: 25, scope: !1568)
!1611 = !DILocation(line: 624, column: 25, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 624, column: 25)
!1613 = !DILocation(line: 624, column: 80, scope: !1612)
!1614 = !DILocation(line: 624, column: 25, scope: !1568)
!1615 = !DILocation(line: 629, column: 25, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 629, column: 25)
!1617 = !DILocation(line: 629, column: 80, scope: !1616)
!1618 = !DILocation(line: 629, column: 25, scope: !1568)
!1619 = !DILocation(line: 634, column: 25, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 634, column: 25)
!1621 = !DILocation(line: 634, column: 78, scope: !1620)
!1622 = !DILocation(line: 634, column: 25, scope: !1568)
!1623 = !DILocation(line: 0, scope: !1568)
!1624 = !DILocation(line: 640, column: 13, scope: !1564)
!1625 = !DILocation(line: 641, column: 9, scope: !1564)
!1626 = !DILocation(line: 560, column: 64, scope: !1557)
!1627 = !DILocation(line: 560, column: 40, scope: !1557)
!1628 = !DILocation(line: 560, column: 5, scope: !1558)
!1629 = distinct !{!1629, !1628, !1630}
!1630 = !DILocation(line: 642, column: 5, scope: !1558)
!1631 = !DILocation(line: 646, column: 15, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 644, column: 68)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 644, column: 5)
!1634 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 644, column: 5)
!1635 = !DILocation(line: 648, column: 13, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 648, column: 13)
!1637 = !DILocation(line: 648, column: 42, scope: !1636)
!1638 = !DILocation(line: 648, column: 13, scope: !1632)
!1639 = !DILocation(line: 650, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 648, column: 62)
!1641 = !DILocation(line: 650, column: 13, scope: !1640)
!1642 = !DILocation(line: 653, column: 25, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 653, column: 25)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 650, column: 32)
!1645 = !DILocation(line: 653, column: 81, scope: !1643)
!1646 = !DILocation(line: 653, column: 25, scope: !1644)
!1647 = !DILocation(line: 658, column: 25, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 658, column: 25)
!1649 = !DILocation(line: 658, column: 81, scope: !1648)
!1650 = !DILocation(line: 658, column: 25, scope: !1644)
!1651 = !DILocation(line: 663, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 663, column: 25)
!1653 = !DILocation(line: 663, column: 82, scope: !1652)
!1654 = !DILocation(line: 663, column: 25, scope: !1644)
!1655 = !DILocation(line: 668, column: 25, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 668, column: 25)
!1657 = !DILocation(line: 668, column: 82, scope: !1656)
!1658 = !DILocation(line: 668, column: 25, scope: !1644)
!1659 = !DILocation(line: 673, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 673, column: 25)
!1661 = !DILocation(line: 673, column: 82, scope: !1660)
!1662 = !DILocation(line: 673, column: 25, scope: !1644)
!1663 = !DILocation(line: 678, column: 25, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 678, column: 25)
!1665 = !DILocation(line: 678, column: 82, scope: !1664)
!1666 = !DILocation(line: 678, column: 25, scope: !1644)
!1667 = !DILocation(line: 683, column: 25, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 683, column: 25)
!1669 = !DILocation(line: 683, column: 82, scope: !1668)
!1670 = !DILocation(line: 683, column: 25, scope: !1644)
!1671 = !DILocation(line: 688, column: 25, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 688, column: 25)
!1673 = !DILocation(line: 688, column: 82, scope: !1672)
!1674 = !DILocation(line: 688, column: 25, scope: !1644)
!1675 = !DILocation(line: 693, column: 25, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 693, column: 25)
!1677 = !DILocation(line: 693, column: 83, scope: !1676)
!1678 = !DILocation(line: 693, column: 25, scope: !1644)
!1679 = !DILocation(line: 698, column: 25, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 698, column: 25)
!1681 = !DILocation(line: 698, column: 83, scope: !1680)
!1682 = !DILocation(line: 698, column: 25, scope: !1644)
!1683 = !DILocation(line: 703, column: 25, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 703, column: 25)
!1685 = !DILocation(line: 703, column: 83, scope: !1684)
!1686 = !DILocation(line: 703, column: 25, scope: !1644)
!1687 = !DILocation(line: 708, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 708, column: 25)
!1689 = !DILocation(line: 708, column: 83, scope: !1688)
!1690 = !DILocation(line: 708, column: 25, scope: !1644)
!1691 = !DILocation(line: 713, column: 25, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 713, column: 25)
!1693 = !DILocation(line: 713, column: 83, scope: !1692)
!1694 = !DILocation(line: 713, column: 25, scope: !1644)
!1695 = !DILocation(line: 718, column: 25, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 718, column: 25)
!1697 = !DILocation(line: 718, column: 81, scope: !1696)
!1698 = !DILocation(line: 718, column: 25, scope: !1644)
!1699 = !DILocation(line: 0, scope: !1644)
!1700 = !DILocation(line: 724, column: 13, scope: !1640)
!1701 = !DILocation(line: 725, column: 9, scope: !1640)
!1702 = !DILocation(line: 644, column: 64, scope: !1633)
!1703 = !DILocation(line: 644, column: 40, scope: !1633)
!1704 = !DILocation(line: 644, column: 5, scope: !1634)
!1705 = distinct !{!1705, !1704, !1706}
!1706 = !DILocation(line: 726, column: 5, scope: !1634)
!1707 = !DILocation(line: 728, column: 5, scope: !1526)
!1708 = !DILocation(line: 729, column: 1, scope: !1526)
!1709 = distinct !DISubprogram(name: "DMA_Clock_Disable", scope: !3, file: !3, line: 917, type: !1088, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1710)
!1710 = !{!1711}
!1711 = !DILocalVariable(name: "channel", arg: 1, scope: !1709, file: !3, line: 917, type: !128)
!1712 = !DILocation(line: 0, scope: !1709)
!1713 = !DILocation(line: 919, column: 59, scope: !1709)
!1714 = !DILocation(line: 919, column: 67, scope: !1709)
!1715 = !DILocation(line: 919, column: 55, scope: !1709)
!1716 = !DILocation(line: 919, column: 51, scope: !1709)
!1717 = !DILocation(line: 920, column: 1, scope: !1709)
!1718 = distinct !DISubprogram(name: "DMA_Init", scope: !3, file: !3, line: 732, type: !181, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1719 = !{!1720}
!1720 = !DILocalVariable(name: "index", scope: !1718, file: !3, line: 734, type: !174)
!1721 = !DILocation(line: 0, scope: !1718)
!1722 = !DILocation(line: 739, column: 5, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 739, column: 5)
!1724 = !DILocation(line: 740, column: 41, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 740, column: 13)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 739, column: 55)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 739, column: 5)
!1728 = !DILocation(line: 740, column: 33, scope: !1725)
!1729 = !DILocation(line: 740, column: 52, scope: !1725)
!1730 = !DILocation(line: 740, column: 13, scope: !1726)
!1731 = !DILocation(line: 741, column: 13, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 740, column: 58)
!1733 = !DILocation(line: 741, column: 30, scope: !1732)
!1734 = !DILocation(line: 742, column: 9, scope: !1732)
!1735 = !DILocation(line: 739, column: 51, scope: !1727)
!1736 = !DILocation(line: 739, column: 27, scope: !1727)
!1737 = distinct !{!1737, !1722, !1738}
!1738 = !DILocation(line: 743, column: 5, scope: !1723)
!1739 = !DILocation(line: 748, column: 32, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 746, column: 55)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 746, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 746, column: 5)
!1743 = !DILocation(line: 748, column: 9, scope: !1740)
!1744 = !DILocation(line: 746, column: 27, scope: !1741)
!1745 = !DILocation(line: 746, column: 5, scope: !1742)
!1746 = distinct !{!1746, !1745, !1747}
!1747 = !DILocation(line: 749, column: 5, scope: !1742)
!1748 = !DILocation(line: 752, column: 5, scope: !1718)
!1749 = !DILocation(line: 753, column: 5, scope: !1718)
!1750 = !DILocation(line: 754, column: 5, scope: !1718)
!1751 = !DILocation(line: 755, column: 1, scope: !1718)
!1752 = distinct !DISubprogram(name: "dma_set_channel_busy", scope: !3, file: !3, line: 757, type: !1753, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!128, !128}
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DILocalVariable(name: "channel", arg: 1, scope: !1752, file: !3, line: 757, type: !128)
!1757 = !DILocalVariable(name: "channel_index", scope: !1752, file: !3, line: 759, type: !128)
!1758 = !DILocalVariable(name: "flags", scope: !1752, file: !3, line: 760, type: !748)
!1759 = !DILocalVariable(name: "index", scope: !1752, file: !3, line: 764, type: !128)
!1760 = !DILocation(line: 0, scope: !1752)
!1761 = !DILocation(line: 764, column: 29, scope: !1752)
!1762 = !DILocation(line: 470, column: 3, scope: !1113, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 766, column: 5, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 766, column: 5)
!1765 = !DILocation(line: 0, scope: !1113, inlinedAt: !1763)
!1766 = !DILocation(line: 330, column: 3, scope: !1124, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 766, column: 5, scope: !1764)
!1768 = !DILocation(line: 768, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 768, column: 9)
!1770 = !DILocation(line: 768, column: 33, scope: !1769)
!1771 = !DILocation(line: 768, column: 9, scope: !1752)
!1772 = !DILocation(line: 769, column: 33, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 768, column: 43)
!1774 = !DILocation(line: 770, column: 9, scope: !1773)
!1775 = !DILocation(line: 0, scope: !1145, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 774, column: 5, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 774, column: 5)
!1778 = !DILocation(line: 483, column: 3, scope: !1145, inlinedAt: !1776)
!1779 = !DILocation(line: 776, column: 5, scope: !1752)
!1780 = !DILocation(line: 777, column: 5, scope: !1752)
!1781 = !DILocation(line: 778, column: 5, scope: !1752)
!1782 = !DILocation(line: 779, column: 5, scope: !1752)
!1783 = !DILocation(line: 781, column: 1, scope: !1752)
!1784 = distinct !DISubprogram(name: "dma_set_channel_idle", scope: !3, file: !3, line: 783, type: !1753, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DILocalVariable(name: "channel", arg: 1, scope: !1784, file: !3, line: 783, type: !128)
!1787 = !DILocalVariable(name: "flags", scope: !1784, file: !3, line: 785, type: !748)
!1788 = !DILocalVariable(name: "index", scope: !1784, file: !3, line: 786, type: !128)
!1789 = !DILocation(line: 0, scope: !1784)
!1790 = !DILocation(line: 786, column: 29, scope: !1784)
!1791 = !DILocation(line: 787, column: 5, scope: !1784)
!1792 = !DILocation(line: 470, column: 3, scope: !1113, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 788, column: 5, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 788, column: 5)
!1795 = !DILocation(line: 0, scope: !1113, inlinedAt: !1793)
!1796 = !DILocation(line: 330, column: 3, scope: !1124, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 788, column: 5, scope: !1794)
!1798 = !DILocation(line: 789, column: 5, scope: !1784)
!1799 = !DILocation(line: 789, column: 29, scope: !1784)
!1800 = !DILocation(line: 790, column: 33, scope: !1784)
!1801 = !DILocation(line: 790, column: 24, scope: !1784)
!1802 = !DILocation(line: 791, column: 21, scope: !1784)
!1803 = !DILocation(line: 791, column: 5, scope: !1784)
!1804 = !DILocation(line: 791, column: 26, scope: !1784)
!1805 = !DILocation(line: 0, scope: !1145, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 792, column: 5, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 792, column: 5)
!1808 = !DILocation(line: 483, column: 3, scope: !1145, inlinedAt: !1806)
!1809 = !DILocation(line: 794, column: 5, scope: !1784)
!1810 = distinct !DISubprogram(name: "DMA_Vfifo_init", scope: !3, file: !3, line: 798, type: !181, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1811)
!1811 = !{!1812}
!1812 = !DILocalVariable(name: "dma_con", scope: !1810, file: !3, line: 800, type: !114)
!1813 = !DILocation(line: 0, scope: !1810)
!1814 = !DILocation(line: 802, column: 5, scope: !1810)
!1815 = !DILocation(line: 804, column: 5, scope: !1810)
!1816 = !DILocation(line: 806, column: 5, scope: !1810)
!1817 = !DILocation(line: 808, column: 5, scope: !1810)
!1818 = !DILocation(line: 810, column: 5, scope: !1810)
!1819 = !DILocation(line: 812, column: 5, scope: !1810)
!1820 = !DILocation(line: 814, column: 5, scope: !1810)
!1821 = !DILocation(line: 816, column: 5, scope: !1810)
!1822 = !DILocation(line: 818, column: 5, scope: !1810)
!1823 = !DILocation(line: 820, column: 5, scope: !1810)
!1824 = !DILocation(line: 822, column: 5, scope: !1810)
!1825 = !DILocation(line: 824, column: 5, scope: !1810)
!1826 = !DILocation(line: 826, column: 5, scope: !1810)
!1827 = !DILocation(line: 828, column: 5, scope: !1810)
!1828 = !DILocation(line: 830, column: 5, scope: !1810)
!1829 = !DILocation(line: 832, column: 5, scope: !1810)
!1830 = !DILocation(line: 834, column: 5, scope: !1810)
!1831 = !DILocation(line: 836, column: 5, scope: !1810)
!1832 = !DILocation(line: 838, column: 5, scope: !1810)
!1833 = !DILocation(line: 840, column: 5, scope: !1810)
!1834 = !DILocation(line: 842, column: 5, scope: !1810)
!1835 = !DILocation(line: 844, column: 5, scope: !1810)
!1836 = !DILocation(line: 846, column: 5, scope: !1810)
!1837 = !DILocation(line: 848, column: 5, scope: !1810)
!1838 = !DILocation(line: 850, column: 5, scope: !1810)
!1839 = !DILocation(line: 852, column: 5, scope: !1810)
!1840 = !DILocation(line: 854, column: 5, scope: !1810)
!1841 = !DILocation(line: 856, column: 5, scope: !1810)
!1842 = !DILocation(line: 858, column: 1, scope: !1810)
!1843 = distinct !DISubprogram(name: "DMA_Vfifo_SetAdrs", scope: !3, file: !3, line: 861, type: !1844, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1847)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !136, !136, !1846, !136, !136, !136}
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !6, line: 144, baseType: !97)
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853}
!1848 = !DILocalVariable(name: "adrs", arg: 1, scope: !1843, file: !3, line: 861, type: !136)
!1849 = !DILocalVariable(name: "len", arg: 2, scope: !1843, file: !3, line: 862, type: !136)
!1850 = !DILocalVariable(name: "ch", arg: 3, scope: !1843, file: !3, line: 862, type: !1846)
!1851 = !DILocalVariable(name: "alt_len", arg: 4, scope: !1843, file: !3, line: 863, type: !136)
!1852 = !DILocalVariable(name: "dma_count", arg: 5, scope: !1843, file: !3, line: 864, type: !136)
!1853 = !DILocalVariable(name: "timeout_counter", arg: 6, scope: !1843, file: !3, line: 865, type: !136)
!1854 = !DILocation(line: 0, scope: !1843)
!1855 = !DILocation(line: 867, column: 5, scope: !1843)
!1856 = !DILocation(line: 868, column: 5, scope: !1843)
!1857 = !DILocation(line: 869, column: 5, scope: !1843)
!1858 = !DILocation(line: 870, column: 5, scope: !1843)
!1859 = !DILocation(line: 870, column: 30, scope: !1843)
!1860 = !DILocation(line: 871, column: 5, scope: !1843)
!1861 = !DILocation(line: 871, column: 27, scope: !1843)
!1862 = !DILocation(line: 872, column: 1, scope: !1843)
!1863 = distinct !DISubprogram(name: "DMA_Vfifo_Set_timeout", scope: !3, file: !3, line: 874, type: !1864, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1866)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !1846, !136}
!1866 = !{!1867, !1868}
!1867 = !DILocalVariable(name: "ch", arg: 1, scope: !1863, file: !3, line: 874, type: !1846)
!1868 = !DILocalVariable(name: "timeout_counter", arg: 2, scope: !1863, file: !3, line: 874, type: !136)
!1869 = !DILocation(line: 0, scope: !1863)
!1870 = !DILocation(line: 877, column: 5, scope: !1863)
!1871 = !DILocation(line: 877, column: 27, scope: !1863)
!1872 = !DILocation(line: 878, column: 1, scope: !1863)
!1873 = distinct !DISubprogram(name: "DMA_Vfifo_enable_interrupt", scope: !3, file: !3, line: 880, type: !1874, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1846}
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "ch", arg: 1, scope: !1873, file: !3, line: 880, type: !1846)
!1878 = !DILocation(line: 0, scope: !1873)
!1879 = !DILocation(line: 883, column: 5, scope: !1873)
!1880 = !DILocation(line: 884, column: 1, scope: !1873)
!1881 = distinct !DISubprogram(name: "DMA_Vfifo_disable_interrupt", scope: !3, file: !3, line: 886, type: !1874, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!1882 = !{!1883}
!1883 = !DILocalVariable(name: "ch", arg: 1, scope: !1881, file: !3, line: 886, type: !1846)
!1884 = !DILocation(line: 0, scope: !1881)
!1885 = !DILocation(line: 889, column: 5, scope: !1881)
!1886 = !DILocation(line: 890, column: 1, scope: !1881)
!1887 = distinct !DISubprogram(name: "DMA_Vfifo_Flush", scope: !3, file: !3, line: 893, type: !1874, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "ch", arg: 1, scope: !1887, file: !3, line: 893, type: !1846)
!1890 = !DILocation(line: 0, scope: !1887)
!1891 = !DILocation(line: 895, column: 14, scope: !1887)
!1892 = !DILocation(line: 895, column: 5, scope: !1887)
!1893 = !DILocation(line: 897, column: 5, scope: !1887)
!1894 = !DILocation(line: 898, column: 1, scope: !1887)
!1895 = distinct !DISubprogram(name: "DMA_Vfifo_Register_Callback", scope: !3, file: !3, line: 900, type: !1896, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1846, !179}
!1898 = !{!1899, !1900}
!1899 = !DILocalVariable(name: "ch", arg: 1, scope: !1895, file: !3, line: 900, type: !1846)
!1900 = !DILocalVariable(name: "callback_func", arg: 2, scope: !1895, file: !3, line: 901, type: !179)
!1901 = !DILocation(line: 0, scope: !1895)
!1902 = !DILocation(line: 903, column: 28, scope: !1895)
!1903 = !DILocation(line: 903, column: 5, scope: !1895)
!1904 = !DILocation(line: 903, column: 46, scope: !1895)
!1905 = !DILocation(line: 904, column: 1, scope: !1895)
!1906 = distinct !DISubprogram(name: "DMA_Vfifo_Register_TO_Callback", scope: !3, file: !3, line: 906, type: !1896, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "ch", arg: 1, scope: !1906, file: !3, line: 906, type: !1846)
!1909 = !DILocalVariable(name: "callback_func", arg: 2, scope: !1906, file: !3, line: 907, type: !179)
!1910 = !DILocation(line: 0, scope: !1906)
!1911 = !DILocation(line: 909, column: 31, scope: !1906)
!1912 = !DILocation(line: 909, column: 5, scope: !1906)
!1913 = !DILocation(line: 909, column: 49, scope: !1906)
!1914 = !DILocation(line: 910, column: 1, scope: !1906)
!1915 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !862, file: !862, line: 54, type: !1916, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !1919)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!1918, !205, !229}
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 56, baseType: !53)
!1919 = !{!1920, !1921, !1922, !1924}
!1920 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1915, file: !862, line: 54, type: !205)
!1921 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1915, file: !862, line: 54, type: !229)
!1922 = !DILocalVariable(name: "no", scope: !1915, file: !862, line: 57, type: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 60, baseType: !228)
!1924 = !DILocalVariable(name: "remainder", scope: !1915, file: !862, line: 58, type: !1923)
!1925 = !DILocation(line: 0, scope: !1915)
!1926 = !DILocation(line: 59, column: 19, scope: !1915)
!1927 = !DILocation(line: 60, column: 17, scope: !1915)
!1928 = !DILocation(line: 61, column: 5, scope: !1915)
!1929 = !DILocation(line: 65, column: 27, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !862, line: 65, column: 17)
!1931 = distinct !DILexicalBlock(scope: !1915, file: !862, line: 61, column: 17)
!1932 = !DILocation(line: 0, scope: !1930)
!1933 = !DILocation(line: 65, column: 17, scope: !1931)
!1934 = !DILocation(line: 66, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !862, line: 65, column: 33)
!1936 = !DILocation(line: 67, column: 73, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !862, line: 66, column: 38)
!1938 = distinct !DILexicalBlock(scope: !1935, file: !862, line: 66, column: 21)
!1939 = !DILocation(line: 67, column: 69, scope: !1937)
!1940 = !DILocation(line: 67, column: 66, scope: !1937)
!1941 = !DILocation(line: 68, column: 17, scope: !1937)
!1942 = !DILocation(line: 68, column: 28, scope: !1938)
!1943 = !DILocation(line: 69, column: 77, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !862, line: 68, column: 45)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !862, line: 68, column: 28)
!1946 = !DILocation(line: 70, column: 77, scope: !1944)
!1947 = !DILocation(line: 71, column: 17, scope: !1944)
!1948 = !DILocation(line: 72, column: 77, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !862, line: 71, column: 45)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !862, line: 71, column: 28)
!1951 = !DILocation(line: 73, column: 77, scope: !1949)
!1952 = !DILocation(line: 74, column: 17, scope: !1949)
!1953 = !DILocation(line: 75, column: 79, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !862, line: 74, column: 45)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !862, line: 74, column: 28)
!1956 = !DILocation(line: 76, column: 79, scope: !1954)
!1957 = !DILocation(line: 77, column: 17, scope: !1954)
!1958 = !DILocation(line: 78, column: 79, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !862, line: 77, column: 45)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !862, line: 77, column: 28)
!1961 = !DILocation(line: 79, column: 79, scope: !1959)
!1962 = !DILocation(line: 80, column: 17, scope: !1959)
!1963 = !DILocation(line: 81, column: 79, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !862, line: 80, column: 45)
!1965 = distinct !DILexicalBlock(scope: !1960, file: !862, line: 80, column: 28)
!1966 = !DILocation(line: 82, column: 79, scope: !1964)
!1967 = !DILocation(line: 83, column: 17, scope: !1964)
!1968 = !DILocation(line: 85, column: 17, scope: !1935)
!1969 = !DILocation(line: 86, column: 13, scope: !1935)
!1970 = !DILocation(line: 88, column: 21, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1930, file: !862, line: 86, column: 20)
!1972 = !DILocation(line: 89, column: 72, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !862, line: 88, column: 38)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !862, line: 88, column: 21)
!1975 = !DILocation(line: 89, column: 66, scope: !1973)
!1976 = !DILocation(line: 90, column: 17, scope: !1973)
!1977 = !DILocation(line: 90, column: 28, scope: !1974)
!1978 = !DILocation(line: 91, column: 77, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !862, line: 90, column: 45)
!1980 = distinct !DILexicalBlock(scope: !1974, file: !862, line: 90, column: 28)
!1981 = !DILocation(line: 92, column: 17, scope: !1979)
!1982 = !DILocation(line: 93, column: 77, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !862, line: 92, column: 45)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !862, line: 92, column: 28)
!1985 = !DILocation(line: 94, column: 17, scope: !1983)
!1986 = !DILocation(line: 95, column: 79, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !862, line: 94, column: 45)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !862, line: 94, column: 28)
!1989 = !DILocation(line: 96, column: 17, scope: !1987)
!1990 = !DILocation(line: 97, column: 79, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !862, line: 96, column: 45)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !862, line: 96, column: 28)
!1993 = !DILocation(line: 98, column: 17, scope: !1991)
!1994 = !DILocation(line: 99, column: 79, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !862, line: 98, column: 45)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !862, line: 98, column: 28)
!1997 = !DILocation(line: 100, column: 17, scope: !1995)
!1998 = !DILocation(line: 103, column: 17, scope: !1971)
!1999 = !DILocation(line: 109, column: 27, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1931, file: !862, line: 109, column: 17)
!2001 = !DILocation(line: 0, scope: !2000)
!2002 = !DILocation(line: 109, column: 17, scope: !1931)
!2003 = !DILocation(line: 110, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !862, line: 109, column: 33)
!2005 = !DILocation(line: 111, column: 73, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !862, line: 110, column: 36)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !862, line: 110, column: 21)
!2008 = !DILocation(line: 111, column: 69, scope: !2006)
!2009 = !DILocation(line: 111, column: 66, scope: !2006)
!2010 = !DILocation(line: 112, column: 17, scope: !2006)
!2011 = !DILocation(line: 113, column: 79, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !862, line: 112, column: 24)
!2013 = !DILocation(line: 114, column: 79, scope: !2012)
!2014 = !DILocation(line: 117, column: 17, scope: !2004)
!2015 = !DILocation(line: 118, column: 13, scope: !2004)
!2016 = !DILocation(line: 120, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2000, file: !862, line: 118, column: 20)
!2018 = !DILocation(line: 121, column: 72, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !862, line: 120, column: 36)
!2020 = distinct !DILexicalBlock(scope: !2017, file: !862, line: 120, column: 21)
!2021 = !DILocation(line: 121, column: 66, scope: !2019)
!2022 = !DILocation(line: 122, column: 17, scope: !2019)
!2023 = !DILocation(line: 123, column: 79, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !862, line: 122, column: 24)
!2025 = !DILocation(line: 126, column: 17, scope: !2017)
!2026 = !DILocation(line: 133, column: 1, scope: !1915)
!2027 = distinct !DISubprogram(name: "halGPO_Write", scope: !862, file: !862, line: 136, type: !1916, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2028)
!2028 = !{!2029, !2030, !2031, !2032}
!2029 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2027, file: !862, line: 136, type: !205)
!2030 = !DILocalVariable(name: "writeValue", arg: 2, scope: !2027, file: !862, line: 136, type: !229)
!2031 = !DILocalVariable(name: "no", scope: !2027, file: !862, line: 138, type: !1923)
!2032 = !DILocalVariable(name: "remainder", scope: !2027, file: !862, line: 139, type: !1923)
!2033 = !DILocation(line: 0, scope: !2027)
!2034 = !DILocation(line: 140, column: 19, scope: !2027)
!2035 = !DILocation(line: 141, column: 17, scope: !2027)
!2036 = !DILocation(line: 142, column: 5, scope: !2027)
!2037 = !DILocation(line: 145, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !862, line: 145, column: 17)
!2039 = distinct !DILexicalBlock(scope: !2027, file: !862, line: 142, column: 17)
!2040 = !DILocation(line: 0, scope: !2038)
!2041 = !DILocation(line: 145, column: 17, scope: !2039)
!2042 = !DILocation(line: 146, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !862, line: 145, column: 29)
!2044 = !DILocation(line: 147, column: 13, scope: !2043)
!2045 = !DILocation(line: 148, column: 17, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2038, file: !862, line: 147, column: 20)
!2047 = !DILocation(line: 153, column: 17, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2039, file: !862, line: 153, column: 17)
!2049 = !DILocation(line: 0, scope: !2048)
!2050 = !DILocation(line: 153, column: 17, scope: !2039)
!2051 = !DILocation(line: 154, column: 17, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !862, line: 153, column: 29)
!2053 = !DILocation(line: 155, column: 13, scope: !2052)
!2054 = !DILocation(line: 156, column: 17, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2048, file: !862, line: 155, column: 20)
!2056 = !DILocation(line: 163, column: 1, scope: !2027)
!2057 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !862, file: !862, line: 169, type: !2058, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!229, !205}
!2060 = !{!2061, !2062, !2063, !2064}
!2061 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2057, file: !862, line: 169, type: !205)
!2062 = !DILocalVariable(name: "no", scope: !2057, file: !862, line: 171, type: !1923)
!2063 = !DILocalVariable(name: "remainder", scope: !2057, file: !862, line: 172, type: !1923)
!2064 = !DILocalVariable(name: "dout", scope: !2057, file: !862, line: 175, type: !229)
!2065 = !DILocation(line: 0, scope: !2057)
!2066 = !DILocation(line: 173, column: 19, scope: !2057)
!2067 = !DILocation(line: 174, column: 17, scope: !2057)
!2068 = !DILocation(line: 177, column: 5, scope: !2057)
!2069 = !DILocation(line: 183, column: 13, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2057, file: !862, line: 177, column: 17)
!2071 = !DILocation(line: 0, scope: !2070)
!2072 = !DILocation(line: 187, column: 5, scope: !2057)
!2073 = !DILocation(line: 188, column: 1, scope: !2057)
!2074 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !862, file: !862, line: 189, type: !2058, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2074, file: !862, line: 189, type: !205)
!2077 = !DILocalVariable(name: "no", scope: !2074, file: !862, line: 191, type: !1923)
!2078 = !DILocalVariable(name: "remainder", scope: !2074, file: !862, line: 192, type: !1923)
!2079 = !DILocalVariable(name: "din", scope: !2074, file: !862, line: 195, type: !229)
!2080 = !DILocation(line: 0, scope: !2074)
!2081 = !DILocation(line: 193, column: 19, scope: !2074)
!2082 = !DILocation(line: 194, column: 17, scope: !2074)
!2083 = !DILocation(line: 196, column: 5, scope: !2074)
!2084 = !DILocation(line: 203, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2074, file: !862, line: 196, column: 17)
!2086 = !DILocation(line: 0, scope: !2085)
!2087 = !DILocation(line: 208, column: 5, scope: !2074)
!2088 = !DILocation(line: 209, column: 1, scope: !2074)
!2089 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !862, file: !862, line: 210, type: !2058, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093, !2094}
!2091 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2089, file: !862, line: 210, type: !205)
!2092 = !DILocalVariable(name: "no", scope: !2089, file: !862, line: 212, type: !1923)
!2093 = !DILocalVariable(name: "remainder", scope: !2089, file: !862, line: 213, type: !1923)
!2094 = !DILocalVariable(name: "outEnable", scope: !2089, file: !862, line: 216, type: !229)
!2095 = !DILocation(line: 0, scope: !2089)
!2096 = !DILocation(line: 214, column: 19, scope: !2089)
!2097 = !DILocation(line: 215, column: 17, scope: !2089)
!2098 = !DILocation(line: 218, column: 5, scope: !2089)
!2099 = !DILocation(line: 224, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2089, file: !862, line: 218, column: 17)
!2101 = !DILocation(line: 0, scope: !2100)
!2102 = !DILocation(line: 228, column: 5, scope: !2089)
!2103 = !DILocation(line: 229, column: 1, scope: !2089)
!2104 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !862, file: !862, line: 232, type: !2105, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!1918, !205}
!2107 = !{!2108, !2109, !2110}
!2108 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2104, file: !862, line: 232, type: !205)
!2109 = !DILocalVariable(name: "no", scope: !2104, file: !862, line: 234, type: !1923)
!2110 = !DILocalVariable(name: "remainder", scope: !2104, file: !862, line: 235, type: !1923)
!2111 = !DILocation(line: 0, scope: !2104)
!2112 = !DILocation(line: 236, column: 19, scope: !2104)
!2113 = !DILocation(line: 237, column: 17, scope: !2104)
!2114 = !DILocation(line: 238, column: 5, scope: !2104)
!2115 = !DILocation(line: 239, column: 5, scope: !2104)
!2116 = !DILocation(line: 241, column: 27, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !862, line: 241, column: 17)
!2118 = distinct !DILexicalBlock(scope: !2104, file: !862, line: 239, column: 17)
!2119 = !DILocation(line: 241, column: 17, scope: !2118)
!2120 = !DILocation(line: 241, column: 17, scope: !2117)
!2121 = !DILocation(line: 242, column: 17, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !862, line: 241, column: 34)
!2123 = !DILocation(line: 243, column: 13, scope: !2122)
!2124 = !DILocation(line: 243, column: 24, scope: !2117)
!2125 = !DILocation(line: 244, column: 73, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !862, line: 243, column: 41)
!2127 = distinct !DILexicalBlock(scope: !2117, file: !862, line: 243, column: 24)
!2128 = !DILocation(line: 245, column: 73, scope: !2126)
!2129 = !DILocation(line: 246, column: 13, scope: !2126)
!2130 = !DILocation(line: 247, column: 73, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !862, line: 246, column: 41)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !862, line: 246, column: 24)
!2133 = !DILocation(line: 248, column: 73, scope: !2131)
!2134 = !DILocation(line: 249, column: 13, scope: !2131)
!2135 = !DILocation(line: 250, column: 75, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !862, line: 249, column: 41)
!2137 = distinct !DILexicalBlock(scope: !2132, file: !862, line: 249, column: 24)
!2138 = !DILocation(line: 251, column: 75, scope: !2136)
!2139 = !DILocation(line: 252, column: 13, scope: !2136)
!2140 = !DILocation(line: 253, column: 75, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !862, line: 252, column: 41)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !862, line: 252, column: 24)
!2143 = !DILocation(line: 254, column: 75, scope: !2141)
!2144 = !DILocation(line: 255, column: 13, scope: !2141)
!2145 = !DILocation(line: 256, column: 75, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !862, line: 255, column: 41)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !862, line: 255, column: 24)
!2148 = !DILocation(line: 257, column: 75, scope: !2146)
!2149 = !DILocation(line: 258, column: 13, scope: !2146)
!2150 = !DILocation(line: 261, column: 18, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2118, file: !862, line: 261, column: 17)
!2152 = !DILocation(line: 261, column: 17, scope: !2118)
!2153 = !DILocation(line: 262, column: 75, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !862, line: 261, column: 29)
!2155 = !DILocation(line: 263, column: 75, scope: !2154)
!2156 = !DILocation(line: 264, column: 13, scope: !2154)
!2157 = !DILocation(line: 265, column: 17, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2151, file: !862, line: 264, column: 20)
!2159 = !DILocation(line: 272, column: 1, scope: !2104)
!2160 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !862, file: !862, line: 359, type: !2105, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2160, file: !862, line: 359, type: !205)
!2163 = !DILocalVariable(name: "no", scope: !2160, file: !862, line: 362, type: !1923)
!2164 = !DILocalVariable(name: "remainder", scope: !2160, file: !862, line: 363, type: !1923)
!2165 = !DILocation(line: 0, scope: !2160)
!2166 = !DILocation(line: 364, column: 19, scope: !2160)
!2167 = !DILocation(line: 365, column: 17, scope: !2160)
!2168 = !DILocation(line: 367, column: 5, scope: !2160)
!2169 = !DILocation(line: 369, column: 27, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !862, line: 369, column: 17)
!2171 = distinct !DILexicalBlock(scope: !2160, file: !862, line: 367, column: 17)
!2172 = !DILocation(line: 369, column: 17, scope: !2171)
!2173 = !DILocation(line: 369, column: 17, scope: !2170)
!2174 = !DILocation(line: 370, column: 17, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !862, line: 369, column: 34)
!2176 = !DILocation(line: 371, column: 13, scope: !2175)
!2177 = !DILocation(line: 371, column: 24, scope: !2170)
!2178 = !DILocation(line: 372, column: 73, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !862, line: 371, column: 41)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !862, line: 371, column: 24)
!2181 = !DILocation(line: 373, column: 73, scope: !2179)
!2182 = !DILocation(line: 374, column: 13, scope: !2179)
!2183 = !DILocation(line: 375, column: 73, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !862, line: 374, column: 41)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !862, line: 374, column: 24)
!2186 = !DILocation(line: 376, column: 73, scope: !2184)
!2187 = !DILocation(line: 377, column: 13, scope: !2184)
!2188 = !DILocation(line: 378, column: 75, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !862, line: 377, column: 41)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !862, line: 377, column: 24)
!2191 = !DILocation(line: 379, column: 75, scope: !2189)
!2192 = !DILocation(line: 380, column: 13, scope: !2189)
!2193 = !DILocation(line: 381, column: 75, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !862, line: 380, column: 41)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !862, line: 380, column: 24)
!2196 = !DILocation(line: 382, column: 75, scope: !2194)
!2197 = !DILocation(line: 383, column: 13, scope: !2194)
!2198 = !DILocation(line: 384, column: 75, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !862, line: 383, column: 41)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !862, line: 383, column: 24)
!2201 = !DILocation(line: 385, column: 75, scope: !2199)
!2202 = !DILocation(line: 386, column: 13, scope: !2199)
!2203 = !DILocation(line: 389, column: 18, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2171, file: !862, line: 389, column: 17)
!2205 = !DILocation(line: 389, column: 17, scope: !2171)
!2206 = !DILocation(line: 390, column: 75, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2204, file: !862, line: 389, column: 29)
!2208 = !DILocation(line: 391, column: 75, scope: !2207)
!2209 = !DILocation(line: 392, column: 13, scope: !2207)
!2210 = !DILocation(line: 393, column: 17, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2204, file: !862, line: 392, column: 20)
!2212 = !DILocation(line: 401, column: 1, scope: !2160)
!2213 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !862, file: !862, line: 274, type: !2105, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2213, file: !862, line: 274, type: !205)
!2216 = !DILocalVariable(name: "no", scope: !2213, file: !862, line: 276, type: !1923)
!2217 = !DILocalVariable(name: "remainder", scope: !2213, file: !862, line: 277, type: !1923)
!2218 = !DILocation(line: 0, scope: !2213)
!2219 = !DILocation(line: 278, column: 19, scope: !2213)
!2220 = !DILocation(line: 279, column: 17, scope: !2213)
!2221 = !DILocation(line: 281, column: 5, scope: !2213)
!2222 = !DILocation(line: 283, column: 27, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !862, line: 283, column: 17)
!2224 = distinct !DILexicalBlock(scope: !2213, file: !862, line: 281, column: 17)
!2225 = !DILocation(line: 283, column: 17, scope: !2224)
!2226 = !DILocation(line: 283, column: 17, scope: !2223)
!2227 = !DILocation(line: 284, column: 17, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !862, line: 283, column: 34)
!2229 = !DILocation(line: 285, column: 13, scope: !2228)
!2230 = !DILocation(line: 285, column: 24, scope: !2223)
!2231 = !DILocation(line: 286, column: 73, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !862, line: 285, column: 41)
!2233 = distinct !DILexicalBlock(scope: !2223, file: !862, line: 285, column: 24)
!2234 = !DILocation(line: 287, column: 73, scope: !2232)
!2235 = !DILocation(line: 288, column: 13, scope: !2232)
!2236 = !DILocation(line: 289, column: 73, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !862, line: 288, column: 41)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !862, line: 288, column: 24)
!2239 = !DILocation(line: 290, column: 73, scope: !2237)
!2240 = !DILocation(line: 291, column: 13, scope: !2237)
!2241 = !DILocation(line: 292, column: 75, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !862, line: 291, column: 41)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !862, line: 291, column: 24)
!2244 = !DILocation(line: 293, column: 75, scope: !2242)
!2245 = !DILocation(line: 294, column: 13, scope: !2242)
!2246 = !DILocation(line: 295, column: 75, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !862, line: 294, column: 41)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !862, line: 294, column: 24)
!2249 = !DILocation(line: 296, column: 75, scope: !2247)
!2250 = !DILocation(line: 297, column: 13, scope: !2247)
!2251 = !DILocation(line: 298, column: 75, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !862, line: 297, column: 41)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !862, line: 297, column: 24)
!2254 = !DILocation(line: 299, column: 75, scope: !2252)
!2255 = !DILocation(line: 300, column: 13, scope: !2252)
!2256 = !DILocation(line: 303, column: 18, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2224, file: !862, line: 303, column: 17)
!2258 = !DILocation(line: 303, column: 17, scope: !2224)
!2259 = !DILocation(line: 304, column: 75, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !862, line: 303, column: 29)
!2261 = !DILocation(line: 305, column: 75, scope: !2260)
!2262 = !DILocation(line: 306, column: 13, scope: !2260)
!2263 = !DILocation(line: 307, column: 17, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !862, line: 306, column: 20)
!2265 = !DILocation(line: 314, column: 1, scope: !2213)
!2266 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !862, file: !862, line: 316, type: !2105, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2266, file: !862, line: 316, type: !205)
!2269 = !DILocalVariable(name: "no", scope: !2266, file: !862, line: 318, type: !1923)
!2270 = !DILocalVariable(name: "remainder", scope: !2266, file: !862, line: 319, type: !1923)
!2271 = !DILocation(line: 0, scope: !2266)
!2272 = !DILocation(line: 320, column: 19, scope: !2266)
!2273 = !DILocation(line: 321, column: 17, scope: !2266)
!2274 = !DILocation(line: 322, column: 5, scope: !2266)
!2275 = !DILocation(line: 323, column: 5, scope: !2266)
!2276 = !DILocation(line: 325, column: 27, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !862, line: 325, column: 17)
!2278 = distinct !DILexicalBlock(scope: !2266, file: !862, line: 323, column: 17)
!2279 = !DILocation(line: 325, column: 17, scope: !2278)
!2280 = !DILocation(line: 325, column: 17, scope: !2277)
!2281 = !DILocation(line: 326, column: 17, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !862, line: 325, column: 34)
!2283 = !DILocation(line: 327, column: 13, scope: !2282)
!2284 = !DILocation(line: 327, column: 24, scope: !2277)
!2285 = !DILocation(line: 328, column: 73, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !862, line: 327, column: 41)
!2287 = distinct !DILexicalBlock(scope: !2277, file: !862, line: 327, column: 24)
!2288 = !DILocation(line: 329, column: 73, scope: !2286)
!2289 = !DILocation(line: 330, column: 13, scope: !2286)
!2290 = !DILocation(line: 331, column: 73, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !862, line: 330, column: 41)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !862, line: 330, column: 24)
!2293 = !DILocation(line: 332, column: 73, scope: !2291)
!2294 = !DILocation(line: 333, column: 13, scope: !2291)
!2295 = !DILocation(line: 334, column: 75, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !862, line: 333, column: 41)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !862, line: 333, column: 24)
!2298 = !DILocation(line: 335, column: 75, scope: !2296)
!2299 = !DILocation(line: 336, column: 13, scope: !2296)
!2300 = !DILocation(line: 337, column: 75, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !862, line: 336, column: 41)
!2302 = distinct !DILexicalBlock(scope: !2297, file: !862, line: 336, column: 24)
!2303 = !DILocation(line: 338, column: 75, scope: !2301)
!2304 = !DILocation(line: 339, column: 13, scope: !2301)
!2305 = !DILocation(line: 340, column: 75, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !862, line: 339, column: 41)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !862, line: 339, column: 24)
!2308 = !DILocation(line: 341, column: 75, scope: !2306)
!2309 = !DILocation(line: 342, column: 13, scope: !2306)
!2310 = !DILocation(line: 345, column: 18, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2278, file: !862, line: 345, column: 17)
!2312 = !DILocation(line: 345, column: 17, scope: !2278)
!2313 = !DILocation(line: 346, column: 75, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !862, line: 345, column: 29)
!2315 = !DILocation(line: 347, column: 75, scope: !2314)
!2316 = !DILocation(line: 348, column: 13, scope: !2314)
!2317 = !DILocation(line: 349, column: 17, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2311, file: !862, line: 348, column: 20)
!2319 = !DILocation(line: 357, column: 1, scope: !2266)
!2320 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !862, file: !862, line: 404, type: !1916, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2321)
!2321 = !{!2322, !2323, !2324, !2325}
!2322 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2320, file: !862, line: 404, type: !205)
!2323 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2320, file: !862, line: 404, type: !229)
!2324 = !DILocalVariable(name: "no", scope: !2320, file: !862, line: 406, type: !1923)
!2325 = !DILocalVariable(name: "remainder", scope: !2320, file: !862, line: 407, type: !1923)
!2326 = !DILocation(line: 0, scope: !2320)
!2327 = !DILocation(line: 408, column: 19, scope: !2320)
!2328 = !DILocation(line: 409, column: 17, scope: !2320)
!2329 = !DILocation(line: 411, column: 5, scope: !2320)
!2330 = !DILocation(line: 413, column: 84, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2320, file: !862, line: 411, column: 17)
!2332 = !DILocation(line: 413, column: 70, scope: !2331)
!2333 = !DILocation(line: 413, column: 64, scope: !2331)
!2334 = !DILocation(line: 413, column: 61, scope: !2331)
!2335 = !DILocation(line: 414, column: 79, scope: !2331)
!2336 = !DILocation(line: 414, column: 83, scope: !2331)
!2337 = !DILocation(line: 414, column: 88, scope: !2331)
!2338 = !DILocation(line: 414, column: 61, scope: !2331)
!2339 = !DILocation(line: 415, column: 13, scope: !2331)
!2340 = !DILocation(line: 417, column: 27, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2331, file: !862, line: 417, column: 17)
!2342 = !DILocation(line: 417, column: 17, scope: !2331)
!2343 = !DILocation(line: 418, column: 88, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !862, line: 417, column: 33)
!2345 = !DILocation(line: 418, column: 74, scope: !2344)
!2346 = !DILocation(line: 418, column: 68, scope: !2344)
!2347 = !DILocation(line: 418, column: 65, scope: !2344)
!2348 = !DILocation(line: 419, column: 83, scope: !2344)
!2349 = !DILocation(line: 419, column: 87, scope: !2344)
!2350 = !DILocation(line: 419, column: 92, scope: !2344)
!2351 = !DILocation(line: 419, column: 65, scope: !2344)
!2352 = !DILocation(line: 420, column: 13, scope: !2344)
!2353 = !DILocation(line: 420, column: 24, scope: !2341)
!2354 = !DILocation(line: 421, column: 73, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !862, line: 420, column: 41)
!2356 = distinct !DILexicalBlock(scope: !2341, file: !862, line: 420, column: 24)
!2357 = !DILocation(line: 422, column: 91, scope: !2355)
!2358 = !DILocation(line: 422, column: 100, scope: !2355)
!2359 = !DILocation(line: 422, column: 73, scope: !2355)
!2360 = !DILocation(line: 423, column: 73, scope: !2355)
!2361 = !DILocation(line: 424, column: 13, scope: !2355)
!2362 = !DILocation(line: 425, column: 73, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !862, line: 424, column: 41)
!2364 = distinct !DILexicalBlock(scope: !2356, file: !862, line: 424, column: 24)
!2365 = !DILocation(line: 426, column: 91, scope: !2363)
!2366 = !DILocation(line: 426, column: 100, scope: !2363)
!2367 = !DILocation(line: 426, column: 73, scope: !2363)
!2368 = !DILocation(line: 427, column: 73, scope: !2363)
!2369 = !DILocation(line: 428, column: 13, scope: !2363)
!2370 = !DILocation(line: 429, column: 75, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !862, line: 428, column: 41)
!2372 = distinct !DILexicalBlock(scope: !2364, file: !862, line: 428, column: 24)
!2373 = !DILocation(line: 430, column: 93, scope: !2371)
!2374 = !DILocation(line: 430, column: 102, scope: !2371)
!2375 = !DILocation(line: 430, column: 75, scope: !2371)
!2376 = !DILocation(line: 431, column: 75, scope: !2371)
!2377 = !DILocation(line: 432, column: 13, scope: !2371)
!2378 = !DILocation(line: 433, column: 75, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !862, line: 432, column: 41)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !862, line: 432, column: 24)
!2381 = !DILocation(line: 434, column: 93, scope: !2379)
!2382 = !DILocation(line: 434, column: 102, scope: !2379)
!2383 = !DILocation(line: 434, column: 75, scope: !2379)
!2384 = !DILocation(line: 435, column: 75, scope: !2379)
!2385 = !DILocation(line: 436, column: 13, scope: !2379)
!2386 = !DILocation(line: 437, column: 75, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !862, line: 436, column: 41)
!2388 = distinct !DILexicalBlock(scope: !2380, file: !862, line: 436, column: 24)
!2389 = !DILocation(line: 438, column: 93, scope: !2387)
!2390 = !DILocation(line: 438, column: 102, scope: !2387)
!2391 = !DILocation(line: 438, column: 75, scope: !2387)
!2392 = !DILocation(line: 439, column: 75, scope: !2387)
!2393 = !DILocation(line: 440, column: 13, scope: !2387)
!2394 = !DILocation(line: 443, column: 18, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2331, file: !862, line: 443, column: 17)
!2396 = !DILocation(line: 443, column: 17, scope: !2331)
!2397 = !DILocation(line: 444, column: 75, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !862, line: 443, column: 29)
!2399 = !DILocation(line: 445, column: 93, scope: !2398)
!2400 = !DILocation(line: 445, column: 102, scope: !2398)
!2401 = !DILocation(line: 445, column: 75, scope: !2398)
!2402 = !DILocation(line: 446, column: 75, scope: !2398)
!2403 = !DILocation(line: 447, column: 13, scope: !2398)
!2404 = !DILocation(line: 448, column: 88, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2395, file: !862, line: 447, column: 20)
!2406 = !DILocation(line: 448, column: 74, scope: !2405)
!2407 = !DILocation(line: 448, column: 68, scope: !2405)
!2408 = !DILocation(line: 448, column: 65, scope: !2405)
!2409 = !DILocation(line: 449, column: 83, scope: !2405)
!2410 = !DILocation(line: 449, column: 87, scope: !2405)
!2411 = !DILocation(line: 449, column: 92, scope: !2405)
!2412 = !DILocation(line: 449, column: 65, scope: !2405)
!2413 = !DILocation(line: 453, column: 84, scope: !2331)
!2414 = !DILocation(line: 453, column: 70, scope: !2331)
!2415 = !DILocation(line: 453, column: 64, scope: !2331)
!2416 = !DILocation(line: 453, column: 61, scope: !2331)
!2417 = !DILocation(line: 454, column: 79, scope: !2331)
!2418 = !DILocation(line: 454, column: 83, scope: !2331)
!2419 = !DILocation(line: 454, column: 88, scope: !2331)
!2420 = !DILocation(line: 454, column: 61, scope: !2331)
!2421 = !DILocation(line: 455, column: 13, scope: !2331)
!2422 = !DILocation(line: 460, column: 1, scope: !2320)
!2423 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !862, file: !862, line: 463, type: !2424, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2427)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!1918, !205, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!2427 = !{!2428, !2429, !2430, !2431, !2432}
!2428 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2423, file: !862, line: 463, type: !205)
!2429 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2423, file: !862, line: 463, type: !2426)
!2430 = !DILocalVariable(name: "no", scope: !2423, file: !862, line: 465, type: !1923)
!2431 = !DILocalVariable(name: "remainder", scope: !2423, file: !862, line: 466, type: !1923)
!2432 = !DILocalVariable(name: "temp", scope: !2423, file: !862, line: 467, type: !205)
!2433 = !DILocation(line: 0, scope: !2423)
!2434 = !DILocation(line: 468, column: 19, scope: !2423)
!2435 = !DILocation(line: 469, column: 17, scope: !2423)
!2436 = !DILocation(line: 471, column: 5, scope: !2423)
!2437 = !DILocation(line: 473, column: 20, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2423, file: !862, line: 471, column: 17)
!2439 = !DILocation(line: 474, column: 40, scope: !2438)
!2440 = !DILocation(line: 474, column: 26, scope: !2438)
!2441 = !DILocation(line: 474, column: 18, scope: !2438)
!2442 = !DILocation(line: 475, column: 40, scope: !2438)
!2443 = !DILocation(line: 475, column: 29, scope: !2438)
!2444 = !DILocation(line: 476, column: 13, scope: !2438)
!2445 = !DILocation(line: 478, column: 27, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !862, line: 478, column: 17)
!2447 = !DILocation(line: 478, column: 17, scope: !2438)
!2448 = !DILocation(line: 479, column: 24, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !862, line: 478, column: 33)
!2450 = !DILocation(line: 480, column: 44, scope: !2449)
!2451 = !DILocation(line: 480, column: 30, scope: !2449)
!2452 = !DILocation(line: 480, column: 22, scope: !2449)
!2453 = !DILocation(line: 481, column: 44, scope: !2449)
!2454 = !DILocation(line: 481, column: 33, scope: !2449)
!2455 = !DILocation(line: 482, column: 13, scope: !2449)
!2456 = !DILocation(line: 482, column: 24, scope: !2446)
!2457 = !DILocation(line: 483, column: 24, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !862, line: 482, column: 41)
!2459 = distinct !DILexicalBlock(scope: !2446, file: !862, line: 482, column: 24)
!2460 = !DILocation(line: 485, column: 53, scope: !2458)
!2461 = !DILocation(line: 485, column: 33, scope: !2458)
!2462 = !DILocation(line: 486, column: 13, scope: !2458)
!2463 = !DILocation(line: 487, column: 24, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !862, line: 486, column: 41)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !862, line: 486, column: 24)
!2466 = !DILocation(line: 489, column: 53, scope: !2464)
!2467 = !DILocation(line: 489, column: 33, scope: !2464)
!2468 = !DILocation(line: 490, column: 13, scope: !2464)
!2469 = !DILocation(line: 491, column: 24, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !862, line: 490, column: 41)
!2471 = distinct !DILexicalBlock(scope: !2465, file: !862, line: 490, column: 24)
!2472 = !DILocation(line: 493, column: 53, scope: !2470)
!2473 = !DILocation(line: 493, column: 33, scope: !2470)
!2474 = !DILocation(line: 494, column: 13, scope: !2470)
!2475 = !DILocation(line: 495, column: 24, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !862, line: 494, column: 41)
!2477 = distinct !DILexicalBlock(scope: !2471, file: !862, line: 494, column: 24)
!2478 = !DILocation(line: 497, column: 53, scope: !2476)
!2479 = !DILocation(line: 497, column: 33, scope: !2476)
!2480 = !DILocation(line: 498, column: 13, scope: !2476)
!2481 = !DILocation(line: 499, column: 24, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !862, line: 498, column: 41)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !862, line: 498, column: 24)
!2484 = !DILocation(line: 501, column: 53, scope: !2482)
!2485 = !DILocation(line: 501, column: 33, scope: !2482)
!2486 = !DILocation(line: 502, column: 13, scope: !2482)
!2487 = !DILocation(line: 505, column: 18, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2438, file: !862, line: 505, column: 17)
!2489 = !DILocation(line: 505, column: 17, scope: !2438)
!2490 = !DILocation(line: 506, column: 24, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !862, line: 505, column: 29)
!2492 = !DILocation(line: 508, column: 53, scope: !2491)
!2493 = !DILocation(line: 508, column: 33, scope: !2491)
!2494 = !DILocation(line: 509, column: 13, scope: !2491)
!2495 = !DILocation(line: 510, column: 24, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2488, file: !862, line: 509, column: 20)
!2497 = !DILocation(line: 511, column: 44, scope: !2496)
!2498 = !DILocation(line: 511, column: 30, scope: !2496)
!2499 = !DILocation(line: 511, column: 22, scope: !2496)
!2500 = !DILocation(line: 512, column: 44, scope: !2496)
!2501 = !DILocation(line: 512, column: 33, scope: !2496)
!2502 = !DILocation(line: 516, column: 20, scope: !2438)
!2503 = !DILocation(line: 517, column: 40, scope: !2438)
!2504 = !DILocation(line: 517, column: 26, scope: !2438)
!2505 = !DILocation(line: 517, column: 18, scope: !2438)
!2506 = !DILocation(line: 518, column: 40, scope: !2438)
!2507 = !DILocation(line: 518, column: 29, scope: !2438)
!2508 = !DILocation(line: 519, column: 13, scope: !2438)
!2509 = !DILocation(line: 0, scope: !2438)
!2510 = !DILocation(line: 524, column: 1, scope: !2423)
!2511 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !862, file: !862, line: 526, type: !2512, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !861, retainedNodes: !2515)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !205, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !865, line: 1212, baseType: !864)
!2515 = !{!2516, !2517, !2518, !2519}
!2516 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2511, file: !862, line: 526, type: !205)
!2517 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2511, file: !862, line: 526, type: !2514)
!2518 = !DILocalVariable(name: "no", scope: !2511, file: !862, line: 529, type: !1923)
!2519 = !DILocalVariable(name: "remainder", scope: !2511, file: !862, line: 530, type: !1923)
!2520 = !DILocation(line: 0, scope: !2511)
!2521 = !DILocation(line: 531, column: 19, scope: !2511)
!2522 = !DILocation(line: 532, column: 17, scope: !2511)
!2523 = !DILocation(line: 534, column: 9, scope: !2511)
!2524 = !DILocation(line: 536, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !862, line: 534, column: 45)
!2526 = distinct !DILexicalBlock(scope: !2511, file: !862, line: 534, column: 9)
!2527 = !DILocation(line: 538, column: 56, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !862, line: 536, column: 21)
!2529 = !DILocation(line: 538, column: 53, scope: !2528)
!2530 = !DILocation(line: 538, column: 47, scope: !2528)
!2531 = !DILocation(line: 539, column: 17, scope: !2528)
!2532 = !DILocation(line: 541, column: 56, scope: !2528)
!2533 = !DILocation(line: 541, column: 53, scope: !2528)
!2534 = !DILocation(line: 541, column: 47, scope: !2528)
!2535 = !DILocation(line: 542, column: 17, scope: !2528)
!2536 = !DILocation(line: 548, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !862, line: 547, column: 51)
!2538 = distinct !DILexicalBlock(scope: !2526, file: !862, line: 547, column: 16)
!2539 = !DILocation(line: 550, column: 57, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !862, line: 548, column: 21)
!2541 = !DILocation(line: 550, column: 54, scope: !2540)
!2542 = !DILocation(line: 550, column: 50, scope: !2540)
!2543 = !DILocation(line: 550, column: 47, scope: !2540)
!2544 = !DILocation(line: 551, column: 17, scope: !2540)
!2545 = !DILocation(line: 553, column: 57, scope: !2540)
!2546 = !DILocation(line: 553, column: 54, scope: !2540)
!2547 = !DILocation(line: 553, column: 50, scope: !2540)
!2548 = !DILocation(line: 553, column: 47, scope: !2540)
!2549 = !DILocation(line: 554, column: 17, scope: !2540)
!2550 = !DILocation(line: 560, column: 1, scope: !2511)
!2551 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !871, file: !871, line: 85, type: !2552, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !2556)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!2554, !2555, !229}
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !47, line: 79, baseType: null)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !874, line: 225, baseType: !873)
!2556 = !{!2557, !2558, !2559}
!2557 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2551, file: !871, line: 85, type: !2555)
!2558 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2551, file: !871, line: 85, type: !229)
!2559 = !DILocalVariable(name: "temp", scope: !2551, file: !871, line: 87, type: !136)
!2560 = !DILocation(line: 0, scope: !2551)
!2561 = !DILocation(line: 88, column: 5, scope: !2551)
!2562 = !DILocation(line: 91, column: 20, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2551, file: !871, line: 88, column: 24)
!2564 = !DILocation(line: 92, column: 18, scope: !2563)
!2565 = !DILocation(line: 93, column: 66, scope: !2563)
!2566 = !DILocation(line: 93, column: 63, scope: !2563)
!2567 = !DILocation(line: 93, column: 56, scope: !2563)
!2568 = !DILocation(line: 94, column: 13, scope: !2563)
!2569 = !DILocation(line: 97, column: 20, scope: !2563)
!2570 = !DILocation(line: 98, column: 18, scope: !2563)
!2571 = !DILocation(line: 99, column: 67, scope: !2563)
!2572 = !DILocation(line: 99, column: 74, scope: !2563)
!2573 = !DILocation(line: 99, column: 64, scope: !2563)
!2574 = !DILocation(line: 99, column: 56, scope: !2563)
!2575 = !DILocation(line: 100, column: 13, scope: !2563)
!2576 = !DILocation(line: 103, column: 20, scope: !2563)
!2577 = !DILocation(line: 104, column: 18, scope: !2563)
!2578 = !DILocation(line: 105, column: 67, scope: !2563)
!2579 = !DILocation(line: 105, column: 74, scope: !2563)
!2580 = !DILocation(line: 105, column: 64, scope: !2563)
!2581 = !DILocation(line: 105, column: 56, scope: !2563)
!2582 = !DILocation(line: 106, column: 13, scope: !2563)
!2583 = !DILocation(line: 109, column: 20, scope: !2563)
!2584 = !DILocation(line: 110, column: 18, scope: !2563)
!2585 = !DILocation(line: 111, column: 67, scope: !2563)
!2586 = !DILocation(line: 111, column: 74, scope: !2563)
!2587 = !DILocation(line: 111, column: 64, scope: !2563)
!2588 = !DILocation(line: 111, column: 56, scope: !2563)
!2589 = !DILocation(line: 112, column: 13, scope: !2563)
!2590 = !DILocation(line: 115, column: 20, scope: !2563)
!2591 = !DILocation(line: 116, column: 18, scope: !2563)
!2592 = !DILocation(line: 117, column: 67, scope: !2563)
!2593 = !DILocation(line: 117, column: 74, scope: !2563)
!2594 = !DILocation(line: 117, column: 64, scope: !2563)
!2595 = !DILocation(line: 117, column: 56, scope: !2563)
!2596 = !DILocation(line: 118, column: 13, scope: !2563)
!2597 = !DILocation(line: 121, column: 20, scope: !2563)
!2598 = !DILocation(line: 122, column: 18, scope: !2563)
!2599 = !DILocation(line: 123, column: 67, scope: !2563)
!2600 = !DILocation(line: 123, column: 74, scope: !2563)
!2601 = !DILocation(line: 123, column: 64, scope: !2563)
!2602 = !DILocation(line: 123, column: 56, scope: !2563)
!2603 = !DILocation(line: 124, column: 13, scope: !2563)
!2604 = !DILocation(line: 127, column: 20, scope: !2563)
!2605 = !DILocation(line: 128, column: 18, scope: !2563)
!2606 = !DILocation(line: 129, column: 67, scope: !2563)
!2607 = !DILocation(line: 129, column: 74, scope: !2563)
!2608 = !DILocation(line: 129, column: 64, scope: !2563)
!2609 = !DILocation(line: 129, column: 56, scope: !2563)
!2610 = !DILocation(line: 130, column: 13, scope: !2563)
!2611 = !DILocation(line: 133, column: 20, scope: !2563)
!2612 = !DILocation(line: 134, column: 18, scope: !2563)
!2613 = !DILocation(line: 135, column: 67, scope: !2563)
!2614 = !DILocation(line: 135, column: 74, scope: !2563)
!2615 = !DILocation(line: 135, column: 64, scope: !2563)
!2616 = !DILocation(line: 135, column: 56, scope: !2563)
!2617 = !DILocation(line: 136, column: 13, scope: !2563)
!2618 = !DILocation(line: 139, column: 20, scope: !2563)
!2619 = !DILocation(line: 140, column: 18, scope: !2563)
!2620 = !DILocation(line: 141, column: 67, scope: !2563)
!2621 = !DILocation(line: 141, column: 64, scope: !2563)
!2622 = !DILocation(line: 141, column: 56, scope: !2563)
!2623 = !DILocation(line: 142, column: 13, scope: !2563)
!2624 = !DILocation(line: 145, column: 20, scope: !2563)
!2625 = !DILocation(line: 146, column: 18, scope: !2563)
!2626 = !DILocation(line: 147, column: 67, scope: !2563)
!2627 = !DILocation(line: 147, column: 74, scope: !2563)
!2628 = !DILocation(line: 147, column: 64, scope: !2563)
!2629 = !DILocation(line: 147, column: 56, scope: !2563)
!2630 = !DILocation(line: 148, column: 13, scope: !2563)
!2631 = !DILocation(line: 151, column: 20, scope: !2563)
!2632 = !DILocation(line: 152, column: 18, scope: !2563)
!2633 = !DILocation(line: 153, column: 67, scope: !2563)
!2634 = !DILocation(line: 153, column: 74, scope: !2563)
!2635 = !DILocation(line: 153, column: 64, scope: !2563)
!2636 = !DILocation(line: 153, column: 56, scope: !2563)
!2637 = !DILocation(line: 154, column: 13, scope: !2563)
!2638 = !DILocation(line: 157, column: 20, scope: !2563)
!2639 = !DILocation(line: 158, column: 18, scope: !2563)
!2640 = !DILocation(line: 159, column: 67, scope: !2563)
!2641 = !DILocation(line: 159, column: 74, scope: !2563)
!2642 = !DILocation(line: 159, column: 64, scope: !2563)
!2643 = !DILocation(line: 159, column: 56, scope: !2563)
!2644 = !DILocation(line: 160, column: 29, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2563, file: !871, line: 160, column: 17)
!2646 = !DILocation(line: 161, column: 17, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !871, line: 160, column: 60)
!2648 = !DILocation(line: 162, column: 13, scope: !2647)
!2649 = !DILocation(line: 166, column: 20, scope: !2563)
!2650 = !DILocation(line: 167, column: 18, scope: !2563)
!2651 = !DILocation(line: 168, column: 67, scope: !2563)
!2652 = !DILocation(line: 168, column: 74, scope: !2563)
!2653 = !DILocation(line: 168, column: 64, scope: !2563)
!2654 = !DILocation(line: 168, column: 56, scope: !2563)
!2655 = !DILocation(line: 169, column: 29, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2563, file: !871, line: 169, column: 17)
!2657 = !DILocation(line: 170, column: 17, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !871, line: 169, column: 45)
!2659 = !DILocation(line: 171, column: 13, scope: !2658)
!2660 = !DILocation(line: 175, column: 20, scope: !2563)
!2661 = !DILocation(line: 176, column: 18, scope: !2563)
!2662 = !DILocation(line: 177, column: 67, scope: !2563)
!2663 = !DILocation(line: 177, column: 74, scope: !2563)
!2664 = !DILocation(line: 177, column: 64, scope: !2563)
!2665 = !DILocation(line: 177, column: 56, scope: !2563)
!2666 = !DILocation(line: 178, column: 19, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2563, file: !871, line: 178, column: 17)
!2668 = !DILocation(line: 178, column: 17, scope: !2563)
!2669 = !DILocation(line: 179, column: 17, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !871, line: 178, column: 30)
!2671 = !DILocation(line: 180, column: 13, scope: !2670)
!2672 = !DILocation(line: 184, column: 20, scope: !2563)
!2673 = !DILocation(line: 185, column: 18, scope: !2563)
!2674 = !DILocation(line: 186, column: 67, scope: !2563)
!2675 = !DILocation(line: 186, column: 74, scope: !2563)
!2676 = !DILocation(line: 186, column: 64, scope: !2563)
!2677 = !DILocation(line: 186, column: 56, scope: !2563)
!2678 = !DILocation(line: 187, column: 29, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2563, file: !871, line: 187, column: 17)
!2680 = !DILocation(line: 188, column: 17, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2679, file: !871, line: 187, column: 45)
!2682 = !DILocation(line: 189, column: 13, scope: !2681)
!2683 = !DILocation(line: 193, column: 20, scope: !2563)
!2684 = !DILocation(line: 194, column: 18, scope: !2563)
!2685 = !DILocation(line: 195, column: 67, scope: !2563)
!2686 = !DILocation(line: 195, column: 74, scope: !2563)
!2687 = !DILocation(line: 195, column: 64, scope: !2563)
!2688 = !DILocation(line: 195, column: 56, scope: !2563)
!2689 = !DILocation(line: 196, column: 29, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2563, file: !871, line: 196, column: 17)
!2691 = !DILocation(line: 197, column: 17, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2690, file: !871, line: 196, column: 45)
!2693 = !DILocation(line: 198, column: 13, scope: !2692)
!2694 = !DILocation(line: 202, column: 20, scope: !2563)
!2695 = !DILocation(line: 203, column: 18, scope: !2563)
!2696 = !DILocation(line: 204, column: 67, scope: !2563)
!2697 = !DILocation(line: 204, column: 64, scope: !2563)
!2698 = !DILocation(line: 204, column: 56, scope: !2563)
!2699 = !DILocation(line: 205, column: 29, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2563, file: !871, line: 205, column: 17)
!2701 = !DILocation(line: 206, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !871, line: 205, column: 45)
!2703 = !DILocation(line: 207, column: 13, scope: !2702)
!2704 = !DILocation(line: 211, column: 20, scope: !2563)
!2705 = !DILocation(line: 212, column: 18, scope: !2563)
!2706 = !DILocation(line: 213, column: 67, scope: !2563)
!2707 = !DILocation(line: 213, column: 74, scope: !2563)
!2708 = !DILocation(line: 213, column: 64, scope: !2563)
!2709 = !DILocation(line: 213, column: 56, scope: !2563)
!2710 = !DILocation(line: 214, column: 13, scope: !2563)
!2711 = !DILocation(line: 217, column: 20, scope: !2563)
!2712 = !DILocation(line: 218, column: 18, scope: !2563)
!2713 = !DILocation(line: 219, column: 67, scope: !2563)
!2714 = !DILocation(line: 219, column: 74, scope: !2563)
!2715 = !DILocation(line: 219, column: 64, scope: !2563)
!2716 = !DILocation(line: 219, column: 56, scope: !2563)
!2717 = !DILocation(line: 220, column: 13, scope: !2563)
!2718 = !DILocation(line: 223, column: 20, scope: !2563)
!2719 = !DILocation(line: 224, column: 18, scope: !2563)
!2720 = !DILocation(line: 225, column: 67, scope: !2563)
!2721 = !DILocation(line: 225, column: 74, scope: !2563)
!2722 = !DILocation(line: 225, column: 64, scope: !2563)
!2723 = !DILocation(line: 225, column: 56, scope: !2563)
!2724 = !DILocation(line: 226, column: 13, scope: !2563)
!2725 = !DILocation(line: 229, column: 20, scope: !2563)
!2726 = !DILocation(line: 230, column: 18, scope: !2563)
!2727 = !DILocation(line: 231, column: 67, scope: !2563)
!2728 = !DILocation(line: 231, column: 74, scope: !2563)
!2729 = !DILocation(line: 231, column: 64, scope: !2563)
!2730 = !DILocation(line: 231, column: 56, scope: !2563)
!2731 = !DILocation(line: 232, column: 13, scope: !2563)
!2732 = !DILocation(line: 235, column: 20, scope: !2563)
!2733 = !DILocation(line: 236, column: 18, scope: !2563)
!2734 = !DILocation(line: 237, column: 66, scope: !2563)
!2735 = !DILocation(line: 237, column: 73, scope: !2563)
!2736 = !DILocation(line: 237, column: 63, scope: !2563)
!2737 = !DILocation(line: 237, column: 56, scope: !2563)
!2738 = !DILocation(line: 238, column: 13, scope: !2563)
!2739 = !DILocation(line: 241, column: 20, scope: !2563)
!2740 = !DILocation(line: 242, column: 18, scope: !2563)
!2741 = !DILocation(line: 243, column: 67, scope: !2563)
!2742 = !DILocation(line: 243, column: 74, scope: !2563)
!2743 = !DILocation(line: 243, column: 64, scope: !2563)
!2744 = !DILocation(line: 243, column: 56, scope: !2563)
!2745 = !DILocation(line: 244, column: 13, scope: !2563)
!2746 = !DILocation(line: 247, column: 20, scope: !2563)
!2747 = !DILocation(line: 248, column: 18, scope: !2563)
!2748 = !DILocation(line: 249, column: 67, scope: !2563)
!2749 = !DILocation(line: 249, column: 74, scope: !2563)
!2750 = !DILocation(line: 249, column: 64, scope: !2563)
!2751 = !DILocation(line: 249, column: 56, scope: !2563)
!2752 = !DILocation(line: 250, column: 13, scope: !2563)
!2753 = !DILocation(line: 253, column: 20, scope: !2563)
!2754 = !DILocation(line: 254, column: 18, scope: !2563)
!2755 = !DILocation(line: 255, column: 67, scope: !2563)
!2756 = !DILocation(line: 255, column: 74, scope: !2563)
!2757 = !DILocation(line: 255, column: 64, scope: !2563)
!2758 = !DILocation(line: 255, column: 56, scope: !2563)
!2759 = !DILocation(line: 256, column: 13, scope: !2563)
!2760 = !DILocation(line: 259, column: 20, scope: !2563)
!2761 = !DILocation(line: 260, column: 18, scope: !2563)
!2762 = !DILocation(line: 261, column: 67, scope: !2563)
!2763 = !DILocation(line: 261, column: 74, scope: !2563)
!2764 = !DILocation(line: 261, column: 64, scope: !2563)
!2765 = !DILocation(line: 261, column: 56, scope: !2563)
!2766 = !DILocation(line: 262, column: 13, scope: !2563)
!2767 = !DILocation(line: 265, column: 20, scope: !2563)
!2768 = !DILocation(line: 266, column: 18, scope: !2563)
!2769 = !DILocation(line: 267, column: 67, scope: !2563)
!2770 = !DILocation(line: 267, column: 74, scope: !2563)
!2771 = !DILocation(line: 267, column: 64, scope: !2563)
!2772 = !DILocation(line: 267, column: 56, scope: !2563)
!2773 = !DILocation(line: 268, column: 13, scope: !2563)
!2774 = !DILocation(line: 271, column: 20, scope: !2563)
!2775 = !DILocation(line: 272, column: 18, scope: !2563)
!2776 = !DILocation(line: 273, column: 67, scope: !2563)
!2777 = !DILocation(line: 273, column: 74, scope: !2563)
!2778 = !DILocation(line: 273, column: 64, scope: !2563)
!2779 = !DILocation(line: 273, column: 56, scope: !2563)
!2780 = !DILocation(line: 274, column: 13, scope: !2563)
!2781 = !DILocation(line: 278, column: 1, scope: !2551)
!2782 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !952, file: !952, line: 47, type: !1146, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !2783)
!2783 = !{!2784}
!2784 = !DILocalVariable(name: "addr", arg: 1, scope: !2782, file: !952, line: 47, type: !136)
!2785 = !DILocation(line: 0, scope: !2782)
!2786 = !DILocation(line: 49, column: 15, scope: !2782)
!2787 = !DILocation(line: 51, column: 5, scope: !2782)
!2788 = !{i64 2624}
!2789 = !DILocation(line: 52, column: 5, scope: !2782)
!2790 = !{i64 2651}
!2791 = !DILocation(line: 53, column: 1, scope: !2782)
!2792 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !952, file: !952, line: 56, type: !2793, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !7}
!2795 = !{!2796}
!2796 = !DILocalVariable(name: "source", arg: 1, scope: !2792, file: !952, line: 56, type: !7)
!2797 = !DILocation(line: 0, scope: !2792)
!2798 = !DILocation(line: 58, column: 16, scope: !2792)
!2799 = !DILocation(line: 59, column: 1, scope: !2792)
!2800 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !952, file: !952, line: 61, type: !1115, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !2801)
!2801 = !{!2802}
!2802 = !DILocalVariable(name: "mask", scope: !2800, file: !952, line: 63, type: !136)
!2803 = !DILocation(line: 470, column: 3, scope: !2804, inlinedAt: !2807)
!2804 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1114, file: !1114, line: 466, type: !1115, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !2805)
!2805 = !{!2806}
!2806 = !DILocalVariable(name: "result", scope: !2804, file: !1114, line: 468, type: !136)
!2807 = distinct !DILocation(line: 64, column: 5, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2800, file: !952, line: 64, column: 5)
!2809 = !{i64 302173}
!2810 = !DILocation(line: 0, scope: !2804, inlinedAt: !2807)
!2811 = !DILocation(line: 0, scope: !2800)
!2812 = !DILocation(line: 330, column: 3, scope: !2813, inlinedAt: !2814)
!2813 = distinct !DISubprogram(name: "__disable_irq", scope: !1114, file: !1114, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !1083)
!2814 = distinct !DILocation(line: 64, column: 5, scope: !2808)
!2815 = !{i64 298837}
!2816 = !DILocation(line: 65, column: 5, scope: !2800)
!2817 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !952, file: !952, line: 68, type: !1146, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !2818)
!2818 = !{!2819}
!2819 = !DILocalVariable(name: "mask", arg: 1, scope: !2817, file: !952, line: 68, type: !136)
!2820 = !DILocation(line: 0, scope: !2817)
!2821 = !DILocalVariable(name: "priMask", arg: 1, scope: !2822, file: !1114, line: 481, type: !136)
!2822 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1114, file: !1114, line: 481, type: !1146, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !951, retainedNodes: !2823)
!2823 = !{!2821}
!2824 = !DILocation(line: 0, scope: !2822, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 70, column: 5, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2817, file: !952, line: 70, column: 5)
!2827 = !DILocation(line: 483, column: 3, scope: !2822, inlinedAt: !2825)
!2828 = !{i64 302491}
!2829 = !DILocation(line: 71, column: 1, scope: !2817)
!2830 = distinct !DISubprogram(name: "pinmux_config", scope: !997, file: !997, line: 54, type: !2831, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!331, !1068, !136}
!2833 = !{!2834, !2835, !2836}
!2834 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2830, file: !997, line: 54, type: !1068)
!2835 = !DILocalVariable(name: "function", arg: 2, scope: !2830, file: !997, line: 54, type: !136)
!2836 = !DILocalVariable(name: "ePadIndex", scope: !2830, file: !997, line: 56, type: !2555)
!2837 = !DILocation(line: 0, scope: !2830)
!2838 = !DILocation(line: 60, column: 5, scope: !2830)
!2839 = !DILocation(line: 205, column: 38, scope: !2830)
!2840 = !DILocation(line: 205, column: 5, scope: !2830)
!2841 = !DILocation(line: 207, column: 5, scope: !2830)
!2842 = !DILocation(line: 208, column: 1, scope: !2830)
!2843 = distinct !DISubprogram(name: "top_xtal_init", scope: !201, file: !201, line: 52, type: !181, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2844)
!2844 = !{!2845, !2846}
!2845 = !DILocalVariable(name: "u4RegVal", scope: !2843, file: !201, line: 54, type: !136)
!2846 = !DILocalVariable(name: "reg", scope: !2843, file: !201, line: 55, type: !748)
!2847 = !DILocation(line: 0, scope: !2843)
!2848 = !DILocation(line: 55, column: 25, scope: !2843)
!2849 = !DILocation(line: 56, column: 16, scope: !2843)
!2850 = !DILocation(line: 56, column: 23, scope: !2843)
!2851 = !DILocation(line: 58, column: 16, scope: !2843)
!2852 = !DILocation(line: 61, column: 5, scope: !2843)
!2853 = !DILocation(line: 59, column: 14, scope: !2843)
!2854 = !DILocation(line: 0, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2843, file: !201, line: 61, column: 18)
!2856 = !DILocation(line: 87, column: 38, scope: !2843)
!2857 = !DILocation(line: 88, column: 21, scope: !2843)
!2858 = !DILocation(line: 88, column: 19, scope: !2843)
!2859 = !DILocation(line: 89, column: 5, scope: !2843)
!2860 = !DILocation(line: 90, column: 17, scope: !2843)
!2861 = !DILocation(line: 90, column: 33, scope: !2843)
!2862 = !DILocation(line: 90, column: 5, scope: !2843)
!2863 = !DILocation(line: 91, column: 1, scope: !2843)
!2864 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !201, file: !201, line: 98, type: !1115, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1083)
!2865 = !DILocation(line: 100, column: 12, scope: !2864)
!2866 = !DILocation(line: 100, column: 5, scope: !2864)
!2867 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !201, file: !201, line: 108, type: !1115, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1083)
!2868 = !DILocation(line: 110, column: 12, scope: !2867)
!2869 = !DILocation(line: 110, column: 5, scope: !2867)
!2870 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !201, file: !201, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2871)
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "reg", scope: !2870, file: !201, line: 120, type: !207)
!2873 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2870, file: !201, line: 121, type: !206)
!2874 = !DILocation(line: 120, column: 5, scope: !2870)
!2875 = !DILocation(line: 120, column: 23, scope: !2870)
!2876 = !DILocation(line: 0, scope: !2870)
!2877 = !DILocation(line: 123, column: 11, scope: !2870)
!2878 = !DILocation(line: 123, column: 9, scope: !2870)
!2879 = !DILocation(line: 124, column: 12, scope: !2870)
!2880 = !DILocation(line: 124, column: 16, scope: !2870)
!2881 = !DILocation(line: 124, column: 39, scope: !2870)
!2882 = !DILocation(line: 124, column: 9, scope: !2870)
!2883 = !DILocation(line: 126, column: 9, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2870, file: !201, line: 126, column: 9)
!2885 = !DILocation(line: 126, column: 13, scope: !2884)
!2886 = !DILocation(line: 126, column: 9, scope: !2870)
!2887 = !DILocation(line: 127, column: 15, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !201, line: 126, column: 47)
!2889 = !DILocation(line: 127, column: 13, scope: !2888)
!2890 = !DILocation(line: 128, column: 15, scope: !2888)
!2891 = !DILocation(line: 128, column: 19, scope: !2888)
!2892 = !DILocation(line: 128, column: 13, scope: !2888)
!2893 = !DILocation(line: 129, column: 15, scope: !2888)
!2894 = !DILocation(line: 129, column: 19, scope: !2888)
!2895 = !DILocation(line: 129, column: 13, scope: !2888)
!2896 = !DILocation(line: 130, column: 46, scope: !2888)
!2897 = !DILocation(line: 130, column: 9, scope: !2888)
!2898 = !DILocation(line: 132, column: 9, scope: !2888)
!2899 = !DILocation(line: 133, column: 19, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2888, file: !201, line: 132, column: 12)
!2901 = !DILocation(line: 133, column: 17, scope: !2900)
!2902 = !DILocation(line: 134, column: 19, scope: !2900)
!2903 = !DILocation(line: 134, column: 23, scope: !2900)
!2904 = !DILocation(line: 134, column: 17, scope: !2900)
!2905 = !DILocation(line: 135, column: 19, scope: !2888)
!2906 = !DILocation(line: 135, column: 18, scope: !2888)
!2907 = !DILocation(line: 135, column: 9, scope: !2900)
!2908 = distinct !{!2908, !2898, !2909}
!2909 = !DILocation(line: 135, column: 22, scope: !2888)
!2910 = !DILocation(line: 138, column: 1, scope: !2870)
!2911 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2912, file: !2912, line: 176, type: !2913, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2917)
!2912 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!136, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2917 = !{!2918}
!2918 = !DILocalVariable(name: "Register", arg: 1, scope: !2911, file: !2912, line: 176, type: !2915)
!2919 = !DILocation(line: 0, scope: !2911)
!2920 = !DILocation(line: 178, column: 13, scope: !2911)
!2921 = !DILocation(line: 178, column: 12, scope: !2911)
!2922 = !DILocation(line: 178, column: 5, scope: !2911)
!2923 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2912, file: !2912, line: 171, type: !2924, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2915, !136}
!2926 = !{!2927, !2928}
!2927 = !DILocalVariable(name: "Register", arg: 1, scope: !2923, file: !2912, line: 171, type: !2915)
!2928 = !DILocalVariable(name: "Value", arg: 2, scope: !2923, file: !2912, line: 171, type: !136)
!2929 = !DILocation(line: 0, scope: !2923)
!2930 = !DILocation(line: 173, column: 6, scope: !2923)
!2931 = !DILocation(line: 173, column: 36, scope: !2923)
!2932 = !DILocation(line: 174, column: 1, scope: !2923)
!2933 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !201, file: !201, line: 145, type: !1088, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2934)
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2933, file: !201, line: 145, type: !128)
!2936 = !DILocalVariable(name: "reg", scope: !2933, file: !201, line: 147, type: !207)
!2937 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2933, file: !201, line: 148, type: !206)
!2938 = !DILocation(line: 0, scope: !2933)
!2939 = !DILocation(line: 147, column: 5, scope: !2933)
!2940 = !DILocation(line: 147, column: 23, scope: !2933)
!2941 = !DILocation(line: 150, column: 11, scope: !2933)
!2942 = !DILocation(line: 150, column: 9, scope: !2933)
!2943 = !DILocation(line: 151, column: 12, scope: !2933)
!2944 = !DILocation(line: 151, column: 16, scope: !2933)
!2945 = !DILocation(line: 151, column: 39, scope: !2933)
!2946 = !DILocation(line: 151, column: 9, scope: !2933)
!2947 = !DILocation(line: 153, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2933, file: !201, line: 153, column: 9)
!2949 = !DILocation(line: 153, column: 13, scope: !2948)
!2950 = !DILocation(line: 153, column: 9, scope: !2933)
!2951 = !DILocation(line: 154, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !201, line: 153, column: 45)
!2953 = !DILocation(line: 154, column: 13, scope: !2952)
!2954 = !DILocation(line: 155, column: 15, scope: !2952)
!2955 = !DILocation(line: 155, column: 19, scope: !2952)
!2956 = !DILocation(line: 155, column: 13, scope: !2952)
!2957 = !DILocation(line: 156, column: 15, scope: !2952)
!2958 = !DILocation(line: 156, column: 19, scope: !2952)
!2959 = !DILocation(line: 156, column: 13, scope: !2952)
!2960 = !DILocation(line: 157, column: 15, scope: !2952)
!2961 = !DILocation(line: 157, column: 13, scope: !2952)
!2962 = !DILocation(line: 158, column: 46, scope: !2952)
!2963 = !DILocation(line: 158, column: 9, scope: !2952)
!2964 = !DILocation(line: 160, column: 15, scope: !2952)
!2965 = !DILocation(line: 160, column: 13, scope: !2952)
!2966 = !DILocation(line: 161, column: 15, scope: !2952)
!2967 = !DILocation(line: 161, column: 19, scope: !2952)
!2968 = !DILocation(line: 161, column: 13, scope: !2952)
!2969 = !DILocation(line: 162, column: 15, scope: !2952)
!2970 = !DILocation(line: 162, column: 19, scope: !2952)
!2971 = !DILocation(line: 162, column: 13, scope: !2952)
!2972 = !DILocation(line: 163, column: 15, scope: !2952)
!2973 = !DILocation(line: 163, column: 19, scope: !2952)
!2974 = !DILocation(line: 163, column: 13, scope: !2952)
!2975 = !DILocation(line: 164, column: 46, scope: !2952)
!2976 = !DILocation(line: 164, column: 9, scope: !2952)
!2977 = !DILocation(line: 166, column: 9, scope: !2952)
!2978 = !DILocation(line: 167, column: 19, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2952, file: !201, line: 166, column: 12)
!2980 = !DILocation(line: 167, column: 17, scope: !2979)
!2981 = !DILocation(line: 168, column: 19, scope: !2979)
!2982 = !DILocation(line: 168, column: 23, scope: !2979)
!2983 = !DILocation(line: 168, column: 17, scope: !2979)
!2984 = !DILocation(line: 169, column: 19, scope: !2952)
!2985 = !DILocation(line: 169, column: 18, scope: !2952)
!2986 = !DILocation(line: 169, column: 9, scope: !2979)
!2987 = distinct !{!2987, !2977, !2988}
!2988 = !DILocation(line: 169, column: 22, scope: !2952)
!2989 = !DILocation(line: 171, column: 15, scope: !2952)
!2990 = !DILocation(line: 171, column: 13, scope: !2952)
!2991 = !DILocation(line: 172, column: 15, scope: !2952)
!2992 = !DILocation(line: 172, column: 19, scope: !2952)
!2993 = !DILocation(line: 172, column: 13, scope: !2952)
!2994 = !DILocation(line: 173, column: 15, scope: !2952)
!2995 = !DILocation(line: 173, column: 19, scope: !2952)
!2996 = !DILocation(line: 173, column: 13, scope: !2952)
!2997 = !DILocation(line: 174, column: 5, scope: !2952)
!2998 = !DILocation(line: 176, column: 11, scope: !2933)
!2999 = !DILocation(line: 176, column: 9, scope: !2933)
!3000 = !DILocation(line: 177, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2933, file: !201, line: 177, column: 9)
!3002 = !DILocation(line: 0, scope: !3001)
!3003 = !DILocation(line: 177, column: 9, scope: !2933)
!3004 = !DILocation(line: 178, column: 19, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !201, line: 177, column: 17)
!3006 = !DILocation(line: 178, column: 13, scope: !3005)
!3007 = !DILocation(line: 179, column: 5, scope: !3005)
!3008 = !DILocation(line: 180, column: 13, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3001, file: !201, line: 179, column: 12)
!3010 = !DILocation(line: 182, column: 42, scope: !2933)
!3011 = !DILocation(line: 182, column: 5, scope: !2933)
!3012 = !DILocation(line: 184, column: 1, scope: !2933)
!3013 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !201, file: !201, line: 191, type: !181, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3014)
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "reg", scope: !3013, file: !201, line: 193, type: !207)
!3016 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3013, file: !201, line: 194, type: !206)
!3017 = !DILocation(line: 193, column: 5, scope: !3013)
!3018 = !DILocation(line: 193, column: 23, scope: !3013)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 196, column: 11, scope: !3013)
!3021 = !DILocation(line: 196, column: 9, scope: !3013)
!3022 = !DILocation(line: 197, column: 11, scope: !3013)
!3023 = !DILocation(line: 197, column: 15, scope: !3013)
!3024 = !DILocation(line: 197, column: 9, scope: !3013)
!3025 = !DILocation(line: 198, column: 11, scope: !3013)
!3026 = !DILocation(line: 198, column: 15, scope: !3013)
!3027 = !DILocation(line: 198, column: 9, scope: !3013)
!3028 = !DILocation(line: 199, column: 11, scope: !3013)
!3029 = !DILocation(line: 199, column: 9, scope: !3013)
!3030 = !DILocation(line: 200, column: 42, scope: !3013)
!3031 = !DILocation(line: 200, column: 5, scope: !3013)
!3032 = !DILocation(line: 202, column: 11, scope: !3013)
!3033 = !DILocation(line: 202, column: 9, scope: !3013)
!3034 = !DILocation(line: 203, column: 11, scope: !3013)
!3035 = !DILocation(line: 203, column: 15, scope: !3013)
!3036 = !DILocation(line: 203, column: 9, scope: !3013)
!3037 = !DILocation(line: 204, column: 11, scope: !3013)
!3038 = !DILocation(line: 204, column: 15, scope: !3013)
!3039 = !DILocation(line: 204, column: 9, scope: !3013)
!3040 = !DILocation(line: 205, column: 11, scope: !3013)
!3041 = !DILocation(line: 205, column: 9, scope: !3013)
!3042 = !DILocation(line: 206, column: 42, scope: !3013)
!3043 = !DILocation(line: 206, column: 5, scope: !3013)
!3044 = !DILocation(line: 209, column: 1, scope: !3013)
!3045 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !201, file: !201, line: 216, type: !181, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3046)
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "reg", scope: !3045, file: !201, line: 218, type: !207)
!3048 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3045, file: !201, line: 219, type: !206)
!3049 = !DILocation(line: 218, column: 5, scope: !3045)
!3050 = !DILocation(line: 218, column: 23, scope: !3045)
!3051 = !DILocation(line: 0, scope: !3045)
!3052 = !DILocation(line: 222, column: 11, scope: !3045)
!3053 = !DILocation(line: 222, column: 9, scope: !3045)
!3054 = !DILocation(line: 223, column: 11, scope: !3045)
!3055 = !DILocation(line: 223, column: 15, scope: !3045)
!3056 = !DILocation(line: 223, column: 9, scope: !3045)
!3057 = !DILocation(line: 224, column: 11, scope: !3045)
!3058 = !DILocation(line: 224, column: 9, scope: !3045)
!3059 = !DILocation(line: 225, column: 39, scope: !3045)
!3060 = !DILocation(line: 225, column: 5, scope: !3045)
!3061 = !DILocation(line: 228, column: 11, scope: !3045)
!3062 = !DILocation(line: 228, column: 9, scope: !3045)
!3063 = !DILocation(line: 229, column: 11, scope: !3045)
!3064 = !DILocation(line: 229, column: 15, scope: !3045)
!3065 = !DILocation(line: 229, column: 9, scope: !3045)
!3066 = !DILocation(line: 230, column: 11, scope: !3045)
!3067 = !DILocation(line: 230, column: 9, scope: !3045)
!3068 = !DILocation(line: 231, column: 39, scope: !3045)
!3069 = !DILocation(line: 231, column: 5, scope: !3045)
!3070 = !DILocation(line: 233, column: 5, scope: !3045)
!3071 = !DILocation(line: 233, column: 12, scope: !3045)
!3072 = !DILocation(line: 233, column: 19, scope: !3045)
!3073 = !DILocation(line: 233, column: 16, scope: !3045)
!3074 = distinct !{!3074, !3070, !3075}
!3075 = !DILocation(line: 233, column: 52, scope: !3045)
!3076 = !DILocation(line: 235, column: 21, scope: !3045)
!3077 = !DILocation(line: 235, column: 19, scope: !3045)
!3078 = !DILocation(line: 236, column: 5, scope: !3045)
!3079 = !DILocation(line: 237, column: 17, scope: !3045)
!3080 = !DILocation(line: 237, column: 33, scope: !3045)
!3081 = !DILocation(line: 237, column: 5, scope: !3045)
!3082 = !DILocation(line: 239, column: 1, scope: !3045)
!3083 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !201, file: !201, line: 246, type: !181, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3084)
!3084 = !{!3085, !3086}
!3085 = !DILocalVariable(name: "reg", scope: !3083, file: !201, line: 248, type: !207)
!3086 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3083, file: !201, line: 249, type: !206)
!3087 = !DILocation(line: 248, column: 5, scope: !3083)
!3088 = !DILocation(line: 248, column: 23, scope: !3083)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 252, column: 5, scope: !3083)
!3091 = !DILocation(line: 255, column: 11, scope: !3083)
!3092 = !DILocation(line: 255, column: 9, scope: !3083)
!3093 = !DILocation(line: 256, column: 11, scope: !3083)
!3094 = !DILocation(line: 256, column: 15, scope: !3083)
!3095 = !DILocation(line: 256, column: 9, scope: !3083)
!3096 = !DILocation(line: 257, column: 11, scope: !3083)
!3097 = !DILocation(line: 257, column: 15, scope: !3083)
!3098 = !DILocation(line: 257, column: 9, scope: !3083)
!3099 = !DILocation(line: 258, column: 39, scope: !3083)
!3100 = !DILocation(line: 258, column: 5, scope: !3083)
!3101 = !DILocation(line: 260, column: 5, scope: !3083)
!3102 = !DILocation(line: 260, column: 12, scope: !3083)
!3103 = !DILocation(line: 260, column: 19, scope: !3083)
!3104 = !DILocation(line: 260, column: 16, scope: !3083)
!3105 = distinct !{!3105, !3101, !3106}
!3106 = !DILocation(line: 260, column: 52, scope: !3083)
!3107 = !DILocation(line: 263, column: 11, scope: !3083)
!3108 = !DILocation(line: 263, column: 9, scope: !3083)
!3109 = !DILocation(line: 264, column: 11, scope: !3083)
!3110 = !DILocation(line: 264, column: 15, scope: !3083)
!3111 = !DILocation(line: 264, column: 9, scope: !3083)
!3112 = !DILocation(line: 265, column: 11, scope: !3083)
!3113 = !DILocation(line: 265, column: 15, scope: !3083)
!3114 = !DILocation(line: 265, column: 9, scope: !3083)
!3115 = !DILocation(line: 266, column: 39, scope: !3083)
!3116 = !DILocation(line: 266, column: 5, scope: !3083)
!3117 = !DILocation(line: 269, column: 11, scope: !3083)
!3118 = !DILocation(line: 269, column: 9, scope: !3083)
!3119 = !DILocation(line: 270, column: 11, scope: !3083)
!3120 = !DILocation(line: 270, column: 15, scope: !3083)
!3121 = !DILocation(line: 270, column: 9, scope: !3083)
!3122 = !DILocation(line: 271, column: 11, scope: !3083)
!3123 = !DILocation(line: 271, column: 15, scope: !3083)
!3124 = !DILocation(line: 271, column: 9, scope: !3083)
!3125 = !DILocation(line: 272, column: 39, scope: !3083)
!3126 = !DILocation(line: 272, column: 5, scope: !3083)
!3127 = !DILocation(line: 273, column: 19, scope: !3083)
!3128 = !DILocation(line: 274, column: 5, scope: !3083)
!3129 = !DILocation(line: 275, column: 17, scope: !3083)
!3130 = !DILocation(line: 275, column: 33, scope: !3083)
!3131 = !DILocation(line: 275, column: 5, scope: !3083)
!3132 = !DILocation(line: 277, column: 1, scope: !3083)
!3133 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !201, file: !201, line: 284, type: !181, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3134)
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "reg", scope: !3133, file: !201, line: 286, type: !207)
!3136 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3133, file: !201, line: 287, type: !206)
!3137 = !DILocation(line: 286, column: 5, scope: !3133)
!3138 = !DILocation(line: 286, column: 23, scope: !3133)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 290, column: 5, scope: !3133)
!3141 = !DILocation(line: 293, column: 11, scope: !3133)
!3142 = !DILocation(line: 293, column: 9, scope: !3133)
!3143 = !DILocation(line: 294, column: 11, scope: !3133)
!3144 = !DILocation(line: 294, column: 15, scope: !3133)
!3145 = !DILocation(line: 294, column: 9, scope: !3133)
!3146 = !DILocation(line: 295, column: 11, scope: !3133)
!3147 = !DILocation(line: 295, column: 15, scope: !3133)
!3148 = !DILocation(line: 295, column: 9, scope: !3133)
!3149 = !DILocation(line: 296, column: 39, scope: !3133)
!3150 = !DILocation(line: 296, column: 5, scope: !3133)
!3151 = !DILocation(line: 298, column: 5, scope: !3133)
!3152 = !DILocation(line: 298, column: 12, scope: !3133)
!3153 = !DILocation(line: 298, column: 19, scope: !3133)
!3154 = !DILocation(line: 298, column: 16, scope: !3133)
!3155 = distinct !{!3155, !3151, !3156}
!3156 = !DILocation(line: 298, column: 52, scope: !3133)
!3157 = !DILocation(line: 301, column: 11, scope: !3133)
!3158 = !DILocation(line: 301, column: 9, scope: !3133)
!3159 = !DILocation(line: 302, column: 11, scope: !3133)
!3160 = !DILocation(line: 302, column: 15, scope: !3133)
!3161 = !DILocation(line: 302, column: 9, scope: !3133)
!3162 = !DILocation(line: 303, column: 11, scope: !3133)
!3163 = !DILocation(line: 303, column: 15, scope: !3133)
!3164 = !DILocation(line: 303, column: 9, scope: !3133)
!3165 = !DILocation(line: 304, column: 39, scope: !3133)
!3166 = !DILocation(line: 304, column: 5, scope: !3133)
!3167 = !DILocation(line: 307, column: 11, scope: !3133)
!3168 = !DILocation(line: 307, column: 9, scope: !3133)
!3169 = !DILocation(line: 308, column: 11, scope: !3133)
!3170 = !DILocation(line: 308, column: 15, scope: !3133)
!3171 = !DILocation(line: 308, column: 9, scope: !3133)
!3172 = !DILocation(line: 309, column: 11, scope: !3133)
!3173 = !DILocation(line: 309, column: 15, scope: !3133)
!3174 = !DILocation(line: 309, column: 9, scope: !3133)
!3175 = !DILocation(line: 310, column: 39, scope: !3133)
!3176 = !DILocation(line: 310, column: 5, scope: !3133)
!3177 = !DILocation(line: 311, column: 19, scope: !3133)
!3178 = !DILocation(line: 312, column: 5, scope: !3133)
!3179 = !DILocation(line: 313, column: 17, scope: !3133)
!3180 = !DILocation(line: 313, column: 33, scope: !3133)
!3181 = !DILocation(line: 313, column: 5, scope: !3133)
!3182 = !DILocation(line: 315, column: 1, scope: !3133)
!3183 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !201, file: !201, line: 323, type: !181, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3184)
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "reg", scope: !3183, file: !201, line: 325, type: !207)
!3186 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3183, file: !201, line: 326, type: !206)
!3187 = !DILocation(line: 325, column: 5, scope: !3183)
!3188 = !DILocation(line: 325, column: 23, scope: !3183)
!3189 = !DILocation(line: 0, scope: !3183)
!3190 = !DILocation(line: 329, column: 5, scope: !3183)
!3191 = !DILocation(line: 332, column: 11, scope: !3183)
!3192 = !DILocation(line: 332, column: 9, scope: !3183)
!3193 = !DILocation(line: 333, column: 11, scope: !3183)
!3194 = !DILocation(line: 333, column: 15, scope: !3183)
!3195 = !DILocation(line: 333, column: 9, scope: !3183)
!3196 = !DILocation(line: 334, column: 11, scope: !3183)
!3197 = !DILocation(line: 334, column: 9, scope: !3183)
!3198 = !DILocation(line: 335, column: 39, scope: !3183)
!3199 = !DILocation(line: 335, column: 5, scope: !3183)
!3200 = !DILocation(line: 337, column: 5, scope: !3183)
!3201 = !DILocation(line: 337, column: 12, scope: !3183)
!3202 = !DILocation(line: 337, column: 19, scope: !3183)
!3203 = !DILocation(line: 337, column: 16, scope: !3183)
!3204 = distinct !{!3204, !3200, !3205}
!3205 = !DILocation(line: 337, column: 52, scope: !3183)
!3206 = !DILocation(line: 340, column: 11, scope: !3183)
!3207 = !DILocation(line: 340, column: 9, scope: !3183)
!3208 = !DILocation(line: 341, column: 11, scope: !3183)
!3209 = !DILocation(line: 341, column: 15, scope: !3183)
!3210 = !DILocation(line: 341, column: 9, scope: !3183)
!3211 = !DILocation(line: 342, column: 11, scope: !3183)
!3212 = !DILocation(line: 342, column: 15, scope: !3183)
!3213 = !DILocation(line: 342, column: 9, scope: !3183)
!3214 = !DILocation(line: 343, column: 39, scope: !3183)
!3215 = !DILocation(line: 343, column: 5, scope: !3183)
!3216 = !DILocation(line: 344, column: 19, scope: !3183)
!3217 = !DILocation(line: 345, column: 5, scope: !3183)
!3218 = !DILocation(line: 346, column: 17, scope: !3183)
!3219 = !DILocation(line: 346, column: 33, scope: !3183)
!3220 = !DILocation(line: 346, column: 5, scope: !3183)
!3221 = !DILocation(line: 348, column: 1, scope: !3183)
!3222 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !201, file: !201, line: 353, type: !181, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3223)
!3223 = !{!3224, !3225}
!3224 = !DILocalVariable(name: "reg", scope: !3222, file: !201, line: 355, type: !209)
!3225 = !DILocalVariable(name: "pTopCfgHclk", scope: !3222, file: !201, line: 356, type: !208)
!3226 = !DILocation(line: 355, column: 5, scope: !3222)
!3227 = !DILocation(line: 355, column: 21, scope: !3222)
!3228 = !DILocation(line: 0, scope: !3222)
!3229 = !DILocation(line: 358, column: 11, scope: !3222)
!3230 = !DILocation(line: 358, column: 9, scope: !3222)
!3231 = !DILocation(line: 359, column: 11, scope: !3222)
!3232 = !DILocation(line: 359, column: 15, scope: !3222)
!3233 = !DILocation(line: 359, column: 9, scope: !3222)
!3234 = !DILocation(line: 360, column: 11, scope: !3222)
!3235 = !DILocation(line: 360, column: 9, scope: !3222)
!3236 = !DILocation(line: 361, column: 37, scope: !3222)
!3237 = !DILocation(line: 361, column: 5, scope: !3222)
!3238 = !DILocation(line: 362, column: 1, scope: !3222)
!3239 = distinct !DISubprogram(name: "getc", scope: !216, file: !216, line: 68, type: !3240, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!53}
!3242 = !{!3243}
!3243 = !DILocalVariable(name: "rc", scope: !3239, file: !216, line: 71, type: !53)
!3244 = !DILocation(line: 71, column: 14, scope: !3239)
!3245 = !DILocation(line: 0, scope: !3239)
!3246 = !DILocation(line: 72, column: 5, scope: !3239)
!3247 = distinct !DISubprogram(name: "getc_nowait", scope: !216, file: !216, line: 80, type: !3240, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3248)
!3248 = !{!3249}
!3249 = !DILocalVariable(name: "c", scope: !3247, file: !216, line: 82, type: !474)
!3250 = !DILocation(line: 84, column: 9, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3247, file: !216, line: 84, column: 9)
!3252 = !DILocation(line: 84, column: 40, scope: !3251)
!3253 = !DILocation(line: 84, column: 9, scope: !3247)
!3254 = !DILocation(line: 85, column: 13, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !216, line: 84, column: 47)
!3256 = !DILocation(line: 86, column: 16, scope: !3255)
!3257 = !DILocation(line: 0, scope: !3247)
!3258 = !DILocation(line: 86, column: 9, scope: !3255)
!3259 = !DILocation(line: 0, scope: !3251)
!3260 = !DILocation(line: 90, column: 1, scope: !3247)
!3261 = distinct !DISubprogram(name: "uart_output_char", scope: !216, file: !216, line: 93, type: !3262, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3265)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3264, !132}
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !219, line: 75, baseType: !218)
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "port_no", arg: 1, scope: !3261, file: !216, line: 93, type: !3264)
!3267 = !DILocalVariable(name: "c", arg: 2, scope: !3261, file: !216, line: 93, type: !132)
!3268 = !DILocalVariable(name: "base", scope: !3261, file: !216, line: 95, type: !7)
!3269 = !DILocation(line: 0, scope: !3261)
!3270 = !DILocation(line: 95, column: 25, scope: !3261)
!3271 = !DILocation(line: 97, column: 5, scope: !3261)
!3272 = !DILocation(line: 97, column: 14, scope: !3261)
!3273 = !DILocation(line: 97, column: 42, scope: !3261)
!3274 = !DILocation(line: 97, column: 12, scope: !3261)
!3275 = distinct !{!3275, !3271, !3276}
!3276 = !DILocation(line: 98, column: 9, scope: !3261)
!3277 = !DILocation(line: 99, column: 35, scope: !3261)
!3278 = !DILocation(line: 99, column: 5, scope: !3261)
!3279 = !DILocation(line: 99, column: 33, scope: !3261)
!3280 = !DILocation(line: 102, column: 1, scope: !3261)
!3281 = distinct !DISubprogram(name: "uart_input_char", scope: !216, file: !216, line: 106, type: !3282, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!128, !3264}
!3284 = !{!3285, !3286, !3287}
!3285 = !DILocalVariable(name: "port_no", arg: 1, scope: !3281, file: !216, line: 106, type: !3264)
!3286 = !DILocalVariable(name: "base", scope: !3281, file: !216, line: 108, type: !7)
!3287 = !DILocalVariable(name: "c", scope: !3281, file: !216, line: 109, type: !474)
!3288 = !DILocation(line: 0, scope: !3281)
!3289 = !DILocation(line: 108, column: 25, scope: !3281)
!3290 = !DILocation(line: 111, column: 5, scope: !3281)
!3291 = !DILocation(line: 111, column: 14, scope: !3281)
!3292 = !DILocation(line: 111, column: 42, scope: !3281)
!3293 = !DILocation(line: 111, column: 12, scope: !3281)
!3294 = distinct !{!3294, !3290, !3295}
!3295 = !DILocation(line: 112, column: 9, scope: !3281)
!3296 = !DILocation(line: 114, column: 9, scope: !3281)
!3297 = !DILocation(line: 116, column: 5, scope: !3281)
!3298 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !216, file: !216, line: 120, type: !3299, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!136, !3264}
!3301 = !{!3302, !3303, !3304}
!3302 = !DILocalVariable(name: "port_no", arg: 1, scope: !3298, file: !216, line: 120, type: !3264)
!3303 = !DILocalVariable(name: "base", scope: !3298, file: !216, line: 122, type: !7)
!3304 = !DILocalVariable(name: "c", scope: !3298, file: !216, line: 123, type: !474)
!3305 = !DILocation(line: 0, scope: !3298)
!3306 = !DILocation(line: 122, column: 25, scope: !3298)
!3307 = !DILocation(line: 125, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3298, file: !216, line: 125, column: 9)
!3309 = !DILocation(line: 125, column: 37, scope: !3308)
!3310 = !DILocation(line: 125, column: 9, scope: !3298)
!3311 = !DILocation(line: 126, column: 13, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !216, line: 125, column: 44)
!3313 = !DILocation(line: 127, column: 16, scope: !3312)
!3314 = !DILocation(line: 127, column: 9, scope: !3312)
!3315 = !DILocation(line: 0, scope: !3308)
!3316 = !DILocation(line: 131, column: 1, scope: !3298)
!3317 = distinct !DISubprogram(name: "halUART_HWInit", scope: !216, file: !216, line: 136, type: !3318, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{null, !3264}
!3320 = !{!3321}
!3321 = !DILocalVariable(name: "u_port", arg: 1, scope: !3317, file: !216, line: 136, type: !3264)
!3322 = !DILocation(line: 0, scope: !3317)
!3323 = !DILocation(line: 139, column: 5, scope: !3317)
!3324 = !DILocation(line: 140, column: 9, scope: !3317)
!3325 = !DILocation(line: 153, column: 5, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !216, line: 147, column: 38)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !216, line: 147, column: 16)
!3328 = distinct !DILexicalBlock(scope: !3317, file: !216, line: 140, column: 9)
!3329 = !DILocation(line: 0, scope: !3328)
!3330 = !DILocation(line: 155, column: 1, scope: !3317)
!3331 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !216, file: !216, line: 158, type: !3332, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3336)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !3264, !136, !3334, !3334, !3334}
!3334 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 36, baseType: !3335)
!3335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 57, baseType: !228)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3352, !3353}
!3337 = !DILocalVariable(name: "u_port", arg: 1, scope: !3331, file: !216, line: 158, type: !3264)
!3338 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3331, file: !216, line: 158, type: !136)
!3339 = !DILocalVariable(name: "databit", arg: 3, scope: !3331, file: !216, line: 158, type: !3334)
!3340 = !DILocalVariable(name: "parity", arg: 4, scope: !3331, file: !216, line: 158, type: !3334)
!3341 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3331, file: !216, line: 158, type: !3334)
!3342 = !DILocalVariable(name: "control_word", scope: !3331, file: !216, line: 160, type: !3334)
!3343 = !DILocalVariable(name: "UART_BASE", scope: !3331, file: !216, line: 161, type: !136)
!3344 = !DILocalVariable(name: "data", scope: !3331, file: !216, line: 162, type: !136)
!3345 = !DILocalVariable(name: "uart_lcr", scope: !3331, file: !216, line: 162, type: !136)
!3346 = !DILocalVariable(name: "high_speed_div", scope: !3331, file: !216, line: 162, type: !136)
!3347 = !DILocalVariable(name: "sample_count", scope: !3331, file: !216, line: 162, type: !136)
!3348 = !DILocalVariable(name: "sample_point", scope: !3331, file: !216, line: 162, type: !136)
!3349 = !DILocalVariable(name: "fraction", scope: !3331, file: !216, line: 162, type: !136)
!3350 = !DILocalVariable(name: "fraction_L_mapping", scope: !3331, file: !216, line: 163, type: !3351)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 176, elements: !190)
!3352 = !DILocalVariable(name: "fraction_M_mapping", scope: !3331, file: !216, line: 164, type: !3351)
!3353 = !DILocalVariable(name: "status", scope: !3331, file: !216, line: 165, type: !331)
!3354 = !DILocation(line: 0, scope: !3331)
!3355 = !DILocation(line: 163, column: 15, scope: !3331)
!3356 = !DILocation(line: 164, column: 15, scope: !3331)
!3357 = !DILocation(line: 166, column: 20, scope: !3331)
!3358 = !DILocation(line: 166, column: 18, scope: !3331)
!3359 = !DILocation(line: 168, column: 9, scope: !3331)
!3360 = !DILocation(line: 176, column: 5, scope: !3331)
!3361 = !DILocation(line: 176, column: 44, scope: !3331)
!3362 = !DILocation(line: 177, column: 16, scope: !3331)
!3363 = !DILocation(line: 178, column: 50, scope: !3331)
!3364 = !DILocation(line: 178, column: 38, scope: !3331)
!3365 = !DILocation(line: 179, column: 12, scope: !3331)
!3366 = !DILocation(line: 179, column: 25, scope: !3331)
!3367 = !DILocation(line: 180, column: 28, scope: !3331)
!3368 = !DILocation(line: 180, column: 34, scope: !3331)
!3369 = !DILocation(line: 182, column: 29, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3331, file: !216, line: 181, column: 5)
!3371 = !DILocation(line: 182, column: 46, scope: !3370)
!3372 = !DILocation(line: 183, column: 26, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !216, line: 183, column: 13)
!3374 = !DILocation(line: 183, column: 13, scope: !3370)
!3375 = !DILocation(line: 192, column: 30, scope: !3331)
!3376 = !DILocation(line: 192, column: 35, scope: !3331)
!3377 = !DILocation(line: 192, column: 46, scope: !3331)
!3378 = !DILocation(line: 192, column: 74, scope: !3331)
!3379 = !DILocation(line: 192, column: 53, scope: !3331)
!3380 = !DILocation(line: 192, column: 80, scope: !3331)
!3381 = !DILocation(line: 193, column: 56, scope: !3331)
!3382 = !DILocation(line: 193, column: 5, scope: !3331)
!3383 = !DILocation(line: 193, column: 38, scope: !3331)
!3384 = !DILocation(line: 194, column: 57, scope: !3331)
!3385 = !DILocation(line: 194, column: 63, scope: !3331)
!3386 = !DILocation(line: 194, column: 5, scope: !3331)
!3387 = !DILocation(line: 194, column: 38, scope: !3331)
!3388 = !DILocation(line: 195, column: 5, scope: !3331)
!3389 = !DILocation(line: 195, column: 45, scope: !3331)
!3390 = !DILocation(line: 196, column: 5, scope: !3331)
!3391 = !DILocation(line: 196, column: 47, scope: !3331)
!3392 = !DILocation(line: 197, column: 46, scope: !3331)
!3393 = !DILocation(line: 197, column: 5, scope: !3331)
!3394 = !DILocation(line: 197, column: 44, scope: !3331)
!3395 = !DILocation(line: 198, column: 46, scope: !3331)
!3396 = !DILocation(line: 198, column: 5, scope: !3331)
!3397 = !DILocation(line: 198, column: 44, scope: !3331)
!3398 = !DILocation(line: 199, column: 38, scope: !3331)
!3399 = !DILocation(line: 200, column: 5, scope: !3331)
!3400 = !DILocation(line: 200, column: 38, scope: !3331)
!3401 = !DILocation(line: 202, column: 20, scope: !3331)
!3402 = !DILocation(line: 203, column: 18, scope: !3331)
!3403 = !DILocation(line: 205, column: 18, scope: !3331)
!3404 = !DILocation(line: 207, column: 18, scope: !3331)
!3405 = !DILocation(line: 208, column: 18, scope: !3331)
!3406 = !DILocation(line: 209, column: 5, scope: !3331)
!3407 = !DILocation(line: 213, column: 1, scope: !3331)
!3408 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !216, file: !216, line: 215, type: !3409, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3412)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !3264, !331, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!3412 = !{!3413, !3414, !3415}
!3413 = !DILocalVariable(name: "u_port", arg: 1, scope: !3408, file: !216, line: 215, type: !3264)
!3414 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3408, file: !216, line: 215, type: !331)
!3415 = !DILocalVariable(name: "length", arg: 3, scope: !3408, file: !216, line: 215, type: !3411)
!3416 = !DILocation(line: 0, scope: !3408)
!3417 = !DILocation(line: 217, column: 16, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3408, file: !216, line: 217, column: 9)
!3419 = !DILocation(line: 0, scope: !3418)
!3420 = !DILocation(line: 217, column: 9, scope: !3408)
!3421 = !DILocation(line: 218, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !216, line: 217, column: 31)
!3423 = !DILocation(line: 219, column: 23, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !216, line: 218, column: 20)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !216, line: 218, column: 13)
!3426 = !DILocation(line: 220, column: 9, scope: !3424)
!3427 = !DILocation(line: 221, column: 23, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3425, file: !216, line: 220, column: 16)
!3429 = !DILocation(line: 221, column: 21, scope: !3428)
!3430 = !DILocation(line: 222, column: 24, scope: !3428)
!3431 = !DILocation(line: 222, column: 21, scope: !3428)
!3432 = !DILocation(line: 225, column: 13, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3418, file: !216, line: 224, column: 12)
!3434 = !DILocation(line: 226, column: 23, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !216, line: 225, column: 20)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !216, line: 225, column: 13)
!3437 = !DILocation(line: 227, column: 9, scope: !3435)
!3438 = !DILocation(line: 228, column: 23, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3436, file: !216, line: 227, column: 16)
!3440 = !DILocation(line: 228, column: 21, scope: !3439)
!3441 = !DILocation(line: 229, column: 24, scope: !3439)
!3442 = !DILocation(line: 229, column: 21, scope: !3439)
!3443 = !DILocation(line: 233, column: 5, scope: !3408)
!3444 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !216, file: !216, line: 236, type: !3445, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3447)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !3264, !521, !136}
!3447 = !{!3448, !3449, !3450, !3451}
!3448 = !DILocalVariable(name: "u_port", arg: 1, scope: !3444, file: !216, line: 236, type: !3264)
!3449 = !DILocalVariable(name: "data", arg: 2, scope: !3444, file: !216, line: 236, type: !521)
!3450 = !DILocalVariable(name: "length", arg: 3, scope: !3444, file: !216, line: 236, type: !136)
!3451 = !DILocalVariable(name: "idx", scope: !3444, file: !216, line: 238, type: !205)
!3452 = !DILocation(line: 0, scope: !3444)
!3453 = !DILocation(line: 239, column: 23, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !216, line: 239, column: 5)
!3455 = distinct !DILexicalBlock(scope: !3444, file: !216, line: 239, column: 5)
!3456 = !DILocation(line: 239, column: 5, scope: !3455)
!3457 = !DILocation(line: 240, column: 13, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3454, file: !216, line: 239, column: 40)
!3459 = !DILocation(line: 244, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !216, line: 242, column: 42)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !216, line: 242, column: 20)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !216, line: 240, column: 13)
!3463 = !DILocation(line: 0, scope: !3462)
!3464 = !DILocation(line: 239, column: 36, scope: !3454)
!3465 = distinct !{!3465, !3456, !3466}
!3466 = !DILocation(line: 246, column: 5, scope: !3455)
!3467 = !DILocation(line: 249, column: 1, scope: !3444)
!3468 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !216, file: !216, line: 251, type: !3469, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3264, !565, !136}
!3471 = !{!3472, !3473, !3474, !3475}
!3472 = !DILocalVariable(name: "u_port", arg: 1, scope: !3468, file: !216, line: 251, type: !3264)
!3473 = !DILocalVariable(name: "data", arg: 2, scope: !3468, file: !216, line: 251, type: !565)
!3474 = !DILocalVariable(name: "length", arg: 3, scope: !3468, file: !216, line: 251, type: !136)
!3475 = !DILocalVariable(name: "idx", scope: !3468, file: !216, line: 253, type: !205)
!3476 = !DILocation(line: 0, scope: !3468)
!3477 = !DILocation(line: 254, column: 23, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !216, line: 254, column: 5)
!3479 = distinct !DILexicalBlock(scope: !3468, file: !216, line: 254, column: 5)
!3480 = !DILocation(line: 254, column: 5, scope: !3479)
!3481 = !DILocation(line: 255, column: 13, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3478, file: !216, line: 254, column: 40)
!3483 = !DILocation(line: 256, column: 61, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !216, line: 255, column: 35)
!3485 = distinct !DILexicalBlock(scope: !3482, file: !216, line: 255, column: 13)
!3486 = !DILocation(line: 256, column: 59, scope: !3484)
!3487 = !DILocation(line: 257, column: 9, scope: !3484)
!3488 = !DILocation(line: 258, column: 61, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !216, line: 257, column: 42)
!3490 = distinct !DILexicalBlock(scope: !3485, file: !216, line: 257, column: 20)
!3491 = !DILocation(line: 258, column: 59, scope: !3489)
!3492 = !DILocation(line: 259, column: 9, scope: !3489)
!3493 = !DILocation(line: 254, column: 36, scope: !3478)
!3494 = distinct !{!3494, !3480, !3495}
!3495 = !DILocation(line: 261, column: 5, scope: !3479)
!3496 = !DILocation(line: 264, column: 1, scope: !3468)
!3497 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !216, file: !216, line: 266, type: !3498, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{null, !3264, !521, !136, !136}
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DILocalVariable(name: "u_port", arg: 1, scope: !3497, file: !216, line: 266, type: !3264)
!3502 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3497, file: !216, line: 266, type: !521)
!3503 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3497, file: !216, line: 266, type: !136)
!3504 = !DILocalVariable(name: "threshold", arg: 4, scope: !3497, file: !216, line: 266, type: !136)
!3505 = !DILocation(line: 0, scope: !3497)
!3506 = !DILocation(line: 268, column: 9, scope: !3497)
!3507 = !DILocation(line: 274, column: 5, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !216, line: 271, column: 38)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !216, line: 271, column: 16)
!3510 = distinct !DILexicalBlock(scope: !3497, file: !216, line: 268, column: 9)
!3511 = !DILocation(line: 0, scope: !3510)
!3512 = !DILocation(line: 276, column: 1, scope: !3497)
!3513 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !216, file: !216, line: 278, type: !3514, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3516)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3264, !521, !136, !136, !136, !136}
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522}
!3517 = !DILocalVariable(name: "u_port", arg: 1, scope: !3513, file: !216, line: 278, type: !3264)
!3518 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3513, file: !216, line: 278, type: !521)
!3519 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3513, file: !216, line: 278, type: !136)
!3520 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3513, file: !216, line: 278, type: !136)
!3521 = !DILocalVariable(name: "threshold", arg: 5, scope: !3513, file: !216, line: 278, type: !136)
!3522 = !DILocalVariable(name: "timeout", arg: 6, scope: !3513, file: !216, line: 278, type: !136)
!3523 = !DILocation(line: 0, scope: !3513)
!3524 = !DILocation(line: 280, column: 9, scope: !3513)
!3525 = !DILocation(line: 286, column: 5, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !216, line: 283, column: 38)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !216, line: 283, column: 16)
!3528 = distinct !DILexicalBlock(scope: !3513, file: !216, line: 280, column: 9)
!3529 = !DILocation(line: 0, scope: !3528)
!3530 = !DILocation(line: 288, column: 1, scope: !3513)
!3531 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !216, file: !216, line: 290, type: !3532, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !3264, !179}
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "u_port", arg: 1, scope: !3531, file: !216, line: 290, type: !3264)
!3536 = !DILocalVariable(name: "func", arg: 2, scope: !3531, file: !216, line: 290, type: !179)
!3537 = !DILocation(line: 0, scope: !3531)
!3538 = !DILocation(line: 292, column: 9, scope: !3531)
!3539 = !DILocation(line: 296, column: 5, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !216, line: 294, column: 38)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !216, line: 294, column: 16)
!3542 = distinct !DILexicalBlock(scope: !3531, file: !216, line: 292, column: 9)
!3543 = !DILocation(line: 0, scope: !3542)
!3544 = !DILocation(line: 298, column: 1, scope: !3531)
!3545 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !216, file: !216, line: 300, type: !3532, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3546)
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "u_port", arg: 1, scope: !3545, file: !216, line: 300, type: !3264)
!3548 = !DILocalVariable(name: "func", arg: 2, scope: !3545, file: !216, line: 300, type: !179)
!3549 = !DILocation(line: 0, scope: !3545)
!3550 = !DILocation(line: 302, column: 9, scope: !3545)
!3551 = !DILocation(line: 306, column: 5, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !216, line: 304, column: 38)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !216, line: 304, column: 16)
!3554 = distinct !DILexicalBlock(scope: !3545, file: !216, line: 302, column: 9)
!3555 = !DILocation(line: 0, scope: !3554)
!3556 = !DILocation(line: 308, column: 1, scope: !3545)
!3557 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !216, file: !216, line: 310, type: !3318, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3558)
!3558 = !{!3559, !3560, !3561, !3562}
!3559 = !DILocalVariable(name: "u_port", arg: 1, scope: !3557, file: !216, line: 310, type: !3264)
!3560 = !DILocalVariable(name: "base", scope: !3557, file: !216, line: 312, type: !7)
!3561 = !DILocalVariable(name: "EFR", scope: !3557, file: !216, line: 313, type: !3334)
!3562 = !DILocalVariable(name: "LCR", scope: !3557, file: !216, line: 313, type: !3334)
!3563 = !DILocation(line: 0, scope: !3557)
!3564 = !DILocation(line: 312, column: 25, scope: !3557)
!3565 = !DILocation(line: 315, column: 11, scope: !3557)
!3566 = !DILocation(line: 317, column: 33, scope: !3557)
!3567 = !DILocation(line: 318, column: 11, scope: !3557)
!3568 = !DILocation(line: 320, column: 35, scope: !3557)
!3569 = !DILocation(line: 320, column: 33, scope: !3557)
!3570 = !DILocation(line: 322, column: 5, scope: !3557)
!3571 = !DILocation(line: 322, column: 39, scope: !3557)
!3572 = !DILocation(line: 324, column: 33, scope: !3557)
!3573 = !DILocation(line: 325, column: 5, scope: !3557)
!3574 = !DILocation(line: 325, column: 33, scope: !3557)
!3575 = !DILocation(line: 327, column: 35, scope: !3557)
!3576 = !DILocation(line: 327, column: 33, scope: !3557)
!3577 = !DILocation(line: 328, column: 1, scope: !3557)
!3578 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !216, file: !216, line: 330, type: !3579, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3264, !128, !128, !128}
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3588}
!3582 = !DILocalVariable(name: "u_port", arg: 1, scope: !3578, file: !216, line: 330, type: !3264)
!3583 = !DILocalVariable(name: "xon", arg: 2, scope: !3578, file: !216, line: 330, type: !128)
!3584 = !DILocalVariable(name: "xoff", arg: 3, scope: !3578, file: !216, line: 330, type: !128)
!3585 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3578, file: !216, line: 330, type: !128)
!3586 = !DILocalVariable(name: "base", scope: !3578, file: !216, line: 332, type: !7)
!3587 = !DILocalVariable(name: "EFR", scope: !3578, file: !216, line: 333, type: !3334)
!3588 = !DILocalVariable(name: "LCR", scope: !3578, file: !216, line: 333, type: !3334)
!3589 = !DILocation(line: 0, scope: !3578)
!3590 = !DILocation(line: 332, column: 25, scope: !3578)
!3591 = !DILocation(line: 335, column: 11, scope: !3578)
!3592 = !DILocation(line: 337, column: 33, scope: !3578)
!3593 = !DILocation(line: 338, column: 36, scope: !3578)
!3594 = !DILocation(line: 338, column: 5, scope: !3578)
!3595 = !DILocation(line: 338, column: 34, scope: !3578)
!3596 = !DILocation(line: 339, column: 5, scope: !3578)
!3597 = !DILocation(line: 339, column: 34, scope: !3578)
!3598 = !DILocation(line: 340, column: 37, scope: !3578)
!3599 = !DILocation(line: 340, column: 5, scope: !3578)
!3600 = !DILocation(line: 340, column: 35, scope: !3578)
!3601 = !DILocation(line: 341, column: 5, scope: !3578)
!3602 = !DILocation(line: 341, column: 35, scope: !3578)
!3603 = !DILocation(line: 343, column: 11, scope: !3578)
!3604 = !DILocation(line: 345, column: 35, scope: !3578)
!3605 = !DILocation(line: 345, column: 33, scope: !3578)
!3606 = !DILocation(line: 347, column: 35, scope: !3578)
!3607 = !DILocation(line: 347, column: 33, scope: !3578)
!3608 = !DILocation(line: 349, column: 43, scope: !3578)
!3609 = !DILocation(line: 349, column: 5, scope: !3578)
!3610 = !DILocation(line: 349, column: 41, scope: !3578)
!3611 = !DILocation(line: 350, column: 5, scope: !3578)
!3612 = !DILocation(line: 350, column: 39, scope: !3578)
!3613 = !DILocation(line: 351, column: 1, scope: !3578)
!3614 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !216, file: !216, line: 353, type: !3318, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3615)
!3615 = !{!3616, !3617, !3618}
!3616 = !DILocalVariable(name: "u_port", arg: 1, scope: !3614, file: !216, line: 353, type: !3264)
!3617 = !DILocalVariable(name: "base", scope: !3614, file: !216, line: 355, type: !7)
!3618 = !DILocalVariable(name: "LCR", scope: !3614, file: !216, line: 356, type: !3334)
!3619 = !DILocation(line: 0, scope: !3614)
!3620 = !DILocation(line: 355, column: 25, scope: !3614)
!3621 = !DILocation(line: 358, column: 11, scope: !3614)
!3622 = !DILocation(line: 360, column: 33, scope: !3614)
!3623 = !DILocation(line: 362, column: 5, scope: !3614)
!3624 = !DILocation(line: 362, column: 33, scope: !3614)
!3625 = !DILocation(line: 364, column: 33, scope: !3614)
!3626 = !DILocation(line: 366, column: 35, scope: !3614)
!3627 = !DILocation(line: 366, column: 33, scope: !3614)
!3628 = !DILocation(line: 367, column: 1, scope: !3614)
!3629 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !216, file: !216, line: 436, type: !3318, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3630)
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "u_port", arg: 1, scope: !3629, file: !216, line: 436, type: !3264)
!3632 = !DILocalVariable(name: "base", scope: !3629, file: !216, line: 438, type: !7)
!3633 = !DILocation(line: 0, scope: !3629)
!3634 = !DILocation(line: 438, column: 25, scope: !3629)
!3635 = !DILocation(line: 440, column: 5, scope: !3629)
!3636 = !DILocation(line: 440, column: 33, scope: !3629)
!3637 = !DILocation(line: 441, column: 5, scope: !3629)
!3638 = !DILocation(line: 441, column: 33, scope: !3629)
!3639 = !DILocation(line: 442, column: 5, scope: !3629)
!3640 = !DILocation(line: 442, column: 34, scope: !3629)
!3641 = !DILocation(line: 443, column: 5, scope: !3629)
!3642 = !DILocation(line: 443, column: 35, scope: !3629)
!3643 = !DILocation(line: 445, column: 33, scope: !3629)
!3644 = !DILocation(line: 446, column: 5, scope: !3629)
!3645 = !DILocation(line: 446, column: 33, scope: !3629)
!3646 = !DILocation(line: 447, column: 5, scope: !3629)
!3647 = !DILocation(line: 447, column: 33, scope: !3629)
!3648 = !DILocation(line: 449, column: 33, scope: !3629)
!3649 = !DILocation(line: 450, column: 33, scope: !3629)
!3650 = !DILocation(line: 451, column: 33, scope: !3629)
!3651 = !DILocation(line: 453, column: 33, scope: !3629)
!3652 = !DILocation(line: 454, column: 33, scope: !3629)
!3653 = !DILocation(line: 455, column: 33, scope: !3629)
!3654 = !DILocation(line: 457, column: 33, scope: !3629)
!3655 = !DILocation(line: 458, column: 5, scope: !3629)
!3656 = !DILocation(line: 458, column: 33, scope: !3629)
!3657 = !DILocation(line: 459, column: 5, scope: !3629)
!3658 = !DILocation(line: 459, column: 39, scope: !3629)
!3659 = !DILocation(line: 460, column: 5, scope: !3629)
!3660 = !DILocation(line: 460, column: 40, scope: !3629)
!3661 = !DILocation(line: 461, column: 5, scope: !3629)
!3662 = !DILocation(line: 461, column: 42, scope: !3629)
!3663 = !DILocation(line: 462, column: 5, scope: !3629)
!3664 = !DILocation(line: 462, column: 42, scope: !3629)
!3665 = !DILocation(line: 463, column: 5, scope: !3629)
!3666 = !DILocation(line: 463, column: 35, scope: !3629)
!3667 = !DILocation(line: 464, column: 5, scope: !3629)
!3668 = !DILocation(line: 464, column: 41, scope: !3629)
!3669 = !DILocation(line: 465, column: 5, scope: !3629)
!3670 = !DILocation(line: 465, column: 39, scope: !3629)
!3671 = !DILocation(line: 466, column: 5, scope: !3629)
!3672 = !DILocation(line: 466, column: 38, scope: !3629)
!3673 = !DILocation(line: 467, column: 5, scope: !3629)
!3674 = !DILocation(line: 467, column: 42, scope: !3629)
!3675 = !DILocation(line: 468, column: 5, scope: !3629)
!3676 = !DILocation(line: 468, column: 45, scope: !3629)
!3677 = !DILocation(line: 469, column: 5, scope: !3629)
!3678 = !DILocation(line: 469, column: 39, scope: !3629)
!3679 = !DILocation(line: 470, column: 5, scope: !3629)
!3680 = !DILocation(line: 470, column: 39, scope: !3629)
!3681 = !DILocation(line: 471, column: 5, scope: !3629)
!3682 = !DILocation(line: 471, column: 42, scope: !3629)
!3683 = !DILocation(line: 472, column: 1, scope: !3629)
!3684 = distinct !DISubprogram(name: "uart_query_empty", scope: !216, file: !216, line: 474, type: !3318, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3685)
!3685 = !{!3686, !3687}
!3686 = !DILocalVariable(name: "u_port", arg: 1, scope: !3684, file: !216, line: 474, type: !3264)
!3687 = !DILocalVariable(name: "base", scope: !3684, file: !216, line: 476, type: !7)
!3688 = !DILocation(line: 0, scope: !3684)
!3689 = !DILocation(line: 476, column: 25, scope: !3684)
!3690 = !DILocation(line: 478, column: 5, scope: !3684)
!3691 = !DILocation(line: 478, column: 14, scope: !3684)
!3692 = !DILocation(line: 478, column: 42, scope: !3684)
!3693 = !DILocation(line: 478, column: 12, scope: !3684)
!3694 = distinct !{!3694, !3690, !3695}
!3695 = !DILocation(line: 478, column: 50, scope: !3684)
!3696 = !DILocation(line: 479, column: 1, scope: !3684)
!3697 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1031, file: !1031, line: 64, type: !3698, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !677, !53, !677, null}
!3700 = !{!3701, !3702, !3703, !3704, !3713}
!3701 = !DILocalVariable(name: "func", arg: 1, scope: !3697, file: !1031, line: 64, type: !677)
!3702 = !DILocalVariable(name: "line", arg: 2, scope: !3697, file: !1031, line: 64, type: !53)
!3703 = !DILocalVariable(name: "message", arg: 3, scope: !3697, file: !1031, line: 64, type: !677)
!3704 = !DILocalVariable(name: "ap", scope: !3697, file: !1031, line: 66, type: !3705)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3706, line: 46, baseType: !3707)
!3706 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3708, line: 32, baseType: !3709)
!3708 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1031, baseType: !3710)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3711)
!3711 = !{!3712}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3710, file: !1031, line: 66, baseType: !161, size: 32)
!3713 = !DILocalVariable(name: "mask", scope: !3697, file: !1031, line: 68, type: !136)
!3714 = !DILocation(line: 0, scope: !3697)
!3715 = !DILocation(line: 66, column: 5, scope: !3697)
!3716 = !DILocation(line: 66, column: 13, scope: !3697)
!3717 = !DILocation(line: 68, column: 5, scope: !3697)
!3718 = !DILocation(line: 69, column: 5, scope: !3697)
!3719 = !DILocation(line: 71, column: 5, scope: !3697)
!3720 = !DILocation(line: 72, column: 5, scope: !3697)
!3721 = !DILocation(line: 73, column: 5, scope: !3697)
!3722 = !DILocation(line: 75, column: 37, scope: !3697)
!3723 = !DILocation(line: 75, column: 5, scope: !3697)
!3724 = !DILocation(line: 77, column: 1, scope: !3697)
!3725 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1031, file: !1031, line: 78, type: !3698, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3731}
!3727 = !DILocalVariable(name: "func", arg: 1, scope: !3725, file: !1031, line: 78, type: !677)
!3728 = !DILocalVariable(name: "line", arg: 2, scope: !3725, file: !1031, line: 78, type: !53)
!3729 = !DILocalVariable(name: "message", arg: 3, scope: !3725, file: !1031, line: 78, type: !677)
!3730 = !DILocalVariable(name: "ap", scope: !3725, file: !1031, line: 80, type: !3705)
!3731 = !DILocalVariable(name: "mask", scope: !3725, file: !1031, line: 82, type: !136)
!3732 = !DILocation(line: 0, scope: !3725)
!3733 = !DILocation(line: 80, column: 5, scope: !3725)
!3734 = !DILocation(line: 80, column: 13, scope: !3725)
!3735 = !DILocation(line: 82, column: 5, scope: !3725)
!3736 = !DILocation(line: 83, column: 5, scope: !3725)
!3737 = !DILocation(line: 85, column: 5, scope: !3725)
!3738 = !DILocation(line: 86, column: 5, scope: !3725)
!3739 = !DILocation(line: 87, column: 5, scope: !3725)
!3740 = !DILocation(line: 89, column: 37, scope: !3725)
!3741 = !DILocation(line: 89, column: 5, scope: !3725)
!3742 = !DILocation(line: 91, column: 1, scope: !3725)
!3743 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1031, file: !1031, line: 92, type: !3698, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !3744)
!3744 = !{!3745, !3746, !3747, !3748, !3749}
!3745 = !DILocalVariable(name: "func", arg: 1, scope: !3743, file: !1031, line: 92, type: !677)
!3746 = !DILocalVariable(name: "line", arg: 2, scope: !3743, file: !1031, line: 92, type: !53)
!3747 = !DILocalVariable(name: "message", arg: 3, scope: !3743, file: !1031, line: 92, type: !677)
!3748 = !DILocalVariable(name: "ap", scope: !3743, file: !1031, line: 94, type: !3705)
!3749 = !DILocalVariable(name: "mask", scope: !3743, file: !1031, line: 96, type: !136)
!3750 = !DILocation(line: 0, scope: !3743)
!3751 = !DILocation(line: 94, column: 5, scope: !3743)
!3752 = !DILocation(line: 94, column: 13, scope: !3743)
!3753 = !DILocation(line: 96, column: 5, scope: !3743)
!3754 = !DILocation(line: 97, column: 5, scope: !3743)
!3755 = !DILocation(line: 99, column: 5, scope: !3743)
!3756 = !DILocation(line: 100, column: 5, scope: !3743)
!3757 = !DILocation(line: 101, column: 5, scope: !3743)
!3758 = !DILocation(line: 103, column: 37, scope: !3743)
!3759 = !DILocation(line: 103, column: 5, scope: !3743)
!3760 = !DILocation(line: 105, column: 1, scope: !3743)
!3761 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1031, file: !1031, line: 106, type: !3698, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !3762)
!3762 = !{!3763, !3764, !3765, !3766, !3767}
!3763 = !DILocalVariable(name: "func", arg: 1, scope: !3761, file: !1031, line: 106, type: !677)
!3764 = !DILocalVariable(name: "line", arg: 2, scope: !3761, file: !1031, line: 106, type: !53)
!3765 = !DILocalVariable(name: "message", arg: 3, scope: !3761, file: !1031, line: 106, type: !677)
!3766 = !DILocalVariable(name: "ap", scope: !3761, file: !1031, line: 108, type: !3705)
!3767 = !DILocalVariable(name: "mask", scope: !3761, file: !1031, line: 110, type: !136)
!3768 = !DILocation(line: 0, scope: !3761)
!3769 = !DILocation(line: 108, column: 5, scope: !3761)
!3770 = !DILocation(line: 108, column: 13, scope: !3761)
!3771 = !DILocation(line: 110, column: 5, scope: !3761)
!3772 = !DILocation(line: 111, column: 5, scope: !3761)
!3773 = !DILocation(line: 113, column: 5, scope: !3761)
!3774 = !DILocation(line: 114, column: 5, scope: !3761)
!3775 = !DILocation(line: 115, column: 5, scope: !3761)
!3776 = !DILocation(line: 117, column: 37, scope: !3761)
!3777 = !DILocation(line: 117, column: 5, scope: !3761)
!3778 = !DILocation(line: 119, column: 1, scope: !3761)
!3779 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1031, file: !1031, line: 121, type: !3780, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !3784)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{null, !677, !53, !677, !3782, !53, null}
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3784 = !{!3785, !3786, !3787, !3788, !3789}
!3785 = !DILocalVariable(name: "func", arg: 1, scope: !3779, file: !1031, line: 121, type: !677)
!3786 = !DILocalVariable(name: "line", arg: 2, scope: !3779, file: !1031, line: 121, type: !53)
!3787 = !DILocalVariable(name: "message", arg: 3, scope: !3779, file: !1031, line: 121, type: !677)
!3788 = !DILocalVariable(name: "data", arg: 4, scope: !3779, file: !1031, line: 121, type: !3782)
!3789 = !DILocalVariable(name: "length", arg: 5, scope: !3779, file: !1031, line: 121, type: !53)
!3790 = !DILocation(line: 0, scope: !3779)
!3791 = !DILocation(line: 123, column: 1, scope: !3779)
!3792 = distinct !DISubprogram(name: "hal_cache_init", scope: !236, file: !236, line: 53, type: !3793, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3796)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!3795}
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !239, line: 172, baseType: !238)
!3796 = !{!3797, !3799}
!3797 = !DILocalVariable(name: "region", scope: !3792, file: !236, line: 55, type: !3798)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !239, line: 204, baseType: !249)
!3799 = !DILocalVariable(name: "irq_flag", scope: !3792, file: !236, line: 56, type: !136)
!3800 = !DILocation(line: 59, column: 16, scope: !3792)
!3801 = !DILocation(line: 0, scope: !3792)
!3802 = !DILocation(line: 62, column: 9, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3792, file: !236, line: 62, column: 9)
!3804 = !DILocation(line: 62, column: 9, scope: !3792)
!3805 = !DILocation(line: 64, column: 9, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !236, line: 62, column: 39)
!3807 = !DILocation(line: 66, column: 9, scope: !3806)
!3808 = !DILocation(line: 69, column: 24, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3803, file: !236, line: 67, column: 12)
!3810 = !DILocation(line: 72, column: 9, scope: !3809)
!3811 = !DILocation(line: 77, column: 5, scope: !3792)
!3812 = !DILocation(line: 80, column: 22, scope: !3792)
!3813 = !DILocation(line: 81, column: 28, scope: !3792)
!3814 = !DILocation(line: 84, column: 19, scope: !3792)
!3815 = !DILocation(line: 85, column: 23, scope: !3792)
!3816 = !DILocation(line: 88, column: 5, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3792, file: !236, line: 88, column: 5)
!3818 = !DILocation(line: 90, column: 9, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !236, line: 88, column: 81)
!3820 = distinct !DILexicalBlock(scope: !3817, file: !236, line: 88, column: 5)
!3821 = !DILocation(line: 90, column: 38, scope: !3819)
!3822 = !DILocation(line: 91, column: 9, scope: !3819)
!3823 = !DILocation(line: 91, column: 42, scope: !3819)
!3824 = !DILocation(line: 94, column: 45, scope: !3819)
!3825 = !DILocation(line: 94, column: 47, scope: !3819)
!3826 = !DILocation(line: 95, column: 49, scope: !3819)
!3827 = !DILocation(line: 95, column: 51, scope: !3819)
!3828 = !DILocation(line: 88, column: 77, scope: !3820)
!3829 = !DILocation(line: 88, column: 46, scope: !3820)
!3830 = distinct !{!3830, !3816, !3831}
!3831 = !DILocation(line: 96, column: 5, scope: !3817)
!3832 = !DILocation(line: 99, column: 1, scope: !3792)
!3833 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !236, file: !236, line: 327, type: !3793, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3834)
!3834 = !{!3835}
!3835 = !DILocalVariable(name: "irq_flag", scope: !3833, file: !236, line: 329, type: !136)
!3836 = !DILocation(line: 332, column: 16, scope: !3833)
!3837 = !DILocation(line: 0, scope: !3833)
!3838 = !DILocation(line: 335, column: 21, scope: !3833)
!3839 = !DILocation(line: 336, column: 21, scope: !3833)
!3840 = !DILocation(line: 339, column: 21, scope: !3833)
!3841 = !DILocation(line: 340, column: 21, scope: !3833)
!3842 = !DILocation(line: 434, column: 3, scope: !3843, inlinedAt: !3845)
!3843 = distinct !DISubprogram(name: "__ISB", scope: !3844, file: !3844, line: 432, type: !181, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1083)
!3844 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/uart_loopback_data_dma/GCC")
!3845 = distinct !DILocation(line: 343, column: 5, scope: !3833)
!3846 = !{i64 296586}
!3847 = !DILocation(line: 346, column: 5, scope: !3833)
!3848 = !DILocation(line: 348, column: 5, scope: !3833)
!3849 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !236, file: !236, line: 101, type: !3793, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3850)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "region", scope: !3849, file: !236, line: 103, type: !3798)
!3852 = !DILocation(line: 107, column: 5, scope: !3849)
!3853 = !DILocation(line: 110, column: 22, scope: !3849)
!3854 = !DILocation(line: 111, column: 28, scope: !3849)
!3855 = !DILocation(line: 114, column: 19, scope: !3849)
!3856 = !DILocation(line: 115, column: 23, scope: !3849)
!3857 = !DILocation(line: 0, scope: !3849)
!3858 = !DILocation(line: 118, column: 5, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3849, file: !236, line: 118, column: 5)
!3860 = !DILocation(line: 120, column: 9, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !236, line: 118, column: 81)
!3862 = distinct !DILexicalBlock(scope: !3859, file: !236, line: 118, column: 5)
!3863 = !DILocation(line: 120, column: 38, scope: !3861)
!3864 = !DILocation(line: 121, column: 9, scope: !3861)
!3865 = !DILocation(line: 121, column: 42, scope: !3861)
!3866 = !DILocation(line: 124, column: 45, scope: !3861)
!3867 = !DILocation(line: 124, column: 47, scope: !3861)
!3868 = !DILocation(line: 125, column: 49, scope: !3861)
!3869 = !DILocation(line: 125, column: 51, scope: !3861)
!3870 = !DILocation(line: 118, column: 77, scope: !3862)
!3871 = !DILocation(line: 118, column: 46, scope: !3862)
!3872 = distinct !{!3872, !3858, !3873}
!3873 = !DILocation(line: 126, column: 5, scope: !3859)
!3874 = !DILocation(line: 129, column: 20, scope: !3849)
!3875 = !DILocation(line: 131, column: 5, scope: !3849)
!3876 = distinct !DISubprogram(name: "hal_cache_enable", scope: !236, file: !236, line: 134, type: !3793, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1083)
!3877 = !DILocation(line: 137, column: 45, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3876, file: !236, line: 137, column: 9)
!3879 = !DILocation(line: 137, column: 28, scope: !3878)
!3880 = !DILocation(line: 137, column: 9, scope: !3876)
!3881 = !DILocation(line: 142, column: 22, scope: !3876)
!3882 = !DILocation(line: 145, column: 28, scope: !3876)
!3883 = !DILocation(line: 145, column: 19, scope: !3876)
!3884 = !DILocation(line: 147, column: 5, scope: !3876)
!3885 = !DILocation(line: 0, scope: !3876)
!3886 = !DILocation(line: 148, column: 1, scope: !3876)
!3887 = distinct !DISubprogram(name: "hal_cache_disable", scope: !236, file: !236, line: 150, type: !3793, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3888)
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "irq_flag", scope: !3887, file: !236, line: 152, type: !136)
!3890 = !DILocation(line: 155, column: 16, scope: !3887)
!3891 = !DILocation(line: 0, scope: !3887)
!3892 = !DILocation(line: 158, column: 16, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3887, file: !236, line: 158, column: 9)
!3894 = !DILocation(line: 158, column: 26, scope: !3893)
!3895 = !DILocation(line: 158, column: 9, scope: !3887)
!3896 = !DILocation(line: 160, column: 9, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3893, file: !236, line: 158, column: 49)
!3898 = !DILocation(line: 161, column: 5, scope: !3897)
!3899 = !DILocation(line: 164, column: 22, scope: !3887)
!3900 = !DILocation(line: 167, column: 28, scope: !3887)
!3901 = !DILocation(line: 167, column: 19, scope: !3887)
!3902 = !DILocation(line: 170, column: 5, scope: !3887)
!3903 = !DILocation(line: 172, column: 5, scope: !3887)
!3904 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !236, file: !236, line: 175, type: !3905, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!3795, !3798}
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "region", arg: 1, scope: !3904, file: !236, line: 175, type: !3798)
!3909 = !DILocation(line: 0, scope: !3904)
!3910 = !DILocation(line: 178, column: 16, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3904, file: !236, line: 178, column: 9)
!3912 = !DILocation(line: 178, column: 9, scope: !3904)
!3913 = !DILocation(line: 183, column: 9, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3904, file: !236, line: 183, column: 9)
!3915 = !DILocation(line: 183, column: 38, scope: !3914)
!3916 = !DILocation(line: 183, column: 9, scope: !3904)
!3917 = !DILocation(line: 184, column: 38, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3914, file: !236, line: 183, column: 62)
!3919 = !DILocation(line: 184, column: 32, scope: !3918)
!3920 = !DILocation(line: 190, column: 32, scope: !3904)
!3921 = !DILocation(line: 190, column: 23, scope: !3904)
!3922 = !DILocation(line: 192, column: 5, scope: !3904)
!3923 = !DILocation(line: 193, column: 1, scope: !3904)
!3924 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !236, file: !236, line: 195, type: !3905, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3925)
!3925 = !{!3926}
!3926 = !DILocalVariable(name: "region", arg: 1, scope: !3924, file: !236, line: 195, type: !3798)
!3927 = !DILocation(line: 0, scope: !3924)
!3928 = !DILocation(line: 198, column: 16, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3924, file: !236, line: 198, column: 9)
!3930 = !DILocation(line: 198, column: 9, scope: !3924)
!3931 = !DILocation(line: 203, column: 35, scope: !3924)
!3932 = !DILocation(line: 203, column: 31, scope: !3924)
!3933 = !DILocation(line: 203, column: 28, scope: !3924)
!3934 = !DILocation(line: 206, column: 32, scope: !3924)
!3935 = !DILocation(line: 206, column: 23, scope: !3924)
!3936 = !DILocation(line: 209, column: 41, scope: !3924)
!3937 = !DILocation(line: 209, column: 43, scope: !3924)
!3938 = !DILocation(line: 210, column: 45, scope: !3924)
!3939 = !DILocation(line: 210, column: 47, scope: !3924)
!3940 = !DILocation(line: 212, column: 5, scope: !3924)
!3941 = !DILocation(line: 213, column: 1, scope: !3924)
!3942 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !236, file: !236, line: 215, type: !3943, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3946)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!3795, !3945}
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !239, line: 182, baseType: !268)
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3942, file: !236, line: 215, type: !3945)
!3948 = !DILocation(line: 0, scope: !3942)
!3949 = !DILocation(line: 218, column: 20, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3942, file: !236, line: 218, column: 9)
!3951 = !DILocation(line: 218, column: 9, scope: !3942)
!3952 = !DILocation(line: 223, column: 22, scope: !3942)
!3953 = !DILocation(line: 224, column: 37, scope: !3942)
!3954 = !DILocation(line: 224, column: 22, scope: !3942)
!3955 = !DILocation(line: 227, column: 20, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3942, file: !236, line: 227, column: 9)
!3957 = !DILocation(line: 227, column: 9, scope: !3942)
!3958 = !DILocation(line: 228, column: 26, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3956, file: !236, line: 227, column: 43)
!3960 = !DILocation(line: 229, column: 5, scope: !3959)
!3961 = !DILocation(line: 232, column: 28, scope: !3942)
!3962 = !DILocation(line: 232, column: 19, scope: !3942)
!3963 = !DILocation(line: 234, column: 5, scope: !3942)
!3964 = !DILocation(line: 235, column: 1, scope: !3942)
!3965 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !236, file: !236, line: 237, type: !3966, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3975)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!3795, !3798, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !239, line: 222, baseType: !3971)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 219, size: 64, elements: !3972)
!3972 = !{!3973, !3974}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3971, file: !239, line: 220, baseType: !136, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3971, file: !239, line: 221, baseType: !136, size: 32, offset: 32)
!3975 = !{!3976, !3977}
!3976 = !DILocalVariable(name: "region", arg: 1, scope: !3965, file: !236, line: 237, type: !3798)
!3977 = !DILocalVariable(name: "region_config", arg: 2, scope: !3965, file: !236, line: 237, type: !3968)
!3978 = !DILocation(line: 0, scope: !3965)
!3979 = !DILocation(line: 240, column: 16, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3965, file: !236, line: 240, column: 9)
!3981 = !DILocation(line: 240, column: 9, scope: !3965)
!3982 = !DILocation(line: 245, column: 23, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3965, file: !236, line: 245, column: 9)
!3984 = !DILocation(line: 245, column: 9, scope: !3965)
!3985 = !DILocation(line: 250, column: 24, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3965, file: !236, line: 250, column: 9)
!3987 = !DILocation(line: 250, column: 45, scope: !3986)
!3988 = !DILocation(line: 250, column: 9, scope: !3965)
!3989 = !DILocation(line: 251, column: 9, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !236, line: 250, column: 81)
!3991 = !DILocation(line: 256, column: 24, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3965, file: !236, line: 256, column: 9)
!3993 = !DILocation(line: 256, column: 42, scope: !3992)
!3994 = !DILocation(line: 256, column: 9, scope: !3965)
!3995 = !DILocation(line: 257, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !236, line: 256, column: 78)
!3997 = !DILocation(line: 262, column: 5, scope: !3965)
!3998 = !DILocation(line: 262, column: 34, scope: !3965)
!3999 = !DILocation(line: 263, column: 55, scope: !3965)
!4000 = !DILocation(line: 263, column: 93, scope: !3965)
!4001 = !DILocation(line: 263, column: 76, scope: !3965)
!4002 = !DILocation(line: 263, column: 5, scope: !3965)
!4003 = !DILocation(line: 263, column: 38, scope: !3965)
!4004 = !DILocation(line: 266, column: 34, scope: !3965)
!4005 = !DILocation(line: 269, column: 45, scope: !3965)
!4006 = !DILocation(line: 269, column: 41, scope: !3965)
!4007 = !DILocation(line: 269, column: 43, scope: !3965)
!4008 = !DILocation(line: 270, column: 49, scope: !3965)
!4009 = !DILocation(line: 270, column: 45, scope: !3965)
!4010 = !DILocation(line: 270, column: 47, scope: !3965)
!4011 = !DILocation(line: 272, column: 5, scope: !3965)
!4012 = !DILocation(line: 273, column: 1, scope: !3965)
!4013 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !236, file: !236, line: 275, type: !4014, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!3795, !136}
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "address", arg: 1, scope: !4013, file: !236, line: 275, type: !136)
!4018 = !DILocalVariable(name: "irq_flag", scope: !4013, file: !236, line: 277, type: !136)
!4019 = !DILocation(line: 0, scope: !4013)
!4020 = !DILocation(line: 280, column: 17, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4013, file: !236, line: 280, column: 9)
!4022 = !DILocation(line: 280, column: 9, scope: !4013)
!4023 = !DILocation(line: 284, column: 16, scope: !4013)
!4024 = !DILocation(line: 287, column: 32, scope: !4013)
!4025 = !DILocation(line: 287, column: 21, scope: !4013)
!4026 = !DILocation(line: 288, column: 21, scope: !4013)
!4027 = !DILocation(line: 434, column: 3, scope: !3843, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 291, column: 5, scope: !4013)
!4029 = !DILocation(line: 294, column: 5, scope: !4013)
!4030 = !DILocation(line: 296, column: 5, scope: !4013)
!4031 = !DILocation(line: 297, column: 1, scope: !4013)
!4032 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !236, file: !236, line: 299, type: !4033, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4035)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!3795, !136, !136}
!4035 = !{!4036, !4037, !4038, !4039}
!4036 = !DILocalVariable(name: "address", arg: 1, scope: !4032, file: !236, line: 299, type: !136)
!4037 = !DILocalVariable(name: "length", arg: 2, scope: !4032, file: !236, line: 299, type: !136)
!4038 = !DILocalVariable(name: "irq_flag", scope: !4032, file: !236, line: 301, type: !136)
!4039 = !DILocalVariable(name: "end_address", scope: !4032, file: !236, line: 302, type: !136)
!4040 = !DILocation(line: 0, scope: !4032)
!4041 = !DILocation(line: 302, column: 36, scope: !4032)
!4042 = !DILocation(line: 305, column: 47, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4032, file: !236, line: 305, column: 9)
!4044 = !DILocation(line: 310, column: 16, scope: !4032)
!4045 = !DILocation(line: 313, column: 20, scope: !4032)
!4046 = !DILocation(line: 313, column: 5, scope: !4032)
!4047 = !DILocation(line: 314, column: 9, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4032, file: !236, line: 313, column: 35)
!4049 = !DILocation(line: 315, column: 17, scope: !4048)
!4050 = distinct !{!4050, !4046, !4051}
!4051 = !DILocation(line: 316, column: 5, scope: !4032)
!4052 = !DILocation(line: 434, column: 3, scope: !3843, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 319, column: 5, scope: !4032)
!4054 = !DILocation(line: 322, column: 5, scope: !4032)
!4055 = !DILocation(line: 324, column: 5, scope: !4032)
!4056 = !DILocation(line: 325, column: 1, scope: !4032)
!4057 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !236, file: !236, line: 351, type: !4014, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4058)
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "address", arg: 1, scope: !4057, file: !236, line: 351, type: !136)
!4060 = !DILocalVariable(name: "irq_flag", scope: !4057, file: !236, line: 353, type: !136)
!4061 = !DILocation(line: 0, scope: !4057)
!4062 = !DILocation(line: 356, column: 17, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4057, file: !236, line: 356, column: 9)
!4064 = !DILocation(line: 356, column: 9, scope: !4057)
!4065 = !DILocation(line: 361, column: 16, scope: !4057)
!4066 = !DILocation(line: 364, column: 32, scope: !4057)
!4067 = !DILocation(line: 364, column: 21, scope: !4057)
!4068 = !DILocation(line: 365, column: 21, scope: !4057)
!4069 = !DILocation(line: 434, column: 3, scope: !3843, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 368, column: 5, scope: !4057)
!4071 = !DILocation(line: 371, column: 5, scope: !4057)
!4072 = !DILocation(line: 373, column: 5, scope: !4057)
!4073 = !DILocation(line: 374, column: 1, scope: !4057)
!4074 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !236, file: !236, line: 376, type: !4033, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4075)
!4075 = !{!4076, !4077, !4078, !4079}
!4076 = !DILocalVariable(name: "address", arg: 1, scope: !4074, file: !236, line: 376, type: !136)
!4077 = !DILocalVariable(name: "length", arg: 2, scope: !4074, file: !236, line: 376, type: !136)
!4078 = !DILocalVariable(name: "irq_flag", scope: !4074, file: !236, line: 378, type: !136)
!4079 = !DILocalVariable(name: "end_address", scope: !4074, file: !236, line: 379, type: !136)
!4080 = !DILocation(line: 0, scope: !4074)
!4081 = !DILocation(line: 379, column: 36, scope: !4074)
!4082 = !DILocation(line: 382, column: 47, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4074, file: !236, line: 382, column: 9)
!4084 = !DILocation(line: 387, column: 16, scope: !4074)
!4085 = !DILocation(line: 390, column: 20, scope: !4074)
!4086 = !DILocation(line: 390, column: 5, scope: !4074)
!4087 = !DILocation(line: 391, column: 9, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4074, file: !236, line: 390, column: 35)
!4089 = !DILocation(line: 392, column: 17, scope: !4088)
!4090 = distinct !{!4090, !4086, !4091}
!4091 = !DILocation(line: 393, column: 5, scope: !4074)
!4092 = !DILocation(line: 434, column: 3, scope: !3843, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 396, column: 5, scope: !4074)
!4094 = !DILocation(line: 399, column: 5, scope: !4074)
!4095 = !DILocation(line: 401, column: 5, scope: !4074)
!4096 = !DILocation(line: 402, column: 1, scope: !4074)
!4097 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !236, file: !236, line: 404, type: !3793, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4098)
!4098 = !{!4099}
!4099 = !DILocalVariable(name: "irq_flag", scope: !4097, file: !236, line: 406, type: !136)
!4100 = !DILocation(line: 409, column: 16, scope: !4097)
!4101 = !DILocation(line: 0, scope: !4097)
!4102 = !DILocation(line: 412, column: 21, scope: !4097)
!4103 = !DILocation(line: 413, column: 21, scope: !4097)
!4104 = !DILocation(line: 434, column: 3, scope: !3843, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 416, column: 5, scope: !4097)
!4106 = !DILocation(line: 419, column: 5, scope: !4097)
!4107 = !DILocation(line: 421, column: 5, scope: !4097)
!4108 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !236, file: !236, line: 424, type: !4109, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4111)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!126, !136}
!4111 = !{!4112, !4113}
!4112 = !DILocalVariable(name: "address", arg: 1, scope: !4108, file: !236, line: 424, type: !136)
!4113 = !DILocalVariable(name: "region", scope: !4108, file: !236, line: 426, type: !3798)
!4114 = !DILocation(line: 0, scope: !4108)
!4115 = !DILocation(line: 429, column: 18, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4108, file: !236, line: 429, column: 9)
!4117 = !DILocation(line: 429, column: 28, scope: !4116)
!4118 = !DILocation(line: 429, column: 9, scope: !4108)
!4119 = !DILocation(line: 435, column: 20, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !236, line: 435, column: 13)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !236, line: 433, column: 81)
!4122 = distinct !DILexicalBlock(scope: !4123, file: !236, line: 433, column: 5)
!4123 = distinct !DILexicalBlock(scope: !4108, file: !236, line: 433, column: 5)
!4124 = !DILocation(line: 435, column: 41, scope: !4120)
!4125 = !DILocation(line: 435, column: 36, scope: !4120)
!4126 = !DILocation(line: 435, column: 13, scope: !4121)
!4127 = !DILocation(line: 436, column: 30, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !236, line: 436, column: 17)
!4129 = distinct !DILexicalBlock(scope: !4120, file: !236, line: 435, column: 53)
!4130 = !DILocation(line: 436, column: 59, scope: !4128)
!4131 = !DILocation(line: 436, column: 26, scope: !4128)
!4132 = !DILocation(line: 436, column: 85, scope: !4128)
!4133 = !DILocation(line: 436, column: 99, scope: !4128)
!4134 = !DILocation(line: 436, column: 97, scope: !4128)
!4135 = !DILocation(line: 436, column: 17, scope: !4129)
!4136 = !DILocation(line: 433, column: 77, scope: !4122)
!4137 = !DILocation(line: 433, column: 46, scope: !4122)
!4138 = !DILocation(line: 433, column: 5, scope: !4123)
!4139 = distinct !{!4139, !4138, !4140}
!4140 = !DILocation(line: 440, column: 5, scope: !4123)
!4141 = !DILocation(line: 442, column: 1, scope: !4108)
!4142 = distinct !DISubprogram(name: "hal_nvic_init", scope: !319, file: !319, line: 60, type: !4143, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1083)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!4145}
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !322, line: 158, baseType: !321)
!4146 = !DILocation(line: 62, column: 5, scope: !4142)
!4147 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !319, file: !319, line: 65, type: !4148, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4150)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!4145, !330}
!4150 = !{!4151, !4152}
!4151 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4147, file: !319, line: 65, type: !330)
!4152 = !DILocalVariable(name: "status", scope: !4147, file: !319, line: 67, type: !4145)
!4153 = !DILocation(line: 0, scope: !4147)
!4154 = !DILocation(line: 69, column: 40, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4147, file: !319, line: 69, column: 9)
!4156 = !DILocation(line: 73, column: 9, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4155, file: !319, line: 72, column: 12)
!4158 = !DILocation(line: 77, column: 5, scope: !4147)
!4159 = !DILocation(line: 78, column: 1, scope: !4147)
!4160 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !335, file: !335, line: 1494, type: !4161, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{null, !173}
!4163 = !{!4164}
!4164 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4160, file: !335, line: 1494, type: !173)
!4165 = !DILocation(line: 0, scope: !4160)
!4166 = !DILocation(line: 1497, column: 91, scope: !4160)
!4167 = !DILocation(line: 1497, column: 61, scope: !4160)
!4168 = !DILocation(line: 1497, column: 40, scope: !4160)
!4169 = !DILocation(line: 1497, column: 3, scope: !4160)
!4170 = !DILocation(line: 1497, column: 46, scope: !4160)
!4171 = !DILocation(line: 1498, column: 1, scope: !4160)
!4172 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !319, file: !319, line: 80, type: !4148, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4173)
!4173 = !{!4174, !4175}
!4174 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4172, file: !319, line: 80, type: !330)
!4175 = !DILocalVariable(name: "status", scope: !4172, file: !319, line: 82, type: !4145)
!4176 = !DILocation(line: 0, scope: !4172)
!4177 = !DILocation(line: 84, column: 40, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4172, file: !319, line: 84, column: 9)
!4179 = !DILocation(line: 88, column: 9, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4178, file: !319, line: 87, column: 12)
!4181 = !DILocation(line: 92, column: 5, scope: !4172)
!4182 = !DILocation(line: 93, column: 1, scope: !4172)
!4183 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !335, file: !335, line: 1507, type: !4161, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4184)
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4183, file: !335, line: 1507, type: !173)
!4186 = !DILocation(line: 0, scope: !4183)
!4187 = !DILocation(line: 1509, column: 65, scope: !4183)
!4188 = !DILocation(line: 1509, column: 44, scope: !4183)
!4189 = !DILocation(line: 1509, column: 32, scope: !4183)
!4190 = !DILocation(line: 1509, column: 3, scope: !4183)
!4191 = !DILocation(line: 1509, column: 39, scope: !4183)
!4192 = !DILocation(line: 1510, column: 1, scope: !4183)
!4193 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !319, file: !319, line: 95, type: !4194, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!136, !330}
!4196 = !{!4197, !4198}
!4197 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4193, file: !319, line: 95, type: !330)
!4198 = !DILocalVariable(name: "ret", scope: !4193, file: !319, line: 97, type: !136)
!4199 = !DILocation(line: 0, scope: !4193)
!4200 = !DILocation(line: 99, column: 40, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4193, file: !319, line: 99, column: 9)
!4202 = !DILocation(line: 102, column: 15, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4201, file: !319, line: 101, column: 12)
!4204 = !DILocation(line: 105, column: 5, scope: !4193)
!4205 = !DILocation(line: 106, column: 1, scope: !4193)
!4206 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !335, file: !335, line: 1523, type: !4207, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4209)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!136, !173}
!4209 = !{!4210}
!4210 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4206, file: !335, line: 1523, type: !173)
!4211 = !DILocation(line: 0, scope: !4206)
!4212 = !DILocation(line: 1525, column: 51, scope: !4206)
!4213 = !DILocation(line: 1525, column: 23, scope: !4206)
!4214 = !DILocation(line: 1525, column: 83, scope: !4206)
!4215 = !DILocation(line: 1525, column: 22, scope: !4206)
!4216 = !DILocation(line: 1525, column: 3, scope: !4206)
!4217 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !319, file: !319, line: 108, type: !4148, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4218)
!4218 = !{!4219, !4220}
!4219 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4217, file: !319, line: 108, type: !330)
!4220 = !DILocalVariable(name: "status", scope: !4217, file: !319, line: 110, type: !4145)
!4221 = !DILocation(line: 0, scope: !4217)
!4222 = !DILocation(line: 112, column: 40, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4217, file: !319, line: 112, column: 9)
!4224 = !DILocation(line: 116, column: 9, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4223, file: !319, line: 115, column: 12)
!4226 = !DILocation(line: 120, column: 5, scope: !4217)
!4227 = !DILocation(line: 121, column: 1, scope: !4217)
!4228 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !335, file: !335, line: 1535, type: !4161, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4229)
!4229 = !{!4230}
!4230 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4228, file: !335, line: 1535, type: !173)
!4231 = !DILocation(line: 0, scope: !4228)
!4232 = !DILocation(line: 1537, column: 65, scope: !4228)
!4233 = !DILocation(line: 1537, column: 44, scope: !4228)
!4234 = !DILocation(line: 1537, column: 32, scope: !4228)
!4235 = !DILocation(line: 1537, column: 3, scope: !4228)
!4236 = !DILocation(line: 1537, column: 39, scope: !4228)
!4237 = !DILocation(line: 1538, column: 1, scope: !4228)
!4238 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !319, file: !319, line: 123, type: !4148, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4239)
!4239 = !{!4240, !4241}
!4240 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4238, file: !319, line: 123, type: !330)
!4241 = !DILocalVariable(name: "status", scope: !4238, file: !319, line: 125, type: !4145)
!4242 = !DILocation(line: 0, scope: !4238)
!4243 = !DILocation(line: 127, column: 40, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4238, file: !319, line: 127, column: 9)
!4245 = !DILocation(line: 131, column: 9, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4244, file: !319, line: 130, column: 12)
!4247 = !DILocation(line: 135, column: 5, scope: !4238)
!4248 = !DILocation(line: 136, column: 1, scope: !4238)
!4249 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !335, file: !335, line: 1547, type: !4161, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4250)
!4250 = !{!4251}
!4251 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4249, file: !335, line: 1547, type: !173)
!4252 = !DILocation(line: 0, scope: !4249)
!4253 = !DILocation(line: 1549, column: 65, scope: !4249)
!4254 = !DILocation(line: 1549, column: 44, scope: !4249)
!4255 = !DILocation(line: 1549, column: 32, scope: !4249)
!4256 = !DILocation(line: 1549, column: 3, scope: !4249)
!4257 = !DILocation(line: 1549, column: 39, scope: !4249)
!4258 = !DILocation(line: 1550, column: 1, scope: !4249)
!4259 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !319, file: !319, line: 138, type: !4260, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!4145, !330, !136}
!4262 = !{!4263, !4264, !4265}
!4263 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4259, file: !319, line: 138, type: !330)
!4264 = !DILocalVariable(name: "priority", arg: 2, scope: !4259, file: !319, line: 138, type: !136)
!4265 = !DILocalVariable(name: "status", scope: !4259, file: !319, line: 140, type: !4145)
!4266 = !DILocation(line: 0, scope: !4259)
!4267 = !DILocation(line: 142, column: 40, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4259, file: !319, line: 142, column: 9)
!4269 = !DILocation(line: 146, column: 9, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4268, file: !319, line: 145, column: 12)
!4271 = !DILocation(line: 150, column: 5, scope: !4259)
!4272 = !DILocation(line: 151, column: 1, scope: !4259)
!4273 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !335, file: !335, line: 1577, type: !4274, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{null, !173, !136}
!4276 = !{!4277, !4278}
!4277 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4273, file: !335, line: 1577, type: !173)
!4278 = !DILocalVariable(name: "priority", arg: 2, scope: !4273, file: !335, line: 1577, type: !136)
!4279 = !DILocation(line: 0, scope: !4273)
!4280 = !DILocation(line: 1582, column: 34, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !335, line: 1581, column: 8)
!4282 = distinct !DILexicalBlock(scope: !4273, file: !335, line: 1579, column: 6)
!4283 = !DILocation(line: 1582, column: 5, scope: !4281)
!4284 = !DILocation(line: 1582, column: 32, scope: !4281)
!4285 = !DILocation(line: 1583, column: 1, scope: !4273)
!4286 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !319, file: !319, line: 153, type: !4194, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4287)
!4287 = !{!4288, !4289}
!4288 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4286, file: !319, line: 153, type: !330)
!4289 = !DILocalVariable(name: "ret", scope: !4286, file: !319, line: 155, type: !136)
!4290 = !DILocation(line: 0, scope: !4286)
!4291 = !DILocation(line: 157, column: 40, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4286, file: !319, line: 157, column: 9)
!4293 = !DILocation(line: 160, column: 15, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4292, file: !319, line: 159, column: 12)
!4295 = !DILocation(line: 163, column: 5, scope: !4286)
!4296 = !DILocation(line: 164, column: 1, scope: !4286)
!4297 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !335, file: !335, line: 1597, type: !4207, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4298)
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4297, file: !335, line: 1597, type: !173)
!4300 = !DILocation(line: 0, scope: !4297)
!4301 = !DILocation(line: 1603, column: 23, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !335, line: 1602, column: 8)
!4303 = distinct !DILexicalBlock(scope: !4297, file: !335, line: 1600, column: 6)
!4304 = !DILocation(line: 1603, column: 60, scope: !4302)
!4305 = !DILocation(line: 1604, column: 1, scope: !4297)
!4306 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !319, file: !319, line: 173, type: !181, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1083)
!4307 = !DILocation(line: 175, column: 1, scope: !4306)
!4308 = distinct !DISubprogram(name: "isrC_main", scope: !319, file: !319, line: 178, type: !4143, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4309)
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "status", scope: !4308, file: !319, line: 180, type: !4145)
!4311 = !DILocalVariable(name: "irq_number", scope: !4308, file: !319, line: 181, type: !330)
!4312 = !DILocation(line: 0, scope: !4308)
!4313 = !DILocation(line: 188, column: 34, scope: !4308)
!4314 = !DILocation(line: 189, column: 24, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4308, file: !319, line: 189, column: 9)
!4316 = !DILocation(line: 192, column: 48, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4315, file: !319, line: 192, column: 16)
!4318 = !DILocation(line: 192, column: 62, scope: !4317)
!4319 = !DILocation(line: 192, column: 16, scope: !4315)
!4320 = !DILocation(line: 194, column: 9, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4317, file: !319, line: 192, column: 71)
!4322 = !DILocation(line: 195, column: 9, scope: !4321)
!4323 = !DILocation(line: 197, column: 55, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4317, file: !319, line: 196, column: 12)
!4325 = !DILocation(line: 197, column: 41, scope: !4324)
!4326 = !DILocation(line: 197, column: 53, scope: !4324)
!4327 = !DILocation(line: 198, column: 41, scope: !4324)
!4328 = !DILocation(line: 198, column: 9, scope: !4324)
!4329 = !DILocation(line: 202, column: 5, scope: !4308)
!4330 = !DILocation(line: 203, column: 1, scope: !4308)
!4331 = distinct !DISubprogram(name: "get_current_irq", scope: !319, file: !319, line: 166, type: !1115, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4332)
!4332 = !{!4333}
!4333 = !DILocalVariable(name: "irq_num", scope: !4331, file: !319, line: 168, type: !136)
!4334 = !DILocation(line: 168, column: 31, scope: !4331)
!4335 = !DILocation(line: 168, column: 36, scope: !4331)
!4336 = !DILocation(line: 0, scope: !4331)
!4337 = !DILocation(line: 169, column: 21, scope: !4331)
!4338 = !DILocation(line: 169, column: 5, scope: !4331)
!4339 = distinct !DISubprogram(name: "get_pending_irq", scope: !319, file: !319, line: 55, type: !1115, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1083)
!4340 = !DILocation(line: 57, column: 19, scope: !4339)
!4341 = !DILocation(line: 57, column: 51, scope: !4339)
!4342 = !DILocation(line: 57, column: 5, scope: !4339)
!4343 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !319, file: !319, line: 205, type: !4344, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4347)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!4145, !330, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !322, line: 175, baseType: !412)
!4347 = !{!4348, !4349, !4350}
!4348 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4343, file: !319, line: 205, type: !330)
!4349 = !DILocalVariable(name: "callback", arg: 2, scope: !4343, file: !319, line: 205, type: !4346)
!4350 = !DILocalVariable(name: "mask", scope: !4343, file: !319, line: 207, type: !136)
!4351 = !DILocation(line: 0, scope: !4343)
!4352 = !DILocation(line: 209, column: 24, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4343, file: !319, line: 209, column: 9)
!4354 = !DILocation(line: 213, column: 12, scope: !4343)
!4355 = !DILocation(line: 214, column: 5, scope: !4343)
!4356 = !DILocation(line: 215, column: 37, scope: !4343)
!4357 = !DILocation(line: 215, column: 51, scope: !4343)
!4358 = !DILocation(line: 216, column: 37, scope: !4343)
!4359 = !DILocation(line: 216, column: 49, scope: !4343)
!4360 = !DILocation(line: 217, column: 5, scope: !4343)
!4361 = !DILocation(line: 219, column: 5, scope: !4343)
!4362 = !DILocation(line: 220, column: 1, scope: !4343)
!4363 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !319, file: !319, line: 222, type: !4364, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!4145, !3411}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "mask", arg: 1, scope: !4363, file: !319, line: 222, type: !3411)
!4368 = !DILocation(line: 0, scope: !4363)
!4369 = !DILocation(line: 224, column: 13, scope: !4363)
!4370 = !DILocation(line: 224, column: 11, scope: !4363)
!4371 = !DILocation(line: 225, column: 5, scope: !4363)
!4372 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !319, file: !319, line: 228, type: !4373, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!4145, !136}
!4375 = !{!4376}
!4376 = !DILocalVariable(name: "mask", arg: 1, scope: !4372, file: !319, line: 228, type: !136)
!4377 = !DILocation(line: 0, scope: !4372)
!4378 = !DILocation(line: 230, column: 5, scope: !4372)
!4379 = !DILocation(line: 231, column: 5, scope: !4372)
!4380 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1033, file: !1033, line: 50, type: !4381, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4385)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!4383, !4384, !128}
!4383 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1036, line: 238, baseType: !1035)
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !432, line: 281, baseType: !533)
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4380, file: !1033, line: 50, type: !4384)
!4387 = !DILocalVariable(name: "function_index", arg: 2, scope: !4380, file: !1033, line: 50, type: !128)
!4388 = !DILocalVariable(name: "ret_value", scope: !4380, file: !1033, line: 52, type: !331)
!4389 = !DILocation(line: 0, scope: !4380)
!4390 = !DILocation(line: 53, column: 18, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4380, file: !1033, line: 53, column: 9)
!4392 = !DILocation(line: 53, column: 9, scope: !4380)
!4393 = !DILocation(line: 57, column: 24, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4380, file: !1033, line: 57, column: 9)
!4395 = !DILocation(line: 57, column: 9, scope: !4380)
!4396 = !DILocation(line: 57, column: 9, scope: !4394)
!4397 = !DILocation(line: 60, column: 17, scope: !4380)
!4398 = !DILocation(line: 61, column: 12, scope: !4380)
!4399 = !DILocation(line: 61, column: 5, scope: !4380)
!4400 = !DILocation(line: 62, column: 1, scope: !4380)
!4401 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1033, file: !1033, line: 64, type: !4402, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4405)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!4404, !4384}
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1036, line: 229, baseType: !1042)
!4405 = !{!4406}
!4406 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4401, file: !1033, line: 64, type: !4384)
!4407 = !DILocation(line: 0, scope: !4401)
!4408 = !DILocation(line: 66, column: 5, scope: !4401)
!4409 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1033, file: !1033, line: 69, type: !4402, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4410)
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4409, file: !1033, line: 69, type: !4384)
!4412 = !DILocation(line: 0, scope: !4409)
!4413 = !DILocation(line: 71, column: 5, scope: !4409)
!4414 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1033, file: !1033, line: 74, type: !4415, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4418)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!4404, !4384, !4417}
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 32)
!4418 = !{!4419, !4420, !4421}
!4419 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4414, file: !1033, line: 74, type: !4384)
!4420 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4414, file: !1033, line: 74, type: !4417)
!4421 = !DILocalVariable(name: "status", scope: !4414, file: !1033, line: 76, type: !4422)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1063, line: 67, baseType: !4423)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1063, line: 62, size: 64, elements: !4424)
!4424 = !{!4425, !4426, !4427, !4428}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4423, file: !1063, line: 63, baseType: !136, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4423, file: !1063, line: 64, baseType: !128, size: 8, offset: 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4423, file: !1063, line: 65, baseType: !128, size: 8, offset: 40)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4423, file: !1063, line: 66, baseType: !128, size: 8, offset: 48)
!4429 = !DILocation(line: 0, scope: !4414)
!4430 = !DILocation(line: 77, column: 14, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4414, file: !1033, line: 77, column: 9)
!4432 = !DILocation(line: 77, column: 9, scope: !4414)
!4433 = !DILocation(line: 81, column: 18, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4414, file: !1033, line: 81, column: 9)
!4435 = !DILocation(line: 81, column: 9, scope: !4414)
!4436 = !DILocation(line: 85, column: 14, scope: !4414)
!4437 = !DILocation(line: 86, column: 18, scope: !4414)
!4438 = !DILocation(line: 86, column: 16, scope: !4414)
!4439 = !DILocation(line: 87, column: 5, scope: !4414)
!4440 = !DILocation(line: 88, column: 1, scope: !4414)
!4441 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1033, file: !1033, line: 90, type: !4442, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4404, !4384, !1069}
!4444 = !{!4445, !4446, !4447}
!4445 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4441, file: !1033, line: 90, type: !4384)
!4446 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4441, file: !1033, line: 90, type: !1069)
!4447 = !DILocalVariable(name: "ret_value", scope: !4441, file: !1033, line: 92, type: !331)
!4448 = !DILocation(line: 0, scope: !4441)
!4449 = !DILocation(line: 93, column: 18, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4441, file: !1033, line: 93, column: 9)
!4451 = !DILocation(line: 93, column: 9, scope: !4441)
!4452 = !DILocation(line: 97, column: 60, scope: !4441)
!4453 = !DILocation(line: 97, column: 17, scope: !4441)
!4454 = !DILocation(line: 98, column: 12, scope: !4441)
!4455 = !DILocation(line: 98, column: 5, scope: !4441)
!4456 = !DILocation(line: 99, column: 1, scope: !4441)
!4457 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1033, file: !1033, line: 101, type: !4415, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4458)
!4458 = !{!4459, !4460, !4461}
!4459 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4457, file: !1033, line: 101, type: !4384)
!4460 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4457, file: !1033, line: 101, type: !4417)
!4461 = !DILocalVariable(name: "status", scope: !4457, file: !1033, line: 103, type: !4422)
!4462 = !DILocation(line: 0, scope: !4457)
!4463 = !DILocation(line: 104, column: 18, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4457, file: !1033, line: 104, column: 9)
!4465 = !DILocation(line: 104, column: 9, scope: !4457)
!4466 = !DILocation(line: 108, column: 14, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4457, file: !1033, line: 108, column: 9)
!4468 = !DILocation(line: 108, column: 9, scope: !4457)
!4469 = !DILocation(line: 112, column: 14, scope: !4457)
!4470 = !DILocation(line: 113, column: 18, scope: !4457)
!4471 = !DILocation(line: 113, column: 16, scope: !4457)
!4472 = !DILocation(line: 114, column: 5, scope: !4457)
!4473 = !DILocation(line: 115, column: 1, scope: !4457)
!4474 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1033, file: !1033, line: 117, type: !4475, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4478)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!4404, !4384, !4477}
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1036, line: 213, baseType: !1052)
!4478 = !{!4479, !4480, !4481}
!4479 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4474, file: !1033, line: 117, type: !4384)
!4480 = !DILocalVariable(name: "direction", arg: 2, scope: !4474, file: !1033, line: 117, type: !4477)
!4481 = !DILocalVariable(name: "ret_value", scope: !4474, file: !1033, line: 119, type: !331)
!4482 = !DILocation(line: 0, scope: !4474)
!4483 = !DILocation(line: 120, column: 18, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4474, file: !1033, line: 120, column: 9)
!4485 = !DILocation(line: 120, column: 9, scope: !4474)
!4486 = !DILocation(line: 123, column: 17, scope: !4474)
!4487 = !DILocation(line: 125, column: 12, scope: !4474)
!4488 = !DILocation(line: 125, column: 5, scope: !4474)
!4489 = !DILocation(line: 126, column: 1, scope: !4474)
!4490 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1033, file: !1033, line: 128, type: !4491, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4494)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!4404, !4384, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 32)
!4494 = !{!4495, !4496, !4497}
!4495 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4490, file: !1033, line: 128, type: !4384)
!4496 = !DILocalVariable(name: "direction", arg: 2, scope: !4490, file: !1033, line: 128, type: !4493)
!4497 = !DILocalVariable(name: "status", scope: !4490, file: !1033, line: 131, type: !4422)
!4498 = !DILocation(line: 0, scope: !4490)
!4499 = !DILocation(line: 132, column: 18, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4490, file: !1033, line: 132, column: 9)
!4501 = !DILocation(line: 132, column: 9, scope: !4490)
!4502 = !DILocation(line: 136, column: 14, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4490, file: !1033, line: 136, column: 9)
!4504 = !DILocation(line: 136, column: 9, scope: !4490)
!4505 = !DILocation(line: 140, column: 14, scope: !4490)
!4506 = !DILocation(line: 141, column: 18, scope: !4490)
!4507 = !DILocation(line: 141, column: 16, scope: !4490)
!4508 = !DILocation(line: 142, column: 5, scope: !4490)
!4509 = !DILocation(line: 143, column: 1, scope: !4490)
!4510 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1033, file: !1033, line: 146, type: !4402, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4511)
!4511 = !{!4512, !4513}
!4512 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4510, file: !1033, line: 146, type: !4384)
!4513 = !DILocalVariable(name: "status", scope: !4510, file: !1033, line: 148, type: !4422)
!4514 = !DILocation(line: 0, scope: !4510)
!4515 = !DILocation(line: 149, column: 18, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4510, file: !1033, line: 149, column: 9)
!4517 = !DILocation(line: 149, column: 9, scope: !4510)
!4518 = !DILocation(line: 153, column: 14, scope: !4510)
!4519 = !DILocation(line: 154, column: 76, scope: !4510)
!4520 = !DILocation(line: 154, column: 12, scope: !4510)
!4521 = !DILocation(line: 154, column: 5, scope: !4510)
!4522 = !DILocation(line: 155, column: 1, scope: !4510)
!4523 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1033, file: !1033, line: 157, type: !4402, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4524)
!4524 = !{!4525, !4526}
!4525 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4523, file: !1033, line: 157, type: !4384)
!4526 = !DILocalVariable(name: "ret_value", scope: !4523, file: !1033, line: 159, type: !331)
!4527 = !DILocation(line: 0, scope: !4523)
!4528 = !DILocation(line: 160, column: 18, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4523, file: !1033, line: 160, column: 9)
!4530 = !DILocation(line: 160, column: 9, scope: !4523)
!4531 = !DILocation(line: 164, column: 17, scope: !4523)
!4532 = !DILocation(line: 165, column: 19, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4523, file: !1033, line: 165, column: 9)
!4534 = !DILocation(line: 165, column: 9, scope: !4523)
!4535 = !DILocation(line: 168, column: 17, scope: !4523)
!4536 = !DILocation(line: 169, column: 12, scope: !4523)
!4537 = !DILocation(line: 169, column: 5, scope: !4523)
!4538 = !DILocation(line: 170, column: 1, scope: !4523)
!4539 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1033, file: !1033, line: 172, type: !4402, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4540)
!4540 = !{!4541, !4542}
!4541 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4539, file: !1033, line: 172, type: !4384)
!4542 = !DILocalVariable(name: "ret_value", scope: !4539, file: !1033, line: 174, type: !331)
!4543 = !DILocation(line: 0, scope: !4539)
!4544 = !DILocation(line: 175, column: 18, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4539, file: !1033, line: 175, column: 9)
!4546 = !DILocation(line: 175, column: 9, scope: !4539)
!4547 = !DILocation(line: 179, column: 17, scope: !4539)
!4548 = !DILocation(line: 180, column: 19, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4539, file: !1033, line: 180, column: 9)
!4550 = !DILocation(line: 180, column: 9, scope: !4539)
!4551 = !DILocation(line: 183, column: 17, scope: !4539)
!4552 = !DILocation(line: 184, column: 12, scope: !4539)
!4553 = !DILocation(line: 184, column: 5, scope: !4539)
!4554 = !DILocation(line: 185, column: 1, scope: !4539)
!4555 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1033, file: !1033, line: 187, type: !4402, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4556)
!4556 = !{!4557, !4558}
!4557 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4555, file: !1033, line: 187, type: !4384)
!4558 = !DILocalVariable(name: "ret_value", scope: !4555, file: !1033, line: 189, type: !331)
!4559 = !DILocation(line: 0, scope: !4555)
!4560 = !DILocation(line: 191, column: 18, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4555, file: !1033, line: 191, column: 9)
!4562 = !DILocation(line: 191, column: 9, scope: !4555)
!4563 = !DILocation(line: 195, column: 17, scope: !4555)
!4564 = !DILocation(line: 196, column: 12, scope: !4555)
!4565 = !DILocation(line: 196, column: 5, scope: !4555)
!4566 = !DILocation(line: 197, column: 1, scope: !4555)
!4567 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1033, file: !1033, line: 200, type: !4568, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!4404, !4384, !1070}
!4570 = !{!4571, !4572, !4573}
!4571 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4567, file: !1033, line: 200, type: !4384)
!4572 = !DILocalVariable(name: "driving", arg: 2, scope: !4567, file: !1033, line: 200, type: !1070)
!4573 = !DILocalVariable(name: "ret_value", scope: !4567, file: !1033, line: 202, type: !331)
!4574 = !DILocation(line: 0, scope: !4567)
!4575 = !DILocation(line: 204, column: 18, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4567, file: !1033, line: 204, column: 9)
!4577 = !DILocation(line: 204, column: 9, scope: !4567)
!4578 = !DILocation(line: 208, column: 64, scope: !4567)
!4579 = !DILocation(line: 208, column: 17, scope: !4567)
!4580 = !DILocation(line: 210, column: 12, scope: !4567)
!4581 = !DILocation(line: 210, column: 5, scope: !4567)
!4582 = !DILocation(line: 211, column: 1, scope: !4567)
!4583 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1033, file: !1033, line: 214, type: !4584, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1032, retainedNodes: !4587)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!4404, !4384, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 32)
!4587 = !{!4588, !4589, !4590, !4591}
!4588 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4583, file: !1033, line: 214, type: !4384)
!4589 = !DILocalVariable(name: "driving", arg: 2, scope: !4583, file: !1033, line: 214, type: !4586)
!4590 = !DILocalVariable(name: "ret_value", scope: !4583, file: !1033, line: 216, type: !331)
!4591 = !DILocalVariable(name: "value", scope: !4583, file: !1033, line: 217, type: !128)
!4592 = !DILocation(line: 0, scope: !4583)
!4593 = !DILocation(line: 217, column: 5, scope: !4583)
!4594 = !DILocation(line: 219, column: 18, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4583, file: !1033, line: 219, column: 9)
!4596 = !DILocation(line: 219, column: 9, scope: !4583)
!4597 = !DILocation(line: 223, column: 17, scope: !4583)
!4598 = !DILocation(line: 225, column: 44, scope: !4583)
!4599 = !DILocation(line: 225, column: 16, scope: !4583)
!4600 = !DILocation(line: 225, column: 14, scope: !4583)
!4601 = !DILocation(line: 227, column: 12, scope: !4583)
!4602 = !DILocation(line: 227, column: 5, scope: !4583)
!4603 = !DILocation(line: 228, column: 1, scope: !4583)
!4604 = distinct !DISubprogram(name: "hal_uart_init", scope: !421, file: !421, line: 234, type: !4605, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4609)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!4607, !481, !4608}
!4607 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !424, line: 351, baseType: !423)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 32)
!4609 = !{!4610, !4611}
!4610 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4604, file: !421, line: 234, type: !481)
!4611 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4604, file: !421, line: 234, type: !4608)
!4612 = !DILocation(line: 0, scope: !4604)
!4613 = !DILocation(line: 236, column: 10, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4604, file: !421, line: 236, column: 9)
!4615 = !DILocation(line: 236, column: 9, scope: !4604)
!4616 = !DILocation(line: 239, column: 41, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4604, file: !421, line: 239, column: 9)
!4618 = !DILocation(line: 239, column: 9, scope: !4604)
!4619 = !DILocation(line: 242, column: 5, scope: !4604)
!4620 = !DILocation(line: 243, column: 45, scope: !4604)
!4621 = !DILocation(line: 243, column: 12, scope: !4604)
!4622 = !DILocation(line: 244, column: 12, scope: !4604)
!4623 = !DILocation(line: 243, column: 5, scope: !4604)
!4624 = !DILocation(line: 245, column: 58, scope: !4604)
!4625 = !DILocation(line: 246, column: 30, scope: !4604)
!4626 = !{i32 0, i32 2}
!4627 = !DILocation(line: 246, column: 5, scope: !4604)
!4628 = !DILocation(line: 247, column: 5, scope: !4604)
!4629 = !DILocation(line: 249, column: 31, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4604, file: !421, line: 249, column: 9)
!4631 = !DILocation(line: 249, column: 28, scope: !4630)
!4632 = !DILocation(line: 261, column: 1, scope: !4604)
!4633 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !421, file: !421, line: 93, type: !4634, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4638)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!126, !481, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 32)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!4638 = !{!4639, !4640}
!4639 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4633, file: !421, line: 93, type: !481)
!4640 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4633, file: !421, line: 93, type: !4636)
!4641 = !DILocation(line: 0, scope: !4633)
!4642 = !DILocation(line: 95, column: 10, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4633, file: !421, line: 95, column: 9)
!4644 = !DILocation(line: 95, column: 9, scope: !4633)
!4645 = !DILocation(line: 101, column: 23, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4633, file: !421, line: 101, column: 9)
!4647 = !DILocation(line: 101, column: 32, scope: !4646)
!4648 = !DILocation(line: 101, column: 60, scope: !4646)
!4649 = !DILocation(line: 102, column: 27, scope: !4646)
!4650 = !DILocation(line: 102, column: 34, scope: !4646)
!4651 = !DILocation(line: 102, column: 58, scope: !4646)
!4652 = !DILocation(line: 103, column: 27, scope: !4646)
!4653 = !DILocation(line: 103, column: 36, scope: !4646)
!4654 = !DILocation(line: 103, column: 59, scope: !4646)
!4655 = !DILocation(line: 104, column: 27, scope: !4646)
!4656 = !DILocation(line: 104, column: 39, scope: !4646)
!4657 = !DILocation(line: 101, column: 9, scope: !4633)
!4658 = !DILocation(line: 109, column: 1, scope: !4633)
!4659 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !421, file: !421, line: 139, type: !4660, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!3264, !481}
!4662 = !{!4663}
!4663 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4659, file: !421, line: 139, type: !481)
!4664 = !DILocation(line: 0, scope: !4659)
!4665 = !DILocation(line: 141, column: 24, scope: !4659)
!4666 = !DILocation(line: 141, column: 12, scope: !4659)
!4667 = !DILocation(line: 141, column: 5, scope: !4659)
!4668 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !421, file: !421, line: 593, type: !4669, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4671)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!4607, !481, !4636}
!4671 = !{!4672, !4673}
!4672 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4668, file: !421, line: 593, type: !481)
!4673 = !DILocalVariable(name: "config", arg: 2, scope: !4668, file: !421, line: 593, type: !4636)
!4674 = !DILocation(line: 0, scope: !4668)
!4675 = !DILocation(line: 595, column: 10, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4668, file: !421, line: 595, column: 9)
!4677 = !DILocation(line: 595, column: 9, scope: !4668)
!4678 = !DILocation(line: 598, column: 45, scope: !4668)
!4679 = !DILocation(line: 598, column: 12, scope: !4668)
!4680 = !DILocation(line: 598, column: 59, scope: !4668)
!4681 = !DILocation(line: 598, column: 5, scope: !4668)
!4682 = !DILocation(line: 599, column: 23, scope: !4668)
!4683 = !DILocation(line: 600, column: 59, scope: !4668)
!4684 = !DILocation(line: 600, column: 23, scope: !4668)
!4685 = !DILocation(line: 601, column: 62, scope: !4668)
!4686 = !DILocation(line: 601, column: 23, scope: !4668)
!4687 = !DILocation(line: 602, column: 57, scope: !4668)
!4688 = !DILocation(line: 602, column: 23, scope: !4668)
!4689 = !DILocation(line: 603, column: 58, scope: !4668)
!4690 = !DILocation(line: 603, column: 23, scope: !4668)
!4691 = !DILocation(line: 599, column: 5, scope: !4668)
!4692 = !DILocation(line: 604, column: 5, scope: !4668)
!4693 = !DILocation(line: 605, column: 1, scope: !4668)
!4694 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !421, file: !421, line: 145, type: !4695, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4697)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!136, !496}
!4697 = !{!4698, !4699}
!4698 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4694, file: !421, line: 145, type: !496)
!4699 = !DILocalVariable(name: "baudrate_tbl", scope: !4694, file: !421, line: 147, type: !4700)
!4700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !4701)
!4701 = !{!4702}
!4702 = !DISubrange(count: 13)
!4703 = !DILocation(line: 0, scope: !4694)
!4704 = !DILocation(line: 147, column: 14, scope: !4694)
!4705 = !DILocation(line: 151, column: 12, scope: !4694)
!4706 = !DILocation(line: 151, column: 5, scope: !4694)
!4707 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !421, file: !421, line: 155, type: !4708, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4710)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!3334, !498}
!4710 = !{!4711, !4712}
!4711 = !DILocalVariable(name: "word_length", arg: 1, scope: !4707, file: !421, line: 155, type: !498)
!4712 = !DILocalVariable(name: "databit_tbl", scope: !4707, file: !421, line: 157, type: !4713)
!4713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 64, elements: !397)
!4714 = !DILocation(line: 0, scope: !4707)
!4715 = !DILocation(line: 157, column: 14, scope: !4707)
!4716 = !DILocation(line: 160, column: 12, scope: !4707)
!4717 = !DILocation(line: 160, column: 5, scope: !4707)
!4718 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !421, file: !421, line: 164, type: !4719, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4721)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!3334, !502}
!4721 = !{!4722, !4723}
!4722 = !DILocalVariable(name: "parity", arg: 1, scope: !4718, file: !421, line: 164, type: !502)
!4723 = !DILocalVariable(name: "parity_tbl", scope: !4718, file: !421, line: 166, type: !4724)
!4724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 80, elements: !401)
!4725 = !DILocation(line: 0, scope: !4718)
!4726 = !DILocation(line: 166, column: 14, scope: !4718)
!4727 = !DILocation(line: 169, column: 12, scope: !4718)
!4728 = !DILocation(line: 169, column: 5, scope: !4718)
!4729 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !421, file: !421, line: 173, type: !4730, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!3334, !500}
!4732 = !{!4733, !4734}
!4733 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4729, file: !421, line: 173, type: !500)
!4734 = !DILocalVariable(name: "stopbit_tbl", scope: !4729, file: !421, line: 175, type: !4735)
!4735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 48, elements: !695)
!4736 = !DILocation(line: 0, scope: !4729)
!4737 = !DILocation(line: 175, column: 14, scope: !4729)
!4738 = !DILocation(line: 178, column: 12, scope: !4729)
!4739 = !DILocation(line: 178, column: 5, scope: !4729)
!4740 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !421, file: !421, line: 87, type: !4741, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!126, !481}
!4743 = !{!4744}
!4744 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4740, file: !421, line: 87, type: !481)
!4745 = !DILocation(line: 0, scope: !4740)
!4746 = !DILocation(line: 89, column: 23, scope: !4740)
!4747 = !DILocation(line: 89, column: 5, scope: !4740)
!4748 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !421, file: !421, line: 264, type: !4749, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4751)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!4607, !481}
!4751 = !{!4752}
!4752 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4748, file: !421, line: 264, type: !481)
!4753 = !DILocation(line: 0, scope: !4748)
!4754 = !DILocation(line: 266, column: 10, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4748, file: !421, line: 266, column: 9)
!4756 = !DILocation(line: 266, column: 9, scope: !4748)
!4757 = !DILocation(line: 269, column: 41, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4748, file: !421, line: 269, column: 9)
!4759 = !DILocation(line: 269, column: 62, scope: !4758)
!4760 = !DILocation(line: 269, column: 9, scope: !4748)
!4761 = !DILocation(line: 272, column: 5, scope: !4748)
!4762 = !DILocation(line: 275, column: 22, scope: !4748)
!4763 = !DILocation(line: 275, column: 5, scope: !4748)
!4764 = !DILocation(line: 284, column: 5, scope: !4748)
!4765 = !DILocation(line: 286, column: 5, scope: !4748)
!4766 = !DILocation(line: 287, column: 1, scope: !4748)
!4767 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !421, file: !421, line: 290, type: !4768, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4770)
!4768 = !DISubroutineType(types: !4769)
!4769 = !{null, !481, !474}
!4770 = !{!4771, !4772, !4773}
!4771 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4767, file: !421, line: 290, type: !481)
!4772 = !DILocalVariable(name: "byte", arg: 2, scope: !4767, file: !421, line: 290, type: !474)
!4773 = !DILocalVariable(name: "int_no", scope: !4767, file: !421, line: 292, type: !3264)
!4774 = !DILocation(line: 0, scope: !4767)
!4775 = !DILocation(line: 292, column: 26, scope: !4767)
!4776 = !DILocation(line: 294, column: 16, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4767, file: !421, line: 294, column: 9)
!4778 = !DILocation(line: 294, column: 9, scope: !4767)
!4779 = !DILocation(line: 295, column: 9, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !421, line: 294, column: 34)
!4781 = !DILocation(line: 296, column: 5, scope: !4780)
!4782 = !DILocation(line: 299, column: 1, scope: !4767)
!4783 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !421, file: !421, line: 302, type: !4784, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4786)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!136, !481, !565, !136}
!4786 = !{!4787, !4788, !4789, !4790, !4791}
!4787 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4783, file: !421, line: 302, type: !481)
!4788 = !DILocalVariable(name: "data", arg: 2, scope: !4783, file: !421, line: 302, type: !565)
!4789 = !DILocalVariable(name: "size", arg: 3, scope: !4783, file: !421, line: 302, type: !136)
!4790 = !DILocalVariable(name: "int_no", scope: !4783, file: !421, line: 304, type: !3264)
!4791 = !DILocalVariable(name: "index", scope: !4783, file: !421, line: 305, type: !136)
!4792 = !DILocation(line: 0, scope: !4783)
!4793 = !DILocation(line: 304, column: 26, scope: !4783)
!4794 = !DILocation(line: 307, column: 14, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4783, file: !421, line: 307, column: 9)
!4796 = !DILocation(line: 307, column: 9, scope: !4783)
!4797 = !DILocation(line: 313, column: 53, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !421, line: 312, column: 48)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !421, line: 312, column: 9)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !421, line: 312, column: 9)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !421, line: 311, column: 33)
!4802 = distinct !DILexicalBlock(scope: !4783, file: !421, line: 311, column: 9)
!4803 = !DILocation(line: 313, column: 13, scope: !4798)
!4804 = !DILocation(line: 312, column: 44, scope: !4799)
!4805 = !DILocation(line: 312, column: 31, scope: !4799)
!4806 = !DILocation(line: 312, column: 9, scope: !4800)
!4807 = distinct !{!4807, !4806, !4808}
!4808 = !DILocation(line: 314, column: 9, scope: !4800)
!4809 = !DILocation(line: 318, column: 1, scope: !4783)
!4810 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !421, file: !421, line: 320, type: !4784, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4811)
!4811 = !{!4812, !4813, !4814, !4815, !4816, !4817}
!4812 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4810, file: !421, line: 320, type: !481)
!4813 = !DILocalVariable(name: "data", arg: 2, scope: !4810, file: !421, line: 320, type: !565)
!4814 = !DILocalVariable(name: "size", arg: 3, scope: !4810, file: !421, line: 320, type: !136)
!4815 = !DILocalVariable(name: "actual_space", scope: !4810, file: !421, line: 322, type: !136)
!4816 = !DILocalVariable(name: "send_size", scope: !4810, file: !421, line: 322, type: !136)
!4817 = !DILocalVariable(name: "ch", scope: !4810, file: !421, line: 323, type: !1846)
!4818 = !DILocation(line: 0, scope: !4810)
!4819 = !DILocation(line: 322, column: 5, scope: !4810)
!4820 = !DILocation(line: 328, column: 10, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4810, file: !421, line: 328, column: 9)
!4822 = !DILocation(line: 328, column: 9, scope: !4810)
!4823 = !DILocation(line: 332, column: 15, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4810, file: !421, line: 332, column: 9)
!4825 = !DILocation(line: 332, column: 24, scope: !4824)
!4826 = !DILocation(line: 335, column: 42, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4810, file: !421, line: 335, column: 9)
!4828 = !DILocation(line: 335, column: 9, scope: !4810)
!4829 = !DILocation(line: 349, column: 30, scope: !4810)
!4830 = !DILocation(line: 349, column: 5, scope: !4810)
!4831 = !DILocation(line: 350, column: 9, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4810, file: !421, line: 350, column: 9)
!4833 = !DILocation(line: 350, column: 22, scope: !4832)
!4834 = !DILocation(line: 355, column: 5, scope: !4810)
!4835 = !DILocation(line: 357, column: 22, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4810, file: !421, line: 357, column: 9)
!4837 = !DILocation(line: 357, column: 19, scope: !4836)
!4838 = !DILocation(line: 357, column: 9, scope: !4810)
!4839 = !DILocation(line: 358, column: 14, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4836, file: !421, line: 357, column: 36)
!4841 = !{i32 14, i32 18}
!4842 = !DILocation(line: 359, column: 9, scope: !4840)
!4843 = !DILocation(line: 360, column: 5, scope: !4840)
!4844 = !DILocation(line: 362, column: 1, scope: !4810)
!4845 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !421, file: !421, line: 191, type: !4846, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!1846, !3264, !126}
!4848 = !{!4849, !4850, !4851}
!4849 = !DILocalVariable(name: "port", arg: 1, scope: !4845, file: !421, line: 191, type: !3264)
!4850 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4845, file: !421, line: 191, type: !126)
!4851 = !DILocalVariable(name: "ch", scope: !4845, file: !421, line: 193, type: !1846)
!4852 = !DILocation(line: 0, scope: !4845)
!4853 = !DILocation(line: 195, column: 14, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4845, file: !421, line: 195, column: 9)
!4855 = !DILocation(line: 195, column: 9, scope: !4845)
!4856 = !DILocation(line: 209, column: 5, scope: !4845)
!4857 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !421, file: !421, line: 365, type: !4858, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4860)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!474, !481}
!4860 = !{!4861, !4862}
!4861 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4857, file: !421, line: 365, type: !481)
!4862 = !DILocalVariable(name: "int_no", scope: !4857, file: !421, line: 367, type: !3264)
!4863 = !DILocation(line: 0, scope: !4857)
!4864 = !DILocation(line: 367, column: 26, scope: !4857)
!4865 = !DILocation(line: 369, column: 16, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4857, file: !421, line: 369, column: 9)
!4867 = !DILocation(line: 369, column: 9, scope: !4857)
!4868 = !DILocation(line: 370, column: 22, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4866, file: !421, line: 369, column: 33)
!4870 = !DILocation(line: 370, column: 9, scope: !4869)
!4871 = !DILocation(line: 0, scope: !4866)
!4872 = !DILocation(line: 375, column: 1, scope: !4857)
!4873 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !421, file: !421, line: 377, type: !4874, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!136, !481}
!4876 = !{!4877, !4878}
!4877 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4873, file: !421, line: 377, type: !481)
!4878 = !DILocalVariable(name: "int_no", scope: !4873, file: !421, line: 379, type: !3264)
!4879 = !DILocation(line: 0, scope: !4873)
!4880 = !DILocation(line: 379, column: 26, scope: !4873)
!4881 = !DILocation(line: 381, column: 16, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4873, file: !421, line: 381, column: 9)
!4883 = !DILocation(line: 381, column: 9, scope: !4873)
!4884 = !DILocation(line: 382, column: 16, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4882, file: !421, line: 381, column: 33)
!4886 = !DILocation(line: 382, column: 9, scope: !4885)
!4887 = !DILocation(line: 0, scope: !4882)
!4888 = !DILocation(line: 387, column: 1, scope: !4873)
!4889 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !421, file: !421, line: 390, type: !4890, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4892)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!136, !481, !521, !136}
!4892 = !{!4893, !4894, !4895, !4896, !4897}
!4893 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4889, file: !421, line: 390, type: !481)
!4894 = !DILocalVariable(name: "buffer", arg: 2, scope: !4889, file: !421, line: 390, type: !521)
!4895 = !DILocalVariable(name: "size", arg: 3, scope: !4889, file: !421, line: 390, type: !136)
!4896 = !DILocalVariable(name: "int_no", scope: !4889, file: !421, line: 392, type: !3264)
!4897 = !DILocalVariable(name: "index", scope: !4889, file: !421, line: 393, type: !136)
!4898 = !DILocation(line: 0, scope: !4889)
!4899 = !DILocation(line: 392, column: 26, scope: !4889)
!4900 = !DILocation(line: 395, column: 16, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4889, file: !421, line: 395, column: 9)
!4902 = !DILocation(line: 395, column: 9, scope: !4889)
!4903 = !DILocation(line: 401, column: 38, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !421, line: 400, column: 48)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !421, line: 400, column: 9)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !421, line: 400, column: 9)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !421, line: 399, column: 33)
!4908 = distinct !DILexicalBlock(scope: !4889, file: !421, line: 399, column: 9)
!4909 = !DILocation(line: 401, column: 13, scope: !4904)
!4910 = !DILocation(line: 401, column: 27, scope: !4904)
!4911 = !DILocation(line: 400, column: 44, scope: !4905)
!4912 = !DILocation(line: 400, column: 31, scope: !4905)
!4913 = !DILocation(line: 400, column: 9, scope: !4906)
!4914 = distinct !{!4914, !4913, !4915}
!4915 = !DILocation(line: 402, column: 9, scope: !4906)
!4916 = !DILocation(line: 406, column: 1, scope: !4889)
!4917 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !421, file: !421, line: 408, type: !4890, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4918)
!4918 = !{!4919, !4920, !4921, !4922, !4923, !4924}
!4919 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4917, file: !421, line: 408, type: !481)
!4920 = !DILocalVariable(name: "buffer", arg: 2, scope: !4917, file: !421, line: 408, type: !521)
!4921 = !DILocalVariable(name: "size", arg: 3, scope: !4917, file: !421, line: 408, type: !136)
!4922 = !DILocalVariable(name: "actual_size", scope: !4917, file: !421, line: 410, type: !136)
!4923 = !DILocalVariable(name: "receive_size", scope: !4917, file: !421, line: 410, type: !136)
!4924 = !DILocalVariable(name: "ch", scope: !4917, file: !421, line: 411, type: !1846)
!4925 = !DILocation(line: 0, scope: !4917)
!4926 = !DILocation(line: 410, column: 5, scope: !4917)
!4927 = !DILocation(line: 413, column: 10, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4917, file: !421, line: 413, column: 9)
!4929 = !DILocation(line: 413, column: 9, scope: !4917)
!4930 = !DILocation(line: 417, column: 17, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4917, file: !421, line: 417, column: 9)
!4932 = !DILocation(line: 417, column: 26, scope: !4931)
!4933 = !DILocation(line: 421, column: 30, scope: !4917)
!4934 = !DILocation(line: 421, column: 5, scope: !4917)
!4935 = !DILocation(line: 422, column: 9, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4917, file: !421, line: 422, column: 9)
!4937 = !DILocation(line: 422, column: 21, scope: !4936)
!4938 = !DILocation(line: 427, column: 5, scope: !4917)
!4939 = !DILocation(line: 429, column: 25, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4917, file: !421, line: 429, column: 9)
!4941 = !DILocation(line: 429, column: 22, scope: !4940)
!4942 = !DILocation(line: 429, column: 9, scope: !4917)
!4943 = !DILocation(line: 430, column: 14, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4940, file: !421, line: 429, column: 38)
!4945 = !DILocation(line: 431, column: 9, scope: !4944)
!4946 = !DILocation(line: 432, column: 5, scope: !4944)
!4947 = !DILocation(line: 435, column: 1, scope: !4917)
!4948 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !421, file: !421, line: 438, type: !4874, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4949)
!4949 = !{!4950, !4951}
!4950 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4948, file: !421, line: 438, type: !481)
!4951 = !DILocalVariable(name: "length", scope: !4948, file: !421, line: 440, type: !136)
!4952 = !DILocation(line: 0, scope: !4948)
!4953 = !DILocation(line: 440, column: 5, scope: !4948)
!4954 = !DILocation(line: 440, column: 14, scope: !4948)
!4955 = !DILocation(line: 442, column: 10, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4948, file: !421, line: 442, column: 9)
!4957 = !DILocation(line: 442, column: 9, scope: !4948)
!4958 = !DILocation(line: 446, column: 30, scope: !4948)
!4959 = !DILocation(line: 446, column: 5, scope: !4948)
!4960 = !DILocation(line: 447, column: 12, scope: !4948)
!4961 = !DILocation(line: 447, column: 5, scope: !4948)
!4962 = !DILocation(line: 448, column: 1, scope: !4948)
!4963 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !421, file: !421, line: 451, type: !4874, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4964)
!4964 = !{!4965, !4966}
!4965 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4963, file: !421, line: 451, type: !481)
!4966 = !DILocalVariable(name: "length", scope: !4963, file: !421, line: 453, type: !136)
!4967 = !DILocation(line: 0, scope: !4963)
!4968 = !DILocation(line: 453, column: 5, scope: !4963)
!4969 = !DILocation(line: 453, column: 14, scope: !4963)
!4970 = !DILocation(line: 455, column: 10, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4963, file: !421, line: 455, column: 9)
!4972 = !DILocation(line: 455, column: 9, scope: !4963)
!4973 = !DILocation(line: 459, column: 30, scope: !4963)
!4974 = !DILocation(line: 459, column: 5, scope: !4963)
!4975 = !DILocation(line: 461, column: 12, scope: !4963)
!4976 = !DILocation(line: 461, column: 5, scope: !4963)
!4977 = !DILocation(line: 462, column: 1, scope: !4963)
!4978 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !421, file: !421, line: 543, type: !4979, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4981)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!4607, !481, !509, !161}
!4981 = !{!4982, !4983, !4984, !4985}
!4982 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4978, file: !421, line: 543, type: !481)
!4983 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4978, file: !421, line: 544, type: !509)
!4984 = !DILocalVariable(name: "user_data", arg: 3, scope: !4978, file: !421, line: 545, type: !161)
!4985 = !DILocalVariable(name: "ch", scope: !4978, file: !421, line: 547, type: !1846)
!4986 = !DILocation(line: 0, scope: !4978)
!4987 = !DILocation(line: 549, column: 10, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4978, file: !421, line: 549, column: 9)
!4989 = !DILocation(line: 549, column: 9, scope: !4978)
!4990 = !DILocation(line: 556, column: 53, scope: !4978)
!4991 = !DILocation(line: 556, column: 62, scope: !4978)
!4992 = !DILocation(line: 557, column: 53, scope: !4978)
!4993 = !DILocation(line: 557, column: 63, scope: !4978)
!4994 = !DILocation(line: 558, column: 37, scope: !4978)
!4995 = !DILocation(line: 558, column: 54, scope: !4978)
!4996 = !DILocation(line: 560, column: 39, scope: !4978)
!4997 = !DILocation(line: 561, column: 39, scope: !4978)
!4998 = !DILocation(line: 560, column: 5, scope: !4978)
!4999 = !DILocation(line: 562, column: 5, scope: !4978)
!5000 = !DILocation(line: 564, column: 44, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4978, file: !421, line: 564, column: 9)
!5002 = !DILocation(line: 564, column: 9, scope: !4978)
!5003 = !DILocation(line: 565, column: 9, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5001, file: !421, line: 564, column: 59)
!5005 = !DILocation(line: 566, column: 5, scope: !5004)
!5006 = !DILocation(line: 567, column: 9, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5001, file: !421, line: 566, column: 12)
!5008 = !DILocation(line: 569, column: 10, scope: !4978)
!5009 = !DILocation(line: 570, column: 5, scope: !4978)
!5010 = !DILocation(line: 578, column: 5, scope: !4978)
!5011 = !DILocation(line: 579, column: 1, scope: !4978)
!5012 = !DILocation(line: 0, scope: !478)
!5013 = !DILocation(line: 539, column: 12, scope: !478)
!5014 = !DILocation(line: 539, column: 5, scope: !478)
!5015 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !421, file: !421, line: 511, type: !181, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5016)
!5016 = !{!5017}
!5017 = !DILocalVariable(name: "callback_context", scope: !5018, file: !421, line: 514, type: !5020)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !421, line: 513, column: 60)
!5019 = distinct !DILexicalBlock(scope: !5015, file: !421, line: 513, column: 9)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!5021 = !DILocation(line: 513, column: 42, scope: !5019)
!5022 = !DILocation(line: 513, column: 9, scope: !5015)
!5023 = !DILocation(line: 515, column: 39, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5018, file: !421, line: 515, column: 13)
!5025 = !DILocation(line: 515, column: 18, scope: !5024)
!5026 = !DILocation(line: 515, column: 13, scope: !5018)
!5027 = !DILocation(line: 516, column: 89, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !421, line: 515, column: 49)
!5029 = !DILocation(line: 516, column: 13, scope: !5028)
!5030 = !DILocation(line: 517, column: 9, scope: !5028)
!5031 = !DILocation(line: 519, column: 32, scope: !5015)
!5032 = !DILocation(line: 519, column: 5, scope: !5015)
!5033 = !DILocation(line: 520, column: 1, scope: !5015)
!5034 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !421, file: !421, line: 523, type: !181, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5035)
!5035 = !{!5036}
!5036 = !DILocalVariable(name: "callback_context", scope: !5037, file: !421, line: 526, type: !5020)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !421, line: 525, column: 60)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !421, line: 525, column: 9)
!5039 = !DILocation(line: 525, column: 42, scope: !5038)
!5040 = !DILocation(line: 525, column: 9, scope: !5034)
!5041 = !DILocation(line: 527, column: 39, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5037, file: !421, line: 527, column: 13)
!5043 = !DILocation(line: 527, column: 18, scope: !5042)
!5044 = !DILocation(line: 527, column: 13, scope: !5037)
!5045 = !DILocation(line: 528, column: 89, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5042, file: !421, line: 527, column: 49)
!5047 = !DILocation(line: 528, column: 13, scope: !5046)
!5048 = !DILocation(line: 529, column: 9, scope: !5046)
!5049 = !DILocation(line: 531, column: 32, scope: !5034)
!5050 = !DILocation(line: 531, column: 5, scope: !5034)
!5051 = !DILocation(line: 532, column: 1, scope: !5034)
!5052 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !421, file: !421, line: 464, type: !5053, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5055)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{null, !3264, !126}
!5055 = !{!5056, !5057, !5058, !5059, !5060, !5062}
!5056 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5052, file: !421, line: 464, type: !3264)
!5057 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5052, file: !421, line: 464, type: !126)
!5058 = !DILocalVariable(name: "avail_size", scope: !5052, file: !421, line: 466, type: !136)
!5059 = !DILocalVariable(name: "avail_space", scope: !5052, file: !421, line: 466, type: !136)
!5060 = !DILocalVariable(name: "dma_config", scope: !5052, file: !421, line: 467, type: !5061)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 32)
!5062 = !DILocalVariable(name: "ch", scope: !5052, file: !421, line: 468, type: !1846)
!5063 = !DILocation(line: 0, scope: !5052)
!5064 = !DILocation(line: 466, column: 5, scope: !5052)
!5065 = !DILocation(line: 471, column: 9, scope: !5052)
!5066 = !DILocation(line: 472, column: 9, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !421, line: 471, column: 16)
!5068 = distinct !DILexicalBlock(scope: !5052, file: !421, line: 471, column: 9)
!5069 = !DILocation(line: 473, column: 13, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5067, file: !421, line: 473, column: 13)
!5071 = !DILocation(line: 473, column: 39, scope: !5070)
!5072 = !DILocation(line: 473, column: 24, scope: !5070)
!5073 = !DILocation(line: 473, column: 13, scope: !5067)
!5074 = !DILocation(line: 478, column: 9, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5068, file: !421, line: 477, column: 12)
!5076 = !DILocation(line: 479, column: 13, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5075, file: !421, line: 479, column: 13)
!5078 = !DILocation(line: 479, column: 40, scope: !5077)
!5079 = !DILocation(line: 479, column: 77, scope: !5077)
!5080 = !DILocation(line: 479, column: 63, scope: !5077)
!5081 = !DILocation(line: 479, column: 25, scope: !5077)
!5082 = !DILocation(line: 479, column: 13, scope: !5075)
!5083 = !DILocation(line: 0, scope: !5068)
!5084 = !DILocation(line: 484, column: 1, scope: !5052)
!5085 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !421, file: !421, line: 486, type: !181, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5086)
!5086 = !{!5087}
!5087 = !DILocalVariable(name: "callback_context", scope: !5088, file: !421, line: 490, type: !5020)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !421, line: 489, column: 70)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !421, line: 488, column: 9)
!5090 = !DILocation(line: 488, column: 43, scope: !5089)
!5091 = !DILocation(line: 488, column: 61, scope: !5089)
!5092 = !DILocation(line: 489, column: 14, scope: !5089)
!5093 = !DILocation(line: 489, column: 63, scope: !5089)
!5094 = !DILocation(line: 488, column: 9, scope: !5085)
!5095 = !DILocation(line: 491, column: 39, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5088, file: !421, line: 491, column: 13)
!5097 = !DILocation(line: 491, column: 18, scope: !5096)
!5098 = !DILocation(line: 491, column: 13, scope: !5088)
!5099 = !DILocation(line: 492, column: 88, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5096, file: !421, line: 491, column: 49)
!5101 = !DILocation(line: 492, column: 13, scope: !5100)
!5102 = !DILocation(line: 493, column: 9, scope: !5100)
!5103 = !DILocation(line: 495, column: 32, scope: !5085)
!5104 = !DILocation(line: 495, column: 5, scope: !5085)
!5105 = !DILocation(line: 496, column: 1, scope: !5085)
!5106 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !421, file: !421, line: 499, type: !181, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5107)
!5107 = !{!5108}
!5108 = !DILocalVariable(name: "callback_context", scope: !5109, file: !421, line: 503, type: !5020)
!5109 = distinct !DILexicalBlock(scope: !5110, file: !421, line: 502, column: 70)
!5110 = distinct !DILexicalBlock(scope: !5106, file: !421, line: 501, column: 9)
!5111 = !DILocation(line: 501, column: 43, scope: !5110)
!5112 = !DILocation(line: 501, column: 61, scope: !5110)
!5113 = !DILocation(line: 502, column: 14, scope: !5110)
!5114 = !DILocation(line: 502, column: 63, scope: !5110)
!5115 = !DILocation(line: 501, column: 9, scope: !5106)
!5116 = !DILocation(line: 504, column: 39, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5109, file: !421, line: 504, column: 13)
!5118 = !DILocation(line: 504, column: 18, scope: !5117)
!5119 = !DILocation(line: 504, column: 13, scope: !5109)
!5120 = !DILocation(line: 505, column: 88, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5117, file: !421, line: 504, column: 49)
!5122 = !DILocation(line: 505, column: 13, scope: !5121)
!5123 = !DILocation(line: 506, column: 9, scope: !5121)
!5124 = !DILocation(line: 508, column: 32, scope: !5106)
!5125 = !DILocation(line: 508, column: 5, scope: !5106)
!5126 = !DILocation(line: 509, column: 1, scope: !5106)
!5127 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !421, file: !421, line: 582, type: !5128, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5130)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!4607, !481, !496}
!5130 = !{!5131, !5132}
!5131 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5127, file: !421, line: 582, type: !481)
!5132 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5127, file: !421, line: 582, type: !496)
!5133 = !DILocation(line: 0, scope: !5127)
!5134 = !DILocation(line: 584, column: 11, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5127, file: !421, line: 584, column: 9)
!5136 = !DILocation(line: 584, column: 46, scope: !5135)
!5137 = !DILocation(line: 588, column: 37, scope: !5127)
!5138 = !DILocation(line: 588, column: 50, scope: !5127)
!5139 = !DILocation(line: 588, column: 59, scope: !5127)
!5140 = !DILocation(line: 589, column: 12, scope: !5127)
!5141 = !DILocation(line: 589, column: 5, scope: !5127)
!5142 = !DILocation(line: 590, column: 1, scope: !5127)
!5143 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !421, file: !421, line: 608, type: !5144, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5148)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!4607, !481, !5146}
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 32)
!5147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!5148 = !{!5149, !5150}
!5149 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5143, file: !421, line: 608, type: !481)
!5150 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5143, file: !421, line: 608, type: !5146)
!5151 = !DILocation(line: 0, scope: !5143)
!5152 = !DILocation(line: 610, column: 10, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5143, file: !421, line: 610, column: 9)
!5154 = !DILocation(line: 610, column: 9, scope: !5143)
!5155 = !DILocation(line: 614, column: 10, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5143, file: !421, line: 614, column: 9)
!5157 = !DILocation(line: 614, column: 9, scope: !5143)
!5158 = !DILocation(line: 618, column: 37, scope: !5143)
!5159 = !DILocation(line: 618, column: 56, scope: !5143)
!5160 = !DILocation(line: 619, column: 45, scope: !5143)
!5161 = !DILocation(line: 619, column: 12, scope: !5143)
!5162 = !DILocation(line: 620, column: 12, scope: !5143)
!5163 = !DILocation(line: 619, column: 5, scope: !5143)
!5164 = !DILocation(line: 621, column: 5, scope: !5143)
!5165 = !DILocation(line: 622, column: 5, scope: !5143)
!5166 = !DILocation(line: 623, column: 33, scope: !5143)
!5167 = !DILocation(line: 624, column: 50, scope: !5143)
!5168 = !DILocation(line: 625, column: 50, scope: !5143)
!5169 = !DILocation(line: 626, column: 50, scope: !5143)
!5170 = !DILocation(line: 627, column: 50, scope: !5143)
!5171 = !DILocation(line: 628, column: 33, scope: !5143)
!5172 = !DILocation(line: 623, column: 5, scope: !5143)
!5173 = !DILocation(line: 630, column: 50, scope: !5143)
!5174 = !DILocation(line: 631, column: 50, scope: !5143)
!5175 = !DILocation(line: 632, column: 50, scope: !5143)
!5176 = !DILocation(line: 629, column: 5, scope: !5143)
!5177 = !DILocation(line: 634, column: 5, scope: !5143)
!5178 = !DILocation(line: 635, column: 1, scope: !5143)
!5179 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !421, file: !421, line: 112, type: !5180, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5182)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!126, !5146}
!5182 = !{!5183}
!5183 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5179, file: !421, line: 112, type: !5146)
!5184 = !DILocation(line: 0, scope: !5179)
!5185 = !DILocation(line: 114, column: 14, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5179, file: !421, line: 114, column: 9)
!5187 = !DILocation(line: 114, column: 9, scope: !5179)
!5188 = !DILocation(line: 117, column: 29, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5179, file: !421, line: 117, column: 9)
!5190 = !DILocation(line: 117, column: 14, scope: !5189)
!5191 = !DILocation(line: 117, column: 9, scope: !5179)
!5192 = !DILocation(line: 120, column: 21, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5179, file: !421, line: 120, column: 9)
!5194 = !DILocation(line: 120, column: 61, scope: !5193)
!5195 = !DILocation(line: 120, column: 47, scope: !5193)
!5196 = !DILocation(line: 120, column: 9, scope: !5179)
!5197 = !DILocation(line: 123, column: 61, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5179, file: !421, line: 123, column: 9)
!5199 = !DILocation(line: 123, column: 47, scope: !5198)
!5200 = !DILocation(line: 123, column: 9, scope: !5179)
!5201 = !DILocation(line: 126, column: 29, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5179, file: !421, line: 126, column: 9)
!5203 = !DILocation(line: 126, column: 14, scope: !5202)
!5204 = !DILocation(line: 126, column: 9, scope: !5179)
!5205 = !DILocation(line: 129, column: 21, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5179, file: !421, line: 129, column: 9)
!5207 = !DILocation(line: 129, column: 58, scope: !5206)
!5208 = !DILocation(line: 129, column: 44, scope: !5206)
!5209 = !DILocation(line: 129, column: 9, scope: !5179)
!5210 = !DILocation(line: 136, column: 1, scope: !5179)
!5211 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !421, file: !421, line: 182, type: !5212, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5214)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!136, !136}
!5214 = !{!5215, !5216}
!5215 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5211, file: !421, line: 182, type: !136)
!5216 = !DILocalVariable(name: "ticks_per_us", scope: !5211, file: !421, line: 184, type: !136)
!5217 = !DILocation(line: 0, scope: !5211)
!5218 = !DILocation(line: 186, column: 20, scope: !5211)
!5219 = !DILocation(line: 186, column: 39, scope: !5211)
!5220 = !DILocation(line: 188, column: 25, scope: !5211)
!5221 = !DILocation(line: 188, column: 5, scope: !5211)
!5222 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !421, file: !421, line: 637, type: !4749, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5223)
!5223 = !{!5224, !5225}
!5224 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5222, file: !421, line: 637, type: !481)
!5225 = !DILocalVariable(name: "int_no", scope: !5222, file: !421, line: 639, type: !3264)
!5226 = !DILocation(line: 0, scope: !5222)
!5227 = !DILocation(line: 641, column: 10, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5222, file: !421, line: 641, column: 9)
!5229 = !DILocation(line: 641, column: 9, scope: !5222)
!5230 = !DILocation(line: 645, column: 14, scope: !5222)
!5231 = !DILocation(line: 646, column: 5, scope: !5222)
!5232 = !DILocation(line: 648, column: 5, scope: !5222)
!5233 = !DILocation(line: 649, column: 1, scope: !5222)
!5234 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !421, file: !421, line: 651, type: !5235, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5237)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!4607, !481, !128, !128, !128}
!5237 = !{!5238, !5239, !5240, !5241, !5242}
!5238 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5234, file: !421, line: 651, type: !481)
!5239 = !DILocalVariable(name: "xon", arg: 2, scope: !5234, file: !421, line: 652, type: !128)
!5240 = !DILocalVariable(name: "xoff", arg: 3, scope: !5234, file: !421, line: 653, type: !128)
!5241 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5234, file: !421, line: 654, type: !128)
!5242 = !DILocalVariable(name: "int_no", scope: !5234, file: !421, line: 656, type: !3264)
!5243 = !DILocation(line: 0, scope: !5234)
!5244 = !DILocation(line: 658, column: 10, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5234, file: !421, line: 658, column: 9)
!5246 = !DILocation(line: 658, column: 9, scope: !5234)
!5247 = !DILocation(line: 662, column: 14, scope: !5234)
!5248 = !DILocation(line: 663, column: 5, scope: !5234)
!5249 = !DILocation(line: 665, column: 5, scope: !5234)
!5250 = !DILocation(line: 666, column: 1, scope: !5234)
!5251 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !421, file: !421, line: 668, type: !4749, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5252)
!5252 = !{!5253, !5254}
!5253 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5251, file: !421, line: 668, type: !481)
!5254 = !DILocalVariable(name: "int_no", scope: !5251, file: !421, line: 670, type: !3264)
!5255 = !DILocation(line: 0, scope: !5251)
!5256 = !DILocation(line: 672, column: 10, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5251, file: !421, line: 672, column: 9)
!5258 = !DILocation(line: 672, column: 9, scope: !5251)
!5259 = !DILocation(line: 676, column: 14, scope: !5251)
!5260 = !DILocation(line: 677, column: 5, scope: !5251)
!5261 = !DILocation(line: 679, column: 5, scope: !5251)
!5262 = !DILocation(line: 680, column: 1, scope: !5251)
!5263 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !421, file: !421, line: 683, type: !5264, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5266)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!4607, !481, !136}
!5266 = !{!5267, !5268}
!5267 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5263, file: !421, line: 683, type: !481)
!5268 = !DILocalVariable(name: "timeout", arg: 2, scope: !5263, file: !421, line: 683, type: !136)
!5269 = !DILocation(line: 0, scope: !5263)
!5270 = !DILocation(line: 685, column: 10, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5263, file: !421, line: 685, column: 9)
!5272 = !DILocation(line: 685, column: 9, scope: !5263)
!5273 = !DILocation(line: 689, column: 19, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5263, file: !421, line: 689, column: 9)
!5275 = !DILocation(line: 0, scope: !5274)
!5276 = !DILocation(line: 696, column: 1, scope: !5263)
!5277 = distinct !DISubprogram(name: "__io_putchar", scope: !531, file: !531, line: 63, type: !5278, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !5280)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!53, !53}
!5280 = !{!5281}
!5281 = !DILocalVariable(name: "ch", arg: 1, scope: !5277, file: !531, line: 63, type: !53)
!5282 = !DILocation(line: 0, scope: !5277)
!5283 = !DILocation(line: 70, column: 5, scope: !5277)
!5284 = distinct !DISubprogram(name: "main", scope: !531, file: !531, line: 160, type: !3240, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1083)
!5285 = !DILocation(line: 163, column: 5, scope: !5284)
!5286 = !DILocation(line: 319, column: 3, scope: !5287, inlinedAt: !5288)
!5287 = distinct !DISubprogram(name: "__enable_irq", scope: !1114, file: !1114, line: 317, type: !181, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1083)
!5288 = distinct !DILocation(line: 169, column: 5, scope: !5284)
!5289 = !{i64 513835}
!5290 = !DILocation(line: 496, column: 3, scope: !5291, inlinedAt: !5292)
!5291 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1114, file: !1114, line: 494, type: !181, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1083)
!5292 = distinct !DILocation(line: 170, column: 5, scope: !5284)
!5293 = !{i64 518110}
!5294 = !DILocation(line: 172, column: 5, scope: !5284)
!5295 = !DILocation(line: 174, column: 5, scope: !5284)
!5296 = distinct !DISubprogram(name: "SystemClock_Config", scope: !531, file: !531, line: 78, type: !181, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1083)
!5297 = !DILocation(line: 80, column: 5, scope: !5296)
!5298 = !DILocation(line: 81, column: 1, scope: !5296)
!5299 = distinct !DISubprogram(name: "uart_loopback_data_dma_example", scope: !531, file: !531, line: 115, type: !181, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !5300)
!5300 = !{!5301, !5309, !5320, !5321}
!5301 = !DILocalVariable(name: "basic_config", scope: !5299, file: !531, line: 117, type: !5302)
!5302 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !424, line: 378, baseType: !5303)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 373, size: 128, elements: !5304)
!5304 = !{!5305, !5306, !5307, !5308}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5303, file: !424, line: 374, baseType: !496, size: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5303, file: !424, line: 375, baseType: !498, size: 32, offset: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5303, file: !424, line: 376, baseType: !500, size: 32, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5303, file: !424, line: 377, baseType: !502, size: 32, offset: 96)
!5309 = !DILocalVariable(name: "dma_config", scope: !5299, file: !531, line: 118, type: !5310)
!5310 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !424, line: 390, baseType: !5311)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 382, size: 224, elements: !5312)
!5312 = !{!5313, !5314, !5315, !5316, !5317, !5318, !5319}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !5311, file: !424, line: 383, baseType: !521, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !5311, file: !424, line: 384, baseType: !136, size: 32, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !5311, file: !424, line: 385, baseType: !136, size: 32, offset: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !5311, file: !424, line: 386, baseType: !521, size: 32, offset: 96)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !5311, file: !424, line: 387, baseType: !136, size: 32, offset: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !5311, file: !424, line: 388, baseType: !136, size: 32, offset: 160)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !5311, file: !424, line: 389, baseType: !136, size: 32, offset: 192)
!5320 = !DILocalVariable(name: "buffer", scope: !5299, file: !531, line: 119, type: !570)
!5321 = !DILocalVariable(name: "length", scope: !5299, file: !531, line: 120, type: !136)
!5322 = !DILocation(line: 117, column: 5, scope: !5299)
!5323 = !DILocation(line: 117, column: 23, scope: !5299)
!5324 = !DILocation(line: 118, column: 5, scope: !5299)
!5325 = !DILocation(line: 118, column: 27, scope: !5299)
!5326 = !DILocation(line: 119, column: 5, scope: !5299)
!5327 = !DILocation(line: 119, column: 13, scope: !5299)
!5328 = !DILocation(line: 123, column: 5, scope: !5299)
!5329 = !DILocation(line: 124, column: 5, scope: !5299)
!5330 = !DILocation(line: 125, column: 5, scope: !5299)
!5331 = !DILocation(line: 126, column: 5, scope: !5299)
!5332 = !DILocation(line: 129, column: 18, scope: !5299)
!5333 = !DILocation(line: 129, column: 27, scope: !5299)
!5334 = !DILocation(line: 130, column: 18, scope: !5299)
!5335 = !DILocation(line: 130, column: 25, scope: !5299)
!5336 = !DILocation(line: 131, column: 18, scope: !5299)
!5337 = !DILocation(line: 131, column: 27, scope: !5299)
!5338 = !DILocation(line: 132, column: 18, scope: !5299)
!5339 = !DILocation(line: 132, column: 30, scope: !5299)
!5340 = !DILocation(line: 133, column: 5, scope: !5299)
!5341 = !DILocation(line: 136, column: 16, scope: !5299)
!5342 = !DILocation(line: 136, column: 41, scope: !5299)
!5343 = !DILocation(line: 137, column: 16, scope: !5299)
!5344 = !DILocation(line: 137, column: 37, scope: !5299)
!5345 = !DILocation(line: 138, column: 16, scope: !5299)
!5346 = !DILocation(line: 138, column: 42, scope: !5299)
!5347 = !DILocation(line: 139, column: 16, scope: !5299)
!5348 = !DILocation(line: 139, column: 45, scope: !5299)
!5349 = !DILocation(line: 140, column: 16, scope: !5299)
!5350 = !DILocation(line: 140, column: 34, scope: !5299)
!5351 = !DILocation(line: 141, column: 16, scope: !5299)
!5352 = !DILocation(line: 141, column: 39, scope: !5299)
!5353 = !DILocation(line: 142, column: 16, scope: !5299)
!5354 = !DILocation(line: 142, column: 42, scope: !5299)
!5355 = !DILocation(line: 143, column: 5, scope: !5299)
!5356 = !DILocation(line: 144, column: 5, scope: !5299)
!5357 = !DILocation(line: 147, column: 5, scope: !5299)
!5358 = !DILocation(line: 150, column: 5, scope: !5299)
!5359 = !DILocation(line: 151, column: 13, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !531, line: 151, column: 13)
!5361 = distinct !DILexicalBlock(scope: !5299, file: !531, line: 150, column: 15)
!5362 = !DILocation(line: 151, column: 13, scope: !5361)
!5363 = !DILocation(line: 152, column: 22, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5360, file: !531, line: 151, column: 43)
!5365 = !DILocation(line: 0, scope: !5299)
!5366 = !DILocation(line: 153, column: 13, scope: !5364)
!5367 = !DILocation(line: 154, column: 13, scope: !5364)
!5368 = !DILocation(line: 155, column: 34, scope: !5364)
!5369 = !DILocation(line: 156, column: 9, scope: !5364)
!5370 = distinct !{!5370, !5358, !5371}
!5371 = !DILocation(line: 157, column: 5, scope: !5299)
!5372 = distinct !DISubprogram(name: "uart_read_from_input", scope: !531, file: !531, line: 103, type: !511, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !5373)
!5373 = !{!5374, !5375}
!5374 = !DILocalVariable(name: "event", arg: 1, scope: !5372, file: !531, line: 103, type: !513)
!5375 = !DILocalVariable(name: "user_data", arg: 2, scope: !5372, file: !531, line: 103, type: !161)
!5376 = !DILocation(line: 0, scope: !5372)
!5377 = !DILocation(line: 105, column: 15, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5372, file: !531, line: 105, column: 9)
!5379 = !DILocation(line: 105, column: 9, scope: !5372)
!5380 = !DILocation(line: 106, column: 30, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5378, file: !531, line: 105, column: 48)
!5382 = !DILocation(line: 107, column: 5, scope: !5381)
!5383 = !DILocation(line: 108, column: 1, scope: !5372)
!5384 = distinct !DISubprogram(name: "SysTick_Set", scope: !578, file: !578, line: 70, type: !5212, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !5385)
!5385 = !{!5386, !5387}
!5386 = !DILocalVariable(name: "ticks", arg: 1, scope: !5384, file: !578, line: 70, type: !136)
!5387 = !DILocalVariable(name: "val", scope: !5384, file: !578, line: 72, type: !136)
!5388 = !DILocation(line: 0, scope: !5384)
!5389 = !DILocation(line: 74, column: 16, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5384, file: !578, line: 74, column: 9)
!5391 = !DILocation(line: 74, column: 21, scope: !5390)
!5392 = !DILocation(line: 74, column: 9, scope: !5384)
!5393 = !DILocation(line: 78, column: 20, scope: !5384)
!5394 = !DILocation(line: 80, column: 19, scope: !5384)
!5395 = !DILocation(line: 83, column: 20, scope: !5384)
!5396 = !DILocation(line: 84, column: 20, scope: !5384)
!5397 = !DILocation(line: 86, column: 19, scope: !5384)
!5398 = !DILocation(line: 88, column: 5, scope: !5384)
!5399 = !DILocation(line: 89, column: 1, scope: !5384)
!5400 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !578, file: !578, line: 98, type: !181, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1083)
!5401 = !DILocation(line: 100, column: 28, scope: !5400)
!5402 = !DILocation(line: 101, column: 1, scope: !5400)
!5403 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !578, file: !578, line: 110, type: !1115, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1083)
!5404 = !DILocation(line: 112, column: 12, scope: !5403)
!5405 = !DILocation(line: 112, column: 5, scope: !5403)
!5406 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !578, file: !578, line: 122, type: !181, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1083)
!5407 = !DILocation(line: 124, column: 23, scope: !5406)
!5408 = !DILocation(line: 124, column: 21, scope: !5406)
!5409 = !DILocation(line: 125, column: 1, scope: !5406)
!5410 = distinct !DISubprogram(name: "SystemInit", scope: !578, file: !578, line: 136, type: !181, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1083)
!5411 = !DILocation(line: 140, column: 16, scope: !5410)
!5412 = !DILocation(line: 144, column: 16, scope: !5410)
!5413 = !DILocation(line: 147, column: 16, scope: !5410)
!5414 = !DILocation(line: 150, column: 1, scope: !5410)
!5415 = distinct !DISubprogram(name: "CachePreInit", scope: !578, file: !578, line: 158, type: !181, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1083)
!5416 = !DILocation(line: 161, column: 22, scope: !5415)
!5417 = !DILocation(line: 164, column: 21, scope: !5415)
!5418 = !DILocation(line: 167, column: 21, scope: !5415)
!5419 = !DILocation(line: 170, column: 29, scope: !5415)
!5420 = !DILocation(line: 171, column: 33, scope: !5415)
!5421 = !DILocation(line: 173, column: 28, scope: !5415)
!5422 = !DILocation(line: 178, column: 30, scope: !5415)
!5423 = !DILocation(line: 192, column: 1, scope: !5415)
!5424 = distinct !DISubprogram(name: "_close", scope: !638, file: !638, line: 11, type: !5278, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5425)
!5425 = !{!5426}
!5426 = !DILocalVariable(name: "file", arg: 1, scope: !5424, file: !638, line: 11, type: !53)
!5427 = !DILocation(line: 0, scope: !5424)
!5428 = !DILocation(line: 13, column: 5, scope: !5424)
!5429 = distinct !DISubprogram(name: "_fstat", scope: !638, file: !638, line: 16, type: !5430, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5478)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!53, !53, !5432}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 32)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5434, line: 27, size: 704, elements: !5435)
!5434 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5435 = !{!5436, !5439, !5442, !5445, !5448, !5451, !5454, !5455, !5458, !5468, !5469, !5470, !5473, !5476}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5433, file: !5434, line: 29, baseType: !5437, size: 16)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !642, line: 161, baseType: !5438)
!5438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !684, line: 56, baseType: !659)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5433, file: !5434, line: 30, baseType: !5440, size: 16, offset: 16)
!5440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !642, line: 139, baseType: !5441)
!5441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !684, line: 75, baseType: !228)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5433, file: !5434, line: 31, baseType: !5443, size: 32, offset: 32)
!5443 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !642, line: 189, baseType: !5444)
!5444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !684, line: 90, baseType: !137)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5433, file: !5434, line: 32, baseType: !5446, size: 16, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !642, line: 194, baseType: !5447)
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !684, line: 209, baseType: !228)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5433, file: !5434, line: 33, baseType: !5449, size: 16, offset: 80)
!5449 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !642, line: 165, baseType: !5450)
!5450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !684, line: 60, baseType: !228)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5433, file: !5434, line: 34, baseType: !5452, size: 16, offset: 96)
!5452 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !642, line: 169, baseType: !5453)
!5453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !684, line: 63, baseType: !228)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5433, file: !5434, line: 35, baseType: !5437, size: 16, offset: 112)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5433, file: !5434, line: 36, baseType: !5456, size: 32, offset: 128)
!5456 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !642, line: 157, baseType: !5457)
!5457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !684, line: 102, baseType: !702)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5433, file: !5434, line: 42, baseType: !5459, size: 128, offset: 192)
!5459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5460, line: 47, size: 128, elements: !5461)
!5460 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5461 = !{!5462, !5467}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5459, file: !5460, line: 48, baseType: !5463, size: 64)
!5463 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5464, line: 42, baseType: !5465)
!5464 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !131, line: 200, baseType: !5466)
!5466 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5459, file: !5460, line: 49, baseType: !685, size: 32, offset: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5433, file: !5434, line: 43, baseType: !5459, size: 128, offset: 320)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5433, file: !5434, line: 44, baseType: !5459, size: 128, offset: 448)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5433, file: !5434, line: 45, baseType: !5471, size: 32, offset: 576)
!5471 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !642, line: 102, baseType: !5472)
!5472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !684, line: 34, baseType: !685)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5433, file: !5434, line: 46, baseType: !5474, size: 32, offset: 608)
!5474 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !642, line: 97, baseType: !5475)
!5475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !684, line: 30, baseType: !685)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5433, file: !5434, line: 48, baseType: !5477, size: 64, offset: 640)
!5477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 64, elements: !391)
!5478 = !{!5479, !5480}
!5479 = !DILocalVariable(name: "file", arg: 1, scope: !5429, file: !638, line: 16, type: !53)
!5480 = !DILocalVariable(name: "st", arg: 2, scope: !5429, file: !638, line: 16, type: !5432)
!5481 = !DILocation(line: 0, scope: !5429)
!5482 = !DILocation(line: 18, column: 5, scope: !5429)
!5483 = distinct !DISubprogram(name: "_isatty", scope: !638, file: !638, line: 22, type: !5278, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5484)
!5484 = !{!5485}
!5485 = !DILocalVariable(name: "file", arg: 1, scope: !5483, file: !638, line: 22, type: !53)
!5486 = !DILocation(line: 0, scope: !5483)
!5487 = !DILocation(line: 24, column: 5, scope: !5483)
!5488 = distinct !DISubprogram(name: "_lseek", scope: !638, file: !638, line: 27, type: !5489, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5491)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!53, !53, !53, !53}
!5491 = !{!5492, !5493, !5494}
!5492 = !DILocalVariable(name: "file", arg: 1, scope: !5488, file: !638, line: 27, type: !53)
!5493 = !DILocalVariable(name: "ptr", arg: 2, scope: !5488, file: !638, line: 27, type: !53)
!5494 = !DILocalVariable(name: "dir", arg: 3, scope: !5488, file: !638, line: 27, type: !53)
!5495 = !DILocation(line: 0, scope: !5488)
!5496 = !DILocation(line: 29, column: 5, scope: !5488)
!5497 = distinct !DISubprogram(name: "_open", scope: !638, file: !638, line: 32, type: !5498, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5500)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!53, !677, !53, !53}
!5500 = !{!5501, !5502, !5503}
!5501 = !DILocalVariable(name: "name", arg: 1, scope: !5497, file: !638, line: 32, type: !677)
!5502 = !DILocalVariable(name: "flags", arg: 2, scope: !5497, file: !638, line: 32, type: !53)
!5503 = !DILocalVariable(name: "mode", arg: 3, scope: !5497, file: !638, line: 32, type: !53)
!5504 = !DILocation(line: 0, scope: !5497)
!5505 = !DILocation(line: 34, column: 5, scope: !5497)
!5506 = distinct !DISubprogram(name: "_read", scope: !638, file: !638, line: 37, type: !5507, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5509)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!53, !53, !643, !53}
!5509 = !{!5510, !5511, !5512}
!5510 = !DILocalVariable(name: "file", arg: 1, scope: !5506, file: !638, line: 37, type: !53)
!5511 = !DILocalVariable(name: "ptr", arg: 2, scope: !5506, file: !638, line: 37, type: !643)
!5512 = !DILocalVariable(name: "len", arg: 3, scope: !5506, file: !638, line: 37, type: !53)
!5513 = !DILocation(line: 0, scope: !5506)
!5514 = !DILocation(line: 39, column: 5, scope: !5506)
!5515 = distinct !DISubprogram(name: "_write", scope: !638, file: !638, line: 52, type: !5507, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5516)
!5516 = !{!5517, !5518, !5519, !5520}
!5517 = !DILocalVariable(name: "file", arg: 1, scope: !5515, file: !638, line: 52, type: !53)
!5518 = !DILocalVariable(name: "ptr", arg: 2, scope: !5515, file: !638, line: 52, type: !643)
!5519 = !DILocalVariable(name: "len", arg: 3, scope: !5515, file: !638, line: 52, type: !53)
!5520 = !DILocalVariable(name: "i", scope: !5515, file: !638, line: 54, type: !53)
!5521 = !DILocation(line: 0, scope: !5515)
!5522 = !DILocation(line: 56, column: 19, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !638, line: 56, column: 5)
!5524 = distinct !DILexicalBlock(scope: !5515, file: !638, line: 56, column: 5)
!5525 = !DILocation(line: 56, column: 5, scope: !5524)
!5526 = !DILocation(line: 57, column: 26, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !638, line: 56, column: 31)
!5528 = !DILocation(line: 57, column: 22, scope: !5527)
!5529 = !DILocation(line: 57, column: 9, scope: !5527)
!5530 = !DILocation(line: 56, column: 27, scope: !5523)
!5531 = distinct !{!5531, !5525, !5532}
!5532 = !DILocation(line: 58, column: 5, scope: !5524)
!5533 = !DILocation(line: 60, column: 5, scope: !5515)
!5534 = !DILocation(line: 0, scope: !637)
!5535 = !DILocation(line: 70, column: 5, scope: !637)
!5536 = !{i64 1109}
!5537 = !DILocation(line: 72, column: 14, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !637, file: !638, line: 72, column: 9)
!5539 = !DILocation(line: 72, column: 11, scope: !5538)
!5540 = !DILocation(line: 72, column: 9, scope: !637)
!5541 = !DILocation(line: 78, column: 32, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !637, file: !638, line: 78, column: 9)
!5543 = !DILocation(line: 78, column: 15, scope: !5542)
!5544 = !DILocation(line: 89, column: 1, scope: !637)
!5545 = !DILocation(line: 78, column: 9, scope: !637)
!5546 = distinct !DISubprogram(name: "_exit", scope: !638, file: !638, line: 91, type: !787, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5547)
!5547 = !{!5548}
!5548 = !DILocalVariable(name: "__status", arg: 1, scope: !5546, file: !638, line: 91, type: !53)
!5549 = !DILocation(line: 0, scope: !5546)
!5550 = !DILocation(line: 93, column: 5, scope: !5546)
!5551 = !DILocation(line: 94, column: 5, scope: !5546)
!5552 = distinct !{!5552, !5551, !5553}
!5553 = !DILocation(line: 96, column: 5, scope: !5546)
!5554 = distinct !DISubprogram(name: "_kill", scope: !638, file: !638, line: 100, type: !5555, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5557)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!53, !53, !53}
!5557 = !{!5558, !5559}
!5558 = !DILocalVariable(name: "pid", arg: 1, scope: !5554, file: !638, line: 100, type: !53)
!5559 = !DILocalVariable(name: "sig", arg: 2, scope: !5554, file: !638, line: 100, type: !53)
!5560 = !DILocation(line: 0, scope: !5554)
!5561 = !DILocation(line: 102, column: 5, scope: !5554)
!5562 = !DILocation(line: 103, column: 5, scope: !5554)
!5563 = distinct !DISubprogram(name: "_getpid", scope: !638, file: !638, line: 107, type: !5564, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !1083)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{!5566}
!5566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !642, line: 174, baseType: !5567)
!5567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !684, line: 52, baseType: !53)
!5568 = !DILocation(line: 109, column: 5, scope: !5563)
!5569 = !DILocation(line: 110, column: 5, scope: !5563)
