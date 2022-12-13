; ModuleID = './build/irtx_send_pwd_data.elf.bc'
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
%struct._IOT_IRTX_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@switch.table.halIrTxConfig = private unnamed_addr constant [4 x i16] [i16 38, i16 36, i16 36, i16 36], align 2
@switch.table.halIrTxConfig.1 = private unnamed_addr constant [4 x i32] [i32 1125, i32 1778, i32 888, i32 888], align 4
@switch.table.halIrTxConfig.2 = private unnamed_addr constant [4 x i32] [i32 3375, i32 1778, i32 888, i32 888], align 4
@g_irtx_mode = internal unnamed_addr global i8 0, align 1, !dbg !0
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !22
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !38
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !40
@g_cache_status = dso_local global i8 0, align 1, !dbg !76
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !162
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_callback_user_data = dso_local local_unnamed_addr global i8* null, align 4, !dbg !312
@__FUNCTION__.hal_irtx_do_send_data = private unnamed_addr constant [22 x i8] c"hal_irtx_do_send_data\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ir_tx_configure fail\00", align 1
@irtx_status = internal unnamed_addr global i1 false, align 1, !dbg !347
@g_pulse_data_callback = internal unnamed_addr global void (i32, i8*)* null, align 4, !dbg !340
@__FUNCTION__.hal_irtx_check_valid_data = private unnamed_addr constant [26 x i8] c"hal_irtx_check_valid_data\00", align 1
@.str.1.8 = private unnamed_addr constant [13 x i8] c"data is null\00", align 1
@.str.2.9 = private unnamed_addr constant [51 x i8] c"bit_length %lu, too many bits to send, limit is %u\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !348
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !406
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@__const.irtx_send_pulse_data.data = private unnamed_addr constant <{ [41 x i8], [27 x i8] }> <{ [41 x i8] c"\E1p\11\0F\22\0F#\0F\11\0F\22\0F\11\0F\11\0F\11\0F\22\0F\11\0F\22\0F\22\0F\11\0F\22\0F\11\0F\11\0F\11\0F\22\0F\22\0F\22", [27 x i8] zeroinitializer }>, align 1
@.str.2.12 = private unnamed_addr constant [30 x i8] c"\0D\0A ---irtx_example begin---\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\0D\0A ---Pulse data sent finished---\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\0D\0A ---irtx_example finished!!!---\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !462
@System_Initialize_Done = internal global i32 0, align 4, !dbg !520
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !522
@end = external dso_local global i8, align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.20 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.21 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:29 GMT +00:00\00", align 1, !dbg !731
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !736
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !742

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @halIrTxRound(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1055, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %1, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %2, metadata !1057, metadata !DIExpression()), !dbg !1058
  %4 = mul i32 %2, %1, !dbg !1059
  %5 = sub i32 %0, %4, !dbg !1061
  %6 = shl i32 %5, 1, !dbg !1062
  %7 = icmp ugt i32 %6, %1, !dbg !1063
  %8 = zext i1 %7 to i8, !dbg !1058
  ret i8 %8, !dbg !1064
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halIrTxInit(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 !dbg !1065 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1070, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %1, metadata !1071, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 %2, metadata !1072, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i8 0, metadata !1073, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata %struct._IOT_IRTX_TypeDef* inttoptr (i32 -2096758784 to %struct._IOT_IRTX_TypeDef*), metadata !1074, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1076
  %4 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %4, metadata !1075, metadata !DIExpression()), !dbg !1076
  %5 = icmp eq i8 %0, 0, !dbg !1078
  %6 = and i32 %4, -113, !dbg !1080
  %7 = select i1 %5, i32 0, i32 64, !dbg !1080
  call void @llvm.dbg.value(metadata !DIArgList(i32 %4, i32 %7), metadata !1075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551503, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1076
  %8 = icmp eq i8 %1, 0, !dbg !1081
  %9 = select i1 %8, i32 0, i32 32, !dbg !1083
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %9), metadata !1075, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1076
  %10 = icmp eq i8 %2, 0, !dbg !1084
  %11 = select i1 %10, i32 0, i32 16, !dbg !1086
  %12 = or i32 %9, %7, !dbg !1080
  %13 = or i32 %12, %11, !dbg !1083
  %14 = or i32 %13, %6, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %14, metadata !1075, metadata !DIExpression()), !dbg !1076
  store volatile i32 %14, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1087
  ret i8 0, !dbg !1088
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halIrTxConfig(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i16 noundef zeroext %7, i8 noundef zeroext %8) local_unnamed_addr #2 !dbg !1089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1094, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %1, metadata !1095, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %2, metadata !1096, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %3, metadata !1097, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %4, metadata !1098, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %5, metadata !1099, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %6, metadata !1100, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i16 %7, metadata !1101, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %8, metadata !1102, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 0, metadata !1103, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata %struct._IOT_IRTX_TypeDef* inttoptr (i32 -2096758784 to %struct._IOT_IRTX_TypeDef*), metadata !1104, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1105, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i16 0, metadata !1106, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i16 0, metadata !1107, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1108, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1110, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1111, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 0, metadata !1112, metadata !DIExpression()), !dbg !1113
  %10 = icmp ugt i32 %0, 4, !dbg !1114
  br i1 %10, label %50, label %11, !dbg !1116

11:                                               ; preds = %9
  %12 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %12, metadata !1105, metadata !DIExpression()), !dbg !1113
  %13 = icmp eq i8 %1, 0, !dbg !1118
  %14 = and i32 %12, -32911, !dbg !1120
  %15 = select i1 %13, i32 0, i32 32768, !dbg !1120
  call void @llvm.dbg.value(metadata !DIArgList(i32 %12, i32 %15), metadata !1105, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709518705, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1113
  %16 = icmp eq i8 %2, 0, !dbg !1121
  %17 = select i1 %16, i32 0, i32 128, !dbg !1123
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %17), metadata !1105, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !1113
  call void @llvm.dbg.value(metadata i32 undef, metadata !1105, metadata !DIExpression()), !dbg !1113
  %18 = shl nuw nsw i32 %0, 1, !dbg !1124
  %19 = or i32 %15, %18, !dbg !1120
  %20 = or i32 %19, %17, !dbg !1123
  %21 = or i32 %20, %14, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %21, metadata !1105, metadata !DIExpression()), !dbg !1113
  store volatile i32 %21, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1126
  %22 = icmp eq i32 %0, 4, !dbg !1127
  br i1 %22, label %30, label %23, !dbg !1127

23:                                               ; preds = %11
  %24 = getelementptr inbounds [4 x i16], [4 x i16]* @switch.table.halIrTxConfig, i32 0, i32 %0, !dbg !1127
  %25 = load i16, i16* %24, align 2, !dbg !1127
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.halIrTxConfig.1, i32 0, i32 %0, !dbg !1127
  %27 = load i32, i32* %26, align 4, !dbg !1127
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.halIrTxConfig.2, i32 0, i32 %0, !dbg !1127
  %29 = load i32, i32* %28, align 4, !dbg !1127
  br label %30, !dbg !1127

30:                                               ; preds = %11, %23
  %31 = phi i16 [ %25, %23 ], [ 36, %11 ]
  %32 = phi i32 [ %27, %23 ], [ 1778, %11 ], !dbg !1113
  %33 = phi i32 [ %29, %23 ], [ 1778, %11 ], !dbg !1113
  %34 = icmp eq i16 %7, 0, !dbg !1128
  %35 = select i1 %34, i16 %31, i16 %7, !dbg !1128
  %36 = icmp eq i8 %8, 0, !dbg !1128
  %37 = select i1 %36, i8 25, i8 %8, !dbg !1128
  %38 = udiv i16 2000, %35, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %33, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %32, metadata !1111, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %32, metadata !1110, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %32, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i16 %38, metadata !1106, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i16 %35, metadata !1101, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %37, metadata !1102, metadata !DIExpression()), !dbg !1113
  store volatile i32 %32, i32* inttoptr (i32 -2096758768 to i32*), align 16, !dbg !1130
  store volatile i32 %32, i32* inttoptr (i32 -2096758764 to i32*), align 4, !dbg !1131
  store volatile i32 %32, i32* inttoptr (i32 -2096758760 to i32*), align 8, !dbg !1132
  store volatile i32 %33, i32* inttoptr (i32 -2096758756 to i32*), align 4, !dbg !1133
  %39 = zext i8 %37 to i32, !dbg !1134
  %40 = mul nuw nsw i32 %39, 2000, !dbg !1135
  %41 = zext i16 %35 to i32, !dbg !1136
  %42 = mul nuw nsw i32 %41, 100, !dbg !1137
  %43 = udiv i32 %40, %42, !dbg !1138
  call void @llvm.dbg.value(metadata i32 %43, metadata !1107, metadata !DIExpression()), !dbg !1113
  %44 = tail call zeroext i8 @halIrTxRound(i32 noundef %40, i32 noundef %42, i32 noundef %43) #18, !dbg !1139
  %45 = zext i8 %44 to i32, !dbg !1139
  %46 = add nuw nsw i32 %43, %45, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %46, metadata !1107, metadata !DIExpression()), !dbg !1113
  %47 = shl nuw nsw i32 %46, 16, !dbg !1141
  %48 = zext i16 %38 to i32, !dbg !1142
  %49 = or i32 %47, %48, !dbg !1143
  store volatile i32 %49, i32* inttoptr (i32 -2096758744 to i32*), align 8, !dbg !1144
  br label %50, !dbg !1145

50:                                               ; preds = %9, %30
  %51 = phi i8 [ 0, %30 ], [ 1, %9 ], !dbg !1113
  ret i8 %51, !dbg !1146
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halIrTxSend(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 !dbg !1147 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1151, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i32 %1, metadata !1152, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i32 %2, metadata !1153, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %3, metadata !1154, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %4, metadata !1155, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 0, metadata !1156, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata %struct._IOT_IRTX_TypeDef* inttoptr (i32 -2096758784 to %struct._IOT_IRTX_TypeDef*), metadata !1157, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i32 5, metadata !1158, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i32 0, metadata !1159, metadata !DIExpression()), !dbg !1160
  %6 = icmp sgt i8 %3, -1, !dbg !1161
  br i1 %6, label %7, label %28, !dbg !1163

7:                                                ; preds = %5
  %8 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %8, metadata !1158, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !1160
  %9 = and i32 %8, 14, !dbg !1165
  %10 = icmp eq i32 %9, 0, !dbg !1165
  br i1 %10, label %11, label %16, !dbg !1167

11:                                               ; preds = %7
  %12 = icmp eq i8 %4, 1, !dbg !1168
  store volatile i32 18000, i32* inttoptr (i32 -2096758752 to i32*), align 32, !dbg !1171
  %13 = select i1 %12, i32 4500, i32 9000
  %14 = select i1 %12, i8 1, i8 %3
  %15 = select i1 %12, i32 0, i32 %0
  store volatile i32 %13, i32* inttoptr (i32 -2096758748 to i32*), align 4, !dbg !1171
  br label %16, !dbg !1172

16:                                               ; preds = %11, %7
  %17 = phi i8 [ %3, %7 ], [ %14, %11 ]
  %18 = phi i32 [ %0, %7 ], [ %15, %11 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1151, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %17, metadata !1154, metadata !DIExpression()), !dbg !1160
  store volatile i32 %18, i32* inttoptr (i32 -2096758780 to i32*), align 4, !dbg !1172
  store volatile i32 %1, i32* inttoptr (i32 -2096758776 to i32*), align 8, !dbg !1173
  store volatile i32 %2, i32* inttoptr (i32 -2096758772 to i32*), align 4, !dbg !1174
  %19 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %19, metadata !1159, metadata !DIExpression()), !dbg !1160
  %20 = and i32 %19, -32513, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %20, metadata !1159, metadata !DIExpression()), !dbg !1160
  %21 = zext i8 %17 to i32, !dbg !1177
  %22 = shl nuw nsw i32 %21, 8, !dbg !1178
  %23 = or i32 %20, %22, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %23, metadata !1159, metadata !DIExpression()), !dbg !1160
  store volatile i32 %23, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1180
  %24 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1181
  %25 = and i32 %24, -2, !dbg !1182
  store volatile i32 %25, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1183
  %26 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1184
  %27 = or i32 %26, 1, !dbg !1185
  store volatile i32 %27, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1186
  br label %28, !dbg !1187

28:                                               ; preds = %5, %16
  %29 = phi i8 [ 0, %16 ], [ 1, %5 ], !dbg !1160
  ret i8 %29, !dbg !1188
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halIrTxPWSend(i8 noundef zeroext %0, i8* nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #2 !dbg !1189 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1194, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %1, metadata !1195, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %2, metadata !1196, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1197, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata %struct._IOT_IRTX_TypeDef* inttoptr (i32 -2096758784 to %struct._IOT_IRTX_TypeDef*), metadata !1198, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1199, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 0, metadata !1200, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32* null, metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1204
  %4 = zext i8 %0 to i32, !dbg !1205
  %5 = and i32 %4, 128, !dbg !1207
  %6 = icmp eq i32 %5, 0, !dbg !1207
  br i1 %6, label %7, label %74, !dbg !1208

7:                                                ; preds = %3
  %8 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1209
  %9 = and i32 %8, -32513, !dbg !1209
  store volatile i32 %9, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1209
  %10 = shl nuw nsw i32 %4, 8, !dbg !1210
  %11 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1211
  %12 = or i32 %11, %10, !dbg !1211
  store volatile i32 %12, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1211
  %13 = zext i8 %2 to i32, !dbg !1212
  store volatile i32 %13, i32* inttoptr (i32 -2096758736 to i32*), align 16, !dbg !1213
  call void @llvm.dbg.value(metadata i8 %0, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1199, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096758732 to i32*), metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1204
  %14 = icmp eq i8 %0, 0, !dbg !1214
  br i1 %14, label %69, label %15, !dbg !1217

15:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096758732 to i32*), metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %0, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 0, metadata !1199, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 0, metadata !1200, metadata !DIExpression()), !dbg !1204
  %16 = icmp ugt i8 %0, 4, !dbg !1218
  br i1 %16, label %38, label %17, !dbg !1221

17:                                               ; preds = %38, %15
  %18 = phi i32* [ inttoptr (i32 -2096758732 to i32*), %15 ], [ %66, %38 ]
  %19 = phi i8 [ %0, %15 ], [ %65, %38 ]
  %20 = phi i8 [ 0, %15 ], [ %64, %38 ]
  br label %21, !dbg !1222

21:                                               ; preds = %17, %21
  %22 = phi i8 [ %35, %21 ], [ %20, %17 ], !dbg !1224
  %23 = phi i32 [ %33, %21 ], [ 0, %17 ], !dbg !1225
  %24 = phi i8 [ %36, %21 ], [ %19, %17 ], !dbg !1224
  %25 = phi i8 [ %34, %21 ], [ 0, %17 ], !dbg !1204
  call void @llvm.dbg.value(metadata i8 %25, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %24, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %23, metadata !1200, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %22, metadata !1199, metadata !DIExpression()), !dbg !1204
  %26 = zext i8 %22 to i32, !dbg !1226
  %27 = getelementptr inbounds i8, i8* %1, i32 %26, !dbg !1226
  %28 = load i8, i8* %27, align 1, !dbg !1226
  %29 = zext i8 %28 to i32, !dbg !1226
  %30 = zext i8 %25 to i32, !dbg !1228
  %31 = shl nuw nsw i32 %30, 3, !dbg !1229
  %32 = shl i32 %29, %31, !dbg !1230
  %33 = or i32 %32, %23, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %33, metadata !1200, metadata !DIExpression()), !dbg !1204
  %34 = add i8 %25, 1, !dbg !1232
  call void @llvm.dbg.value(metadata i8 %34, metadata !1203, metadata !DIExpression()), !dbg !1204
  %35 = add i8 %22, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i8 %35, metadata !1199, metadata !DIExpression()), !dbg !1204
  %36 = add i8 %24, -1, !dbg !1234
  call void @llvm.dbg.value(metadata i8 %36, metadata !1201, metadata !DIExpression()), !dbg !1204
  %37 = icmp eq i8 %36, 0, !dbg !1235
  br i1 %37, label %68, label %21, !dbg !1235, !llvm.loop !1236

38:                                               ; preds = %15, %38
  %39 = phi i8 [ %64, %38 ], [ 0, %15 ]
  %40 = phi i8 [ %65, %38 ], [ %0, %15 ]
  %41 = phi i32* [ %66, %38 ], [ inttoptr (i32 -2096758732 to i32*), %15 ]
  call void @llvm.dbg.value(metadata i8 %39, metadata !1199, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %40, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32* %41, metadata !1202, metadata !DIExpression()), !dbg !1204
  %42 = zext i8 %39 to i32, !dbg !1238
  %43 = getelementptr inbounds i8, i8* %1, i32 %42, !dbg !1238
  %44 = load i8, i8* %43, align 1, !dbg !1238
  %45 = zext i8 %44 to i32, !dbg !1238
  %46 = or i32 %42, 1, !dbg !1240
  %47 = getelementptr inbounds i8, i8* %1, i32 %46, !dbg !1241
  %48 = load i8, i8* %47, align 1, !dbg !1241
  %49 = zext i8 %48 to i32, !dbg !1241
  %50 = shl nuw nsw i32 %49, 8, !dbg !1242
  %51 = or i32 %50, %45, !dbg !1243
  %52 = or i32 %42, 2, !dbg !1244
  %53 = getelementptr inbounds i8, i8* %1, i32 %52, !dbg !1245
  %54 = load i8, i8* %53, align 1, !dbg !1245
  %55 = zext i8 %54 to i32, !dbg !1245
  %56 = shl nuw nsw i32 %55, 16, !dbg !1246
  %57 = or i32 %51, %56, !dbg !1247
  %58 = or i32 %42, 3, !dbg !1248
  %59 = getelementptr inbounds i8, i8* %1, i32 %58, !dbg !1249
  %60 = load i8, i8* %59, align 1, !dbg !1249
  %61 = zext i8 %60 to i32, !dbg !1249
  %62 = shl nuw i32 %61, 24, !dbg !1250
  %63 = or i32 %57, %62, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %63, metadata !1200, metadata !DIExpression()), !dbg !1204
  %64 = add i8 %39, 4, !dbg !1252
  call void @llvm.dbg.value(metadata i8 %64, metadata !1199, metadata !DIExpression()), !dbg !1204
  %65 = add i8 %40, -4, !dbg !1253
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %65, metadata !1201, metadata !DIExpression()), !dbg !1204
  store volatile i32 %63, i32* %41, align 4, !dbg !1254
  %66 = getelementptr inbounds i32, i32* %41, i32 1, !dbg !1255
  call void @llvm.dbg.value(metadata i32* %66, metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 0, metadata !1200, metadata !DIExpression()), !dbg !1204
  %67 = icmp ugt i8 %65, 4, !dbg !1218
  br i1 %67, label %38, label %17, !dbg !1221

68:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i8 0, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %65, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %63, metadata !1200, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %64, metadata !1199, metadata !DIExpression()), !dbg !1204
  store volatile i32 %33, i32* %18, align 4, !dbg !1254
  call void @llvm.dbg.value(metadata i32* %66, metadata !1202, metadata !DIExpression()), !dbg !1204
  br label %69, !dbg !1256

69:                                               ; preds = %68, %7
  %70 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1256
  %71 = and i32 %70, -2, !dbg !1257
  store volatile i32 %71, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1258
  %72 = load volatile i32, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1259
  %73 = or i32 %72, 1, !dbg !1260
  store volatile i32 %73, i32* inttoptr (i32 -2096758784 to i32*), align 131072, !dbg !1261
  br label %74, !dbg !1262

74:                                               ; preds = %3, %69
  %75 = phi i8 [ 0, %69 ], [ 1, %3 ], !dbg !1204
  ret i8 %75, !dbg !1263
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halIrTxClearInterrupt() local_unnamed_addr #2 !dbg !1264 {
  call void @llvm.dbg.value(metadata %struct._IOT_IRTX_TypeDef* inttoptr (i32 -2096758784 to %struct._IOT_IRTX_TypeDef*), metadata !1269, metadata !DIExpression()), !dbg !1270
  %1 = load volatile i32, i32* inttoptr (i32 -2096758740 to i32*), align 4, !dbg !1271
  %2 = or i32 %1, 1, !dbg !1271
  store volatile i32 %2, i32* inttoptr (i32 -2096758740 to i32*), align 4, !dbg !1271
  ret void, !dbg !1272
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !dbg !1273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8 %1, metadata !1279, metadata !DIExpression()), !dbg !1282
  %3 = lshr i32 %0, 5, !dbg !1283
  call void @llvm.dbg.value(metadata i32 %3, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  %4 = trunc i32 %0 to i16, !dbg !1284
  %5 = and i16 %4, 31, !dbg !1284
  call void @llvm.dbg.value(metadata i16 %4, metadata !1281, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1282
  %6 = trunc i32 %3 to i16, !dbg !1285
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1285

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1286
  %9 = zext i16 %5 to i32, !dbg !1289
  %10 = icmp ult i16 %5, 27, !dbg !1289
  br i1 %8, label %11, label %46, !dbg !1290

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1291

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1293
  %14 = xor i32 %13, -1, !dbg !1296
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1297
  %16 = and i32 %15, %14, !dbg !1297
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1297
  br label %44, !dbg !1298

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1299
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1299

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1300
  %21 = and i32 %20, -3, !dbg !1300
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1300
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1303
  %23 = or i32 %22, 2048, !dbg !1303
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1303
  br label %44, !dbg !1304

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1305
  %26 = and i32 %25, -3, !dbg !1305
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1305
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1308
  %28 = or i32 %27, 2048, !dbg !1308
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1308
  br label %44, !dbg !1309

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1310
  %31 = and i32 %30, -3, !dbg !1310
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1310
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1313
  %33 = or i32 %32, 2048, !dbg !1313
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1313
  br label %44, !dbg !1314

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1315
  %36 = and i32 %35, -3, !dbg !1315
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1315
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1318
  %38 = or i32 %37, 2048, !dbg !1318
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1318
  br label %44, !dbg !1319

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1320
  %41 = and i32 %40, -3, !dbg !1320
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1320
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1323
  %43 = or i32 %42, 2048, !dbg !1323
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1323
  br label %44, !dbg !1324

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1325
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1325
  br label %97, !dbg !1326

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1327

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1329
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1332
  %50 = or i32 %49, %48, !dbg !1332
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1332
  br label %68, !dbg !1333

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1334
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1334

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1335
  %55 = or i32 %54, 2050, !dbg !1335
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1335
  br label %68, !dbg !1338

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1339
  %58 = or i32 %57, 2050, !dbg !1339
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1339
  br label %68, !dbg !1342

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1343
  %61 = or i32 %60, 2050, !dbg !1343
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1343
  br label %68, !dbg !1346

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1347
  %64 = or i32 %63, 2050, !dbg !1347
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1347
  br label %68, !dbg !1350

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1351
  %67 = or i32 %66, 2050, !dbg !1351
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1351
  br label %68, !dbg !1354

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1355
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1355
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1356
  %72 = zext i16 %5 to i32, !dbg !1358
  %73 = icmp eq i16 %5, 0, !dbg !1358
  br i1 %71, label %74, label %87, !dbg !1359

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1360

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1362
  %77 = xor i32 %76, -1, !dbg !1365
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1366
  %79 = and i32 %78, %77, !dbg !1366
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1366
  br label %85, !dbg !1367

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1368
  %82 = and i32 %81, -3, !dbg !1368
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1368
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1370
  %84 = or i32 %83, 2048, !dbg !1370
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1370
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1371
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1371
  br label %97, !dbg !1372

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1373

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1375
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1378
  %91 = or i32 %90, %89, !dbg !1378
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1378
  br label %95, !dbg !1379

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  %94 = or i32 %93, 2050, !dbg !1380
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1382
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1382
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1282
  ret i32 %98, !dbg !1383
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !dbg !1384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1386, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i8 %1, metadata !1387, metadata !DIExpression()), !dbg !1390
  %3 = lshr i32 %0, 5, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %3, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1390
  %4 = trunc i32 %0 to i16, !dbg !1392
  %5 = and i16 %4, 31, !dbg !1392
  call void @llvm.dbg.value(metadata i16 %5, metadata !1389, metadata !DIExpression()), !dbg !1390
  %6 = trunc i32 %3 to i16, !dbg !1393
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1393

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1394
  %9 = zext i16 %5 to i32, !dbg !1397
  %10 = shl nuw i32 1, %9, !dbg !1397
  br i1 %8, label %12, label %11, !dbg !1398

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1399
  br label %19, !dbg !1401

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1402
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1404
  %15 = zext i16 %5 to i32, !dbg !1406
  %16 = shl nuw i32 1, %15, !dbg !1406
  br i1 %14, label %18, label %17, !dbg !1407

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1408
  br label %19, !dbg !1410

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1411
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1390
  ret i32 %20, !dbg !1413
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #3 !dbg !1414 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1418, metadata !DIExpression()), !dbg !1422
  %2 = lshr i32 %0, 5, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %2, metadata !1419, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1422
  %3 = and i32 %0, 31, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %0, metadata !1420, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1422
  call void @llvm.dbg.value(metadata i8 0, metadata !1421, metadata !DIExpression()), !dbg !1422
  %4 = trunc i32 %2 to i16, !dbg !1425
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1425

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1421, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1422
  br label %6, !dbg !1426

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1428
  %9 = lshr i32 %8, %3, !dbg !1428
  %10 = trunc i32 %9 to i8, !dbg !1428
  %11 = and i8 %10, 1, !dbg !1428
  call void @llvm.dbg.value(metadata i8 %11, metadata !1421, metadata !DIExpression()), !dbg !1422
  br label %12, !dbg !1429

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1422
  ret i8 %13, !dbg !1430
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #3 !dbg !1431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1433, metadata !DIExpression()), !dbg !1437
  %2 = lshr i32 %0, 5, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %2, metadata !1434, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1437
  %3 = and i32 %0, 31, !dbg !1439
  call void @llvm.dbg.value(metadata i32 %0, metadata !1435, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1436, metadata !DIExpression()), !dbg !1437
  %4 = trunc i32 %2 to i16, !dbg !1440
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1440

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1436, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1437
  br label %6, !dbg !1441

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1443
  %9 = lshr i32 %8, %3, !dbg !1443
  %10 = trunc i32 %9 to i8, !dbg !1443
  %11 = and i8 %10, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %11, metadata !1436, metadata !DIExpression()), !dbg !1437
  br label %12, !dbg !1444

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1437
  ret i8 %13, !dbg !1445
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #3 !dbg !1446 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1448, metadata !DIExpression()), !dbg !1452
  %2 = lshr i32 %0, 5, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %2, metadata !1449, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1452
  %3 = and i32 %0, 31, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %0, metadata !1450, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1452
  call void @llvm.dbg.value(metadata i8 0, metadata !1451, metadata !DIExpression()), !dbg !1452
  %4 = trunc i32 %2 to i16, !dbg !1455
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1455

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1451, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1452
  br label %6, !dbg !1456

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1458
  %9 = lshr i32 %8, %3, !dbg !1458
  %10 = trunc i32 %9 to i8, !dbg !1458
  %11 = and i8 %10, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i8 %11, metadata !1451, metadata !DIExpression()), !dbg !1452
  br label %12, !dbg !1459

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1452
  ret i8 %13, !dbg !1460
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #2 !dbg !1461 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1465, metadata !DIExpression()), !dbg !1468
  %2 = lshr i32 %0, 5, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %2, metadata !1466, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1468
  %3 = trunc i32 %0 to i16, !dbg !1470
  %4 = and i16 %3, 31, !dbg !1470
  call void @llvm.dbg.value(metadata i16 %3, metadata !1467, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1468
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #18, !dbg !1471
  %6 = trunc i32 %2 to i16, !dbg !1472
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1472

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1473
  br i1 %8, label %9, label %12, !dbg !1476

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1477
  %11 = shl nuw nsw i32 1, %10, !dbg !1478
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1478
  br label %49, !dbg !1480

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1481
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1481

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1482
  %16 = and i32 %15, -29, !dbg !1482
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1482
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1485
  %18 = or i32 %17, 2052, !dbg !1485
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1485
  br label %49, !dbg !1486

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1487
  %21 = and i32 %20, -29, !dbg !1487
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1487
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1490
  %23 = or i32 %22, 2052, !dbg !1490
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1490
  br label %49, !dbg !1491

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1492
  %26 = and i32 %25, -29, !dbg !1492
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1492
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1495
  %28 = or i32 %27, 2052, !dbg !1495
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1495
  br label %49, !dbg !1496

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1497
  %31 = and i32 %30, -29, !dbg !1497
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1497
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1500
  %33 = or i32 %32, 2052, !dbg !1500
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1500
  br label %49, !dbg !1501

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1502
  %36 = and i32 %35, -29, !dbg !1502
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1502
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1505
  %38 = or i32 %37, 2052, !dbg !1505
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1505
  br label %49, !dbg !1506

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1507
  br i1 %40, label %41, label %46, !dbg !1509

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1510
  %43 = and i32 %42, -29, !dbg !1510
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1510
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1512
  %45 = or i32 %44, 2052, !dbg !1512
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1512
  br label %49, !dbg !1513

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1514
  %48 = shl nuw i32 1, %47, !dbg !1514
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1514
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1468
  ret i32 %50, !dbg !1516
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #2 !dbg !1517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1519, metadata !DIExpression()), !dbg !1522
  %2 = lshr i32 %0, 5, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %2, metadata !1520, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1522
  %3 = trunc i32 %0 to i16, !dbg !1524
  %4 = and i16 %3, 31, !dbg !1524
  call void @llvm.dbg.value(metadata i16 %3, metadata !1521, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1522
  %5 = trunc i32 %2 to i16, !dbg !1525
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1525

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1526
  br i1 %7, label %8, label %11, !dbg !1529

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1530
  %10 = shl nuw nsw i32 1, %9, !dbg !1531
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1531
  br label %48, !dbg !1533

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1534
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1534

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1535
  %15 = and i32 %14, -29, !dbg !1535
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1535
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1538
  %17 = or i32 %16, 2048, !dbg !1538
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1538
  br label %48, !dbg !1539

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1540
  %20 = and i32 %19, -29, !dbg !1540
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1540
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1543
  %22 = or i32 %21, 2048, !dbg !1543
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1543
  br label %48, !dbg !1544

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1545
  %25 = and i32 %24, -29, !dbg !1545
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1545
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1548
  %27 = or i32 %26, 2048, !dbg !1548
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1548
  br label %48, !dbg !1549

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1550
  %30 = and i32 %29, -29, !dbg !1550
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1550
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1553
  %32 = or i32 %31, 2048, !dbg !1553
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1553
  br label %48, !dbg !1554

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1555
  %35 = and i32 %34, -29, !dbg !1555
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1555
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1558
  %37 = or i32 %36, 2048, !dbg !1558
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1558
  br label %48, !dbg !1559

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1560
  br i1 %39, label %40, label %45, !dbg !1562

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1563
  %42 = and i32 %41, -29, !dbg !1563
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1563
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1565
  %44 = or i32 %43, 2048, !dbg !1565
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1565
  br label %48, !dbg !1566

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1567
  %47 = shl nuw i32 1, %46, !dbg !1567
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1567
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1522
  ret i32 %49, !dbg !1569
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #2 !dbg !1570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1572, metadata !DIExpression()), !dbg !1575
  %2 = lshr i32 %0, 5, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %2, metadata !1573, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1575
  %3 = trunc i32 %0 to i16, !dbg !1577
  %4 = and i16 %3, 31, !dbg !1577
  call void @llvm.dbg.value(metadata i16 %3, metadata !1574, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1575
  %5 = trunc i32 %2 to i16, !dbg !1578
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1578

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1579
  br i1 %7, label %8, label %11, !dbg !1582

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1583
  %10 = shl nuw nsw i32 1, %9, !dbg !1584
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1584
  br label %48, !dbg !1586

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1587
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1587

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1588
  %15 = and i32 %14, -29, !dbg !1588
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1588
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1591
  %17 = or i32 %16, 2048, !dbg !1591
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1591
  br label %48, !dbg !1592

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1593
  %20 = and i32 %19, -29, !dbg !1593
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1593
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1596
  %22 = or i32 %21, 2048, !dbg !1596
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1596
  br label %48, !dbg !1597

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1598
  %25 = and i32 %24, -29, !dbg !1598
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1598
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1601
  %27 = or i32 %26, 2048, !dbg !1601
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1601
  br label %48, !dbg !1602

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1603
  %30 = and i32 %29, -29, !dbg !1603
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1603
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1606
  %32 = or i32 %31, 2048, !dbg !1606
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1606
  br label %48, !dbg !1607

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1608
  %35 = and i32 %34, -29, !dbg !1608
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1608
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1611
  %37 = or i32 %36, 2048, !dbg !1611
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1611
  br label %48, !dbg !1612

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1613
  br i1 %39, label %40, label %45, !dbg !1615

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1616
  %42 = and i32 %41, -29, !dbg !1616
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1616
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1618
  %44 = or i32 %43, 2048, !dbg !1618
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1618
  br label %48, !dbg !1619

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1620
  %47 = shl nuw i32 1, %46, !dbg !1620
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1620
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1575
  ret i32 %49, !dbg !1622
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #2 !dbg !1623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1625, metadata !DIExpression()), !dbg !1628
  %2 = lshr i32 %0, 5, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %2, metadata !1626, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1628
  %3 = trunc i32 %0 to i16, !dbg !1630
  %4 = and i16 %3, 31, !dbg !1630
  call void @llvm.dbg.value(metadata i16 %3, metadata !1627, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1628
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #18, !dbg !1631
  %6 = trunc i32 %2 to i16, !dbg !1632
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1632

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1633
  br i1 %8, label %9, label %12, !dbg !1636

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1637
  %11 = shl nuw nsw i32 1, %10, !dbg !1638
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1638
  br label %49, !dbg !1640

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1641
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1641

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1642
  %16 = and i32 %15, -29, !dbg !1642
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1642
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1645
  %18 = or i32 %17, 2068, !dbg !1645
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1645
  br label %49, !dbg !1646

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1647
  %21 = and i32 %20, -29, !dbg !1647
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1647
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1650
  %23 = or i32 %22, 2068, !dbg !1650
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1650
  br label %49, !dbg !1651

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1652
  %26 = and i32 %25, -29, !dbg !1652
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1652
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1655
  %28 = or i32 %27, 2068, !dbg !1655
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1655
  br label %49, !dbg !1656

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1657
  %31 = and i32 %30, -29, !dbg !1657
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1657
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1660
  %33 = or i32 %32, 2068, !dbg !1660
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1660
  br label %49, !dbg !1661

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1662
  %36 = and i32 %35, -29, !dbg !1662
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1662
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1665
  %38 = or i32 %37, 2068, !dbg !1665
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1665
  br label %49, !dbg !1666

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1667
  br i1 %40, label %41, label %46, !dbg !1669

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1670
  %43 = and i32 %42, -29, !dbg !1670
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1670
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1672
  %45 = or i32 %44, 2068, !dbg !1672
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1672
  br label %49, !dbg !1673

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1674
  %48 = shl nuw i32 1, %47, !dbg !1674
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1674
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1628
  ret i32 %50, !dbg !1676
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !dbg !1677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1679, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 %1, metadata !1680, metadata !DIExpression()), !dbg !1683
  %3 = lshr i32 %0, 4, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %3, metadata !1681, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1683
  %4 = trunc i32 %0 to i16, !dbg !1685
  %5 = and i16 %4, 15, !dbg !1685
  call void @llvm.dbg.value(metadata i16 %4, metadata !1682, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1683
  %6 = trunc i32 %3 to i16, !dbg !1686
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1686

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1687
  %9 = zext i16 %8 to i32, !dbg !1687
  %10 = shl nuw i32 3, %9, !dbg !1689
  %11 = xor i32 %10, -1, !dbg !1690
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1691
  %13 = and i32 %12, %11, !dbg !1691
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1691
  %14 = lshr i8 %1, 2, !dbg !1692
  %15 = zext i8 %14 to i32, !dbg !1692
  %16 = add nsw i32 %15, -1, !dbg !1693
  %17 = shl i32 %16, %9, !dbg !1694
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1695
  %19 = or i32 %18, %17, !dbg !1695
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1695
  br label %131, !dbg !1696

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1697
  br i1 %21, label %22, label %35, !dbg !1699

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1700
  %24 = zext i16 %23 to i32, !dbg !1700
  %25 = shl nuw nsw i32 3, %24, !dbg !1702
  %26 = xor i32 %25, -1, !dbg !1703
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1704
  %28 = and i32 %27, %26, !dbg !1704
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1704
  %29 = lshr i8 %1, 2, !dbg !1705
  %30 = zext i8 %29 to i32, !dbg !1705
  %31 = add nsw i32 %30, -1, !dbg !1706
  %32 = shl nsw i32 %31, %24, !dbg !1707
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1708
  %34 = or i32 %33, %32, !dbg !1708
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1708
  br label %131, !dbg !1709

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1710
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1710

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1711
  %39 = and i32 %38, -449, !dbg !1711
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1711
  %40 = lshr i8 %1, 1, !dbg !1714
  %41 = zext i8 %40 to i32, !dbg !1714
  %42 = shl nuw nsw i32 %41, 6, !dbg !1715
  %43 = add nsw i32 %42, -64, !dbg !1715
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1716
  %45 = or i32 %44, %43, !dbg !1716
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1716
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1717
  %47 = or i32 %46, 2048, !dbg !1717
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1717
  br label %131, !dbg !1718

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1719
  %50 = and i32 %49, -449, !dbg !1719
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1719
  %51 = lshr i8 %1, 1, !dbg !1722
  %52 = zext i8 %51 to i32, !dbg !1722
  %53 = shl nuw nsw i32 %52, 6, !dbg !1723
  %54 = add nsw i32 %53, -64, !dbg !1723
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1724
  %56 = or i32 %55, %54, !dbg !1724
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1724
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1725
  %58 = or i32 %57, 2048, !dbg !1725
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1725
  br label %131, !dbg !1726

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1727
  %61 = and i32 %60, -449, !dbg !1727
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1727
  %62 = lshr i8 %1, 1, !dbg !1730
  %63 = zext i8 %62 to i32, !dbg !1730
  %64 = shl nuw nsw i32 %63, 6, !dbg !1731
  %65 = add nsw i32 %64, -64, !dbg !1731
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1732
  %67 = or i32 %66, %65, !dbg !1732
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1732
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1733
  %69 = or i32 %68, 2048, !dbg !1733
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1733
  br label %131, !dbg !1734

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1735
  %72 = and i32 %71, -449, !dbg !1735
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1735
  %73 = lshr i8 %1, 1, !dbg !1738
  %74 = zext i8 %73 to i32, !dbg !1738
  %75 = shl nuw nsw i32 %74, 6, !dbg !1739
  %76 = add nsw i32 %75, -64, !dbg !1739
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1740
  %78 = or i32 %77, %76, !dbg !1740
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1740
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1741
  %80 = or i32 %79, 2048, !dbg !1741
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1741
  br label %131, !dbg !1742

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1743
  %83 = and i32 %82, -449, !dbg !1743
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1743
  %84 = lshr i8 %1, 1, !dbg !1746
  %85 = zext i8 %84 to i32, !dbg !1746
  %86 = shl nuw nsw i32 %85, 6, !dbg !1747
  %87 = add nsw i32 %86, -64, !dbg !1747
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1748
  %89 = or i32 %88, %87, !dbg !1748
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1748
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1749
  %91 = or i32 %90, 2048, !dbg !1749
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1749
  br label %131, !dbg !1750

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1751
  br i1 %93, label %94, label %105, !dbg !1753

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1754
  %96 = and i32 %95, -449, !dbg !1754
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1754
  %97 = lshr i8 %1, 1, !dbg !1756
  %98 = zext i8 %97 to i32, !dbg !1756
  %99 = shl nuw nsw i32 %98, 6, !dbg !1757
  %100 = add nsw i32 %99, -64, !dbg !1757
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1758
  %102 = or i32 %101, %100, !dbg !1758
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1758
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1759
  %104 = or i32 %103, 2048, !dbg !1759
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1759
  br label %131, !dbg !1760

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1761
  %107 = zext i16 %106 to i32, !dbg !1761
  %108 = shl nuw i32 3, %107, !dbg !1763
  %109 = xor i32 %108, -1, !dbg !1764
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1765
  %111 = and i32 %110, %109, !dbg !1765
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1765
  %112 = lshr i8 %1, 2, !dbg !1766
  %113 = zext i8 %112 to i32, !dbg !1766
  %114 = add nsw i32 %113, -1, !dbg !1767
  %115 = shl i32 %114, %107, !dbg !1768
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1769
  %117 = or i32 %116, %115, !dbg !1769
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1769
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1770
  %120 = zext i16 %119 to i32, !dbg !1770
  %121 = shl nuw i32 3, %120, !dbg !1771
  %122 = xor i32 %121, -1, !dbg !1772
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1773
  %124 = and i32 %123, %122, !dbg !1773
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1773
  %125 = lshr i8 %1, 2, !dbg !1774
  %126 = zext i8 %125 to i32, !dbg !1774
  %127 = add nsw i32 %126, -1, !dbg !1775
  %128 = shl i32 %127, %120, !dbg !1776
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1777
  %130 = or i32 %129, %128, !dbg !1777
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1777
  br label %131, !dbg !1778

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1683
  ret i32 %132, !dbg !1779
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !1780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1785, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* %1, metadata !1786, metadata !DIExpression()), !dbg !1790
  %3 = lshr i32 %0, 4, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %3, metadata !1787, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1790
  %4 = trunc i32 %0 to i16, !dbg !1792
  %5 = and i16 %4, 15, !dbg !1792
  call void @llvm.dbg.value(metadata i16 %4, metadata !1788, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %6 = trunc i32 %3 to i16, !dbg !1793
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1793

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %8, metadata !1789, metadata !DIExpression()), !dbg !1790
  %9 = shl nuw nsw i16 %5, 1, !dbg !1796
  %10 = zext i16 %9 to i32, !dbg !1796
  %11 = shl nuw i32 3, %10, !dbg !1797
  %12 = and i32 %8, %11, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %12, metadata !1789, metadata !DIExpression()), !dbg !1790
  %13 = lshr i32 %12, %10, !dbg !1799
  %14 = trunc i32 %13 to i8, !dbg !1800
  %15 = shl i8 %14, 2, !dbg !1800
  %16 = add i8 %15, 4, !dbg !1800
  br label %89, !dbg !1801

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1802
  br i1 %18, label %19, label %29, !dbg !1804

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %20, metadata !1789, metadata !DIExpression()), !dbg !1790
  %21 = shl nuw nsw i16 %5, 1, !dbg !1807
  %22 = zext i16 %21 to i32, !dbg !1807
  %23 = shl nuw nsw i32 3, %22, !dbg !1808
  %24 = and i32 %20, %23, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %24, metadata !1789, metadata !DIExpression()), !dbg !1790
  %25 = lshr i32 %24, %22, !dbg !1810
  %26 = trunc i32 %25 to i8, !dbg !1811
  %27 = shl i8 %26, 2, !dbg !1811
  %28 = add i8 %27, 4, !dbg !1811
  br label %89, !dbg !1812

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1813
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1813

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %32, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %32, metadata !1789, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %33 = lshr i32 %32, 5, !dbg !1817
  %34 = trunc i32 %33 to i8, !dbg !1818
  %35 = and i8 %34, 14, !dbg !1818
  %36 = add nuw nsw i8 %35, 2, !dbg !1818
  br label %89, !dbg !1819

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %38, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %38, metadata !1789, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %39 = lshr i32 %38, 5, !dbg !1823
  %40 = trunc i32 %39 to i8, !dbg !1824
  %41 = and i8 %40, 14, !dbg !1824
  %42 = add nuw nsw i8 %41, 2, !dbg !1824
  br label %89, !dbg !1825

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %44, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %44, metadata !1789, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %45 = lshr i32 %44, 5, !dbg !1829
  %46 = trunc i32 %45 to i8, !dbg !1830
  %47 = and i8 %46, 14, !dbg !1830
  %48 = add nuw nsw i8 %47, 2, !dbg !1830
  br label %89, !dbg !1831

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %50, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %50, metadata !1789, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %51 = lshr i32 %50, 5, !dbg !1835
  %52 = trunc i32 %51 to i8, !dbg !1836
  %53 = and i8 %52, 14, !dbg !1836
  %54 = add nuw nsw i8 %53, 2, !dbg !1836
  br label %89, !dbg !1837

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1838
  call void @llvm.dbg.value(metadata i32 %56, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %56, metadata !1789, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %57 = lshr i32 %56, 5, !dbg !1841
  %58 = trunc i32 %57 to i8, !dbg !1842
  %59 = and i8 %58, 14, !dbg !1842
  %60 = add nuw nsw i8 %59, 2, !dbg !1842
  br label %89, !dbg !1843

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1844
  br i1 %62, label %63, label %69, !dbg !1846

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %64, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i32 %64, metadata !1789, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1790
  %65 = lshr i32 %64, 5, !dbg !1849
  %66 = trunc i32 %65 to i8, !dbg !1850
  %67 = and i8 %66, 14, !dbg !1850
  %68 = add nuw nsw i8 %67, 2, !dbg !1850
  br label %89, !dbg !1851

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %70, metadata !1789, metadata !DIExpression()), !dbg !1790
  %71 = shl nuw nsw i16 %5, 1, !dbg !1854
  %72 = zext i16 %71 to i32, !dbg !1854
  %73 = shl nuw i32 3, %72, !dbg !1855
  %74 = and i32 %70, %73, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %74, metadata !1789, metadata !DIExpression()), !dbg !1790
  %75 = lshr i32 %74, %72, !dbg !1857
  %76 = trunc i32 %75 to i8, !dbg !1858
  %77 = shl i8 %76, 2, !dbg !1858
  %78 = add i8 %77, 4, !dbg !1858
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %80, metadata !1789, metadata !DIExpression()), !dbg !1790
  %81 = shl nuw nsw i16 %5, 1, !dbg !1860
  %82 = zext i16 %81 to i32, !dbg !1860
  %83 = shl nuw i32 3, %82, !dbg !1861
  %84 = and i32 %80, %83, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %84, metadata !1789, metadata !DIExpression()), !dbg !1790
  %85 = lshr i32 %84, %82, !dbg !1863
  %86 = trunc i32 %85 to i8, !dbg !1864
  %87 = shl i8 %86, 2, !dbg !1864
  %88 = add i8 %87, 4, !dbg !1864
  br label %89, !dbg !1865

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1866
  br label %91, !dbg !1867

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1790
  ret i32 %92, !dbg !1867
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !1868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1873, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %1, metadata !1874, metadata !DIExpression()), !dbg !1877
  %3 = lshr i32 %0, 5, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %3, metadata !1875, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1877
  %4 = trunc i32 %0 to i16, !dbg !1879
  %5 = and i16 %4, 31, !dbg !1879
  call void @llvm.dbg.value(metadata i16 %5, metadata !1876, metadata !DIExpression()), !dbg !1877
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1880

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1875, metadata !DIExpression()), !dbg !1877
  %7 = trunc i32 %3 to i16, !dbg !1881
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1881

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1884
  %10 = shl nuw i32 1, %9, !dbg !1886
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1887
  %12 = or i32 %11, %10, !dbg !1887
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1887
  br label %32, !dbg !1888

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1889
  %15 = shl nuw i32 1, %14, !dbg !1890
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1891
  %17 = or i32 %16, %15, !dbg !1891
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1891
  br label %32, !dbg !1892

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1893
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1893

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1896
  %22 = shl nuw i32 1, %21, !dbg !1898
  %23 = xor i32 %22, -1, !dbg !1899
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1900
  %25 = and i32 %24, %23, !dbg !1900
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1900
  br label %32, !dbg !1901

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1902
  %28 = shl nuw i32 1, %27, !dbg !1903
  %29 = xor i32 %28, -1, !dbg !1904
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1905
  %31 = and i32 %30, %29, !dbg !1905
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1905
  br label %32, !dbg !1906

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1907
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 !dbg !1908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1913, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 %1, metadata !1914, metadata !DIExpression()), !dbg !1916
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
  ], !dbg !1917

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %4, metadata !1915, metadata !DIExpression()), !dbg !1916
  %5 = and i32 %4, -16, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %5, metadata !1915, metadata !DIExpression()), !dbg !1916
  %6 = zext i8 %1 to i32, !dbg !1921
  %7 = or i32 %5, %6, !dbg !1922
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1923
  br label %187, !dbg !1924

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %9, metadata !1915, metadata !DIExpression()), !dbg !1916
  %10 = and i32 %9, -241, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %10, metadata !1915, metadata !DIExpression()), !dbg !1916
  %11 = zext i8 %1 to i32, !dbg !1927
  %12 = shl nuw nsw i32 %11, 4, !dbg !1928
  %13 = or i32 %10, %12, !dbg !1929
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1930
  br label %187, !dbg !1931

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %15, metadata !1915, metadata !DIExpression()), !dbg !1916
  %16 = and i32 %15, -3841, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %16, metadata !1915, metadata !DIExpression()), !dbg !1916
  %17 = zext i8 %1 to i32, !dbg !1934
  %18 = shl nuw nsw i32 %17, 8, !dbg !1935
  %19 = or i32 %16, %18, !dbg !1936
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1937
  br label %187, !dbg !1938

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %21, metadata !1915, metadata !DIExpression()), !dbg !1916
  %22 = and i32 %21, -61441, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %22, metadata !1915, metadata !DIExpression()), !dbg !1916
  %23 = zext i8 %1 to i32, !dbg !1941
  %24 = shl nuw nsw i32 %23, 12, !dbg !1942
  %25 = or i32 %22, %24, !dbg !1943
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1944
  br label %187, !dbg !1945

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %27, metadata !1915, metadata !DIExpression()), !dbg !1916
  %28 = and i32 %27, -983041, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %28, metadata !1915, metadata !DIExpression()), !dbg !1916
  %29 = zext i8 %1 to i32, !dbg !1948
  %30 = shl nuw nsw i32 %29, 16, !dbg !1949
  %31 = or i32 %28, %30, !dbg !1950
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1951
  br label %187, !dbg !1952

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %33, metadata !1915, metadata !DIExpression()), !dbg !1916
  %34 = and i32 %33, -15728641, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %34, metadata !1915, metadata !DIExpression()), !dbg !1916
  %35 = zext i8 %1 to i32, !dbg !1955
  %36 = shl nuw nsw i32 %35, 20, !dbg !1956
  %37 = or i32 %34, %36, !dbg !1957
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1958
  br label %187, !dbg !1959

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %39, metadata !1915, metadata !DIExpression()), !dbg !1916
  %40 = and i32 %39, -251658241, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %40, metadata !1915, metadata !DIExpression()), !dbg !1916
  %41 = zext i8 %1 to i32, !dbg !1962
  %42 = shl nuw i32 %41, 24, !dbg !1963
  %43 = or i32 %40, %42, !dbg !1964
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1965
  br label %187, !dbg !1966

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %45, metadata !1915, metadata !DIExpression()), !dbg !1916
  %46 = and i32 %45, 268435455, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %46, metadata !1915, metadata !DIExpression()), !dbg !1916
  %47 = zext i8 %1 to i32, !dbg !1969
  %48 = shl i32 %47, 28, !dbg !1970
  %49 = or i32 %46, %48, !dbg !1971
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1972
  br label %187, !dbg !1973

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %51, metadata !1915, metadata !DIExpression()), !dbg !1916
  %52 = and i32 %51, -16, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %52, metadata !1915, metadata !DIExpression()), !dbg !1916
  %53 = zext i8 %1 to i32, !dbg !1976
  %54 = or i32 %52, %53, !dbg !1977
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1978
  br label %187, !dbg !1979

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %56, metadata !1915, metadata !DIExpression()), !dbg !1916
  %57 = and i32 %56, -241, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %57, metadata !1915, metadata !DIExpression()), !dbg !1916
  %58 = zext i8 %1 to i32, !dbg !1982
  %59 = shl nuw nsw i32 %58, 4, !dbg !1983
  %60 = or i32 %57, %59, !dbg !1984
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1985
  br label %187, !dbg !1986

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %62, metadata !1915, metadata !DIExpression()), !dbg !1916
  %63 = and i32 %62, -3841, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %63, metadata !1915, metadata !DIExpression()), !dbg !1916
  %64 = zext i8 %1 to i32, !dbg !1989
  %65 = shl nuw nsw i32 %64, 8, !dbg !1990
  %66 = or i32 %63, %65, !dbg !1991
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1992
  br label %187, !dbg !1993

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %68, metadata !1915, metadata !DIExpression()), !dbg !1916
  %69 = and i32 %68, -61441, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %69, metadata !1915, metadata !DIExpression()), !dbg !1916
  %70 = zext i8 %1 to i32, !dbg !1996
  %71 = shl nuw nsw i32 %70, 12, !dbg !1997
  %72 = or i32 %69, %71, !dbg !1998
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1999
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2000

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #19, !dbg !2002
  br label %187, !dbg !2004

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %76, metadata !1915, metadata !DIExpression()), !dbg !1916
  %77 = and i32 %76, -983041, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %77, metadata !1915, metadata !DIExpression()), !dbg !1916
  %78 = zext i8 %1 to i32, !dbg !2007
  %79 = shl nuw nsw i32 %78, 16, !dbg !2008
  %80 = or i32 %77, %79, !dbg !2009
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2010
  %81 = and i8 %1, -2, !dbg !2011
  %82 = icmp eq i8 %81, 4, !dbg !2011
  br i1 %82, label %83, label %187, !dbg !2011

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #19, !dbg !2013
  br label %187, !dbg !2015

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2016
  call void @llvm.dbg.value(metadata i32 %86, metadata !1915, metadata !DIExpression()), !dbg !1916
  %87 = and i32 %86, -15728641, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %87, metadata !1915, metadata !DIExpression()), !dbg !1916
  %88 = zext i8 %1 to i32, !dbg !2018
  %89 = shl nuw nsw i32 %88, 20, !dbg !2019
  %90 = or i32 %87, %89, !dbg !2020
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2021
  %91 = icmp eq i8 %1, 6, !dbg !2022
  br i1 %91, label %92, label %187, !dbg !2024

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #19, !dbg !2025
  br label %187, !dbg !2027

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2028
  call void @llvm.dbg.value(metadata i32 %95, metadata !1915, metadata !DIExpression()), !dbg !1916
  %96 = and i32 %95, -251658241, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %96, metadata !1915, metadata !DIExpression()), !dbg !1916
  %97 = zext i8 %1 to i32, !dbg !2030
  %98 = shl nuw i32 %97, 24, !dbg !2031
  %99 = or i32 %96, %98, !dbg !2032
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2033
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2034

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #19, !dbg !2036
  br label %187, !dbg !2038

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %103, metadata !1915, metadata !DIExpression()), !dbg !1916
  %104 = and i32 %103, 268435455, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %104, metadata !1915, metadata !DIExpression()), !dbg !1916
  %105 = zext i8 %1 to i32, !dbg !2041
  %106 = shl i32 %105, 28, !dbg !2042
  %107 = or i32 %104, %106, !dbg !2043
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2044
  %108 = and i8 %1, -3, !dbg !2045
  %109 = icmp eq i8 %108, 4, !dbg !2045
  br i1 %109, label %110, label %187, !dbg !2045

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #19, !dbg !2047
  br label %187, !dbg !2049

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %113, metadata !1915, metadata !DIExpression()), !dbg !1916
  %114 = and i32 %113, -16, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %114, metadata !1915, metadata !DIExpression()), !dbg !1916
  %115 = zext i8 %1 to i32, !dbg !2052
  %116 = or i32 %114, %115, !dbg !2053
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2054
  %117 = and i8 %1, -3, !dbg !2055
  %118 = icmp eq i8 %117, 4, !dbg !2055
  br i1 %118, label %119, label %187, !dbg !2055

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #19, !dbg !2057
  br label %187, !dbg !2059

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %122, metadata !1915, metadata !DIExpression()), !dbg !1916
  %123 = and i32 %122, -241, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %123, metadata !1915, metadata !DIExpression()), !dbg !1916
  %124 = zext i8 %1 to i32, !dbg !2062
  %125 = shl nuw nsw i32 %124, 4, !dbg !2063
  %126 = or i32 %123, %125, !dbg !2064
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2065
  br label %187, !dbg !2066

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %128, metadata !1915, metadata !DIExpression()), !dbg !1916
  %129 = and i32 %128, -3841, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %129, metadata !1915, metadata !DIExpression()), !dbg !1916
  %130 = zext i8 %1 to i32, !dbg !2069
  %131 = shl nuw nsw i32 %130, 8, !dbg !2070
  %132 = or i32 %129, %131, !dbg !2071
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2072
  br label %187, !dbg !2073

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %134, metadata !1915, metadata !DIExpression()), !dbg !1916
  %135 = and i32 %134, -61441, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %135, metadata !1915, metadata !DIExpression()), !dbg !1916
  %136 = zext i8 %1 to i32, !dbg !2076
  %137 = shl nuw nsw i32 %136, 12, !dbg !2077
  %138 = or i32 %135, %137, !dbg !2078
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2079
  br label %187, !dbg !2080

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %140, metadata !1915, metadata !DIExpression()), !dbg !1916
  %141 = and i32 %140, -983041, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %141, metadata !1915, metadata !DIExpression()), !dbg !1916
  %142 = zext i8 %1 to i32, !dbg !2083
  %143 = shl nuw nsw i32 %142, 16, !dbg !2084
  %144 = or i32 %141, %143, !dbg !2085
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2086
  br label %187, !dbg !2087

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %146, metadata !1915, metadata !DIExpression()), !dbg !1916
  %147 = and i32 %146, -15728641, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %147, metadata !1915, metadata !DIExpression()), !dbg !1916
  %148 = zext i8 %1 to i32, !dbg !2090
  %149 = shl nuw nsw i32 %148, 20, !dbg !2091
  %150 = or i32 %147, %149, !dbg !2092
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2093
  br label %187, !dbg !2094

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %152, metadata !1915, metadata !DIExpression()), !dbg !1916
  %153 = and i32 %152, -251658241, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %153, metadata !1915, metadata !DIExpression()), !dbg !1916
  %154 = zext i8 %1 to i32, !dbg !2097
  %155 = shl nuw i32 %154, 24, !dbg !2098
  %156 = or i32 %153, %155, !dbg !2099
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2100
  br label %187, !dbg !2101

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %158, metadata !1915, metadata !DIExpression()), !dbg !1916
  %159 = and i32 %158, 268435455, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %159, metadata !1915, metadata !DIExpression()), !dbg !1916
  %160 = zext i8 %1 to i32, !dbg !2104
  %161 = shl i32 %160, 28, !dbg !2105
  %162 = or i32 %159, %161, !dbg !2106
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2107
  br label %187, !dbg !2108

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %164, metadata !1915, metadata !DIExpression()), !dbg !1916
  %165 = and i32 %164, -241, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %165, metadata !1915, metadata !DIExpression()), !dbg !1916
  %166 = zext i8 %1 to i32, !dbg !2111
  %167 = shl nuw nsw i32 %166, 4, !dbg !2112
  %168 = or i32 %165, %167, !dbg !2113
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2114
  br label %187, !dbg !2115

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2116
  call void @llvm.dbg.value(metadata i32 %170, metadata !1915, metadata !DIExpression()), !dbg !1916
  %171 = and i32 %170, -3841, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %171, metadata !1915, metadata !DIExpression()), !dbg !1916
  %172 = zext i8 %1 to i32, !dbg !2118
  %173 = shl nuw nsw i32 %172, 8, !dbg !2119
  %174 = or i32 %171, %173, !dbg !2120
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2121
  br label %187, !dbg !2122

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %176, metadata !1915, metadata !DIExpression()), !dbg !1916
  %177 = and i32 %176, -61441, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %177, metadata !1915, metadata !DIExpression()), !dbg !1916
  %178 = zext i8 %1 to i32, !dbg !2125
  %179 = shl nuw nsw i32 %178, 12, !dbg !2126
  %180 = or i32 %177, %179, !dbg !2127
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2128
  br label %187, !dbg !2129

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %182, metadata !1915, metadata !DIExpression()), !dbg !1916
  %183 = and i32 %182, -983041, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %183, metadata !1915, metadata !DIExpression()), !dbg !1916
  %184 = zext i8 %1 to i32, !dbg !2132
  %185 = shl nuw nsw i32 %184, 16, !dbg !2133
  %186 = or i32 %183, %185, !dbg !2134
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2135
  br label %187, !dbg !2136

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2137
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ir_tx_configure(i8 noundef zeroext %0) local_unnamed_addr #4 !dbg !2138 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2142, metadata !DIExpression()), !dbg !2143
  %2 = zext i8 %0 to i32, !dbg !2144
  %3 = icmp ugt i8 %0, 2, !dbg !2146
  br i1 %3, label %14, label %4, !dbg !2147

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @halIrTxInit(i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #19, !dbg !2148
  %6 = icmp eq i8 %0, 2, !dbg !2149
  br i1 %6, label %7, label %10, !dbg !2151

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @halIrTxConfig(i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0, i8 noundef zeroext 0) #19, !dbg !2152
  %9 = icmp eq i8 %8, 0, !dbg !2152
  br i1 %9, label %13, label %14, !dbg !2155

10:                                               ; preds = %4
  %11 = tail call zeroext i8 @halIrTxConfig(i32 noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0, i8 noundef zeroext 0) #19, !dbg !2156
  %12 = icmp eq i8 %11, 0, !dbg !2156
  br i1 %12, label %13, label %14, !dbg !2159

13:                                               ; preds = %10, %7
  store i8 %0, i8* @g_irtx_mode, align 1, !dbg !2160
  br label %14, !dbg !2161

14:                                               ; preds = %10, %7, %1, %13
  %15 = phi i32 [ 0, %13 ], [ -1, %1 ], [ -1, %7 ], [ -1, %10 ], !dbg !2143
  ret i32 %15, !dbg !2162
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ir_tx_send(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #4 !dbg !2163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32 %2, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %3, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %4, metadata !2171, metadata !DIExpression()), !dbg !2172
  %6 = load i8, i8* @g_irtx_mode, align 1, !dbg !2173
  switch i8 %6, label %11 [
    i8 0, label %7
    i8 2, label %9
  ], !dbg !2175

7:                                                ; preds = %5
  %8 = add i8 %3, 1, !dbg !2176
  call void @llvm.dbg.value(metadata i8 %8, metadata !2170, metadata !DIExpression()), !dbg !2172
  br label %11, !dbg !2178

9:                                                ; preds = %5
  %10 = xor i32 %0, 15, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %10, metadata !2167, metadata !DIExpression()), !dbg !2172
  br label %11, !dbg !2182

11:                                               ; preds = %5, %9, %7
  %12 = phi i32 [ %0, %7 ], [ %10, %9 ], [ %0, %5 ]
  %13 = phi i8 [ %8, %7 ], [ %3, %9 ], [ %3, %5 ]
  call void @llvm.dbg.value(metadata i8 %13, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32 %12, metadata !2167, metadata !DIExpression()), !dbg !2172
  %14 = tail call zeroext i8 @halIrTxSend(i32 noundef %12, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %13, i8 noundef zeroext %4) #19, !dbg !2183
  %15 = icmp ne i8 %14, 0, !dbg !2183
  %16 = sext i1 %15 to i32, !dbg !2172
  ret i32 %16, !dbg !2185
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ir_tx_pulse_width_configure(i16 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #4 !dbg !2186 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %1, metadata !2191, metadata !DIExpression()), !dbg !2192
  %3 = tail call zeroext i8 @halIrTxInit(i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #19, !dbg !2193
  %4 = tail call zeroext i8 @halIrTxConfig(i32 noundef 4, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i16 noundef zeroext %0, i8 noundef zeroext %1) #19, !dbg !2194
  %5 = icmp ne i8 %4, 0, !dbg !2194
  %6 = sext i1 %5 to i32, !dbg !2192
  ret i32 %6, !dbg !2196
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ir_tx_pulse_width_send(i8 noundef zeroext %0, i8* noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 !dbg !2197 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* %1, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %2, metadata !2203, metadata !DIExpression()), !dbg !2204
  %4 = tail call zeroext i8 @halIrTxPWSend(i8 noundef zeroext %0, i8* noundef %1, i8 noundef zeroext %2) #19, !dbg !2205
  %5 = icmp ne i8 %4, 0, !dbg !2205
  %6 = sext i1 %5 to i32, !dbg !2204
  ret i32 %6, !dbg !2207
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @ir_tx_interrupt_clear() local_unnamed_addr #4 !dbg !2208 {
  tail call void @halIrTxClearInterrupt() #19, !dbg !2212
  ret i32 0, !dbg !2213
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #4 !dbg !2214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2218, metadata !DIExpression()), !dbg !2219
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2220
  tail call void asm sideeffect "dsb", ""() #20, !dbg !2221, !srcloc !2222
  tail call void asm sideeffect "isb", ""() #20, !dbg !2223, !srcloc !2224
  ret void, !dbg !2225
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #2 !dbg !2226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2230, metadata !DIExpression()), !dbg !2231
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2232
  ret void, !dbg !2233
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #4 section ".ramTEXT" !dbg !2234 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #20, !dbg !2239, !srcloc !2246
  call void @llvm.dbg.value(metadata i32 %1, metadata !2243, metadata !DIExpression()) #20, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %1, metadata !2238, metadata !DIExpression()), !dbg !2248
  tail call void asm sideeffect "cpsid i", "~{memory}"() #20, !dbg !2249, !srcloc !2252
  ret i32 %1, !dbg !2253
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #4 section ".ramTEXT" !dbg !2254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()) #20, !dbg !2261
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #20, !dbg !2264, !srcloc !2265
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !2267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 %1, metadata !2272, metadata !DIExpression()), !dbg !2274
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
  ], !dbg !2275

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2274
  %4 = trunc i32 %1 to i8, !dbg !2276
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #19, !dbg !2277
  br label %5, !dbg !2278

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2274
  ret i32 %6, !dbg !2279
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #4 !dbg !2280 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()), !dbg !2284
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %1, metadata !2283, metadata !DIExpression()), !dbg !2284
  %2 = lshr i32 %1, 13, !dbg !2286
  %3 = and i32 %2, 7, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %3, metadata !2283, metadata !DIExpression()), !dbg !2284
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %4, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %4, metadata !2282, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2284
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2289
  %6 = load i32, i32* %5, align 4, !dbg !2289
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2289
  %8 = load i32, i32* %7, align 4, !dbg !2289
  %9 = and i32 %4, -2048, !dbg !2290
  call void @llvm.dbg.value(metadata i32 %9, metadata !2282, metadata !DIExpression()), !dbg !2284
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2291
  %10 = or i32 %9, %8, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %10, metadata !2282, metadata !DIExpression()), !dbg !2284
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2293
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2294
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2295
  tail call void @SystemCoreClockUpdate() #19, !dbg !2296
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2297
  %13 = udiv i32 %12, 1000, !dbg !2298
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #19, !dbg !2299
  ret void, !dbg !2300
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2301 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2302
  ret i32 %1, !dbg !2303
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2304 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2305
  ret i32 %1, !dbg !2306
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2307 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2311
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2310, metadata !DIExpression()), !dbg !2313
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2314
  store volatile i32 %3, i32* %1, align 4, !dbg !2315
  %4 = load volatile i32, i32* %1, align 4, !dbg !2316
  %5 = lshr i32 %4, 28, !dbg !2317
  %6 = and i32 %5, 3, !dbg !2318
  store volatile i32 %6, i32* %1, align 4, !dbg !2319
  %7 = load volatile i32, i32* %1, align 4, !dbg !2320
  %8 = icmp eq i32 %7, 0, !dbg !2322
  br i1 %8, label %9, label %22, !dbg !2323

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2324
  store volatile i32 %10, i32* %1, align 4, !dbg !2326
  %11 = load volatile i32, i32* %1, align 4, !dbg !2327
  %12 = and i32 %11, -16777217, !dbg !2328
  store volatile i32 %12, i32* %1, align 4, !dbg !2329
  %13 = load volatile i32, i32* %1, align 4, !dbg !2330
  %14 = or i32 %13, 536870912, !dbg !2331
  store volatile i32 %14, i32* %1, align 4, !dbg !2332
  %15 = load volatile i32, i32* %1, align 4, !dbg !2333
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #18, !dbg !2334
  br label %16, !dbg !2335

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2336
  store volatile i32 %17, i32* %1, align 4, !dbg !2338
  %18 = load volatile i32, i32* %1, align 4, !dbg !2339
  %19 = and i32 %18, 134217728, !dbg !2340
  store volatile i32 %19, i32* %1, align 4, !dbg !2341
  %20 = load volatile i32, i32* %1, align 4, !dbg !2342
  %21 = icmp eq i32 %20, 0, !dbg !2343
  br i1 %21, label %16, label %22, !dbg !2344, !llvm.loop !2345

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2347
  ret void, !dbg !2347
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #3 !dbg !2348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2355, metadata !DIExpression()), !dbg !2356
  %2 = bitcast i8* %0 to i32*, !dbg !2357
  %3 = load volatile i32, i32* %2, align 4, !dbg !2358
  ret i32 %3, !dbg !2359
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #2 !dbg !2360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2365, metadata !DIExpression()), !dbg !2366
  %3 = bitcast i8* %0 to i32*, !dbg !2367
  store volatile i32 %1, i32* %3, align 4, !dbg !2368
  ret void, !dbg !2369
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2370 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2374, metadata !DIExpression()), !dbg !2377
  %3 = bitcast i32* %2 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2378
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2375, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2376, metadata !DIExpression()), !dbg !2377
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2380
  store volatile i32 %4, i32* %2, align 4, !dbg !2381
  %5 = load volatile i32, i32* %2, align 4, !dbg !2382
  %6 = lshr i32 %5, 28, !dbg !2383
  %7 = and i32 %6, 3, !dbg !2384
  store volatile i32 %7, i32* %2, align 4, !dbg !2385
  %8 = load volatile i32, i32* %2, align 4, !dbg !2386
  %9 = icmp eq i32 %8, 3, !dbg !2388
  br i1 %9, label %38, label %10, !dbg !2389

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2390
  store volatile i32 %11, i32* %2, align 4, !dbg !2392
  %12 = load volatile i32, i32* %2, align 4, !dbg !2393
  %13 = and i32 %12, -262145, !dbg !2394
  store volatile i32 %13, i32* %2, align 4, !dbg !2395
  %14 = load volatile i32, i32* %2, align 4, !dbg !2396
  %15 = and i32 %14, -16777217, !dbg !2397
  store volatile i32 %15, i32* %2, align 4, !dbg !2398
  %16 = load volatile i32, i32* %2, align 4, !dbg !2399
  store volatile i32 %16, i32* %2, align 4, !dbg !2400
  %17 = load volatile i32, i32* %2, align 4, !dbg !2401
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #18, !dbg !2402
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2403
  store volatile i32 %18, i32* %2, align 4, !dbg !2404
  %19 = load volatile i32, i32* %2, align 4, !dbg !2405
  %20 = and i32 %19, -805306369, !dbg !2406
  store volatile i32 %20, i32* %2, align 4, !dbg !2407
  %21 = load volatile i32, i32* %2, align 4, !dbg !2408
  %22 = and i32 %21, -16777217, !dbg !2409
  store volatile i32 %22, i32* %2, align 4, !dbg !2410
  %23 = load volatile i32, i32* %2, align 4, !dbg !2411
  %24 = or i32 %23, 805306368, !dbg !2412
  store volatile i32 %24, i32* %2, align 4, !dbg !2413
  %25 = load volatile i32, i32* %2, align 4, !dbg !2414
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #18, !dbg !2415
  br label %26, !dbg !2416

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2417
  store volatile i32 %27, i32* %2, align 4, !dbg !2419
  %28 = load volatile i32, i32* %2, align 4, !dbg !2420
  %29 = and i32 %28, 67108864, !dbg !2421
  store volatile i32 %29, i32* %2, align 4, !dbg !2422
  %30 = load volatile i32, i32* %2, align 4, !dbg !2423
  %31 = icmp eq i32 %30, 0, !dbg !2424
  br i1 %31, label %26, label %32, !dbg !2425, !llvm.loop !2426

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2428
  store volatile i32 %33, i32* %2, align 4, !dbg !2429
  %34 = load volatile i32, i32* %2, align 4, !dbg !2430
  %35 = and i32 %34, -262145, !dbg !2431
  store volatile i32 %35, i32* %2, align 4, !dbg !2432
  %36 = load volatile i32, i32* %2, align 4, !dbg !2433
  %37 = and i32 %36, -16777217, !dbg !2434
  store volatile i32 %37, i32* %2, align 4, !dbg !2435
  br label %38, !dbg !2436

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2437
  store volatile i32 %39, i32* %2, align 4, !dbg !2438
  %40 = icmp eq i8 %0, 0, !dbg !2439
  %41 = load volatile i32, i32* %2, align 4, !dbg !2441
  br i1 %40, label %44, label %42, !dbg !2442

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2443
  store volatile i32 %43, i32* %2, align 4, !dbg !2445
  br label %45, !dbg !2446

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2447
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2449
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #18, !dbg !2450
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2451
  ret void, !dbg !2451
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2452 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2456
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2456
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2455, metadata !DIExpression()), !dbg !2458
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2459
  store volatile i32 %3, i32* %1, align 4, !dbg !2460
  %4 = load volatile i32, i32* %1, align 4, !dbg !2461
  %5 = and i32 %4, -805306369, !dbg !2462
  store volatile i32 %5, i32* %1, align 4, !dbg !2463
  %6 = load volatile i32, i32* %1, align 4, !dbg !2464
  %7 = and i32 %6, -16777217, !dbg !2465
  store volatile i32 %7, i32* %1, align 4, !dbg !2466
  %8 = load volatile i32, i32* %1, align 4, !dbg !2467
  store volatile i32 %8, i32* %1, align 4, !dbg !2468
  %9 = load volatile i32, i32* %1, align 4, !dbg !2469
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #18, !dbg !2470
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #18, !dbg !2471
  store volatile i32 %10, i32* %1, align 4, !dbg !2472
  %11 = load volatile i32, i32* %1, align 4, !dbg !2473
  %12 = and i32 %11, -262145, !dbg !2474
  store volatile i32 %12, i32* %1, align 4, !dbg !2475
  %13 = load volatile i32, i32* %1, align 4, !dbg !2476
  %14 = and i32 %13, -16777217, !dbg !2477
  store volatile i32 %14, i32* %1, align 4, !dbg !2478
  %15 = load volatile i32, i32* %1, align 4, !dbg !2479
  store volatile i32 %15, i32* %1, align 4, !dbg !2480
  %16 = load volatile i32, i32* %1, align 4, !dbg !2481
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #18, !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2483
  ret void, !dbg !2483
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #4 !dbg !2484 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2488
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2488
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2486, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2487, metadata !DIExpression()), !dbg !2490
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2491
  store volatile i32 %3, i32* %1, align 4, !dbg !2492
  %4 = load volatile i32, i32* %1, align 4, !dbg !2493
  %5 = and i32 %4, -8, !dbg !2494
  store volatile i32 %5, i32* %1, align 4, !dbg !2495
  %6 = load volatile i32, i32* %1, align 4, !dbg !2496
  store volatile i32 %6, i32* %1, align 4, !dbg !2497
  %7 = load volatile i32, i32* %1, align 4, !dbg !2498
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #18, !dbg !2499
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2500
  store volatile i32 %8, i32* %1, align 4, !dbg !2501
  %9 = load volatile i32, i32* %1, align 4, !dbg !2502
  %10 = and i32 %9, -49153, !dbg !2503
  store volatile i32 %10, i32* %1, align 4, !dbg !2504
  %11 = load volatile i32, i32* %1, align 4, !dbg !2505
  store volatile i32 %11, i32* %1, align 4, !dbg !2506
  %12 = load volatile i32, i32* %1, align 4, !dbg !2507
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #18, !dbg !2508
  br label %13, !dbg !2509

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2510
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2511
  %16 = icmp eq i32 %14, %15, !dbg !2512
  br i1 %16, label %17, label %13, !dbg !2509, !llvm.loop !2513

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #18, !dbg !2515
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2516
  tail call void @SystemCoreClockUpdate() #19, !dbg !2517
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2518
  %20 = udiv i32 %19, 1000, !dbg !2519
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #19, !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2521
  ret void, !dbg !2521
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #4 !dbg !2522 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2526
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2525, metadata !DIExpression()), !dbg !2528
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #18, !dbg !2529
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2530
  store volatile i32 %3, i32* %1, align 4, !dbg !2531
  %4 = load volatile i32, i32* %1, align 4, !dbg !2532
  %5 = and i32 %4, -49153, !dbg !2533
  store volatile i32 %5, i32* %1, align 4, !dbg !2534
  %6 = load volatile i32, i32* %1, align 4, !dbg !2535
  %7 = or i32 %6, 16384, !dbg !2536
  store volatile i32 %7, i32* %1, align 4, !dbg !2537
  %8 = load volatile i32, i32* %1, align 4, !dbg !2538
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #18, !dbg !2539
  br label %9, !dbg !2540

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2541
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2542
  %12 = icmp eq i32 %10, %11, !dbg !2543
  br i1 %12, label %13, label %9, !dbg !2540, !llvm.loop !2544

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2546
  store volatile i32 %14, i32* %1, align 4, !dbg !2547
  %15 = load volatile i32, i32* %1, align 4, !dbg !2548
  %16 = and i32 %15, -1009, !dbg !2549
  store volatile i32 %16, i32* %1, align 4, !dbg !2550
  %17 = load volatile i32, i32* %1, align 4, !dbg !2551
  %18 = or i32 %17, 128, !dbg !2552
  store volatile i32 %18, i32* %1, align 4, !dbg !2553
  %19 = load volatile i32, i32* %1, align 4, !dbg !2554
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #18, !dbg !2555
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2556
  store volatile i32 %20, i32* %1, align 4, !dbg !2557
  %21 = load volatile i32, i32* %1, align 4, !dbg !2558
  %22 = and i32 %21, -8, !dbg !2559
  store volatile i32 %22, i32* %1, align 4, !dbg !2560
  %23 = load volatile i32, i32* %1, align 4, !dbg !2561
  %24 = or i32 %23, 4, !dbg !2562
  store volatile i32 %24, i32* %1, align 4, !dbg !2563
  %25 = load volatile i32, i32* %1, align 4, !dbg !2564
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #18, !dbg !2565
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2566
  tail call void @SystemCoreClockUpdate() #19, !dbg !2567
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2568
  %27 = udiv i32 %26, 1000, !dbg !2569
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #19, !dbg !2570
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2571
  ret void, !dbg !2571
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #4 !dbg !2572 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2576
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2575, metadata !DIExpression()), !dbg !2578
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #18, !dbg !2579
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2580
  store volatile i32 %3, i32* %1, align 4, !dbg !2581
  %4 = load volatile i32, i32* %1, align 4, !dbg !2582
  %5 = and i32 %4, -49153, !dbg !2583
  store volatile i32 %5, i32* %1, align 4, !dbg !2584
  %6 = load volatile i32, i32* %1, align 4, !dbg !2585
  %7 = or i32 %6, 32768, !dbg !2586
  store volatile i32 %7, i32* %1, align 4, !dbg !2587
  %8 = load volatile i32, i32* %1, align 4, !dbg !2588
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #18, !dbg !2589
  br label %9, !dbg !2590

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2591
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2592
  %12 = icmp eq i32 %10, %11, !dbg !2593
  br i1 %12, label %13, label %9, !dbg !2590, !llvm.loop !2594

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2596
  store volatile i32 %14, i32* %1, align 4, !dbg !2597
  %15 = load volatile i32, i32* %1, align 4, !dbg !2598
  %16 = and i32 %15, -1009, !dbg !2599
  store volatile i32 %16, i32* %1, align 4, !dbg !2600
  %17 = load volatile i32, i32* %1, align 4, !dbg !2601
  %18 = or i32 %17, 32, !dbg !2602
  store volatile i32 %18, i32* %1, align 4, !dbg !2603
  %19 = load volatile i32, i32* %1, align 4, !dbg !2604
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #18, !dbg !2605
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2606
  store volatile i32 %20, i32* %1, align 4, !dbg !2607
  %21 = load volatile i32, i32* %1, align 4, !dbg !2608
  %22 = and i32 %21, -8, !dbg !2609
  store volatile i32 %22, i32* %1, align 4, !dbg !2610
  %23 = load volatile i32, i32* %1, align 4, !dbg !2611
  %24 = or i32 %23, 4, !dbg !2612
  store volatile i32 %24, i32* %1, align 4, !dbg !2613
  %25 = load volatile i32, i32* %1, align 4, !dbg !2614
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #18, !dbg !2615
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2616
  tail call void @SystemCoreClockUpdate() #19, !dbg !2617
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2618
  %27 = udiv i32 %26, 1000, !dbg !2619
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #19, !dbg !2620
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2621
  ret void, !dbg !2621
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #4 !dbg !2622 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2626
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2625, metadata !DIExpression()), !dbg !2628
  tail call void @cmnPLL1ON() #18, !dbg !2629
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2630
  store volatile i32 %3, i32* %1, align 4, !dbg !2631
  %4 = load volatile i32, i32* %1, align 4, !dbg !2632
  %5 = and i32 %4, -49153, !dbg !2633
  store volatile i32 %5, i32* %1, align 4, !dbg !2634
  %6 = load volatile i32, i32* %1, align 4, !dbg !2635
  store volatile i32 %6, i32* %1, align 4, !dbg !2636
  %7 = load volatile i32, i32* %1, align 4, !dbg !2637
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #18, !dbg !2638
  br label %8, !dbg !2639

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2640
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2641
  %11 = icmp eq i32 %9, %10, !dbg !2642
  br i1 %11, label %12, label %8, !dbg !2639, !llvm.loop !2643

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #18, !dbg !2645
  store volatile i32 %13, i32* %1, align 4, !dbg !2646
  %14 = load volatile i32, i32* %1, align 4, !dbg !2647
  %15 = and i32 %14, -8, !dbg !2648
  store volatile i32 %15, i32* %1, align 4, !dbg !2649
  %16 = load volatile i32, i32* %1, align 4, !dbg !2650
  %17 = or i32 %16, 2, !dbg !2651
  store volatile i32 %17, i32* %1, align 4, !dbg !2652
  %18 = load volatile i32, i32* %1, align 4, !dbg !2653
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #18, !dbg !2654
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2655
  tail call void @SystemCoreClockUpdate() #19, !dbg !2656
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2657
  %20 = udiv i32 %19, 1000, !dbg !2658
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #19, !dbg !2659
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2660
  ret void, !dbg !2660
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !2661 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2665
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2665
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2664, metadata !DIExpression()), !dbg !2667
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #18, !dbg !2668
  store volatile i32 %3, i32* %1, align 4, !dbg !2669
  %4 = load volatile i32, i32* %1, align 4, !dbg !2670
  %5 = and i32 %4, -24577, !dbg !2671
  store volatile i32 %5, i32* %1, align 4, !dbg !2672
  %6 = load volatile i32, i32* %1, align 4, !dbg !2673
  store volatile i32 %6, i32* %1, align 4, !dbg !2674
  %7 = load volatile i32, i32* %1, align 4, !dbg !2675
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #18, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2677
  ret void, !dbg !2677
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #3 !dbg !2678 {
  %1 = tail call i32 @getc_nowait() #18, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()), !dbg !2684
  ret i32 %1, !dbg !2685
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #3 !dbg !2686 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2689
  %2 = and i32 %1, 1, !dbg !2691
  %3 = icmp eq i32 %2, 0, !dbg !2691
  br i1 %3, label %7, label %4, !dbg !2692

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2693
  %6 = and i32 %5, 255, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %5, metadata !2688, metadata !DIExpression()), !dbg !2696
  br label %7, !dbg !2697

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2698
  ret i32 %8, !dbg !2699
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 !dbg !2700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8 %1, metadata !2706, metadata !DIExpression()), !dbg !2708
  %3 = icmp eq i32 %0, 0, !dbg !2709
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %4, metadata !2707, metadata !DIExpression()), !dbg !2708
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2710

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2711
  %9 = and i32 %8, 32, !dbg !2712
  %10 = icmp eq i32 %9, 0, !dbg !2713
  br i1 %10, label %7, label %11, !dbg !2710, !llvm.loop !2714

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2716
  %13 = inttoptr i32 %4 to i32*, !dbg !2717
  store volatile i32 %12, i32* %13, align 65536, !dbg !2718
  ret void, !dbg !2719
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #2 !dbg !2720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2727
  %2 = icmp eq i32 %0, 0, !dbg !2728
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2728
  call void @llvm.dbg.value(metadata i32 %3, metadata !2725, metadata !DIExpression()), !dbg !2727
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2729

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2730
  %8 = and i32 %7, 1, !dbg !2731
  %9 = icmp eq i32 %8, 0, !dbg !2732
  br i1 %9, label %6, label %10, !dbg !2729, !llvm.loop !2733

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2735
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2735
  %13 = trunc i32 %12 to i8, !dbg !2735
  call void @llvm.dbg.value(metadata i8 %13, metadata !2726, metadata !DIExpression()), !dbg !2727
  ret i8 %13, !dbg !2736
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !2737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2741, metadata !DIExpression()), !dbg !2744
  %2 = icmp eq i32 %0, 0, !dbg !2745
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2745
  call void @llvm.dbg.value(metadata i32 %3, metadata !2742, metadata !DIExpression()), !dbg !2744
  %4 = or i32 %3, 20, !dbg !2746
  %5 = inttoptr i32 %4 to i32*, !dbg !2746
  %6 = load volatile i32, i32* %5, align 4, !dbg !2746
  %7 = and i32 %6, 1, !dbg !2748
  %8 = icmp eq i32 %7, 0, !dbg !2748
  br i1 %8, label %13, label %9, !dbg !2749

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2750
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2750
  %12 = and i32 %11, 255, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %11, metadata !2743, metadata !DIExpression()), !dbg !2744
  br label %13, !dbg !2753

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2754
  ret i32 %14, !dbg !2755
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #4 !dbg !2756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()), !dbg !2761
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #18, !dbg !2762
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2763

2:                                                ; preds = %1
  br label %3, !dbg !2764

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2768
  %6 = or i32 %5, 1, !dbg !2768
  store volatile i32 %6, i32* %4, align 4, !dbg !2768
  br label %7, !dbg !2769

7:                                                ; preds = %3, %1
  ret void, !dbg !2769
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #4 !dbg !2770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 %1, metadata !2775, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i16 %2, metadata !2776, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i16 %3, metadata !2777, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i16 %4, metadata !2778, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2780, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2787, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2789, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2791
  %6 = tail call i32 @top_xtal_freq_get() #19, !dbg !2794
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2795
  %7 = icmp eq i32 %0, 1, !dbg !2796
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %8, metadata !2780, metadata !DIExpression()), !dbg !2791
  %9 = or i32 %8, 36, !dbg !2797
  %10 = inttoptr i32 %9 to i32*, !dbg !2797
  store volatile i32 3, i32* %10, align 4, !dbg !2798
  %11 = or i32 %8, 12, !dbg !2799
  %12 = inttoptr i32 %11 to i32*, !dbg !2799
  %13 = load volatile i32, i32* %12, align 4, !dbg !2799
  call void @llvm.dbg.value(metadata i32 %13, metadata !2782, metadata !DIExpression()), !dbg !2791
  %14 = or i32 %13, 128, !dbg !2800
  store volatile i32 %14, i32* %12, align 4, !dbg !2801
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2802
  %16 = udiv i32 %15, %1, !dbg !2803
  call void @llvm.dbg.value(metadata i32 %16, metadata !2781, metadata !DIExpression()), !dbg !2791
  %17 = lshr i32 %16, 8, !dbg !2804
  %18 = add nuw nsw i32 %17, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %18, metadata !2783, metadata !DIExpression()), !dbg !2791
  %19 = udiv i32 %16, %18, !dbg !2806
  %20 = add i32 %19, -1, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %20, metadata !2784, metadata !DIExpression()), !dbg !2791
  %21 = icmp eq i32 %20, 3, !dbg !2809
  %22 = lshr i32 %20, 1, !dbg !2811
  %23 = add nsw i32 %22, -1, !dbg !2811
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %24, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 undef, metadata !2790, metadata !DIExpression()), !dbg !2791
  %25 = mul i32 %15, 10, !dbg !2812
  %26 = udiv i32 %25, %1, !dbg !2813
  %27 = udiv i32 %26, %16, !dbg !2814
  %28 = mul i32 %19, -10, !dbg !2815
  %29 = add i32 %27, %28, !dbg !2816
  %30 = urem i32 %29, 10, !dbg !2817
  call void @llvm.dbg.value(metadata i32 %30, metadata !2786, metadata !DIExpression()), !dbg !2791
  %31 = and i32 %18, 255, !dbg !2818
  %32 = inttoptr i32 %8 to i32*, !dbg !2819
  store volatile i32 %31, i32* %32, align 65536, !dbg !2820
  %33 = lshr i32 %18, 8, !dbg !2821
  %34 = and i32 %33, 255, !dbg !2822
  %35 = or i32 %8, 4, !dbg !2823
  %36 = inttoptr i32 %35 to i32*, !dbg !2823
  store volatile i32 %34, i32* %36, align 4, !dbg !2824
  %37 = or i32 %8, 40, !dbg !2825
  %38 = inttoptr i32 %37 to i32*, !dbg !2825
  store volatile i32 %20, i32* %38, align 8, !dbg !2826
  %39 = or i32 %8, 44, !dbg !2827
  %40 = inttoptr i32 %39 to i32*, !dbg !2827
  store volatile i32 %24, i32* %40, align 4, !dbg !2828
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2829
  %42 = load i16, i16* %41, align 2, !dbg !2829
  %43 = zext i16 %42 to i32, !dbg !2829
  %44 = or i32 %8, 88, !dbg !2830
  %45 = inttoptr i32 %44 to i32*, !dbg !2830
  store volatile i32 %43, i32* %45, align 8, !dbg !2831
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2832
  %47 = load i16, i16* %46, align 2, !dbg !2832
  %48 = zext i16 %47 to i32, !dbg !2832
  %49 = or i32 %8, 84, !dbg !2833
  %50 = inttoptr i32 %49 to i32*, !dbg !2833
  store volatile i32 %48, i32* %50, align 4, !dbg !2834
  store volatile i32 %13, i32* %12, align 4, !dbg !2835
  %51 = or i32 %8, 8, !dbg !2836
  %52 = inttoptr i32 %51 to i32*, !dbg !2836
  store volatile i32 71, i32* %52, align 8, !dbg !2837
  %53 = inttoptr i32 %11 to i16*, !dbg !2838
  %54 = load volatile i16, i16* %53, align 4, !dbg !2838
  call void @llvm.dbg.value(metadata i16 %54, metadata !2779, metadata !DIExpression()), !dbg !2791
  %55 = and i16 %54, -64, !dbg !2839
  call void @llvm.dbg.value(metadata i16 %54, metadata !2779, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2791
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2779, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2791
  %56 = and i16 %2, -61, !dbg !2840
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2779, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2791
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2779, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2791
  %57 = and i16 %4, -57, !dbg !2841
  call void @llvm.dbg.value(metadata i16 undef, metadata !2779, metadata !DIExpression()), !dbg !2791
  %58 = or i16 %56, %3, !dbg !2840
  %59 = or i16 %58, %57, !dbg !2841
  %60 = or i16 %59, %55, !dbg !2842
  call void @llvm.dbg.value(metadata i16 %60, metadata !2779, metadata !DIExpression()), !dbg !2791
  store volatile i16 %60, i16* %53, align 4, !dbg !2843
  ret void, !dbg !2844
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #3 !dbg !2845 {
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
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !2881 {
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
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 !dbg !2905 {
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
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 !dbg !2936 {
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
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #19, !dbg !2950
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #19, !dbg !2950
  br label %9, !dbg !2951

9:                                                ; preds = %6, %4
  ret void, !dbg !2951
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 !dbg !2952 {
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
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #19, !dbg !2968
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #19, !dbg !2968
  br label %11, !dbg !2969

11:                                               ; preds = %8, %6
  ret void, !dbg !2969
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #4 !dbg !2970 {
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
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #19, !dbg !2982
  br label %6, !dbg !2983

6:                                                ; preds = %4, %2
  ret void, !dbg !2983
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #4 !dbg !2984 {
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
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #19, !dbg !2994
  br label %6, !dbg !2995

6:                                                ; preds = %4, %2
  ret void, !dbg !2995
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #2 !dbg !2996 {
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
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 !dbg !3017 {
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
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #2 !dbg !3053 {
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
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #2 !dbg !3068 {
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
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #2 !dbg !3123 {
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
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #4 !dbg !3136 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %1, metadata !3141, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()), !dbg !3153
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3154
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3154
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3143, metadata !DIExpression()), !dbg !3155
  %7 = bitcast i32* %5 to i8*, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3156
  call void @llvm.dbg.value(metadata i32* %5, metadata !3152, metadata !DIExpression(DW_OP_deref)), !dbg !3153
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !3157
  call void @llvm.va_start(i8* nonnull %6), !dbg !3158
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3159
  %10 = load i32, i32* %9, align 4, !dbg !3159
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3159
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !3159
  call void @llvm.va_end(i8* nonnull %6), !dbg !3160
  %13 = load i32, i32* %5, align 4, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %13, metadata !3152, metadata !DIExpression()), !dbg !3153
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !3162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3163
  ret void, !dbg !3163
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #4 !dbg !3164 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3166, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %1, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()), !dbg !3171
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3172
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3169, metadata !DIExpression()), !dbg !3173
  %7 = bitcast i32* %5 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3174
  call void @llvm.dbg.value(metadata i32* %5, metadata !3170, metadata !DIExpression(DW_OP_deref)), !dbg !3171
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !3175
  call void @llvm.va_start(i8* nonnull %6), !dbg !3176
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3177
  %10 = load i32, i32* %9, align 4, !dbg !3177
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3177
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !3177
  call void @llvm.va_end(i8* nonnull %6), !dbg !3178
  %13 = load i32, i32* %5, align 4, !dbg !3179
  call void @llvm.dbg.value(metadata i32 %13, metadata !3170, metadata !DIExpression()), !dbg !3171
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3181
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3181
  ret void, !dbg !3181
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #4 !dbg !3182 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %1, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i8* %2, metadata !3186, metadata !DIExpression()), !dbg !3189
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3190
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3190
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3187, metadata !DIExpression()), !dbg !3191
  %7 = bitcast i32* %5 to i8*, !dbg !3192
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3192
  call void @llvm.dbg.value(metadata i32* %5, metadata !3188, metadata !DIExpression(DW_OP_deref)), !dbg !3189
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !3193
  call void @llvm.va_start(i8* nonnull %6), !dbg !3194
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3195
  %10 = load i32, i32* %9, align 4, !dbg !3195
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3195
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !3195
  call void @llvm.va_end(i8* nonnull %6), !dbg !3196
  %13 = load i32, i32* %5, align 4, !dbg !3197
  call void @llvm.dbg.value(metadata i32 %13, metadata !3188, metadata !DIExpression()), !dbg !3189
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !3198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3199
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3199
  ret void, !dbg !3199
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #4 !dbg !3200 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3202, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 %1, metadata !3203, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8* %2, metadata !3204, metadata !DIExpression()), !dbg !3207
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3208
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3208
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3205, metadata !DIExpression()), !dbg !3209
  %7 = bitcast i32* %5 to i8*, !dbg !3210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3210
  call void @llvm.dbg.value(metadata i32* %5, metadata !3206, metadata !DIExpression(DW_OP_deref)), !dbg !3207
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !3211
  call void @llvm.va_start(i8* nonnull %6), !dbg !3212
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3213
  %10 = load i32, i32* %9, align 4, !dbg !3213
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3213
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !3213
  call void @llvm.va_end(i8* nonnull %6), !dbg !3214
  %13 = load i32, i32* %5, align 4, !dbg !3215
  call void @llvm.dbg.value(metadata i32 %13, metadata !3206, metadata !DIExpression()), !dbg !3207
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !3216
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !3217
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3217
  ret void, !dbg !3217
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #0 !dbg !3218 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %1, metadata !3225, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %3, metadata !3227, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %4, metadata !3228, metadata !DIExpression()), !dbg !3229
  ret void, !dbg !3230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #4 !dbg !3231 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %1, metadata !3238, metadata !DIExpression()), !dbg !3240
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3241, !range !3243
  %3 = icmp eq i8 %2, 0, !dbg !3241
  br i1 %3, label %5, label %4, !dbg !3244

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #19, !dbg !3245
  br label %15, !dbg !3247

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3248
  tail call void @restore_interrupt_mask(i32 noundef %1) #19, !dbg !3250
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #18, !dbg !3251
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
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #4 section ".ramTEXT" !dbg !3273 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3276
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
  tail call void asm sideeffect "isb", ""() #20, !dbg !3282, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %1) #19, !dbg !3287
  ret i32 0, !dbg !3288
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #4 !dbg !3289 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #18, !dbg !3292
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
define dso_local i32 @hal_cache_enable() local_unnamed_addr #2 !dbg !3316 {
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
define dso_local i32 @hal_cache_disable() local_unnamed_addr #4 !dbg !3327 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3330
  call void @llvm.dbg.value(metadata i32 %1, metadata !3329, metadata !DIExpression()), !dbg !3331
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3332
  %3 = and i32 %2, 1, !dbg !3334
  %4 = icmp eq i32 %3, 0, !dbg !3334
  br i1 %4, label %7, label %5, !dbg !3335

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #18, !dbg !3336
  br label %7, !dbg !3338

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3339
  %9 = and i32 %8, -2, !dbg !3339
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3339
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3340
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3341
  tail call void @restore_interrupt_mask(i32 noundef %1) #19, !dbg !3342
  ret i32 0, !dbg !3343
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #2 !dbg !3344 {
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
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #2 !dbg !3364 {
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
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #2 !dbg !3382 {
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
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #4 !dbg !3405 {
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
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3429
  unreachable, !dbg !3429

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3431
  %14 = load i32, i32* %13, align 4, !dbg !3431
  %15 = and i32 %14, 4095, !dbg !3433
  %16 = icmp eq i32 %15, 0, !dbg !3433
  br i1 %16, label %18, label %17, !dbg !3434

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3435
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
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #4 section ".ramTEXT" !dbg !3453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  %2 = and i32 %0, 31, !dbg !3460
  %3 = icmp eq i32 %2, 0, !dbg !3460
  br i1 %3, label %4, label %9, !dbg !3462

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %5, metadata !3458, metadata !DIExpression()), !dbg !3459
  %6 = and i32 %0, -32, !dbg !3464
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3465
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3466
  %8 = or i32 %7, 5, !dbg !3466
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3466
  tail call void asm sideeffect "isb", ""() #20, !dbg !3467, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %5) #19, !dbg !3469
  br label %9, !dbg !3470

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3459
  ret i32 %10, !dbg !3471
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 section ".ramTEXT" !dbg !3472 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3476, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %1, metadata !3477, metadata !DIExpression()), !dbg !3480
  %3 = add i32 %1, %0, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %3, metadata !3479, metadata !DIExpression()), !dbg !3480
  %4 = or i32 %1, %0, !dbg !3482
  %5 = and i32 %4, 31, !dbg !3482
  %6 = icmp eq i32 %5, 0, !dbg !3482
  br i1 %6, label %7, label %16, !dbg !3482

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %8, metadata !3478, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %0, metadata !3476, metadata !DIExpression()), !dbg !3480
  %9 = icmp ugt i32 %3, %0, !dbg !3485
  br i1 %9, label %10, label %15, !dbg !3486

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3476, metadata !DIExpression()), !dbg !3480
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #18, !dbg !3487
  %13 = add i32 %11, 32, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %13, metadata !3476, metadata !DIExpression()), !dbg !3480
  %14 = icmp ult i32 %13, %3, !dbg !3485
  br i1 %14, label %10, label %15, !dbg !3486, !llvm.loop !3490

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #20, !dbg !3492, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !3494
  br label %16, !dbg !3495

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3480
  ret i32 %17, !dbg !3496
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #4 section ".ramTEXT" !dbg !3497 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3499, metadata !DIExpression()), !dbg !3501
  %2 = and i32 %0, 31, !dbg !3502
  %3 = icmp eq i32 %2, 0, !dbg !3502
  br i1 %3, label %4, label %9, !dbg !3504

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3505
  call void @llvm.dbg.value(metadata i32 %5, metadata !3500, metadata !DIExpression()), !dbg !3501
  %6 = and i32 %0, -32, !dbg !3506
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3507
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3508
  %8 = or i32 %7, 21, !dbg !3508
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3508
  tail call void asm sideeffect "isb", ""() #20, !dbg !3509, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %5) #19, !dbg !3511
  br label %9, !dbg !3512

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3501
  ret i32 %10, !dbg !3513
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 section ".ramTEXT" !dbg !3514 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3516, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %1, metadata !3517, metadata !DIExpression()), !dbg !3520
  %3 = add i32 %1, %0, !dbg !3521
  call void @llvm.dbg.value(metadata i32 %3, metadata !3519, metadata !DIExpression()), !dbg !3520
  %4 = or i32 %1, %0, !dbg !3522
  %5 = and i32 %4, 31, !dbg !3522
  %6 = icmp eq i32 %5, 0, !dbg !3522
  br i1 %6, label %7, label %16, !dbg !3522

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %8, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i32 %0, metadata !3516, metadata !DIExpression()), !dbg !3520
  %9 = icmp ugt i32 %3, %0, !dbg !3525
  br i1 %9, label %10, label %15, !dbg !3526

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3516, metadata !DIExpression()), !dbg !3520
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #18, !dbg !3527
  %13 = add i32 %11, 32, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %13, metadata !3516, metadata !DIExpression()), !dbg !3520
  %14 = icmp ult i32 %13, %3, !dbg !3525
  br i1 %14, label %10, label %15, !dbg !3526, !llvm.loop !3530

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #20, !dbg !3532, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !3534
  br label %16, !dbg !3535

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3520
  ret i32 %17, !dbg !3536
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #4 section ".ramTEXT" !dbg !3537 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %1, metadata !3539, metadata !DIExpression()), !dbg !3541
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %3 = and i32 %2, -31, !dbg !3542
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  %5 = or i32 %4, 19, !dbg !3543
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  tail call void asm sideeffect "isb", ""() #20, !dbg !3544, !srcloc !3286
  tail call void @restore_interrupt_mask(i32 noundef %1) #19, !dbg !3546
  ret i32 0, !dbg !3547
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #2 !dbg !3548 {
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
define dso_local i32 @hal_nvic_init() local_unnamed_addr #0 !dbg !3582 {
  ret i32 0, !dbg !3586
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3587 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3591, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 -1, metadata !3592, metadata !DIExpression()), !dbg !3593
  %2 = icmp ugt i32 %0, 95, !dbg !3594
  br i1 %2, label %4, label %3, !dbg !3594

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #18, !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3592, metadata !DIExpression()), !dbg !3593
  br label %4, !dbg !3598

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3593
  ret i32 %5, !dbg !3599
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3600 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3604, metadata !DIExpression()), !dbg !3605
  %2 = and i32 %0, 31, !dbg !3606
  %3 = shl nuw i32 1, %2, !dbg !3607
  %4 = lshr i32 %0, 5, !dbg !3608
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3609
  store volatile i32 %3, i32* %5, align 4, !dbg !3610
  ret void, !dbg !3611
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3614, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i32 -1, metadata !3615, metadata !DIExpression()), !dbg !3616
  %2 = icmp ugt i32 %0, 95, !dbg !3617
  br i1 %2, label %4, label %3, !dbg !3617

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #18, !dbg !3619
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()), !dbg !3616
  br label %4, !dbg !3621

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3616
  ret i32 %5, !dbg !3622
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3626
  %2 = and i32 %0, 31, !dbg !3627
  %3 = shl nuw i32 1, %2, !dbg !3628
  %4 = lshr i32 %0, 5, !dbg !3629
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3630
  store volatile i32 %3, i32* %5, align 4, !dbg !3631
  ret void, !dbg !3632
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3637, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 255, metadata !3638, metadata !DIExpression()), !dbg !3639
  %2 = icmp ugt i32 %0, 95, !dbg !3640
  br i1 %2, label %5, label %3, !dbg !3640

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #18, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %4, metadata !3638, metadata !DIExpression()), !dbg !3639
  br label %5, !dbg !3644

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3639
  ret i32 %6, !dbg !3645
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3646 {
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
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 -1, metadata !3660, metadata !DIExpression()), !dbg !3661
  %2 = icmp ugt i32 %0, 95, !dbg !3662
  br i1 %2, label %4, label %3, !dbg !3662

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #18, !dbg !3664
  call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3661
  br label %4, !dbg !3666

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3661
  ret i32 %5, !dbg !3667
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %2 = and i32 %0, 31, !dbg !3672
  %3 = shl nuw i32 1, %2, !dbg !3673
  %4 = lshr i32 %0, 5, !dbg !3674
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3675
  store volatile i32 %3, i32* %5, align 4, !dbg !3676
  ret void, !dbg !3677
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3680, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32 -1, metadata !3681, metadata !DIExpression()), !dbg !3682
  %2 = icmp ugt i32 %0, 95, !dbg !3683
  br i1 %2, label %4, label %3, !dbg !3683

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #18, !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3681, metadata !DIExpression()), !dbg !3682
  br label %4, !dbg !3687

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3682
  ret i32 %5, !dbg !3688
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3692
  %2 = and i32 %0, 31, !dbg !3693
  %3 = shl nuw i32 1, %2, !dbg !3694
  %4 = lshr i32 %0, 5, !dbg !3695
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3696
  store volatile i32 %3, i32* %5, align 4, !dbg !3697
  ret void, !dbg !3698
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 !dbg !3699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %1, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i32 -1, metadata !3705, metadata !DIExpression()), !dbg !3706
  %3 = icmp ugt i32 %0, 95, !dbg !3707
  br i1 %3, label %5, label %4, !dbg !3707

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #18, !dbg !3709
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3706
  br label %5, !dbg !3711

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3706
  ret i32 %6, !dbg !3712
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #2 !dbg !3713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 %1, metadata !3718, metadata !DIExpression()), !dbg !3719
  %3 = trunc i32 %1 to i8, !dbg !3720
  %4 = shl i8 %3, 5, !dbg !3720
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3723
  store volatile i8 %4, i8* %5, align 1, !dbg !3724
  ret void, !dbg !3725
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #3 !dbg !3726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3728, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 68, metadata !3729, metadata !DIExpression()), !dbg !3730
  %2 = icmp ugt i32 %0, 95, !dbg !3731
  br i1 %2, label %5, label %3, !dbg !3731

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #18, !dbg !3733
  call void @llvm.dbg.value(metadata i32 %4, metadata !3729, metadata !DIExpression()), !dbg !3730
  br label %5, !dbg !3735

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3730
  ret i32 %6, !dbg !3736
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #3 !dbg !3737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3740
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3741
  %3 = load volatile i8, i8* %2, align 1, !dbg !3741
  %4 = lshr i8 %3, 5, !dbg !3744
  %5 = zext i8 %4 to i32, !dbg !3744
  ret i32 %5, !dbg !3745
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #0 !dbg !3746 {
  ret void, !dbg !3747
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #4 section ".ramTEXT" !dbg !3748 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3750, metadata !DIExpression()), !dbg !3752
  %1 = tail call fastcc i32 @get_current_irq() #18, !dbg !3753
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
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #19, !dbg !3760
  br label %12, !dbg !3762

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #18, !dbg !3763
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3765
  store i32 %9, i32* %10, align 4, !dbg !3766
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3767
  tail call void %11(i32 noundef %1) #19, !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !3750, metadata !DIExpression()), !dbg !3752
  br label %12, !dbg !3769

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3752
  ret i32 %13, !dbg !3770
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #3 !dbg !3771 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3774
  %2 = and i32 %1, 511, !dbg !3775
  call void @llvm.dbg.value(metadata i32 %2, metadata !3773, metadata !DIExpression()), !dbg !3776
  %3 = add nsw i32 %2, -16, !dbg !3777
  ret i32 %3, !dbg !3778
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #3 !dbg !3779 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3780
  %2 = lshr i32 %1, 22, !dbg !3781
  %3 = and i32 %2, 1, !dbg !3781
  ret i32 %3, !dbg !3782
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #4 !dbg !3783 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3789, metadata !DIExpression()), !dbg !3791
  %3 = icmp ugt i32 %0, 95, !dbg !3792
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3792
  br i1 %5, label %10, label %6, !dbg !3792

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3794
  call void @llvm.dbg.value(metadata i32 %7, metadata !3790, metadata !DIExpression()), !dbg !3791
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #18, !dbg !3795
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3796
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3797
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3798
  store i32 0, i32* %9, align 4, !dbg !3799
  tail call void @restore_interrupt_mask(i32 noundef %7) #19, !dbg !3800
  br label %10, !dbg !3801

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3791
  ret i32 %11, !dbg !3802
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #4 !dbg !3803 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3807, metadata !DIExpression()), !dbg !3808
  %2 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3809
  store i32 %2, i32* %0, align 4, !dbg !3810
  ret i32 0, !dbg !3811
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #4 !dbg !3812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3817
  tail call void @restore_interrupt_mask(i32 noundef %0) #19, !dbg !3818
  ret i32 0, !dbg !3819
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 !dbg !3820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3826, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i8 %1, metadata !3827, metadata !DIExpression()), !dbg !3829
  %3 = icmp ugt i32 %0, 60, !dbg !3830
  br i1 %3, label %11, label %4, !dbg !3832

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3833
  br i1 %5, label %11, label %6, !dbg !3835

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3836
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #19, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %8, metadata !3828, metadata !DIExpression()), !dbg !3829
  %9 = icmp slt i32 %8, 0, !dbg !3838
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3838
  br label %11, !dbg !3839

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3829
  ret i32 %12, !dbg !3840
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #0 !dbg !3841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3847
  ret i32 0, !dbg !3848
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !3849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3851, metadata !DIExpression()), !dbg !3852
  ret i32 0, !dbg !3853
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #4 !dbg !3854 {
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #20, !dbg !3876
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #19, !dbg !3876
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3876
  %10 = load i8, i8* %9, align 1, !dbg !3876
  call void @llvm.dbg.value(metadata i8 %10, metadata !3861, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #20, !dbg !3876
  %11 = zext i8 %10 to i32, !dbg !3877
  store i32 %11, i32* %1, align 4, !dbg !3878
  br label %12, !dbg !3879

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3869
  ret i32 %13, !dbg !3880
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !3881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %1, metadata !3886, metadata !DIExpression()), !dbg !3888
  %3 = icmp ugt i32 %0, 60, !dbg !3889
  br i1 %3, label %9, label %4, !dbg !3891

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3892
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #19, !dbg !3893
  call void @llvm.dbg.value(metadata i32 %6, metadata !3887, metadata !DIExpression()), !dbg !3888
  %7 = icmp slt i32 %6, 0, !dbg !3894
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3894
  br label %9, !dbg !3895

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3888
  ret i32 %10, !dbg !3896
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #4 !dbg !3897 {
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #20, !dbg !3909
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #19, !dbg !3909
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3909
  %10 = load i8, i8* %9, align 2, !dbg !3909
  call void @llvm.dbg.value(metadata i8 %10, metadata !3901, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3902
  call void @llvm.dbg.value(metadata i8 undef, metadata !3901, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3902
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #20, !dbg !3909
  %11 = zext i8 %10 to i32, !dbg !3910
  store i32 %11, i32* %1, align 4, !dbg !3911
  br label %12, !dbg !3912

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3902
  ret i32 %13, !dbg !3913
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !3914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3919, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 %1, metadata !3920, metadata !DIExpression()), !dbg !3922
  %3 = icmp ugt i32 %0, 60, !dbg !3923
  br i1 %3, label %8, label %4, !dbg !3925

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #19, !dbg !3926
  call void @llvm.dbg.value(metadata i32 %5, metadata !3921, metadata !DIExpression()), !dbg !3922
  %6 = icmp slt i32 %5, 0, !dbg !3927
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3927
  br label %8, !dbg !3928

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3922
  ret i32 %9, !dbg !3929
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #4 !dbg !3930 {
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #20, !dbg !3945
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #19, !dbg !3945
  call void @llvm.dbg.value(metadata i32 undef, metadata !3937, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3938
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3945
  %10 = load i8, i8* %9, align 4, !dbg !3945
  call void @llvm.dbg.value(metadata i8 %10, metadata !3937, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3938
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #20, !dbg !3945
  %11 = icmp ne i8 %10, 0, !dbg !3946
  %12 = zext i1 %11 to i32, !dbg !3946
  store i32 %12, i32* %1, align 4, !dbg !3947
  br label %13, !dbg !3948

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3938
  ret i32 %14, !dbg !3949
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #4 !dbg !3950 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3952, metadata !DIExpression()), !dbg !3954
  %3 = icmp ugt i32 %0, 60, !dbg !3955
  br i1 %3, label %11, label %4, !dbg !3957

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20, !dbg !3958
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #19, !dbg !3958
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3958
  %7 = load i8, i8* %6, align 2, !dbg !3958
  call void @llvm.dbg.value(metadata i8 %7, metadata !3953, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3954
  call void @llvm.dbg.value(metadata i8 undef, metadata !3953, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20, !dbg !3958
  %8 = xor i8 %7, 1, !dbg !3959
  %9 = zext i8 %8 to i32, !dbg !3959
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #18, !dbg !3960
  br label %11, !dbg !3961

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3954
  ret i32 %12, !dbg !3962
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #4 !dbg !3963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3967
  %2 = icmp ugt i32 %0, 60, !dbg !3968
  br i1 %2, label %10, label %3, !dbg !3970

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #19, !dbg !3971
  call void @llvm.dbg.value(metadata i32 %4, metadata !3966, metadata !DIExpression()), !dbg !3967
  %5 = icmp slt i32 %4, 0, !dbg !3972
  br i1 %5, label %10, label %6, !dbg !3974

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #19, !dbg !3975
  call void @llvm.dbg.value(metadata i32 %7, metadata !3966, metadata !DIExpression()), !dbg !3967
  %8 = icmp slt i32 %7, 0, !dbg !3976
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3976
  br label %10, !dbg !3977

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3967
  ret i32 %11, !dbg !3978
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #4 !dbg !3979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3983
  %2 = icmp ugt i32 %0, 60, !dbg !3984
  br i1 %2, label %10, label %3, !dbg !3986

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #19, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %4, metadata !3982, metadata !DIExpression()), !dbg !3983
  %5 = icmp slt i32 %4, 0, !dbg !3988
  br i1 %5, label %10, label %6, !dbg !3990

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #19, !dbg !3991
  call void @llvm.dbg.value(metadata i32 %7, metadata !3982, metadata !DIExpression()), !dbg !3983
  %8 = icmp slt i32 %7, 0, !dbg !3992
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3992
  br label %10, !dbg !3993

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3983
  ret i32 %11, !dbg !3994
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #4 !dbg !3995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3997, metadata !DIExpression()), !dbg !3999
  %2 = icmp ugt i32 %0, 60, !dbg !4000
  br i1 %2, label %7, label %3, !dbg !4002

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #19, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %4, metadata !3998, metadata !DIExpression()), !dbg !3999
  %5 = icmp slt i32 %4, 0, !dbg !4004
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4004
  br label %7, !dbg !4005

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3999
  ret i32 %8, !dbg !4006
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !4007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4011, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i32 %1, metadata !4012, metadata !DIExpression()), !dbg !4014
  %3 = icmp ugt i32 %0, 60, !dbg !4015
  br i1 %3, label %9, label %4, !dbg !4017

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4018
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #19, !dbg !4019
  call void @llvm.dbg.value(metadata i32 %6, metadata !4013, metadata !DIExpression()), !dbg !4014
  %7 = icmp slt i32 %6, 0, !dbg !4020
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4020
  br label %9, !dbg !4021

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4014
  ret i32 %10, !dbg !4022
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !4023 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i32* %1, metadata !4029, metadata !DIExpression()), !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #20, !dbg !4033
  %4 = icmp ugt i32 %0, 60, !dbg !4034
  br i1 %4, label %11, label %5, !dbg !4036

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4031, metadata !DIExpression(DW_OP_deref)), !dbg !4032
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #19, !dbg !4037
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
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #20, !dbg !4043
  ret i32 %12, !dbg !4043
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_init() local_unnamed_addr #4 !dbg !4044 {
  %1 = tail call zeroext i8 @halIrTxInit(i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #19, !dbg !4048
  ret i32 0, !dbg !4049
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_deinit() local_unnamed_addr #4 !dbg !4050 {
  %1 = tail call zeroext i8 @halIrTxInit(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19, !dbg !4051
  ret i32 0, !dbg !4052
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_do_send_data(i8 noundef zeroext %0, i32 noundef %1, i8* nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #4 !dbg !4053 {
  %5 = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !4058, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i32 %1, metadata !4059, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i8* %2, metadata !4060, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i32 %3, metadata !4061, metadata !DIExpression()), !dbg !4065
  %6 = tail call i32 @ir_tx_configure(i8 noundef zeroext %0) #19, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %6, metadata !4062, metadata !DIExpression()), !dbg !4065
  %7 = icmp slt i32 %6, 0, !dbg !4067
  br i1 %7, label %8, label %9, !dbg !4069

8:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_irtx_do_send_data, i32 0, i32 0), i32 noundef 145, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #19, !dbg !4070
  br label %25, !dbg !4072

9:                                                ; preds = %4
  %10 = bitcast [3 x i32]* %5 to i8*, !dbg !4073
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %10) #20, !dbg !4073
  call void @llvm.dbg.declare(metadata [3 x i32]* %5, metadata !4063, metadata !DIExpression()), !dbg !4074
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %10, i8 0, i32 12, i1 false), !dbg !4074
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i32 0, i32 0, !dbg !4075
  call fastcc void @hal_irtx_translate_user_data(i32* noundef nonnull %11, i8* noundef %2) #18, !dbg !4076
  %12 = load i32, i32* %11, align 4, !dbg !4077
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i32 0, i32 1, !dbg !4078
  %14 = load i32, i32* %13, align 4, !dbg !4078
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i32 0, i32 2, !dbg !4079
  %16 = load i32, i32* %15, align 4, !dbg !4079
  %17 = trunc i32 %3 to i8, !dbg !4080
  %18 = tail call fastcc zeroext i8 @hal_irtx_translate_repeat_code(i32 noundef %1) #18, !dbg !4081, !range !3243
  %19 = tail call i32 @ir_tx_send(i32 noundef %12, i32 noundef %14, i32 noundef %16, i8 noundef zeroext %17, i8 noundef zeroext %18) #19, !dbg !4082
  call void @llvm.dbg.value(metadata i32 %19, metadata !4062, metadata !DIExpression()), !dbg !4065
  %20 = icmp slt i32 %19, 0, !dbg !4083
  br i1 %20, label %21, label %22, !dbg !4085

21:                                               ; preds = %9
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_irtx_do_send_data, i32 0, i32 0), i32 noundef 165, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)) #19, !dbg !4086
  br label %23, !dbg !4088

22:                                               ; preds = %9
  store i1 true, i1* @irtx_status, align 1, !dbg !4089
  br label %23, !dbg !4090

23:                                               ; preds = %22, %21
  %24 = phi i32 [ -1, %21 ], [ 0, %22 ], !dbg !4065
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %10) #20, !dbg !4091
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi i32 [ -1, %8 ], [ %24, %23 ], !dbg !4065
  ret i32 %26, !dbg !4091
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize willreturn
define internal fastcc void @hal_irtx_translate_user_data(i32* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #12 !dbg !4092 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %1, metadata !4097, metadata !DIExpression()), !dbg !4098
  %3 = tail call fastcc i32 @hal_irtx_build_double_word(i8* noundef %1) #18, !dbg !4099
  store i32 %3, i32* %0, align 4, !dbg !4100
  %4 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !4101
  %5 = tail call fastcc i32 @hal_irtx_build_double_word(i8* noundef nonnull %4) #18, !dbg !4102
  %6 = getelementptr inbounds i32, i32* %0, i32 1, !dbg !4103
  store i32 %5, i32* %6, align 4, !dbg !4104
  %7 = getelementptr inbounds i8, i8* %1, i32 8, !dbg !4105
  %8 = tail call fastcc i32 @hal_irtx_build_double_word(i8* noundef nonnull %7) #18, !dbg !4106
  %9 = getelementptr inbounds i32, i32* %0, i32 2, !dbg !4107
  store i32 %8, i32* %9, align 4, !dbg !4108
  ret void, !dbg !4109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i8 @hal_irtx_translate_repeat_code(i32 noundef %0) unnamed_addr #0 !dbg !4110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4114, metadata !DIExpression()), !dbg !4115
  %2 = icmp eq i32 %0, 0, !dbg !4116
  %3 = zext i1 %2 to i8, !dbg !4117
  ret i8 %3, !dbg !4118
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize readonly willreturn
define internal fastcc i32 @hal_irtx_build_double_word(i8* nocapture noundef readonly %0) unnamed_addr #13 !dbg !4119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 0, metadata !4124, metadata !DIExpression()), !dbg !4125
  %2 = load i8, i8* %0, align 1, !dbg !4126
  %3 = lshr i8 %2, 4, !dbg !4127
  %4 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %3) #18, !dbg !4128
  %5 = zext i8 %4 to i32, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %5, metadata !4124, metadata !DIExpression()), !dbg !4125
  %6 = and i8 %2, 15, !dbg !4129
  %7 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %6) #18, !dbg !4130
  %8 = zext i8 %7 to i32, !dbg !4130
  %9 = shl nuw nsw i32 %8, 4, !dbg !4131
  %10 = or i32 %9, %5, !dbg !4132
  call void @llvm.dbg.value(metadata i32 %10, metadata !4124, metadata !DIExpression()), !dbg !4125
  %11 = getelementptr inbounds i8, i8* %0, i32 1, !dbg !4133
  %12 = load i8, i8* %11, align 1, !dbg !4133
  %13 = lshr i8 %12, 4, !dbg !4134
  %14 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %13) #18, !dbg !4135
  %15 = zext i8 %14 to i32, !dbg !4135
  %16 = shl nuw nsw i32 %15, 8, !dbg !4136
  %17 = or i32 %10, %16, !dbg !4137
  call void @llvm.dbg.value(metadata i32 %17, metadata !4124, metadata !DIExpression()), !dbg !4125
  %18 = and i8 %12, 15, !dbg !4138
  %19 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %18) #18, !dbg !4139
  %20 = zext i8 %19 to i32, !dbg !4139
  %21 = shl nuw nsw i32 %20, 12, !dbg !4140
  %22 = or i32 %17, %21, !dbg !4141
  call void @llvm.dbg.value(metadata i32 %22, metadata !4124, metadata !DIExpression()), !dbg !4125
  %23 = getelementptr inbounds i8, i8* %0, i32 2, !dbg !4142
  %24 = load i8, i8* %23, align 1, !dbg !4142
  %25 = lshr i8 %24, 4, !dbg !4143
  %26 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %25) #18, !dbg !4144
  %27 = zext i8 %26 to i32, !dbg !4144
  %28 = shl nuw nsw i32 %27, 16, !dbg !4145
  %29 = or i32 %22, %28, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %29, metadata !4124, metadata !DIExpression()), !dbg !4125
  %30 = and i8 %24, 15, !dbg !4147
  %31 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %30) #18, !dbg !4148
  %32 = zext i8 %31 to i32, !dbg !4148
  %33 = shl nuw nsw i32 %32, 20, !dbg !4149
  %34 = or i32 %29, %33, !dbg !4150
  call void @llvm.dbg.value(metadata i32 %34, metadata !4124, metadata !DIExpression()), !dbg !4125
  %35 = getelementptr inbounds i8, i8* %0, i32 3, !dbg !4151
  %36 = load i8, i8* %35, align 1, !dbg !4151
  %37 = lshr i8 %36, 4, !dbg !4152
  %38 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %37) #18, !dbg !4153
  %39 = zext i8 %38 to i32, !dbg !4153
  %40 = shl nuw i32 %39, 24, !dbg !4154
  %41 = or i32 %34, %40, !dbg !4155
  call void @llvm.dbg.value(metadata i32 %41, metadata !4124, metadata !DIExpression()), !dbg !4125
  %42 = and i8 %36, 15, !dbg !4156
  %43 = tail call fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %42) #18, !dbg !4157
  %44 = zext i8 %43 to i32, !dbg !4157
  %45 = shl i32 %44, 28, !dbg !4158
  %46 = or i32 %41, %45, !dbg !4159
  call void @llvm.dbg.value(metadata i32 %46, metadata !4124, metadata !DIExpression()), !dbg !4125
  ret i32 %46, !dbg !4160
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i8 @hal_irtx_revert_bit_order(i8 noundef zeroext %0) unnamed_addr #14 !dbg !4161 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !4165, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i8 0, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i8 %0, metadata !4166, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_constu, 8, DW_OP_and, DW_OP_stack_value)), !dbg !4167
  call void @llvm.dbg.value(metadata i4 undef, metadata !4166, metadata !DIExpression(DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_LLVM_convert, 4, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4167
  call void @llvm.dbg.value(metadata i4 undef, metadata !4166, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_LLVM_convert, 4, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4167
  %2 = trunc i8 %0 to i4
  %3 = tail call i4 @llvm.bitreverse.i4(i4 %2)
  %4 = zext i4 %3 to i8, !dbg !4168
  call void @llvm.dbg.value(metadata i8 %4, metadata !4166, metadata !DIExpression()), !dbg !4167
  ret i8 %4, !dbg !4169
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_send_nec_data(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4170 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4174, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8* %1, metadata !4175, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i32 %2, metadata !4176, metadata !DIExpression()), !dbg !4177
  %4 = tail call fastcc i32 @hal_irtx_check_valid_data(i8* noundef %1, i32 noundef %2) #18, !dbg !4178
  %5 = icmp eq i32 %4, -1, !dbg !4180
  br i1 %5, label %8, label %6, !dbg !4181

6:                                                ; preds = %3
  %7 = tail call i32 @hal_irtx_do_send_data(i8 noundef zeroext 0, i32 noundef %0, i8* noundef %1, i32 noundef %2) #18, !dbg !4182
  br label %8, !dbg !4183

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %3 ], !dbg !4177
  ret i32 %9, !dbg !4184
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_irtx_check_valid_data(i8* noundef readnone %0, i32 noundef %1) unnamed_addr #4 !dbg !4185 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4189, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 %1, metadata !4190, metadata !DIExpression()), !dbg !4191
  %3 = icmp eq i8* %0, null, !dbg !4192
  br i1 %3, label %4, label %5, !dbg !4194

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_irtx_check_valid_data, i32 0, i32 0), i32 noundef 95, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.8, i32 0, i32 0)) #19, !dbg !4195
  br label %8, !dbg !4197

5:                                                ; preds = %2
  %6 = icmp ugt i32 %1, 96, !dbg !4198
  br i1 %6, label %7, label %8, !dbg !4200

7:                                                ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_irtx_check_valid_data, i32 0, i32 0), i32 noundef 100, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2.9, i32 0, i32 0), i32 noundef %1, i32 noundef 96) #19, !dbg !4201
  br label %8, !dbg !4203

8:                                                ; preds = %5, %7, %4
  %9 = phi i32 [ -1, %4 ], [ -1, %7 ], [ 0, %5 ], !dbg !4191
  ret i32 %9, !dbg !4204
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_send_rc5_data(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4207, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i8* %1, metadata !4208, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata i32 %2, metadata !4209, metadata !DIExpression()), !dbg !4210
  %4 = tail call fastcc i32 @hal_irtx_check_valid_data(i8* noundef %1, i32 noundef %2) #18, !dbg !4211
  %5 = icmp eq i32 %4, -1, !dbg !4213
  br i1 %5, label %8, label %6, !dbg !4214

6:                                                ; preds = %3
  %7 = tail call i32 @hal_irtx_do_send_data(i8 noundef zeroext 1, i32 noundef %0, i8* noundef %1, i32 noundef %2) #18, !dbg !4215
  br label %8, !dbg !4216

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %3 ], !dbg !4210
  ret i32 %9, !dbg !4217
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_send_rc6_data(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4220, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i8* %1, metadata !4221, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %2, metadata !4222, metadata !DIExpression()), !dbg !4223
  %4 = tail call fastcc i32 @hal_irtx_check_valid_data(i8* noundef %1, i32 noundef %2) #18, !dbg !4224
  %5 = icmp eq i32 %4, -1, !dbg !4226
  br i1 %5, label %8, label %6, !dbg !4227

6:                                                ; preds = %3
  %7 = tail call i32 @hal_irtx_do_send_data(i8 noundef zeroext 2, i32 noundef %0, i8* noundef %1, i32 noundef %2) #18, !dbg !4228
  br label %8, !dbg !4229

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ -1, %3 ], !dbg !4223
  ret i32 %9, !dbg !4230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_configure_pulse_data_carrier(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !4231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 %1, metadata !4236, metadata !DIExpression()), !dbg !4238
  %3 = trunc i32 %0 to i16, !dbg !4239
  %4 = trunc i32 %1 to i8, !dbg !4240
  %5 = tail call i32 @ir_tx_pulse_width_configure(i16 noundef zeroext %3, i8 noundef zeroext %4) #19, !dbg !4241
  call void @llvm.dbg.value(metadata i32 %5, metadata !4237, metadata !DIExpression()), !dbg !4238
  %6 = ashr i32 %5, 31, !dbg !4242
  ret i32 %6, !dbg !4243
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_register_pulse_data_callback(void (i32, i8*)* noundef %0, i8* noundef %1) local_unnamed_addr #4 !dbg !4244 {
  call void @llvm.dbg.value(metadata void (i32, i8*)* %0, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i8* %1, metadata !4249, metadata !DIExpression()), !dbg !4250
  store void (i32, i8*)* %0, void (i32, i8*)** @g_pulse_data_callback, align 4, !dbg !4251
  store i8* %1, i8** @g_callback_user_data, align 4, !dbg !4252
  %3 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 15, void (i32)* noundef nonnull @hal_irtx_interrupt_handle) #19, !dbg !4253
  %4 = tail call i32 @hal_nvic_enable_irq(i32 noundef 15) #19, !dbg !4254
  ret i32 0, !dbg !4255
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_irtx_interrupt_handle(i32 noundef %0) #4 !dbg !4256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4258, metadata !DIExpression()), !dbg !4259
  %2 = load void (i32, i8*)*, void (i32, i8*)** @g_pulse_data_callback, align 4, !dbg !4260
  %3 = icmp eq void (i32, i8*)* %2, null, !dbg !4262
  br i1 %3, label %6, label %4, !dbg !4263

4:                                                ; preds = %1
  %5 = load i8*, i8** @g_callback_user_data, align 4, !dbg !4264
  tail call void %2(i32 noundef 0, i8* noundef %5) #19, !dbg !4266
  br label %6, !dbg !4267

6:                                                ; preds = %4, %1
  %7 = tail call i32 @ir_tx_interrupt_clear() #19, !dbg !4268
  store i1 false, i1* @irtx_status, align 1, !dbg !4269
  ret void, !dbg !4270
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irtx_send_pulse_data(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4275, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i8* %1, metadata !4276, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i32 %2, metadata !4277, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i32 0, metadata !4278, metadata !DIExpression()), !dbg !4279
  %4 = trunc i32 %2 to i8, !dbg !4280
  %5 = trunc i32 %0 to i8, !dbg !4281
  %6 = tail call i32 @ir_tx_pulse_width_send(i8 noundef zeroext %4, i8* noundef %1, i8 noundef zeroext %5) #19, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %6, metadata !4278, metadata !DIExpression()), !dbg !4279
  %7 = ashr i32 %6, 31, !dbg !4283
  ret i32 %7, !dbg !4284
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local i32 @hal_irtx_get_running_status(i32* nocapture noundef writeonly %0) local_unnamed_addr #15 !dbg !4285 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4291, metadata !DIExpression()), !dbg !4292
  %2 = load i1, i1* @irtx_status, align 1, !dbg !4293
  %3 = zext i1 %2 to i32
  store i32 %3, i32* %0, align 4, !dbg !4295
  ret i32 0, !dbg !4296
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #4 !dbg !4297 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4303, metadata !DIExpression()), !dbg !4305
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4304, metadata !DIExpression()), !dbg !4305
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #18, !dbg !4306
  br i1 %3, label %4, label %18, !dbg !4308

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4309
  %6 = load i8, i8* %5, align 4, !dbg !4309, !range !3243
  %7 = icmp eq i8 %6, 0, !dbg !4309
  br i1 %7, label %8, label %18, !dbg !4311

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #19, !dbg !4312
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4313
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4314
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4315
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #19, !dbg !4316
  store i8 1, i8* %5, align 4, !dbg !4317
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4318, !range !4319
  tail call void @uart_reset_default_value(i32 noundef %14) #19, !dbg !4320
  tail call void @halUART_HWInit(i32 noundef %14) #19, !dbg !4321
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #18, !dbg !4322
  %16 = icmp eq i32 %15, 0, !dbg !4324
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4305
  br label %18, !dbg !4305

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4305
  ret i32 %19, !dbg !4325
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !4326 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4332, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4333, metadata !DIExpression()), !dbg !4334
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4335
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4337
  br i1 %5, label %6, label %22, !dbg !4337

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4338
  %8 = load i32, i32* %7, align 4, !dbg !4338
  %9 = icmp ugt i32 %8, 12, !dbg !4340
  br i1 %9, label %22, label %10, !dbg !4341

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4342
  %12 = load i32, i32* %11, align 4, !dbg !4342
  %13 = icmp ugt i32 %12, 2, !dbg !4343
  br i1 %13, label %22, label %14, !dbg !4344

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4345
  %16 = load i32, i32* %15, align 4, !dbg !4345
  %17 = icmp ugt i32 %16, 1, !dbg !4346
  br i1 %17, label %22, label %18, !dbg !4347

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4348
  %20 = load i32, i32* %19, align 4, !dbg !4348
  %21 = icmp ult i32 %20, 4, !dbg !4349
  br label %22, !dbg !4350

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4334
  ret i1 %23, !dbg !4351
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #0 !dbg !4352 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4356, metadata !DIExpression()), !dbg !4357
  %2 = icmp ne i32 %0, 0, !dbg !4358
  %3 = zext i1 %2 to i32, !dbg !4359
  ret i32 %3, !dbg !4360
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #4 !dbg !4361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4365, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4366, metadata !DIExpression()), !dbg !4367
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #18, !dbg !4368
  br i1 %3, label %4, label %22, !dbg !4370

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4371
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4372
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4373
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #19, !dbg !4374
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4375
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4376
  %11 = load i32, i32* %10, align 4, !dbg !4376
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #18, !dbg !4377
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4378
  %14 = load i32, i32* %13, align 4, !dbg !4378
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #18, !dbg !4379
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4380
  %17 = load i32, i32* %16, align 4, !dbg !4380
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #18, !dbg !4381
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4382
  %20 = load i32, i32* %19, align 4, !dbg !4382
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #18, !dbg !4383
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #19, !dbg !4384
  br label %22, !dbg !4385

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4367
  ret i32 %23, !dbg !4386
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #0 !dbg !4387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4391, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4392, metadata !DIExpression()), !dbg !4397
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4398
  %3 = load i32, i32* %2, align 4, !dbg !4398
  ret i32 %3, !dbg !4399
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #0 !dbg !4400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4404, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4405, metadata !DIExpression()), !dbg !4408
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4409
  %3 = load i16, i16* %2, align 2, !dbg !4409
  ret i16 %3, !dbg !4410
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #0 !dbg !4411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4415, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4416, metadata !DIExpression()), !dbg !4419
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4420
  %3 = load i16, i16* %2, align 2, !dbg !4420
  ret i16 %3, !dbg !4421
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #0 !dbg !4422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4426, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4427, metadata !DIExpression()), !dbg !4430
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4431
  %3 = load i16, i16* %2, align 2, !dbg !4431
  ret i16 %3, !dbg !4432
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #0 !dbg !4433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4437, metadata !DIExpression()), !dbg !4438
  %2 = icmp ult i32 %0, 2, !dbg !4439
  ret i1 %2, !dbg !4440
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #4 !dbg !4441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4445, metadata !DIExpression()), !dbg !4446
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4447
  br i1 %2, label %3, label %10, !dbg !4449

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4450
  %5 = load i8, i8* %4, align 4, !dbg !4450, !range !3243
  %6 = icmp eq i8 %5, 0, !dbg !4452
  br i1 %6, label %10, label %7, !dbg !4453

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #19, !dbg !4454
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4455, !range !4319
  tail call void @uart_query_empty(i32 noundef %9) #19, !dbg !4456
  tail call void @uart_reset_default_value(i32 noundef %9) #19, !dbg !4457
  br label %10, !dbg !4458

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4446
  ret i32 %11, !dbg !4459
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 !dbg !4460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4464, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i8 %1, metadata !4465, metadata !DIExpression()), !dbg !4467
  %3 = icmp eq i32 %0, 0, !dbg !4468
  %4 = icmp eq i32 %0, 1, !dbg !4468
  %5 = select i1 %4, i32 1, i32 2, !dbg !4468
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4468
  call void @llvm.dbg.value(metadata i32 %6, metadata !4466, metadata !DIExpression()), !dbg !4467
  %7 = icmp eq i32 %6, 2, !dbg !4469
  br i1 %7, label %9, label %8, !dbg !4471

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #19, !dbg !4472
  br label %9, !dbg !4474

9:                                                ; preds = %2, %8
  ret void, !dbg !4475
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i8* %1, metadata !4481, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata i32 %2, metadata !4482, metadata !DIExpression()), !dbg !4485
  %4 = icmp eq i32 %0, 0, !dbg !4486
  %5 = icmp eq i32 %0, 1, !dbg !4486
  %6 = select i1 %5, i32 1, i32 2, !dbg !4486
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %7, metadata !4483, metadata !DIExpression()), !dbg !4485
  %8 = icmp eq i8* %1, null, !dbg !4487
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4489
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4489
  call void @llvm.dbg.value(metadata i32 0, metadata !4484, metadata !DIExpression()), !dbg !4485
  br i1 %12, label %19, label %13, !dbg !4489

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4484, metadata !DIExpression()), !dbg !4485
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4490
  %16 = load i8, i8* %15, align 1, !dbg !4490
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #19, !dbg !4496
  %17 = add nuw i32 %14, 1, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %17, metadata !4484, metadata !DIExpression()), !dbg !4485
  %18 = icmp eq i32 %17, %2, !dbg !4498
  br i1 %18, label %19, label %13, !dbg !4499, !llvm.loop !4500

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4485
  ret i32 %20, !dbg !4502
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4503 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4505, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i8* %1, metadata !4506, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i32 %2, metadata !4507, metadata !DIExpression()), !dbg !4512
  %5 = bitcast i32* %4 to i8*, !dbg !4513
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20, !dbg !4513
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4514
  br i1 %6, label %7, label %24, !dbg !4516

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4517
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4519
  br i1 %10, label %24, label %11, !dbg !4519

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4520
  %13 = load i8, i8* %12, align 4, !dbg !4520, !range !3243
  %14 = icmp eq i8 %13, 0, !dbg !4520
  br i1 %14, label %24, label %15, !dbg !4522

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4523, !range !4319
  call void @llvm.dbg.value(metadata i32* %4, metadata !4508, metadata !DIExpression(DW_OP_deref)), !dbg !4512
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #19, !dbg !4524
  %17 = load i32, i32* %4, align 4, !dbg !4525
  call void @llvm.dbg.value(metadata i32 %17, metadata !4508, metadata !DIExpression()), !dbg !4512
  %18 = icmp ult i32 %17, %2, !dbg !4527
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4509, metadata !DIExpression()), !dbg !4512
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #19, !dbg !4528
  %20 = load i32, i32* %4, align 4, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %20, metadata !4508, metadata !DIExpression()), !dbg !4512
  %21 = icmp eq i32 %19, %20, !dbg !4531
  br i1 %21, label %22, label %24, !dbg !4532

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #18, !dbg !4533, !range !4535
  call void @llvm.dbg.value(metadata i32 %23, metadata !4510, metadata !DIExpression()), !dbg !4512
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #19, !dbg !4536
  br label %24, !dbg !4537

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4512
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20, !dbg !4538
  ret i32 %25, !dbg !4538
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4543, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i1 %1, metadata !4544, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4546
  %3 = icmp eq i32 %0, 0, !dbg !4547
  %4 = select i1 %1, i32 15, i32 14, !dbg !4549
  %5 = select i1 %1, i32 17, i32 16, !dbg !4549
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4549
  call void @llvm.dbg.value(metadata i32 %6, metadata !4545, metadata !DIExpression()), !dbg !4546
  ret i32 %6, !dbg !4550
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #4 !dbg !4551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4555, metadata !DIExpression()), !dbg !4557
  %2 = icmp eq i32 %0, 0, !dbg !4558
  %3 = icmp eq i32 %0, 1, !dbg !4558
  %4 = select i1 %3, i32 1, i32 2, !dbg !4558
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %5, metadata !4556, metadata !DIExpression()), !dbg !4557
  %6 = icmp ult i32 %5, 2, !dbg !4559
  br i1 %6, label %7, label %9, !dbg !4561

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #19, !dbg !4562
  br label %9, !dbg !4564

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4565
  ret i8 %10, !dbg !4566
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !4567 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4571, metadata !DIExpression()), !dbg !4573
  %2 = icmp eq i32 %0, 0, !dbg !4574
  %3 = icmp eq i32 %0, 1, !dbg !4574
  %4 = select i1 %3, i32 1, i32 2, !dbg !4574
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4574
  call void @llvm.dbg.value(metadata i32 %5, metadata !4572, metadata !DIExpression()), !dbg !4573
  %6 = icmp ult i32 %5, 2, !dbg !4575
  br i1 %6, label %7, label %9, !dbg !4577

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #19, !dbg !4578
  br label %9, !dbg !4580

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4581
  ret i32 %10, !dbg !4582
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4583 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4587, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i8* %1, metadata !4588, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata i32 %2, metadata !4589, metadata !DIExpression()), !dbg !4592
  %4 = icmp eq i32 %0, 0, !dbg !4593
  %5 = icmp eq i32 %0, 1, !dbg !4593
  %6 = select i1 %5, i32 1, i32 2, !dbg !4593
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4593
  call void @llvm.dbg.value(metadata i32 %7, metadata !4590, metadata !DIExpression()), !dbg !4592
  %8 = icmp eq i8* %1, null, !dbg !4594
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4596
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4596
  call void @llvm.dbg.value(metadata i32 0, metadata !4591, metadata !DIExpression()), !dbg !4592
  br i1 %12, label %19, label %13, !dbg !4596

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4591, metadata !DIExpression()), !dbg !4592
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #19, !dbg !4597
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4603
  store i8 %15, i8* %16, align 1, !dbg !4604
  %17 = add nuw i32 %14, 1, !dbg !4605
  call void @llvm.dbg.value(metadata i32 %17, metadata !4591, metadata !DIExpression()), !dbg !4592
  %18 = icmp eq i32 %17, %2, !dbg !4606
  br i1 %18, label %19, label %13, !dbg !4607, !llvm.loop !4608

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4592
  ret i32 %20, !dbg !4610
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #4 !dbg !4611 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4613, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i8* %1, metadata !4614, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.value(metadata i32 %2, metadata !4615, metadata !DIExpression()), !dbg !4619
  %5 = bitcast i32* %4 to i8*, !dbg !4620
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20, !dbg !4620
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4621
  br i1 %6, label %7, label %20, !dbg !4623

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4624
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4626
  br i1 %10, label %20, label %11, !dbg !4626

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4627, !range !4319
  call void @llvm.dbg.value(metadata i32* %4, metadata !4616, metadata !DIExpression(DW_OP_deref)), !dbg !4619
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #19, !dbg !4628
  %13 = load i32, i32* %4, align 4, !dbg !4629
  call void @llvm.dbg.value(metadata i32 %13, metadata !4616, metadata !DIExpression()), !dbg !4619
  %14 = icmp ult i32 %13, %2, !dbg !4631
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4617, metadata !DIExpression()), !dbg !4619
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #19, !dbg !4632
  %16 = load i32, i32* %4, align 4, !dbg !4633
  call void @llvm.dbg.value(metadata i32 %16, metadata !4616, metadata !DIExpression()), !dbg !4619
  %17 = icmp eq i32 %15, %16, !dbg !4635
  br i1 %17, label %18, label %20, !dbg !4636

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #18, !dbg !4637, !range !4535
  call void @llvm.dbg.value(metadata i32 %19, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #19, !dbg !4639
  br label %20, !dbg !4640

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20, !dbg !4641
  ret i32 %21, !dbg !4641
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #4 !dbg !4642 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4644, metadata !DIExpression()), !dbg !4646
  %3 = bitcast i32* %2 to i8*, !dbg !4647
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #20, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i32 0, i32* %2, align 4, !dbg !4648
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4649
  br i1 %4, label %5, label %8, !dbg !4651

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4652, !range !4319
  call void @llvm.dbg.value(metadata i32* %2, metadata !4645, metadata !DIExpression(DW_OP_deref)), !dbg !4646
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #19, !dbg !4653
  %7 = load i32, i32* %2, align 4, !dbg !4654
  call void @llvm.dbg.value(metadata i32 %7, metadata !4645, metadata !DIExpression()), !dbg !4646
  br label %8, !dbg !4655

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4646
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #20, !dbg !4656
  ret i32 %9, !dbg !4656
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #4 !dbg !4657 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4659, metadata !DIExpression()), !dbg !4661
  %3 = bitcast i32* %2 to i8*, !dbg !4662
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #20, !dbg !4662
  call void @llvm.dbg.value(metadata i32 0, metadata !4660, metadata !DIExpression()), !dbg !4661
  store i32 0, i32* %2, align 4, !dbg !4663
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4664
  br i1 %4, label %5, label %8, !dbg !4666

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4667, !range !4319
  call void @llvm.dbg.value(metadata i32* %2, metadata !4660, metadata !DIExpression(DW_OP_deref)), !dbg !4661
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #19, !dbg !4668
  %7 = load i32, i32* %2, align 4, !dbg !4669
  call void @llvm.dbg.value(metadata i32 %7, metadata !4660, metadata !DIExpression()), !dbg !4661
  br label %8, !dbg !4670

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4661
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #20, !dbg !4671
  ret i32 %9, !dbg !4671
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #4 !dbg !4672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4676, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i8* %2, metadata !4678, metadata !DIExpression()), !dbg !4680
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4681
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4683
  br i1 %6, label %7, label %18, !dbg !4683

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4684
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4685
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4686
  store i8* %2, i8** %9, align 4, !dbg !4687
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4688
  store i8 1, i8* %10, align 4, !dbg !4689
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4690
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #18, !dbg !4691
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #19, !dbg !4692
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #19, !dbg !4693
  %13 = icmp eq i32 %11, 0, !dbg !4694
  br i1 %13, label %14, label %15, !dbg !4696

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #19, !dbg !4697
  br label %16, !dbg !4699

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #19, !dbg !4700
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #18, !dbg !4702, !range !4535
  call void @llvm.dbg.value(metadata i32 %17, metadata !4679, metadata !DIExpression()), !dbg !4680
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #19, !dbg !4703
  br label %18, !dbg !4704

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4680
  ret i32 %19, !dbg !4705
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #0 !dbg !408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !417, metadata !DIExpression()), !dbg !4706
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4707
  %3 = load void ()*, void ()** %2, align 4, !dbg !4707
  ret void ()* %3, !dbg !4708
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #4 !dbg !4709 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4715, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4715
  br i1 %2, label %8, label %3, !dbg !4716

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4717
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4719
  br i1 %5, label %8, label %6, !dbg !4720

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4721
  tail call void %4(i32 noundef 2, i8* noundef %7) #19, !dbg !4723
  br label %8, !dbg !4724

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #18, !dbg !4725, !range !4319
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #18, !dbg !4726
  ret void, !dbg !4727
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #4 !dbg !4728 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4733, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4733
  br i1 %2, label %8, label %3, !dbg !4734

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4735
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4737
  br i1 %5, label %8, label %6, !dbg !4738

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4739
  tail call void %4(i32 noundef 2, i8* noundef %7) #19, !dbg !4741
  br label %8, !dbg !4742

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #18, !dbg !4743, !range !4319
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #18, !dbg !4744
  ret void, !dbg !4745
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #4 !dbg !4746 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4750, metadata !DIExpression()), !dbg !4757
  call void @llvm.dbg.value(metadata i1 %1, metadata !4751, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4757
  %5 = bitcast i32* %3 to i8*, !dbg !4758
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20, !dbg !4758
  %6 = bitcast i32* %4 to i8*, !dbg !4758
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4758
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4754, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4757
  br i1 %1, label %7, label %12, !dbg !4759

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4754, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4757
  call void @llvm.dbg.value(metadata i32* %3, metadata !4752, metadata !DIExpression(DW_OP_deref)), !dbg !4757
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #19, !dbg !4760
  %8 = load i32, i32* %3, align 4, !dbg !4763
  call void @llvm.dbg.value(metadata i32 %8, metadata !4752, metadata !DIExpression()), !dbg !4757
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4765
  %10 = load i32, i32* %9, align 4, !dbg !4765
  %11 = icmp ult i32 %8, %10, !dbg !4766
  br i1 %11, label %22, label %20, !dbg !4767

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4753, metadata !DIExpression(DW_OP_deref)), !dbg !4757
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #19, !dbg !4768
  %13 = load i32, i32* %4, align 4, !dbg !4770
  call void @llvm.dbg.value(metadata i32 %13, metadata !4753, metadata !DIExpression()), !dbg !4757
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4772
  %15 = load i32, i32* %14, align 4, !dbg !4772
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4773
  %17 = load i32, i32* %16, align 4, !dbg !4773
  %18 = sub i32 %15, %17, !dbg !4774
  %19 = icmp ult i32 %13, %18, !dbg !4775
  br i1 %19, label %22, label %20, !dbg !4776

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #18, !dbg !4777, !range !4535
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #19, !dbg !4777
  br label %22, !dbg !4778

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4778
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20, !dbg !4778
  ret void, !dbg !4778
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #4 !dbg !4779 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4784, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4784
  br i1 %2, label %11, label %3, !dbg !4785

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #18, !dbg !4786
  %5 = icmp eq i32 %4, 0, !dbg !4787
  br i1 %5, label %11, label %6, !dbg !4788

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4789
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4791
  br i1 %8, label %11, label %9, !dbg !4792

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4793
  tail call void %7(i32 noundef 1, i8* noundef %10) #19, !dbg !4795
  br label %11, !dbg !4796

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #18, !dbg !4797, !range !4319
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #18, !dbg !4798
  ret void, !dbg !4799
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #4 !dbg !4800 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4805, !range !3243
  %2 = icmp eq i8 %1, 0, !dbg !4805
  br i1 %2, label %11, label %3, !dbg !4806

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #18, !dbg !4807
  %5 = icmp eq i32 %4, 0, !dbg !4808
  br i1 %5, label %11, label %6, !dbg !4809

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4810
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4812
  br i1 %8, label %11, label %9, !dbg !4813

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4814
  tail call void %7(i32 noundef 1, i8* noundef %10) #19, !dbg !4816
  br label %11, !dbg !4817

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #18, !dbg !4818, !range !4319
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #18, !dbg !4819
  ret void, !dbg !4820
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !4821 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4825, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i32 %1, metadata !4826, metadata !DIExpression()), !dbg !4827
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4828
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4830
  br i1 %5, label %6, label %10, !dbg !4830

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4831
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4832
  store i32 %1, i32* %8, align 4, !dbg !4833
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #18, !dbg !4834
  br label %10, !dbg !4835

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4827
  ret i32 %11, !dbg !4836
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #4 !dbg !4837 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4843, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4844, metadata !DIExpression()), !dbg !4845
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4846
  br i1 %3, label %4, label %28, !dbg !4848

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #18, !dbg !4849
  br i1 %5, label %6, label %28, !dbg !4851

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4852
  store i8 1, i8* %7, align 4, !dbg !4853
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4854
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4855
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4856
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #19, !dbg !4857
  tail call void @DMA_Init() #19, !dbg !4858
  tail call void @DMA_Vfifo_init() #19, !dbg !4859
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #18, !dbg !4860
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4861
  %14 = load i8*, i8** %13, align 4, !dbg !4861
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4862
  %16 = load i32, i32* %15, align 4, !dbg !4862
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4863
  %18 = load i32, i32* %17, align 4, !dbg !4863
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4864
  %20 = load i32, i32* %19, align 4, !dbg !4864
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #18, !dbg !4865
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #19, !dbg !4866
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4867
  %23 = load i8*, i8** %22, align 4, !dbg !4867
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4868
  %25 = load i32, i32* %24, align 4, !dbg !4868
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4869
  %27 = load i32, i32* %26, align 4, !dbg !4869
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #19, !dbg !4870
  br label %28, !dbg !4871

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4845
  ret i32 %29, !dbg !4872
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !4873 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4877, metadata !DIExpression()), !dbg !4878
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4879
  br i1 %2, label %27, label %3, !dbg !4881

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4882
  %5 = load i8*, i8** %4, align 4, !dbg !4882
  %6 = icmp eq i8* %5, null, !dbg !4884
  br i1 %6, label %27, label %7, !dbg !4885

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4886
  %9 = load i32, i32* %8, align 4, !dbg !4886
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4888
  %11 = load i32, i32* %10, align 4, !dbg !4888
  %12 = icmp ult i32 %9, %11, !dbg !4889
  br i1 %12, label %27, label %13, !dbg !4890

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4891
  %15 = load i32, i32* %14, align 4, !dbg !4891
  %16 = icmp ult i32 %9, %15, !dbg !4893
  br i1 %16, label %27, label %17, !dbg !4894

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4895
  %19 = load i8*, i8** %18, align 4, !dbg !4895
  %20 = icmp eq i8* %19, null, !dbg !4897
  br i1 %20, label %27, label %21, !dbg !4898

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4899
  %23 = load i32, i32* %22, align 4, !dbg !4899
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4901
  %25 = load i32, i32* %24, align 4, !dbg !4901
  %26 = icmp uge i32 %23, %25, !dbg !4902
  br label %27, !dbg !4903

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4878
  ret i1 %28, !dbg !4904
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #4 !dbg !4905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4909, metadata !DIExpression()), !dbg !4911
  %2 = tail call i32 @top_mcu_freq_get() #19, !dbg !4912
  %3 = udiv i32 %2, 1000000, !dbg !4913
  call void @llvm.dbg.value(metadata i32 %3, metadata !4910, metadata !DIExpression()), !dbg !4911
  %4 = mul i32 %3, %0, !dbg !4914
  ret i32 %4, !dbg !4915
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #4 !dbg !4916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4918, metadata !DIExpression()), !dbg !4920
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4921
  br i1 %2, label %3, label %8, !dbg !4923

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4924
  %5 = icmp eq i32 %0, 1, !dbg !4924
  %6 = select i1 %5, i32 1, i32 2, !dbg !4924
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4924
  call void @llvm.dbg.value(metadata i32 %7, metadata !4919, metadata !DIExpression()), !dbg !4920
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #19, !dbg !4925
  br label %8, !dbg !4926

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4920
  ret i32 %9, !dbg !4927
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #4 !dbg !4928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4932, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i8 %1, metadata !4933, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i8 %2, metadata !4934, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.value(metadata i8 %3, metadata !4935, metadata !DIExpression()), !dbg !4937
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4938
  br i1 %5, label %6, label %11, !dbg !4940

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4941
  %8 = icmp eq i32 %0, 1, !dbg !4941
  %9 = select i1 %8, i32 1, i32 2, !dbg !4941
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4941
  call void @llvm.dbg.value(metadata i32 %10, metadata !4936, metadata !DIExpression()), !dbg !4937
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #19, !dbg !4942
  br label %11, !dbg !4943

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4937
  ret i32 %12, !dbg !4944
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #4 !dbg !4945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4947, metadata !DIExpression()), !dbg !4949
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4950
  br i1 %2, label %3, label %8, !dbg !4952

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4953
  %5 = icmp eq i32 %0, 1, !dbg !4953
  %6 = select i1 %5, i32 1, i32 2, !dbg !4953
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4953
  call void @llvm.dbg.value(metadata i32 %7, metadata !4948, metadata !DIExpression()), !dbg !4949
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #19, !dbg !4954
  br label %8, !dbg !4955

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4949
  ret i32 %9, !dbg !4956
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !4957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4961, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.value(metadata i32 %1, metadata !4962, metadata !DIExpression()), !dbg !4963
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #18, !dbg !4964
  br i1 %3, label %4, label %8, !dbg !4966

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4967
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #18, !dbg !4969
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #19, !dbg !4969
  br label %8, !dbg !4970

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4963
  ret i32 %9, !dbg !4970
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #4 !dbg !4971 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4975, metadata !DIExpression()), !dbg !4976
  %2 = trunc i32 %0 to i8, !dbg !4977
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #19, !dbg !4978
  ret i32 %0, !dbg !4979
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #16 !dbg !4980 {
  tail call fastcc void @SystemClock_Config() #18, !dbg !4981
  tail call fastcc void @prvSetupHardware() #18, !dbg !4982
  tail call void asm sideeffect "cpsie i", "~{memory}"() #20, !dbg !4983, !srcloc !4986
  tail call void asm sideeffect "cpsie f", "~{memory}"() #20, !dbg !4987, !srcloc !4990
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #19, !dbg !4991
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.11, i32 0, i32 0)) #19, !dbg !4992
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #19, !dbg !4993
  tail call fastcc void @irtx_send_pulse_data() #18, !dbg !4994
  br label %4, !dbg !4995

4:                                                ; preds = %4, %0
  br label %4, !dbg !4996, !llvm.loop !4999
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #4 !dbg !5002 {
  tail call void @top_xtal_init() #19, !dbg !5003
  ret void, !dbg !5004
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #4 !dbg !5005 {
  tail call fastcc void @plain_log_uart_init() #18, !dbg !5006
  ret void, !dbg !5007
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc void @irtx_send_pulse_data() unnamed_addr #4 !dbg !5008 {
  %1 = alloca [68 x i8], align 1
  call void @llvm.dbg.value(metadata i8 41, metadata !5010, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.value(metadata i16 40, metadata !5011, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.value(metadata i8 25, metadata !5012, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.value(metadata i8 80, metadata !5013, metadata !DIExpression()), !dbg !5018
  %2 = getelementptr inbounds [68 x i8], [68 x i8]* %1, i32 0, i32 0, !dbg !5019
  call void @llvm.lifetime.start.p0i8(i64 68, i8* nonnull %2) #20, !dbg !5019
  call void @llvm.dbg.declare(metadata [68 x i8]* %1, metadata !5014, metadata !DIExpression()), !dbg !5020
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(68) %2, i8* noundef nonnull align 1 dereferenceable(68) getelementptr inbounds (<{ [41 x i8], [27 x i8] }>, <{ [41 x i8], [27 x i8] }>* @__const.irtx_send_pulse_data.data, i32 0, i32 0, i32 0), i32 68, i1 false), !dbg !5020
  %3 = tail call i32 @hal_gpio_init(i32 noundef 33) #19, !dbg !5021
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 33, i8 noundef zeroext 7) #19, !dbg !5022
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.12, i32 0, i32 0)) #19, !dbg !5023
  %6 = tail call i32 @hal_irtx_register_pulse_data_callback(void (i32, i8*)* noundef bitcast (void (i8*)* @irtx_callback to void (i32, i8*)*), i8* noundef null) #19, !dbg !5024
  %7 = tail call i32 @hal_irtx_configure_pulse_data_carrier(i32 noundef 40, i32 noundef 25) #19, !dbg !5025
  %8 = call i32 @hal_irtx_send_pulse_data(i32 noundef 80, i8* noundef nonnull %2, i32 noundef 41) #19, !dbg !5026
  %9 = call i32 @hal_gpio_deinit(i32 noundef 33) #19, !dbg !5027
  call void @llvm.lifetime.end.p0i8(i64 68, i8* nonnull %2) #20, !dbg !5028
  ret void, !dbg !5028
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #17

; Function Attrs: noinline nounwind optsize
define internal void @irtx_callback(i8* nocapture noundef readnone %0) #4 !dbg !5029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5033, metadata !DIExpression()), !dbg !5034
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #19, !dbg !5035
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #19, !dbg !5036
  ret void, !dbg !5037
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #4 !dbg !5038 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5048
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #20, !dbg !5048
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5040, metadata !DIExpression()), !dbg !5049
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #19, !dbg !5050
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #19, !dbg !5051
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #19, !dbg !5052
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #19, !dbg !5053
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5054
  store i32 9, i32* %7, align 4, !dbg !5055
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5056
  store i32 3, i32* %8, align 4, !dbg !5057
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5058
  store i32 0, i32* %9, align 4, !dbg !5059
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5060
  store i32 0, i32* %10, align 4, !dbg !5061
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #19, !dbg !5062
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #20, !dbg !5063
  ret void, !dbg !5063
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #2 !dbg !5064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5066, metadata !DIExpression()), !dbg !5068
  %2 = add i32 %0, -1, !dbg !5069
  %3 = icmp ugt i32 %2, 16777215, !dbg !5071
  br i1 %3, label %8, label %4, !dbg !5072

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5073
  call void @llvm.dbg.value(metadata i32 %5, metadata !5067, metadata !DIExpression()), !dbg !5068
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5074
  %7 = and i32 %6, -4, !dbg !5074
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5074
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5075
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5076
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5077
  br label %8, !dbg !5078

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5068
  ret i32 %9, !dbg !5079
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #2 !dbg !5080 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5081
  ret void, !dbg !5082
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #3 !dbg !5083 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5084
  ret i32 %1, !dbg !5085
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #4 !dbg !5086 {
  %1 = tail call i32 @top_mcu_freq_get() #19, !dbg !5087
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5088
  ret void, !dbg !5089
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #2 !dbg !5090 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5091
  %2 = or i32 %1, 15728640, !dbg !5091
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5091
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5092
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5093
  %4 = or i32 %3, 458752, !dbg !5093
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5093
  ret void, !dbg !5094
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #2 !dbg !5095 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5096
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5097
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5098
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5099
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5100
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5101
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5102
  ret void, !dbg !5103
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #0 !dbg !5104 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5106, metadata !DIExpression()), !dbg !5107
  ret i32 0, !dbg !5108
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #0 !dbg !5109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5159, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5160, metadata !DIExpression()), !dbg !5161
  ret i32 0, !dbg !5162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #0 !dbg !5163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5165, metadata !DIExpression()), !dbg !5166
  ret i32 1, !dbg !5167
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5168 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5172, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 %1, metadata !5173, metadata !DIExpression()), !dbg !5175
  call void @llvm.dbg.value(metadata i32 %2, metadata !5174, metadata !DIExpression()), !dbg !5175
  ret i32 0, !dbg !5176
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5181, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata i32 %1, metadata !5182, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata i32 %2, metadata !5183, metadata !DIExpression()), !dbg !5184
  ret i32 -1, !dbg !5185
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5190, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.value(metadata i8* %1, metadata !5191, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.value(metadata i32 %2, metadata !5192, metadata !DIExpression()), !dbg !5193
  ret i32 0, !dbg !5194
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #4 !dbg !5195 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5197, metadata !DIExpression()), !dbg !5201
  call void @llvm.dbg.value(metadata i8* %1, metadata !5198, metadata !DIExpression()), !dbg !5201
  call void @llvm.dbg.value(metadata i32 %2, metadata !5199, metadata !DIExpression()), !dbg !5201
  call void @llvm.dbg.value(metadata i32 0, metadata !5200, metadata !DIExpression()), !dbg !5201
  %4 = icmp sgt i32 %2, 0, !dbg !5202
  br i1 %4, label %5, label %14, !dbg !5205

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5200, metadata !DIExpression()), !dbg !5201
  call void @llvm.dbg.value(metadata i8* %7, metadata !5198, metadata !DIExpression()), !dbg !5201
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5206
  call void @llvm.dbg.value(metadata i8* %8, metadata !5198, metadata !DIExpression()), !dbg !5201
  %9 = load i8, i8* %7, align 1, !dbg !5208
  %10 = zext i8 %9 to i32, !dbg !5208
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #19, !dbg !5209
  %12 = add nuw nsw i32 %6, 1, !dbg !5210
  call void @llvm.dbg.value(metadata i32 %12, metadata !5200, metadata !DIExpression()), !dbg !5201
  %13 = icmp eq i32 %12, %2, !dbg !5202
  br i1 %13, label %14, label %5, !dbg !5205, !llvm.loop !5211

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5213
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 !dbg !524 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !727, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata i32 %1, metadata !728, metadata !DIExpression()), !dbg !5214
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #20, !dbg !5215, !srcloc !5216
  call void @llvm.dbg.value(metadata i8* %3, metadata !730, metadata !DIExpression()), !dbg !5214
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5217
  %5 = icmp eq i8* %4, null, !dbg !5219
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5220
  call void @llvm.dbg.value(metadata i8* %6, metadata !729, metadata !DIExpression()), !dbg !5214
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5221
  %8 = icmp ult i8* %3, %7, !dbg !5223
  %9 = xor i1 %8, true, !dbg !5224
  %10 = or i1 %5, %9, !dbg !5224
  br i1 %10, label %11, label %13, !dbg !5224

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5225
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5224
  br label %13, !dbg !5224

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5225
  ret i8* %14, !dbg !5224
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #16 !dbg !5226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5228, metadata !DIExpression()), !dbg !5229
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #19, !dbg !5230
  br label %3, !dbg !5231

3:                                                ; preds = %1, %3
  br label %3, !dbg !5231, !llvm.loop !5232
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !dbg !5234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5238, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.value(metadata i32 %1, metadata !5239, metadata !DIExpression()), !dbg !5240
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.20, i32 0, i32 0), i32 noundef %1) #19, !dbg !5241
  ret i32 -1, !dbg !5242
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #4 !dbg !5243 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.21, i32 0, i32 0)) #19, !dbg !5248
  ret i32 0, !dbg !5249
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { mustprogress nofree noinline nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { mustprogress nofree noinline nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { mustprogress nofree noinline nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #16 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #17 = { argmemonly nofree nounwind willreturn }
attributes #18 = { nobuiltin optsize "no-builtins" }
attributes #19 = { nobuiltin nounwind optsize "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!747, !792, !804, !2, !885, !930, !24, !42, !964, !78, !164, !966, !314, !350, !1037, !464, !722, !733}
!llvm.ident = !{!1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041}
!llvm.module.flags = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_irtx_mode", scope: !2, file: !3, line: 60, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/ir_tx.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_IR_PROTOCOL", file: !6, line: 94, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_irtx.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "IR_NEC", value: 0)
!10 = !DIEnumerator(name: "IR_RC5", value: 1)
!11 = !DIEnumerator(name: "IR_RC6", value: 2)
!12 = !DIEnumerator(name: "IR_SWM", value: 3)
!13 = !DIEnumerator(name: "IR_SW_PULSE_WIDTH", value: 4)
!14 = !DIEnumerator(name: "IR_PROTOCOL_NUM", value: 5)
!15 = !{!16, !17}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IR_PROTOCOL", file: !6, line: 101, baseType: !5)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !18, line: 62, baseType: !7)
!18 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!19 = !{!0}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !18, line: 59, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !24, file: !25, line: 43, type: !31, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !26, globals: !37, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!26 = !{!27, !17, !29, !35}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 48, baseType: !33)
!32 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 79, baseType: !7)
!34 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!37 = !{!22, !38}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !24, file: !25, line: 44, type: !31, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !42, file: !43, line: 54, type: !31, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, retainedTypes: !68, globals: !75, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!44 = !{!45, !51}
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 71, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "UART_PORT0", value: 0)
!49 = !DIEnumerator(name: "UART_PORT1", value: 1)
!50 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 129, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!54 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!55 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!56 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!57 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!58 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!59 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!60 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!61 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!62 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!63 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!64 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!65 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!66 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!67 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!68 = !{!27, !31, !69, !71, !20, !73, !17}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !18, line: 113, baseType: !72)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!75 = !{!40}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !78, file: !79, line: 51, type: !160, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !128, globals: !159, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!80 = !{!81, !93, !112, !119}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 163, baseType: !83, size: 32, elements: !84)
!82 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92}
!85 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!86 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!87 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!88 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!89 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!90 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!91 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!92 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 186, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!95 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!96 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!97 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!98 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!99 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!100 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!101 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!102 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!103 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!104 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!105 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!106 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!107 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!108 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!109 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!110 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!111 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 176, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!115 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!116 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!117 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!118 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 99, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!123 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!124 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!125 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!126 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!127 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!128 = !{!129, !158}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !131, line: 72, baseType: !132)
!131 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 56, size: 525312, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !148, !149, !153, !157}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !132, file: !131, line: 57, baseType: !30, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !132, file: !131, line: 58, baseType: !30, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !132, file: !131, line: 59, baseType: !30, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !132, file: !131, line: 60, baseType: !30, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !132, file: !131, line: 61, baseType: !30, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !132, file: !131, line: 62, baseType: !30, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !132, file: !131, line: 63, baseType: !30, size: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !132, file: !131, line: 64, baseType: !30, size: 32, offset: 224)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !132, file: !131, line: 65, baseType: !30, size: 32, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !132, file: !131, line: 66, baseType: !30, size: 32, offset: 288)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !132, file: !131, line: 67, baseType: !145, size: 32, offset: 320)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 1)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !132, file: !131, line: 68, baseType: !30, size: 32, offset: 352)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !132, file: !131, line: 69, baseType: !150, size: 523904, offset: 384)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 523904, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 16372)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !132, file: !131, line: 70, baseType: !154, size: 512, offset: 524288)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !132, file: !131, line: 71, baseType: !154, size: 512, offset: 524800)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!159 = !{!76}
!160 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !161)
!161 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !164, file: !165, line: 53, type: !301, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !220, globals: !300, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!166 = !{!167, !175}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 152, baseType: !83, size: 32, elements: !169)
!168 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!169 = !{!170, !171, !172, !173, !174}
!170 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!171 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!172 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!173 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!174 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !176, line: 47, baseType: !83, size: 32, elements: !177)
!176 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!178 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!179 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!180 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!181 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!182 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!183 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!184 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!185 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!186 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!187 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!188 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!189 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!190 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!191 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!192 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!193 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!194 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!195 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!196 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!197 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!198 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!199 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!200 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!201 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!202 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!203 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!204 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!205 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!206 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!207 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!208 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!209 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!210 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!211 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!212 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!213 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!214 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!215 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!216 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!217 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!218 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!219 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!220 = !{!221, !158, !31, !223, !225, !261}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !176, line: 97, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !176, line: 95, baseType: !175)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !32, line: 44, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !34, line: 77, baseType: !83)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !227, line: 378, baseType: !228)
!227 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 363, size: 28704, elements: !229)
!229 = !{!230, !234, !238, !239, !240, !241, !242, !243, !244, !245, !249, !256, !260}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !228, file: !227, line: 365, baseType: !231, size: 256)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !228, file: !227, line: 366, baseType: !235, size: 768, offset: 256)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 768, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 24)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !228, file: !227, line: 367, baseType: !231, size: 256, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !228, file: !227, line: 368, baseType: !235, size: 768, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !228, file: !227, line: 369, baseType: !231, size: 256, offset: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !228, file: !227, line: 370, baseType: !235, size: 768, offset: 2304)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !228, file: !227, line: 371, baseType: !231, size: 256, offset: 3072)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !228, file: !227, line: 372, baseType: !235, size: 768, offset: 3328)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !228, file: !227, line: 373, baseType: !231, size: 256, offset: 4096)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !228, file: !227, line: 374, baseType: !246, size: 1792, offset: 4352)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1792, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 56)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !228, file: !227, line: 375, baseType: !250, size: 1920, offset: 6144)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 1920, elements: !254)
!251 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 43, baseType: !21)
!254 = !{!255}
!255 = !DISubrange(count: 240)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !228, file: !227, line: 376, baseType: !257, size: 20608, offset: 8064)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 20608, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 644)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !228, file: !227, line: 377, baseType: !30, size: 32, offset: 28672)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !227, line: 418, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 395, size: 1120, elements: !264)
!264 = !{!265, !267, !268, !269, !270, !271, !272, !276, !277, !278, !279, !280, !281, !282, !283, !287, !288, !289, !293, !297, !299}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !263, file: !227, line: 397, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !263, file: !227, line: 398, baseType: !30, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !263, file: !227, line: 399, baseType: !30, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !263, file: !227, line: 400, baseType: !30, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !263, file: !227, line: 401, baseType: !30, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !263, file: !227, line: 402, baseType: !30, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !263, file: !227, line: 403, baseType: !273, size: 96, offset: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 96, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 12)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !263, file: !227, line: 404, baseType: !30, size: 32, offset: 288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !263, file: !227, line: 405, baseType: !30, size: 32, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !263, file: !227, line: 406, baseType: !30, size: 32, offset: 352)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !263, file: !227, line: 407, baseType: !30, size: 32, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !263, file: !227, line: 408, baseType: !30, size: 32, offset: 416)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !263, file: !227, line: 409, baseType: !30, size: 32, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !263, file: !227, line: 410, baseType: !30, size: 32, offset: 480)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !263, file: !227, line: 411, baseType: !284, size: 64, offset: 512)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !263, file: !227, line: 412, baseType: !266, size: 32, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !263, file: !227, line: 413, baseType: !266, size: 32, offset: 608)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !263, file: !227, line: 414, baseType: !290, size: 128, offset: 640)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 128, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 4)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !263, file: !227, line: 415, baseType: !294, size: 160, offset: 768)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 160, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 5)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !263, file: !227, line: 416, baseType: !298, size: 160, offset: 928)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !295)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !263, file: !227, line: 417, baseType: !30, size: 32, offset: 1088)
!300 = !{!162}
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 6144, elements: !310)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !165, line: 50, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 47, size: 64, elements: !304)
!304 = !{!305, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !303, file: !165, line: 48, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !221}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !303, file: !165, line: 49, baseType: !31, size: 32, offset: 32)
!310 = !{!311}
!311 = !DISubrange(count: 96)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "g_callback_user_data", scope: !314, file: !315, line: 54, type: !158, isLocal: false, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !316, retainedTypes: !334, globals: !337, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_irtx.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!316 = !{!317, !322, !326, !175, !330}
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 198, baseType: !83, size: 32, elements: !319)
!318 = !DIFile(filename: "../../../../../driver/chip/inc/hal_irtx.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!319 = !{!320, !321}
!320 = !DIEnumerator(name: "HAL_IRTX_STATUS_ERROR", value: -1)
!321 = !DIEnumerator(name: "HAL_IRTX_STATUS_OK", value: 0)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 191, baseType: !7, size: 32, elements: !323)
!323 = !{!324, !325}
!324 = !DIEnumerator(name: "HAL_IRTX_REPEAT_ENABLE", value: 0)
!325 = !DIEnumerator(name: "HAL_IRTX_REPEAT_DISABLE", value: 1)
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 205, baseType: !83, size: 32, elements: !327)
!327 = !{!328, !329}
!328 = !DIEnumerator(name: "HAL_IRTX_EVENT_TRANSACTION_ERROR", value: -1)
!329 = !DIEnumerator(name: "HAL_IRTX_EVENT_TRANSACTION_SUCCESS", value: 0)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 212, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333}
!332 = !DIEnumerator(name: "HAL_IRTX_IDLE", value: 0)
!333 = !DIEnumerator(name: "HAL_IRTX_BUSY", value: 1)
!334 = !{!335, !252, !222, !158}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !32, line: 36, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !34, line: 57, baseType: !72)
!337 = !{!312, !338, !340}
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "irtx_status", scope: !314, file: !315, line: 55, type: !161, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "g_pulse_data_callback", scope: !314, file: !315, line: 53, type: !342, isLocal: true, isDefinition: true)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irtx_pulse_data_callback_t", file: !318, line: 237, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !346, !158}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irtx_event_t", file: !318, line: 208, baseType: !326)
!347 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !350, file: !351, line: 77, type: !420, isLocal: true, isDefinition: true)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !352, retainedTypes: !403, globals: !405, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!352 = !{!353, !361, !367, !383, !389, !393, !45, !51, !398}
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 345, baseType: !83, size: 32, elements: !355)
!354 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!355 = !{!356, !357, !358, !359, !360}
!356 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!357 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!358 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!359 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!360 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !362, line: 109, baseType: !7, size: 32, elements: !363)
!362 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!363 = !{!364, !365, !366}
!364 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!365 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!366 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 302, baseType: !7, size: 32, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!369 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!370 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!371 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!372 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!373 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!374 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!375 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!376 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!377 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!378 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!379 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!380 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!381 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!382 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 321, baseType: !7, size: 32, elements: !384)
!384 = !{!385, !386, !387, !388}
!385 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!386 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!387 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!388 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!389 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 330, baseType: !7, size: 32, elements: !390)
!390 = !{!391, !392}
!391 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!392 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!393 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 337, baseType: !7, size: 32, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!396 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!397 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!398 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !354, line: 355, baseType: !83, size: 32, elements: !399)
!399 = !{!400, !401, !402}
!400 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!401 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!402 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!403 = !{!7, !158, !21, !404, !252}
!404 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!405 = !{!348, !406}
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "func_tbl", scope: !408, file: !351, line: 536, type: !418, isLocal: true, isDefinition: true)
!408 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !351, file: !351, line: 534, type: !409, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !416)
!409 = !DISubroutineType(types: !410)
!410 = !{!411, !415}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !52, line: 197, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!413 = !DISubroutineType(types: !414)
!414 = !{null}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !362, line: 113, baseType: !361)
!416 = !{!417}
!417 = !DILocalVariable(name: "uart_port", arg: 1, scope: !408, file: !351, line: 534, type: !415)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 64, elements: !285)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 1024, elements: !285)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !351, line: 75, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 68, size: 512, elements: !423)
!423 = !{!424, !425, !437, !438, !449, !450}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !422, file: !351, line: 69, baseType: !161, size: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !422, file: !351, line: 70, baseType: !426, size: 128, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !354, line: 378, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 373, size: 128, elements: !428)
!428 = !{!429, !431, !433, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !427, file: !354, line: 374, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !354, line: 317, baseType: !367)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !427, file: !354, line: 375, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !354, line: 326, baseType: !383)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !427, file: !354, line: 376, baseType: !434, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !354, line: 333, baseType: !389)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !427, file: !354, line: 377, baseType: !436, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !354, line: 341, baseType: !393)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !422, file: !351, line: 71, baseType: !161, size: 8, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !422, file: !351, line: 72, baseType: !439, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !351, line: 66, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 63, size: 64, elements: !441)
!441 = !{!442, !448}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !440, file: !351, line: 64, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !354, line: 410, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 32)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447, !158}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !354, line: 359, baseType: !398)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !440, file: !351, line: 65, baseType: !158, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !422, file: !351, line: 73, baseType: !161, size: 8, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !422, file: !351, line: 74, baseType: !451, size: 224, offset: 288)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !354, line: 390, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 382, size: 224, elements: !453)
!453 = !{!454, !456, !457, !458, !459, !460, !461}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !452, file: !354, line: 383, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !452, file: !354, line: 384, baseType: !31, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !452, file: !354, line: 385, baseType: !31, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !452, file: !354, line: 386, baseType: !455, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !452, file: !354, line: 387, baseType: !31, size: 32, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !452, file: !354, line: 388, baseType: !31, size: 32, offset: 160)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !452, file: !354, line: 389, baseType: !31, size: 32, offset: 192)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !464, file: !465, line: 59, type: !31, isLocal: false, isDefinition: true)
!464 = distinct !DICompileUnit(language: DW_LANG_C99, file: !465, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !466, globals: !519, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/irtx_send_pwd_data/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!466 = !{!467, !475, !500}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !227, line: 656, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 650, size: 128, elements: !470)
!470 = !{!471, !472, !473, !474}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !469, file: !227, line: 652, baseType: !30, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !469, file: !227, line: 653, baseType: !30, size: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !469, file: !227, line: 654, baseType: !30, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !469, file: !227, line: 655, baseType: !266, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !227, line: 418, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 395, size: 1120, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !477, file: !227, line: 397, baseType: !266, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !477, file: !227, line: 398, baseType: !30, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !477, file: !227, line: 399, baseType: !30, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !477, file: !227, line: 400, baseType: !30, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !477, file: !227, line: 401, baseType: !30, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !477, file: !227, line: 402, baseType: !30, size: 32, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !477, file: !227, line: 403, baseType: !273, size: 96, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !477, file: !227, line: 404, baseType: !30, size: 32, offset: 288)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !477, file: !227, line: 405, baseType: !30, size: 32, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !477, file: !227, line: 406, baseType: !30, size: 32, offset: 352)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !477, file: !227, line: 407, baseType: !30, size: 32, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !477, file: !227, line: 408, baseType: !30, size: 32, offset: 416)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !477, file: !227, line: 409, baseType: !30, size: 32, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !477, file: !227, line: 410, baseType: !30, size: 32, offset: 480)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !477, file: !227, line: 411, baseType: !284, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !477, file: !227, line: 412, baseType: !266, size: 32, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !477, file: !227, line: 413, baseType: !266, size: 32, offset: 608)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !477, file: !227, line: 414, baseType: !290, size: 128, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !477, file: !227, line: 415, baseType: !294, size: 160, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !477, file: !227, line: 416, baseType: !298, size: 160, offset: 928)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !477, file: !227, line: 417, baseType: !30, size: 32, offset: 1088)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !131, line: 72, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 56, size: 525312, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !502, file: !131, line: 57, baseType: !30, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !502, file: !131, line: 58, baseType: !30, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !502, file: !131, line: 59, baseType: !30, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !502, file: !131, line: 60, baseType: !30, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !502, file: !131, line: 61, baseType: !30, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !502, file: !131, line: 62, baseType: !30, size: 32, offset: 160)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !502, file: !131, line: 63, baseType: !30, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !502, file: !131, line: 64, baseType: !30, size: 32, offset: 224)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !502, file: !131, line: 65, baseType: !30, size: 32, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !502, file: !131, line: 66, baseType: !30, size: 32, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !502, file: !131, line: 67, baseType: !145, size: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !502, file: !131, line: 68, baseType: !30, size: 32, offset: 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !502, file: !131, line: 69, baseType: !150, size: 523904, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !502, file: !131, line: 70, baseType: !154, size: 512, offset: 524288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !502, file: !131, line: 71, baseType: !154, size: 512, offset: 524800)
!519 = !{!462, !520}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !464, file: !465, line: 61, type: !30, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(name: "heap_end", scope: !524, file: !525, line: 66, type: !530, isLocal: true, isDefinition: true)
!524 = distinct !DISubprogram(name: "_sbrk_r", scope: !525, file: !525, line: 63, type: !526, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !726)
!525 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !531, !721}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !529, line: 123, baseType: !530)
!529 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !533, line: 377, size: 1920, elements: !534)
!533 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!534 = !{!535, !536, !610, !611, !612, !613, !614, !615, !616, !619, !640, !644, !645, !646, !647, !657, !670, !671, !676, !695, !696, !703, !704, !720}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !532, file: !533, line: 381, baseType: !83, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !532, file: !533, line: 386, baseType: !537, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !533, line: 292, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !533, line: 186, size: 832, elements: !540)
!540 = !{!541, !543, !544, !545, !547, !548, !553, !554, !555, !556, !560, !566, !573, !577, !578, !579, !580, !584, !586, !587, !588, !590, !596, !609}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !539, file: !533, line: 187, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !539, file: !533, line: 188, baseType: !83, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !539, file: !533, line: 189, baseType: !83, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !539, file: !533, line: 190, baseType: !546, size: 16, offset: 96)
!546 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !539, file: !533, line: 191, baseType: !546, size: 16, offset: 112)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !539, file: !533, line: 192, baseType: !549, size: 64, offset: 128)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !533, line: 122, size: 64, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !549, file: !533, line: 123, baseType: !542, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !549, file: !533, line: 124, baseType: !83, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !539, file: !533, line: 193, baseType: !83, size: 32, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !539, file: !533, line: 196, baseType: !531, size: 32, offset: 224)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !539, file: !533, line: 200, baseType: !158, size: 32, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !539, file: !533, line: 202, baseType: !557, size: 32, offset: 288)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 32)
!558 = !DISubroutineType(types: !559)
!559 = !{!83, !531, !158, !530, !83}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !539, file: !533, line: 204, baseType: !561, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 32)
!562 = !DISubroutineType(types: !563)
!563 = !{!83, !531, !158, !564, !83}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !539, file: !533, line: 207, baseType: !567, size: 32, offset: 352)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 32)
!568 = !DISubroutineType(types: !569)
!569 = !{!570, !531, !158, !570, !83}
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !571, line: 116, baseType: !572)
!571 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!572 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !539, file: !533, line: 208, baseType: !574, size: 32, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 32)
!575 = !DISubroutineType(types: !576)
!576 = !{!83, !531, !158}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !539, file: !533, line: 211, baseType: !549, size: 64, offset: 416)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !539, file: !533, line: 212, baseType: !542, size: 32, offset: 480)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !539, file: !533, line: 213, baseType: !83, size: 32, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !539, file: !533, line: 216, baseType: !581, size: 24, offset: 544)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 3)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !539, file: !533, line: 217, baseType: !585, size: 8, offset: 568)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !146)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !539, file: !533, line: 220, baseType: !549, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !539, file: !533, line: 223, baseType: !83, size: 32, offset: 640)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !539, file: !533, line: 224, baseType: !589, size: 32, offset: 672)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !571, line: 46, baseType: !572)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !539, file: !533, line: 231, baseType: !591, size: 32, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !533, line: 35, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !593, line: 34, baseType: !594)
!593 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 32)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !593, line: 33, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !539, file: !533, line: 233, baseType: !597, size: 64, offset: 736)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !571, line: 170, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 162, size: 64, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !598, file: !571, line: 164, baseType: !83, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !598, file: !571, line: 169, baseType: !602, size: 32, offset: 32)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !571, line: 165, size: 32, elements: !603)
!603 = !{!604, !607}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !602, file: !571, line: 167, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !606, line: 116, baseType: !83)
!606 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!607 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !602, file: !571, line: 168, baseType: !608, size: 32)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !291)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !539, file: !533, line: 234, baseType: !83, size: 32, offset: 800)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !532, file: !533, line: 386, baseType: !537, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !532, file: !533, line: 386, baseType: !537, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !532, file: !533, line: 388, baseType: !83, size: 32, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !532, file: !533, line: 390, baseType: !530, size: 32, offset: 160)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !532, file: !533, line: 392, baseType: !83, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !532, file: !533, line: 394, baseType: !83, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !532, file: !533, line: 395, baseType: !617, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 32)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !533, line: 45, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !532, file: !533, line: 397, baseType: !620, size: 32, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 32)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !533, line: 349, size: 128, elements: !622)
!622 = !{!623, !636, !637, !638}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !621, file: !533, line: 352, baseType: !624, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 32)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !533, line: 52, size: 192, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !625, file: !533, line: 54, baseType: !624, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !625, file: !533, line: 55, baseType: !83, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !625, file: !533, line: 55, baseType: !83, size: 32, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !625, file: !533, line: 55, baseType: !83, size: 32, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !625, file: !533, line: 55, baseType: !83, size: 32, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !625, file: !533, line: 56, baseType: !633, size: 32, offset: 160)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 32, elements: !146)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !533, line: 22, baseType: !635)
!635 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !621, file: !533, line: 353, baseType: !83, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !621, file: !533, line: 354, baseType: !624, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !621, file: !533, line: 355, baseType: !639, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !532, file: !533, line: 399, baseType: !641, size: 32, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 32)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !531}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !532, file: !533, line: 401, baseType: !83, size: 32, offset: 352)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !532, file: !533, line: 404, baseType: !83, size: 32, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !532, file: !533, line: 405, baseType: !530, size: 32, offset: 416)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !532, file: !533, line: 407, baseType: !648, size: 32, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 32)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !533, line: 324, size: 192, elements: !650)
!650 = !{!651, !653, !654, !655}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !649, file: !533, line: 325, baseType: !652, size: 48)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 48, elements: !582)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !649, file: !533, line: 326, baseType: !652, size: 48, offset: 48)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !649, file: !533, line: 327, baseType: !72, size: 16, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !649, file: !533, line: 330, baseType: !656, size: 64, offset: 128)
!656 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !532, file: !533, line: 408, baseType: !658, size: 32, offset: 480)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 32)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !533, line: 60, size: 288, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !659, file: !533, line: 62, baseType: !83, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !659, file: !533, line: 63, baseType: !83, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !659, file: !533, line: 64, baseType: !83, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !659, file: !533, line: 65, baseType: !83, size: 32, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !659, file: !533, line: 66, baseType: !83, size: 32, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !659, file: !533, line: 67, baseType: !83, size: 32, offset: 160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !659, file: !533, line: 68, baseType: !83, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !659, file: !533, line: 69, baseType: !83, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !659, file: !533, line: 70, baseType: !83, size: 32, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !532, file: !533, line: 409, baseType: !530, size: 32, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !532, file: !533, line: 412, baseType: !672, size: 32, offset: 544)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 32)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !83}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !532, file: !533, line: 416, baseType: !677, size: 32, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 32)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !533, line: 90, size: 1120, elements: !679)
!679 = !{!680, !681, !682, !686}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !678, file: !533, line: 91, baseType: !677, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !678, file: !533, line: 92, baseType: !83, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !678, file: !533, line: 93, baseType: !683, size: 1024, offset: 64)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !678, file: !533, line: 94, baseType: !687, size: 32, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 32)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !533, line: 79, size: 2112, elements: !689)
!689 = !{!690, !692, !693, !694}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !688, file: !533, line: 80, baseType: !691, size: 1024)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !684)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !688, file: !533, line: 81, baseType: !691, size: 1024, offset: 1024)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !688, file: !533, line: 83, baseType: !634, size: 32, offset: 2048)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !688, file: !533, line: 86, baseType: !634, size: 32, offset: 2080)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !532, file: !533, line: 417, baseType: !678, size: 1120, offset: 608)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !532, file: !533, line: 420, baseType: !697, size: 96, offset: 1728)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !533, line: 296, size: 96, elements: !698)
!698 = !{!699, !701, !702}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !697, file: !533, line: 298, baseType: !700, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !697, file: !533, line: 299, baseType: !83, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !697, file: !533, line: 300, baseType: !537, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !532, file: !533, line: 421, baseType: !537, size: 32, offset: 1824)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !532, file: !533, line: 422, baseType: !705, size: 32, offset: 1856)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 32)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !533, line: 359, size: 640, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !714, !715, !716, !717, !718, !719}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !706, file: !533, line: 362, baseType: !530, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !706, file: !533, line: 363, baseType: !597, size: 64, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !706, file: !533, line: 364, baseType: !597, size: 64, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !706, file: !533, line: 365, baseType: !597, size: 64, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !706, file: !533, line: 366, baseType: !713, size: 64, offset: 224)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 64, elements: !232)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !706, file: !533, line: 367, baseType: !83, size: 32, offset: 288)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !706, file: !533, line: 368, baseType: !597, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !706, file: !533, line: 369, baseType: !597, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !706, file: !533, line: 370, baseType: !597, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !706, file: !533, line: 371, baseType: !597, size: 64, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !706, file: !533, line: 372, baseType: !597, size: 64, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !532, file: !533, line: 423, baseType: !530, size: 32, offset: 1888)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !606, line: 46, baseType: !7)
!722 = distinct !DICompileUnit(language: DW_LANG_C99, file: !723, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !724, globals: !725, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!724 = !{!530, !528}
!725 = !{!522}
!726 = !{!727, !728, !729, !730}
!727 = !DILocalVariable(name: "r", arg: 1, scope: !524, file: !525, line: 63, type: !531)
!728 = !DILocalVariable(name: "nbytes", arg: 2, scope: !524, file: !525, line: 63, type: !721)
!729 = !DILocalVariable(name: "prev_heap_end", scope: !524, file: !525, line: 67, type: !530)
!730 = !DILocalVariable(name: "stack", scope: !524, file: !525, line: 68, type: !530)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !733, file: !738, line: 4, type: !744, isLocal: false, isDefinition: true)
!733 = distinct !DICompileUnit(language: DW_LANG_C99, file: !734, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!735 = !{!731, !736, !742}
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !733, file: !738, line: 5, type: !739, isLocal: false, isDefinition: true)
!738 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 88, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 11)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !733, file: !738, line: 6, type: !739, isLocal: false, isDefinition: true)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 248, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 31)
!747 = distinct !DICompileUnit(language: DW_LANG_C99, file: !748, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !749, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_irtx.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!749 = !{!750, !5}
!750 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_HAL_RET_T", file: !751, line: 365, baseType: !21, size: 8, elements: !752)
!751 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!752 = !{!753, !754}
!753 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!754 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!755 = !{!756, !17, !16, !790, !27}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_IRTX_TypeDef", file: !751, line: 455, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 32)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IOT_IRTX_TypeDef", file: !751, line: 424, size: 960, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXCFG", scope: !758, file: !751, line: 425, baseType: !36, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXD0", scope: !758, file: !751, line: 426, baseType: !36, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXD1", scope: !758, file: !751, line: 427, baseType: !36, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXD2", scope: !758, file: !751, line: 428, baseType: !36, size: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_L0H", scope: !758, file: !751, line: 429, baseType: !36, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_L0L", scope: !758, file: !751, line: 430, baseType: !36, size: 32, offset: 160)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_L1H", scope: !758, file: !751, line: 431, baseType: !36, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_L1L", scope: !758, file: !751, line: 432, baseType: !36, size: 32, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXSYNCH", scope: !758, file: !751, line: 433, baseType: !36, size: 32, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXSYNCL", scope: !758, file: !751, line: 434, baseType: !36, size: 32, offset: 288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "IRTXMT", scope: !758, file: !751, line: 435, baseType: !36, size: 32, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_INT_CLR", scope: !758, file: !751, line: 436, baseType: !36, size: 32, offset: 352)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_BP", scope: !758, file: !751, line: 437, baseType: !36, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW0", scope: !758, file: !751, line: 438, baseType: !36, size: 32, offset: 416)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW1", scope: !758, file: !751, line: 439, baseType: !36, size: 32, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW2", scope: !758, file: !751, line: 440, baseType: !36, size: 32, offset: 480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW3", scope: !758, file: !751, line: 441, baseType: !36, size: 32, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW4", scope: !758, file: !751, line: 442, baseType: !36, size: 32, offset: 544)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW5", scope: !758, file: !751, line: 443, baseType: !36, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW6", scope: !758, file: !751, line: 444, baseType: !36, size: 32, offset: 608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW7", scope: !758, file: !751, line: 445, baseType: !36, size: 32, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW8", scope: !758, file: !751, line: 446, baseType: !36, size: 32, offset: 672)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW9", scope: !758, file: !751, line: 447, baseType: !36, size: 32, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW10", scope: !758, file: !751, line: 448, baseType: !36, size: 32, offset: 736)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW11", scope: !758, file: !751, line: 449, baseType: !36, size: 32, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW12", scope: !758, file: !751, line: 450, baseType: !36, size: 32, offset: 800)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW13", scope: !758, file: !751, line: 451, baseType: !36, size: 32, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW14", scope: !758, file: !751, line: 452, baseType: !36, size: 32, offset: 864)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW15", scope: !758, file: !751, line: 453, baseType: !36, size: 32, offset: 896)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "IRTX_SWM_PW16", scope: !758, file: !751, line: 454, baseType: !36, size: 32, offset: 928)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT32", file: !18, line: 86, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!792 = distinct !DICompileUnit(language: DW_LANG_C99, file: !793, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !794, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!794 = !{!795}
!795 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !796, line: 1209, baseType: !7, size: 32, elements: !797)
!796 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!797 = !{!798, !799}
!798 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!799 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!800 = !{!801, !803}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !18, line: 116, baseType: !7)
!804 = distinct !DICompileUnit(language: DW_LANG_C99, file: !805, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !806, retainedTypes: !884, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!806 = !{!807}
!807 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !808, line: 150, baseType: !7, size: 32, elements: !809)
!808 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!810 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!811 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!812 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!813 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!814 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!815 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!816 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!817 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!818 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!819 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!820 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!821 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!822 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!823 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!824 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!825 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!826 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!827 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!828 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!829 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!830 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!831 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!832 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!833 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!834 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!835 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!836 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!837 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!838 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!839 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!840 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!841 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!842 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!843 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!844 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!845 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!846 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!847 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!848 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!849 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!850 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!851 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!852 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!853 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!854 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!855 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!856 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!857 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!858 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!859 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!860 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!861 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!862 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!863 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!864 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!865 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!866 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!867 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!868 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!869 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!870 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!871 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!872 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!873 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!874 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!875 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!876 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!877 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!878 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!879 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!880 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!881 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!882 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!883 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!884 = !{!801, !17}
!885 = distinct !DICompileUnit(language: DW_LANG_C99, file: !886, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !887, splitDebugInlining: false, nameTableKind: None)
!886 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!887 = !{!888, !913}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !227, line: 418, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 395, size: 1120, elements: !891)
!891 = !{!892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !890, file: !227, line: 397, baseType: !266, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !890, file: !227, line: 398, baseType: !30, size: 32, offset: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !890, file: !227, line: 399, baseType: !30, size: 32, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !890, file: !227, line: 400, baseType: !30, size: 32, offset: 96)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !890, file: !227, line: 401, baseType: !30, size: 32, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !890, file: !227, line: 402, baseType: !30, size: 32, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !890, file: !227, line: 403, baseType: !273, size: 96, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !890, file: !227, line: 404, baseType: !30, size: 32, offset: 288)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !890, file: !227, line: 405, baseType: !30, size: 32, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !890, file: !227, line: 406, baseType: !30, size: 32, offset: 352)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !890, file: !227, line: 407, baseType: !30, size: 32, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !890, file: !227, line: 408, baseType: !30, size: 32, offset: 416)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !890, file: !227, line: 409, baseType: !30, size: 32, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !890, file: !227, line: 410, baseType: !30, size: 32, offset: 480)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !890, file: !227, line: 411, baseType: !284, size: 64, offset: 512)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !890, file: !227, line: 412, baseType: !266, size: 32, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !890, file: !227, line: 413, baseType: !266, size: 32, offset: 608)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !890, file: !227, line: 414, baseType: !290, size: 128, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !890, file: !227, line: 415, baseType: !294, size: 160, offset: 768)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !890, file: !227, line: 416, baseType: !298, size: 160, offset: 928)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !890, file: !227, line: 417, baseType: !30, size: 32, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !227, line: 378, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 363, size: 28704, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !915, file: !227, line: 365, baseType: !231, size: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !915, file: !227, line: 366, baseType: !235, size: 768, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !915, file: !227, line: 367, baseType: !231, size: 256, offset: 1024)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !915, file: !227, line: 368, baseType: !235, size: 768, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !915, file: !227, line: 369, baseType: !231, size: 256, offset: 2048)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !915, file: !227, line: 370, baseType: !235, size: 768, offset: 2304)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !915, file: !227, line: 371, baseType: !231, size: 256, offset: 3072)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !915, file: !227, line: 372, baseType: !235, size: 768, offset: 3328)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !915, file: !227, line: 373, baseType: !231, size: 256, offset: 4096)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !915, file: !227, line: 374, baseType: !246, size: 1792, offset: 4352)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !915, file: !227, line: 375, baseType: !250, size: 1920, offset: 6144)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !915, file: !227, line: 376, baseType: !257, size: 20608, offset: 8064)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !915, file: !227, line: 377, baseType: !30, size: 32, offset: 28672)
!930 = distinct !DICompileUnit(language: DW_LANG_C99, file: !931, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !932, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!932 = !{!933, !807}
!933 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !934, line: 55, baseType: !7, size: 32, elements: !935)
!934 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!935 = !{!936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963}
!936 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!937 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!938 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!939 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!940 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!941 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!942 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!943 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!944 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!945 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!946 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!947 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!948 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!949 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!950 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!951 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!952 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!953 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!954 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!955 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!956 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!957 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!958 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!959 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!960 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!961 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!962 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!963 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!964 = distinct !DICompileUnit(language: DW_LANG_C99, file: !965, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!966 = distinct !DICompileUnit(language: DW_LANG_C99, file: !967, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !968, retainedTypes: !1032, splitDebugInlining: false, nameTableKind: None)
!967 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!968 = !{!969, !976, !933, !1007, !1013, !1017, !1021, !1027}
!969 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 233, baseType: !83, size: 32, elements: !971)
!970 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!971 = !{!972, !973, !974, !975}
!972 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!973 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!974 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!975 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !362, line: 249, baseType: !7, size: 32, elements: !977)
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
!1007 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !970, line: 224, baseType: !83, size: 32, elements: !1008)
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
!1028 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!1029 = !{!1030, !1031}
!1030 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1031 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1032 = !{!1033, !158, !1034, !252, !1035, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !934, line: 87, baseType: !933)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !970, line: 220, baseType: !1013)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !970, line: 247, baseType: !1021)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1028, line: 60, baseType: !1027)
!1037 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1038, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1039, retainedTypes: !1040, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/irtx_send_pwd_data/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!1039 = !{!361, !367, !383, !389, !393, !976, !326}
!1040 = !{!342, !158}
!1041 = !{!"Ubuntu clang version 14.0.6"}
!1042 = !{i32 7, !"Dwarf Version", i32 2}
!1043 = !{i32 2, !"Debug Info Version", i32 3}
!1044 = !{i32 1, !"wchar_size", i32 4}
!1045 = !{i32 1, !"min_enum_size", i32 4}
!1046 = !{i32 1, !"branch-target-enforcement", i32 0}
!1047 = !{i32 1, !"sign-return-address", i32 0}
!1048 = !{i32 1, !"sign-return-address-all", i32 0}
!1049 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1050 = !{i32 7, !"frame-pointer", i32 2}
!1051 = distinct !DISubprogram(name: "halIrTxRound", scope: !748, file: !748, line: 101, type: !1052, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!20, !17, !17, !17}
!1054 = !{!1055, !1056, !1057}
!1055 = !DILocalVariable(name: "x", arg: 1, scope: !1051, file: !748, line: 101, type: !17)
!1056 = !DILocalVariable(name: "y", arg: 2, scope: !1051, file: !748, line: 101, type: !17)
!1057 = !DILocalVariable(name: "z", arg: 3, scope: !1051, file: !748, line: 101, type: !17)
!1058 = !DILocation(line: 0, scope: !1051)
!1059 = !DILocation(line: 110, column: 18, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1051, file: !748, line: 110, column: 9)
!1061 = !DILocation(line: 110, column: 13, scope: !1060)
!1062 = !DILocation(line: 110, column: 24, scope: !1060)
!1063 = !DILocation(line: 110, column: 29, scope: !1060)
!1064 = !DILocation(line: 115, column: 1, scope: !1051)
!1065 = distinct !DISubprogram(name: "halIrTxInit", scope: !748, file: !748, line: 131, type: !1066, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !1069)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !20, !20, !20}
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !751, line: 368, baseType: !750)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075}
!1070 = !DILocalVariable(name: "ucOutputSel", arg: 1, scope: !1065, file: !748, line: 131, type: !20)
!1071 = !DILocalVariable(name: "ucRegOrder", arg: 2, scope: !1065, file: !748, line: 131, type: !20)
!1072 = !DILocalVariable(name: "ucBitOrder", arg: 3, scope: !1065, file: !748, line: 131, type: !20)
!1073 = !DILocalVariable(name: "ret", scope: !1065, file: !748, line: 133, type: !1068)
!1074 = !DILocalVariable(name: "pIRTXTypeDef", scope: !1065, file: !748, line: 134, type: !756)
!1075 = !DILocalVariable(name: "u4Val", scope: !1065, file: !748, line: 135, type: !17)
!1076 = !DILocation(line: 0, scope: !1065)
!1077 = !DILocation(line: 137, column: 27, scope: !1065)
!1078 = !DILocation(line: 142, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1065, file: !748, line: 142, column: 9)
!1080 = !DILocation(line: 142, column: 9, scope: !1065)
!1081 = !DILocation(line: 151, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1065, file: !748, line: 151, column: 9)
!1083 = !DILocation(line: 151, column: 9, scope: !1065)
!1084 = !DILocation(line: 160, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1065, file: !748, line: 160, column: 9)
!1086 = !DILocation(line: 160, column: 9, scope: !1065)
!1087 = !DILocation(line: 166, column: 27, scope: !1065)
!1088 = !DILocation(line: 168, column: 5, scope: !1065)
!1089 = distinct !DISubprogram(name: "halIrTxConfig", scope: !748, file: !748, line: 190, type: !1090, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !1093)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1068, !16, !20, !20, !17, !17, !17, !17, !1092, !20}
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !18, line: 60, baseType: !72)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1094 = !DILocalVariable(name: "eIrProtocol", arg: 1, scope: !1089, file: !748, line: 190, type: !16)
!1095 = !DILocalVariable(name: "ucDataInvert", arg: 2, scope: !1089, file: !748, line: 190, type: !20)
!1096 = !DILocalVariable(name: "ucOutputInvert", arg: 3, scope: !1089, file: !748, line: 190, type: !20)
!1097 = !DILocalVariable(name: "u4L0High", arg: 4, scope: !1089, file: !748, line: 191, type: !17)
!1098 = !DILocalVariable(name: "u4L0Low", arg: 5, scope: !1089, file: !748, line: 191, type: !17)
!1099 = !DILocalVariable(name: "u4L1High", arg: 6, scope: !1089, file: !748, line: 191, type: !17)
!1100 = !DILocalVariable(name: "u4L1Low", arg: 7, scope: !1089, file: !748, line: 191, type: !17)
!1101 = !DILocalVariable(name: "u2Freq", arg: 8, scope: !1089, file: !748, line: 192, type: !1092)
!1102 = !DILocalVariable(name: "ucDutyCycle", arg: 9, scope: !1089, file: !748, line: 192, type: !20)
!1103 = !DILocalVariable(name: "ret", scope: !1089, file: !748, line: 194, type: !1068)
!1104 = !DILocalVariable(name: "pIRTXTypeDef", scope: !1089, file: !748, line: 195, type: !756)
!1105 = !DILocalVariable(name: "u4Val", scope: !1089, file: !748, line: 196, type: !17)
!1106 = !DILocalVariable(name: "u2CarrierPeriod", scope: !1089, file: !748, line: 197, type: !1092)
!1107 = !DILocalVariable(name: "u2DutyTime", scope: !1089, file: !748, line: 198, type: !1092)
!1108 = !DILocalVariable(name: "u4Period", scope: !1089, file: !748, line: 199, type: !17)
!1109 = !DILocalVariable(name: "u4Logic0HighPeriod", scope: !1089, file: !748, line: 200, type: !17)
!1110 = !DILocalVariable(name: "u4Logic0LowPeriod", scope: !1089, file: !748, line: 201, type: !17)
!1111 = !DILocalVariable(name: "u4Logic1HighPeriod", scope: !1089, file: !748, line: 202, type: !17)
!1112 = !DILocalVariable(name: "u4Logic1LowPeriod", scope: !1089, file: !748, line: 203, type: !17)
!1113 = !DILocation(line: 0, scope: !1089)
!1114 = !DILocation(line: 205, column: 21, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1089, file: !748, line: 205, column: 9)
!1116 = !DILocation(line: 205, column: 9, scope: !1089)
!1117 = !DILocation(line: 209, column: 27, scope: !1089)
!1118 = !DILocation(line: 215, column: 11, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1089, file: !748, line: 215, column: 9)
!1120 = !DILocation(line: 215, column: 9, scope: !1089)
!1121 = !DILocation(line: 225, column: 11, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1089, file: !748, line: 225, column: 9)
!1123 = !DILocation(line: 225, column: 9, scope: !1089)
!1124 = !DILocation(line: 233, column: 34, scope: !1089)
!1125 = !DILocation(line: 233, column: 19, scope: !1089)
!1126 = !DILocation(line: 235, column: 27, scope: !1089)
!1127 = !DILocation(line: 240, column: 9, scope: !1089)
!1128 = !DILocation(line: 0, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1089, file: !748, line: 240, column: 9)
!1130 = !DILocation(line: 343, column: 28, scope: !1089)
!1131 = !DILocation(line: 344, column: 28, scope: !1089)
!1132 = !DILocation(line: 345, column: 28, scope: !1089)
!1133 = !DILocation(line: 346, column: 28, scope: !1089)
!1134 = !DILocation(line: 348, column: 20, scope: !1089)
!1135 = !DILocation(line: 348, column: 32, scope: !1089)
!1136 = !DILocation(line: 348, column: 53, scope: !1089)
!1137 = !DILocation(line: 348, column: 60, scope: !1089)
!1138 = !DILocation(line: 348, column: 50, scope: !1089)
!1139 = !DILocation(line: 349, column: 31, scope: !1089)
!1140 = !DILocation(line: 349, column: 29, scope: !1089)
!1141 = !DILocation(line: 350, column: 40, scope: !1089)
!1142 = !DILocation(line: 350, column: 62, scope: !1089)
!1143 = !DILocation(line: 350, column: 60, scope: !1089)
!1144 = !DILocation(line: 350, column: 26, scope: !1089)
!1145 = !DILocation(line: 352, column: 5, scope: !1089)
!1146 = !DILocation(line: 353, column: 1, scope: !1089)
!1147 = distinct !DISubprogram(name: "halIrTxSend", scope: !748, file: !748, line: 361, type: !1148, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!1068, !17, !17, !17, !20, !20}
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1151 = !DILocalVariable(name: "u4TxData0", arg: 1, scope: !1147, file: !748, line: 361, type: !17)
!1152 = !DILocalVariable(name: "u4TxData1", arg: 2, scope: !1147, file: !748, line: 361, type: !17)
!1153 = !DILocalVariable(name: "u4TxData2", arg: 3, scope: !1147, file: !748, line: 361, type: !17)
!1154 = !DILocalVariable(name: "ucBitNum", arg: 4, scope: !1147, file: !748, line: 361, type: !20)
!1155 = !DILocalVariable(name: "ucRepeat", arg: 5, scope: !1147, file: !748, line: 361, type: !20)
!1156 = !DILocalVariable(name: "ret", scope: !1147, file: !748, line: 363, type: !1068)
!1157 = !DILocalVariable(name: "pIRTXTypeDef", scope: !1147, file: !748, line: 364, type: !756)
!1158 = !DILocalVariable(name: "eIrProtocol", scope: !1147, file: !748, line: 365, type: !16)
!1159 = !DILocalVariable(name: "u4Val", scope: !1147, file: !748, line: 366, type: !17)
!1160 = !DILocation(line: 0, scope: !1147)
!1161 = !DILocation(line: 369, column: 18, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1147, file: !748, line: 369, column: 9)
!1163 = !DILocation(line: 369, column: 9, scope: !1147)
!1164 = !DILocation(line: 376, column: 54, scope: !1147)
!1165 = !DILocation(line: 378, column: 16, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1147, file: !748, line: 378, column: 9)
!1167 = !DILocation(line: 378, column: 9, scope: !1147)
!1168 = !DILocation(line: 379, column: 15, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !748, line: 379, column: 13)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !748, line: 378, column: 32)
!1171 = !DILocation(line: 0, scope: !1169)
!1172 = !DILocation(line: 403, column: 26, scope: !1147)
!1173 = !DILocation(line: 404, column: 26, scope: !1147)
!1174 = !DILocation(line: 405, column: 26, scope: !1147)
!1175 = !DILocation(line: 408, column: 27, scope: !1147)
!1176 = !DILocation(line: 409, column: 19, scope: !1147)
!1177 = !DILocation(line: 410, column: 22, scope: !1147)
!1178 = !DILocation(line: 410, column: 31, scope: !1147)
!1179 = !DILocation(line: 410, column: 19, scope: !1147)
!1180 = !DILocation(line: 411, column: 27, scope: !1147)
!1181 = !DILocation(line: 414, column: 46, scope: !1147)
!1182 = !DILocation(line: 414, column: 55, scope: !1147)
!1183 = !DILocation(line: 414, column: 29, scope: !1147)
!1184 = !DILocation(line: 415, column: 46, scope: !1147)
!1185 = !DILocation(line: 415, column: 55, scope: !1147)
!1186 = !DILocation(line: 415, column: 29, scope: !1147)
!1187 = !DILocation(line: 417, column: 5, scope: !1147)
!1188 = !DILocation(line: 418, column: 1, scope: !1147)
!1189 = distinct !DISubprogram(name: "halIrTxPWSend", scope: !748, file: !748, line: 430, type: !1190, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !1193)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!1068, !20, !1192, !20}
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT8", file: !18, line: 84, baseType: !542)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203}
!1194 = !DILocalVariable(name: "ucDataNum", arg: 1, scope: !1189, file: !748, line: 430, type: !20)
!1195 = !DILocalVariable(name: "pData", arg: 2, scope: !1189, file: !748, line: 430, type: !1192)
!1196 = !DILocalVariable(name: "ucBasePeriod", arg: 3, scope: !1189, file: !748, line: 430, type: !20)
!1197 = !DILocalVariable(name: "ret", scope: !1189, file: !748, line: 432, type: !1068)
!1198 = !DILocalVariable(name: "pIRTXTypeDef", scope: !1189, file: !748, line: 433, type: !756)
!1199 = !DILocalVariable(name: "ucIdx", scope: !1189, file: !748, line: 434, type: !20)
!1200 = !DILocalVariable(name: "u4DataValue", scope: !1189, file: !748, line: 435, type: !17)
!1201 = !DILocalVariable(name: "ucResidual", scope: !1189, file: !748, line: 436, type: !20)
!1202 = !DILocalVariable(name: "pu4PWAddr", scope: !1189, file: !748, line: 437, type: !790)
!1203 = !DILocalVariable(name: "ucIrTxPWTempIdx", scope: !1189, file: !748, line: 438, type: !20)
!1204 = !DILocation(line: 0, scope: !1189)
!1205 = !DILocation(line: 441, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1189, file: !748, line: 441, column: 9)
!1207 = !DILocation(line: 441, column: 19, scope: !1206)
!1208 = !DILocation(line: 441, column: 9, scope: !1189)
!1209 = !DILocation(line: 447, column: 29, scope: !1189)
!1210 = !DILocation(line: 448, column: 43, scope: !1189)
!1211 = !DILocation(line: 448, column: 29, scope: !1189)
!1212 = !DILocation(line: 455, column: 35, scope: !1189)
!1213 = !DILocation(line: 455, column: 33, scope: !1189)
!1214 = !DILocation(line: 458, column: 116, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !748, line: 458, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1189, file: !748, line: 458, column: 5)
!1217 = !DILocation(line: 458, column: 5, scope: !1216)
!1218 = !DILocation(line: 461, column: 24, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !748, line: 461, column: 13)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !748, line: 458, column: 122)
!1221 = !DILocation(line: 461, column: 13, scope: !1220)
!1222 = !DILocation(line: 466, column: 13, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !748, line: 465, column: 16)
!1224 = !DILocation(line: 0, scope: !1216)
!1225 = !DILocation(line: 0, scope: !1220)
!1226 = !DILocation(line: 468, column: 47, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !748, line: 466, column: 16)
!1228 = !DILocation(line: 468, column: 64, scope: !1227)
!1229 = !DILocation(line: 468, column: 80, scope: !1227)
!1230 = !DILocation(line: 468, column: 60, scope: !1227)
!1231 = !DILocation(line: 468, column: 44, scope: !1227)
!1232 = !DILocation(line: 469, column: 32, scope: !1227)
!1233 = !DILocation(line: 470, column: 22, scope: !1227)
!1234 = !DILocation(line: 471, column: 27, scope: !1227)
!1235 = !DILocation(line: 472, column: 13, scope: !1227)
!1236 = distinct !{!1236, !1222, !1237}
!1237 = !DILocation(line: 472, column: 32, scope: !1223)
!1238 = !DILocation(line: 462, column: 29, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1219, file: !748, line: 461, column: 29)
!1240 = !DILocation(line: 462, column: 63, scope: !1239)
!1241 = !DILocation(line: 462, column: 51, scope: !1239)
!1242 = !DILocation(line: 462, column: 68, scope: !1239)
!1243 = !DILocation(line: 462, column: 48, scope: !1239)
!1244 = !DILocation(line: 462, column: 89, scope: !1239)
!1245 = !DILocation(line: 462, column: 77, scope: !1239)
!1246 = !DILocation(line: 462, column: 94, scope: !1239)
!1247 = !DILocation(line: 462, column: 74, scope: !1239)
!1248 = !DILocation(line: 462, column: 116, scope: !1239)
!1249 = !DILocation(line: 462, column: 104, scope: !1239)
!1250 = !DILocation(line: 462, column: 121, scope: !1239)
!1251 = !DILocation(line: 462, column: 101, scope: !1239)
!1252 = !DILocation(line: 463, column: 27, scope: !1239)
!1253 = !DILocation(line: 464, column: 37, scope: !1239)
!1254 = !DILocation(line: 474, column: 31, scope: !1220)
!1255 = !DILocation(line: 475, column: 31, scope: !1220)
!1256 = !DILocation(line: 480, column: 46, scope: !1189)
!1257 = !DILocation(line: 480, column: 55, scope: !1189)
!1258 = !DILocation(line: 480, column: 29, scope: !1189)
!1259 = !DILocation(line: 481, column: 46, scope: !1189)
!1260 = !DILocation(line: 481, column: 55, scope: !1189)
!1261 = !DILocation(line: 481, column: 29, scope: !1189)
!1262 = !DILocation(line: 483, column: 5, scope: !1189)
!1263 = !DILocation(line: 484, column: 1, scope: !1189)
!1264 = distinct !DISubprogram(name: "halIrTxClearInterrupt", scope: !748, file: !748, line: 486, type: !1265, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !1268)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !18, line: 79, baseType: null)
!1268 = !{!1269}
!1269 = !DILocalVariable(name: "pIRTXTypeDef", scope: !1264, file: !748, line: 488, type: !756)
!1270 = !DILocation(line: 0, scope: !1264)
!1271 = !DILocation(line: 489, column: 34, scope: !1264)
!1272 = !DILocation(line: 490, column: 1, scope: !1264)
!1273 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !793, file: !793, line: 54, type: !1274, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!1276, !17, !20}
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !18, line: 56, baseType: !83)
!1277 = !{!1278, !1279, !1280, !1281}
!1278 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1273, file: !793, line: 54, type: !17)
!1279 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1273, file: !793, line: 54, type: !20)
!1280 = !DILocalVariable(name: "no", scope: !1273, file: !793, line: 57, type: !1092)
!1281 = !DILocalVariable(name: "remainder", scope: !1273, file: !793, line: 58, type: !1092)
!1282 = !DILocation(line: 0, scope: !1273)
!1283 = !DILocation(line: 59, column: 19, scope: !1273)
!1284 = !DILocation(line: 60, column: 17, scope: !1273)
!1285 = !DILocation(line: 61, column: 5, scope: !1273)
!1286 = !DILocation(line: 65, column: 27, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !793, line: 65, column: 17)
!1288 = distinct !DILexicalBlock(scope: !1273, file: !793, line: 61, column: 17)
!1289 = !DILocation(line: 0, scope: !1287)
!1290 = !DILocation(line: 65, column: 17, scope: !1288)
!1291 = !DILocation(line: 66, column: 21, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !793, line: 65, column: 33)
!1293 = !DILocation(line: 67, column: 73, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !793, line: 66, column: 38)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !793, line: 66, column: 21)
!1296 = !DILocation(line: 67, column: 69, scope: !1294)
!1297 = !DILocation(line: 67, column: 66, scope: !1294)
!1298 = !DILocation(line: 68, column: 17, scope: !1294)
!1299 = !DILocation(line: 68, column: 28, scope: !1295)
!1300 = !DILocation(line: 69, column: 77, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !793, line: 68, column: 45)
!1302 = distinct !DILexicalBlock(scope: !1295, file: !793, line: 68, column: 28)
!1303 = !DILocation(line: 70, column: 77, scope: !1301)
!1304 = !DILocation(line: 71, column: 17, scope: !1301)
!1305 = !DILocation(line: 72, column: 77, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !793, line: 71, column: 45)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !793, line: 71, column: 28)
!1308 = !DILocation(line: 73, column: 77, scope: !1306)
!1309 = !DILocation(line: 74, column: 17, scope: !1306)
!1310 = !DILocation(line: 75, column: 79, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !793, line: 74, column: 45)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !793, line: 74, column: 28)
!1313 = !DILocation(line: 76, column: 79, scope: !1311)
!1314 = !DILocation(line: 77, column: 17, scope: !1311)
!1315 = !DILocation(line: 78, column: 79, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !793, line: 77, column: 45)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !793, line: 77, column: 28)
!1318 = !DILocation(line: 79, column: 79, scope: !1316)
!1319 = !DILocation(line: 80, column: 17, scope: !1316)
!1320 = !DILocation(line: 81, column: 79, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !793, line: 80, column: 45)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !793, line: 80, column: 28)
!1323 = !DILocation(line: 82, column: 79, scope: !1321)
!1324 = !DILocation(line: 83, column: 17, scope: !1321)
!1325 = !DILocation(line: 85, column: 17, scope: !1292)
!1326 = !DILocation(line: 86, column: 13, scope: !1292)
!1327 = !DILocation(line: 88, column: 21, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1287, file: !793, line: 86, column: 20)
!1329 = !DILocation(line: 89, column: 72, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !793, line: 88, column: 38)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !793, line: 88, column: 21)
!1332 = !DILocation(line: 89, column: 66, scope: !1330)
!1333 = !DILocation(line: 90, column: 17, scope: !1330)
!1334 = !DILocation(line: 90, column: 28, scope: !1331)
!1335 = !DILocation(line: 91, column: 77, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !793, line: 90, column: 45)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !793, line: 90, column: 28)
!1338 = !DILocation(line: 92, column: 17, scope: !1336)
!1339 = !DILocation(line: 93, column: 77, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !793, line: 92, column: 45)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !793, line: 92, column: 28)
!1342 = !DILocation(line: 94, column: 17, scope: !1340)
!1343 = !DILocation(line: 95, column: 79, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !793, line: 94, column: 45)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !793, line: 94, column: 28)
!1346 = !DILocation(line: 96, column: 17, scope: !1344)
!1347 = !DILocation(line: 97, column: 79, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !793, line: 96, column: 45)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !793, line: 96, column: 28)
!1350 = !DILocation(line: 98, column: 17, scope: !1348)
!1351 = !DILocation(line: 99, column: 79, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !793, line: 98, column: 45)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !793, line: 98, column: 28)
!1354 = !DILocation(line: 100, column: 17, scope: !1352)
!1355 = !DILocation(line: 103, column: 17, scope: !1328)
!1356 = !DILocation(line: 109, column: 27, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1288, file: !793, line: 109, column: 17)
!1358 = !DILocation(line: 0, scope: !1357)
!1359 = !DILocation(line: 109, column: 17, scope: !1288)
!1360 = !DILocation(line: 110, column: 21, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !793, line: 109, column: 33)
!1362 = !DILocation(line: 111, column: 73, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !793, line: 110, column: 36)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !793, line: 110, column: 21)
!1365 = !DILocation(line: 111, column: 69, scope: !1363)
!1366 = !DILocation(line: 111, column: 66, scope: !1363)
!1367 = !DILocation(line: 112, column: 17, scope: !1363)
!1368 = !DILocation(line: 113, column: 79, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !793, line: 112, column: 24)
!1370 = !DILocation(line: 114, column: 79, scope: !1369)
!1371 = !DILocation(line: 117, column: 17, scope: !1361)
!1372 = !DILocation(line: 118, column: 13, scope: !1361)
!1373 = !DILocation(line: 120, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1357, file: !793, line: 118, column: 20)
!1375 = !DILocation(line: 121, column: 72, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !793, line: 120, column: 36)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !793, line: 120, column: 21)
!1378 = !DILocation(line: 121, column: 66, scope: !1376)
!1379 = !DILocation(line: 122, column: 17, scope: !1376)
!1380 = !DILocation(line: 123, column: 79, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !793, line: 122, column: 24)
!1382 = !DILocation(line: 126, column: 17, scope: !1374)
!1383 = !DILocation(line: 133, column: 1, scope: !1273)
!1384 = distinct !DISubprogram(name: "halGPO_Write", scope: !793, file: !793, line: 136, type: !1274, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1385)
!1385 = !{!1386, !1387, !1388, !1389}
!1386 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1384, file: !793, line: 136, type: !17)
!1387 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1384, file: !793, line: 136, type: !20)
!1388 = !DILocalVariable(name: "no", scope: !1384, file: !793, line: 138, type: !1092)
!1389 = !DILocalVariable(name: "remainder", scope: !1384, file: !793, line: 139, type: !1092)
!1390 = !DILocation(line: 0, scope: !1384)
!1391 = !DILocation(line: 140, column: 19, scope: !1384)
!1392 = !DILocation(line: 141, column: 17, scope: !1384)
!1393 = !DILocation(line: 142, column: 5, scope: !1384)
!1394 = !DILocation(line: 145, column: 17, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !793, line: 145, column: 17)
!1396 = distinct !DILexicalBlock(scope: !1384, file: !793, line: 142, column: 17)
!1397 = !DILocation(line: 0, scope: !1395)
!1398 = !DILocation(line: 145, column: 17, scope: !1396)
!1399 = !DILocation(line: 146, column: 17, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !793, line: 145, column: 29)
!1401 = !DILocation(line: 147, column: 13, scope: !1400)
!1402 = !DILocation(line: 148, column: 17, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !793, line: 147, column: 20)
!1404 = !DILocation(line: 153, column: 17, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1396, file: !793, line: 153, column: 17)
!1406 = !DILocation(line: 0, scope: !1405)
!1407 = !DILocation(line: 153, column: 17, scope: !1396)
!1408 = !DILocation(line: 154, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !793, line: 153, column: 29)
!1410 = !DILocation(line: 155, column: 13, scope: !1409)
!1411 = !DILocation(line: 156, column: 17, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1405, file: !793, line: 155, column: 20)
!1413 = !DILocation(line: 163, column: 1, scope: !1384)
!1414 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !793, file: !793, line: 169, type: !1415, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!20, !17}
!1417 = !{!1418, !1419, !1420, !1421}
!1418 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1414, file: !793, line: 169, type: !17)
!1419 = !DILocalVariable(name: "no", scope: !1414, file: !793, line: 171, type: !1092)
!1420 = !DILocalVariable(name: "remainder", scope: !1414, file: !793, line: 172, type: !1092)
!1421 = !DILocalVariable(name: "dout", scope: !1414, file: !793, line: 175, type: !20)
!1422 = !DILocation(line: 0, scope: !1414)
!1423 = !DILocation(line: 173, column: 19, scope: !1414)
!1424 = !DILocation(line: 174, column: 17, scope: !1414)
!1425 = !DILocation(line: 177, column: 5, scope: !1414)
!1426 = !DILocation(line: 183, column: 13, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1414, file: !793, line: 177, column: 17)
!1428 = !DILocation(line: 0, scope: !1427)
!1429 = !DILocation(line: 187, column: 5, scope: !1414)
!1430 = !DILocation(line: 188, column: 1, scope: !1414)
!1431 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !793, file: !793, line: 189, type: !1415, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1432)
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1431, file: !793, line: 189, type: !17)
!1434 = !DILocalVariable(name: "no", scope: !1431, file: !793, line: 191, type: !1092)
!1435 = !DILocalVariable(name: "remainder", scope: !1431, file: !793, line: 192, type: !1092)
!1436 = !DILocalVariable(name: "din", scope: !1431, file: !793, line: 195, type: !20)
!1437 = !DILocation(line: 0, scope: !1431)
!1438 = !DILocation(line: 193, column: 19, scope: !1431)
!1439 = !DILocation(line: 194, column: 17, scope: !1431)
!1440 = !DILocation(line: 196, column: 5, scope: !1431)
!1441 = !DILocation(line: 203, column: 13, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1431, file: !793, line: 196, column: 17)
!1443 = !DILocation(line: 0, scope: !1442)
!1444 = !DILocation(line: 208, column: 5, scope: !1431)
!1445 = !DILocation(line: 209, column: 1, scope: !1431)
!1446 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !793, file: !793, line: 210, type: !1415, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1447)
!1447 = !{!1448, !1449, !1450, !1451}
!1448 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1446, file: !793, line: 210, type: !17)
!1449 = !DILocalVariable(name: "no", scope: !1446, file: !793, line: 212, type: !1092)
!1450 = !DILocalVariable(name: "remainder", scope: !1446, file: !793, line: 213, type: !1092)
!1451 = !DILocalVariable(name: "outEnable", scope: !1446, file: !793, line: 216, type: !20)
!1452 = !DILocation(line: 0, scope: !1446)
!1453 = !DILocation(line: 214, column: 19, scope: !1446)
!1454 = !DILocation(line: 215, column: 17, scope: !1446)
!1455 = !DILocation(line: 218, column: 5, scope: !1446)
!1456 = !DILocation(line: 224, column: 13, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1446, file: !793, line: 218, column: 17)
!1458 = !DILocation(line: 0, scope: !1457)
!1459 = !DILocation(line: 228, column: 5, scope: !1446)
!1460 = !DILocation(line: 229, column: 1, scope: !1446)
!1461 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !793, file: !793, line: 232, type: !1462, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1276, !17}
!1464 = !{!1465, !1466, !1467}
!1465 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1461, file: !793, line: 232, type: !17)
!1466 = !DILocalVariable(name: "no", scope: !1461, file: !793, line: 234, type: !1092)
!1467 = !DILocalVariable(name: "remainder", scope: !1461, file: !793, line: 235, type: !1092)
!1468 = !DILocation(line: 0, scope: !1461)
!1469 = !DILocation(line: 236, column: 19, scope: !1461)
!1470 = !DILocation(line: 237, column: 17, scope: !1461)
!1471 = !DILocation(line: 238, column: 5, scope: !1461)
!1472 = !DILocation(line: 239, column: 5, scope: !1461)
!1473 = !DILocation(line: 241, column: 27, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !793, line: 241, column: 17)
!1475 = distinct !DILexicalBlock(scope: !1461, file: !793, line: 239, column: 17)
!1476 = !DILocation(line: 241, column: 17, scope: !1475)
!1477 = !DILocation(line: 241, column: 17, scope: !1474)
!1478 = !DILocation(line: 242, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !793, line: 241, column: 34)
!1480 = !DILocation(line: 243, column: 13, scope: !1479)
!1481 = !DILocation(line: 243, column: 24, scope: !1474)
!1482 = !DILocation(line: 244, column: 73, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !793, line: 243, column: 41)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !793, line: 243, column: 24)
!1485 = !DILocation(line: 245, column: 73, scope: !1483)
!1486 = !DILocation(line: 246, column: 13, scope: !1483)
!1487 = !DILocation(line: 247, column: 73, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !793, line: 246, column: 41)
!1489 = distinct !DILexicalBlock(scope: !1484, file: !793, line: 246, column: 24)
!1490 = !DILocation(line: 248, column: 73, scope: !1488)
!1491 = !DILocation(line: 249, column: 13, scope: !1488)
!1492 = !DILocation(line: 250, column: 75, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !793, line: 249, column: 41)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !793, line: 249, column: 24)
!1495 = !DILocation(line: 251, column: 75, scope: !1493)
!1496 = !DILocation(line: 252, column: 13, scope: !1493)
!1497 = !DILocation(line: 253, column: 75, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !793, line: 252, column: 41)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !793, line: 252, column: 24)
!1500 = !DILocation(line: 254, column: 75, scope: !1498)
!1501 = !DILocation(line: 255, column: 13, scope: !1498)
!1502 = !DILocation(line: 256, column: 75, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !793, line: 255, column: 41)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !793, line: 255, column: 24)
!1505 = !DILocation(line: 257, column: 75, scope: !1503)
!1506 = !DILocation(line: 258, column: 13, scope: !1503)
!1507 = !DILocation(line: 261, column: 18, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1475, file: !793, line: 261, column: 17)
!1509 = !DILocation(line: 261, column: 17, scope: !1475)
!1510 = !DILocation(line: 262, column: 75, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !793, line: 261, column: 29)
!1512 = !DILocation(line: 263, column: 75, scope: !1511)
!1513 = !DILocation(line: 264, column: 13, scope: !1511)
!1514 = !DILocation(line: 265, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1508, file: !793, line: 264, column: 20)
!1516 = !DILocation(line: 272, column: 1, scope: !1461)
!1517 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !793, file: !793, line: 359, type: !1462, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1518)
!1518 = !{!1519, !1520, !1521}
!1519 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1517, file: !793, line: 359, type: !17)
!1520 = !DILocalVariable(name: "no", scope: !1517, file: !793, line: 362, type: !1092)
!1521 = !DILocalVariable(name: "remainder", scope: !1517, file: !793, line: 363, type: !1092)
!1522 = !DILocation(line: 0, scope: !1517)
!1523 = !DILocation(line: 364, column: 19, scope: !1517)
!1524 = !DILocation(line: 365, column: 17, scope: !1517)
!1525 = !DILocation(line: 367, column: 5, scope: !1517)
!1526 = !DILocation(line: 369, column: 27, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !793, line: 369, column: 17)
!1528 = distinct !DILexicalBlock(scope: !1517, file: !793, line: 367, column: 17)
!1529 = !DILocation(line: 369, column: 17, scope: !1528)
!1530 = !DILocation(line: 369, column: 17, scope: !1527)
!1531 = !DILocation(line: 370, column: 17, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !793, line: 369, column: 34)
!1533 = !DILocation(line: 371, column: 13, scope: !1532)
!1534 = !DILocation(line: 371, column: 24, scope: !1527)
!1535 = !DILocation(line: 372, column: 73, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !793, line: 371, column: 41)
!1537 = distinct !DILexicalBlock(scope: !1527, file: !793, line: 371, column: 24)
!1538 = !DILocation(line: 373, column: 73, scope: !1536)
!1539 = !DILocation(line: 374, column: 13, scope: !1536)
!1540 = !DILocation(line: 375, column: 73, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !793, line: 374, column: 41)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !793, line: 374, column: 24)
!1543 = !DILocation(line: 376, column: 73, scope: !1541)
!1544 = !DILocation(line: 377, column: 13, scope: !1541)
!1545 = !DILocation(line: 378, column: 75, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !793, line: 377, column: 41)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !793, line: 377, column: 24)
!1548 = !DILocation(line: 379, column: 75, scope: !1546)
!1549 = !DILocation(line: 380, column: 13, scope: !1546)
!1550 = !DILocation(line: 381, column: 75, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !793, line: 380, column: 41)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !793, line: 380, column: 24)
!1553 = !DILocation(line: 382, column: 75, scope: !1551)
!1554 = !DILocation(line: 383, column: 13, scope: !1551)
!1555 = !DILocation(line: 384, column: 75, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !793, line: 383, column: 41)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !793, line: 383, column: 24)
!1558 = !DILocation(line: 385, column: 75, scope: !1556)
!1559 = !DILocation(line: 386, column: 13, scope: !1556)
!1560 = !DILocation(line: 389, column: 18, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1528, file: !793, line: 389, column: 17)
!1562 = !DILocation(line: 389, column: 17, scope: !1528)
!1563 = !DILocation(line: 390, column: 75, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !793, line: 389, column: 29)
!1565 = !DILocation(line: 391, column: 75, scope: !1564)
!1566 = !DILocation(line: 392, column: 13, scope: !1564)
!1567 = !DILocation(line: 393, column: 17, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1561, file: !793, line: 392, column: 20)
!1569 = !DILocation(line: 401, column: 1, scope: !1517)
!1570 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !793, file: !793, line: 274, type: !1462, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1571)
!1571 = !{!1572, !1573, !1574}
!1572 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1570, file: !793, line: 274, type: !17)
!1573 = !DILocalVariable(name: "no", scope: !1570, file: !793, line: 276, type: !1092)
!1574 = !DILocalVariable(name: "remainder", scope: !1570, file: !793, line: 277, type: !1092)
!1575 = !DILocation(line: 0, scope: !1570)
!1576 = !DILocation(line: 278, column: 19, scope: !1570)
!1577 = !DILocation(line: 279, column: 17, scope: !1570)
!1578 = !DILocation(line: 281, column: 5, scope: !1570)
!1579 = !DILocation(line: 283, column: 27, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !793, line: 283, column: 17)
!1581 = distinct !DILexicalBlock(scope: !1570, file: !793, line: 281, column: 17)
!1582 = !DILocation(line: 283, column: 17, scope: !1581)
!1583 = !DILocation(line: 283, column: 17, scope: !1580)
!1584 = !DILocation(line: 284, column: 17, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !793, line: 283, column: 34)
!1586 = !DILocation(line: 285, column: 13, scope: !1585)
!1587 = !DILocation(line: 285, column: 24, scope: !1580)
!1588 = !DILocation(line: 286, column: 73, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !793, line: 285, column: 41)
!1590 = distinct !DILexicalBlock(scope: !1580, file: !793, line: 285, column: 24)
!1591 = !DILocation(line: 287, column: 73, scope: !1589)
!1592 = !DILocation(line: 288, column: 13, scope: !1589)
!1593 = !DILocation(line: 289, column: 73, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !793, line: 288, column: 41)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !793, line: 288, column: 24)
!1596 = !DILocation(line: 290, column: 73, scope: !1594)
!1597 = !DILocation(line: 291, column: 13, scope: !1594)
!1598 = !DILocation(line: 292, column: 75, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !793, line: 291, column: 41)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !793, line: 291, column: 24)
!1601 = !DILocation(line: 293, column: 75, scope: !1599)
!1602 = !DILocation(line: 294, column: 13, scope: !1599)
!1603 = !DILocation(line: 295, column: 75, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !793, line: 294, column: 41)
!1605 = distinct !DILexicalBlock(scope: !1600, file: !793, line: 294, column: 24)
!1606 = !DILocation(line: 296, column: 75, scope: !1604)
!1607 = !DILocation(line: 297, column: 13, scope: !1604)
!1608 = !DILocation(line: 298, column: 75, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !793, line: 297, column: 41)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !793, line: 297, column: 24)
!1611 = !DILocation(line: 299, column: 75, scope: !1609)
!1612 = !DILocation(line: 300, column: 13, scope: !1609)
!1613 = !DILocation(line: 303, column: 18, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1581, file: !793, line: 303, column: 17)
!1615 = !DILocation(line: 303, column: 17, scope: !1581)
!1616 = !DILocation(line: 304, column: 75, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !793, line: 303, column: 29)
!1618 = !DILocation(line: 305, column: 75, scope: !1617)
!1619 = !DILocation(line: 306, column: 13, scope: !1617)
!1620 = !DILocation(line: 307, column: 17, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !793, line: 306, column: 20)
!1622 = !DILocation(line: 314, column: 1, scope: !1570)
!1623 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !793, file: !793, line: 316, type: !1462, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1624)
!1624 = !{!1625, !1626, !1627}
!1625 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1623, file: !793, line: 316, type: !17)
!1626 = !DILocalVariable(name: "no", scope: !1623, file: !793, line: 318, type: !1092)
!1627 = !DILocalVariable(name: "remainder", scope: !1623, file: !793, line: 319, type: !1092)
!1628 = !DILocation(line: 0, scope: !1623)
!1629 = !DILocation(line: 320, column: 19, scope: !1623)
!1630 = !DILocation(line: 321, column: 17, scope: !1623)
!1631 = !DILocation(line: 322, column: 5, scope: !1623)
!1632 = !DILocation(line: 323, column: 5, scope: !1623)
!1633 = !DILocation(line: 325, column: 27, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !793, line: 325, column: 17)
!1635 = distinct !DILexicalBlock(scope: !1623, file: !793, line: 323, column: 17)
!1636 = !DILocation(line: 325, column: 17, scope: !1635)
!1637 = !DILocation(line: 325, column: 17, scope: !1634)
!1638 = !DILocation(line: 326, column: 17, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !793, line: 325, column: 34)
!1640 = !DILocation(line: 327, column: 13, scope: !1639)
!1641 = !DILocation(line: 327, column: 24, scope: !1634)
!1642 = !DILocation(line: 328, column: 73, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !793, line: 327, column: 41)
!1644 = distinct !DILexicalBlock(scope: !1634, file: !793, line: 327, column: 24)
!1645 = !DILocation(line: 329, column: 73, scope: !1643)
!1646 = !DILocation(line: 330, column: 13, scope: !1643)
!1647 = !DILocation(line: 331, column: 73, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !793, line: 330, column: 41)
!1649 = distinct !DILexicalBlock(scope: !1644, file: !793, line: 330, column: 24)
!1650 = !DILocation(line: 332, column: 73, scope: !1648)
!1651 = !DILocation(line: 333, column: 13, scope: !1648)
!1652 = !DILocation(line: 334, column: 75, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !793, line: 333, column: 41)
!1654 = distinct !DILexicalBlock(scope: !1649, file: !793, line: 333, column: 24)
!1655 = !DILocation(line: 335, column: 75, scope: !1653)
!1656 = !DILocation(line: 336, column: 13, scope: !1653)
!1657 = !DILocation(line: 337, column: 75, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !793, line: 336, column: 41)
!1659 = distinct !DILexicalBlock(scope: !1654, file: !793, line: 336, column: 24)
!1660 = !DILocation(line: 338, column: 75, scope: !1658)
!1661 = !DILocation(line: 339, column: 13, scope: !1658)
!1662 = !DILocation(line: 340, column: 75, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !793, line: 339, column: 41)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !793, line: 339, column: 24)
!1665 = !DILocation(line: 341, column: 75, scope: !1663)
!1666 = !DILocation(line: 342, column: 13, scope: !1663)
!1667 = !DILocation(line: 345, column: 18, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1635, file: !793, line: 345, column: 17)
!1669 = !DILocation(line: 345, column: 17, scope: !1635)
!1670 = !DILocation(line: 346, column: 75, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !793, line: 345, column: 29)
!1672 = !DILocation(line: 347, column: 75, scope: !1671)
!1673 = !DILocation(line: 348, column: 13, scope: !1671)
!1674 = !DILocation(line: 349, column: 17, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1668, file: !793, line: 348, column: 20)
!1676 = !DILocation(line: 357, column: 1, scope: !1623)
!1677 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !793, file: !793, line: 404, type: !1274, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1678)
!1678 = !{!1679, !1680, !1681, !1682}
!1679 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1677, file: !793, line: 404, type: !17)
!1680 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1677, file: !793, line: 404, type: !20)
!1681 = !DILocalVariable(name: "no", scope: !1677, file: !793, line: 406, type: !1092)
!1682 = !DILocalVariable(name: "remainder", scope: !1677, file: !793, line: 407, type: !1092)
!1683 = !DILocation(line: 0, scope: !1677)
!1684 = !DILocation(line: 408, column: 19, scope: !1677)
!1685 = !DILocation(line: 409, column: 17, scope: !1677)
!1686 = !DILocation(line: 411, column: 5, scope: !1677)
!1687 = !DILocation(line: 413, column: 84, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1677, file: !793, line: 411, column: 17)
!1689 = !DILocation(line: 413, column: 70, scope: !1688)
!1690 = !DILocation(line: 413, column: 64, scope: !1688)
!1691 = !DILocation(line: 413, column: 61, scope: !1688)
!1692 = !DILocation(line: 414, column: 79, scope: !1688)
!1693 = !DILocation(line: 414, column: 83, scope: !1688)
!1694 = !DILocation(line: 414, column: 88, scope: !1688)
!1695 = !DILocation(line: 414, column: 61, scope: !1688)
!1696 = !DILocation(line: 415, column: 13, scope: !1688)
!1697 = !DILocation(line: 417, column: 27, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1688, file: !793, line: 417, column: 17)
!1699 = !DILocation(line: 417, column: 17, scope: !1688)
!1700 = !DILocation(line: 418, column: 88, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !793, line: 417, column: 33)
!1702 = !DILocation(line: 418, column: 74, scope: !1701)
!1703 = !DILocation(line: 418, column: 68, scope: !1701)
!1704 = !DILocation(line: 418, column: 65, scope: !1701)
!1705 = !DILocation(line: 419, column: 83, scope: !1701)
!1706 = !DILocation(line: 419, column: 87, scope: !1701)
!1707 = !DILocation(line: 419, column: 92, scope: !1701)
!1708 = !DILocation(line: 419, column: 65, scope: !1701)
!1709 = !DILocation(line: 420, column: 13, scope: !1701)
!1710 = !DILocation(line: 420, column: 24, scope: !1698)
!1711 = !DILocation(line: 421, column: 73, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !793, line: 420, column: 41)
!1713 = distinct !DILexicalBlock(scope: !1698, file: !793, line: 420, column: 24)
!1714 = !DILocation(line: 422, column: 91, scope: !1712)
!1715 = !DILocation(line: 422, column: 100, scope: !1712)
!1716 = !DILocation(line: 422, column: 73, scope: !1712)
!1717 = !DILocation(line: 423, column: 73, scope: !1712)
!1718 = !DILocation(line: 424, column: 13, scope: !1712)
!1719 = !DILocation(line: 425, column: 73, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !793, line: 424, column: 41)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !793, line: 424, column: 24)
!1722 = !DILocation(line: 426, column: 91, scope: !1720)
!1723 = !DILocation(line: 426, column: 100, scope: !1720)
!1724 = !DILocation(line: 426, column: 73, scope: !1720)
!1725 = !DILocation(line: 427, column: 73, scope: !1720)
!1726 = !DILocation(line: 428, column: 13, scope: !1720)
!1727 = !DILocation(line: 429, column: 75, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !793, line: 428, column: 41)
!1729 = distinct !DILexicalBlock(scope: !1721, file: !793, line: 428, column: 24)
!1730 = !DILocation(line: 430, column: 93, scope: !1728)
!1731 = !DILocation(line: 430, column: 102, scope: !1728)
!1732 = !DILocation(line: 430, column: 75, scope: !1728)
!1733 = !DILocation(line: 431, column: 75, scope: !1728)
!1734 = !DILocation(line: 432, column: 13, scope: !1728)
!1735 = !DILocation(line: 433, column: 75, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !793, line: 432, column: 41)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !793, line: 432, column: 24)
!1738 = !DILocation(line: 434, column: 93, scope: !1736)
!1739 = !DILocation(line: 434, column: 102, scope: !1736)
!1740 = !DILocation(line: 434, column: 75, scope: !1736)
!1741 = !DILocation(line: 435, column: 75, scope: !1736)
!1742 = !DILocation(line: 436, column: 13, scope: !1736)
!1743 = !DILocation(line: 437, column: 75, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !793, line: 436, column: 41)
!1745 = distinct !DILexicalBlock(scope: !1737, file: !793, line: 436, column: 24)
!1746 = !DILocation(line: 438, column: 93, scope: !1744)
!1747 = !DILocation(line: 438, column: 102, scope: !1744)
!1748 = !DILocation(line: 438, column: 75, scope: !1744)
!1749 = !DILocation(line: 439, column: 75, scope: !1744)
!1750 = !DILocation(line: 440, column: 13, scope: !1744)
!1751 = !DILocation(line: 443, column: 18, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1688, file: !793, line: 443, column: 17)
!1753 = !DILocation(line: 443, column: 17, scope: !1688)
!1754 = !DILocation(line: 444, column: 75, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !793, line: 443, column: 29)
!1756 = !DILocation(line: 445, column: 93, scope: !1755)
!1757 = !DILocation(line: 445, column: 102, scope: !1755)
!1758 = !DILocation(line: 445, column: 75, scope: !1755)
!1759 = !DILocation(line: 446, column: 75, scope: !1755)
!1760 = !DILocation(line: 447, column: 13, scope: !1755)
!1761 = !DILocation(line: 448, column: 88, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1752, file: !793, line: 447, column: 20)
!1763 = !DILocation(line: 448, column: 74, scope: !1762)
!1764 = !DILocation(line: 448, column: 68, scope: !1762)
!1765 = !DILocation(line: 448, column: 65, scope: !1762)
!1766 = !DILocation(line: 449, column: 83, scope: !1762)
!1767 = !DILocation(line: 449, column: 87, scope: !1762)
!1768 = !DILocation(line: 449, column: 92, scope: !1762)
!1769 = !DILocation(line: 449, column: 65, scope: !1762)
!1770 = !DILocation(line: 453, column: 84, scope: !1688)
!1771 = !DILocation(line: 453, column: 70, scope: !1688)
!1772 = !DILocation(line: 453, column: 64, scope: !1688)
!1773 = !DILocation(line: 453, column: 61, scope: !1688)
!1774 = !DILocation(line: 454, column: 79, scope: !1688)
!1775 = !DILocation(line: 454, column: 83, scope: !1688)
!1776 = !DILocation(line: 454, column: 88, scope: !1688)
!1777 = !DILocation(line: 454, column: 61, scope: !1688)
!1778 = !DILocation(line: 455, column: 13, scope: !1688)
!1779 = !DILocation(line: 460, column: 1, scope: !1677)
!1780 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !793, file: !793, line: 463, type: !1781, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1784)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1276, !17, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!1784 = !{!1785, !1786, !1787, !1788, !1789}
!1785 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1780, file: !793, line: 463, type: !17)
!1786 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1780, file: !793, line: 463, type: !1783)
!1787 = !DILocalVariable(name: "no", scope: !1780, file: !793, line: 465, type: !1092)
!1788 = !DILocalVariable(name: "remainder", scope: !1780, file: !793, line: 466, type: !1092)
!1789 = !DILocalVariable(name: "temp", scope: !1780, file: !793, line: 467, type: !17)
!1790 = !DILocation(line: 0, scope: !1780)
!1791 = !DILocation(line: 468, column: 19, scope: !1780)
!1792 = !DILocation(line: 469, column: 17, scope: !1780)
!1793 = !DILocation(line: 471, column: 5, scope: !1780)
!1794 = !DILocation(line: 473, column: 20, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1780, file: !793, line: 471, column: 17)
!1796 = !DILocation(line: 474, column: 40, scope: !1795)
!1797 = !DILocation(line: 474, column: 26, scope: !1795)
!1798 = !DILocation(line: 474, column: 18, scope: !1795)
!1799 = !DILocation(line: 475, column: 40, scope: !1795)
!1800 = !DILocation(line: 475, column: 29, scope: !1795)
!1801 = !DILocation(line: 476, column: 13, scope: !1795)
!1802 = !DILocation(line: 478, column: 27, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1795, file: !793, line: 478, column: 17)
!1804 = !DILocation(line: 478, column: 17, scope: !1795)
!1805 = !DILocation(line: 479, column: 24, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !793, line: 478, column: 33)
!1807 = !DILocation(line: 480, column: 44, scope: !1806)
!1808 = !DILocation(line: 480, column: 30, scope: !1806)
!1809 = !DILocation(line: 480, column: 22, scope: !1806)
!1810 = !DILocation(line: 481, column: 44, scope: !1806)
!1811 = !DILocation(line: 481, column: 33, scope: !1806)
!1812 = !DILocation(line: 482, column: 13, scope: !1806)
!1813 = !DILocation(line: 482, column: 24, scope: !1803)
!1814 = !DILocation(line: 483, column: 24, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !793, line: 482, column: 41)
!1816 = distinct !DILexicalBlock(scope: !1803, file: !793, line: 482, column: 24)
!1817 = !DILocation(line: 485, column: 53, scope: !1815)
!1818 = !DILocation(line: 485, column: 33, scope: !1815)
!1819 = !DILocation(line: 486, column: 13, scope: !1815)
!1820 = !DILocation(line: 487, column: 24, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !793, line: 486, column: 41)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !793, line: 486, column: 24)
!1823 = !DILocation(line: 489, column: 53, scope: !1821)
!1824 = !DILocation(line: 489, column: 33, scope: !1821)
!1825 = !DILocation(line: 490, column: 13, scope: !1821)
!1826 = !DILocation(line: 491, column: 24, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !793, line: 490, column: 41)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !793, line: 490, column: 24)
!1829 = !DILocation(line: 493, column: 53, scope: !1827)
!1830 = !DILocation(line: 493, column: 33, scope: !1827)
!1831 = !DILocation(line: 494, column: 13, scope: !1827)
!1832 = !DILocation(line: 495, column: 24, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !793, line: 494, column: 41)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !793, line: 494, column: 24)
!1835 = !DILocation(line: 497, column: 53, scope: !1833)
!1836 = !DILocation(line: 497, column: 33, scope: !1833)
!1837 = !DILocation(line: 498, column: 13, scope: !1833)
!1838 = !DILocation(line: 499, column: 24, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !793, line: 498, column: 41)
!1840 = distinct !DILexicalBlock(scope: !1834, file: !793, line: 498, column: 24)
!1841 = !DILocation(line: 501, column: 53, scope: !1839)
!1842 = !DILocation(line: 501, column: 33, scope: !1839)
!1843 = !DILocation(line: 502, column: 13, scope: !1839)
!1844 = !DILocation(line: 505, column: 18, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1795, file: !793, line: 505, column: 17)
!1846 = !DILocation(line: 505, column: 17, scope: !1795)
!1847 = !DILocation(line: 506, column: 24, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !793, line: 505, column: 29)
!1849 = !DILocation(line: 508, column: 53, scope: !1848)
!1850 = !DILocation(line: 508, column: 33, scope: !1848)
!1851 = !DILocation(line: 509, column: 13, scope: !1848)
!1852 = !DILocation(line: 510, column: 24, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1845, file: !793, line: 509, column: 20)
!1854 = !DILocation(line: 511, column: 44, scope: !1853)
!1855 = !DILocation(line: 511, column: 30, scope: !1853)
!1856 = !DILocation(line: 511, column: 22, scope: !1853)
!1857 = !DILocation(line: 512, column: 44, scope: !1853)
!1858 = !DILocation(line: 512, column: 33, scope: !1853)
!1859 = !DILocation(line: 516, column: 20, scope: !1795)
!1860 = !DILocation(line: 517, column: 40, scope: !1795)
!1861 = !DILocation(line: 517, column: 26, scope: !1795)
!1862 = !DILocation(line: 517, column: 18, scope: !1795)
!1863 = !DILocation(line: 518, column: 40, scope: !1795)
!1864 = !DILocation(line: 518, column: 29, scope: !1795)
!1865 = !DILocation(line: 519, column: 13, scope: !1795)
!1866 = !DILocation(line: 0, scope: !1795)
!1867 = !DILocation(line: 524, column: 1, scope: !1780)
!1868 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !793, file: !793, line: 526, type: !1869, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !1872)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{null, !17, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !796, line: 1212, baseType: !795)
!1872 = !{!1873, !1874, !1875, !1876}
!1873 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1868, file: !793, line: 526, type: !17)
!1874 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1868, file: !793, line: 526, type: !1871)
!1875 = !DILocalVariable(name: "no", scope: !1868, file: !793, line: 529, type: !1092)
!1876 = !DILocalVariable(name: "remainder", scope: !1868, file: !793, line: 530, type: !1092)
!1877 = !DILocation(line: 0, scope: !1868)
!1878 = !DILocation(line: 531, column: 19, scope: !1868)
!1879 = !DILocation(line: 532, column: 17, scope: !1868)
!1880 = !DILocation(line: 534, column: 9, scope: !1868)
!1881 = !DILocation(line: 536, column: 9, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !793, line: 534, column: 45)
!1883 = distinct !DILexicalBlock(scope: !1868, file: !793, line: 534, column: 9)
!1884 = !DILocation(line: 538, column: 56, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !793, line: 536, column: 21)
!1886 = !DILocation(line: 538, column: 53, scope: !1885)
!1887 = !DILocation(line: 538, column: 47, scope: !1885)
!1888 = !DILocation(line: 539, column: 17, scope: !1885)
!1889 = !DILocation(line: 541, column: 56, scope: !1885)
!1890 = !DILocation(line: 541, column: 53, scope: !1885)
!1891 = !DILocation(line: 541, column: 47, scope: !1885)
!1892 = !DILocation(line: 542, column: 17, scope: !1885)
!1893 = !DILocation(line: 548, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !793, line: 547, column: 51)
!1895 = distinct !DILexicalBlock(scope: !1883, file: !793, line: 547, column: 16)
!1896 = !DILocation(line: 550, column: 57, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !793, line: 548, column: 21)
!1898 = !DILocation(line: 550, column: 54, scope: !1897)
!1899 = !DILocation(line: 550, column: 50, scope: !1897)
!1900 = !DILocation(line: 550, column: 47, scope: !1897)
!1901 = !DILocation(line: 551, column: 17, scope: !1897)
!1902 = !DILocation(line: 553, column: 57, scope: !1897)
!1903 = !DILocation(line: 553, column: 54, scope: !1897)
!1904 = !DILocation(line: 553, column: 50, scope: !1897)
!1905 = !DILocation(line: 553, column: 47, scope: !1897)
!1906 = !DILocation(line: 554, column: 17, scope: !1897)
!1907 = !DILocation(line: 560, column: 1, scope: !1868)
!1908 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !805, file: !805, line: 85, type: !1909, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !804, retainedNodes: !1912)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1267, !1911, !20}
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !808, line: 225, baseType: !807)
!1912 = !{!1913, !1914, !1915}
!1913 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1908, file: !805, line: 85, type: !1911)
!1914 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1908, file: !805, line: 85, type: !20)
!1915 = !DILocalVariable(name: "temp", scope: !1908, file: !805, line: 87, type: !31)
!1916 = !DILocation(line: 0, scope: !1908)
!1917 = !DILocation(line: 88, column: 5, scope: !1908)
!1918 = !DILocation(line: 91, column: 20, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1908, file: !805, line: 88, column: 24)
!1920 = !DILocation(line: 92, column: 18, scope: !1919)
!1921 = !DILocation(line: 93, column: 66, scope: !1919)
!1922 = !DILocation(line: 93, column: 63, scope: !1919)
!1923 = !DILocation(line: 93, column: 56, scope: !1919)
!1924 = !DILocation(line: 94, column: 13, scope: !1919)
!1925 = !DILocation(line: 97, column: 20, scope: !1919)
!1926 = !DILocation(line: 98, column: 18, scope: !1919)
!1927 = !DILocation(line: 99, column: 67, scope: !1919)
!1928 = !DILocation(line: 99, column: 74, scope: !1919)
!1929 = !DILocation(line: 99, column: 64, scope: !1919)
!1930 = !DILocation(line: 99, column: 56, scope: !1919)
!1931 = !DILocation(line: 100, column: 13, scope: !1919)
!1932 = !DILocation(line: 103, column: 20, scope: !1919)
!1933 = !DILocation(line: 104, column: 18, scope: !1919)
!1934 = !DILocation(line: 105, column: 67, scope: !1919)
!1935 = !DILocation(line: 105, column: 74, scope: !1919)
!1936 = !DILocation(line: 105, column: 64, scope: !1919)
!1937 = !DILocation(line: 105, column: 56, scope: !1919)
!1938 = !DILocation(line: 106, column: 13, scope: !1919)
!1939 = !DILocation(line: 109, column: 20, scope: !1919)
!1940 = !DILocation(line: 110, column: 18, scope: !1919)
!1941 = !DILocation(line: 111, column: 67, scope: !1919)
!1942 = !DILocation(line: 111, column: 74, scope: !1919)
!1943 = !DILocation(line: 111, column: 64, scope: !1919)
!1944 = !DILocation(line: 111, column: 56, scope: !1919)
!1945 = !DILocation(line: 112, column: 13, scope: !1919)
!1946 = !DILocation(line: 115, column: 20, scope: !1919)
!1947 = !DILocation(line: 116, column: 18, scope: !1919)
!1948 = !DILocation(line: 117, column: 67, scope: !1919)
!1949 = !DILocation(line: 117, column: 74, scope: !1919)
!1950 = !DILocation(line: 117, column: 64, scope: !1919)
!1951 = !DILocation(line: 117, column: 56, scope: !1919)
!1952 = !DILocation(line: 118, column: 13, scope: !1919)
!1953 = !DILocation(line: 121, column: 20, scope: !1919)
!1954 = !DILocation(line: 122, column: 18, scope: !1919)
!1955 = !DILocation(line: 123, column: 67, scope: !1919)
!1956 = !DILocation(line: 123, column: 74, scope: !1919)
!1957 = !DILocation(line: 123, column: 64, scope: !1919)
!1958 = !DILocation(line: 123, column: 56, scope: !1919)
!1959 = !DILocation(line: 124, column: 13, scope: !1919)
!1960 = !DILocation(line: 127, column: 20, scope: !1919)
!1961 = !DILocation(line: 128, column: 18, scope: !1919)
!1962 = !DILocation(line: 129, column: 67, scope: !1919)
!1963 = !DILocation(line: 129, column: 74, scope: !1919)
!1964 = !DILocation(line: 129, column: 64, scope: !1919)
!1965 = !DILocation(line: 129, column: 56, scope: !1919)
!1966 = !DILocation(line: 130, column: 13, scope: !1919)
!1967 = !DILocation(line: 133, column: 20, scope: !1919)
!1968 = !DILocation(line: 134, column: 18, scope: !1919)
!1969 = !DILocation(line: 135, column: 67, scope: !1919)
!1970 = !DILocation(line: 135, column: 74, scope: !1919)
!1971 = !DILocation(line: 135, column: 64, scope: !1919)
!1972 = !DILocation(line: 135, column: 56, scope: !1919)
!1973 = !DILocation(line: 136, column: 13, scope: !1919)
!1974 = !DILocation(line: 139, column: 20, scope: !1919)
!1975 = !DILocation(line: 140, column: 18, scope: !1919)
!1976 = !DILocation(line: 141, column: 67, scope: !1919)
!1977 = !DILocation(line: 141, column: 64, scope: !1919)
!1978 = !DILocation(line: 141, column: 56, scope: !1919)
!1979 = !DILocation(line: 142, column: 13, scope: !1919)
!1980 = !DILocation(line: 145, column: 20, scope: !1919)
!1981 = !DILocation(line: 146, column: 18, scope: !1919)
!1982 = !DILocation(line: 147, column: 67, scope: !1919)
!1983 = !DILocation(line: 147, column: 74, scope: !1919)
!1984 = !DILocation(line: 147, column: 64, scope: !1919)
!1985 = !DILocation(line: 147, column: 56, scope: !1919)
!1986 = !DILocation(line: 148, column: 13, scope: !1919)
!1987 = !DILocation(line: 151, column: 20, scope: !1919)
!1988 = !DILocation(line: 152, column: 18, scope: !1919)
!1989 = !DILocation(line: 153, column: 67, scope: !1919)
!1990 = !DILocation(line: 153, column: 74, scope: !1919)
!1991 = !DILocation(line: 153, column: 64, scope: !1919)
!1992 = !DILocation(line: 153, column: 56, scope: !1919)
!1993 = !DILocation(line: 154, column: 13, scope: !1919)
!1994 = !DILocation(line: 157, column: 20, scope: !1919)
!1995 = !DILocation(line: 158, column: 18, scope: !1919)
!1996 = !DILocation(line: 159, column: 67, scope: !1919)
!1997 = !DILocation(line: 159, column: 74, scope: !1919)
!1998 = !DILocation(line: 159, column: 64, scope: !1919)
!1999 = !DILocation(line: 159, column: 56, scope: !1919)
!2000 = !DILocation(line: 160, column: 29, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1919, file: !805, line: 160, column: 17)
!2002 = !DILocation(line: 161, column: 17, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2001, file: !805, line: 160, column: 60)
!2004 = !DILocation(line: 162, column: 13, scope: !2003)
!2005 = !DILocation(line: 166, column: 20, scope: !1919)
!2006 = !DILocation(line: 167, column: 18, scope: !1919)
!2007 = !DILocation(line: 168, column: 67, scope: !1919)
!2008 = !DILocation(line: 168, column: 74, scope: !1919)
!2009 = !DILocation(line: 168, column: 64, scope: !1919)
!2010 = !DILocation(line: 168, column: 56, scope: !1919)
!2011 = !DILocation(line: 169, column: 29, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1919, file: !805, line: 169, column: 17)
!2013 = !DILocation(line: 170, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2012, file: !805, line: 169, column: 45)
!2015 = !DILocation(line: 171, column: 13, scope: !2014)
!2016 = !DILocation(line: 175, column: 20, scope: !1919)
!2017 = !DILocation(line: 176, column: 18, scope: !1919)
!2018 = !DILocation(line: 177, column: 67, scope: !1919)
!2019 = !DILocation(line: 177, column: 74, scope: !1919)
!2020 = !DILocation(line: 177, column: 64, scope: !1919)
!2021 = !DILocation(line: 177, column: 56, scope: !1919)
!2022 = !DILocation(line: 178, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1919, file: !805, line: 178, column: 17)
!2024 = !DILocation(line: 178, column: 17, scope: !1919)
!2025 = !DILocation(line: 179, column: 17, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !805, line: 178, column: 30)
!2027 = !DILocation(line: 180, column: 13, scope: !2026)
!2028 = !DILocation(line: 184, column: 20, scope: !1919)
!2029 = !DILocation(line: 185, column: 18, scope: !1919)
!2030 = !DILocation(line: 186, column: 67, scope: !1919)
!2031 = !DILocation(line: 186, column: 74, scope: !1919)
!2032 = !DILocation(line: 186, column: 64, scope: !1919)
!2033 = !DILocation(line: 186, column: 56, scope: !1919)
!2034 = !DILocation(line: 187, column: 29, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1919, file: !805, line: 187, column: 17)
!2036 = !DILocation(line: 188, column: 17, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2035, file: !805, line: 187, column: 45)
!2038 = !DILocation(line: 189, column: 13, scope: !2037)
!2039 = !DILocation(line: 193, column: 20, scope: !1919)
!2040 = !DILocation(line: 194, column: 18, scope: !1919)
!2041 = !DILocation(line: 195, column: 67, scope: !1919)
!2042 = !DILocation(line: 195, column: 74, scope: !1919)
!2043 = !DILocation(line: 195, column: 64, scope: !1919)
!2044 = !DILocation(line: 195, column: 56, scope: !1919)
!2045 = !DILocation(line: 196, column: 29, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1919, file: !805, line: 196, column: 17)
!2047 = !DILocation(line: 197, column: 17, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2046, file: !805, line: 196, column: 45)
!2049 = !DILocation(line: 198, column: 13, scope: !2048)
!2050 = !DILocation(line: 202, column: 20, scope: !1919)
!2051 = !DILocation(line: 203, column: 18, scope: !1919)
!2052 = !DILocation(line: 204, column: 67, scope: !1919)
!2053 = !DILocation(line: 204, column: 64, scope: !1919)
!2054 = !DILocation(line: 204, column: 56, scope: !1919)
!2055 = !DILocation(line: 205, column: 29, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1919, file: !805, line: 205, column: 17)
!2057 = !DILocation(line: 206, column: 17, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !805, line: 205, column: 45)
!2059 = !DILocation(line: 207, column: 13, scope: !2058)
!2060 = !DILocation(line: 211, column: 20, scope: !1919)
!2061 = !DILocation(line: 212, column: 18, scope: !1919)
!2062 = !DILocation(line: 213, column: 67, scope: !1919)
!2063 = !DILocation(line: 213, column: 74, scope: !1919)
!2064 = !DILocation(line: 213, column: 64, scope: !1919)
!2065 = !DILocation(line: 213, column: 56, scope: !1919)
!2066 = !DILocation(line: 214, column: 13, scope: !1919)
!2067 = !DILocation(line: 217, column: 20, scope: !1919)
!2068 = !DILocation(line: 218, column: 18, scope: !1919)
!2069 = !DILocation(line: 219, column: 67, scope: !1919)
!2070 = !DILocation(line: 219, column: 74, scope: !1919)
!2071 = !DILocation(line: 219, column: 64, scope: !1919)
!2072 = !DILocation(line: 219, column: 56, scope: !1919)
!2073 = !DILocation(line: 220, column: 13, scope: !1919)
!2074 = !DILocation(line: 223, column: 20, scope: !1919)
!2075 = !DILocation(line: 224, column: 18, scope: !1919)
!2076 = !DILocation(line: 225, column: 67, scope: !1919)
!2077 = !DILocation(line: 225, column: 74, scope: !1919)
!2078 = !DILocation(line: 225, column: 64, scope: !1919)
!2079 = !DILocation(line: 225, column: 56, scope: !1919)
!2080 = !DILocation(line: 226, column: 13, scope: !1919)
!2081 = !DILocation(line: 229, column: 20, scope: !1919)
!2082 = !DILocation(line: 230, column: 18, scope: !1919)
!2083 = !DILocation(line: 231, column: 67, scope: !1919)
!2084 = !DILocation(line: 231, column: 74, scope: !1919)
!2085 = !DILocation(line: 231, column: 64, scope: !1919)
!2086 = !DILocation(line: 231, column: 56, scope: !1919)
!2087 = !DILocation(line: 232, column: 13, scope: !1919)
!2088 = !DILocation(line: 235, column: 20, scope: !1919)
!2089 = !DILocation(line: 236, column: 18, scope: !1919)
!2090 = !DILocation(line: 237, column: 66, scope: !1919)
!2091 = !DILocation(line: 237, column: 73, scope: !1919)
!2092 = !DILocation(line: 237, column: 63, scope: !1919)
!2093 = !DILocation(line: 237, column: 56, scope: !1919)
!2094 = !DILocation(line: 238, column: 13, scope: !1919)
!2095 = !DILocation(line: 241, column: 20, scope: !1919)
!2096 = !DILocation(line: 242, column: 18, scope: !1919)
!2097 = !DILocation(line: 243, column: 67, scope: !1919)
!2098 = !DILocation(line: 243, column: 74, scope: !1919)
!2099 = !DILocation(line: 243, column: 64, scope: !1919)
!2100 = !DILocation(line: 243, column: 56, scope: !1919)
!2101 = !DILocation(line: 244, column: 13, scope: !1919)
!2102 = !DILocation(line: 247, column: 20, scope: !1919)
!2103 = !DILocation(line: 248, column: 18, scope: !1919)
!2104 = !DILocation(line: 249, column: 67, scope: !1919)
!2105 = !DILocation(line: 249, column: 74, scope: !1919)
!2106 = !DILocation(line: 249, column: 64, scope: !1919)
!2107 = !DILocation(line: 249, column: 56, scope: !1919)
!2108 = !DILocation(line: 250, column: 13, scope: !1919)
!2109 = !DILocation(line: 253, column: 20, scope: !1919)
!2110 = !DILocation(line: 254, column: 18, scope: !1919)
!2111 = !DILocation(line: 255, column: 67, scope: !1919)
!2112 = !DILocation(line: 255, column: 74, scope: !1919)
!2113 = !DILocation(line: 255, column: 64, scope: !1919)
!2114 = !DILocation(line: 255, column: 56, scope: !1919)
!2115 = !DILocation(line: 256, column: 13, scope: !1919)
!2116 = !DILocation(line: 259, column: 20, scope: !1919)
!2117 = !DILocation(line: 260, column: 18, scope: !1919)
!2118 = !DILocation(line: 261, column: 67, scope: !1919)
!2119 = !DILocation(line: 261, column: 74, scope: !1919)
!2120 = !DILocation(line: 261, column: 64, scope: !1919)
!2121 = !DILocation(line: 261, column: 56, scope: !1919)
!2122 = !DILocation(line: 262, column: 13, scope: !1919)
!2123 = !DILocation(line: 265, column: 20, scope: !1919)
!2124 = !DILocation(line: 266, column: 18, scope: !1919)
!2125 = !DILocation(line: 267, column: 67, scope: !1919)
!2126 = !DILocation(line: 267, column: 74, scope: !1919)
!2127 = !DILocation(line: 267, column: 64, scope: !1919)
!2128 = !DILocation(line: 267, column: 56, scope: !1919)
!2129 = !DILocation(line: 268, column: 13, scope: !1919)
!2130 = !DILocation(line: 271, column: 20, scope: !1919)
!2131 = !DILocation(line: 272, column: 18, scope: !1919)
!2132 = !DILocation(line: 273, column: 67, scope: !1919)
!2133 = !DILocation(line: 273, column: 74, scope: !1919)
!2134 = !DILocation(line: 273, column: 64, scope: !1919)
!2135 = !DILocation(line: 273, column: 56, scope: !1919)
!2136 = !DILocation(line: 274, column: 13, scope: !1919)
!2137 = !DILocation(line: 278, column: 1, scope: !1908)
!2138 = distinct !DISubprogram(name: "ir_tx_configure", scope: !3, file: !3, line: 62, type: !2139, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!223, !252}
!2141 = !{!2142}
!2142 = !DILocalVariable(name: "mode", arg: 1, scope: !2138, file: !3, line: 62, type: !252)
!2143 = !DILocation(line: 0, scope: !2138)
!2144 = !DILocation(line: 64, column: 31, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 64, column: 9)
!2146 = !DILocation(line: 64, column: 28, scope: !2145)
!2147 = !DILocation(line: 64, column: 9, scope: !2138)
!2148 = !DILocation(line: 68, column: 5, scope: !2138)
!2149 = !DILocation(line: 70, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 70, column: 9)
!2151 = !DILocation(line: 70, column: 9, scope: !2138)
!2152 = !DILocation(line: 72, column: 13, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 72, column: 13)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 70, column: 28)
!2155 = !DILocation(line: 72, column: 13, scope: !2154)
!2156 = !DILocation(line: 76, column: 13, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 76, column: 13)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 75, column: 12)
!2159 = !DILocation(line: 76, column: 13, scope: !2158)
!2160 = !DILocation(line: 81, column: 17, scope: !2138)
!2161 = !DILocation(line: 83, column: 5, scope: !2138)
!2162 = !DILocation(line: 84, column: 1, scope: !2138)
!2163 = distinct !DISubprogram(name: "ir_tx_send", scope: !3, file: !3, line: 86, type: !2164, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!223, !31, !31, !31, !252, !252}
!2166 = !{!2167, !2168, !2169, !2170, !2171}
!2167 = !DILocalVariable(name: "data0", arg: 1, scope: !2163, file: !3, line: 86, type: !31)
!2168 = !DILocalVariable(name: "data1", arg: 2, scope: !2163, file: !3, line: 86, type: !31)
!2169 = !DILocalVariable(name: "data2", arg: 3, scope: !2163, file: !3, line: 86, type: !31)
!2170 = !DILocalVariable(name: "bit_length", arg: 4, scope: !2163, file: !3, line: 86, type: !252)
!2171 = !DILocalVariable(name: "repeat_code", arg: 5, scope: !2163, file: !3, line: 86, type: !252)
!2172 = !DILocation(line: 0, scope: !2163)
!2173 = !DILocation(line: 88, column: 22, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 88, column: 9)
!2175 = !DILocation(line: 88, column: 9, scope: !2163)
!2176 = !DILocation(line: 89, column: 33, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 88, column: 35)
!2178 = !DILocation(line: 90, column: 5, scope: !2177)
!2179 = !DILocation(line: 93, column: 44, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 90, column: 42)
!2181 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 90, column: 16)
!2182 = !DILocation(line: 94, column: 5, scope: !2180)
!2183 = !DILocation(line: 96, column: 9, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 96, column: 9)
!2185 = !DILocation(line: 101, column: 1, scope: !2163)
!2186 = distinct !DISubprogram(name: "ir_tx_pulse_width_configure", scope: !3, file: !3, line: 103, type: !2187, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!223, !335, !252}
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "frequency", arg: 1, scope: !2186, file: !3, line: 103, type: !335)
!2191 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !2186, file: !3, line: 103, type: !252)
!2192 = !DILocation(line: 0, scope: !2186)
!2193 = !DILocation(line: 105, column: 5, scope: !2186)
!2194 = !DILocation(line: 106, column: 9, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 106, column: 9)
!2196 = !DILocation(line: 110, column: 1, scope: !2186)
!2197 = distinct !DISubprogram(name: "ir_tx_pulse_width_send", scope: !3, file: !3, line: 112, type: !2198, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!223, !252, !455, !252}
!2200 = !{!2201, !2202, !2203}
!2201 = !DILocalVariable(name: "data_length", arg: 1, scope: !2197, file: !3, line: 112, type: !252)
!2202 = !DILocalVariable(name: "data", arg: 2, scope: !2197, file: !3, line: 112, type: !455)
!2203 = !DILocalVariable(name: "base_period_us", arg: 3, scope: !2197, file: !3, line: 112, type: !252)
!2204 = !DILocation(line: 0, scope: !2197)
!2205 = !DILocation(line: 114, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 114, column: 9)
!2207 = !DILocation(line: 118, column: 1, scope: !2197)
!2208 = distinct !DISubprogram(name: "ir_tx_interrupt_clear", scope: !3, file: !3, line: 120, type: !2209, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!223}
!2211 = !{}
!2212 = !DILocation(line: 122, column: 5, scope: !2208)
!2213 = !DILocation(line: 123, column: 5, scope: !2208)
!2214 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !886, file: !886, line: 47, type: !2215, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !31}
!2217 = !{!2218}
!2218 = !DILocalVariable(name: "addr", arg: 1, scope: !2214, file: !886, line: 47, type: !31)
!2219 = !DILocation(line: 0, scope: !2214)
!2220 = !DILocation(line: 49, column: 15, scope: !2214)
!2221 = !DILocation(line: 51, column: 5, scope: !2214)
!2222 = !{i64 2624}
!2223 = !DILocation(line: 52, column: 5, scope: !2214)
!2224 = !{i64 2651}
!2225 = !DILocation(line: 53, column: 1, scope: !2214)
!2226 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !886, file: !886, line: 56, type: !2227, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !7}
!2229 = !{!2230}
!2230 = !DILocalVariable(name: "source", arg: 1, scope: !2226, file: !886, line: 56, type: !7)
!2231 = !DILocation(line: 0, scope: !2226)
!2232 = !DILocation(line: 58, column: 16, scope: !2226)
!2233 = !DILocation(line: 59, column: 1, scope: !2226)
!2234 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !886, file: !886, line: 61, type: !2235, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!31}
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "mask", scope: !2234, file: !886, line: 63, type: !31)
!2239 = !DILocation(line: 470, column: 3, scope: !2240, inlinedAt: !2244)
!2240 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2241, file: !2241, line: 466, type: !2235, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2242)
!2241 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "result", scope: !2240, file: !2241, line: 468, type: !31)
!2244 = distinct !DILocation(line: 64, column: 5, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2234, file: !886, line: 64, column: 5)
!2246 = !{i64 302171}
!2247 = !DILocation(line: 0, scope: !2240, inlinedAt: !2244)
!2248 = !DILocation(line: 0, scope: !2234)
!2249 = !DILocation(line: 330, column: 3, scope: !2250, inlinedAt: !2251)
!2250 = distinct !DISubprogram(name: "__disable_irq", scope: !2241, file: !2241, line: 328, type: !413, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2211)
!2251 = distinct !DILocation(line: 64, column: 5, scope: !2245)
!2252 = !{i64 298835}
!2253 = !DILocation(line: 65, column: 5, scope: !2234)
!2254 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !886, file: !886, line: 68, type: !2215, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2255)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "mask", arg: 1, scope: !2254, file: !886, line: 68, type: !31)
!2257 = !DILocation(line: 0, scope: !2254)
!2258 = !DILocalVariable(name: "priMask", arg: 1, scope: !2259, file: !2241, line: 481, type: !31)
!2259 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2241, file: !2241, line: 481, type: !2215, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !2260)
!2260 = !{!2258}
!2261 = !DILocation(line: 0, scope: !2259, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 70, column: 5, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2254, file: !886, line: 70, column: 5)
!2264 = !DILocation(line: 483, column: 3, scope: !2259, inlinedAt: !2262)
!2265 = !{i64 302489}
!2266 = !DILocation(line: 71, column: 1, scope: !2254)
!2267 = distinct !DISubprogram(name: "pinmux_config", scope: !931, file: !931, line: 54, type: !2268, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!223, !1033, !31}
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2267, file: !931, line: 54, type: !1033)
!2272 = !DILocalVariable(name: "function", arg: 2, scope: !2267, file: !931, line: 54, type: !31)
!2273 = !DILocalVariable(name: "ePadIndex", scope: !2267, file: !931, line: 56, type: !1911)
!2274 = !DILocation(line: 0, scope: !2267)
!2275 = !DILocation(line: 60, column: 5, scope: !2267)
!2276 = !DILocation(line: 205, column: 38, scope: !2267)
!2277 = !DILocation(line: 205, column: 5, scope: !2267)
!2278 = !DILocation(line: 207, column: 5, scope: !2267)
!2279 = !DILocation(line: 208, column: 1, scope: !2267)
!2280 = distinct !DISubprogram(name: "top_xtal_init", scope: !25, file: !25, line: 52, type: !413, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2281)
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "u4RegVal", scope: !2280, file: !25, line: 54, type: !31)
!2283 = !DILocalVariable(name: "reg", scope: !2280, file: !25, line: 55, type: !635)
!2284 = !DILocation(line: 0, scope: !2280)
!2285 = !DILocation(line: 55, column: 25, scope: !2280)
!2286 = !DILocation(line: 56, column: 16, scope: !2280)
!2287 = !DILocation(line: 56, column: 23, scope: !2280)
!2288 = !DILocation(line: 58, column: 16, scope: !2280)
!2289 = !DILocation(line: 61, column: 5, scope: !2280)
!2290 = !DILocation(line: 59, column: 14, scope: !2280)
!2291 = !DILocation(line: 0, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2280, file: !25, line: 61, column: 18)
!2293 = !DILocation(line: 87, column: 38, scope: !2280)
!2294 = !DILocation(line: 88, column: 21, scope: !2280)
!2295 = !DILocation(line: 88, column: 19, scope: !2280)
!2296 = !DILocation(line: 89, column: 5, scope: !2280)
!2297 = !DILocation(line: 90, column: 17, scope: !2280)
!2298 = !DILocation(line: 90, column: 33, scope: !2280)
!2299 = !DILocation(line: 90, column: 5, scope: !2280)
!2300 = !DILocation(line: 91, column: 1, scope: !2280)
!2301 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !25, file: !25, line: 98, type: !2235, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2211)
!2302 = !DILocation(line: 100, column: 12, scope: !2301)
!2303 = !DILocation(line: 100, column: 5, scope: !2301)
!2304 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !25, file: !25, line: 108, type: !2235, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2211)
!2305 = !DILocation(line: 110, column: 12, scope: !2304)
!2306 = !DILocation(line: 110, column: 5, scope: !2304)
!2307 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !25, file: !25, line: 118, type: !413, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2308)
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "reg", scope: !2307, file: !25, line: 120, type: !30)
!2310 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2307, file: !25, line: 121, type: !29)
!2311 = !DILocation(line: 120, column: 5, scope: !2307)
!2312 = !DILocation(line: 120, column: 23, scope: !2307)
!2313 = !DILocation(line: 0, scope: !2307)
!2314 = !DILocation(line: 123, column: 11, scope: !2307)
!2315 = !DILocation(line: 123, column: 9, scope: !2307)
!2316 = !DILocation(line: 124, column: 12, scope: !2307)
!2317 = !DILocation(line: 124, column: 16, scope: !2307)
!2318 = !DILocation(line: 124, column: 39, scope: !2307)
!2319 = !DILocation(line: 124, column: 9, scope: !2307)
!2320 = !DILocation(line: 126, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2307, file: !25, line: 126, column: 9)
!2322 = !DILocation(line: 126, column: 13, scope: !2321)
!2323 = !DILocation(line: 126, column: 9, scope: !2307)
!2324 = !DILocation(line: 127, column: 15, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !25, line: 126, column: 47)
!2326 = !DILocation(line: 127, column: 13, scope: !2325)
!2327 = !DILocation(line: 128, column: 15, scope: !2325)
!2328 = !DILocation(line: 128, column: 19, scope: !2325)
!2329 = !DILocation(line: 128, column: 13, scope: !2325)
!2330 = !DILocation(line: 129, column: 15, scope: !2325)
!2331 = !DILocation(line: 129, column: 19, scope: !2325)
!2332 = !DILocation(line: 129, column: 13, scope: !2325)
!2333 = !DILocation(line: 130, column: 46, scope: !2325)
!2334 = !DILocation(line: 130, column: 9, scope: !2325)
!2335 = !DILocation(line: 132, column: 9, scope: !2325)
!2336 = !DILocation(line: 133, column: 19, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2325, file: !25, line: 132, column: 12)
!2338 = !DILocation(line: 133, column: 17, scope: !2337)
!2339 = !DILocation(line: 134, column: 19, scope: !2337)
!2340 = !DILocation(line: 134, column: 23, scope: !2337)
!2341 = !DILocation(line: 134, column: 17, scope: !2337)
!2342 = !DILocation(line: 135, column: 19, scope: !2325)
!2343 = !DILocation(line: 135, column: 18, scope: !2325)
!2344 = !DILocation(line: 135, column: 9, scope: !2337)
!2345 = distinct !{!2345, !2335, !2346}
!2346 = !DILocation(line: 135, column: 22, scope: !2325)
!2347 = !DILocation(line: 138, column: 1, scope: !2307)
!2348 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2349, file: !2349, line: 176, type: !2350, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2354)
!2349 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!31, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2354 = !{!2355}
!2355 = !DILocalVariable(name: "Register", arg: 1, scope: !2348, file: !2349, line: 176, type: !2352)
!2356 = !DILocation(line: 0, scope: !2348)
!2357 = !DILocation(line: 178, column: 13, scope: !2348)
!2358 = !DILocation(line: 178, column: 12, scope: !2348)
!2359 = !DILocation(line: 178, column: 5, scope: !2348)
!2360 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2349, file: !2349, line: 171, type: !2361, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{null, !2352, !31}
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "Register", arg: 1, scope: !2360, file: !2349, line: 171, type: !2352)
!2365 = !DILocalVariable(name: "Value", arg: 2, scope: !2360, file: !2349, line: 171, type: !31)
!2366 = !DILocation(line: 0, scope: !2360)
!2367 = !DILocation(line: 173, column: 6, scope: !2360)
!2368 = !DILocation(line: 173, column: 36, scope: !2360)
!2369 = !DILocation(line: 174, column: 1, scope: !2360)
!2370 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !25, file: !25, line: 145, type: !2371, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !252}
!2373 = !{!2374, !2375, !2376}
!2374 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2370, file: !25, line: 145, type: !252)
!2375 = !DILocalVariable(name: "reg", scope: !2370, file: !25, line: 147, type: !30)
!2376 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2370, file: !25, line: 148, type: !29)
!2377 = !DILocation(line: 0, scope: !2370)
!2378 = !DILocation(line: 147, column: 5, scope: !2370)
!2379 = !DILocation(line: 147, column: 23, scope: !2370)
!2380 = !DILocation(line: 150, column: 11, scope: !2370)
!2381 = !DILocation(line: 150, column: 9, scope: !2370)
!2382 = !DILocation(line: 151, column: 12, scope: !2370)
!2383 = !DILocation(line: 151, column: 16, scope: !2370)
!2384 = !DILocation(line: 151, column: 39, scope: !2370)
!2385 = !DILocation(line: 151, column: 9, scope: !2370)
!2386 = !DILocation(line: 153, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2370, file: !25, line: 153, column: 9)
!2388 = !DILocation(line: 153, column: 13, scope: !2387)
!2389 = !DILocation(line: 153, column: 9, scope: !2370)
!2390 = !DILocation(line: 154, column: 15, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2387, file: !25, line: 153, column: 45)
!2392 = !DILocation(line: 154, column: 13, scope: !2391)
!2393 = !DILocation(line: 155, column: 15, scope: !2391)
!2394 = !DILocation(line: 155, column: 19, scope: !2391)
!2395 = !DILocation(line: 155, column: 13, scope: !2391)
!2396 = !DILocation(line: 156, column: 15, scope: !2391)
!2397 = !DILocation(line: 156, column: 19, scope: !2391)
!2398 = !DILocation(line: 156, column: 13, scope: !2391)
!2399 = !DILocation(line: 157, column: 15, scope: !2391)
!2400 = !DILocation(line: 157, column: 13, scope: !2391)
!2401 = !DILocation(line: 158, column: 46, scope: !2391)
!2402 = !DILocation(line: 158, column: 9, scope: !2391)
!2403 = !DILocation(line: 160, column: 15, scope: !2391)
!2404 = !DILocation(line: 160, column: 13, scope: !2391)
!2405 = !DILocation(line: 161, column: 15, scope: !2391)
!2406 = !DILocation(line: 161, column: 19, scope: !2391)
!2407 = !DILocation(line: 161, column: 13, scope: !2391)
!2408 = !DILocation(line: 162, column: 15, scope: !2391)
!2409 = !DILocation(line: 162, column: 19, scope: !2391)
!2410 = !DILocation(line: 162, column: 13, scope: !2391)
!2411 = !DILocation(line: 163, column: 15, scope: !2391)
!2412 = !DILocation(line: 163, column: 19, scope: !2391)
!2413 = !DILocation(line: 163, column: 13, scope: !2391)
!2414 = !DILocation(line: 164, column: 46, scope: !2391)
!2415 = !DILocation(line: 164, column: 9, scope: !2391)
!2416 = !DILocation(line: 166, column: 9, scope: !2391)
!2417 = !DILocation(line: 167, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2391, file: !25, line: 166, column: 12)
!2419 = !DILocation(line: 167, column: 17, scope: !2418)
!2420 = !DILocation(line: 168, column: 19, scope: !2418)
!2421 = !DILocation(line: 168, column: 23, scope: !2418)
!2422 = !DILocation(line: 168, column: 17, scope: !2418)
!2423 = !DILocation(line: 169, column: 19, scope: !2391)
!2424 = !DILocation(line: 169, column: 18, scope: !2391)
!2425 = !DILocation(line: 169, column: 9, scope: !2418)
!2426 = distinct !{!2426, !2416, !2427}
!2427 = !DILocation(line: 169, column: 22, scope: !2391)
!2428 = !DILocation(line: 171, column: 15, scope: !2391)
!2429 = !DILocation(line: 171, column: 13, scope: !2391)
!2430 = !DILocation(line: 172, column: 15, scope: !2391)
!2431 = !DILocation(line: 172, column: 19, scope: !2391)
!2432 = !DILocation(line: 172, column: 13, scope: !2391)
!2433 = !DILocation(line: 173, column: 15, scope: !2391)
!2434 = !DILocation(line: 173, column: 19, scope: !2391)
!2435 = !DILocation(line: 173, column: 13, scope: !2391)
!2436 = !DILocation(line: 174, column: 5, scope: !2391)
!2437 = !DILocation(line: 176, column: 11, scope: !2370)
!2438 = !DILocation(line: 176, column: 9, scope: !2370)
!2439 = !DILocation(line: 177, column: 9, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2370, file: !25, line: 177, column: 9)
!2441 = !DILocation(line: 0, scope: !2440)
!2442 = !DILocation(line: 177, column: 9, scope: !2370)
!2443 = !DILocation(line: 178, column: 19, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !25, line: 177, column: 17)
!2445 = !DILocation(line: 178, column: 13, scope: !2444)
!2446 = !DILocation(line: 179, column: 5, scope: !2444)
!2447 = !DILocation(line: 180, column: 13, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !25, line: 179, column: 12)
!2449 = !DILocation(line: 182, column: 42, scope: !2370)
!2450 = !DILocation(line: 182, column: 5, scope: !2370)
!2451 = !DILocation(line: 184, column: 1, scope: !2370)
!2452 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !25, file: !25, line: 191, type: !413, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2453)
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "reg", scope: !2452, file: !25, line: 193, type: !30)
!2455 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2452, file: !25, line: 194, type: !29)
!2456 = !DILocation(line: 193, column: 5, scope: !2452)
!2457 = !DILocation(line: 193, column: 23, scope: !2452)
!2458 = !DILocation(line: 0, scope: !2452)
!2459 = !DILocation(line: 196, column: 11, scope: !2452)
!2460 = !DILocation(line: 196, column: 9, scope: !2452)
!2461 = !DILocation(line: 197, column: 11, scope: !2452)
!2462 = !DILocation(line: 197, column: 15, scope: !2452)
!2463 = !DILocation(line: 197, column: 9, scope: !2452)
!2464 = !DILocation(line: 198, column: 11, scope: !2452)
!2465 = !DILocation(line: 198, column: 15, scope: !2452)
!2466 = !DILocation(line: 198, column: 9, scope: !2452)
!2467 = !DILocation(line: 199, column: 11, scope: !2452)
!2468 = !DILocation(line: 199, column: 9, scope: !2452)
!2469 = !DILocation(line: 200, column: 42, scope: !2452)
!2470 = !DILocation(line: 200, column: 5, scope: !2452)
!2471 = !DILocation(line: 202, column: 11, scope: !2452)
!2472 = !DILocation(line: 202, column: 9, scope: !2452)
!2473 = !DILocation(line: 203, column: 11, scope: !2452)
!2474 = !DILocation(line: 203, column: 15, scope: !2452)
!2475 = !DILocation(line: 203, column: 9, scope: !2452)
!2476 = !DILocation(line: 204, column: 11, scope: !2452)
!2477 = !DILocation(line: 204, column: 15, scope: !2452)
!2478 = !DILocation(line: 204, column: 9, scope: !2452)
!2479 = !DILocation(line: 205, column: 11, scope: !2452)
!2480 = !DILocation(line: 205, column: 9, scope: !2452)
!2481 = !DILocation(line: 206, column: 42, scope: !2452)
!2482 = !DILocation(line: 206, column: 5, scope: !2452)
!2483 = !DILocation(line: 209, column: 1, scope: !2452)
!2484 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !25, file: !25, line: 216, type: !413, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2485)
!2485 = !{!2486, !2487}
!2486 = !DILocalVariable(name: "reg", scope: !2484, file: !25, line: 218, type: !30)
!2487 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2484, file: !25, line: 219, type: !29)
!2488 = !DILocation(line: 218, column: 5, scope: !2484)
!2489 = !DILocation(line: 218, column: 23, scope: !2484)
!2490 = !DILocation(line: 0, scope: !2484)
!2491 = !DILocation(line: 222, column: 11, scope: !2484)
!2492 = !DILocation(line: 222, column: 9, scope: !2484)
!2493 = !DILocation(line: 223, column: 11, scope: !2484)
!2494 = !DILocation(line: 223, column: 15, scope: !2484)
!2495 = !DILocation(line: 223, column: 9, scope: !2484)
!2496 = !DILocation(line: 224, column: 11, scope: !2484)
!2497 = !DILocation(line: 224, column: 9, scope: !2484)
!2498 = !DILocation(line: 225, column: 39, scope: !2484)
!2499 = !DILocation(line: 225, column: 5, scope: !2484)
!2500 = !DILocation(line: 228, column: 11, scope: !2484)
!2501 = !DILocation(line: 228, column: 9, scope: !2484)
!2502 = !DILocation(line: 229, column: 11, scope: !2484)
!2503 = !DILocation(line: 229, column: 15, scope: !2484)
!2504 = !DILocation(line: 229, column: 9, scope: !2484)
!2505 = !DILocation(line: 230, column: 11, scope: !2484)
!2506 = !DILocation(line: 230, column: 9, scope: !2484)
!2507 = !DILocation(line: 231, column: 39, scope: !2484)
!2508 = !DILocation(line: 231, column: 5, scope: !2484)
!2509 = !DILocation(line: 233, column: 5, scope: !2484)
!2510 = !DILocation(line: 233, column: 12, scope: !2484)
!2511 = !DILocation(line: 233, column: 19, scope: !2484)
!2512 = !DILocation(line: 233, column: 16, scope: !2484)
!2513 = distinct !{!2513, !2509, !2514}
!2514 = !DILocation(line: 233, column: 52, scope: !2484)
!2515 = !DILocation(line: 235, column: 21, scope: !2484)
!2516 = !DILocation(line: 235, column: 19, scope: !2484)
!2517 = !DILocation(line: 236, column: 5, scope: !2484)
!2518 = !DILocation(line: 237, column: 17, scope: !2484)
!2519 = !DILocation(line: 237, column: 33, scope: !2484)
!2520 = !DILocation(line: 237, column: 5, scope: !2484)
!2521 = !DILocation(line: 239, column: 1, scope: !2484)
!2522 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !25, file: !25, line: 246, type: !413, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2523)
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "reg", scope: !2522, file: !25, line: 248, type: !30)
!2525 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2522, file: !25, line: 249, type: !29)
!2526 = !DILocation(line: 248, column: 5, scope: !2522)
!2527 = !DILocation(line: 248, column: 23, scope: !2522)
!2528 = !DILocation(line: 0, scope: !2522)
!2529 = !DILocation(line: 252, column: 5, scope: !2522)
!2530 = !DILocation(line: 255, column: 11, scope: !2522)
!2531 = !DILocation(line: 255, column: 9, scope: !2522)
!2532 = !DILocation(line: 256, column: 11, scope: !2522)
!2533 = !DILocation(line: 256, column: 15, scope: !2522)
!2534 = !DILocation(line: 256, column: 9, scope: !2522)
!2535 = !DILocation(line: 257, column: 11, scope: !2522)
!2536 = !DILocation(line: 257, column: 15, scope: !2522)
!2537 = !DILocation(line: 257, column: 9, scope: !2522)
!2538 = !DILocation(line: 258, column: 39, scope: !2522)
!2539 = !DILocation(line: 258, column: 5, scope: !2522)
!2540 = !DILocation(line: 260, column: 5, scope: !2522)
!2541 = !DILocation(line: 260, column: 12, scope: !2522)
!2542 = !DILocation(line: 260, column: 19, scope: !2522)
!2543 = !DILocation(line: 260, column: 16, scope: !2522)
!2544 = distinct !{!2544, !2540, !2545}
!2545 = !DILocation(line: 260, column: 52, scope: !2522)
!2546 = !DILocation(line: 263, column: 11, scope: !2522)
!2547 = !DILocation(line: 263, column: 9, scope: !2522)
!2548 = !DILocation(line: 264, column: 11, scope: !2522)
!2549 = !DILocation(line: 264, column: 15, scope: !2522)
!2550 = !DILocation(line: 264, column: 9, scope: !2522)
!2551 = !DILocation(line: 265, column: 11, scope: !2522)
!2552 = !DILocation(line: 265, column: 15, scope: !2522)
!2553 = !DILocation(line: 265, column: 9, scope: !2522)
!2554 = !DILocation(line: 266, column: 39, scope: !2522)
!2555 = !DILocation(line: 266, column: 5, scope: !2522)
!2556 = !DILocation(line: 269, column: 11, scope: !2522)
!2557 = !DILocation(line: 269, column: 9, scope: !2522)
!2558 = !DILocation(line: 270, column: 11, scope: !2522)
!2559 = !DILocation(line: 270, column: 15, scope: !2522)
!2560 = !DILocation(line: 270, column: 9, scope: !2522)
!2561 = !DILocation(line: 271, column: 11, scope: !2522)
!2562 = !DILocation(line: 271, column: 15, scope: !2522)
!2563 = !DILocation(line: 271, column: 9, scope: !2522)
!2564 = !DILocation(line: 272, column: 39, scope: !2522)
!2565 = !DILocation(line: 272, column: 5, scope: !2522)
!2566 = !DILocation(line: 273, column: 19, scope: !2522)
!2567 = !DILocation(line: 274, column: 5, scope: !2522)
!2568 = !DILocation(line: 275, column: 17, scope: !2522)
!2569 = !DILocation(line: 275, column: 33, scope: !2522)
!2570 = !DILocation(line: 275, column: 5, scope: !2522)
!2571 = !DILocation(line: 277, column: 1, scope: !2522)
!2572 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !25, file: !25, line: 284, type: !413, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2573)
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "reg", scope: !2572, file: !25, line: 286, type: !30)
!2575 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2572, file: !25, line: 287, type: !29)
!2576 = !DILocation(line: 286, column: 5, scope: !2572)
!2577 = !DILocation(line: 286, column: 23, scope: !2572)
!2578 = !DILocation(line: 0, scope: !2572)
!2579 = !DILocation(line: 290, column: 5, scope: !2572)
!2580 = !DILocation(line: 293, column: 11, scope: !2572)
!2581 = !DILocation(line: 293, column: 9, scope: !2572)
!2582 = !DILocation(line: 294, column: 11, scope: !2572)
!2583 = !DILocation(line: 294, column: 15, scope: !2572)
!2584 = !DILocation(line: 294, column: 9, scope: !2572)
!2585 = !DILocation(line: 295, column: 11, scope: !2572)
!2586 = !DILocation(line: 295, column: 15, scope: !2572)
!2587 = !DILocation(line: 295, column: 9, scope: !2572)
!2588 = !DILocation(line: 296, column: 39, scope: !2572)
!2589 = !DILocation(line: 296, column: 5, scope: !2572)
!2590 = !DILocation(line: 298, column: 5, scope: !2572)
!2591 = !DILocation(line: 298, column: 12, scope: !2572)
!2592 = !DILocation(line: 298, column: 19, scope: !2572)
!2593 = !DILocation(line: 298, column: 16, scope: !2572)
!2594 = distinct !{!2594, !2590, !2595}
!2595 = !DILocation(line: 298, column: 52, scope: !2572)
!2596 = !DILocation(line: 301, column: 11, scope: !2572)
!2597 = !DILocation(line: 301, column: 9, scope: !2572)
!2598 = !DILocation(line: 302, column: 11, scope: !2572)
!2599 = !DILocation(line: 302, column: 15, scope: !2572)
!2600 = !DILocation(line: 302, column: 9, scope: !2572)
!2601 = !DILocation(line: 303, column: 11, scope: !2572)
!2602 = !DILocation(line: 303, column: 15, scope: !2572)
!2603 = !DILocation(line: 303, column: 9, scope: !2572)
!2604 = !DILocation(line: 304, column: 39, scope: !2572)
!2605 = !DILocation(line: 304, column: 5, scope: !2572)
!2606 = !DILocation(line: 307, column: 11, scope: !2572)
!2607 = !DILocation(line: 307, column: 9, scope: !2572)
!2608 = !DILocation(line: 308, column: 11, scope: !2572)
!2609 = !DILocation(line: 308, column: 15, scope: !2572)
!2610 = !DILocation(line: 308, column: 9, scope: !2572)
!2611 = !DILocation(line: 309, column: 11, scope: !2572)
!2612 = !DILocation(line: 309, column: 15, scope: !2572)
!2613 = !DILocation(line: 309, column: 9, scope: !2572)
!2614 = !DILocation(line: 310, column: 39, scope: !2572)
!2615 = !DILocation(line: 310, column: 5, scope: !2572)
!2616 = !DILocation(line: 311, column: 19, scope: !2572)
!2617 = !DILocation(line: 312, column: 5, scope: !2572)
!2618 = !DILocation(line: 313, column: 17, scope: !2572)
!2619 = !DILocation(line: 313, column: 33, scope: !2572)
!2620 = !DILocation(line: 313, column: 5, scope: !2572)
!2621 = !DILocation(line: 315, column: 1, scope: !2572)
!2622 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !25, file: !25, line: 323, type: !413, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2623)
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "reg", scope: !2622, file: !25, line: 325, type: !30)
!2625 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2622, file: !25, line: 326, type: !29)
!2626 = !DILocation(line: 325, column: 5, scope: !2622)
!2627 = !DILocation(line: 325, column: 23, scope: !2622)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 329, column: 5, scope: !2622)
!2630 = !DILocation(line: 332, column: 11, scope: !2622)
!2631 = !DILocation(line: 332, column: 9, scope: !2622)
!2632 = !DILocation(line: 333, column: 11, scope: !2622)
!2633 = !DILocation(line: 333, column: 15, scope: !2622)
!2634 = !DILocation(line: 333, column: 9, scope: !2622)
!2635 = !DILocation(line: 334, column: 11, scope: !2622)
!2636 = !DILocation(line: 334, column: 9, scope: !2622)
!2637 = !DILocation(line: 335, column: 39, scope: !2622)
!2638 = !DILocation(line: 335, column: 5, scope: !2622)
!2639 = !DILocation(line: 337, column: 5, scope: !2622)
!2640 = !DILocation(line: 337, column: 12, scope: !2622)
!2641 = !DILocation(line: 337, column: 19, scope: !2622)
!2642 = !DILocation(line: 337, column: 16, scope: !2622)
!2643 = distinct !{!2643, !2639, !2644}
!2644 = !DILocation(line: 337, column: 52, scope: !2622)
!2645 = !DILocation(line: 340, column: 11, scope: !2622)
!2646 = !DILocation(line: 340, column: 9, scope: !2622)
!2647 = !DILocation(line: 341, column: 11, scope: !2622)
!2648 = !DILocation(line: 341, column: 15, scope: !2622)
!2649 = !DILocation(line: 341, column: 9, scope: !2622)
!2650 = !DILocation(line: 342, column: 11, scope: !2622)
!2651 = !DILocation(line: 342, column: 15, scope: !2622)
!2652 = !DILocation(line: 342, column: 9, scope: !2622)
!2653 = !DILocation(line: 343, column: 39, scope: !2622)
!2654 = !DILocation(line: 343, column: 5, scope: !2622)
!2655 = !DILocation(line: 344, column: 19, scope: !2622)
!2656 = !DILocation(line: 345, column: 5, scope: !2622)
!2657 = !DILocation(line: 346, column: 17, scope: !2622)
!2658 = !DILocation(line: 346, column: 33, scope: !2622)
!2659 = !DILocation(line: 346, column: 5, scope: !2622)
!2660 = !DILocation(line: 348, column: 1, scope: !2622)
!2661 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !25, file: !25, line: 353, type: !413, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2662)
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "reg", scope: !2661, file: !25, line: 355, type: !36)
!2664 = !DILocalVariable(name: "pTopCfgHclk", scope: !2661, file: !25, line: 356, type: !35)
!2665 = !DILocation(line: 355, column: 5, scope: !2661)
!2666 = !DILocation(line: 355, column: 21, scope: !2661)
!2667 = !DILocation(line: 0, scope: !2661)
!2668 = !DILocation(line: 358, column: 11, scope: !2661)
!2669 = !DILocation(line: 358, column: 9, scope: !2661)
!2670 = !DILocation(line: 359, column: 11, scope: !2661)
!2671 = !DILocation(line: 359, column: 15, scope: !2661)
!2672 = !DILocation(line: 359, column: 9, scope: !2661)
!2673 = !DILocation(line: 360, column: 11, scope: !2661)
!2674 = !DILocation(line: 360, column: 9, scope: !2661)
!2675 = !DILocation(line: 361, column: 37, scope: !2661)
!2676 = !DILocation(line: 361, column: 5, scope: !2661)
!2677 = !DILocation(line: 362, column: 1, scope: !2661)
!2678 = distinct !DISubprogram(name: "getc", scope: !43, file: !43, line: 68, type: !2679, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!83}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "rc", scope: !2678, file: !43, line: 71, type: !83)
!2683 = !DILocation(line: 71, column: 14, scope: !2678)
!2684 = !DILocation(line: 0, scope: !2678)
!2685 = !DILocation(line: 72, column: 5, scope: !2678)
!2686 = distinct !DISubprogram(name: "getc_nowait", scope: !43, file: !43, line: 80, type: !2679, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2687)
!2687 = !{!2688}
!2688 = !DILocalVariable(name: "c", scope: !2686, file: !43, line: 82, type: !404)
!2689 = !DILocation(line: 84, column: 9, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !43, line: 84, column: 9)
!2691 = !DILocation(line: 84, column: 40, scope: !2690)
!2692 = !DILocation(line: 84, column: 9, scope: !2686)
!2693 = !DILocation(line: 85, column: 13, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !43, line: 84, column: 47)
!2695 = !DILocation(line: 86, column: 16, scope: !2694)
!2696 = !DILocation(line: 0, scope: !2686)
!2697 = !DILocation(line: 86, column: 9, scope: !2694)
!2698 = !DILocation(line: 0, scope: !2690)
!2699 = !DILocation(line: 90, column: 1, scope: !2686)
!2700 = distinct !DISubprogram(name: "uart_output_char", scope: !43, file: !43, line: 93, type: !2701, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2704)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !2703, !21}
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !46, line: 75, baseType: !45)
!2704 = !{!2705, !2706, !2707}
!2705 = !DILocalVariable(name: "port_no", arg: 1, scope: !2700, file: !43, line: 93, type: !2703)
!2706 = !DILocalVariable(name: "c", arg: 2, scope: !2700, file: !43, line: 93, type: !21)
!2707 = !DILocalVariable(name: "base", scope: !2700, file: !43, line: 95, type: !7)
!2708 = !DILocation(line: 0, scope: !2700)
!2709 = !DILocation(line: 95, column: 25, scope: !2700)
!2710 = !DILocation(line: 97, column: 5, scope: !2700)
!2711 = !DILocation(line: 97, column: 14, scope: !2700)
!2712 = !DILocation(line: 97, column: 42, scope: !2700)
!2713 = !DILocation(line: 97, column: 12, scope: !2700)
!2714 = distinct !{!2714, !2710, !2715}
!2715 = !DILocation(line: 98, column: 9, scope: !2700)
!2716 = !DILocation(line: 99, column: 35, scope: !2700)
!2717 = !DILocation(line: 99, column: 5, scope: !2700)
!2718 = !DILocation(line: 99, column: 33, scope: !2700)
!2719 = !DILocation(line: 102, column: 1, scope: !2700)
!2720 = distinct !DISubprogram(name: "uart_input_char", scope: !43, file: !43, line: 106, type: !2721, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!252, !2703}
!2723 = !{!2724, !2725, !2726}
!2724 = !DILocalVariable(name: "port_no", arg: 1, scope: !2720, file: !43, line: 106, type: !2703)
!2725 = !DILocalVariable(name: "base", scope: !2720, file: !43, line: 108, type: !7)
!2726 = !DILocalVariable(name: "c", scope: !2720, file: !43, line: 109, type: !404)
!2727 = !DILocation(line: 0, scope: !2720)
!2728 = !DILocation(line: 108, column: 25, scope: !2720)
!2729 = !DILocation(line: 111, column: 5, scope: !2720)
!2730 = !DILocation(line: 111, column: 14, scope: !2720)
!2731 = !DILocation(line: 111, column: 42, scope: !2720)
!2732 = !DILocation(line: 111, column: 12, scope: !2720)
!2733 = distinct !{!2733, !2729, !2734}
!2734 = !DILocation(line: 112, column: 9, scope: !2720)
!2735 = !DILocation(line: 114, column: 9, scope: !2720)
!2736 = !DILocation(line: 116, column: 5, scope: !2720)
!2737 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !43, file: !43, line: 120, type: !2738, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!31, !2703}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "port_no", arg: 1, scope: !2737, file: !43, line: 120, type: !2703)
!2742 = !DILocalVariable(name: "base", scope: !2737, file: !43, line: 122, type: !7)
!2743 = !DILocalVariable(name: "c", scope: !2737, file: !43, line: 123, type: !404)
!2744 = !DILocation(line: 0, scope: !2737)
!2745 = !DILocation(line: 122, column: 25, scope: !2737)
!2746 = !DILocation(line: 125, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2737, file: !43, line: 125, column: 9)
!2748 = !DILocation(line: 125, column: 37, scope: !2747)
!2749 = !DILocation(line: 125, column: 9, scope: !2737)
!2750 = !DILocation(line: 126, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !43, line: 125, column: 44)
!2752 = !DILocation(line: 127, column: 16, scope: !2751)
!2753 = !DILocation(line: 127, column: 9, scope: !2751)
!2754 = !DILocation(line: 0, scope: !2747)
!2755 = !DILocation(line: 131, column: 1, scope: !2737)
!2756 = distinct !DISubprogram(name: "halUART_HWInit", scope: !43, file: !43, line: 136, type: !2757, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !2703}
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "u_port", arg: 1, scope: !2756, file: !43, line: 136, type: !2703)
!2761 = !DILocation(line: 0, scope: !2756)
!2762 = !DILocation(line: 139, column: 5, scope: !2756)
!2763 = !DILocation(line: 140, column: 9, scope: !2756)
!2764 = !DILocation(line: 153, column: 5, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !43, line: 147, column: 38)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !43, line: 147, column: 16)
!2767 = distinct !DILexicalBlock(scope: !2756, file: !43, line: 140, column: 9)
!2768 = !DILocation(line: 0, scope: !2767)
!2769 = !DILocation(line: 155, column: 1, scope: !2756)
!2770 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !43, file: !43, line: 158, type: !2771, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2703, !31, !335, !335, !335}
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2789, !2790}
!2774 = !DILocalVariable(name: "u_port", arg: 1, scope: !2770, file: !43, line: 158, type: !2703)
!2775 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2770, file: !43, line: 158, type: !31)
!2776 = !DILocalVariable(name: "databit", arg: 3, scope: !2770, file: !43, line: 158, type: !335)
!2777 = !DILocalVariable(name: "parity", arg: 4, scope: !2770, file: !43, line: 158, type: !335)
!2778 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2770, file: !43, line: 158, type: !335)
!2779 = !DILocalVariable(name: "control_word", scope: !2770, file: !43, line: 160, type: !335)
!2780 = !DILocalVariable(name: "UART_BASE", scope: !2770, file: !43, line: 161, type: !31)
!2781 = !DILocalVariable(name: "data", scope: !2770, file: !43, line: 162, type: !31)
!2782 = !DILocalVariable(name: "uart_lcr", scope: !2770, file: !43, line: 162, type: !31)
!2783 = !DILocalVariable(name: "high_speed_div", scope: !2770, file: !43, line: 162, type: !31)
!2784 = !DILocalVariable(name: "sample_count", scope: !2770, file: !43, line: 162, type: !31)
!2785 = !DILocalVariable(name: "sample_point", scope: !2770, file: !43, line: 162, type: !31)
!2786 = !DILocalVariable(name: "fraction", scope: !2770, file: !43, line: 162, type: !31)
!2787 = !DILocalVariable(name: "fraction_L_mapping", scope: !2770, file: !43, line: 163, type: !2788)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 176, elements: !740)
!2789 = !DILocalVariable(name: "fraction_M_mapping", scope: !2770, file: !43, line: 164, type: !2788)
!2790 = !DILocalVariable(name: "status", scope: !2770, file: !43, line: 165, type: !223)
!2791 = !DILocation(line: 0, scope: !2770)
!2792 = !DILocation(line: 163, column: 15, scope: !2770)
!2793 = !DILocation(line: 164, column: 15, scope: !2770)
!2794 = !DILocation(line: 166, column: 20, scope: !2770)
!2795 = !DILocation(line: 166, column: 18, scope: !2770)
!2796 = !DILocation(line: 168, column: 9, scope: !2770)
!2797 = !DILocation(line: 176, column: 5, scope: !2770)
!2798 = !DILocation(line: 176, column: 44, scope: !2770)
!2799 = !DILocation(line: 177, column: 16, scope: !2770)
!2800 = !DILocation(line: 178, column: 50, scope: !2770)
!2801 = !DILocation(line: 178, column: 38, scope: !2770)
!2802 = !DILocation(line: 179, column: 12, scope: !2770)
!2803 = !DILocation(line: 179, column: 25, scope: !2770)
!2804 = !DILocation(line: 180, column: 28, scope: !2770)
!2805 = !DILocation(line: 180, column: 34, scope: !2770)
!2806 = !DILocation(line: 182, column: 29, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2770, file: !43, line: 181, column: 5)
!2808 = !DILocation(line: 182, column: 46, scope: !2807)
!2809 = !DILocation(line: 183, column: 26, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !43, line: 183, column: 13)
!2811 = !DILocation(line: 183, column: 13, scope: !2807)
!2812 = !DILocation(line: 192, column: 30, scope: !2770)
!2813 = !DILocation(line: 192, column: 35, scope: !2770)
!2814 = !DILocation(line: 192, column: 46, scope: !2770)
!2815 = !DILocation(line: 192, column: 74, scope: !2770)
!2816 = !DILocation(line: 192, column: 53, scope: !2770)
!2817 = !DILocation(line: 192, column: 80, scope: !2770)
!2818 = !DILocation(line: 193, column: 56, scope: !2770)
!2819 = !DILocation(line: 193, column: 5, scope: !2770)
!2820 = !DILocation(line: 193, column: 38, scope: !2770)
!2821 = !DILocation(line: 194, column: 57, scope: !2770)
!2822 = !DILocation(line: 194, column: 63, scope: !2770)
!2823 = !DILocation(line: 194, column: 5, scope: !2770)
!2824 = !DILocation(line: 194, column: 38, scope: !2770)
!2825 = !DILocation(line: 195, column: 5, scope: !2770)
!2826 = !DILocation(line: 195, column: 45, scope: !2770)
!2827 = !DILocation(line: 196, column: 5, scope: !2770)
!2828 = !DILocation(line: 196, column: 47, scope: !2770)
!2829 = !DILocation(line: 197, column: 46, scope: !2770)
!2830 = !DILocation(line: 197, column: 5, scope: !2770)
!2831 = !DILocation(line: 197, column: 44, scope: !2770)
!2832 = !DILocation(line: 198, column: 46, scope: !2770)
!2833 = !DILocation(line: 198, column: 5, scope: !2770)
!2834 = !DILocation(line: 198, column: 44, scope: !2770)
!2835 = !DILocation(line: 199, column: 38, scope: !2770)
!2836 = !DILocation(line: 200, column: 5, scope: !2770)
!2837 = !DILocation(line: 200, column: 38, scope: !2770)
!2838 = !DILocation(line: 202, column: 20, scope: !2770)
!2839 = !DILocation(line: 203, column: 18, scope: !2770)
!2840 = !DILocation(line: 205, column: 18, scope: !2770)
!2841 = !DILocation(line: 207, column: 18, scope: !2770)
!2842 = !DILocation(line: 208, column: 18, scope: !2770)
!2843 = !DILocation(line: 209, column: 5, scope: !2770)
!2844 = !DILocation(line: 213, column: 1, scope: !2770)
!2845 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !43, file: !43, line: 215, type: !2846, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2849)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2703, !223, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!2849 = !{!2850, !2851, !2852}
!2850 = !DILocalVariable(name: "u_port", arg: 1, scope: !2845, file: !43, line: 215, type: !2703)
!2851 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2845, file: !43, line: 215, type: !223)
!2852 = !DILocalVariable(name: "length", arg: 3, scope: !2845, file: !43, line: 215, type: !2848)
!2853 = !DILocation(line: 0, scope: !2845)
!2854 = !DILocation(line: 217, column: 16, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2845, file: !43, line: 217, column: 9)
!2856 = !DILocation(line: 0, scope: !2855)
!2857 = !DILocation(line: 217, column: 9, scope: !2845)
!2858 = !DILocation(line: 218, column: 13, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !43, line: 217, column: 31)
!2860 = !DILocation(line: 219, column: 23, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !43, line: 218, column: 20)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !43, line: 218, column: 13)
!2863 = !DILocation(line: 220, column: 9, scope: !2861)
!2864 = !DILocation(line: 221, column: 23, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !43, line: 220, column: 16)
!2866 = !DILocation(line: 221, column: 21, scope: !2865)
!2867 = !DILocation(line: 222, column: 24, scope: !2865)
!2868 = !DILocation(line: 222, column: 21, scope: !2865)
!2869 = !DILocation(line: 225, column: 13, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2855, file: !43, line: 224, column: 12)
!2871 = !DILocation(line: 226, column: 23, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !43, line: 225, column: 20)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !43, line: 225, column: 13)
!2874 = !DILocation(line: 227, column: 9, scope: !2872)
!2875 = !DILocation(line: 228, column: 23, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !43, line: 227, column: 16)
!2877 = !DILocation(line: 228, column: 21, scope: !2876)
!2878 = !DILocation(line: 229, column: 24, scope: !2876)
!2879 = !DILocation(line: 229, column: 21, scope: !2876)
!2880 = !DILocation(line: 233, column: 5, scope: !2845)
!2881 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !43, file: !43, line: 236, type: !2882, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2703, !455, !31}
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DILocalVariable(name: "u_port", arg: 1, scope: !2881, file: !43, line: 236, type: !2703)
!2886 = !DILocalVariable(name: "data", arg: 2, scope: !2881, file: !43, line: 236, type: !455)
!2887 = !DILocalVariable(name: "length", arg: 3, scope: !2881, file: !43, line: 236, type: !31)
!2888 = !DILocalVariable(name: "idx", scope: !2881, file: !43, line: 238, type: !17)
!2889 = !DILocation(line: 0, scope: !2881)
!2890 = !DILocation(line: 239, column: 23, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !43, line: 239, column: 5)
!2892 = distinct !DILexicalBlock(scope: !2881, file: !43, line: 239, column: 5)
!2893 = !DILocation(line: 239, column: 5, scope: !2892)
!2894 = !DILocation(line: 240, column: 13, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !43, line: 239, column: 40)
!2896 = !DILocation(line: 244, column: 9, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !43, line: 242, column: 42)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !43, line: 242, column: 20)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !43, line: 240, column: 13)
!2900 = !DILocation(line: 0, scope: !2899)
!2901 = !DILocation(line: 239, column: 36, scope: !2891)
!2902 = distinct !{!2902, !2893, !2903}
!2903 = !DILocation(line: 246, column: 5, scope: !2892)
!2904 = !DILocation(line: 249, column: 1, scope: !2881)
!2905 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !43, file: !43, line: 251, type: !2906, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2910)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2703, !2908, !31}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 32)
!2909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!2910 = !{!2911, !2912, !2913, !2914}
!2911 = !DILocalVariable(name: "u_port", arg: 1, scope: !2905, file: !43, line: 251, type: !2703)
!2912 = !DILocalVariable(name: "data", arg: 2, scope: !2905, file: !43, line: 251, type: !2908)
!2913 = !DILocalVariable(name: "length", arg: 3, scope: !2905, file: !43, line: 251, type: !31)
!2914 = !DILocalVariable(name: "idx", scope: !2905, file: !43, line: 253, type: !17)
!2915 = !DILocation(line: 0, scope: !2905)
!2916 = !DILocation(line: 254, column: 23, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !43, line: 254, column: 5)
!2918 = distinct !DILexicalBlock(scope: !2905, file: !43, line: 254, column: 5)
!2919 = !DILocation(line: 254, column: 5, scope: !2918)
!2920 = !DILocation(line: 255, column: 13, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !43, line: 254, column: 40)
!2922 = !DILocation(line: 256, column: 61, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !43, line: 255, column: 35)
!2924 = distinct !DILexicalBlock(scope: !2921, file: !43, line: 255, column: 13)
!2925 = !DILocation(line: 256, column: 59, scope: !2923)
!2926 = !DILocation(line: 257, column: 9, scope: !2923)
!2927 = !DILocation(line: 258, column: 61, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !43, line: 257, column: 42)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !43, line: 257, column: 20)
!2930 = !DILocation(line: 258, column: 59, scope: !2928)
!2931 = !DILocation(line: 259, column: 9, scope: !2928)
!2932 = !DILocation(line: 254, column: 36, scope: !2917)
!2933 = distinct !{!2933, !2919, !2934}
!2934 = !DILocation(line: 261, column: 5, scope: !2918)
!2935 = !DILocation(line: 264, column: 1, scope: !2905)
!2936 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !43, file: !43, line: 266, type: !2937, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2703, !455, !31, !31}
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DILocalVariable(name: "u_port", arg: 1, scope: !2936, file: !43, line: 266, type: !2703)
!2941 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2936, file: !43, line: 266, type: !455)
!2942 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2936, file: !43, line: 266, type: !31)
!2943 = !DILocalVariable(name: "threshold", arg: 4, scope: !2936, file: !43, line: 266, type: !31)
!2944 = !DILocation(line: 0, scope: !2936)
!2945 = !DILocation(line: 268, column: 9, scope: !2936)
!2946 = !DILocation(line: 274, column: 5, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !43, line: 271, column: 38)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !43, line: 271, column: 16)
!2949 = distinct !DILexicalBlock(scope: !2936, file: !43, line: 268, column: 9)
!2950 = !DILocation(line: 0, scope: !2949)
!2951 = !DILocation(line: 276, column: 1, scope: !2936)
!2952 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !43, file: !43, line: 278, type: !2953, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2703, !455, !31, !31, !31, !31}
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961}
!2956 = !DILocalVariable(name: "u_port", arg: 1, scope: !2952, file: !43, line: 278, type: !2703)
!2957 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2952, file: !43, line: 278, type: !455)
!2958 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2952, file: !43, line: 278, type: !31)
!2959 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2952, file: !43, line: 278, type: !31)
!2960 = !DILocalVariable(name: "threshold", arg: 5, scope: !2952, file: !43, line: 278, type: !31)
!2961 = !DILocalVariable(name: "timeout", arg: 6, scope: !2952, file: !43, line: 278, type: !31)
!2962 = !DILocation(line: 0, scope: !2952)
!2963 = !DILocation(line: 280, column: 9, scope: !2952)
!2964 = !DILocation(line: 286, column: 5, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !43, line: 283, column: 38)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !43, line: 283, column: 16)
!2967 = distinct !DILexicalBlock(scope: !2952, file: !43, line: 280, column: 9)
!2968 = !DILocation(line: 0, scope: !2967)
!2969 = !DILocation(line: 288, column: 1, scope: !2952)
!2970 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !43, file: !43, line: 290, type: !2971, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2703, !411}
!2973 = !{!2974, !2975}
!2974 = !DILocalVariable(name: "u_port", arg: 1, scope: !2970, file: !43, line: 290, type: !2703)
!2975 = !DILocalVariable(name: "func", arg: 2, scope: !2970, file: !43, line: 290, type: !411)
!2976 = !DILocation(line: 0, scope: !2970)
!2977 = !DILocation(line: 292, column: 9, scope: !2970)
!2978 = !DILocation(line: 296, column: 5, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !43, line: 294, column: 38)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !43, line: 294, column: 16)
!2981 = distinct !DILexicalBlock(scope: !2970, file: !43, line: 292, column: 9)
!2982 = !DILocation(line: 0, scope: !2981)
!2983 = !DILocation(line: 298, column: 1, scope: !2970)
!2984 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !43, file: !43, line: 300, type: !2971, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2985)
!2985 = !{!2986, !2987}
!2986 = !DILocalVariable(name: "u_port", arg: 1, scope: !2984, file: !43, line: 300, type: !2703)
!2987 = !DILocalVariable(name: "func", arg: 2, scope: !2984, file: !43, line: 300, type: !411)
!2988 = !DILocation(line: 0, scope: !2984)
!2989 = !DILocation(line: 302, column: 9, scope: !2984)
!2990 = !DILocation(line: 306, column: 5, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !43, line: 304, column: 38)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !43, line: 304, column: 16)
!2993 = distinct !DILexicalBlock(scope: !2984, file: !43, line: 302, column: 9)
!2994 = !DILocation(line: 0, scope: !2993)
!2995 = !DILocation(line: 308, column: 1, scope: !2984)
!2996 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !43, file: !43, line: 310, type: !2757, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !2997)
!2997 = !{!2998, !2999, !3000, !3001}
!2998 = !DILocalVariable(name: "u_port", arg: 1, scope: !2996, file: !43, line: 310, type: !2703)
!2999 = !DILocalVariable(name: "base", scope: !2996, file: !43, line: 312, type: !7)
!3000 = !DILocalVariable(name: "EFR", scope: !2996, file: !43, line: 313, type: !335)
!3001 = !DILocalVariable(name: "LCR", scope: !2996, file: !43, line: 313, type: !335)
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
!3017 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !43, file: !43, line: 330, type: !3018, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2703, !252, !252, !252}
!3020 = !{!3021, !3022, !3023, !3024, !3025, !3026, !3027}
!3021 = !DILocalVariable(name: "u_port", arg: 1, scope: !3017, file: !43, line: 330, type: !2703)
!3022 = !DILocalVariable(name: "xon", arg: 2, scope: !3017, file: !43, line: 330, type: !252)
!3023 = !DILocalVariable(name: "xoff", arg: 3, scope: !3017, file: !43, line: 330, type: !252)
!3024 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3017, file: !43, line: 330, type: !252)
!3025 = !DILocalVariable(name: "base", scope: !3017, file: !43, line: 332, type: !7)
!3026 = !DILocalVariable(name: "EFR", scope: !3017, file: !43, line: 333, type: !335)
!3027 = !DILocalVariable(name: "LCR", scope: !3017, file: !43, line: 333, type: !335)
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
!3053 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !43, file: !43, line: 353, type: !2757, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "u_port", arg: 1, scope: !3053, file: !43, line: 353, type: !2703)
!3056 = !DILocalVariable(name: "base", scope: !3053, file: !43, line: 355, type: !7)
!3057 = !DILocalVariable(name: "LCR", scope: !3053, file: !43, line: 356, type: !335)
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
!3068 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !43, file: !43, line: 436, type: !2757, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !3069)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "u_port", arg: 1, scope: !3068, file: !43, line: 436, type: !2703)
!3071 = !DILocalVariable(name: "base", scope: !3068, file: !43, line: 438, type: !7)
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
!3123 = distinct !DISubprogram(name: "uart_query_empty", scope: !43, file: !43, line: 474, type: !2757, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !42, retainedNodes: !3124)
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "u_port", arg: 1, scope: !3123, file: !43, line: 474, type: !2703)
!3126 = !DILocalVariable(name: "base", scope: !3123, file: !43, line: 476, type: !7)
!3127 = !DILocation(line: 0, scope: !3123)
!3128 = !DILocation(line: 476, column: 25, scope: !3123)
!3129 = !DILocation(line: 478, column: 5, scope: !3123)
!3130 = !DILocation(line: 478, column: 14, scope: !3123)
!3131 = !DILocation(line: 478, column: 42, scope: !3123)
!3132 = !DILocation(line: 478, column: 12, scope: !3123)
!3133 = distinct !{!3133, !3129, !3134}
!3134 = !DILocation(line: 478, column: 50, scope: !3123)
!3135 = !DILocation(line: 479, column: 1, scope: !3123)
!3136 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !965, file: !965, line: 64, type: !3137, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !564, !83, !564, null}
!3139 = !{!3140, !3141, !3142, !3143, !3152}
!3140 = !DILocalVariable(name: "func", arg: 1, scope: !3136, file: !965, line: 64, type: !564)
!3141 = !DILocalVariable(name: "line", arg: 2, scope: !3136, file: !965, line: 64, type: !83)
!3142 = !DILocalVariable(name: "message", arg: 3, scope: !3136, file: !965, line: 64, type: !564)
!3143 = !DILocalVariable(name: "ap", scope: !3136, file: !965, line: 66, type: !3144)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3145, line: 46, baseType: !3146)
!3145 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3147, line: 32, baseType: !3148)
!3147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !965, baseType: !3149)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3150)
!3150 = !{!3151}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3149, file: !965, line: 66, baseType: !158, size: 32)
!3152 = !DILocalVariable(name: "mask", scope: !3136, file: !965, line: 68, type: !31)
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
!3164 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !965, file: !965, line: 78, type: !3137, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3165)
!3165 = !{!3166, !3167, !3168, !3169, !3170}
!3166 = !DILocalVariable(name: "func", arg: 1, scope: !3164, file: !965, line: 78, type: !564)
!3167 = !DILocalVariable(name: "line", arg: 2, scope: !3164, file: !965, line: 78, type: !83)
!3168 = !DILocalVariable(name: "message", arg: 3, scope: !3164, file: !965, line: 78, type: !564)
!3169 = !DILocalVariable(name: "ap", scope: !3164, file: !965, line: 80, type: !3144)
!3170 = !DILocalVariable(name: "mask", scope: !3164, file: !965, line: 82, type: !31)
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
!3182 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !965, file: !965, line: 92, type: !3137, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188}
!3184 = !DILocalVariable(name: "func", arg: 1, scope: !3182, file: !965, line: 92, type: !564)
!3185 = !DILocalVariable(name: "line", arg: 2, scope: !3182, file: !965, line: 92, type: !83)
!3186 = !DILocalVariable(name: "message", arg: 3, scope: !3182, file: !965, line: 92, type: !564)
!3187 = !DILocalVariable(name: "ap", scope: !3182, file: !965, line: 94, type: !3144)
!3188 = !DILocalVariable(name: "mask", scope: !3182, file: !965, line: 96, type: !31)
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
!3200 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !965, file: !965, line: 106, type: !3137, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206}
!3202 = !DILocalVariable(name: "func", arg: 1, scope: !3200, file: !965, line: 106, type: !564)
!3203 = !DILocalVariable(name: "line", arg: 2, scope: !3200, file: !965, line: 106, type: !83)
!3204 = !DILocalVariable(name: "message", arg: 3, scope: !3200, file: !965, line: 106, type: !564)
!3205 = !DILocalVariable(name: "ap", scope: !3200, file: !965, line: 108, type: !3144)
!3206 = !DILocalVariable(name: "mask", scope: !3200, file: !965, line: 110, type: !31)
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
!3218 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !965, file: !965, line: 121, type: !3219, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3223)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !564, !83, !564, !3221, !83, null}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3223 = !{!3224, !3225, !3226, !3227, !3228}
!3224 = !DILocalVariable(name: "func", arg: 1, scope: !3218, file: !965, line: 121, type: !564)
!3225 = !DILocalVariable(name: "line", arg: 2, scope: !3218, file: !965, line: 121, type: !83)
!3226 = !DILocalVariable(name: "message", arg: 3, scope: !3218, file: !965, line: 121, type: !564)
!3227 = !DILocalVariable(name: "data", arg: 4, scope: !3218, file: !965, line: 121, type: !3221)
!3228 = !DILocalVariable(name: "length", arg: 5, scope: !3218, file: !965, line: 121, type: !83)
!3229 = !DILocation(line: 0, scope: !3218)
!3230 = !DILocation(line: 123, column: 1, scope: !3218)
!3231 = distinct !DISubprogram(name: "hal_cache_init", scope: !79, file: !79, line: 53, type: !3232, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3235)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!3234}
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !82, line: 172, baseType: !81)
!3235 = !{!3236, !3238}
!3236 = !DILocalVariable(name: "region", scope: !3231, file: !79, line: 55, type: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !82, line: 204, baseType: !93)
!3238 = !DILocalVariable(name: "irq_flag", scope: !3231, file: !79, line: 56, type: !31)
!3239 = !DILocation(line: 59, column: 16, scope: !3231)
!3240 = !DILocation(line: 0, scope: !3231)
!3241 = !DILocation(line: 62, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3231, file: !79, line: 62, column: 9)
!3243 = !{i8 0, i8 2}
!3244 = !DILocation(line: 62, column: 9, scope: !3231)
!3245 = !DILocation(line: 64, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !79, line: 62, column: 39)
!3247 = !DILocation(line: 66, column: 9, scope: !3246)
!3248 = !DILocation(line: 69, column: 24, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3242, file: !79, line: 67, column: 12)
!3250 = !DILocation(line: 72, column: 9, scope: !3249)
!3251 = !DILocation(line: 77, column: 5, scope: !3231)
!3252 = !DILocation(line: 80, column: 22, scope: !3231)
!3253 = !DILocation(line: 81, column: 28, scope: !3231)
!3254 = !DILocation(line: 84, column: 19, scope: !3231)
!3255 = !DILocation(line: 85, column: 23, scope: !3231)
!3256 = !DILocation(line: 88, column: 5, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3231, file: !79, line: 88, column: 5)
!3258 = !DILocation(line: 90, column: 9, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !79, line: 88, column: 81)
!3260 = distinct !DILexicalBlock(scope: !3257, file: !79, line: 88, column: 5)
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
!3273 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !79, file: !79, line: 327, type: !3232, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "irq_flag", scope: !3273, file: !79, line: 329, type: !31)
!3276 = !DILocation(line: 332, column: 16, scope: !3273)
!3277 = !DILocation(line: 0, scope: !3273)
!3278 = !DILocation(line: 335, column: 21, scope: !3273)
!3279 = !DILocation(line: 336, column: 21, scope: !3273)
!3280 = !DILocation(line: 339, column: 21, scope: !3273)
!3281 = !DILocation(line: 340, column: 21, scope: !3273)
!3282 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3285)
!3283 = distinct !DISubprogram(name: "__ISB", scope: !3284, file: !3284, line: 432, type: !413, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !2211)
!3284 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irtx_send_pwd_data/GCC")
!3285 = distinct !DILocation(line: 343, column: 5, scope: !3273)
!3286 = !{i64 296584}
!3287 = !DILocation(line: 346, column: 5, scope: !3273)
!3288 = !DILocation(line: 348, column: 5, scope: !3273)
!3289 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !79, file: !79, line: 101, type: !3232, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "region", scope: !3289, file: !79, line: 103, type: !3237)
!3292 = !DILocation(line: 107, column: 5, scope: !3289)
!3293 = !DILocation(line: 110, column: 22, scope: !3289)
!3294 = !DILocation(line: 111, column: 28, scope: !3289)
!3295 = !DILocation(line: 114, column: 19, scope: !3289)
!3296 = !DILocation(line: 115, column: 23, scope: !3289)
!3297 = !DILocation(line: 0, scope: !3289)
!3298 = !DILocation(line: 118, column: 5, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3289, file: !79, line: 118, column: 5)
!3300 = !DILocation(line: 120, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !79, line: 118, column: 81)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !79, line: 118, column: 5)
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
!3316 = distinct !DISubprogram(name: "hal_cache_enable", scope: !79, file: !79, line: 134, type: !3232, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !2211)
!3317 = !DILocation(line: 137, column: 45, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3316, file: !79, line: 137, column: 9)
!3319 = !DILocation(line: 137, column: 28, scope: !3318)
!3320 = !DILocation(line: 137, column: 9, scope: !3316)
!3321 = !DILocation(line: 142, column: 22, scope: !3316)
!3322 = !DILocation(line: 145, column: 28, scope: !3316)
!3323 = !DILocation(line: 145, column: 19, scope: !3316)
!3324 = !DILocation(line: 147, column: 5, scope: !3316)
!3325 = !DILocation(line: 0, scope: !3316)
!3326 = !DILocation(line: 148, column: 1, scope: !3316)
!3327 = distinct !DISubprogram(name: "hal_cache_disable", scope: !79, file: !79, line: 150, type: !3232, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3328)
!3328 = !{!3329}
!3329 = !DILocalVariable(name: "irq_flag", scope: !3327, file: !79, line: 152, type: !31)
!3330 = !DILocation(line: 155, column: 16, scope: !3327)
!3331 = !DILocation(line: 0, scope: !3327)
!3332 = !DILocation(line: 158, column: 16, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !79, line: 158, column: 9)
!3334 = !DILocation(line: 158, column: 26, scope: !3333)
!3335 = !DILocation(line: 158, column: 9, scope: !3327)
!3336 = !DILocation(line: 160, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !79, line: 158, column: 49)
!3338 = !DILocation(line: 161, column: 5, scope: !3337)
!3339 = !DILocation(line: 164, column: 22, scope: !3327)
!3340 = !DILocation(line: 167, column: 28, scope: !3327)
!3341 = !DILocation(line: 167, column: 19, scope: !3327)
!3342 = !DILocation(line: 170, column: 5, scope: !3327)
!3343 = !DILocation(line: 172, column: 5, scope: !3327)
!3344 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !79, file: !79, line: 175, type: !3345, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!3234, !3237}
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "region", arg: 1, scope: !3344, file: !79, line: 175, type: !3237)
!3349 = !DILocation(line: 0, scope: !3344)
!3350 = !DILocation(line: 178, column: 16, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !79, line: 178, column: 9)
!3352 = !DILocation(line: 178, column: 9, scope: !3344)
!3353 = !DILocation(line: 183, column: 9, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3344, file: !79, line: 183, column: 9)
!3355 = !DILocation(line: 183, column: 38, scope: !3354)
!3356 = !DILocation(line: 183, column: 9, scope: !3344)
!3357 = !DILocation(line: 184, column: 38, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3354, file: !79, line: 183, column: 62)
!3359 = !DILocation(line: 184, column: 32, scope: !3358)
!3360 = !DILocation(line: 190, column: 32, scope: !3344)
!3361 = !DILocation(line: 190, column: 23, scope: !3344)
!3362 = !DILocation(line: 192, column: 5, scope: !3344)
!3363 = !DILocation(line: 193, column: 1, scope: !3344)
!3364 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !79, file: !79, line: 195, type: !3345, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3365)
!3365 = !{!3366}
!3366 = !DILocalVariable(name: "region", arg: 1, scope: !3364, file: !79, line: 195, type: !3237)
!3367 = !DILocation(line: 0, scope: !3364)
!3368 = !DILocation(line: 198, column: 16, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !79, line: 198, column: 9)
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
!3382 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !79, file: !79, line: 215, type: !3383, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3386)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!3234, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !82, line: 182, baseType: !112)
!3386 = !{!3387}
!3387 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3382, file: !79, line: 215, type: !3385)
!3388 = !DILocation(line: 0, scope: !3382)
!3389 = !DILocation(line: 218, column: 20, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3382, file: !79, line: 218, column: 9)
!3391 = !DILocation(line: 218, column: 9, scope: !3382)
!3392 = !DILocation(line: 223, column: 22, scope: !3382)
!3393 = !DILocation(line: 224, column: 37, scope: !3382)
!3394 = !DILocation(line: 224, column: 22, scope: !3382)
!3395 = !DILocation(line: 227, column: 20, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3382, file: !79, line: 227, column: 9)
!3397 = !DILocation(line: 227, column: 9, scope: !3382)
!3398 = !DILocation(line: 228, column: 26, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !79, line: 227, column: 43)
!3400 = !DILocation(line: 229, column: 5, scope: !3399)
!3401 = !DILocation(line: 232, column: 28, scope: !3382)
!3402 = !DILocation(line: 232, column: 19, scope: !3382)
!3403 = !DILocation(line: 234, column: 5, scope: !3382)
!3404 = !DILocation(line: 235, column: 1, scope: !3382)
!3405 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !79, file: !79, line: 237, type: !3406, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3415)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!3234, !3237, !3408}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3410)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !82, line: 222, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !82, line: 219, size: 64, elements: !3412)
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3411, file: !82, line: 220, baseType: !31, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3411, file: !82, line: 221, baseType: !31, size: 32, offset: 32)
!3415 = !{!3416, !3417}
!3416 = !DILocalVariable(name: "region", arg: 1, scope: !3405, file: !79, line: 237, type: !3237)
!3417 = !DILocalVariable(name: "region_config", arg: 2, scope: !3405, file: !79, line: 237, type: !3408)
!3418 = !DILocation(line: 0, scope: !3405)
!3419 = !DILocation(line: 240, column: 16, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3405, file: !79, line: 240, column: 9)
!3421 = !DILocation(line: 240, column: 9, scope: !3405)
!3422 = !DILocation(line: 245, column: 23, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3405, file: !79, line: 245, column: 9)
!3424 = !DILocation(line: 245, column: 9, scope: !3405)
!3425 = !DILocation(line: 250, column: 24, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3405, file: !79, line: 250, column: 9)
!3427 = !DILocation(line: 250, column: 45, scope: !3426)
!3428 = !DILocation(line: 250, column: 9, scope: !3405)
!3429 = !DILocation(line: 251, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3426, file: !79, line: 250, column: 81)
!3431 = !DILocation(line: 256, column: 24, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3405, file: !79, line: 256, column: 9)
!3433 = !DILocation(line: 256, column: 42, scope: !3432)
!3434 = !DILocation(line: 256, column: 9, scope: !3405)
!3435 = !DILocation(line: 257, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !79, line: 256, column: 78)
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
!3453 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !79, file: !79, line: 275, type: !3454, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!3234, !31}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "address", arg: 1, scope: !3453, file: !79, line: 275, type: !31)
!3458 = !DILocalVariable(name: "irq_flag", scope: !3453, file: !79, line: 277, type: !31)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 280, column: 17, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3453, file: !79, line: 280, column: 9)
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
!3472 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !79, file: !79, line: 299, type: !3473, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!3234, !31, !31}
!3475 = !{!3476, !3477, !3478, !3479}
!3476 = !DILocalVariable(name: "address", arg: 1, scope: !3472, file: !79, line: 299, type: !31)
!3477 = !DILocalVariable(name: "length", arg: 2, scope: !3472, file: !79, line: 299, type: !31)
!3478 = !DILocalVariable(name: "irq_flag", scope: !3472, file: !79, line: 301, type: !31)
!3479 = !DILocalVariable(name: "end_address", scope: !3472, file: !79, line: 302, type: !31)
!3480 = !DILocation(line: 0, scope: !3472)
!3481 = !DILocation(line: 302, column: 36, scope: !3472)
!3482 = !DILocation(line: 305, column: 47, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3472, file: !79, line: 305, column: 9)
!3484 = !DILocation(line: 310, column: 16, scope: !3472)
!3485 = !DILocation(line: 313, column: 20, scope: !3472)
!3486 = !DILocation(line: 313, column: 5, scope: !3472)
!3487 = !DILocation(line: 314, column: 9, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3472, file: !79, line: 313, column: 35)
!3489 = !DILocation(line: 315, column: 17, scope: !3488)
!3490 = distinct !{!3490, !3486, !3491}
!3491 = !DILocation(line: 316, column: 5, scope: !3472)
!3492 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 319, column: 5, scope: !3472)
!3494 = !DILocation(line: 322, column: 5, scope: !3472)
!3495 = !DILocation(line: 324, column: 5, scope: !3472)
!3496 = !DILocation(line: 325, column: 1, scope: !3472)
!3497 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !79, file: !79, line: 351, type: !3454, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3498)
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "address", arg: 1, scope: !3497, file: !79, line: 351, type: !31)
!3500 = !DILocalVariable(name: "irq_flag", scope: !3497, file: !79, line: 353, type: !31)
!3501 = !DILocation(line: 0, scope: !3497)
!3502 = !DILocation(line: 356, column: 17, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !79, line: 356, column: 9)
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
!3514 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !79, file: !79, line: 376, type: !3473, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3515)
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "address", arg: 1, scope: !3514, file: !79, line: 376, type: !31)
!3517 = !DILocalVariable(name: "length", arg: 2, scope: !3514, file: !79, line: 376, type: !31)
!3518 = !DILocalVariable(name: "irq_flag", scope: !3514, file: !79, line: 378, type: !31)
!3519 = !DILocalVariable(name: "end_address", scope: !3514, file: !79, line: 379, type: !31)
!3520 = !DILocation(line: 0, scope: !3514)
!3521 = !DILocation(line: 379, column: 36, scope: !3514)
!3522 = !DILocation(line: 382, column: 47, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3514, file: !79, line: 382, column: 9)
!3524 = !DILocation(line: 387, column: 16, scope: !3514)
!3525 = !DILocation(line: 390, column: 20, scope: !3514)
!3526 = !DILocation(line: 390, column: 5, scope: !3514)
!3527 = !DILocation(line: 391, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3514, file: !79, line: 390, column: 35)
!3529 = !DILocation(line: 392, column: 17, scope: !3528)
!3530 = distinct !{!3530, !3526, !3531}
!3531 = !DILocation(line: 393, column: 5, scope: !3514)
!3532 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 396, column: 5, scope: !3514)
!3534 = !DILocation(line: 399, column: 5, scope: !3514)
!3535 = !DILocation(line: 401, column: 5, scope: !3514)
!3536 = !DILocation(line: 402, column: 1, scope: !3514)
!3537 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !79, file: !79, line: 404, type: !3232, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3538)
!3538 = !{!3539}
!3539 = !DILocalVariable(name: "irq_flag", scope: !3537, file: !79, line: 406, type: !31)
!3540 = !DILocation(line: 409, column: 16, scope: !3537)
!3541 = !DILocation(line: 0, scope: !3537)
!3542 = !DILocation(line: 412, column: 21, scope: !3537)
!3543 = !DILocation(line: 413, column: 21, scope: !3537)
!3544 = !DILocation(line: 434, column: 3, scope: !3283, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 416, column: 5, scope: !3537)
!3546 = !DILocation(line: 419, column: 5, scope: !3537)
!3547 = !DILocation(line: 421, column: 5, scope: !3537)
!3548 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !79, file: !79, line: 424, type: !3549, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!161, !31}
!3551 = !{!3552, !3553}
!3552 = !DILocalVariable(name: "address", arg: 1, scope: !3548, file: !79, line: 424, type: !31)
!3553 = !DILocalVariable(name: "region", scope: !3548, file: !79, line: 426, type: !3237)
!3554 = !DILocation(line: 0, scope: !3548)
!3555 = !DILocation(line: 429, column: 18, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3548, file: !79, line: 429, column: 9)
!3557 = !DILocation(line: 429, column: 28, scope: !3556)
!3558 = !DILocation(line: 429, column: 9, scope: !3548)
!3559 = !DILocation(line: 435, column: 20, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !79, line: 435, column: 13)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !79, line: 433, column: 81)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !79, line: 433, column: 5)
!3563 = distinct !DILexicalBlock(scope: !3548, file: !79, line: 433, column: 5)
!3564 = !DILocation(line: 435, column: 41, scope: !3560)
!3565 = !DILocation(line: 435, column: 36, scope: !3560)
!3566 = !DILocation(line: 435, column: 13, scope: !3561)
!3567 = !DILocation(line: 436, column: 30, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !79, line: 436, column: 17)
!3569 = distinct !DILexicalBlock(scope: !3560, file: !79, line: 435, column: 53)
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
!3582 = distinct !DISubprogram(name: "hal_nvic_init", scope: !165, file: !165, line: 60, type: !3583, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2211)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!3585}
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !168, line: 158, baseType: !167)
!3586 = !DILocation(line: 62, column: 5, scope: !3582)
!3587 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !165, file: !165, line: 65, type: !3588, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3590)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!3585, !221}
!3590 = !{!3591, !3592}
!3591 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3587, file: !165, line: 65, type: !221)
!3592 = !DILocalVariable(name: "status", scope: !3587, file: !165, line: 67, type: !3585)
!3593 = !DILocation(line: 0, scope: !3587)
!3594 = !DILocation(line: 69, column: 40, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3587, file: !165, line: 69, column: 9)
!3596 = !DILocation(line: 73, column: 9, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3595, file: !165, line: 72, column: 12)
!3598 = !DILocation(line: 77, column: 5, scope: !3587)
!3599 = !DILocation(line: 78, column: 1, scope: !3587)
!3600 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !227, file: !227, line: 1494, type: !3601, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !222}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3600, file: !227, line: 1494, type: !222)
!3605 = !DILocation(line: 0, scope: !3600)
!3606 = !DILocation(line: 1497, column: 91, scope: !3600)
!3607 = !DILocation(line: 1497, column: 61, scope: !3600)
!3608 = !DILocation(line: 1497, column: 40, scope: !3600)
!3609 = !DILocation(line: 1497, column: 3, scope: !3600)
!3610 = !DILocation(line: 1497, column: 46, scope: !3600)
!3611 = !DILocation(line: 1498, column: 1, scope: !3600)
!3612 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !165, file: !165, line: 80, type: !3588, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3613)
!3613 = !{!3614, !3615}
!3614 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3612, file: !165, line: 80, type: !221)
!3615 = !DILocalVariable(name: "status", scope: !3612, file: !165, line: 82, type: !3585)
!3616 = !DILocation(line: 0, scope: !3612)
!3617 = !DILocation(line: 84, column: 40, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3612, file: !165, line: 84, column: 9)
!3619 = !DILocation(line: 88, column: 9, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3618, file: !165, line: 87, column: 12)
!3621 = !DILocation(line: 92, column: 5, scope: !3612)
!3622 = !DILocation(line: 93, column: 1, scope: !3612)
!3623 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !227, file: !227, line: 1507, type: !3601, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3624)
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3623, file: !227, line: 1507, type: !222)
!3626 = !DILocation(line: 0, scope: !3623)
!3627 = !DILocation(line: 1509, column: 65, scope: !3623)
!3628 = !DILocation(line: 1509, column: 44, scope: !3623)
!3629 = !DILocation(line: 1509, column: 32, scope: !3623)
!3630 = !DILocation(line: 1509, column: 3, scope: !3623)
!3631 = !DILocation(line: 1509, column: 39, scope: !3623)
!3632 = !DILocation(line: 1510, column: 1, scope: !3623)
!3633 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !165, file: !165, line: 95, type: !3634, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3636)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!31, !221}
!3636 = !{!3637, !3638}
!3637 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3633, file: !165, line: 95, type: !221)
!3638 = !DILocalVariable(name: "ret", scope: !3633, file: !165, line: 97, type: !31)
!3639 = !DILocation(line: 0, scope: !3633)
!3640 = !DILocation(line: 99, column: 40, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3633, file: !165, line: 99, column: 9)
!3642 = !DILocation(line: 102, column: 15, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3641, file: !165, line: 101, column: 12)
!3644 = !DILocation(line: 105, column: 5, scope: !3633)
!3645 = !DILocation(line: 106, column: 1, scope: !3633)
!3646 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !227, file: !227, line: 1523, type: !3647, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!31, !222}
!3649 = !{!3650}
!3650 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3646, file: !227, line: 1523, type: !222)
!3651 = !DILocation(line: 0, scope: !3646)
!3652 = !DILocation(line: 1525, column: 51, scope: !3646)
!3653 = !DILocation(line: 1525, column: 23, scope: !3646)
!3654 = !DILocation(line: 1525, column: 83, scope: !3646)
!3655 = !DILocation(line: 1525, column: 22, scope: !3646)
!3656 = !DILocation(line: 1525, column: 3, scope: !3646)
!3657 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !165, file: !165, line: 108, type: !3588, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3658)
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3657, file: !165, line: 108, type: !221)
!3660 = !DILocalVariable(name: "status", scope: !3657, file: !165, line: 110, type: !3585)
!3661 = !DILocation(line: 0, scope: !3657)
!3662 = !DILocation(line: 112, column: 40, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3657, file: !165, line: 112, column: 9)
!3664 = !DILocation(line: 116, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3663, file: !165, line: 115, column: 12)
!3666 = !DILocation(line: 120, column: 5, scope: !3657)
!3667 = !DILocation(line: 121, column: 1, scope: !3657)
!3668 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !227, file: !227, line: 1535, type: !3601, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3669)
!3669 = !{!3670}
!3670 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3668, file: !227, line: 1535, type: !222)
!3671 = !DILocation(line: 0, scope: !3668)
!3672 = !DILocation(line: 1537, column: 65, scope: !3668)
!3673 = !DILocation(line: 1537, column: 44, scope: !3668)
!3674 = !DILocation(line: 1537, column: 32, scope: !3668)
!3675 = !DILocation(line: 1537, column: 3, scope: !3668)
!3676 = !DILocation(line: 1537, column: 39, scope: !3668)
!3677 = !DILocation(line: 1538, column: 1, scope: !3668)
!3678 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !165, file: !165, line: 123, type: !3588, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3679)
!3679 = !{!3680, !3681}
!3680 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3678, file: !165, line: 123, type: !221)
!3681 = !DILocalVariable(name: "status", scope: !3678, file: !165, line: 125, type: !3585)
!3682 = !DILocation(line: 0, scope: !3678)
!3683 = !DILocation(line: 127, column: 40, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3678, file: !165, line: 127, column: 9)
!3685 = !DILocation(line: 131, column: 9, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3684, file: !165, line: 130, column: 12)
!3687 = !DILocation(line: 135, column: 5, scope: !3678)
!3688 = !DILocation(line: 136, column: 1, scope: !3678)
!3689 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !227, file: !227, line: 1547, type: !3601, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3690)
!3690 = !{!3691}
!3691 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3689, file: !227, line: 1547, type: !222)
!3692 = !DILocation(line: 0, scope: !3689)
!3693 = !DILocation(line: 1549, column: 65, scope: !3689)
!3694 = !DILocation(line: 1549, column: 44, scope: !3689)
!3695 = !DILocation(line: 1549, column: 32, scope: !3689)
!3696 = !DILocation(line: 1549, column: 3, scope: !3689)
!3697 = !DILocation(line: 1549, column: 39, scope: !3689)
!3698 = !DILocation(line: 1550, column: 1, scope: !3689)
!3699 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !165, file: !165, line: 138, type: !3700, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!3585, !221, !31}
!3702 = !{!3703, !3704, !3705}
!3703 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3699, file: !165, line: 138, type: !221)
!3704 = !DILocalVariable(name: "priority", arg: 2, scope: !3699, file: !165, line: 138, type: !31)
!3705 = !DILocalVariable(name: "status", scope: !3699, file: !165, line: 140, type: !3585)
!3706 = !DILocation(line: 0, scope: !3699)
!3707 = !DILocation(line: 142, column: 40, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3699, file: !165, line: 142, column: 9)
!3709 = !DILocation(line: 146, column: 9, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3708, file: !165, line: 145, column: 12)
!3711 = !DILocation(line: 150, column: 5, scope: !3699)
!3712 = !DILocation(line: 151, column: 1, scope: !3699)
!3713 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !227, file: !227, line: 1577, type: !3714, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !222, !31}
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3713, file: !227, line: 1577, type: !222)
!3718 = !DILocalVariable(name: "priority", arg: 2, scope: !3713, file: !227, line: 1577, type: !31)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 1582, column: 34, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3722, file: !227, line: 1581, column: 8)
!3722 = distinct !DILexicalBlock(scope: !3713, file: !227, line: 1579, column: 6)
!3723 = !DILocation(line: 1582, column: 5, scope: !3721)
!3724 = !DILocation(line: 1582, column: 32, scope: !3721)
!3725 = !DILocation(line: 1583, column: 1, scope: !3713)
!3726 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !165, file: !165, line: 153, type: !3634, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3727)
!3727 = !{!3728, !3729}
!3728 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3726, file: !165, line: 153, type: !221)
!3729 = !DILocalVariable(name: "ret", scope: !3726, file: !165, line: 155, type: !31)
!3730 = !DILocation(line: 0, scope: !3726)
!3731 = !DILocation(line: 157, column: 40, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3726, file: !165, line: 157, column: 9)
!3733 = !DILocation(line: 160, column: 15, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3732, file: !165, line: 159, column: 12)
!3735 = !DILocation(line: 163, column: 5, scope: !3726)
!3736 = !DILocation(line: 164, column: 1, scope: !3726)
!3737 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !227, file: !227, line: 1597, type: !3647, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3738)
!3738 = !{!3739}
!3739 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3737, file: !227, line: 1597, type: !222)
!3740 = !DILocation(line: 0, scope: !3737)
!3741 = !DILocation(line: 1603, column: 23, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !227, line: 1602, column: 8)
!3743 = distinct !DILexicalBlock(scope: !3737, file: !227, line: 1600, column: 6)
!3744 = !DILocation(line: 1603, column: 60, scope: !3742)
!3745 = !DILocation(line: 1604, column: 1, scope: !3737)
!3746 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !165, file: !165, line: 173, type: !413, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2211)
!3747 = !DILocation(line: 175, column: 1, scope: !3746)
!3748 = distinct !DISubprogram(name: "isrC_main", scope: !165, file: !165, line: 178, type: !3583, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3749)
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "status", scope: !3748, file: !165, line: 180, type: !3585)
!3751 = !DILocalVariable(name: "irq_number", scope: !3748, file: !165, line: 181, type: !221)
!3752 = !DILocation(line: 0, scope: !3748)
!3753 = !DILocation(line: 188, column: 34, scope: !3748)
!3754 = !DILocation(line: 189, column: 24, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3748, file: !165, line: 189, column: 9)
!3756 = !DILocation(line: 192, column: 48, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3755, file: !165, line: 192, column: 16)
!3758 = !DILocation(line: 192, column: 62, scope: !3757)
!3759 = !DILocation(line: 192, column: 16, scope: !3755)
!3760 = !DILocation(line: 194, column: 9, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3757, file: !165, line: 192, column: 71)
!3762 = !DILocation(line: 195, column: 9, scope: !3761)
!3763 = !DILocation(line: 197, column: 55, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !165, line: 196, column: 12)
!3765 = !DILocation(line: 197, column: 41, scope: !3764)
!3766 = !DILocation(line: 197, column: 53, scope: !3764)
!3767 = !DILocation(line: 198, column: 41, scope: !3764)
!3768 = !DILocation(line: 198, column: 9, scope: !3764)
!3769 = !DILocation(line: 202, column: 5, scope: !3748)
!3770 = !DILocation(line: 203, column: 1, scope: !3748)
!3771 = distinct !DISubprogram(name: "get_current_irq", scope: !165, file: !165, line: 166, type: !2235, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3772)
!3772 = !{!3773}
!3773 = !DILocalVariable(name: "irq_num", scope: !3771, file: !165, line: 168, type: !31)
!3774 = !DILocation(line: 168, column: 31, scope: !3771)
!3775 = !DILocation(line: 168, column: 36, scope: !3771)
!3776 = !DILocation(line: 0, scope: !3771)
!3777 = !DILocation(line: 169, column: 21, scope: !3771)
!3778 = !DILocation(line: 169, column: 5, scope: !3771)
!3779 = distinct !DISubprogram(name: "get_pending_irq", scope: !165, file: !165, line: 55, type: !2235, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2211)
!3780 = !DILocation(line: 57, column: 19, scope: !3779)
!3781 = !DILocation(line: 57, column: 51, scope: !3779)
!3782 = !DILocation(line: 57, column: 5, scope: !3779)
!3783 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !165, file: !165, line: 205, type: !3784, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3787)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!3585, !221, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !168, line: 175, baseType: !306)
!3787 = !{!3788, !3789, !3790}
!3788 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3783, file: !165, line: 205, type: !221)
!3789 = !DILocalVariable(name: "callback", arg: 2, scope: !3783, file: !165, line: 205, type: !3786)
!3790 = !DILocalVariable(name: "mask", scope: !3783, file: !165, line: 207, type: !31)
!3791 = !DILocation(line: 0, scope: !3783)
!3792 = !DILocation(line: 209, column: 24, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3783, file: !165, line: 209, column: 9)
!3794 = !DILocation(line: 213, column: 12, scope: !3783)
!3795 = !DILocation(line: 214, column: 5, scope: !3783)
!3796 = !DILocation(line: 215, column: 37, scope: !3783)
!3797 = !DILocation(line: 215, column: 51, scope: !3783)
!3798 = !DILocation(line: 216, column: 37, scope: !3783)
!3799 = !DILocation(line: 216, column: 49, scope: !3783)
!3800 = !DILocation(line: 217, column: 5, scope: !3783)
!3801 = !DILocation(line: 219, column: 5, scope: !3783)
!3802 = !DILocation(line: 220, column: 1, scope: !3783)
!3803 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !165, file: !165, line: 222, type: !3804, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!3585, !2848}
!3806 = !{!3807}
!3807 = !DILocalVariable(name: "mask", arg: 1, scope: !3803, file: !165, line: 222, type: !2848)
!3808 = !DILocation(line: 0, scope: !3803)
!3809 = !DILocation(line: 224, column: 13, scope: !3803)
!3810 = !DILocation(line: 224, column: 11, scope: !3803)
!3811 = !DILocation(line: 225, column: 5, scope: !3803)
!3812 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !165, file: !165, line: 228, type: !3813, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!3585, !31}
!3815 = !{!3816}
!3816 = !DILocalVariable(name: "mask", arg: 1, scope: !3812, file: !165, line: 228, type: !31)
!3817 = !DILocation(line: 0, scope: !3812)
!3818 = !DILocation(line: 230, column: 5, scope: !3812)
!3819 = !DILocation(line: 231, column: 5, scope: !3812)
!3820 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !967, file: !967, line: 50, type: !3821, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3825)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3823, !3824, !252}
!3823 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !970, line: 238, baseType: !969)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !362, line: 281, baseType: !976)
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3820, file: !967, line: 50, type: !3824)
!3827 = !DILocalVariable(name: "function_index", arg: 2, scope: !3820, file: !967, line: 50, type: !252)
!3828 = !DILocalVariable(name: "ret_value", scope: !3820, file: !967, line: 52, type: !223)
!3829 = !DILocation(line: 0, scope: !3820)
!3830 = !DILocation(line: 53, column: 18, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3820, file: !967, line: 53, column: 9)
!3832 = !DILocation(line: 53, column: 9, scope: !3820)
!3833 = !DILocation(line: 57, column: 24, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3820, file: !967, line: 57, column: 9)
!3835 = !DILocation(line: 57, column: 9, scope: !3820)
!3836 = !DILocation(line: 57, column: 9, scope: !3834)
!3837 = !DILocation(line: 60, column: 17, scope: !3820)
!3838 = !DILocation(line: 61, column: 12, scope: !3820)
!3839 = !DILocation(line: 61, column: 5, scope: !3820)
!3840 = !DILocation(line: 62, column: 1, scope: !3820)
!3841 = distinct !DISubprogram(name: "hal_gpio_init", scope: !967, file: !967, line: 64, type: !3842, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3845)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!3844, !3824}
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !970, line: 229, baseType: !1007)
!3845 = !{!3846}
!3846 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3841, file: !967, line: 64, type: !3824)
!3847 = !DILocation(line: 0, scope: !3841)
!3848 = !DILocation(line: 66, column: 5, scope: !3841)
!3849 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !967, file: !967, line: 69, type: !3842, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3850)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3849, file: !967, line: 69, type: !3824)
!3852 = !DILocation(line: 0, scope: !3849)
!3853 = !DILocation(line: 71, column: 5, scope: !3849)
!3854 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !967, file: !967, line: 74, type: !3855, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3858)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!3844, !3824, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 32)
!3858 = !{!3859, !3860, !3861}
!3859 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3854, file: !967, line: 74, type: !3824)
!3860 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3854, file: !967, line: 74, type: !3857)
!3861 = !DILocalVariable(name: "status", scope: !3854, file: !967, line: 76, type: !3862)
!3862 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1028, line: 67, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1028, line: 62, size: 64, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3863, file: !1028, line: 63, baseType: !31, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3863, file: !1028, line: 64, baseType: !252, size: 8, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3863, file: !1028, line: 65, baseType: !252, size: 8, offset: 40)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3863, file: !1028, line: 66, baseType: !252, size: 8, offset: 48)
!3869 = !DILocation(line: 0, scope: !3854)
!3870 = !DILocation(line: 77, column: 14, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3854, file: !967, line: 77, column: 9)
!3872 = !DILocation(line: 77, column: 9, scope: !3854)
!3873 = !DILocation(line: 81, column: 18, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3854, file: !967, line: 81, column: 9)
!3875 = !DILocation(line: 81, column: 9, scope: !3854)
!3876 = !DILocation(line: 85, column: 14, scope: !3854)
!3877 = !DILocation(line: 86, column: 18, scope: !3854)
!3878 = !DILocation(line: 86, column: 16, scope: !3854)
!3879 = !DILocation(line: 87, column: 5, scope: !3854)
!3880 = !DILocation(line: 88, column: 1, scope: !3854)
!3881 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !967, file: !967, line: 90, type: !3882, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3884)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!3844, !3824, !1034}
!3884 = !{!3885, !3886, !3887}
!3885 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3881, file: !967, line: 90, type: !3824)
!3886 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3881, file: !967, line: 90, type: !1034)
!3887 = !DILocalVariable(name: "ret_value", scope: !3881, file: !967, line: 92, type: !223)
!3888 = !DILocation(line: 0, scope: !3881)
!3889 = !DILocation(line: 93, column: 18, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3881, file: !967, line: 93, column: 9)
!3891 = !DILocation(line: 93, column: 9, scope: !3881)
!3892 = !DILocation(line: 97, column: 60, scope: !3881)
!3893 = !DILocation(line: 97, column: 17, scope: !3881)
!3894 = !DILocation(line: 98, column: 12, scope: !3881)
!3895 = !DILocation(line: 98, column: 5, scope: !3881)
!3896 = !DILocation(line: 99, column: 1, scope: !3881)
!3897 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !967, file: !967, line: 101, type: !3855, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3898)
!3898 = !{!3899, !3900, !3901}
!3899 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3897, file: !967, line: 101, type: !3824)
!3900 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3897, file: !967, line: 101, type: !3857)
!3901 = !DILocalVariable(name: "status", scope: !3897, file: !967, line: 103, type: !3862)
!3902 = !DILocation(line: 0, scope: !3897)
!3903 = !DILocation(line: 104, column: 18, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3897, file: !967, line: 104, column: 9)
!3905 = !DILocation(line: 104, column: 9, scope: !3897)
!3906 = !DILocation(line: 108, column: 14, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3897, file: !967, line: 108, column: 9)
!3908 = !DILocation(line: 108, column: 9, scope: !3897)
!3909 = !DILocation(line: 112, column: 14, scope: !3897)
!3910 = !DILocation(line: 113, column: 18, scope: !3897)
!3911 = !DILocation(line: 113, column: 16, scope: !3897)
!3912 = !DILocation(line: 114, column: 5, scope: !3897)
!3913 = !DILocation(line: 115, column: 1, scope: !3897)
!3914 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !967, file: !967, line: 117, type: !3915, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3918)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!3844, !3824, !3917}
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !970, line: 213, baseType: !1017)
!3918 = !{!3919, !3920, !3921}
!3919 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3914, file: !967, line: 117, type: !3824)
!3920 = !DILocalVariable(name: "direction", arg: 2, scope: !3914, file: !967, line: 117, type: !3917)
!3921 = !DILocalVariable(name: "ret_value", scope: !3914, file: !967, line: 119, type: !223)
!3922 = !DILocation(line: 0, scope: !3914)
!3923 = !DILocation(line: 120, column: 18, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3914, file: !967, line: 120, column: 9)
!3925 = !DILocation(line: 120, column: 9, scope: !3914)
!3926 = !DILocation(line: 123, column: 17, scope: !3914)
!3927 = !DILocation(line: 125, column: 12, scope: !3914)
!3928 = !DILocation(line: 125, column: 5, scope: !3914)
!3929 = !DILocation(line: 126, column: 1, scope: !3914)
!3930 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !967, file: !967, line: 128, type: !3931, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3934)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!3844, !3824, !3933}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 32)
!3934 = !{!3935, !3936, !3937}
!3935 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3930, file: !967, line: 128, type: !3824)
!3936 = !DILocalVariable(name: "direction", arg: 2, scope: !3930, file: !967, line: 128, type: !3933)
!3937 = !DILocalVariable(name: "status", scope: !3930, file: !967, line: 131, type: !3862)
!3938 = !DILocation(line: 0, scope: !3930)
!3939 = !DILocation(line: 132, column: 18, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3930, file: !967, line: 132, column: 9)
!3941 = !DILocation(line: 132, column: 9, scope: !3930)
!3942 = !DILocation(line: 136, column: 14, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3930, file: !967, line: 136, column: 9)
!3944 = !DILocation(line: 136, column: 9, scope: !3930)
!3945 = !DILocation(line: 140, column: 14, scope: !3930)
!3946 = !DILocation(line: 141, column: 18, scope: !3930)
!3947 = !DILocation(line: 141, column: 16, scope: !3930)
!3948 = !DILocation(line: 142, column: 5, scope: !3930)
!3949 = !DILocation(line: 143, column: 1, scope: !3930)
!3950 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !967, file: !967, line: 146, type: !3842, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3951)
!3951 = !{!3952, !3953}
!3952 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3950, file: !967, line: 146, type: !3824)
!3953 = !DILocalVariable(name: "status", scope: !3950, file: !967, line: 148, type: !3862)
!3954 = !DILocation(line: 0, scope: !3950)
!3955 = !DILocation(line: 149, column: 18, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3950, file: !967, line: 149, column: 9)
!3957 = !DILocation(line: 149, column: 9, scope: !3950)
!3958 = !DILocation(line: 153, column: 14, scope: !3950)
!3959 = !DILocation(line: 154, column: 76, scope: !3950)
!3960 = !DILocation(line: 154, column: 12, scope: !3950)
!3961 = !DILocation(line: 154, column: 5, scope: !3950)
!3962 = !DILocation(line: 155, column: 1, scope: !3950)
!3963 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !967, file: !967, line: 157, type: !3842, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3964)
!3964 = !{!3965, !3966}
!3965 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3963, file: !967, line: 157, type: !3824)
!3966 = !DILocalVariable(name: "ret_value", scope: !3963, file: !967, line: 159, type: !223)
!3967 = !DILocation(line: 0, scope: !3963)
!3968 = !DILocation(line: 160, column: 18, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3963, file: !967, line: 160, column: 9)
!3970 = !DILocation(line: 160, column: 9, scope: !3963)
!3971 = !DILocation(line: 164, column: 17, scope: !3963)
!3972 = !DILocation(line: 165, column: 19, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3963, file: !967, line: 165, column: 9)
!3974 = !DILocation(line: 165, column: 9, scope: !3963)
!3975 = !DILocation(line: 168, column: 17, scope: !3963)
!3976 = !DILocation(line: 169, column: 12, scope: !3963)
!3977 = !DILocation(line: 169, column: 5, scope: !3963)
!3978 = !DILocation(line: 170, column: 1, scope: !3963)
!3979 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !967, file: !967, line: 172, type: !3842, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3980)
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3979, file: !967, line: 172, type: !3824)
!3982 = !DILocalVariable(name: "ret_value", scope: !3979, file: !967, line: 174, type: !223)
!3983 = !DILocation(line: 0, scope: !3979)
!3984 = !DILocation(line: 175, column: 18, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3979, file: !967, line: 175, column: 9)
!3986 = !DILocation(line: 175, column: 9, scope: !3979)
!3987 = !DILocation(line: 179, column: 17, scope: !3979)
!3988 = !DILocation(line: 180, column: 19, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3979, file: !967, line: 180, column: 9)
!3990 = !DILocation(line: 180, column: 9, scope: !3979)
!3991 = !DILocation(line: 183, column: 17, scope: !3979)
!3992 = !DILocation(line: 184, column: 12, scope: !3979)
!3993 = !DILocation(line: 184, column: 5, scope: !3979)
!3994 = !DILocation(line: 185, column: 1, scope: !3979)
!3995 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !967, file: !967, line: 187, type: !3842, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !3996)
!3996 = !{!3997, !3998}
!3997 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3995, file: !967, line: 187, type: !3824)
!3998 = !DILocalVariable(name: "ret_value", scope: !3995, file: !967, line: 189, type: !223)
!3999 = !DILocation(line: 0, scope: !3995)
!4000 = !DILocation(line: 191, column: 18, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3995, file: !967, line: 191, column: 9)
!4002 = !DILocation(line: 191, column: 9, scope: !3995)
!4003 = !DILocation(line: 195, column: 17, scope: !3995)
!4004 = !DILocation(line: 196, column: 12, scope: !3995)
!4005 = !DILocation(line: 196, column: 5, scope: !3995)
!4006 = !DILocation(line: 197, column: 1, scope: !3995)
!4007 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !967, file: !967, line: 200, type: !4008, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3844, !3824, !1035}
!4010 = !{!4011, !4012, !4013}
!4011 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4007, file: !967, line: 200, type: !3824)
!4012 = !DILocalVariable(name: "driving", arg: 2, scope: !4007, file: !967, line: 200, type: !1035)
!4013 = !DILocalVariable(name: "ret_value", scope: !4007, file: !967, line: 202, type: !223)
!4014 = !DILocation(line: 0, scope: !4007)
!4015 = !DILocation(line: 204, column: 18, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4007, file: !967, line: 204, column: 9)
!4017 = !DILocation(line: 204, column: 9, scope: !4007)
!4018 = !DILocation(line: 208, column: 64, scope: !4007)
!4019 = !DILocation(line: 208, column: 17, scope: !4007)
!4020 = !DILocation(line: 210, column: 12, scope: !4007)
!4021 = !DILocation(line: 210, column: 5, scope: !4007)
!4022 = !DILocation(line: 211, column: 1, scope: !4007)
!4023 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !967, file: !967, line: 214, type: !4024, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !966, retainedNodes: !4027)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!3844, !3824, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 32)
!4027 = !{!4028, !4029, !4030, !4031}
!4028 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4023, file: !967, line: 214, type: !3824)
!4029 = !DILocalVariable(name: "driving", arg: 2, scope: !4023, file: !967, line: 214, type: !4026)
!4030 = !DILocalVariable(name: "ret_value", scope: !4023, file: !967, line: 216, type: !223)
!4031 = !DILocalVariable(name: "value", scope: !4023, file: !967, line: 217, type: !252)
!4032 = !DILocation(line: 0, scope: !4023)
!4033 = !DILocation(line: 217, column: 5, scope: !4023)
!4034 = !DILocation(line: 219, column: 18, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4023, file: !967, line: 219, column: 9)
!4036 = !DILocation(line: 219, column: 9, scope: !4023)
!4037 = !DILocation(line: 223, column: 17, scope: !4023)
!4038 = !DILocation(line: 225, column: 44, scope: !4023)
!4039 = !DILocation(line: 225, column: 16, scope: !4023)
!4040 = !DILocation(line: 225, column: 14, scope: !4023)
!4041 = !DILocation(line: 227, column: 12, scope: !4023)
!4042 = !DILocation(line: 227, column: 5, scope: !4023)
!4043 = !DILocation(line: 228, column: 1, scope: !4023)
!4044 = distinct !DISubprogram(name: "hal_irtx_init", scope: !315, file: !315, line: 108, type: !4045, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !2211)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!4047}
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irtx_status_t", file: !318, line: 201, baseType: !317)
!4048 = !DILocation(line: 111, column: 5, scope: !4044)
!4049 = !DILocation(line: 123, column: 5, scope: !4044)
!4050 = distinct !DISubprogram(name: "hal_irtx_deinit", scope: !315, file: !315, line: 127, type: !4045, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !2211)
!4051 = !DILocation(line: 129, column: 5, scope: !4050)
!4052 = !DILocation(line: 134, column: 5, scope: !4050)
!4053 = distinct !DISubprogram(name: "hal_irtx_do_send_data", scope: !315, file: !315, line: 138, type: !4054, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4057)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!4047, !252, !4056, !2908, !31}
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irtx_repeat_code_t", file: !318, line: 194, baseType: !322)
!4057 = !{!4058, !4059, !4060, !4061, !4062, !4063}
!4058 = !DILocalVariable(name: "mode", arg: 1, scope: !4053, file: !315, line: 138, type: !252)
!4059 = !DILocalVariable(name: "repeat_code", arg: 2, scope: !4053, file: !315, line: 139, type: !4056)
!4060 = !DILocalVariable(name: "data", arg: 3, scope: !4053, file: !315, line: 140, type: !2908)
!4061 = !DILocalVariable(name: "bit_length", arg: 4, scope: !4053, file: !315, line: 141, type: !31)
!4062 = !DILocalVariable(name: "ret_val", scope: !4053, file: !315, line: 143, type: !223)
!4063 = !DILocalVariable(name: "target_data", scope: !4053, file: !315, line: 148, type: !4064)
!4064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 96, elements: !582)
!4065 = !DILocation(line: 0, scope: !4053)
!4066 = !DILocation(line: 143, column: 23, scope: !4053)
!4067 = !DILocation(line: 144, column: 17, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4053, file: !315, line: 144, column: 9)
!4069 = !DILocation(line: 144, column: 9, scope: !4053)
!4070 = !DILocation(line: 145, column: 9, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4068, file: !315, line: 144, column: 22)
!4072 = !DILocation(line: 146, column: 9, scope: !4071)
!4073 = !DILocation(line: 148, column: 5, scope: !4053)
!4074 = !DILocation(line: 148, column: 14, scope: !4053)
!4075 = !DILocation(line: 149, column: 34, scope: !4053)
!4076 = !DILocation(line: 149, column: 5, scope: !4053)
!4077 = !DILocation(line: 154, column: 26, scope: !4053)
!4078 = !DILocation(line: 155, column: 26, scope: !4053)
!4079 = !DILocation(line: 156, column: 26, scope: !4053)
!4080 = !DILocation(line: 157, column: 26, scope: !4053)
!4081 = !DILocation(line: 158, column: 26, scope: !4053)
!4082 = !DILocation(line: 154, column: 15, scope: !4053)
!4083 = !DILocation(line: 164, column: 17, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4053, file: !315, line: 164, column: 9)
!4085 = !DILocation(line: 164, column: 9, scope: !4053)
!4086 = !DILocation(line: 165, column: 9, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !315, line: 164, column: 22)
!4088 = !DILocation(line: 166, column: 9, scope: !4087)
!4089 = !DILocation(line: 168, column: 17, scope: !4053)
!4090 = !DILocation(line: 169, column: 5, scope: !4053)
!4091 = !DILocation(line: 170, column: 1, scope: !4053)
!4092 = distinct !DISubprogram(name: "hal_irtx_translate_user_data", scope: !315, file: !315, line: 80, type: !4093, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !2848, !2908}
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "target_data", arg: 1, scope: !4092, file: !315, line: 80, type: !2848)
!4097 = !DILocalVariable(name: "data", arg: 2, scope: !4092, file: !315, line: 80, type: !2908)
!4098 = !DILocation(line: 0, scope: !4092)
!4099 = !DILocation(line: 82, column: 22, scope: !4092)
!4100 = !DILocation(line: 82, column: 20, scope: !4092)
!4101 = !DILocation(line: 83, column: 54, scope: !4092)
!4102 = !DILocation(line: 83, column: 22, scope: !4092)
!4103 = !DILocation(line: 83, column: 5, scope: !4092)
!4104 = !DILocation(line: 83, column: 20, scope: !4092)
!4105 = !DILocation(line: 84, column: 54, scope: !4092)
!4106 = !DILocation(line: 84, column: 22, scope: !4092)
!4107 = !DILocation(line: 84, column: 5, scope: !4092)
!4108 = !DILocation(line: 84, column: 20, scope: !4092)
!4109 = !DILocation(line: 85, column: 1, scope: !4092)
!4110 = distinct !DISubprogram(name: "hal_irtx_translate_repeat_code", scope: !315, file: !315, line: 87, type: !4111, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!252, !4056}
!4113 = !{!4114}
!4114 = !DILocalVariable(name: "repeat_code", arg: 1, scope: !4110, file: !315, line: 87, type: !4056)
!4115 = !DILocation(line: 0, scope: !4110)
!4116 = !DILocation(line: 89, column: 35, scope: !4110)
!4117 = !DILocation(line: 89, column: 12, scope: !4110)
!4118 = !DILocation(line: 89, column: 5, scope: !4110)
!4119 = distinct !DISubprogram(name: "hal_irtx_build_double_word", scope: !315, file: !315, line: 66, type: !4120, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!31, !2908}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "data", arg: 1, scope: !4119, file: !315, line: 66, type: !2908)
!4124 = !DILocalVariable(name: "target_data", scope: !4119, file: !315, line: 68, type: !31)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 69, column: 47, scope: !4119)
!4127 = !DILocation(line: 69, column: 55, scope: !4119)
!4128 = !DILocation(line: 69, column: 20, scope: !4119)
!4129 = !DILocation(line: 70, column: 54, scope: !4119)
!4130 = !DILocation(line: 70, column: 20, scope: !4119)
!4131 = !DILocation(line: 70, column: 62, scope: !4119)
!4132 = !DILocation(line: 70, column: 17, scope: !4119)
!4133 = !DILocation(line: 71, column: 47, scope: !4119)
!4134 = !DILocation(line: 71, column: 55, scope: !4119)
!4135 = !DILocation(line: 71, column: 20, scope: !4119)
!4136 = !DILocation(line: 71, column: 69, scope: !4119)
!4137 = !DILocation(line: 71, column: 17, scope: !4119)
!4138 = !DILocation(line: 72, column: 54, scope: !4119)
!4139 = !DILocation(line: 72, column: 20, scope: !4119)
!4140 = !DILocation(line: 72, column: 62, scope: !4119)
!4141 = !DILocation(line: 72, column: 17, scope: !4119)
!4142 = !DILocation(line: 73, column: 47, scope: !4119)
!4143 = !DILocation(line: 73, column: 55, scope: !4119)
!4144 = !DILocation(line: 73, column: 20, scope: !4119)
!4145 = !DILocation(line: 73, column: 69, scope: !4119)
!4146 = !DILocation(line: 73, column: 17, scope: !4119)
!4147 = !DILocation(line: 74, column: 54, scope: !4119)
!4148 = !DILocation(line: 74, column: 20, scope: !4119)
!4149 = !DILocation(line: 74, column: 62, scope: !4119)
!4150 = !DILocation(line: 74, column: 17, scope: !4119)
!4151 = !DILocation(line: 75, column: 47, scope: !4119)
!4152 = !DILocation(line: 75, column: 55, scope: !4119)
!4153 = !DILocation(line: 75, column: 20, scope: !4119)
!4154 = !DILocation(line: 75, column: 69, scope: !4119)
!4155 = !DILocation(line: 75, column: 17, scope: !4119)
!4156 = !DILocation(line: 76, column: 54, scope: !4119)
!4157 = !DILocation(line: 76, column: 20, scope: !4119)
!4158 = !DILocation(line: 76, column: 62, scope: !4119)
!4159 = !DILocation(line: 76, column: 17, scope: !4119)
!4160 = !DILocation(line: 77, column: 5, scope: !4119)
!4161 = distinct !DISubprogram(name: "hal_irtx_revert_bit_order", scope: !315, file: !315, line: 56, type: !4162, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!252, !252}
!4164 = !{!4165, !4166}
!4165 = !DILocalVariable(name: "half_byte", arg: 1, scope: !4161, file: !315, line: 56, type: !252)
!4166 = !DILocalVariable(name: "target", scope: !4161, file: !315, line: 58, type: !252)
!4167 = !DILocation(line: 0, scope: !4161)
!4168 = !DILocation(line: 62, column: 12, scope: !4161)
!4169 = !DILocation(line: 63, column: 5, scope: !4161)
!4170 = distinct !DISubprogram(name: "hal_irtx_send_nec_data", scope: !315, file: !315, line: 172, type: !4171, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!4047, !4056, !2908, !31}
!4173 = !{!4174, !4175, !4176}
!4174 = !DILocalVariable(name: "repeat_code", arg: 1, scope: !4170, file: !315, line: 172, type: !4056)
!4175 = !DILocalVariable(name: "data", arg: 2, scope: !4170, file: !315, line: 173, type: !2908)
!4176 = !DILocalVariable(name: "bit_length", arg: 3, scope: !4170, file: !315, line: 174, type: !31)
!4177 = !DILocation(line: 0, scope: !4170)
!4178 = !DILocation(line: 177, column: 34, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4170, file: !315, line: 177, column: 9)
!4180 = !DILocation(line: 177, column: 31, scope: !4179)
!4181 = !DILocation(line: 177, column: 9, scope: !4170)
!4182 = !DILocation(line: 180, column: 12, scope: !4170)
!4183 = !DILocation(line: 180, column: 5, scope: !4170)
!4184 = !DILocation(line: 181, column: 1, scope: !4170)
!4185 = distinct !DISubprogram(name: "hal_irtx_check_valid_data", scope: !315, file: !315, line: 92, type: !4186, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4188)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!4047, !2908, !31}
!4188 = !{!4189, !4190}
!4189 = !DILocalVariable(name: "data", arg: 1, scope: !4185, file: !315, line: 92, type: !2908)
!4190 = !DILocalVariable(name: "bit_length", arg: 2, scope: !4185, file: !315, line: 92, type: !31)
!4191 = !DILocation(line: 0, scope: !4185)
!4192 = !DILocation(line: 94, column: 14, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4185, file: !315, line: 94, column: 9)
!4194 = !DILocation(line: 94, column: 9, scope: !4185)
!4195 = !DILocation(line: 95, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4193, file: !315, line: 94, column: 23)
!4197 = !DILocation(line: 96, column: 9, scope: !4196)
!4198 = !DILocation(line: 98, column: 20, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4185, file: !315, line: 98, column: 9)
!4200 = !DILocation(line: 98, column: 9, scope: !4185)
!4201 = !DILocation(line: 99, column: 9, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !315, line: 98, column: 52)
!4203 = !DILocation(line: 101, column: 9, scope: !4202)
!4204 = !DILocation(line: 105, column: 1, scope: !4185)
!4205 = distinct !DISubprogram(name: "hal_irtx_send_rc5_data", scope: !315, file: !315, line: 183, type: !4171, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4206)
!4206 = !{!4207, !4208, !4209}
!4207 = !DILocalVariable(name: "repeat_code", arg: 1, scope: !4205, file: !315, line: 183, type: !4056)
!4208 = !DILocalVariable(name: "data", arg: 2, scope: !4205, file: !315, line: 184, type: !2908)
!4209 = !DILocalVariable(name: "bit_length", arg: 3, scope: !4205, file: !315, line: 185, type: !31)
!4210 = !DILocation(line: 0, scope: !4205)
!4211 = !DILocation(line: 187, column: 34, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4205, file: !315, line: 187, column: 9)
!4213 = !DILocation(line: 187, column: 31, scope: !4212)
!4214 = !DILocation(line: 187, column: 9, scope: !4205)
!4215 = !DILocation(line: 191, column: 12, scope: !4205)
!4216 = !DILocation(line: 191, column: 5, scope: !4205)
!4217 = !DILocation(line: 192, column: 1, scope: !4205)
!4218 = distinct !DISubprogram(name: "hal_irtx_send_rc6_data", scope: !315, file: !315, line: 195, type: !4171, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4219)
!4219 = !{!4220, !4221, !4222}
!4220 = !DILocalVariable(name: "repeat_code", arg: 1, scope: !4218, file: !315, line: 195, type: !4056)
!4221 = !DILocalVariable(name: "data", arg: 2, scope: !4218, file: !315, line: 196, type: !2908)
!4222 = !DILocalVariable(name: "bit_length", arg: 3, scope: !4218, file: !315, line: 197, type: !31)
!4223 = !DILocation(line: 0, scope: !4218)
!4224 = !DILocation(line: 199, column: 34, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4218, file: !315, line: 199, column: 9)
!4226 = !DILocation(line: 199, column: 31, scope: !4225)
!4227 = !DILocation(line: 199, column: 9, scope: !4218)
!4228 = !DILocation(line: 203, column: 12, scope: !4218)
!4229 = !DILocation(line: 203, column: 5, scope: !4218)
!4230 = !DILocation(line: 204, column: 1, scope: !4218)
!4231 = distinct !DISubprogram(name: "hal_irtx_configure_pulse_data_carrier", scope: !315, file: !315, line: 206, type: !4232, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4234)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!4047, !31, !31}
!4234 = !{!4235, !4236, !4237}
!4235 = !DILocalVariable(name: "frequency", arg: 1, scope: !4231, file: !315, line: 206, type: !31)
!4236 = !DILocalVariable(name: "duty_cycle", arg: 2, scope: !4231, file: !315, line: 207, type: !31)
!4237 = !DILocalVariable(name: "ret_val", scope: !4231, file: !315, line: 209, type: !223)
!4238 = !DILocation(line: 0, scope: !4231)
!4239 = !DILocation(line: 209, column: 51, scope: !4231)
!4240 = !DILocation(line: 209, column: 72, scope: !4231)
!4241 = !DILocation(line: 209, column: 23, scope: !4231)
!4242 = !DILocation(line: 210, column: 12, scope: !4231)
!4243 = !DILocation(line: 210, column: 5, scope: !4231)
!4244 = distinct !DISubprogram(name: "hal_irtx_register_pulse_data_callback", scope: !315, file: !315, line: 222, type: !4245, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!4047, !342, !158}
!4247 = !{!4248, !4249}
!4248 = !DILocalVariable(name: "callback", arg: 1, scope: !4244, file: !315, line: 222, type: !342)
!4249 = !DILocalVariable(name: "user_data", arg: 2, scope: !4244, file: !315, line: 223, type: !158)
!4250 = !DILocation(line: 0, scope: !4244)
!4251 = !DILocation(line: 225, column: 27, scope: !4244)
!4252 = !DILocation(line: 226, column: 26, scope: !4244)
!4253 = !DILocation(line: 227, column: 5, scope: !4244)
!4254 = !DILocation(line: 228, column: 5, scope: !4244)
!4255 = !DILocation(line: 229, column: 5, scope: !4244)
!4256 = distinct !DISubprogram(name: "hal_irtx_interrupt_handle", scope: !315, file: !315, line: 213, type: !307, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4257)
!4257 = !{!4258}
!4258 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4256, file: !315, line: 213, type: !221)
!4259 = !DILocation(line: 0, scope: !4256)
!4260 = !DILocation(line: 215, column: 17, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4256, file: !315, line: 215, column: 9)
!4262 = !DILocation(line: 215, column: 14, scope: !4261)
!4263 = !DILocation(line: 215, column: 9, scope: !4256)
!4264 = !DILocation(line: 216, column: 67, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4261, file: !315, line: 215, column: 40)
!4266 = !DILocation(line: 216, column: 9, scope: !4265)
!4267 = !DILocation(line: 217, column: 5, scope: !4265)
!4268 = !DILocation(line: 218, column: 11, scope: !4256)
!4269 = !DILocation(line: 219, column: 17, scope: !4256)
!4270 = !DILocation(line: 220, column: 1, scope: !4256)
!4271 = distinct !DISubprogram(name: "hal_irtx_send_pulse_data", scope: !315, file: !315, line: 232, type: !4272, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!4047, !31, !455, !31}
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DILocalVariable(name: "base_period", arg: 1, scope: !4271, file: !315, line: 232, type: !31)
!4276 = !DILocalVariable(name: "data", arg: 2, scope: !4271, file: !315, line: 233, type: !455)
!4277 = !DILocalVariable(name: "length", arg: 3, scope: !4271, file: !315, line: 234, type: !31)
!4278 = !DILocalVariable(name: "ret_val", scope: !4271, file: !315, line: 236, type: !223)
!4279 = !DILocation(line: 0, scope: !4271)
!4280 = !DILocation(line: 242, column: 38, scope: !4271)
!4281 = !DILocation(line: 242, column: 52, scope: !4271)
!4282 = !DILocation(line: 242, column: 15, scope: !4271)
!4283 = !DILocation(line: 247, column: 12, scope: !4271)
!4284 = !DILocation(line: 247, column: 5, scope: !4271)
!4285 = distinct !DISubprogram(name: "hal_irtx_get_running_status", scope: !315, file: !315, line: 251, type: !4286, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !4290)
!4286 = !DISubroutineType(types: !4287)
!4287 = !{!4047, !4288}
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irtx_running_status_t", file: !318, line: 215, baseType: !330)
!4290 = !{!4291}
!4291 = !DILocalVariable(name: "running_status", arg: 1, scope: !4285, file: !315, line: 251, type: !4288)
!4292 = !DILocation(line: 0, scope: !4285)
!4293 = !DILocation(line: 253, column: 9, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4285, file: !315, line: 253, column: 9)
!4295 = !DILocation(line: 0, scope: !4294)
!4296 = !DILocation(line: 259, column: 5, scope: !4285)
!4297 = distinct !DISubprogram(name: "hal_uart_init", scope: !351, file: !351, line: 234, type: !4298, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4302)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!4300, !415, !4301}
!4300 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !354, line: 351, baseType: !353)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!4302 = !{!4303, !4304}
!4303 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4297, file: !351, line: 234, type: !415)
!4304 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4297, file: !351, line: 234, type: !4301)
!4305 = !DILocation(line: 0, scope: !4297)
!4306 = !DILocation(line: 236, column: 10, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4297, file: !351, line: 236, column: 9)
!4308 = !DILocation(line: 236, column: 9, scope: !4297)
!4309 = !DILocation(line: 239, column: 41, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4297, file: !351, line: 239, column: 9)
!4311 = !DILocation(line: 239, column: 9, scope: !4297)
!4312 = !DILocation(line: 242, column: 5, scope: !4297)
!4313 = !DILocation(line: 243, column: 45, scope: !4297)
!4314 = !DILocation(line: 243, column: 12, scope: !4297)
!4315 = !DILocation(line: 244, column: 12, scope: !4297)
!4316 = !DILocation(line: 243, column: 5, scope: !4297)
!4317 = !DILocation(line: 245, column: 58, scope: !4297)
!4318 = !DILocation(line: 246, column: 30, scope: !4297)
!4319 = !{i32 0, i32 2}
!4320 = !DILocation(line: 246, column: 5, scope: !4297)
!4321 = !DILocation(line: 247, column: 5, scope: !4297)
!4322 = !DILocation(line: 249, column: 31, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4297, file: !351, line: 249, column: 9)
!4324 = !DILocation(line: 249, column: 28, scope: !4323)
!4325 = !DILocation(line: 261, column: 1, scope: !4297)
!4326 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !351, file: !351, line: 93, type: !4327, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4331)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!161, !415, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!4331 = !{!4332, !4333}
!4332 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4326, file: !351, line: 93, type: !415)
!4333 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4326, file: !351, line: 93, type: !4329)
!4334 = !DILocation(line: 0, scope: !4326)
!4335 = !DILocation(line: 95, column: 10, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4326, file: !351, line: 95, column: 9)
!4337 = !DILocation(line: 95, column: 9, scope: !4326)
!4338 = !DILocation(line: 101, column: 23, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4326, file: !351, line: 101, column: 9)
!4340 = !DILocation(line: 101, column: 32, scope: !4339)
!4341 = !DILocation(line: 101, column: 60, scope: !4339)
!4342 = !DILocation(line: 102, column: 27, scope: !4339)
!4343 = !DILocation(line: 102, column: 34, scope: !4339)
!4344 = !DILocation(line: 102, column: 58, scope: !4339)
!4345 = !DILocation(line: 103, column: 27, scope: !4339)
!4346 = !DILocation(line: 103, column: 36, scope: !4339)
!4347 = !DILocation(line: 103, column: 59, scope: !4339)
!4348 = !DILocation(line: 104, column: 27, scope: !4339)
!4349 = !DILocation(line: 104, column: 39, scope: !4339)
!4350 = !DILocation(line: 101, column: 9, scope: !4326)
!4351 = !DILocation(line: 109, column: 1, scope: !4326)
!4352 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !351, file: !351, line: 139, type: !4353, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!2703, !415}
!4355 = !{!4356}
!4356 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4352, file: !351, line: 139, type: !415)
!4357 = !DILocation(line: 0, scope: !4352)
!4358 = !DILocation(line: 141, column: 24, scope: !4352)
!4359 = !DILocation(line: 141, column: 12, scope: !4352)
!4360 = !DILocation(line: 141, column: 5, scope: !4352)
!4361 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !351, file: !351, line: 593, type: !4362, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!4300, !415, !4329}
!4364 = !{!4365, !4366}
!4365 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4361, file: !351, line: 593, type: !415)
!4366 = !DILocalVariable(name: "config", arg: 2, scope: !4361, file: !351, line: 593, type: !4329)
!4367 = !DILocation(line: 0, scope: !4361)
!4368 = !DILocation(line: 595, column: 10, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4361, file: !351, line: 595, column: 9)
!4370 = !DILocation(line: 595, column: 9, scope: !4361)
!4371 = !DILocation(line: 598, column: 45, scope: !4361)
!4372 = !DILocation(line: 598, column: 12, scope: !4361)
!4373 = !DILocation(line: 598, column: 59, scope: !4361)
!4374 = !DILocation(line: 598, column: 5, scope: !4361)
!4375 = !DILocation(line: 599, column: 23, scope: !4361)
!4376 = !DILocation(line: 600, column: 59, scope: !4361)
!4377 = !DILocation(line: 600, column: 23, scope: !4361)
!4378 = !DILocation(line: 601, column: 62, scope: !4361)
!4379 = !DILocation(line: 601, column: 23, scope: !4361)
!4380 = !DILocation(line: 602, column: 57, scope: !4361)
!4381 = !DILocation(line: 602, column: 23, scope: !4361)
!4382 = !DILocation(line: 603, column: 58, scope: !4361)
!4383 = !DILocation(line: 603, column: 23, scope: !4361)
!4384 = !DILocation(line: 599, column: 5, scope: !4361)
!4385 = !DILocation(line: 604, column: 5, scope: !4361)
!4386 = !DILocation(line: 605, column: 1, scope: !4361)
!4387 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !351, file: !351, line: 145, type: !4388, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4390)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!31, !430}
!4390 = !{!4391, !4392}
!4391 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4387, file: !351, line: 145, type: !430)
!4392 = !DILocalVariable(name: "baudrate_tbl", scope: !4387, file: !351, line: 147, type: !4393)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 416, elements: !4394)
!4394 = !{!4395}
!4395 = !DISubrange(count: 13)
!4396 = !DILocation(line: 0, scope: !4387)
!4397 = !DILocation(line: 147, column: 14, scope: !4387)
!4398 = !DILocation(line: 151, column: 12, scope: !4387)
!4399 = !DILocation(line: 151, column: 5, scope: !4387)
!4400 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !351, file: !351, line: 155, type: !4401, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4403)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!335, !432}
!4403 = !{!4404, !4405}
!4404 = !DILocalVariable(name: "word_length", arg: 1, scope: !4400, file: !351, line: 155, type: !432)
!4405 = !DILocalVariable(name: "databit_tbl", scope: !4400, file: !351, line: 157, type: !4406)
!4406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !291)
!4407 = !DILocation(line: 0, scope: !4400)
!4408 = !DILocation(line: 157, column: 14, scope: !4400)
!4409 = !DILocation(line: 160, column: 12, scope: !4400)
!4410 = !DILocation(line: 160, column: 5, scope: !4400)
!4411 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !351, file: !351, line: 164, type: !4412, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!335, !436}
!4414 = !{!4415, !4416}
!4415 = !DILocalVariable(name: "parity", arg: 1, scope: !4411, file: !351, line: 164, type: !436)
!4416 = !DILocalVariable(name: "parity_tbl", scope: !4411, file: !351, line: 166, type: !4417)
!4417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 80, elements: !295)
!4418 = !DILocation(line: 0, scope: !4411)
!4419 = !DILocation(line: 166, column: 14, scope: !4411)
!4420 = !DILocation(line: 169, column: 12, scope: !4411)
!4421 = !DILocation(line: 169, column: 5, scope: !4411)
!4422 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !351, file: !351, line: 173, type: !4423, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4425)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!335, !434}
!4425 = !{!4426, !4427}
!4426 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4422, file: !351, line: 173, type: !434)
!4427 = !DILocalVariable(name: "stopbit_tbl", scope: !4422, file: !351, line: 175, type: !4428)
!4428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 48, elements: !582)
!4429 = !DILocation(line: 0, scope: !4422)
!4430 = !DILocation(line: 175, column: 14, scope: !4422)
!4431 = !DILocation(line: 178, column: 12, scope: !4422)
!4432 = !DILocation(line: 178, column: 5, scope: !4422)
!4433 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !351, file: !351, line: 87, type: !4434, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!161, !415}
!4436 = !{!4437}
!4437 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4433, file: !351, line: 87, type: !415)
!4438 = !DILocation(line: 0, scope: !4433)
!4439 = !DILocation(line: 89, column: 23, scope: !4433)
!4440 = !DILocation(line: 89, column: 5, scope: !4433)
!4441 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !351, file: !351, line: 264, type: !4442, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!4300, !415}
!4444 = !{!4445}
!4445 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4441, file: !351, line: 264, type: !415)
!4446 = !DILocation(line: 0, scope: !4441)
!4447 = !DILocation(line: 266, column: 10, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4441, file: !351, line: 266, column: 9)
!4449 = !DILocation(line: 266, column: 9, scope: !4441)
!4450 = !DILocation(line: 269, column: 41, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4441, file: !351, line: 269, column: 9)
!4452 = !DILocation(line: 269, column: 62, scope: !4451)
!4453 = !DILocation(line: 269, column: 9, scope: !4441)
!4454 = !DILocation(line: 272, column: 5, scope: !4441)
!4455 = !DILocation(line: 275, column: 22, scope: !4441)
!4456 = !DILocation(line: 275, column: 5, scope: !4441)
!4457 = !DILocation(line: 284, column: 5, scope: !4441)
!4458 = !DILocation(line: 286, column: 5, scope: !4441)
!4459 = !DILocation(line: 287, column: 1, scope: !4441)
!4460 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !351, file: !351, line: 290, type: !4461, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4463)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{null, !415, !404}
!4463 = !{!4464, !4465, !4466}
!4464 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4460, file: !351, line: 290, type: !415)
!4465 = !DILocalVariable(name: "byte", arg: 2, scope: !4460, file: !351, line: 290, type: !404)
!4466 = !DILocalVariable(name: "int_no", scope: !4460, file: !351, line: 292, type: !2703)
!4467 = !DILocation(line: 0, scope: !4460)
!4468 = !DILocation(line: 292, column: 26, scope: !4460)
!4469 = !DILocation(line: 294, column: 16, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4460, file: !351, line: 294, column: 9)
!4471 = !DILocation(line: 294, column: 9, scope: !4460)
!4472 = !DILocation(line: 295, column: 9, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4470, file: !351, line: 294, column: 34)
!4474 = !DILocation(line: 296, column: 5, scope: !4473)
!4475 = !DILocation(line: 299, column: 1, scope: !4460)
!4476 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !351, file: !351, line: 302, type: !4477, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!31, !415, !2908, !31}
!4479 = !{!4480, !4481, !4482, !4483, !4484}
!4480 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4476, file: !351, line: 302, type: !415)
!4481 = !DILocalVariable(name: "data", arg: 2, scope: !4476, file: !351, line: 302, type: !2908)
!4482 = !DILocalVariable(name: "size", arg: 3, scope: !4476, file: !351, line: 302, type: !31)
!4483 = !DILocalVariable(name: "int_no", scope: !4476, file: !351, line: 304, type: !2703)
!4484 = !DILocalVariable(name: "index", scope: !4476, file: !351, line: 305, type: !31)
!4485 = !DILocation(line: 0, scope: !4476)
!4486 = !DILocation(line: 304, column: 26, scope: !4476)
!4487 = !DILocation(line: 307, column: 14, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4476, file: !351, line: 307, column: 9)
!4489 = !DILocation(line: 307, column: 9, scope: !4476)
!4490 = !DILocation(line: 313, column: 53, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !351, line: 312, column: 48)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !351, line: 312, column: 9)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !351, line: 312, column: 9)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !351, line: 311, column: 33)
!4495 = distinct !DILexicalBlock(scope: !4476, file: !351, line: 311, column: 9)
!4496 = !DILocation(line: 313, column: 13, scope: !4491)
!4497 = !DILocation(line: 312, column: 44, scope: !4492)
!4498 = !DILocation(line: 312, column: 31, scope: !4492)
!4499 = !DILocation(line: 312, column: 9, scope: !4493)
!4500 = distinct !{!4500, !4499, !4501}
!4501 = !DILocation(line: 314, column: 9, scope: !4493)
!4502 = !DILocation(line: 318, column: 1, scope: !4476)
!4503 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !351, file: !351, line: 320, type: !4477, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510}
!4505 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4503, file: !351, line: 320, type: !415)
!4506 = !DILocalVariable(name: "data", arg: 2, scope: !4503, file: !351, line: 320, type: !2908)
!4507 = !DILocalVariable(name: "size", arg: 3, scope: !4503, file: !351, line: 320, type: !31)
!4508 = !DILocalVariable(name: "actual_space", scope: !4503, file: !351, line: 322, type: !31)
!4509 = !DILocalVariable(name: "send_size", scope: !4503, file: !351, line: 322, type: !31)
!4510 = !DILocalVariable(name: "ch", scope: !4503, file: !351, line: 323, type: !4511)
!4511 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !52, line: 144, baseType: !51)
!4512 = !DILocation(line: 0, scope: !4503)
!4513 = !DILocation(line: 322, column: 5, scope: !4503)
!4514 = !DILocation(line: 328, column: 10, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4503, file: !351, line: 328, column: 9)
!4516 = !DILocation(line: 328, column: 9, scope: !4503)
!4517 = !DILocation(line: 332, column: 15, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4503, file: !351, line: 332, column: 9)
!4519 = !DILocation(line: 332, column: 24, scope: !4518)
!4520 = !DILocation(line: 335, column: 42, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4503, file: !351, line: 335, column: 9)
!4522 = !DILocation(line: 335, column: 9, scope: !4503)
!4523 = !DILocation(line: 349, column: 30, scope: !4503)
!4524 = !DILocation(line: 349, column: 5, scope: !4503)
!4525 = !DILocation(line: 350, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4503, file: !351, line: 350, column: 9)
!4527 = !DILocation(line: 350, column: 22, scope: !4526)
!4528 = !DILocation(line: 355, column: 5, scope: !4503)
!4529 = !DILocation(line: 357, column: 22, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4503, file: !351, line: 357, column: 9)
!4531 = !DILocation(line: 357, column: 19, scope: !4530)
!4532 = !DILocation(line: 357, column: 9, scope: !4503)
!4533 = !DILocation(line: 358, column: 14, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !351, line: 357, column: 36)
!4535 = !{i32 14, i32 18}
!4536 = !DILocation(line: 359, column: 9, scope: !4534)
!4537 = !DILocation(line: 360, column: 5, scope: !4534)
!4538 = !DILocation(line: 362, column: 1, scope: !4503)
!4539 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !351, file: !351, line: 191, type: !4540, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!4511, !2703, !161}
!4542 = !{!4543, !4544, !4545}
!4543 = !DILocalVariable(name: "port", arg: 1, scope: !4539, file: !351, line: 191, type: !2703)
!4544 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4539, file: !351, line: 191, type: !161)
!4545 = !DILocalVariable(name: "ch", scope: !4539, file: !351, line: 193, type: !4511)
!4546 = !DILocation(line: 0, scope: !4539)
!4547 = !DILocation(line: 195, column: 14, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4539, file: !351, line: 195, column: 9)
!4549 = !DILocation(line: 195, column: 9, scope: !4539)
!4550 = !DILocation(line: 209, column: 5, scope: !4539)
!4551 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !351, file: !351, line: 365, type: !4552, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4554)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!404, !415}
!4554 = !{!4555, !4556}
!4555 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4551, file: !351, line: 365, type: !415)
!4556 = !DILocalVariable(name: "int_no", scope: !4551, file: !351, line: 367, type: !2703)
!4557 = !DILocation(line: 0, scope: !4551)
!4558 = !DILocation(line: 367, column: 26, scope: !4551)
!4559 = !DILocation(line: 369, column: 16, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4551, file: !351, line: 369, column: 9)
!4561 = !DILocation(line: 369, column: 9, scope: !4551)
!4562 = !DILocation(line: 370, column: 22, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4560, file: !351, line: 369, column: 33)
!4564 = !DILocation(line: 370, column: 9, scope: !4563)
!4565 = !DILocation(line: 0, scope: !4560)
!4566 = !DILocation(line: 375, column: 1, scope: !4551)
!4567 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !351, file: !351, line: 377, type: !4568, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!31, !415}
!4570 = !{!4571, !4572}
!4571 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4567, file: !351, line: 377, type: !415)
!4572 = !DILocalVariable(name: "int_no", scope: !4567, file: !351, line: 379, type: !2703)
!4573 = !DILocation(line: 0, scope: !4567)
!4574 = !DILocation(line: 379, column: 26, scope: !4567)
!4575 = !DILocation(line: 381, column: 16, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4567, file: !351, line: 381, column: 9)
!4577 = !DILocation(line: 381, column: 9, scope: !4567)
!4578 = !DILocation(line: 382, column: 16, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !351, line: 381, column: 33)
!4580 = !DILocation(line: 382, column: 9, scope: !4579)
!4581 = !DILocation(line: 0, scope: !4576)
!4582 = !DILocation(line: 387, column: 1, scope: !4567)
!4583 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !351, file: !351, line: 390, type: !4584, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!31, !415, !455, !31}
!4586 = !{!4587, !4588, !4589, !4590, !4591}
!4587 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4583, file: !351, line: 390, type: !415)
!4588 = !DILocalVariable(name: "buffer", arg: 2, scope: !4583, file: !351, line: 390, type: !455)
!4589 = !DILocalVariable(name: "size", arg: 3, scope: !4583, file: !351, line: 390, type: !31)
!4590 = !DILocalVariable(name: "int_no", scope: !4583, file: !351, line: 392, type: !2703)
!4591 = !DILocalVariable(name: "index", scope: !4583, file: !351, line: 393, type: !31)
!4592 = !DILocation(line: 0, scope: !4583)
!4593 = !DILocation(line: 392, column: 26, scope: !4583)
!4594 = !DILocation(line: 395, column: 16, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4583, file: !351, line: 395, column: 9)
!4596 = !DILocation(line: 395, column: 9, scope: !4583)
!4597 = !DILocation(line: 401, column: 38, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4599, file: !351, line: 400, column: 48)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !351, line: 400, column: 9)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !351, line: 400, column: 9)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !351, line: 399, column: 33)
!4602 = distinct !DILexicalBlock(scope: !4583, file: !351, line: 399, column: 9)
!4603 = !DILocation(line: 401, column: 13, scope: !4598)
!4604 = !DILocation(line: 401, column: 27, scope: !4598)
!4605 = !DILocation(line: 400, column: 44, scope: !4599)
!4606 = !DILocation(line: 400, column: 31, scope: !4599)
!4607 = !DILocation(line: 400, column: 9, scope: !4600)
!4608 = distinct !{!4608, !4607, !4609}
!4609 = !DILocation(line: 402, column: 9, scope: !4600)
!4610 = !DILocation(line: 406, column: 1, scope: !4583)
!4611 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !351, file: !351, line: 408, type: !4584, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4612)
!4612 = !{!4613, !4614, !4615, !4616, !4617, !4618}
!4613 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4611, file: !351, line: 408, type: !415)
!4614 = !DILocalVariable(name: "buffer", arg: 2, scope: !4611, file: !351, line: 408, type: !455)
!4615 = !DILocalVariable(name: "size", arg: 3, scope: !4611, file: !351, line: 408, type: !31)
!4616 = !DILocalVariable(name: "actual_size", scope: !4611, file: !351, line: 410, type: !31)
!4617 = !DILocalVariable(name: "receive_size", scope: !4611, file: !351, line: 410, type: !31)
!4618 = !DILocalVariable(name: "ch", scope: !4611, file: !351, line: 411, type: !4511)
!4619 = !DILocation(line: 0, scope: !4611)
!4620 = !DILocation(line: 410, column: 5, scope: !4611)
!4621 = !DILocation(line: 413, column: 10, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4611, file: !351, line: 413, column: 9)
!4623 = !DILocation(line: 413, column: 9, scope: !4611)
!4624 = !DILocation(line: 417, column: 17, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4611, file: !351, line: 417, column: 9)
!4626 = !DILocation(line: 417, column: 26, scope: !4625)
!4627 = !DILocation(line: 421, column: 30, scope: !4611)
!4628 = !DILocation(line: 421, column: 5, scope: !4611)
!4629 = !DILocation(line: 422, column: 9, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4611, file: !351, line: 422, column: 9)
!4631 = !DILocation(line: 422, column: 21, scope: !4630)
!4632 = !DILocation(line: 427, column: 5, scope: !4611)
!4633 = !DILocation(line: 429, column: 25, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4611, file: !351, line: 429, column: 9)
!4635 = !DILocation(line: 429, column: 22, scope: !4634)
!4636 = !DILocation(line: 429, column: 9, scope: !4611)
!4637 = !DILocation(line: 430, column: 14, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4634, file: !351, line: 429, column: 38)
!4639 = !DILocation(line: 431, column: 9, scope: !4638)
!4640 = !DILocation(line: 432, column: 5, scope: !4638)
!4641 = !DILocation(line: 435, column: 1, scope: !4611)
!4642 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !351, file: !351, line: 438, type: !4568, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4643)
!4643 = !{!4644, !4645}
!4644 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4642, file: !351, line: 438, type: !415)
!4645 = !DILocalVariable(name: "length", scope: !4642, file: !351, line: 440, type: !31)
!4646 = !DILocation(line: 0, scope: !4642)
!4647 = !DILocation(line: 440, column: 5, scope: !4642)
!4648 = !DILocation(line: 440, column: 14, scope: !4642)
!4649 = !DILocation(line: 442, column: 10, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4642, file: !351, line: 442, column: 9)
!4651 = !DILocation(line: 442, column: 9, scope: !4642)
!4652 = !DILocation(line: 446, column: 30, scope: !4642)
!4653 = !DILocation(line: 446, column: 5, scope: !4642)
!4654 = !DILocation(line: 447, column: 12, scope: !4642)
!4655 = !DILocation(line: 447, column: 5, scope: !4642)
!4656 = !DILocation(line: 448, column: 1, scope: !4642)
!4657 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !351, file: !351, line: 451, type: !4568, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4658)
!4658 = !{!4659, !4660}
!4659 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4657, file: !351, line: 451, type: !415)
!4660 = !DILocalVariable(name: "length", scope: !4657, file: !351, line: 453, type: !31)
!4661 = !DILocation(line: 0, scope: !4657)
!4662 = !DILocation(line: 453, column: 5, scope: !4657)
!4663 = !DILocation(line: 453, column: 14, scope: !4657)
!4664 = !DILocation(line: 455, column: 10, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4657, file: !351, line: 455, column: 9)
!4666 = !DILocation(line: 455, column: 9, scope: !4657)
!4667 = !DILocation(line: 459, column: 30, scope: !4657)
!4668 = !DILocation(line: 459, column: 5, scope: !4657)
!4669 = !DILocation(line: 461, column: 12, scope: !4657)
!4670 = !DILocation(line: 461, column: 5, scope: !4657)
!4671 = !DILocation(line: 462, column: 1, scope: !4657)
!4672 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !351, file: !351, line: 543, type: !4673, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4675)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!4300, !415, !443, !158}
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4672, file: !351, line: 543, type: !415)
!4677 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4672, file: !351, line: 544, type: !443)
!4678 = !DILocalVariable(name: "user_data", arg: 3, scope: !4672, file: !351, line: 545, type: !158)
!4679 = !DILocalVariable(name: "ch", scope: !4672, file: !351, line: 547, type: !4511)
!4680 = !DILocation(line: 0, scope: !4672)
!4681 = !DILocation(line: 549, column: 10, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4672, file: !351, line: 549, column: 9)
!4683 = !DILocation(line: 549, column: 9, scope: !4672)
!4684 = !DILocation(line: 556, column: 53, scope: !4672)
!4685 = !DILocation(line: 556, column: 62, scope: !4672)
!4686 = !DILocation(line: 557, column: 53, scope: !4672)
!4687 = !DILocation(line: 557, column: 63, scope: !4672)
!4688 = !DILocation(line: 558, column: 37, scope: !4672)
!4689 = !DILocation(line: 558, column: 54, scope: !4672)
!4690 = !DILocation(line: 560, column: 39, scope: !4672)
!4691 = !DILocation(line: 561, column: 39, scope: !4672)
!4692 = !DILocation(line: 560, column: 5, scope: !4672)
!4693 = !DILocation(line: 562, column: 5, scope: !4672)
!4694 = !DILocation(line: 564, column: 44, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4672, file: !351, line: 564, column: 9)
!4696 = !DILocation(line: 564, column: 9, scope: !4672)
!4697 = !DILocation(line: 565, column: 9, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4695, file: !351, line: 564, column: 59)
!4699 = !DILocation(line: 566, column: 5, scope: !4698)
!4700 = !DILocation(line: 567, column: 9, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4695, file: !351, line: 566, column: 12)
!4702 = !DILocation(line: 569, column: 10, scope: !4672)
!4703 = !DILocation(line: 570, column: 5, scope: !4672)
!4704 = !DILocation(line: 578, column: 5, scope: !4672)
!4705 = !DILocation(line: 579, column: 1, scope: !4672)
!4706 = !DILocation(line: 0, scope: !408)
!4707 = !DILocation(line: 539, column: 12, scope: !408)
!4708 = !DILocation(line: 539, column: 5, scope: !408)
!4709 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !351, file: !351, line: 511, type: !413, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4710)
!4710 = !{!4711}
!4711 = !DILocalVariable(name: "callback_context", scope: !4712, file: !351, line: 514, type: !4714)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !351, line: 513, column: 60)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !351, line: 513, column: 9)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 32)
!4715 = !DILocation(line: 513, column: 42, scope: !4713)
!4716 = !DILocation(line: 513, column: 9, scope: !4709)
!4717 = !DILocation(line: 515, column: 39, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4712, file: !351, line: 515, column: 13)
!4719 = !DILocation(line: 515, column: 18, scope: !4718)
!4720 = !DILocation(line: 515, column: 13, scope: !4712)
!4721 = !DILocation(line: 516, column: 89, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !351, line: 515, column: 49)
!4723 = !DILocation(line: 516, column: 13, scope: !4722)
!4724 = !DILocation(line: 517, column: 9, scope: !4722)
!4725 = !DILocation(line: 519, column: 32, scope: !4709)
!4726 = !DILocation(line: 519, column: 5, scope: !4709)
!4727 = !DILocation(line: 520, column: 1, scope: !4709)
!4728 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !351, file: !351, line: 523, type: !413, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4729)
!4729 = !{!4730}
!4730 = !DILocalVariable(name: "callback_context", scope: !4731, file: !351, line: 526, type: !4714)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !351, line: 525, column: 60)
!4732 = distinct !DILexicalBlock(scope: !4728, file: !351, line: 525, column: 9)
!4733 = !DILocation(line: 525, column: 42, scope: !4732)
!4734 = !DILocation(line: 525, column: 9, scope: !4728)
!4735 = !DILocation(line: 527, column: 39, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4731, file: !351, line: 527, column: 13)
!4737 = !DILocation(line: 527, column: 18, scope: !4736)
!4738 = !DILocation(line: 527, column: 13, scope: !4731)
!4739 = !DILocation(line: 528, column: 89, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4736, file: !351, line: 527, column: 49)
!4741 = !DILocation(line: 528, column: 13, scope: !4740)
!4742 = !DILocation(line: 529, column: 9, scope: !4740)
!4743 = !DILocation(line: 531, column: 32, scope: !4728)
!4744 = !DILocation(line: 531, column: 5, scope: !4728)
!4745 = !DILocation(line: 532, column: 1, scope: !4728)
!4746 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !351, file: !351, line: 464, type: !4747, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4749)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{null, !2703, !161}
!4749 = !{!4750, !4751, !4752, !4753, !4754, !4756}
!4750 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4746, file: !351, line: 464, type: !2703)
!4751 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4746, file: !351, line: 464, type: !161)
!4752 = !DILocalVariable(name: "avail_size", scope: !4746, file: !351, line: 466, type: !31)
!4753 = !DILocalVariable(name: "avail_space", scope: !4746, file: !351, line: 466, type: !31)
!4754 = !DILocalVariable(name: "dma_config", scope: !4746, file: !351, line: 467, type: !4755)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 32)
!4756 = !DILocalVariable(name: "ch", scope: !4746, file: !351, line: 468, type: !4511)
!4757 = !DILocation(line: 0, scope: !4746)
!4758 = !DILocation(line: 466, column: 5, scope: !4746)
!4759 = !DILocation(line: 471, column: 9, scope: !4746)
!4760 = !DILocation(line: 472, column: 9, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4762, file: !351, line: 471, column: 16)
!4762 = distinct !DILexicalBlock(scope: !4746, file: !351, line: 471, column: 9)
!4763 = !DILocation(line: 473, column: 13, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !351, line: 473, column: 13)
!4765 = !DILocation(line: 473, column: 39, scope: !4764)
!4766 = !DILocation(line: 473, column: 24, scope: !4764)
!4767 = !DILocation(line: 473, column: 13, scope: !4761)
!4768 = !DILocation(line: 478, column: 9, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4762, file: !351, line: 477, column: 12)
!4770 = !DILocation(line: 479, column: 13, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4769, file: !351, line: 479, column: 13)
!4772 = !DILocation(line: 479, column: 40, scope: !4771)
!4773 = !DILocation(line: 479, column: 77, scope: !4771)
!4774 = !DILocation(line: 479, column: 63, scope: !4771)
!4775 = !DILocation(line: 479, column: 25, scope: !4771)
!4776 = !DILocation(line: 479, column: 13, scope: !4769)
!4777 = !DILocation(line: 0, scope: !4762)
!4778 = !DILocation(line: 484, column: 1, scope: !4746)
!4779 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !351, file: !351, line: 486, type: !413, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4780)
!4780 = !{!4781}
!4781 = !DILocalVariable(name: "callback_context", scope: !4782, file: !351, line: 490, type: !4714)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !351, line: 489, column: 70)
!4783 = distinct !DILexicalBlock(scope: !4779, file: !351, line: 488, column: 9)
!4784 = !DILocation(line: 488, column: 43, scope: !4783)
!4785 = !DILocation(line: 488, column: 61, scope: !4783)
!4786 = !DILocation(line: 489, column: 14, scope: !4783)
!4787 = !DILocation(line: 489, column: 63, scope: !4783)
!4788 = !DILocation(line: 488, column: 9, scope: !4779)
!4789 = !DILocation(line: 491, column: 39, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4782, file: !351, line: 491, column: 13)
!4791 = !DILocation(line: 491, column: 18, scope: !4790)
!4792 = !DILocation(line: 491, column: 13, scope: !4782)
!4793 = !DILocation(line: 492, column: 88, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4790, file: !351, line: 491, column: 49)
!4795 = !DILocation(line: 492, column: 13, scope: !4794)
!4796 = !DILocation(line: 493, column: 9, scope: !4794)
!4797 = !DILocation(line: 495, column: 32, scope: !4779)
!4798 = !DILocation(line: 495, column: 5, scope: !4779)
!4799 = !DILocation(line: 496, column: 1, scope: !4779)
!4800 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !351, file: !351, line: 499, type: !413, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4801)
!4801 = !{!4802}
!4802 = !DILocalVariable(name: "callback_context", scope: !4803, file: !351, line: 503, type: !4714)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !351, line: 502, column: 70)
!4804 = distinct !DILexicalBlock(scope: !4800, file: !351, line: 501, column: 9)
!4805 = !DILocation(line: 501, column: 43, scope: !4804)
!4806 = !DILocation(line: 501, column: 61, scope: !4804)
!4807 = !DILocation(line: 502, column: 14, scope: !4804)
!4808 = !DILocation(line: 502, column: 63, scope: !4804)
!4809 = !DILocation(line: 501, column: 9, scope: !4800)
!4810 = !DILocation(line: 504, column: 39, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4803, file: !351, line: 504, column: 13)
!4812 = !DILocation(line: 504, column: 18, scope: !4811)
!4813 = !DILocation(line: 504, column: 13, scope: !4803)
!4814 = !DILocation(line: 505, column: 88, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4811, file: !351, line: 504, column: 49)
!4816 = !DILocation(line: 505, column: 13, scope: !4815)
!4817 = !DILocation(line: 506, column: 9, scope: !4815)
!4818 = !DILocation(line: 508, column: 32, scope: !4800)
!4819 = !DILocation(line: 508, column: 5, scope: !4800)
!4820 = !DILocation(line: 509, column: 1, scope: !4800)
!4821 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !351, file: !351, line: 582, type: !4822, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!4300, !415, !430}
!4824 = !{!4825, !4826}
!4825 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4821, file: !351, line: 582, type: !415)
!4826 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4821, file: !351, line: 582, type: !430)
!4827 = !DILocation(line: 0, scope: !4821)
!4828 = !DILocation(line: 584, column: 11, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4821, file: !351, line: 584, column: 9)
!4830 = !DILocation(line: 584, column: 46, scope: !4829)
!4831 = !DILocation(line: 588, column: 37, scope: !4821)
!4832 = !DILocation(line: 588, column: 50, scope: !4821)
!4833 = !DILocation(line: 588, column: 59, scope: !4821)
!4834 = !DILocation(line: 589, column: 12, scope: !4821)
!4835 = !DILocation(line: 589, column: 5, scope: !4821)
!4836 = !DILocation(line: 590, column: 1, scope: !4821)
!4837 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !351, file: !351, line: 608, type: !4838, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4842)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!4300, !415, !4840}
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 32)
!4841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!4842 = !{!4843, !4844}
!4843 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4837, file: !351, line: 608, type: !415)
!4844 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4837, file: !351, line: 608, type: !4840)
!4845 = !DILocation(line: 0, scope: !4837)
!4846 = !DILocation(line: 610, column: 10, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4837, file: !351, line: 610, column: 9)
!4848 = !DILocation(line: 610, column: 9, scope: !4837)
!4849 = !DILocation(line: 614, column: 10, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4837, file: !351, line: 614, column: 9)
!4851 = !DILocation(line: 614, column: 9, scope: !4837)
!4852 = !DILocation(line: 618, column: 37, scope: !4837)
!4853 = !DILocation(line: 618, column: 56, scope: !4837)
!4854 = !DILocation(line: 619, column: 45, scope: !4837)
!4855 = !DILocation(line: 619, column: 12, scope: !4837)
!4856 = !DILocation(line: 620, column: 12, scope: !4837)
!4857 = !DILocation(line: 619, column: 5, scope: !4837)
!4858 = !DILocation(line: 621, column: 5, scope: !4837)
!4859 = !DILocation(line: 622, column: 5, scope: !4837)
!4860 = !DILocation(line: 623, column: 33, scope: !4837)
!4861 = !DILocation(line: 624, column: 50, scope: !4837)
!4862 = !DILocation(line: 625, column: 50, scope: !4837)
!4863 = !DILocation(line: 626, column: 50, scope: !4837)
!4864 = !DILocation(line: 627, column: 50, scope: !4837)
!4865 = !DILocation(line: 628, column: 33, scope: !4837)
!4866 = !DILocation(line: 623, column: 5, scope: !4837)
!4867 = !DILocation(line: 630, column: 50, scope: !4837)
!4868 = !DILocation(line: 631, column: 50, scope: !4837)
!4869 = !DILocation(line: 632, column: 50, scope: !4837)
!4870 = !DILocation(line: 629, column: 5, scope: !4837)
!4871 = !DILocation(line: 634, column: 5, scope: !4837)
!4872 = !DILocation(line: 635, column: 1, scope: !4837)
!4873 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !351, file: !351, line: 112, type: !4874, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4876)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!161, !4840}
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4873, file: !351, line: 112, type: !4840)
!4878 = !DILocation(line: 0, scope: !4873)
!4879 = !DILocation(line: 114, column: 14, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4873, file: !351, line: 114, column: 9)
!4881 = !DILocation(line: 114, column: 9, scope: !4873)
!4882 = !DILocation(line: 117, column: 29, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4873, file: !351, line: 117, column: 9)
!4884 = !DILocation(line: 117, column: 14, scope: !4883)
!4885 = !DILocation(line: 117, column: 9, scope: !4873)
!4886 = !DILocation(line: 120, column: 21, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4873, file: !351, line: 120, column: 9)
!4888 = !DILocation(line: 120, column: 61, scope: !4887)
!4889 = !DILocation(line: 120, column: 47, scope: !4887)
!4890 = !DILocation(line: 120, column: 9, scope: !4873)
!4891 = !DILocation(line: 123, column: 61, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4873, file: !351, line: 123, column: 9)
!4893 = !DILocation(line: 123, column: 47, scope: !4892)
!4894 = !DILocation(line: 123, column: 9, scope: !4873)
!4895 = !DILocation(line: 126, column: 29, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4873, file: !351, line: 126, column: 9)
!4897 = !DILocation(line: 126, column: 14, scope: !4896)
!4898 = !DILocation(line: 126, column: 9, scope: !4873)
!4899 = !DILocation(line: 129, column: 21, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4873, file: !351, line: 129, column: 9)
!4901 = !DILocation(line: 129, column: 58, scope: !4900)
!4902 = !DILocation(line: 129, column: 44, scope: !4900)
!4903 = !DILocation(line: 129, column: 9, scope: !4873)
!4904 = !DILocation(line: 136, column: 1, scope: !4873)
!4905 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !351, file: !351, line: 182, type: !4906, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4908)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!31, !31}
!4908 = !{!4909, !4910}
!4909 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4905, file: !351, line: 182, type: !31)
!4910 = !DILocalVariable(name: "ticks_per_us", scope: !4905, file: !351, line: 184, type: !31)
!4911 = !DILocation(line: 0, scope: !4905)
!4912 = !DILocation(line: 186, column: 20, scope: !4905)
!4913 = !DILocation(line: 186, column: 39, scope: !4905)
!4914 = !DILocation(line: 188, column: 25, scope: !4905)
!4915 = !DILocation(line: 188, column: 5, scope: !4905)
!4916 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !351, file: !351, line: 637, type: !4442, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4917)
!4917 = !{!4918, !4919}
!4918 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4916, file: !351, line: 637, type: !415)
!4919 = !DILocalVariable(name: "int_no", scope: !4916, file: !351, line: 639, type: !2703)
!4920 = !DILocation(line: 0, scope: !4916)
!4921 = !DILocation(line: 641, column: 10, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4916, file: !351, line: 641, column: 9)
!4923 = !DILocation(line: 641, column: 9, scope: !4916)
!4924 = !DILocation(line: 645, column: 14, scope: !4916)
!4925 = !DILocation(line: 646, column: 5, scope: !4916)
!4926 = !DILocation(line: 648, column: 5, scope: !4916)
!4927 = !DILocation(line: 649, column: 1, scope: !4916)
!4928 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !351, file: !351, line: 651, type: !4929, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!4300, !415, !252, !252, !252}
!4931 = !{!4932, !4933, !4934, !4935, !4936}
!4932 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4928, file: !351, line: 651, type: !415)
!4933 = !DILocalVariable(name: "xon", arg: 2, scope: !4928, file: !351, line: 652, type: !252)
!4934 = !DILocalVariable(name: "xoff", arg: 3, scope: !4928, file: !351, line: 653, type: !252)
!4935 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4928, file: !351, line: 654, type: !252)
!4936 = !DILocalVariable(name: "int_no", scope: !4928, file: !351, line: 656, type: !2703)
!4937 = !DILocation(line: 0, scope: !4928)
!4938 = !DILocation(line: 658, column: 10, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4928, file: !351, line: 658, column: 9)
!4940 = !DILocation(line: 658, column: 9, scope: !4928)
!4941 = !DILocation(line: 662, column: 14, scope: !4928)
!4942 = !DILocation(line: 663, column: 5, scope: !4928)
!4943 = !DILocation(line: 665, column: 5, scope: !4928)
!4944 = !DILocation(line: 666, column: 1, scope: !4928)
!4945 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !351, file: !351, line: 668, type: !4442, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4946)
!4946 = !{!4947, !4948}
!4947 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4945, file: !351, line: 668, type: !415)
!4948 = !DILocalVariable(name: "int_no", scope: !4945, file: !351, line: 670, type: !2703)
!4949 = !DILocation(line: 0, scope: !4945)
!4950 = !DILocation(line: 672, column: 10, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4945, file: !351, line: 672, column: 9)
!4952 = !DILocation(line: 672, column: 9, scope: !4945)
!4953 = !DILocation(line: 676, column: 14, scope: !4945)
!4954 = !DILocation(line: 677, column: 5, scope: !4945)
!4955 = !DILocation(line: 679, column: 5, scope: !4945)
!4956 = !DILocation(line: 680, column: 1, scope: !4945)
!4957 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !351, file: !351, line: 683, type: !4958, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !4960)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!4300, !415, !31}
!4960 = !{!4961, !4962}
!4961 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4957, file: !351, line: 683, type: !415)
!4962 = !DILocalVariable(name: "timeout", arg: 2, scope: !4957, file: !351, line: 683, type: !31)
!4963 = !DILocation(line: 0, scope: !4957)
!4964 = !DILocation(line: 685, column: 10, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4957, file: !351, line: 685, column: 9)
!4966 = !DILocation(line: 685, column: 9, scope: !4957)
!4967 = !DILocation(line: 689, column: 19, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4957, file: !351, line: 689, column: 9)
!4969 = !DILocation(line: 0, scope: !4968)
!4970 = !DILocation(line: 696, column: 1, scope: !4957)
!4971 = distinct !DISubprogram(name: "__io_putchar", scope: !1038, file: !1038, line: 57, type: !4972, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!83, !83}
!4974 = !{!4975}
!4975 = !DILocalVariable(name: "ch", arg: 1, scope: !4971, file: !1038, line: 57, type: !83)
!4976 = !DILocation(line: 0, scope: !4971)
!4977 = !DILocation(line: 64, column: 35, scope: !4971)
!4978 = !DILocation(line: 64, column: 5, scope: !4971)
!4979 = !DILocation(line: 65, column: 5, scope: !4971)
!4980 = distinct !DISubprogram(name: "main", scope: !1038, file: !1038, line: 156, type: !2679, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !2211)
!4981 = !DILocation(line: 159, column: 5, scope: !4980)
!4982 = !DILocation(line: 162, column: 5, scope: !4980)
!4983 = !DILocation(line: 319, column: 3, scope: !4984, inlinedAt: !4985)
!4984 = distinct !DISubprogram(name: "__enable_irq", scope: !2241, file: !2241, line: 317, type: !413, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !2211)
!4985 = distinct !DILocation(line: 165, column: 5, scope: !4980)
!4986 = !{i64 513370}
!4987 = !DILocation(line: 496, column: 3, scope: !4988, inlinedAt: !4989)
!4988 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2241, file: !2241, line: 494, type: !413, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !2211)
!4989 = distinct !DILocation(line: 166, column: 5, scope: !4980)
!4990 = !{i64 517645}
!4991 = !DILocation(line: 169, column: 5, scope: !4980)
!4992 = !DILocation(line: 171, column: 5, scope: !4980)
!4993 = !DILocation(line: 172, column: 5, scope: !4980)
!4994 = !DILocation(line: 174, column: 5, scope: !4980)
!4995 = !DILocation(line: 175, column: 5, scope: !4980)
!4996 = !DILocation(line: 175, column: 5, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !1038, line: 175, column: 5)
!4998 = distinct !DILexicalBlock(scope: !4980, file: !1038, line: 175, column: 5)
!4999 = distinct !{!4999, !5000, !5001}
!5000 = !DILocation(line: 175, column: 5, scope: !4998)
!5001 = !DILocation(line: 175, column: 13, scope: !4998)
!5002 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1038, file: !1038, line: 95, type: !413, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !2211)
!5003 = !DILocation(line: 97, column: 5, scope: !5002)
!5004 = !DILocation(line: 98, column: 1, scope: !5002)
!5005 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1038, file: !1038, line: 105, type: !413, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !2211)
!5006 = !DILocation(line: 108, column: 5, scope: !5005)
!5007 = !DILocation(line: 109, column: 1, scope: !5005)
!5008 = distinct !DISubprogram(name: "irtx_send_pulse_data", scope: !1038, file: !1038, line: 127, type: !413, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5009)
!5009 = !{!5010, !5011, !5012, !5013, !5014}
!5010 = !DILocalVariable(name: "data_number", scope: !5008, file: !1038, line: 129, type: !252)
!5011 = !DILocalVariable(name: "frequency", scope: !5008, file: !1038, line: 132, type: !335)
!5012 = !DILocalVariable(name: "duty_cycle", scope: !5008, file: !1038, line: 134, type: !252)
!5013 = !DILocalVariable(name: "base_period", scope: !5008, file: !1038, line: 136, type: !252)
!5014 = !DILocalVariable(name: "data", scope: !5008, file: !1038, line: 138, type: !5015)
!5015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 544, elements: !5016)
!5016 = !{!5017}
!5017 = !DISubrange(count: 68)
!5018 = !DILocation(line: 0, scope: !5008)
!5019 = !DILocation(line: 138, column: 5, scope: !5008)
!5020 = !DILocation(line: 138, column: 13, scope: !5008)
!5021 = !DILocation(line: 144, column: 5, scope: !5008)
!5022 = !DILocation(line: 146, column: 5, scope: !5008)
!5023 = !DILocation(line: 148, column: 5, scope: !5008)
!5024 = !DILocation(line: 149, column: 5, scope: !5008)
!5025 = !DILocation(line: 150, column: 5, scope: !5008)
!5026 = !DILocation(line: 151, column: 5, scope: !5008)
!5027 = !DILocation(line: 152, column: 5, scope: !5008)
!5028 = !DILocation(line: 153, column: 1, scope: !5008)
!5029 = distinct !DISubprogram(name: "irtx_callback", scope: !1038, file: !1038, line: 116, type: !5030, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5032)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !158}
!5032 = !{!5033}
!5033 = !DILocalVariable(name: "arg", arg: 1, scope: !5029, file: !1038, line: 116, type: !158)
!5034 = !DILocation(line: 0, scope: !5029)
!5035 = !DILocation(line: 118, column: 5, scope: !5029)
!5036 = !DILocation(line: 119, column: 5, scope: !5029)
!5037 = !DILocation(line: 120, column: 1, scope: !5029)
!5038 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1038, file: !1038, line: 73, type: !413, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5039)
!5039 = !{!5040}
!5040 = !DILocalVariable(name: "uart_config", scope: !5038, file: !1038, line: 75, type: !5041)
!5041 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !354, line: 378, baseType: !5042)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 373, size: 128, elements: !5043)
!5043 = !{!5044, !5045, !5046, !5047}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5042, file: !354, line: 374, baseType: !430, size: 32)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5042, file: !354, line: 375, baseType: !432, size: 32, offset: 32)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5042, file: !354, line: 376, baseType: !434, size: 32, offset: 64)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5042, file: !354, line: 377, baseType: !436, size: 32, offset: 96)
!5048 = !DILocation(line: 75, column: 5, scope: !5038)
!5049 = !DILocation(line: 75, column: 23, scope: !5038)
!5050 = !DILocation(line: 77, column: 5, scope: !5038)
!5051 = !DILocation(line: 78, column: 5, scope: !5038)
!5052 = !DILocation(line: 79, column: 5, scope: !5038)
!5053 = !DILocation(line: 80, column: 5, scope: !5038)
!5054 = !DILocation(line: 83, column: 17, scope: !5038)
!5055 = !DILocation(line: 83, column: 26, scope: !5038)
!5056 = !DILocation(line: 84, column: 17, scope: !5038)
!5057 = !DILocation(line: 84, column: 29, scope: !5038)
!5058 = !DILocation(line: 85, column: 17, scope: !5038)
!5059 = !DILocation(line: 85, column: 26, scope: !5038)
!5060 = !DILocation(line: 86, column: 17, scope: !5038)
!5061 = !DILocation(line: 86, column: 24, scope: !5038)
!5062 = !DILocation(line: 87, column: 5, scope: !5038)
!5063 = !DILocation(line: 88, column: 1, scope: !5038)
!5064 = distinct !DISubprogram(name: "SysTick_Set", scope: !465, file: !465, line: 70, type: !4906, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !5065)
!5065 = !{!5066, !5067}
!5066 = !DILocalVariable(name: "ticks", arg: 1, scope: !5064, file: !465, line: 70, type: !31)
!5067 = !DILocalVariable(name: "val", scope: !5064, file: !465, line: 72, type: !31)
!5068 = !DILocation(line: 0, scope: !5064)
!5069 = !DILocation(line: 74, column: 16, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5064, file: !465, line: 74, column: 9)
!5071 = !DILocation(line: 74, column: 21, scope: !5070)
!5072 = !DILocation(line: 74, column: 9, scope: !5064)
!5073 = !DILocation(line: 78, column: 20, scope: !5064)
!5074 = !DILocation(line: 80, column: 19, scope: !5064)
!5075 = !DILocation(line: 83, column: 20, scope: !5064)
!5076 = !DILocation(line: 84, column: 20, scope: !5064)
!5077 = !DILocation(line: 86, column: 19, scope: !5064)
!5078 = !DILocation(line: 88, column: 5, scope: !5064)
!5079 = !DILocation(line: 89, column: 1, scope: !5064)
!5080 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !465, file: !465, line: 98, type: !413, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !2211)
!5081 = !DILocation(line: 100, column: 28, scope: !5080)
!5082 = !DILocation(line: 101, column: 1, scope: !5080)
!5083 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !465, file: !465, line: 110, type: !2235, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !2211)
!5084 = !DILocation(line: 112, column: 12, scope: !5083)
!5085 = !DILocation(line: 112, column: 5, scope: !5083)
!5086 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !465, file: !465, line: 122, type: !413, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !2211)
!5087 = !DILocation(line: 124, column: 23, scope: !5086)
!5088 = !DILocation(line: 124, column: 21, scope: !5086)
!5089 = !DILocation(line: 125, column: 1, scope: !5086)
!5090 = distinct !DISubprogram(name: "SystemInit", scope: !465, file: !465, line: 136, type: !413, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !2211)
!5091 = !DILocation(line: 140, column: 16, scope: !5090)
!5092 = !DILocation(line: 144, column: 16, scope: !5090)
!5093 = !DILocation(line: 147, column: 16, scope: !5090)
!5094 = !DILocation(line: 150, column: 1, scope: !5090)
!5095 = distinct !DISubprogram(name: "CachePreInit", scope: !465, file: !465, line: 158, type: !413, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !2211)
!5096 = !DILocation(line: 161, column: 22, scope: !5095)
!5097 = !DILocation(line: 164, column: 21, scope: !5095)
!5098 = !DILocation(line: 167, column: 21, scope: !5095)
!5099 = !DILocation(line: 170, column: 29, scope: !5095)
!5100 = !DILocation(line: 171, column: 33, scope: !5095)
!5101 = !DILocation(line: 173, column: 28, scope: !5095)
!5102 = !DILocation(line: 178, column: 30, scope: !5095)
!5103 = !DILocation(line: 192, column: 1, scope: !5095)
!5104 = distinct !DISubprogram(name: "_close", scope: !525, file: !525, line: 11, type: !4972, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5105)
!5105 = !{!5106}
!5106 = !DILocalVariable(name: "file", arg: 1, scope: !5104, file: !525, line: 11, type: !83)
!5107 = !DILocation(line: 0, scope: !5104)
!5108 = !DILocation(line: 13, column: 5, scope: !5104)
!5109 = distinct !DISubprogram(name: "_fstat", scope: !525, file: !525, line: 16, type: !5110, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5158)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!83, !83, !5112}
!5112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5113, size: 32)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5114, line: 27, size: 704, elements: !5115)
!5114 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5115 = !{!5116, !5119, !5122, !5125, !5128, !5131, !5134, !5135, !5138, !5148, !5149, !5150, !5153, !5156}
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5113, file: !5114, line: 29, baseType: !5117, size: 16)
!5117 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !529, line: 161, baseType: !5118)
!5118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !571, line: 56, baseType: !546)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5113, file: !5114, line: 30, baseType: !5120, size: 16, offset: 16)
!5120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !529, line: 139, baseType: !5121)
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !571, line: 75, baseType: !72)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5113, file: !5114, line: 31, baseType: !5123, size: 32, offset: 32)
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !529, line: 189, baseType: !5124)
!5124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !571, line: 90, baseType: !33)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5113, file: !5114, line: 32, baseType: !5126, size: 16, offset: 64)
!5126 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !529, line: 194, baseType: !5127)
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !571, line: 209, baseType: !72)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5113, file: !5114, line: 33, baseType: !5129, size: 16, offset: 80)
!5129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !529, line: 165, baseType: !5130)
!5130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !571, line: 60, baseType: !72)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5113, file: !5114, line: 34, baseType: !5132, size: 16, offset: 96)
!5132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !529, line: 169, baseType: !5133)
!5133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !571, line: 63, baseType: !72)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5113, file: !5114, line: 35, baseType: !5117, size: 16, offset: 112)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5113, file: !5114, line: 36, baseType: !5136, size: 32, offset: 128)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !529, line: 157, baseType: !5137)
!5137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !571, line: 102, baseType: !589)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5113, file: !5114, line: 42, baseType: !5139, size: 128, offset: 192)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5140, line: 47, size: 128, elements: !5141)
!5140 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5141 = !{!5142, !5147}
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5139, file: !5140, line: 48, baseType: !5143, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5144, line: 42, baseType: !5145)
!5144 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !34, line: 200, baseType: !5146)
!5146 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5139, file: !5140, line: 49, baseType: !572, size: 32, offset: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5113, file: !5114, line: 43, baseType: !5139, size: 128, offset: 320)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5113, file: !5114, line: 44, baseType: !5139, size: 128, offset: 448)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5113, file: !5114, line: 45, baseType: !5151, size: 32, offset: 576)
!5151 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !529, line: 102, baseType: !5152)
!5152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !571, line: 34, baseType: !572)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5113, file: !5114, line: 46, baseType: !5154, size: 32, offset: 608)
!5154 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !529, line: 97, baseType: !5155)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !571, line: 30, baseType: !572)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5113, file: !5114, line: 48, baseType: !5157, size: 64, offset: 640)
!5157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 64, elements: !285)
!5158 = !{!5159, !5160}
!5159 = !DILocalVariable(name: "file", arg: 1, scope: !5109, file: !525, line: 16, type: !83)
!5160 = !DILocalVariable(name: "st", arg: 2, scope: !5109, file: !525, line: 16, type: !5112)
!5161 = !DILocation(line: 0, scope: !5109)
!5162 = !DILocation(line: 18, column: 5, scope: !5109)
!5163 = distinct !DISubprogram(name: "_isatty", scope: !525, file: !525, line: 22, type: !4972, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5164)
!5164 = !{!5165}
!5165 = !DILocalVariable(name: "file", arg: 1, scope: !5163, file: !525, line: 22, type: !83)
!5166 = !DILocation(line: 0, scope: !5163)
!5167 = !DILocation(line: 24, column: 5, scope: !5163)
!5168 = distinct !DISubprogram(name: "_lseek", scope: !525, file: !525, line: 27, type: !5169, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5171)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!83, !83, !83, !83}
!5171 = !{!5172, !5173, !5174}
!5172 = !DILocalVariable(name: "file", arg: 1, scope: !5168, file: !525, line: 27, type: !83)
!5173 = !DILocalVariable(name: "ptr", arg: 2, scope: !5168, file: !525, line: 27, type: !83)
!5174 = !DILocalVariable(name: "dir", arg: 3, scope: !5168, file: !525, line: 27, type: !83)
!5175 = !DILocation(line: 0, scope: !5168)
!5176 = !DILocation(line: 29, column: 5, scope: !5168)
!5177 = distinct !DISubprogram(name: "_open", scope: !525, file: !525, line: 32, type: !5178, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5180)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!83, !564, !83, !83}
!5180 = !{!5181, !5182, !5183}
!5181 = !DILocalVariable(name: "name", arg: 1, scope: !5177, file: !525, line: 32, type: !564)
!5182 = !DILocalVariable(name: "flags", arg: 2, scope: !5177, file: !525, line: 32, type: !83)
!5183 = !DILocalVariable(name: "mode", arg: 3, scope: !5177, file: !525, line: 32, type: !83)
!5184 = !DILocation(line: 0, scope: !5177)
!5185 = !DILocation(line: 34, column: 5, scope: !5177)
!5186 = distinct !DISubprogram(name: "_read", scope: !525, file: !525, line: 37, type: !5187, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!83, !83, !530, !83}
!5189 = !{!5190, !5191, !5192}
!5190 = !DILocalVariable(name: "file", arg: 1, scope: !5186, file: !525, line: 37, type: !83)
!5191 = !DILocalVariable(name: "ptr", arg: 2, scope: !5186, file: !525, line: 37, type: !530)
!5192 = !DILocalVariable(name: "len", arg: 3, scope: !5186, file: !525, line: 37, type: !83)
!5193 = !DILocation(line: 0, scope: !5186)
!5194 = !DILocation(line: 39, column: 5, scope: !5186)
!5195 = distinct !DISubprogram(name: "_write", scope: !525, file: !525, line: 52, type: !5187, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5196)
!5196 = !{!5197, !5198, !5199, !5200}
!5197 = !DILocalVariable(name: "file", arg: 1, scope: !5195, file: !525, line: 52, type: !83)
!5198 = !DILocalVariable(name: "ptr", arg: 2, scope: !5195, file: !525, line: 52, type: !530)
!5199 = !DILocalVariable(name: "len", arg: 3, scope: !5195, file: !525, line: 52, type: !83)
!5200 = !DILocalVariable(name: "i", scope: !5195, file: !525, line: 54, type: !83)
!5201 = !DILocation(line: 0, scope: !5195)
!5202 = !DILocation(line: 56, column: 19, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !525, line: 56, column: 5)
!5204 = distinct !DILexicalBlock(scope: !5195, file: !525, line: 56, column: 5)
!5205 = !DILocation(line: 56, column: 5, scope: !5204)
!5206 = !DILocation(line: 57, column: 26, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5203, file: !525, line: 56, column: 31)
!5208 = !DILocation(line: 57, column: 22, scope: !5207)
!5209 = !DILocation(line: 57, column: 9, scope: !5207)
!5210 = !DILocation(line: 56, column: 27, scope: !5203)
!5211 = distinct !{!5211, !5205, !5212}
!5212 = !DILocation(line: 58, column: 5, scope: !5204)
!5213 = !DILocation(line: 60, column: 5, scope: !5195)
!5214 = !DILocation(line: 0, scope: !524)
!5215 = !DILocation(line: 70, column: 5, scope: !524)
!5216 = !{i64 1109}
!5217 = !DILocation(line: 72, column: 14, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !524, file: !525, line: 72, column: 9)
!5219 = !DILocation(line: 72, column: 11, scope: !5218)
!5220 = !DILocation(line: 72, column: 9, scope: !524)
!5221 = !DILocation(line: 78, column: 32, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !524, file: !525, line: 78, column: 9)
!5223 = !DILocation(line: 78, column: 15, scope: !5222)
!5224 = !DILocation(line: 89, column: 1, scope: !524)
!5225 = !DILocation(line: 78, column: 9, scope: !524)
!5226 = distinct !DISubprogram(name: "_exit", scope: !525, file: !525, line: 91, type: !674, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5227)
!5227 = !{!5228}
!5228 = !DILocalVariable(name: "__status", arg: 1, scope: !5226, file: !525, line: 91, type: !83)
!5229 = !DILocation(line: 0, scope: !5226)
!5230 = !DILocation(line: 93, column: 5, scope: !5226)
!5231 = !DILocation(line: 94, column: 5, scope: !5226)
!5232 = distinct !{!5232, !5231, !5233}
!5233 = !DILocation(line: 96, column: 5, scope: !5226)
!5234 = distinct !DISubprogram(name: "_kill", scope: !525, file: !525, line: 100, type: !5235, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !5237)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!83, !83, !83}
!5237 = !{!5238, !5239}
!5238 = !DILocalVariable(name: "pid", arg: 1, scope: !5234, file: !525, line: 100, type: !83)
!5239 = !DILocalVariable(name: "sig", arg: 2, scope: !5234, file: !525, line: 100, type: !83)
!5240 = !DILocation(line: 0, scope: !5234)
!5241 = !DILocation(line: 102, column: 5, scope: !5234)
!5242 = !DILocation(line: 103, column: 5, scope: !5234)
!5243 = distinct !DISubprogram(name: "_getpid", scope: !525, file: !525, line: 107, type: !5244, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !2211)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{!5246}
!5246 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !529, line: 174, baseType: !5247)
!5247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !571, line: 52, baseType: !83)
!5248 = !DILocation(line: 109, column: 5, scope: !5243)
!5249 = !DILocation(line: 110, column: 5, scope: !5243)
