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
@g_uart_receive_buffer = internal global [256 x i8] zeroinitializer, align 4, !dbg !528
@g_uart_send_buffer = internal global [256 x i8] zeroinitializer, align 4, !dbg !568
@.str.19 = private unnamed_addr constant [65 x i8] c"\0D\0A\0D\0APlease input data to this UART port and watch it's output:\0D\0A\00", align 1
@g_uart_receive_event = internal global i8 0, align 1, !dbg !573
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !575
@System_Initialize_Done = internal global i32 0, align 4, !dbg !633
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !635
@end = external dso_local global i8, align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.27 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.28 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:18 GMT +00:00\00", align 1, !dbg !844
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !849
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !853

; Function Attrs: nofree noinline norecurse noreturn nosync nounwind optsize readnone
define dso_local void @DMA_ERROR_LISR() #0 !dbg !1079 {
  br label %1, !dbg !1081

1:                                                ; preds = %0, %1
  br label %1, !dbg !1081, !llvm.loop !1082
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Stop(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1084 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1088, metadata !DIExpression()), !dbg !1089
  %2 = zext i8 %0 to i32, !dbg !1090
  %3 = shl nuw nsw i32 %2, 8, !dbg !1090
  %4 = or i32 %3, -2097086440, !dbg !1090
  %5 = inttoptr i32 %4 to i32*, !dbg !1090
  store volatile i32 0, i32* %5, align 8, !dbg !1090
  %6 = or i32 %3, -2097086432, !dbg !1091
  %7 = inttoptr i32 %6 to i32*, !dbg !1091
  store volatile i32 32768, i32* %7, align 32, !dbg !1091
  ret void, !dbg !1092
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Run(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1093 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1095, metadata !DIExpression()), !dbg !1096
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1097
  %2 = zext i8 %0 to i32, !dbg !1098
  %3 = shl nuw nsw i32 %2, 8, !dbg !1098
  %4 = or i32 %3, -2097086440, !dbg !1098
  %5 = inttoptr i32 %4 to i32*, !dbg !1098
  store volatile i32 32768, i32* %5, align 8, !dbg !1098
  ret void, !dbg !1099
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_GetChannel(i32 noundef %0) local_unnamed_addr #3 !dbg !1100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1104, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 -1, metadata !1106, metadata !DIExpression()), !dbg !1108
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1109, !srcloc !1118
  call void @llvm.dbg.value(metadata i32 %2, metadata !1115, metadata !DIExpression()) #15, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %2, metadata !1107, metadata !DIExpression()), !dbg !1108
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1120, !srcloc !1123
  call void @llvm.dbg.value(metadata i8 3, metadata !1105, metadata !DIExpression()), !dbg !1108
  %3 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 3, metadata !1105, metadata !DIExpression()), !dbg !1108
  br label %4, !dbg !1124

4:                                                ; preds = %1, %13
  %5 = phi i32 [ 3, %1 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !1105, metadata !DIExpression()), !dbg !1108
  %6 = shl nuw nsw i32 1, %5, !dbg !1126
  %7 = and i32 %3, %6, !dbg !1130
  %8 = icmp eq i32 %7, 0, !dbg !1131
  br i1 %8, label %13, label %9, !dbg !1132

9:                                                ; preds = %4
  %10 = trunc i32 %5 to i8, !dbg !1108
  call void @llvm.dbg.value(metadata i8 %10, metadata !1106, metadata !DIExpression()), !dbg !1108
  %11 = xor i32 %6, -1, !dbg !1133
  %12 = and i32 %3, %11, !dbg !1135
  store i32 %12, i32* @DMA_Channel_Status, align 4, !dbg !1135
  br label %16, !dbg !1136

13:                                               ; preds = %4
  %14 = add nuw nsw i32 %5, 1, !dbg !1137
  call void @llvm.dbg.value(metadata i32 %14, metadata !1105, metadata !DIExpression()), !dbg !1108
  %15 = icmp eq i32 %14, 12, !dbg !1138
  br i1 %15, label %16, label %4, !dbg !1124, !llvm.loop !1139

16:                                               ; preds = %13, %9
  %17 = phi i8 [ %10, %9 ], [ -1, %13 ], !dbg !1108
  call void @llvm.dbg.value(metadata i8 %17, metadata !1106, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %2, metadata !1141, metadata !DIExpression()) #15, !dbg !1146
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1149, !srcloc !1150
  %18 = zext i8 %17 to i32, !dbg !1151
  %19 = add nsw i32 %18, -1, !dbg !1152
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %19, !dbg !1153
  store i32 %0, i32* %20, align 4, !dbg !1154
  ret i8 %17, !dbg !1155
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1156 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1158, metadata !DIExpression()), !dbg !1160
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1161, !srcloc !1118
  call void @llvm.dbg.value(metadata i32 %2, metadata !1115, metadata !DIExpression()) #15, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %2, metadata !1159, metadata !DIExpression()), !dbg !1160
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1165, !srcloc !1123
  %3 = zext i8 %0 to i32, !dbg !1167
  %4 = shl nuw i32 1, %3, !dbg !1168
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1169
  %6 = or i32 %5, %4, !dbg !1169
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1169
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1170
  %7 = add nsw i32 %3, -1, !dbg !1171
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1172
  store i32 26, i32* %8, align 4, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %2, metadata !1141, metadata !DIExpression()) #15, !dbg !1174
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1177, !srcloc !1150
  ret void, !dbg !1178
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @DMA_FullSize_CheckIdleChannel(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1183, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %1, metadata !1184, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 -1, metadata !1186, metadata !DIExpression()), !dbg !1188
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1189, !srcloc !1118
  call void @llvm.dbg.value(metadata i32 %3, metadata !1115, metadata !DIExpression()) #15, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %3, metadata !1187, metadata !DIExpression()), !dbg !1188
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1193, !srcloc !1123
  %4 = add i8 %1, 1, !dbg !1195
  call void @llvm.dbg.value(metadata i8 %4, metadata !1185, metadata !DIExpression()), !dbg !1188
  %5 = icmp ugt i8 %4, 2, !dbg !1196
  br i1 %5, label %20, label %6, !dbg !1198

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32, !dbg !1199
  %8 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1200
  %9 = shl nuw nsw i32 1, %7, !dbg !1202
  %10 = and i32 %8, %9, !dbg !1203
  %11 = icmp eq i32 %10, 0, !dbg !1204
  br i1 %11, label %15, label %12, !dbg !1205

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8 %4, metadata !1186, metadata !DIExpression()), !dbg !1188
  %13 = xor i32 %9, -1, !dbg !1206
  %14 = and i32 %8, %13, !dbg !1208
  store i32 %14, i32* @DMA_Channel_Status, align 4, !dbg !1208
  br label %15, !dbg !1209

15:                                               ; preds = %6, %12
  %16 = phi i8 [ %4, %12 ], [ -1, %6 ], !dbg !1188
  call void @llvm.dbg.value(metadata i8 %16, metadata !1186, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %3, metadata !1141, metadata !DIExpression()) #15, !dbg !1210
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1213, !srcloc !1150
  %17 = zext i8 %16 to i32, !dbg !1214
  %18 = add nsw i32 %17, -1, !dbg !1215
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %18, !dbg !1216
  store i32 %0, i32* %19, align 4, !dbg !1217
  br label %20, !dbg !1218

20:                                               ; preds = %2, %15
  %21 = phi i8 [ %16, %15 ], [ -1, %2 ], !dbg !1188
  ret i8 %21, !dbg !1219
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_FullSize_FreeChannel(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1220 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1222, metadata !DIExpression()), !dbg !1224
  %2 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1225, !srcloc !1118
  call void @llvm.dbg.value(metadata i32 %2, metadata !1115, metadata !DIExpression()) #15, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %2, metadata !1223, metadata !DIExpression()), !dbg !1224
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1229, !srcloc !1123
  %3 = zext i8 %0 to i32, !dbg !1231
  %4 = shl nuw i32 1, %3, !dbg !1232
  %5 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1233
  %6 = or i32 %5, %4, !dbg !1233
  store i32 %6, i32* @DMA_Channel_Status, align 4, !dbg !1233
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1234
  %7 = add nsw i32 %3, -1, !dbg !1235
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %7, !dbg !1236
  store i32 26, i32* %8, align 4, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %2, metadata !1141, metadata !DIExpression()) #15, !dbg !1238
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %2) #15, !dbg !1241, !srcloc !1150
  ret void, !dbg !1242
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Config_Internal(i8 noundef zeroext %0, %struct.DMA_INPUT* noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 !dbg !1243 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1258, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata %struct.DMA_INPUT* %1, metadata !1259, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i1 %2, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i1 %3, metadata !1261, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %4, metadata !1262, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i1 %5, metadata !1263, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i32 0, metadata !1264, metadata !DIExpression()), !dbg !1266
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %0) #14, !dbg !1267
  %7 = zext i8 %0 to i32, !dbg !1268
  %8 = icmp ugt i8 %0, 16, !dbg !1268
  br i1 %8, label %9, label %16, !dbg !1270

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1268
  %11 = shl nuw nsw i32 %7, 1, !dbg !1268
  %12 = add nsw i32 %11, -34, !dbg !1268
  %13 = shl nuw i32 1, %12, !dbg !1268
  %14 = and i32 %10, %13, !dbg !1268
  %15 = icmp eq i32 %14, 0, !dbg !1268
  br i1 %15, label %26, label %23, !dbg !1268

16:                                               ; preds = %6
  %17 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1268
  %18 = shl nuw nsw i32 %7, 1, !dbg !1268
  %19 = add nsw i32 %18, -2, !dbg !1268
  %20 = shl nuw i32 1, %19, !dbg !1268
  %21 = and i32 %17, %20, !dbg !1268
  %22 = icmp eq i32 %21, 0, !dbg !1268
  br i1 %22, label %31, label %23, !dbg !1270

23:                                               ; preds = %16, %9
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 187) #16, !dbg !1271
  br label %25, !dbg !1271

25:                                               ; preds = %25, %23
  br label %25, !dbg !1271, !llvm.loop !1275

26:                                               ; preds = %9
  %27 = load volatile i32, i32* inttoptr (i32 -2097086460 to i32*), align 4, !dbg !1276
  %28 = shl i32 2, %12, !dbg !1276
  %29 = and i32 %27, %28, !dbg !1276
  %30 = icmp eq i32 %29, 0, !dbg !1276
  br i1 %30, label %39, label %36, !dbg !1276

31:                                               ; preds = %16
  %32 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1276
  %33 = shl i32 2, %19, !dbg !1276
  %34 = and i32 %32, %33, !dbg !1276
  %35 = icmp eq i32 %34, 0, !dbg !1276
  br i1 %35, label %39, label %36, !dbg !1278

36:                                               ; preds = %31, %26
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 191) #16, !dbg !1279
  br label %38, !dbg !1279

38:                                               ; preds = %38, %36
  br label %38, !dbg !1279, !llvm.loop !1283

39:                                               ; preds = %31, %26
  %40 = add nsw i32 %7, -1, !dbg !1284
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %40, !dbg !1284
  %42 = load i32, i32* %41, align 4, !dbg !1284
  %43 = icmp eq i32 %42, 26, !dbg !1284
  br i1 %43, label %44, label %47, !dbg !1286

44:                                               ; preds = %39
  %45 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 194) #16, !dbg !1287
  br label %46, !dbg !1287

46:                                               ; preds = %46, %44
  br label %46, !dbg !1287, !llvm.loop !1289

47:                                               ; preds = %39
  %48 = and i1 %2, %3, !dbg !1290
  br i1 %48, label %49, label %52, !dbg !1290

49:                                               ; preds = %47
  %50 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 197) #16, !dbg !1291
  br label %51, !dbg !1291

51:                                               ; preds = %51, %49
  br label %51, !dbg !1291, !llvm.loop !1296

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 2, !dbg !1297
  %54 = load i32, i32* %53, align 4, !dbg !1297
  %55 = icmp ugt i32 %54, 65535, !dbg !1297
  br i1 %55, label %56, label %59, !dbg !1299

56:                                               ; preds = %52
  %57 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 200) #16, !dbg !1300
  br label %58, !dbg !1300

58:                                               ; preds = %58, %56
  br label %58, !dbg !1300, !llvm.loop !1302

59:                                               ; preds = %52
  tail call void @DMA_Stop(i8 noundef zeroext %0) #14, !dbg !1303
  %60 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 0, !dbg !1304
  %61 = load i32, i32* %60, align 4, !dbg !1304
  switch i32 %61, label %252 [
    i32 0, label %62
    i32 1, label %94
    i32 2, label %126
    i32 3, label %140
    i32 4, label %196
  ], !dbg !1305

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1306
  br i1 %2, label %64, label %81, !dbg !1309

64:                                               ; preds = %62
  %65 = bitcast i8** %63 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1310
  %66 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1310
  %67 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 1, !dbg !1312
  call void @llvm.dbg.value(metadata i32 undef, metadata !1265, metadata !DIExpression()), !dbg !1266
  %68 = load i32, i32* %67, align 4, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %85, metadata !1265, metadata !DIExpression()), !dbg !1266
  %69 = shl i32 %68, 20, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %86, metadata !1264, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %70 = or i32 %69, 20, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %86, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %71 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %66, i32 0, i32 2, !dbg !1315
  %72 = load i32, i32* %71, align 4, !dbg !1315
  %73 = shl nuw nsw i32 %7, 8, !dbg !1315
  %74 = or i32 %73, -2097086464, !dbg !1315
  %75 = inttoptr i32 %74 to i32*, !dbg !1315
  store volatile i32 %72, i32* %75, align 256, !dbg !1315
  %76 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %65, align 4, !dbg !1318
  %77 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %76, i32 0, i32 3, !dbg !1318
  %78 = load i32, i32* %77, align 4, !dbg !1318
  %79 = or i32 %73, -2097086460, !dbg !1318
  %80 = inttoptr i32 %79 to i32*, !dbg !1318
  store volatile i32 %78, i32* %80, align 4, !dbg !1318
  br label %255, !dbg !1319

81:                                               ; preds = %62
  %82 = bitcast i8** %63 to %struct.DMA_HWMENU**, !dbg !1320
  %83 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %82, align 4, !dbg !1320
  %84 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 1, !dbg !1322
  call void @llvm.dbg.value(metadata i32 undef, metadata !1265, metadata !DIExpression()), !dbg !1266
  %85 = load i32, i32* %84, align 4, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %85, metadata !1265, metadata !DIExpression()), !dbg !1266
  %86 = shl i32 %85, 20, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %86, metadata !1264, metadata !DIExpression(DW_OP_constu, 4, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %86, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %87 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %83, i32 0, i32 2, !dbg !1323
  %88 = load i32, i32* %87, align 4, !dbg !1323
  %89 = shl nuw nsw i32 %7, 8, !dbg !1323
  %90 = or i32 %89, -2097086420, !dbg !1323
  %91 = inttoptr i32 %90 to i32*, !dbg !1323
  store volatile i32 %88, i32* %91, align 4, !dbg !1323
  %92 = select i1 %3, i32 52, i32 20, !dbg !1325
  %93 = or i32 %86, %92, !dbg !1325
  br label %255, !dbg !1325

94:                                               ; preds = %59
  %95 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1326
  br i1 %2, label %96, label %113, !dbg !1328

96:                                               ; preds = %94
  %97 = bitcast i8** %95 to %struct.DMA_FULLSIZE_HWMENU**, !dbg !1329
  %98 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1329
  %99 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 1, !dbg !1331
  call void @llvm.dbg.value(metadata i32 undef, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1266
  %100 = load i32, i32* %99, align 4, !dbg !1326
  %101 = shl i32 %100, 20, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %118, metadata !1264, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %102 = or i32 %101, 262168, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %118, metadata !1264, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %103 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %98, i32 0, i32 2, !dbg !1333
  %104 = load i32, i32* %103, align 4, !dbg !1333
  %105 = shl nuw nsw i32 %7, 8, !dbg !1333
  %106 = or i32 %105, -2097086464, !dbg !1333
  %107 = inttoptr i32 %106 to i32*, !dbg !1333
  store volatile i32 %104, i32* %107, align 256, !dbg !1333
  %108 = load %struct.DMA_FULLSIZE_HWMENU*, %struct.DMA_FULLSIZE_HWMENU** %97, align 4, !dbg !1336
  %109 = getelementptr inbounds %struct.DMA_FULLSIZE_HWMENU, %struct.DMA_FULLSIZE_HWMENU* %108, i32 0, i32 3, !dbg !1336
  %110 = load i32, i32* %109, align 4, !dbg !1336
  %111 = or i32 %105, -2097086460, !dbg !1336
  %112 = inttoptr i32 %111 to i32*, !dbg !1336
  store volatile i32 %110, i32* %112, align 4, !dbg !1336
  br label %255, !dbg !1337

113:                                              ; preds = %94
  %114 = bitcast i8** %95 to %struct.DMA_HWMENU**, !dbg !1338
  %115 = load %struct.DMA_HWMENU*, %struct.DMA_HWMENU** %114, align 4, !dbg !1338
  %116 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 1, !dbg !1340
  call void @llvm.dbg.value(metadata i32 undef, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1266
  %117 = load i32, i32* %116, align 4, !dbg !1326
  %118 = shl i32 %117, 20, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %118, metadata !1264, metadata !DIExpression(DW_OP_constu, 262152, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %118, metadata !1264, metadata !DIExpression(DW_OP_constu, 262168, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %119 = getelementptr inbounds %struct.DMA_HWMENU, %struct.DMA_HWMENU* %115, i32 0, i32 2, !dbg !1341
  %120 = load i32, i32* %119, align 4, !dbg !1341
  %121 = shl nuw nsw i32 %7, 8, !dbg !1341
  %122 = or i32 %121, -2097086420, !dbg !1341
  %123 = inttoptr i32 %122 to i32*, !dbg !1341
  store volatile i32 %120, i32* %123, align 4, !dbg !1341
  %124 = select i1 %3, i32 262200, i32 262168, !dbg !1343
  %125 = or i32 %118, %124, !dbg !1343
  br label %255, !dbg !1343

126:                                              ; preds = %59
  %127 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1344
  %128 = bitcast i8** %127 to %struct.DMA_SWCOPYMENU**, !dbg !1344
  %129 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1344
  %130 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %129, i32 0, i32 0, !dbg !1344
  %131 = load i32, i32* %130, align 4, !dbg !1344
  %132 = shl nuw nsw i32 %7, 8, !dbg !1344
  %133 = or i32 %132, -2097086464, !dbg !1344
  %134 = inttoptr i32 %133 to i32*, !dbg !1344
  store volatile i32 %131, i32* %134, align 256, !dbg !1344
  %135 = load %struct.DMA_SWCOPYMENU*, %struct.DMA_SWCOPYMENU** %128, align 4, !dbg !1345
  %136 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %135, i32 0, i32 1, !dbg !1345
  %137 = load i32, i32* %136, align 4, !dbg !1345
  %138 = or i32 %132, -2097086460, !dbg !1345
  %139 = inttoptr i32 %138 to i32*, !dbg !1345
  store volatile i32 %137, i32* %139, align 4, !dbg !1345
  call void @llvm.dbg.value(metadata i32 12, metadata !1264, metadata !DIExpression()), !dbg !1266
  br label %255, !dbg !1346

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1347
  br i1 %2, label %142, label %171, !dbg !1349

142:                                              ; preds = %140
  %143 = bitcast i8** %141 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1350
  %144 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1350
  %145 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 1, !dbg !1352
  call void @llvm.dbg.value(metadata i32 undef, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1266
  %146 = load i32, i32* %145, align 4, !dbg !1347
  %147 = shl i32 %146, 20, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %176, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %148 = or i32 %147, 131092, !dbg !1353
  call void @llvm.dbg.value(metadata i32 %176, metadata !1264, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %149 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %144, i32 0, i32 4, !dbg !1354
  %150 = load i8*, i8** %149, align 4, !dbg !1354
  %151 = ptrtoint i8* %150 to i32, !dbg !1354
  %152 = shl nuw nsw i32 %7, 8, !dbg !1354
  %153 = or i32 %152, -2097086456, !dbg !1354
  %154 = inttoptr i32 %153 to i32*, !dbg !1354
  store volatile i32 %151, i32* %154, align 8, !dbg !1354
  %155 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1357
  %156 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %155, i32 0, i32 5, !dbg !1357
  %157 = load i8*, i8** %156, align 4, !dbg !1357
  %158 = ptrtoint i8* %157 to i32, !dbg !1357
  %159 = or i32 %152, -2097086452, !dbg !1357
  %160 = inttoptr i32 %159 to i32*, !dbg !1357
  store volatile i32 %158, i32* %160, align 4, !dbg !1357
  %161 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1358
  %162 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %161, i32 0, i32 2, !dbg !1358
  %163 = load i32, i32* %162, align 4, !dbg !1358
  %164 = or i32 %152, -2097086464, !dbg !1358
  %165 = inttoptr i32 %164 to i32*, !dbg !1358
  store volatile i32 %163, i32* %165, align 256, !dbg !1358
  %166 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %143, align 4, !dbg !1359
  %167 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %166, i32 0, i32 3, !dbg !1359
  %168 = load i32, i32* %167, align 4, !dbg !1359
  %169 = or i32 %152, -2097086460, !dbg !1359
  %170 = inttoptr i32 %169 to i32*, !dbg !1359
  store volatile i32 %168, i32* %170, align 4, !dbg !1359
  br label %255, !dbg !1360

171:                                              ; preds = %140
  %172 = bitcast i8** %141 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1361
  %173 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1361
  %174 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 1, !dbg !1363
  call void @llvm.dbg.value(metadata i32 undef, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1266
  %175 = load i32, i32* %174, align 4, !dbg !1347
  %176 = shl i32 %175, 20, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %176, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %176, metadata !1264, metadata !DIExpression(DW_OP_constu, 131092, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %177 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %173, i32 0, i32 3, !dbg !1364
  %178 = load i8*, i8** %177, align 4, !dbg !1364
  %179 = ptrtoint i8* %178 to i32, !dbg !1364
  %180 = shl nuw nsw i32 %7, 8, !dbg !1364
  %181 = or i32 %180, -2097086456, !dbg !1364
  %182 = inttoptr i32 %181 to i32*, !dbg !1364
  store volatile i32 %179, i32* %182, align 8, !dbg !1364
  %183 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1366
  %184 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %183, i32 0, i32 4, !dbg !1366
  %185 = load i8*, i8** %184, align 4, !dbg !1366
  %186 = ptrtoint i8* %185 to i32, !dbg !1366
  %187 = or i32 %180, -2097086452, !dbg !1366
  %188 = inttoptr i32 %187 to i32*, !dbg !1366
  store volatile i32 %186, i32* %188, align 4, !dbg !1366
  %189 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %172, align 4, !dbg !1367
  %190 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %189, i32 0, i32 2, !dbg !1367
  %191 = load i32, i32* %190, align 4, !dbg !1367
  %192 = or i32 %180, -2097086420, !dbg !1367
  %193 = inttoptr i32 %192 to i32*, !dbg !1367
  store volatile i32 %191, i32* %193, align 4, !dbg !1367
  %194 = select i1 %3, i32 131124, i32 131092, !dbg !1368
  %195 = or i32 %176, %194, !dbg !1368
  br label %255, !dbg !1368

196:                                              ; preds = %59
  %197 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1369
  br i1 %2, label %198, label %227, !dbg !1371

198:                                              ; preds = %196
  %199 = bitcast i8** %197 to %struct.DMA_FULLSIZE_HWRINGBUFF_MENU**, !dbg !1372
  %200 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1372
  %201 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 1, !dbg !1374
  call void @llvm.dbg.value(metadata i32 undef, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1266
  %202 = load i32, i32* %201, align 4, !dbg !1369
  %203 = shl i32 %202, 20, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %232, metadata !1264, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %204 = or i32 %203, 458776, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %232, metadata !1264, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %205 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %200, i32 0, i32 4, !dbg !1376
  %206 = load i8*, i8** %205, align 4, !dbg !1376
  %207 = ptrtoint i8* %206 to i32, !dbg !1376
  %208 = shl nuw nsw i32 %7, 8, !dbg !1376
  %209 = or i32 %208, -2097086456, !dbg !1376
  %210 = inttoptr i32 %209 to i32*, !dbg !1376
  store volatile i32 %207, i32* %210, align 8, !dbg !1376
  %211 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1379
  %212 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %211, i32 0, i32 5, !dbg !1379
  %213 = load i8*, i8** %212, align 4, !dbg !1379
  %214 = ptrtoint i8* %213 to i32, !dbg !1379
  %215 = or i32 %208, -2097086452, !dbg !1379
  %216 = inttoptr i32 %215 to i32*, !dbg !1379
  store volatile i32 %214, i32* %216, align 4, !dbg !1379
  %217 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1380
  %218 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %217, i32 0, i32 2, !dbg !1380
  %219 = load i32, i32* %218, align 4, !dbg !1380
  %220 = or i32 %208, -2097086464, !dbg !1380
  %221 = inttoptr i32 %220 to i32*, !dbg !1380
  store volatile i32 %219, i32* %221, align 256, !dbg !1380
  %222 = load %struct.DMA_FULLSIZE_HWRINGBUFF_MENU*, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU** %199, align 4, !dbg !1381
  %223 = getelementptr inbounds %struct.DMA_FULLSIZE_HWRINGBUFF_MENU, %struct.DMA_FULLSIZE_HWRINGBUFF_MENU* %222, i32 0, i32 3, !dbg !1381
  %224 = load i32, i32* %223, align 4, !dbg !1381
  %225 = or i32 %208, -2097086460, !dbg !1381
  %226 = inttoptr i32 %225 to i32*, !dbg !1381
  store volatile i32 %224, i32* %226, align 4, !dbg !1381
  br label %255, !dbg !1382

227:                                              ; preds = %196
  %228 = bitcast i8** %197 to %struct.DMA_HWRINGBUFF_MENU**, !dbg !1383
  %229 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1383
  %230 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 1, !dbg !1385
  call void @llvm.dbg.value(metadata i32 undef, metadata !1264, metadata !DIExpression(DW_OP_constu, 20, DW_OP_shl, DW_OP_stack_value)), !dbg !1266
  %231 = load i32, i32* %230, align 4, !dbg !1369
  %232 = shl i32 %231, 20, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %232, metadata !1264, metadata !DIExpression(DW_OP_constu, 327704, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %232, metadata !1264, metadata !DIExpression(DW_OP_constu, 458776, DW_OP_or, DW_OP_stack_value)), !dbg !1266
  %233 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %229, i32 0, i32 3, !dbg !1386
  %234 = load i8*, i8** %233, align 4, !dbg !1386
  %235 = ptrtoint i8* %234 to i32, !dbg !1386
  %236 = shl nuw nsw i32 %7, 8, !dbg !1386
  %237 = or i32 %236, -2097086456, !dbg !1386
  %238 = inttoptr i32 %237 to i32*, !dbg !1386
  store volatile i32 %235, i32* %238, align 8, !dbg !1386
  %239 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1388
  %240 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %239, i32 0, i32 4, !dbg !1388
  %241 = load i8*, i8** %240, align 4, !dbg !1388
  %242 = ptrtoint i8* %241 to i32, !dbg !1388
  %243 = or i32 %236, -2097086452, !dbg !1388
  %244 = inttoptr i32 %243 to i32*, !dbg !1388
  store volatile i32 %242, i32* %244, align 4, !dbg !1388
  %245 = load %struct.DMA_HWRINGBUFF_MENU*, %struct.DMA_HWRINGBUFF_MENU** %228, align 4, !dbg !1389
  %246 = getelementptr inbounds %struct.DMA_HWRINGBUFF_MENU, %struct.DMA_HWRINGBUFF_MENU* %245, i32 0, i32 2, !dbg !1389
  %247 = load i32, i32* %246, align 4, !dbg !1389
  %248 = or i32 %236, -2097086420, !dbg !1389
  %249 = inttoptr i32 %248 to i32*, !dbg !1389
  store volatile i32 %247, i32* %249, align 4, !dbg !1389
  %250 = select i1 %3, i32 458808, i32 458776, !dbg !1390
  %251 = or i32 %232, %250, !dbg !1390
  br label %255, !dbg !1390

252:                                              ; preds = %59
  %253 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 410) #16, !dbg !1391
  br label %254, !dbg !1391

254:                                              ; preds = %254, %252
  br label %254, !dbg !1391, !llvm.loop !1394

255:                                              ; preds = %227, %171, %113, %81, %198, %142, %96, %64, %126
  %256 = phi i32 [ %204, %198 ], [ %148, %142 ], [ 12, %126 ], [ %102, %96 ], [ %70, %64 ], [ %93, %81 ], [ %125, %113 ], [ %195, %171 ], [ %251, %227 ], !dbg !1395
  call void @llvm.dbg.value(metadata i32 %256, metadata !1264, metadata !DIExpression()), !dbg !1266
  %257 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 1, !dbg !1396
  %258 = load i32, i32* %257, align 4, !dbg !1396
  switch i32 %258, label %328 [
    i32 0, label %259
    i32 1, label %285
    i32 2, label %309
  ], !dbg !1397

259:                                              ; preds = %255
  %260 = load i32, i32* %60, align 4, !dbg !1398
  %261 = icmp eq i32 %260, 2, !dbg !1401
  br i1 %261, label %331, label %262, !dbg !1402

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1403
  %264 = bitcast i8** %263 to %struct.DMA_TMODE**, !dbg !1403
  %265 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %264, align 4, !dbg !1403
  %266 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 0, !dbg !1406
  %267 = load i8, i8* %266, align 1, !dbg !1406, !range !1407
  %268 = icmp eq i8 %267, 0, !dbg !1406
  br i1 %268, label %331, label %269, !dbg !1408

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %265, i32 0, i32 1, !dbg !1409
  %271 = load i8, i8* %270, align 1, !dbg !1409
  %272 = icmp ult i8 %271, 16, !dbg !1410
  br i1 %272, label %275, label %273, !dbg !1411

273:                                              ; preds = %269
  %274 = or i32 %256, 1536, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %274, metadata !1264, metadata !DIExpression()), !dbg !1266
  br label %331, !dbg !1414

275:                                              ; preds = %269
  %276 = and i8 %271, 8, !dbg !1415
  %277 = icmp eq i8 %276, 0, !dbg !1415
  br i1 %277, label %280, label %278, !dbg !1417

278:                                              ; preds = %275
  %279 = or i32 %256, 1024, !dbg !1418
  call void @llvm.dbg.value(metadata i32 %279, metadata !1264, metadata !DIExpression()), !dbg !1266
  br label %331, !dbg !1420

280:                                              ; preds = %275
  %281 = and i8 %271, 4, !dbg !1421
  %282 = zext i8 %281 to i32, !dbg !1423
  %283 = shl nuw nsw i32 %282, 7, !dbg !1423
  %284 = or i32 %283, %256, !dbg !1423
  br label %331, !dbg !1423

285:                                              ; preds = %255
  %286 = load i32, i32* %60, align 4, !dbg !1424
  %287 = icmp eq i32 %286, 2, !dbg !1426
  br i1 %287, label %306, label %288, !dbg !1427

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1428
  %290 = bitcast i8** %289 to %struct.DMA_TMODE**, !dbg !1428
  %291 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %290, align 4, !dbg !1428
  %292 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 0, !dbg !1431
  %293 = load i8, i8* %292, align 1, !dbg !1431, !range !1407
  %294 = icmp eq i8 %293, 0, !dbg !1431
  br i1 %294, label %306, label %295, !dbg !1432

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %291, i32 0, i32 1, !dbg !1433
  %297 = load i8, i8* %296, align 1, !dbg !1433
  %298 = icmp ult i8 %297, 8, !dbg !1434
  br i1 %298, label %301, label %299, !dbg !1435

299:                                              ; preds = %295
  %300 = or i32 %256, 1024, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %300, metadata !1264, metadata !DIExpression()), !dbg !1266
  br label %306, !dbg !1438

301:                                              ; preds = %295
  %302 = and i8 %297, 4, !dbg !1439
  %303 = zext i8 %302 to i32, !dbg !1441
  %304 = shl nuw nsw i32 %303, 7, !dbg !1441
  %305 = or i32 %304, %256, !dbg !1441
  br label %306, !dbg !1441

306:                                              ; preds = %288, %301, %299, %285
  %307 = phi i32 [ %300, %299 ], [ %256, %285 ], [ %305, %301 ], [ %256, %288 ], !dbg !1266
  call void @llvm.dbg.value(metadata i32 %307, metadata !1264, metadata !DIExpression()), !dbg !1266
  %308 = or i32 %307, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %308, metadata !1264, metadata !DIExpression()), !dbg !1266
  br label %331, !dbg !1443

309:                                              ; preds = %255
  %310 = load i32, i32* %60, align 4, !dbg !1444
  %311 = icmp eq i32 %310, 2, !dbg !1446
  br i1 %311, label %325, label %312, !dbg !1447

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 3, !dbg !1448
  %314 = bitcast i8** %313 to %struct.DMA_TMODE**, !dbg !1448
  %315 = load %struct.DMA_TMODE*, %struct.DMA_TMODE** %314, align 4, !dbg !1448
  %316 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 0, !dbg !1451
  %317 = load i8, i8* %316, align 1, !dbg !1451, !range !1407
  %318 = icmp eq i8 %317, 0, !dbg !1451
  br i1 %318, label %325, label %319, !dbg !1452

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.DMA_TMODE, %struct.DMA_TMODE* %315, i32 0, i32 1, !dbg !1453
  %321 = load i8, i8* %320, align 1, !dbg !1453
  %322 = icmp ult i8 %321, 4, !dbg !1454
  %323 = or i32 %256, 512
  %324 = select i1 %322, i32 %256, i32 %323, !dbg !1455
  br label %325, !dbg !1455

325:                                              ; preds = %319, %312, %309
  %326 = phi i32 [ %256, %312 ], [ %256, %309 ], [ %324, %319 ], !dbg !1266
  call void @llvm.dbg.value(metadata i32 %326, metadata !1264, metadata !DIExpression()), !dbg !1266
  %327 = or i32 %326, 2, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %327, metadata !1264, metadata !DIExpression()), !dbg !1266
  br label %331, !dbg !1457

328:                                              ; preds = %255
  %329 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 486) #16, !dbg !1458
  br label %330, !dbg !1458

330:                                              ; preds = %330, %328
  br label %330, !dbg !1458, !llvm.loop !1461

331:                                              ; preds = %262, %280, %259, %278, %273, %325, %306
  %332 = phi i32 [ %327, %325 ], [ %308, %306 ], [ %274, %273 ], [ %279, %278 ], [ %256, %259 ], [ %284, %280 ], [ %256, %262 ], !dbg !1266
  call void @llvm.dbg.value(metadata i32 %332, metadata !1264, metadata !DIExpression()), !dbg !1266
  %333 = getelementptr inbounds %struct.DMA_INPUT, %struct.DMA_INPUT* %1, i32 0, i32 4, !dbg !1462
  %334 = load void ()*, void ()** %333, align 4, !dbg !1462
  %335 = icmp eq void ()* %334, null, !dbg !1464
  br i1 %335, label %339, label %336, !dbg !1465

336:                                              ; preds = %331
  %337 = or i32 %332, 32768, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %337, metadata !1264, metadata !DIExpression()), !dbg !1266
  %338 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %40, !dbg !1468
  store void ()* %334, void ()** %338, align 4, !dbg !1469
  br label %339, !dbg !1470

339:                                              ; preds = %336, %331
  %340 = phi i32 [ %337, %336 ], [ %332, %331 ], !dbg !1266
  call void @llvm.dbg.value(metadata i32 %340, metadata !1264, metadata !DIExpression()), !dbg !1266
  %341 = shl nuw nsw i32 %7, 8, !dbg !1471
  %342 = or i32 %341, -2097086444, !dbg !1471
  %343 = inttoptr i32 %342 to i32*, !dbg !1471
  store volatile i32 %340, i32* %343, align 4, !dbg !1471
  %344 = load i32, i32* %53, align 4, !dbg !1472
  %345 = or i32 %341, -2097086448, !dbg !1472
  %346 = inttoptr i32 %345 to i32*, !dbg !1472
  store volatile i32 %344, i32* %346, align 16, !dbg !1472
  br i1 %5, label %347, label %350, !dbg !1473

347:                                              ; preds = %339
  %348 = or i32 %341, -2097086440, !dbg !1474
  %349 = inttoptr i32 %348 to i32*, !dbg !1474
  store volatile i32 32768, i32* %349, align 8, !dbg !1474
  br label %350, !dbg !1477

350:                                              ; preds = %347, %339
  ret void, !dbg !1478
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Enable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1479 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1481, metadata !DIExpression()), !dbg !1482
  %2 = zext i8 %0 to i32, !dbg !1483
  %3 = add nsw i32 %2, -1, !dbg !1484
  %4 = shl nuw i32 1, %3, !dbg !1485
  store volatile i32 %4, i32* inttoptr (i32 -2097151976 to i32*), align 8, !dbg !1486
  ret void, !dbg !1487
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_Register(i8 noundef zeroext %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !1488 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1492, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1493, metadata !DIExpression()), !dbg !1494
  %3 = zext i8 %0 to i32, !dbg !1495
  %4 = add i8 %0, -12, !dbg !1497
  %5 = icmp ult i8 %4, -11, !dbg !1497
  br i1 %5, label %6, label %8, !dbg !1497

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.DMA_Register, i32 0, i32 0), i32 noundef %3) #16, !dbg !1498
  br label %11, !dbg !1500

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1, !dbg !1501
  %10 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %9, !dbg !1502
  store void ()* %1, void ()** %10, align 4, !dbg !1503
  br label %11, !dbg !1504

11:                                               ; preds = %8, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %8 ], !dbg !1494
  ret i32 %12, !dbg !1505
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @DMA_UnRegister(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1506 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1510, metadata !DIExpression()), !dbg !1511
  %2 = zext i8 %0 to i32, !dbg !1512
  %3 = add i8 %0, -12, !dbg !1514
  %4 = icmp ult i8 %3, -11, !dbg !1514
  br i1 %4, label %5, label %7, !dbg !1514

5:                                                ; preds = %1
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.DMA_UnRegister, i32 0, i32 0), i32 noundef %2) #16, !dbg !1515
  br label %10, !dbg !1517

7:                                                ; preds = %1
  %8 = add nsw i32 %2, -1, !dbg !1518
  %9 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %8, !dbg !1519
  store void ()* @DMA_ERROR_LISR, void ()** %9, align 4, !dbg !1520
  br label %10, !dbg !1521

10:                                               ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ 0, %7 ], !dbg !1511
  ret i32 %11, !dbg !1522
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_LISR(i32 %0) #3 !dbg !1523 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1525, metadata !DIExpression()), !dbg !1528
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 1) #16, !dbg !1529
  call void @llvm.dbg.value(metadata i8 0, metadata !1526, metadata !DIExpression()), !dbg !1528
  br label %3, !dbg !1530

3:                                                ; preds = %1, %25
  %4 = phi i32 [ 0, %1 ], [ %5, %25 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !1526, metadata !DIExpression()), !dbg !1528
  %5 = add nuw nsw i32 %4, 1, !dbg !1532
  %6 = shl nuw nsw i32 %5, 8, !dbg !1532
  %7 = add nuw nsw i32 %6, -2097086436, !dbg !1532
  %8 = inttoptr i32 %7 to i32*, !dbg !1532
  %9 = load volatile i32, i32* %8, align 4, !dbg !1532
  %10 = and i32 %9, 32768, !dbg !1536
  %11 = icmp eq i32 %10, 0, !dbg !1536
  br i1 %11, label %25, label %12, !dbg !1537

12:                                               ; preds = %3
  %13 = trunc i32 %5 to i8, !dbg !1538
  tail call void @DMA_Stop(i8 noundef zeroext %13) #14, !dbg !1540
  %14 = add nuw nsw i32 %6, -2097086432, !dbg !1541
  %15 = inttoptr i32 %14 to i32*, !dbg !1541
  store volatile i32 32768, i32* %15, align 32, !dbg !1541
  %16 = shl nuw nsw i32 %4, 1
  %17 = shl nuw i32 1, %16
  br label %18, !dbg !1542

18:                                               ; preds = %18, %12
  %19 = load volatile i32, i32* inttoptr (i32 -2097086464 to i32*), align 65536, !dbg !1543
  %20 = and i32 %19, %17, !dbg !1542
  %21 = icmp eq i32 %20, 0, !dbg !1542
  br i1 %21, label %22, label %18, !dbg !1542, !llvm.loop !1544

22:                                               ; preds = %18
  tail call void @DMA_Clock_Disable(i8 noundef zeroext %13) #14, !dbg !1546
  %23 = getelementptr inbounds [11 x void ()*], [11 x void ()*]* bitcast (<{ void ()*, [10 x void ()*] }>* @DMA_LISR_FUNC to [11 x void ()*]*), i32 0, i32 %4, !dbg !1547
  %24 = load void ()*, void ()** %23, align 4, !dbg !1547
  tail call void %24() #16, !dbg !1547
  br label %25, !dbg !1548

25:                                               ; preds = %3, %22
  call void @llvm.dbg.value(metadata i32 %5, metadata !1526, metadata !DIExpression()), !dbg !1528
  %26 = icmp eq i32 %5, 11, !dbg !1549
  br i1 %26, label %27, label %3, !dbg !1530, !llvm.loop !1550

27:                                               ; preds = %25, %87
  %28 = phi i32 [ %88, %87 ], [ 12, %25 ]
  call void @llvm.dbg.value(metadata i32 %28, metadata !1526, metadata !DIExpression()), !dbg !1528
  %29 = shl nuw nsw i32 %28, 8, !dbg !1552
  %30 = or i32 %29, -2097086444, !dbg !1552
  %31 = inttoptr i32 %30 to i32*, !dbg !1552
  %32 = load volatile i32, i32* %31, align 4, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %32, metadata !1527, metadata !DIExpression()), !dbg !1528
  %33 = or i32 %29, -2097086436, !dbg !1556
  %34 = inttoptr i32 %33 to i32*, !dbg !1556
  %35 = load volatile i32, i32* %34, align 4, !dbg !1556
  %36 = and i32 %35, 32768, !dbg !1558
  %37 = icmp eq i32 %36, 0, !dbg !1558
  br i1 %37, label %87, label %38, !dbg !1559

38:                                               ; preds = %27
  %39 = lshr i32 %32, 20, !dbg !1560
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
  ], !dbg !1562

40:                                               ; preds = %38
  %41 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1563
  %42 = icmp eq void ()* %41, null, !dbg !1566
  br i1 %42, label %84, label %82, !dbg !1567

43:                                               ; preds = %38
  %44 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1568
  %45 = icmp eq void ()* %44, null, !dbg !1570
  br i1 %45, label %84, label %82, !dbg !1571

46:                                               ; preds = %38
  %47 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1572
  %48 = icmp eq void ()* %47, null, !dbg !1574
  br i1 %48, label %84, label %82, !dbg !1575

49:                                               ; preds = %38
  %50 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1576
  %51 = icmp eq void ()* %50, null, !dbg !1578
  br i1 %51, label %84, label %82, !dbg !1579

52:                                               ; preds = %38
  %53 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1580
  %54 = icmp eq void ()* %53, null, !dbg !1582
  br i1 %54, label %84, label %82, !dbg !1583

55:                                               ; preds = %38
  %56 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1584
  %57 = icmp eq void ()* %56, null, !dbg !1586
  br i1 %57, label %84, label %82, !dbg !1587

58:                                               ; preds = %38
  %59 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1588
  %60 = icmp eq void ()* %59, null, !dbg !1590
  br i1 %60, label %84, label %82, !dbg !1591

61:                                               ; preds = %38
  %62 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1592
  %63 = icmp eq void ()* %62, null, !dbg !1594
  br i1 %63, label %84, label %82, !dbg !1595

64:                                               ; preds = %38
  %65 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1596
  %66 = icmp eq void ()* %65, null, !dbg !1598
  br i1 %66, label %84, label %82, !dbg !1599

67:                                               ; preds = %38
  %68 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1600
  %69 = icmp eq void ()* %68, null, !dbg !1602
  br i1 %69, label %84, label %82, !dbg !1603

70:                                               ; preds = %38
  %71 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1604
  %72 = icmp eq void ()* %71, null, !dbg !1606
  br i1 %72, label %84, label %82, !dbg !1607

73:                                               ; preds = %38
  %74 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1608
  %75 = icmp eq void ()* %74, null, !dbg !1610
  br i1 %75, label %84, label %82, !dbg !1611

76:                                               ; preds = %38
  %77 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1612
  %78 = icmp eq void ()* %77, null, !dbg !1614
  br i1 %78, label %84, label %82, !dbg !1615

79:                                               ; preds = %38
  %80 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1616
  %81 = icmp eq void ()* %80, null, !dbg !1618
  br i1 %81, label %84, label %82, !dbg !1619

82:                                               ; preds = %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40
  %83 = phi void ()* [ %41, %40 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ]
  tail call void %83() #16, !dbg !1620
  br label %84, !dbg !1621

84:                                               ; preds = %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %38
  %85 = or i32 %29, -2097086432, !dbg !1621
  %86 = inttoptr i32 %85 to i32*, !dbg !1621
  store volatile i32 32768, i32* %86, align 32, !dbg !1621
  br label %87, !dbg !1622

87:                                               ; preds = %27, %84
  %88 = add nuw nsw i32 %28, 1, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %88, metadata !1526, metadata !DIExpression()), !dbg !1528
  %89 = icmp eq i32 %88, 26, !dbg !1624
  br i1 %89, label %90, label %27, !dbg !1625, !llvm.loop !1626

90:                                               ; preds = %87, %150
  %91 = phi i32 [ %151, %150 ], [ 12, %87 ]
  call void @llvm.dbg.value(metadata i32 %91, metadata !1526, metadata !DIExpression()), !dbg !1528
  %92 = shl nuw nsw i32 %91, 8, !dbg !1628
  %93 = or i32 %92, -2097086444, !dbg !1628
  %94 = inttoptr i32 %93 to i32*, !dbg !1628
  %95 = load volatile i32, i32* %94, align 4, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %95, metadata !1527, metadata !DIExpression()), !dbg !1528
  %96 = or i32 %92, -2097086436, !dbg !1632
  %97 = inttoptr i32 %96 to i32*, !dbg !1632
  %98 = load volatile i32, i32* %97, align 4, !dbg !1632
  %99 = and i32 %98, 65536, !dbg !1634
  %100 = icmp eq i32 %99, 0, !dbg !1634
  br i1 %100, label %150, label %101, !dbg !1635

101:                                              ; preds = %90
  %102 = lshr i32 %95, 20, !dbg !1636
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
  ], !dbg !1638

103:                                              ; preds = %101
  %104 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 0), align 4, !dbg !1639
  %105 = icmp eq void ()* %104, null, !dbg !1642
  br i1 %105, label %147, label %145, !dbg !1643

106:                                              ; preds = %101
  %107 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 0), align 4, !dbg !1644
  %108 = icmp eq void ()* %107, null, !dbg !1646
  br i1 %108, label %147, label %145, !dbg !1647

109:                                              ; preds = %101
  %110 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 1), align 4, !dbg !1648
  %111 = icmp eq void ()* %110, null, !dbg !1650
  br i1 %111, label %147, label %145, !dbg !1651

112:                                              ; preds = %101
  %113 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 2), align 4, !dbg !1652
  %114 = icmp eq void ()* %113, null, !dbg !1654
  br i1 %114, label %147, label %145, !dbg !1655

115:                                              ; preds = %101
  %116 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 3), align 4, !dbg !1656
  %117 = icmp eq void ()* %116, null, !dbg !1658
  br i1 %117, label %147, label %145, !dbg !1659

118:                                              ; preds = %101
  %119 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 4), align 4, !dbg !1660
  %120 = icmp eq void ()* %119, null, !dbg !1662
  br i1 %120, label %147, label %145, !dbg !1663

121:                                              ; preds = %101
  %122 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 5), align 4, !dbg !1664
  %123 = icmp eq void ()* %122, null, !dbg !1666
  br i1 %123, label %147, label %145, !dbg !1667

124:                                              ; preds = %101
  %125 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 6), align 4, !dbg !1668
  %126 = icmp eq void ()* %125, null, !dbg !1670
  br i1 %126, label %147, label %145, !dbg !1671

127:                                              ; preds = %101
  %128 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 7), align 4, !dbg !1672
  %129 = icmp eq void ()* %128, null, !dbg !1674
  br i1 %129, label %147, label %145, !dbg !1675

130:                                              ; preds = %101
  %131 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 8), align 4, !dbg !1676
  %132 = icmp eq void ()* %131, null, !dbg !1678
  br i1 %132, label %147, label %145, !dbg !1679

133:                                              ; preds = %101
  %134 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 9), align 4, !dbg !1680
  %135 = icmp eq void ()* %134, null, !dbg !1682
  br i1 %135, label %147, label %145, !dbg !1683

136:                                              ; preds = %101
  %137 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 10), align 4, !dbg !1684
  %138 = icmp eq void ()* %137, null, !dbg !1686
  br i1 %138, label %147, label %145, !dbg !1687

139:                                              ; preds = %101
  %140 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 11), align 4, !dbg !1688
  %141 = icmp eq void ()* %140, null, !dbg !1690
  br i1 %141, label %147, label %145, !dbg !1691

142:                                              ; preds = %101
  %143 = load void ()*, void ()** getelementptr inbounds (<{ void ()*, [13 x void ()*] }>, <{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC, i32 0, i32 1, i32 12), align 4, !dbg !1692
  %144 = icmp eq void ()* %143, null, !dbg !1694
  br i1 %144, label %147, label %145, !dbg !1695

145:                                              ; preds = %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103
  %146 = phi void ()* [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ], [ %128, %127 ], [ %131, %130 ], [ %134, %133 ], [ %137, %136 ], [ %140, %139 ], [ %143, %142 ]
  tail call void %146() #16, !dbg !1696
  br label %147, !dbg !1697

147:                                              ; preds = %145, %142, %139, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109, %106, %103, %101
  %148 = or i32 %92, -2097086432, !dbg !1697
  %149 = inttoptr i32 %148 to i32*, !dbg !1697
  store volatile i32 65536, i32* %149, align 32, !dbg !1697
  br label %150, !dbg !1698

150:                                              ; preds = %90, %147
  %151 = add nuw nsw i32 %91, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %151, metadata !1526, metadata !DIExpression()), !dbg !1528
  %152 = icmp eq i32 %151, 26, !dbg !1700
  br i1 %152, label %153, label %90, !dbg !1701, !llvm.loop !1702

153:                                              ; preds = %150
  %154 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1704
  ret void, !dbg !1705
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Clock_Disable(i8 noundef zeroext %0) local_unnamed_addr #1 !dbg !1706 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1708, metadata !DIExpression()), !dbg !1709
  %2 = zext i8 %0 to i32, !dbg !1710
  %3 = add nsw i32 %2, -1, !dbg !1711
  %4 = shl nuw i32 1, %3, !dbg !1712
  store volatile i32 %4, i32* inttoptr (i32 -2097151980 to i32*), align 4, !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: noinline nounwind optsize
define dso_local void @DMA_Init() local_unnamed_addr #3 !dbg !1715 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1718
  %1 = load i32, i32* @DMA_Channel_Status, align 4
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1718
  br label %2, !dbg !1719

2:                                                ; preds = %0, %9
  %3 = phi i32 [ 0, %0 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1717, metadata !DIExpression()), !dbg !1718
  %4 = shl nuw i32 1, %3, !dbg !1721
  %5 = and i32 %1, %4, !dbg !1725
  %6 = icmp eq i32 %5, 0, !dbg !1726
  br i1 %6, label %9, label %7, !dbg !1727

7:                                                ; preds = %2
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %3, !dbg !1728
  store i32 26, i32* %8, align 4, !dbg !1730
  br label %9, !dbg !1731

9:                                                ; preds = %2, %7
  %10 = add nuw nsw i32 %3, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %10, metadata !1717, metadata !DIExpression()), !dbg !1718
  %11 = icmp eq i32 %10, 11, !dbg !1733
  br i1 %11, label %12, label %2, !dbg !1719, !llvm.loop !1734

12:                                               ; preds = %9, %12
  %13 = phi i8 [ %14, %12 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !1717, metadata !DIExpression()), !dbg !1718
  %14 = add nuw nsw i8 %13, 1, !dbg !1736
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %14) #14, !dbg !1740
  call void @llvm.dbg.value(metadata i8 %14, metadata !1717, metadata !DIExpression()), !dbg !1718
  %15 = icmp ult i8 %13, 10, !dbg !1741
  br i1 %15, label %12, label %16, !dbg !1742, !llvm.loop !1743

16:                                               ; preds = %12
  %17 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1745
  %18 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1746
  %19 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1747
  ret void, !dbg !1748
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_busy(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !1749 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1753, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 -1, metadata !1754, metadata !DIExpression()), !dbg !1757
  %2 = add i8 %0, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i8 %2, metadata !1756, metadata !DIExpression()), !dbg !1757
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1759, !srcloc !1118
  call void @llvm.dbg.value(metadata i32 %3, metadata !1115, metadata !DIExpression()) #15, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %3, metadata !1755, metadata !DIExpression()), !dbg !1757
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1763, !srcloc !1123
  %4 = zext i8 %2 to i32, !dbg !1765
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1765
  %6 = load i8, i8* %5, align 1, !dbg !1765, !range !1407
  %7 = icmp eq i8 %6, 0, !dbg !1767
  br i1 %7, label %8, label %12, !dbg !1768

8:                                                ; preds = %1
  store i8 1, i8* %5, align 1, !dbg !1769
  tail call void @DMA_Clock_Enable(i8 noundef zeroext %2) #14, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %3, metadata !1141, metadata !DIExpression()) #15, !dbg !1772
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1775, !srcloc !1150
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 1, void (i32)* noundef nonnull @DMA_LISR) #16, !dbg !1776
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 1, i32 noundef 5) #16, !dbg !1777
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 1) #16, !dbg !1778
  br label %12, !dbg !1779

12:                                               ; preds = %1, %8
  %13 = phi i8 [ %0, %8 ], [ -1, %1 ], !dbg !1757
  ret i8 %13, !dbg !1780
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @dma_set_channel_idle(i8 noundef returned zeroext %0) local_unnamed_addr #3 !dbg !1781 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1783, metadata !DIExpression()), !dbg !1786
  %2 = add i8 %0, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i8 %2, metadata !1785, metadata !DIExpression()), !dbg !1786
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1788
  %3 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !1789, !srcloc !1118
  call void @llvm.dbg.value(metadata i32 %3, metadata !1115, metadata !DIExpression()) #15, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %3, metadata !1784, metadata !DIExpression()), !dbg !1786
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !1793, !srcloc !1123
  %4 = zext i8 %2 to i32, !dbg !1795
  %5 = getelementptr inbounds [11 x i8], [11 x i8]* @DMA_used_channel, i32 0, i32 %4, !dbg !1795
  store i8 0, i8* %5, align 1, !dbg !1796
  %6 = shl nuw i32 1, %4, !dbg !1797
  %7 = load i32, i32* @DMA_Channel_Status, align 4, !dbg !1798
  %8 = or i32 %7, %6, !dbg !1798
  store i32 %8, i32* @DMA_Channel_Status, align 4, !dbg !1798
  %9 = add nsw i32 %4, -1, !dbg !1799
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* @DMA_Owner, i32 0, i32 %9, !dbg !1800
  store i32 26, i32* %10, align 4, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %3, metadata !1141, metadata !DIExpression()) #15, !dbg !1802
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %3) #15, !dbg !1805, !srcloc !1150
  ret i8 %0, !dbg !1806
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_init() local_unnamed_addr #1 !dbg !1807 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1809, metadata !DIExpression()), !dbg !1810
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 12) #14, !dbg !1811
  call void @llvm.dbg.value(metadata i32 6293010, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 6293010, i32* inttoptr (i32 -2097083372 to i32*), align 4, !dbg !1812
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 13) #14, !dbg !1813
  call void @llvm.dbg.value(metadata i32 7603730, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 7603730, i32* inttoptr (i32 -2097083116 to i32*), align 4, !dbg !1814
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 14) #14, !dbg !1815
  call void @llvm.dbg.value(metadata i32 8388624, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 8388624, i32* inttoptr (i32 -2097082860 to i32*), align 4, !dbg !1816
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 15) #14, !dbg !1817
  call void @llvm.dbg.value(metadata i32 9748496, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 9748496, i32* inttoptr (i32 -2097082604 to i32*), align 4, !dbg !1818
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 16) #14, !dbg !1819
  call void @llvm.dbg.value(metadata i32 10485776, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 10485776, i32* inttoptr (i32 -2097082348 to i32*), align 4, !dbg !1820
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 17) #14, !dbg !1821
  call void @llvm.dbg.value(metadata i32 11845648, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 11845648, i32* inttoptr (i32 -2097082092 to i32*), align 4, !dbg !1822
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 18) #14, !dbg !1823
  call void @llvm.dbg.value(metadata i32 12582928, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 12582928, i32* inttoptr (i32 -2097081836 to i32*), align 4, !dbg !1824
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 19) #14, !dbg !1825
  call void @llvm.dbg.value(metadata i32 13942800, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 13942800, i32* inttoptr (i32 -2097081580 to i32*), align 4, !dbg !1826
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 20) #14, !dbg !1827
  call void @llvm.dbg.value(metadata i32 16023568, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 16023568, i32* inttoptr (i32 -2097081324 to i32*), align 4, !dbg !1828
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 21) #14, !dbg !1829
  call void @llvm.dbg.value(metadata i32 17072144, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 17072144, i32* inttoptr (i32 -2097081068 to i32*), align 4, !dbg !1830
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 22) #14, !dbg !1831
  call void @llvm.dbg.value(metadata i32 18120720, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 18120720, i32* inttoptr (i32 -2097080812 to i32*), align 4, !dbg !1832
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 23) #14, !dbg !1833
  call void @llvm.dbg.value(metadata i32 19169296, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 19169296, i32* inttoptr (i32 -2097080556 to i32*), align 4, !dbg !1834
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 24) #14, !dbg !1835
  call void @llvm.dbg.value(metadata i32 20217872, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 20217872, i32* inttoptr (i32 -2097080300 to i32*), align 4, !dbg !1836
  tail call void @DMA_Clock_Enable(i8 noundef zeroext 25) #14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 21282834, metadata !1809, metadata !DIExpression()), !dbg !1810
  store volatile i32 21282834, i32* inttoptr (i32 -2097080044 to i32*), align 4, !dbg !1838
  ret void, !dbg !1839
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_SetAdrs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 !dbg !1840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1845, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %1, metadata !1846, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %2, metadata !1847, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %3, metadata !1848, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %4, metadata !1849, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i32 %5, metadata !1850, metadata !DIExpression()), !dbg !1851
  %7 = shl i32 %2, 8, !dbg !1852
  %8 = add i32 %7, -2097086420, !dbg !1852
  %9 = inttoptr i32 %8 to i32*, !dbg !1852
  store volatile i32 %0, i32* %9, align 4, !dbg !1852
  %10 = add i32 %7, -2097086396, !dbg !1853
  %11 = inttoptr i32 %10 to i32*, !dbg !1853
  store volatile i32 %1, i32* %11, align 4, !dbg !1853
  %12 = add i32 %7, -2097086400, !dbg !1854
  %13 = inttoptr i32 %12 to i32*, !dbg !1854
  store volatile i32 %3, i32* %13, align 64, !dbg !1854
  %14 = add i32 %7, -2097086448, !dbg !1855
  %15 = inttoptr i32 %14 to i32*, !dbg !1855
  store volatile i32 %4, i32* %15, align 16, !dbg !1856
  %16 = add i32 %7, -2097086384, !dbg !1857
  %17 = inttoptr i32 %16 to i32*, !dbg !1857
  store volatile i32 %5, i32* %17, align 16, !dbg !1858
  ret void, !dbg !1859
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !1860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %1, metadata !1865, metadata !DIExpression()), !dbg !1866
  %3 = shl i32 %0, 8, !dbg !1867
  %4 = add i32 %3, -2097086384, !dbg !1867
  %5 = inttoptr i32 %4 to i32*, !dbg !1867
  store volatile i32 %1, i32* %5, align 16, !dbg !1868
  ret void, !dbg !1869
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !1870 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1874, metadata !DIExpression()), !dbg !1875
  %2 = shl i32 %0, 8, !dbg !1876
  %3 = add i32 %2, -2097086444, !dbg !1876
  %4 = inttoptr i32 %3 to i32*, !dbg !1876
  %5 = load volatile i32, i32* %4, align 4, !dbg !1876
  %6 = or i32 %5, 32768, !dbg !1876
  store volatile i32 %6, i32* %4, align 4, !dbg !1876
  ret void, !dbg !1877
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef %0) local_unnamed_addr #1 !dbg !1878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1880, metadata !DIExpression()), !dbg !1881
  %2 = shl i32 %0, 8, !dbg !1882
  %3 = add i32 %2, -2097086444, !dbg !1882
  %4 = inttoptr i32 %3 to i32*, !dbg !1882
  %5 = load volatile i32, i32* %4, align 4, !dbg !1882
  %6 = and i32 %5, -32769, !dbg !1882
  store volatile i32 %6, i32* %4, align 4, !dbg !1882
  ret void, !dbg !1883
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @DMA_Vfifo_Flush(i32 noundef %0) local_unnamed_addr #1 !dbg !1884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1886, metadata !DIExpression()), !dbg !1887
  %2 = trunc i32 %0 to i8, !dbg !1888
  tail call void @DMA_Stop(i8 noundef zeroext %2) #14, !dbg !1889
  %3 = shl i32 %0, 8, !dbg !1890
  %4 = add i32 %3, -2097086440, !dbg !1890
  %5 = inttoptr i32 %4 to i32*, !dbg !1890
  store volatile i32 32768, i32* %5, align 8, !dbg !1890
  ret void, !dbg !1891
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !1892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1896, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1897, metadata !DIExpression()), !dbg !1898
  %3 = add i32 %0, -12, !dbg !1899
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !1900
  store void ()* %1, void ()** %4, align 4, !dbg !1901
  ret void, !dbg !1902
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #5 !dbg !1903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1905, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata void ()* %1, metadata !1906, metadata !DIExpression()), !dbg !1907
  %3 = add i32 %0, -12, !dbg !1908
  %4 = getelementptr inbounds [14 x void ()*], [14 x void ()*]* bitcast (<{ void ()*, [13 x void ()*] }>* @DMA_VFIFO_TO_LISR_FUNC to [14 x void ()*]*), i32 0, i32 %3, !dbg !1909
  store void ()* %1, void ()** %4, align 4, !dbg !1910
  ret void, !dbg !1911
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !1912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1917, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 %1, metadata !1918, metadata !DIExpression()), !dbg !1922
  %3 = lshr i32 %0, 5, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %3, metadata !1919, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1922
  %4 = trunc i32 %0 to i16, !dbg !1924
  %5 = and i16 %4, 31, !dbg !1924
  call void @llvm.dbg.value(metadata i16 %4, metadata !1921, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1922
  %6 = trunc i32 %3 to i16, !dbg !1925
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1925

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1926
  %9 = zext i16 %5 to i32, !dbg !1929
  %10 = icmp ult i16 %5, 27, !dbg !1929
  br i1 %8, label %11, label %46, !dbg !1930

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1931

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1933
  %14 = xor i32 %13, -1, !dbg !1936
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1937
  %16 = and i32 %15, %14, !dbg !1937
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1937
  br label %44, !dbg !1938

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1939
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1939

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1940
  %21 = and i32 %20, -3, !dbg !1940
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1940
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1943
  %23 = or i32 %22, 2048, !dbg !1943
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1943
  br label %44, !dbg !1944

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1945
  %26 = and i32 %25, -3, !dbg !1945
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1945
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1948
  %28 = or i32 %27, 2048, !dbg !1948
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1948
  br label %44, !dbg !1949

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1950
  %31 = and i32 %30, -3, !dbg !1950
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1950
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1953
  %33 = or i32 %32, 2048, !dbg !1953
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1953
  br label %44, !dbg !1954

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1955
  %36 = and i32 %35, -3, !dbg !1955
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1955
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1958
  %38 = or i32 %37, 2048, !dbg !1958
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1958
  br label %44, !dbg !1959

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1960
  %41 = and i32 %40, -3, !dbg !1960
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1960
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1963
  %43 = or i32 %42, 2048, !dbg !1963
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1963
  br label %44, !dbg !1964

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1965
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1965
  br label %97, !dbg !1966

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1967

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1969
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1972
  %50 = or i32 %49, %48, !dbg !1972
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1972
  br label %68, !dbg !1973

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1974
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1974

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1975
  %55 = or i32 %54, 2050, !dbg !1975
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1975
  br label %68, !dbg !1978

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1979
  %58 = or i32 %57, 2050, !dbg !1979
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1979
  br label %68, !dbg !1982

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1983
  %61 = or i32 %60, 2050, !dbg !1983
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1983
  br label %68, !dbg !1986

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1987
  %64 = or i32 %63, 2050, !dbg !1987
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1987
  br label %68, !dbg !1990

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1991
  %67 = or i32 %66, 2050, !dbg !1991
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1991
  br label %68, !dbg !1994

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1995
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1995
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1996
  %72 = zext i16 %5 to i32, !dbg !1998
  %73 = icmp eq i16 %5, 0, !dbg !1998
  br i1 %71, label %74, label %87, !dbg !1999

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !2000

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !2002
  %77 = xor i32 %76, -1, !dbg !2005
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2006
  %79 = and i32 %78, %77, !dbg !2006
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2006
  br label %85, !dbg !2007

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2008
  %82 = and i32 %81, -3, !dbg !2008
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2008
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2010
  %84 = or i32 %83, 2048, !dbg !2010
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2010
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !2011
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !2011
  br label %97, !dbg !2012

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !2013

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !2015
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2018
  %91 = or i32 %90, %89, !dbg !2018
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !2018
  br label %95, !dbg !2019

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2020
  %94 = or i32 %93, 2050, !dbg !2020
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2020
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !2022
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !2022
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1922
  ret i32 %98, !dbg !2023
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2026, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8 %1, metadata !2027, metadata !DIExpression()), !dbg !2030
  %3 = lshr i32 %0, 5, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %3, metadata !2028, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2030
  %4 = trunc i32 %0 to i16, !dbg !2032
  %5 = and i16 %4, 31, !dbg !2032
  call void @llvm.dbg.value(metadata i16 %5, metadata !2029, metadata !DIExpression()), !dbg !2030
  %6 = trunc i32 %3 to i16, !dbg !2033
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !2033

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !2034
  %9 = zext i16 %5 to i32, !dbg !2037
  %10 = shl nuw i32 1, %9, !dbg !2037
  br i1 %8, label %12, label %11, !dbg !2038

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !2039
  br label %19, !dbg !2041

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !2042
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !2044
  %15 = zext i16 %5 to i32, !dbg !2046
  %16 = shl nuw i32 1, %15, !dbg !2046
  br i1 %14, label %18, label %17, !dbg !2047

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !2048
  br label %19, !dbg !2050

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !2051
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !2030
  ret i32 %20, !dbg !2053
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #6 !dbg !2054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2058, metadata !DIExpression()), !dbg !2062
  %2 = lshr i32 %0, 5, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %2, metadata !2059, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2062
  %3 = and i32 %0, 31, !dbg !2064
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2062
  %4 = trunc i32 %2 to i16, !dbg !2065
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2065

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2061, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2062
  br label %6, !dbg !2066

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2068
  %9 = lshr i32 %8, %3, !dbg !2068
  %10 = trunc i32 %9 to i8, !dbg !2068
  %11 = and i8 %10, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i8 %11, metadata !2061, metadata !DIExpression()), !dbg !2062
  br label %12, !dbg !2069

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2062
  ret i8 %13, !dbg !2070
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #6 !dbg !2071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2073, metadata !DIExpression()), !dbg !2077
  %2 = lshr i32 %0, 5, !dbg !2078
  call void @llvm.dbg.value(metadata i32 %2, metadata !2074, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2077
  %3 = and i32 %0, 31, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %0, metadata !2075, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2077
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2077
  %4 = trunc i32 %2 to i16, !dbg !2080
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2080

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2076, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2077
  br label %6, !dbg !2081

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !2083
  %9 = lshr i32 %8, %3, !dbg !2083
  %10 = trunc i32 %9 to i8, !dbg !2083
  %11 = and i8 %10, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i8 %11, metadata !2076, metadata !DIExpression()), !dbg !2077
  br label %12, !dbg !2084

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2077
  ret i8 %13, !dbg !2085
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #6 !dbg !2086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2088, metadata !DIExpression()), !dbg !2092
  %2 = lshr i32 %0, 5, !dbg !2093
  call void @llvm.dbg.value(metadata i32 %2, metadata !2089, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2092
  %3 = and i32 %0, 31, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %0, metadata !2090, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2092
  %4 = trunc i32 %2 to i16, !dbg !2095
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !2095

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !2091, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2092
  br label %6, !dbg !2096

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !2098
  %9 = lshr i32 %8, %3, !dbg !2098
  %10 = trunc i32 %9 to i8, !dbg !2098
  %11 = and i8 %10, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i8 %11, metadata !2091, metadata !DIExpression()), !dbg !2092
  br label %12, !dbg !2099

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !2092
  ret i8 %13, !dbg !2100
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2105, metadata !DIExpression()), !dbg !2108
  %2 = lshr i32 %0, 5, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %2, metadata !2106, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2108
  %3 = trunc i32 %0 to i16, !dbg !2110
  %4 = and i16 %3, 31, !dbg !2110
  call void @llvm.dbg.value(metadata i16 %3, metadata !2107, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2108
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !2111
  %6 = trunc i32 %2 to i16, !dbg !2112
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2112

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2113
  br i1 %8, label %9, label %12, !dbg !2116

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2117
  %11 = shl nuw nsw i32 1, %10, !dbg !2118
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !2118
  br label %49, !dbg !2120

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2121
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2121

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2122
  %16 = and i32 %15, -29, !dbg !2122
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2122
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2125
  %18 = or i32 %17, 2052, !dbg !2125
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2125
  br label %49, !dbg !2126

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2127
  %21 = and i32 %20, -29, !dbg !2127
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2127
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2130
  %23 = or i32 %22, 2052, !dbg !2130
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2130
  br label %49, !dbg !2131

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2132
  %26 = and i32 %25, -29, !dbg !2132
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2132
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2135
  %28 = or i32 %27, 2052, !dbg !2135
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2135
  br label %49, !dbg !2136

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2137
  %31 = and i32 %30, -29, !dbg !2137
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2137
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2140
  %33 = or i32 %32, 2052, !dbg !2140
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2140
  br label %49, !dbg !2141

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2142
  %36 = and i32 %35, -29, !dbg !2142
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2142
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2145
  %38 = or i32 %37, 2052, !dbg !2145
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2145
  br label %49, !dbg !2146

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2147
  br i1 %40, label %41, label %46, !dbg !2149

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2150
  %43 = and i32 %42, -29, !dbg !2150
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2150
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2152
  %45 = or i32 %44, 2052, !dbg !2152
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2152
  br label %49, !dbg !2153

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2154
  %48 = shl nuw i32 1, %47, !dbg !2154
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !2154
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2108
  ret i32 %50, !dbg !2156
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2159, metadata !DIExpression()), !dbg !2162
  %2 = lshr i32 %0, 5, !dbg !2163
  call void @llvm.dbg.value(metadata i32 %2, metadata !2160, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2162
  %3 = trunc i32 %0 to i16, !dbg !2164
  %4 = and i16 %3, 31, !dbg !2164
  call void @llvm.dbg.value(metadata i16 %3, metadata !2161, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2162
  %5 = trunc i32 %2 to i16, !dbg !2165
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2165

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2166
  br i1 %7, label %8, label %11, !dbg !2169

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2170
  %10 = shl nuw nsw i32 1, %9, !dbg !2171
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !2171
  br label %48, !dbg !2173

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2174
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2174

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2175
  %15 = and i32 %14, -29, !dbg !2175
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2175
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2178
  %17 = or i32 %16, 2048, !dbg !2178
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2178
  br label %48, !dbg !2179

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2180
  %20 = and i32 %19, -29, !dbg !2180
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2180
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2183
  %22 = or i32 %21, 2048, !dbg !2183
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2183
  br label %48, !dbg !2184

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2185
  %25 = and i32 %24, -29, !dbg !2185
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2185
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2188
  %27 = or i32 %26, 2048, !dbg !2188
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2188
  br label %48, !dbg !2189

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2190
  %30 = and i32 %29, -29, !dbg !2190
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2190
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2193
  %32 = or i32 %31, 2048, !dbg !2193
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2193
  br label %48, !dbg !2194

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2195
  %35 = and i32 %34, -29, !dbg !2195
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2195
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2198
  %37 = or i32 %36, 2048, !dbg !2198
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2198
  br label %48, !dbg !2199

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2200
  br i1 %39, label %40, label %45, !dbg !2202

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2203
  %42 = and i32 %41, -29, !dbg !2203
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2203
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2205
  %44 = or i32 %43, 2048, !dbg !2205
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2205
  br label %48, !dbg !2206

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2207
  %47 = shl nuw i32 1, %46, !dbg !2207
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !2207
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2162
  ret i32 %49, !dbg !2209
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #1 !dbg !2210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2212, metadata !DIExpression()), !dbg !2215
  %2 = lshr i32 %0, 5, !dbg !2216
  call void @llvm.dbg.value(metadata i32 %2, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2215
  %3 = trunc i32 %0 to i16, !dbg !2217
  %4 = and i16 %3, 31, !dbg !2217
  call void @llvm.dbg.value(metadata i16 %3, metadata !2214, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2215
  %5 = trunc i32 %2 to i16, !dbg !2218
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !2218

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !2219
  br i1 %7, label %8, label %11, !dbg !2222

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !2223
  %10 = shl nuw nsw i32 1, %9, !dbg !2224
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !2224
  br label %48, !dbg !2226

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !2227
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !2227

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2228
  %15 = and i32 %14, -29, !dbg !2228
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2228
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2231
  %17 = or i32 %16, 2048, !dbg !2231
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2231
  br label %48, !dbg !2232

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2233
  %20 = and i32 %19, -29, !dbg !2233
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2233
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2236
  %22 = or i32 %21, 2048, !dbg !2236
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2236
  br label %48, !dbg !2237

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2238
  %25 = and i32 %24, -29, !dbg !2238
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2238
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2241
  %27 = or i32 %26, 2048, !dbg !2241
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2241
  br label %48, !dbg !2242

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2243
  %30 = and i32 %29, -29, !dbg !2243
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2243
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2246
  %32 = or i32 %31, 2048, !dbg !2246
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2246
  br label %48, !dbg !2247

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2248
  %35 = and i32 %34, -29, !dbg !2248
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2248
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2251
  %37 = or i32 %36, 2048, !dbg !2251
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2251
  br label %48, !dbg !2252

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !2253
  br i1 %39, label %40, label %45, !dbg !2255

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2256
  %42 = and i32 %41, -29, !dbg !2256
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2256
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2258
  %44 = or i32 %43, 2048, !dbg !2258
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2258
  br label %48, !dbg !2259

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !2260
  %47 = shl nuw i32 1, %46, !dbg !2260
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !2260
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !2215
  ret i32 %49, !dbg !2262
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #1 !dbg !2263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2265, metadata !DIExpression()), !dbg !2268
  %2 = lshr i32 %0, 5, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %2, metadata !2266, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2268
  %3 = trunc i32 %0 to i16, !dbg !2270
  %4 = and i16 %3, 31, !dbg !2270
  call void @llvm.dbg.value(metadata i16 %3, metadata !2267, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !2268
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !2271
  %6 = trunc i32 %2 to i16, !dbg !2272
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !2272

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !2273
  br i1 %8, label %9, label %12, !dbg !2276

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !2277
  %11 = shl nuw nsw i32 1, %10, !dbg !2278
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !2278
  br label %49, !dbg !2280

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !2281
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !2281

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2282
  %16 = and i32 %15, -29, !dbg !2282
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2282
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2285
  %18 = or i32 %17, 2068, !dbg !2285
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2285
  br label %49, !dbg !2286

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2287
  %21 = and i32 %20, -29, !dbg !2287
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2287
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2290
  %23 = or i32 %22, 2068, !dbg !2290
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2290
  br label %49, !dbg !2291

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2292
  %26 = and i32 %25, -29, !dbg !2292
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2292
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2295
  %28 = or i32 %27, 2068, !dbg !2295
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2295
  br label %49, !dbg !2296

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2297
  %31 = and i32 %30, -29, !dbg !2297
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2297
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2300
  %33 = or i32 %32, 2068, !dbg !2300
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2300
  br label %49, !dbg !2301

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2302
  %36 = and i32 %35, -29, !dbg !2302
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2302
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2305
  %38 = or i32 %37, 2068, !dbg !2305
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2305
  br label %49, !dbg !2306

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !2307
  br i1 %40, label %41, label %46, !dbg !2309

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2310
  %43 = and i32 %42, -29, !dbg !2310
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2310
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2312
  %45 = or i32 %44, 2068, !dbg !2312
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2312
  br label %49, !dbg !2313

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !2314
  %48 = shl nuw i32 1, %47, !dbg !2314
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !2314
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !2268
  ret i32 %50, !dbg !2316
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !2317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2319, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8 %1, metadata !2320, metadata !DIExpression()), !dbg !2323
  %3 = lshr i32 %0, 4, !dbg !2324
  call void @llvm.dbg.value(metadata i32 %3, metadata !2321, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2323
  %4 = trunc i32 %0 to i16, !dbg !2325
  %5 = and i16 %4, 15, !dbg !2325
  call void @llvm.dbg.value(metadata i16 %4, metadata !2322, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2323
  %6 = trunc i32 %3 to i16, !dbg !2326
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !2326

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !2327
  %9 = zext i16 %8 to i32, !dbg !2327
  %10 = shl nuw i32 3, %9, !dbg !2329
  %11 = xor i32 %10, -1, !dbg !2330
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2331
  %13 = and i32 %12, %11, !dbg !2331
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2331
  %14 = lshr i8 %1, 2, !dbg !2332
  %15 = zext i8 %14 to i32, !dbg !2332
  %16 = add nsw i32 %15, -1, !dbg !2333
  %17 = shl i32 %16, %9, !dbg !2334
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2335
  %19 = or i32 %18, %17, !dbg !2335
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2335
  br label %131, !dbg !2336

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !2337
  br i1 %21, label %22, label %35, !dbg !2339

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !2340
  %24 = zext i16 %23 to i32, !dbg !2340
  %25 = shl nuw nsw i32 3, %24, !dbg !2342
  %26 = xor i32 %25, -1, !dbg !2343
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2344
  %28 = and i32 %27, %26, !dbg !2344
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2344
  %29 = lshr i8 %1, 2, !dbg !2345
  %30 = zext i8 %29 to i32, !dbg !2345
  %31 = add nsw i32 %30, -1, !dbg !2346
  %32 = shl nsw i32 %31, %24, !dbg !2347
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2348
  %34 = or i32 %33, %32, !dbg !2348
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2348
  br label %131, !dbg !2349

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !2350
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !2350

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2351
  %39 = and i32 %38, -449, !dbg !2351
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2351
  %40 = lshr i8 %1, 1, !dbg !2354
  %41 = zext i8 %40 to i32, !dbg !2354
  %42 = shl nuw nsw i32 %41, 6, !dbg !2355
  %43 = add nsw i32 %42, -64, !dbg !2355
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2356
  %45 = or i32 %44, %43, !dbg !2356
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2356
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2357
  %47 = or i32 %46, 2048, !dbg !2357
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2357
  br label %131, !dbg !2358

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2359
  %50 = and i32 %49, -449, !dbg !2359
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2359
  %51 = lshr i8 %1, 1, !dbg !2362
  %52 = zext i8 %51 to i32, !dbg !2362
  %53 = shl nuw nsw i32 %52, 6, !dbg !2363
  %54 = add nsw i32 %53, -64, !dbg !2363
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2364
  %56 = or i32 %55, %54, !dbg !2364
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2364
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2365
  %58 = or i32 %57, 2048, !dbg !2365
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2365
  br label %131, !dbg !2366

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2367
  %61 = and i32 %60, -449, !dbg !2367
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2367
  %62 = lshr i8 %1, 1, !dbg !2370
  %63 = zext i8 %62 to i32, !dbg !2370
  %64 = shl nuw nsw i32 %63, 6, !dbg !2371
  %65 = add nsw i32 %64, -64, !dbg !2371
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2372
  %67 = or i32 %66, %65, !dbg !2372
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2372
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2373
  %69 = or i32 %68, 2048, !dbg !2373
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2373
  br label %131, !dbg !2374

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2375
  %72 = and i32 %71, -449, !dbg !2375
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2375
  %73 = lshr i8 %1, 1, !dbg !2378
  %74 = zext i8 %73 to i32, !dbg !2378
  %75 = shl nuw nsw i32 %74, 6, !dbg !2379
  %76 = add nsw i32 %75, -64, !dbg !2379
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2380
  %78 = or i32 %77, %76, !dbg !2380
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2380
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2381
  %80 = or i32 %79, 2048, !dbg !2381
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2381
  br label %131, !dbg !2382

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2383
  %83 = and i32 %82, -449, !dbg !2383
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2383
  %84 = lshr i8 %1, 1, !dbg !2386
  %85 = zext i8 %84 to i32, !dbg !2386
  %86 = shl nuw nsw i32 %85, 6, !dbg !2387
  %87 = add nsw i32 %86, -64, !dbg !2387
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2388
  %89 = or i32 %88, %87, !dbg !2388
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2388
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2389
  %91 = or i32 %90, 2048, !dbg !2389
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2389
  br label %131, !dbg !2390

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !2391
  br i1 %93, label %94, label %105, !dbg !2393

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2394
  %96 = and i32 %95, -449, !dbg !2394
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2394
  %97 = lshr i8 %1, 1, !dbg !2396
  %98 = zext i8 %97 to i32, !dbg !2396
  %99 = shl nuw nsw i32 %98, 6, !dbg !2397
  %100 = add nsw i32 %99, -64, !dbg !2397
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2398
  %102 = or i32 %101, %100, !dbg !2398
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2398
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2399
  %104 = or i32 %103, 2048, !dbg !2399
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2399
  br label %131, !dbg !2400

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !2401
  %107 = zext i16 %106 to i32, !dbg !2401
  %108 = shl nuw i32 3, %107, !dbg !2403
  %109 = xor i32 %108, -1, !dbg !2404
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2405
  %111 = and i32 %110, %109, !dbg !2405
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2405
  %112 = lshr i8 %1, 2, !dbg !2406
  %113 = zext i8 %112 to i32, !dbg !2406
  %114 = add nsw i32 %113, -1, !dbg !2407
  %115 = shl i32 %114, %107, !dbg !2408
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2409
  %117 = or i32 %116, %115, !dbg !2409
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2409
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !2410
  %120 = zext i16 %119 to i32, !dbg !2410
  %121 = shl nuw i32 3, %120, !dbg !2411
  %122 = xor i32 %121, -1, !dbg !2412
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2413
  %124 = and i32 %123, %122, !dbg !2413
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2413
  %125 = lshr i8 %1, 2, !dbg !2414
  %126 = zext i8 %125 to i32, !dbg !2414
  %127 = add nsw i32 %126, -1, !dbg !2415
  %128 = shl i32 %127, %120, !dbg !2416
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2417
  %130 = or i32 %129, %128, !dbg !2417
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2417
  br label %131, !dbg !2418

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !2323
  ret i32 %132, !dbg !2419
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #6 !dbg !2420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()), !dbg !2430
  %3 = lshr i32 %0, 4, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %3, metadata !2427, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2430
  %4 = trunc i32 %0 to i16, !dbg !2432
  %5 = and i16 %4, 15, !dbg !2432
  call void @llvm.dbg.value(metadata i16 %4, metadata !2428, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %6 = trunc i32 %3 to i16, !dbg !2433
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !2433

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %8, metadata !2429, metadata !DIExpression()), !dbg !2430
  %9 = shl nuw nsw i16 %5, 1, !dbg !2436
  %10 = zext i16 %9 to i32, !dbg !2436
  %11 = shl nuw i32 3, %10, !dbg !2437
  %12 = and i32 %8, %11, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %12, metadata !2429, metadata !DIExpression()), !dbg !2430
  %13 = lshr i32 %12, %10, !dbg !2439
  %14 = trunc i32 %13 to i8, !dbg !2440
  %15 = shl i8 %14, 2, !dbg !2440
  %16 = add i8 %15, 4, !dbg !2440
  br label %89, !dbg !2441

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !2442
  br i1 %18, label %19, label %29, !dbg !2444

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %20, metadata !2429, metadata !DIExpression()), !dbg !2430
  %21 = shl nuw nsw i16 %5, 1, !dbg !2447
  %22 = zext i16 %21 to i32, !dbg !2447
  %23 = shl nuw nsw i32 3, %22, !dbg !2448
  %24 = and i32 %20, %23, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %24, metadata !2429, metadata !DIExpression()), !dbg !2430
  %25 = lshr i32 %24, %22, !dbg !2450
  %26 = trunc i32 %25 to i8, !dbg !2451
  %27 = shl i8 %26, 2, !dbg !2451
  %28 = add i8 %27, 4, !dbg !2451
  br label %89, !dbg !2452

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !2453
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !2453

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %32, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %32, metadata !2429, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %33 = lshr i32 %32, 5, !dbg !2457
  %34 = trunc i32 %33 to i8, !dbg !2458
  %35 = and i8 %34, 14, !dbg !2458
  %36 = add nuw nsw i8 %35, 2, !dbg !2458
  br label %89, !dbg !2459

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %38, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %38, metadata !2429, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %39 = lshr i32 %38, 5, !dbg !2463
  %40 = trunc i32 %39 to i8, !dbg !2464
  %41 = and i8 %40, 14, !dbg !2464
  %42 = add nuw nsw i8 %41, 2, !dbg !2464
  br label %89, !dbg !2465

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %44, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %44, metadata !2429, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %45 = lshr i32 %44, 5, !dbg !2469
  %46 = trunc i32 %45 to i8, !dbg !2470
  %47 = and i8 %46, 14, !dbg !2470
  %48 = add nuw nsw i8 %47, 2, !dbg !2470
  br label %89, !dbg !2471

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %50, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %50, metadata !2429, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %51 = lshr i32 %50, 5, !dbg !2475
  %52 = trunc i32 %51 to i8, !dbg !2476
  %53 = and i8 %52, 14, !dbg !2476
  %54 = add nuw nsw i8 %53, 2, !dbg !2476
  br label %89, !dbg !2477

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %56, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %56, metadata !2429, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %57 = lshr i32 %56, 5, !dbg !2481
  %58 = trunc i32 %57 to i8, !dbg !2482
  %59 = and i8 %58, 14, !dbg !2482
  %60 = add nuw nsw i8 %59, 2, !dbg !2482
  br label %89, !dbg !2483

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !2484
  br i1 %62, label %63, label %69, !dbg !2486

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %64, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %64, metadata !2429, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !2430
  %65 = lshr i32 %64, 5, !dbg !2489
  %66 = trunc i32 %65 to i8, !dbg !2490
  %67 = and i8 %66, 14, !dbg !2490
  %68 = add nuw nsw i8 %67, 2, !dbg !2490
  br label %89, !dbg !2491

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %70, metadata !2429, metadata !DIExpression()), !dbg !2430
  %71 = shl nuw nsw i16 %5, 1, !dbg !2494
  %72 = zext i16 %71 to i32, !dbg !2494
  %73 = shl nuw i32 3, %72, !dbg !2495
  %74 = and i32 %70, %73, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %74, metadata !2429, metadata !DIExpression()), !dbg !2430
  %75 = lshr i32 %74, %72, !dbg !2497
  %76 = trunc i32 %75 to i8, !dbg !2498
  %77 = shl i8 %76, 2, !dbg !2498
  %78 = add i8 %77, 4, !dbg !2498
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %80, metadata !2429, metadata !DIExpression()), !dbg !2430
  %81 = shl nuw nsw i16 %5, 1, !dbg !2500
  %82 = zext i16 %81 to i32, !dbg !2500
  %83 = shl nuw i32 3, %82, !dbg !2501
  %84 = and i32 %80, %83, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %84, metadata !2429, metadata !DIExpression()), !dbg !2430
  %85 = lshr i32 %84, %82, !dbg !2503
  %86 = trunc i32 %85 to i8, !dbg !2504
  %87 = shl i8 %86, 2, !dbg !2504
  %88 = add i8 %87, 4, !dbg !2504
  br label %89, !dbg !2505

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !2506
  br label %91, !dbg !2507

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !2430
  ret i32 %92, !dbg !2507
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !2508 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2513, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2514, metadata !DIExpression()), !dbg !2517
  %3 = lshr i32 %0, 5, !dbg !2518
  call void @llvm.dbg.value(metadata i32 %3, metadata !2515, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2517
  %4 = trunc i32 %0 to i16, !dbg !2519
  %5 = and i16 %4, 31, !dbg !2519
  call void @llvm.dbg.value(metadata i16 %5, metadata !2516, metadata !DIExpression()), !dbg !2517
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !2520

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !2515, metadata !DIExpression()), !dbg !2517
  %7 = trunc i32 %3 to i16, !dbg !2521
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !2521

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !2524
  %10 = shl nuw i32 1, %9, !dbg !2526
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2527
  %12 = or i32 %11, %10, !dbg !2527
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2527
  br label %32, !dbg !2528

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !2529
  %15 = shl nuw i32 1, %14, !dbg !2530
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2531
  %17 = or i32 %16, %15, !dbg !2531
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2531
  br label %32, !dbg !2532

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !2533
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !2533

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !2536
  %22 = shl nuw i32 1, %21, !dbg !2538
  %23 = xor i32 %22, -1, !dbg !2539
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2540
  %25 = and i32 %24, %23, !dbg !2540
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !2540
  br label %32, !dbg !2541

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !2542
  %28 = shl nuw i32 1, %27, !dbg !2543
  %29 = xor i32 %28, -1, !dbg !2544
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2545
  %31 = and i32 %30, %29, !dbg !2545
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !2545
  br label %32, !dbg !2546

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !2547
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 %1, metadata !2555, metadata !DIExpression()), !dbg !2557
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
  ], !dbg !2558

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %4, metadata !2556, metadata !DIExpression()), !dbg !2557
  %5 = and i32 %4, -16, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %5, metadata !2556, metadata !DIExpression()), !dbg !2557
  %6 = zext i8 %1 to i32, !dbg !2562
  %7 = or i32 %5, %6, !dbg !2563
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2564
  br label %187, !dbg !2565

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %9, metadata !2556, metadata !DIExpression()), !dbg !2557
  %10 = and i32 %9, -241, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %10, metadata !2556, metadata !DIExpression()), !dbg !2557
  %11 = zext i8 %1 to i32, !dbg !2568
  %12 = shl nuw nsw i32 %11, 4, !dbg !2569
  %13 = or i32 %10, %12, !dbg !2570
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2571
  br label %187, !dbg !2572

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %15, metadata !2556, metadata !DIExpression()), !dbg !2557
  %16 = and i32 %15, -3841, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %16, metadata !2556, metadata !DIExpression()), !dbg !2557
  %17 = zext i8 %1 to i32, !dbg !2575
  %18 = shl nuw nsw i32 %17, 8, !dbg !2576
  %19 = or i32 %16, %18, !dbg !2577
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2578
  br label %187, !dbg !2579

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %21, metadata !2556, metadata !DIExpression()), !dbg !2557
  %22 = and i32 %21, -61441, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %22, metadata !2556, metadata !DIExpression()), !dbg !2557
  %23 = zext i8 %1 to i32, !dbg !2582
  %24 = shl nuw nsw i32 %23, 12, !dbg !2583
  %25 = or i32 %22, %24, !dbg !2584
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2585
  br label %187, !dbg !2586

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %27, metadata !2556, metadata !DIExpression()), !dbg !2557
  %28 = and i32 %27, -983041, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %28, metadata !2556, metadata !DIExpression()), !dbg !2557
  %29 = zext i8 %1 to i32, !dbg !2589
  %30 = shl nuw nsw i32 %29, 16, !dbg !2590
  %31 = or i32 %28, %30, !dbg !2591
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2592
  br label %187, !dbg !2593

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %33, metadata !2556, metadata !DIExpression()), !dbg !2557
  %34 = and i32 %33, -15728641, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %34, metadata !2556, metadata !DIExpression()), !dbg !2557
  %35 = zext i8 %1 to i32, !dbg !2596
  %36 = shl nuw nsw i32 %35, 20, !dbg !2597
  %37 = or i32 %34, %36, !dbg !2598
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2599
  br label %187, !dbg !2600

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %39, metadata !2556, metadata !DIExpression()), !dbg !2557
  %40 = and i32 %39, -251658241, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %40, metadata !2556, metadata !DIExpression()), !dbg !2557
  %41 = zext i8 %1 to i32, !dbg !2603
  %42 = shl nuw i32 %41, 24, !dbg !2604
  %43 = or i32 %40, %42, !dbg !2605
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2606
  br label %187, !dbg !2607

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %45, metadata !2556, metadata !DIExpression()), !dbg !2557
  %46 = and i32 %45, 268435455, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %46, metadata !2556, metadata !DIExpression()), !dbg !2557
  %47 = zext i8 %1 to i32, !dbg !2610
  %48 = shl i32 %47, 28, !dbg !2611
  %49 = or i32 %46, %48, !dbg !2612
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2613
  br label %187, !dbg !2614

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %51, metadata !2556, metadata !DIExpression()), !dbg !2557
  %52 = and i32 %51, -16, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %52, metadata !2556, metadata !DIExpression()), !dbg !2557
  %53 = zext i8 %1 to i32, !dbg !2617
  %54 = or i32 %52, %53, !dbg !2618
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2619
  br label %187, !dbg !2620

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2621
  call void @llvm.dbg.value(metadata i32 %56, metadata !2556, metadata !DIExpression()), !dbg !2557
  %57 = and i32 %56, -241, !dbg !2622
  call void @llvm.dbg.value(metadata i32 %57, metadata !2556, metadata !DIExpression()), !dbg !2557
  %58 = zext i8 %1 to i32, !dbg !2623
  %59 = shl nuw nsw i32 %58, 4, !dbg !2624
  %60 = or i32 %57, %59, !dbg !2625
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2626
  br label %187, !dbg !2627

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %62, metadata !2556, metadata !DIExpression()), !dbg !2557
  %63 = and i32 %62, -3841, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %63, metadata !2556, metadata !DIExpression()), !dbg !2557
  %64 = zext i8 %1 to i32, !dbg !2630
  %65 = shl nuw nsw i32 %64, 8, !dbg !2631
  %66 = or i32 %63, %65, !dbg !2632
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2633
  br label %187, !dbg !2634

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %68, metadata !2556, metadata !DIExpression()), !dbg !2557
  %69 = and i32 %68, -61441, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %69, metadata !2556, metadata !DIExpression()), !dbg !2557
  %70 = zext i8 %1 to i32, !dbg !2637
  %71 = shl nuw nsw i32 %70, 12, !dbg !2638
  %72 = or i32 %69, %71, !dbg !2639
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2640
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2641

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !2643
  br label %187, !dbg !2645

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %76, metadata !2556, metadata !DIExpression()), !dbg !2557
  %77 = and i32 %76, -983041, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %77, metadata !2556, metadata !DIExpression()), !dbg !2557
  %78 = zext i8 %1 to i32, !dbg !2648
  %79 = shl nuw nsw i32 %78, 16, !dbg !2649
  %80 = or i32 %77, %79, !dbg !2650
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2651
  %81 = and i8 %1, -2, !dbg !2652
  %82 = icmp eq i8 %81, 4, !dbg !2652
  br i1 %82, label %83, label %187, !dbg !2652

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !2654
  br label %187, !dbg !2656

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %86, metadata !2556, metadata !DIExpression()), !dbg !2557
  %87 = and i32 %86, -15728641, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %87, metadata !2556, metadata !DIExpression()), !dbg !2557
  %88 = zext i8 %1 to i32, !dbg !2659
  %89 = shl nuw nsw i32 %88, 20, !dbg !2660
  %90 = or i32 %87, %89, !dbg !2661
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2662
  %91 = icmp eq i8 %1, 6, !dbg !2663
  br i1 %91, label %92, label %187, !dbg !2665

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !2666
  br label %187, !dbg !2668

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %95, metadata !2556, metadata !DIExpression()), !dbg !2557
  %96 = and i32 %95, -251658241, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %96, metadata !2556, metadata !DIExpression()), !dbg !2557
  %97 = zext i8 %1 to i32, !dbg !2671
  %98 = shl nuw i32 %97, 24, !dbg !2672
  %99 = or i32 %96, %98, !dbg !2673
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2674
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2675

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !2677
  br label %187, !dbg !2679

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %103, metadata !2556, metadata !DIExpression()), !dbg !2557
  %104 = and i32 %103, 268435455, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %104, metadata !2556, metadata !DIExpression()), !dbg !2557
  %105 = zext i8 %1 to i32, !dbg !2682
  %106 = shl i32 %105, 28, !dbg !2683
  %107 = or i32 %104, %106, !dbg !2684
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2685
  %108 = and i8 %1, -3, !dbg !2686
  %109 = icmp eq i8 %108, 4, !dbg !2686
  br i1 %109, label %110, label %187, !dbg !2686

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !2688
  br label %187, !dbg !2690

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2691
  call void @llvm.dbg.value(metadata i32 %113, metadata !2556, metadata !DIExpression()), !dbg !2557
  %114 = and i32 %113, -16, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %114, metadata !2556, metadata !DIExpression()), !dbg !2557
  %115 = zext i8 %1 to i32, !dbg !2693
  %116 = or i32 %114, %115, !dbg !2694
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2695
  %117 = and i8 %1, -3, !dbg !2696
  %118 = icmp eq i8 %117, 4, !dbg !2696
  br i1 %118, label %119, label %187, !dbg !2696

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !2698
  br label %187, !dbg !2700

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2701
  call void @llvm.dbg.value(metadata i32 %122, metadata !2556, metadata !DIExpression()), !dbg !2557
  %123 = and i32 %122, -241, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %123, metadata !2556, metadata !DIExpression()), !dbg !2557
  %124 = zext i8 %1 to i32, !dbg !2703
  %125 = shl nuw nsw i32 %124, 4, !dbg !2704
  %126 = or i32 %123, %125, !dbg !2705
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2706
  br label %187, !dbg !2707

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %128, metadata !2556, metadata !DIExpression()), !dbg !2557
  %129 = and i32 %128, -3841, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %129, metadata !2556, metadata !DIExpression()), !dbg !2557
  %130 = zext i8 %1 to i32, !dbg !2710
  %131 = shl nuw nsw i32 %130, 8, !dbg !2711
  %132 = or i32 %129, %131, !dbg !2712
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2713
  br label %187, !dbg !2714

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %134, metadata !2556, metadata !DIExpression()), !dbg !2557
  %135 = and i32 %134, -61441, !dbg !2716
  call void @llvm.dbg.value(metadata i32 %135, metadata !2556, metadata !DIExpression()), !dbg !2557
  %136 = zext i8 %1 to i32, !dbg !2717
  %137 = shl nuw nsw i32 %136, 12, !dbg !2718
  %138 = or i32 %135, %137, !dbg !2719
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2720
  br label %187, !dbg !2721

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %140, metadata !2556, metadata !DIExpression()), !dbg !2557
  %141 = and i32 %140, -983041, !dbg !2723
  call void @llvm.dbg.value(metadata i32 %141, metadata !2556, metadata !DIExpression()), !dbg !2557
  %142 = zext i8 %1 to i32, !dbg !2724
  %143 = shl nuw nsw i32 %142, 16, !dbg !2725
  %144 = or i32 %141, %143, !dbg !2726
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2727
  br label %187, !dbg !2728

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %146, metadata !2556, metadata !DIExpression()), !dbg !2557
  %147 = and i32 %146, -15728641, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %147, metadata !2556, metadata !DIExpression()), !dbg !2557
  %148 = zext i8 %1 to i32, !dbg !2731
  %149 = shl nuw nsw i32 %148, 20, !dbg !2732
  %150 = or i32 %147, %149, !dbg !2733
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2734
  br label %187, !dbg !2735

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %152, metadata !2556, metadata !DIExpression()), !dbg !2557
  %153 = and i32 %152, -251658241, !dbg !2737
  call void @llvm.dbg.value(metadata i32 %153, metadata !2556, metadata !DIExpression()), !dbg !2557
  %154 = zext i8 %1 to i32, !dbg !2738
  %155 = shl nuw i32 %154, 24, !dbg !2739
  %156 = or i32 %153, %155, !dbg !2740
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2741
  br label %187, !dbg !2742

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %158, metadata !2556, metadata !DIExpression()), !dbg !2557
  %159 = and i32 %158, 268435455, !dbg !2744
  call void @llvm.dbg.value(metadata i32 %159, metadata !2556, metadata !DIExpression()), !dbg !2557
  %160 = zext i8 %1 to i32, !dbg !2745
  %161 = shl i32 %160, 28, !dbg !2746
  %162 = or i32 %159, %161, !dbg !2747
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2748
  br label %187, !dbg !2749

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2750
  call void @llvm.dbg.value(metadata i32 %164, metadata !2556, metadata !DIExpression()), !dbg !2557
  %165 = and i32 %164, -241, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %165, metadata !2556, metadata !DIExpression()), !dbg !2557
  %166 = zext i8 %1 to i32, !dbg !2752
  %167 = shl nuw nsw i32 %166, 4, !dbg !2753
  %168 = or i32 %165, %167, !dbg !2754
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2755
  br label %187, !dbg !2756

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2757
  call void @llvm.dbg.value(metadata i32 %170, metadata !2556, metadata !DIExpression()), !dbg !2557
  %171 = and i32 %170, -3841, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %171, metadata !2556, metadata !DIExpression()), !dbg !2557
  %172 = zext i8 %1 to i32, !dbg !2759
  %173 = shl nuw nsw i32 %172, 8, !dbg !2760
  %174 = or i32 %171, %173, !dbg !2761
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2762
  br label %187, !dbg !2763

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %176, metadata !2556, metadata !DIExpression()), !dbg !2557
  %177 = and i32 %176, -61441, !dbg !2765
  call void @llvm.dbg.value(metadata i32 %177, metadata !2556, metadata !DIExpression()), !dbg !2557
  %178 = zext i8 %1 to i32, !dbg !2766
  %179 = shl nuw nsw i32 %178, 12, !dbg !2767
  %180 = or i32 %177, %179, !dbg !2768
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2769
  br label %187, !dbg !2770

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2771
  call void @llvm.dbg.value(metadata i32 %182, metadata !2556, metadata !DIExpression()), !dbg !2557
  %183 = and i32 %182, -983041, !dbg !2772
  call void @llvm.dbg.value(metadata i32 %183, metadata !2556, metadata !DIExpression()), !dbg !2557
  %184 = zext i8 %1 to i32, !dbg !2773
  %185 = shl nuw nsw i32 %184, 16, !dbg !2774
  %186 = or i32 %183, %185, !dbg !2775
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2776
  br label %187, !dbg !2777

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2778
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2779 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2781, metadata !DIExpression()), !dbg !2782
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2783
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2784, !srcloc !2785
  tail call void asm sideeffect "isb", ""() #15, !dbg !2786, !srcloc !2787
  ret void, !dbg !2788
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #1 !dbg !2789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2793, metadata !DIExpression()), !dbg !2794
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2795
  ret void, !dbg !2796
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2797 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2800, !srcloc !2806
  call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression()) #15, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()), !dbg !2808
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2809, !srcloc !2812
  ret i32 %1, !dbg !2813
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression()) #15, !dbg !2821
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2824, !srcloc !2825
  ret void, !dbg !2826
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i32 %1, metadata !2832, metadata !DIExpression()), !dbg !2834
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
  ], !dbg !2835

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2833, metadata !DIExpression()), !dbg !2834
  %4 = trunc i32 %1 to i8, !dbg !2836
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !2837
  br label %5, !dbg !2838

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2834
  ret i32 %6, !dbg !2839
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2840 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2842, metadata !DIExpression()), !dbg !2844
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2845
  call void @llvm.dbg.value(metadata i32 %1, metadata !2843, metadata !DIExpression()), !dbg !2844
  %2 = lshr i32 %1, 13, !dbg !2846
  %3 = and i32 %2, 7, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %3, metadata !2843, metadata !DIExpression()), !dbg !2844
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %4, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %4, metadata !2842, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2844
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2849
  %6 = load i32, i32* %5, align 4, !dbg !2849
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2849
  %8 = load i32, i32* %7, align 4, !dbg !2849
  %9 = and i32 %4, -2048, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %9, metadata !2842, metadata !DIExpression()), !dbg !2844
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2851
  %10 = or i32 %9, %8, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %10, metadata !2842, metadata !DIExpression()), !dbg !2844
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2853
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2854
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2855
  tail call void @SystemCoreClockUpdate() #16, !dbg !2856
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2857
  %13 = udiv i32 %12, 1000, !dbg !2858
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !2859
  ret void, !dbg !2860
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #7 !dbg !2861 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2862
  ret i32 %1, !dbg !2863
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #7 !dbg !2864 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2865
  ret i32 %1, !dbg !2866
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #8 !dbg !2867 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2871
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2871
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2869, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2870, metadata !DIExpression()), !dbg !2873
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2874
  store volatile i32 %3, i32* %1, align 4, !dbg !2875
  %4 = load volatile i32, i32* %1, align 4, !dbg !2876
  %5 = lshr i32 %4, 28, !dbg !2877
  %6 = and i32 %5, 3, !dbg !2878
  store volatile i32 %6, i32* %1, align 4, !dbg !2879
  %7 = load volatile i32, i32* %1, align 4, !dbg !2880
  %8 = icmp eq i32 %7, 0, !dbg !2882
  br i1 %8, label %9, label %22, !dbg !2883

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2884
  store volatile i32 %10, i32* %1, align 4, !dbg !2886
  %11 = load volatile i32, i32* %1, align 4, !dbg !2887
  %12 = and i32 %11, -16777217, !dbg !2888
  store volatile i32 %12, i32* %1, align 4, !dbg !2889
  %13 = load volatile i32, i32* %1, align 4, !dbg !2890
  %14 = or i32 %13, 536870912, !dbg !2891
  store volatile i32 %14, i32* %1, align 4, !dbg !2892
  %15 = load volatile i32, i32* %1, align 4, !dbg !2893
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2894
  br label %16, !dbg !2895

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2896
  store volatile i32 %17, i32* %1, align 4, !dbg !2898
  %18 = load volatile i32, i32* %1, align 4, !dbg !2899
  %19 = and i32 %18, 134217728, !dbg !2900
  store volatile i32 %19, i32* %1, align 4, !dbg !2901
  %20 = load volatile i32, i32* %1, align 4, !dbg !2902
  %21 = icmp eq i32 %20, 0, !dbg !2903
  br i1 %21, label %16, label %22, !dbg !2904, !llvm.loop !2905

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2907
  ret void, !dbg !2907
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #6 !dbg !2908 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2916
  %2 = bitcast i8* %0 to i32*, !dbg !2917
  %3 = load volatile i32, i32* %2, align 4, !dbg !2918
  ret i32 %3, !dbg !2919
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !2920 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 %1, metadata !2925, metadata !DIExpression()), !dbg !2926
  %3 = bitcast i8* %0 to i32*, !dbg !2927
  store volatile i32 %1, i32* %3, align 4, !dbg !2928
  ret void, !dbg !2929
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #9

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #8 !dbg !2930 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2932, metadata !DIExpression()), !dbg !2935
  %3 = bitcast i32* %2 to i8*, !dbg !2936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2936
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2934, metadata !DIExpression()), !dbg !2935
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2938
  store volatile i32 %4, i32* %2, align 4, !dbg !2939
  %5 = load volatile i32, i32* %2, align 4, !dbg !2940
  %6 = lshr i32 %5, 28, !dbg !2941
  %7 = and i32 %6, 3, !dbg !2942
  store volatile i32 %7, i32* %2, align 4, !dbg !2943
  %8 = load volatile i32, i32* %2, align 4, !dbg !2944
  %9 = icmp eq i32 %8, 3, !dbg !2946
  br i1 %9, label %38, label %10, !dbg !2947

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2948
  store volatile i32 %11, i32* %2, align 4, !dbg !2950
  %12 = load volatile i32, i32* %2, align 4, !dbg !2951
  %13 = and i32 %12, -262145, !dbg !2952
  store volatile i32 %13, i32* %2, align 4, !dbg !2953
  %14 = load volatile i32, i32* %2, align 4, !dbg !2954
  %15 = and i32 %14, -16777217, !dbg !2955
  store volatile i32 %15, i32* %2, align 4, !dbg !2956
  %16 = load volatile i32, i32* %2, align 4, !dbg !2957
  store volatile i32 %16, i32* %2, align 4, !dbg !2958
  %17 = load volatile i32, i32* %2, align 4, !dbg !2959
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2960
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2961
  store volatile i32 %18, i32* %2, align 4, !dbg !2962
  %19 = load volatile i32, i32* %2, align 4, !dbg !2963
  %20 = and i32 %19, -805306369, !dbg !2964
  store volatile i32 %20, i32* %2, align 4, !dbg !2965
  %21 = load volatile i32, i32* %2, align 4, !dbg !2966
  %22 = and i32 %21, -16777217, !dbg !2967
  store volatile i32 %22, i32* %2, align 4, !dbg !2968
  %23 = load volatile i32, i32* %2, align 4, !dbg !2969
  %24 = or i32 %23, 805306368, !dbg !2970
  store volatile i32 %24, i32* %2, align 4, !dbg !2971
  %25 = load volatile i32, i32* %2, align 4, !dbg !2972
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2973
  br label %26, !dbg !2974

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2975
  store volatile i32 %27, i32* %2, align 4, !dbg !2977
  %28 = load volatile i32, i32* %2, align 4, !dbg !2978
  %29 = and i32 %28, 67108864, !dbg !2979
  store volatile i32 %29, i32* %2, align 4, !dbg !2980
  %30 = load volatile i32, i32* %2, align 4, !dbg !2981
  %31 = icmp eq i32 %30, 0, !dbg !2982
  br i1 %31, label %26, label %32, !dbg !2983, !llvm.loop !2984

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2986
  store volatile i32 %33, i32* %2, align 4, !dbg !2987
  %34 = load volatile i32, i32* %2, align 4, !dbg !2988
  %35 = and i32 %34, -262145, !dbg !2989
  store volatile i32 %35, i32* %2, align 4, !dbg !2990
  %36 = load volatile i32, i32* %2, align 4, !dbg !2991
  %37 = and i32 %36, -16777217, !dbg !2992
  store volatile i32 %37, i32* %2, align 4, !dbg !2993
  br label %38, !dbg !2994

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2995
  store volatile i32 %39, i32* %2, align 4, !dbg !2996
  %40 = icmp eq i8 %0, 0, !dbg !2997
  %41 = load volatile i32, i32* %2, align 4, !dbg !2999
  br i1 %40, label %44, label %42, !dbg !3000

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3001
  store volatile i32 %43, i32* %2, align 4, !dbg !3003
  br label %45, !dbg !3004

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3005
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3007
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !3008
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3009
  ret void, !dbg !3009
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #8 !dbg !3010 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3014
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3014
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3012, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3013, metadata !DIExpression()), !dbg !3016
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3017
  store volatile i32 %3, i32* %1, align 4, !dbg !3018
  %4 = load volatile i32, i32* %1, align 4, !dbg !3019
  %5 = and i32 %4, -805306369, !dbg !3020
  store volatile i32 %5, i32* %1, align 4, !dbg !3021
  %6 = load volatile i32, i32* %1, align 4, !dbg !3022
  %7 = and i32 %6, -16777217, !dbg !3023
  store volatile i32 %7, i32* %1, align 4, !dbg !3024
  %8 = load volatile i32, i32* %1, align 4, !dbg !3025
  store volatile i32 %8, i32* %1, align 4, !dbg !3026
  %9 = load volatile i32, i32* %1, align 4, !dbg !3027
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !3028
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !3029
  store volatile i32 %10, i32* %1, align 4, !dbg !3030
  %11 = load volatile i32, i32* %1, align 4, !dbg !3031
  %12 = and i32 %11, -262145, !dbg !3032
  store volatile i32 %12, i32* %1, align 4, !dbg !3033
  %13 = load volatile i32, i32* %1, align 4, !dbg !3034
  %14 = and i32 %13, -16777217, !dbg !3035
  store volatile i32 %14, i32* %1, align 4, !dbg !3036
  %15 = load volatile i32, i32* %1, align 4, !dbg !3037
  store volatile i32 %15, i32* %1, align 4, !dbg !3038
  %16 = load volatile i32, i32* %1, align 4, !dbg !3039
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !3040
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3041
  ret void, !dbg !3041
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !3042 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3046
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3046
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3045, metadata !DIExpression()), !dbg !3048
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3049
  store volatile i32 %3, i32* %1, align 4, !dbg !3050
  %4 = load volatile i32, i32* %1, align 4, !dbg !3051
  %5 = and i32 %4, -8, !dbg !3052
  store volatile i32 %5, i32* %1, align 4, !dbg !3053
  %6 = load volatile i32, i32* %1, align 4, !dbg !3054
  store volatile i32 %6, i32* %1, align 4, !dbg !3055
  %7 = load volatile i32, i32* %1, align 4, !dbg !3056
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3057
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3058
  store volatile i32 %8, i32* %1, align 4, !dbg !3059
  %9 = load volatile i32, i32* %1, align 4, !dbg !3060
  %10 = and i32 %9, -49153, !dbg !3061
  store volatile i32 %10, i32* %1, align 4, !dbg !3062
  %11 = load volatile i32, i32* %1, align 4, !dbg !3063
  store volatile i32 %11, i32* %1, align 4, !dbg !3064
  %12 = load volatile i32, i32* %1, align 4, !dbg !3065
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !3066
  br label %13, !dbg !3067

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3068
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3069
  %16 = icmp eq i32 %14, %15, !dbg !3070
  br i1 %16, label %17, label %13, !dbg !3067, !llvm.loop !3071

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !3073
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3074
  tail call void @SystemCoreClockUpdate() #16, !dbg !3075
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3076
  %20 = udiv i32 %19, 1000, !dbg !3077
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3078
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3079
  ret void, !dbg !3079
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !3080 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3084
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3082, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3083, metadata !DIExpression()), !dbg !3086
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !3087
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3088
  store volatile i32 %3, i32* %1, align 4, !dbg !3089
  %4 = load volatile i32, i32* %1, align 4, !dbg !3090
  %5 = and i32 %4, -49153, !dbg !3091
  store volatile i32 %5, i32* %1, align 4, !dbg !3092
  %6 = load volatile i32, i32* %1, align 4, !dbg !3093
  %7 = or i32 %6, 16384, !dbg !3094
  store volatile i32 %7, i32* %1, align 4, !dbg !3095
  %8 = load volatile i32, i32* %1, align 4, !dbg !3096
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3097
  br label %9, !dbg !3098

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3099
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3100
  %12 = icmp eq i32 %10, %11, !dbg !3101
  br i1 %12, label %13, label %9, !dbg !3098, !llvm.loop !3102

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3104
  store volatile i32 %14, i32* %1, align 4, !dbg !3105
  %15 = load volatile i32, i32* %1, align 4, !dbg !3106
  %16 = and i32 %15, -1009, !dbg !3107
  store volatile i32 %16, i32* %1, align 4, !dbg !3108
  %17 = load volatile i32, i32* %1, align 4, !dbg !3109
  %18 = or i32 %17, 128, !dbg !3110
  store volatile i32 %18, i32* %1, align 4, !dbg !3111
  %19 = load volatile i32, i32* %1, align 4, !dbg !3112
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3113
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3114
  store volatile i32 %20, i32* %1, align 4, !dbg !3115
  %21 = load volatile i32, i32* %1, align 4, !dbg !3116
  %22 = and i32 %21, -8, !dbg !3117
  store volatile i32 %22, i32* %1, align 4, !dbg !3118
  %23 = load volatile i32, i32* %1, align 4, !dbg !3119
  %24 = or i32 %23, 4, !dbg !3120
  store volatile i32 %24, i32* %1, align 4, !dbg !3121
  %25 = load volatile i32, i32* %1, align 4, !dbg !3122
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3123
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3124
  tail call void @SystemCoreClockUpdate() #16, !dbg !3125
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3126
  %27 = udiv i32 %26, 1000, !dbg !3127
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3129
  ret void, !dbg !3129
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !3130 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3134
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3132, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3133, metadata !DIExpression()), !dbg !3136
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !3137
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3138
  store volatile i32 %3, i32* %1, align 4, !dbg !3139
  %4 = load volatile i32, i32* %1, align 4, !dbg !3140
  %5 = and i32 %4, -49153, !dbg !3141
  store volatile i32 %5, i32* %1, align 4, !dbg !3142
  %6 = load volatile i32, i32* %1, align 4, !dbg !3143
  %7 = or i32 %6, 32768, !dbg !3144
  store volatile i32 %7, i32* %1, align 4, !dbg !3145
  %8 = load volatile i32, i32* %1, align 4, !dbg !3146
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !3147
  br label %9, !dbg !3148

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3149
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3150
  %12 = icmp eq i32 %10, %11, !dbg !3151
  br i1 %12, label %13, label %9, !dbg !3148, !llvm.loop !3152

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3154
  store volatile i32 %14, i32* %1, align 4, !dbg !3155
  %15 = load volatile i32, i32* %1, align 4, !dbg !3156
  %16 = and i32 %15, -1009, !dbg !3157
  store volatile i32 %16, i32* %1, align 4, !dbg !3158
  %17 = load volatile i32, i32* %1, align 4, !dbg !3159
  %18 = or i32 %17, 32, !dbg !3160
  store volatile i32 %18, i32* %1, align 4, !dbg !3161
  %19 = load volatile i32, i32* %1, align 4, !dbg !3162
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !3163
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3164
  store volatile i32 %20, i32* %1, align 4, !dbg !3165
  %21 = load volatile i32, i32* %1, align 4, !dbg !3166
  %22 = and i32 %21, -8, !dbg !3167
  store volatile i32 %22, i32* %1, align 4, !dbg !3168
  %23 = load volatile i32, i32* %1, align 4, !dbg !3169
  %24 = or i32 %23, 4, !dbg !3170
  store volatile i32 %24, i32* %1, align 4, !dbg !3171
  %25 = load volatile i32, i32* %1, align 4, !dbg !3172
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !3173
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3174
  tail call void @SystemCoreClockUpdate() #16, !dbg !3175
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3176
  %27 = udiv i32 %26, 1000, !dbg !3177
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3179
  ret void, !dbg !3179
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !3180 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3184
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3182, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3183, metadata !DIExpression()), !dbg !3186
  tail call void @cmnPLL1ON() #14, !dbg !3187
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3188
  store volatile i32 %3, i32* %1, align 4, !dbg !3189
  %4 = load volatile i32, i32* %1, align 4, !dbg !3190
  %5 = and i32 %4, -49153, !dbg !3191
  store volatile i32 %5, i32* %1, align 4, !dbg !3192
  %6 = load volatile i32, i32* %1, align 4, !dbg !3193
  store volatile i32 %6, i32* %1, align 4, !dbg !3194
  %7 = load volatile i32, i32* %1, align 4, !dbg !3195
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !3196
  br label %8, !dbg !3197

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3198
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3199
  %11 = icmp eq i32 %9, %10, !dbg !3200
  br i1 %11, label %12, label %8, !dbg !3197, !llvm.loop !3201

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !3203
  store volatile i32 %13, i32* %1, align 4, !dbg !3204
  %14 = load volatile i32, i32* %1, align 4, !dbg !3205
  %15 = and i32 %14, -8, !dbg !3206
  store volatile i32 %15, i32* %1, align 4, !dbg !3207
  %16 = load volatile i32, i32* %1, align 4, !dbg !3208
  %17 = or i32 %16, 2, !dbg !3209
  store volatile i32 %17, i32* %1, align 4, !dbg !3210
  %18 = load volatile i32, i32* %1, align 4, !dbg !3211
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !3212
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3213
  tail call void @SystemCoreClockUpdate() #16, !dbg !3214
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3215
  %20 = udiv i32 %19, 1000, !dbg !3216
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !3217
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3218
  ret void, !dbg !3218
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #8 section ".ramTEXT" !dbg !3219 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3223
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3221, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3222, metadata !DIExpression()), !dbg !3225
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3226
  store volatile i32 %3, i32* %1, align 4, !dbg !3227
  %4 = load volatile i32, i32* %1, align 4, !dbg !3228
  %5 = and i32 %4, -24577, !dbg !3229
  store volatile i32 %5, i32* %1, align 4, !dbg !3230
  %6 = load volatile i32, i32* %1, align 4, !dbg !3231
  store volatile i32 %6, i32* %1, align 4, !dbg !3232
  %7 = load volatile i32, i32* %1, align 4, !dbg !3233
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3235
  ret void, !dbg !3235
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #6 !dbg !3236 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3241
  call void @llvm.dbg.value(metadata i32 %1, metadata !3240, metadata !DIExpression()), !dbg !3242
  ret i32 %1, !dbg !3243
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #6 !dbg !3244 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3247
  %2 = and i32 %1, 1, !dbg !3249
  %3 = icmp eq i32 %2, 0, !dbg !3249
  br i1 %3, label %7, label %4, !dbg !3250

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3251
  %6 = and i32 %5, 255, !dbg !3253
  call void @llvm.dbg.value(metadata i32 %5, metadata !3246, metadata !DIExpression()), !dbg !3254
  br label %7, !dbg !3255

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3256
  ret i32 %8, !dbg !3257
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 !dbg !3258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 %1, metadata !3264, metadata !DIExpression()), !dbg !3266
  %3 = icmp eq i32 %0, 0, !dbg !3267
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %4, metadata !3265, metadata !DIExpression()), !dbg !3266
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3268

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3269
  %9 = and i32 %8, 32, !dbg !3270
  %10 = icmp eq i32 %9, 0, !dbg !3271
  br i1 %10, label %7, label %11, !dbg !3268, !llvm.loop !3272

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3274
  %13 = inttoptr i32 %4 to i32*, !dbg !3275
  store volatile i32 %12, i32* %13, align 65536, !dbg !3276
  ret void, !dbg !3277
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #1 !dbg !3278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()), !dbg !3285
  %2 = icmp eq i32 %0, 0, !dbg !3286
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3286
  call void @llvm.dbg.value(metadata i32 %3, metadata !3283, metadata !DIExpression()), !dbg !3285
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3287

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3288
  %8 = and i32 %7, 1, !dbg !3289
  %9 = icmp eq i32 %8, 0, !dbg !3290
  br i1 %9, label %6, label %10, !dbg !3287, !llvm.loop !3291

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3293
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3293
  %13 = trunc i32 %12 to i8, !dbg !3293
  call void @llvm.dbg.value(metadata i8 %13, metadata !3284, metadata !DIExpression()), !dbg !3285
  ret i8 %13, !dbg !3294
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #6 !dbg !3295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3299, metadata !DIExpression()), !dbg !3302
  %2 = icmp eq i32 %0, 0, !dbg !3303
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %3, metadata !3300, metadata !DIExpression()), !dbg !3302
  %4 = or i32 %3, 20, !dbg !3304
  %5 = inttoptr i32 %4 to i32*, !dbg !3304
  %6 = load volatile i32, i32* %5, align 4, !dbg !3304
  %7 = and i32 %6, 1, !dbg !3306
  %8 = icmp eq i32 %7, 0, !dbg !3306
  br i1 %8, label %13, label %9, !dbg !3307

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3308
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3308
  %12 = and i32 %11, 255, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %11, metadata !3301, metadata !DIExpression()), !dbg !3302
  br label %13, !dbg !3311

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3312
  ret i32 %14, !dbg !3313
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3318, metadata !DIExpression()), !dbg !3319
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3320
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3321

2:                                                ; preds = %1
  br label %3, !dbg !3322

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3326
  %6 = or i32 %5, 1, !dbg !3326
  store volatile i32 %6, i32* %4, align 4, !dbg !3326
  br label %7, !dbg !3327

7:                                                ; preds = %3, %1
  ret void, !dbg !3327
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 %1, metadata !3335, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i16 %2, metadata !3336, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i16 %3, metadata !3337, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i16 %4, metadata !3338, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3340, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3347, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3349, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i32 0, metadata !3350, metadata !DIExpression()), !dbg !3351
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !3354
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3355
  %7 = icmp eq i32 %0, 1, !dbg !3356
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3356
  call void @llvm.dbg.value(metadata i32 %8, metadata !3340, metadata !DIExpression()), !dbg !3351
  %9 = or i32 %8, 36, !dbg !3357
  %10 = inttoptr i32 %9 to i32*, !dbg !3357
  store volatile i32 3, i32* %10, align 4, !dbg !3358
  %11 = or i32 %8, 12, !dbg !3359
  %12 = inttoptr i32 %11 to i32*, !dbg !3359
  %13 = load volatile i32, i32* %12, align 4, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %13, metadata !3342, metadata !DIExpression()), !dbg !3351
  %14 = or i32 %13, 128, !dbg !3360
  store volatile i32 %14, i32* %12, align 4, !dbg !3361
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3362
  %16 = udiv i32 %15, %1, !dbg !3363
  call void @llvm.dbg.value(metadata i32 %16, metadata !3341, metadata !DIExpression()), !dbg !3351
  %17 = lshr i32 %16, 8, !dbg !3364
  %18 = add nuw nsw i32 %17, 1, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %18, metadata !3343, metadata !DIExpression()), !dbg !3351
  %19 = udiv i32 %16, %18, !dbg !3366
  %20 = add i32 %19, -1, !dbg !3368
  call void @llvm.dbg.value(metadata i32 %20, metadata !3344, metadata !DIExpression()), !dbg !3351
  %21 = icmp eq i32 %20, 3, !dbg !3369
  %22 = lshr i32 %20, 1, !dbg !3371
  %23 = add nsw i32 %22, -1, !dbg !3371
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3371
  call void @llvm.dbg.value(metadata i32 %24, metadata !3345, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i32 undef, metadata !3350, metadata !DIExpression()), !dbg !3351
  %25 = mul i32 %15, 10, !dbg !3372
  %26 = udiv i32 %25, %1, !dbg !3373
  %27 = udiv i32 %26, %16, !dbg !3374
  %28 = mul i32 %19, -10, !dbg !3375
  %29 = add i32 %27, %28, !dbg !3376
  %30 = urem i32 %29, 10, !dbg !3377
  call void @llvm.dbg.value(metadata i32 %30, metadata !3346, metadata !DIExpression()), !dbg !3351
  %31 = and i32 %18, 255, !dbg !3378
  %32 = inttoptr i32 %8 to i32*, !dbg !3379
  store volatile i32 %31, i32* %32, align 65536, !dbg !3380
  %33 = lshr i32 %18, 8, !dbg !3381
  %34 = and i32 %33, 255, !dbg !3382
  %35 = or i32 %8, 4, !dbg !3383
  %36 = inttoptr i32 %35 to i32*, !dbg !3383
  store volatile i32 %34, i32* %36, align 4, !dbg !3384
  %37 = or i32 %8, 40, !dbg !3385
  %38 = inttoptr i32 %37 to i32*, !dbg !3385
  store volatile i32 %20, i32* %38, align 8, !dbg !3386
  %39 = or i32 %8, 44, !dbg !3387
  %40 = inttoptr i32 %39 to i32*, !dbg !3387
  store volatile i32 %24, i32* %40, align 4, !dbg !3388
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3389
  %42 = load i16, i16* %41, align 2, !dbg !3389
  %43 = zext i16 %42 to i32, !dbg !3389
  %44 = or i32 %8, 88, !dbg !3390
  %45 = inttoptr i32 %44 to i32*, !dbg !3390
  store volatile i32 %43, i32* %45, align 8, !dbg !3391
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3392
  %47 = load i16, i16* %46, align 2, !dbg !3392
  %48 = zext i16 %47 to i32, !dbg !3392
  %49 = or i32 %8, 84, !dbg !3393
  %50 = inttoptr i32 %49 to i32*, !dbg !3393
  store volatile i32 %48, i32* %50, align 4, !dbg !3394
  store volatile i32 %13, i32* %12, align 4, !dbg !3395
  %51 = or i32 %8, 8, !dbg !3396
  %52 = inttoptr i32 %51 to i32*, !dbg !3396
  store volatile i32 71, i32* %52, align 8, !dbg !3397
  %53 = inttoptr i32 %11 to i16*, !dbg !3398
  %54 = load volatile i16, i16* %53, align 4, !dbg !3398
  call void @llvm.dbg.value(metadata i16 %54, metadata !3339, metadata !DIExpression()), !dbg !3351
  %55 = and i16 %54, -64, !dbg !3399
  call void @llvm.dbg.value(metadata i16 %54, metadata !3339, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3351
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3351
  %56 = and i16 %2, -61, !dbg !3400
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3351
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3339, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3351
  %57 = and i16 %4, -57, !dbg !3401
  call void @llvm.dbg.value(metadata i16 undef, metadata !3339, metadata !DIExpression()), !dbg !3351
  %58 = or i16 %56, %3, !dbg !3400
  %59 = or i16 %58, %57, !dbg !3401
  %60 = or i16 %59, %55, !dbg !3402
  call void @llvm.dbg.value(metadata i16 %60, metadata !3339, metadata !DIExpression()), !dbg !3351
  store volatile i16 %60, i16* %53, align 4, !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #6 !dbg !3405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3410, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i32 %1, metadata !3411, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i32* %2, metadata !3412, metadata !DIExpression()), !dbg !3413
  %4 = icmp eq i32 %0, 0, !dbg !3414
  %5 = icmp eq i32 %1, 0, !dbg !3416
  br i1 %4, label %6, label %16, !dbg !3417

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3418

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3420
  %9 = zext i16 %8 to i32, !dbg !3420
  br label %26, !dbg !3423

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3424
  %12 = zext i16 %11 to i32, !dbg !3424
  store i32 %12, i32* %2, align 4, !dbg !3426
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3427
  %14 = zext i16 %13 to i32, !dbg !3427
  %15 = sub nsw i32 %12, %14, !dbg !3428
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3429

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3431
  %19 = zext i16 %18 to i32, !dbg !3431
  br label %26, !dbg !3434

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3435
  %22 = zext i16 %21 to i32, !dbg !3435
  store i32 %22, i32* %2, align 4, !dbg !3437
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3438
  %24 = zext i16 %23 to i32, !dbg !3438
  %25 = sub nsw i32 %22, %24, !dbg !3439
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3416
  ret void, !dbg !3440
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3445, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i8* %1, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 %2, metadata !3447, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  %4 = icmp eq i32 %2, 0, !dbg !3450
  br i1 %4, label %15, label %5, !dbg !3453

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3448, metadata !DIExpression()), !dbg !3449
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3454

7:                                                ; preds = %5
  br label %8, !dbg !3456

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3460
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3460
  store i8 %10, i8* %11, align 1, !dbg !3460
  br label %12, !dbg !3461

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %13, metadata !3448, metadata !DIExpression()), !dbg !3449
  %14 = icmp eq i32 %13, %2, !dbg !3450
  br i1 %14, label %15, label %5, !dbg !3453, !llvm.loop !3462

15:                                               ; preds = %12, %3
  ret void, !dbg !3464
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 !dbg !3465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3469, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i8* %1, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 %2, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()), !dbg !3473
  %4 = icmp eq i32 %2, 0, !dbg !3474
  br i1 %4, label %16, label %5, !dbg !3477

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3472, metadata !DIExpression()), !dbg !3473
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3478

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3480
  %9 = load i8, i8* %8, align 1, !dbg !3480
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3483
  br label %13, !dbg !3484

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3485
  %12 = load i8, i8* %11, align 1, !dbg !3485
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3488
  br label %13, !dbg !3489

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %14, metadata !3472, metadata !DIExpression()), !dbg !3473
  %15 = icmp eq i32 %14, %2, !dbg !3474
  br i1 %15, label %16, label %5, !dbg !3477, !llvm.loop !3491

16:                                               ; preds = %13, %3
  ret void, !dbg !3493
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3498, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %2, metadata !3500, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %3, metadata !3501, metadata !DIExpression()), !dbg !3502
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3503

5:                                                ; preds = %4
  br label %6, !dbg !3504

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3508
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !3508
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !3508
  br label %9, !dbg !3509

9:                                                ; preds = %6, %4
  ret void, !dbg !3509
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3510 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3514, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %2, metadata !3516, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %3, metadata !3517, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %4, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %5, metadata !3519, metadata !DIExpression()), !dbg !3520
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3521

7:                                                ; preds = %6
  br label %8, !dbg !3522

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3526
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !3526
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !3526
  br label %11, !dbg !3527

11:                                               ; preds = %8, %6
  ret void, !dbg !3527
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3528 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3533, metadata !DIExpression()), !dbg !3534
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3535

3:                                                ; preds = %2
  br label %4, !dbg !3536

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3540
  br label %6, !dbg !3541

6:                                                ; preds = %4, %2
  ret void, !dbg !3541
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3542 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3544, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3545, metadata !DIExpression()), !dbg !3546
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3547

3:                                                ; preds = %2
  br label %4, !dbg !3548

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !3552
  br label %6, !dbg !3553

6:                                                ; preds = %4, %2
  ret void, !dbg !3553
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !3554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3556, metadata !DIExpression()), !dbg !3560
  %2 = icmp eq i32 %0, 0, !dbg !3561
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3561
  call void @llvm.dbg.value(metadata i32 %3, metadata !3557, metadata !DIExpression()), !dbg !3560
  %4 = or i32 %3, 12, !dbg !3562
  %5 = inttoptr i32 %4 to i32*, !dbg !3562
  %6 = load volatile i32, i32* %5, align 4, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %6, metadata !3559, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3560
  store volatile i32 191, i32* %5, align 4, !dbg !3563
  %7 = or i32 %3, 8, !dbg !3564
  %8 = inttoptr i32 %7 to i32*, !dbg !3564
  %9 = load volatile i32, i32* %8, align 8, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %9, metadata !3558, metadata !DIExpression()), !dbg !3560
  %10 = and i32 %9, 65327, !dbg !3565
  %11 = or i32 %10, 208, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %9, metadata !3558, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3560
  store volatile i32 %11, i32* %8, align 8, !dbg !3566
  %12 = or i32 %3, 68, !dbg !3567
  %13 = inttoptr i32 %12 to i32*, !dbg !3567
  store volatile i32 0, i32* %13, align 4, !dbg !3568
  store volatile i32 0, i32* %5, align 4, !dbg !3569
  %14 = or i32 %3, 16, !dbg !3570
  %15 = inttoptr i32 %14 to i32*, !dbg !3570
  store volatile i32 2, i32* %15, align 16, !dbg !3571
  %16 = and i32 %6, 65535, !dbg !3572
  store volatile i32 %16, i32* %5, align 4, !dbg !3573
  ret void, !dbg !3574
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #1 !dbg !3575 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3579, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8 %1, metadata !3580, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8 %2, metadata !3581, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8 %3, metadata !3582, metadata !DIExpression()), !dbg !3586
  %5 = icmp eq i32 %0, 0, !dbg !3587
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3587
  call void @llvm.dbg.value(metadata i32 %6, metadata !3583, metadata !DIExpression()), !dbg !3586
  %7 = or i32 %6, 12, !dbg !3588
  %8 = inttoptr i32 %7 to i32*, !dbg !3588
  %9 = load volatile i32, i32* %8, align 4, !dbg !3588
  call void @llvm.dbg.value(metadata i32 %9, metadata !3585, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3586
  store volatile i32 191, i32* %8, align 4, !dbg !3589
  %10 = zext i8 %1 to i32, !dbg !3590
  %11 = or i32 %6, 16, !dbg !3591
  %12 = inttoptr i32 %11 to i32*, !dbg !3591
  store volatile i32 %10, i32* %12, align 16, !dbg !3592
  %13 = or i32 %6, 20, !dbg !3593
  %14 = inttoptr i32 %13 to i32*, !dbg !3593
  store volatile i32 %10, i32* %14, align 4, !dbg !3594
  %15 = zext i8 %2 to i32, !dbg !3595
  %16 = or i32 %6, 24, !dbg !3596
  %17 = inttoptr i32 %16 to i32*, !dbg !3596
  store volatile i32 %15, i32* %17, align 8, !dbg !3597
  %18 = or i32 %6, 28, !dbg !3598
  %19 = inttoptr i32 %18 to i32*, !dbg !3598
  store volatile i32 %15, i32* %19, align 4, !dbg !3599
  %20 = or i32 %6, 8, !dbg !3600
  %21 = inttoptr i32 %20 to i32*, !dbg !3600
  %22 = load volatile i32, i32* %21, align 8, !dbg !3600
  call void @llvm.dbg.value(metadata i32 %22, metadata !3584, metadata !DIExpression()), !dbg !3586
  %23 = and i32 %22, 65525, !dbg !3601
  %24 = or i32 %23, 10, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %22, metadata !3584, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3586
  store volatile i32 %24, i32* %21, align 8, !dbg !3602
  %25 = and i32 %9, 65535, !dbg !3603
  store volatile i32 %25, i32* %8, align 4, !dbg !3604
  %26 = zext i8 %3 to i32, !dbg !3605
  %27 = or i32 %6, 64, !dbg !3606
  %28 = inttoptr i32 %27 to i32*, !dbg !3606
  store volatile i32 %26, i32* %28, align 64, !dbg !3607
  %29 = or i32 %6, 68, !dbg !3608
  %30 = inttoptr i32 %29 to i32*, !dbg !3608
  store volatile i32 1, i32* %30, align 4, !dbg !3609
  ret void, !dbg !3610
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #1 !dbg !3611 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3613, metadata !DIExpression()), !dbg !3616
  %2 = icmp eq i32 %0, 0, !dbg !3617
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %3, metadata !3614, metadata !DIExpression()), !dbg !3616
  %4 = or i32 %3, 12, !dbg !3618
  %5 = inttoptr i32 %4 to i32*, !dbg !3618
  %6 = load volatile i32, i32* %5, align 4, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %6, metadata !3615, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3616
  store volatile i32 191, i32* %5, align 4, !dbg !3619
  %7 = or i32 %3, 8, !dbg !3620
  %8 = inttoptr i32 %7 to i32*, !dbg !3620
  store volatile i32 0, i32* %8, align 8, !dbg !3621
  store volatile i32 0, i32* %5, align 4, !dbg !3622
  %9 = and i32 %6, 65535, !dbg !3623
  store volatile i32 %9, i32* %5, align 4, !dbg !3624
  ret void, !dbg !3625
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #1 !dbg !3626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  %2 = icmp eq i32 %0, 0, !dbg !3631
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %3, metadata !3629, metadata !DIExpression()), !dbg !3630
  %4 = or i32 %3, 12, !dbg !3632
  %5 = inttoptr i32 %4 to i32*, !dbg !3632
  store volatile i32 191, i32* %5, align 4, !dbg !3633
  %6 = or i32 %3, 8, !dbg !3634
  %7 = inttoptr i32 %6 to i32*, !dbg !3634
  store volatile i32 16, i32* %7, align 8, !dbg !3635
  %8 = or i32 %3, 16, !dbg !3636
  %9 = inttoptr i32 %8 to i32*, !dbg !3636
  store volatile i32 0, i32* %9, align 16, !dbg !3637
  %10 = or i32 %3, 24, !dbg !3638
  %11 = inttoptr i32 %10 to i32*, !dbg !3638
  store volatile i32 0, i32* %11, align 8, !dbg !3639
  store volatile i32 128, i32* %5, align 4, !dbg !3640
  %12 = inttoptr i32 %3 to i32*, !dbg !3641
  store volatile i32 0, i32* %12, align 65536, !dbg !3642
  %13 = or i32 %3, 4, !dbg !3643
  %14 = inttoptr i32 %13 to i32*, !dbg !3643
  store volatile i32 0, i32* %14, align 4, !dbg !3644
  store volatile i32 0, i32* %5, align 4, !dbg !3645
  store volatile i32 0, i32* %14, align 4, !dbg !3646
  store volatile i32 0, i32* %7, align 8, !dbg !3647
  store volatile i32 191, i32* %5, align 4, !dbg !3648
  store volatile i32 0, i32* %7, align 8, !dbg !3649
  store volatile i32 0, i32* %5, align 4, !dbg !3650
  store volatile i32 0, i32* %9, align 16, !dbg !3651
  %15 = or i32 %3, 28, !dbg !3652
  %16 = inttoptr i32 %15 to i32*, !dbg !3652
  store volatile i32 0, i32* %16, align 4, !dbg !3653
  %17 = or i32 %3, 36, !dbg !3654
  %18 = inttoptr i32 %17 to i32*, !dbg !3654
  store volatile i32 0, i32* %18, align 4, !dbg !3655
  %19 = or i32 %3, 40, !dbg !3656
  %20 = inttoptr i32 %19 to i32*, !dbg !3656
  store volatile i32 0, i32* %20, align 8, !dbg !3657
  %21 = or i32 %3, 44, !dbg !3658
  %22 = inttoptr i32 %21 to i32*, !dbg !3658
  store volatile i32 0, i32* %22, align 4, !dbg !3659
  %23 = or i32 %3, 52, !dbg !3660
  %24 = inttoptr i32 %23 to i32*, !dbg !3660
  store volatile i32 0, i32* %24, align 4, !dbg !3661
  %25 = or i32 %3, 60, !dbg !3662
  %26 = inttoptr i32 %25 to i32*, !dbg !3662
  store volatile i32 0, i32* %26, align 4, !dbg !3663
  %27 = or i32 %3, 64, !dbg !3664
  %28 = inttoptr i32 %27 to i32*, !dbg !3664
  store volatile i32 0, i32* %28, align 64, !dbg !3665
  %29 = or i32 %3, 68, !dbg !3666
  %30 = inttoptr i32 %29 to i32*, !dbg !3666
  store volatile i32 0, i32* %30, align 4, !dbg !3667
  %31 = or i32 %3, 72, !dbg !3668
  %32 = inttoptr i32 %31 to i32*, !dbg !3668
  store volatile i32 0, i32* %32, align 8, !dbg !3669
  %33 = or i32 %3, 76, !dbg !3670
  %34 = inttoptr i32 %33 to i32*, !dbg !3670
  store volatile i32 0, i32* %34, align 4, !dbg !3671
  %35 = or i32 %3, 80, !dbg !3672
  %36 = inttoptr i32 %35 to i32*, !dbg !3672
  store volatile i32 0, i32* %36, align 16, !dbg !3673
  %37 = or i32 %3, 84, !dbg !3674
  %38 = inttoptr i32 %37 to i32*, !dbg !3674
  store volatile i32 0, i32* %38, align 4, !dbg !3675
  %39 = or i32 %3, 88, !dbg !3676
  %40 = inttoptr i32 %39 to i32*, !dbg !3676
  store volatile i32 0, i32* %40, align 8, !dbg !3677
  %41 = or i32 %3, 96, !dbg !3678
  %42 = inttoptr i32 %41 to i32*, !dbg !3678
  store volatile i32 0, i32* %42, align 32, !dbg !3679
  ret void, !dbg !3680
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #1 !dbg !3681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3685
  %2 = icmp eq i32 %0, 0, !dbg !3686
  call void @llvm.dbg.value(metadata i32 undef, metadata !3684, metadata !DIExpression()), !dbg !3685
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3687

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3688
  %7 = and i32 %6, 64, !dbg !3689
  %8 = icmp eq i32 %7, 0, !dbg !3690
  br i1 %8, label %5, label %9, !dbg !3687, !llvm.loop !3691

9:                                                ; preds = %5
  ret void, !dbg !3693
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3694 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3698, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 %1, metadata !3699, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i8* %2, metadata !3700, metadata !DIExpression()), !dbg !3711
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3712
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3712
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3701, metadata !DIExpression()), !dbg !3713
  %7 = bitcast i32* %5 to i8*, !dbg !3714
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3714
  call void @llvm.dbg.value(metadata i32* %5, metadata !3710, metadata !DIExpression(DW_OP_deref)), !dbg !3711
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3715
  call void @llvm.va_start(i8* nonnull %6), !dbg !3716
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3717
  %10 = load i32, i32* %9, align 4, !dbg !3717
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3717
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3717
  call void @llvm.va_end(i8* nonnull %6), !dbg !3718
  %13 = load i32, i32* %5, align 4, !dbg !3719
  call void @llvm.dbg.value(metadata i32 %13, metadata !3710, metadata !DIExpression()), !dbg !3711
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3720
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3721
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3721
  ret void, !dbg !3721
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3722 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3724, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 %1, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i8* %2, metadata !3726, metadata !DIExpression()), !dbg !3729
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3730
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3730
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3727, metadata !DIExpression()), !dbg !3731
  %7 = bitcast i32* %5 to i8*, !dbg !3732
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3732
  call void @llvm.dbg.value(metadata i32* %5, metadata !3728, metadata !DIExpression(DW_OP_deref)), !dbg !3729
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3733
  call void @llvm.va_start(i8* nonnull %6), !dbg !3734
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3735
  %10 = load i32, i32* %9, align 4, !dbg !3735
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3735
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3735
  call void @llvm.va_end(i8* nonnull %6), !dbg !3736
  %13 = load i32, i32* %5, align 4, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %13, metadata !3728, metadata !DIExpression()), !dbg !3729
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3738
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3739
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3739
  ret void, !dbg !3739
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3740 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3742, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32 %1, metadata !3743, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i8* %2, metadata !3744, metadata !DIExpression()), !dbg !3747
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3748
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3748
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3745, metadata !DIExpression()), !dbg !3749
  %7 = bitcast i32* %5 to i8*, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3750
  call void @llvm.dbg.value(metadata i32* %5, metadata !3746, metadata !DIExpression(DW_OP_deref)), !dbg !3747
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3751
  call void @llvm.va_start(i8* nonnull %6), !dbg !3752
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3753
  %10 = load i32, i32* %9, align 4, !dbg !3753
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3753
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3753
  call void @llvm.va_end(i8* nonnull %6), !dbg !3754
  %13 = load i32, i32* %5, align 4, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %13, metadata !3746, metadata !DIExpression()), !dbg !3747
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3756
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3757
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3757
  ret void, !dbg !3757
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3758 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3760, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %2, metadata !3762, metadata !DIExpression()), !dbg !3765
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3766
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3766
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3763, metadata !DIExpression()), !dbg !3767
  %7 = bitcast i32* %5 to i8*, !dbg !3768
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3768
  call void @llvm.dbg.value(metadata i32* %5, metadata !3764, metadata !DIExpression(DW_OP_deref)), !dbg !3765
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !3769
  call void @llvm.va_start(i8* nonnull %6), !dbg !3770
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3771
  %10 = load i32, i32* %9, align 4, !dbg !3771
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3771
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !3771
  call void @llvm.va_end(i8* nonnull %6), !dbg !3772
  %13 = load i32, i32* %5, align 4, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %13, metadata !3764, metadata !DIExpression()), !dbg !3765
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !3774
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3775
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3775
  ret void, !dbg !3775
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #11 !dbg !3776 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3782, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 %1, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i8* %2, metadata !3784, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i8* %3, metadata !3785, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata i32 %4, metadata !3786, metadata !DIExpression()), !dbg !3787
  ret void, !dbg !3788
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3789 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3797
  call void @llvm.dbg.value(metadata i32 %1, metadata !3796, metadata !DIExpression()), !dbg !3798
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3799, !range !1407
  %3 = icmp eq i8 %2, 0, !dbg !3799
  br i1 %3, label %5, label %4, !dbg !3801

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3802
  br label %15, !dbg !3804

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3805
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3807
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3808
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3809
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3810
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3811
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3812
  call void @llvm.dbg.value(metadata i32 0, metadata !3794, metadata !DIExpression()), !dbg !3798
  br label %7, !dbg !3813

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3794, metadata !DIExpression()), !dbg !3798
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3815
  store volatile i32 0, i32* %9, align 4, !dbg !3818
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3819
  store volatile i32 0, i32* %10, align 4, !dbg !3820
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3821
  store i32 0, i32* %11, align 4, !dbg !3822
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3823
  store i32 0, i32* %12, align 4, !dbg !3824
  %13 = add nuw nsw i32 %8, 1, !dbg !3825
  call void @llvm.dbg.value(metadata i32 %13, metadata !3794, metadata !DIExpression()), !dbg !3798
  %14 = icmp eq i32 %13, 16, !dbg !3826
  br i1 %14, label %15, label %7, !dbg !3813, !llvm.loop !3827

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3798
  ret i32 %16, !dbg !3829
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3830 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3833
  call void @llvm.dbg.value(metadata i32 %1, metadata !3832, metadata !DIExpression()), !dbg !3834
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3835
  %3 = and i32 %2, -31, !dbg !3835
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3835
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3836
  %5 = or i32 %4, 19, !dbg !3836
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3836
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3837
  %7 = and i32 %6, -31, !dbg !3837
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3837
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3838
  %9 = or i32 %8, 3, !dbg !3838
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3838
  tail call void asm sideeffect "isb", ""() #15, !dbg !3839, !srcloc !3843
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3844
  ret i32 0, !dbg !3845
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3846 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3849
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3850
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3851
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3852
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3853
  call void @llvm.dbg.value(metadata i32 0, metadata !3848, metadata !DIExpression()), !dbg !3854
  br label %2, !dbg !3855

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3848, metadata !DIExpression()), !dbg !3854
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3857
  store volatile i32 0, i32* %4, align 4, !dbg !3860
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3861
  store volatile i32 0, i32* %5, align 4, !dbg !3862
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3863
  store i32 0, i32* %6, align 4, !dbg !3864
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3865
  store i32 0, i32* %7, align 4, !dbg !3866
  %8 = add nuw nsw i32 %3, 1, !dbg !3867
  call void @llvm.dbg.value(metadata i32 %8, metadata !3848, metadata !DIExpression()), !dbg !3854
  %9 = icmp eq i32 %8, 16, !dbg !3868
  br i1 %9, label %10, label %2, !dbg !3855, !llvm.loop !3869

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3871
  ret i32 0, !dbg !3872
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #1 !dbg !3873 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3874
  %2 = and i32 %1, 768, !dbg !3876
  %3 = icmp eq i32 %2, 0, !dbg !3876
  br i1 %3, label %8, label %4, !dbg !3877

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3878
  %6 = or i32 %5, 13, !dbg !3878
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3878
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3879
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3880
  br label %8, !dbg !3881

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3882
  ret i32 %9, !dbg !3883
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3884 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %1, metadata !3886, metadata !DIExpression()), !dbg !3888
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3889
  %3 = and i32 %2, 1, !dbg !3891
  %4 = icmp eq i32 %3, 0, !dbg !3891
  br i1 %4, label %7, label %5, !dbg !3892

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3893
  br label %7, !dbg !3895

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3896
  %9 = and i32 %8, -2, !dbg !3896
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3896
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3897
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3898
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3899
  ret i32 0, !dbg !3900
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #1 !dbg !3901 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3906
  %2 = icmp ugt i32 %0, 15, !dbg !3907
  br i1 %2, label %13, label %3, !dbg !3909

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3910
  %5 = load volatile i32, i32* %4, align 4, !dbg !3910
  %6 = and i32 %5, 256, !dbg !3912
  %7 = icmp eq i32 %6, 0, !dbg !3912
  br i1 %7, label %13, label %8, !dbg !3913

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3914
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3916
  %11 = or i32 %10, %9, !dbg !3916
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3916
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3917
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3918
  br label %13, !dbg !3919

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3906
  ret i32 %14, !dbg !3920
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #1 !dbg !3921 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3924
  %2 = icmp ugt i32 %0, 15, !dbg !3925
  br i1 %2, label %11, label %3, !dbg !3927

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3928
  %5 = xor i32 %4, -1, !dbg !3929
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3930
  %7 = and i32 %6, %5, !dbg !3930
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3930
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3931
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3932
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3933
  store i32 0, i32* %9, align 4, !dbg !3934
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3935
  store i32 0, i32* %10, align 4, !dbg !3936
  br label %11, !dbg !3937

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3924
  ret i32 %12, !dbg !3938
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #1 !dbg !3939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3944, metadata !DIExpression()), !dbg !3945
  %2 = icmp ugt i32 %0, 3, !dbg !3946
  br i1 %2, label %13, label %3, !dbg !3948

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3949
  %5 = and i32 %4, -769, !dbg !3949
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3949
  %6 = shl nuw nsw i32 %0, 8, !dbg !3950
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3951
  %8 = or i32 %7, %6, !dbg !3951
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3951
  %9 = icmp eq i32 %0, 0, !dbg !3952
  br i1 %9, label %10, label %11, !dbg !3954

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3955
  br label %11, !dbg !3957

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3958
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3959
  br label %13, !dbg !3960

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3945
  ret i32 %14, !dbg !3961
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.DMA_SWCOPYMENU* noundef readonly %1) local_unnamed_addr #3 !dbg !3962 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata %struct.DMA_SWCOPYMENU* %1, metadata !3974, metadata !DIExpression()), !dbg !3975
  %3 = icmp ugt i32 %0, 15, !dbg !3976
  br i1 %3, label %30, label %4, !dbg !3978

4:                                                ; preds = %2
  %5 = icmp eq %struct.DMA_SWCOPYMENU* %1, null, !dbg !3979
  br i1 %5, label %30, label %6, !dbg !3981

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 0, !dbg !3982
  %8 = load i32, i32* %7, align 4, !dbg !3982
  %9 = and i32 %8, 4095, !dbg !3984
  %10 = icmp eq i32 %9, 0, !dbg !3984
  br i1 %10, label %12, label %11, !dbg !3985

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0)) #17, !dbg !3986
  unreachable, !dbg !3986

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DMA_SWCOPYMENU, %struct.DMA_SWCOPYMENU* %1, i32 0, i32 1, !dbg !3988
  %14 = load i32, i32* %13, align 4, !dbg !3988
  %15 = and i32 %14, 4095, !dbg !3990
  %16 = icmp eq i32 %15, 0, !dbg !3990
  br i1 %16, label %18, label %17, !dbg !3991

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i32 0, i32 0)) #17, !dbg !3992
  unreachable, !dbg !3992

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3994
  store volatile i32 %8, i32* %19, align 4, !dbg !3995
  %20 = load i32, i32* %7, align 4, !dbg !3996
  %21 = load i32, i32* %13, align 4, !dbg !3997
  %22 = add i32 %21, %20, !dbg !3998
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3999
  store volatile i32 %22, i32* %23, align 4, !dbg !4000
  %24 = load volatile i32, i32* %19, align 4, !dbg !4001
  %25 = or i32 %24, 256, !dbg !4001
  store volatile i32 %25, i32* %19, align 4, !dbg !4001
  %26 = load volatile i32, i32* %19, align 4, !dbg !4002
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4003
  store i32 %26, i32* %27, align 4, !dbg !4004
  %28 = load volatile i32, i32* %23, align 4, !dbg !4005
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4006
  store i32 %28, i32* %29, align 4, !dbg !4007
  br label %30, !dbg !4008

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3975
  ret i32 %31, !dbg !4009
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  %2 = and i32 %0, 31, !dbg !4017
  %3 = icmp eq i32 %2, 0, !dbg !4017
  br i1 %3, label %4, label %9, !dbg !4019

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4020
  call void @llvm.dbg.value(metadata i32 %5, metadata !4015, metadata !DIExpression()), !dbg !4016
  %6 = and i32 %0, -32, !dbg !4021
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4022
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4023
  %8 = or i32 %7, 5, !dbg !4023
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4023
  tail call void asm sideeffect "isb", ""() #15, !dbg !4024, !srcloc !3843
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4026
  br label %9, !dbg !4027

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4016
  ret i32 %10, !dbg !4028
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4033, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 %1, metadata !4034, metadata !DIExpression()), !dbg !4037
  %3 = add i32 %1, %0, !dbg !4038
  call void @llvm.dbg.value(metadata i32 %3, metadata !4036, metadata !DIExpression()), !dbg !4037
  %4 = or i32 %1, %0, !dbg !4039
  %5 = and i32 %4, 31, !dbg !4039
  %6 = icmp eq i32 %5, 0, !dbg !4039
  br i1 %6, label %7, label %16, !dbg !4039

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %8, metadata !4035, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 %0, metadata !4033, metadata !DIExpression()), !dbg !4037
  %9 = icmp ugt i32 %3, %0, !dbg !4042
  br i1 %9, label %10, label %15, !dbg !4043

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4033, metadata !DIExpression()), !dbg !4037
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !4044
  %13 = add i32 %11, 32, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %13, metadata !4033, metadata !DIExpression()), !dbg !4037
  %14 = icmp ult i32 %13, %3, !dbg !4042
  br i1 %14, label %10, label %15, !dbg !4043, !llvm.loop !4047

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4049, !srcloc !3843
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4051
  br label %16, !dbg !4052

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4037
  ret i32 %17, !dbg !4053
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !4054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4056, metadata !DIExpression()), !dbg !4058
  %2 = and i32 %0, 31, !dbg !4059
  %3 = icmp eq i32 %2, 0, !dbg !4059
  br i1 %3, label %4, label %9, !dbg !4061

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4062
  call void @llvm.dbg.value(metadata i32 %5, metadata !4057, metadata !DIExpression()), !dbg !4058
  %6 = and i32 %0, -32, !dbg !4063
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4064
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4065
  %8 = or i32 %7, 21, !dbg !4065
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4065
  tail call void asm sideeffect "isb", ""() #15, !dbg !4066, !srcloc !3843
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !4068
  br label %9, !dbg !4069

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4058
  ret i32 %10, !dbg !4070
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !4071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4073, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i32 %1, metadata !4074, metadata !DIExpression()), !dbg !4077
  %3 = add i32 %1, %0, !dbg !4078
  call void @llvm.dbg.value(metadata i32 %3, metadata !4076, metadata !DIExpression()), !dbg !4077
  %4 = or i32 %1, %0, !dbg !4079
  %5 = and i32 %4, 31, !dbg !4079
  %6 = icmp eq i32 %5, 0, !dbg !4079
  br i1 %6, label %7, label %16, !dbg !4079

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4081
  call void @llvm.dbg.value(metadata i32 %8, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i32 %0, metadata !4073, metadata !DIExpression()), !dbg !4077
  %9 = icmp ugt i32 %3, %0, !dbg !4082
  br i1 %9, label %10, label %15, !dbg !4083

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4073, metadata !DIExpression()), !dbg !4077
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !4084
  %13 = add i32 %11, 32, !dbg !4086
  call void @llvm.dbg.value(metadata i32 %13, metadata !4073, metadata !DIExpression()), !dbg !4077
  %14 = icmp ult i32 %13, %3, !dbg !4082
  br i1 %14, label %10, label %15, !dbg !4083, !llvm.loop !4087

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #15, !dbg !4089, !srcloc !3843
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !4091
  br label %16, !dbg !4092

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4077
  ret i32 %17, !dbg !4093
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !4094 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %1, metadata !4096, metadata !DIExpression()), !dbg !4098
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4099
  %3 = and i32 %2, -31, !dbg !4099
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4099
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4100
  %5 = or i32 %4, 19, !dbg !4100
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4100
  tail call void asm sideeffect "isb", ""() #15, !dbg !4101, !srcloc !3843
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !4103
  ret i32 0, !dbg !4104
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #1 !dbg !4105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()), !dbg !4111
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4112
  %3 = and i32 %2, 8, !dbg !4114
  %4 = icmp eq i32 %3, 0, !dbg !4114
  br i1 %4, label %23, label %5, !dbg !4115

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4110, metadata !DIExpression()), !dbg !4111
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4116
  %8 = shl nuw nsw i32 1, %6, !dbg !4121
  %9 = and i32 %7, %8, !dbg !4122
  %10 = icmp eq i32 %9, 0, !dbg !4122
  br i1 %10, label %20, label %11, !dbg !4123

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4124
  %13 = load volatile i32, i32* %12, align 4, !dbg !4124
  %14 = and i32 %13, -257, !dbg !4127
  %15 = icmp ugt i32 %14, %0, !dbg !4128
  br i1 %15, label %20, label %16, !dbg !4129

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !4130
  %18 = load volatile i32, i32* %17, align 4, !dbg !4130
  %19 = icmp ugt i32 %18, %0, !dbg !4131
  br i1 %19, label %23, label %20, !dbg !4132

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !4133
  call void @llvm.dbg.value(metadata i32 %21, metadata !4110, metadata !DIExpression()), !dbg !4111
  %22 = icmp eq i32 %21, 16, !dbg !4134
  br i1 %22, label %23, label %5, !dbg !4135, !llvm.loop !4136

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4111
  ret i1 %24, !dbg !4138
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #11 !dbg !4139 {
  ret i32 0, !dbg !4143
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i32 -1, metadata !4149, metadata !DIExpression()), !dbg !4150
  %2 = icmp ugt i32 %0, 95, !dbg !4151
  br i1 %2, label %4, label %3, !dbg !4151

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !4153
  call void @llvm.dbg.value(metadata i32 0, metadata !4149, metadata !DIExpression()), !dbg !4150
  br label %4, !dbg !4155

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4150
  ret i32 %5, !dbg !4156
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4162
  %2 = and i32 %0, 31, !dbg !4163
  %3 = shl nuw i32 1, %2, !dbg !4164
  %4 = lshr i32 %0, 5, !dbg !4165
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4166
  store volatile i32 %3, i32* %5, align 4, !dbg !4167
  ret void, !dbg !4168
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4171, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.value(metadata i32 -1, metadata !4172, metadata !DIExpression()), !dbg !4173
  %2 = icmp ugt i32 %0, 95, !dbg !4174
  br i1 %2, label %4, label %3, !dbg !4174

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !4176
  call void @llvm.dbg.value(metadata i32 0, metadata !4172, metadata !DIExpression()), !dbg !4173
  br label %4, !dbg !4178

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4173
  ret i32 %5, !dbg !4179
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4183
  %2 = and i32 %0, 31, !dbg !4184
  %3 = shl nuw i32 1, %2, !dbg !4185
  %4 = lshr i32 %0, 5, !dbg !4186
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4187
  store volatile i32 %3, i32* %5, align 4, !dbg !4188
  ret void, !dbg !4189
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #6 !dbg !4190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4194, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.value(metadata i32 255, metadata !4195, metadata !DIExpression()), !dbg !4196
  %2 = icmp ugt i32 %0, 95, !dbg !4197
  br i1 %2, label %5, label %3, !dbg !4197

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !4199
  call void @llvm.dbg.value(metadata i32 %4, metadata !4195, metadata !DIExpression()), !dbg !4196
  br label %5, !dbg !4201

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4196
  ret i32 %6, !dbg !4202
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #6 !dbg !4203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4207, metadata !DIExpression()), !dbg !4208
  %2 = lshr i32 %0, 5, !dbg !4209
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4210
  %4 = load volatile i32, i32* %3, align 4, !dbg !4210
  %5 = and i32 %0, 31, !dbg !4211
  %6 = lshr i32 %4, %5, !dbg !4212
  %7 = and i32 %6, 1, !dbg !4212
  ret i32 %7, !dbg !4213
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4216, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 -1, metadata !4217, metadata !DIExpression()), !dbg !4218
  %2 = icmp ugt i32 %0, 95, !dbg !4219
  br i1 %2, label %4, label %3, !dbg !4219

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !4221
  call void @llvm.dbg.value(metadata i32 0, metadata !4217, metadata !DIExpression()), !dbg !4218
  br label %4, !dbg !4223

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4218
  ret i32 %5, !dbg !4224
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4227, metadata !DIExpression()), !dbg !4228
  %2 = and i32 %0, 31, !dbg !4229
  %3 = shl nuw i32 1, %2, !dbg !4230
  %4 = lshr i32 %0, 5, !dbg !4231
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4232
  store volatile i32 %3, i32* %5, align 4, !dbg !4233
  ret void, !dbg !4234
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #1 !dbg !4235 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i32 -1, metadata !4238, metadata !DIExpression()), !dbg !4239
  %2 = icmp ugt i32 %0, 95, !dbg !4240
  br i1 %2, label %4, label %3, !dbg !4240

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4242
  call void @llvm.dbg.value(metadata i32 0, metadata !4238, metadata !DIExpression()), !dbg !4239
  br label %4, !dbg !4244

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4239
  ret i32 %5, !dbg !4245
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #1 !dbg !4246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4248, metadata !DIExpression()), !dbg !4249
  %2 = and i32 %0, 31, !dbg !4250
  %3 = shl nuw i32 1, %2, !dbg !4251
  %4 = lshr i32 %0, 5, !dbg !4252
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4253
  store volatile i32 %3, i32* %5, align 4, !dbg !4254
  ret void, !dbg !4255
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !dbg !4256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4260, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 %1, metadata !4261, metadata !DIExpression()), !dbg !4263
  call void @llvm.dbg.value(metadata i32 -1, metadata !4262, metadata !DIExpression()), !dbg !4263
  %3 = icmp ugt i32 %0, 95, !dbg !4264
  br i1 %3, label %5, label %4, !dbg !4264

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !4266
  call void @llvm.dbg.value(metadata i32 0, metadata !4262, metadata !DIExpression()), !dbg !4263
  br label %5, !dbg !4268

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4263
  ret i32 %6, !dbg !4269
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !dbg !4270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4274, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 %1, metadata !4275, metadata !DIExpression()), !dbg !4276
  %3 = trunc i32 %1 to i8, !dbg !4277
  %4 = shl i8 %3, 5, !dbg !4277
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4280
  store volatile i8 %4, i8* %5, align 1, !dbg !4281
  ret void, !dbg !4282
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #6 !dbg !4283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4285, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i32 68, metadata !4286, metadata !DIExpression()), !dbg !4287
  %2 = icmp ugt i32 %0, 95, !dbg !4288
  br i1 %2, label %5, label %3, !dbg !4288

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !4290
  call void @llvm.dbg.value(metadata i32 %4, metadata !4286, metadata !DIExpression()), !dbg !4287
  br label %5, !dbg !4292

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4287
  ret i32 %6, !dbg !4293
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #6 !dbg !4294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4296, metadata !DIExpression()), !dbg !4297
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4298
  %3 = load volatile i8, i8* %2, align 1, !dbg !4298
  %4 = lshr i8 %3, 5, !dbg !4301
  %5 = zext i8 %4 to i32, !dbg !4301
  ret i32 %5, !dbg !4302
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #11 !dbg !4303 {
  ret void, !dbg !4304
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4305 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4307, metadata !DIExpression()), !dbg !4309
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4310
  call void @llvm.dbg.value(metadata i32 %1, metadata !4308, metadata !DIExpression()), !dbg !4309
  %2 = icmp ugt i32 %1, 95, !dbg !4311
  br i1 %2, label %12, label %3, !dbg !4311

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4313
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4313
  %6 = icmp eq void (i32)* %5, null, !dbg !4315
  br i1 %6, label %7, label %8, !dbg !4316

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4307, metadata !DIExpression()), !dbg !4309
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #16, !dbg !4317
  br label %12, !dbg !4319

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4320
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4322
  store i32 %9, i32* %10, align 4, !dbg !4323
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4324
  tail call void %11(i32 noundef %1) #16, !dbg !4325
  call void @llvm.dbg.value(metadata i32 0, metadata !4307, metadata !DIExpression()), !dbg !4309
  br label %12, !dbg !4326

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4309
  ret i32 %13, !dbg !4327
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #6 !dbg !4328 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4331
  %2 = and i32 %1, 511, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %2, metadata !4330, metadata !DIExpression()), !dbg !4333
  %3 = add nsw i32 %2, -16, !dbg !4334
  ret i32 %3, !dbg !4335
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #6 !dbg !4336 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4337
  %2 = lshr i32 %1, 22, !dbg !4338
  %3 = and i32 %2, 1, !dbg !4338
  ret i32 %3, !dbg !4339
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4340 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4345, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4346, metadata !DIExpression()), !dbg !4348
  %3 = icmp ugt i32 %0, 95, !dbg !4349
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4349
  br i1 %5, label %10, label %6, !dbg !4349

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4351
  call void @llvm.dbg.value(metadata i32 %7, metadata !4347, metadata !DIExpression()), !dbg !4348
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4352
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4353
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4354
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4355
  store i32 0, i32* %9, align 4, !dbg !4356
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !4357
  br label %10, !dbg !4358

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4348
  ret i32 %11, !dbg !4359
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4360 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4364, metadata !DIExpression()), !dbg !4365
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4366
  store i32 %2, i32* %0, align 4, !dbg !4367
  ret i32 0, !dbg !4368
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4373, metadata !DIExpression()), !dbg !4374
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !4375
  ret i32 0, !dbg !4376
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4377 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4383, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i8 %1, metadata !4384, metadata !DIExpression()), !dbg !4386
  %3 = icmp ugt i32 %0, 60, !dbg !4387
  br i1 %3, label %11, label %4, !dbg !4389

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4390
  br i1 %5, label %11, label %6, !dbg !4392

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4393
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !4394
  call void @llvm.dbg.value(metadata i32 %8, metadata !4385, metadata !DIExpression()), !dbg !4386
  %9 = icmp slt i32 %8, 0, !dbg !4395
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4395
  br label %11, !dbg !4396

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4386
  ret i32 %12, !dbg !4397
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #11 !dbg !4398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4403, metadata !DIExpression()), !dbg !4404
  ret i32 0, !dbg !4405
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #11 !dbg !4406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4408, metadata !DIExpression()), !dbg !4409
  ret i32 0, !dbg !4410
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4411 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4416, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32* %1, metadata !4417, metadata !DIExpression()), !dbg !4426
  %4 = icmp eq i32* %1, null, !dbg !4427
  br i1 %4, label %12, label %5, !dbg !4429

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4430
  br i1 %6, label %12, label %7, !dbg !4432

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4433
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4433
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4433
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4433
  %10 = load i8, i8* %9, align 1, !dbg !4433
  call void @llvm.dbg.value(metadata i8 %10, metadata !4418, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4426
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4433
  %11 = zext i8 %10 to i32, !dbg !4434
  store i32 %11, i32* %1, align 4, !dbg !4435
  br label %12, !dbg !4436

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4426
  ret i32 %13, !dbg !4437
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4442, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 %1, metadata !4443, metadata !DIExpression()), !dbg !4445
  %3 = icmp ugt i32 %0, 60, !dbg !4446
  br i1 %3, label %9, label %4, !dbg !4448

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4449
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4450
  call void @llvm.dbg.value(metadata i32 %6, metadata !4444, metadata !DIExpression()), !dbg !4445
  %7 = icmp slt i32 %6, 0, !dbg !4451
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4451
  br label %9, !dbg !4452

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4445
  ret i32 %10, !dbg !4453
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4454 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32* %1, metadata !4457, metadata !DIExpression()), !dbg !4459
  %4 = icmp ugt i32 %0, 60, !dbg !4460
  br i1 %4, label %12, label %5, !dbg !4462

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4463
  br i1 %6, label %12, label %7, !dbg !4465

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4466
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4466
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4466
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4466
  %10 = load i8, i8* %9, align 2, !dbg !4466
  call void @llvm.dbg.value(metadata i8 %10, metadata !4458, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4459
  call void @llvm.dbg.value(metadata i8 undef, metadata !4458, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4466
  %11 = zext i8 %10 to i32, !dbg !4467
  store i32 %11, i32* %1, align 4, !dbg !4468
  br label %12, !dbg !4469

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4459
  ret i32 %13, !dbg !4470
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4471 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4476, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 %1, metadata !4477, metadata !DIExpression()), !dbg !4479
  %3 = icmp ugt i32 %0, 60, !dbg !4480
  br i1 %3, label %8, label %4, !dbg !4482

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !4483
  call void @llvm.dbg.value(metadata i32 %5, metadata !4478, metadata !DIExpression()), !dbg !4479
  %6 = icmp slt i32 %5, 0, !dbg !4484
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4484
  br label %8, !dbg !4485

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4479
  ret i32 %9, !dbg !4486
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4487 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4492, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i32* %1, metadata !4493, metadata !DIExpression()), !dbg !4495
  %4 = icmp ugt i32 %0, 60, !dbg !4496
  br i1 %4, label %13, label %5, !dbg !4498

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4499
  br i1 %6, label %13, label %7, !dbg !4501

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4502
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4502
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4502
  call void @llvm.dbg.value(metadata i32 undef, metadata !4494, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4495
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4502
  %10 = load i8, i8* %9, align 4, !dbg !4502
  call void @llvm.dbg.value(metadata i8 %10, metadata !4494, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4495
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !4502
  %11 = icmp ne i8 %10, 0, !dbg !4503
  %12 = zext i1 %11 to i32, !dbg !4503
  store i32 %12, i32* %1, align 4, !dbg !4504
  br label %13, !dbg !4505

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4495
  ret i32 %14, !dbg !4506
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4507 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4509, metadata !DIExpression()), !dbg !4511
  %3 = icmp ugt i32 %0, 60, !dbg !4512
  br i1 %3, label %11, label %4, !dbg !4514

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4515
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4515
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !4515
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4515
  %7 = load i8, i8* %6, align 2, !dbg !4515
  call void @llvm.dbg.value(metadata i8 %7, metadata !4510, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4511
  call void @llvm.dbg.value(metadata i8 undef, metadata !4510, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4511
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !4515
  %8 = xor i8 %7, 1, !dbg !4516
  %9 = zext i8 %8 to i32, !dbg !4516
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4517
  br label %11, !dbg !4518

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4511
  ret i32 %12, !dbg !4519
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4522, metadata !DIExpression()), !dbg !4524
  %2 = icmp ugt i32 %0, 60, !dbg !4525
  br i1 %2, label %10, label %3, !dbg !4527

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4528
  call void @llvm.dbg.value(metadata i32 %4, metadata !4523, metadata !DIExpression()), !dbg !4524
  %5 = icmp slt i32 %4, 0, !dbg !4529
  br i1 %5, label %10, label %6, !dbg !4531

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %7, metadata !4523, metadata !DIExpression()), !dbg !4524
  %8 = icmp slt i32 %7, 0, !dbg !4533
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4533
  br label %10, !dbg !4534

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4524
  ret i32 %11, !dbg !4535
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4538, metadata !DIExpression()), !dbg !4540
  %2 = icmp ugt i32 %0, 60, !dbg !4541
  br i1 %2, label %10, label %3, !dbg !4543

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4544
  call void @llvm.dbg.value(metadata i32 %4, metadata !4539, metadata !DIExpression()), !dbg !4540
  %5 = icmp slt i32 %4, 0, !dbg !4545
  br i1 %5, label %10, label %6, !dbg !4547

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !4548
  call void @llvm.dbg.value(metadata i32 %7, metadata !4539, metadata !DIExpression()), !dbg !4540
  %8 = icmp slt i32 %7, 0, !dbg !4549
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4549
  br label %10, !dbg !4550

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4540
  ret i32 %11, !dbg !4551
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4552 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4554, metadata !DIExpression()), !dbg !4556
  %2 = icmp ugt i32 %0, 60, !dbg !4557
  br i1 %2, label %7, label %3, !dbg !4559

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4560
  call void @llvm.dbg.value(metadata i32 %4, metadata !4555, metadata !DIExpression()), !dbg !4556
  %5 = icmp slt i32 %4, 0, !dbg !4561
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4561
  br label %7, !dbg !4562

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4556
  ret i32 %8, !dbg !4563
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4568, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i32 %1, metadata !4569, metadata !DIExpression()), !dbg !4571
  %3 = icmp ugt i32 %0, 60, !dbg !4572
  br i1 %3, label %9, label %4, !dbg !4574

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4575
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4576
  call void @llvm.dbg.value(metadata i32 %6, metadata !4570, metadata !DIExpression()), !dbg !4571
  %7 = icmp slt i32 %6, 0, !dbg !4577
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4577
  br label %9, !dbg !4578

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4571
  ret i32 %10, !dbg !4579
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4580 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32* %1, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4590
  %4 = icmp ugt i32 %0, 60, !dbg !4591
  br i1 %4, label %11, label %5, !dbg !4593

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4588, metadata !DIExpression(DW_OP_deref)), !dbg !4589
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !4594
  call void @llvm.dbg.value(metadata i32 %6, metadata !4587, metadata !DIExpression()), !dbg !4589
  %7 = load i8, i8* %3, align 1, !dbg !4595
  call void @llvm.dbg.value(metadata i8 %7, metadata !4588, metadata !DIExpression()), !dbg !4589
  %8 = zext i8 %7 to i32, !dbg !4596
  store i32 %8, i32* %1, align 4, !dbg !4597
  %9 = icmp slt i32 %6, 0, !dbg !4598
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4598
  br label %11, !dbg !4599

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4589
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !4600
  ret i32 %12, !dbg !4600
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4601 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4607, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4608, metadata !DIExpression()), !dbg !4609
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4610
  br i1 %3, label %4, label %18, !dbg !4612

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4613
  %6 = load i8, i8* %5, align 4, !dbg !4613, !range !1407
  %7 = icmp eq i8 %6, 0, !dbg !4613
  br i1 %7, label %8, label %18, !dbg !4615

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !4616
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4617
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4618
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4619
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !4620
  store i8 1, i8* %5, align 4, !dbg !4621
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4622, !range !4623
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !4624
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !4625
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4626
  %16 = icmp eq i32 %15, 0, !dbg !4628
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4609
  br label %18, !dbg !4609

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4609
  ret i32 %19, !dbg !4629
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #7 !dbg !4630 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4636, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4637, metadata !DIExpression()), !dbg !4638
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4639
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4641
  br i1 %5, label %6, label %22, !dbg !4641

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4642
  %8 = load i32, i32* %7, align 4, !dbg !4642
  %9 = icmp ugt i32 %8, 12, !dbg !4644
  br i1 %9, label %22, label %10, !dbg !4645

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4646
  %12 = load i32, i32* %11, align 4, !dbg !4646
  %13 = icmp ugt i32 %12, 2, !dbg !4647
  br i1 %13, label %22, label %14, !dbg !4648

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4649
  %16 = load i32, i32* %15, align 4, !dbg !4649
  %17 = icmp ugt i32 %16, 1, !dbg !4650
  br i1 %17, label %22, label %18, !dbg !4651

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4652
  %20 = load i32, i32* %19, align 4, !dbg !4652
  %21 = icmp ult i32 %20, 4, !dbg !4653
  br label %22, !dbg !4654

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4638
  ret i1 %23, !dbg !4655
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #11 !dbg !4656 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4660, metadata !DIExpression()), !dbg !4661
  %2 = icmp ne i32 %0, 0, !dbg !4662
  %3 = zext i1 %2 to i32, !dbg !4663
  ret i32 %3, !dbg !4664
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4665 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4669, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4670, metadata !DIExpression()), !dbg !4671
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4672
  br i1 %3, label %4, label %22, !dbg !4674

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4675
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4676
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4677
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !4678
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4679
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4680
  %11 = load i32, i32* %10, align 4, !dbg !4680
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4681
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4682
  %14 = load i32, i32* %13, align 4, !dbg !4682
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4683
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4684
  %17 = load i32, i32* %16, align 4, !dbg !4684
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4685
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4686
  %20 = load i32, i32* %19, align 4, !dbg !4686
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4687
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !4688
  br label %22, !dbg !4689

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4671
  ret i32 %23, !dbg !4690
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #11 !dbg !4691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4695, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4696, metadata !DIExpression()), !dbg !4701
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4702
  %3 = load i32, i32* %2, align 4, !dbg !4702
  ret i32 %3, !dbg !4703
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #11 !dbg !4704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4708, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4709, metadata !DIExpression()), !dbg !4712
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4713
  %3 = load i16, i16* %2, align 2, !dbg !4713
  ret i16 %3, !dbg !4714
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #11 !dbg !4715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4719, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4720, metadata !DIExpression()), !dbg !4723
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4724
  %3 = load i16, i16* %2, align 2, !dbg !4724
  ret i16 %3, !dbg !4725
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #11 !dbg !4726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4730, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4731, metadata !DIExpression()), !dbg !4734
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4735
  %3 = load i16, i16* %2, align 2, !dbg !4735
  ret i16 %3, !dbg !4736
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #11 !dbg !4737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4741, metadata !DIExpression()), !dbg !4742
  %2 = icmp ult i32 %0, 2, !dbg !4743
  ret i1 %2, !dbg !4744
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4749, metadata !DIExpression()), !dbg !4750
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4751
  br i1 %2, label %3, label %10, !dbg !4753

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4754
  %5 = load i8, i8* %4, align 4, !dbg !4754, !range !1407
  %6 = icmp eq i8 %5, 0, !dbg !4756
  br i1 %6, label %10, label %7, !dbg !4757

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !4758
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4759, !range !4623
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !4760
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !4761
  br label %10, !dbg !4762

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4750
  ret i32 %11, !dbg !4763
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4768, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i8 %1, metadata !4769, metadata !DIExpression()), !dbg !4771
  %3 = icmp eq i32 %0, 0, !dbg !4772
  %4 = icmp eq i32 %0, 1, !dbg !4772
  %5 = select i1 %4, i32 1, i32 2, !dbg !4772
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4772
  call void @llvm.dbg.value(metadata i32 %6, metadata !4770, metadata !DIExpression()), !dbg !4771
  %7 = icmp eq i32 %6, 2, !dbg !4773
  br i1 %7, label %9, label %8, !dbg !4775

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !4776
  br label %9, !dbg !4778

9:                                                ; preds = %2, %8
  ret void, !dbg !4779
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4784, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i8* %1, metadata !4785, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i32 %2, metadata !4786, metadata !DIExpression()), !dbg !4789
  %4 = icmp eq i32 %0, 0, !dbg !4790
  %5 = icmp eq i32 %0, 1, !dbg !4790
  %6 = select i1 %5, i32 1, i32 2, !dbg !4790
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4790
  call void @llvm.dbg.value(metadata i32 %7, metadata !4787, metadata !DIExpression()), !dbg !4789
  %8 = icmp eq i8* %1, null, !dbg !4791
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4793
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4793
  call void @llvm.dbg.value(metadata i32 0, metadata !4788, metadata !DIExpression()), !dbg !4789
  br i1 %12, label %19, label %13, !dbg !4793

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4788, metadata !DIExpression()), !dbg !4789
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4794
  %16 = load i8, i8* %15, align 1, !dbg !4794
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !4800
  %17 = add nuw i32 %14, 1, !dbg !4801
  call void @llvm.dbg.value(metadata i32 %17, metadata !4788, metadata !DIExpression()), !dbg !4789
  %18 = icmp eq i32 %17, %2, !dbg !4802
  br i1 %18, label %19, label %13, !dbg !4803, !llvm.loop !4804

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4789
  ret i32 %20, !dbg !4806
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4807 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4809, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.value(metadata i8* %1, metadata !4810, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.value(metadata i32 %2, metadata !4811, metadata !DIExpression()), !dbg !4815
  %5 = bitcast i32* %4 to i8*, !dbg !4816
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4816
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4817
  br i1 %6, label %7, label %24, !dbg !4819

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4820
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4822
  br i1 %10, label %24, label %11, !dbg !4822

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4823
  %13 = load i8, i8* %12, align 4, !dbg !4823, !range !1407
  %14 = icmp eq i8 %13, 0, !dbg !4823
  br i1 %14, label %24, label %15, !dbg !4825

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4826, !range !4623
  call void @llvm.dbg.value(metadata i32* %4, metadata !4812, metadata !DIExpression(DW_OP_deref)), !dbg !4815
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !4827
  %17 = load i32, i32* %4, align 4, !dbg !4828
  call void @llvm.dbg.value(metadata i32 %17, metadata !4812, metadata !DIExpression()), !dbg !4815
  %18 = icmp ult i32 %17, %2, !dbg !4830
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4813, metadata !DIExpression()), !dbg !4815
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !4831
  %20 = load i32, i32* %4, align 4, !dbg !4832
  call void @llvm.dbg.value(metadata i32 %20, metadata !4812, metadata !DIExpression()), !dbg !4815
  %21 = icmp eq i32 %19, %20, !dbg !4834
  br i1 %21, label %22, label %24, !dbg !4835

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4836, !range !4838
  call void @llvm.dbg.value(metadata i32 %23, metadata !4814, metadata !DIExpression()), !dbg !4815
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !4839
  br label %24, !dbg !4840

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4815
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4841
  ret i32 %25, !dbg !4841
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #11 !dbg !4842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4846, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i1 %1, metadata !4847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4849
  %3 = icmp eq i32 %0, 0, !dbg !4850
  %4 = select i1 %1, i32 15, i32 14, !dbg !4852
  %5 = select i1 %1, i32 17, i32 16, !dbg !4852
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4852
  call void @llvm.dbg.value(metadata i32 %6, metadata !4848, metadata !DIExpression()), !dbg !4849
  ret i32 %6, !dbg !4853
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4854 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4858, metadata !DIExpression()), !dbg !4860
  %2 = icmp eq i32 %0, 0, !dbg !4861
  %3 = icmp eq i32 %0, 1, !dbg !4861
  %4 = select i1 %3, i32 1, i32 2, !dbg !4861
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4861
  call void @llvm.dbg.value(metadata i32 %5, metadata !4859, metadata !DIExpression()), !dbg !4860
  %6 = icmp ult i32 %5, 2, !dbg !4862
  br i1 %6, label %7, label %9, !dbg !4864

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !4865
  br label %9, !dbg !4867

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4868
  ret i8 %10, !dbg !4869
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4870 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4874, metadata !DIExpression()), !dbg !4876
  %2 = icmp eq i32 %0, 0, !dbg !4877
  %3 = icmp eq i32 %0, 1, !dbg !4877
  %4 = select i1 %3, i32 1, i32 2, !dbg !4877
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4877
  call void @llvm.dbg.value(metadata i32 %5, metadata !4875, metadata !DIExpression()), !dbg !4876
  %6 = icmp ult i32 %5, 2, !dbg !4878
  br i1 %6, label %7, label %9, !dbg !4880

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !4881
  br label %9, !dbg !4883

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4884
  ret i32 %10, !dbg !4885
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4890, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8* %1, metadata !4891, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i32 %2, metadata !4892, metadata !DIExpression()), !dbg !4895
  %4 = icmp eq i32 %0, 0, !dbg !4896
  %5 = icmp eq i32 %0, 1, !dbg !4896
  %6 = select i1 %5, i32 1, i32 2, !dbg !4896
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4896
  call void @llvm.dbg.value(metadata i32 %7, metadata !4893, metadata !DIExpression()), !dbg !4895
  %8 = icmp eq i8* %1, null, !dbg !4897
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4899
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4899
  call void @llvm.dbg.value(metadata i32 0, metadata !4894, metadata !DIExpression()), !dbg !4895
  br i1 %12, label %19, label %13, !dbg !4899

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4894, metadata !DIExpression()), !dbg !4895
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !4900
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4906
  store i8 %15, i8* %16, align 1, !dbg !4907
  %17 = add nuw i32 %14, 1, !dbg !4908
  call void @llvm.dbg.value(metadata i32 %17, metadata !4894, metadata !DIExpression()), !dbg !4895
  %18 = icmp eq i32 %17, %2, !dbg !4909
  br i1 %18, label %19, label %13, !dbg !4910, !llvm.loop !4911

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4895
  ret i32 %20, !dbg !4913
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4914 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4916, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i8* %1, metadata !4917, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i32 %2, metadata !4918, metadata !DIExpression()), !dbg !4922
  %5 = bitcast i32* %4 to i8*, !dbg !4923
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4923
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4924
  br i1 %6, label %7, label %20, !dbg !4926

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4927
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4929
  br i1 %10, label %20, label %11, !dbg !4929

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4930, !range !4623
  call void @llvm.dbg.value(metadata i32* %4, metadata !4919, metadata !DIExpression(DW_OP_deref)), !dbg !4922
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !4931
  %13 = load i32, i32* %4, align 4, !dbg !4932
  call void @llvm.dbg.value(metadata i32 %13, metadata !4919, metadata !DIExpression()), !dbg !4922
  %14 = icmp ult i32 %13, %2, !dbg !4934
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4920, metadata !DIExpression()), !dbg !4922
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !4935
  %16 = load i32, i32* %4, align 4, !dbg !4936
  call void @llvm.dbg.value(metadata i32 %16, metadata !4919, metadata !DIExpression()), !dbg !4922
  %17 = icmp eq i32 %15, %16, !dbg !4938
  br i1 %17, label %18, label %20, !dbg !4939

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4940, !range !4838
  call void @llvm.dbg.value(metadata i32 %19, metadata !4921, metadata !DIExpression()), !dbg !4922
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !4942
  br label %20, !dbg !4943

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4922
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4944
  ret i32 %21, !dbg !4944
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4945 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4947, metadata !DIExpression()), !dbg !4949
  %3 = bitcast i32* %2 to i8*, !dbg !4950
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4950
  call void @llvm.dbg.value(metadata i32 0, metadata !4948, metadata !DIExpression()), !dbg !4949
  store i32 0, i32* %2, align 4, !dbg !4951
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4952
  br i1 %4, label %5, label %8, !dbg !4954

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4955, !range !4623
  call void @llvm.dbg.value(metadata i32* %2, metadata !4948, metadata !DIExpression(DW_OP_deref)), !dbg !4949
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !4956
  %7 = load i32, i32* %2, align 4, !dbg !4957
  call void @llvm.dbg.value(metadata i32 %7, metadata !4948, metadata !DIExpression()), !dbg !4949
  br label %8, !dbg !4958

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4949
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4959
  ret i32 %9, !dbg !4959
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4960 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4962, metadata !DIExpression()), !dbg !4964
  %3 = bitcast i32* %2 to i8*, !dbg !4965
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4965
  call void @llvm.dbg.value(metadata i32 0, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i32 0, i32* %2, align 4, !dbg !4966
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4967
  br i1 %4, label %5, label %8, !dbg !4969

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4970, !range !4623
  call void @llvm.dbg.value(metadata i32* %2, metadata !4963, metadata !DIExpression(DW_OP_deref)), !dbg !4964
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !4971
  %7 = load i32, i32* %2, align 4, !dbg !4972
  call void @llvm.dbg.value(metadata i32 %7, metadata !4963, metadata !DIExpression()), !dbg !4964
  br label %8, !dbg !4973

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4964
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4974
  ret i32 %9, !dbg !4974
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4979, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4980, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.value(metadata i8* %2, metadata !4981, metadata !DIExpression()), !dbg !4983
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4984
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4986
  br i1 %6, label %7, label %18, !dbg !4986

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4987
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4988
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4989
  store i8* %2, i8** %9, align 4, !dbg !4990
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4991
  store i8 1, i8* %10, align 4, !dbg !4992
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4993
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4994
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4995
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4996
  %13 = icmp eq i32 %11, 0, !dbg !4997
  br i1 %13, label %14, label %15, !dbg !4999

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !5000
  br label %16, !dbg !5002

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !5003
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !5005, !range !4838
  call void @llvm.dbg.value(metadata i32 %17, metadata !4982, metadata !DIExpression()), !dbg !4983
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !5006
  br label %18, !dbg !5007

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4983
  ret i32 %19, !dbg !5008
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #11 !dbg !478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !483, metadata !DIExpression()), !dbg !5009
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5010
  %3 = load void ()*, void ()** %2, align 4, !dbg !5010
  ret void ()* %3, !dbg !5011
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !5012 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5018, !range !1407
  %2 = icmp eq i8 %1, 0, !dbg !5018
  br i1 %2, label %8, label %3, !dbg !5019

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5020
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5022
  br i1 %5, label %8, label %6, !dbg !5023

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5024
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !5026
  br label %8, !dbg !5027

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5028, !range !4623
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5029
  ret void, !dbg !5030
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !5031 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5036, !range !1407
  %2 = icmp eq i8 %1, 0, !dbg !5036
  br i1 %2, label %8, label %3, !dbg !5037

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5038
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5040
  br i1 %5, label %8, label %6, !dbg !5041

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5042
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !5044
  br label %8, !dbg !5045

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5046, !range !4623
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5047
  ret void, !dbg !5048
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5049 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5053, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i1 %1, metadata !5054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5060
  %5 = bitcast i32* %3 to i8*, !dbg !5061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5061
  %6 = bitcast i32* %4 to i8*, !dbg !5061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5061
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5057, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5060
  br i1 %1, label %7, label %12, !dbg !5062

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5057, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5060
  call void @llvm.dbg.value(metadata i32* %3, metadata !5055, metadata !DIExpression(DW_OP_deref)), !dbg !5060
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !5063
  %8 = load i32, i32* %3, align 4, !dbg !5066
  call void @llvm.dbg.value(metadata i32 %8, metadata !5055, metadata !DIExpression()), !dbg !5060
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5068
  %10 = load i32, i32* %9, align 4, !dbg !5068
  %11 = icmp ult i32 %8, %10, !dbg !5069
  br i1 %11, label %22, label %20, !dbg !5070

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5056, metadata !DIExpression(DW_OP_deref)), !dbg !5060
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !5071
  %13 = load i32, i32* %4, align 4, !dbg !5073
  call void @llvm.dbg.value(metadata i32 %13, metadata !5056, metadata !DIExpression()), !dbg !5060
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5075
  %15 = load i32, i32* %14, align 4, !dbg !5075
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5076
  %17 = load i32, i32* %16, align 4, !dbg !5076
  %18 = sub i32 %15, %17, !dbg !5077
  %19 = icmp ult i32 %13, %18, !dbg !5078
  br i1 %19, label %22, label %20, !dbg !5079

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5080, !range !4838
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !5080
  br label %22, !dbg !5081

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !5081
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !5081
  ret void, !dbg !5081
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5082 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5087, !range !1407
  %2 = icmp eq i8 %1, 0, !dbg !5087
  br i1 %2, label %11, label %3, !dbg !5088

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5089
  %5 = icmp eq i32 %4, 0, !dbg !5090
  br i1 %5, label %11, label %6, !dbg !5091

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5092
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5094
  br i1 %8, label %11, label %9, !dbg !5095

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5096
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !5098
  br label %11, !dbg !5099

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5100, !range !4623
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5101
  ret void, !dbg !5102
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5103 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5108, !range !1407
  %2 = icmp eq i8 %1, 0, !dbg !5108
  br i1 %2, label %11, label %3, !dbg !5109

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5110
  %5 = icmp eq i32 %4, 0, !dbg !5111
  br i1 %5, label %11, label %6, !dbg !5112

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5113
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5115
  br i1 %8, label %11, label %9, !dbg !5116

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5117
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !5119
  br label %11, !dbg !5120

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5121, !range !4623
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5122
  ret void, !dbg !5123
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5128, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.value(metadata i32 %1, metadata !5129, metadata !DIExpression()), !dbg !5130
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5131
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5133
  br i1 %5, label %6, label %10, !dbg !5133

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5134
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5135
  store i32 %1, i32* %8, align 4, !dbg !5136
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5137
  br label %10, !dbg !5138

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5130
  ret i32 %11, !dbg !5139
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5146, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5147, metadata !DIExpression()), !dbg !5148
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5149
  br i1 %3, label %4, label %28, !dbg !5151

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5152
  br i1 %5, label %6, label %28, !dbg !5154

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5155
  store i8 1, i8* %7, align 4, !dbg !5156
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5157
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5158
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5159
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !5160
  tail call void @DMA_Init() #16, !dbg !5161
  tail call void @DMA_Vfifo_init() #16, !dbg !5162
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5163
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5164
  %14 = load i8*, i8** %13, align 4, !dbg !5164
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5165
  %16 = load i32, i32* %15, align 4, !dbg !5165
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5166
  %18 = load i32, i32* %17, align 4, !dbg !5166
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5167
  %20 = load i32, i32* %19, align 4, !dbg !5167
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5168
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !5169
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5170
  %23 = load i8*, i8** %22, align 4, !dbg !5170
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5171
  %25 = load i32, i32* %24, align 4, !dbg !5171
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5172
  %27 = load i32, i32* %26, align 4, !dbg !5172
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !5173
  br label %28, !dbg !5174

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5148
  ret i32 %29, !dbg !5175
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #7 !dbg !5176 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5180, metadata !DIExpression()), !dbg !5181
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5182
  br i1 %2, label %27, label %3, !dbg !5184

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5185
  %5 = load i8*, i8** %4, align 4, !dbg !5185
  %6 = icmp eq i8* %5, null, !dbg !5187
  br i1 %6, label %27, label %7, !dbg !5188

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5189
  %9 = load i32, i32* %8, align 4, !dbg !5189
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5191
  %11 = load i32, i32* %10, align 4, !dbg !5191
  %12 = icmp ult i32 %9, %11, !dbg !5192
  br i1 %12, label %27, label %13, !dbg !5193

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5194
  %15 = load i32, i32* %14, align 4, !dbg !5194
  %16 = icmp ult i32 %9, %15, !dbg !5196
  br i1 %16, label %27, label %17, !dbg !5197

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5198
  %19 = load i8*, i8** %18, align 4, !dbg !5198
  %20 = icmp eq i8* %19, null, !dbg !5200
  br i1 %20, label %27, label %21, !dbg !5201

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5202
  %23 = load i32, i32* %22, align 4, !dbg !5202
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5204
  %25 = load i32, i32* %24, align 4, !dbg !5204
  %26 = icmp uge i32 %23, %25, !dbg !5205
  br label %27, !dbg !5206

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5181
  ret i1 %28, !dbg !5207
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5208 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5212, metadata !DIExpression()), !dbg !5214
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !5215
  %3 = udiv i32 %2, 1000000, !dbg !5216
  call void @llvm.dbg.value(metadata i32 %3, metadata !5213, metadata !DIExpression()), !dbg !5214
  %4 = mul i32 %3, %0, !dbg !5217
  ret i32 %4, !dbg !5218
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5221, metadata !DIExpression()), !dbg !5223
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5224
  br i1 %2, label %3, label %8, !dbg !5226

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5227
  %5 = icmp eq i32 %0, 1, !dbg !5227
  %6 = select i1 %5, i32 1, i32 2, !dbg !5227
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5227
  call void @llvm.dbg.value(metadata i32 %7, metadata !5222, metadata !DIExpression()), !dbg !5223
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !5228
  br label %8, !dbg !5229

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5223
  ret i32 %9, !dbg !5230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5235, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i8 %1, metadata !5236, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i8 %2, metadata !5237, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i8 %3, metadata !5238, metadata !DIExpression()), !dbg !5240
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5241
  br i1 %5, label %6, label %11, !dbg !5243

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5244
  %8 = icmp eq i32 %0, 1, !dbg !5244
  %9 = select i1 %8, i32 1, i32 2, !dbg !5244
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5244
  call void @llvm.dbg.value(metadata i32 %10, metadata !5239, metadata !DIExpression()), !dbg !5240
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !5245
  br label %11, !dbg !5246

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5240
  ret i32 %12, !dbg !5247
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5250, metadata !DIExpression()), !dbg !5252
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5253
  br i1 %2, label %3, label %8, !dbg !5255

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5256
  %5 = icmp eq i32 %0, 1, !dbg !5256
  %6 = select i1 %5, i32 1, i32 2, !dbg !5256
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5256
  call void @llvm.dbg.value(metadata i32 %7, metadata !5251, metadata !DIExpression()), !dbg !5252
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !5257
  br label %8, !dbg !5258

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5252
  ret i32 %9, !dbg !5259
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5264, metadata !DIExpression()), !dbg !5266
  call void @llvm.dbg.value(metadata i32 %1, metadata !5265, metadata !DIExpression()), !dbg !5266
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5267
  br i1 %3, label %4, label %8, !dbg !5269

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5270
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5272
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !5272
  br label %8, !dbg !5273

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5266
  ret i32 %9, !dbg !5273
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #11 !dbg !5274 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5278, metadata !DIExpression()), !dbg !5279
  ret i32 %0, !dbg !5280
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !5281 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5282
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !5283, !srcloc !5286
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !5287, !srcloc !5290
  tail call fastcc void @uart_loopback_data_dma_example() #14, !dbg !5291
  unreachable, !dbg !5292
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5293 {
  tail call void @top_xtal_init() #16, !dbg !5294
  ret void, !dbg !5295
}

; Function Attrs: noinline noreturn nounwind optsize
define internal fastcc void @uart_loopback_data_dma_example() unnamed_addr #13 !dbg !5296 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = alloca %struct.hal_uart_dma_config_t, align 4
  %3 = alloca [256 x i8], align 1
  %4 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5319
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #15, !dbg !5319
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5298, metadata !DIExpression()), !dbg !5320
  %5 = bitcast %struct.hal_uart_dma_config_t* %2 to i8*, !dbg !5321
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %5) #15, !dbg !5321
  call void @llvm.dbg.declare(metadata %struct.hal_uart_dma_config_t* %2, metadata !5306, metadata !DIExpression()), !dbg !5322
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i32 0, i32 0, !dbg !5323
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %6) #15, !dbg !5323
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !5317, metadata !DIExpression()), !dbg !5324
  %7 = tail call i32 @hal_gpio_init(i32 noundef 2) #16, !dbg !5325
  %8 = tail call i32 @hal_gpio_init(i32 noundef 3) #16, !dbg !5326
  %9 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !5327
  %10 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !5328
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5329
  store i32 9, i32* %11, align 4, !dbg !5330
  %12 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5331
  store i32 0, i32* %12, align 4, !dbg !5332
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5333
  store i32 0, i32* %13, align 4, !dbg !5334
  %14 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5335
  store i32 3, i32* %14, align 4, !dbg !5336
  %15 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !5337
  %16 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 6, !dbg !5338
  store i32 30, i32* %16, align 4, !dbg !5339
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 3, !dbg !5340
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_uart_receive_buffer, i32 0, i32 0), i8** %17, align 4, !dbg !5341
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 4, !dbg !5342
  store i32 256, i32* %18, align 4, !dbg !5343
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 5, !dbg !5344
  store i32 150, i32* %19, align 4, !dbg !5345
  %20 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 0, !dbg !5346
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @g_uart_send_buffer, i32 0, i32 0), i8** %20, align 4, !dbg !5347
  %21 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 1, !dbg !5348
  store i32 256, i32* %21, align 4, !dbg !5349
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %2, i32 0, i32 2, !dbg !5350
  store i32 50, i32* %22, align 4, !dbg !5351
  %23 = call i32 @hal_uart_set_dma(i32 noundef 0, %struct.hal_uart_dma_config_t* noundef nonnull %2) #16, !dbg !5352
  %24 = call i32 @hal_uart_register_callback(i32 noundef 0, void (i32, i8*)* noundef nonnull @uart_read_from_input, i8* noundef null) #16, !dbg !5353
  %25 = call i32 @hal_uart_send_dma(i32 noundef 0, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0), i32 noundef 65) #16, !dbg !5354
  br label %26, !dbg !5355

26:                                               ; preds = %33, %0
  %27 = load volatile i8, i8* @g_uart_receive_event, align 1, !dbg !5356, !range !1407
  %28 = icmp eq i8 %27, 0, !dbg !5356
  br i1 %28, label %33, label %29, !dbg !5359

29:                                               ; preds = %26
  %30 = call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #16, !dbg !5360
  call void @llvm.dbg.value(metadata i32 %30, metadata !5318, metadata !DIExpression()), !dbg !5362
  %31 = call i32 @hal_uart_receive_dma(i32 noundef 0, i8* noundef nonnull %6, i32 noundef %30) #16, !dbg !5363
  %32 = call i32 @hal_uart_send_dma(i32 noundef 0, i8* noundef nonnull %6, i32 noundef %30) #16, !dbg !5364
  store volatile i8 0, i8* @g_uart_receive_event, align 1, !dbg !5365
  br label %33, !dbg !5366

33:                                               ; preds = %29, %26
  br label %26, !dbg !5356, !llvm.loop !5367
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal void @uart_read_from_input(i32 noundef %0, i8* nocapture noundef readnone %1) #1 !dbg !5369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5371, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.value(metadata i8* %1, metadata !5372, metadata !DIExpression()), !dbg !5373
  %3 = icmp eq i32 %0, 1, !dbg !5374
  br i1 %3, label %4, label %5, !dbg !5376

4:                                                ; preds = %2
  store volatile i8 1, i8* @g_uart_receive_event, align 1, !dbg !5377
  br label %5, !dbg !5379

5:                                                ; preds = %4, %2
  ret void, !dbg !5380
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #1 !dbg !5381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5383, metadata !DIExpression()), !dbg !5385
  %2 = add i32 %0, -1, !dbg !5386
  %3 = icmp ugt i32 %2, 16777215, !dbg !5388
  br i1 %3, label %8, label %4, !dbg !5389

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5390
  call void @llvm.dbg.value(metadata i32 %5, metadata !5384, metadata !DIExpression()), !dbg !5385
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5391
  %7 = and i32 %6, -4, !dbg !5391
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5391
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5392
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5393
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5394
  br label %8, !dbg !5395

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5385
  ret i32 %9, !dbg !5396
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #1 !dbg !5397 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5398
  ret void, !dbg !5399
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #6 !dbg !5400 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5401
  ret i32 %1, !dbg !5402
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5403 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !5404
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5405
  ret void, !dbg !5406
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #1 !dbg !5407 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5408
  %2 = or i32 %1, 15728640, !dbg !5408
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5408
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5409
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5410
  %4 = or i32 %3, 458752, !dbg !5410
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5410
  ret void, !dbg !5411
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #1 !dbg !5412 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5413
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5414
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5415
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5416
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5417
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5418
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5419
  ret void, !dbg !5420
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #11 !dbg !5421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5423, metadata !DIExpression()), !dbg !5424
  ret i32 0, !dbg !5425
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #11 !dbg !5426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5476, metadata !DIExpression()), !dbg !5478
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5477, metadata !DIExpression()), !dbg !5478
  ret i32 0, !dbg !5479
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #11 !dbg !5480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5482, metadata !DIExpression()), !dbg !5483
  ret i32 1, !dbg !5484
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5485 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5489, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.value(metadata i32 %1, metadata !5490, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.value(metadata i32 %2, metadata !5491, metadata !DIExpression()), !dbg !5492
  ret i32 0, !dbg !5493
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5498, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.value(metadata i32 %1, metadata !5499, metadata !DIExpression()), !dbg !5501
  call void @llvm.dbg.value(metadata i32 %2, metadata !5500, metadata !DIExpression()), !dbg !5501
  ret i32 -1, !dbg !5502
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #11 !dbg !5503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5507, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.value(metadata i8* %1, metadata !5508, metadata !DIExpression()), !dbg !5510
  call void @llvm.dbg.value(metadata i32 %2, metadata !5509, metadata !DIExpression()), !dbg !5510
  ret i32 0, !dbg !5511
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5512 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5514, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.value(metadata i8* %1, metadata !5515, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.value(metadata i32 %2, metadata !5516, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.value(metadata i32 0, metadata !5517, metadata !DIExpression()), !dbg !5518
  %4 = icmp sgt i32 %2, 0, !dbg !5519
  br i1 %4, label %5, label %14, !dbg !5522

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.value(metadata i8* %7, metadata !5515, metadata !DIExpression()), !dbg !5518
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5523
  call void @llvm.dbg.value(metadata i8* %8, metadata !5515, metadata !DIExpression()), !dbg !5518
  %9 = load i8, i8* %7, align 1, !dbg !5525
  %10 = zext i8 %9 to i32, !dbg !5525
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !5526
  %12 = add nuw nsw i32 %6, 1, !dbg !5527
  call void @llvm.dbg.value(metadata i32 %12, metadata !5517, metadata !DIExpression()), !dbg !5518
  %13 = icmp eq i32 %12, %2, !dbg !5519
  br i1 %13, label %14, label %5, !dbg !5522, !llvm.loop !5528

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5530
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !637 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !840, metadata !DIExpression()), !dbg !5531
  call void @llvm.dbg.value(metadata i32 %1, metadata !841, metadata !DIExpression()), !dbg !5531
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !5532, !srcloc !5533
  call void @llvm.dbg.value(metadata i8* %3, metadata !843, metadata !DIExpression()), !dbg !5531
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5534
  %5 = icmp eq i8* %4, null, !dbg !5536
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5537
  call void @llvm.dbg.value(metadata i8* %6, metadata !842, metadata !DIExpression()), !dbg !5531
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5538
  %8 = icmp ult i8* %3, %7, !dbg !5540
  %9 = xor i1 %8, true, !dbg !5541
  %10 = or i1 %5, %9, !dbg !5541
  br i1 %10, label %11, label %13, !dbg !5541

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5542
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5541
  br label %13, !dbg !5541

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5542
  ret i8* %14, !dbg !5541
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5545, metadata !DIExpression()), !dbg !5546
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #16, !dbg !5547
  br label %3, !dbg !5548

3:                                                ; preds = %1, %3
  br label %3, !dbg !5548, !llvm.loop !5549
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5555, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.value(metadata i32 %1, metadata !5556, metadata !DIExpression()), !dbg !5557
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.27, i32 0, i32 0), i32 noundef %1) #16, !dbg !5558
  ret i32 -1, !dbg !5559
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5560 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.28, i32 0, i32 0)) #16, !dbg !5565
  ret i32 0, !dbg !5566
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

!llvm.dbg.cu = !{!2, !858, !867, !948, !993, !200, !215, !1027, !235, !318, !1029, !420, !530, !577, !835, !846}
!llvm.ident = !{!1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069, !1069}
!llvm.module.flags = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DMA_LISR_FUNC", scope: !2, file: !3, line: 56, type: !197, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !113, globals: !175, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/dma.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!4 = !{!5, !34, !41, !46, !51, !97}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 82, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!47 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!50 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !52, line: 47, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!201 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!216 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!217 = !{!218, !97}
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !219, line: 71, baseType: !7, size: 32, elements: !220)
!219 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!236 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!237 = !{!238, !249, !268, !275}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 163, baseType: !53, size: 32, elements: !240)
!239 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!276 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!287 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!319 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!320 = !{!321, !51}
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 152, baseType: !53, size: 32, elements: !323)
!322 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!335 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!421 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!422 = !{!423, !431, !437, !453, !459, !463, !218, !97, !468}
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 345, baseType: !53, size: 32, elements: !425)
!424 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!425 = !{!426, !427, !428, !429, !430}
!426 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!427 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!428 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!429 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!430 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !432, line: 109, baseType: !7, size: 32, elements: !433)
!432 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!529 = distinct !DIGlobalVariable(name: "g_uart_receive_buffer", scope: !530, file: !531, line: 60, type: !570, isLocal: true, isDefinition: true, align: 32)
!530 = distinct !DICompileUnit(language: DW_LANG_C99, file: !531, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !564, globals: !567, splitDebugInlining: false, nameTableKind: None)
!531 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/uart_loopback_data_dma/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!569 = distinct !DIGlobalVariable(name: "g_uart_send_buffer", scope: !530, file: !531, line: 59, type: !570, isLocal: true, isDefinition: true, align: 32)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 256)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(name: "g_uart_receive_event", scope: !530, file: !531, line: 61, type: !315, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !577, file: !578, line: 59, type: !136, isLocal: false, isDefinition: true)
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !579, globals: !632, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/uart_loopback_data_dma/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!638 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
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
!836 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!837 = !{!643, !641}
!838 = !{!635}
!839 = !{!840, !841, !842, !843}
!840 = !DILocalVariable(name: "r", arg: 1, scope: !637, file: !638, line: 63, type: !644)
!841 = !DILocalVariable(name: "nbytes", arg: 2, scope: !637, file: !638, line: 63, type: !834)
!842 = !DILocalVariable(name: "prev_heap_end", scope: !637, file: !638, line: 67, type: !643)
!843 = !DILocalVariable(name: "stack", scope: !637, file: !638, line: 68, type: !643)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !846, file: !851, line: 4, type: !855, isLocal: false, isDefinition: true)
!846 = distinct !DICompileUnit(language: DW_LANG_C99, file: !847, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !848, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!848 = !{!844, !849, !853}
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !846, file: !851, line: 5, type: !852, isLocal: false, isDefinition: true)
!851 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 88, elements: !190)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !846, file: !851, line: 6, type: !852, isLocal: false, isDefinition: true)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 248, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 31)
!858 = distinct !DICompileUnit(language: DW_LANG_C99, file: !859, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !860, retainedTypes: !866, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!860 = !{!861}
!861 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !862, line: 1209, baseType: !7, size: 32, elements: !863)
!862 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!863 = !{!864, !865}
!864 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!865 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!866 = !{!115, !114}
!867 = distinct !DICompileUnit(language: DW_LANG_C99, file: !868, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !869, retainedTypes: !947, splitDebugInlining: false, nameTableKind: None)
!868 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!869 = !{!870}
!870 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !871, line: 150, baseType: !7, size: 32, elements: !872)
!871 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946}
!873 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!874 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!875 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!876 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!877 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!878 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!879 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!880 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!881 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!882 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!883 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!884 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!885 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!886 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!887 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!888 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!889 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!890 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!891 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!892 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!893 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!894 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!895 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!896 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!897 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!898 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!899 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!900 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!901 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!902 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!903 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!904 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!905 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!906 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!907 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!908 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!909 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!910 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!911 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!912 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!913 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!914 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!915 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!916 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!917 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!918 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!919 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!920 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!921 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!922 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!923 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!924 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!925 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!926 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!927 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!928 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!929 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!930 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!931 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!932 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!933 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!934 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!935 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!936 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!937 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!938 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!939 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!940 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!941 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!942 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!943 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!944 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!945 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!946 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!947 = !{!115, !205}
!948 = distinct !DICompileUnit(language: DW_LANG_C99, file: !949, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !950, splitDebugInlining: false, nameTableKind: None)
!949 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!950 = !{!951, !976}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !335, line: 418, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 395, size: 1120, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !953, file: !335, line: 397, baseType: !372, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !953, file: !335, line: 398, baseType: !207, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !953, file: !335, line: 399, baseType: !207, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !953, file: !335, line: 400, baseType: !207, size: 32, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !953, file: !335, line: 401, baseType: !207, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !953, file: !335, line: 402, baseType: !207, size: 32, offset: 160)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !953, file: !335, line: 403, baseType: !379, size: 96, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !953, file: !335, line: 404, baseType: !207, size: 32, offset: 288)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !953, file: !335, line: 405, baseType: !207, size: 32, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !953, file: !335, line: 406, baseType: !207, size: 32, offset: 352)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !953, file: !335, line: 407, baseType: !207, size: 32, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !953, file: !335, line: 408, baseType: !207, size: 32, offset: 416)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !953, file: !335, line: 409, baseType: !207, size: 32, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !953, file: !335, line: 410, baseType: !207, size: 32, offset: 480)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !953, file: !335, line: 411, baseType: !390, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !953, file: !335, line: 412, baseType: !372, size: 32, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !953, file: !335, line: 413, baseType: !372, size: 32, offset: 608)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !953, file: !335, line: 414, baseType: !396, size: 128, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !953, file: !335, line: 415, baseType: !400, size: 160, offset: 768)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !953, file: !335, line: 416, baseType: !404, size: 160, offset: 928)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !953, file: !335, line: 417, baseType: !207, size: 32, offset: 1088)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !335, line: 378, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 363, size: 28704, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !978, file: !335, line: 365, baseType: !339, size: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !978, file: !335, line: 366, baseType: !343, size: 768, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !978, file: !335, line: 367, baseType: !339, size: 256, offset: 1024)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !978, file: !335, line: 368, baseType: !343, size: 768, offset: 1280)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !978, file: !335, line: 369, baseType: !339, size: 256, offset: 2048)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !978, file: !335, line: 370, baseType: !343, size: 768, offset: 2304)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !978, file: !335, line: 371, baseType: !339, size: 256, offset: 3072)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !978, file: !335, line: 372, baseType: !343, size: 768, offset: 3328)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !978, file: !335, line: 373, baseType: !339, size: 256, offset: 4096)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !978, file: !335, line: 374, baseType: !354, size: 1792, offset: 4352)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !978, file: !335, line: 375, baseType: !358, size: 1920, offset: 6144)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !978, file: !335, line: 376, baseType: !363, size: 20608, offset: 8064)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !978, file: !335, line: 377, baseType: !207, size: 32, offset: 28672)
!993 = distinct !DICompileUnit(language: DW_LANG_C99, file: !994, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !995, splitDebugInlining: false, nameTableKind: None)
!994 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!995 = !{!996, !870}
!996 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !997, line: 55, baseType: !7, size: 32, elements: !998)
!997 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!999 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1000 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1001 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1002 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1003 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1004 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1005 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1006 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1007 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1008 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1009 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1010 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1011 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1012 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1013 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1014 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1015 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1016 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1017 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1018 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1019 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1020 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1021 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1022 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1023 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1024 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1025 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1026 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1027 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1028, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1029 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1030, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1031, retainedTypes: !1064, splitDebugInlining: false, nameTableKind: None)
!1030 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1031 = !{!1032, !533, !996, !1039, !1045, !1049, !1053, !1059}
!1032 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1033, line: 233, baseType: !53, size: 32, elements: !1034)
!1033 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1034 = !{!1035, !1036, !1037, !1038}
!1035 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1036 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1037 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1038 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1039 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1033, line: 224, baseType: !53, size: 32, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044}
!1041 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1042 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1043 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1044 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1045 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1033, line: 217, baseType: !7, size: 32, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1048 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1049 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1033, line: 210, baseType: !7, size: 32, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1052 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1053 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1033, line: 242, baseType: !7, size: 32, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058}
!1055 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1056 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1057 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1058 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1059 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1060, line: 57, baseType: !7, size: 32, elements: !1061)
!1060 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1061 = !{!1062, !1063}
!1062 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1063 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1064 = !{!1065, !161, !1066, !128, !1067, !1068}
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !997, line: 87, baseType: !996)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1033, line: 220, baseType: !1045)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1033, line: 247, baseType: !1053)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1060, line: 60, baseType: !1059)
!1069 = !{!"Ubuntu clang version 14.0.6"}
!1070 = !{i32 7, !"Dwarf Version", i32 2}
!1071 = !{i32 2, !"Debug Info Version", i32 3}
!1072 = !{i32 1, !"wchar_size", i32 4}
!1073 = !{i32 1, !"min_enum_size", i32 4}
!1074 = !{i32 1, !"branch-target-enforcement", i32 0}
!1075 = !{i32 1, !"sign-return-address", i32 0}
!1076 = !{i32 1, !"sign-return-address-all", i32 0}
!1077 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1078 = !{i32 7, !"frame-pointer", i32 2}
!1079 = distinct !DISubprogram(name: "DMA_ERROR_LISR", scope: !3, file: !3, line: 509, type: !181, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1080 = !{}
!1081 = !DILocation(line: 511, column: 5, scope: !1079)
!1082 = distinct !{!1082, !1081, !1083}
!1083 = !DILocation(line: 511, column: 14, scope: !1079)
!1084 = distinct !DISubprogram(name: "DMA_Stop", scope: !3, file: !3, line: 73, type: !1085, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !128}
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "channel", arg: 1, scope: !1084, file: !3, line: 73, type: !128)
!1089 = !DILocation(line: 0, scope: !1084)
!1090 = !DILocation(line: 75, column: 5, scope: !1084)
!1091 = !DILocation(line: 76, column: 5, scope: !1084)
!1092 = !DILocation(line: 77, column: 1, scope: !1084)
!1093 = distinct !DISubprogram(name: "DMA_Run", scope: !3, file: !3, line: 79, type: !1085, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1094)
!1094 = !{!1095}
!1095 = !DILocalVariable(name: "channel", arg: 1, scope: !1093, file: !3, line: 79, type: !128)
!1096 = !DILocation(line: 0, scope: !1093)
!1097 = !DILocation(line: 81, column: 5, scope: !1093)
!1098 = !DILocation(line: 82, column: 5, scope: !1093)
!1099 = !DILocation(line: 83, column: 1, scope: !1093)
!1100 = distinct !DISubprogram(name: "DMA_GetChannel", scope: !3, file: !3, line: 86, type: !1101, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!128, !134}
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1100, file: !3, line: 86, type: !134)
!1105 = !DILocalVariable(name: "index", scope: !1100, file: !3, line: 88, type: !174)
!1106 = !DILocalVariable(name: "handle", scope: !1100, file: !3, line: 89, type: !174)
!1107 = !DILocalVariable(name: "flags", scope: !1100, file: !3, line: 90, type: !748)
!1108 = !DILocation(line: 0, scope: !1100)
!1109 = !DILocation(line: 470, column: 3, scope: !1110, inlinedAt: !1116)
!1110 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1111, file: !1111, line: 466, type: !1112, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1111 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!136}
!1114 = !{!1115}
!1115 = !DILocalVariable(name: "result", scope: !1110, file: !1111, line: 468, type: !136)
!1116 = distinct !DILocation(line: 93, column: 5, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 93, column: 5)
!1118 = !{i64 316310}
!1119 = !DILocation(line: 0, scope: !1110, inlinedAt: !1116)
!1120 = !DILocation(line: 330, column: 3, scope: !1121, inlinedAt: !1122)
!1121 = distinct !DISubprogram(name: "__disable_irq", scope: !1111, file: !1111, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1122 = distinct !DILocation(line: 93, column: 5, scope: !1117)
!1123 = !{i64 312974}
!1124 = !DILocation(line: 95, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 95, column: 5)
!1126 = !DILocation(line: 96, column: 41, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 96, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 95, column: 79)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 95, column: 5)
!1130 = !DILocation(line: 96, column: 33, scope: !1127)
!1131 = !DILocation(line: 96, column: 52, scope: !1127)
!1132 = !DILocation(line: 96, column: 13, scope: !1128)
!1133 = !DILocation(line: 100, column: 35, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 96, column: 58)
!1135 = !DILocation(line: 100, column: 32, scope: !1134)
!1136 = !DILocation(line: 102, column: 13, scope: !1134)
!1137 = !DILocation(line: 95, column: 75, scope: !1129)
!1138 = !DILocation(line: 95, column: 50, scope: !1129)
!1139 = distinct !{!1139, !1124, !1140}
!1140 = !DILocation(line: 104, column: 5, scope: !1125)
!1141 = !DILocalVariable(name: "priMask", arg: 1, scope: !1142, file: !1111, line: 481, type: !136)
!1142 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1111, file: !1111, line: 481, type: !1143, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !136}
!1145 = !{!1141}
!1146 = !DILocation(line: 0, scope: !1142, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 105, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 105, column: 5)
!1149 = !DILocation(line: 483, column: 3, scope: !1142, inlinedAt: !1147)
!1150 = !{i64 316628}
!1151 = !DILocation(line: 109, column: 15, scope: !1100)
!1152 = !DILocation(line: 109, column: 22, scope: !1100)
!1153 = !DILocation(line: 109, column: 5, scope: !1100)
!1154 = !DILocation(line: 109, column: 27, scope: !1100)
!1155 = !DILocation(line: 111, column: 5, scope: !1100)
!1156 = distinct !DISubprogram(name: "DMA_FreeChannel", scope: !3, file: !3, line: 114, type: !1085, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1157)
!1157 = !{!1158, !1159}
!1158 = !DILocalVariable(name: "handle", arg: 1, scope: !1156, file: !3, line: 114, type: !128)
!1159 = !DILocalVariable(name: "flags", scope: !1156, file: !3, line: 116, type: !748)
!1160 = !DILocation(line: 0, scope: !1156)
!1161 = !DILocation(line: 470, column: 3, scope: !1110, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 118, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 118, column: 5)
!1164 = !DILocation(line: 0, scope: !1110, inlinedAt: !1162)
!1165 = !DILocation(line: 330, column: 3, scope: !1121, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 118, column: 5, scope: !1163)
!1167 = !DILocation(line: 121, column: 36, scope: !1156)
!1168 = !DILocation(line: 121, column: 33, scope: !1156)
!1169 = !DILocation(line: 121, column: 24, scope: !1156)
!1170 = !DILocation(line: 123, column: 5, scope: !1156)
!1171 = !DILocation(line: 125, column: 22, scope: !1156)
!1172 = !DILocation(line: 125, column: 5, scope: !1156)
!1173 = !DILocation(line: 125, column: 27, scope: !1156)
!1174 = !DILocation(line: 0, scope: !1142, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 127, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 127, column: 5)
!1177 = !DILocation(line: 483, column: 3, scope: !1142, inlinedAt: !1175)
!1178 = !DILocation(line: 129, column: 1, scope: !1156)
!1179 = distinct !DISubprogram(name: "DMA_FullSize_CheckIdleChannel", scope: !3, file: !3, line: 131, type: !1180, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!128, !134, !128}
!1182 = !{!1183, !1184, !1185, !1186, !1187}
!1183 = !DILocalVariable(name: "DMA_CODE", arg: 1, scope: !1179, file: !3, line: 131, type: !134)
!1184 = !DILocalVariable(name: "channel", arg: 2, scope: !1179, file: !3, line: 131, type: !128)
!1185 = !DILocalVariable(name: "index", scope: !1179, file: !3, line: 133, type: !174)
!1186 = !DILocalVariable(name: "handle", scope: !1179, file: !3, line: 134, type: !174)
!1187 = !DILocalVariable(name: "flags", scope: !1179, file: !3, line: 135, type: !748)
!1188 = !DILocation(line: 0, scope: !1179)
!1189 = !DILocation(line: 470, column: 3, scope: !1110, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 137, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 137, column: 5)
!1192 = !DILocation(line: 0, scope: !1110, inlinedAt: !1190)
!1193 = !DILocation(line: 330, column: 3, scope: !1121, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 137, column: 5, scope: !1191)
!1195 = !DILocation(line: 139, column: 21, scope: !1179)
!1196 = !DILocation(line: 140, column: 15, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 140, column: 9)
!1198 = !DILocation(line: 140, column: 9, scope: !1179)
!1199 = !DILocation(line: 140, column: 9, scope: !1197)
!1200 = !DILocation(line: 144, column: 10, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 144, column: 9)
!1202 = !DILocation(line: 144, column: 37, scope: !1201)
!1203 = !DILocation(line: 144, column: 29, scope: !1201)
!1204 = !DILocation(line: 144, column: 48, scope: !1201)
!1205 = !DILocation(line: 144, column: 9, scope: !1179)
!1206 = !DILocation(line: 148, column: 31, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 144, column: 54)
!1208 = !DILocation(line: 148, column: 28, scope: !1207)
!1209 = !DILocation(line: 150, column: 5, scope: !1207)
!1210 = !DILocation(line: 0, scope: !1142, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 153, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 153, column: 5)
!1213 = !DILocation(line: 483, column: 3, scope: !1142, inlinedAt: !1211)
!1214 = !DILocation(line: 156, column: 15, scope: !1179)
!1215 = !DILocation(line: 156, column: 22, scope: !1179)
!1216 = !DILocation(line: 156, column: 5, scope: !1179)
!1217 = !DILocation(line: 156, column: 27, scope: !1179)
!1218 = !DILocation(line: 157, column: 5, scope: !1179)
!1219 = !DILocation(line: 158, column: 1, scope: !1179)
!1220 = distinct !DISubprogram(name: "DMA_FullSize_FreeChannel", scope: !3, file: !3, line: 160, type: !1085, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1221 = !{!1222, !1223}
!1222 = !DILocalVariable(name: "handle", arg: 1, scope: !1220, file: !3, line: 160, type: !128)
!1223 = !DILocalVariable(name: "flags", scope: !1220, file: !3, line: 162, type: !748)
!1224 = !DILocation(line: 0, scope: !1220)
!1225 = !DILocation(line: 470, column: 3, scope: !1110, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 164, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 164, column: 5)
!1228 = !DILocation(line: 0, scope: !1110, inlinedAt: !1226)
!1229 = !DILocation(line: 330, column: 3, scope: !1121, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 164, column: 5, scope: !1227)
!1231 = !DILocation(line: 165, column: 36, scope: !1220)
!1232 = !DILocation(line: 165, column: 33, scope: !1220)
!1233 = !DILocation(line: 165, column: 24, scope: !1220)
!1234 = !DILocation(line: 167, column: 5, scope: !1220)
!1235 = !DILocation(line: 169, column: 22, scope: !1220)
!1236 = !DILocation(line: 169, column: 5, scope: !1220)
!1237 = !DILocation(line: 169, column: 27, scope: !1220)
!1238 = !DILocation(line: 0, scope: !1142, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 171, column: 5, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 171, column: 5)
!1241 = !DILocation(line: 483, column: 3, scope: !1142, inlinedAt: !1239)
!1242 = !DILocation(line: 173, column: 1, scope: !1220)
!1243 = distinct !DISubprogram(name: "DMA_Config_Internal", scope: !3, file: !3, line: 175, type: !1244, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !128, !1246, !126, !126, !128, !126}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_INPUT", file: !6, line: 195, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 189, size: 160, elements: !1249)
!1249 = !{!1250, !1252, !1254, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1248, file: !6, line: 190, baseType: !1251, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Type", file: !6, line: 122, baseType: !34)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1248, file: !6, line: 191, baseType: !1253, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TranSize", file: !6, line: 114, baseType: !41)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1248, file: !6, line: 192, baseType: !136, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "menu", scope: !1248, file: !6, line: 193, baseType: !161, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1248, file: !6, line: 194, baseType: !180, size: 32, offset: 128)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1258 = !DILocalVariable(name: "dma_no", arg: 1, scope: !1243, file: !3, line: 175, type: !128)
!1259 = !DILocalVariable(name: "dma_menu", arg: 2, scope: !1243, file: !3, line: 176, type: !1246)
!1260 = !DILocalVariable(name: "fullsize", arg: 3, scope: !1243, file: !3, line: 177, type: !126)
!1261 = !DILocalVariable(name: "b2w", arg: 4, scope: !1243, file: !3, line: 178, type: !126)
!1262 = !DILocalVariable(name: "limit", arg: 5, scope: !1243, file: !3, line: 178, type: !128)
!1263 = !DILocalVariable(name: "start", arg: 6, scope: !1243, file: !3, line: 179, type: !126)
!1264 = !DILocalVariable(name: "dma_con", scope: !1243, file: !3, line: 181, type: !114)
!1265 = !DILocalVariable(name: "temp", scope: !1243, file: !3, line: 182, type: !114)
!1266 = !DILocation(line: 0, scope: !1243)
!1267 = !DILocation(line: 184, column: 5, scope: !1243)
!1268 = !DILocation(line: 186, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 186, column: 9)
!1270 = !DILocation(line: 186, column: 9, scope: !1243)
!1271 = !DILocation(line: 187, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 187, column: 9)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 187, column: 9)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 186, column: 35)
!1275 = distinct !{!1275, !1271, !1271}
!1276 = !DILocation(line: 190, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 190, column: 9)
!1278 = !DILocation(line: 190, column: 9, scope: !1243)
!1279 = !DILocation(line: 191, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 191, column: 9)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 191, column: 9)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 190, column: 34)
!1283 = distinct !{!1283, !1279, !1279}
!1284 = !DILocation(line: 194, column: 5, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 194, column: 5)
!1286 = !DILocation(line: 194, column: 5, scope: !1243)
!1287 = !DILocation(line: 194, column: 5, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 194, column: 5)
!1289 = distinct !{!1289, !1287, !1287}
!1290 = !DILocation(line: 196, column: 9, scope: !1243)
!1291 = !DILocation(line: 197, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 197, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 197, column: 9)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 196, column: 31)
!1295 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 196, column: 9)
!1296 = distinct !{!1296, !1291, !1291}
!1297 = !DILocation(line: 200, column: 5, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 200, column: 5)
!1299 = !DILocation(line: 200, column: 5, scope: !1243)
!1300 = !DILocation(line: 200, column: 5, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 200, column: 5)
!1302 = distinct !{!1302, !1300, !1300}
!1303 = !DILocation(line: 202, column: 5, scope: !1243)
!1304 = !DILocation(line: 204, column: 23, scope: !1243)
!1305 = !DILocation(line: 204, column: 5, scope: !1243)
!1306 = !DILocation(line: 0, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 209, column: 17)
!1308 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 204, column: 29)
!1309 = !DILocation(line: 209, column: 17, scope: !1308)
!1310 = !DILocation(line: 212, column: 71, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 211, column: 13)
!1312 = !DILocation(line: 212, column: 78, scope: !1311)
!1313 = !DILocation(line: 219, column: 42, scope: !1308)
!1314 = !DILocation(line: 224, column: 21, scope: !1308)
!1315 = !DILocation(line: 228, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 226, column: 39)
!1317 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 226, column: 17)
!1318 = !DILocation(line: 230, column: 17, scope: !1316)
!1319 = !DILocation(line: 231, column: 13, scope: !1316)
!1320 = !DILocation(line: 216, column: 62, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 215, column: 13)
!1322 = !DILocation(line: 216, column: 69, scope: !1321)
!1323 = !DILocation(line: 236, column: 17, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 231, column: 20)
!1325 = !DILocation(line: 239, column: 21, scope: !1324)
!1326 = !DILocation(line: 0, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 250, column: 17)
!1328 = !DILocation(line: 250, column: 17, scope: !1308)
!1329 = !DILocation(line: 253, column: 75, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 252, column: 13)
!1331 = !DILocation(line: 253, column: 82, scope: !1330)
!1332 = !DILocation(line: 263, column: 21, scope: !1308)
!1333 = !DILocation(line: 267, column: 17, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 265, column: 39)
!1335 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 265, column: 17)
!1336 = !DILocation(line: 269, column: 17, scope: !1334)
!1337 = !DILocation(line: 270, column: 13, scope: !1334)
!1338 = !DILocation(line: 257, column: 66, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 256, column: 13)
!1340 = !DILocation(line: 257, column: 73, scope: !1339)
!1341 = !DILocation(line: 275, column: 17, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 270, column: 20)
!1343 = !DILocation(line: 278, column: 21, scope: !1342)
!1344 = !DILocation(line: 288, column: 13, scope: !1308)
!1345 = !DILocation(line: 290, column: 13, scope: !1308)
!1346 = !DILocation(line: 294, column: 13, scope: !1308)
!1347 = !DILocation(line: 0, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 299, column: 17)
!1349 = !DILocation(line: 299, column: 17, scope: !1308)
!1350 = !DILocation(line: 302, column: 84, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 301, column: 13)
!1352 = !DILocation(line: 302, column: 91, scope: !1351)
!1353 = !DILocation(line: 314, column: 21, scope: !1308)
!1354 = !DILocation(line: 318, column: 17, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 316, column: 39)
!1356 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 316, column: 17)
!1357 = !DILocation(line: 323, column: 17, scope: !1355)
!1358 = !DILocation(line: 326, column: 17, scope: !1355)
!1359 = !DILocation(line: 328, column: 17, scope: !1355)
!1360 = !DILocation(line: 329, column: 13, scope: !1355)
!1361 = !DILocation(line: 306, column: 75, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 305, column: 13)
!1363 = !DILocation(line: 306, column: 82, scope: !1362)
!1364 = !DILocation(line: 331, column: 17, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 329, column: 20)
!1366 = !DILocation(line: 338, column: 17, scope: !1365)
!1367 = !DILocation(line: 340, column: 17, scope: !1365)
!1368 = !DILocation(line: 343, column: 21, scope: !1365)
!1369 = !DILocation(line: 0, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 354, column: 17)
!1371 = !DILocation(line: 354, column: 17, scope: !1308)
!1372 = !DILocation(line: 357, column: 84, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 356, column: 13)
!1374 = !DILocation(line: 357, column: 91, scope: !1373)
!1375 = !DILocation(line: 371, column: 21, scope: !1308)
!1376 = !DILocation(line: 375, column: 17, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 373, column: 39)
!1378 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 373, column: 17)
!1379 = !DILocation(line: 380, column: 17, scope: !1377)
!1380 = !DILocation(line: 383, column: 17, scope: !1377)
!1381 = !DILocation(line: 385, column: 17, scope: !1377)
!1382 = !DILocation(line: 386, column: 13, scope: !1377)
!1383 = !DILocation(line: 361, column: 75, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 360, column: 13)
!1385 = !DILocation(line: 361, column: 82, scope: !1384)
!1386 = !DILocation(line: 388, column: 17, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 386, column: 20)
!1388 = !DILocation(line: 395, column: 17, scope: !1387)
!1389 = !DILocation(line: 397, column: 17, scope: !1387)
!1390 = !DILocation(line: 400, column: 21, scope: !1387)
!1391 = !DILocation(line: 410, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 410, column: 13)
!1393 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 410, column: 13)
!1394 = distinct !{!1394, !1391, !1391}
!1395 = !DILocation(line: 0, scope: !1308)
!1396 = !DILocation(line: 415, column: 23, scope: !1243)
!1397 = !DILocation(line: 415, column: 5, scope: !1243)
!1398 = !DILocation(line: 419, column: 27, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 419, column: 17)
!1400 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 415, column: 29)
!1401 = !DILocation(line: 419, column: 32, scope: !1399)
!1402 = !DILocation(line: 419, column: 17, scope: !1400)
!1403 = !DILocation(line: 421, column: 47, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 421, column: 21)
!1405 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 419, column: 47)
!1406 = !DILocation(line: 421, column: 55, scope: !1404)
!1407 = !{i8 0, i8 2}
!1408 = !DILocation(line: 421, column: 79, scope: !1404)
!1409 = !DILocation(line: 422, column: 59, scope: !1404)
!1410 = !DILocation(line: 422, column: 65, scope: !1404)
!1411 = !DILocation(line: 421, column: 21, scope: !1405)
!1412 = !DILocation(line: 425, column: 29, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 424, column: 17)
!1414 = !DILocation(line: 426, column: 17, scope: !1413)
!1415 = !DILocation(line: 429, column: 66, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 428, column: 26)
!1417 = !DILocation(line: 428, column: 26, scope: !1404)
!1418 = !DILocation(line: 432, column: 29, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 431, column: 17)
!1420 = !DILocation(line: 433, column: 17, scope: !1419)
!1421 = !DILocation(line: 436, column: 66, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 435, column: 26)
!1423 = !DILocation(line: 435, column: 26, scope: !1416)
!1424 = !DILocation(line: 447, column: 27, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 447, column: 17)
!1426 = !DILocation(line: 447, column: 32, scope: !1425)
!1427 = !DILocation(line: 447, column: 17, scope: !1400)
!1428 = !DILocation(line: 449, column: 47, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 449, column: 21)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 447, column: 47)
!1431 = !DILocation(line: 449, column: 55, scope: !1429)
!1432 = !DILocation(line: 449, column: 79, scope: !1429)
!1433 = !DILocation(line: 450, column: 59, scope: !1429)
!1434 = !DILocation(line: 450, column: 65, scope: !1429)
!1435 = !DILocation(line: 449, column: 21, scope: !1430)
!1436 = !DILocation(line: 453, column: 29, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 452, column: 17)
!1438 = !DILocation(line: 454, column: 17, scope: !1437)
!1439 = !DILocation(line: 457, column: 66, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 456, column: 26)
!1441 = !DILocation(line: 456, column: 26, scope: !1429)
!1442 = !DILocation(line: 464, column: 21, scope: !1400)
!1443 = !DILocation(line: 466, column: 13, scope: !1400)
!1444 = !DILocation(line: 470, column: 27, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 470, column: 17)
!1446 = !DILocation(line: 470, column: 32, scope: !1445)
!1447 = !DILocation(line: 470, column: 17, scope: !1400)
!1448 = !DILocation(line: 472, column: 47, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 472, column: 21)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 470, column: 47)
!1451 = !DILocation(line: 472, column: 55, scope: !1449)
!1452 = !DILocation(line: 472, column: 79, scope: !1449)
!1453 = !DILocation(line: 473, column: 59, scope: !1449)
!1454 = !DILocation(line: 473, column: 65, scope: !1449)
!1455 = !DILocation(line: 472, column: 21, scope: !1450)
!1456 = !DILocation(line: 480, column: 21, scope: !1400)
!1457 = !DILocation(line: 482, column: 13, scope: !1400)
!1458 = !DILocation(line: 486, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 486, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 486, column: 13)
!1461 = distinct !{!1461, !1458, !1458}
!1462 = !DILocation(line: 491, column: 19, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 491, column: 9)
!1464 = !DILocation(line: 491, column: 28, scope: !1463)
!1465 = !DILocation(line: 491, column: 9, scope: !1243)
!1466 = !DILocation(line: 493, column: 17, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 491, column: 37)
!1468 = !DILocation(line: 495, column: 9, scope: !1467)
!1469 = !DILocation(line: 495, column: 35, scope: !1467)
!1470 = !DILocation(line: 496, column: 5, scope: !1467)
!1471 = !DILocation(line: 498, column: 5, scope: !1243)
!1472 = !DILocation(line: 500, column: 5, scope: !1243)
!1473 = !DILocation(line: 502, column: 9, scope: !1243)
!1474 = !DILocation(line: 504, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 502, column: 16)
!1476 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 502, column: 9)
!1477 = !DILocation(line: 505, column: 5, scope: !1475)
!1478 = !DILocation(line: 506, column: 1, scope: !1243)
!1479 = distinct !DISubprogram(name: "DMA_Clock_Enable", scope: !3, file: !3, line: 912, type: !1085, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1480)
!1480 = !{!1481}
!1481 = !DILocalVariable(name: "channel", arg: 1, scope: !1479, file: !3, line: 912, type: !128)
!1482 = !DILocation(line: 0, scope: !1479)
!1483 = !DILocation(line: 914, column: 59, scope: !1479)
!1484 = !DILocation(line: 914, column: 67, scope: !1479)
!1485 = !DILocation(line: 914, column: 55, scope: !1479)
!1486 = !DILocation(line: 914, column: 51, scope: !1479)
!1487 = !DILocation(line: 915, column: 1, scope: !1479)
!1488 = distinct !DISubprogram(name: "DMA_Register", scope: !3, file: !3, line: 514, type: !1489, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!53, !128, !179}
!1491 = !{!1492, !1493}
!1492 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1488, file: !3, line: 514, type: !128)
!1493 = !DILocalVariable(name: "handler", arg: 2, scope: !1488, file: !3, line: 514, type: !179)
!1494 = !DILocation(line: 0, scope: !1488)
!1495 = !DILocation(line: 516, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 516, column: 9)
!1497 = !DILocation(line: 516, column: 20, scope: !1496)
!1498 = !DILocation(line: 517, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 516, column: 49)
!1500 = !DILocation(line: 518, column: 9, scope: !1499)
!1501 = !DILocation(line: 521, column: 26, scope: !1488)
!1502 = !DILocation(line: 521, column: 5, scope: !1488)
!1503 = !DILocation(line: 521, column: 31, scope: !1488)
!1504 = !DILocation(line: 523, column: 5, scope: !1488)
!1505 = !DILocation(line: 524, column: 1, scope: !1488)
!1506 = distinct !DISubprogram(name: "DMA_UnRegister", scope: !3, file: !3, line: 526, type: !1507, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!53, !128}
!1509 = !{!1510}
!1510 = !DILocalVariable(name: "dma_ch", arg: 1, scope: !1506, file: !3, line: 526, type: !128)
!1511 = !DILocation(line: 0, scope: !1506)
!1512 = !DILocation(line: 528, column: 9, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 528, column: 9)
!1514 = !DILocation(line: 528, column: 20, scope: !1513)
!1515 = !DILocation(line: 529, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 528, column: 49)
!1517 = !DILocation(line: 530, column: 9, scope: !1516)
!1518 = !DILocation(line: 532, column: 26, scope: !1506)
!1519 = !DILocation(line: 532, column: 5, scope: !1506)
!1520 = !DILocation(line: 532, column: 31, scope: !1506)
!1521 = !DILocation(line: 533, column: 5, scope: !1506)
!1522 = !DILocation(line: 534, column: 1, scope: !1506)
!1523 = distinct !DISubprogram(name: "DMA_LISR", scope: !3, file: !3, line: 536, type: !413, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527}
!1525 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1523, file: !3, line: 536, type: !330)
!1526 = !DILocalVariable(name: "index", scope: !1523, file: !3, line: 538, type: !174)
!1527 = !DILocalVariable(name: "con", scope: !1523, file: !3, line: 539, type: !114)
!1528 = !DILocation(line: 0, scope: !1523)
!1529 = !DILocation(line: 542, column: 5, scope: !1523)
!1530 = !DILocation(line: 545, column: 5, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 545, column: 5)
!1532 = !DILocation(line: 547, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 547, column: 13)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 545, column: 55)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 545, column: 5)
!1536 = !DILocation(line: 547, column: 46, scope: !1533)
!1537 = !DILocation(line: 547, column: 13, scope: !1534)
!1538 = !DILocation(line: 549, column: 22, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 547, column: 64)
!1540 = !DILocation(line: 549, column: 13, scope: !1539)
!1541 = !DILocation(line: 551, column: 13, scope: !1539)
!1542 = !DILocation(line: 553, column: 13, scope: !1539)
!1543 = !DILocation(line: 553, column: 20, scope: !1539)
!1544 = distinct !{!1544, !1542, !1545}
!1545 = !DILocation(line: 553, column: 48, scope: !1539)
!1546 = !DILocation(line: 554, column: 13, scope: !1539)
!1547 = !DILocation(line: 555, column: 13, scope: !1539)
!1548 = !DILocation(line: 557, column: 9, scope: !1539)
!1549 = !DILocation(line: 545, column: 27, scope: !1535)
!1550 = distinct !{!1550, !1530, !1551}
!1551 = !DILocation(line: 558, column: 5, scope: !1531)
!1552 = !DILocation(line: 562, column: 15, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 560, column: 68)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 560, column: 5)
!1555 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 560, column: 5)
!1556 = !DILocation(line: 564, column: 13, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 564, column: 13)
!1558 = !DILocation(line: 564, column: 42, scope: !1557)
!1559 = !DILocation(line: 564, column: 13, scope: !1553)
!1560 = !DILocation(line: 566, column: 25, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 564, column: 60)
!1562 = !DILocation(line: 566, column: 13, scope: !1561)
!1563 = !DILocation(line: 569, column: 25, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 569, column: 25)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 566, column: 32)
!1566 = !DILocation(line: 569, column: 78, scope: !1564)
!1567 = !DILocation(line: 569, column: 25, scope: !1565)
!1568 = !DILocation(line: 574, column: 25, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 574, column: 25)
!1570 = !DILocation(line: 574, column: 78, scope: !1569)
!1571 = !DILocation(line: 574, column: 25, scope: !1565)
!1572 = !DILocation(line: 579, column: 25, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 579, column: 25)
!1574 = !DILocation(line: 579, column: 79, scope: !1573)
!1575 = !DILocation(line: 579, column: 25, scope: !1565)
!1576 = !DILocation(line: 584, column: 25, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 584, column: 25)
!1578 = !DILocation(line: 584, column: 79, scope: !1577)
!1579 = !DILocation(line: 584, column: 25, scope: !1565)
!1580 = !DILocation(line: 589, column: 25, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 589, column: 25)
!1582 = !DILocation(line: 589, column: 79, scope: !1581)
!1583 = !DILocation(line: 589, column: 25, scope: !1565)
!1584 = !DILocation(line: 594, column: 25, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 594, column: 25)
!1586 = !DILocation(line: 594, column: 79, scope: !1585)
!1587 = !DILocation(line: 594, column: 25, scope: !1565)
!1588 = !DILocation(line: 599, column: 25, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 599, column: 25)
!1590 = !DILocation(line: 599, column: 79, scope: !1589)
!1591 = !DILocation(line: 599, column: 25, scope: !1565)
!1592 = !DILocation(line: 604, column: 25, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 604, column: 25)
!1594 = !DILocation(line: 604, column: 79, scope: !1593)
!1595 = !DILocation(line: 604, column: 25, scope: !1565)
!1596 = !DILocation(line: 609, column: 25, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 609, column: 25)
!1598 = !DILocation(line: 609, column: 80, scope: !1597)
!1599 = !DILocation(line: 609, column: 25, scope: !1565)
!1600 = !DILocation(line: 614, column: 25, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 614, column: 25)
!1602 = !DILocation(line: 614, column: 80, scope: !1601)
!1603 = !DILocation(line: 614, column: 25, scope: !1565)
!1604 = !DILocation(line: 619, column: 25, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 619, column: 25)
!1606 = !DILocation(line: 619, column: 80, scope: !1605)
!1607 = !DILocation(line: 619, column: 25, scope: !1565)
!1608 = !DILocation(line: 624, column: 25, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 624, column: 25)
!1610 = !DILocation(line: 624, column: 80, scope: !1609)
!1611 = !DILocation(line: 624, column: 25, scope: !1565)
!1612 = !DILocation(line: 629, column: 25, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 629, column: 25)
!1614 = !DILocation(line: 629, column: 80, scope: !1613)
!1615 = !DILocation(line: 629, column: 25, scope: !1565)
!1616 = !DILocation(line: 634, column: 25, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 634, column: 25)
!1618 = !DILocation(line: 634, column: 78, scope: !1617)
!1619 = !DILocation(line: 634, column: 25, scope: !1565)
!1620 = !DILocation(line: 0, scope: !1565)
!1621 = !DILocation(line: 640, column: 13, scope: !1561)
!1622 = !DILocation(line: 641, column: 9, scope: !1561)
!1623 = !DILocation(line: 560, column: 64, scope: !1554)
!1624 = !DILocation(line: 560, column: 40, scope: !1554)
!1625 = !DILocation(line: 560, column: 5, scope: !1555)
!1626 = distinct !{!1626, !1625, !1627}
!1627 = !DILocation(line: 642, column: 5, scope: !1555)
!1628 = !DILocation(line: 646, column: 15, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 644, column: 68)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 644, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 644, column: 5)
!1632 = !DILocation(line: 648, column: 13, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 648, column: 13)
!1634 = !DILocation(line: 648, column: 42, scope: !1633)
!1635 = !DILocation(line: 648, column: 13, scope: !1629)
!1636 = !DILocation(line: 650, column: 25, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 648, column: 62)
!1638 = !DILocation(line: 650, column: 13, scope: !1637)
!1639 = !DILocation(line: 653, column: 25, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 653, column: 25)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 650, column: 32)
!1642 = !DILocation(line: 653, column: 81, scope: !1640)
!1643 = !DILocation(line: 653, column: 25, scope: !1641)
!1644 = !DILocation(line: 658, column: 25, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 658, column: 25)
!1646 = !DILocation(line: 658, column: 81, scope: !1645)
!1647 = !DILocation(line: 658, column: 25, scope: !1641)
!1648 = !DILocation(line: 663, column: 25, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 663, column: 25)
!1650 = !DILocation(line: 663, column: 82, scope: !1649)
!1651 = !DILocation(line: 663, column: 25, scope: !1641)
!1652 = !DILocation(line: 668, column: 25, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 668, column: 25)
!1654 = !DILocation(line: 668, column: 82, scope: !1653)
!1655 = !DILocation(line: 668, column: 25, scope: !1641)
!1656 = !DILocation(line: 673, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 673, column: 25)
!1658 = !DILocation(line: 673, column: 82, scope: !1657)
!1659 = !DILocation(line: 673, column: 25, scope: !1641)
!1660 = !DILocation(line: 678, column: 25, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 678, column: 25)
!1662 = !DILocation(line: 678, column: 82, scope: !1661)
!1663 = !DILocation(line: 678, column: 25, scope: !1641)
!1664 = !DILocation(line: 683, column: 25, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 683, column: 25)
!1666 = !DILocation(line: 683, column: 82, scope: !1665)
!1667 = !DILocation(line: 683, column: 25, scope: !1641)
!1668 = !DILocation(line: 688, column: 25, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 688, column: 25)
!1670 = !DILocation(line: 688, column: 82, scope: !1669)
!1671 = !DILocation(line: 688, column: 25, scope: !1641)
!1672 = !DILocation(line: 693, column: 25, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 693, column: 25)
!1674 = !DILocation(line: 693, column: 83, scope: !1673)
!1675 = !DILocation(line: 693, column: 25, scope: !1641)
!1676 = !DILocation(line: 698, column: 25, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 698, column: 25)
!1678 = !DILocation(line: 698, column: 83, scope: !1677)
!1679 = !DILocation(line: 698, column: 25, scope: !1641)
!1680 = !DILocation(line: 703, column: 25, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 703, column: 25)
!1682 = !DILocation(line: 703, column: 83, scope: !1681)
!1683 = !DILocation(line: 703, column: 25, scope: !1641)
!1684 = !DILocation(line: 708, column: 25, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 708, column: 25)
!1686 = !DILocation(line: 708, column: 83, scope: !1685)
!1687 = !DILocation(line: 708, column: 25, scope: !1641)
!1688 = !DILocation(line: 713, column: 25, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 713, column: 25)
!1690 = !DILocation(line: 713, column: 83, scope: !1689)
!1691 = !DILocation(line: 713, column: 25, scope: !1641)
!1692 = !DILocation(line: 718, column: 25, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 718, column: 25)
!1694 = !DILocation(line: 718, column: 81, scope: !1693)
!1695 = !DILocation(line: 718, column: 25, scope: !1641)
!1696 = !DILocation(line: 0, scope: !1641)
!1697 = !DILocation(line: 724, column: 13, scope: !1637)
!1698 = !DILocation(line: 725, column: 9, scope: !1637)
!1699 = !DILocation(line: 644, column: 64, scope: !1630)
!1700 = !DILocation(line: 644, column: 40, scope: !1630)
!1701 = !DILocation(line: 644, column: 5, scope: !1631)
!1702 = distinct !{!1702, !1701, !1703}
!1703 = !DILocation(line: 726, column: 5, scope: !1631)
!1704 = !DILocation(line: 728, column: 5, scope: !1523)
!1705 = !DILocation(line: 729, column: 1, scope: !1523)
!1706 = distinct !DISubprogram(name: "DMA_Clock_Disable", scope: !3, file: !3, line: 917, type: !1085, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "channel", arg: 1, scope: !1706, file: !3, line: 917, type: !128)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 919, column: 59, scope: !1706)
!1711 = !DILocation(line: 919, column: 67, scope: !1706)
!1712 = !DILocation(line: 919, column: 55, scope: !1706)
!1713 = !DILocation(line: 919, column: 51, scope: !1706)
!1714 = !DILocation(line: 920, column: 1, scope: !1706)
!1715 = distinct !DISubprogram(name: "DMA_Init", scope: !3, file: !3, line: 732, type: !181, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1716 = !{!1717}
!1717 = !DILocalVariable(name: "index", scope: !1715, file: !3, line: 734, type: !174)
!1718 = !DILocation(line: 0, scope: !1715)
!1719 = !DILocation(line: 739, column: 5, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 739, column: 5)
!1721 = !DILocation(line: 740, column: 41, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 740, column: 13)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 739, column: 55)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 739, column: 5)
!1725 = !DILocation(line: 740, column: 33, scope: !1722)
!1726 = !DILocation(line: 740, column: 52, scope: !1722)
!1727 = !DILocation(line: 740, column: 13, scope: !1723)
!1728 = !DILocation(line: 741, column: 13, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 740, column: 58)
!1730 = !DILocation(line: 741, column: 30, scope: !1729)
!1731 = !DILocation(line: 742, column: 9, scope: !1729)
!1732 = !DILocation(line: 739, column: 51, scope: !1724)
!1733 = !DILocation(line: 739, column: 27, scope: !1724)
!1734 = distinct !{!1734, !1719, !1735}
!1735 = !DILocation(line: 743, column: 5, scope: !1720)
!1736 = !DILocation(line: 748, column: 32, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 746, column: 55)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 746, column: 5)
!1739 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 746, column: 5)
!1740 = !DILocation(line: 748, column: 9, scope: !1737)
!1741 = !DILocation(line: 746, column: 27, scope: !1738)
!1742 = !DILocation(line: 746, column: 5, scope: !1739)
!1743 = distinct !{!1743, !1742, !1744}
!1744 = !DILocation(line: 749, column: 5, scope: !1739)
!1745 = !DILocation(line: 752, column: 5, scope: !1715)
!1746 = !DILocation(line: 753, column: 5, scope: !1715)
!1747 = !DILocation(line: 754, column: 5, scope: !1715)
!1748 = !DILocation(line: 755, column: 1, scope: !1715)
!1749 = distinct !DISubprogram(name: "dma_set_channel_busy", scope: !3, file: !3, line: 757, type: !1750, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1752)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!128, !128}
!1752 = !{!1753, !1754, !1755, !1756}
!1753 = !DILocalVariable(name: "channel", arg: 1, scope: !1749, file: !3, line: 757, type: !128)
!1754 = !DILocalVariable(name: "channel_index", scope: !1749, file: !3, line: 759, type: !128)
!1755 = !DILocalVariable(name: "flags", scope: !1749, file: !3, line: 760, type: !748)
!1756 = !DILocalVariable(name: "index", scope: !1749, file: !3, line: 764, type: !128)
!1757 = !DILocation(line: 0, scope: !1749)
!1758 = !DILocation(line: 764, column: 29, scope: !1749)
!1759 = !DILocation(line: 470, column: 3, scope: !1110, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 766, column: 5, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 766, column: 5)
!1762 = !DILocation(line: 0, scope: !1110, inlinedAt: !1760)
!1763 = !DILocation(line: 330, column: 3, scope: !1121, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 766, column: 5, scope: !1761)
!1765 = !DILocation(line: 768, column: 9, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 768, column: 9)
!1767 = !DILocation(line: 768, column: 33, scope: !1766)
!1768 = !DILocation(line: 768, column: 9, scope: !1749)
!1769 = !DILocation(line: 769, column: 33, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 768, column: 43)
!1771 = !DILocation(line: 770, column: 9, scope: !1770)
!1772 = !DILocation(line: 0, scope: !1142, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 774, column: 5, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 774, column: 5)
!1775 = !DILocation(line: 483, column: 3, scope: !1142, inlinedAt: !1773)
!1776 = !DILocation(line: 776, column: 5, scope: !1749)
!1777 = !DILocation(line: 777, column: 5, scope: !1749)
!1778 = !DILocation(line: 778, column: 5, scope: !1749)
!1779 = !DILocation(line: 779, column: 5, scope: !1749)
!1780 = !DILocation(line: 781, column: 1, scope: !1749)
!1781 = distinct !DISubprogram(name: "dma_set_channel_idle", scope: !3, file: !3, line: 783, type: !1750, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DILocalVariable(name: "channel", arg: 1, scope: !1781, file: !3, line: 783, type: !128)
!1784 = !DILocalVariable(name: "flags", scope: !1781, file: !3, line: 785, type: !748)
!1785 = !DILocalVariable(name: "index", scope: !1781, file: !3, line: 786, type: !128)
!1786 = !DILocation(line: 0, scope: !1781)
!1787 = !DILocation(line: 786, column: 29, scope: !1781)
!1788 = !DILocation(line: 787, column: 5, scope: !1781)
!1789 = !DILocation(line: 470, column: 3, scope: !1110, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 788, column: 5, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 788, column: 5)
!1792 = !DILocation(line: 0, scope: !1110, inlinedAt: !1790)
!1793 = !DILocation(line: 330, column: 3, scope: !1121, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 788, column: 5, scope: !1791)
!1795 = !DILocation(line: 789, column: 5, scope: !1781)
!1796 = !DILocation(line: 789, column: 29, scope: !1781)
!1797 = !DILocation(line: 790, column: 33, scope: !1781)
!1798 = !DILocation(line: 790, column: 24, scope: !1781)
!1799 = !DILocation(line: 791, column: 21, scope: !1781)
!1800 = !DILocation(line: 791, column: 5, scope: !1781)
!1801 = !DILocation(line: 791, column: 26, scope: !1781)
!1802 = !DILocation(line: 0, scope: !1142, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 792, column: 5, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 792, column: 5)
!1805 = !DILocation(line: 483, column: 3, scope: !1142, inlinedAt: !1803)
!1806 = !DILocation(line: 794, column: 5, scope: !1781)
!1807 = distinct !DISubprogram(name: "DMA_Vfifo_init", scope: !3, file: !3, line: 798, type: !181, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1808)
!1808 = !{!1809}
!1809 = !DILocalVariable(name: "dma_con", scope: !1807, file: !3, line: 800, type: !114)
!1810 = !DILocation(line: 0, scope: !1807)
!1811 = !DILocation(line: 802, column: 5, scope: !1807)
!1812 = !DILocation(line: 804, column: 5, scope: !1807)
!1813 = !DILocation(line: 806, column: 5, scope: !1807)
!1814 = !DILocation(line: 808, column: 5, scope: !1807)
!1815 = !DILocation(line: 810, column: 5, scope: !1807)
!1816 = !DILocation(line: 812, column: 5, scope: !1807)
!1817 = !DILocation(line: 814, column: 5, scope: !1807)
!1818 = !DILocation(line: 816, column: 5, scope: !1807)
!1819 = !DILocation(line: 818, column: 5, scope: !1807)
!1820 = !DILocation(line: 820, column: 5, scope: !1807)
!1821 = !DILocation(line: 822, column: 5, scope: !1807)
!1822 = !DILocation(line: 824, column: 5, scope: !1807)
!1823 = !DILocation(line: 826, column: 5, scope: !1807)
!1824 = !DILocation(line: 828, column: 5, scope: !1807)
!1825 = !DILocation(line: 830, column: 5, scope: !1807)
!1826 = !DILocation(line: 832, column: 5, scope: !1807)
!1827 = !DILocation(line: 834, column: 5, scope: !1807)
!1828 = !DILocation(line: 836, column: 5, scope: !1807)
!1829 = !DILocation(line: 838, column: 5, scope: !1807)
!1830 = !DILocation(line: 840, column: 5, scope: !1807)
!1831 = !DILocation(line: 842, column: 5, scope: !1807)
!1832 = !DILocation(line: 844, column: 5, scope: !1807)
!1833 = !DILocation(line: 846, column: 5, scope: !1807)
!1834 = !DILocation(line: 848, column: 5, scope: !1807)
!1835 = !DILocation(line: 850, column: 5, scope: !1807)
!1836 = !DILocation(line: 852, column: 5, scope: !1807)
!1837 = !DILocation(line: 854, column: 5, scope: !1807)
!1838 = !DILocation(line: 856, column: 5, scope: !1807)
!1839 = !DILocation(line: 858, column: 1, scope: !1807)
!1840 = distinct !DISubprogram(name: "DMA_Vfifo_SetAdrs", scope: !3, file: !3, line: 861, type: !1841, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !136, !136, !1843, !136, !136, !136}
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !6, line: 144, baseType: !97)
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850}
!1845 = !DILocalVariable(name: "adrs", arg: 1, scope: !1840, file: !3, line: 861, type: !136)
!1846 = !DILocalVariable(name: "len", arg: 2, scope: !1840, file: !3, line: 862, type: !136)
!1847 = !DILocalVariable(name: "ch", arg: 3, scope: !1840, file: !3, line: 862, type: !1843)
!1848 = !DILocalVariable(name: "alt_len", arg: 4, scope: !1840, file: !3, line: 863, type: !136)
!1849 = !DILocalVariable(name: "dma_count", arg: 5, scope: !1840, file: !3, line: 864, type: !136)
!1850 = !DILocalVariable(name: "timeout_counter", arg: 6, scope: !1840, file: !3, line: 865, type: !136)
!1851 = !DILocation(line: 0, scope: !1840)
!1852 = !DILocation(line: 867, column: 5, scope: !1840)
!1853 = !DILocation(line: 868, column: 5, scope: !1840)
!1854 = !DILocation(line: 869, column: 5, scope: !1840)
!1855 = !DILocation(line: 870, column: 5, scope: !1840)
!1856 = !DILocation(line: 870, column: 30, scope: !1840)
!1857 = !DILocation(line: 871, column: 5, scope: !1840)
!1858 = !DILocation(line: 871, column: 27, scope: !1840)
!1859 = !DILocation(line: 872, column: 1, scope: !1840)
!1860 = distinct !DISubprogram(name: "DMA_Vfifo_Set_timeout", scope: !3, file: !3, line: 874, type: !1861, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1843, !136}
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "ch", arg: 1, scope: !1860, file: !3, line: 874, type: !1843)
!1865 = !DILocalVariable(name: "timeout_counter", arg: 2, scope: !1860, file: !3, line: 874, type: !136)
!1866 = !DILocation(line: 0, scope: !1860)
!1867 = !DILocation(line: 877, column: 5, scope: !1860)
!1868 = !DILocation(line: 877, column: 27, scope: !1860)
!1869 = !DILocation(line: 878, column: 1, scope: !1860)
!1870 = distinct !DISubprogram(name: "DMA_Vfifo_enable_interrupt", scope: !3, file: !3, line: 880, type: !1871, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1843}
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "ch", arg: 1, scope: !1870, file: !3, line: 880, type: !1843)
!1875 = !DILocation(line: 0, scope: !1870)
!1876 = !DILocation(line: 883, column: 5, scope: !1870)
!1877 = !DILocation(line: 884, column: 1, scope: !1870)
!1878 = distinct !DISubprogram(name: "DMA_Vfifo_disable_interrupt", scope: !3, file: !3, line: 886, type: !1871, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1879)
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "ch", arg: 1, scope: !1878, file: !3, line: 886, type: !1843)
!1881 = !DILocation(line: 0, scope: !1878)
!1882 = !DILocation(line: 889, column: 5, scope: !1878)
!1883 = !DILocation(line: 890, column: 1, scope: !1878)
!1884 = distinct !DISubprogram(name: "DMA_Vfifo_Flush", scope: !3, file: !3, line: 893, type: !1871, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "ch", arg: 1, scope: !1884, file: !3, line: 893, type: !1843)
!1887 = !DILocation(line: 0, scope: !1884)
!1888 = !DILocation(line: 895, column: 14, scope: !1884)
!1889 = !DILocation(line: 895, column: 5, scope: !1884)
!1890 = !DILocation(line: 897, column: 5, scope: !1884)
!1891 = !DILocation(line: 898, column: 1, scope: !1884)
!1892 = distinct !DISubprogram(name: "DMA_Vfifo_Register_Callback", scope: !3, file: !3, line: 900, type: !1893, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1843, !179}
!1895 = !{!1896, !1897}
!1896 = !DILocalVariable(name: "ch", arg: 1, scope: !1892, file: !3, line: 900, type: !1843)
!1897 = !DILocalVariable(name: "callback_func", arg: 2, scope: !1892, file: !3, line: 901, type: !179)
!1898 = !DILocation(line: 0, scope: !1892)
!1899 = !DILocation(line: 903, column: 28, scope: !1892)
!1900 = !DILocation(line: 903, column: 5, scope: !1892)
!1901 = !DILocation(line: 903, column: 46, scope: !1892)
!1902 = !DILocation(line: 904, column: 1, scope: !1892)
!1903 = distinct !DISubprogram(name: "DMA_Vfifo_Register_TO_Callback", scope: !3, file: !3, line: 906, type: !1893, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1904 = !{!1905, !1906}
!1905 = !DILocalVariable(name: "ch", arg: 1, scope: !1903, file: !3, line: 906, type: !1843)
!1906 = !DILocalVariable(name: "callback_func", arg: 2, scope: !1903, file: !3, line: 907, type: !179)
!1907 = !DILocation(line: 0, scope: !1903)
!1908 = !DILocation(line: 909, column: 31, scope: !1903)
!1909 = !DILocation(line: 909, column: 5, scope: !1903)
!1910 = !DILocation(line: 909, column: 49, scope: !1903)
!1911 = !DILocation(line: 910, column: 1, scope: !1903)
!1912 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !859, file: !859, line: 54, type: !1913, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !1916)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1915, !205, !229}
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 56, baseType: !53)
!1916 = !{!1917, !1918, !1919, !1921}
!1917 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1912, file: !859, line: 54, type: !205)
!1918 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1912, file: !859, line: 54, type: !229)
!1919 = !DILocalVariable(name: "no", scope: !1912, file: !859, line: 57, type: !1920)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 60, baseType: !228)
!1921 = !DILocalVariable(name: "remainder", scope: !1912, file: !859, line: 58, type: !1920)
!1922 = !DILocation(line: 0, scope: !1912)
!1923 = !DILocation(line: 59, column: 19, scope: !1912)
!1924 = !DILocation(line: 60, column: 17, scope: !1912)
!1925 = !DILocation(line: 61, column: 5, scope: !1912)
!1926 = !DILocation(line: 65, column: 27, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !859, line: 65, column: 17)
!1928 = distinct !DILexicalBlock(scope: !1912, file: !859, line: 61, column: 17)
!1929 = !DILocation(line: 0, scope: !1927)
!1930 = !DILocation(line: 65, column: 17, scope: !1928)
!1931 = !DILocation(line: 66, column: 21, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1927, file: !859, line: 65, column: 33)
!1933 = !DILocation(line: 67, column: 73, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !859, line: 66, column: 38)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !859, line: 66, column: 21)
!1936 = !DILocation(line: 67, column: 69, scope: !1934)
!1937 = !DILocation(line: 67, column: 66, scope: !1934)
!1938 = !DILocation(line: 68, column: 17, scope: !1934)
!1939 = !DILocation(line: 68, column: 28, scope: !1935)
!1940 = !DILocation(line: 69, column: 77, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !859, line: 68, column: 45)
!1942 = distinct !DILexicalBlock(scope: !1935, file: !859, line: 68, column: 28)
!1943 = !DILocation(line: 70, column: 77, scope: !1941)
!1944 = !DILocation(line: 71, column: 17, scope: !1941)
!1945 = !DILocation(line: 72, column: 77, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !859, line: 71, column: 45)
!1947 = distinct !DILexicalBlock(scope: !1942, file: !859, line: 71, column: 28)
!1948 = !DILocation(line: 73, column: 77, scope: !1946)
!1949 = !DILocation(line: 74, column: 17, scope: !1946)
!1950 = !DILocation(line: 75, column: 79, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !859, line: 74, column: 45)
!1952 = distinct !DILexicalBlock(scope: !1947, file: !859, line: 74, column: 28)
!1953 = !DILocation(line: 76, column: 79, scope: !1951)
!1954 = !DILocation(line: 77, column: 17, scope: !1951)
!1955 = !DILocation(line: 78, column: 79, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !859, line: 77, column: 45)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !859, line: 77, column: 28)
!1958 = !DILocation(line: 79, column: 79, scope: !1956)
!1959 = !DILocation(line: 80, column: 17, scope: !1956)
!1960 = !DILocation(line: 81, column: 79, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !859, line: 80, column: 45)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !859, line: 80, column: 28)
!1963 = !DILocation(line: 82, column: 79, scope: !1961)
!1964 = !DILocation(line: 83, column: 17, scope: !1961)
!1965 = !DILocation(line: 85, column: 17, scope: !1932)
!1966 = !DILocation(line: 86, column: 13, scope: !1932)
!1967 = !DILocation(line: 88, column: 21, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1927, file: !859, line: 86, column: 20)
!1969 = !DILocation(line: 89, column: 72, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !859, line: 88, column: 38)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !859, line: 88, column: 21)
!1972 = !DILocation(line: 89, column: 66, scope: !1970)
!1973 = !DILocation(line: 90, column: 17, scope: !1970)
!1974 = !DILocation(line: 90, column: 28, scope: !1971)
!1975 = !DILocation(line: 91, column: 77, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !859, line: 90, column: 45)
!1977 = distinct !DILexicalBlock(scope: !1971, file: !859, line: 90, column: 28)
!1978 = !DILocation(line: 92, column: 17, scope: !1976)
!1979 = !DILocation(line: 93, column: 77, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !859, line: 92, column: 45)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !859, line: 92, column: 28)
!1982 = !DILocation(line: 94, column: 17, scope: !1980)
!1983 = !DILocation(line: 95, column: 79, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !859, line: 94, column: 45)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !859, line: 94, column: 28)
!1986 = !DILocation(line: 96, column: 17, scope: !1984)
!1987 = !DILocation(line: 97, column: 79, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !859, line: 96, column: 45)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !859, line: 96, column: 28)
!1990 = !DILocation(line: 98, column: 17, scope: !1988)
!1991 = !DILocation(line: 99, column: 79, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !859, line: 98, column: 45)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !859, line: 98, column: 28)
!1994 = !DILocation(line: 100, column: 17, scope: !1992)
!1995 = !DILocation(line: 103, column: 17, scope: !1968)
!1996 = !DILocation(line: 109, column: 27, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1928, file: !859, line: 109, column: 17)
!1998 = !DILocation(line: 0, scope: !1997)
!1999 = !DILocation(line: 109, column: 17, scope: !1928)
!2000 = !DILocation(line: 110, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1997, file: !859, line: 109, column: 33)
!2002 = !DILocation(line: 111, column: 73, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !859, line: 110, column: 36)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !859, line: 110, column: 21)
!2005 = !DILocation(line: 111, column: 69, scope: !2003)
!2006 = !DILocation(line: 111, column: 66, scope: !2003)
!2007 = !DILocation(line: 112, column: 17, scope: !2003)
!2008 = !DILocation(line: 113, column: 79, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !859, line: 112, column: 24)
!2010 = !DILocation(line: 114, column: 79, scope: !2009)
!2011 = !DILocation(line: 117, column: 17, scope: !2001)
!2012 = !DILocation(line: 118, column: 13, scope: !2001)
!2013 = !DILocation(line: 120, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1997, file: !859, line: 118, column: 20)
!2015 = !DILocation(line: 121, column: 72, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !859, line: 120, column: 36)
!2017 = distinct !DILexicalBlock(scope: !2014, file: !859, line: 120, column: 21)
!2018 = !DILocation(line: 121, column: 66, scope: !2016)
!2019 = !DILocation(line: 122, column: 17, scope: !2016)
!2020 = !DILocation(line: 123, column: 79, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !859, line: 122, column: 24)
!2022 = !DILocation(line: 126, column: 17, scope: !2014)
!2023 = !DILocation(line: 133, column: 1, scope: !1912)
!2024 = distinct !DISubprogram(name: "halGPO_Write", scope: !859, file: !859, line: 136, type: !1913, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2025)
!2025 = !{!2026, !2027, !2028, !2029}
!2026 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2024, file: !859, line: 136, type: !205)
!2027 = !DILocalVariable(name: "writeValue", arg: 2, scope: !2024, file: !859, line: 136, type: !229)
!2028 = !DILocalVariable(name: "no", scope: !2024, file: !859, line: 138, type: !1920)
!2029 = !DILocalVariable(name: "remainder", scope: !2024, file: !859, line: 139, type: !1920)
!2030 = !DILocation(line: 0, scope: !2024)
!2031 = !DILocation(line: 140, column: 19, scope: !2024)
!2032 = !DILocation(line: 141, column: 17, scope: !2024)
!2033 = !DILocation(line: 142, column: 5, scope: !2024)
!2034 = !DILocation(line: 145, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !859, line: 145, column: 17)
!2036 = distinct !DILexicalBlock(scope: !2024, file: !859, line: 142, column: 17)
!2037 = !DILocation(line: 0, scope: !2035)
!2038 = !DILocation(line: 145, column: 17, scope: !2036)
!2039 = !DILocation(line: 146, column: 17, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !859, line: 145, column: 29)
!2041 = !DILocation(line: 147, column: 13, scope: !2040)
!2042 = !DILocation(line: 148, column: 17, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2035, file: !859, line: 147, column: 20)
!2044 = !DILocation(line: 153, column: 17, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2036, file: !859, line: 153, column: 17)
!2046 = !DILocation(line: 0, scope: !2045)
!2047 = !DILocation(line: 153, column: 17, scope: !2036)
!2048 = !DILocation(line: 154, column: 17, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !859, line: 153, column: 29)
!2050 = !DILocation(line: 155, column: 13, scope: !2049)
!2051 = !DILocation(line: 156, column: 17, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2045, file: !859, line: 155, column: 20)
!2053 = !DILocation(line: 163, column: 1, scope: !2024)
!2054 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !859, file: !859, line: 169, type: !2055, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2057)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!229, !205}
!2057 = !{!2058, !2059, !2060, !2061}
!2058 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2054, file: !859, line: 169, type: !205)
!2059 = !DILocalVariable(name: "no", scope: !2054, file: !859, line: 171, type: !1920)
!2060 = !DILocalVariable(name: "remainder", scope: !2054, file: !859, line: 172, type: !1920)
!2061 = !DILocalVariable(name: "dout", scope: !2054, file: !859, line: 175, type: !229)
!2062 = !DILocation(line: 0, scope: !2054)
!2063 = !DILocation(line: 173, column: 19, scope: !2054)
!2064 = !DILocation(line: 174, column: 17, scope: !2054)
!2065 = !DILocation(line: 177, column: 5, scope: !2054)
!2066 = !DILocation(line: 183, column: 13, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2054, file: !859, line: 177, column: 17)
!2068 = !DILocation(line: 0, scope: !2067)
!2069 = !DILocation(line: 187, column: 5, scope: !2054)
!2070 = !DILocation(line: 188, column: 1, scope: !2054)
!2071 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !859, file: !859, line: 189, type: !2055, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2072)
!2072 = !{!2073, !2074, !2075, !2076}
!2073 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2071, file: !859, line: 189, type: !205)
!2074 = !DILocalVariable(name: "no", scope: !2071, file: !859, line: 191, type: !1920)
!2075 = !DILocalVariable(name: "remainder", scope: !2071, file: !859, line: 192, type: !1920)
!2076 = !DILocalVariable(name: "din", scope: !2071, file: !859, line: 195, type: !229)
!2077 = !DILocation(line: 0, scope: !2071)
!2078 = !DILocation(line: 193, column: 19, scope: !2071)
!2079 = !DILocation(line: 194, column: 17, scope: !2071)
!2080 = !DILocation(line: 196, column: 5, scope: !2071)
!2081 = !DILocation(line: 203, column: 13, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2071, file: !859, line: 196, column: 17)
!2083 = !DILocation(line: 0, scope: !2082)
!2084 = !DILocation(line: 208, column: 5, scope: !2071)
!2085 = !DILocation(line: 209, column: 1, scope: !2071)
!2086 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !859, file: !859, line: 210, type: !2055, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2087)
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2086, file: !859, line: 210, type: !205)
!2089 = !DILocalVariable(name: "no", scope: !2086, file: !859, line: 212, type: !1920)
!2090 = !DILocalVariable(name: "remainder", scope: !2086, file: !859, line: 213, type: !1920)
!2091 = !DILocalVariable(name: "outEnable", scope: !2086, file: !859, line: 216, type: !229)
!2092 = !DILocation(line: 0, scope: !2086)
!2093 = !DILocation(line: 214, column: 19, scope: !2086)
!2094 = !DILocation(line: 215, column: 17, scope: !2086)
!2095 = !DILocation(line: 218, column: 5, scope: !2086)
!2096 = !DILocation(line: 224, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2086, file: !859, line: 218, column: 17)
!2098 = !DILocation(line: 0, scope: !2097)
!2099 = !DILocation(line: 228, column: 5, scope: !2086)
!2100 = !DILocation(line: 229, column: 1, scope: !2086)
!2101 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !859, file: !859, line: 232, type: !2102, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!1915, !205}
!2104 = !{!2105, !2106, !2107}
!2105 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2101, file: !859, line: 232, type: !205)
!2106 = !DILocalVariable(name: "no", scope: !2101, file: !859, line: 234, type: !1920)
!2107 = !DILocalVariable(name: "remainder", scope: !2101, file: !859, line: 235, type: !1920)
!2108 = !DILocation(line: 0, scope: !2101)
!2109 = !DILocation(line: 236, column: 19, scope: !2101)
!2110 = !DILocation(line: 237, column: 17, scope: !2101)
!2111 = !DILocation(line: 238, column: 5, scope: !2101)
!2112 = !DILocation(line: 239, column: 5, scope: !2101)
!2113 = !DILocation(line: 241, column: 27, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !859, line: 241, column: 17)
!2115 = distinct !DILexicalBlock(scope: !2101, file: !859, line: 239, column: 17)
!2116 = !DILocation(line: 241, column: 17, scope: !2115)
!2117 = !DILocation(line: 241, column: 17, scope: !2114)
!2118 = !DILocation(line: 242, column: 17, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2114, file: !859, line: 241, column: 34)
!2120 = !DILocation(line: 243, column: 13, scope: !2119)
!2121 = !DILocation(line: 243, column: 24, scope: !2114)
!2122 = !DILocation(line: 244, column: 73, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !859, line: 243, column: 41)
!2124 = distinct !DILexicalBlock(scope: !2114, file: !859, line: 243, column: 24)
!2125 = !DILocation(line: 245, column: 73, scope: !2123)
!2126 = !DILocation(line: 246, column: 13, scope: !2123)
!2127 = !DILocation(line: 247, column: 73, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !859, line: 246, column: 41)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !859, line: 246, column: 24)
!2130 = !DILocation(line: 248, column: 73, scope: !2128)
!2131 = !DILocation(line: 249, column: 13, scope: !2128)
!2132 = !DILocation(line: 250, column: 75, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !859, line: 249, column: 41)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !859, line: 249, column: 24)
!2135 = !DILocation(line: 251, column: 75, scope: !2133)
!2136 = !DILocation(line: 252, column: 13, scope: !2133)
!2137 = !DILocation(line: 253, column: 75, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !859, line: 252, column: 41)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !859, line: 252, column: 24)
!2140 = !DILocation(line: 254, column: 75, scope: !2138)
!2141 = !DILocation(line: 255, column: 13, scope: !2138)
!2142 = !DILocation(line: 256, column: 75, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !859, line: 255, column: 41)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !859, line: 255, column: 24)
!2145 = !DILocation(line: 257, column: 75, scope: !2143)
!2146 = !DILocation(line: 258, column: 13, scope: !2143)
!2147 = !DILocation(line: 261, column: 18, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2115, file: !859, line: 261, column: 17)
!2149 = !DILocation(line: 261, column: 17, scope: !2115)
!2150 = !DILocation(line: 262, column: 75, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !859, line: 261, column: 29)
!2152 = !DILocation(line: 263, column: 75, scope: !2151)
!2153 = !DILocation(line: 264, column: 13, scope: !2151)
!2154 = !DILocation(line: 265, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2148, file: !859, line: 264, column: 20)
!2156 = !DILocation(line: 272, column: 1, scope: !2101)
!2157 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !859, file: !859, line: 359, type: !2102, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2157, file: !859, line: 359, type: !205)
!2160 = !DILocalVariable(name: "no", scope: !2157, file: !859, line: 362, type: !1920)
!2161 = !DILocalVariable(name: "remainder", scope: !2157, file: !859, line: 363, type: !1920)
!2162 = !DILocation(line: 0, scope: !2157)
!2163 = !DILocation(line: 364, column: 19, scope: !2157)
!2164 = !DILocation(line: 365, column: 17, scope: !2157)
!2165 = !DILocation(line: 367, column: 5, scope: !2157)
!2166 = !DILocation(line: 369, column: 27, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !859, line: 369, column: 17)
!2168 = distinct !DILexicalBlock(scope: !2157, file: !859, line: 367, column: 17)
!2169 = !DILocation(line: 369, column: 17, scope: !2168)
!2170 = !DILocation(line: 369, column: 17, scope: !2167)
!2171 = !DILocation(line: 370, column: 17, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2167, file: !859, line: 369, column: 34)
!2173 = !DILocation(line: 371, column: 13, scope: !2172)
!2174 = !DILocation(line: 371, column: 24, scope: !2167)
!2175 = !DILocation(line: 372, column: 73, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !859, line: 371, column: 41)
!2177 = distinct !DILexicalBlock(scope: !2167, file: !859, line: 371, column: 24)
!2178 = !DILocation(line: 373, column: 73, scope: !2176)
!2179 = !DILocation(line: 374, column: 13, scope: !2176)
!2180 = !DILocation(line: 375, column: 73, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !859, line: 374, column: 41)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !859, line: 374, column: 24)
!2183 = !DILocation(line: 376, column: 73, scope: !2181)
!2184 = !DILocation(line: 377, column: 13, scope: !2181)
!2185 = !DILocation(line: 378, column: 75, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !859, line: 377, column: 41)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !859, line: 377, column: 24)
!2188 = !DILocation(line: 379, column: 75, scope: !2186)
!2189 = !DILocation(line: 380, column: 13, scope: !2186)
!2190 = !DILocation(line: 381, column: 75, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !859, line: 380, column: 41)
!2192 = distinct !DILexicalBlock(scope: !2187, file: !859, line: 380, column: 24)
!2193 = !DILocation(line: 382, column: 75, scope: !2191)
!2194 = !DILocation(line: 383, column: 13, scope: !2191)
!2195 = !DILocation(line: 384, column: 75, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !859, line: 383, column: 41)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !859, line: 383, column: 24)
!2198 = !DILocation(line: 385, column: 75, scope: !2196)
!2199 = !DILocation(line: 386, column: 13, scope: !2196)
!2200 = !DILocation(line: 389, column: 18, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2168, file: !859, line: 389, column: 17)
!2202 = !DILocation(line: 389, column: 17, scope: !2168)
!2203 = !DILocation(line: 390, column: 75, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !859, line: 389, column: 29)
!2205 = !DILocation(line: 391, column: 75, scope: !2204)
!2206 = !DILocation(line: 392, column: 13, scope: !2204)
!2207 = !DILocation(line: 393, column: 17, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !859, line: 392, column: 20)
!2209 = !DILocation(line: 401, column: 1, scope: !2157)
!2210 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !859, file: !859, line: 274, type: !2102, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2211)
!2211 = !{!2212, !2213, !2214}
!2212 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2210, file: !859, line: 274, type: !205)
!2213 = !DILocalVariable(name: "no", scope: !2210, file: !859, line: 276, type: !1920)
!2214 = !DILocalVariable(name: "remainder", scope: !2210, file: !859, line: 277, type: !1920)
!2215 = !DILocation(line: 0, scope: !2210)
!2216 = !DILocation(line: 278, column: 19, scope: !2210)
!2217 = !DILocation(line: 279, column: 17, scope: !2210)
!2218 = !DILocation(line: 281, column: 5, scope: !2210)
!2219 = !DILocation(line: 283, column: 27, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !859, line: 283, column: 17)
!2221 = distinct !DILexicalBlock(scope: !2210, file: !859, line: 281, column: 17)
!2222 = !DILocation(line: 283, column: 17, scope: !2221)
!2223 = !DILocation(line: 283, column: 17, scope: !2220)
!2224 = !DILocation(line: 284, column: 17, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !859, line: 283, column: 34)
!2226 = !DILocation(line: 285, column: 13, scope: !2225)
!2227 = !DILocation(line: 285, column: 24, scope: !2220)
!2228 = !DILocation(line: 286, column: 73, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !859, line: 285, column: 41)
!2230 = distinct !DILexicalBlock(scope: !2220, file: !859, line: 285, column: 24)
!2231 = !DILocation(line: 287, column: 73, scope: !2229)
!2232 = !DILocation(line: 288, column: 13, scope: !2229)
!2233 = !DILocation(line: 289, column: 73, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !859, line: 288, column: 41)
!2235 = distinct !DILexicalBlock(scope: !2230, file: !859, line: 288, column: 24)
!2236 = !DILocation(line: 290, column: 73, scope: !2234)
!2237 = !DILocation(line: 291, column: 13, scope: !2234)
!2238 = !DILocation(line: 292, column: 75, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !859, line: 291, column: 41)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !859, line: 291, column: 24)
!2241 = !DILocation(line: 293, column: 75, scope: !2239)
!2242 = !DILocation(line: 294, column: 13, scope: !2239)
!2243 = !DILocation(line: 295, column: 75, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !859, line: 294, column: 41)
!2245 = distinct !DILexicalBlock(scope: !2240, file: !859, line: 294, column: 24)
!2246 = !DILocation(line: 296, column: 75, scope: !2244)
!2247 = !DILocation(line: 297, column: 13, scope: !2244)
!2248 = !DILocation(line: 298, column: 75, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !859, line: 297, column: 41)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !859, line: 297, column: 24)
!2251 = !DILocation(line: 299, column: 75, scope: !2249)
!2252 = !DILocation(line: 300, column: 13, scope: !2249)
!2253 = !DILocation(line: 303, column: 18, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2221, file: !859, line: 303, column: 17)
!2255 = !DILocation(line: 303, column: 17, scope: !2221)
!2256 = !DILocation(line: 304, column: 75, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !859, line: 303, column: 29)
!2258 = !DILocation(line: 305, column: 75, scope: !2257)
!2259 = !DILocation(line: 306, column: 13, scope: !2257)
!2260 = !DILocation(line: 307, column: 17, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2254, file: !859, line: 306, column: 20)
!2262 = !DILocation(line: 314, column: 1, scope: !2210)
!2263 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !859, file: !859, line: 316, type: !2102, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2264)
!2264 = !{!2265, !2266, !2267}
!2265 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2263, file: !859, line: 316, type: !205)
!2266 = !DILocalVariable(name: "no", scope: !2263, file: !859, line: 318, type: !1920)
!2267 = !DILocalVariable(name: "remainder", scope: !2263, file: !859, line: 319, type: !1920)
!2268 = !DILocation(line: 0, scope: !2263)
!2269 = !DILocation(line: 320, column: 19, scope: !2263)
!2270 = !DILocation(line: 321, column: 17, scope: !2263)
!2271 = !DILocation(line: 322, column: 5, scope: !2263)
!2272 = !DILocation(line: 323, column: 5, scope: !2263)
!2273 = !DILocation(line: 325, column: 27, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !859, line: 325, column: 17)
!2275 = distinct !DILexicalBlock(scope: !2263, file: !859, line: 323, column: 17)
!2276 = !DILocation(line: 325, column: 17, scope: !2275)
!2277 = !DILocation(line: 325, column: 17, scope: !2274)
!2278 = !DILocation(line: 326, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2274, file: !859, line: 325, column: 34)
!2280 = !DILocation(line: 327, column: 13, scope: !2279)
!2281 = !DILocation(line: 327, column: 24, scope: !2274)
!2282 = !DILocation(line: 328, column: 73, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !859, line: 327, column: 41)
!2284 = distinct !DILexicalBlock(scope: !2274, file: !859, line: 327, column: 24)
!2285 = !DILocation(line: 329, column: 73, scope: !2283)
!2286 = !DILocation(line: 330, column: 13, scope: !2283)
!2287 = !DILocation(line: 331, column: 73, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !859, line: 330, column: 41)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !859, line: 330, column: 24)
!2290 = !DILocation(line: 332, column: 73, scope: !2288)
!2291 = !DILocation(line: 333, column: 13, scope: !2288)
!2292 = !DILocation(line: 334, column: 75, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !859, line: 333, column: 41)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !859, line: 333, column: 24)
!2295 = !DILocation(line: 335, column: 75, scope: !2293)
!2296 = !DILocation(line: 336, column: 13, scope: !2293)
!2297 = !DILocation(line: 337, column: 75, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !859, line: 336, column: 41)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !859, line: 336, column: 24)
!2300 = !DILocation(line: 338, column: 75, scope: !2298)
!2301 = !DILocation(line: 339, column: 13, scope: !2298)
!2302 = !DILocation(line: 340, column: 75, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !859, line: 339, column: 41)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !859, line: 339, column: 24)
!2305 = !DILocation(line: 341, column: 75, scope: !2303)
!2306 = !DILocation(line: 342, column: 13, scope: !2303)
!2307 = !DILocation(line: 345, column: 18, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2275, file: !859, line: 345, column: 17)
!2309 = !DILocation(line: 345, column: 17, scope: !2275)
!2310 = !DILocation(line: 346, column: 75, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2308, file: !859, line: 345, column: 29)
!2312 = !DILocation(line: 347, column: 75, scope: !2311)
!2313 = !DILocation(line: 348, column: 13, scope: !2311)
!2314 = !DILocation(line: 349, column: 17, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2308, file: !859, line: 348, column: 20)
!2316 = !DILocation(line: 357, column: 1, scope: !2263)
!2317 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !859, file: !859, line: 404, type: !1913, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2318)
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2317, file: !859, line: 404, type: !205)
!2320 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2317, file: !859, line: 404, type: !229)
!2321 = !DILocalVariable(name: "no", scope: !2317, file: !859, line: 406, type: !1920)
!2322 = !DILocalVariable(name: "remainder", scope: !2317, file: !859, line: 407, type: !1920)
!2323 = !DILocation(line: 0, scope: !2317)
!2324 = !DILocation(line: 408, column: 19, scope: !2317)
!2325 = !DILocation(line: 409, column: 17, scope: !2317)
!2326 = !DILocation(line: 411, column: 5, scope: !2317)
!2327 = !DILocation(line: 413, column: 84, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2317, file: !859, line: 411, column: 17)
!2329 = !DILocation(line: 413, column: 70, scope: !2328)
!2330 = !DILocation(line: 413, column: 64, scope: !2328)
!2331 = !DILocation(line: 413, column: 61, scope: !2328)
!2332 = !DILocation(line: 414, column: 79, scope: !2328)
!2333 = !DILocation(line: 414, column: 83, scope: !2328)
!2334 = !DILocation(line: 414, column: 88, scope: !2328)
!2335 = !DILocation(line: 414, column: 61, scope: !2328)
!2336 = !DILocation(line: 415, column: 13, scope: !2328)
!2337 = !DILocation(line: 417, column: 27, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2328, file: !859, line: 417, column: 17)
!2339 = !DILocation(line: 417, column: 17, scope: !2328)
!2340 = !DILocation(line: 418, column: 88, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !859, line: 417, column: 33)
!2342 = !DILocation(line: 418, column: 74, scope: !2341)
!2343 = !DILocation(line: 418, column: 68, scope: !2341)
!2344 = !DILocation(line: 418, column: 65, scope: !2341)
!2345 = !DILocation(line: 419, column: 83, scope: !2341)
!2346 = !DILocation(line: 419, column: 87, scope: !2341)
!2347 = !DILocation(line: 419, column: 92, scope: !2341)
!2348 = !DILocation(line: 419, column: 65, scope: !2341)
!2349 = !DILocation(line: 420, column: 13, scope: !2341)
!2350 = !DILocation(line: 420, column: 24, scope: !2338)
!2351 = !DILocation(line: 421, column: 73, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !859, line: 420, column: 41)
!2353 = distinct !DILexicalBlock(scope: !2338, file: !859, line: 420, column: 24)
!2354 = !DILocation(line: 422, column: 91, scope: !2352)
!2355 = !DILocation(line: 422, column: 100, scope: !2352)
!2356 = !DILocation(line: 422, column: 73, scope: !2352)
!2357 = !DILocation(line: 423, column: 73, scope: !2352)
!2358 = !DILocation(line: 424, column: 13, scope: !2352)
!2359 = !DILocation(line: 425, column: 73, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !859, line: 424, column: 41)
!2361 = distinct !DILexicalBlock(scope: !2353, file: !859, line: 424, column: 24)
!2362 = !DILocation(line: 426, column: 91, scope: !2360)
!2363 = !DILocation(line: 426, column: 100, scope: !2360)
!2364 = !DILocation(line: 426, column: 73, scope: !2360)
!2365 = !DILocation(line: 427, column: 73, scope: !2360)
!2366 = !DILocation(line: 428, column: 13, scope: !2360)
!2367 = !DILocation(line: 429, column: 75, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !859, line: 428, column: 41)
!2369 = distinct !DILexicalBlock(scope: !2361, file: !859, line: 428, column: 24)
!2370 = !DILocation(line: 430, column: 93, scope: !2368)
!2371 = !DILocation(line: 430, column: 102, scope: !2368)
!2372 = !DILocation(line: 430, column: 75, scope: !2368)
!2373 = !DILocation(line: 431, column: 75, scope: !2368)
!2374 = !DILocation(line: 432, column: 13, scope: !2368)
!2375 = !DILocation(line: 433, column: 75, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !859, line: 432, column: 41)
!2377 = distinct !DILexicalBlock(scope: !2369, file: !859, line: 432, column: 24)
!2378 = !DILocation(line: 434, column: 93, scope: !2376)
!2379 = !DILocation(line: 434, column: 102, scope: !2376)
!2380 = !DILocation(line: 434, column: 75, scope: !2376)
!2381 = !DILocation(line: 435, column: 75, scope: !2376)
!2382 = !DILocation(line: 436, column: 13, scope: !2376)
!2383 = !DILocation(line: 437, column: 75, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !859, line: 436, column: 41)
!2385 = distinct !DILexicalBlock(scope: !2377, file: !859, line: 436, column: 24)
!2386 = !DILocation(line: 438, column: 93, scope: !2384)
!2387 = !DILocation(line: 438, column: 102, scope: !2384)
!2388 = !DILocation(line: 438, column: 75, scope: !2384)
!2389 = !DILocation(line: 439, column: 75, scope: !2384)
!2390 = !DILocation(line: 440, column: 13, scope: !2384)
!2391 = !DILocation(line: 443, column: 18, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2328, file: !859, line: 443, column: 17)
!2393 = !DILocation(line: 443, column: 17, scope: !2328)
!2394 = !DILocation(line: 444, column: 75, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !859, line: 443, column: 29)
!2396 = !DILocation(line: 445, column: 93, scope: !2395)
!2397 = !DILocation(line: 445, column: 102, scope: !2395)
!2398 = !DILocation(line: 445, column: 75, scope: !2395)
!2399 = !DILocation(line: 446, column: 75, scope: !2395)
!2400 = !DILocation(line: 447, column: 13, scope: !2395)
!2401 = !DILocation(line: 448, column: 88, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2392, file: !859, line: 447, column: 20)
!2403 = !DILocation(line: 448, column: 74, scope: !2402)
!2404 = !DILocation(line: 448, column: 68, scope: !2402)
!2405 = !DILocation(line: 448, column: 65, scope: !2402)
!2406 = !DILocation(line: 449, column: 83, scope: !2402)
!2407 = !DILocation(line: 449, column: 87, scope: !2402)
!2408 = !DILocation(line: 449, column: 92, scope: !2402)
!2409 = !DILocation(line: 449, column: 65, scope: !2402)
!2410 = !DILocation(line: 453, column: 84, scope: !2328)
!2411 = !DILocation(line: 453, column: 70, scope: !2328)
!2412 = !DILocation(line: 453, column: 64, scope: !2328)
!2413 = !DILocation(line: 453, column: 61, scope: !2328)
!2414 = !DILocation(line: 454, column: 79, scope: !2328)
!2415 = !DILocation(line: 454, column: 83, scope: !2328)
!2416 = !DILocation(line: 454, column: 88, scope: !2328)
!2417 = !DILocation(line: 454, column: 61, scope: !2328)
!2418 = !DILocation(line: 455, column: 13, scope: !2328)
!2419 = !DILocation(line: 460, column: 1, scope: !2317)
!2420 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !859, file: !859, line: 463, type: !2421, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2424)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!1915, !205, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!2424 = !{!2425, !2426, !2427, !2428, !2429}
!2425 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2420, file: !859, line: 463, type: !205)
!2426 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !2420, file: !859, line: 463, type: !2423)
!2427 = !DILocalVariable(name: "no", scope: !2420, file: !859, line: 465, type: !1920)
!2428 = !DILocalVariable(name: "remainder", scope: !2420, file: !859, line: 466, type: !1920)
!2429 = !DILocalVariable(name: "temp", scope: !2420, file: !859, line: 467, type: !205)
!2430 = !DILocation(line: 0, scope: !2420)
!2431 = !DILocation(line: 468, column: 19, scope: !2420)
!2432 = !DILocation(line: 469, column: 17, scope: !2420)
!2433 = !DILocation(line: 471, column: 5, scope: !2420)
!2434 = !DILocation(line: 473, column: 20, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2420, file: !859, line: 471, column: 17)
!2436 = !DILocation(line: 474, column: 40, scope: !2435)
!2437 = !DILocation(line: 474, column: 26, scope: !2435)
!2438 = !DILocation(line: 474, column: 18, scope: !2435)
!2439 = !DILocation(line: 475, column: 40, scope: !2435)
!2440 = !DILocation(line: 475, column: 29, scope: !2435)
!2441 = !DILocation(line: 476, column: 13, scope: !2435)
!2442 = !DILocation(line: 478, column: 27, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2435, file: !859, line: 478, column: 17)
!2444 = !DILocation(line: 478, column: 17, scope: !2435)
!2445 = !DILocation(line: 479, column: 24, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !859, line: 478, column: 33)
!2447 = !DILocation(line: 480, column: 44, scope: !2446)
!2448 = !DILocation(line: 480, column: 30, scope: !2446)
!2449 = !DILocation(line: 480, column: 22, scope: !2446)
!2450 = !DILocation(line: 481, column: 44, scope: !2446)
!2451 = !DILocation(line: 481, column: 33, scope: !2446)
!2452 = !DILocation(line: 482, column: 13, scope: !2446)
!2453 = !DILocation(line: 482, column: 24, scope: !2443)
!2454 = !DILocation(line: 483, column: 24, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !859, line: 482, column: 41)
!2456 = distinct !DILexicalBlock(scope: !2443, file: !859, line: 482, column: 24)
!2457 = !DILocation(line: 485, column: 53, scope: !2455)
!2458 = !DILocation(line: 485, column: 33, scope: !2455)
!2459 = !DILocation(line: 486, column: 13, scope: !2455)
!2460 = !DILocation(line: 487, column: 24, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !859, line: 486, column: 41)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !859, line: 486, column: 24)
!2463 = !DILocation(line: 489, column: 53, scope: !2461)
!2464 = !DILocation(line: 489, column: 33, scope: !2461)
!2465 = !DILocation(line: 490, column: 13, scope: !2461)
!2466 = !DILocation(line: 491, column: 24, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !859, line: 490, column: 41)
!2468 = distinct !DILexicalBlock(scope: !2462, file: !859, line: 490, column: 24)
!2469 = !DILocation(line: 493, column: 53, scope: !2467)
!2470 = !DILocation(line: 493, column: 33, scope: !2467)
!2471 = !DILocation(line: 494, column: 13, scope: !2467)
!2472 = !DILocation(line: 495, column: 24, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !859, line: 494, column: 41)
!2474 = distinct !DILexicalBlock(scope: !2468, file: !859, line: 494, column: 24)
!2475 = !DILocation(line: 497, column: 53, scope: !2473)
!2476 = !DILocation(line: 497, column: 33, scope: !2473)
!2477 = !DILocation(line: 498, column: 13, scope: !2473)
!2478 = !DILocation(line: 499, column: 24, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !859, line: 498, column: 41)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !859, line: 498, column: 24)
!2481 = !DILocation(line: 501, column: 53, scope: !2479)
!2482 = !DILocation(line: 501, column: 33, scope: !2479)
!2483 = !DILocation(line: 502, column: 13, scope: !2479)
!2484 = !DILocation(line: 505, column: 18, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2435, file: !859, line: 505, column: 17)
!2486 = !DILocation(line: 505, column: 17, scope: !2435)
!2487 = !DILocation(line: 506, column: 24, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !859, line: 505, column: 29)
!2489 = !DILocation(line: 508, column: 53, scope: !2488)
!2490 = !DILocation(line: 508, column: 33, scope: !2488)
!2491 = !DILocation(line: 509, column: 13, scope: !2488)
!2492 = !DILocation(line: 510, column: 24, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2485, file: !859, line: 509, column: 20)
!2494 = !DILocation(line: 511, column: 44, scope: !2493)
!2495 = !DILocation(line: 511, column: 30, scope: !2493)
!2496 = !DILocation(line: 511, column: 22, scope: !2493)
!2497 = !DILocation(line: 512, column: 44, scope: !2493)
!2498 = !DILocation(line: 512, column: 33, scope: !2493)
!2499 = !DILocation(line: 516, column: 20, scope: !2435)
!2500 = !DILocation(line: 517, column: 40, scope: !2435)
!2501 = !DILocation(line: 517, column: 26, scope: !2435)
!2502 = !DILocation(line: 517, column: 18, scope: !2435)
!2503 = !DILocation(line: 518, column: 40, scope: !2435)
!2504 = !DILocation(line: 518, column: 29, scope: !2435)
!2505 = !DILocation(line: 519, column: 13, scope: !2435)
!2506 = !DILocation(line: 0, scope: !2435)
!2507 = !DILocation(line: 524, column: 1, scope: !2420)
!2508 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !859, file: !859, line: 526, type: !2509, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !2512)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !205, !2511}
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !862, line: 1212, baseType: !861)
!2512 = !{!2513, !2514, !2515, !2516}
!2513 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !2508, file: !859, line: 526, type: !205)
!2514 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !2508, file: !859, line: 526, type: !2511)
!2515 = !DILocalVariable(name: "no", scope: !2508, file: !859, line: 529, type: !1920)
!2516 = !DILocalVariable(name: "remainder", scope: !2508, file: !859, line: 530, type: !1920)
!2517 = !DILocation(line: 0, scope: !2508)
!2518 = !DILocation(line: 531, column: 19, scope: !2508)
!2519 = !DILocation(line: 532, column: 17, scope: !2508)
!2520 = !DILocation(line: 534, column: 9, scope: !2508)
!2521 = !DILocation(line: 536, column: 9, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !859, line: 534, column: 45)
!2523 = distinct !DILexicalBlock(scope: !2508, file: !859, line: 534, column: 9)
!2524 = !DILocation(line: 538, column: 56, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !859, line: 536, column: 21)
!2526 = !DILocation(line: 538, column: 53, scope: !2525)
!2527 = !DILocation(line: 538, column: 47, scope: !2525)
!2528 = !DILocation(line: 539, column: 17, scope: !2525)
!2529 = !DILocation(line: 541, column: 56, scope: !2525)
!2530 = !DILocation(line: 541, column: 53, scope: !2525)
!2531 = !DILocation(line: 541, column: 47, scope: !2525)
!2532 = !DILocation(line: 542, column: 17, scope: !2525)
!2533 = !DILocation(line: 548, column: 9, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !859, line: 547, column: 51)
!2535 = distinct !DILexicalBlock(scope: !2523, file: !859, line: 547, column: 16)
!2536 = !DILocation(line: 550, column: 57, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !859, line: 548, column: 21)
!2538 = !DILocation(line: 550, column: 54, scope: !2537)
!2539 = !DILocation(line: 550, column: 50, scope: !2537)
!2540 = !DILocation(line: 550, column: 47, scope: !2537)
!2541 = !DILocation(line: 551, column: 17, scope: !2537)
!2542 = !DILocation(line: 553, column: 57, scope: !2537)
!2543 = !DILocation(line: 553, column: 54, scope: !2537)
!2544 = !DILocation(line: 553, column: 50, scope: !2537)
!2545 = !DILocation(line: 553, column: 47, scope: !2537)
!2546 = !DILocation(line: 554, column: 17, scope: !2537)
!2547 = !DILocation(line: 560, column: 1, scope: !2508)
!2548 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !868, file: !868, line: 85, type: !2549, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !867, retainedNodes: !2553)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!2551, !2552, !229}
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !47, line: 79, baseType: null)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !871, line: 225, baseType: !870)
!2553 = !{!2554, !2555, !2556}
!2554 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2548, file: !868, line: 85, type: !2552)
!2555 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2548, file: !868, line: 85, type: !229)
!2556 = !DILocalVariable(name: "temp", scope: !2548, file: !868, line: 87, type: !136)
!2557 = !DILocation(line: 0, scope: !2548)
!2558 = !DILocation(line: 88, column: 5, scope: !2548)
!2559 = !DILocation(line: 91, column: 20, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2548, file: !868, line: 88, column: 24)
!2561 = !DILocation(line: 92, column: 18, scope: !2560)
!2562 = !DILocation(line: 93, column: 66, scope: !2560)
!2563 = !DILocation(line: 93, column: 63, scope: !2560)
!2564 = !DILocation(line: 93, column: 56, scope: !2560)
!2565 = !DILocation(line: 94, column: 13, scope: !2560)
!2566 = !DILocation(line: 97, column: 20, scope: !2560)
!2567 = !DILocation(line: 98, column: 18, scope: !2560)
!2568 = !DILocation(line: 99, column: 67, scope: !2560)
!2569 = !DILocation(line: 99, column: 74, scope: !2560)
!2570 = !DILocation(line: 99, column: 64, scope: !2560)
!2571 = !DILocation(line: 99, column: 56, scope: !2560)
!2572 = !DILocation(line: 100, column: 13, scope: !2560)
!2573 = !DILocation(line: 103, column: 20, scope: !2560)
!2574 = !DILocation(line: 104, column: 18, scope: !2560)
!2575 = !DILocation(line: 105, column: 67, scope: !2560)
!2576 = !DILocation(line: 105, column: 74, scope: !2560)
!2577 = !DILocation(line: 105, column: 64, scope: !2560)
!2578 = !DILocation(line: 105, column: 56, scope: !2560)
!2579 = !DILocation(line: 106, column: 13, scope: !2560)
!2580 = !DILocation(line: 109, column: 20, scope: !2560)
!2581 = !DILocation(line: 110, column: 18, scope: !2560)
!2582 = !DILocation(line: 111, column: 67, scope: !2560)
!2583 = !DILocation(line: 111, column: 74, scope: !2560)
!2584 = !DILocation(line: 111, column: 64, scope: !2560)
!2585 = !DILocation(line: 111, column: 56, scope: !2560)
!2586 = !DILocation(line: 112, column: 13, scope: !2560)
!2587 = !DILocation(line: 115, column: 20, scope: !2560)
!2588 = !DILocation(line: 116, column: 18, scope: !2560)
!2589 = !DILocation(line: 117, column: 67, scope: !2560)
!2590 = !DILocation(line: 117, column: 74, scope: !2560)
!2591 = !DILocation(line: 117, column: 64, scope: !2560)
!2592 = !DILocation(line: 117, column: 56, scope: !2560)
!2593 = !DILocation(line: 118, column: 13, scope: !2560)
!2594 = !DILocation(line: 121, column: 20, scope: !2560)
!2595 = !DILocation(line: 122, column: 18, scope: !2560)
!2596 = !DILocation(line: 123, column: 67, scope: !2560)
!2597 = !DILocation(line: 123, column: 74, scope: !2560)
!2598 = !DILocation(line: 123, column: 64, scope: !2560)
!2599 = !DILocation(line: 123, column: 56, scope: !2560)
!2600 = !DILocation(line: 124, column: 13, scope: !2560)
!2601 = !DILocation(line: 127, column: 20, scope: !2560)
!2602 = !DILocation(line: 128, column: 18, scope: !2560)
!2603 = !DILocation(line: 129, column: 67, scope: !2560)
!2604 = !DILocation(line: 129, column: 74, scope: !2560)
!2605 = !DILocation(line: 129, column: 64, scope: !2560)
!2606 = !DILocation(line: 129, column: 56, scope: !2560)
!2607 = !DILocation(line: 130, column: 13, scope: !2560)
!2608 = !DILocation(line: 133, column: 20, scope: !2560)
!2609 = !DILocation(line: 134, column: 18, scope: !2560)
!2610 = !DILocation(line: 135, column: 67, scope: !2560)
!2611 = !DILocation(line: 135, column: 74, scope: !2560)
!2612 = !DILocation(line: 135, column: 64, scope: !2560)
!2613 = !DILocation(line: 135, column: 56, scope: !2560)
!2614 = !DILocation(line: 136, column: 13, scope: !2560)
!2615 = !DILocation(line: 139, column: 20, scope: !2560)
!2616 = !DILocation(line: 140, column: 18, scope: !2560)
!2617 = !DILocation(line: 141, column: 67, scope: !2560)
!2618 = !DILocation(line: 141, column: 64, scope: !2560)
!2619 = !DILocation(line: 141, column: 56, scope: !2560)
!2620 = !DILocation(line: 142, column: 13, scope: !2560)
!2621 = !DILocation(line: 145, column: 20, scope: !2560)
!2622 = !DILocation(line: 146, column: 18, scope: !2560)
!2623 = !DILocation(line: 147, column: 67, scope: !2560)
!2624 = !DILocation(line: 147, column: 74, scope: !2560)
!2625 = !DILocation(line: 147, column: 64, scope: !2560)
!2626 = !DILocation(line: 147, column: 56, scope: !2560)
!2627 = !DILocation(line: 148, column: 13, scope: !2560)
!2628 = !DILocation(line: 151, column: 20, scope: !2560)
!2629 = !DILocation(line: 152, column: 18, scope: !2560)
!2630 = !DILocation(line: 153, column: 67, scope: !2560)
!2631 = !DILocation(line: 153, column: 74, scope: !2560)
!2632 = !DILocation(line: 153, column: 64, scope: !2560)
!2633 = !DILocation(line: 153, column: 56, scope: !2560)
!2634 = !DILocation(line: 154, column: 13, scope: !2560)
!2635 = !DILocation(line: 157, column: 20, scope: !2560)
!2636 = !DILocation(line: 158, column: 18, scope: !2560)
!2637 = !DILocation(line: 159, column: 67, scope: !2560)
!2638 = !DILocation(line: 159, column: 74, scope: !2560)
!2639 = !DILocation(line: 159, column: 64, scope: !2560)
!2640 = !DILocation(line: 159, column: 56, scope: !2560)
!2641 = !DILocation(line: 160, column: 29, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2560, file: !868, line: 160, column: 17)
!2643 = !DILocation(line: 161, column: 17, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2642, file: !868, line: 160, column: 60)
!2645 = !DILocation(line: 162, column: 13, scope: !2644)
!2646 = !DILocation(line: 166, column: 20, scope: !2560)
!2647 = !DILocation(line: 167, column: 18, scope: !2560)
!2648 = !DILocation(line: 168, column: 67, scope: !2560)
!2649 = !DILocation(line: 168, column: 74, scope: !2560)
!2650 = !DILocation(line: 168, column: 64, scope: !2560)
!2651 = !DILocation(line: 168, column: 56, scope: !2560)
!2652 = !DILocation(line: 169, column: 29, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2560, file: !868, line: 169, column: 17)
!2654 = !DILocation(line: 170, column: 17, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2653, file: !868, line: 169, column: 45)
!2656 = !DILocation(line: 171, column: 13, scope: !2655)
!2657 = !DILocation(line: 175, column: 20, scope: !2560)
!2658 = !DILocation(line: 176, column: 18, scope: !2560)
!2659 = !DILocation(line: 177, column: 67, scope: !2560)
!2660 = !DILocation(line: 177, column: 74, scope: !2560)
!2661 = !DILocation(line: 177, column: 64, scope: !2560)
!2662 = !DILocation(line: 177, column: 56, scope: !2560)
!2663 = !DILocation(line: 178, column: 19, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2560, file: !868, line: 178, column: 17)
!2665 = !DILocation(line: 178, column: 17, scope: !2560)
!2666 = !DILocation(line: 179, column: 17, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !868, line: 178, column: 30)
!2668 = !DILocation(line: 180, column: 13, scope: !2667)
!2669 = !DILocation(line: 184, column: 20, scope: !2560)
!2670 = !DILocation(line: 185, column: 18, scope: !2560)
!2671 = !DILocation(line: 186, column: 67, scope: !2560)
!2672 = !DILocation(line: 186, column: 74, scope: !2560)
!2673 = !DILocation(line: 186, column: 64, scope: !2560)
!2674 = !DILocation(line: 186, column: 56, scope: !2560)
!2675 = !DILocation(line: 187, column: 29, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2560, file: !868, line: 187, column: 17)
!2677 = !DILocation(line: 188, column: 17, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2676, file: !868, line: 187, column: 45)
!2679 = !DILocation(line: 189, column: 13, scope: !2678)
!2680 = !DILocation(line: 193, column: 20, scope: !2560)
!2681 = !DILocation(line: 194, column: 18, scope: !2560)
!2682 = !DILocation(line: 195, column: 67, scope: !2560)
!2683 = !DILocation(line: 195, column: 74, scope: !2560)
!2684 = !DILocation(line: 195, column: 64, scope: !2560)
!2685 = !DILocation(line: 195, column: 56, scope: !2560)
!2686 = !DILocation(line: 196, column: 29, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2560, file: !868, line: 196, column: 17)
!2688 = !DILocation(line: 197, column: 17, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2687, file: !868, line: 196, column: 45)
!2690 = !DILocation(line: 198, column: 13, scope: !2689)
!2691 = !DILocation(line: 202, column: 20, scope: !2560)
!2692 = !DILocation(line: 203, column: 18, scope: !2560)
!2693 = !DILocation(line: 204, column: 67, scope: !2560)
!2694 = !DILocation(line: 204, column: 64, scope: !2560)
!2695 = !DILocation(line: 204, column: 56, scope: !2560)
!2696 = !DILocation(line: 205, column: 29, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2560, file: !868, line: 205, column: 17)
!2698 = !DILocation(line: 206, column: 17, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2697, file: !868, line: 205, column: 45)
!2700 = !DILocation(line: 207, column: 13, scope: !2699)
!2701 = !DILocation(line: 211, column: 20, scope: !2560)
!2702 = !DILocation(line: 212, column: 18, scope: !2560)
!2703 = !DILocation(line: 213, column: 67, scope: !2560)
!2704 = !DILocation(line: 213, column: 74, scope: !2560)
!2705 = !DILocation(line: 213, column: 64, scope: !2560)
!2706 = !DILocation(line: 213, column: 56, scope: !2560)
!2707 = !DILocation(line: 214, column: 13, scope: !2560)
!2708 = !DILocation(line: 217, column: 20, scope: !2560)
!2709 = !DILocation(line: 218, column: 18, scope: !2560)
!2710 = !DILocation(line: 219, column: 67, scope: !2560)
!2711 = !DILocation(line: 219, column: 74, scope: !2560)
!2712 = !DILocation(line: 219, column: 64, scope: !2560)
!2713 = !DILocation(line: 219, column: 56, scope: !2560)
!2714 = !DILocation(line: 220, column: 13, scope: !2560)
!2715 = !DILocation(line: 223, column: 20, scope: !2560)
!2716 = !DILocation(line: 224, column: 18, scope: !2560)
!2717 = !DILocation(line: 225, column: 67, scope: !2560)
!2718 = !DILocation(line: 225, column: 74, scope: !2560)
!2719 = !DILocation(line: 225, column: 64, scope: !2560)
!2720 = !DILocation(line: 225, column: 56, scope: !2560)
!2721 = !DILocation(line: 226, column: 13, scope: !2560)
!2722 = !DILocation(line: 229, column: 20, scope: !2560)
!2723 = !DILocation(line: 230, column: 18, scope: !2560)
!2724 = !DILocation(line: 231, column: 67, scope: !2560)
!2725 = !DILocation(line: 231, column: 74, scope: !2560)
!2726 = !DILocation(line: 231, column: 64, scope: !2560)
!2727 = !DILocation(line: 231, column: 56, scope: !2560)
!2728 = !DILocation(line: 232, column: 13, scope: !2560)
!2729 = !DILocation(line: 235, column: 20, scope: !2560)
!2730 = !DILocation(line: 236, column: 18, scope: !2560)
!2731 = !DILocation(line: 237, column: 66, scope: !2560)
!2732 = !DILocation(line: 237, column: 73, scope: !2560)
!2733 = !DILocation(line: 237, column: 63, scope: !2560)
!2734 = !DILocation(line: 237, column: 56, scope: !2560)
!2735 = !DILocation(line: 238, column: 13, scope: !2560)
!2736 = !DILocation(line: 241, column: 20, scope: !2560)
!2737 = !DILocation(line: 242, column: 18, scope: !2560)
!2738 = !DILocation(line: 243, column: 67, scope: !2560)
!2739 = !DILocation(line: 243, column: 74, scope: !2560)
!2740 = !DILocation(line: 243, column: 64, scope: !2560)
!2741 = !DILocation(line: 243, column: 56, scope: !2560)
!2742 = !DILocation(line: 244, column: 13, scope: !2560)
!2743 = !DILocation(line: 247, column: 20, scope: !2560)
!2744 = !DILocation(line: 248, column: 18, scope: !2560)
!2745 = !DILocation(line: 249, column: 67, scope: !2560)
!2746 = !DILocation(line: 249, column: 74, scope: !2560)
!2747 = !DILocation(line: 249, column: 64, scope: !2560)
!2748 = !DILocation(line: 249, column: 56, scope: !2560)
!2749 = !DILocation(line: 250, column: 13, scope: !2560)
!2750 = !DILocation(line: 253, column: 20, scope: !2560)
!2751 = !DILocation(line: 254, column: 18, scope: !2560)
!2752 = !DILocation(line: 255, column: 67, scope: !2560)
!2753 = !DILocation(line: 255, column: 74, scope: !2560)
!2754 = !DILocation(line: 255, column: 64, scope: !2560)
!2755 = !DILocation(line: 255, column: 56, scope: !2560)
!2756 = !DILocation(line: 256, column: 13, scope: !2560)
!2757 = !DILocation(line: 259, column: 20, scope: !2560)
!2758 = !DILocation(line: 260, column: 18, scope: !2560)
!2759 = !DILocation(line: 261, column: 67, scope: !2560)
!2760 = !DILocation(line: 261, column: 74, scope: !2560)
!2761 = !DILocation(line: 261, column: 64, scope: !2560)
!2762 = !DILocation(line: 261, column: 56, scope: !2560)
!2763 = !DILocation(line: 262, column: 13, scope: !2560)
!2764 = !DILocation(line: 265, column: 20, scope: !2560)
!2765 = !DILocation(line: 266, column: 18, scope: !2560)
!2766 = !DILocation(line: 267, column: 67, scope: !2560)
!2767 = !DILocation(line: 267, column: 74, scope: !2560)
!2768 = !DILocation(line: 267, column: 64, scope: !2560)
!2769 = !DILocation(line: 267, column: 56, scope: !2560)
!2770 = !DILocation(line: 268, column: 13, scope: !2560)
!2771 = !DILocation(line: 271, column: 20, scope: !2560)
!2772 = !DILocation(line: 272, column: 18, scope: !2560)
!2773 = !DILocation(line: 273, column: 67, scope: !2560)
!2774 = !DILocation(line: 273, column: 74, scope: !2560)
!2775 = !DILocation(line: 273, column: 64, scope: !2560)
!2776 = !DILocation(line: 273, column: 56, scope: !2560)
!2777 = !DILocation(line: 274, column: 13, scope: !2560)
!2778 = !DILocation(line: 278, column: 1, scope: !2548)
!2779 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !949, file: !949, line: 47, type: !1143, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !2780)
!2780 = !{!2781}
!2781 = !DILocalVariable(name: "addr", arg: 1, scope: !2779, file: !949, line: 47, type: !136)
!2782 = !DILocation(line: 0, scope: !2779)
!2783 = !DILocation(line: 49, column: 15, scope: !2779)
!2784 = !DILocation(line: 51, column: 5, scope: !2779)
!2785 = !{i64 2624}
!2786 = !DILocation(line: 52, column: 5, scope: !2779)
!2787 = !{i64 2651}
!2788 = !DILocation(line: 53, column: 1, scope: !2779)
!2789 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !949, file: !949, line: 56, type: !2790, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !7}
!2792 = !{!2793}
!2793 = !DILocalVariable(name: "source", arg: 1, scope: !2789, file: !949, line: 56, type: !7)
!2794 = !DILocation(line: 0, scope: !2789)
!2795 = !DILocation(line: 58, column: 16, scope: !2789)
!2796 = !DILocation(line: 59, column: 1, scope: !2789)
!2797 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !949, file: !949, line: 61, type: !1112, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !2798)
!2798 = !{!2799}
!2799 = !DILocalVariable(name: "mask", scope: !2797, file: !949, line: 63, type: !136)
!2800 = !DILocation(line: 470, column: 3, scope: !2801, inlinedAt: !2804)
!2801 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1111, file: !1111, line: 466, type: !1112, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !2802)
!2802 = !{!2803}
!2803 = !DILocalVariable(name: "result", scope: !2801, file: !1111, line: 468, type: !136)
!2804 = distinct !DILocation(line: 64, column: 5, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2797, file: !949, line: 64, column: 5)
!2806 = !{i64 302173}
!2807 = !DILocation(line: 0, scope: !2801, inlinedAt: !2804)
!2808 = !DILocation(line: 0, scope: !2797)
!2809 = !DILocation(line: 330, column: 3, scope: !2810, inlinedAt: !2811)
!2810 = distinct !DISubprogram(name: "__disable_irq", scope: !1111, file: !1111, line: 328, type: !181, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !1080)
!2811 = distinct !DILocation(line: 64, column: 5, scope: !2805)
!2812 = !{i64 298837}
!2813 = !DILocation(line: 65, column: 5, scope: !2797)
!2814 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !949, file: !949, line: 68, type: !1143, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !2815)
!2815 = !{!2816}
!2816 = !DILocalVariable(name: "mask", arg: 1, scope: !2814, file: !949, line: 68, type: !136)
!2817 = !DILocation(line: 0, scope: !2814)
!2818 = !DILocalVariable(name: "priMask", arg: 1, scope: !2819, file: !1111, line: 481, type: !136)
!2819 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1111, file: !1111, line: 481, type: !1143, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !948, retainedNodes: !2820)
!2820 = !{!2818}
!2821 = !DILocation(line: 0, scope: !2819, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 70, column: 5, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2814, file: !949, line: 70, column: 5)
!2824 = !DILocation(line: 483, column: 3, scope: !2819, inlinedAt: !2822)
!2825 = !{i64 302491}
!2826 = !DILocation(line: 71, column: 1, scope: !2814)
!2827 = distinct !DISubprogram(name: "pinmux_config", scope: !994, file: !994, line: 54, type: !2828, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!331, !1065, !136}
!2830 = !{!2831, !2832, !2833}
!2831 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2827, file: !994, line: 54, type: !1065)
!2832 = !DILocalVariable(name: "function", arg: 2, scope: !2827, file: !994, line: 54, type: !136)
!2833 = !DILocalVariable(name: "ePadIndex", scope: !2827, file: !994, line: 56, type: !2552)
!2834 = !DILocation(line: 0, scope: !2827)
!2835 = !DILocation(line: 60, column: 5, scope: !2827)
!2836 = !DILocation(line: 205, column: 38, scope: !2827)
!2837 = !DILocation(line: 205, column: 5, scope: !2827)
!2838 = !DILocation(line: 207, column: 5, scope: !2827)
!2839 = !DILocation(line: 208, column: 1, scope: !2827)
!2840 = distinct !DISubprogram(name: "top_xtal_init", scope: !201, file: !201, line: 52, type: !181, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2841)
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "u4RegVal", scope: !2840, file: !201, line: 54, type: !136)
!2843 = !DILocalVariable(name: "reg", scope: !2840, file: !201, line: 55, type: !748)
!2844 = !DILocation(line: 0, scope: !2840)
!2845 = !DILocation(line: 55, column: 25, scope: !2840)
!2846 = !DILocation(line: 56, column: 16, scope: !2840)
!2847 = !DILocation(line: 56, column: 23, scope: !2840)
!2848 = !DILocation(line: 58, column: 16, scope: !2840)
!2849 = !DILocation(line: 61, column: 5, scope: !2840)
!2850 = !DILocation(line: 59, column: 14, scope: !2840)
!2851 = !DILocation(line: 0, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2840, file: !201, line: 61, column: 18)
!2853 = !DILocation(line: 87, column: 38, scope: !2840)
!2854 = !DILocation(line: 88, column: 21, scope: !2840)
!2855 = !DILocation(line: 88, column: 19, scope: !2840)
!2856 = !DILocation(line: 89, column: 5, scope: !2840)
!2857 = !DILocation(line: 90, column: 17, scope: !2840)
!2858 = !DILocation(line: 90, column: 33, scope: !2840)
!2859 = !DILocation(line: 90, column: 5, scope: !2840)
!2860 = !DILocation(line: 91, column: 1, scope: !2840)
!2861 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !201, file: !201, line: 98, type: !1112, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1080)
!2862 = !DILocation(line: 100, column: 12, scope: !2861)
!2863 = !DILocation(line: 100, column: 5, scope: !2861)
!2864 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !201, file: !201, line: 108, type: !1112, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !1080)
!2865 = !DILocation(line: 110, column: 12, scope: !2864)
!2866 = !DILocation(line: 110, column: 5, scope: !2864)
!2867 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !201, file: !201, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2868)
!2868 = !{!2869, !2870}
!2869 = !DILocalVariable(name: "reg", scope: !2867, file: !201, line: 120, type: !207)
!2870 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2867, file: !201, line: 121, type: !206)
!2871 = !DILocation(line: 120, column: 5, scope: !2867)
!2872 = !DILocation(line: 120, column: 23, scope: !2867)
!2873 = !DILocation(line: 0, scope: !2867)
!2874 = !DILocation(line: 123, column: 11, scope: !2867)
!2875 = !DILocation(line: 123, column: 9, scope: !2867)
!2876 = !DILocation(line: 124, column: 12, scope: !2867)
!2877 = !DILocation(line: 124, column: 16, scope: !2867)
!2878 = !DILocation(line: 124, column: 39, scope: !2867)
!2879 = !DILocation(line: 124, column: 9, scope: !2867)
!2880 = !DILocation(line: 126, column: 9, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2867, file: !201, line: 126, column: 9)
!2882 = !DILocation(line: 126, column: 13, scope: !2881)
!2883 = !DILocation(line: 126, column: 9, scope: !2867)
!2884 = !DILocation(line: 127, column: 15, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !201, line: 126, column: 47)
!2886 = !DILocation(line: 127, column: 13, scope: !2885)
!2887 = !DILocation(line: 128, column: 15, scope: !2885)
!2888 = !DILocation(line: 128, column: 19, scope: !2885)
!2889 = !DILocation(line: 128, column: 13, scope: !2885)
!2890 = !DILocation(line: 129, column: 15, scope: !2885)
!2891 = !DILocation(line: 129, column: 19, scope: !2885)
!2892 = !DILocation(line: 129, column: 13, scope: !2885)
!2893 = !DILocation(line: 130, column: 46, scope: !2885)
!2894 = !DILocation(line: 130, column: 9, scope: !2885)
!2895 = !DILocation(line: 132, column: 9, scope: !2885)
!2896 = !DILocation(line: 133, column: 19, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2885, file: !201, line: 132, column: 12)
!2898 = !DILocation(line: 133, column: 17, scope: !2897)
!2899 = !DILocation(line: 134, column: 19, scope: !2897)
!2900 = !DILocation(line: 134, column: 23, scope: !2897)
!2901 = !DILocation(line: 134, column: 17, scope: !2897)
!2902 = !DILocation(line: 135, column: 19, scope: !2885)
!2903 = !DILocation(line: 135, column: 18, scope: !2885)
!2904 = !DILocation(line: 135, column: 9, scope: !2897)
!2905 = distinct !{!2905, !2895, !2906}
!2906 = !DILocation(line: 135, column: 22, scope: !2885)
!2907 = !DILocation(line: 138, column: 1, scope: !2867)
!2908 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2909, file: !2909, line: 176, type: !2910, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2914)
!2909 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!136, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2914 = !{!2915}
!2915 = !DILocalVariable(name: "Register", arg: 1, scope: !2908, file: !2909, line: 176, type: !2912)
!2916 = !DILocation(line: 0, scope: !2908)
!2917 = !DILocation(line: 178, column: 13, scope: !2908)
!2918 = !DILocation(line: 178, column: 12, scope: !2908)
!2919 = !DILocation(line: 178, column: 5, scope: !2908)
!2920 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2909, file: !2909, line: 171, type: !2921, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2912, !136}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "Register", arg: 1, scope: !2920, file: !2909, line: 171, type: !2912)
!2925 = !DILocalVariable(name: "Value", arg: 2, scope: !2920, file: !2909, line: 171, type: !136)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 173, column: 6, scope: !2920)
!2928 = !DILocation(line: 173, column: 36, scope: !2920)
!2929 = !DILocation(line: 174, column: 1, scope: !2920)
!2930 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !201, file: !201, line: 145, type: !1085, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !2931)
!2931 = !{!2932, !2933, !2934}
!2932 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2930, file: !201, line: 145, type: !128)
!2933 = !DILocalVariable(name: "reg", scope: !2930, file: !201, line: 147, type: !207)
!2934 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2930, file: !201, line: 148, type: !206)
!2935 = !DILocation(line: 0, scope: !2930)
!2936 = !DILocation(line: 147, column: 5, scope: !2930)
!2937 = !DILocation(line: 147, column: 23, scope: !2930)
!2938 = !DILocation(line: 150, column: 11, scope: !2930)
!2939 = !DILocation(line: 150, column: 9, scope: !2930)
!2940 = !DILocation(line: 151, column: 12, scope: !2930)
!2941 = !DILocation(line: 151, column: 16, scope: !2930)
!2942 = !DILocation(line: 151, column: 39, scope: !2930)
!2943 = !DILocation(line: 151, column: 9, scope: !2930)
!2944 = !DILocation(line: 153, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2930, file: !201, line: 153, column: 9)
!2946 = !DILocation(line: 153, column: 13, scope: !2945)
!2947 = !DILocation(line: 153, column: 9, scope: !2930)
!2948 = !DILocation(line: 154, column: 15, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !201, line: 153, column: 45)
!2950 = !DILocation(line: 154, column: 13, scope: !2949)
!2951 = !DILocation(line: 155, column: 15, scope: !2949)
!2952 = !DILocation(line: 155, column: 19, scope: !2949)
!2953 = !DILocation(line: 155, column: 13, scope: !2949)
!2954 = !DILocation(line: 156, column: 15, scope: !2949)
!2955 = !DILocation(line: 156, column: 19, scope: !2949)
!2956 = !DILocation(line: 156, column: 13, scope: !2949)
!2957 = !DILocation(line: 157, column: 15, scope: !2949)
!2958 = !DILocation(line: 157, column: 13, scope: !2949)
!2959 = !DILocation(line: 158, column: 46, scope: !2949)
!2960 = !DILocation(line: 158, column: 9, scope: !2949)
!2961 = !DILocation(line: 160, column: 15, scope: !2949)
!2962 = !DILocation(line: 160, column: 13, scope: !2949)
!2963 = !DILocation(line: 161, column: 15, scope: !2949)
!2964 = !DILocation(line: 161, column: 19, scope: !2949)
!2965 = !DILocation(line: 161, column: 13, scope: !2949)
!2966 = !DILocation(line: 162, column: 15, scope: !2949)
!2967 = !DILocation(line: 162, column: 19, scope: !2949)
!2968 = !DILocation(line: 162, column: 13, scope: !2949)
!2969 = !DILocation(line: 163, column: 15, scope: !2949)
!2970 = !DILocation(line: 163, column: 19, scope: !2949)
!2971 = !DILocation(line: 163, column: 13, scope: !2949)
!2972 = !DILocation(line: 164, column: 46, scope: !2949)
!2973 = !DILocation(line: 164, column: 9, scope: !2949)
!2974 = !DILocation(line: 166, column: 9, scope: !2949)
!2975 = !DILocation(line: 167, column: 19, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2949, file: !201, line: 166, column: 12)
!2977 = !DILocation(line: 167, column: 17, scope: !2976)
!2978 = !DILocation(line: 168, column: 19, scope: !2976)
!2979 = !DILocation(line: 168, column: 23, scope: !2976)
!2980 = !DILocation(line: 168, column: 17, scope: !2976)
!2981 = !DILocation(line: 169, column: 19, scope: !2949)
!2982 = !DILocation(line: 169, column: 18, scope: !2949)
!2983 = !DILocation(line: 169, column: 9, scope: !2976)
!2984 = distinct !{!2984, !2974, !2985}
!2985 = !DILocation(line: 169, column: 22, scope: !2949)
!2986 = !DILocation(line: 171, column: 15, scope: !2949)
!2987 = !DILocation(line: 171, column: 13, scope: !2949)
!2988 = !DILocation(line: 172, column: 15, scope: !2949)
!2989 = !DILocation(line: 172, column: 19, scope: !2949)
!2990 = !DILocation(line: 172, column: 13, scope: !2949)
!2991 = !DILocation(line: 173, column: 15, scope: !2949)
!2992 = !DILocation(line: 173, column: 19, scope: !2949)
!2993 = !DILocation(line: 173, column: 13, scope: !2949)
!2994 = !DILocation(line: 174, column: 5, scope: !2949)
!2995 = !DILocation(line: 176, column: 11, scope: !2930)
!2996 = !DILocation(line: 176, column: 9, scope: !2930)
!2997 = !DILocation(line: 177, column: 9, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2930, file: !201, line: 177, column: 9)
!2999 = !DILocation(line: 0, scope: !2998)
!3000 = !DILocation(line: 177, column: 9, scope: !2930)
!3001 = !DILocation(line: 178, column: 19, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !201, line: 177, column: 17)
!3003 = !DILocation(line: 178, column: 13, scope: !3002)
!3004 = !DILocation(line: 179, column: 5, scope: !3002)
!3005 = !DILocation(line: 180, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2998, file: !201, line: 179, column: 12)
!3007 = !DILocation(line: 182, column: 42, scope: !2930)
!3008 = !DILocation(line: 182, column: 5, scope: !2930)
!3009 = !DILocation(line: 184, column: 1, scope: !2930)
!3010 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !201, file: !201, line: 191, type: !181, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3011)
!3011 = !{!3012, !3013}
!3012 = !DILocalVariable(name: "reg", scope: !3010, file: !201, line: 193, type: !207)
!3013 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3010, file: !201, line: 194, type: !206)
!3014 = !DILocation(line: 193, column: 5, scope: !3010)
!3015 = !DILocation(line: 193, column: 23, scope: !3010)
!3016 = !DILocation(line: 0, scope: !3010)
!3017 = !DILocation(line: 196, column: 11, scope: !3010)
!3018 = !DILocation(line: 196, column: 9, scope: !3010)
!3019 = !DILocation(line: 197, column: 11, scope: !3010)
!3020 = !DILocation(line: 197, column: 15, scope: !3010)
!3021 = !DILocation(line: 197, column: 9, scope: !3010)
!3022 = !DILocation(line: 198, column: 11, scope: !3010)
!3023 = !DILocation(line: 198, column: 15, scope: !3010)
!3024 = !DILocation(line: 198, column: 9, scope: !3010)
!3025 = !DILocation(line: 199, column: 11, scope: !3010)
!3026 = !DILocation(line: 199, column: 9, scope: !3010)
!3027 = !DILocation(line: 200, column: 42, scope: !3010)
!3028 = !DILocation(line: 200, column: 5, scope: !3010)
!3029 = !DILocation(line: 202, column: 11, scope: !3010)
!3030 = !DILocation(line: 202, column: 9, scope: !3010)
!3031 = !DILocation(line: 203, column: 11, scope: !3010)
!3032 = !DILocation(line: 203, column: 15, scope: !3010)
!3033 = !DILocation(line: 203, column: 9, scope: !3010)
!3034 = !DILocation(line: 204, column: 11, scope: !3010)
!3035 = !DILocation(line: 204, column: 15, scope: !3010)
!3036 = !DILocation(line: 204, column: 9, scope: !3010)
!3037 = !DILocation(line: 205, column: 11, scope: !3010)
!3038 = !DILocation(line: 205, column: 9, scope: !3010)
!3039 = !DILocation(line: 206, column: 42, scope: !3010)
!3040 = !DILocation(line: 206, column: 5, scope: !3010)
!3041 = !DILocation(line: 209, column: 1, scope: !3010)
!3042 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !201, file: !201, line: 216, type: !181, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3043)
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "reg", scope: !3042, file: !201, line: 218, type: !207)
!3045 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3042, file: !201, line: 219, type: !206)
!3046 = !DILocation(line: 218, column: 5, scope: !3042)
!3047 = !DILocation(line: 218, column: 23, scope: !3042)
!3048 = !DILocation(line: 0, scope: !3042)
!3049 = !DILocation(line: 222, column: 11, scope: !3042)
!3050 = !DILocation(line: 222, column: 9, scope: !3042)
!3051 = !DILocation(line: 223, column: 11, scope: !3042)
!3052 = !DILocation(line: 223, column: 15, scope: !3042)
!3053 = !DILocation(line: 223, column: 9, scope: !3042)
!3054 = !DILocation(line: 224, column: 11, scope: !3042)
!3055 = !DILocation(line: 224, column: 9, scope: !3042)
!3056 = !DILocation(line: 225, column: 39, scope: !3042)
!3057 = !DILocation(line: 225, column: 5, scope: !3042)
!3058 = !DILocation(line: 228, column: 11, scope: !3042)
!3059 = !DILocation(line: 228, column: 9, scope: !3042)
!3060 = !DILocation(line: 229, column: 11, scope: !3042)
!3061 = !DILocation(line: 229, column: 15, scope: !3042)
!3062 = !DILocation(line: 229, column: 9, scope: !3042)
!3063 = !DILocation(line: 230, column: 11, scope: !3042)
!3064 = !DILocation(line: 230, column: 9, scope: !3042)
!3065 = !DILocation(line: 231, column: 39, scope: !3042)
!3066 = !DILocation(line: 231, column: 5, scope: !3042)
!3067 = !DILocation(line: 233, column: 5, scope: !3042)
!3068 = !DILocation(line: 233, column: 12, scope: !3042)
!3069 = !DILocation(line: 233, column: 19, scope: !3042)
!3070 = !DILocation(line: 233, column: 16, scope: !3042)
!3071 = distinct !{!3071, !3067, !3072}
!3072 = !DILocation(line: 233, column: 52, scope: !3042)
!3073 = !DILocation(line: 235, column: 21, scope: !3042)
!3074 = !DILocation(line: 235, column: 19, scope: !3042)
!3075 = !DILocation(line: 236, column: 5, scope: !3042)
!3076 = !DILocation(line: 237, column: 17, scope: !3042)
!3077 = !DILocation(line: 237, column: 33, scope: !3042)
!3078 = !DILocation(line: 237, column: 5, scope: !3042)
!3079 = !DILocation(line: 239, column: 1, scope: !3042)
!3080 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !201, file: !201, line: 246, type: !181, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3081)
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "reg", scope: !3080, file: !201, line: 248, type: !207)
!3083 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3080, file: !201, line: 249, type: !206)
!3084 = !DILocation(line: 248, column: 5, scope: !3080)
!3085 = !DILocation(line: 248, column: 23, scope: !3080)
!3086 = !DILocation(line: 0, scope: !3080)
!3087 = !DILocation(line: 252, column: 5, scope: !3080)
!3088 = !DILocation(line: 255, column: 11, scope: !3080)
!3089 = !DILocation(line: 255, column: 9, scope: !3080)
!3090 = !DILocation(line: 256, column: 11, scope: !3080)
!3091 = !DILocation(line: 256, column: 15, scope: !3080)
!3092 = !DILocation(line: 256, column: 9, scope: !3080)
!3093 = !DILocation(line: 257, column: 11, scope: !3080)
!3094 = !DILocation(line: 257, column: 15, scope: !3080)
!3095 = !DILocation(line: 257, column: 9, scope: !3080)
!3096 = !DILocation(line: 258, column: 39, scope: !3080)
!3097 = !DILocation(line: 258, column: 5, scope: !3080)
!3098 = !DILocation(line: 260, column: 5, scope: !3080)
!3099 = !DILocation(line: 260, column: 12, scope: !3080)
!3100 = !DILocation(line: 260, column: 19, scope: !3080)
!3101 = !DILocation(line: 260, column: 16, scope: !3080)
!3102 = distinct !{!3102, !3098, !3103}
!3103 = !DILocation(line: 260, column: 52, scope: !3080)
!3104 = !DILocation(line: 263, column: 11, scope: !3080)
!3105 = !DILocation(line: 263, column: 9, scope: !3080)
!3106 = !DILocation(line: 264, column: 11, scope: !3080)
!3107 = !DILocation(line: 264, column: 15, scope: !3080)
!3108 = !DILocation(line: 264, column: 9, scope: !3080)
!3109 = !DILocation(line: 265, column: 11, scope: !3080)
!3110 = !DILocation(line: 265, column: 15, scope: !3080)
!3111 = !DILocation(line: 265, column: 9, scope: !3080)
!3112 = !DILocation(line: 266, column: 39, scope: !3080)
!3113 = !DILocation(line: 266, column: 5, scope: !3080)
!3114 = !DILocation(line: 269, column: 11, scope: !3080)
!3115 = !DILocation(line: 269, column: 9, scope: !3080)
!3116 = !DILocation(line: 270, column: 11, scope: !3080)
!3117 = !DILocation(line: 270, column: 15, scope: !3080)
!3118 = !DILocation(line: 270, column: 9, scope: !3080)
!3119 = !DILocation(line: 271, column: 11, scope: !3080)
!3120 = !DILocation(line: 271, column: 15, scope: !3080)
!3121 = !DILocation(line: 271, column: 9, scope: !3080)
!3122 = !DILocation(line: 272, column: 39, scope: !3080)
!3123 = !DILocation(line: 272, column: 5, scope: !3080)
!3124 = !DILocation(line: 273, column: 19, scope: !3080)
!3125 = !DILocation(line: 274, column: 5, scope: !3080)
!3126 = !DILocation(line: 275, column: 17, scope: !3080)
!3127 = !DILocation(line: 275, column: 33, scope: !3080)
!3128 = !DILocation(line: 275, column: 5, scope: !3080)
!3129 = !DILocation(line: 277, column: 1, scope: !3080)
!3130 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !201, file: !201, line: 284, type: !181, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3131)
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "reg", scope: !3130, file: !201, line: 286, type: !207)
!3133 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3130, file: !201, line: 287, type: !206)
!3134 = !DILocation(line: 286, column: 5, scope: !3130)
!3135 = !DILocation(line: 286, column: 23, scope: !3130)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 290, column: 5, scope: !3130)
!3138 = !DILocation(line: 293, column: 11, scope: !3130)
!3139 = !DILocation(line: 293, column: 9, scope: !3130)
!3140 = !DILocation(line: 294, column: 11, scope: !3130)
!3141 = !DILocation(line: 294, column: 15, scope: !3130)
!3142 = !DILocation(line: 294, column: 9, scope: !3130)
!3143 = !DILocation(line: 295, column: 11, scope: !3130)
!3144 = !DILocation(line: 295, column: 15, scope: !3130)
!3145 = !DILocation(line: 295, column: 9, scope: !3130)
!3146 = !DILocation(line: 296, column: 39, scope: !3130)
!3147 = !DILocation(line: 296, column: 5, scope: !3130)
!3148 = !DILocation(line: 298, column: 5, scope: !3130)
!3149 = !DILocation(line: 298, column: 12, scope: !3130)
!3150 = !DILocation(line: 298, column: 19, scope: !3130)
!3151 = !DILocation(line: 298, column: 16, scope: !3130)
!3152 = distinct !{!3152, !3148, !3153}
!3153 = !DILocation(line: 298, column: 52, scope: !3130)
!3154 = !DILocation(line: 301, column: 11, scope: !3130)
!3155 = !DILocation(line: 301, column: 9, scope: !3130)
!3156 = !DILocation(line: 302, column: 11, scope: !3130)
!3157 = !DILocation(line: 302, column: 15, scope: !3130)
!3158 = !DILocation(line: 302, column: 9, scope: !3130)
!3159 = !DILocation(line: 303, column: 11, scope: !3130)
!3160 = !DILocation(line: 303, column: 15, scope: !3130)
!3161 = !DILocation(line: 303, column: 9, scope: !3130)
!3162 = !DILocation(line: 304, column: 39, scope: !3130)
!3163 = !DILocation(line: 304, column: 5, scope: !3130)
!3164 = !DILocation(line: 307, column: 11, scope: !3130)
!3165 = !DILocation(line: 307, column: 9, scope: !3130)
!3166 = !DILocation(line: 308, column: 11, scope: !3130)
!3167 = !DILocation(line: 308, column: 15, scope: !3130)
!3168 = !DILocation(line: 308, column: 9, scope: !3130)
!3169 = !DILocation(line: 309, column: 11, scope: !3130)
!3170 = !DILocation(line: 309, column: 15, scope: !3130)
!3171 = !DILocation(line: 309, column: 9, scope: !3130)
!3172 = !DILocation(line: 310, column: 39, scope: !3130)
!3173 = !DILocation(line: 310, column: 5, scope: !3130)
!3174 = !DILocation(line: 311, column: 19, scope: !3130)
!3175 = !DILocation(line: 312, column: 5, scope: !3130)
!3176 = !DILocation(line: 313, column: 17, scope: !3130)
!3177 = !DILocation(line: 313, column: 33, scope: !3130)
!3178 = !DILocation(line: 313, column: 5, scope: !3130)
!3179 = !DILocation(line: 315, column: 1, scope: !3130)
!3180 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !201, file: !201, line: 323, type: !181, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3181)
!3181 = !{!3182, !3183}
!3182 = !DILocalVariable(name: "reg", scope: !3180, file: !201, line: 325, type: !207)
!3183 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3180, file: !201, line: 326, type: !206)
!3184 = !DILocation(line: 325, column: 5, scope: !3180)
!3185 = !DILocation(line: 325, column: 23, scope: !3180)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 329, column: 5, scope: !3180)
!3188 = !DILocation(line: 332, column: 11, scope: !3180)
!3189 = !DILocation(line: 332, column: 9, scope: !3180)
!3190 = !DILocation(line: 333, column: 11, scope: !3180)
!3191 = !DILocation(line: 333, column: 15, scope: !3180)
!3192 = !DILocation(line: 333, column: 9, scope: !3180)
!3193 = !DILocation(line: 334, column: 11, scope: !3180)
!3194 = !DILocation(line: 334, column: 9, scope: !3180)
!3195 = !DILocation(line: 335, column: 39, scope: !3180)
!3196 = !DILocation(line: 335, column: 5, scope: !3180)
!3197 = !DILocation(line: 337, column: 5, scope: !3180)
!3198 = !DILocation(line: 337, column: 12, scope: !3180)
!3199 = !DILocation(line: 337, column: 19, scope: !3180)
!3200 = !DILocation(line: 337, column: 16, scope: !3180)
!3201 = distinct !{!3201, !3197, !3202}
!3202 = !DILocation(line: 337, column: 52, scope: !3180)
!3203 = !DILocation(line: 340, column: 11, scope: !3180)
!3204 = !DILocation(line: 340, column: 9, scope: !3180)
!3205 = !DILocation(line: 341, column: 11, scope: !3180)
!3206 = !DILocation(line: 341, column: 15, scope: !3180)
!3207 = !DILocation(line: 341, column: 9, scope: !3180)
!3208 = !DILocation(line: 342, column: 11, scope: !3180)
!3209 = !DILocation(line: 342, column: 15, scope: !3180)
!3210 = !DILocation(line: 342, column: 9, scope: !3180)
!3211 = !DILocation(line: 343, column: 39, scope: !3180)
!3212 = !DILocation(line: 343, column: 5, scope: !3180)
!3213 = !DILocation(line: 344, column: 19, scope: !3180)
!3214 = !DILocation(line: 345, column: 5, scope: !3180)
!3215 = !DILocation(line: 346, column: 17, scope: !3180)
!3216 = !DILocation(line: 346, column: 33, scope: !3180)
!3217 = !DILocation(line: 346, column: 5, scope: !3180)
!3218 = !DILocation(line: 348, column: 1, scope: !3180)
!3219 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !201, file: !201, line: 353, type: !181, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3220)
!3220 = !{!3221, !3222}
!3221 = !DILocalVariable(name: "reg", scope: !3219, file: !201, line: 355, type: !209)
!3222 = !DILocalVariable(name: "pTopCfgHclk", scope: !3219, file: !201, line: 356, type: !208)
!3223 = !DILocation(line: 355, column: 5, scope: !3219)
!3224 = !DILocation(line: 355, column: 21, scope: !3219)
!3225 = !DILocation(line: 0, scope: !3219)
!3226 = !DILocation(line: 358, column: 11, scope: !3219)
!3227 = !DILocation(line: 358, column: 9, scope: !3219)
!3228 = !DILocation(line: 359, column: 11, scope: !3219)
!3229 = !DILocation(line: 359, column: 15, scope: !3219)
!3230 = !DILocation(line: 359, column: 9, scope: !3219)
!3231 = !DILocation(line: 360, column: 11, scope: !3219)
!3232 = !DILocation(line: 360, column: 9, scope: !3219)
!3233 = !DILocation(line: 361, column: 37, scope: !3219)
!3234 = !DILocation(line: 361, column: 5, scope: !3219)
!3235 = !DILocation(line: 362, column: 1, scope: !3219)
!3236 = distinct !DISubprogram(name: "getc", scope: !216, file: !216, line: 68, type: !3237, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!53}
!3239 = !{!3240}
!3240 = !DILocalVariable(name: "rc", scope: !3236, file: !216, line: 71, type: !53)
!3241 = !DILocation(line: 71, column: 14, scope: !3236)
!3242 = !DILocation(line: 0, scope: !3236)
!3243 = !DILocation(line: 72, column: 5, scope: !3236)
!3244 = distinct !DISubprogram(name: "getc_nowait", scope: !216, file: !216, line: 80, type: !3237, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3245)
!3245 = !{!3246}
!3246 = !DILocalVariable(name: "c", scope: !3244, file: !216, line: 82, type: !474)
!3247 = !DILocation(line: 84, column: 9, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !216, line: 84, column: 9)
!3249 = !DILocation(line: 84, column: 40, scope: !3248)
!3250 = !DILocation(line: 84, column: 9, scope: !3244)
!3251 = !DILocation(line: 85, column: 13, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3248, file: !216, line: 84, column: 47)
!3253 = !DILocation(line: 86, column: 16, scope: !3252)
!3254 = !DILocation(line: 0, scope: !3244)
!3255 = !DILocation(line: 86, column: 9, scope: !3252)
!3256 = !DILocation(line: 0, scope: !3248)
!3257 = !DILocation(line: 90, column: 1, scope: !3244)
!3258 = distinct !DISubprogram(name: "uart_output_char", scope: !216, file: !216, line: 93, type: !3259, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3262)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !3261, !132}
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !219, line: 75, baseType: !218)
!3262 = !{!3263, !3264, !3265}
!3263 = !DILocalVariable(name: "port_no", arg: 1, scope: !3258, file: !216, line: 93, type: !3261)
!3264 = !DILocalVariable(name: "c", arg: 2, scope: !3258, file: !216, line: 93, type: !132)
!3265 = !DILocalVariable(name: "base", scope: !3258, file: !216, line: 95, type: !7)
!3266 = !DILocation(line: 0, scope: !3258)
!3267 = !DILocation(line: 95, column: 25, scope: !3258)
!3268 = !DILocation(line: 97, column: 5, scope: !3258)
!3269 = !DILocation(line: 97, column: 14, scope: !3258)
!3270 = !DILocation(line: 97, column: 42, scope: !3258)
!3271 = !DILocation(line: 97, column: 12, scope: !3258)
!3272 = distinct !{!3272, !3268, !3273}
!3273 = !DILocation(line: 98, column: 9, scope: !3258)
!3274 = !DILocation(line: 99, column: 35, scope: !3258)
!3275 = !DILocation(line: 99, column: 5, scope: !3258)
!3276 = !DILocation(line: 99, column: 33, scope: !3258)
!3277 = !DILocation(line: 102, column: 1, scope: !3258)
!3278 = distinct !DISubprogram(name: "uart_input_char", scope: !216, file: !216, line: 106, type: !3279, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!128, !3261}
!3281 = !{!3282, !3283, !3284}
!3282 = !DILocalVariable(name: "port_no", arg: 1, scope: !3278, file: !216, line: 106, type: !3261)
!3283 = !DILocalVariable(name: "base", scope: !3278, file: !216, line: 108, type: !7)
!3284 = !DILocalVariable(name: "c", scope: !3278, file: !216, line: 109, type: !474)
!3285 = !DILocation(line: 0, scope: !3278)
!3286 = !DILocation(line: 108, column: 25, scope: !3278)
!3287 = !DILocation(line: 111, column: 5, scope: !3278)
!3288 = !DILocation(line: 111, column: 14, scope: !3278)
!3289 = !DILocation(line: 111, column: 42, scope: !3278)
!3290 = !DILocation(line: 111, column: 12, scope: !3278)
!3291 = distinct !{!3291, !3287, !3292}
!3292 = !DILocation(line: 112, column: 9, scope: !3278)
!3293 = !DILocation(line: 114, column: 9, scope: !3278)
!3294 = !DILocation(line: 116, column: 5, scope: !3278)
!3295 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !216, file: !216, line: 120, type: !3296, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!136, !3261}
!3298 = !{!3299, !3300, !3301}
!3299 = !DILocalVariable(name: "port_no", arg: 1, scope: !3295, file: !216, line: 120, type: !3261)
!3300 = !DILocalVariable(name: "base", scope: !3295, file: !216, line: 122, type: !7)
!3301 = !DILocalVariable(name: "c", scope: !3295, file: !216, line: 123, type: !474)
!3302 = !DILocation(line: 0, scope: !3295)
!3303 = !DILocation(line: 122, column: 25, scope: !3295)
!3304 = !DILocation(line: 125, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3295, file: !216, line: 125, column: 9)
!3306 = !DILocation(line: 125, column: 37, scope: !3305)
!3307 = !DILocation(line: 125, column: 9, scope: !3295)
!3308 = !DILocation(line: 126, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !216, line: 125, column: 44)
!3310 = !DILocation(line: 127, column: 16, scope: !3309)
!3311 = !DILocation(line: 127, column: 9, scope: !3309)
!3312 = !DILocation(line: 0, scope: !3305)
!3313 = !DILocation(line: 131, column: 1, scope: !3295)
!3314 = distinct !DISubprogram(name: "halUART_HWInit", scope: !216, file: !216, line: 136, type: !3315, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !3261}
!3317 = !{!3318}
!3318 = !DILocalVariable(name: "u_port", arg: 1, scope: !3314, file: !216, line: 136, type: !3261)
!3319 = !DILocation(line: 0, scope: !3314)
!3320 = !DILocation(line: 139, column: 5, scope: !3314)
!3321 = !DILocation(line: 140, column: 9, scope: !3314)
!3322 = !DILocation(line: 153, column: 5, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !216, line: 147, column: 38)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !216, line: 147, column: 16)
!3325 = distinct !DILexicalBlock(scope: !3314, file: !216, line: 140, column: 9)
!3326 = !DILocation(line: 0, scope: !3325)
!3327 = !DILocation(line: 155, column: 1, scope: !3314)
!3328 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !216, file: !216, line: 158, type: !3329, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3333)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3261, !136, !3331, !3331, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 36, baseType: !3332)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !131, line: 57, baseType: !228)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3349, !3350}
!3334 = !DILocalVariable(name: "u_port", arg: 1, scope: !3328, file: !216, line: 158, type: !3261)
!3335 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3328, file: !216, line: 158, type: !136)
!3336 = !DILocalVariable(name: "databit", arg: 3, scope: !3328, file: !216, line: 158, type: !3331)
!3337 = !DILocalVariable(name: "parity", arg: 4, scope: !3328, file: !216, line: 158, type: !3331)
!3338 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3328, file: !216, line: 158, type: !3331)
!3339 = !DILocalVariable(name: "control_word", scope: !3328, file: !216, line: 160, type: !3331)
!3340 = !DILocalVariable(name: "UART_BASE", scope: !3328, file: !216, line: 161, type: !136)
!3341 = !DILocalVariable(name: "data", scope: !3328, file: !216, line: 162, type: !136)
!3342 = !DILocalVariable(name: "uart_lcr", scope: !3328, file: !216, line: 162, type: !136)
!3343 = !DILocalVariable(name: "high_speed_div", scope: !3328, file: !216, line: 162, type: !136)
!3344 = !DILocalVariable(name: "sample_count", scope: !3328, file: !216, line: 162, type: !136)
!3345 = !DILocalVariable(name: "sample_point", scope: !3328, file: !216, line: 162, type: !136)
!3346 = !DILocalVariable(name: "fraction", scope: !3328, file: !216, line: 162, type: !136)
!3347 = !DILocalVariable(name: "fraction_L_mapping", scope: !3328, file: !216, line: 163, type: !3348)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3331, size: 176, elements: !190)
!3349 = !DILocalVariable(name: "fraction_M_mapping", scope: !3328, file: !216, line: 164, type: !3348)
!3350 = !DILocalVariable(name: "status", scope: !3328, file: !216, line: 165, type: !331)
!3351 = !DILocation(line: 0, scope: !3328)
!3352 = !DILocation(line: 163, column: 15, scope: !3328)
!3353 = !DILocation(line: 164, column: 15, scope: !3328)
!3354 = !DILocation(line: 166, column: 20, scope: !3328)
!3355 = !DILocation(line: 166, column: 18, scope: !3328)
!3356 = !DILocation(line: 168, column: 9, scope: !3328)
!3357 = !DILocation(line: 176, column: 5, scope: !3328)
!3358 = !DILocation(line: 176, column: 44, scope: !3328)
!3359 = !DILocation(line: 177, column: 16, scope: !3328)
!3360 = !DILocation(line: 178, column: 50, scope: !3328)
!3361 = !DILocation(line: 178, column: 38, scope: !3328)
!3362 = !DILocation(line: 179, column: 12, scope: !3328)
!3363 = !DILocation(line: 179, column: 25, scope: !3328)
!3364 = !DILocation(line: 180, column: 28, scope: !3328)
!3365 = !DILocation(line: 180, column: 34, scope: !3328)
!3366 = !DILocation(line: 182, column: 29, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3328, file: !216, line: 181, column: 5)
!3368 = !DILocation(line: 182, column: 46, scope: !3367)
!3369 = !DILocation(line: 183, column: 26, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3367, file: !216, line: 183, column: 13)
!3371 = !DILocation(line: 183, column: 13, scope: !3367)
!3372 = !DILocation(line: 192, column: 30, scope: !3328)
!3373 = !DILocation(line: 192, column: 35, scope: !3328)
!3374 = !DILocation(line: 192, column: 46, scope: !3328)
!3375 = !DILocation(line: 192, column: 74, scope: !3328)
!3376 = !DILocation(line: 192, column: 53, scope: !3328)
!3377 = !DILocation(line: 192, column: 80, scope: !3328)
!3378 = !DILocation(line: 193, column: 56, scope: !3328)
!3379 = !DILocation(line: 193, column: 5, scope: !3328)
!3380 = !DILocation(line: 193, column: 38, scope: !3328)
!3381 = !DILocation(line: 194, column: 57, scope: !3328)
!3382 = !DILocation(line: 194, column: 63, scope: !3328)
!3383 = !DILocation(line: 194, column: 5, scope: !3328)
!3384 = !DILocation(line: 194, column: 38, scope: !3328)
!3385 = !DILocation(line: 195, column: 5, scope: !3328)
!3386 = !DILocation(line: 195, column: 45, scope: !3328)
!3387 = !DILocation(line: 196, column: 5, scope: !3328)
!3388 = !DILocation(line: 196, column: 47, scope: !3328)
!3389 = !DILocation(line: 197, column: 46, scope: !3328)
!3390 = !DILocation(line: 197, column: 5, scope: !3328)
!3391 = !DILocation(line: 197, column: 44, scope: !3328)
!3392 = !DILocation(line: 198, column: 46, scope: !3328)
!3393 = !DILocation(line: 198, column: 5, scope: !3328)
!3394 = !DILocation(line: 198, column: 44, scope: !3328)
!3395 = !DILocation(line: 199, column: 38, scope: !3328)
!3396 = !DILocation(line: 200, column: 5, scope: !3328)
!3397 = !DILocation(line: 200, column: 38, scope: !3328)
!3398 = !DILocation(line: 202, column: 20, scope: !3328)
!3399 = !DILocation(line: 203, column: 18, scope: !3328)
!3400 = !DILocation(line: 205, column: 18, scope: !3328)
!3401 = !DILocation(line: 207, column: 18, scope: !3328)
!3402 = !DILocation(line: 208, column: 18, scope: !3328)
!3403 = !DILocation(line: 209, column: 5, scope: !3328)
!3404 = !DILocation(line: 213, column: 1, scope: !3328)
!3405 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !216, file: !216, line: 215, type: !3406, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3409)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3261, !331, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "u_port", arg: 1, scope: !3405, file: !216, line: 215, type: !3261)
!3411 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3405, file: !216, line: 215, type: !331)
!3412 = !DILocalVariable(name: "length", arg: 3, scope: !3405, file: !216, line: 215, type: !3408)
!3413 = !DILocation(line: 0, scope: !3405)
!3414 = !DILocation(line: 217, column: 16, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3405, file: !216, line: 217, column: 9)
!3416 = !DILocation(line: 0, scope: !3415)
!3417 = !DILocation(line: 217, column: 9, scope: !3405)
!3418 = !DILocation(line: 218, column: 13, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !216, line: 217, column: 31)
!3420 = !DILocation(line: 219, column: 23, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !216, line: 218, column: 20)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !216, line: 218, column: 13)
!3423 = !DILocation(line: 220, column: 9, scope: !3421)
!3424 = !DILocation(line: 221, column: 23, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !216, line: 220, column: 16)
!3426 = !DILocation(line: 221, column: 21, scope: !3425)
!3427 = !DILocation(line: 222, column: 24, scope: !3425)
!3428 = !DILocation(line: 222, column: 21, scope: !3425)
!3429 = !DILocation(line: 225, column: 13, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3415, file: !216, line: 224, column: 12)
!3431 = !DILocation(line: 226, column: 23, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !216, line: 225, column: 20)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !216, line: 225, column: 13)
!3434 = !DILocation(line: 227, column: 9, scope: !3432)
!3435 = !DILocation(line: 228, column: 23, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !216, line: 227, column: 16)
!3437 = !DILocation(line: 228, column: 21, scope: !3436)
!3438 = !DILocation(line: 229, column: 24, scope: !3436)
!3439 = !DILocation(line: 229, column: 21, scope: !3436)
!3440 = !DILocation(line: 233, column: 5, scope: !3405)
!3441 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !216, file: !216, line: 236, type: !3442, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !3261, !521, !136}
!3444 = !{!3445, !3446, !3447, !3448}
!3445 = !DILocalVariable(name: "u_port", arg: 1, scope: !3441, file: !216, line: 236, type: !3261)
!3446 = !DILocalVariable(name: "data", arg: 2, scope: !3441, file: !216, line: 236, type: !521)
!3447 = !DILocalVariable(name: "length", arg: 3, scope: !3441, file: !216, line: 236, type: !136)
!3448 = !DILocalVariable(name: "idx", scope: !3441, file: !216, line: 238, type: !205)
!3449 = !DILocation(line: 0, scope: !3441)
!3450 = !DILocation(line: 239, column: 23, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !216, line: 239, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3441, file: !216, line: 239, column: 5)
!3453 = !DILocation(line: 239, column: 5, scope: !3452)
!3454 = !DILocation(line: 240, column: 13, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3451, file: !216, line: 239, column: 40)
!3456 = !DILocation(line: 244, column: 9, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !216, line: 242, column: 42)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !216, line: 242, column: 20)
!3459 = distinct !DILexicalBlock(scope: !3455, file: !216, line: 240, column: 13)
!3460 = !DILocation(line: 0, scope: !3459)
!3461 = !DILocation(line: 239, column: 36, scope: !3451)
!3462 = distinct !{!3462, !3453, !3463}
!3463 = !DILocation(line: 246, column: 5, scope: !3452)
!3464 = !DILocation(line: 249, column: 1, scope: !3441)
!3465 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !216, file: !216, line: 251, type: !3466, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !3261, !565, !136}
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DILocalVariable(name: "u_port", arg: 1, scope: !3465, file: !216, line: 251, type: !3261)
!3470 = !DILocalVariable(name: "data", arg: 2, scope: !3465, file: !216, line: 251, type: !565)
!3471 = !DILocalVariable(name: "length", arg: 3, scope: !3465, file: !216, line: 251, type: !136)
!3472 = !DILocalVariable(name: "idx", scope: !3465, file: !216, line: 253, type: !205)
!3473 = !DILocation(line: 0, scope: !3465)
!3474 = !DILocation(line: 254, column: 23, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !216, line: 254, column: 5)
!3476 = distinct !DILexicalBlock(scope: !3465, file: !216, line: 254, column: 5)
!3477 = !DILocation(line: 254, column: 5, scope: !3476)
!3478 = !DILocation(line: 255, column: 13, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !216, line: 254, column: 40)
!3480 = !DILocation(line: 256, column: 61, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !216, line: 255, column: 35)
!3482 = distinct !DILexicalBlock(scope: !3479, file: !216, line: 255, column: 13)
!3483 = !DILocation(line: 256, column: 59, scope: !3481)
!3484 = !DILocation(line: 257, column: 9, scope: !3481)
!3485 = !DILocation(line: 258, column: 61, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !216, line: 257, column: 42)
!3487 = distinct !DILexicalBlock(scope: !3482, file: !216, line: 257, column: 20)
!3488 = !DILocation(line: 258, column: 59, scope: !3486)
!3489 = !DILocation(line: 259, column: 9, scope: !3486)
!3490 = !DILocation(line: 254, column: 36, scope: !3475)
!3491 = distinct !{!3491, !3477, !3492}
!3492 = !DILocation(line: 261, column: 5, scope: !3476)
!3493 = !DILocation(line: 264, column: 1, scope: !3465)
!3494 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !216, file: !216, line: 266, type: !3495, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !3261, !521, !136, !136}
!3497 = !{!3498, !3499, !3500, !3501}
!3498 = !DILocalVariable(name: "u_port", arg: 1, scope: !3494, file: !216, line: 266, type: !3261)
!3499 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3494, file: !216, line: 266, type: !521)
!3500 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3494, file: !216, line: 266, type: !136)
!3501 = !DILocalVariable(name: "threshold", arg: 4, scope: !3494, file: !216, line: 266, type: !136)
!3502 = !DILocation(line: 0, scope: !3494)
!3503 = !DILocation(line: 268, column: 9, scope: !3494)
!3504 = !DILocation(line: 274, column: 5, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !216, line: 271, column: 38)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !216, line: 271, column: 16)
!3507 = distinct !DILexicalBlock(scope: !3494, file: !216, line: 268, column: 9)
!3508 = !DILocation(line: 0, scope: !3507)
!3509 = !DILocation(line: 276, column: 1, scope: !3494)
!3510 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !216, file: !216, line: 278, type: !3511, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3513)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !3261, !521, !136, !136, !136, !136}
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519}
!3514 = !DILocalVariable(name: "u_port", arg: 1, scope: !3510, file: !216, line: 278, type: !3261)
!3515 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3510, file: !216, line: 278, type: !521)
!3516 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3510, file: !216, line: 278, type: !136)
!3517 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3510, file: !216, line: 278, type: !136)
!3518 = !DILocalVariable(name: "threshold", arg: 5, scope: !3510, file: !216, line: 278, type: !136)
!3519 = !DILocalVariable(name: "timeout", arg: 6, scope: !3510, file: !216, line: 278, type: !136)
!3520 = !DILocation(line: 0, scope: !3510)
!3521 = !DILocation(line: 280, column: 9, scope: !3510)
!3522 = !DILocation(line: 286, column: 5, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !216, line: 283, column: 38)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !216, line: 283, column: 16)
!3525 = distinct !DILexicalBlock(scope: !3510, file: !216, line: 280, column: 9)
!3526 = !DILocation(line: 0, scope: !3525)
!3527 = !DILocation(line: 288, column: 1, scope: !3510)
!3528 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !216, file: !216, line: 290, type: !3529, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3531)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{null, !3261, !179}
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "u_port", arg: 1, scope: !3528, file: !216, line: 290, type: !3261)
!3533 = !DILocalVariable(name: "func", arg: 2, scope: !3528, file: !216, line: 290, type: !179)
!3534 = !DILocation(line: 0, scope: !3528)
!3535 = !DILocation(line: 292, column: 9, scope: !3528)
!3536 = !DILocation(line: 296, column: 5, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !216, line: 294, column: 38)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !216, line: 294, column: 16)
!3539 = distinct !DILexicalBlock(scope: !3528, file: !216, line: 292, column: 9)
!3540 = !DILocation(line: 0, scope: !3539)
!3541 = !DILocation(line: 298, column: 1, scope: !3528)
!3542 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !216, file: !216, line: 300, type: !3529, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3543)
!3543 = !{!3544, !3545}
!3544 = !DILocalVariable(name: "u_port", arg: 1, scope: !3542, file: !216, line: 300, type: !3261)
!3545 = !DILocalVariable(name: "func", arg: 2, scope: !3542, file: !216, line: 300, type: !179)
!3546 = !DILocation(line: 0, scope: !3542)
!3547 = !DILocation(line: 302, column: 9, scope: !3542)
!3548 = !DILocation(line: 306, column: 5, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !216, line: 304, column: 38)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !216, line: 304, column: 16)
!3551 = distinct !DILexicalBlock(scope: !3542, file: !216, line: 302, column: 9)
!3552 = !DILocation(line: 0, scope: !3551)
!3553 = !DILocation(line: 308, column: 1, scope: !3542)
!3554 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !216, file: !216, line: 310, type: !3315, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3555)
!3555 = !{!3556, !3557, !3558, !3559}
!3556 = !DILocalVariable(name: "u_port", arg: 1, scope: !3554, file: !216, line: 310, type: !3261)
!3557 = !DILocalVariable(name: "base", scope: !3554, file: !216, line: 312, type: !7)
!3558 = !DILocalVariable(name: "EFR", scope: !3554, file: !216, line: 313, type: !3331)
!3559 = !DILocalVariable(name: "LCR", scope: !3554, file: !216, line: 313, type: !3331)
!3560 = !DILocation(line: 0, scope: !3554)
!3561 = !DILocation(line: 312, column: 25, scope: !3554)
!3562 = !DILocation(line: 315, column: 11, scope: !3554)
!3563 = !DILocation(line: 317, column: 33, scope: !3554)
!3564 = !DILocation(line: 318, column: 11, scope: !3554)
!3565 = !DILocation(line: 320, column: 35, scope: !3554)
!3566 = !DILocation(line: 320, column: 33, scope: !3554)
!3567 = !DILocation(line: 322, column: 5, scope: !3554)
!3568 = !DILocation(line: 322, column: 39, scope: !3554)
!3569 = !DILocation(line: 324, column: 33, scope: !3554)
!3570 = !DILocation(line: 325, column: 5, scope: !3554)
!3571 = !DILocation(line: 325, column: 33, scope: !3554)
!3572 = !DILocation(line: 327, column: 35, scope: !3554)
!3573 = !DILocation(line: 327, column: 33, scope: !3554)
!3574 = !DILocation(line: 328, column: 1, scope: !3554)
!3575 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !216, file: !216, line: 330, type: !3576, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3261, !128, !128, !128}
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3579 = !DILocalVariable(name: "u_port", arg: 1, scope: !3575, file: !216, line: 330, type: !3261)
!3580 = !DILocalVariable(name: "xon", arg: 2, scope: !3575, file: !216, line: 330, type: !128)
!3581 = !DILocalVariable(name: "xoff", arg: 3, scope: !3575, file: !216, line: 330, type: !128)
!3582 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3575, file: !216, line: 330, type: !128)
!3583 = !DILocalVariable(name: "base", scope: !3575, file: !216, line: 332, type: !7)
!3584 = !DILocalVariable(name: "EFR", scope: !3575, file: !216, line: 333, type: !3331)
!3585 = !DILocalVariable(name: "LCR", scope: !3575, file: !216, line: 333, type: !3331)
!3586 = !DILocation(line: 0, scope: !3575)
!3587 = !DILocation(line: 332, column: 25, scope: !3575)
!3588 = !DILocation(line: 335, column: 11, scope: !3575)
!3589 = !DILocation(line: 337, column: 33, scope: !3575)
!3590 = !DILocation(line: 338, column: 36, scope: !3575)
!3591 = !DILocation(line: 338, column: 5, scope: !3575)
!3592 = !DILocation(line: 338, column: 34, scope: !3575)
!3593 = !DILocation(line: 339, column: 5, scope: !3575)
!3594 = !DILocation(line: 339, column: 34, scope: !3575)
!3595 = !DILocation(line: 340, column: 37, scope: !3575)
!3596 = !DILocation(line: 340, column: 5, scope: !3575)
!3597 = !DILocation(line: 340, column: 35, scope: !3575)
!3598 = !DILocation(line: 341, column: 5, scope: !3575)
!3599 = !DILocation(line: 341, column: 35, scope: !3575)
!3600 = !DILocation(line: 343, column: 11, scope: !3575)
!3601 = !DILocation(line: 345, column: 35, scope: !3575)
!3602 = !DILocation(line: 345, column: 33, scope: !3575)
!3603 = !DILocation(line: 347, column: 35, scope: !3575)
!3604 = !DILocation(line: 347, column: 33, scope: !3575)
!3605 = !DILocation(line: 349, column: 43, scope: !3575)
!3606 = !DILocation(line: 349, column: 5, scope: !3575)
!3607 = !DILocation(line: 349, column: 41, scope: !3575)
!3608 = !DILocation(line: 350, column: 5, scope: !3575)
!3609 = !DILocation(line: 350, column: 39, scope: !3575)
!3610 = !DILocation(line: 351, column: 1, scope: !3575)
!3611 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !216, file: !216, line: 353, type: !3315, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3612)
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "u_port", arg: 1, scope: !3611, file: !216, line: 353, type: !3261)
!3614 = !DILocalVariable(name: "base", scope: !3611, file: !216, line: 355, type: !7)
!3615 = !DILocalVariable(name: "LCR", scope: !3611, file: !216, line: 356, type: !3331)
!3616 = !DILocation(line: 0, scope: !3611)
!3617 = !DILocation(line: 355, column: 25, scope: !3611)
!3618 = !DILocation(line: 358, column: 11, scope: !3611)
!3619 = !DILocation(line: 360, column: 33, scope: !3611)
!3620 = !DILocation(line: 362, column: 5, scope: !3611)
!3621 = !DILocation(line: 362, column: 33, scope: !3611)
!3622 = !DILocation(line: 364, column: 33, scope: !3611)
!3623 = !DILocation(line: 366, column: 35, scope: !3611)
!3624 = !DILocation(line: 366, column: 33, scope: !3611)
!3625 = !DILocation(line: 367, column: 1, scope: !3611)
!3626 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !216, file: !216, line: 436, type: !3315, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3627)
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "u_port", arg: 1, scope: !3626, file: !216, line: 436, type: !3261)
!3629 = !DILocalVariable(name: "base", scope: !3626, file: !216, line: 438, type: !7)
!3630 = !DILocation(line: 0, scope: !3626)
!3631 = !DILocation(line: 438, column: 25, scope: !3626)
!3632 = !DILocation(line: 440, column: 5, scope: !3626)
!3633 = !DILocation(line: 440, column: 33, scope: !3626)
!3634 = !DILocation(line: 441, column: 5, scope: !3626)
!3635 = !DILocation(line: 441, column: 33, scope: !3626)
!3636 = !DILocation(line: 442, column: 5, scope: !3626)
!3637 = !DILocation(line: 442, column: 34, scope: !3626)
!3638 = !DILocation(line: 443, column: 5, scope: !3626)
!3639 = !DILocation(line: 443, column: 35, scope: !3626)
!3640 = !DILocation(line: 445, column: 33, scope: !3626)
!3641 = !DILocation(line: 446, column: 5, scope: !3626)
!3642 = !DILocation(line: 446, column: 33, scope: !3626)
!3643 = !DILocation(line: 447, column: 5, scope: !3626)
!3644 = !DILocation(line: 447, column: 33, scope: !3626)
!3645 = !DILocation(line: 449, column: 33, scope: !3626)
!3646 = !DILocation(line: 450, column: 33, scope: !3626)
!3647 = !DILocation(line: 451, column: 33, scope: !3626)
!3648 = !DILocation(line: 453, column: 33, scope: !3626)
!3649 = !DILocation(line: 454, column: 33, scope: !3626)
!3650 = !DILocation(line: 455, column: 33, scope: !3626)
!3651 = !DILocation(line: 457, column: 33, scope: !3626)
!3652 = !DILocation(line: 458, column: 5, scope: !3626)
!3653 = !DILocation(line: 458, column: 33, scope: !3626)
!3654 = !DILocation(line: 459, column: 5, scope: !3626)
!3655 = !DILocation(line: 459, column: 39, scope: !3626)
!3656 = !DILocation(line: 460, column: 5, scope: !3626)
!3657 = !DILocation(line: 460, column: 40, scope: !3626)
!3658 = !DILocation(line: 461, column: 5, scope: !3626)
!3659 = !DILocation(line: 461, column: 42, scope: !3626)
!3660 = !DILocation(line: 462, column: 5, scope: !3626)
!3661 = !DILocation(line: 462, column: 42, scope: !3626)
!3662 = !DILocation(line: 463, column: 5, scope: !3626)
!3663 = !DILocation(line: 463, column: 35, scope: !3626)
!3664 = !DILocation(line: 464, column: 5, scope: !3626)
!3665 = !DILocation(line: 464, column: 41, scope: !3626)
!3666 = !DILocation(line: 465, column: 5, scope: !3626)
!3667 = !DILocation(line: 465, column: 39, scope: !3626)
!3668 = !DILocation(line: 466, column: 5, scope: !3626)
!3669 = !DILocation(line: 466, column: 38, scope: !3626)
!3670 = !DILocation(line: 467, column: 5, scope: !3626)
!3671 = !DILocation(line: 467, column: 42, scope: !3626)
!3672 = !DILocation(line: 468, column: 5, scope: !3626)
!3673 = !DILocation(line: 468, column: 45, scope: !3626)
!3674 = !DILocation(line: 469, column: 5, scope: !3626)
!3675 = !DILocation(line: 469, column: 39, scope: !3626)
!3676 = !DILocation(line: 470, column: 5, scope: !3626)
!3677 = !DILocation(line: 470, column: 39, scope: !3626)
!3678 = !DILocation(line: 471, column: 5, scope: !3626)
!3679 = !DILocation(line: 471, column: 42, scope: !3626)
!3680 = !DILocation(line: 472, column: 1, scope: !3626)
!3681 = distinct !DISubprogram(name: "uart_query_empty", scope: !216, file: !216, line: 474, type: !3315, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !3682)
!3682 = !{!3683, !3684}
!3683 = !DILocalVariable(name: "u_port", arg: 1, scope: !3681, file: !216, line: 474, type: !3261)
!3684 = !DILocalVariable(name: "base", scope: !3681, file: !216, line: 476, type: !7)
!3685 = !DILocation(line: 0, scope: !3681)
!3686 = !DILocation(line: 476, column: 25, scope: !3681)
!3687 = !DILocation(line: 478, column: 5, scope: !3681)
!3688 = !DILocation(line: 478, column: 14, scope: !3681)
!3689 = !DILocation(line: 478, column: 42, scope: !3681)
!3690 = !DILocation(line: 478, column: 12, scope: !3681)
!3691 = distinct !{!3691, !3687, !3692}
!3692 = !DILocation(line: 478, column: 50, scope: !3681)
!3693 = !DILocation(line: 479, column: 1, scope: !3681)
!3694 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1028, file: !1028, line: 64, type: !3695, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !677, !53, !677, null}
!3697 = !{!3698, !3699, !3700, !3701, !3710}
!3698 = !DILocalVariable(name: "func", arg: 1, scope: !3694, file: !1028, line: 64, type: !677)
!3699 = !DILocalVariable(name: "line", arg: 2, scope: !3694, file: !1028, line: 64, type: !53)
!3700 = !DILocalVariable(name: "message", arg: 3, scope: !3694, file: !1028, line: 64, type: !677)
!3701 = !DILocalVariable(name: "ap", scope: !3694, file: !1028, line: 66, type: !3702)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3703, line: 46, baseType: !3704)
!3703 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3705, line: 32, baseType: !3706)
!3705 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1028, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3708)
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3707, file: !1028, line: 66, baseType: !161, size: 32)
!3710 = !DILocalVariable(name: "mask", scope: !3694, file: !1028, line: 68, type: !136)
!3711 = !DILocation(line: 0, scope: !3694)
!3712 = !DILocation(line: 66, column: 5, scope: !3694)
!3713 = !DILocation(line: 66, column: 13, scope: !3694)
!3714 = !DILocation(line: 68, column: 5, scope: !3694)
!3715 = !DILocation(line: 69, column: 5, scope: !3694)
!3716 = !DILocation(line: 71, column: 5, scope: !3694)
!3717 = !DILocation(line: 72, column: 5, scope: !3694)
!3718 = !DILocation(line: 73, column: 5, scope: !3694)
!3719 = !DILocation(line: 75, column: 37, scope: !3694)
!3720 = !DILocation(line: 75, column: 5, scope: !3694)
!3721 = !DILocation(line: 77, column: 1, scope: !3694)
!3722 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1028, file: !1028, line: 78, type: !3695, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !3723)
!3723 = !{!3724, !3725, !3726, !3727, !3728}
!3724 = !DILocalVariable(name: "func", arg: 1, scope: !3722, file: !1028, line: 78, type: !677)
!3725 = !DILocalVariable(name: "line", arg: 2, scope: !3722, file: !1028, line: 78, type: !53)
!3726 = !DILocalVariable(name: "message", arg: 3, scope: !3722, file: !1028, line: 78, type: !677)
!3727 = !DILocalVariable(name: "ap", scope: !3722, file: !1028, line: 80, type: !3702)
!3728 = !DILocalVariable(name: "mask", scope: !3722, file: !1028, line: 82, type: !136)
!3729 = !DILocation(line: 0, scope: !3722)
!3730 = !DILocation(line: 80, column: 5, scope: !3722)
!3731 = !DILocation(line: 80, column: 13, scope: !3722)
!3732 = !DILocation(line: 82, column: 5, scope: !3722)
!3733 = !DILocation(line: 83, column: 5, scope: !3722)
!3734 = !DILocation(line: 85, column: 5, scope: !3722)
!3735 = !DILocation(line: 86, column: 5, scope: !3722)
!3736 = !DILocation(line: 87, column: 5, scope: !3722)
!3737 = !DILocation(line: 89, column: 37, scope: !3722)
!3738 = !DILocation(line: 89, column: 5, scope: !3722)
!3739 = !DILocation(line: 91, column: 1, scope: !3722)
!3740 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1028, file: !1028, line: 92, type: !3695, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746}
!3742 = !DILocalVariable(name: "func", arg: 1, scope: !3740, file: !1028, line: 92, type: !677)
!3743 = !DILocalVariable(name: "line", arg: 2, scope: !3740, file: !1028, line: 92, type: !53)
!3744 = !DILocalVariable(name: "message", arg: 3, scope: !3740, file: !1028, line: 92, type: !677)
!3745 = !DILocalVariable(name: "ap", scope: !3740, file: !1028, line: 94, type: !3702)
!3746 = !DILocalVariable(name: "mask", scope: !3740, file: !1028, line: 96, type: !136)
!3747 = !DILocation(line: 0, scope: !3740)
!3748 = !DILocation(line: 94, column: 5, scope: !3740)
!3749 = !DILocation(line: 94, column: 13, scope: !3740)
!3750 = !DILocation(line: 96, column: 5, scope: !3740)
!3751 = !DILocation(line: 97, column: 5, scope: !3740)
!3752 = !DILocation(line: 99, column: 5, scope: !3740)
!3753 = !DILocation(line: 100, column: 5, scope: !3740)
!3754 = !DILocation(line: 101, column: 5, scope: !3740)
!3755 = !DILocation(line: 103, column: 37, scope: !3740)
!3756 = !DILocation(line: 103, column: 5, scope: !3740)
!3757 = !DILocation(line: 105, column: 1, scope: !3740)
!3758 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1028, file: !1028, line: 106, type: !3695, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !3759)
!3759 = !{!3760, !3761, !3762, !3763, !3764}
!3760 = !DILocalVariable(name: "func", arg: 1, scope: !3758, file: !1028, line: 106, type: !677)
!3761 = !DILocalVariable(name: "line", arg: 2, scope: !3758, file: !1028, line: 106, type: !53)
!3762 = !DILocalVariable(name: "message", arg: 3, scope: !3758, file: !1028, line: 106, type: !677)
!3763 = !DILocalVariable(name: "ap", scope: !3758, file: !1028, line: 108, type: !3702)
!3764 = !DILocalVariable(name: "mask", scope: !3758, file: !1028, line: 110, type: !136)
!3765 = !DILocation(line: 0, scope: !3758)
!3766 = !DILocation(line: 108, column: 5, scope: !3758)
!3767 = !DILocation(line: 108, column: 13, scope: !3758)
!3768 = !DILocation(line: 110, column: 5, scope: !3758)
!3769 = !DILocation(line: 111, column: 5, scope: !3758)
!3770 = !DILocation(line: 113, column: 5, scope: !3758)
!3771 = !DILocation(line: 114, column: 5, scope: !3758)
!3772 = !DILocation(line: 115, column: 5, scope: !3758)
!3773 = !DILocation(line: 117, column: 37, scope: !3758)
!3774 = !DILocation(line: 117, column: 5, scope: !3758)
!3775 = !DILocation(line: 119, column: 1, scope: !3758)
!3776 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1028, file: !1028, line: 121, type: !3777, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !3781)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !677, !53, !677, !3779, !53, null}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3781 = !{!3782, !3783, !3784, !3785, !3786}
!3782 = !DILocalVariable(name: "func", arg: 1, scope: !3776, file: !1028, line: 121, type: !677)
!3783 = !DILocalVariable(name: "line", arg: 2, scope: !3776, file: !1028, line: 121, type: !53)
!3784 = !DILocalVariable(name: "message", arg: 3, scope: !3776, file: !1028, line: 121, type: !677)
!3785 = !DILocalVariable(name: "data", arg: 4, scope: !3776, file: !1028, line: 121, type: !3779)
!3786 = !DILocalVariable(name: "length", arg: 5, scope: !3776, file: !1028, line: 121, type: !53)
!3787 = !DILocation(line: 0, scope: !3776)
!3788 = !DILocation(line: 123, column: 1, scope: !3776)
!3789 = distinct !DISubprogram(name: "hal_cache_init", scope: !236, file: !236, line: 53, type: !3790, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3793)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!3792}
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !239, line: 172, baseType: !238)
!3793 = !{!3794, !3796}
!3794 = !DILocalVariable(name: "region", scope: !3789, file: !236, line: 55, type: !3795)
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !239, line: 204, baseType: !249)
!3796 = !DILocalVariable(name: "irq_flag", scope: !3789, file: !236, line: 56, type: !136)
!3797 = !DILocation(line: 59, column: 16, scope: !3789)
!3798 = !DILocation(line: 0, scope: !3789)
!3799 = !DILocation(line: 62, column: 9, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3789, file: !236, line: 62, column: 9)
!3801 = !DILocation(line: 62, column: 9, scope: !3789)
!3802 = !DILocation(line: 64, column: 9, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3800, file: !236, line: 62, column: 39)
!3804 = !DILocation(line: 66, column: 9, scope: !3803)
!3805 = !DILocation(line: 69, column: 24, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3800, file: !236, line: 67, column: 12)
!3807 = !DILocation(line: 72, column: 9, scope: !3806)
!3808 = !DILocation(line: 77, column: 5, scope: !3789)
!3809 = !DILocation(line: 80, column: 22, scope: !3789)
!3810 = !DILocation(line: 81, column: 28, scope: !3789)
!3811 = !DILocation(line: 84, column: 19, scope: !3789)
!3812 = !DILocation(line: 85, column: 23, scope: !3789)
!3813 = !DILocation(line: 88, column: 5, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3789, file: !236, line: 88, column: 5)
!3815 = !DILocation(line: 90, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !236, line: 88, column: 81)
!3817 = distinct !DILexicalBlock(scope: !3814, file: !236, line: 88, column: 5)
!3818 = !DILocation(line: 90, column: 38, scope: !3816)
!3819 = !DILocation(line: 91, column: 9, scope: !3816)
!3820 = !DILocation(line: 91, column: 42, scope: !3816)
!3821 = !DILocation(line: 94, column: 45, scope: !3816)
!3822 = !DILocation(line: 94, column: 47, scope: !3816)
!3823 = !DILocation(line: 95, column: 49, scope: !3816)
!3824 = !DILocation(line: 95, column: 51, scope: !3816)
!3825 = !DILocation(line: 88, column: 77, scope: !3817)
!3826 = !DILocation(line: 88, column: 46, scope: !3817)
!3827 = distinct !{!3827, !3813, !3828}
!3828 = !DILocation(line: 96, column: 5, scope: !3814)
!3829 = !DILocation(line: 99, column: 1, scope: !3789)
!3830 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !236, file: !236, line: 327, type: !3790, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3831)
!3831 = !{!3832}
!3832 = !DILocalVariable(name: "irq_flag", scope: !3830, file: !236, line: 329, type: !136)
!3833 = !DILocation(line: 332, column: 16, scope: !3830)
!3834 = !DILocation(line: 0, scope: !3830)
!3835 = !DILocation(line: 335, column: 21, scope: !3830)
!3836 = !DILocation(line: 336, column: 21, scope: !3830)
!3837 = !DILocation(line: 339, column: 21, scope: !3830)
!3838 = !DILocation(line: 340, column: 21, scope: !3830)
!3839 = !DILocation(line: 434, column: 3, scope: !3840, inlinedAt: !3842)
!3840 = distinct !DISubprogram(name: "__ISB", scope: !3841, file: !3841, line: 432, type: !181, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1080)
!3841 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/uart_loopback_data_dma/GCC")
!3842 = distinct !DILocation(line: 343, column: 5, scope: !3830)
!3843 = !{i64 296586}
!3844 = !DILocation(line: 346, column: 5, scope: !3830)
!3845 = !DILocation(line: 348, column: 5, scope: !3830)
!3846 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !236, file: !236, line: 101, type: !3790, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3847)
!3847 = !{!3848}
!3848 = !DILocalVariable(name: "region", scope: !3846, file: !236, line: 103, type: !3795)
!3849 = !DILocation(line: 107, column: 5, scope: !3846)
!3850 = !DILocation(line: 110, column: 22, scope: !3846)
!3851 = !DILocation(line: 111, column: 28, scope: !3846)
!3852 = !DILocation(line: 114, column: 19, scope: !3846)
!3853 = !DILocation(line: 115, column: 23, scope: !3846)
!3854 = !DILocation(line: 0, scope: !3846)
!3855 = !DILocation(line: 118, column: 5, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3846, file: !236, line: 118, column: 5)
!3857 = !DILocation(line: 120, column: 9, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !236, line: 118, column: 81)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !236, line: 118, column: 5)
!3860 = !DILocation(line: 120, column: 38, scope: !3858)
!3861 = !DILocation(line: 121, column: 9, scope: !3858)
!3862 = !DILocation(line: 121, column: 42, scope: !3858)
!3863 = !DILocation(line: 124, column: 45, scope: !3858)
!3864 = !DILocation(line: 124, column: 47, scope: !3858)
!3865 = !DILocation(line: 125, column: 49, scope: !3858)
!3866 = !DILocation(line: 125, column: 51, scope: !3858)
!3867 = !DILocation(line: 118, column: 77, scope: !3859)
!3868 = !DILocation(line: 118, column: 46, scope: !3859)
!3869 = distinct !{!3869, !3855, !3870}
!3870 = !DILocation(line: 126, column: 5, scope: !3856)
!3871 = !DILocation(line: 129, column: 20, scope: !3846)
!3872 = !DILocation(line: 131, column: 5, scope: !3846)
!3873 = distinct !DISubprogram(name: "hal_cache_enable", scope: !236, file: !236, line: 134, type: !3790, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !1080)
!3874 = !DILocation(line: 137, column: 45, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3873, file: !236, line: 137, column: 9)
!3876 = !DILocation(line: 137, column: 28, scope: !3875)
!3877 = !DILocation(line: 137, column: 9, scope: !3873)
!3878 = !DILocation(line: 142, column: 22, scope: !3873)
!3879 = !DILocation(line: 145, column: 28, scope: !3873)
!3880 = !DILocation(line: 145, column: 19, scope: !3873)
!3881 = !DILocation(line: 147, column: 5, scope: !3873)
!3882 = !DILocation(line: 0, scope: !3873)
!3883 = !DILocation(line: 148, column: 1, scope: !3873)
!3884 = distinct !DISubprogram(name: "hal_cache_disable", scope: !236, file: !236, line: 150, type: !3790, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3885)
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "irq_flag", scope: !3884, file: !236, line: 152, type: !136)
!3887 = !DILocation(line: 155, column: 16, scope: !3884)
!3888 = !DILocation(line: 0, scope: !3884)
!3889 = !DILocation(line: 158, column: 16, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3884, file: !236, line: 158, column: 9)
!3891 = !DILocation(line: 158, column: 26, scope: !3890)
!3892 = !DILocation(line: 158, column: 9, scope: !3884)
!3893 = !DILocation(line: 160, column: 9, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !236, line: 158, column: 49)
!3895 = !DILocation(line: 161, column: 5, scope: !3894)
!3896 = !DILocation(line: 164, column: 22, scope: !3884)
!3897 = !DILocation(line: 167, column: 28, scope: !3884)
!3898 = !DILocation(line: 167, column: 19, scope: !3884)
!3899 = !DILocation(line: 170, column: 5, scope: !3884)
!3900 = !DILocation(line: 172, column: 5, scope: !3884)
!3901 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !236, file: !236, line: 175, type: !3902, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!3792, !3795}
!3904 = !{!3905}
!3905 = !DILocalVariable(name: "region", arg: 1, scope: !3901, file: !236, line: 175, type: !3795)
!3906 = !DILocation(line: 0, scope: !3901)
!3907 = !DILocation(line: 178, column: 16, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3901, file: !236, line: 178, column: 9)
!3909 = !DILocation(line: 178, column: 9, scope: !3901)
!3910 = !DILocation(line: 183, column: 9, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3901, file: !236, line: 183, column: 9)
!3912 = !DILocation(line: 183, column: 38, scope: !3911)
!3913 = !DILocation(line: 183, column: 9, scope: !3901)
!3914 = !DILocation(line: 184, column: 38, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3911, file: !236, line: 183, column: 62)
!3916 = !DILocation(line: 184, column: 32, scope: !3915)
!3917 = !DILocation(line: 190, column: 32, scope: !3901)
!3918 = !DILocation(line: 190, column: 23, scope: !3901)
!3919 = !DILocation(line: 192, column: 5, scope: !3901)
!3920 = !DILocation(line: 193, column: 1, scope: !3901)
!3921 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !236, file: !236, line: 195, type: !3902, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3922)
!3922 = !{!3923}
!3923 = !DILocalVariable(name: "region", arg: 1, scope: !3921, file: !236, line: 195, type: !3795)
!3924 = !DILocation(line: 0, scope: !3921)
!3925 = !DILocation(line: 198, column: 16, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3921, file: !236, line: 198, column: 9)
!3927 = !DILocation(line: 198, column: 9, scope: !3921)
!3928 = !DILocation(line: 203, column: 35, scope: !3921)
!3929 = !DILocation(line: 203, column: 31, scope: !3921)
!3930 = !DILocation(line: 203, column: 28, scope: !3921)
!3931 = !DILocation(line: 206, column: 32, scope: !3921)
!3932 = !DILocation(line: 206, column: 23, scope: !3921)
!3933 = !DILocation(line: 209, column: 41, scope: !3921)
!3934 = !DILocation(line: 209, column: 43, scope: !3921)
!3935 = !DILocation(line: 210, column: 45, scope: !3921)
!3936 = !DILocation(line: 210, column: 47, scope: !3921)
!3937 = !DILocation(line: 212, column: 5, scope: !3921)
!3938 = !DILocation(line: 213, column: 1, scope: !3921)
!3939 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !236, file: !236, line: 215, type: !3940, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3943)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!3792, !3942}
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !239, line: 182, baseType: !268)
!3943 = !{!3944}
!3944 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3939, file: !236, line: 215, type: !3942)
!3945 = !DILocation(line: 0, scope: !3939)
!3946 = !DILocation(line: 218, column: 20, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3939, file: !236, line: 218, column: 9)
!3948 = !DILocation(line: 218, column: 9, scope: !3939)
!3949 = !DILocation(line: 223, column: 22, scope: !3939)
!3950 = !DILocation(line: 224, column: 37, scope: !3939)
!3951 = !DILocation(line: 224, column: 22, scope: !3939)
!3952 = !DILocation(line: 227, column: 20, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3939, file: !236, line: 227, column: 9)
!3954 = !DILocation(line: 227, column: 9, scope: !3939)
!3955 = !DILocation(line: 228, column: 26, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3953, file: !236, line: 227, column: 43)
!3957 = !DILocation(line: 229, column: 5, scope: !3956)
!3958 = !DILocation(line: 232, column: 28, scope: !3939)
!3959 = !DILocation(line: 232, column: 19, scope: !3939)
!3960 = !DILocation(line: 234, column: 5, scope: !3939)
!3961 = !DILocation(line: 235, column: 1, scope: !3939)
!3962 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !236, file: !236, line: 237, type: !3963, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !3972)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!3792, !3795, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3967)
!3967 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !239, line: 222, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 219, size: 64, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3968, file: !239, line: 220, baseType: !136, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3968, file: !239, line: 221, baseType: !136, size: 32, offset: 32)
!3972 = !{!3973, !3974}
!3973 = !DILocalVariable(name: "region", arg: 1, scope: !3962, file: !236, line: 237, type: !3795)
!3974 = !DILocalVariable(name: "region_config", arg: 2, scope: !3962, file: !236, line: 237, type: !3965)
!3975 = !DILocation(line: 0, scope: !3962)
!3976 = !DILocation(line: 240, column: 16, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3962, file: !236, line: 240, column: 9)
!3978 = !DILocation(line: 240, column: 9, scope: !3962)
!3979 = !DILocation(line: 245, column: 23, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3962, file: !236, line: 245, column: 9)
!3981 = !DILocation(line: 245, column: 9, scope: !3962)
!3982 = !DILocation(line: 250, column: 24, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3962, file: !236, line: 250, column: 9)
!3984 = !DILocation(line: 250, column: 45, scope: !3983)
!3985 = !DILocation(line: 250, column: 9, scope: !3962)
!3986 = !DILocation(line: 251, column: 9, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !236, line: 250, column: 81)
!3988 = !DILocation(line: 256, column: 24, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3962, file: !236, line: 256, column: 9)
!3990 = !DILocation(line: 256, column: 42, scope: !3989)
!3991 = !DILocation(line: 256, column: 9, scope: !3962)
!3992 = !DILocation(line: 257, column: 9, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !236, line: 256, column: 78)
!3994 = !DILocation(line: 262, column: 5, scope: !3962)
!3995 = !DILocation(line: 262, column: 34, scope: !3962)
!3996 = !DILocation(line: 263, column: 55, scope: !3962)
!3997 = !DILocation(line: 263, column: 93, scope: !3962)
!3998 = !DILocation(line: 263, column: 76, scope: !3962)
!3999 = !DILocation(line: 263, column: 5, scope: !3962)
!4000 = !DILocation(line: 263, column: 38, scope: !3962)
!4001 = !DILocation(line: 266, column: 34, scope: !3962)
!4002 = !DILocation(line: 269, column: 45, scope: !3962)
!4003 = !DILocation(line: 269, column: 41, scope: !3962)
!4004 = !DILocation(line: 269, column: 43, scope: !3962)
!4005 = !DILocation(line: 270, column: 49, scope: !3962)
!4006 = !DILocation(line: 270, column: 45, scope: !3962)
!4007 = !DILocation(line: 270, column: 47, scope: !3962)
!4008 = !DILocation(line: 272, column: 5, scope: !3962)
!4009 = !DILocation(line: 273, column: 1, scope: !3962)
!4010 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !236, file: !236, line: 275, type: !4011, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!3792, !136}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "address", arg: 1, scope: !4010, file: !236, line: 275, type: !136)
!4015 = !DILocalVariable(name: "irq_flag", scope: !4010, file: !236, line: 277, type: !136)
!4016 = !DILocation(line: 0, scope: !4010)
!4017 = !DILocation(line: 280, column: 17, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4010, file: !236, line: 280, column: 9)
!4019 = !DILocation(line: 280, column: 9, scope: !4010)
!4020 = !DILocation(line: 284, column: 16, scope: !4010)
!4021 = !DILocation(line: 287, column: 32, scope: !4010)
!4022 = !DILocation(line: 287, column: 21, scope: !4010)
!4023 = !DILocation(line: 288, column: 21, scope: !4010)
!4024 = !DILocation(line: 434, column: 3, scope: !3840, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 291, column: 5, scope: !4010)
!4026 = !DILocation(line: 294, column: 5, scope: !4010)
!4027 = !DILocation(line: 296, column: 5, scope: !4010)
!4028 = !DILocation(line: 297, column: 1, scope: !4010)
!4029 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !236, file: !236, line: 299, type: !4030, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!3792, !136, !136}
!4032 = !{!4033, !4034, !4035, !4036}
!4033 = !DILocalVariable(name: "address", arg: 1, scope: !4029, file: !236, line: 299, type: !136)
!4034 = !DILocalVariable(name: "length", arg: 2, scope: !4029, file: !236, line: 299, type: !136)
!4035 = !DILocalVariable(name: "irq_flag", scope: !4029, file: !236, line: 301, type: !136)
!4036 = !DILocalVariable(name: "end_address", scope: !4029, file: !236, line: 302, type: !136)
!4037 = !DILocation(line: 0, scope: !4029)
!4038 = !DILocation(line: 302, column: 36, scope: !4029)
!4039 = !DILocation(line: 305, column: 47, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4029, file: !236, line: 305, column: 9)
!4041 = !DILocation(line: 310, column: 16, scope: !4029)
!4042 = !DILocation(line: 313, column: 20, scope: !4029)
!4043 = !DILocation(line: 313, column: 5, scope: !4029)
!4044 = !DILocation(line: 314, column: 9, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4029, file: !236, line: 313, column: 35)
!4046 = !DILocation(line: 315, column: 17, scope: !4045)
!4047 = distinct !{!4047, !4043, !4048}
!4048 = !DILocation(line: 316, column: 5, scope: !4029)
!4049 = !DILocation(line: 434, column: 3, scope: !3840, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 319, column: 5, scope: !4029)
!4051 = !DILocation(line: 322, column: 5, scope: !4029)
!4052 = !DILocation(line: 324, column: 5, scope: !4029)
!4053 = !DILocation(line: 325, column: 1, scope: !4029)
!4054 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !236, file: !236, line: 351, type: !4011, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4055)
!4055 = !{!4056, !4057}
!4056 = !DILocalVariable(name: "address", arg: 1, scope: !4054, file: !236, line: 351, type: !136)
!4057 = !DILocalVariable(name: "irq_flag", scope: !4054, file: !236, line: 353, type: !136)
!4058 = !DILocation(line: 0, scope: !4054)
!4059 = !DILocation(line: 356, column: 17, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4054, file: !236, line: 356, column: 9)
!4061 = !DILocation(line: 356, column: 9, scope: !4054)
!4062 = !DILocation(line: 361, column: 16, scope: !4054)
!4063 = !DILocation(line: 364, column: 32, scope: !4054)
!4064 = !DILocation(line: 364, column: 21, scope: !4054)
!4065 = !DILocation(line: 365, column: 21, scope: !4054)
!4066 = !DILocation(line: 434, column: 3, scope: !3840, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 368, column: 5, scope: !4054)
!4068 = !DILocation(line: 371, column: 5, scope: !4054)
!4069 = !DILocation(line: 373, column: 5, scope: !4054)
!4070 = !DILocation(line: 374, column: 1, scope: !4054)
!4071 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !236, file: !236, line: 376, type: !4030, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DILocalVariable(name: "address", arg: 1, scope: !4071, file: !236, line: 376, type: !136)
!4074 = !DILocalVariable(name: "length", arg: 2, scope: !4071, file: !236, line: 376, type: !136)
!4075 = !DILocalVariable(name: "irq_flag", scope: !4071, file: !236, line: 378, type: !136)
!4076 = !DILocalVariable(name: "end_address", scope: !4071, file: !236, line: 379, type: !136)
!4077 = !DILocation(line: 0, scope: !4071)
!4078 = !DILocation(line: 379, column: 36, scope: !4071)
!4079 = !DILocation(line: 382, column: 47, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4071, file: !236, line: 382, column: 9)
!4081 = !DILocation(line: 387, column: 16, scope: !4071)
!4082 = !DILocation(line: 390, column: 20, scope: !4071)
!4083 = !DILocation(line: 390, column: 5, scope: !4071)
!4084 = !DILocation(line: 391, column: 9, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4071, file: !236, line: 390, column: 35)
!4086 = !DILocation(line: 392, column: 17, scope: !4085)
!4087 = distinct !{!4087, !4083, !4088}
!4088 = !DILocation(line: 393, column: 5, scope: !4071)
!4089 = !DILocation(line: 434, column: 3, scope: !3840, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 396, column: 5, scope: !4071)
!4091 = !DILocation(line: 399, column: 5, scope: !4071)
!4092 = !DILocation(line: 401, column: 5, scope: !4071)
!4093 = !DILocation(line: 402, column: 1, scope: !4071)
!4094 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !236, file: !236, line: 404, type: !3790, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4095)
!4095 = !{!4096}
!4096 = !DILocalVariable(name: "irq_flag", scope: !4094, file: !236, line: 406, type: !136)
!4097 = !DILocation(line: 409, column: 16, scope: !4094)
!4098 = !DILocation(line: 0, scope: !4094)
!4099 = !DILocation(line: 412, column: 21, scope: !4094)
!4100 = !DILocation(line: 413, column: 21, scope: !4094)
!4101 = !DILocation(line: 434, column: 3, scope: !3840, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 416, column: 5, scope: !4094)
!4103 = !DILocation(line: 419, column: 5, scope: !4094)
!4104 = !DILocation(line: 421, column: 5, scope: !4094)
!4105 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !236, file: !236, line: 424, type: !4106, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !235, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!126, !136}
!4108 = !{!4109, !4110}
!4109 = !DILocalVariable(name: "address", arg: 1, scope: !4105, file: !236, line: 424, type: !136)
!4110 = !DILocalVariable(name: "region", scope: !4105, file: !236, line: 426, type: !3795)
!4111 = !DILocation(line: 0, scope: !4105)
!4112 = !DILocation(line: 429, column: 18, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4105, file: !236, line: 429, column: 9)
!4114 = !DILocation(line: 429, column: 28, scope: !4113)
!4115 = !DILocation(line: 429, column: 9, scope: !4105)
!4116 = !DILocation(line: 435, column: 20, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !236, line: 435, column: 13)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !236, line: 433, column: 81)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !236, line: 433, column: 5)
!4120 = distinct !DILexicalBlock(scope: !4105, file: !236, line: 433, column: 5)
!4121 = !DILocation(line: 435, column: 41, scope: !4117)
!4122 = !DILocation(line: 435, column: 36, scope: !4117)
!4123 = !DILocation(line: 435, column: 13, scope: !4118)
!4124 = !DILocation(line: 436, column: 30, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !236, line: 436, column: 17)
!4126 = distinct !DILexicalBlock(scope: !4117, file: !236, line: 435, column: 53)
!4127 = !DILocation(line: 436, column: 59, scope: !4125)
!4128 = !DILocation(line: 436, column: 26, scope: !4125)
!4129 = !DILocation(line: 436, column: 85, scope: !4125)
!4130 = !DILocation(line: 436, column: 99, scope: !4125)
!4131 = !DILocation(line: 436, column: 97, scope: !4125)
!4132 = !DILocation(line: 436, column: 17, scope: !4126)
!4133 = !DILocation(line: 433, column: 77, scope: !4119)
!4134 = !DILocation(line: 433, column: 46, scope: !4119)
!4135 = !DILocation(line: 433, column: 5, scope: !4120)
!4136 = distinct !{!4136, !4135, !4137}
!4137 = !DILocation(line: 440, column: 5, scope: !4120)
!4138 = !DILocation(line: 442, column: 1, scope: !4105)
!4139 = distinct !DISubprogram(name: "hal_nvic_init", scope: !319, file: !319, line: 60, type: !4140, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1080)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!4142}
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !322, line: 158, baseType: !321)
!4143 = !DILocation(line: 62, column: 5, scope: !4139)
!4144 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !319, file: !319, line: 65, type: !4145, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!4142, !330}
!4147 = !{!4148, !4149}
!4148 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4144, file: !319, line: 65, type: !330)
!4149 = !DILocalVariable(name: "status", scope: !4144, file: !319, line: 67, type: !4142)
!4150 = !DILocation(line: 0, scope: !4144)
!4151 = !DILocation(line: 69, column: 40, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4144, file: !319, line: 69, column: 9)
!4153 = !DILocation(line: 73, column: 9, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4152, file: !319, line: 72, column: 12)
!4155 = !DILocation(line: 77, column: 5, scope: !4144)
!4156 = !DILocation(line: 78, column: 1, scope: !4144)
!4157 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !335, file: !335, line: 1494, type: !4158, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4160)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{null, !173}
!4160 = !{!4161}
!4161 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4157, file: !335, line: 1494, type: !173)
!4162 = !DILocation(line: 0, scope: !4157)
!4163 = !DILocation(line: 1497, column: 91, scope: !4157)
!4164 = !DILocation(line: 1497, column: 61, scope: !4157)
!4165 = !DILocation(line: 1497, column: 40, scope: !4157)
!4166 = !DILocation(line: 1497, column: 3, scope: !4157)
!4167 = !DILocation(line: 1497, column: 46, scope: !4157)
!4168 = !DILocation(line: 1498, column: 1, scope: !4157)
!4169 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !319, file: !319, line: 80, type: !4145, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4170)
!4170 = !{!4171, !4172}
!4171 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4169, file: !319, line: 80, type: !330)
!4172 = !DILocalVariable(name: "status", scope: !4169, file: !319, line: 82, type: !4142)
!4173 = !DILocation(line: 0, scope: !4169)
!4174 = !DILocation(line: 84, column: 40, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4169, file: !319, line: 84, column: 9)
!4176 = !DILocation(line: 88, column: 9, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !319, line: 87, column: 12)
!4178 = !DILocation(line: 92, column: 5, scope: !4169)
!4179 = !DILocation(line: 93, column: 1, scope: !4169)
!4180 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !335, file: !335, line: 1507, type: !4158, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4181)
!4181 = !{!4182}
!4182 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4180, file: !335, line: 1507, type: !173)
!4183 = !DILocation(line: 0, scope: !4180)
!4184 = !DILocation(line: 1509, column: 65, scope: !4180)
!4185 = !DILocation(line: 1509, column: 44, scope: !4180)
!4186 = !DILocation(line: 1509, column: 32, scope: !4180)
!4187 = !DILocation(line: 1509, column: 3, scope: !4180)
!4188 = !DILocation(line: 1509, column: 39, scope: !4180)
!4189 = !DILocation(line: 1510, column: 1, scope: !4180)
!4190 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !319, file: !319, line: 95, type: !4191, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4193)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!136, !330}
!4193 = !{!4194, !4195}
!4194 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4190, file: !319, line: 95, type: !330)
!4195 = !DILocalVariable(name: "ret", scope: !4190, file: !319, line: 97, type: !136)
!4196 = !DILocation(line: 0, scope: !4190)
!4197 = !DILocation(line: 99, column: 40, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4190, file: !319, line: 99, column: 9)
!4199 = !DILocation(line: 102, column: 15, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4198, file: !319, line: 101, column: 12)
!4201 = !DILocation(line: 105, column: 5, scope: !4190)
!4202 = !DILocation(line: 106, column: 1, scope: !4190)
!4203 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !335, file: !335, line: 1523, type: !4204, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!136, !173}
!4206 = !{!4207}
!4207 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4203, file: !335, line: 1523, type: !173)
!4208 = !DILocation(line: 0, scope: !4203)
!4209 = !DILocation(line: 1525, column: 51, scope: !4203)
!4210 = !DILocation(line: 1525, column: 23, scope: !4203)
!4211 = !DILocation(line: 1525, column: 83, scope: !4203)
!4212 = !DILocation(line: 1525, column: 22, scope: !4203)
!4213 = !DILocation(line: 1525, column: 3, scope: !4203)
!4214 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !319, file: !319, line: 108, type: !4145, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4215)
!4215 = !{!4216, !4217}
!4216 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4214, file: !319, line: 108, type: !330)
!4217 = !DILocalVariable(name: "status", scope: !4214, file: !319, line: 110, type: !4142)
!4218 = !DILocation(line: 0, scope: !4214)
!4219 = !DILocation(line: 112, column: 40, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4214, file: !319, line: 112, column: 9)
!4221 = !DILocation(line: 116, column: 9, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4220, file: !319, line: 115, column: 12)
!4223 = !DILocation(line: 120, column: 5, scope: !4214)
!4224 = !DILocation(line: 121, column: 1, scope: !4214)
!4225 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !335, file: !335, line: 1535, type: !4158, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4226)
!4226 = !{!4227}
!4227 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4225, file: !335, line: 1535, type: !173)
!4228 = !DILocation(line: 0, scope: !4225)
!4229 = !DILocation(line: 1537, column: 65, scope: !4225)
!4230 = !DILocation(line: 1537, column: 44, scope: !4225)
!4231 = !DILocation(line: 1537, column: 32, scope: !4225)
!4232 = !DILocation(line: 1537, column: 3, scope: !4225)
!4233 = !DILocation(line: 1537, column: 39, scope: !4225)
!4234 = !DILocation(line: 1538, column: 1, scope: !4225)
!4235 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !319, file: !319, line: 123, type: !4145, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4236)
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4235, file: !319, line: 123, type: !330)
!4238 = !DILocalVariable(name: "status", scope: !4235, file: !319, line: 125, type: !4142)
!4239 = !DILocation(line: 0, scope: !4235)
!4240 = !DILocation(line: 127, column: 40, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4235, file: !319, line: 127, column: 9)
!4242 = !DILocation(line: 131, column: 9, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4241, file: !319, line: 130, column: 12)
!4244 = !DILocation(line: 135, column: 5, scope: !4235)
!4245 = !DILocation(line: 136, column: 1, scope: !4235)
!4246 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !335, file: !335, line: 1547, type: !4158, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4247)
!4247 = !{!4248}
!4248 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4246, file: !335, line: 1547, type: !173)
!4249 = !DILocation(line: 0, scope: !4246)
!4250 = !DILocation(line: 1549, column: 65, scope: !4246)
!4251 = !DILocation(line: 1549, column: 44, scope: !4246)
!4252 = !DILocation(line: 1549, column: 32, scope: !4246)
!4253 = !DILocation(line: 1549, column: 3, scope: !4246)
!4254 = !DILocation(line: 1549, column: 39, scope: !4246)
!4255 = !DILocation(line: 1550, column: 1, scope: !4246)
!4256 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !319, file: !319, line: 138, type: !4257, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!4142, !330, !136}
!4259 = !{!4260, !4261, !4262}
!4260 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4256, file: !319, line: 138, type: !330)
!4261 = !DILocalVariable(name: "priority", arg: 2, scope: !4256, file: !319, line: 138, type: !136)
!4262 = !DILocalVariable(name: "status", scope: !4256, file: !319, line: 140, type: !4142)
!4263 = !DILocation(line: 0, scope: !4256)
!4264 = !DILocation(line: 142, column: 40, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4256, file: !319, line: 142, column: 9)
!4266 = !DILocation(line: 146, column: 9, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4265, file: !319, line: 145, column: 12)
!4268 = !DILocation(line: 150, column: 5, scope: !4256)
!4269 = !DILocation(line: 151, column: 1, scope: !4256)
!4270 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !335, file: !335, line: 1577, type: !4271, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{null, !173, !136}
!4273 = !{!4274, !4275}
!4274 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4270, file: !335, line: 1577, type: !173)
!4275 = !DILocalVariable(name: "priority", arg: 2, scope: !4270, file: !335, line: 1577, type: !136)
!4276 = !DILocation(line: 0, scope: !4270)
!4277 = !DILocation(line: 1582, column: 34, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !335, line: 1581, column: 8)
!4279 = distinct !DILexicalBlock(scope: !4270, file: !335, line: 1579, column: 6)
!4280 = !DILocation(line: 1582, column: 5, scope: !4278)
!4281 = !DILocation(line: 1582, column: 32, scope: !4278)
!4282 = !DILocation(line: 1583, column: 1, scope: !4270)
!4283 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !319, file: !319, line: 153, type: !4191, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4284)
!4284 = !{!4285, !4286}
!4285 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4283, file: !319, line: 153, type: !330)
!4286 = !DILocalVariable(name: "ret", scope: !4283, file: !319, line: 155, type: !136)
!4287 = !DILocation(line: 0, scope: !4283)
!4288 = !DILocation(line: 157, column: 40, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4283, file: !319, line: 157, column: 9)
!4290 = !DILocation(line: 160, column: 15, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4289, file: !319, line: 159, column: 12)
!4292 = !DILocation(line: 163, column: 5, scope: !4283)
!4293 = !DILocation(line: 164, column: 1, scope: !4283)
!4294 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !335, file: !335, line: 1597, type: !4204, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4295)
!4295 = !{!4296}
!4296 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4294, file: !335, line: 1597, type: !173)
!4297 = !DILocation(line: 0, scope: !4294)
!4298 = !DILocation(line: 1603, column: 23, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !335, line: 1602, column: 8)
!4300 = distinct !DILexicalBlock(scope: !4294, file: !335, line: 1600, column: 6)
!4301 = !DILocation(line: 1603, column: 60, scope: !4299)
!4302 = !DILocation(line: 1604, column: 1, scope: !4294)
!4303 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !319, file: !319, line: 173, type: !181, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1080)
!4304 = !DILocation(line: 175, column: 1, scope: !4303)
!4305 = distinct !DISubprogram(name: "isrC_main", scope: !319, file: !319, line: 178, type: !4140, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4306)
!4306 = !{!4307, !4308}
!4307 = !DILocalVariable(name: "status", scope: !4305, file: !319, line: 180, type: !4142)
!4308 = !DILocalVariable(name: "irq_number", scope: !4305, file: !319, line: 181, type: !330)
!4309 = !DILocation(line: 0, scope: !4305)
!4310 = !DILocation(line: 188, column: 34, scope: !4305)
!4311 = !DILocation(line: 189, column: 24, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4305, file: !319, line: 189, column: 9)
!4313 = !DILocation(line: 192, column: 48, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4312, file: !319, line: 192, column: 16)
!4315 = !DILocation(line: 192, column: 62, scope: !4314)
!4316 = !DILocation(line: 192, column: 16, scope: !4312)
!4317 = !DILocation(line: 194, column: 9, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4314, file: !319, line: 192, column: 71)
!4319 = !DILocation(line: 195, column: 9, scope: !4318)
!4320 = !DILocation(line: 197, column: 55, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4314, file: !319, line: 196, column: 12)
!4322 = !DILocation(line: 197, column: 41, scope: !4321)
!4323 = !DILocation(line: 197, column: 53, scope: !4321)
!4324 = !DILocation(line: 198, column: 41, scope: !4321)
!4325 = !DILocation(line: 198, column: 9, scope: !4321)
!4326 = !DILocation(line: 202, column: 5, scope: !4305)
!4327 = !DILocation(line: 203, column: 1, scope: !4305)
!4328 = distinct !DISubprogram(name: "get_current_irq", scope: !319, file: !319, line: 166, type: !1112, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4329)
!4329 = !{!4330}
!4330 = !DILocalVariable(name: "irq_num", scope: !4328, file: !319, line: 168, type: !136)
!4331 = !DILocation(line: 168, column: 31, scope: !4328)
!4332 = !DILocation(line: 168, column: 36, scope: !4328)
!4333 = !DILocation(line: 0, scope: !4328)
!4334 = !DILocation(line: 169, column: 21, scope: !4328)
!4335 = !DILocation(line: 169, column: 5, scope: !4328)
!4336 = distinct !DISubprogram(name: "get_pending_irq", scope: !319, file: !319, line: 55, type: !1112, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !1080)
!4337 = !DILocation(line: 57, column: 19, scope: !4336)
!4338 = !DILocation(line: 57, column: 51, scope: !4336)
!4339 = !DILocation(line: 57, column: 5, scope: !4336)
!4340 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !319, file: !319, line: 205, type: !4341, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4344)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!4142, !330, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !322, line: 175, baseType: !412)
!4344 = !{!4345, !4346, !4347}
!4345 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4340, file: !319, line: 205, type: !330)
!4346 = !DILocalVariable(name: "callback", arg: 2, scope: !4340, file: !319, line: 205, type: !4343)
!4347 = !DILocalVariable(name: "mask", scope: !4340, file: !319, line: 207, type: !136)
!4348 = !DILocation(line: 0, scope: !4340)
!4349 = !DILocation(line: 209, column: 24, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4340, file: !319, line: 209, column: 9)
!4351 = !DILocation(line: 213, column: 12, scope: !4340)
!4352 = !DILocation(line: 214, column: 5, scope: !4340)
!4353 = !DILocation(line: 215, column: 37, scope: !4340)
!4354 = !DILocation(line: 215, column: 51, scope: !4340)
!4355 = !DILocation(line: 216, column: 37, scope: !4340)
!4356 = !DILocation(line: 216, column: 49, scope: !4340)
!4357 = !DILocation(line: 217, column: 5, scope: !4340)
!4358 = !DILocation(line: 219, column: 5, scope: !4340)
!4359 = !DILocation(line: 220, column: 1, scope: !4340)
!4360 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !319, file: !319, line: 222, type: !4361, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!4142, !3408}
!4363 = !{!4364}
!4364 = !DILocalVariable(name: "mask", arg: 1, scope: !4360, file: !319, line: 222, type: !3408)
!4365 = !DILocation(line: 0, scope: !4360)
!4366 = !DILocation(line: 224, column: 13, scope: !4360)
!4367 = !DILocation(line: 224, column: 11, scope: !4360)
!4368 = !DILocation(line: 225, column: 5, scope: !4360)
!4369 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !319, file: !319, line: 228, type: !4370, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !4372)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!4142, !136}
!4372 = !{!4373}
!4373 = !DILocalVariable(name: "mask", arg: 1, scope: !4369, file: !319, line: 228, type: !136)
!4374 = !DILocation(line: 0, scope: !4369)
!4375 = !DILocation(line: 230, column: 5, scope: !4369)
!4376 = !DILocation(line: 231, column: 5, scope: !4369)
!4377 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1030, file: !1030, line: 50, type: !4378, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4382)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!4380, !4381, !128}
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1033, line: 238, baseType: !1032)
!4381 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !432, line: 281, baseType: !533)
!4382 = !{!4383, !4384, !4385}
!4383 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4377, file: !1030, line: 50, type: !4381)
!4384 = !DILocalVariable(name: "function_index", arg: 2, scope: !4377, file: !1030, line: 50, type: !128)
!4385 = !DILocalVariable(name: "ret_value", scope: !4377, file: !1030, line: 52, type: !331)
!4386 = !DILocation(line: 0, scope: !4377)
!4387 = !DILocation(line: 53, column: 18, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4377, file: !1030, line: 53, column: 9)
!4389 = !DILocation(line: 53, column: 9, scope: !4377)
!4390 = !DILocation(line: 57, column: 24, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4377, file: !1030, line: 57, column: 9)
!4392 = !DILocation(line: 57, column: 9, scope: !4377)
!4393 = !DILocation(line: 57, column: 9, scope: !4391)
!4394 = !DILocation(line: 60, column: 17, scope: !4377)
!4395 = !DILocation(line: 61, column: 12, scope: !4377)
!4396 = !DILocation(line: 61, column: 5, scope: !4377)
!4397 = !DILocation(line: 62, column: 1, scope: !4377)
!4398 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1030, file: !1030, line: 64, type: !4399, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4402)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!4401, !4381}
!4401 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1033, line: 229, baseType: !1039)
!4402 = !{!4403}
!4403 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4398, file: !1030, line: 64, type: !4381)
!4404 = !DILocation(line: 0, scope: !4398)
!4405 = !DILocation(line: 66, column: 5, scope: !4398)
!4406 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1030, file: !1030, line: 69, type: !4399, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4407)
!4407 = !{!4408}
!4408 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4406, file: !1030, line: 69, type: !4381)
!4409 = !DILocation(line: 0, scope: !4406)
!4410 = !DILocation(line: 71, column: 5, scope: !4406)
!4411 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1030, file: !1030, line: 74, type: !4412, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4415)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!4401, !4381, !4414}
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 32)
!4415 = !{!4416, !4417, !4418}
!4416 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4411, file: !1030, line: 74, type: !4381)
!4417 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4411, file: !1030, line: 74, type: !4414)
!4418 = !DILocalVariable(name: "status", scope: !4411, file: !1030, line: 76, type: !4419)
!4419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1060, line: 67, baseType: !4420)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1060, line: 62, size: 64, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4425}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4420, file: !1060, line: 63, baseType: !136, size: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4420, file: !1060, line: 64, baseType: !128, size: 8, offset: 32)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4420, file: !1060, line: 65, baseType: !128, size: 8, offset: 40)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4420, file: !1060, line: 66, baseType: !128, size: 8, offset: 48)
!4426 = !DILocation(line: 0, scope: !4411)
!4427 = !DILocation(line: 77, column: 14, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4411, file: !1030, line: 77, column: 9)
!4429 = !DILocation(line: 77, column: 9, scope: !4411)
!4430 = !DILocation(line: 81, column: 18, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4411, file: !1030, line: 81, column: 9)
!4432 = !DILocation(line: 81, column: 9, scope: !4411)
!4433 = !DILocation(line: 85, column: 14, scope: !4411)
!4434 = !DILocation(line: 86, column: 18, scope: !4411)
!4435 = !DILocation(line: 86, column: 16, scope: !4411)
!4436 = !DILocation(line: 87, column: 5, scope: !4411)
!4437 = !DILocation(line: 88, column: 1, scope: !4411)
!4438 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1030, file: !1030, line: 90, type: !4439, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4441)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!4401, !4381, !1066}
!4441 = !{!4442, !4443, !4444}
!4442 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4438, file: !1030, line: 90, type: !4381)
!4443 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4438, file: !1030, line: 90, type: !1066)
!4444 = !DILocalVariable(name: "ret_value", scope: !4438, file: !1030, line: 92, type: !331)
!4445 = !DILocation(line: 0, scope: !4438)
!4446 = !DILocation(line: 93, column: 18, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4438, file: !1030, line: 93, column: 9)
!4448 = !DILocation(line: 93, column: 9, scope: !4438)
!4449 = !DILocation(line: 97, column: 60, scope: !4438)
!4450 = !DILocation(line: 97, column: 17, scope: !4438)
!4451 = !DILocation(line: 98, column: 12, scope: !4438)
!4452 = !DILocation(line: 98, column: 5, scope: !4438)
!4453 = !DILocation(line: 99, column: 1, scope: !4438)
!4454 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1030, file: !1030, line: 101, type: !4412, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4455)
!4455 = !{!4456, !4457, !4458}
!4456 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4454, file: !1030, line: 101, type: !4381)
!4457 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4454, file: !1030, line: 101, type: !4414)
!4458 = !DILocalVariable(name: "status", scope: !4454, file: !1030, line: 103, type: !4419)
!4459 = !DILocation(line: 0, scope: !4454)
!4460 = !DILocation(line: 104, column: 18, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4454, file: !1030, line: 104, column: 9)
!4462 = !DILocation(line: 104, column: 9, scope: !4454)
!4463 = !DILocation(line: 108, column: 14, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4454, file: !1030, line: 108, column: 9)
!4465 = !DILocation(line: 108, column: 9, scope: !4454)
!4466 = !DILocation(line: 112, column: 14, scope: !4454)
!4467 = !DILocation(line: 113, column: 18, scope: !4454)
!4468 = !DILocation(line: 113, column: 16, scope: !4454)
!4469 = !DILocation(line: 114, column: 5, scope: !4454)
!4470 = !DILocation(line: 115, column: 1, scope: !4454)
!4471 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1030, file: !1030, line: 117, type: !4472, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4475)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!4401, !4381, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1033, line: 213, baseType: !1049)
!4475 = !{!4476, !4477, !4478}
!4476 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4471, file: !1030, line: 117, type: !4381)
!4477 = !DILocalVariable(name: "direction", arg: 2, scope: !4471, file: !1030, line: 117, type: !4474)
!4478 = !DILocalVariable(name: "ret_value", scope: !4471, file: !1030, line: 119, type: !331)
!4479 = !DILocation(line: 0, scope: !4471)
!4480 = !DILocation(line: 120, column: 18, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4471, file: !1030, line: 120, column: 9)
!4482 = !DILocation(line: 120, column: 9, scope: !4471)
!4483 = !DILocation(line: 123, column: 17, scope: !4471)
!4484 = !DILocation(line: 125, column: 12, scope: !4471)
!4485 = !DILocation(line: 125, column: 5, scope: !4471)
!4486 = !DILocation(line: 126, column: 1, scope: !4471)
!4487 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1030, file: !1030, line: 128, type: !4488, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4491)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!4401, !4381, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 32)
!4491 = !{!4492, !4493, !4494}
!4492 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4487, file: !1030, line: 128, type: !4381)
!4493 = !DILocalVariable(name: "direction", arg: 2, scope: !4487, file: !1030, line: 128, type: !4490)
!4494 = !DILocalVariable(name: "status", scope: !4487, file: !1030, line: 131, type: !4419)
!4495 = !DILocation(line: 0, scope: !4487)
!4496 = !DILocation(line: 132, column: 18, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4487, file: !1030, line: 132, column: 9)
!4498 = !DILocation(line: 132, column: 9, scope: !4487)
!4499 = !DILocation(line: 136, column: 14, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4487, file: !1030, line: 136, column: 9)
!4501 = !DILocation(line: 136, column: 9, scope: !4487)
!4502 = !DILocation(line: 140, column: 14, scope: !4487)
!4503 = !DILocation(line: 141, column: 18, scope: !4487)
!4504 = !DILocation(line: 141, column: 16, scope: !4487)
!4505 = !DILocation(line: 142, column: 5, scope: !4487)
!4506 = !DILocation(line: 143, column: 1, scope: !4487)
!4507 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1030, file: !1030, line: 146, type: !4399, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4508)
!4508 = !{!4509, !4510}
!4509 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4507, file: !1030, line: 146, type: !4381)
!4510 = !DILocalVariable(name: "status", scope: !4507, file: !1030, line: 148, type: !4419)
!4511 = !DILocation(line: 0, scope: !4507)
!4512 = !DILocation(line: 149, column: 18, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4507, file: !1030, line: 149, column: 9)
!4514 = !DILocation(line: 149, column: 9, scope: !4507)
!4515 = !DILocation(line: 153, column: 14, scope: !4507)
!4516 = !DILocation(line: 154, column: 76, scope: !4507)
!4517 = !DILocation(line: 154, column: 12, scope: !4507)
!4518 = !DILocation(line: 154, column: 5, scope: !4507)
!4519 = !DILocation(line: 155, column: 1, scope: !4507)
!4520 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1030, file: !1030, line: 157, type: !4399, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4521)
!4521 = !{!4522, !4523}
!4522 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4520, file: !1030, line: 157, type: !4381)
!4523 = !DILocalVariable(name: "ret_value", scope: !4520, file: !1030, line: 159, type: !331)
!4524 = !DILocation(line: 0, scope: !4520)
!4525 = !DILocation(line: 160, column: 18, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !1030, line: 160, column: 9)
!4527 = !DILocation(line: 160, column: 9, scope: !4520)
!4528 = !DILocation(line: 164, column: 17, scope: !4520)
!4529 = !DILocation(line: 165, column: 19, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4520, file: !1030, line: 165, column: 9)
!4531 = !DILocation(line: 165, column: 9, scope: !4520)
!4532 = !DILocation(line: 168, column: 17, scope: !4520)
!4533 = !DILocation(line: 169, column: 12, scope: !4520)
!4534 = !DILocation(line: 169, column: 5, scope: !4520)
!4535 = !DILocation(line: 170, column: 1, scope: !4520)
!4536 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1030, file: !1030, line: 172, type: !4399, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4537)
!4537 = !{!4538, !4539}
!4538 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4536, file: !1030, line: 172, type: !4381)
!4539 = !DILocalVariable(name: "ret_value", scope: !4536, file: !1030, line: 174, type: !331)
!4540 = !DILocation(line: 0, scope: !4536)
!4541 = !DILocation(line: 175, column: 18, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4536, file: !1030, line: 175, column: 9)
!4543 = !DILocation(line: 175, column: 9, scope: !4536)
!4544 = !DILocation(line: 179, column: 17, scope: !4536)
!4545 = !DILocation(line: 180, column: 19, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4536, file: !1030, line: 180, column: 9)
!4547 = !DILocation(line: 180, column: 9, scope: !4536)
!4548 = !DILocation(line: 183, column: 17, scope: !4536)
!4549 = !DILocation(line: 184, column: 12, scope: !4536)
!4550 = !DILocation(line: 184, column: 5, scope: !4536)
!4551 = !DILocation(line: 185, column: 1, scope: !4536)
!4552 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1030, file: !1030, line: 187, type: !4399, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4553)
!4553 = !{!4554, !4555}
!4554 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4552, file: !1030, line: 187, type: !4381)
!4555 = !DILocalVariable(name: "ret_value", scope: !4552, file: !1030, line: 189, type: !331)
!4556 = !DILocation(line: 0, scope: !4552)
!4557 = !DILocation(line: 191, column: 18, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4552, file: !1030, line: 191, column: 9)
!4559 = !DILocation(line: 191, column: 9, scope: !4552)
!4560 = !DILocation(line: 195, column: 17, scope: !4552)
!4561 = !DILocation(line: 196, column: 12, scope: !4552)
!4562 = !DILocation(line: 196, column: 5, scope: !4552)
!4563 = !DILocation(line: 197, column: 1, scope: !4552)
!4564 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1030, file: !1030, line: 200, type: !4565, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!4401, !4381, !1067}
!4567 = !{!4568, !4569, !4570}
!4568 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4564, file: !1030, line: 200, type: !4381)
!4569 = !DILocalVariable(name: "driving", arg: 2, scope: !4564, file: !1030, line: 200, type: !1067)
!4570 = !DILocalVariable(name: "ret_value", scope: !4564, file: !1030, line: 202, type: !331)
!4571 = !DILocation(line: 0, scope: !4564)
!4572 = !DILocation(line: 204, column: 18, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4564, file: !1030, line: 204, column: 9)
!4574 = !DILocation(line: 204, column: 9, scope: !4564)
!4575 = !DILocation(line: 208, column: 64, scope: !4564)
!4576 = !DILocation(line: 208, column: 17, scope: !4564)
!4577 = !DILocation(line: 210, column: 12, scope: !4564)
!4578 = !DILocation(line: 210, column: 5, scope: !4564)
!4579 = !DILocation(line: 211, column: 1, scope: !4564)
!4580 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1030, file: !1030, line: 214, type: !4581, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4584)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!4401, !4381, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 32)
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4580, file: !1030, line: 214, type: !4381)
!4586 = !DILocalVariable(name: "driving", arg: 2, scope: !4580, file: !1030, line: 214, type: !4583)
!4587 = !DILocalVariable(name: "ret_value", scope: !4580, file: !1030, line: 216, type: !331)
!4588 = !DILocalVariable(name: "value", scope: !4580, file: !1030, line: 217, type: !128)
!4589 = !DILocation(line: 0, scope: !4580)
!4590 = !DILocation(line: 217, column: 5, scope: !4580)
!4591 = !DILocation(line: 219, column: 18, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4580, file: !1030, line: 219, column: 9)
!4593 = !DILocation(line: 219, column: 9, scope: !4580)
!4594 = !DILocation(line: 223, column: 17, scope: !4580)
!4595 = !DILocation(line: 225, column: 44, scope: !4580)
!4596 = !DILocation(line: 225, column: 16, scope: !4580)
!4597 = !DILocation(line: 225, column: 14, scope: !4580)
!4598 = !DILocation(line: 227, column: 12, scope: !4580)
!4599 = !DILocation(line: 227, column: 5, scope: !4580)
!4600 = !DILocation(line: 228, column: 1, scope: !4580)
!4601 = distinct !DISubprogram(name: "hal_uart_init", scope: !421, file: !421, line: 234, type: !4602, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4606)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4604, !481, !4605}
!4604 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !424, line: 351, baseType: !423)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 32)
!4606 = !{!4607, !4608}
!4607 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4601, file: !421, line: 234, type: !481)
!4608 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4601, file: !421, line: 234, type: !4605)
!4609 = !DILocation(line: 0, scope: !4601)
!4610 = !DILocation(line: 236, column: 10, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4601, file: !421, line: 236, column: 9)
!4612 = !DILocation(line: 236, column: 9, scope: !4601)
!4613 = !DILocation(line: 239, column: 41, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4601, file: !421, line: 239, column: 9)
!4615 = !DILocation(line: 239, column: 9, scope: !4601)
!4616 = !DILocation(line: 242, column: 5, scope: !4601)
!4617 = !DILocation(line: 243, column: 45, scope: !4601)
!4618 = !DILocation(line: 243, column: 12, scope: !4601)
!4619 = !DILocation(line: 244, column: 12, scope: !4601)
!4620 = !DILocation(line: 243, column: 5, scope: !4601)
!4621 = !DILocation(line: 245, column: 58, scope: !4601)
!4622 = !DILocation(line: 246, column: 30, scope: !4601)
!4623 = !{i32 0, i32 2}
!4624 = !DILocation(line: 246, column: 5, scope: !4601)
!4625 = !DILocation(line: 247, column: 5, scope: !4601)
!4626 = !DILocation(line: 249, column: 31, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4601, file: !421, line: 249, column: 9)
!4628 = !DILocation(line: 249, column: 28, scope: !4627)
!4629 = !DILocation(line: 261, column: 1, scope: !4601)
!4630 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !421, file: !421, line: 93, type: !4631, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4635)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!126, !481, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 32)
!4634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!4635 = !{!4636, !4637}
!4636 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4630, file: !421, line: 93, type: !481)
!4637 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4630, file: !421, line: 93, type: !4633)
!4638 = !DILocation(line: 0, scope: !4630)
!4639 = !DILocation(line: 95, column: 10, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4630, file: !421, line: 95, column: 9)
!4641 = !DILocation(line: 95, column: 9, scope: !4630)
!4642 = !DILocation(line: 101, column: 23, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4630, file: !421, line: 101, column: 9)
!4644 = !DILocation(line: 101, column: 32, scope: !4643)
!4645 = !DILocation(line: 101, column: 60, scope: !4643)
!4646 = !DILocation(line: 102, column: 27, scope: !4643)
!4647 = !DILocation(line: 102, column: 34, scope: !4643)
!4648 = !DILocation(line: 102, column: 58, scope: !4643)
!4649 = !DILocation(line: 103, column: 27, scope: !4643)
!4650 = !DILocation(line: 103, column: 36, scope: !4643)
!4651 = !DILocation(line: 103, column: 59, scope: !4643)
!4652 = !DILocation(line: 104, column: 27, scope: !4643)
!4653 = !DILocation(line: 104, column: 39, scope: !4643)
!4654 = !DILocation(line: 101, column: 9, scope: !4630)
!4655 = !DILocation(line: 109, column: 1, scope: !4630)
!4656 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !421, file: !421, line: 139, type: !4657, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4659)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!3261, !481}
!4659 = !{!4660}
!4660 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4656, file: !421, line: 139, type: !481)
!4661 = !DILocation(line: 0, scope: !4656)
!4662 = !DILocation(line: 141, column: 24, scope: !4656)
!4663 = !DILocation(line: 141, column: 12, scope: !4656)
!4664 = !DILocation(line: 141, column: 5, scope: !4656)
!4665 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !421, file: !421, line: 593, type: !4666, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!4604, !481, !4633}
!4668 = !{!4669, !4670}
!4669 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4665, file: !421, line: 593, type: !481)
!4670 = !DILocalVariable(name: "config", arg: 2, scope: !4665, file: !421, line: 593, type: !4633)
!4671 = !DILocation(line: 0, scope: !4665)
!4672 = !DILocation(line: 595, column: 10, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4665, file: !421, line: 595, column: 9)
!4674 = !DILocation(line: 595, column: 9, scope: !4665)
!4675 = !DILocation(line: 598, column: 45, scope: !4665)
!4676 = !DILocation(line: 598, column: 12, scope: !4665)
!4677 = !DILocation(line: 598, column: 59, scope: !4665)
!4678 = !DILocation(line: 598, column: 5, scope: !4665)
!4679 = !DILocation(line: 599, column: 23, scope: !4665)
!4680 = !DILocation(line: 600, column: 59, scope: !4665)
!4681 = !DILocation(line: 600, column: 23, scope: !4665)
!4682 = !DILocation(line: 601, column: 62, scope: !4665)
!4683 = !DILocation(line: 601, column: 23, scope: !4665)
!4684 = !DILocation(line: 602, column: 57, scope: !4665)
!4685 = !DILocation(line: 602, column: 23, scope: !4665)
!4686 = !DILocation(line: 603, column: 58, scope: !4665)
!4687 = !DILocation(line: 603, column: 23, scope: !4665)
!4688 = !DILocation(line: 599, column: 5, scope: !4665)
!4689 = !DILocation(line: 604, column: 5, scope: !4665)
!4690 = !DILocation(line: 605, column: 1, scope: !4665)
!4691 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !421, file: !421, line: 145, type: !4692, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4694)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!136, !496}
!4694 = !{!4695, !4696}
!4695 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4691, file: !421, line: 145, type: !496)
!4696 = !DILocalVariable(name: "baudrate_tbl", scope: !4691, file: !421, line: 147, type: !4697)
!4697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 416, elements: !4698)
!4698 = !{!4699}
!4699 = !DISubrange(count: 13)
!4700 = !DILocation(line: 0, scope: !4691)
!4701 = !DILocation(line: 147, column: 14, scope: !4691)
!4702 = !DILocation(line: 151, column: 12, scope: !4691)
!4703 = !DILocation(line: 151, column: 5, scope: !4691)
!4704 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !421, file: !421, line: 155, type: !4705, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!3331, !498}
!4707 = !{!4708, !4709}
!4708 = !DILocalVariable(name: "word_length", arg: 1, scope: !4704, file: !421, line: 155, type: !498)
!4709 = !DILocalVariable(name: "databit_tbl", scope: !4704, file: !421, line: 157, type: !4710)
!4710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3331, size: 64, elements: !397)
!4711 = !DILocation(line: 0, scope: !4704)
!4712 = !DILocation(line: 157, column: 14, scope: !4704)
!4713 = !DILocation(line: 160, column: 12, scope: !4704)
!4714 = !DILocation(line: 160, column: 5, scope: !4704)
!4715 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !421, file: !421, line: 164, type: !4716, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4718)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!3331, !502}
!4718 = !{!4719, !4720}
!4719 = !DILocalVariable(name: "parity", arg: 1, scope: !4715, file: !421, line: 164, type: !502)
!4720 = !DILocalVariable(name: "parity_tbl", scope: !4715, file: !421, line: 166, type: !4721)
!4721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3331, size: 80, elements: !401)
!4722 = !DILocation(line: 0, scope: !4715)
!4723 = !DILocation(line: 166, column: 14, scope: !4715)
!4724 = !DILocation(line: 169, column: 12, scope: !4715)
!4725 = !DILocation(line: 169, column: 5, scope: !4715)
!4726 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !421, file: !421, line: 173, type: !4727, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4729)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!3331, !500}
!4729 = !{!4730, !4731}
!4730 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4726, file: !421, line: 173, type: !500)
!4731 = !DILocalVariable(name: "stopbit_tbl", scope: !4726, file: !421, line: 175, type: !4732)
!4732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3331, size: 48, elements: !695)
!4733 = !DILocation(line: 0, scope: !4726)
!4734 = !DILocation(line: 175, column: 14, scope: !4726)
!4735 = !DILocation(line: 178, column: 12, scope: !4726)
!4736 = !DILocation(line: 178, column: 5, scope: !4726)
!4737 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !421, file: !421, line: 87, type: !4738, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!126, !481}
!4740 = !{!4741}
!4741 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4737, file: !421, line: 87, type: !481)
!4742 = !DILocation(line: 0, scope: !4737)
!4743 = !DILocation(line: 89, column: 23, scope: !4737)
!4744 = !DILocation(line: 89, column: 5, scope: !4737)
!4745 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !421, file: !421, line: 264, type: !4746, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!4604, !481}
!4748 = !{!4749}
!4749 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4745, file: !421, line: 264, type: !481)
!4750 = !DILocation(line: 0, scope: !4745)
!4751 = !DILocation(line: 266, column: 10, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4745, file: !421, line: 266, column: 9)
!4753 = !DILocation(line: 266, column: 9, scope: !4745)
!4754 = !DILocation(line: 269, column: 41, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4745, file: !421, line: 269, column: 9)
!4756 = !DILocation(line: 269, column: 62, scope: !4755)
!4757 = !DILocation(line: 269, column: 9, scope: !4745)
!4758 = !DILocation(line: 272, column: 5, scope: !4745)
!4759 = !DILocation(line: 275, column: 22, scope: !4745)
!4760 = !DILocation(line: 275, column: 5, scope: !4745)
!4761 = !DILocation(line: 284, column: 5, scope: !4745)
!4762 = !DILocation(line: 286, column: 5, scope: !4745)
!4763 = !DILocation(line: 287, column: 1, scope: !4745)
!4764 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !421, file: !421, line: 290, type: !4765, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4767)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !481, !474}
!4767 = !{!4768, !4769, !4770}
!4768 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4764, file: !421, line: 290, type: !481)
!4769 = !DILocalVariable(name: "byte", arg: 2, scope: !4764, file: !421, line: 290, type: !474)
!4770 = !DILocalVariable(name: "int_no", scope: !4764, file: !421, line: 292, type: !3261)
!4771 = !DILocation(line: 0, scope: !4764)
!4772 = !DILocation(line: 292, column: 26, scope: !4764)
!4773 = !DILocation(line: 294, column: 16, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4764, file: !421, line: 294, column: 9)
!4775 = !DILocation(line: 294, column: 9, scope: !4764)
!4776 = !DILocation(line: 295, column: 9, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !421, line: 294, column: 34)
!4778 = !DILocation(line: 296, column: 5, scope: !4777)
!4779 = !DILocation(line: 299, column: 1, scope: !4764)
!4780 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !421, file: !421, line: 302, type: !4781, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!136, !481, !565, !136}
!4783 = !{!4784, !4785, !4786, !4787, !4788}
!4784 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4780, file: !421, line: 302, type: !481)
!4785 = !DILocalVariable(name: "data", arg: 2, scope: !4780, file: !421, line: 302, type: !565)
!4786 = !DILocalVariable(name: "size", arg: 3, scope: !4780, file: !421, line: 302, type: !136)
!4787 = !DILocalVariable(name: "int_no", scope: !4780, file: !421, line: 304, type: !3261)
!4788 = !DILocalVariable(name: "index", scope: !4780, file: !421, line: 305, type: !136)
!4789 = !DILocation(line: 0, scope: !4780)
!4790 = !DILocation(line: 304, column: 26, scope: !4780)
!4791 = !DILocation(line: 307, column: 14, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4780, file: !421, line: 307, column: 9)
!4793 = !DILocation(line: 307, column: 9, scope: !4780)
!4794 = !DILocation(line: 313, column: 53, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !421, line: 312, column: 48)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !421, line: 312, column: 9)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !421, line: 312, column: 9)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !421, line: 311, column: 33)
!4799 = distinct !DILexicalBlock(scope: !4780, file: !421, line: 311, column: 9)
!4800 = !DILocation(line: 313, column: 13, scope: !4795)
!4801 = !DILocation(line: 312, column: 44, scope: !4796)
!4802 = !DILocation(line: 312, column: 31, scope: !4796)
!4803 = !DILocation(line: 312, column: 9, scope: !4797)
!4804 = distinct !{!4804, !4803, !4805}
!4805 = !DILocation(line: 314, column: 9, scope: !4797)
!4806 = !DILocation(line: 318, column: 1, scope: !4780)
!4807 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !421, file: !421, line: 320, type: !4781, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4808)
!4808 = !{!4809, !4810, !4811, !4812, !4813, !4814}
!4809 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4807, file: !421, line: 320, type: !481)
!4810 = !DILocalVariable(name: "data", arg: 2, scope: !4807, file: !421, line: 320, type: !565)
!4811 = !DILocalVariable(name: "size", arg: 3, scope: !4807, file: !421, line: 320, type: !136)
!4812 = !DILocalVariable(name: "actual_space", scope: !4807, file: !421, line: 322, type: !136)
!4813 = !DILocalVariable(name: "send_size", scope: !4807, file: !421, line: 322, type: !136)
!4814 = !DILocalVariable(name: "ch", scope: !4807, file: !421, line: 323, type: !1843)
!4815 = !DILocation(line: 0, scope: !4807)
!4816 = !DILocation(line: 322, column: 5, scope: !4807)
!4817 = !DILocation(line: 328, column: 10, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4807, file: !421, line: 328, column: 9)
!4819 = !DILocation(line: 328, column: 9, scope: !4807)
!4820 = !DILocation(line: 332, column: 15, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4807, file: !421, line: 332, column: 9)
!4822 = !DILocation(line: 332, column: 24, scope: !4821)
!4823 = !DILocation(line: 335, column: 42, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4807, file: !421, line: 335, column: 9)
!4825 = !DILocation(line: 335, column: 9, scope: !4807)
!4826 = !DILocation(line: 349, column: 30, scope: !4807)
!4827 = !DILocation(line: 349, column: 5, scope: !4807)
!4828 = !DILocation(line: 350, column: 9, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4807, file: !421, line: 350, column: 9)
!4830 = !DILocation(line: 350, column: 22, scope: !4829)
!4831 = !DILocation(line: 355, column: 5, scope: !4807)
!4832 = !DILocation(line: 357, column: 22, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4807, file: !421, line: 357, column: 9)
!4834 = !DILocation(line: 357, column: 19, scope: !4833)
!4835 = !DILocation(line: 357, column: 9, scope: !4807)
!4836 = !DILocation(line: 358, column: 14, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4833, file: !421, line: 357, column: 36)
!4838 = !{i32 14, i32 18}
!4839 = !DILocation(line: 359, column: 9, scope: !4837)
!4840 = !DILocation(line: 360, column: 5, scope: !4837)
!4841 = !DILocation(line: 362, column: 1, scope: !4807)
!4842 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !421, file: !421, line: 191, type: !4843, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!1843, !3261, !126}
!4845 = !{!4846, !4847, !4848}
!4846 = !DILocalVariable(name: "port", arg: 1, scope: !4842, file: !421, line: 191, type: !3261)
!4847 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4842, file: !421, line: 191, type: !126)
!4848 = !DILocalVariable(name: "ch", scope: !4842, file: !421, line: 193, type: !1843)
!4849 = !DILocation(line: 0, scope: !4842)
!4850 = !DILocation(line: 195, column: 14, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4842, file: !421, line: 195, column: 9)
!4852 = !DILocation(line: 195, column: 9, scope: !4842)
!4853 = !DILocation(line: 209, column: 5, scope: !4842)
!4854 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !421, file: !421, line: 365, type: !4855, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4857)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!474, !481}
!4857 = !{!4858, !4859}
!4858 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4854, file: !421, line: 365, type: !481)
!4859 = !DILocalVariable(name: "int_no", scope: !4854, file: !421, line: 367, type: !3261)
!4860 = !DILocation(line: 0, scope: !4854)
!4861 = !DILocation(line: 367, column: 26, scope: !4854)
!4862 = !DILocation(line: 369, column: 16, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4854, file: !421, line: 369, column: 9)
!4864 = !DILocation(line: 369, column: 9, scope: !4854)
!4865 = !DILocation(line: 370, column: 22, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4863, file: !421, line: 369, column: 33)
!4867 = !DILocation(line: 370, column: 9, scope: !4866)
!4868 = !DILocation(line: 0, scope: !4863)
!4869 = !DILocation(line: 375, column: 1, scope: !4854)
!4870 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !421, file: !421, line: 377, type: !4871, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4873)
!4871 = !DISubroutineType(types: !4872)
!4872 = !{!136, !481}
!4873 = !{!4874, !4875}
!4874 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4870, file: !421, line: 377, type: !481)
!4875 = !DILocalVariable(name: "int_no", scope: !4870, file: !421, line: 379, type: !3261)
!4876 = !DILocation(line: 0, scope: !4870)
!4877 = !DILocation(line: 379, column: 26, scope: !4870)
!4878 = !DILocation(line: 381, column: 16, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4870, file: !421, line: 381, column: 9)
!4880 = !DILocation(line: 381, column: 9, scope: !4870)
!4881 = !DILocation(line: 382, column: 16, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !421, line: 381, column: 33)
!4883 = !DILocation(line: 382, column: 9, scope: !4882)
!4884 = !DILocation(line: 0, scope: !4879)
!4885 = !DILocation(line: 387, column: 1, scope: !4870)
!4886 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !421, file: !421, line: 390, type: !4887, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4889)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!136, !481, !521, !136}
!4889 = !{!4890, !4891, !4892, !4893, !4894}
!4890 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4886, file: !421, line: 390, type: !481)
!4891 = !DILocalVariable(name: "buffer", arg: 2, scope: !4886, file: !421, line: 390, type: !521)
!4892 = !DILocalVariable(name: "size", arg: 3, scope: !4886, file: !421, line: 390, type: !136)
!4893 = !DILocalVariable(name: "int_no", scope: !4886, file: !421, line: 392, type: !3261)
!4894 = !DILocalVariable(name: "index", scope: !4886, file: !421, line: 393, type: !136)
!4895 = !DILocation(line: 0, scope: !4886)
!4896 = !DILocation(line: 392, column: 26, scope: !4886)
!4897 = !DILocation(line: 395, column: 16, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4886, file: !421, line: 395, column: 9)
!4899 = !DILocation(line: 395, column: 9, scope: !4886)
!4900 = !DILocation(line: 401, column: 38, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !421, line: 400, column: 48)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !421, line: 400, column: 9)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !421, line: 400, column: 9)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !421, line: 399, column: 33)
!4905 = distinct !DILexicalBlock(scope: !4886, file: !421, line: 399, column: 9)
!4906 = !DILocation(line: 401, column: 13, scope: !4901)
!4907 = !DILocation(line: 401, column: 27, scope: !4901)
!4908 = !DILocation(line: 400, column: 44, scope: !4902)
!4909 = !DILocation(line: 400, column: 31, scope: !4902)
!4910 = !DILocation(line: 400, column: 9, scope: !4903)
!4911 = distinct !{!4911, !4910, !4912}
!4912 = !DILocation(line: 402, column: 9, scope: !4903)
!4913 = !DILocation(line: 406, column: 1, scope: !4886)
!4914 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !421, file: !421, line: 408, type: !4887, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4915)
!4915 = !{!4916, !4917, !4918, !4919, !4920, !4921}
!4916 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4914, file: !421, line: 408, type: !481)
!4917 = !DILocalVariable(name: "buffer", arg: 2, scope: !4914, file: !421, line: 408, type: !521)
!4918 = !DILocalVariable(name: "size", arg: 3, scope: !4914, file: !421, line: 408, type: !136)
!4919 = !DILocalVariable(name: "actual_size", scope: !4914, file: !421, line: 410, type: !136)
!4920 = !DILocalVariable(name: "receive_size", scope: !4914, file: !421, line: 410, type: !136)
!4921 = !DILocalVariable(name: "ch", scope: !4914, file: !421, line: 411, type: !1843)
!4922 = !DILocation(line: 0, scope: !4914)
!4923 = !DILocation(line: 410, column: 5, scope: !4914)
!4924 = !DILocation(line: 413, column: 10, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4914, file: !421, line: 413, column: 9)
!4926 = !DILocation(line: 413, column: 9, scope: !4914)
!4927 = !DILocation(line: 417, column: 17, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4914, file: !421, line: 417, column: 9)
!4929 = !DILocation(line: 417, column: 26, scope: !4928)
!4930 = !DILocation(line: 421, column: 30, scope: !4914)
!4931 = !DILocation(line: 421, column: 5, scope: !4914)
!4932 = !DILocation(line: 422, column: 9, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4914, file: !421, line: 422, column: 9)
!4934 = !DILocation(line: 422, column: 21, scope: !4933)
!4935 = !DILocation(line: 427, column: 5, scope: !4914)
!4936 = !DILocation(line: 429, column: 25, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4914, file: !421, line: 429, column: 9)
!4938 = !DILocation(line: 429, column: 22, scope: !4937)
!4939 = !DILocation(line: 429, column: 9, scope: !4914)
!4940 = !DILocation(line: 430, column: 14, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4937, file: !421, line: 429, column: 38)
!4942 = !DILocation(line: 431, column: 9, scope: !4941)
!4943 = !DILocation(line: 432, column: 5, scope: !4941)
!4944 = !DILocation(line: 435, column: 1, scope: !4914)
!4945 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !421, file: !421, line: 438, type: !4871, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4946)
!4946 = !{!4947, !4948}
!4947 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4945, file: !421, line: 438, type: !481)
!4948 = !DILocalVariable(name: "length", scope: !4945, file: !421, line: 440, type: !136)
!4949 = !DILocation(line: 0, scope: !4945)
!4950 = !DILocation(line: 440, column: 5, scope: !4945)
!4951 = !DILocation(line: 440, column: 14, scope: !4945)
!4952 = !DILocation(line: 442, column: 10, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4945, file: !421, line: 442, column: 9)
!4954 = !DILocation(line: 442, column: 9, scope: !4945)
!4955 = !DILocation(line: 446, column: 30, scope: !4945)
!4956 = !DILocation(line: 446, column: 5, scope: !4945)
!4957 = !DILocation(line: 447, column: 12, scope: !4945)
!4958 = !DILocation(line: 447, column: 5, scope: !4945)
!4959 = !DILocation(line: 448, column: 1, scope: !4945)
!4960 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !421, file: !421, line: 451, type: !4871, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4961)
!4961 = !{!4962, !4963}
!4962 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4960, file: !421, line: 451, type: !481)
!4963 = !DILocalVariable(name: "length", scope: !4960, file: !421, line: 453, type: !136)
!4964 = !DILocation(line: 0, scope: !4960)
!4965 = !DILocation(line: 453, column: 5, scope: !4960)
!4966 = !DILocation(line: 453, column: 14, scope: !4960)
!4967 = !DILocation(line: 455, column: 10, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4960, file: !421, line: 455, column: 9)
!4969 = !DILocation(line: 455, column: 9, scope: !4960)
!4970 = !DILocation(line: 459, column: 30, scope: !4960)
!4971 = !DILocation(line: 459, column: 5, scope: !4960)
!4972 = !DILocation(line: 461, column: 12, scope: !4960)
!4973 = !DILocation(line: 461, column: 5, scope: !4960)
!4974 = !DILocation(line: 462, column: 1, scope: !4960)
!4975 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !421, file: !421, line: 543, type: !4976, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !4978)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!4604, !481, !509, !161}
!4978 = !{!4979, !4980, !4981, !4982}
!4979 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4975, file: !421, line: 543, type: !481)
!4980 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4975, file: !421, line: 544, type: !509)
!4981 = !DILocalVariable(name: "user_data", arg: 3, scope: !4975, file: !421, line: 545, type: !161)
!4982 = !DILocalVariable(name: "ch", scope: !4975, file: !421, line: 547, type: !1843)
!4983 = !DILocation(line: 0, scope: !4975)
!4984 = !DILocation(line: 549, column: 10, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4975, file: !421, line: 549, column: 9)
!4986 = !DILocation(line: 549, column: 9, scope: !4975)
!4987 = !DILocation(line: 556, column: 53, scope: !4975)
!4988 = !DILocation(line: 556, column: 62, scope: !4975)
!4989 = !DILocation(line: 557, column: 53, scope: !4975)
!4990 = !DILocation(line: 557, column: 63, scope: !4975)
!4991 = !DILocation(line: 558, column: 37, scope: !4975)
!4992 = !DILocation(line: 558, column: 54, scope: !4975)
!4993 = !DILocation(line: 560, column: 39, scope: !4975)
!4994 = !DILocation(line: 561, column: 39, scope: !4975)
!4995 = !DILocation(line: 560, column: 5, scope: !4975)
!4996 = !DILocation(line: 562, column: 5, scope: !4975)
!4997 = !DILocation(line: 564, column: 44, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4975, file: !421, line: 564, column: 9)
!4999 = !DILocation(line: 564, column: 9, scope: !4975)
!5000 = !DILocation(line: 565, column: 9, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !421, line: 564, column: 59)
!5002 = !DILocation(line: 566, column: 5, scope: !5001)
!5003 = !DILocation(line: 567, column: 9, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4998, file: !421, line: 566, column: 12)
!5005 = !DILocation(line: 569, column: 10, scope: !4975)
!5006 = !DILocation(line: 570, column: 5, scope: !4975)
!5007 = !DILocation(line: 578, column: 5, scope: !4975)
!5008 = !DILocation(line: 579, column: 1, scope: !4975)
!5009 = !DILocation(line: 0, scope: !478)
!5010 = !DILocation(line: 539, column: 12, scope: !478)
!5011 = !DILocation(line: 539, column: 5, scope: !478)
!5012 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !421, file: !421, line: 511, type: !181, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5013)
!5013 = !{!5014}
!5014 = !DILocalVariable(name: "callback_context", scope: !5015, file: !421, line: 514, type: !5017)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !421, line: 513, column: 60)
!5016 = distinct !DILexicalBlock(scope: !5012, file: !421, line: 513, column: 9)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!5018 = !DILocation(line: 513, column: 42, scope: !5016)
!5019 = !DILocation(line: 513, column: 9, scope: !5012)
!5020 = !DILocation(line: 515, column: 39, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5015, file: !421, line: 515, column: 13)
!5022 = !DILocation(line: 515, column: 18, scope: !5021)
!5023 = !DILocation(line: 515, column: 13, scope: !5015)
!5024 = !DILocation(line: 516, column: 89, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !421, line: 515, column: 49)
!5026 = !DILocation(line: 516, column: 13, scope: !5025)
!5027 = !DILocation(line: 517, column: 9, scope: !5025)
!5028 = !DILocation(line: 519, column: 32, scope: !5012)
!5029 = !DILocation(line: 519, column: 5, scope: !5012)
!5030 = !DILocation(line: 520, column: 1, scope: !5012)
!5031 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !421, file: !421, line: 523, type: !181, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5032)
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "callback_context", scope: !5034, file: !421, line: 526, type: !5017)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !421, line: 525, column: 60)
!5035 = distinct !DILexicalBlock(scope: !5031, file: !421, line: 525, column: 9)
!5036 = !DILocation(line: 525, column: 42, scope: !5035)
!5037 = !DILocation(line: 525, column: 9, scope: !5031)
!5038 = !DILocation(line: 527, column: 39, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5034, file: !421, line: 527, column: 13)
!5040 = !DILocation(line: 527, column: 18, scope: !5039)
!5041 = !DILocation(line: 527, column: 13, scope: !5034)
!5042 = !DILocation(line: 528, column: 89, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5039, file: !421, line: 527, column: 49)
!5044 = !DILocation(line: 528, column: 13, scope: !5043)
!5045 = !DILocation(line: 529, column: 9, scope: !5043)
!5046 = !DILocation(line: 531, column: 32, scope: !5031)
!5047 = !DILocation(line: 531, column: 5, scope: !5031)
!5048 = !DILocation(line: 532, column: 1, scope: !5031)
!5049 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !421, file: !421, line: 464, type: !5050, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5052)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{null, !3261, !126}
!5052 = !{!5053, !5054, !5055, !5056, !5057, !5059}
!5053 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5049, file: !421, line: 464, type: !3261)
!5054 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5049, file: !421, line: 464, type: !126)
!5055 = !DILocalVariable(name: "avail_size", scope: !5049, file: !421, line: 466, type: !136)
!5056 = !DILocalVariable(name: "avail_space", scope: !5049, file: !421, line: 466, type: !136)
!5057 = !DILocalVariable(name: "dma_config", scope: !5049, file: !421, line: 467, type: !5058)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 32)
!5059 = !DILocalVariable(name: "ch", scope: !5049, file: !421, line: 468, type: !1843)
!5060 = !DILocation(line: 0, scope: !5049)
!5061 = !DILocation(line: 466, column: 5, scope: !5049)
!5062 = !DILocation(line: 471, column: 9, scope: !5049)
!5063 = !DILocation(line: 472, column: 9, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5065, file: !421, line: 471, column: 16)
!5065 = distinct !DILexicalBlock(scope: !5049, file: !421, line: 471, column: 9)
!5066 = !DILocation(line: 473, column: 13, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5064, file: !421, line: 473, column: 13)
!5068 = !DILocation(line: 473, column: 39, scope: !5067)
!5069 = !DILocation(line: 473, column: 24, scope: !5067)
!5070 = !DILocation(line: 473, column: 13, scope: !5064)
!5071 = !DILocation(line: 478, column: 9, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5065, file: !421, line: 477, column: 12)
!5073 = !DILocation(line: 479, column: 13, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5072, file: !421, line: 479, column: 13)
!5075 = !DILocation(line: 479, column: 40, scope: !5074)
!5076 = !DILocation(line: 479, column: 77, scope: !5074)
!5077 = !DILocation(line: 479, column: 63, scope: !5074)
!5078 = !DILocation(line: 479, column: 25, scope: !5074)
!5079 = !DILocation(line: 479, column: 13, scope: !5072)
!5080 = !DILocation(line: 0, scope: !5065)
!5081 = !DILocation(line: 484, column: 1, scope: !5049)
!5082 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !421, file: !421, line: 486, type: !181, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5083)
!5083 = !{!5084}
!5084 = !DILocalVariable(name: "callback_context", scope: !5085, file: !421, line: 490, type: !5017)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !421, line: 489, column: 70)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !421, line: 488, column: 9)
!5087 = !DILocation(line: 488, column: 43, scope: !5086)
!5088 = !DILocation(line: 488, column: 61, scope: !5086)
!5089 = !DILocation(line: 489, column: 14, scope: !5086)
!5090 = !DILocation(line: 489, column: 63, scope: !5086)
!5091 = !DILocation(line: 488, column: 9, scope: !5082)
!5092 = !DILocation(line: 491, column: 39, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5085, file: !421, line: 491, column: 13)
!5094 = !DILocation(line: 491, column: 18, scope: !5093)
!5095 = !DILocation(line: 491, column: 13, scope: !5085)
!5096 = !DILocation(line: 492, column: 88, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !421, line: 491, column: 49)
!5098 = !DILocation(line: 492, column: 13, scope: !5097)
!5099 = !DILocation(line: 493, column: 9, scope: !5097)
!5100 = !DILocation(line: 495, column: 32, scope: !5082)
!5101 = !DILocation(line: 495, column: 5, scope: !5082)
!5102 = !DILocation(line: 496, column: 1, scope: !5082)
!5103 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !421, file: !421, line: 499, type: !181, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5104)
!5104 = !{!5105}
!5105 = !DILocalVariable(name: "callback_context", scope: !5106, file: !421, line: 503, type: !5017)
!5106 = distinct !DILexicalBlock(scope: !5107, file: !421, line: 502, column: 70)
!5107 = distinct !DILexicalBlock(scope: !5103, file: !421, line: 501, column: 9)
!5108 = !DILocation(line: 501, column: 43, scope: !5107)
!5109 = !DILocation(line: 501, column: 61, scope: !5107)
!5110 = !DILocation(line: 502, column: 14, scope: !5107)
!5111 = !DILocation(line: 502, column: 63, scope: !5107)
!5112 = !DILocation(line: 501, column: 9, scope: !5103)
!5113 = !DILocation(line: 504, column: 39, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5106, file: !421, line: 504, column: 13)
!5115 = !DILocation(line: 504, column: 18, scope: !5114)
!5116 = !DILocation(line: 504, column: 13, scope: !5106)
!5117 = !DILocation(line: 505, column: 88, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5114, file: !421, line: 504, column: 49)
!5119 = !DILocation(line: 505, column: 13, scope: !5118)
!5120 = !DILocation(line: 506, column: 9, scope: !5118)
!5121 = !DILocation(line: 508, column: 32, scope: !5103)
!5122 = !DILocation(line: 508, column: 5, scope: !5103)
!5123 = !DILocation(line: 509, column: 1, scope: !5103)
!5124 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !421, file: !421, line: 582, type: !5125, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5127)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!4604, !481, !496}
!5127 = !{!5128, !5129}
!5128 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5124, file: !421, line: 582, type: !481)
!5129 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5124, file: !421, line: 582, type: !496)
!5130 = !DILocation(line: 0, scope: !5124)
!5131 = !DILocation(line: 584, column: 11, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5124, file: !421, line: 584, column: 9)
!5133 = !DILocation(line: 584, column: 46, scope: !5132)
!5134 = !DILocation(line: 588, column: 37, scope: !5124)
!5135 = !DILocation(line: 588, column: 50, scope: !5124)
!5136 = !DILocation(line: 588, column: 59, scope: !5124)
!5137 = !DILocation(line: 589, column: 12, scope: !5124)
!5138 = !DILocation(line: 589, column: 5, scope: !5124)
!5139 = !DILocation(line: 590, column: 1, scope: !5124)
!5140 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !421, file: !421, line: 608, type: !5141, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5145)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!4604, !481, !5143}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 32)
!5144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!5145 = !{!5146, !5147}
!5146 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5140, file: !421, line: 608, type: !481)
!5147 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5140, file: !421, line: 608, type: !5143)
!5148 = !DILocation(line: 0, scope: !5140)
!5149 = !DILocation(line: 610, column: 10, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5140, file: !421, line: 610, column: 9)
!5151 = !DILocation(line: 610, column: 9, scope: !5140)
!5152 = !DILocation(line: 614, column: 10, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5140, file: !421, line: 614, column: 9)
!5154 = !DILocation(line: 614, column: 9, scope: !5140)
!5155 = !DILocation(line: 618, column: 37, scope: !5140)
!5156 = !DILocation(line: 618, column: 56, scope: !5140)
!5157 = !DILocation(line: 619, column: 45, scope: !5140)
!5158 = !DILocation(line: 619, column: 12, scope: !5140)
!5159 = !DILocation(line: 620, column: 12, scope: !5140)
!5160 = !DILocation(line: 619, column: 5, scope: !5140)
!5161 = !DILocation(line: 621, column: 5, scope: !5140)
!5162 = !DILocation(line: 622, column: 5, scope: !5140)
!5163 = !DILocation(line: 623, column: 33, scope: !5140)
!5164 = !DILocation(line: 624, column: 50, scope: !5140)
!5165 = !DILocation(line: 625, column: 50, scope: !5140)
!5166 = !DILocation(line: 626, column: 50, scope: !5140)
!5167 = !DILocation(line: 627, column: 50, scope: !5140)
!5168 = !DILocation(line: 628, column: 33, scope: !5140)
!5169 = !DILocation(line: 623, column: 5, scope: !5140)
!5170 = !DILocation(line: 630, column: 50, scope: !5140)
!5171 = !DILocation(line: 631, column: 50, scope: !5140)
!5172 = !DILocation(line: 632, column: 50, scope: !5140)
!5173 = !DILocation(line: 629, column: 5, scope: !5140)
!5174 = !DILocation(line: 634, column: 5, scope: !5140)
!5175 = !DILocation(line: 635, column: 1, scope: !5140)
!5176 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !421, file: !421, line: 112, type: !5177, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!126, !5143}
!5179 = !{!5180}
!5180 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5176, file: !421, line: 112, type: !5143)
!5181 = !DILocation(line: 0, scope: !5176)
!5182 = !DILocation(line: 114, column: 14, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5176, file: !421, line: 114, column: 9)
!5184 = !DILocation(line: 114, column: 9, scope: !5176)
!5185 = !DILocation(line: 117, column: 29, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5176, file: !421, line: 117, column: 9)
!5187 = !DILocation(line: 117, column: 14, scope: !5186)
!5188 = !DILocation(line: 117, column: 9, scope: !5176)
!5189 = !DILocation(line: 120, column: 21, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5176, file: !421, line: 120, column: 9)
!5191 = !DILocation(line: 120, column: 61, scope: !5190)
!5192 = !DILocation(line: 120, column: 47, scope: !5190)
!5193 = !DILocation(line: 120, column: 9, scope: !5176)
!5194 = !DILocation(line: 123, column: 61, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5176, file: !421, line: 123, column: 9)
!5196 = !DILocation(line: 123, column: 47, scope: !5195)
!5197 = !DILocation(line: 123, column: 9, scope: !5176)
!5198 = !DILocation(line: 126, column: 29, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5176, file: !421, line: 126, column: 9)
!5200 = !DILocation(line: 126, column: 14, scope: !5199)
!5201 = !DILocation(line: 126, column: 9, scope: !5176)
!5202 = !DILocation(line: 129, column: 21, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5176, file: !421, line: 129, column: 9)
!5204 = !DILocation(line: 129, column: 58, scope: !5203)
!5205 = !DILocation(line: 129, column: 44, scope: !5203)
!5206 = !DILocation(line: 129, column: 9, scope: !5176)
!5207 = !DILocation(line: 136, column: 1, scope: !5176)
!5208 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !421, file: !421, line: 182, type: !5209, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5211)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!136, !136}
!5211 = !{!5212, !5213}
!5212 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5208, file: !421, line: 182, type: !136)
!5213 = !DILocalVariable(name: "ticks_per_us", scope: !5208, file: !421, line: 184, type: !136)
!5214 = !DILocation(line: 0, scope: !5208)
!5215 = !DILocation(line: 186, column: 20, scope: !5208)
!5216 = !DILocation(line: 186, column: 39, scope: !5208)
!5217 = !DILocation(line: 188, column: 25, scope: !5208)
!5218 = !DILocation(line: 188, column: 5, scope: !5208)
!5219 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !421, file: !421, line: 637, type: !4746, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5220)
!5220 = !{!5221, !5222}
!5221 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5219, file: !421, line: 637, type: !481)
!5222 = !DILocalVariable(name: "int_no", scope: !5219, file: !421, line: 639, type: !3261)
!5223 = !DILocation(line: 0, scope: !5219)
!5224 = !DILocation(line: 641, column: 10, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5219, file: !421, line: 641, column: 9)
!5226 = !DILocation(line: 641, column: 9, scope: !5219)
!5227 = !DILocation(line: 645, column: 14, scope: !5219)
!5228 = !DILocation(line: 646, column: 5, scope: !5219)
!5229 = !DILocation(line: 648, column: 5, scope: !5219)
!5230 = !DILocation(line: 649, column: 1, scope: !5219)
!5231 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !421, file: !421, line: 651, type: !5232, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5234)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!4604, !481, !128, !128, !128}
!5234 = !{!5235, !5236, !5237, !5238, !5239}
!5235 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5231, file: !421, line: 651, type: !481)
!5236 = !DILocalVariable(name: "xon", arg: 2, scope: !5231, file: !421, line: 652, type: !128)
!5237 = !DILocalVariable(name: "xoff", arg: 3, scope: !5231, file: !421, line: 653, type: !128)
!5238 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5231, file: !421, line: 654, type: !128)
!5239 = !DILocalVariable(name: "int_no", scope: !5231, file: !421, line: 656, type: !3261)
!5240 = !DILocation(line: 0, scope: !5231)
!5241 = !DILocation(line: 658, column: 10, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5231, file: !421, line: 658, column: 9)
!5243 = !DILocation(line: 658, column: 9, scope: !5231)
!5244 = !DILocation(line: 662, column: 14, scope: !5231)
!5245 = !DILocation(line: 663, column: 5, scope: !5231)
!5246 = !DILocation(line: 665, column: 5, scope: !5231)
!5247 = !DILocation(line: 666, column: 1, scope: !5231)
!5248 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !421, file: !421, line: 668, type: !4746, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5249)
!5249 = !{!5250, !5251}
!5250 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5248, file: !421, line: 668, type: !481)
!5251 = !DILocalVariable(name: "int_no", scope: !5248, file: !421, line: 670, type: !3261)
!5252 = !DILocation(line: 0, scope: !5248)
!5253 = !DILocation(line: 672, column: 10, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5248, file: !421, line: 672, column: 9)
!5255 = !DILocation(line: 672, column: 9, scope: !5248)
!5256 = !DILocation(line: 676, column: 14, scope: !5248)
!5257 = !DILocation(line: 677, column: 5, scope: !5248)
!5258 = !DILocation(line: 679, column: 5, scope: !5248)
!5259 = !DILocation(line: 680, column: 1, scope: !5248)
!5260 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !421, file: !421, line: 683, type: !5261, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !5263)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!4604, !481, !136}
!5263 = !{!5264, !5265}
!5264 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5260, file: !421, line: 683, type: !481)
!5265 = !DILocalVariable(name: "timeout", arg: 2, scope: !5260, file: !421, line: 683, type: !136)
!5266 = !DILocation(line: 0, scope: !5260)
!5267 = !DILocation(line: 685, column: 10, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5260, file: !421, line: 685, column: 9)
!5269 = !DILocation(line: 685, column: 9, scope: !5260)
!5270 = !DILocation(line: 689, column: 19, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5260, file: !421, line: 689, column: 9)
!5272 = !DILocation(line: 0, scope: !5271)
!5273 = !DILocation(line: 696, column: 1, scope: !5260)
!5274 = distinct !DISubprogram(name: "__io_putchar", scope: !531, file: !531, line: 66, type: !5275, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!53, !53}
!5277 = !{!5278}
!5278 = !DILocalVariable(name: "ch", arg: 1, scope: !5274, file: !531, line: 66, type: !53)
!5279 = !DILocation(line: 0, scope: !5274)
!5280 = !DILocation(line: 73, column: 5, scope: !5274)
!5281 = distinct !DISubprogram(name: "main", scope: !531, file: !531, line: 163, type: !3237, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1080)
!5282 = !DILocation(line: 166, column: 5, scope: !5281)
!5283 = !DILocation(line: 319, column: 3, scope: !5284, inlinedAt: !5285)
!5284 = distinct !DISubprogram(name: "__enable_irq", scope: !1111, file: !1111, line: 317, type: !181, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1080)
!5285 = distinct !DILocation(line: 172, column: 5, scope: !5281)
!5286 = !{i64 514019}
!5287 = !DILocation(line: 496, column: 3, scope: !5288, inlinedAt: !5289)
!5288 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1111, file: !1111, line: 494, type: !181, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1080)
!5289 = distinct !DILocation(line: 173, column: 5, scope: !5281)
!5290 = !{i64 518294}
!5291 = !DILocation(line: 176, column: 5, scope: !5281)
!5292 = !DILocation(line: 178, column: 5, scope: !5281)
!5293 = distinct !DISubprogram(name: "SystemClock_Config", scope: !531, file: !531, line: 81, type: !181, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !1080)
!5294 = !DILocation(line: 83, column: 5, scope: !5293)
!5295 = !DILocation(line: 84, column: 1, scope: !5293)
!5296 = distinct !DISubprogram(name: "uart_loopback_data_dma_example", scope: !531, file: !531, line: 118, type: !181, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !5297)
!5297 = !{!5298, !5306, !5317, !5318}
!5298 = !DILocalVariable(name: "basic_config", scope: !5296, file: !531, line: 120, type: !5299)
!5299 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !424, line: 378, baseType: !5300)
!5300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 373, size: 128, elements: !5301)
!5301 = !{!5302, !5303, !5304, !5305}
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5300, file: !424, line: 374, baseType: !496, size: 32)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5300, file: !424, line: 375, baseType: !498, size: 32, offset: 32)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5300, file: !424, line: 376, baseType: !500, size: 32, offset: 64)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5300, file: !424, line: 377, baseType: !502, size: 32, offset: 96)
!5306 = !DILocalVariable(name: "dma_config", scope: !5296, file: !531, line: 121, type: !5307)
!5307 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !424, line: 390, baseType: !5308)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 382, size: 224, elements: !5309)
!5309 = !{!5310, !5311, !5312, !5313, !5314, !5315, !5316}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !5308, file: !424, line: 383, baseType: !521, size: 32)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !5308, file: !424, line: 384, baseType: !136, size: 32, offset: 32)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !5308, file: !424, line: 385, baseType: !136, size: 32, offset: 64)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !5308, file: !424, line: 386, baseType: !521, size: 32, offset: 96)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !5308, file: !424, line: 387, baseType: !136, size: 32, offset: 128)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !5308, file: !424, line: 388, baseType: !136, size: 32, offset: 160)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !5308, file: !424, line: 389, baseType: !136, size: 32, offset: 192)
!5317 = !DILocalVariable(name: "buffer", scope: !5296, file: !531, line: 122, type: !570)
!5318 = !DILocalVariable(name: "length", scope: !5296, file: !531, line: 123, type: !136)
!5319 = !DILocation(line: 120, column: 5, scope: !5296)
!5320 = !DILocation(line: 120, column: 23, scope: !5296)
!5321 = !DILocation(line: 121, column: 5, scope: !5296)
!5322 = !DILocation(line: 121, column: 27, scope: !5296)
!5323 = !DILocation(line: 122, column: 5, scope: !5296)
!5324 = !DILocation(line: 122, column: 13, scope: !5296)
!5325 = !DILocation(line: 126, column: 5, scope: !5296)
!5326 = !DILocation(line: 127, column: 5, scope: !5296)
!5327 = !DILocation(line: 128, column: 5, scope: !5296)
!5328 = !DILocation(line: 129, column: 5, scope: !5296)
!5329 = !DILocation(line: 132, column: 18, scope: !5296)
!5330 = !DILocation(line: 132, column: 27, scope: !5296)
!5331 = !DILocation(line: 133, column: 18, scope: !5296)
!5332 = !DILocation(line: 133, column: 25, scope: !5296)
!5333 = !DILocation(line: 134, column: 18, scope: !5296)
!5334 = !DILocation(line: 134, column: 27, scope: !5296)
!5335 = !DILocation(line: 135, column: 18, scope: !5296)
!5336 = !DILocation(line: 135, column: 30, scope: !5296)
!5337 = !DILocation(line: 136, column: 5, scope: !5296)
!5338 = !DILocation(line: 139, column: 16, scope: !5296)
!5339 = !DILocation(line: 139, column: 41, scope: !5296)
!5340 = !DILocation(line: 140, column: 16, scope: !5296)
!5341 = !DILocation(line: 140, column: 37, scope: !5296)
!5342 = !DILocation(line: 141, column: 16, scope: !5296)
!5343 = !DILocation(line: 141, column: 42, scope: !5296)
!5344 = !DILocation(line: 142, column: 16, scope: !5296)
!5345 = !DILocation(line: 142, column: 45, scope: !5296)
!5346 = !DILocation(line: 143, column: 16, scope: !5296)
!5347 = !DILocation(line: 143, column: 34, scope: !5296)
!5348 = !DILocation(line: 144, column: 16, scope: !5296)
!5349 = !DILocation(line: 144, column: 39, scope: !5296)
!5350 = !DILocation(line: 145, column: 16, scope: !5296)
!5351 = !DILocation(line: 145, column: 42, scope: !5296)
!5352 = !DILocation(line: 146, column: 5, scope: !5296)
!5353 = !DILocation(line: 147, column: 5, scope: !5296)
!5354 = !DILocation(line: 150, column: 5, scope: !5296)
!5355 = !DILocation(line: 153, column: 5, scope: !5296)
!5356 = !DILocation(line: 154, column: 13, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !531, line: 154, column: 13)
!5358 = distinct !DILexicalBlock(scope: !5296, file: !531, line: 153, column: 15)
!5359 = !DILocation(line: 154, column: 13, scope: !5358)
!5360 = !DILocation(line: 155, column: 22, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !531, line: 154, column: 43)
!5362 = !DILocation(line: 0, scope: !5296)
!5363 = !DILocation(line: 156, column: 13, scope: !5361)
!5364 = !DILocation(line: 157, column: 13, scope: !5361)
!5365 = !DILocation(line: 158, column: 34, scope: !5361)
!5366 = !DILocation(line: 159, column: 9, scope: !5361)
!5367 = distinct !{!5367, !5355, !5368}
!5368 = !DILocation(line: 160, column: 5, scope: !5296)
!5369 = distinct !DISubprogram(name: "uart_read_from_input", scope: !531, file: !531, line: 106, type: !511, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !530, retainedNodes: !5370)
!5370 = !{!5371, !5372}
!5371 = !DILocalVariable(name: "event", arg: 1, scope: !5369, file: !531, line: 106, type: !513)
!5372 = !DILocalVariable(name: "user_data", arg: 2, scope: !5369, file: !531, line: 106, type: !161)
!5373 = !DILocation(line: 0, scope: !5369)
!5374 = !DILocation(line: 108, column: 15, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5369, file: !531, line: 108, column: 9)
!5376 = !DILocation(line: 108, column: 9, scope: !5369)
!5377 = !DILocation(line: 109, column: 30, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5375, file: !531, line: 108, column: 48)
!5379 = !DILocation(line: 110, column: 5, scope: !5378)
!5380 = !DILocation(line: 111, column: 1, scope: !5369)
!5381 = distinct !DISubprogram(name: "SysTick_Set", scope: !578, file: !578, line: 70, type: !5209, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !5382)
!5382 = !{!5383, !5384}
!5383 = !DILocalVariable(name: "ticks", arg: 1, scope: !5381, file: !578, line: 70, type: !136)
!5384 = !DILocalVariable(name: "val", scope: !5381, file: !578, line: 72, type: !136)
!5385 = !DILocation(line: 0, scope: !5381)
!5386 = !DILocation(line: 74, column: 16, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5381, file: !578, line: 74, column: 9)
!5388 = !DILocation(line: 74, column: 21, scope: !5387)
!5389 = !DILocation(line: 74, column: 9, scope: !5381)
!5390 = !DILocation(line: 78, column: 20, scope: !5381)
!5391 = !DILocation(line: 80, column: 19, scope: !5381)
!5392 = !DILocation(line: 83, column: 20, scope: !5381)
!5393 = !DILocation(line: 84, column: 20, scope: !5381)
!5394 = !DILocation(line: 86, column: 19, scope: !5381)
!5395 = !DILocation(line: 88, column: 5, scope: !5381)
!5396 = !DILocation(line: 89, column: 1, scope: !5381)
!5397 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !578, file: !578, line: 98, type: !181, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1080)
!5398 = !DILocation(line: 100, column: 28, scope: !5397)
!5399 = !DILocation(line: 101, column: 1, scope: !5397)
!5400 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !578, file: !578, line: 110, type: !1112, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1080)
!5401 = !DILocation(line: 112, column: 12, scope: !5400)
!5402 = !DILocation(line: 112, column: 5, scope: !5400)
!5403 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !578, file: !578, line: 122, type: !181, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1080)
!5404 = !DILocation(line: 124, column: 23, scope: !5403)
!5405 = !DILocation(line: 124, column: 21, scope: !5403)
!5406 = !DILocation(line: 125, column: 1, scope: !5403)
!5407 = distinct !DISubprogram(name: "SystemInit", scope: !578, file: !578, line: 136, type: !181, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1080)
!5408 = !DILocation(line: 140, column: 16, scope: !5407)
!5409 = !DILocation(line: 144, column: 16, scope: !5407)
!5410 = !DILocation(line: 147, column: 16, scope: !5407)
!5411 = !DILocation(line: 150, column: 1, scope: !5407)
!5412 = distinct !DISubprogram(name: "CachePreInit", scope: !578, file: !578, line: 158, type: !181, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !1080)
!5413 = !DILocation(line: 161, column: 22, scope: !5412)
!5414 = !DILocation(line: 164, column: 21, scope: !5412)
!5415 = !DILocation(line: 167, column: 21, scope: !5412)
!5416 = !DILocation(line: 170, column: 29, scope: !5412)
!5417 = !DILocation(line: 171, column: 33, scope: !5412)
!5418 = !DILocation(line: 173, column: 28, scope: !5412)
!5419 = !DILocation(line: 178, column: 30, scope: !5412)
!5420 = !DILocation(line: 192, column: 1, scope: !5412)
!5421 = distinct !DISubprogram(name: "_close", scope: !638, file: !638, line: 11, type: !5275, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5422)
!5422 = !{!5423}
!5423 = !DILocalVariable(name: "file", arg: 1, scope: !5421, file: !638, line: 11, type: !53)
!5424 = !DILocation(line: 0, scope: !5421)
!5425 = !DILocation(line: 13, column: 5, scope: !5421)
!5426 = distinct !DISubprogram(name: "_fstat", scope: !638, file: !638, line: 16, type: !5427, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5475)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{!53, !53, !5429}
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 32)
!5430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5431, line: 27, size: 704, elements: !5432)
!5431 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5432 = !{!5433, !5436, !5439, !5442, !5445, !5448, !5451, !5452, !5455, !5465, !5466, !5467, !5470, !5473}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5430, file: !5431, line: 29, baseType: !5434, size: 16)
!5434 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !642, line: 161, baseType: !5435)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !684, line: 56, baseType: !659)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5430, file: !5431, line: 30, baseType: !5437, size: 16, offset: 16)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !642, line: 139, baseType: !5438)
!5438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !684, line: 75, baseType: !228)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5430, file: !5431, line: 31, baseType: !5440, size: 32, offset: 32)
!5440 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !642, line: 189, baseType: !5441)
!5441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !684, line: 90, baseType: !137)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5430, file: !5431, line: 32, baseType: !5443, size: 16, offset: 64)
!5443 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !642, line: 194, baseType: !5444)
!5444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !684, line: 209, baseType: !228)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5430, file: !5431, line: 33, baseType: !5446, size: 16, offset: 80)
!5446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !642, line: 165, baseType: !5447)
!5447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !684, line: 60, baseType: !228)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5430, file: !5431, line: 34, baseType: !5449, size: 16, offset: 96)
!5449 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !642, line: 169, baseType: !5450)
!5450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !684, line: 63, baseType: !228)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5430, file: !5431, line: 35, baseType: !5434, size: 16, offset: 112)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5430, file: !5431, line: 36, baseType: !5453, size: 32, offset: 128)
!5453 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !642, line: 157, baseType: !5454)
!5454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !684, line: 102, baseType: !702)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5430, file: !5431, line: 42, baseType: !5456, size: 128, offset: 192)
!5456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5457, line: 47, size: 128, elements: !5458)
!5457 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5458 = !{!5459, !5464}
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5456, file: !5457, line: 48, baseType: !5460, size: 64)
!5460 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5461, line: 42, baseType: !5462)
!5461 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !131, line: 200, baseType: !5463)
!5463 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5456, file: !5457, line: 49, baseType: !685, size: 32, offset: 64)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5430, file: !5431, line: 43, baseType: !5456, size: 128, offset: 320)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5430, file: !5431, line: 44, baseType: !5456, size: 128, offset: 448)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5430, file: !5431, line: 45, baseType: !5468, size: 32, offset: 576)
!5468 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !642, line: 102, baseType: !5469)
!5469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !684, line: 34, baseType: !685)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5430, file: !5431, line: 46, baseType: !5471, size: 32, offset: 608)
!5471 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !642, line: 97, baseType: !5472)
!5472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !684, line: 30, baseType: !685)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5430, file: !5431, line: 48, baseType: !5474, size: 64, offset: 640)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 64, elements: !391)
!5475 = !{!5476, !5477}
!5476 = !DILocalVariable(name: "file", arg: 1, scope: !5426, file: !638, line: 16, type: !53)
!5477 = !DILocalVariable(name: "st", arg: 2, scope: !5426, file: !638, line: 16, type: !5429)
!5478 = !DILocation(line: 0, scope: !5426)
!5479 = !DILocation(line: 18, column: 5, scope: !5426)
!5480 = distinct !DISubprogram(name: "_isatty", scope: !638, file: !638, line: 22, type: !5275, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5481)
!5481 = !{!5482}
!5482 = !DILocalVariable(name: "file", arg: 1, scope: !5480, file: !638, line: 22, type: !53)
!5483 = !DILocation(line: 0, scope: !5480)
!5484 = !DILocation(line: 24, column: 5, scope: !5480)
!5485 = distinct !DISubprogram(name: "_lseek", scope: !638, file: !638, line: 27, type: !5486, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5488)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!53, !53, !53, !53}
!5488 = !{!5489, !5490, !5491}
!5489 = !DILocalVariable(name: "file", arg: 1, scope: !5485, file: !638, line: 27, type: !53)
!5490 = !DILocalVariable(name: "ptr", arg: 2, scope: !5485, file: !638, line: 27, type: !53)
!5491 = !DILocalVariable(name: "dir", arg: 3, scope: !5485, file: !638, line: 27, type: !53)
!5492 = !DILocation(line: 0, scope: !5485)
!5493 = !DILocation(line: 29, column: 5, scope: !5485)
!5494 = distinct !DISubprogram(name: "_open", scope: !638, file: !638, line: 32, type: !5495, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5497)
!5495 = !DISubroutineType(types: !5496)
!5496 = !{!53, !677, !53, !53}
!5497 = !{!5498, !5499, !5500}
!5498 = !DILocalVariable(name: "name", arg: 1, scope: !5494, file: !638, line: 32, type: !677)
!5499 = !DILocalVariable(name: "flags", arg: 2, scope: !5494, file: !638, line: 32, type: !53)
!5500 = !DILocalVariable(name: "mode", arg: 3, scope: !5494, file: !638, line: 32, type: !53)
!5501 = !DILocation(line: 0, scope: !5494)
!5502 = !DILocation(line: 34, column: 5, scope: !5494)
!5503 = distinct !DISubprogram(name: "_read", scope: !638, file: !638, line: 37, type: !5504, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5506)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{!53, !53, !643, !53}
!5506 = !{!5507, !5508, !5509}
!5507 = !DILocalVariable(name: "file", arg: 1, scope: !5503, file: !638, line: 37, type: !53)
!5508 = !DILocalVariable(name: "ptr", arg: 2, scope: !5503, file: !638, line: 37, type: !643)
!5509 = !DILocalVariable(name: "len", arg: 3, scope: !5503, file: !638, line: 37, type: !53)
!5510 = !DILocation(line: 0, scope: !5503)
!5511 = !DILocation(line: 39, column: 5, scope: !5503)
!5512 = distinct !DISubprogram(name: "_write", scope: !638, file: !638, line: 52, type: !5504, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5513)
!5513 = !{!5514, !5515, !5516, !5517}
!5514 = !DILocalVariable(name: "file", arg: 1, scope: !5512, file: !638, line: 52, type: !53)
!5515 = !DILocalVariable(name: "ptr", arg: 2, scope: !5512, file: !638, line: 52, type: !643)
!5516 = !DILocalVariable(name: "len", arg: 3, scope: !5512, file: !638, line: 52, type: !53)
!5517 = !DILocalVariable(name: "i", scope: !5512, file: !638, line: 54, type: !53)
!5518 = !DILocation(line: 0, scope: !5512)
!5519 = !DILocation(line: 56, column: 19, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5521, file: !638, line: 56, column: 5)
!5521 = distinct !DILexicalBlock(scope: !5512, file: !638, line: 56, column: 5)
!5522 = !DILocation(line: 56, column: 5, scope: !5521)
!5523 = !DILocation(line: 57, column: 26, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5520, file: !638, line: 56, column: 31)
!5525 = !DILocation(line: 57, column: 22, scope: !5524)
!5526 = !DILocation(line: 57, column: 9, scope: !5524)
!5527 = !DILocation(line: 56, column: 27, scope: !5520)
!5528 = distinct !{!5528, !5522, !5529}
!5529 = !DILocation(line: 58, column: 5, scope: !5521)
!5530 = !DILocation(line: 60, column: 5, scope: !5512)
!5531 = !DILocation(line: 0, scope: !637)
!5532 = !DILocation(line: 70, column: 5, scope: !637)
!5533 = !{i64 1109}
!5534 = !DILocation(line: 72, column: 14, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !637, file: !638, line: 72, column: 9)
!5536 = !DILocation(line: 72, column: 11, scope: !5535)
!5537 = !DILocation(line: 72, column: 9, scope: !637)
!5538 = !DILocation(line: 78, column: 32, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !637, file: !638, line: 78, column: 9)
!5540 = !DILocation(line: 78, column: 15, scope: !5539)
!5541 = !DILocation(line: 89, column: 1, scope: !637)
!5542 = !DILocation(line: 78, column: 9, scope: !637)
!5543 = distinct !DISubprogram(name: "_exit", scope: !638, file: !638, line: 91, type: !787, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5544)
!5544 = !{!5545}
!5545 = !DILocalVariable(name: "__status", arg: 1, scope: !5543, file: !638, line: 91, type: !53)
!5546 = !DILocation(line: 0, scope: !5543)
!5547 = !DILocation(line: 93, column: 5, scope: !5543)
!5548 = !DILocation(line: 94, column: 5, scope: !5543)
!5549 = distinct !{!5549, !5548, !5550}
!5550 = !DILocation(line: 96, column: 5, scope: !5543)
!5551 = distinct !DISubprogram(name: "_kill", scope: !638, file: !638, line: 100, type: !5552, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !5554)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!53, !53, !53}
!5554 = !{!5555, !5556}
!5555 = !DILocalVariable(name: "pid", arg: 1, scope: !5551, file: !638, line: 100, type: !53)
!5556 = !DILocalVariable(name: "sig", arg: 2, scope: !5551, file: !638, line: 100, type: !53)
!5557 = !DILocation(line: 0, scope: !5551)
!5558 = !DILocation(line: 102, column: 5, scope: !5551)
!5559 = !DILocation(line: 103, column: 5, scope: !5551)
!5560 = distinct !DISubprogram(name: "_getpid", scope: !638, file: !638, line: 107, type: !5561, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !835, retainedNodes: !1080)
!5561 = !DISubroutineType(types: !5562)
!5562 = !{!5563}
!5563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !642, line: 174, baseType: !5564)
!5564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !684, line: 52, baseType: !53)
!5565 = !DILocation(line: 109, column: 5, scope: !5560)
!5566 = !DILocation(line: 110, column: 5, scope: !5560)
