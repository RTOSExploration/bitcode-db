; ModuleID = './build/irrx_receive_pwd_data.elf.bc'
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
%struct.hal_irrx_rc5_code_t = type { i8, [2 x i32] }
%struct.hal_irrx_pwd_config_t = type { i8, i32 }
%struct._IOT_IRRX_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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

@s_hal_irrx_status = internal unnamed_addr global i1 false, align 4, !dbg !0
@s_low_hal_irrx_rc5_callback.0 = internal unnamed_addr global void (i8*)* null, align 4, !dbg !47
@s_low_hal_irrx_rc5_callback.1 = internal unnamed_addr global i8* null, align 4, !dbg !145
@s_low_hal_irrx_pwd_callback.0 = internal unnamed_addr global void (i8*)* null, align 4, !dbg !146
@s_low_hal_irrx_pwd_callback.1 = internal unnamed_addr global i8* null, align 4, !dbg !147
@.str = private unnamed_addr constant [31 x i8] c"[Saturate]u4SAPeriod = 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"u4SAPeriod = 0x%08X, u4ChkPeriod = 0x%08X, u4OKPeriod = 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"u4CalTherminateThresholdUs = %u, u4CalPrecesionUs = %u\0A\00", align 1
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !148
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !161
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !163
@g_cache_status = dso_local global i8 0, align 1, !dbg !199
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.15 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !283
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !387
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !445
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.27 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.28 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.29 = private unnamed_addr constant [30 x i8] c"\0D\0A ---irrx_example begin---\0D\0A\00", align 1
@.str.3.30 = private unnamed_addr constant [33 x i8] c"IRRX receive PWD data started.\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Received PWD data:\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\0D\0A ---irrx_example finished!!!---\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !501
@System_Initialize_Done = internal global i32 0, align 4, !dbg !559
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !561
@end = external dso_local global i8, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.38 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.39 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:22 GMT +00:00\00", align 1, !dbg !769
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !774
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !780

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1054, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8 %1, metadata !1055, metadata !DIExpression()), !dbg !1059
  %3 = lshr i32 %0, 5, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %3, metadata !1056, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1059
  %4 = trunc i32 %0 to i16, !dbg !1061
  %5 = and i16 %4, 31, !dbg !1061
  call void @llvm.dbg.value(metadata i16 %4, metadata !1058, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1059
  %6 = trunc i32 %3 to i16, !dbg !1062
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1062

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1063
  %9 = zext i16 %5 to i32, !dbg !1066
  %10 = icmp ult i16 %5, 27, !dbg !1066
  br i1 %8, label %11, label %46, !dbg !1067

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1068

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1070
  %14 = xor i32 %13, -1, !dbg !1073
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1074
  %16 = and i32 %15, %14, !dbg !1074
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1074
  br label %44, !dbg !1075

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1076
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1076

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1077
  %21 = and i32 %20, -3, !dbg !1077
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1077
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1080
  %23 = or i32 %22, 2048, !dbg !1080
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1080
  br label %44, !dbg !1081

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1082
  %26 = and i32 %25, -3, !dbg !1082
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1082
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1085
  %28 = or i32 %27, 2048, !dbg !1085
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1085
  br label %44, !dbg !1086

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1087
  %31 = and i32 %30, -3, !dbg !1087
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1087
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1090
  %33 = or i32 %32, 2048, !dbg !1090
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1090
  br label %44, !dbg !1091

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1092
  %36 = and i32 %35, -3, !dbg !1092
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1092
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1095
  %38 = or i32 %37, 2048, !dbg !1095
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1095
  br label %44, !dbg !1096

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1097
  %41 = and i32 %40, -3, !dbg !1097
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1097
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1100
  %43 = or i32 %42, 2048, !dbg !1100
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1100
  br label %44, !dbg !1101

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1102
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1102
  br label %97, !dbg !1103

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1104

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1106
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1109
  %50 = or i32 %49, %48, !dbg !1109
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1109
  br label %68, !dbg !1110

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1111
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1111

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1112
  %55 = or i32 %54, 2050, !dbg !1112
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1112
  br label %68, !dbg !1115

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1116
  %58 = or i32 %57, 2050, !dbg !1116
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1116
  br label %68, !dbg !1119

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1120
  %61 = or i32 %60, 2050, !dbg !1120
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1120
  br label %68, !dbg !1123

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1124
  %64 = or i32 %63, 2050, !dbg !1124
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1124
  br label %68, !dbg !1127

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1128
  %67 = or i32 %66, 2050, !dbg !1128
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1128
  br label %68, !dbg !1131

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1132
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1132
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1133
  %72 = zext i16 %5 to i32, !dbg !1135
  %73 = icmp eq i16 %5, 0, !dbg !1135
  br i1 %71, label %74, label %87, !dbg !1136

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1137

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1139
  %77 = xor i32 %76, -1, !dbg !1142
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1143
  %79 = and i32 %78, %77, !dbg !1143
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1143
  br label %85, !dbg !1144

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1145
  %82 = and i32 %81, -3, !dbg !1145
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1145
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1147
  %84 = or i32 %83, 2048, !dbg !1147
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1147
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1148
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1148
  br label %97, !dbg !1149

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1150

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1152
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1155
  %91 = or i32 %90, %89, !dbg !1155
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1155
  br label %95, !dbg !1156

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1157
  %94 = or i32 %93, 2050, !dbg !1157
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1157
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1159
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1159
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1059
  ret i32 %98, !dbg !1160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1161 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1163, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8 %1, metadata !1164, metadata !DIExpression()), !dbg !1167
  %3 = lshr i32 %0, 5, !dbg !1168
  call void @llvm.dbg.value(metadata i32 %3, metadata !1165, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1167
  %4 = trunc i32 %0 to i16, !dbg !1169
  %5 = and i16 %4, 31, !dbg !1169
  call void @llvm.dbg.value(metadata i16 %5, metadata !1166, metadata !DIExpression()), !dbg !1167
  %6 = trunc i32 %3 to i16, !dbg !1170
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1170

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1171
  %9 = zext i16 %5 to i32, !dbg !1174
  %10 = shl nuw i32 1, %9, !dbg !1174
  br i1 %8, label %12, label %11, !dbg !1175

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1176
  br label %19, !dbg !1178

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1179
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1181
  %15 = zext i16 %5 to i32, !dbg !1183
  %16 = shl nuw i32 1, %15, !dbg !1183
  br i1 %14, label %18, label %17, !dbg !1184

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1185
  br label %19, !dbg !1187

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1188
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1167
  ret i32 %20, !dbg !1190
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1191 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1195, metadata !DIExpression()), !dbg !1199
  %2 = lshr i32 %0, 5, !dbg !1200
  call void @llvm.dbg.value(metadata i32 %2, metadata !1196, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1199
  %3 = and i32 %0, 31, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1199
  call void @llvm.dbg.value(metadata i8 0, metadata !1198, metadata !DIExpression()), !dbg !1199
  %4 = trunc i32 %2 to i16, !dbg !1202
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1202

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1198, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1199
  br label %6, !dbg !1203

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1205
  %9 = lshr i32 %8, %3, !dbg !1205
  %10 = trunc i32 %9 to i8, !dbg !1205
  %11 = and i8 %10, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i8 %11, metadata !1198, metadata !DIExpression()), !dbg !1199
  br label %12, !dbg !1206

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1199
  ret i8 %13, !dbg !1207
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1208 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1210, metadata !DIExpression()), !dbg !1214
  %2 = lshr i32 %0, 5, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %2, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1214
  %3 = and i32 %0, 31, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %0, metadata !1212, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1214
  call void @llvm.dbg.value(metadata i8 0, metadata !1213, metadata !DIExpression()), !dbg !1214
  %4 = trunc i32 %2 to i16, !dbg !1217
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1217

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1213, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1214
  br label %6, !dbg !1218

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1220
  %9 = lshr i32 %8, %3, !dbg !1220
  %10 = trunc i32 %9 to i8, !dbg !1220
  %11 = and i8 %10, 1, !dbg !1220
  call void @llvm.dbg.value(metadata i8 %11, metadata !1213, metadata !DIExpression()), !dbg !1214
  br label %12, !dbg !1221

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1214
  ret i8 %13, !dbg !1222
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1225, metadata !DIExpression()), !dbg !1229
  %2 = lshr i32 %0, 5, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %2, metadata !1226, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1229
  %3 = and i32 %0, 31, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %0, metadata !1227, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1229
  call void @llvm.dbg.value(metadata i8 0, metadata !1228, metadata !DIExpression()), !dbg !1229
  %4 = trunc i32 %2 to i16, !dbg !1232
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1232

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1228, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1229
  br label %6, !dbg !1233

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1235
  %9 = lshr i32 %8, %3, !dbg !1235
  %10 = trunc i32 %9 to i8, !dbg !1235
  %11 = and i8 %10, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i8 %11, metadata !1228, metadata !DIExpression()), !dbg !1229
  br label %12, !dbg !1236

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1229
  ret i8 %13, !dbg !1237
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1242, metadata !DIExpression()), !dbg !1245
  %2 = lshr i32 %0, 5, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %2, metadata !1243, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1245
  %3 = trunc i32 %0 to i16, !dbg !1247
  %4 = and i16 %3, 31, !dbg !1247
  call void @llvm.dbg.value(metadata i16 %3, metadata !1244, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1245
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1248
  %6 = trunc i32 %2 to i16, !dbg !1249
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1249

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1250
  br i1 %8, label %9, label %12, !dbg !1253

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1254
  %11 = shl nuw nsw i32 1, %10, !dbg !1255
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1255
  br label %49, !dbg !1257

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1258
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1258

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1259
  %16 = and i32 %15, -29, !dbg !1259
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1259
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1262
  %18 = or i32 %17, 2052, !dbg !1262
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1262
  br label %49, !dbg !1263

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1264
  %21 = and i32 %20, -29, !dbg !1264
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1264
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1267
  %23 = or i32 %22, 2052, !dbg !1267
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1267
  br label %49, !dbg !1268

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1269
  %26 = and i32 %25, -29, !dbg !1269
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1269
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1272
  %28 = or i32 %27, 2052, !dbg !1272
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1272
  br label %49, !dbg !1273

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1274
  %31 = and i32 %30, -29, !dbg !1274
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1274
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1277
  %33 = or i32 %32, 2052, !dbg !1277
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1277
  br label %49, !dbg !1278

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1279
  %36 = and i32 %35, -29, !dbg !1279
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1279
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1282
  %38 = or i32 %37, 2052, !dbg !1282
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1282
  br label %49, !dbg !1283

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1284
  br i1 %40, label %41, label %46, !dbg !1286

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1287
  %43 = and i32 %42, -29, !dbg !1287
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1287
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1289
  %45 = or i32 %44, 2052, !dbg !1289
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1289
  br label %49, !dbg !1290

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1291
  %48 = shl nuw i32 1, %47, !dbg !1291
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1291
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1245
  ret i32 %50, !dbg !1293
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1296, metadata !DIExpression()), !dbg !1299
  %2 = lshr i32 %0, 5, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %2, metadata !1297, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1299
  %3 = trunc i32 %0 to i16, !dbg !1301
  %4 = and i16 %3, 31, !dbg !1301
  call void @llvm.dbg.value(metadata i16 %3, metadata !1298, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1299
  %5 = trunc i32 %2 to i16, !dbg !1302
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1302

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1303
  br i1 %7, label %8, label %11, !dbg !1306

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1307
  %10 = shl nuw nsw i32 1, %9, !dbg !1308
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1308
  br label %48, !dbg !1310

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1311
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1311

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1312
  %15 = and i32 %14, -29, !dbg !1312
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1312
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1315
  %17 = or i32 %16, 2048, !dbg !1315
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1315
  br label %48, !dbg !1316

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1317
  %20 = and i32 %19, -29, !dbg !1317
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1317
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1320
  %22 = or i32 %21, 2048, !dbg !1320
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1320
  br label %48, !dbg !1321

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1322
  %25 = and i32 %24, -29, !dbg !1322
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1322
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1325
  %27 = or i32 %26, 2048, !dbg !1325
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1325
  br label %48, !dbg !1326

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1327
  %30 = and i32 %29, -29, !dbg !1327
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1327
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1330
  %32 = or i32 %31, 2048, !dbg !1330
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1330
  br label %48, !dbg !1331

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1332
  %35 = and i32 %34, -29, !dbg !1332
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1332
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1335
  %37 = or i32 %36, 2048, !dbg !1335
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1335
  br label %48, !dbg !1336

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1337
  br i1 %39, label %40, label %45, !dbg !1339

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1340
  %42 = and i32 %41, -29, !dbg !1340
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1340
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1342
  %44 = or i32 %43, 2048, !dbg !1342
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1342
  br label %48, !dbg !1343

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1344
  %47 = shl nuw i32 1, %46, !dbg !1344
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1344
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1299
  ret i32 %49, !dbg !1346
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1349, metadata !DIExpression()), !dbg !1352
  %2 = lshr i32 %0, 5, !dbg !1353
  call void @llvm.dbg.value(metadata i32 %2, metadata !1350, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1352
  %3 = trunc i32 %0 to i16, !dbg !1354
  %4 = and i16 %3, 31, !dbg !1354
  call void @llvm.dbg.value(metadata i16 %3, metadata !1351, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1352
  %5 = trunc i32 %2 to i16, !dbg !1355
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1355

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1356
  br i1 %7, label %8, label %11, !dbg !1359

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1360
  %10 = shl nuw nsw i32 1, %9, !dbg !1361
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1361
  br label %48, !dbg !1363

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1364
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1364

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1365
  %15 = and i32 %14, -29, !dbg !1365
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1365
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1368
  %17 = or i32 %16, 2048, !dbg !1368
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1368
  br label %48, !dbg !1369

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1370
  %20 = and i32 %19, -29, !dbg !1370
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1370
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1373
  %22 = or i32 %21, 2048, !dbg !1373
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1373
  br label %48, !dbg !1374

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1375
  %25 = and i32 %24, -29, !dbg !1375
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1375
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1378
  %27 = or i32 %26, 2048, !dbg !1378
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1378
  br label %48, !dbg !1379

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1380
  %30 = and i32 %29, -29, !dbg !1380
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1380
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1383
  %32 = or i32 %31, 2048, !dbg !1383
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1383
  br label %48, !dbg !1384

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1385
  %35 = and i32 %34, -29, !dbg !1385
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1385
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1388
  %37 = or i32 %36, 2048, !dbg !1388
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1388
  br label %48, !dbg !1389

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1390
  br i1 %39, label %40, label %45, !dbg !1392

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1393
  %42 = and i32 %41, -29, !dbg !1393
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1393
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1395
  %44 = or i32 %43, 2048, !dbg !1395
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1395
  br label %48, !dbg !1396

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1397
  %47 = shl nuw i32 1, %46, !dbg !1397
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1397
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1352
  ret i32 %49, !dbg !1399
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1402, metadata !DIExpression()), !dbg !1405
  %2 = lshr i32 %0, 5, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %2, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1405
  %3 = trunc i32 %0 to i16, !dbg !1407
  %4 = and i16 %3, 31, !dbg !1407
  call void @llvm.dbg.value(metadata i16 %3, metadata !1404, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1405
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1408
  %6 = trunc i32 %2 to i16, !dbg !1409
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1409

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1410
  br i1 %8, label %9, label %12, !dbg !1413

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1414
  %11 = shl nuw nsw i32 1, %10, !dbg !1415
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1415
  br label %49, !dbg !1417

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1418
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1418

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1419
  %16 = and i32 %15, -29, !dbg !1419
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1419
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1422
  %18 = or i32 %17, 2068, !dbg !1422
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1422
  br label %49, !dbg !1423

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1424
  %21 = and i32 %20, -29, !dbg !1424
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1424
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1427
  %23 = or i32 %22, 2068, !dbg !1427
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1427
  br label %49, !dbg !1428

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1429
  %26 = and i32 %25, -29, !dbg !1429
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1429
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1432
  %28 = or i32 %27, 2068, !dbg !1432
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1432
  br label %49, !dbg !1433

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1434
  %31 = and i32 %30, -29, !dbg !1434
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1434
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1437
  %33 = or i32 %32, 2068, !dbg !1437
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1437
  br label %49, !dbg !1438

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1439
  %36 = and i32 %35, -29, !dbg !1439
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1439
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1442
  %38 = or i32 %37, 2068, !dbg !1442
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1442
  br label %49, !dbg !1443

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1444
  br i1 %40, label %41, label %46, !dbg !1446

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1447
  %43 = and i32 %42, -29, !dbg !1447
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1447
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1449
  %45 = or i32 %44, 2068, !dbg !1449
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1449
  br label %49, !dbg !1450

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1451
  %48 = shl nuw i32 1, %47, !dbg !1451
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1451
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1405
  ret i32 %50, !dbg !1453
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1454 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1456, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i8 %1, metadata !1457, metadata !DIExpression()), !dbg !1460
  %3 = lshr i32 %0, 4, !dbg !1461
  call void @llvm.dbg.value(metadata i32 %3, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1460
  %4 = trunc i32 %0 to i16, !dbg !1462
  %5 = and i16 %4, 15, !dbg !1462
  call void @llvm.dbg.value(metadata i16 %4, metadata !1459, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1460
  %6 = trunc i32 %3 to i16, !dbg !1463
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1463

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1464
  %9 = zext i16 %8 to i32, !dbg !1464
  %10 = shl nuw i32 3, %9, !dbg !1466
  %11 = xor i32 %10, -1, !dbg !1467
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1468
  %13 = and i32 %12, %11, !dbg !1468
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1468
  %14 = lshr i8 %1, 2, !dbg !1469
  %15 = zext i8 %14 to i32, !dbg !1469
  %16 = add nsw i32 %15, -1, !dbg !1470
  %17 = shl i32 %16, %9, !dbg !1471
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1472
  %19 = or i32 %18, %17, !dbg !1472
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1472
  br label %131, !dbg !1473

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1474
  br i1 %21, label %22, label %35, !dbg !1476

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1477
  %24 = zext i16 %23 to i32, !dbg !1477
  %25 = shl nuw nsw i32 3, %24, !dbg !1479
  %26 = xor i32 %25, -1, !dbg !1480
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1481
  %28 = and i32 %27, %26, !dbg !1481
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1481
  %29 = lshr i8 %1, 2, !dbg !1482
  %30 = zext i8 %29 to i32, !dbg !1482
  %31 = add nsw i32 %30, -1, !dbg !1483
  %32 = shl nsw i32 %31, %24, !dbg !1484
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1485
  %34 = or i32 %33, %32, !dbg !1485
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1485
  br label %131, !dbg !1486

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1487
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1487

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1488
  %39 = and i32 %38, -449, !dbg !1488
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1488
  %40 = lshr i8 %1, 1, !dbg !1491
  %41 = zext i8 %40 to i32, !dbg !1491
  %42 = shl nuw nsw i32 %41, 6, !dbg !1492
  %43 = add nsw i32 %42, -64, !dbg !1492
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1493
  %45 = or i32 %44, %43, !dbg !1493
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1493
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1494
  %47 = or i32 %46, 2048, !dbg !1494
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1494
  br label %131, !dbg !1495

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1496
  %50 = and i32 %49, -449, !dbg !1496
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1496
  %51 = lshr i8 %1, 1, !dbg !1499
  %52 = zext i8 %51 to i32, !dbg !1499
  %53 = shl nuw nsw i32 %52, 6, !dbg !1500
  %54 = add nsw i32 %53, -64, !dbg !1500
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1501
  %56 = or i32 %55, %54, !dbg !1501
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1501
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1502
  %58 = or i32 %57, 2048, !dbg !1502
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1502
  br label %131, !dbg !1503

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1504
  %61 = and i32 %60, -449, !dbg !1504
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1504
  %62 = lshr i8 %1, 1, !dbg !1507
  %63 = zext i8 %62 to i32, !dbg !1507
  %64 = shl nuw nsw i32 %63, 6, !dbg !1508
  %65 = add nsw i32 %64, -64, !dbg !1508
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1509
  %67 = or i32 %66, %65, !dbg !1509
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1509
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1510
  %69 = or i32 %68, 2048, !dbg !1510
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1510
  br label %131, !dbg !1511

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1512
  %72 = and i32 %71, -449, !dbg !1512
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1512
  %73 = lshr i8 %1, 1, !dbg !1515
  %74 = zext i8 %73 to i32, !dbg !1515
  %75 = shl nuw nsw i32 %74, 6, !dbg !1516
  %76 = add nsw i32 %75, -64, !dbg !1516
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1517
  %78 = or i32 %77, %76, !dbg !1517
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1517
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1518
  %80 = or i32 %79, 2048, !dbg !1518
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1518
  br label %131, !dbg !1519

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1520
  %83 = and i32 %82, -449, !dbg !1520
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1520
  %84 = lshr i8 %1, 1, !dbg !1523
  %85 = zext i8 %84 to i32, !dbg !1523
  %86 = shl nuw nsw i32 %85, 6, !dbg !1524
  %87 = add nsw i32 %86, -64, !dbg !1524
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1525
  %89 = or i32 %88, %87, !dbg !1525
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1525
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1526
  %91 = or i32 %90, 2048, !dbg !1526
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1526
  br label %131, !dbg !1527

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1528
  br i1 %93, label %94, label %105, !dbg !1530

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1531
  %96 = and i32 %95, -449, !dbg !1531
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1531
  %97 = lshr i8 %1, 1, !dbg !1533
  %98 = zext i8 %97 to i32, !dbg !1533
  %99 = shl nuw nsw i32 %98, 6, !dbg !1534
  %100 = add nsw i32 %99, -64, !dbg !1534
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1535
  %102 = or i32 %101, %100, !dbg !1535
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1535
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1536
  %104 = or i32 %103, 2048, !dbg !1536
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1536
  br label %131, !dbg !1537

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1538
  %107 = zext i16 %106 to i32, !dbg !1538
  %108 = shl nuw i32 3, %107, !dbg !1540
  %109 = xor i32 %108, -1, !dbg !1541
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1542
  %111 = and i32 %110, %109, !dbg !1542
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1542
  %112 = lshr i8 %1, 2, !dbg !1543
  %113 = zext i8 %112 to i32, !dbg !1543
  %114 = add nsw i32 %113, -1, !dbg !1544
  %115 = shl i32 %114, %107, !dbg !1545
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1546
  %117 = or i32 %116, %115, !dbg !1546
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1546
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1547
  %120 = zext i16 %119 to i32, !dbg !1547
  %121 = shl nuw i32 3, %120, !dbg !1548
  %122 = xor i32 %121, -1, !dbg !1549
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1550
  %124 = and i32 %123, %122, !dbg !1550
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1550
  %125 = lshr i8 %1, 2, !dbg !1551
  %126 = zext i8 %125 to i32, !dbg !1551
  %127 = add nsw i32 %126, -1, !dbg !1552
  %128 = shl i32 %127, %120, !dbg !1553
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1554
  %130 = or i32 %129, %128, !dbg !1554
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1554
  br label %131, !dbg !1555

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1460
  ret i32 %132, !dbg !1556
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1562, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %1, metadata !1563, metadata !DIExpression()), !dbg !1567
  %3 = lshr i32 %0, 4, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %3, metadata !1564, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1567
  %4 = trunc i32 %0 to i16, !dbg !1569
  %5 = and i16 %4, 15, !dbg !1569
  call void @llvm.dbg.value(metadata i16 %4, metadata !1565, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %6 = trunc i32 %3 to i16, !dbg !1570
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1570

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %8, metadata !1566, metadata !DIExpression()), !dbg !1567
  %9 = shl nuw nsw i16 %5, 1, !dbg !1573
  %10 = zext i16 %9 to i32, !dbg !1573
  %11 = shl nuw i32 3, %10, !dbg !1574
  %12 = and i32 %8, %11, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %12, metadata !1566, metadata !DIExpression()), !dbg !1567
  %13 = lshr i32 %12, %10, !dbg !1576
  %14 = trunc i32 %13 to i8, !dbg !1577
  %15 = shl i8 %14, 2, !dbg !1577
  %16 = add i8 %15, 4, !dbg !1577
  br label %89, !dbg !1578

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1579
  br i1 %18, label %19, label %29, !dbg !1581

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %20, metadata !1566, metadata !DIExpression()), !dbg !1567
  %21 = shl nuw nsw i16 %5, 1, !dbg !1584
  %22 = zext i16 %21 to i32, !dbg !1584
  %23 = shl nuw nsw i32 3, %22, !dbg !1585
  %24 = and i32 %20, %23, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %24, metadata !1566, metadata !DIExpression()), !dbg !1567
  %25 = lshr i32 %24, %22, !dbg !1587
  %26 = trunc i32 %25 to i8, !dbg !1588
  %27 = shl i8 %26, 2, !dbg !1588
  %28 = add i8 %27, 4, !dbg !1588
  br label %89, !dbg !1589

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1590
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1590

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %32, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %32, metadata !1566, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %33 = lshr i32 %32, 5, !dbg !1594
  %34 = trunc i32 %33 to i8, !dbg !1595
  %35 = and i8 %34, 14, !dbg !1595
  %36 = add nuw nsw i8 %35, 2, !dbg !1595
  br label %89, !dbg !1596

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %38, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %38, metadata !1566, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %39 = lshr i32 %38, 5, !dbg !1600
  %40 = trunc i32 %39 to i8, !dbg !1601
  %41 = and i8 %40, 14, !dbg !1601
  %42 = add nuw nsw i8 %41, 2, !dbg !1601
  br label %89, !dbg !1602

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %44, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %44, metadata !1566, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %45 = lshr i32 %44, 5, !dbg !1606
  %46 = trunc i32 %45 to i8, !dbg !1607
  %47 = and i8 %46, 14, !dbg !1607
  %48 = add nuw nsw i8 %47, 2, !dbg !1607
  br label %89, !dbg !1608

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %50, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %50, metadata !1566, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %51 = lshr i32 %50, 5, !dbg !1612
  %52 = trunc i32 %51 to i8, !dbg !1613
  %53 = and i8 %52, 14, !dbg !1613
  %54 = add nuw nsw i8 %53, 2, !dbg !1613
  br label %89, !dbg !1614

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %56, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %56, metadata !1566, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %57 = lshr i32 %56, 5, !dbg !1618
  %58 = trunc i32 %57 to i8, !dbg !1619
  %59 = and i8 %58, 14, !dbg !1619
  %60 = add nuw nsw i8 %59, 2, !dbg !1619
  br label %89, !dbg !1620

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1621
  br i1 %62, label %63, label %69, !dbg !1623

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1624
  call void @llvm.dbg.value(metadata i32 %64, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %64, metadata !1566, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1567
  %65 = lshr i32 %64, 5, !dbg !1626
  %66 = trunc i32 %65 to i8, !dbg !1627
  %67 = and i8 %66, 14, !dbg !1627
  %68 = add nuw nsw i8 %67, 2, !dbg !1627
  br label %89, !dbg !1628

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %70, metadata !1566, metadata !DIExpression()), !dbg !1567
  %71 = shl nuw nsw i16 %5, 1, !dbg !1631
  %72 = zext i16 %71 to i32, !dbg !1631
  %73 = shl nuw i32 3, %72, !dbg !1632
  %74 = and i32 %70, %73, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %74, metadata !1566, metadata !DIExpression()), !dbg !1567
  %75 = lshr i32 %74, %72, !dbg !1634
  %76 = trunc i32 %75 to i8, !dbg !1635
  %77 = shl i8 %76, 2, !dbg !1635
  %78 = add i8 %77, 4, !dbg !1635
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %80, metadata !1566, metadata !DIExpression()), !dbg !1567
  %81 = shl nuw nsw i16 %5, 1, !dbg !1637
  %82 = zext i16 %81 to i32, !dbg !1637
  %83 = shl nuw i32 3, %82, !dbg !1638
  %84 = and i32 %80, %83, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %84, metadata !1566, metadata !DIExpression()), !dbg !1567
  %85 = lshr i32 %84, %82, !dbg !1640
  %86 = trunc i32 %85 to i8, !dbg !1641
  %87 = shl i8 %86, 2, !dbg !1641
  %88 = add i8 %87, 4, !dbg !1641
  br label %89, !dbg !1642

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1643
  br label %91, !dbg !1644

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1567
  ret i32 %92, !dbg !1644
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1645 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1650, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %1, metadata !1651, metadata !DIExpression()), !dbg !1654
  %3 = lshr i32 %0, 5, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %3, metadata !1652, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1654
  %4 = trunc i32 %0 to i16, !dbg !1656
  %5 = and i16 %4, 31, !dbg !1656
  call void @llvm.dbg.value(metadata i16 %5, metadata !1653, metadata !DIExpression()), !dbg !1654
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1657

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1652, metadata !DIExpression()), !dbg !1654
  %7 = trunc i32 %3 to i16, !dbg !1658
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1658

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1661
  %10 = shl nuw i32 1, %9, !dbg !1663
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1664
  %12 = or i32 %11, %10, !dbg !1664
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1664
  br label %32, !dbg !1665

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1666
  %15 = shl nuw i32 1, %14, !dbg !1667
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1668
  %17 = or i32 %16, %15, !dbg !1668
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1668
  br label %32, !dbg !1669

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1670
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1670

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1673
  %22 = shl nuw i32 1, %21, !dbg !1675
  %23 = xor i32 %22, -1, !dbg !1676
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1677
  %25 = and i32 %24, %23, !dbg !1677
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1677
  br label %32, !dbg !1678

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1679
  %28 = shl nuw i32 1, %27, !dbg !1680
  %29 = xor i32 %28, -1, !dbg !1681
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1682
  %31 = and i32 %30, %29, !dbg !1682
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1682
  br label %32, !dbg !1683

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1684
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irrx_init() local_unnamed_addr #3 !dbg !1685 {
  tail call void @halIrRxReset() #15, !dbg !1690
  ret i32 0, !dbg !1691
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irrx_deinit() local_unnamed_addr #3 !dbg !1692 {
  tail call void @halIrRxReset() #15, !dbg !1693
  ret i32 0, !dbg !1694
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irrx_receive_rc5_start(i8 noundef zeroext %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !1695 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1699, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !1700, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %2, metadata !1701, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8 1, metadata !1704, metadata !DIExpression()), !dbg !1706
  tail call void @halIrRxReset() #15, !dbg !1707
  %4 = and i8 %0, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i8 %4, metadata !1702, metadata !DIExpression()), !dbg !1706
  %5 = and i8 %0, 16, !dbg !1709
  call void @llvm.dbg.value(metadata i8 %5, metadata !1703, metadata !DIExpression()), !dbg !1706
  %6 = tail call zeroext i8 @halIrRxRC5(i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext 1, i16 noundef zeroext 1600) #15, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %6, metadata !1704, metadata !DIExpression()), !dbg !1706
  %7 = icmp eq i8 %6, 1, !dbg !1711
  br i1 %7, label %11, label %8, !dbg !1713

8:                                                ; preds = %3
  %9 = bitcast void (i32, i8*)* %1 to void (i8*)*, !dbg !1714
  %10 = tail call zeroext i8 @halIrRxRegisterCallback(i32 noundef 0, void (i8*)* noundef %9, i8* noundef %2) #15, !dbg !1715
  store i1 true, i1* @s_hal_irrx_status, align 4, !dbg !1716
  br label %11, !dbg !1717

11:                                               ; preds = %3, %8
  %12 = phi i32 [ 0, %8 ], [ -2, %3 ], !dbg !1706
  ret i32 %12, !dbg !1718
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irrx_receive_rc5(%struct.hal_irrx_rc5_code_t* noundef %0) local_unnamed_addr #3 !dbg !1719 {
  call void @llvm.dbg.value(metadata %struct.hal_irrx_rc5_code_t* %0, metadata !1730, metadata !DIExpression()), !dbg !1731
  %2 = load i1, i1* @s_hal_irrx_status, align 4, !dbg !1732
  br i1 %2, label %3, label %7, !dbg !1734

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_irrx_rc5_code_t, %struct.hal_irrx_rc5_code_t* %0, i32 0, i32 0, !dbg !1735
  %5 = getelementptr inbounds %struct.hal_irrx_rc5_code_t, %struct.hal_irrx_rc5_code_t* %0, i32 0, i32 1, i32 0, !dbg !1736
  %6 = getelementptr inbounds %struct.hal_irrx_rc5_code_t, %struct.hal_irrx_rc5_code_t* %0, i32 0, i32 1, i32 1, !dbg !1737
  tail call void @halIrRxRC5Read(i8* noundef %4, i32* noundef nonnull %5, i32* noundef nonnull %6) #15, !dbg !1738
  store i1 false, i1* @s_hal_irrx_status, align 4, !dbg !1739
  br label %7, !dbg !1740

7:                                                ; preds = %1, %3
  %8 = phi i32 [ 0, %3 ], [ -1, %1 ], !dbg !1731
  ret i32 %8, !dbg !1741
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irrx_receive_pwd_start(%struct.hal_irrx_pwd_config_t* nocapture noundef readonly %0, void (i32, i8*)* noundef %1, i32* noundef %2) local_unnamed_addr #3 !dbg !1742 {
  call void @llvm.dbg.value(metadata %struct.hal_irrx_pwd_config_t* %0, metadata !1754, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !1755, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i32* %2, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8* null, metadata !1758, metadata !DIExpression()), !dbg !1759
  tail call void @halIrRxReset() #15, !dbg !1760
  %4 = getelementptr inbounds %struct.hal_irrx_pwd_config_t, %struct.hal_irrx_pwd_config_t* %0, i32 0, i32 0, !dbg !1761
  %5 = load i8, i8* %4, align 4, !dbg !1761
  %6 = getelementptr inbounds %struct.hal_irrx_pwd_config_t, %struct.hal_irrx_pwd_config_t* %0, i32 0, i32 1, !dbg !1762
  %7 = load i32, i32* %6, align 4, !dbg !1762
  %8 = tail call zeroext i8 @halIrRxPulseWidthDetect(i32 noundef 3, i8 noundef zeroext %5, i32 noundef %7, i32* noundef %2) #15, !dbg !1763
  call void @llvm.dbg.value(metadata i8 %8, metadata !1757, metadata !DIExpression()), !dbg !1759
  %9 = icmp eq i8 %8, 1, !dbg !1764
  br i1 %9, label %13, label %10, !dbg !1766

10:                                               ; preds = %3
  %11 = bitcast void (i32, i8*)* %1 to void (i8*)*, !dbg !1767
  %12 = tail call zeroext i8 @halIrRxRegisterCallback(i32 noundef 1, void (i8*)* noundef %11, i8* noundef null) #15, !dbg !1768
  store i1 true, i1* @s_hal_irrx_status, align 4, !dbg !1769
  br label %13, !dbg !1770

13:                                               ; preds = %3, %10
  %14 = phi i32 [ 0, %10 ], [ -2, %3 ], !dbg !1759
  ret i32 %14, !dbg !1771
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_irrx_receive_pwd(i8* noundef %0, i8* noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !dbg !1772 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1776, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* %1, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %2, metadata !1778, metadata !DIExpression()), !dbg !1779
  %4 = load i1, i1* @s_hal_irrx_status, align 4, !dbg !1780
  br i1 %4, label %5, label %6, !dbg !1782

5:                                                ; preds = %3
  tail call void @halIrRxPWDRead(i8* noundef %0, i8* noundef %1, i8 noundef zeroext %2) #15, !dbg !1783
  store i1 false, i1* @s_hal_irrx_status, align 4, !dbg !1784
  br label %6, !dbg !1785

6:                                                ; preds = %3, %5
  %7 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !1779
  ret i32 %7, !dbg !1786
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local i32 @hal_irrx_get_running_status(i32* nocapture noundef writeonly %0) local_unnamed_addr #4 !dbg !1787 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1792, metadata !DIExpression()), !dbg !1793
  %2 = load i1, i1* @s_hal_irrx_status, align 4, !dbg !1794
  %3 = zext i1 %2 to i32, !dbg !1794
  store i32 %3, i32* %0, align 4, !dbg !1795
  ret i32 0, !dbg !1796
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1803, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 %1, metadata !1804, metadata !DIExpression()), !dbg !1806
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
  ], !dbg !1807

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %4, metadata !1805, metadata !DIExpression()), !dbg !1806
  %5 = and i32 %4, -16, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %5, metadata !1805, metadata !DIExpression()), !dbg !1806
  %6 = zext i8 %1 to i32, !dbg !1811
  %7 = or i32 %5, %6, !dbg !1812
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1813
  br label %187, !dbg !1814

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %9, metadata !1805, metadata !DIExpression()), !dbg !1806
  %10 = and i32 %9, -241, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %10, metadata !1805, metadata !DIExpression()), !dbg !1806
  %11 = zext i8 %1 to i32, !dbg !1817
  %12 = shl nuw nsw i32 %11, 4, !dbg !1818
  %13 = or i32 %10, %12, !dbg !1819
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1820
  br label %187, !dbg !1821

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %15, metadata !1805, metadata !DIExpression()), !dbg !1806
  %16 = and i32 %15, -3841, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %16, metadata !1805, metadata !DIExpression()), !dbg !1806
  %17 = zext i8 %1 to i32, !dbg !1824
  %18 = shl nuw nsw i32 %17, 8, !dbg !1825
  %19 = or i32 %16, %18, !dbg !1826
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1827
  br label %187, !dbg !1828

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %21, metadata !1805, metadata !DIExpression()), !dbg !1806
  %22 = and i32 %21, -61441, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %22, metadata !1805, metadata !DIExpression()), !dbg !1806
  %23 = zext i8 %1 to i32, !dbg !1831
  %24 = shl nuw nsw i32 %23, 12, !dbg !1832
  %25 = or i32 %22, %24, !dbg !1833
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1834
  br label %187, !dbg !1835

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %27, metadata !1805, metadata !DIExpression()), !dbg !1806
  %28 = and i32 %27, -983041, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %28, metadata !1805, metadata !DIExpression()), !dbg !1806
  %29 = zext i8 %1 to i32, !dbg !1838
  %30 = shl nuw nsw i32 %29, 16, !dbg !1839
  %31 = or i32 %28, %30, !dbg !1840
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1841
  br label %187, !dbg !1842

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %33, metadata !1805, metadata !DIExpression()), !dbg !1806
  %34 = and i32 %33, -15728641, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %34, metadata !1805, metadata !DIExpression()), !dbg !1806
  %35 = zext i8 %1 to i32, !dbg !1845
  %36 = shl nuw nsw i32 %35, 20, !dbg !1846
  %37 = or i32 %34, %36, !dbg !1847
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1848
  br label %187, !dbg !1849

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %39, metadata !1805, metadata !DIExpression()), !dbg !1806
  %40 = and i32 %39, -251658241, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %40, metadata !1805, metadata !DIExpression()), !dbg !1806
  %41 = zext i8 %1 to i32, !dbg !1852
  %42 = shl nuw i32 %41, 24, !dbg !1853
  %43 = or i32 %40, %42, !dbg !1854
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1855
  br label %187, !dbg !1856

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %45, metadata !1805, metadata !DIExpression()), !dbg !1806
  %46 = and i32 %45, 268435455, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %46, metadata !1805, metadata !DIExpression()), !dbg !1806
  %47 = zext i8 %1 to i32, !dbg !1859
  %48 = shl i32 %47, 28, !dbg !1860
  %49 = or i32 %46, %48, !dbg !1861
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1862
  br label %187, !dbg !1863

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %51, metadata !1805, metadata !DIExpression()), !dbg !1806
  %52 = and i32 %51, -16, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %52, metadata !1805, metadata !DIExpression()), !dbg !1806
  %53 = zext i8 %1 to i32, !dbg !1866
  %54 = or i32 %52, %53, !dbg !1867
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1868
  br label %187, !dbg !1869

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %56, metadata !1805, metadata !DIExpression()), !dbg !1806
  %57 = and i32 %56, -241, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %57, metadata !1805, metadata !DIExpression()), !dbg !1806
  %58 = zext i8 %1 to i32, !dbg !1872
  %59 = shl nuw nsw i32 %58, 4, !dbg !1873
  %60 = or i32 %57, %59, !dbg !1874
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1875
  br label %187, !dbg !1876

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %62, metadata !1805, metadata !DIExpression()), !dbg !1806
  %63 = and i32 %62, -3841, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %63, metadata !1805, metadata !DIExpression()), !dbg !1806
  %64 = zext i8 %1 to i32, !dbg !1879
  %65 = shl nuw nsw i32 %64, 8, !dbg !1880
  %66 = or i32 %63, %65, !dbg !1881
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1882
  br label %187, !dbg !1883

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %68, metadata !1805, metadata !DIExpression()), !dbg !1806
  %69 = and i32 %68, -61441, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %69, metadata !1805, metadata !DIExpression()), !dbg !1806
  %70 = zext i8 %1 to i32, !dbg !1886
  %71 = shl nuw nsw i32 %70, 12, !dbg !1887
  %72 = or i32 %69, %71, !dbg !1888
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1889
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1890

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !1892
  br label %187, !dbg !1894

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %76, metadata !1805, metadata !DIExpression()), !dbg !1806
  %77 = and i32 %76, -983041, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %77, metadata !1805, metadata !DIExpression()), !dbg !1806
  %78 = zext i8 %1 to i32, !dbg !1897
  %79 = shl nuw nsw i32 %78, 16, !dbg !1898
  %80 = or i32 %77, %79, !dbg !1899
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1900
  %81 = and i8 %1, -2, !dbg !1901
  %82 = icmp eq i8 %81, 4, !dbg !1901
  br i1 %82, label %83, label %187, !dbg !1901

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !1903
  br label %187, !dbg !1905

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %86, metadata !1805, metadata !DIExpression()), !dbg !1806
  %87 = and i32 %86, -15728641, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %87, metadata !1805, metadata !DIExpression()), !dbg !1806
  %88 = zext i8 %1 to i32, !dbg !1908
  %89 = shl nuw nsw i32 %88, 20, !dbg !1909
  %90 = or i32 %87, %89, !dbg !1910
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1911
  %91 = icmp eq i8 %1, 6, !dbg !1912
  br i1 %91, label %92, label %187, !dbg !1914

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !1915
  br label %187, !dbg !1917

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %95, metadata !1805, metadata !DIExpression()), !dbg !1806
  %96 = and i32 %95, -251658241, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %96, metadata !1805, metadata !DIExpression()), !dbg !1806
  %97 = zext i8 %1 to i32, !dbg !1920
  %98 = shl nuw i32 %97, 24, !dbg !1921
  %99 = or i32 %96, %98, !dbg !1922
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1923
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1924

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !1926
  br label %187, !dbg !1928

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %103, metadata !1805, metadata !DIExpression()), !dbg !1806
  %104 = and i32 %103, 268435455, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %104, metadata !1805, metadata !DIExpression()), !dbg !1806
  %105 = zext i8 %1 to i32, !dbg !1931
  %106 = shl i32 %105, 28, !dbg !1932
  %107 = or i32 %104, %106, !dbg !1933
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1934
  %108 = and i8 %1, -3, !dbg !1935
  %109 = icmp eq i8 %108, 4, !dbg !1935
  br i1 %109, label %110, label %187, !dbg !1935

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !1937
  br label %187, !dbg !1939

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %113, metadata !1805, metadata !DIExpression()), !dbg !1806
  %114 = and i32 %113, -16, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %114, metadata !1805, metadata !DIExpression()), !dbg !1806
  %115 = zext i8 %1 to i32, !dbg !1942
  %116 = or i32 %114, %115, !dbg !1943
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1944
  %117 = and i8 %1, -3, !dbg !1945
  %118 = icmp eq i8 %117, 4, !dbg !1945
  br i1 %118, label %119, label %187, !dbg !1945

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !1947
  br label %187, !dbg !1949

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %122, metadata !1805, metadata !DIExpression()), !dbg !1806
  %123 = and i32 %122, -241, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %123, metadata !1805, metadata !DIExpression()), !dbg !1806
  %124 = zext i8 %1 to i32, !dbg !1952
  %125 = shl nuw nsw i32 %124, 4, !dbg !1953
  %126 = or i32 %123, %125, !dbg !1954
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1955
  br label %187, !dbg !1956

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %128, metadata !1805, metadata !DIExpression()), !dbg !1806
  %129 = and i32 %128, -3841, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %129, metadata !1805, metadata !DIExpression()), !dbg !1806
  %130 = zext i8 %1 to i32, !dbg !1959
  %131 = shl nuw nsw i32 %130, 8, !dbg !1960
  %132 = or i32 %129, %131, !dbg !1961
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1962
  br label %187, !dbg !1963

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %134, metadata !1805, metadata !DIExpression()), !dbg !1806
  %135 = and i32 %134, -61441, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %135, metadata !1805, metadata !DIExpression()), !dbg !1806
  %136 = zext i8 %1 to i32, !dbg !1966
  %137 = shl nuw nsw i32 %136, 12, !dbg !1967
  %138 = or i32 %135, %137, !dbg !1968
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1969
  br label %187, !dbg !1970

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %140, metadata !1805, metadata !DIExpression()), !dbg !1806
  %141 = and i32 %140, -983041, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %141, metadata !1805, metadata !DIExpression()), !dbg !1806
  %142 = zext i8 %1 to i32, !dbg !1973
  %143 = shl nuw nsw i32 %142, 16, !dbg !1974
  %144 = or i32 %141, %143, !dbg !1975
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1976
  br label %187, !dbg !1977

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %146, metadata !1805, metadata !DIExpression()), !dbg !1806
  %147 = and i32 %146, -15728641, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %147, metadata !1805, metadata !DIExpression()), !dbg !1806
  %148 = zext i8 %1 to i32, !dbg !1980
  %149 = shl nuw nsw i32 %148, 20, !dbg !1981
  %150 = or i32 %147, %149, !dbg !1982
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1983
  br label %187, !dbg !1984

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %152, metadata !1805, metadata !DIExpression()), !dbg !1806
  %153 = and i32 %152, -251658241, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %153, metadata !1805, metadata !DIExpression()), !dbg !1806
  %154 = zext i8 %1 to i32, !dbg !1987
  %155 = shl nuw i32 %154, 24, !dbg !1988
  %156 = or i32 %153, %155, !dbg !1989
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1990
  br label %187, !dbg !1991

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %158, metadata !1805, metadata !DIExpression()), !dbg !1806
  %159 = and i32 %158, 268435455, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %159, metadata !1805, metadata !DIExpression()), !dbg !1806
  %160 = zext i8 %1 to i32, !dbg !1994
  %161 = shl i32 %160, 28, !dbg !1995
  %162 = or i32 %159, %161, !dbg !1996
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1997
  br label %187, !dbg !1998

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %164, metadata !1805, metadata !DIExpression()), !dbg !1806
  %165 = and i32 %164, -241, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %165, metadata !1805, metadata !DIExpression()), !dbg !1806
  %166 = zext i8 %1 to i32, !dbg !2001
  %167 = shl nuw nsw i32 %166, 4, !dbg !2002
  %168 = or i32 %165, %167, !dbg !2003
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2004
  br label %187, !dbg !2005

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2006
  call void @llvm.dbg.value(metadata i32 %170, metadata !1805, metadata !DIExpression()), !dbg !1806
  %171 = and i32 %170, -3841, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %171, metadata !1805, metadata !DIExpression()), !dbg !1806
  %172 = zext i8 %1 to i32, !dbg !2008
  %173 = shl nuw nsw i32 %172, 8, !dbg !2009
  %174 = or i32 %171, %173, !dbg !2010
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2011
  br label %187, !dbg !2012

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %176, metadata !1805, metadata !DIExpression()), !dbg !1806
  %177 = and i32 %176, -61441, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %177, metadata !1805, metadata !DIExpression()), !dbg !1806
  %178 = zext i8 %1 to i32, !dbg !2015
  %179 = shl nuw nsw i32 %178, 12, !dbg !2016
  %180 = or i32 %177, %179, !dbg !2017
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2018
  br label %187, !dbg !2019

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2020
  call void @llvm.dbg.value(metadata i32 %182, metadata !1805, metadata !DIExpression()), !dbg !1806
  %183 = and i32 %182, -983041, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %183, metadata !1805, metadata !DIExpression()), !dbg !1806
  %184 = zext i8 %1 to i32, !dbg !2022
  %185 = shl nuw nsw i32 %184, 16, !dbg !2023
  %186 = or i32 %183, %185, !dbg !2024
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2025
  br label %187, !dbg !2026

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2027
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halIrRxClearInterrupt() local_unnamed_addr #0 !dbg !2028 {
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2032, metadata !DIExpression()), !dbg !2033
  %1 = load volatile i32, i32* inttoptr (i32 -2096725984 to i32*), align 32, !dbg !2034
  %2 = or i32 %1, 1, !dbg !2034
  store volatile i32 %2, i32* inttoptr (i32 -2096725984 to i32*), align 32, !dbg !2034
  ret void, !dbg !2035
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halIrRxRegisterCallback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !2036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2041, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8* %2, metadata !2043, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2045
  switch i32 %0, label %8 [
    i32 0, label %5
    i32 1, label %4
  ], !dbg !2046

4:                                                ; preds = %3
  br label %5, !dbg !2047

5:                                                ; preds = %3, %4
  %6 = phi void (i8*)** [ @s_low_hal_irrx_pwd_callback.0, %4 ], [ @s_low_hal_irrx_rc5_callback.0, %3 ]
  %7 = phi i8** [ @s_low_hal_irrx_pwd_callback.1, %4 ], [ @s_low_hal_irrx_rc5_callback.1, %3 ]
  store void (i8*)* %1, void (i8*)** %6, align 4, !dbg !2051
  store i8* %2, i8** %7, align 4, !dbg !2051
  br label %8, !dbg !2052

8:                                                ; preds = %5, %3
  %9 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 16, void (i32)* noundef nonnull @halIrRxIsr) #15, !dbg !2052
  %10 = tail call i32 @hal_nvic_set_priority(i32 noundef 16, i32 noundef 5) #15, !dbg !2053
  %11 = tail call i32 @hal_nvic_enable_irq(i32 noundef 16) #15, !dbg !2054
  ret i8 0, !dbg !2055
}

; Function Attrs: noinline nounwind optsize
define internal void @halIrRxIsr(i32 noundef %0) #3 !dbg !2056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2061, metadata !DIExpression()), !dbg !2062
  tail call void @halIrRxClearInterrupt() #14, !dbg !2063
  %2 = load volatile i32, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2064
  %3 = and i32 %2, 8192, !dbg !2066
  %4 = icmp eq i32 %3, 0, !dbg !2066
  br i1 %4, label %8, label %5, !dbg !2067

5:                                                ; preds = %1
  %6 = load void (i8*)*, void (i8*)** @s_low_hal_irrx_pwd_callback.0, align 4, !dbg !2068
  %7 = icmp eq void (i8*)* %6, null, !dbg !2071
  br i1 %7, label %15, label %11, !dbg !2072

8:                                                ; preds = %1
  %9 = load void (i8*)*, void (i8*)** @s_low_hal_irrx_rc5_callback.0, align 4, !dbg !2073
  %10 = icmp eq void (i8*)* %9, null, !dbg !2076
  br i1 %10, label %15, label %11, !dbg !2077

11:                                               ; preds = %8, %5
  %12 = phi i8** [ @s_low_hal_irrx_pwd_callback.1, %5 ], [ @s_low_hal_irrx_rc5_callback.1, %8 ]
  %13 = phi void (i8*)* [ %6, %5 ], [ %9, %8 ]
  %14 = load i8*, i8** %12, align 4, !dbg !2078
  tail call void %13(i8* noundef %14) #15, !dbg !2078
  br label %15, !dbg !2079

15:                                               ; preds = %11, %8, %5
  ret void, !dbg !2079
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halIrRxRC5Read(i8* nocapture noundef %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2080 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2084, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32* %1, metadata !2085, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32* %2, metadata !2086, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 0, metadata !2087, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 0, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2089, metadata !DIExpression()), !dbg !2090
  %4 = load volatile i32, i32* inttoptr (i32 -2096726016 to i32*), align 32768, !dbg !2091
  %5 = trunc i32 %4 to i8, !dbg !2092
  %6 = and i8 %5, 63, !dbg !2092
  call void @llvm.dbg.value(metadata i8 %6, metadata !2087, metadata !DIExpression()), !dbg !2090
  %7 = load volatile i32, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2093
  %8 = and i32 %7, 16, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %7, metadata !2088, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_and, DW_OP_stack_value)), !dbg !2090
  %9 = icmp eq i8 %6, 0, !dbg !2095
  br i1 %9, label %14, label %10, !dbg !2097

10:                                               ; preds = %3
  %11 = add nsw i8 %6, -1, !dbg !2098
  store i8 %11, i8* %0, align 1, !dbg !2100
  %12 = load volatile i32, i32* inttoptr (i32 -2096726012 to i32*), align 4, !dbg !2101
  store i32 %12, i32* %1, align 4, !dbg !2102
  %13 = load volatile i32, i32* inttoptr (i32 -2096726008 to i32*), align 8, !dbg !2103
  store i32 %13, i32* %2, align 4, !dbg !2104
  br label %15, !dbg !2105

14:                                               ; preds = %3
  store i8 0, i8* %0, align 1, !dbg !2106
  br label %15

15:                                               ; preds = %14, %10
  %16 = icmp eq i32 %8, 0, !dbg !2108
  br i1 %16, label %27, label %17, !dbg !2110

17:                                               ; preds = %15
  %18 = load i8, i8* %0, align 1, !dbg !2111
  %19 = icmp ult i8 %18, 32, !dbg !2114
  %20 = select i1 %19, i32* inttoptr (i32 -2096726012 to i32*), i32* inttoptr (i32 -2096726008 to i32*)
  %21 = select i1 %19, i32* %1, i32* %2
  %22 = load volatile i32, i32* %20, align 4, !dbg !2115
  %23 = zext i8 %18 to i32, !dbg !2115
  %24 = shl i32 128, %23, !dbg !2115
  %25 = xor i32 %24, -1, !dbg !2115
  %26 = and i32 %22, %25, !dbg !2115
  store i32 %26, i32* %21, align 4, !dbg !2115
  br label %27, !dbg !2116

27:                                               ; preds = %17, %15
  tail call void @halIrRxReset() #14, !dbg !2116
  ret void, !dbg !2117
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halIrRxReset() local_unnamed_addr #0 !dbg !2118 {
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2120, metadata !DIExpression()), !dbg !2121
  %1 = load volatile i32, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2122
  %2 = or i32 %1, 1, !dbg !2122
  store volatile i32 %2, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2122
  ret void, !dbg !2123
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halIrRxPWDRead(i8* nocapture noundef writeonly %0, i8* nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 !dbg !2124 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2128, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %1, metadata !2129, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %2, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2131, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 0, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 -2096725968, metadata !2134, metadata !DIExpression()), !dbg !2135
  br label %4, !dbg !2136

4:                                                ; preds = %30, %3
  %5 = phi i8 [ 0, %3 ], [ %34, %30 ], !dbg !2135
  %6 = phi i32 [ -2096725968, %3 ], [ %35, %30 ], !dbg !2135
  call void @llvm.dbg.value(metadata i32 %6, metadata !2134, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8 %5, metadata !2132, metadata !DIExpression()), !dbg !2135
  %7 = inttoptr i32 %6 to i32*, !dbg !2137
  %8 = load volatile i32, i32* %7, align 4, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %8, metadata !2133, metadata !DIExpression()), !dbg !2135
  %9 = trunc i32 %8 to i8, !dbg !2139
  switch i8 %9, label %10 [
    i8 -1, label %36
    i8 0, label %36
  ], !dbg !2139

10:                                               ; preds = %4
  %11 = zext i8 %5 to i32, !dbg !2141
  %12 = getelementptr inbounds i8, i8* %1, i32 %11, !dbg !2141
  store i8 %9, i8* %12, align 1, !dbg !2143
  %13 = or i8 %5, 1, !dbg !2144
  call void @llvm.dbg.value(metadata i8 %13, metadata !2132, metadata !DIExpression()), !dbg !2135
  %14 = lshr i32 %8, 8, !dbg !2145
  %15 = trunc i32 %14 to i8, !dbg !2147
  switch i8 %15, label %16 [
    i8 -1, label %36
    i8 0, label %36
  ], !dbg !2147

16:                                               ; preds = %10
  %17 = zext i8 %13 to i32, !dbg !2148
  %18 = getelementptr inbounds i8, i8* %1, i32 %17, !dbg !2148
  store i8 %15, i8* %18, align 1, !dbg !2150
  %19 = or i8 %5, 2, !dbg !2151
  call void @llvm.dbg.value(metadata i8 %19, metadata !2132, metadata !DIExpression()), !dbg !2135
  %20 = lshr i32 %8, 16, !dbg !2152
  %21 = trunc i32 %20 to i8, !dbg !2154
  switch i8 %21, label %22 [
    i8 -1, label %36
    i8 0, label %36
  ], !dbg !2154

22:                                               ; preds = %16
  %23 = zext i8 %19 to i32, !dbg !2155
  %24 = getelementptr inbounds i8, i8* %1, i32 %23, !dbg !2155
  store i8 %21, i8* %24, align 1, !dbg !2157
  %25 = or i8 %5, 3, !dbg !2158
  call void @llvm.dbg.value(metadata i8 %25, metadata !2132, metadata !DIExpression()), !dbg !2135
  %26 = lshr i32 %8, 24, !dbg !2159
  %27 = icmp eq i32 %26, 255, !dbg !2161
  %28 = icmp ult i32 %8, 16777216
  %29 = or i1 %28, %27, !dbg !2162
  br i1 %29, label %36, label %30, !dbg !2162

30:                                               ; preds = %22
  %31 = trunc i32 %26 to i8, !dbg !2163
  %32 = zext i8 %25 to i32, !dbg !2165
  %33 = getelementptr inbounds i8, i8* %1, i32 %32, !dbg !2165
  store i8 %31, i8* %33, align 1, !dbg !2166
  %34 = add i8 %5, 4, !dbg !2167
  call void @llvm.dbg.value(metadata i8 %34, metadata !2132, metadata !DIExpression()), !dbg !2135
  %35 = add i32 %6, 4, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %35, metadata !2134, metadata !DIExpression()), !dbg !2135
  br label %4, !dbg !2169, !llvm.loop !2170

36:                                               ; preds = %16, %16, %10, %10, %4, %4, %22
  %37 = phi i8 [ %25, %22 ], [ %19, %16 ], [ %13, %10 ], [ %5, %4 ], [ %5, %4 ], [ %13, %10 ], [ %19, %16 ], !dbg !2135
  call void @llvm.dbg.value(metadata i8 %37, metadata !2132, metadata !DIExpression()), !dbg !2135
  store i8 %37, i8* %0, align 1, !dbg !2172
  tail call void @halIrRxReset() #14, !dbg !2173
  ret void, !dbg !2174
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halIrRxRC5(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #0 !dbg !2175 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2179, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %1, metadata !2180, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 %2, metadata !2181, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i16 %3, metadata !2182, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2183, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 0, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 31, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2187
  %5 = load volatile i32, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %5, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %5, metadata !2184, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2187
  %6 = icmp eq i8 %0, 0, !dbg !2189
  %7 = and i32 %5, -24788, !dbg !2191
  %8 = or i32 %7, 1, !dbg !2191
  %9 = or i32 %5, 3, !dbg !2191
  %10 = select i1 %6, i32 %8, i32 %9, !dbg !2191
  call void @llvm.dbg.value(metadata i32 undef, metadata !2184, metadata !DIExpression()), !dbg !2187
  %11 = icmp eq i8 %1, 0, !dbg !2192
  %12 = and i32 %10, -24785, !dbg !2194
  %13 = select i1 %11, i32 0, i32 16, !dbg !2194
  %14 = or i32 %12, %13, !dbg !2194
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %13), metadata !2184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709526831, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2187
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %13), metadata !2184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709526831, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 18446744073709551551, DW_OP_and, DW_OP_stack_value)), !dbg !2187
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %13), metadata !2184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709526831, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 18446744073709551423, DW_OP_and, DW_OP_stack_value)), !dbg !2187
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %13), metadata !2184, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709526831, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 18446744073709543231, DW_OP_and, DW_OP_stack_value)), !dbg !2187
  %15 = icmp eq i8 %2, 0, !dbg !2195
  %16 = or i32 %14, 16384, !dbg !2197
  %17 = select i1 %15, i32 %14, i32 %16, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %17, metadata !2184, metadata !DIExpression()), !dbg !2187
  %18 = and i32 %17, -16720065, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %18, metadata !2184, metadata !DIExpression()), !dbg !2187
  %19 = or i32 %18, 196608, !dbg !2199
  call void @llvm.dbg.value(metadata i32 %19, metadata !2184, metadata !DIExpression()), !dbg !2187
  store volatile i32 %19, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2200
  %20 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2201
  %21 = and i32 %20, -4096, !dbg !2201
  store volatile i32 %21, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2201
  %22 = zext i16 %3 to i32, !dbg !2202
  %23 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2203
  %24 = or i32 %23, %22, !dbg !2203
  store volatile i32 %24, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2203
  %25 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2204
  %26 = and i32 %25, -129, !dbg !2204
  store volatile i32 %26, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2204
  %27 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2205
  %28 = and i32 %27, -7937, !dbg !2205
  store volatile i32 %28, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2205
  %29 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2206
  %30 = or i32 %29, 7936, !dbg !2206
  store volatile i32 %30, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2206
  %31 = load volatile i32, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2207
  %32 = or i32 %31, 1, !dbg !2207
  store volatile i32 %32, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2207
  ret i8 0, !dbg !2208
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halIrRxPulseWidthDetect(i32 noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #3 !dbg !2209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2214, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8 %1, metadata !2215, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %2, metadata !2216, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32* %3, metadata !2217, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2219, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 0, metadata !2220, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 0, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 0, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 0, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 64, metadata !2221, metadata !DIExpression()), !dbg !2224
  %5 = mul i32 %2, 2000
  call void @llvm.dbg.value(metadata i32 64, metadata !2221, metadata !DIExpression()), !dbg !2224
  %6 = udiv i32 %5, 64000, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %6, metadata !2222, metadata !DIExpression()), !dbg !2224
  %7 = icmp ult i32 %5, 262144000, !dbg !2227
  br i1 %7, label %16, label %8, !dbg !2229

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %14, %8 ], [ %6, %4 ]
  %10 = phi i32 [ %12, %8 ], [ 64, %4 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !2221, metadata !DIExpression()), !dbg !2224
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 noundef %9) #15, !dbg !2230
  %12 = shl i32 %10, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %12, metadata !2221, metadata !DIExpression()), !dbg !2224
  %13 = mul i32 %10, 2000, !dbg !2233
  %14 = udiv i32 %5, %13, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %14, metadata !2222, metadata !DIExpression()), !dbg !2224
  %15 = icmp ult i32 %14, 4096, !dbg !2227
  br i1 %15, label %16, label %8, !dbg !2229, !llvm.loop !2234

16:                                               ; preds = %8, %4
  %17 = phi i32 [ 64, %4 ], [ %12, %8 ], !dbg !2224
  %18 = phi i32 [ %6, %4 ], [ %14, %8 ], !dbg !2225
  %19 = mul i32 %18, %17, !dbg !2237
  %20 = tail call i32 @top_xtal_freq_get() #15, !dbg !2238
  %21 = udiv i32 %20, 1000, !dbg !2238
  %22 = mul i32 %19, %21, !dbg !2239
  %23 = udiv i32 %22, 510000, !dbg !2240
  call void @llvm.dbg.value(metadata i32 undef, metadata !2223, metadata !DIExpression()), !dbg !2224
  %24 = load volatile i32, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %24, metadata !2220, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2224
  %25 = icmp eq i8 %1, 0, !dbg !2242
  %26 = and i32 %24, -16736452, !dbg !2244
  %27 = or i32 %26, 1, !dbg !2244
  %28 = or i32 %24, 3, !dbg !2244
  %29 = select i1 %25, i32 %27, i32 %28, !dbg !2244
  call void @llvm.dbg.value(metadata i32 undef, metadata !2220, metadata !DIExpression(DW_OP_constu, 18446744073709551551, DW_OP_and, DW_OP_stack_value)), !dbg !2224
  %30 = and i32 %29, -16736449, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %30, metadata !2220, metadata !DIExpression(DW_OP_constu, 8192, DW_OP_or, DW_OP_stack_value)), !dbg !2224
  %31 = shl i32 %17, 16, !dbg !2246
  %32 = or i32 %31, %30, !dbg !2247
  %33 = or i32 %32, 8192, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %33, metadata !2220, metadata !DIExpression()), !dbg !2224
  store volatile i32 %33, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2248
  %34 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2249
  %35 = and i32 %34, -4096, !dbg !2249
  store volatile i32 %35, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2249
  %36 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2250
  %37 = or i32 %36, %18, !dbg !2250
  store volatile i32 %37, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2250
  %38 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2251
  %39 = and i32 %38, 65535, !dbg !2251
  store volatile i32 %39, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2251
  %40 = shl nuw nsw i32 %23, 16, !dbg !2252
  %41 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2253
  %42 = or i32 %41, %40, !dbg !2253
  store volatile i32 %42, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2253
  %43 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2254
  %44 = and i32 %43, -129, !dbg !2254
  store volatile i32 %44, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2254
  %45 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2255
  %46 = and i32 %45, -7937, !dbg !2255
  store volatile i32 %46, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2255
  %47 = shl i32 %0, 8, !dbg !2256
  %48 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2257
  %49 = or i32 %48, %47, !dbg !2257
  store volatile i32 %49, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2257
  %50 = load volatile i32, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2258
  %51 = or i32 %50, 1, !dbg !2258
  store volatile i32 %51, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2258
  %52 = mul nuw nsw i32 %23, 1000, !dbg !2259
  %53 = tail call i32 @top_xtal_freq_get() #15, !dbg !2260
  %54 = udiv i32 %53, 1000, !dbg !2260
  %55 = udiv i32 %52, %54, !dbg !2261
  store i32 %55, i32* %3, align 4, !dbg !2262
  ret i8 0, !dbg !2263
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halIrRxPulseWidthDetect_DVT(i32 noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #3 !dbg !2264 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %1, metadata !2269, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %2, metadata !2270, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %3, metadata !2271, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %4, metadata !2272, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %5, metadata !2273, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %6, metadata !2274, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata %struct._IOT_IRRX_TypeDef* inttoptr (i32 -2096726016 to %struct._IOT_IRRX_TypeDef*), metadata !2276, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 0, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 0, metadata !2278, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()), !dbg !2282
  %8 = mul i32 %2, 1000, !dbg !2283
  %9 = mul i32 %8, %3, !dbg !2284
  %10 = udiv i32 %9, 2000, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %10, metadata !2278, metadata !DIExpression()), !dbg !2282
  %11 = mul i32 %4, 1000, !dbg !2286
  %12 = tail call i32 @top_xtal_freq_get() #15, !dbg !2287
  %13 = udiv i32 %12, 1000, !dbg !2287
  %14 = udiv i32 %11, %13, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %14, metadata !2280, metadata !DIExpression()), !dbg !2282
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i32 0, i32 0), i32 noundef %3, i32 noundef %4, i32 noundef %2) #15, !dbg !2289
  %16 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i32 0, i32 0), i32 noundef %10, i32 noundef %14) #15, !dbg !2290
  %17 = load volatile i32, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2291
  call void @llvm.dbg.value(metadata i32 %17, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 %17, metadata !2277, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2281
  %18 = icmp eq i8 %1, 0, !dbg !2292
  %19 = and i32 %17, -16736452, !dbg !2294
  %20 = or i32 %19, 1, !dbg !2294
  %21 = or i32 %17, 3, !dbg !2294
  %22 = select i1 %18, i32 %20, i32 %21, !dbg !2294
  call void @llvm.dbg.value(metadata i32 undef, metadata !2277, metadata !DIExpression()), !dbg !2281
  %23 = icmp eq i8 %5, 0, !dbg !2295
  %24 = and i32 %22, -16736449, !dbg !2297
  %25 = select i1 %23, i32 64, i32 0, !dbg !2297
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %25), metadata !2277, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551423, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2281
  %26 = icmp eq i8 %6, 0, !dbg !2298
  %27 = select i1 %26, i32 128, i32 0, !dbg !2300
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %27), metadata !2277, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2281
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %27), metadata !2277, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 8192, DW_OP_or, DW_OP_stack_value)), !dbg !2281
  call void @llvm.dbg.value(metadata i32 undef, metadata !2277, metadata !DIExpression(DW_OP_constu, 8192, DW_OP_or, DW_OP_stack_value)), !dbg !2281
  call void @llvm.dbg.value(metadata i32 undef, metadata !2277, metadata !DIExpression(DW_OP_constu, 8192, DW_OP_or, DW_OP_stack_value)), !dbg !2281
  %28 = shl i32 %2, 16, !dbg !2301
  %29 = or i32 %28, %25, !dbg !2300
  %30 = or i32 %29, %27, !dbg !2302
  %31 = or i32 %30, %24, !dbg !2302
  %32 = or i32 %31, 8192, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %32, metadata !2277, metadata !DIExpression()), !dbg !2281
  store volatile i32 %32, i32* inttoptr (i32 -2096726004 to i32*), align 4, !dbg !2303
  %33 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2304
  %34 = and i32 %33, -4096, !dbg !2304
  store volatile i32 %34, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2304
  %35 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2305
  %36 = or i32 %35, %3, !dbg !2305
  store volatile i32 %36, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2305
  %37 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2306
  %38 = and i32 %37, 65535, !dbg !2306
  store volatile i32 %38, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2306
  %39 = shl i32 %4, 16, !dbg !2307
  %40 = load volatile i32, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2308
  %41 = or i32 %40, %39, !dbg !2308
  store volatile i32 %41, i32* inttoptr (i32 -2096726000 to i32*), align 16, !dbg !2308
  %42 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2309
  %43 = and i32 %42, -129, !dbg !2309
  store volatile i32 %43, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2309
  %44 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2310
  %45 = and i32 %44, -7937, !dbg !2310
  store volatile i32 %45, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2310
  %46 = shl i32 %0, 8, !dbg !2311
  %47 = load volatile i32, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2312
  %48 = or i32 %47, %46, !dbg !2312
  store volatile i32 %48, i32* inttoptr (i32 -2096725996 to i32*), align 4, !dbg !2312
  %49 = load volatile i32, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2313
  %50 = or i32 %49, 1, !dbg !2313
  store volatile i32 %50, i32* inttoptr (i32 -2096725992 to i32*), align 8, !dbg !2313
  ret i8 0, !dbg !2314
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2319, metadata !DIExpression()), !dbg !2320
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2321
  tail call void asm sideeffect "dsb", ""() #16, !dbg !2322, !srcloc !2323
  tail call void asm sideeffect "isb", ""() #16, !dbg !2324, !srcloc !2325
  ret void, !dbg !2326
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !2327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()), !dbg !2332
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2333
  ret void, !dbg !2334
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2335 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #16, !dbg !2340, !srcloc !2347
  call void @llvm.dbg.value(metadata i32 %1, metadata !2344, metadata !DIExpression()) #16, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()), !dbg !2349
  tail call void asm sideeffect "cpsid i", "~{memory}"() #16, !dbg !2350, !srcloc !2353
  ret i32 %1, !dbg !2354
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2355 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()) #16, !dbg !2362
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #16, !dbg !2365, !srcloc !2366
  ret void, !dbg !2367
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2375
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
  ], !dbg !2376

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2375
  %4 = trunc i32 %1 to i8, !dbg !2377
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2378
  br label %5, !dbg !2379

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2375
  ret i32 %6, !dbg !2380
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2381 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2383, metadata !DIExpression()), !dbg !2385
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %1, metadata !2384, metadata !DIExpression()), !dbg !2385
  %2 = lshr i32 %1, 13, !dbg !2387
  %3 = and i32 %2, 7, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %3, metadata !2384, metadata !DIExpression()), !dbg !2385
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %4, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 %4, metadata !2383, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2385
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2390
  %6 = load i32, i32* %5, align 4, !dbg !2390
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2390
  %8 = load i32, i32* %7, align 4, !dbg !2390
  %9 = and i32 %4, -2048, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %9, metadata !2383, metadata !DIExpression()), !dbg !2385
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2392
  %10 = or i32 %9, %8, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %10, metadata !2383, metadata !DIExpression()), !dbg !2385
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2394
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2395
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2396
  tail call void @SystemCoreClockUpdate() #15, !dbg !2397
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2398
  %13 = udiv i32 %12, 1000, !dbg !2399
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !2400
  ret void, !dbg !2401
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !2402 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2403
  ret i32 %1, !dbg !2404
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !2405 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2406
  ret i32 %1, !dbg !2407
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !2408 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2412
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2411, metadata !DIExpression()), !dbg !2414
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2415
  store volatile i32 %3, i32* %1, align 4, !dbg !2416
  %4 = load volatile i32, i32* %1, align 4, !dbg !2417
  %5 = lshr i32 %4, 28, !dbg !2418
  %6 = and i32 %5, 3, !dbg !2419
  store volatile i32 %6, i32* %1, align 4, !dbg !2420
  %7 = load volatile i32, i32* %1, align 4, !dbg !2421
  %8 = icmp eq i32 %7, 0, !dbg !2423
  br i1 %8, label %9, label %22, !dbg !2424

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2425
  store volatile i32 %10, i32* %1, align 4, !dbg !2427
  %11 = load volatile i32, i32* %1, align 4, !dbg !2428
  %12 = and i32 %11, -16777217, !dbg !2429
  store volatile i32 %12, i32* %1, align 4, !dbg !2430
  %13 = load volatile i32, i32* %1, align 4, !dbg !2431
  %14 = or i32 %13, 536870912, !dbg !2432
  store volatile i32 %14, i32* %1, align 4, !dbg !2433
  %15 = load volatile i32, i32* %1, align 4, !dbg !2434
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2435
  br label %16, !dbg !2436

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2437
  store volatile i32 %17, i32* %1, align 4, !dbg !2439
  %18 = load volatile i32, i32* %1, align 4, !dbg !2440
  %19 = and i32 %18, 134217728, !dbg !2441
  store volatile i32 %19, i32* %1, align 4, !dbg !2442
  %20 = load volatile i32, i32* %1, align 4, !dbg !2443
  %21 = icmp eq i32 %20, 0, !dbg !2444
  br i1 %21, label %16, label %22, !dbg !2445, !llvm.loop !2446

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2448
  ret void, !dbg !2448
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !2449 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2456, metadata !DIExpression()), !dbg !2457
  %2 = bitcast i8* %0 to i32*, !dbg !2458
  %3 = load volatile i32, i32* %2, align 4, !dbg !2459
  ret i32 %3, !dbg !2460
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %1, metadata !2466, metadata !DIExpression()), !dbg !2467
  %3 = bitcast i8* %0 to i32*, !dbg !2468
  store volatile i32 %1, i32* %3, align 4, !dbg !2469
  ret void, !dbg !2470
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !2471 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2475, metadata !DIExpression()), !dbg !2478
  %3 = bitcast i32* %2 to i8*, !dbg !2479
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2479
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2476, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2477, metadata !DIExpression()), !dbg !2478
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2481
  store volatile i32 %4, i32* %2, align 4, !dbg !2482
  %5 = load volatile i32, i32* %2, align 4, !dbg !2483
  %6 = lshr i32 %5, 28, !dbg !2484
  %7 = and i32 %6, 3, !dbg !2485
  store volatile i32 %7, i32* %2, align 4, !dbg !2486
  %8 = load volatile i32, i32* %2, align 4, !dbg !2487
  %9 = icmp eq i32 %8, 3, !dbg !2489
  br i1 %9, label %38, label %10, !dbg !2490

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2491
  store volatile i32 %11, i32* %2, align 4, !dbg !2493
  %12 = load volatile i32, i32* %2, align 4, !dbg !2494
  %13 = and i32 %12, -262145, !dbg !2495
  store volatile i32 %13, i32* %2, align 4, !dbg !2496
  %14 = load volatile i32, i32* %2, align 4, !dbg !2497
  %15 = and i32 %14, -16777217, !dbg !2498
  store volatile i32 %15, i32* %2, align 4, !dbg !2499
  %16 = load volatile i32, i32* %2, align 4, !dbg !2500
  store volatile i32 %16, i32* %2, align 4, !dbg !2501
  %17 = load volatile i32, i32* %2, align 4, !dbg !2502
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2503
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2504
  store volatile i32 %18, i32* %2, align 4, !dbg !2505
  %19 = load volatile i32, i32* %2, align 4, !dbg !2506
  %20 = and i32 %19, -805306369, !dbg !2507
  store volatile i32 %20, i32* %2, align 4, !dbg !2508
  %21 = load volatile i32, i32* %2, align 4, !dbg !2509
  %22 = and i32 %21, -16777217, !dbg !2510
  store volatile i32 %22, i32* %2, align 4, !dbg !2511
  %23 = load volatile i32, i32* %2, align 4, !dbg !2512
  %24 = or i32 %23, 805306368, !dbg !2513
  store volatile i32 %24, i32* %2, align 4, !dbg !2514
  %25 = load volatile i32, i32* %2, align 4, !dbg !2515
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2516
  br label %26, !dbg !2517

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2518
  store volatile i32 %27, i32* %2, align 4, !dbg !2520
  %28 = load volatile i32, i32* %2, align 4, !dbg !2521
  %29 = and i32 %28, 67108864, !dbg !2522
  store volatile i32 %29, i32* %2, align 4, !dbg !2523
  %30 = load volatile i32, i32* %2, align 4, !dbg !2524
  %31 = icmp eq i32 %30, 0, !dbg !2525
  br i1 %31, label %26, label %32, !dbg !2526, !llvm.loop !2527

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2529
  store volatile i32 %33, i32* %2, align 4, !dbg !2530
  %34 = load volatile i32, i32* %2, align 4, !dbg !2531
  %35 = and i32 %34, -262145, !dbg !2532
  store volatile i32 %35, i32* %2, align 4, !dbg !2533
  %36 = load volatile i32, i32* %2, align 4, !dbg !2534
  %37 = and i32 %36, -16777217, !dbg !2535
  store volatile i32 %37, i32* %2, align 4, !dbg !2536
  br label %38, !dbg !2537

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2538
  store volatile i32 %39, i32* %2, align 4, !dbg !2539
  %40 = icmp eq i8 %0, 0, !dbg !2540
  %41 = load volatile i32, i32* %2, align 4, !dbg !2542
  br i1 %40, label %44, label %42, !dbg !2543

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2544
  store volatile i32 %43, i32* %2, align 4, !dbg !2546
  br label %45, !dbg !2547

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2548
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2550
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2552
  ret void, !dbg !2552
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !2553 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2557
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2557
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2555, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2556, metadata !DIExpression()), !dbg !2559
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2560
  store volatile i32 %3, i32* %1, align 4, !dbg !2561
  %4 = load volatile i32, i32* %1, align 4, !dbg !2562
  %5 = and i32 %4, -805306369, !dbg !2563
  store volatile i32 %5, i32* %1, align 4, !dbg !2564
  %6 = load volatile i32, i32* %1, align 4, !dbg !2565
  %7 = and i32 %6, -16777217, !dbg !2566
  store volatile i32 %7, i32* %1, align 4, !dbg !2567
  %8 = load volatile i32, i32* %1, align 4, !dbg !2568
  store volatile i32 %8, i32* %1, align 4, !dbg !2569
  %9 = load volatile i32, i32* %1, align 4, !dbg !2570
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2571
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2572
  store volatile i32 %10, i32* %1, align 4, !dbg !2573
  %11 = load volatile i32, i32* %1, align 4, !dbg !2574
  %12 = and i32 %11, -262145, !dbg !2575
  store volatile i32 %12, i32* %1, align 4, !dbg !2576
  %13 = load volatile i32, i32* %1, align 4, !dbg !2577
  %14 = and i32 %13, -16777217, !dbg !2578
  store volatile i32 %14, i32* %1, align 4, !dbg !2579
  %15 = load volatile i32, i32* %1, align 4, !dbg !2580
  store volatile i32 %15, i32* %1, align 4, !dbg !2581
  %16 = load volatile i32, i32* %1, align 4, !dbg !2582
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2584
  ret void, !dbg !2584
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2585 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2589
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2587, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2588, metadata !DIExpression()), !dbg !2591
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2592
  store volatile i32 %3, i32* %1, align 4, !dbg !2593
  %4 = load volatile i32, i32* %1, align 4, !dbg !2594
  %5 = and i32 %4, -8, !dbg !2595
  store volatile i32 %5, i32* %1, align 4, !dbg !2596
  %6 = load volatile i32, i32* %1, align 4, !dbg !2597
  store volatile i32 %6, i32* %1, align 4, !dbg !2598
  %7 = load volatile i32, i32* %1, align 4, !dbg !2599
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2600
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2601
  store volatile i32 %8, i32* %1, align 4, !dbg !2602
  %9 = load volatile i32, i32* %1, align 4, !dbg !2603
  %10 = and i32 %9, -49153, !dbg !2604
  store volatile i32 %10, i32* %1, align 4, !dbg !2605
  %11 = load volatile i32, i32* %1, align 4, !dbg !2606
  store volatile i32 %11, i32* %1, align 4, !dbg !2607
  %12 = load volatile i32, i32* %1, align 4, !dbg !2608
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2609
  br label %13, !dbg !2610

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2611
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2612
  %16 = icmp eq i32 %14, %15, !dbg !2613
  br i1 %16, label %17, label %13, !dbg !2610, !llvm.loop !2614

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2616
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2617
  tail call void @SystemCoreClockUpdate() #15, !dbg !2618
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2619
  %20 = udiv i32 %19, 1000, !dbg !2620
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2622
  ret void, !dbg !2622
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2623 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2627
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2626, metadata !DIExpression()), !dbg !2629
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2630
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2631
  store volatile i32 %3, i32* %1, align 4, !dbg !2632
  %4 = load volatile i32, i32* %1, align 4, !dbg !2633
  %5 = and i32 %4, -49153, !dbg !2634
  store volatile i32 %5, i32* %1, align 4, !dbg !2635
  %6 = load volatile i32, i32* %1, align 4, !dbg !2636
  %7 = or i32 %6, 16384, !dbg !2637
  store volatile i32 %7, i32* %1, align 4, !dbg !2638
  %8 = load volatile i32, i32* %1, align 4, !dbg !2639
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2640
  br label %9, !dbg !2641

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2642
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2643
  %12 = icmp eq i32 %10, %11, !dbg !2644
  br i1 %12, label %13, label %9, !dbg !2641, !llvm.loop !2645

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2647
  store volatile i32 %14, i32* %1, align 4, !dbg !2648
  %15 = load volatile i32, i32* %1, align 4, !dbg !2649
  %16 = and i32 %15, -1009, !dbg !2650
  store volatile i32 %16, i32* %1, align 4, !dbg !2651
  %17 = load volatile i32, i32* %1, align 4, !dbg !2652
  %18 = or i32 %17, 128, !dbg !2653
  store volatile i32 %18, i32* %1, align 4, !dbg !2654
  %19 = load volatile i32, i32* %1, align 4, !dbg !2655
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2656
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2657
  store volatile i32 %20, i32* %1, align 4, !dbg !2658
  %21 = load volatile i32, i32* %1, align 4, !dbg !2659
  %22 = and i32 %21, -8, !dbg !2660
  store volatile i32 %22, i32* %1, align 4, !dbg !2661
  %23 = load volatile i32, i32* %1, align 4, !dbg !2662
  %24 = or i32 %23, 4, !dbg !2663
  store volatile i32 %24, i32* %1, align 4, !dbg !2664
  %25 = load volatile i32, i32* %1, align 4, !dbg !2665
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2666
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2667
  tail call void @SystemCoreClockUpdate() #15, !dbg !2668
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2669
  %27 = udiv i32 %26, 1000, !dbg !2670
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2671
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2672
  ret void, !dbg !2672
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2673 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2677
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2677
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2675, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2676, metadata !DIExpression()), !dbg !2679
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2680
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2681
  store volatile i32 %3, i32* %1, align 4, !dbg !2682
  %4 = load volatile i32, i32* %1, align 4, !dbg !2683
  %5 = and i32 %4, -49153, !dbg !2684
  store volatile i32 %5, i32* %1, align 4, !dbg !2685
  %6 = load volatile i32, i32* %1, align 4, !dbg !2686
  %7 = or i32 %6, 32768, !dbg !2687
  store volatile i32 %7, i32* %1, align 4, !dbg !2688
  %8 = load volatile i32, i32* %1, align 4, !dbg !2689
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2690
  br label %9, !dbg !2691

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2692
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2693
  %12 = icmp eq i32 %10, %11, !dbg !2694
  br i1 %12, label %13, label %9, !dbg !2691, !llvm.loop !2695

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2697
  store volatile i32 %14, i32* %1, align 4, !dbg !2698
  %15 = load volatile i32, i32* %1, align 4, !dbg !2699
  %16 = and i32 %15, -1009, !dbg !2700
  store volatile i32 %16, i32* %1, align 4, !dbg !2701
  %17 = load volatile i32, i32* %1, align 4, !dbg !2702
  %18 = or i32 %17, 32, !dbg !2703
  store volatile i32 %18, i32* %1, align 4, !dbg !2704
  %19 = load volatile i32, i32* %1, align 4, !dbg !2705
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2706
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2707
  store volatile i32 %20, i32* %1, align 4, !dbg !2708
  %21 = load volatile i32, i32* %1, align 4, !dbg !2709
  %22 = and i32 %21, -8, !dbg !2710
  store volatile i32 %22, i32* %1, align 4, !dbg !2711
  %23 = load volatile i32, i32* %1, align 4, !dbg !2712
  %24 = or i32 %23, 4, !dbg !2713
  store volatile i32 %24, i32* %1, align 4, !dbg !2714
  %25 = load volatile i32, i32* %1, align 4, !dbg !2715
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2716
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2717
  tail call void @SystemCoreClockUpdate() #15, !dbg !2718
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2719
  %27 = udiv i32 %26, 1000, !dbg !2720
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2721
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2722
  ret void, !dbg !2722
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2723 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2727
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @cmnPLL1ON() #14, !dbg !2730
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2731
  store volatile i32 %3, i32* %1, align 4, !dbg !2732
  %4 = load volatile i32, i32* %1, align 4, !dbg !2733
  %5 = and i32 %4, -49153, !dbg !2734
  store volatile i32 %5, i32* %1, align 4, !dbg !2735
  %6 = load volatile i32, i32* %1, align 4, !dbg !2736
  store volatile i32 %6, i32* %1, align 4, !dbg !2737
  %7 = load volatile i32, i32* %1, align 4, !dbg !2738
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2739
  br label %8, !dbg !2740

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2741
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2742
  %11 = icmp eq i32 %9, %10, !dbg !2743
  br i1 %11, label %12, label %8, !dbg !2740, !llvm.loop !2744

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2746
  store volatile i32 %13, i32* %1, align 4, !dbg !2747
  %14 = load volatile i32, i32* %1, align 4, !dbg !2748
  %15 = and i32 %14, -8, !dbg !2749
  store volatile i32 %15, i32* %1, align 4, !dbg !2750
  %16 = load volatile i32, i32* %1, align 4, !dbg !2751
  %17 = or i32 %16, 2, !dbg !2752
  store volatile i32 %17, i32* %1, align 4, !dbg !2753
  %18 = load volatile i32, i32* %1, align 4, !dbg !2754
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2755
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2756
  tail call void @SystemCoreClockUpdate() #15, !dbg !2757
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2758
  %20 = udiv i32 %19, 1000, !dbg !2759
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2760
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2761
  ret void, !dbg !2761
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !2762 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2766
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2764, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2765, metadata !DIExpression()), !dbg !2768
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2769
  store volatile i32 %3, i32* %1, align 4, !dbg !2770
  %4 = load volatile i32, i32* %1, align 4, !dbg !2771
  %5 = and i32 %4, -24577, !dbg !2772
  store volatile i32 %5, i32* %1, align 4, !dbg !2773
  %6 = load volatile i32, i32* %1, align 4, !dbg !2774
  store volatile i32 %6, i32* %1, align 4, !dbg !2775
  %7 = load volatile i32, i32* %1, align 4, !dbg !2776
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2778
  ret void, !dbg !2778
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2779 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %1, metadata !2783, metadata !DIExpression()), !dbg !2785
  ret i32 %1, !dbg !2786
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2787 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2790
  %2 = and i32 %1, 1, !dbg !2792
  %3 = icmp eq i32 %2, 0, !dbg !2792
  br i1 %3, label %7, label %4, !dbg !2793

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2794
  %6 = and i32 %5, 255, !dbg !2796
  call void @llvm.dbg.value(metadata i32 %5, metadata !2789, metadata !DIExpression()), !dbg !2797
  br label %7, !dbg !2798

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2799
  ret i32 %8, !dbg !2800
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8 %1, metadata !2807, metadata !DIExpression()), !dbg !2809
  %3 = icmp eq i32 %0, 0, !dbg !2810
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %4, metadata !2808, metadata !DIExpression()), !dbg !2809
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2811

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2812
  %9 = and i32 %8, 32, !dbg !2813
  %10 = icmp eq i32 %9, 0, !dbg !2814
  br i1 %10, label %7, label %11, !dbg !2811, !llvm.loop !2815

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2817
  %13 = inttoptr i32 %4 to i32*, !dbg !2818
  store volatile i32 %12, i32* %13, align 65536, !dbg !2819
  ret void, !dbg !2820
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2821 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2825, metadata !DIExpression()), !dbg !2828
  %2 = icmp eq i32 %0, 0, !dbg !2829
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %3, metadata !2826, metadata !DIExpression()), !dbg !2828
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2830

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2831
  %8 = and i32 %7, 1, !dbg !2832
  %9 = icmp eq i32 %8, 0, !dbg !2833
  br i1 %9, label %6, label %10, !dbg !2830, !llvm.loop !2834

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2836
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2836
  %13 = trunc i32 %12 to i8, !dbg !2836
  call void @llvm.dbg.value(metadata i8 %13, metadata !2827, metadata !DIExpression()), !dbg !2828
  ret i8 %13, !dbg !2837
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2838 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2842, metadata !DIExpression()), !dbg !2845
  %2 = icmp eq i32 %0, 0, !dbg !2846
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2846
  call void @llvm.dbg.value(metadata i32 %3, metadata !2843, metadata !DIExpression()), !dbg !2845
  %4 = or i32 %3, 20, !dbg !2847
  %5 = inttoptr i32 %4 to i32*, !dbg !2847
  %6 = load volatile i32, i32* %5, align 4, !dbg !2847
  %7 = and i32 %6, 1, !dbg !2849
  %8 = icmp eq i32 %7, 0, !dbg !2849
  br i1 %8, label %13, label %9, !dbg !2850

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2851
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2851
  %12 = and i32 %11, 255, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %11, metadata !2844, metadata !DIExpression()), !dbg !2845
  br label %13, !dbg !2854

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2855
  ret i32 %14, !dbg !2856
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !2863
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2864

2:                                                ; preds = %1
  br label %3, !dbg !2865

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2869
  %6 = or i32 %5, 1, !dbg !2869
  store volatile i32 %6, i32* %4, align 4, !dbg !2869
  br label %7, !dbg !2870

7:                                                ; preds = %3, %1
  ret void, !dbg !2870
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2877, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 %1, metadata !2878, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i16 %2, metadata !2879, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i16 %3, metadata !2880, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i16 %4, metadata !2881, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2883, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2890, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2892, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i32 0, metadata !2893, metadata !DIExpression()), !dbg !2894
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !2897
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2898
  %7 = icmp eq i32 %0, 1, !dbg !2899
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %8, metadata !2883, metadata !DIExpression()), !dbg !2894
  %9 = or i32 %8, 36, !dbg !2900
  %10 = inttoptr i32 %9 to i32*, !dbg !2900
  store volatile i32 3, i32* %10, align 4, !dbg !2901
  %11 = or i32 %8, 12, !dbg !2902
  %12 = inttoptr i32 %11 to i32*, !dbg !2902
  %13 = load volatile i32, i32* %12, align 4, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %13, metadata !2885, metadata !DIExpression()), !dbg !2894
  %14 = or i32 %13, 128, !dbg !2903
  store volatile i32 %14, i32* %12, align 4, !dbg !2904
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2905
  %16 = udiv i32 %15, %1, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %16, metadata !2884, metadata !DIExpression()), !dbg !2894
  %17 = lshr i32 %16, 8, !dbg !2907
  %18 = add nuw nsw i32 %17, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %18, metadata !2886, metadata !DIExpression()), !dbg !2894
  %19 = udiv i32 %16, %18, !dbg !2909
  %20 = add i32 %19, -1, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %20, metadata !2887, metadata !DIExpression()), !dbg !2894
  %21 = icmp eq i32 %20, 3, !dbg !2912
  %22 = lshr i32 %20, 1, !dbg !2914
  %23 = add nsw i32 %22, -1, !dbg !2914
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %24, metadata !2888, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 undef, metadata !2893, metadata !DIExpression()), !dbg !2894
  %25 = mul i32 %15, 10, !dbg !2915
  %26 = udiv i32 %25, %1, !dbg !2916
  %27 = udiv i32 %26, %16, !dbg !2917
  %28 = mul i32 %19, -10, !dbg !2918
  %29 = add i32 %27, %28, !dbg !2919
  %30 = urem i32 %29, 10, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %30, metadata !2889, metadata !DIExpression()), !dbg !2894
  %31 = and i32 %18, 255, !dbg !2921
  %32 = inttoptr i32 %8 to i32*, !dbg !2922
  store volatile i32 %31, i32* %32, align 65536, !dbg !2923
  %33 = lshr i32 %18, 8, !dbg !2924
  %34 = and i32 %33, 255, !dbg !2925
  %35 = or i32 %8, 4, !dbg !2926
  %36 = inttoptr i32 %35 to i32*, !dbg !2926
  store volatile i32 %34, i32* %36, align 4, !dbg !2927
  %37 = or i32 %8, 40, !dbg !2928
  %38 = inttoptr i32 %37 to i32*, !dbg !2928
  store volatile i32 %20, i32* %38, align 8, !dbg !2929
  %39 = or i32 %8, 44, !dbg !2930
  %40 = inttoptr i32 %39 to i32*, !dbg !2930
  store volatile i32 %24, i32* %40, align 4, !dbg !2931
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2932
  %42 = load i16, i16* %41, align 2, !dbg !2932
  %43 = zext i16 %42 to i32, !dbg !2932
  %44 = or i32 %8, 88, !dbg !2933
  %45 = inttoptr i32 %44 to i32*, !dbg !2933
  store volatile i32 %43, i32* %45, align 8, !dbg !2934
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2935
  %47 = load i16, i16* %46, align 2, !dbg !2935
  %48 = zext i16 %47 to i32, !dbg !2935
  %49 = or i32 %8, 84, !dbg !2936
  %50 = inttoptr i32 %49 to i32*, !dbg !2936
  store volatile i32 %48, i32* %50, align 4, !dbg !2937
  store volatile i32 %13, i32* %12, align 4, !dbg !2938
  %51 = or i32 %8, 8, !dbg !2939
  %52 = inttoptr i32 %51 to i32*, !dbg !2939
  store volatile i32 71, i32* %52, align 8, !dbg !2940
  %53 = inttoptr i32 %11 to i16*, !dbg !2941
  %54 = load volatile i16, i16* %53, align 4, !dbg !2941
  call void @llvm.dbg.value(metadata i16 %54, metadata !2882, metadata !DIExpression()), !dbg !2894
  %55 = and i16 %54, -64, !dbg !2942
  call void @llvm.dbg.value(metadata i16 %54, metadata !2882, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2894
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2894
  %56 = and i16 %2, -61, !dbg !2943
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2894
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2894
  %57 = and i16 %4, -57, !dbg !2944
  call void @llvm.dbg.value(metadata i16 undef, metadata !2882, metadata !DIExpression()), !dbg !2894
  %58 = or i16 %56, %3, !dbg !2943
  %59 = or i16 %58, %57, !dbg !2944
  %60 = or i16 %59, %55, !dbg !2945
  call void @llvm.dbg.value(metadata i16 %60, metadata !2882, metadata !DIExpression()), !dbg !2894
  store volatile i16 %60, i16* %53, align 4, !dbg !2946
  ret void, !dbg !2947
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %1, metadata !2953, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32* %2, metadata !2954, metadata !DIExpression()), !dbg !2955
  %4 = icmp eq i32 %0, 0, !dbg !2956
  %5 = icmp eq i32 %1, 0, !dbg !2958
  br i1 %4, label %6, label %16, !dbg !2959

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2960

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2962
  %9 = zext i16 %8 to i32, !dbg !2962
  br label %26, !dbg !2965

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2966
  %12 = zext i16 %11 to i32, !dbg !2966
  store i32 %12, i32* %2, align 4, !dbg !2968
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2969
  %14 = zext i16 %13 to i32, !dbg !2969
  %15 = sub nsw i32 %12, %14, !dbg !2970
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2971

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2973
  %19 = zext i16 %18 to i32, !dbg !2973
  br label %26, !dbg !2976

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2977
  %22 = zext i16 %21 to i32, !dbg !2977
  store i32 %22, i32* %2, align 4, !dbg !2979
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2980
  %24 = zext i16 %23 to i32, !dbg !2980
  %25 = sub nsw i32 %22, %24, !dbg !2981
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2958
  ret void, !dbg !2982
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2987, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 %2, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 0, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 0, metadata !2990, metadata !DIExpression()), !dbg !2991
  %4 = icmp eq i32 %2, 0, !dbg !2992
  br i1 %4, label %15, label %5, !dbg !2995

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2990, metadata !DIExpression()), !dbg !2991
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2996

7:                                                ; preds = %5
  br label %8, !dbg !2998

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3002
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3002
  store i8 %10, i8* %11, align 1, !dbg !3002
  br label %12, !dbg !3003

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %13, metadata !2990, metadata !DIExpression()), !dbg !2991
  %14 = icmp eq i32 %13, %2, !dbg !2992
  br i1 %14, label %15, label %5, !dbg !2995, !llvm.loop !3004

15:                                               ; preds = %12, %3
  ret void, !dbg !3006
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 %2, metadata !3015, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3017
  %4 = icmp eq i32 %2, 0, !dbg !3018
  br i1 %4, label %16, label %5, !dbg !3021

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3016, metadata !DIExpression()), !dbg !3017
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3022

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3024
  %9 = load i8, i8* %8, align 1, !dbg !3024
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3027
  br label %13, !dbg !3028

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3029
  %12 = load i8, i8* %11, align 1, !dbg !3029
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3032
  br label %13, !dbg !3033

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3034
  call void @llvm.dbg.value(metadata i32 %14, metadata !3016, metadata !DIExpression()), !dbg !3017
  %15 = icmp eq i32 %14, %2, !dbg !3018
  br i1 %15, label %16, label %5, !dbg !3021, !llvm.loop !3035

16:                                               ; preds = %13, %3
  ret void, !dbg !3037
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3038 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8* %1, metadata !3043, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %2, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %3, metadata !3045, metadata !DIExpression()), !dbg !3046
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3047

5:                                                ; preds = %4
  br label %6, !dbg !3048

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3052
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3052
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3052
  br label %9, !dbg !3053

9:                                                ; preds = %6, %4
  ret void, !dbg !3053
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3058, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i8* %1, metadata !3059, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %2, metadata !3060, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %3, metadata !3061, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %4, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i32 %5, metadata !3063, metadata !DIExpression()), !dbg !3064
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3065

7:                                                ; preds = %6
  br label %8, !dbg !3066

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3070
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3070
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3070
  br label %11, !dbg !3071

11:                                               ; preds = %8, %6
  ret void, !dbg !3071
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3072 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3077, metadata !DIExpression()), !dbg !3078
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3079

3:                                                ; preds = %2
  br label %4, !dbg !3080

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3084
  br label %6, !dbg !3085

6:                                                ; preds = %4, %2
  ret void, !dbg !3085
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3089, metadata !DIExpression()), !dbg !3090
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3091

3:                                                ; preds = %2
  br label %4, !dbg !3092

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3096
  br label %6, !dbg !3097

6:                                                ; preds = %4, %2
  ret void, !dbg !3097
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3098 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3100, metadata !DIExpression()), !dbg !3104
  %2 = icmp eq i32 %0, 0, !dbg !3105
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3105
  call void @llvm.dbg.value(metadata i32 %3, metadata !3101, metadata !DIExpression()), !dbg !3104
  %4 = or i32 %3, 12, !dbg !3106
  %5 = inttoptr i32 %4 to i32*, !dbg !3106
  %6 = load volatile i32, i32* %5, align 4, !dbg !3106
  call void @llvm.dbg.value(metadata i32 %6, metadata !3103, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3104
  store volatile i32 191, i32* %5, align 4, !dbg !3107
  %7 = or i32 %3, 8, !dbg !3108
  %8 = inttoptr i32 %7 to i32*, !dbg !3108
  %9 = load volatile i32, i32* %8, align 8, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %9, metadata !3102, metadata !DIExpression()), !dbg !3104
  %10 = and i32 %9, 65327, !dbg !3109
  %11 = or i32 %10, 208, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %9, metadata !3102, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3104
  store volatile i32 %11, i32* %8, align 8, !dbg !3110
  %12 = or i32 %3, 68, !dbg !3111
  %13 = inttoptr i32 %12 to i32*, !dbg !3111
  store volatile i32 0, i32* %13, align 4, !dbg !3112
  store volatile i32 0, i32* %5, align 4, !dbg !3113
  %14 = or i32 %3, 16, !dbg !3114
  %15 = inttoptr i32 %14 to i32*, !dbg !3114
  store volatile i32 2, i32* %15, align 16, !dbg !3115
  %16 = and i32 %6, 65535, !dbg !3116
  store volatile i32 %16, i32* %5, align 4, !dbg !3117
  ret void, !dbg !3118
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !3119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %1, metadata !3124, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %2, metadata !3125, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 %3, metadata !3126, metadata !DIExpression()), !dbg !3130
  %5 = icmp eq i32 %0, 0, !dbg !3131
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3131
  call void @llvm.dbg.value(metadata i32 %6, metadata !3127, metadata !DIExpression()), !dbg !3130
  %7 = or i32 %6, 12, !dbg !3132
  %8 = inttoptr i32 %7 to i32*, !dbg !3132
  %9 = load volatile i32, i32* %8, align 4, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %9, metadata !3129, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3130
  store volatile i32 191, i32* %8, align 4, !dbg !3133
  %10 = zext i8 %1 to i32, !dbg !3134
  %11 = or i32 %6, 16, !dbg !3135
  %12 = inttoptr i32 %11 to i32*, !dbg !3135
  store volatile i32 %10, i32* %12, align 16, !dbg !3136
  %13 = or i32 %6, 20, !dbg !3137
  %14 = inttoptr i32 %13 to i32*, !dbg !3137
  store volatile i32 %10, i32* %14, align 4, !dbg !3138
  %15 = zext i8 %2 to i32, !dbg !3139
  %16 = or i32 %6, 24, !dbg !3140
  %17 = inttoptr i32 %16 to i32*, !dbg !3140
  store volatile i32 %15, i32* %17, align 8, !dbg !3141
  %18 = or i32 %6, 28, !dbg !3142
  %19 = inttoptr i32 %18 to i32*, !dbg !3142
  store volatile i32 %15, i32* %19, align 4, !dbg !3143
  %20 = or i32 %6, 8, !dbg !3144
  %21 = inttoptr i32 %20 to i32*, !dbg !3144
  %22 = load volatile i32, i32* %21, align 8, !dbg !3144
  call void @llvm.dbg.value(metadata i32 %22, metadata !3128, metadata !DIExpression()), !dbg !3130
  %23 = and i32 %22, 65525, !dbg !3145
  %24 = or i32 %23, 10, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %22, metadata !3128, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3130
  store volatile i32 %24, i32* %21, align 8, !dbg !3146
  %25 = and i32 %9, 65535, !dbg !3147
  store volatile i32 %25, i32* %8, align 4, !dbg !3148
  %26 = zext i8 %3 to i32, !dbg !3149
  %27 = or i32 %6, 64, !dbg !3150
  %28 = inttoptr i32 %27 to i32*, !dbg !3150
  store volatile i32 %26, i32* %28, align 64, !dbg !3151
  %29 = or i32 %6, 68, !dbg !3152
  %30 = inttoptr i32 %29 to i32*, !dbg !3152
  store volatile i32 1, i32* %30, align 4, !dbg !3153
  ret void, !dbg !3154
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3157, metadata !DIExpression()), !dbg !3160
  %2 = icmp eq i32 %0, 0, !dbg !3161
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %3, metadata !3158, metadata !DIExpression()), !dbg !3160
  %4 = or i32 %3, 12, !dbg !3162
  %5 = inttoptr i32 %4 to i32*, !dbg !3162
  %6 = load volatile i32, i32* %5, align 4, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %6, metadata !3159, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3160
  store volatile i32 191, i32* %5, align 4, !dbg !3163
  %7 = or i32 %3, 8, !dbg !3164
  %8 = inttoptr i32 %7 to i32*, !dbg !3164
  store volatile i32 0, i32* %8, align 8, !dbg !3165
  store volatile i32 0, i32* %5, align 4, !dbg !3166
  %9 = and i32 %6, 65535, !dbg !3167
  store volatile i32 %9, i32* %5, align 4, !dbg !3168
  ret void, !dbg !3169
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !3170 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3174
  %2 = icmp eq i32 %0, 0, !dbg !3175
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3175
  call void @llvm.dbg.value(metadata i32 %3, metadata !3173, metadata !DIExpression()), !dbg !3174
  %4 = or i32 %3, 12, !dbg !3176
  %5 = inttoptr i32 %4 to i32*, !dbg !3176
  store volatile i32 191, i32* %5, align 4, !dbg !3177
  %6 = or i32 %3, 8, !dbg !3178
  %7 = inttoptr i32 %6 to i32*, !dbg !3178
  store volatile i32 16, i32* %7, align 8, !dbg !3179
  %8 = or i32 %3, 16, !dbg !3180
  %9 = inttoptr i32 %8 to i32*, !dbg !3180
  store volatile i32 0, i32* %9, align 16, !dbg !3181
  %10 = or i32 %3, 24, !dbg !3182
  %11 = inttoptr i32 %10 to i32*, !dbg !3182
  store volatile i32 0, i32* %11, align 8, !dbg !3183
  store volatile i32 128, i32* %5, align 4, !dbg !3184
  %12 = inttoptr i32 %3 to i32*, !dbg !3185
  store volatile i32 0, i32* %12, align 65536, !dbg !3186
  %13 = or i32 %3, 4, !dbg !3187
  %14 = inttoptr i32 %13 to i32*, !dbg !3187
  store volatile i32 0, i32* %14, align 4, !dbg !3188
  store volatile i32 0, i32* %5, align 4, !dbg !3189
  store volatile i32 0, i32* %14, align 4, !dbg !3190
  store volatile i32 0, i32* %7, align 8, !dbg !3191
  store volatile i32 191, i32* %5, align 4, !dbg !3192
  store volatile i32 0, i32* %7, align 8, !dbg !3193
  store volatile i32 0, i32* %5, align 4, !dbg !3194
  store volatile i32 0, i32* %9, align 16, !dbg !3195
  %15 = or i32 %3, 28, !dbg !3196
  %16 = inttoptr i32 %15 to i32*, !dbg !3196
  store volatile i32 0, i32* %16, align 4, !dbg !3197
  %17 = or i32 %3, 36, !dbg !3198
  %18 = inttoptr i32 %17 to i32*, !dbg !3198
  store volatile i32 0, i32* %18, align 4, !dbg !3199
  %19 = or i32 %3, 40, !dbg !3200
  %20 = inttoptr i32 %19 to i32*, !dbg !3200
  store volatile i32 0, i32* %20, align 8, !dbg !3201
  %21 = or i32 %3, 44, !dbg !3202
  %22 = inttoptr i32 %21 to i32*, !dbg !3202
  store volatile i32 0, i32* %22, align 4, !dbg !3203
  %23 = or i32 %3, 52, !dbg !3204
  %24 = inttoptr i32 %23 to i32*, !dbg !3204
  store volatile i32 0, i32* %24, align 4, !dbg !3205
  %25 = or i32 %3, 60, !dbg !3206
  %26 = inttoptr i32 %25 to i32*, !dbg !3206
  store volatile i32 0, i32* %26, align 4, !dbg !3207
  %27 = or i32 %3, 64, !dbg !3208
  %28 = inttoptr i32 %27 to i32*, !dbg !3208
  store volatile i32 0, i32* %28, align 64, !dbg !3209
  %29 = or i32 %3, 68, !dbg !3210
  %30 = inttoptr i32 %29 to i32*, !dbg !3210
  store volatile i32 0, i32* %30, align 4, !dbg !3211
  %31 = or i32 %3, 72, !dbg !3212
  %32 = inttoptr i32 %31 to i32*, !dbg !3212
  store volatile i32 0, i32* %32, align 8, !dbg !3213
  %33 = or i32 %3, 76, !dbg !3214
  %34 = inttoptr i32 %33 to i32*, !dbg !3214
  store volatile i32 0, i32* %34, align 4, !dbg !3215
  %35 = or i32 %3, 80, !dbg !3216
  %36 = inttoptr i32 %35 to i32*, !dbg !3216
  store volatile i32 0, i32* %36, align 16, !dbg !3217
  %37 = or i32 %3, 84, !dbg !3218
  %38 = inttoptr i32 %37 to i32*, !dbg !3218
  store volatile i32 0, i32* %38, align 4, !dbg !3219
  %39 = or i32 %3, 88, !dbg !3220
  %40 = inttoptr i32 %39 to i32*, !dbg !3220
  store volatile i32 0, i32* %40, align 8, !dbg !3221
  %41 = or i32 %3, 96, !dbg !3222
  %42 = inttoptr i32 %41 to i32*, !dbg !3222
  store volatile i32 0, i32* %42, align 32, !dbg !3223
  ret void, !dbg !3224
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !3225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3227, metadata !DIExpression()), !dbg !3229
  %2 = icmp eq i32 %0, 0, !dbg !3230
  call void @llvm.dbg.value(metadata i32 undef, metadata !3228, metadata !DIExpression()), !dbg !3229
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3231

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3232
  %7 = and i32 %6, 64, !dbg !3233
  %8 = icmp eq i32 %7, 0, !dbg !3234
  br i1 %8, label %5, label %9, !dbg !3231, !llvm.loop !3235

9:                                                ; preds = %5
  ret void, !dbg !3237
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3238 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3242, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i32 %1, metadata !3243, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* %2, metadata !3244, metadata !DIExpression()), !dbg !3255
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3256
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3245, metadata !DIExpression()), !dbg !3257
  %7 = bitcast i32* %5 to i8*, !dbg !3258
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3258
  call void @llvm.dbg.value(metadata i32* %5, metadata !3254, metadata !DIExpression(DW_OP_deref)), !dbg !3255
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3259
  call void @llvm.va_start(i8* nonnull %6), !dbg !3260
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3261
  %10 = load i32, i32* %9, align 4, !dbg !3261
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3261
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3261
  call void @llvm.va_end(i8* nonnull %6), !dbg !3262
  %13 = load i32, i32* %5, align 4, !dbg !3263
  call void @llvm.dbg.value(metadata i32 %13, metadata !3254, metadata !DIExpression()), !dbg !3255
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3265
  ret void, !dbg !3265
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3266 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3268, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 %1, metadata !3269, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i8* %2, metadata !3270, metadata !DIExpression()), !dbg !3273
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3274
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3274
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3271, metadata !DIExpression()), !dbg !3275
  %7 = bitcast i32* %5 to i8*, !dbg !3276
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3276
  call void @llvm.dbg.value(metadata i32* %5, metadata !3272, metadata !DIExpression(DW_OP_deref)), !dbg !3273
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3277
  call void @llvm.va_start(i8* nonnull %6), !dbg !3278
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3279
  %10 = load i32, i32* %9, align 4, !dbg !3279
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3279
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3279
  call void @llvm.va_end(i8* nonnull %6), !dbg !3280
  %13 = load i32, i32* %5, align 4, !dbg !3281
  call void @llvm.dbg.value(metadata i32 %13, metadata !3272, metadata !DIExpression()), !dbg !3273
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3282
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3283
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3283
  ret void, !dbg !3283
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3284 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3286, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %1, metadata !3287, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %2, metadata !3288, metadata !DIExpression()), !dbg !3291
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3292
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3289, metadata !DIExpression()), !dbg !3293
  %7 = bitcast i32* %5 to i8*, !dbg !3294
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3294
  call void @llvm.dbg.value(metadata i32* %5, metadata !3290, metadata !DIExpression(DW_OP_deref)), !dbg !3291
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3295
  call void @llvm.va_start(i8* nonnull %6), !dbg !3296
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3297
  %10 = load i32, i32* %9, align 4, !dbg !3297
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3297
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3297
  call void @llvm.va_end(i8* nonnull %6), !dbg !3298
  %13 = load i32, i32* %5, align 4, !dbg !3299
  call void @llvm.dbg.value(metadata i32 %13, metadata !3290, metadata !DIExpression()), !dbg !3291
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3300
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3301
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3301
  ret void, !dbg !3301
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3302 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3304, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 %1, metadata !3305, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i8* %2, metadata !3306, metadata !DIExpression()), !dbg !3309
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3310
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3310
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3307, metadata !DIExpression()), !dbg !3311
  %7 = bitcast i32* %5 to i8*, !dbg !3312
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3312
  call void @llvm.dbg.value(metadata i32* %5, metadata !3308, metadata !DIExpression(DW_OP_deref)), !dbg !3309
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3313
  call void @llvm.va_start(i8* nonnull %6), !dbg !3314
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3315
  %10 = load i32, i32* %9, align 4, !dbg !3315
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3315
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3315
  call void @llvm.va_end(i8* nonnull %6), !dbg !3316
  %13 = load i32, i32* %5, align 4, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %13, metadata !3308, metadata !DIExpression()), !dbg !3309
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3318
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3319
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3319
  ret void, !dbg !3319
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %1, metadata !3327, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i8* %2, metadata !3328, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i8* %3, metadata !3329, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %4, metadata !3330, metadata !DIExpression()), !dbg !3331
  ret void, !dbg !3332
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3333 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %1, metadata !3340, metadata !DIExpression()), !dbg !3342
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3343, !range !3345
  %3 = icmp eq i8 %2, 0, !dbg !3343
  br i1 %3, label %5, label %4, !dbg !3346

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3347
  br label %15, !dbg !3349

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3350
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3352
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3353
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3354
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3355
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3356
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3357
  call void @llvm.dbg.value(metadata i32 0, metadata !3338, metadata !DIExpression()), !dbg !3342
  br label %7, !dbg !3358

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3338, metadata !DIExpression()), !dbg !3342
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3360
  store volatile i32 0, i32* %9, align 4, !dbg !3363
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3364
  store volatile i32 0, i32* %10, align 4, !dbg !3365
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3366
  store i32 0, i32* %11, align 4, !dbg !3367
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3368
  store i32 0, i32* %12, align 4, !dbg !3369
  %13 = add nuw nsw i32 %8, 1, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %13, metadata !3338, metadata !DIExpression()), !dbg !3342
  %14 = icmp eq i32 %13, 16, !dbg !3371
  br i1 %14, label %15, label %7, !dbg !3358, !llvm.loop !3372

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3342
  ret i32 %16, !dbg !3374
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3375 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3378
  call void @llvm.dbg.value(metadata i32 %1, metadata !3377, metadata !DIExpression()), !dbg !3379
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3380
  %3 = and i32 %2, -31, !dbg !3380
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3380
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3381
  %5 = or i32 %4, 19, !dbg !3381
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3381
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3382
  %7 = and i32 %6, -31, !dbg !3382
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3382
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3383
  %9 = or i32 %8, 3, !dbg !3383
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3383
  tail call void asm sideeffect "isb", ""() #16, !dbg !3384, !srcloc !3388
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3389
  ret i32 0, !dbg !3390
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3391 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3394
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3395
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3396
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3397
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3398
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3399
  br label %2, !dbg !3400

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3393, metadata !DIExpression()), !dbg !3399
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3402
  store volatile i32 0, i32* %4, align 4, !dbg !3405
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3406
  store volatile i32 0, i32* %5, align 4, !dbg !3407
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3408
  store i32 0, i32* %6, align 4, !dbg !3409
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3410
  store i32 0, i32* %7, align 4, !dbg !3411
  %8 = add nuw nsw i32 %3, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i32 %8, metadata !3393, metadata !DIExpression()), !dbg !3399
  %9 = icmp eq i32 %8, 16, !dbg !3413
  br i1 %9, label %10, label %2, !dbg !3400, !llvm.loop !3414

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3416
  ret i32 0, !dbg !3417
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3418 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3419
  %2 = and i32 %1, 768, !dbg !3421
  %3 = icmp eq i32 %2, 0, !dbg !3421
  br i1 %3, label %8, label %4, !dbg !3422

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3423
  %6 = or i32 %5, 13, !dbg !3423
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3423
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3424
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3425
  br label %8, !dbg !3426

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3427
  ret i32 %9, !dbg !3428
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3429 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3433
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3434
  %3 = and i32 %2, 1, !dbg !3436
  %4 = icmp eq i32 %3, 0, !dbg !3436
  br i1 %4, label %7, label %5, !dbg !3437

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3438
  br label %7, !dbg !3440

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3441
  %9 = and i32 %8, -2, !dbg !3441
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3441
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3442
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3443
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3444
  ret i32 0, !dbg !3445
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3446 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3450, metadata !DIExpression()), !dbg !3451
  %2 = icmp ugt i32 %0, 15, !dbg !3452
  br i1 %2, label %13, label %3, !dbg !3454

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3455
  %5 = load volatile i32, i32* %4, align 4, !dbg !3455
  %6 = and i32 %5, 256, !dbg !3457
  %7 = icmp eq i32 %6, 0, !dbg !3457
  br i1 %7, label %13, label %8, !dbg !3458

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3459
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3461
  %11 = or i32 %10, %9, !dbg !3461
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3461
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3462
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3463
  br label %13, !dbg !3464

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3451
  ret i32 %14, !dbg !3465
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3468, metadata !DIExpression()), !dbg !3469
  %2 = icmp ugt i32 %0, 15, !dbg !3470
  br i1 %2, label %11, label %3, !dbg !3472

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3473
  %5 = xor i32 %4, -1, !dbg !3474
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3475
  %7 = and i32 %6, %5, !dbg !3475
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3475
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3476
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3477
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3478
  store i32 0, i32* %9, align 4, !dbg !3479
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3480
  store i32 0, i32* %10, align 4, !dbg !3481
  br label %11, !dbg !3482

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3469
  ret i32 %12, !dbg !3483
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3484 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3489, metadata !DIExpression()), !dbg !3490
  %2 = icmp ugt i32 %0, 3, !dbg !3491
  br i1 %2, label %13, label %3, !dbg !3493

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3494
  %5 = and i32 %4, -769, !dbg !3494
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3494
  %6 = shl nuw nsw i32 %0, 8, !dbg !3495
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3496
  %8 = or i32 %7, %6, !dbg !3496
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3496
  %9 = icmp eq i32 %0, 0, !dbg !3497
  br i1 %9, label %10, label %11, !dbg !3499

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3500
  br label %11, !dbg !3502

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3503
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3504
  br label %13, !dbg !3505

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3490
  ret i32 %14, !dbg !3506
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3518, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3519, metadata !DIExpression()), !dbg !3520
  %3 = icmp ugt i32 %0, 15, !dbg !3521
  br i1 %3, label %30, label %4, !dbg !3523

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3524
  br i1 %5, label %30, label %6, !dbg !3526

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3527
  %8 = load i32, i32* %7, align 4, !dbg !3527
  %9 = and i32 %8, 4095, !dbg !3529
  %10 = icmp eq i32 %9, 0, !dbg !3529
  br i1 %10, label %12, label %11, !dbg !3530

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3531
  unreachable, !dbg !3531

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3533
  %14 = load i32, i32* %13, align 4, !dbg !3533
  %15 = and i32 %14, 4095, !dbg !3535
  %16 = icmp eq i32 %15, 0, !dbg !3535
  br i1 %16, label %18, label %17, !dbg !3536

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3537
  unreachable, !dbg !3537

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3539
  store volatile i32 %8, i32* %19, align 4, !dbg !3540
  %20 = load i32, i32* %7, align 4, !dbg !3541
  %21 = load i32, i32* %13, align 4, !dbg !3542
  %22 = add i32 %21, %20, !dbg !3543
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3544
  store volatile i32 %22, i32* %23, align 4, !dbg !3545
  %24 = load volatile i32, i32* %19, align 4, !dbg !3546
  %25 = or i32 %24, 256, !dbg !3546
  store volatile i32 %25, i32* %19, align 4, !dbg !3546
  %26 = load volatile i32, i32* %19, align 4, !dbg !3547
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3548
  store i32 %26, i32* %27, align 4, !dbg !3549
  %28 = load volatile i32, i32* %23, align 4, !dbg !3550
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3551
  store i32 %28, i32* %29, align 4, !dbg !3552
  br label %30, !dbg !3553

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3520
  ret i32 %31, !dbg !3554
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3559, metadata !DIExpression()), !dbg !3561
  %2 = and i32 %0, 31, !dbg !3562
  %3 = icmp eq i32 %2, 0, !dbg !3562
  br i1 %3, label %4, label %9, !dbg !3564

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %5, metadata !3560, metadata !DIExpression()), !dbg !3561
  %6 = and i32 %0, -32, !dbg !3566
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3567
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3568
  %8 = or i32 %7, 5, !dbg !3568
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3568
  tail call void asm sideeffect "isb", ""() #16, !dbg !3569, !srcloc !3388
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3571
  br label %9, !dbg !3572

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3561
  ret i32 %10, !dbg !3573
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 %1, metadata !3579, metadata !DIExpression()), !dbg !3582
  %3 = add i32 %1, %0, !dbg !3583
  call void @llvm.dbg.value(metadata i32 %3, metadata !3581, metadata !DIExpression()), !dbg !3582
  %4 = or i32 %1, %0, !dbg !3584
  %5 = and i32 %4, 31, !dbg !3584
  %6 = icmp eq i32 %5, 0, !dbg !3584
  br i1 %6, label %7, label %16, !dbg !3584

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3586
  call void @llvm.dbg.value(metadata i32 %8, metadata !3580, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3582
  %9 = icmp ugt i32 %3, %0, !dbg !3587
  br i1 %9, label %10, label %15, !dbg !3588

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3578, metadata !DIExpression()), !dbg !3582
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3589
  %13 = add i32 %11, 32, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %13, metadata !3578, metadata !DIExpression()), !dbg !3582
  %14 = icmp ult i32 %13, %3, !dbg !3587
  br i1 %14, label %10, label %15, !dbg !3588, !llvm.loop !3592

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3594, !srcloc !3388
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3596
  br label %16, !dbg !3597

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3582
  ret i32 %17, !dbg !3598
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3599 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3601, metadata !DIExpression()), !dbg !3603
  %2 = and i32 %0, 31, !dbg !3604
  %3 = icmp eq i32 %2, 0, !dbg !3604
  br i1 %3, label %4, label %9, !dbg !3606

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3607
  call void @llvm.dbg.value(metadata i32 %5, metadata !3602, metadata !DIExpression()), !dbg !3603
  %6 = and i32 %0, -32, !dbg !3608
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3609
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3610
  %8 = or i32 %7, 21, !dbg !3610
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3610
  tail call void asm sideeffect "isb", ""() #16, !dbg !3611, !srcloc !3388
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3613
  br label %9, !dbg !3614

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3603
  ret i32 %10, !dbg !3615
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %1, metadata !3619, metadata !DIExpression()), !dbg !3622
  %3 = add i32 %1, %0, !dbg !3623
  call void @llvm.dbg.value(metadata i32 %3, metadata !3621, metadata !DIExpression()), !dbg !3622
  %4 = or i32 %1, %0, !dbg !3624
  %5 = and i32 %4, 31, !dbg !3624
  %6 = icmp eq i32 %5, 0, !dbg !3624
  br i1 %6, label %7, label %16, !dbg !3624

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3626
  call void @llvm.dbg.value(metadata i32 %8, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()), !dbg !3622
  %9 = icmp ugt i32 %3, %0, !dbg !3627
  br i1 %9, label %10, label %15, !dbg !3628

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3618, metadata !DIExpression()), !dbg !3622
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3629
  %13 = add i32 %11, 32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %13, metadata !3618, metadata !DIExpression()), !dbg !3622
  %14 = icmp ult i32 %13, %3, !dbg !3627
  br i1 %14, label %10, label %15, !dbg !3628, !llvm.loop !3632

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3634, !srcloc !3388
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3636
  br label %16, !dbg !3637

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3622
  ret i32 %17, !dbg !3638
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3639 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %1, metadata !3641, metadata !DIExpression()), !dbg !3643
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3644
  %3 = and i32 %2, -31, !dbg !3644
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3644
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3645
  %5 = or i32 %4, 19, !dbg !3645
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3645
  tail call void asm sideeffect "isb", ""() #16, !dbg !3646, !srcloc !3388
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3648
  ret i32 0, !dbg !3649
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3654, metadata !DIExpression()), !dbg !3656
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3657
  %3 = and i32 %2, 8, !dbg !3659
  %4 = icmp eq i32 %3, 0, !dbg !3659
  br i1 %4, label %23, label %5, !dbg !3660

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3655, metadata !DIExpression()), !dbg !3656
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3661
  %8 = shl nuw nsw i32 1, %6, !dbg !3666
  %9 = and i32 %7, %8, !dbg !3667
  %10 = icmp eq i32 %9, 0, !dbg !3667
  br i1 %10, label %20, label %11, !dbg !3668

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3669
  %13 = load volatile i32, i32* %12, align 4, !dbg !3669
  %14 = and i32 %13, -257, !dbg !3672
  %15 = icmp ugt i32 %14, %0, !dbg !3673
  br i1 %15, label %20, label %16, !dbg !3674

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3675
  %18 = load volatile i32, i32* %17, align 4, !dbg !3675
  %19 = icmp ugt i32 %18, %0, !dbg !3676
  br i1 %19, label %23, label %20, !dbg !3677

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %21, metadata !3655, metadata !DIExpression()), !dbg !3656
  %22 = icmp eq i32 %21, 16, !dbg !3679
  br i1 %22, label %23, label %5, !dbg !3680, !llvm.loop !3681

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3656
  ret i1 %24, !dbg !3683
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !3684 {
  ret i32 0, !dbg !3688
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3693, metadata !DIExpression()), !dbg !3695
  call void @llvm.dbg.value(metadata i32 -1, metadata !3694, metadata !DIExpression()), !dbg !3695
  %2 = icmp ugt i32 %0, 95, !dbg !3696
  br i1 %2, label %4, label %3, !dbg !3696

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3698
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3695
  br label %4, !dbg !3700

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3695
  ret i32 %5, !dbg !3701
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3706, metadata !DIExpression()), !dbg !3707
  %2 = and i32 %0, 31, !dbg !3708
  %3 = shl nuw i32 1, %2, !dbg !3709
  %4 = lshr i32 %0, 5, !dbg !3710
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3711
  store volatile i32 %3, i32* %5, align 4, !dbg !3712
  ret void, !dbg !3713
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 -1, metadata !3717, metadata !DIExpression()), !dbg !3718
  %2 = icmp ugt i32 %0, 95, !dbg !3719
  br i1 %2, label %4, label %3, !dbg !3719

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3717, metadata !DIExpression()), !dbg !3718
  br label %4, !dbg !3723

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3718
  ret i32 %5, !dbg !3724
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3727, metadata !DIExpression()), !dbg !3728
  %2 = and i32 %0, 31, !dbg !3729
  %3 = shl nuw i32 1, %2, !dbg !3730
  %4 = lshr i32 %0, 5, !dbg !3731
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3732
  store volatile i32 %3, i32* %5, align 4, !dbg !3733
  ret void, !dbg !3734
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3735 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 255, metadata !3740, metadata !DIExpression()), !dbg !3741
  %2 = icmp ugt i32 %0, 95, !dbg !3742
  br i1 %2, label %5, label %3, !dbg !3742

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3744
  call void @llvm.dbg.value(metadata i32 %4, metadata !3740, metadata !DIExpression()), !dbg !3741
  br label %5, !dbg !3746

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3741
  ret i32 %6, !dbg !3747
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3753
  %2 = lshr i32 %0, 5, !dbg !3754
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3755
  %4 = load volatile i32, i32* %3, align 4, !dbg !3755
  %5 = and i32 %0, 31, !dbg !3756
  %6 = lshr i32 %4, %5, !dbg !3757
  %7 = and i32 %6, 1, !dbg !3757
  ret i32 %7, !dbg !3758
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata i32 -1, metadata !3762, metadata !DIExpression()), !dbg !3763
  %2 = icmp ugt i32 %0, 95, !dbg !3764
  br i1 %2, label %4, label %3, !dbg !3764

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3766
  call void @llvm.dbg.value(metadata i32 0, metadata !3762, metadata !DIExpression()), !dbg !3763
  br label %4, !dbg !3768

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3763
  ret i32 %5, !dbg !3769
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3773
  %2 = and i32 %0, 31, !dbg !3774
  %3 = shl nuw i32 1, %2, !dbg !3775
  %4 = lshr i32 %0, 5, !dbg !3776
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3777
  store volatile i32 %3, i32* %5, align 4, !dbg !3778
  ret void, !dbg !3779
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 -1, metadata !3783, metadata !DIExpression()), !dbg !3784
  %2 = icmp ugt i32 %0, 95, !dbg !3785
  br i1 %2, label %4, label %3, !dbg !3785

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3787
  call void @llvm.dbg.value(metadata i32 0, metadata !3783, metadata !DIExpression()), !dbg !3784
  br label %4, !dbg !3789

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3784
  ret i32 %5, !dbg !3790
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3793, metadata !DIExpression()), !dbg !3794
  %2 = and i32 %0, 31, !dbg !3795
  %3 = shl nuw i32 1, %2, !dbg !3796
  %4 = lshr i32 %0, 5, !dbg !3797
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3798
  store volatile i32 %3, i32* %5, align 4, !dbg !3799
  ret void, !dbg !3800
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 %1, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i32 -1, metadata !3807, metadata !DIExpression()), !dbg !3808
  %3 = icmp ugt i32 %0, 95, !dbg !3809
  br i1 %3, label %5, label %4, !dbg !3809

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3807, metadata !DIExpression()), !dbg !3808
  br label %5, !dbg !3813

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3808
  ret i32 %6, !dbg !3814
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3815 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3819, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32 %1, metadata !3820, metadata !DIExpression()), !dbg !3821
  %3 = trunc i32 %1 to i8, !dbg !3822
  %4 = shl i8 %3, 5, !dbg !3822
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3825
  store volatile i8 %4, i8* %5, align 1, !dbg !3826
  ret void, !dbg !3827
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3828 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i32 68, metadata !3831, metadata !DIExpression()), !dbg !3832
  %2 = icmp ugt i32 %0, 95, !dbg !3833
  br i1 %2, label %5, label %3, !dbg !3833

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3835
  call void @llvm.dbg.value(metadata i32 %4, metadata !3831, metadata !DIExpression()), !dbg !3832
  br label %5, !dbg !3837

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3832
  ret i32 %6, !dbg !3838
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3839 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3841, metadata !DIExpression()), !dbg !3842
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3843
  %3 = load volatile i8, i8* %2, align 1, !dbg !3843
  %4 = lshr i8 %3, 5, !dbg !3846
  %5 = zext i8 %4 to i32, !dbg !3846
  ret i32 %5, !dbg !3847
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !3848 {
  ret void, !dbg !3849
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !3850 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3852, metadata !DIExpression()), !dbg !3854
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %1, metadata !3853, metadata !DIExpression()), !dbg !3854
  %2 = icmp ugt i32 %1, 95, !dbg !3856
  br i1 %2, label %12, label %3, !dbg !3856

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3858
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3858
  %6 = icmp eq void (i32)* %5, null, !dbg !3860
  br i1 %6, label %7, label %8, !dbg !3861

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3852, metadata !DIExpression()), !dbg !3854
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0)) #15, !dbg !3862
  br label %12, !dbg !3864

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !3865
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3867
  store i32 %9, i32* %10, align 4, !dbg !3868
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3869
  tail call void %11(i32 noundef %1) #15, !dbg !3870
  call void @llvm.dbg.value(metadata i32 0, metadata !3852, metadata !DIExpression()), !dbg !3854
  br label %12, !dbg !3871

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3854
  ret i32 %13, !dbg !3872
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !3873 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3876
  %2 = and i32 %1, 511, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %2, metadata !3875, metadata !DIExpression()), !dbg !3878
  %3 = add nsw i32 %2, -16, !dbg !3879
  ret i32 %3, !dbg !3880
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !3881 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3882
  %2 = lshr i32 %1, 22, !dbg !3883
  %3 = and i32 %2, 1, !dbg !3883
  ret i32 %3, !dbg !3884
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !3885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3891, metadata !DIExpression()), !dbg !3893
  %3 = icmp ugt i32 %0, 95, !dbg !3894
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3894
  br i1 %5, label %10, label %6, !dbg !3894

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3896
  call void @llvm.dbg.value(metadata i32 %7, metadata !3892, metadata !DIExpression()), !dbg !3893
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3897
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3898
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3899
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3900
  store i32 0, i32* %9, align 4, !dbg !3901
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !3902
  br label %10, !dbg !3903

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3893
  ret i32 %11, !dbg !3904
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !3905 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3909, metadata !DIExpression()), !dbg !3910
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3911
  store i32 %2, i32* %0, align 4, !dbg !3912
  ret i32 0, !dbg !3913
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !3914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3919
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !3920
  ret i32 0, !dbg !3921
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8 %1, metadata !3929, metadata !DIExpression()), !dbg !3931
  %3 = icmp ugt i32 %0, 60, !dbg !3932
  br i1 %3, label %11, label %4, !dbg !3934

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3935
  br i1 %5, label %11, label %6, !dbg !3937

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3938
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !3939
  call void @llvm.dbg.value(metadata i32 %8, metadata !3930, metadata !DIExpression()), !dbg !3931
  %9 = icmp slt i32 %8, 0, !dbg !3940
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3940
  br label %11, !dbg !3941

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3931
  ret i32 %12, !dbg !3942
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !3943 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3948, metadata !DIExpression()), !dbg !3949
  ret i32 0, !dbg !3950
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !3951 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3953, metadata !DIExpression()), !dbg !3954
  ret i32 0, !dbg !3955
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3956 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3961, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i32* %1, metadata !3962, metadata !DIExpression()), !dbg !3971
  %4 = icmp eq i32* %1, null, !dbg !3972
  br i1 %4, label %12, label %5, !dbg !3974

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3975
  br i1 %6, label %12, label %7, !dbg !3977

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3978
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3978
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !3978
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3978
  %10 = load i8, i8* %9, align 1, !dbg !3978
  call void @llvm.dbg.value(metadata i8 %10, metadata !3963, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3971
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3978
  %11 = zext i8 %10 to i32, !dbg !3979
  store i32 %11, i32* %1, align 4, !dbg !3980
  br label %12, !dbg !3981

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3971
  ret i32 %13, !dbg !3982
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3987, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.value(metadata i32 %1, metadata !3988, metadata !DIExpression()), !dbg !3990
  %3 = icmp ugt i32 %0, 60, !dbg !3991
  br i1 %3, label %9, label %4, !dbg !3993

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3994
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !3995
  call void @llvm.dbg.value(metadata i32 %6, metadata !3989, metadata !DIExpression()), !dbg !3990
  %7 = icmp slt i32 %6, 0, !dbg !3996
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3996
  br label %9, !dbg !3997

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3990
  ret i32 %10, !dbg !3998
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3999 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4001, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i32* %1, metadata !4002, metadata !DIExpression()), !dbg !4004
  %4 = icmp ugt i32 %0, 60, !dbg !4005
  br i1 %4, label %12, label %5, !dbg !4007

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4008
  br i1 %6, label %12, label %7, !dbg !4010

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4011
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4011
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4011
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4011
  %10 = load i8, i8* %9, align 2, !dbg !4011
  call void @llvm.dbg.value(metadata i8 %10, metadata !4003, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4004
  call void @llvm.dbg.value(metadata i8 undef, metadata !4003, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4004
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4011
  %11 = zext i8 %10 to i32, !dbg !4012
  store i32 %11, i32* %1, align 4, !dbg !4013
  br label %12, !dbg !4014

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4004
  ret i32 %13, !dbg !4015
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4021, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 %1, metadata !4022, metadata !DIExpression()), !dbg !4024
  %3 = icmp ugt i32 %0, 60, !dbg !4025
  br i1 %3, label %8, label %4, !dbg !4027

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4028
  call void @llvm.dbg.value(metadata i32 %5, metadata !4023, metadata !DIExpression()), !dbg !4024
  %6 = icmp slt i32 %5, 0, !dbg !4029
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4029
  br label %8, !dbg !4030

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4024
  ret i32 %9, !dbg !4031
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4032 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4037, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32* %1, metadata !4038, metadata !DIExpression()), !dbg !4040
  %4 = icmp ugt i32 %0, 60, !dbg !4041
  br i1 %4, label %13, label %5, !dbg !4043

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4044
  br i1 %6, label %13, label %7, !dbg !4046

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4047
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4047
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4047
  call void @llvm.dbg.value(metadata i32 undef, metadata !4039, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4040
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4047
  %10 = load i8, i8* %9, align 4, !dbg !4047
  call void @llvm.dbg.value(metadata i8 %10, metadata !4039, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4040
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4047
  %11 = icmp ne i8 %10, 0, !dbg !4048
  %12 = zext i1 %11 to i32, !dbg !4048
  store i32 %12, i32* %1, align 4, !dbg !4049
  br label %13, !dbg !4050

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4040
  ret i32 %14, !dbg !4051
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4052 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4054, metadata !DIExpression()), !dbg !4056
  %3 = icmp ugt i32 %0, 60, !dbg !4057
  br i1 %3, label %11, label %4, !dbg !4059

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4060
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4060
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4060
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4060
  %7 = load i8, i8* %6, align 2, !dbg !4060
  call void @llvm.dbg.value(metadata i8 %7, metadata !4055, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4056
  call void @llvm.dbg.value(metadata i8 undef, metadata !4055, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4056
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4060
  %8 = xor i8 %7, 1, !dbg !4061
  %9 = zext i8 %8 to i32, !dbg !4061
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4062
  br label %11, !dbg !4063

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4056
  ret i32 %12, !dbg !4064
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4067, metadata !DIExpression()), !dbg !4069
  %2 = icmp ugt i32 %0, 60, !dbg !4070
  br i1 %2, label %10, label %3, !dbg !4072

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4073
  call void @llvm.dbg.value(metadata i32 %4, metadata !4068, metadata !DIExpression()), !dbg !4069
  %5 = icmp slt i32 %4, 0, !dbg !4074
  br i1 %5, label %10, label %6, !dbg !4076

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4077
  call void @llvm.dbg.value(metadata i32 %7, metadata !4068, metadata !DIExpression()), !dbg !4069
  %8 = icmp slt i32 %7, 0, !dbg !4078
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4078
  br label %10, !dbg !4079

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4069
  ret i32 %11, !dbg !4080
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4083, metadata !DIExpression()), !dbg !4085
  %2 = icmp ugt i32 %0, 60, !dbg !4086
  br i1 %2, label %10, label %3, !dbg !4088

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %4, metadata !4084, metadata !DIExpression()), !dbg !4085
  %5 = icmp slt i32 %4, 0, !dbg !4090
  br i1 %5, label %10, label %6, !dbg !4092

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %7, metadata !4084, metadata !DIExpression()), !dbg !4085
  %8 = icmp slt i32 %7, 0, !dbg !4094
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4094
  br label %10, !dbg !4095

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4085
  ret i32 %11, !dbg !4096
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4099, metadata !DIExpression()), !dbg !4101
  %2 = icmp ugt i32 %0, 60, !dbg !4102
  br i1 %2, label %7, label %3, !dbg !4104

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4105
  call void @llvm.dbg.value(metadata i32 %4, metadata !4100, metadata !DIExpression()), !dbg !4101
  %5 = icmp slt i32 %4, 0, !dbg !4106
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4106
  br label %7, !dbg !4107

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4101
  ret i32 %8, !dbg !4108
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4113, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.value(metadata i32 %1, metadata !4114, metadata !DIExpression()), !dbg !4116
  %3 = icmp ugt i32 %0, 60, !dbg !4117
  br i1 %3, label %9, label %4, !dbg !4119

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4120
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %6, metadata !4115, metadata !DIExpression()), !dbg !4116
  %7 = icmp slt i32 %6, 0, !dbg !4122
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4122
  br label %9, !dbg !4123

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4116
  ret i32 %10, !dbg !4124
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4125 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4130, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i32* %1, metadata !4131, metadata !DIExpression()), !dbg !4134
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4135
  %4 = icmp ugt i32 %0, 60, !dbg !4136
  br i1 %4, label %11, label %5, !dbg !4138

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4133, metadata !DIExpression(DW_OP_deref)), !dbg !4134
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4139
  call void @llvm.dbg.value(metadata i32 %6, metadata !4132, metadata !DIExpression()), !dbg !4134
  %7 = load i8, i8* %3, align 1, !dbg !4140
  call void @llvm.dbg.value(metadata i8 %7, metadata !4133, metadata !DIExpression()), !dbg !4134
  %8 = zext i8 %7 to i32, !dbg !4141
  store i32 %8, i32* %1, align 4, !dbg !4142
  %9 = icmp slt i32 %6, 0, !dbg !4143
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4143
  br label %11, !dbg !4144

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4134
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4145
  ret i32 %12, !dbg !4145
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4146 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4152, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4153, metadata !DIExpression()), !dbg !4154
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4155
  br i1 %3, label %4, label %18, !dbg !4157

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4158
  %6 = load i8, i8* %5, align 4, !dbg !4158, !range !3345
  %7 = icmp eq i8 %6, 0, !dbg !4158
  br i1 %7, label %8, label %18, !dbg !4160

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !4161
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4162
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4163
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4164
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !4165
  store i8 1, i8* %5, align 4, !dbg !4166
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4167, !range !4168
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !4169
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !4170
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4171
  %16 = icmp eq i32 %15, 0, !dbg !4173
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4154
  br label %18, !dbg !4154

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4154
  ret i32 %19, !dbg !4174
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #6 !dbg !4175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4181, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4182, metadata !DIExpression()), !dbg !4183
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4184
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4186
  br i1 %5, label %6, label %22, !dbg !4186

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4187
  %8 = load i32, i32* %7, align 4, !dbg !4187
  %9 = icmp ugt i32 %8, 12, !dbg !4189
  br i1 %9, label %22, label %10, !dbg !4190

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4191
  %12 = load i32, i32* %11, align 4, !dbg !4191
  %13 = icmp ugt i32 %12, 2, !dbg !4192
  br i1 %13, label %22, label %14, !dbg !4193

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4194
  %16 = load i32, i32* %15, align 4, !dbg !4194
  %17 = icmp ugt i32 %16, 1, !dbg !4195
  br i1 %17, label %22, label %18, !dbg !4196

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4197
  %20 = load i32, i32* %19, align 4, !dbg !4197
  %21 = icmp ult i32 %20, 4, !dbg !4198
  br label %22, !dbg !4199

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4183
  ret i1 %23, !dbg !4200
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !4201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4205, metadata !DIExpression()), !dbg !4206
  %2 = icmp ne i32 %0, 0, !dbg !4207
  %3 = zext i1 %2 to i32, !dbg !4208
  ret i32 %3, !dbg !4209
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4214, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4215, metadata !DIExpression()), !dbg !4216
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4217
  br i1 %3, label %4, label %22, !dbg !4219

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4220
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4221
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4222
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !4223
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4224
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4225
  %11 = load i32, i32* %10, align 4, !dbg !4225
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4226
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4227
  %14 = load i32, i32* %13, align 4, !dbg !4227
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4228
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4229
  %17 = load i32, i32* %16, align 4, !dbg !4229
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4230
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4231
  %20 = load i32, i32* %19, align 4, !dbg !4231
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4232
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !4233
  br label %22, !dbg !4234

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4216
  ret i32 %23, !dbg !4235
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !4236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4240, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4241, metadata !DIExpression()), !dbg !4246
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4247
  %3 = load i32, i32* %2, align 4, !dbg !4247
  ret i32 %3, !dbg !4248
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !4249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4253, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4254, metadata !DIExpression()), !dbg !4257
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4258
  %3 = load i16, i16* %2, align 2, !dbg !4258
  ret i16 %3, !dbg !4259
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !4260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4264, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4265, metadata !DIExpression()), !dbg !4268
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4269
  %3 = load i16, i16* %2, align 2, !dbg !4269
  ret i16 %3, !dbg !4270
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !4271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4275, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4276, metadata !DIExpression()), !dbg !4279
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4280
  %3 = load i16, i16* %2, align 2, !dbg !4280
  ret i16 %3, !dbg !4281
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4286, metadata !DIExpression()), !dbg !4287
  %2 = icmp ult i32 %0, 2, !dbg !4288
  ret i1 %2, !dbg !4289
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4294, metadata !DIExpression()), !dbg !4295
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4296
  br i1 %2, label %3, label %10, !dbg !4298

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4299
  %5 = load i8, i8* %4, align 4, !dbg !4299, !range !3345
  %6 = icmp eq i8 %5, 0, !dbg !4301
  br i1 %6, label %10, label %7, !dbg !4302

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !4303
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4304, !range !4168
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !4305
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !4306
  br label %10, !dbg !4307

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4295
  ret i32 %11, !dbg !4308
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4309 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4313, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata i8 %1, metadata !4314, metadata !DIExpression()), !dbg !4316
  %3 = icmp eq i32 %0, 0, !dbg !4317
  %4 = icmp eq i32 %0, 1, !dbg !4317
  %5 = select i1 %4, i32 1, i32 2, !dbg !4317
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4317
  call void @llvm.dbg.value(metadata i32 %6, metadata !4315, metadata !DIExpression()), !dbg !4316
  %7 = icmp eq i32 %6, 2, !dbg !4318
  br i1 %7, label %9, label %8, !dbg !4320

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !4321
  br label %9, !dbg !4323

9:                                                ; preds = %2, %8
  ret void, !dbg !4324
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4329, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i8* %1, metadata !4330, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 %2, metadata !4331, metadata !DIExpression()), !dbg !4334
  %4 = icmp eq i32 %0, 0, !dbg !4335
  %5 = icmp eq i32 %0, 1, !dbg !4335
  %6 = select i1 %5, i32 1, i32 2, !dbg !4335
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4335
  call void @llvm.dbg.value(metadata i32 %7, metadata !4332, metadata !DIExpression()), !dbg !4334
  %8 = icmp eq i8* %1, null, !dbg !4336
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4338
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4333, metadata !DIExpression()), !dbg !4334
  br i1 %12, label %19, label %13, !dbg !4338

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4333, metadata !DIExpression()), !dbg !4334
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4339
  %16 = load i8, i8* %15, align 1, !dbg !4339
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !4345
  %17 = add nuw i32 %14, 1, !dbg !4346
  call void @llvm.dbg.value(metadata i32 %17, metadata !4333, metadata !DIExpression()), !dbg !4334
  %18 = icmp eq i32 %17, %2, !dbg !4347
  br i1 %18, label %19, label %13, !dbg !4348, !llvm.loop !4349

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4334
  ret i32 %20, !dbg !4351
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4352 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4354, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i8* %1, metadata !4355, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata i32 %2, metadata !4356, metadata !DIExpression()), !dbg !4361
  %5 = bitcast i32* %4 to i8*, !dbg !4362
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4362
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4363
  br i1 %6, label %7, label %24, !dbg !4365

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4366
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4368
  br i1 %10, label %24, label %11, !dbg !4368

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4369
  %13 = load i8, i8* %12, align 4, !dbg !4369, !range !3345
  %14 = icmp eq i8 %13, 0, !dbg !4369
  br i1 %14, label %24, label %15, !dbg !4371

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4372, !range !4168
  call void @llvm.dbg.value(metadata i32* %4, metadata !4357, metadata !DIExpression(DW_OP_deref)), !dbg !4361
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4373
  %17 = load i32, i32* %4, align 4, !dbg !4374
  call void @llvm.dbg.value(metadata i32 %17, metadata !4357, metadata !DIExpression()), !dbg !4361
  %18 = icmp ult i32 %17, %2, !dbg !4376
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4358, metadata !DIExpression()), !dbg !4361
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !4377
  %20 = load i32, i32* %4, align 4, !dbg !4378
  call void @llvm.dbg.value(metadata i32 %20, metadata !4357, metadata !DIExpression()), !dbg !4361
  %21 = icmp eq i32 %19, %20, !dbg !4380
  br i1 %21, label %22, label %24, !dbg !4381

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4382, !range !4384
  call void @llvm.dbg.value(metadata i32 %23, metadata !4359, metadata !DIExpression()), !dbg !4361
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !4385
  br label %24, !dbg !4386

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4387
  ret i32 %25, !dbg !4387
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !4388 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4392, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i1 %1, metadata !4393, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4395
  %3 = icmp eq i32 %0, 0, !dbg !4396
  %4 = select i1 %1, i32 15, i32 14, !dbg !4398
  %5 = select i1 %1, i32 17, i32 16, !dbg !4398
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4398
  call void @llvm.dbg.value(metadata i32 %6, metadata !4394, metadata !DIExpression()), !dbg !4395
  ret i32 %6, !dbg !4399
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4404, metadata !DIExpression()), !dbg !4406
  %2 = icmp eq i32 %0, 0, !dbg !4407
  %3 = icmp eq i32 %0, 1, !dbg !4407
  %4 = select i1 %3, i32 1, i32 2, !dbg !4407
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4407
  call void @llvm.dbg.value(metadata i32 %5, metadata !4405, metadata !DIExpression()), !dbg !4406
  %6 = icmp ult i32 %5, 2, !dbg !4408
  br i1 %6, label %7, label %9, !dbg !4410

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !4411
  br label %9, !dbg !4413

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4414
  ret i8 %10, !dbg !4415
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4420, metadata !DIExpression()), !dbg !4422
  %2 = icmp eq i32 %0, 0, !dbg !4423
  %3 = icmp eq i32 %0, 1, !dbg !4423
  %4 = select i1 %3, i32 1, i32 2, !dbg !4423
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4423
  call void @llvm.dbg.value(metadata i32 %5, metadata !4421, metadata !DIExpression()), !dbg !4422
  %6 = icmp ult i32 %5, 2, !dbg !4424
  br i1 %6, label %7, label %9, !dbg !4426

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !4427
  br label %9, !dbg !4429

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4430
  ret i32 %10, !dbg !4431
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4432 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4436, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i8* %1, metadata !4437, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i32 %2, metadata !4438, metadata !DIExpression()), !dbg !4441
  %4 = icmp eq i32 %0, 0, !dbg !4442
  %5 = icmp eq i32 %0, 1, !dbg !4442
  %6 = select i1 %5, i32 1, i32 2, !dbg !4442
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %7, metadata !4439, metadata !DIExpression()), !dbg !4441
  %8 = icmp eq i8* %1, null, !dbg !4443
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4445
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4445
  call void @llvm.dbg.value(metadata i32 0, metadata !4440, metadata !DIExpression()), !dbg !4441
  br i1 %12, label %19, label %13, !dbg !4445

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4440, metadata !DIExpression()), !dbg !4441
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !4446
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4452
  store i8 %15, i8* %16, align 1, !dbg !4453
  %17 = add nuw i32 %14, 1, !dbg !4454
  call void @llvm.dbg.value(metadata i32 %17, metadata !4440, metadata !DIExpression()), !dbg !4441
  %18 = icmp eq i32 %17, %2, !dbg !4455
  br i1 %18, label %19, label %13, !dbg !4456, !llvm.loop !4457

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4441
  ret i32 %20, !dbg !4459
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4460 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4462, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i8* %1, metadata !4463, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 %2, metadata !4464, metadata !DIExpression()), !dbg !4468
  %5 = bitcast i32* %4 to i8*, !dbg !4469
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4469
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4470
  br i1 %6, label %7, label %20, !dbg !4472

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4473
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4475
  br i1 %10, label %20, label %11, !dbg !4475

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4476, !range !4168
  call void @llvm.dbg.value(metadata i32* %4, metadata !4465, metadata !DIExpression(DW_OP_deref)), !dbg !4468
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !4477
  %13 = load i32, i32* %4, align 4, !dbg !4478
  call void @llvm.dbg.value(metadata i32 %13, metadata !4465, metadata !DIExpression()), !dbg !4468
  %14 = icmp ult i32 %13, %2, !dbg !4480
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4466, metadata !DIExpression()), !dbg !4468
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !4481
  %16 = load i32, i32* %4, align 4, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %16, metadata !4465, metadata !DIExpression()), !dbg !4468
  %17 = icmp eq i32 %15, %16, !dbg !4484
  br i1 %17, label %18, label %20, !dbg !4485

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4486, !range !4384
  call void @llvm.dbg.value(metadata i32 %19, metadata !4467, metadata !DIExpression()), !dbg !4468
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !4488
  br label %20, !dbg !4489

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4490
  ret i32 %21, !dbg !4490
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4491 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4493, metadata !DIExpression()), !dbg !4495
  %3 = bitcast i32* %2 to i8*, !dbg !4496
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4496
  call void @llvm.dbg.value(metadata i32 0, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i32 0, i32* %2, align 4, !dbg !4497
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4498
  br i1 %4, label %5, label %8, !dbg !4500

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4501, !range !4168
  call void @llvm.dbg.value(metadata i32* %2, metadata !4494, metadata !DIExpression(DW_OP_deref)), !dbg !4495
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !4502
  %7 = load i32, i32* %2, align 4, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %7, metadata !4494, metadata !DIExpression()), !dbg !4495
  br label %8, !dbg !4504

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4495
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4505
  ret i32 %9, !dbg !4505
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4506 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4508, metadata !DIExpression()), !dbg !4510
  %3 = bitcast i32* %2 to i8*, !dbg !4511
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4511
  call void @llvm.dbg.value(metadata i32 0, metadata !4509, metadata !DIExpression()), !dbg !4510
  store i32 0, i32* %2, align 4, !dbg !4512
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4513
  br i1 %4, label %5, label %8, !dbg !4515

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4516, !range !4168
  call void @llvm.dbg.value(metadata i32* %2, metadata !4509, metadata !DIExpression(DW_OP_deref)), !dbg !4510
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !4517
  %7 = load i32, i32* %2, align 4, !dbg !4518
  call void @llvm.dbg.value(metadata i32 %7, metadata !4509, metadata !DIExpression()), !dbg !4510
  br label %8, !dbg !4519

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4510
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4520
  ret i32 %9, !dbg !4520
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4525, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4526, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i8* %2, metadata !4527, metadata !DIExpression()), !dbg !4529
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4530
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4532
  br i1 %6, label %7, label %18, !dbg !4532

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4533
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4534
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4535
  store i8* %2, i8** %9, align 4, !dbg !4536
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4537
  store i8 1, i8* %10, align 4, !dbg !4538
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4539
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4540
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4541
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4542
  %13 = icmp eq i32 %11, 0, !dbg !4543
  br i1 %13, label %14, label %15, !dbg !4545

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !4546
  br label %16, !dbg !4548

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !4549
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4551, !range !4384
  call void @llvm.dbg.value(metadata i32 %17, metadata !4528, metadata !DIExpression()), !dbg !4529
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !4552
  br label %18, !dbg !4553

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4529
  ret i32 %19, !dbg !4554
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !456, metadata !DIExpression()), !dbg !4555
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4556
  %3 = load void ()*, void ()** %2, align 4, !dbg !4556
  ret void ()* %3, !dbg !4557
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4558 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4564, !range !3345
  %2 = icmp eq i8 %1, 0, !dbg !4564
  br i1 %2, label %8, label %3, !dbg !4565

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4566
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4568
  br i1 %5, label %8, label %6, !dbg !4569

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4570
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4572
  br label %8, !dbg !4573

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4574, !range !4168
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4575
  ret void, !dbg !4576
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4577 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4582, !range !3345
  %2 = icmp eq i8 %1, 0, !dbg !4582
  br i1 %2, label %8, label %3, !dbg !4583

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4584
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4586
  br i1 %5, label %8, label %6, !dbg !4587

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4588
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4590
  br label %8, !dbg !4591

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4592, !range !4168
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4593
  ret void, !dbg !4594
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !4595 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4599, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i1 %1, metadata !4600, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4606
  %5 = bitcast i32* %3 to i8*, !dbg !4607
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4607
  %6 = bitcast i32* %4 to i8*, !dbg !4607
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !4607
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4603, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4606
  br i1 %1, label %7, label %12, !dbg !4608

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4603, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4606
  call void @llvm.dbg.value(metadata i32* %3, metadata !4601, metadata !DIExpression(DW_OP_deref)), !dbg !4606
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !4609
  %8 = load i32, i32* %3, align 4, !dbg !4612
  call void @llvm.dbg.value(metadata i32 %8, metadata !4601, metadata !DIExpression()), !dbg !4606
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4614
  %10 = load i32, i32* %9, align 4, !dbg !4614
  %11 = icmp ult i32 %8, %10, !dbg !4615
  br i1 %11, label %22, label %20, !dbg !4616

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4602, metadata !DIExpression(DW_OP_deref)), !dbg !4606
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4617
  %13 = load i32, i32* %4, align 4, !dbg !4619
  call void @llvm.dbg.value(metadata i32 %13, metadata !4602, metadata !DIExpression()), !dbg !4606
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4621
  %15 = load i32, i32* %14, align 4, !dbg !4621
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4622
  %17 = load i32, i32* %16, align 4, !dbg !4622
  %18 = sub i32 %15, %17, !dbg !4623
  %19 = icmp ult i32 %13, %18, !dbg !4624
  br i1 %19, label %22, label %20, !dbg !4625

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !4626, !range !4384
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !4626
  br label %22, !dbg !4627

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !4627
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4627
  ret void, !dbg !4627
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !4628 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4633, !range !3345
  %2 = icmp eq i8 %1, 0, !dbg !4633
  br i1 %2, label %11, label %3, !dbg !4634

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !4635
  %5 = icmp eq i32 %4, 0, !dbg !4636
  br i1 %5, label %11, label %6, !dbg !4637

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4638
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4640
  br i1 %8, label %11, label %9, !dbg !4641

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4642
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !4644
  br label %11, !dbg !4645

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4646, !range !4168
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4647
  ret void, !dbg !4648
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !4649 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4654, !range !3345
  %2 = icmp eq i8 %1, 0, !dbg !4654
  br i1 %2, label %11, label %3, !dbg !4655

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !4656
  %5 = icmp eq i32 %4, 0, !dbg !4657
  br i1 %5, label %11, label %6, !dbg !4658

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4659
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4661
  br i1 %8, label %11, label %9, !dbg !4662

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4663
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !4665
  br label %11, !dbg !4666

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4667, !range !4168
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4668
  ret void, !dbg !4669
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4674, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i32 %1, metadata !4675, metadata !DIExpression()), !dbg !4676
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4677
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4679
  br i1 %5, label %6, label %10, !dbg !4679

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4680
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4681
  store i32 %1, i32* %8, align 4, !dbg !4682
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !4683
  br label %10, !dbg !4684

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4676
  ret i32 %11, !dbg !4685
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !4686 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4692, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4693, metadata !DIExpression()), !dbg !4694
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4695
  br i1 %3, label %4, label %28, !dbg !4697

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !4698
  br i1 %5, label %6, label %28, !dbg !4700

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4701
  store i8 1, i8* %7, align 4, !dbg !4702
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4703
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4704
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4705
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !4706
  tail call void @DMA_Init() #15, !dbg !4707
  tail call void @DMA_Vfifo_init() #15, !dbg !4708
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4709
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4710
  %14 = load i8*, i8** %13, align 4, !dbg !4710
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4711
  %16 = load i32, i32* %15, align 4, !dbg !4711
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4712
  %18 = load i32, i32* %17, align 4, !dbg !4712
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4713
  %20 = load i32, i32* %19, align 4, !dbg !4713
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !4714
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !4715
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4716
  %23 = load i8*, i8** %22, align 4, !dbg !4716
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4717
  %25 = load i32, i32* %24, align 4, !dbg !4717
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4718
  %27 = load i32, i32* %26, align 4, !dbg !4718
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !4719
  br label %28, !dbg !4720

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4694
  ret i32 %29, !dbg !4721
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !4722 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4726, metadata !DIExpression()), !dbg !4727
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4728
  br i1 %2, label %27, label %3, !dbg !4730

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4731
  %5 = load i8*, i8** %4, align 4, !dbg !4731
  %6 = icmp eq i8* %5, null, !dbg !4733
  br i1 %6, label %27, label %7, !dbg !4734

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4735
  %9 = load i32, i32* %8, align 4, !dbg !4735
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4737
  %11 = load i32, i32* %10, align 4, !dbg !4737
  %12 = icmp ult i32 %9, %11, !dbg !4738
  br i1 %12, label %27, label %13, !dbg !4739

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4740
  %15 = load i32, i32* %14, align 4, !dbg !4740
  %16 = icmp ult i32 %9, %15, !dbg !4742
  br i1 %16, label %27, label %17, !dbg !4743

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4744
  %19 = load i8*, i8** %18, align 4, !dbg !4744
  %20 = icmp eq i8* %19, null, !dbg !4746
  br i1 %20, label %27, label %21, !dbg !4747

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4748
  %23 = load i32, i32* %22, align 4, !dbg !4748
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4750
  %25 = load i32, i32* %24, align 4, !dbg !4750
  %26 = icmp uge i32 %23, %25, !dbg !4751
  br label %27, !dbg !4752

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4727
  ret i1 %28, !dbg !4753
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #5

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !4754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4758, metadata !DIExpression()), !dbg !4760
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !4761
  %3 = udiv i32 %2, 1000000, !dbg !4762
  call void @llvm.dbg.value(metadata i32 %3, metadata !4759, metadata !DIExpression()), !dbg !4760
  %4 = mul i32 %3, %0, !dbg !4763
  ret i32 %4, !dbg !4764
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4767, metadata !DIExpression()), !dbg !4769
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4770
  br i1 %2, label %3, label %8, !dbg !4772

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4773
  %5 = icmp eq i32 %0, 1, !dbg !4773
  %6 = select i1 %5, i32 1, i32 2, !dbg !4773
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4773
  call void @llvm.dbg.value(metadata i32 %7, metadata !4768, metadata !DIExpression()), !dbg !4769
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !4774
  br label %8, !dbg !4775

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4769
  ret i32 %9, !dbg !4776
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !4777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4781, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i8 %1, metadata !4782, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i8 %2, metadata !4783, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i8 %3, metadata !4784, metadata !DIExpression()), !dbg !4786
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4787
  br i1 %5, label %6, label %11, !dbg !4789

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4790
  %8 = icmp eq i32 %0, 1, !dbg !4790
  %9 = select i1 %8, i32 1, i32 2, !dbg !4790
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4790
  call void @llvm.dbg.value(metadata i32 %10, metadata !4785, metadata !DIExpression()), !dbg !4786
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !4791
  br label %11, !dbg !4792

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4786
  ret i32 %12, !dbg !4793
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4794 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4796, metadata !DIExpression()), !dbg !4798
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4799
  br i1 %2, label %3, label %8, !dbg !4801

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4802
  %5 = icmp eq i32 %0, 1, !dbg !4802
  %6 = select i1 %5, i32 1, i32 2, !dbg !4802
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4802
  call void @llvm.dbg.value(metadata i32 %7, metadata !4797, metadata !DIExpression()), !dbg !4798
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !4803
  br label %8, !dbg !4804

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4798
  ret i32 %9, !dbg !4805
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4806 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4810, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 %1, metadata !4811, metadata !DIExpression()), !dbg !4812
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4813
  br i1 %3, label %4, label %8, !dbg !4815

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4816
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !4818
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !4818
  br label %8, !dbg !4819

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4812
  ret i32 %9, !dbg !4819
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4824, metadata !DIExpression()), !dbg !4825
  %2 = trunc i32 %0 to i8, !dbg !4826
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !4827
  ret i32 %0, !dbg !4828
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !4829 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !4830
  tail call fastcc void @prvSetupHardware() #14, !dbg !4831
  tail call void asm sideeffect "cpsie i", "~{memory}"() #16, !dbg !4832, !srcloc !4835
  tail call void asm sideeffect "cpsie f", "~{memory}"() #16, !dbg !4836, !srcloc !4839
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #15, !dbg !4840
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.28, i32 0, i32 0)) #15, !dbg !4841
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #15, !dbg !4842
  tail call fastcc void @irrx_receive_pwd_data() #14, !dbg !4843
  br label %4, !dbg !4844

4:                                                ; preds = %4, %0
  br label %4, !dbg !4845, !llvm.loop !4848
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !4851 {
  tail call void @top_xtal_init() #15, !dbg !4852
  ret void, !dbg !4853
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !4854 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !4855
  ret void, !dbg !4856
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @irrx_receive_pwd_data() unnamed_addr #3 !dbg !4857 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to %struct.hal_irrx_pwd_config_t*
  %4 = bitcast i32* %1 to i8*, !dbg !4866
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16, !dbg !4866
  call void @llvm.dbg.value(metadata i32 0, metadata !4859, metadata !DIExpression()), !dbg !4867
  store i32 0, i32* %1, align 4, !dbg !4868
  %5 = tail call i32 @hal_gpio_init(i32 noundef 34) #15, !dbg !4869
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 34, i8 noundef zeroext 7) #15, !dbg !4870
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.29, i32 0, i32 0)) #15, !dbg !4871
  %8 = tail call i32 @hal_irrx_init() #15, !dbg !4872
  %9 = bitcast i64* %2 to i8*, !dbg !4873
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #16, !dbg !4873
  call void @llvm.dbg.declare(metadata %struct.hal_irrx_pwd_config_t* %3, metadata !4860, metadata !DIExpression()), !dbg !4874
  store i64 43808666419201, i64* %2, align 8, !dbg !4874
  call void @llvm.dbg.value(metadata i32* %1, metadata !4859, metadata !DIExpression(DW_OP_deref)), !dbg !4867
  %10 = call i32 @hal_irrx_receive_pwd_start(%struct.hal_irrx_pwd_config_t* noundef nonnull %3, void (i32, i8*)* noundef bitcast (void (i32, i8*)* ()* @receive_code_pwd to void (i32, i8*)*), i32* noundef nonnull %1) #15, !dbg !4875
  %11 = call i32 @hal_gpio_deinit(i32 noundef 34) #15, !dbg !4876
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3.30, i32 0, i32 0)) #15, !dbg !4877
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #16, !dbg !4878
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16, !dbg !4878
  ret void, !dbg !4878
}

; Function Attrs: noinline nounwind optsize
define internal noalias void (i32, i8*)* @receive_code_pwd() #3 !dbg !4879 {
  %1 = alloca i8, align 1
  %2 = alloca [68 x i8], align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #16, !dbg !4887
  call void @llvm.dbg.value(metadata i8 0, metadata !4882, metadata !DIExpression()), !dbg !4888
  store i8 0, i8* %1, align 1, !dbg !4889
  %3 = getelementptr inbounds [68 x i8], [68 x i8]* %2, i32 0, i32 0, !dbg !4890
  call void @llvm.lifetime.start.p0i8(i64 68, i8* nonnull %3) #16, !dbg !4890
  call void @llvm.dbg.declare(metadata [68 x i8]* %2, metadata !4883, metadata !DIExpression()), !dbg !4891
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(68) %3, i8 0, i32 68, i1 false), !dbg !4891
  call void @llvm.dbg.value(metadata i8* %1, metadata !4882, metadata !DIExpression(DW_OP_deref)), !dbg !4888
  %4 = call i32 @hal_irrx_receive_pwd(i8* noundef nonnull %1, i8* noundef nonnull %3, i8 noundef zeroext 68) #15, !dbg !4892
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #15, !dbg !4893
  %6 = load i8, i8* %1, align 1, !dbg !4894
  call void @llvm.dbg.value(metadata i8 %6, metadata !4882, metadata !DIExpression()), !dbg !4888
  %7 = zext i8 %6 to i32, !dbg !4894
  call fastcc void @show_ir_data(i8* noundef nonnull %3, i32 noundef %7) #14, !dbg !4895
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #15, !dbg !4896
  call void @llvm.lifetime.end.p0i8(i64 68, i8* nonnull %3) #16, !dbg !4897
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #16, !dbg !4897
  ret void (i32, i8*)* null, !dbg !4898
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: noinline nounwind optsize
define internal fastcc void @show_ir_data(i8* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !dbg !4899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4903, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 %1, metadata !4904, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i8* %0, metadata !4905, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 0, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i32 0, metadata !4906, metadata !DIExpression()), !dbg !4907
  %3 = icmp eq i32 %1, 0, !dbg !4908
  br i1 %3, label %28, label %4, !dbg !4911

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  br label %6, !dbg !4911

6:                                                ; preds = %4, %21
  %7 = phi i32 [ 0, %4 ], [ %16, %21 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !4906, metadata !DIExpression()), !dbg !4907
  %8 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !4912
  %9 = load i8, i8* %8, align 1, !dbg !4912
  %10 = zext i8 %9 to i32, !dbg !4912
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 noundef %10) #15, !dbg !4914
  %12 = icmp eq i32 %7, %5, !dbg !4915
  br i1 %12, label %15, label %13, !dbg !4917

13:                                               ; preds = %6
  %14 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !4918
  br label %15, !dbg !4920

15:                                               ; preds = %13, %6
  %16 = add nuw i32 %7, 1, !dbg !4921
  %17 = and i32 %16, 15, !dbg !4923
  %18 = icmp eq i32 %17, 0, !dbg !4924
  br i1 %18, label %19, label %21, !dbg !4925

19:                                               ; preds = %15
  %20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !4926
  br label %21, !dbg !4928

21:                                               ; preds = %15, %19
  call void @llvm.dbg.value(metadata i32 %16, metadata !4906, metadata !DIExpression()), !dbg !4907
  %22 = icmp eq i32 %16, %1, !dbg !4908
  br i1 %22, label %23, label %6, !dbg !4911, !llvm.loop !4929

23:                                               ; preds = %21
  %24 = and i32 %1, 15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !dbg !4931

26:                                               ; preds = %23
  %27 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !4933
  br label %28, !dbg !4935

28:                                               ; preds = %2, %26, %23
  %29 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !4936
  ret void, !dbg !4937
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !4938 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4948
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16, !dbg !4948
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4940, metadata !DIExpression()), !dbg !4949
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #15, !dbg !4950
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #15, !dbg !4951
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !4952
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !4953
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4954
  store i32 9, i32* %7, align 4, !dbg !4955
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4956
  store i32 3, i32* %8, align 4, !dbg !4957
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4958
  store i32 0, i32* %9, align 4, !dbg !4959
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4960
  store i32 0, i32* %10, align 4, !dbg !4961
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #15, !dbg !4962
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16, !dbg !4963
  ret void, !dbg !4963
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !4964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4966, metadata !DIExpression()), !dbg !4968
  %2 = add i32 %0, -1, !dbg !4969
  %3 = icmp ugt i32 %2, 16777215, !dbg !4971
  br i1 %3, label %8, label %4, !dbg !4972

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4973
  call void @llvm.dbg.value(metadata i32 %5, metadata !4967, metadata !DIExpression()), !dbg !4968
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4974
  %7 = and i32 %6, -4, !dbg !4974
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4974
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4975
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4976
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4977
  br label %8, !dbg !4978

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4968
  ret i32 %9, !dbg !4979
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !4980 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4981
  ret void, !dbg !4982
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !4983 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4984
  ret i32 %1, !dbg !4985
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !4986 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !4987
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4988
  ret void, !dbg !4989
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !4990 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4991
  %2 = or i32 %1, 15728640, !dbg !4991
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4991
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4992
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4993
  %4 = or i32 %3, 458752, !dbg !4993
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4993
  ret void, !dbg !4994
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !4995 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4996
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4997
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4998
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4999
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5000
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5001
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5002
  ret void, !dbg !5003
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5004 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5006, metadata !DIExpression()), !dbg !5007
  ret i32 0, !dbg !5008
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5059, metadata !DIExpression()), !dbg !5061
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5060, metadata !DIExpression()), !dbg !5061
  ret i32 0, !dbg !5062
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !5063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5065, metadata !DIExpression()), !dbg !5066
  ret i32 1, !dbg !5067
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5072, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata i32 %1, metadata !5073, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.value(metadata i32 %2, metadata !5074, metadata !DIExpression()), !dbg !5075
  ret i32 0, !dbg !5076
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5081, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 %1, metadata !5082, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata i32 %2, metadata !5083, metadata !DIExpression()), !dbg !5084
  ret i32 -1, !dbg !5085
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5090, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata i8* %1, metadata !5091, metadata !DIExpression()), !dbg !5093
  call void @llvm.dbg.value(metadata i32 %2, metadata !5092, metadata !DIExpression()), !dbg !5093
  ret i32 0, !dbg !5094
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5097, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.value(metadata i8* %1, metadata !5098, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.value(metadata i32 %2, metadata !5099, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.value(metadata i32 0, metadata !5100, metadata !DIExpression()), !dbg !5101
  %4 = icmp sgt i32 %2, 0, !dbg !5102
  br i1 %4, label %5, label %14, !dbg !5105

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5100, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.value(metadata i8* %7, metadata !5098, metadata !DIExpression()), !dbg !5101
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5106
  call void @llvm.dbg.value(metadata i8* %8, metadata !5098, metadata !DIExpression()), !dbg !5101
  %9 = load i8, i8* %7, align 1, !dbg !5108
  %10 = zext i8 %9 to i32, !dbg !5108
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !5109
  %12 = add nuw nsw i32 %6, 1, !dbg !5110
  call void @llvm.dbg.value(metadata i32 %12, metadata !5100, metadata !DIExpression()), !dbg !5101
  %13 = icmp eq i32 %12, %2, !dbg !5102
  br i1 %13, label %14, label %5, !dbg !5105, !llvm.loop !5111

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5113
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !563 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !765, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.value(metadata i32 %1, metadata !766, metadata !DIExpression()), !dbg !5114
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #16, !dbg !5115, !srcloc !5116
  call void @llvm.dbg.value(metadata i8* %3, metadata !768, metadata !DIExpression()), !dbg !5114
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5117
  %5 = icmp eq i8* %4, null, !dbg !5119
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5120
  call void @llvm.dbg.value(metadata i8* %6, metadata !767, metadata !DIExpression()), !dbg !5114
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5121
  %8 = icmp ult i8* %3, %7, !dbg !5123
  %9 = xor i1 %8, true, !dbg !5124
  %10 = or i1 %5, %9, !dbg !5124
  br i1 %10, label %11, label %13, !dbg !5124

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5125
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5124
  br label %13, !dbg !5124

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5125
  ret i8* %14, !dbg !5124
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !5126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5128, metadata !DIExpression()), !dbg !5129
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #15, !dbg !5130
  br label %3, !dbg !5131

3:                                                ; preds = %1, %3
  br label %3, !dbg !5131, !llvm.loop !5132
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5138, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.value(metadata i32 %1, metadata !5139, metadata !DIExpression()), !dbg !5140
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.38, i32 0, i32 0), i32 noundef %1) #15, !dbg !5141
  ret i32 -1, !dbg !5142
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5143 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.39, i32 0, i32 0)) #15, !dbg !5148
  ret i32 0, !dbg !5149
}

attributes #0 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nobuiltin nounwind optsize "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!785, !2, !797, !49, !878, !923, !150, !165, !957, !201, !285, !959, !389, !1030, !503, !760, !771}
!llvm.ident = !{!1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039, !1039}
!llvm.module.flags = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "s_hal_irrx_status", scope: !2, file: !3, line: 47, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !44, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_irrx.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!4 = !{!5, !12, !16, !22, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 162, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/inc/hal_irrx.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "HAL_IRRX_STATUS_INVALID_PARAM", value: -2)
!10 = !DIEnumerator(name: "HAL_IRRX_STATUS_NOT_SUPPORTED", value: -1)
!11 = !DIEnumerator(name: "HAL_IRRX_STATUS_OK", value: 0)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 170, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HAL_IRRX_EVENT_TRANSACTION_ERROR", value: -1)
!15 = !DIEnumerator(name: "HAL_IRRX_EVENT_TRANSACTION_SUCCESS", value: 0)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_HAL_RET_T", file: !17, line: 365, baseType: !18, size: 8, elements: !19)
!17 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_low_hal_irrx_mode_e", file: !23, line: 82, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_irrx.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "LOW_HAL_IRRX_MODE_RC5", value: 0)
!27 = !DIEnumerator(name: "LOW_HAL_IRRX_MODE_PWD", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 176, baseType: !24, size: 32, elements: !29)
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "HAL_IRRX_IDLE", value: 0)
!31 = !DIEnumerator(name: "HAL_IRRX_BUSY", value: 1)
!32 = !{!33, !38, !41, !37, !42, !43}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "low_hal_irrx_callback_t", file: !23, line: 87, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT8", file: !39, line: 84, baseType: !40)
!39 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT32", file: !39, line: 86, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !39, line: 59, baseType: !18)
!44 = !{!45}
!45 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_running_status_t", file: !6, line: 179, baseType: !28)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!48 = distinct !DIGlobalVariable(name: "s_low_hal_irrx_rc5_callback", scope: !49, file: !50, line: 90, type: !140, isLocal: true, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !97, globals: !136, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_irrx.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!51 = !{!16, !22, !52}
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !53, line: 47, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
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
!97 = !{!98, !104, !133, !134}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_IRRX_TypeDef", file: !17, line: 513, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IOT_IRRX_TypeDef", file: !17, line: 483, size: 928, elements: !101)
!101 = !{!102, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "IRH", scope: !100, file: !17, line: 484, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !39, line: 62, baseType: !24)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "IRM", scope: !100, file: !17, line: 485, baseType: !103, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "IRL", scope: !100, file: !17, line: 486, baseType: !103, size: 32, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "IRCFGH", scope: !100, file: !17, line: 487, baseType: !103, size: 32, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "IRCFGL", scope: !100, file: !17, line: 488, baseType: !103, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "IRTHD", scope: !100, file: !17, line: 489, baseType: !103, size: 32, offset: 160)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "IRCLR", scope: !100, file: !17, line: 490, baseType: !103, size: 32, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "RESV0", scope: !100, file: !17, line: 491, baseType: !103, size: 32, offset: 224)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "IR_INTCLR", scope: !100, file: !17, line: 492, baseType: !103, size: 32, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "RESV1", scope: !100, file: !17, line: 493, baseType: !103, size: 32, offset: 288)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "RESV2", scope: !100, file: !17, line: 494, baseType: !103, size: 32, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "RESV3", scope: !100, file: !17, line: 495, baseType: !103, size: 32, offset: 352)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA0", scope: !100, file: !17, line: 496, baseType: !103, size: 32, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA1", scope: !100, file: !17, line: 497, baseType: !103, size: 32, offset: 416)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA2", scope: !100, file: !17, line: 498, baseType: !103, size: 32, offset: 448)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA3", scope: !100, file: !17, line: 499, baseType: !103, size: 32, offset: 480)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA4", scope: !100, file: !17, line: 500, baseType: !103, size: 32, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA5", scope: !100, file: !17, line: 501, baseType: !103, size: 32, offset: 544)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA6", scope: !100, file: !17, line: 502, baseType: !103, size: 32, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA7", scope: !100, file: !17, line: 503, baseType: !103, size: 32, offset: 608)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA8", scope: !100, file: !17, line: 504, baseType: !103, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA9", scope: !100, file: !17, line: 505, baseType: !103, size: 32, offset: 672)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA10", scope: !100, file: !17, line: 506, baseType: !103, size: 32, offset: 704)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA11", scope: !100, file: !17, line: 507, baseType: !103, size: 32, offset: 736)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA12", scope: !100, file: !17, line: 508, baseType: !103, size: 32, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA13", scope: !100, file: !17, line: 509, baseType: !103, size: 32, offset: 800)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA14", scope: !100, file: !17, line: 510, baseType: !103, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA15", scope: !100, file: !17, line: 511, baseType: !103, size: 32, offset: 864)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "CHK_DATA16", scope: !100, file: !17, line: 512, baseType: !103, size: 32, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !53, line: 95, baseType: !52)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!136 = !{!137, !138}
!137 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "s_low_hal_irrx_pwd_callback", scope: !49, file: !50, line: 91, type: !140, isLocal: true, isDefinition: true)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "irrx_user_callback_t", file: !23, line: 92, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 89, size: 64, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !141, file: !23, line: 90, baseType: !33, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "argument", scope: !141, file: !23, line: 91, baseType: !37, size: 32, offset: 32)
!145 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!146 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!147 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !150, file: !151, line: 43, type: !155, isLocal: true, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !152, globals: !160, splitDebugInlining: false, nameTableKind: None)
!151 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!152 = !{!134, !104, !153, !159}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 48, baseType: !157)
!156 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !158, line: 79, baseType: !24)
!158 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 32)
!160 = !{!148, !161}
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !150, file: !151, line: 44, type: !155, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !165, file: !166, line: 54, type: !155, isLocal: false, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !191, globals: !198, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!167 = !{!168, !174}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 71, baseType: !24, size: 32, elements: !170)
!169 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!170 = !{!171, !172, !173}
!171 = !DIEnumerator(name: "UART_PORT0", value: 0)
!172 = !DIEnumerator(name: "UART_PORT1", value: 1)
!173 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !175, line: 129, baseType: !24, size: 32, elements: !176)
!175 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!177 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!178 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!179 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!180 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!181 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!182 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!183 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!184 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!185 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!186 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!187 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!188 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!189 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!190 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!191 = !{!134, !155, !192, !194, !43, !196, !104}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !39, line: 113, baseType: !195)
!195 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!198 = !{!163}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !201, file: !202, line: 51, type: !281, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !250, globals: !280, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!203 = !{!204, !215, !234, !241}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 163, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214}
!207 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!208 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!209 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!210 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!211 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!212 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!213 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!214 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 186, baseType: !24, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!217 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!218 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!219 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!220 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!221 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!222 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!223 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!224 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!225 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!226 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!227 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!228 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!229 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!230 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!231 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!232 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!233 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 176, baseType: !24, size: 32, elements: !235)
!235 = !{!236, !237, !238, !239, !240}
!236 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!237 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!238 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!239 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!240 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !242, line: 99, baseType: !24, size: 32, elements: !243)
!242 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!243 = !{!244, !245, !246, !247, !248, !249}
!244 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!245 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!246 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!247 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!248 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!249 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!250 = !{!251, !37}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !253, line: 72, baseType: !254)
!253 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 56, size: 525312, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !270, !271, !275, !279}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !254, file: !253, line: 57, baseType: !154, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !254, file: !253, line: 58, baseType: !154, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !254, file: !253, line: 59, baseType: !154, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !254, file: !253, line: 60, baseType: !154, size: 32, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !254, file: !253, line: 61, baseType: !154, size: 32, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !254, file: !253, line: 62, baseType: !154, size: 32, offset: 160)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !254, file: !253, line: 63, baseType: !154, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !254, file: !253, line: 64, baseType: !154, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !254, file: !253, line: 65, baseType: !154, size: 32, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !254, file: !253, line: 66, baseType: !154, size: 32, offset: 288)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !254, file: !253, line: 67, baseType: !267, size: 32, offset: 320)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 32, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 1)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !254, file: !253, line: 68, baseType: !154, size: 32, offset: 352)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !254, file: !253, line: 69, baseType: !272, size: 523904, offset: 384)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 523904, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 16372)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !254, file: !253, line: 70, baseType: !276, size: 512, offset: 524288)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 512, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !254, file: !253, line: 71, baseType: !276, size: 512, offset: 524800)
!280 = !{!199}
!281 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !282)
!282 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !285, file: !286, line: 53, type: !376, isLocal: false, isDefinition: true)
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !287, retainedTypes: !296, globals: !375, splitDebugInlining: false, nameTableKind: None)
!286 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!287 = !{!288, !52}
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !289, line: 152, baseType: !7, size: 32, elements: !290)
!289 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!290 = !{!291, !292, !293, !294, !295}
!291 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!292 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!293 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!294 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!295 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!296 = !{!297, !37, !155, !298, !300, !336}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !53, line: 97, baseType: !133)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !156, line: 44, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !158, line: 77, baseType: !7)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !302, line: 378, baseType: !303)
!302 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 363, size: 28704, elements: !304)
!304 = !{!305, !309, !313, !314, !315, !316, !317, !318, !319, !320, !324, !331, !335}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !303, file: !302, line: 365, baseType: !306, size: 256)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 256, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 8)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !303, file: !302, line: 366, baseType: !310, size: 768, offset: 256)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 768, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 24)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !303, file: !302, line: 367, baseType: !306, size: 256, offset: 1024)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !303, file: !302, line: 368, baseType: !310, size: 768, offset: 1280)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !303, file: !302, line: 369, baseType: !306, size: 256, offset: 2048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !303, file: !302, line: 370, baseType: !310, size: 768, offset: 2304)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !303, file: !302, line: 371, baseType: !306, size: 256, offset: 3072)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !303, file: !302, line: 372, baseType: !310, size: 768, offset: 3328)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !303, file: !302, line: 373, baseType: !306, size: 256, offset: 4096)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !303, file: !302, line: 374, baseType: !321, size: 1792, offset: 4352)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1792, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 56)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !303, file: !302, line: 375, baseType: !325, size: 1920, offset: 6144)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 1920, elements: !329)
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !156, line: 24, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !158, line: 43, baseType: !18)
!329 = !{!330}
!330 = !DISubrange(count: 240)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !303, file: !302, line: 376, baseType: !332, size: 20608, offset: 8064)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 20608, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 644)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !303, file: !302, line: 377, baseType: !154, size: 32, offset: 28672)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !302, line: 418, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 395, size: 1120, elements: !339)
!339 = !{!340, !342, !343, !344, !345, !346, !347, !351, !352, !353, !354, !355, !356, !357, !358, !362, !363, !364, !368, !372, !374}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !338, file: !302, line: 397, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !338, file: !302, line: 398, baseType: !154, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !338, file: !302, line: 399, baseType: !154, size: 32, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !338, file: !302, line: 400, baseType: !154, size: 32, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !338, file: !302, line: 401, baseType: !154, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !338, file: !302, line: 402, baseType: !154, size: 32, offset: 160)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !338, file: !302, line: 403, baseType: !348, size: 96, offset: 192)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 96, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 12)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !338, file: !302, line: 404, baseType: !154, size: 32, offset: 288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !338, file: !302, line: 405, baseType: !154, size: 32, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !338, file: !302, line: 406, baseType: !154, size: 32, offset: 352)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !338, file: !302, line: 407, baseType: !154, size: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !338, file: !302, line: 408, baseType: !154, size: 32, offset: 416)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !338, file: !302, line: 409, baseType: !154, size: 32, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !338, file: !302, line: 410, baseType: !154, size: 32, offset: 480)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !338, file: !302, line: 411, baseType: !359, size: 64, offset: 512)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 2)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !338, file: !302, line: 412, baseType: !341, size: 32, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !338, file: !302, line: 413, baseType: !341, size: 32, offset: 608)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !338, file: !302, line: 414, baseType: !365, size: 128, offset: 640)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 128, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 4)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !338, file: !302, line: 415, baseType: !369, size: 160, offset: 768)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 160, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 5)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !338, file: !302, line: 416, baseType: !373, size: 160, offset: 928)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 160, elements: !370)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !338, file: !302, line: 417, baseType: !154, size: 32, offset: 1088)
!375 = !{!283}
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 6144, elements: !385)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !286, line: 50, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 47, size: 64, elements: !379)
!379 = !{!380, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !378, file: !286, line: 48, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !297}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !378, file: !286, line: 49, baseType: !155, size: 32, offset: 32)
!385 = !{!386}
!386 = !DISubrange(count: 96)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !389, file: !390, line: 77, type: !459, isLocal: true, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !391, retainedTypes: !442, globals: !444, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!391 = !{!392, !400, !406, !422, !428, !432, !168, !174, !437}
!392 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !393, line: 345, baseType: !7, size: 32, elements: !394)
!393 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!394 = !{!395, !396, !397, !398, !399}
!395 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!396 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!397 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!398 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!399 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !401, line: 109, baseType: !24, size: 32, elements: !402)
!401 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!402 = !{!403, !404, !405}
!403 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!404 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!405 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!406 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !393, line: 302, baseType: !24, size: 32, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!408 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!409 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!410 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!411 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!412 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!413 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!414 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!415 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!416 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!417 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!418 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!419 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!420 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!421 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !393, line: 321, baseType: !24, size: 32, elements: !423)
!423 = !{!424, !425, !426, !427}
!424 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!425 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!426 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!427 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !393, line: 330, baseType: !24, size: 32, elements: !429)
!429 = !{!430, !431}
!430 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!431 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !393, line: 337, baseType: !24, size: 32, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!435 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!436 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !393, line: 355, baseType: !7, size: 32, elements: !438)
!438 = !{!439, !440, !441}
!439 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!440 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!441 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!442 = !{!24, !37, !18, !443, !327}
!443 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!444 = !{!387, !445}
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "func_tbl", scope: !447, file: !390, line: 536, type: !457, isLocal: true, isDefinition: true)
!447 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !390, file: !390, line: 534, type: !448, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !455)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !175, line: 197, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 32)
!452 = !DISubroutineType(types: !453)
!453 = !{null}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !401, line: 113, baseType: !400)
!455 = !{!456}
!456 = !DILocalVariable(name: "uart_port", arg: 1, scope: !447, file: !390, line: 534, type: !454)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 64, elements: !360)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !360)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !390, line: 75, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 68, size: 512, elements: !462)
!462 = !{!463, !464, !476, !477, !488, !489}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !461, file: !390, line: 69, baseType: !282, size: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !461, file: !390, line: 70, baseType: !465, size: 128, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !393, line: 378, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 373, size: 128, elements: !467)
!467 = !{!468, !470, !472, !474}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !466, file: !393, line: 374, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !393, line: 317, baseType: !406)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !466, file: !393, line: 375, baseType: !471, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !393, line: 326, baseType: !422)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !466, file: !393, line: 376, baseType: !473, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !393, line: 333, baseType: !428)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !466, file: !393, line: 377, baseType: !475, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !393, line: 341, baseType: !432)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !461, file: !390, line: 71, baseType: !282, size: 8, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !461, file: !390, line: 72, baseType: !478, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !390, line: 66, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 63, size: 64, elements: !480)
!480 = !{!481, !487}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !479, file: !390, line: 64, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !393, line: 410, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 32)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !486, !37}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !393, line: 359, baseType: !437)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !479, file: !390, line: 65, baseType: !37, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !461, file: !390, line: 73, baseType: !282, size: 8, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !461, file: !390, line: 74, baseType: !490, size: 224, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !393, line: 390, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 382, size: 224, elements: !492)
!492 = !{!493, !495, !496, !497, !498, !499, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !491, file: !393, line: 383, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !491, file: !393, line: 384, baseType: !155, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !491, file: !393, line: 385, baseType: !155, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !491, file: !393, line: 386, baseType: !494, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !491, file: !393, line: 387, baseType: !155, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !491, file: !393, line: 388, baseType: !155, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !491, file: !393, line: 389, baseType: !155, size: 32, offset: 192)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !503, file: !504, line: 59, type: !155, isLocal: false, isDefinition: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, globals: !558, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!505 = !{!506, !514, !539}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !302, line: 656, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 650, size: 128, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !508, file: !302, line: 652, baseType: !154, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !508, file: !302, line: 653, baseType: !154, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !508, file: !302, line: 654, baseType: !154, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !508, file: !302, line: 655, baseType: !341, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !302, line: 418, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 395, size: 1120, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !516, file: !302, line: 397, baseType: !341, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !516, file: !302, line: 398, baseType: !154, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !516, file: !302, line: 399, baseType: !154, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !516, file: !302, line: 400, baseType: !154, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !516, file: !302, line: 401, baseType: !154, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !516, file: !302, line: 402, baseType: !154, size: 32, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !516, file: !302, line: 403, baseType: !348, size: 96, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !516, file: !302, line: 404, baseType: !154, size: 32, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !516, file: !302, line: 405, baseType: !154, size: 32, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !516, file: !302, line: 406, baseType: !154, size: 32, offset: 352)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !516, file: !302, line: 407, baseType: !154, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !516, file: !302, line: 408, baseType: !154, size: 32, offset: 416)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !516, file: !302, line: 409, baseType: !154, size: 32, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !516, file: !302, line: 410, baseType: !154, size: 32, offset: 480)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !516, file: !302, line: 411, baseType: !359, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !516, file: !302, line: 412, baseType: !341, size: 32, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !516, file: !302, line: 413, baseType: !341, size: 32, offset: 608)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !516, file: !302, line: 414, baseType: !365, size: 128, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !516, file: !302, line: 415, baseType: !369, size: 160, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !516, file: !302, line: 416, baseType: !373, size: 160, offset: 928)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !516, file: !302, line: 417, baseType: !154, size: 32, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !253, line: 72, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !253, line: 56, size: 525312, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !541, file: !253, line: 57, baseType: !154, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !541, file: !253, line: 58, baseType: !154, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !541, file: !253, line: 59, baseType: !154, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !541, file: !253, line: 60, baseType: !154, size: 32, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !541, file: !253, line: 61, baseType: !154, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !541, file: !253, line: 62, baseType: !154, size: 32, offset: 160)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !541, file: !253, line: 63, baseType: !154, size: 32, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !541, file: !253, line: 64, baseType: !154, size: 32, offset: 224)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !541, file: !253, line: 65, baseType: !154, size: 32, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !541, file: !253, line: 66, baseType: !154, size: 32, offset: 288)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !541, file: !253, line: 67, baseType: !267, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !541, file: !253, line: 68, baseType: !154, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !541, file: !253, line: 69, baseType: !272, size: 523904, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !541, file: !253, line: 70, baseType: !276, size: 512, offset: 524288)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !541, file: !253, line: 71, baseType: !276, size: 512, offset: 524800)
!558 = !{!501, !559}
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !503, file: !504, line: 61, type: !154, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "heap_end", scope: !563, file: !564, line: 66, type: !569, isLocal: true, isDefinition: true)
!563 = distinct !DISubprogram(name: "_sbrk_r", scope: !564, file: !564, line: 63, type: !565, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !764)
!564 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!565 = !DISubroutineType(types: !566)
!566 = !{!567, !570, !759}
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !568, line: 123, baseType: !569)
!568 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 32)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !572, line: 377, size: 1920, elements: !573)
!572 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!573 = !{!574, !575, !648, !649, !650, !651, !652, !653, !654, !657, !678, !682, !683, !684, !685, !695, !708, !709, !714, !733, !734, !741, !742, !758}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !571, file: !572, line: 381, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !571, file: !572, line: 386, baseType: !576, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !572, line: 292, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !572, line: 186, size: 832, elements: !579)
!579 = !{!580, !581, !582, !583, !585, !586, !591, !592, !593, !594, !598, !604, !611, !615, !616, !617, !618, !622, !624, !625, !626, !628, !634, !647}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !578, file: !572, line: 187, baseType: !40, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !578, file: !572, line: 188, baseType: !7, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !578, file: !572, line: 189, baseType: !7, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !578, file: !572, line: 190, baseType: !584, size: 16, offset: 96)
!584 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !578, file: !572, line: 191, baseType: !584, size: 16, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !578, file: !572, line: 192, baseType: !587, size: 64, offset: 128)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !572, line: 122, size: 64, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !587, file: !572, line: 123, baseType: !40, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !587, file: !572, line: 124, baseType: !7, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !578, file: !572, line: 193, baseType: !7, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !578, file: !572, line: 196, baseType: !570, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !578, file: !572, line: 200, baseType: !37, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !578, file: !572, line: 202, baseType: !595, size: 32, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 32)
!596 = !DISubroutineType(types: !597)
!597 = !{!7, !570, !37, !569, !7}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !578, file: !572, line: 204, baseType: !599, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 32)
!600 = !DISubroutineType(types: !601)
!601 = !{!7, !570, !37, !602, !7}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !578, file: !572, line: 207, baseType: !605, size: 32, offset: 352)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 32)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !570, !37, !608, !7}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !609, line: 116, baseType: !610)
!609 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!610 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !578, file: !572, line: 208, baseType: !612, size: 32, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 32)
!613 = !DISubroutineType(types: !614)
!614 = !{!7, !570, !37}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !578, file: !572, line: 211, baseType: !587, size: 64, offset: 416)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !578, file: !572, line: 212, baseType: !40, size: 32, offset: 480)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !578, file: !572, line: 213, baseType: !7, size: 32, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !578, file: !572, line: 216, baseType: !619, size: 24, offset: 544)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 3)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !578, file: !572, line: 217, baseType: !623, size: 8, offset: 568)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !268)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !578, file: !572, line: 220, baseType: !587, size: 64, offset: 576)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !578, file: !572, line: 223, baseType: !7, size: 32, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !578, file: !572, line: 224, baseType: !627, size: 32, offset: 672)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !609, line: 46, baseType: !610)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !578, file: !572, line: 231, baseType: !629, size: 32, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !572, line: 35, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !631, line: 34, baseType: !632)
!631 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 32)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !631, line: 33, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !578, file: !572, line: 233, baseType: !635, size: 64, offset: 736)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !609, line: 170, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !609, line: 162, size: 64, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !636, file: !609, line: 164, baseType: !7, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !636, file: !609, line: 169, baseType: !640, size: 32, offset: 32)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !609, line: 165, size: 32, elements: !641)
!641 = !{!642, !645}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !640, file: !609, line: 167, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !644, line: 116, baseType: !7)
!644 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !640, file: !609, line: 168, baseType: !646, size: 32)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !366)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !578, file: !572, line: 234, baseType: !7, size: 32, offset: 800)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !571, file: !572, line: 386, baseType: !576, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !571, file: !572, line: 386, baseType: !576, size: 32, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !571, file: !572, line: 388, baseType: !7, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !571, file: !572, line: 390, baseType: !569, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !571, file: !572, line: 392, baseType: !7, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !571, file: !572, line: 394, baseType: !7, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !571, file: !572, line: 395, baseType: !655, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 32)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !572, line: 45, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !571, file: !572, line: 397, baseType: !658, size: 32, offset: 288)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 32)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !572, line: 349, size: 128, elements: !660)
!660 = !{!661, !674, !675, !676}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !659, file: !572, line: 352, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 32)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !572, line: 52, size: 192, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !663, file: !572, line: 54, baseType: !662, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !663, file: !572, line: 55, baseType: !7, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !663, file: !572, line: 55, baseType: !7, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !663, file: !572, line: 55, baseType: !7, size: 32, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !663, file: !572, line: 55, baseType: !7, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !663, file: !572, line: 56, baseType: !671, size: 32, offset: 160)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 32, elements: !268)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !572, line: 22, baseType: !673)
!673 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !659, file: !572, line: 353, baseType: !7, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !659, file: !572, line: 354, baseType: !662, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !659, file: !572, line: 355, baseType: !677, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !571, file: !572, line: 399, baseType: !679, size: 32, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 32)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !570}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !571, file: !572, line: 401, baseType: !7, size: 32, offset: 352)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !571, file: !572, line: 404, baseType: !7, size: 32, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !571, file: !572, line: 405, baseType: !569, size: 32, offset: 416)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !571, file: !572, line: 407, baseType: !686, size: 32, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 32)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !572, line: 324, size: 192, elements: !688)
!688 = !{!689, !691, !692, !693}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !687, file: !572, line: 325, baseType: !690, size: 48)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 48, elements: !620)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !687, file: !572, line: 326, baseType: !690, size: 48, offset: 48)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !687, file: !572, line: 327, baseType: !195, size: 16, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !687, file: !572, line: 330, baseType: !694, size: 64, offset: 128)
!694 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !571, file: !572, line: 408, baseType: !696, size: 32, offset: 480)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 32)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !572, line: 60, size: 288, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !697, file: !572, line: 62, baseType: !7, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !697, file: !572, line: 63, baseType: !7, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !697, file: !572, line: 64, baseType: !7, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !697, file: !572, line: 65, baseType: !7, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !697, file: !572, line: 66, baseType: !7, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !697, file: !572, line: 67, baseType: !7, size: 32, offset: 160)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !697, file: !572, line: 68, baseType: !7, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !697, file: !572, line: 69, baseType: !7, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !697, file: !572, line: 70, baseType: !7, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !571, file: !572, line: 409, baseType: !569, size: 32, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !571, file: !572, line: 412, baseType: !710, size: 32, offset: 544)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !7}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !571, file: !572, line: 416, baseType: !715, size: 32, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 32)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !572, line: 90, size: 1120, elements: !717)
!717 = !{!718, !719, !720, !724}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !716, file: !572, line: 91, baseType: !715, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !716, file: !572, line: 92, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !716, file: !572, line: 93, baseType: !721, size: 1024, offset: 64)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 1024, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !716, file: !572, line: 94, baseType: !725, size: 32, offset: 1088)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !572, line: 79, size: 2112, elements: !727)
!727 = !{!728, !730, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !726, file: !572, line: 80, baseType: !729, size: 1024)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1024, elements: !722)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !726, file: !572, line: 81, baseType: !729, size: 1024, offset: 1024)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !726, file: !572, line: 83, baseType: !672, size: 32, offset: 2048)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !726, file: !572, line: 86, baseType: !672, size: 32, offset: 2080)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !571, file: !572, line: 417, baseType: !716, size: 1120, offset: 608)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !571, file: !572, line: 420, baseType: !735, size: 96, offset: 1728)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !572, line: 296, size: 96, elements: !736)
!736 = !{!737, !739, !740}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !735, file: !572, line: 298, baseType: !738, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !735, file: !572, line: 299, baseType: !7, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !735, file: !572, line: 300, baseType: !576, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !571, file: !572, line: 421, baseType: !576, size: 32, offset: 1824)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !571, file: !572, line: 422, baseType: !743, size: 32, offset: 1856)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 32)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !572, line: 359, size: 640, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !752, !753, !754, !755, !756, !757}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !744, file: !572, line: 362, baseType: !569, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !744, file: !572, line: 363, baseType: !635, size: 64, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !744, file: !572, line: 364, baseType: !635, size: 64, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !744, file: !572, line: 365, baseType: !635, size: 64, offset: 160)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !744, file: !572, line: 366, baseType: !751, size: 64, offset: 224)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 64, elements: !307)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !744, file: !572, line: 367, baseType: !7, size: 32, offset: 288)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !744, file: !572, line: 368, baseType: !635, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !744, file: !572, line: 369, baseType: !635, size: 64, offset: 384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !744, file: !572, line: 370, baseType: !635, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !744, file: !572, line: 371, baseType: !635, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !744, file: !572, line: 372, baseType: !635, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !571, file: !572, line: 423, baseType: !569, size: 32, offset: 1888)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !644, line: 46, baseType: !24)
!760 = distinct !DICompileUnit(language: DW_LANG_C99, file: !761, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, globals: !763, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!762 = !{!569, !567}
!763 = !{!561}
!764 = !{!765, !766, !767, !768}
!765 = !DILocalVariable(name: "r", arg: 1, scope: !563, file: !564, line: 63, type: !570)
!766 = !DILocalVariable(name: "nbytes", arg: 2, scope: !563, file: !564, line: 63, type: !759)
!767 = !DILocalVariable(name: "prev_heap_end", scope: !563, file: !564, line: 67, type: !569)
!768 = !DILocalVariable(name: "stack", scope: !563, file: !564, line: 68, type: !569)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !771, file: !776, line: 4, type: !782, isLocal: false, isDefinition: true)
!771 = distinct !DICompileUnit(language: DW_LANG_C99, file: !772, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !773, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!773 = !{!769, !774, !780}
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !771, file: !776, line: 5, type: !777, isLocal: false, isDefinition: true)
!776 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 88, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 11)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !771, file: !776, line: 6, type: !777, isLocal: false, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 248, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 31)
!785 = distinct !DICompileUnit(language: DW_LANG_C99, file: !786, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !787, retainedTypes: !793, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!787 = !{!788}
!788 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !789, line: 1209, baseType: !24, size: 32, elements: !790)
!789 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!790 = !{!791, !792}
!791 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!792 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!793 = !{!794, !796}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !39, line: 116, baseType: !24)
!797 = distinct !DICompileUnit(language: DW_LANG_C99, file: !798, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !799, retainedTypes: !877, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!799 = !{!800}
!800 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !801, line: 150, baseType: !24, size: 32, elements: !802)
!801 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!802 = !{!803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876}
!803 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!804 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!805 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!806 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!807 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!808 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!809 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!810 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!811 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!812 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!813 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!814 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!815 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!816 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!817 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!818 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!819 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!820 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!821 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!822 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!823 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!824 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!825 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!826 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!827 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!828 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!829 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!830 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!831 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!832 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!833 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!834 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!835 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!836 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!837 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!838 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!839 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!840 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!841 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!842 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!843 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!844 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!845 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!846 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!847 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!848 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!849 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!850 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!851 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!852 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!853 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!854 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!855 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!856 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!857 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!858 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!859 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!860 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!861 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!862 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!863 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!864 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!865 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!866 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!867 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!868 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!869 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!870 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!871 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!872 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!873 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!874 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!875 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!876 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!877 = !{!794, !104}
!878 = distinct !DICompileUnit(language: DW_LANG_C99, file: !879, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !880, splitDebugInlining: false, nameTableKind: None)
!879 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!880 = !{!881, !906}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !302, line: 418, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 395, size: 1120, elements: !884)
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !883, file: !302, line: 397, baseType: !341, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !883, file: !302, line: 398, baseType: !154, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !883, file: !302, line: 399, baseType: !154, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !883, file: !302, line: 400, baseType: !154, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !883, file: !302, line: 401, baseType: !154, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !883, file: !302, line: 402, baseType: !154, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !883, file: !302, line: 403, baseType: !348, size: 96, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !883, file: !302, line: 404, baseType: !154, size: 32, offset: 288)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !883, file: !302, line: 405, baseType: !154, size: 32, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !883, file: !302, line: 406, baseType: !154, size: 32, offset: 352)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !883, file: !302, line: 407, baseType: !154, size: 32, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !883, file: !302, line: 408, baseType: !154, size: 32, offset: 416)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !883, file: !302, line: 409, baseType: !154, size: 32, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !883, file: !302, line: 410, baseType: !154, size: 32, offset: 480)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !883, file: !302, line: 411, baseType: !359, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !883, file: !302, line: 412, baseType: !341, size: 32, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !883, file: !302, line: 413, baseType: !341, size: 32, offset: 608)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !883, file: !302, line: 414, baseType: !365, size: 128, offset: 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !883, file: !302, line: 415, baseType: !369, size: 160, offset: 768)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !883, file: !302, line: 416, baseType: !373, size: 160, offset: 928)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !883, file: !302, line: 417, baseType: !154, size: 32, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !302, line: 378, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 363, size: 28704, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !908, file: !302, line: 365, baseType: !306, size: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !908, file: !302, line: 366, baseType: !310, size: 768, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !908, file: !302, line: 367, baseType: !306, size: 256, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !908, file: !302, line: 368, baseType: !310, size: 768, offset: 1280)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !908, file: !302, line: 369, baseType: !306, size: 256, offset: 2048)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !908, file: !302, line: 370, baseType: !310, size: 768, offset: 2304)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !908, file: !302, line: 371, baseType: !306, size: 256, offset: 3072)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !908, file: !302, line: 372, baseType: !310, size: 768, offset: 3328)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !908, file: !302, line: 373, baseType: !306, size: 256, offset: 4096)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !908, file: !302, line: 374, baseType: !321, size: 1792, offset: 4352)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !908, file: !302, line: 375, baseType: !325, size: 1920, offset: 6144)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !908, file: !302, line: 376, baseType: !332, size: 20608, offset: 8064)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !908, file: !302, line: 377, baseType: !154, size: 32, offset: 28672)
!923 = distinct !DICompileUnit(language: DW_LANG_C99, file: !924, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !925, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!925 = !{!926, !800}
!926 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !927, line: 55, baseType: !24, size: 32, elements: !928)
!927 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956}
!929 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!930 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!931 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!932 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!933 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!934 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!935 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!936 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!937 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!938 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!939 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!940 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!941 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!942 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!943 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!944 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!945 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!946 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!947 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!948 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!949 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!950 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!951 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!952 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!953 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!954 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!955 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!956 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!957 = distinct !DICompileUnit(language: DW_LANG_C99, file: !958, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!959 = distinct !DICompileUnit(language: DW_LANG_C99, file: !960, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !961, retainedTypes: !1025, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!961 = !{!962, !969, !926, !1000, !1006, !1010, !1014, !1020}
!962 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !963, line: 233, baseType: !7, size: 32, elements: !964)
!963 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!964 = !{!965, !966, !967, !968}
!965 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!966 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!967 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!968 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!969 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !401, line: 249, baseType: !24, size: 32, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!971 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!972 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!973 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!974 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!975 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!976 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!977 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!978 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!979 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!980 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!981 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!982 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!983 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!984 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!985 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!986 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!987 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!988 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!989 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!990 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!991 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!992 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!993 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!994 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!995 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!996 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!997 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!998 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!999 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1000 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !963, line: 224, baseType: !7, size: 32, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005}
!1002 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1003 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1004 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1005 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1006 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !963, line: 217, baseType: !24, size: 32, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1009 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1010 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !963, line: 210, baseType: !24, size: 32, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1013 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1014 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !963, line: 242, baseType: !24, size: 32, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019}
!1016 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1017 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1018 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1019 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1020 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1021, line: 57, baseType: !24, size: 32, elements: !1022)
!1021 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!1022 = !{!1023, !1024}
!1023 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1024 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1025 = !{!1026, !37, !1027, !327, !1028, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !927, line: 87, baseType: !926)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !963, line: 220, baseType: !1006)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !963, line: 247, baseType: !1014)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1021, line: 60, baseType: !1020)
!1030 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1031, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1032, retainedTypes: !1033, splitDebugInlining: false, nameTableKind: None)
!1031 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!1032 = !{!400, !406, !422, !428, !432, !969, !12}
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_callback_t", file: !6, line: 198, baseType: !1035)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 32)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !1038, !37}
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_event_t", file: !6, line: 173, baseType: !12)
!1039 = !{!"Ubuntu clang version 14.0.6"}
!1040 = !{i32 7, !"Dwarf Version", i32 2}
!1041 = !{i32 2, !"Debug Info Version", i32 3}
!1042 = !{i32 1, !"wchar_size", i32 4}
!1043 = !{i32 1, !"min_enum_size", i32 4}
!1044 = !{i32 1, !"branch-target-enforcement", i32 0}
!1045 = !{i32 1, !"sign-return-address", i32 0}
!1046 = !{i32 1, !"sign-return-address-all", i32 0}
!1047 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1048 = !{i32 7, !"frame-pointer", i32 2}
!1049 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !786, file: !786, line: 54, type: !1050, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1053)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!1052, !104, !43}
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !39, line: 56, baseType: !7)
!1053 = !{!1054, !1055, !1056, !1058}
!1054 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1049, file: !786, line: 54, type: !104)
!1055 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1049, file: !786, line: 54, type: !43)
!1056 = !DILocalVariable(name: "no", scope: !1049, file: !786, line: 57, type: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !39, line: 60, baseType: !195)
!1058 = !DILocalVariable(name: "remainder", scope: !1049, file: !786, line: 58, type: !1057)
!1059 = !DILocation(line: 0, scope: !1049)
!1060 = !DILocation(line: 59, column: 19, scope: !1049)
!1061 = !DILocation(line: 60, column: 17, scope: !1049)
!1062 = !DILocation(line: 61, column: 5, scope: !1049)
!1063 = !DILocation(line: 65, column: 27, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !786, line: 65, column: 17)
!1065 = distinct !DILexicalBlock(scope: !1049, file: !786, line: 61, column: 17)
!1066 = !DILocation(line: 0, scope: !1064)
!1067 = !DILocation(line: 65, column: 17, scope: !1065)
!1068 = !DILocation(line: 66, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !786, line: 65, column: 33)
!1070 = !DILocation(line: 67, column: 73, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !786, line: 66, column: 38)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !786, line: 66, column: 21)
!1073 = !DILocation(line: 67, column: 69, scope: !1071)
!1074 = !DILocation(line: 67, column: 66, scope: !1071)
!1075 = !DILocation(line: 68, column: 17, scope: !1071)
!1076 = !DILocation(line: 68, column: 28, scope: !1072)
!1077 = !DILocation(line: 69, column: 77, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !786, line: 68, column: 45)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !786, line: 68, column: 28)
!1080 = !DILocation(line: 70, column: 77, scope: !1078)
!1081 = !DILocation(line: 71, column: 17, scope: !1078)
!1082 = !DILocation(line: 72, column: 77, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !786, line: 71, column: 45)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !786, line: 71, column: 28)
!1085 = !DILocation(line: 73, column: 77, scope: !1083)
!1086 = !DILocation(line: 74, column: 17, scope: !1083)
!1087 = !DILocation(line: 75, column: 79, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !786, line: 74, column: 45)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !786, line: 74, column: 28)
!1090 = !DILocation(line: 76, column: 79, scope: !1088)
!1091 = !DILocation(line: 77, column: 17, scope: !1088)
!1092 = !DILocation(line: 78, column: 79, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !786, line: 77, column: 45)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !786, line: 77, column: 28)
!1095 = !DILocation(line: 79, column: 79, scope: !1093)
!1096 = !DILocation(line: 80, column: 17, scope: !1093)
!1097 = !DILocation(line: 81, column: 79, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !786, line: 80, column: 45)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !786, line: 80, column: 28)
!1100 = !DILocation(line: 82, column: 79, scope: !1098)
!1101 = !DILocation(line: 83, column: 17, scope: !1098)
!1102 = !DILocation(line: 85, column: 17, scope: !1069)
!1103 = !DILocation(line: 86, column: 13, scope: !1069)
!1104 = !DILocation(line: 88, column: 21, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1064, file: !786, line: 86, column: 20)
!1106 = !DILocation(line: 89, column: 72, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !786, line: 88, column: 38)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !786, line: 88, column: 21)
!1109 = !DILocation(line: 89, column: 66, scope: !1107)
!1110 = !DILocation(line: 90, column: 17, scope: !1107)
!1111 = !DILocation(line: 90, column: 28, scope: !1108)
!1112 = !DILocation(line: 91, column: 77, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !786, line: 90, column: 45)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !786, line: 90, column: 28)
!1115 = !DILocation(line: 92, column: 17, scope: !1113)
!1116 = !DILocation(line: 93, column: 77, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !786, line: 92, column: 45)
!1118 = distinct !DILexicalBlock(scope: !1114, file: !786, line: 92, column: 28)
!1119 = !DILocation(line: 94, column: 17, scope: !1117)
!1120 = !DILocation(line: 95, column: 79, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !786, line: 94, column: 45)
!1122 = distinct !DILexicalBlock(scope: !1118, file: !786, line: 94, column: 28)
!1123 = !DILocation(line: 96, column: 17, scope: !1121)
!1124 = !DILocation(line: 97, column: 79, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !786, line: 96, column: 45)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !786, line: 96, column: 28)
!1127 = !DILocation(line: 98, column: 17, scope: !1125)
!1128 = !DILocation(line: 99, column: 79, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !786, line: 98, column: 45)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !786, line: 98, column: 28)
!1131 = !DILocation(line: 100, column: 17, scope: !1129)
!1132 = !DILocation(line: 103, column: 17, scope: !1105)
!1133 = !DILocation(line: 109, column: 27, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1065, file: !786, line: 109, column: 17)
!1135 = !DILocation(line: 0, scope: !1134)
!1136 = !DILocation(line: 109, column: 17, scope: !1065)
!1137 = !DILocation(line: 110, column: 21, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !786, line: 109, column: 33)
!1139 = !DILocation(line: 111, column: 73, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !786, line: 110, column: 36)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !786, line: 110, column: 21)
!1142 = !DILocation(line: 111, column: 69, scope: !1140)
!1143 = !DILocation(line: 111, column: 66, scope: !1140)
!1144 = !DILocation(line: 112, column: 17, scope: !1140)
!1145 = !DILocation(line: 113, column: 79, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !786, line: 112, column: 24)
!1147 = !DILocation(line: 114, column: 79, scope: !1146)
!1148 = !DILocation(line: 117, column: 17, scope: !1138)
!1149 = !DILocation(line: 118, column: 13, scope: !1138)
!1150 = !DILocation(line: 120, column: 21, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1134, file: !786, line: 118, column: 20)
!1152 = !DILocation(line: 121, column: 72, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !786, line: 120, column: 36)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !786, line: 120, column: 21)
!1155 = !DILocation(line: 121, column: 66, scope: !1153)
!1156 = !DILocation(line: 122, column: 17, scope: !1153)
!1157 = !DILocation(line: 123, column: 79, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !786, line: 122, column: 24)
!1159 = !DILocation(line: 126, column: 17, scope: !1151)
!1160 = !DILocation(line: 133, column: 1, scope: !1049)
!1161 = distinct !DISubprogram(name: "halGPO_Write", scope: !786, file: !786, line: 136, type: !1050, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1162)
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1161, file: !786, line: 136, type: !104)
!1164 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1161, file: !786, line: 136, type: !43)
!1165 = !DILocalVariable(name: "no", scope: !1161, file: !786, line: 138, type: !1057)
!1166 = !DILocalVariable(name: "remainder", scope: !1161, file: !786, line: 139, type: !1057)
!1167 = !DILocation(line: 0, scope: !1161)
!1168 = !DILocation(line: 140, column: 19, scope: !1161)
!1169 = !DILocation(line: 141, column: 17, scope: !1161)
!1170 = !DILocation(line: 142, column: 5, scope: !1161)
!1171 = !DILocation(line: 145, column: 17, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !786, line: 145, column: 17)
!1173 = distinct !DILexicalBlock(scope: !1161, file: !786, line: 142, column: 17)
!1174 = !DILocation(line: 0, scope: !1172)
!1175 = !DILocation(line: 145, column: 17, scope: !1173)
!1176 = !DILocation(line: 146, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !786, line: 145, column: 29)
!1178 = !DILocation(line: 147, column: 13, scope: !1177)
!1179 = !DILocation(line: 148, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1172, file: !786, line: 147, column: 20)
!1181 = !DILocation(line: 153, column: 17, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1173, file: !786, line: 153, column: 17)
!1183 = !DILocation(line: 0, scope: !1182)
!1184 = !DILocation(line: 153, column: 17, scope: !1173)
!1185 = !DILocation(line: 154, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !786, line: 153, column: 29)
!1187 = !DILocation(line: 155, column: 13, scope: !1186)
!1188 = !DILocation(line: 156, column: 17, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !786, line: 155, column: 20)
!1190 = !DILocation(line: 163, column: 1, scope: !1161)
!1191 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !786, file: !786, line: 169, type: !1192, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!43, !104}
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1191, file: !786, line: 169, type: !104)
!1196 = !DILocalVariable(name: "no", scope: !1191, file: !786, line: 171, type: !1057)
!1197 = !DILocalVariable(name: "remainder", scope: !1191, file: !786, line: 172, type: !1057)
!1198 = !DILocalVariable(name: "dout", scope: !1191, file: !786, line: 175, type: !43)
!1199 = !DILocation(line: 0, scope: !1191)
!1200 = !DILocation(line: 173, column: 19, scope: !1191)
!1201 = !DILocation(line: 174, column: 17, scope: !1191)
!1202 = !DILocation(line: 177, column: 5, scope: !1191)
!1203 = !DILocation(line: 183, column: 13, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1191, file: !786, line: 177, column: 17)
!1205 = !DILocation(line: 0, scope: !1204)
!1206 = !DILocation(line: 187, column: 5, scope: !1191)
!1207 = !DILocation(line: 188, column: 1, scope: !1191)
!1208 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !786, file: !786, line: 189, type: !1192, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1209)
!1209 = !{!1210, !1211, !1212, !1213}
!1210 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1208, file: !786, line: 189, type: !104)
!1211 = !DILocalVariable(name: "no", scope: !1208, file: !786, line: 191, type: !1057)
!1212 = !DILocalVariable(name: "remainder", scope: !1208, file: !786, line: 192, type: !1057)
!1213 = !DILocalVariable(name: "din", scope: !1208, file: !786, line: 195, type: !43)
!1214 = !DILocation(line: 0, scope: !1208)
!1215 = !DILocation(line: 193, column: 19, scope: !1208)
!1216 = !DILocation(line: 194, column: 17, scope: !1208)
!1217 = !DILocation(line: 196, column: 5, scope: !1208)
!1218 = !DILocation(line: 203, column: 13, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1208, file: !786, line: 196, column: 17)
!1220 = !DILocation(line: 0, scope: !1219)
!1221 = !DILocation(line: 208, column: 5, scope: !1208)
!1222 = !DILocation(line: 209, column: 1, scope: !1208)
!1223 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !786, file: !786, line: 210, type: !1192, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1224)
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1223, file: !786, line: 210, type: !104)
!1226 = !DILocalVariable(name: "no", scope: !1223, file: !786, line: 212, type: !1057)
!1227 = !DILocalVariable(name: "remainder", scope: !1223, file: !786, line: 213, type: !1057)
!1228 = !DILocalVariable(name: "outEnable", scope: !1223, file: !786, line: 216, type: !43)
!1229 = !DILocation(line: 0, scope: !1223)
!1230 = !DILocation(line: 214, column: 19, scope: !1223)
!1231 = !DILocation(line: 215, column: 17, scope: !1223)
!1232 = !DILocation(line: 218, column: 5, scope: !1223)
!1233 = !DILocation(line: 224, column: 13, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1223, file: !786, line: 218, column: 17)
!1235 = !DILocation(line: 0, scope: !1234)
!1236 = !DILocation(line: 228, column: 5, scope: !1223)
!1237 = !DILocation(line: 229, column: 1, scope: !1223)
!1238 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !786, file: !786, line: 232, type: !1239, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1052, !104}
!1241 = !{!1242, !1243, !1244}
!1242 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1238, file: !786, line: 232, type: !104)
!1243 = !DILocalVariable(name: "no", scope: !1238, file: !786, line: 234, type: !1057)
!1244 = !DILocalVariable(name: "remainder", scope: !1238, file: !786, line: 235, type: !1057)
!1245 = !DILocation(line: 0, scope: !1238)
!1246 = !DILocation(line: 236, column: 19, scope: !1238)
!1247 = !DILocation(line: 237, column: 17, scope: !1238)
!1248 = !DILocation(line: 238, column: 5, scope: !1238)
!1249 = !DILocation(line: 239, column: 5, scope: !1238)
!1250 = !DILocation(line: 241, column: 27, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !786, line: 241, column: 17)
!1252 = distinct !DILexicalBlock(scope: !1238, file: !786, line: 239, column: 17)
!1253 = !DILocation(line: 241, column: 17, scope: !1252)
!1254 = !DILocation(line: 241, column: 17, scope: !1251)
!1255 = !DILocation(line: 242, column: 17, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !786, line: 241, column: 34)
!1257 = !DILocation(line: 243, column: 13, scope: !1256)
!1258 = !DILocation(line: 243, column: 24, scope: !1251)
!1259 = !DILocation(line: 244, column: 73, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !786, line: 243, column: 41)
!1261 = distinct !DILexicalBlock(scope: !1251, file: !786, line: 243, column: 24)
!1262 = !DILocation(line: 245, column: 73, scope: !1260)
!1263 = !DILocation(line: 246, column: 13, scope: !1260)
!1264 = !DILocation(line: 247, column: 73, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !786, line: 246, column: 41)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !786, line: 246, column: 24)
!1267 = !DILocation(line: 248, column: 73, scope: !1265)
!1268 = !DILocation(line: 249, column: 13, scope: !1265)
!1269 = !DILocation(line: 250, column: 75, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !786, line: 249, column: 41)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !786, line: 249, column: 24)
!1272 = !DILocation(line: 251, column: 75, scope: !1270)
!1273 = !DILocation(line: 252, column: 13, scope: !1270)
!1274 = !DILocation(line: 253, column: 75, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !786, line: 252, column: 41)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !786, line: 252, column: 24)
!1277 = !DILocation(line: 254, column: 75, scope: !1275)
!1278 = !DILocation(line: 255, column: 13, scope: !1275)
!1279 = !DILocation(line: 256, column: 75, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !786, line: 255, column: 41)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !786, line: 255, column: 24)
!1282 = !DILocation(line: 257, column: 75, scope: !1280)
!1283 = !DILocation(line: 258, column: 13, scope: !1280)
!1284 = !DILocation(line: 261, column: 18, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1252, file: !786, line: 261, column: 17)
!1286 = !DILocation(line: 261, column: 17, scope: !1252)
!1287 = !DILocation(line: 262, column: 75, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !786, line: 261, column: 29)
!1289 = !DILocation(line: 263, column: 75, scope: !1288)
!1290 = !DILocation(line: 264, column: 13, scope: !1288)
!1291 = !DILocation(line: 265, column: 17, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !786, line: 264, column: 20)
!1293 = !DILocation(line: 272, column: 1, scope: !1238)
!1294 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !786, file: !786, line: 359, type: !1239, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1294, file: !786, line: 359, type: !104)
!1297 = !DILocalVariable(name: "no", scope: !1294, file: !786, line: 362, type: !1057)
!1298 = !DILocalVariable(name: "remainder", scope: !1294, file: !786, line: 363, type: !1057)
!1299 = !DILocation(line: 0, scope: !1294)
!1300 = !DILocation(line: 364, column: 19, scope: !1294)
!1301 = !DILocation(line: 365, column: 17, scope: !1294)
!1302 = !DILocation(line: 367, column: 5, scope: !1294)
!1303 = !DILocation(line: 369, column: 27, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !786, line: 369, column: 17)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !786, line: 367, column: 17)
!1306 = !DILocation(line: 369, column: 17, scope: !1305)
!1307 = !DILocation(line: 369, column: 17, scope: !1304)
!1308 = !DILocation(line: 370, column: 17, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !786, line: 369, column: 34)
!1310 = !DILocation(line: 371, column: 13, scope: !1309)
!1311 = !DILocation(line: 371, column: 24, scope: !1304)
!1312 = !DILocation(line: 372, column: 73, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !786, line: 371, column: 41)
!1314 = distinct !DILexicalBlock(scope: !1304, file: !786, line: 371, column: 24)
!1315 = !DILocation(line: 373, column: 73, scope: !1313)
!1316 = !DILocation(line: 374, column: 13, scope: !1313)
!1317 = !DILocation(line: 375, column: 73, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !786, line: 374, column: 41)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !786, line: 374, column: 24)
!1320 = !DILocation(line: 376, column: 73, scope: !1318)
!1321 = !DILocation(line: 377, column: 13, scope: !1318)
!1322 = !DILocation(line: 378, column: 75, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !786, line: 377, column: 41)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !786, line: 377, column: 24)
!1325 = !DILocation(line: 379, column: 75, scope: !1323)
!1326 = !DILocation(line: 380, column: 13, scope: !1323)
!1327 = !DILocation(line: 381, column: 75, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !786, line: 380, column: 41)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !786, line: 380, column: 24)
!1330 = !DILocation(line: 382, column: 75, scope: !1328)
!1331 = !DILocation(line: 383, column: 13, scope: !1328)
!1332 = !DILocation(line: 384, column: 75, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !786, line: 383, column: 41)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !786, line: 383, column: 24)
!1335 = !DILocation(line: 385, column: 75, scope: !1333)
!1336 = !DILocation(line: 386, column: 13, scope: !1333)
!1337 = !DILocation(line: 389, column: 18, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1305, file: !786, line: 389, column: 17)
!1339 = !DILocation(line: 389, column: 17, scope: !1305)
!1340 = !DILocation(line: 390, column: 75, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !786, line: 389, column: 29)
!1342 = !DILocation(line: 391, column: 75, scope: !1341)
!1343 = !DILocation(line: 392, column: 13, scope: !1341)
!1344 = !DILocation(line: 393, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !786, line: 392, column: 20)
!1346 = !DILocation(line: 401, column: 1, scope: !1294)
!1347 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !786, file: !786, line: 274, type: !1239, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1347, file: !786, line: 274, type: !104)
!1350 = !DILocalVariable(name: "no", scope: !1347, file: !786, line: 276, type: !1057)
!1351 = !DILocalVariable(name: "remainder", scope: !1347, file: !786, line: 277, type: !1057)
!1352 = !DILocation(line: 0, scope: !1347)
!1353 = !DILocation(line: 278, column: 19, scope: !1347)
!1354 = !DILocation(line: 279, column: 17, scope: !1347)
!1355 = !DILocation(line: 281, column: 5, scope: !1347)
!1356 = !DILocation(line: 283, column: 27, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !786, line: 283, column: 17)
!1358 = distinct !DILexicalBlock(scope: !1347, file: !786, line: 281, column: 17)
!1359 = !DILocation(line: 283, column: 17, scope: !1358)
!1360 = !DILocation(line: 283, column: 17, scope: !1357)
!1361 = !DILocation(line: 284, column: 17, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !786, line: 283, column: 34)
!1363 = !DILocation(line: 285, column: 13, scope: !1362)
!1364 = !DILocation(line: 285, column: 24, scope: !1357)
!1365 = !DILocation(line: 286, column: 73, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !786, line: 285, column: 41)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !786, line: 285, column: 24)
!1368 = !DILocation(line: 287, column: 73, scope: !1366)
!1369 = !DILocation(line: 288, column: 13, scope: !1366)
!1370 = !DILocation(line: 289, column: 73, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !786, line: 288, column: 41)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !786, line: 288, column: 24)
!1373 = !DILocation(line: 290, column: 73, scope: !1371)
!1374 = !DILocation(line: 291, column: 13, scope: !1371)
!1375 = !DILocation(line: 292, column: 75, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !786, line: 291, column: 41)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !786, line: 291, column: 24)
!1378 = !DILocation(line: 293, column: 75, scope: !1376)
!1379 = !DILocation(line: 294, column: 13, scope: !1376)
!1380 = !DILocation(line: 295, column: 75, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !786, line: 294, column: 41)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !786, line: 294, column: 24)
!1383 = !DILocation(line: 296, column: 75, scope: !1381)
!1384 = !DILocation(line: 297, column: 13, scope: !1381)
!1385 = !DILocation(line: 298, column: 75, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !786, line: 297, column: 41)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !786, line: 297, column: 24)
!1388 = !DILocation(line: 299, column: 75, scope: !1386)
!1389 = !DILocation(line: 300, column: 13, scope: !1386)
!1390 = !DILocation(line: 303, column: 18, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1358, file: !786, line: 303, column: 17)
!1392 = !DILocation(line: 303, column: 17, scope: !1358)
!1393 = !DILocation(line: 304, column: 75, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !786, line: 303, column: 29)
!1395 = !DILocation(line: 305, column: 75, scope: !1394)
!1396 = !DILocation(line: 306, column: 13, scope: !1394)
!1397 = !DILocation(line: 307, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !786, line: 306, column: 20)
!1399 = !DILocation(line: 314, column: 1, scope: !1347)
!1400 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !786, file: !786, line: 316, type: !1239, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1401)
!1401 = !{!1402, !1403, !1404}
!1402 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1400, file: !786, line: 316, type: !104)
!1403 = !DILocalVariable(name: "no", scope: !1400, file: !786, line: 318, type: !1057)
!1404 = !DILocalVariable(name: "remainder", scope: !1400, file: !786, line: 319, type: !1057)
!1405 = !DILocation(line: 0, scope: !1400)
!1406 = !DILocation(line: 320, column: 19, scope: !1400)
!1407 = !DILocation(line: 321, column: 17, scope: !1400)
!1408 = !DILocation(line: 322, column: 5, scope: !1400)
!1409 = !DILocation(line: 323, column: 5, scope: !1400)
!1410 = !DILocation(line: 325, column: 27, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !786, line: 325, column: 17)
!1412 = distinct !DILexicalBlock(scope: !1400, file: !786, line: 323, column: 17)
!1413 = !DILocation(line: 325, column: 17, scope: !1412)
!1414 = !DILocation(line: 325, column: 17, scope: !1411)
!1415 = !DILocation(line: 326, column: 17, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !786, line: 325, column: 34)
!1417 = !DILocation(line: 327, column: 13, scope: !1416)
!1418 = !DILocation(line: 327, column: 24, scope: !1411)
!1419 = !DILocation(line: 328, column: 73, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !786, line: 327, column: 41)
!1421 = distinct !DILexicalBlock(scope: !1411, file: !786, line: 327, column: 24)
!1422 = !DILocation(line: 329, column: 73, scope: !1420)
!1423 = !DILocation(line: 330, column: 13, scope: !1420)
!1424 = !DILocation(line: 331, column: 73, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !786, line: 330, column: 41)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !786, line: 330, column: 24)
!1427 = !DILocation(line: 332, column: 73, scope: !1425)
!1428 = !DILocation(line: 333, column: 13, scope: !1425)
!1429 = !DILocation(line: 334, column: 75, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !786, line: 333, column: 41)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !786, line: 333, column: 24)
!1432 = !DILocation(line: 335, column: 75, scope: !1430)
!1433 = !DILocation(line: 336, column: 13, scope: !1430)
!1434 = !DILocation(line: 337, column: 75, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !786, line: 336, column: 41)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !786, line: 336, column: 24)
!1437 = !DILocation(line: 338, column: 75, scope: !1435)
!1438 = !DILocation(line: 339, column: 13, scope: !1435)
!1439 = !DILocation(line: 340, column: 75, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !786, line: 339, column: 41)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !786, line: 339, column: 24)
!1442 = !DILocation(line: 341, column: 75, scope: !1440)
!1443 = !DILocation(line: 342, column: 13, scope: !1440)
!1444 = !DILocation(line: 345, column: 18, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1412, file: !786, line: 345, column: 17)
!1446 = !DILocation(line: 345, column: 17, scope: !1412)
!1447 = !DILocation(line: 346, column: 75, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !786, line: 345, column: 29)
!1449 = !DILocation(line: 347, column: 75, scope: !1448)
!1450 = !DILocation(line: 348, column: 13, scope: !1448)
!1451 = !DILocation(line: 349, column: 17, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !786, line: 348, column: 20)
!1453 = !DILocation(line: 357, column: 1, scope: !1400)
!1454 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !786, file: !786, line: 404, type: !1050, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1455)
!1455 = !{!1456, !1457, !1458, !1459}
!1456 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1454, file: !786, line: 404, type: !104)
!1457 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1454, file: !786, line: 404, type: !43)
!1458 = !DILocalVariable(name: "no", scope: !1454, file: !786, line: 406, type: !1057)
!1459 = !DILocalVariable(name: "remainder", scope: !1454, file: !786, line: 407, type: !1057)
!1460 = !DILocation(line: 0, scope: !1454)
!1461 = !DILocation(line: 408, column: 19, scope: !1454)
!1462 = !DILocation(line: 409, column: 17, scope: !1454)
!1463 = !DILocation(line: 411, column: 5, scope: !1454)
!1464 = !DILocation(line: 413, column: 84, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1454, file: !786, line: 411, column: 17)
!1466 = !DILocation(line: 413, column: 70, scope: !1465)
!1467 = !DILocation(line: 413, column: 64, scope: !1465)
!1468 = !DILocation(line: 413, column: 61, scope: !1465)
!1469 = !DILocation(line: 414, column: 79, scope: !1465)
!1470 = !DILocation(line: 414, column: 83, scope: !1465)
!1471 = !DILocation(line: 414, column: 88, scope: !1465)
!1472 = !DILocation(line: 414, column: 61, scope: !1465)
!1473 = !DILocation(line: 415, column: 13, scope: !1465)
!1474 = !DILocation(line: 417, column: 27, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1465, file: !786, line: 417, column: 17)
!1476 = !DILocation(line: 417, column: 17, scope: !1465)
!1477 = !DILocation(line: 418, column: 88, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !786, line: 417, column: 33)
!1479 = !DILocation(line: 418, column: 74, scope: !1478)
!1480 = !DILocation(line: 418, column: 68, scope: !1478)
!1481 = !DILocation(line: 418, column: 65, scope: !1478)
!1482 = !DILocation(line: 419, column: 83, scope: !1478)
!1483 = !DILocation(line: 419, column: 87, scope: !1478)
!1484 = !DILocation(line: 419, column: 92, scope: !1478)
!1485 = !DILocation(line: 419, column: 65, scope: !1478)
!1486 = !DILocation(line: 420, column: 13, scope: !1478)
!1487 = !DILocation(line: 420, column: 24, scope: !1475)
!1488 = !DILocation(line: 421, column: 73, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !786, line: 420, column: 41)
!1490 = distinct !DILexicalBlock(scope: !1475, file: !786, line: 420, column: 24)
!1491 = !DILocation(line: 422, column: 91, scope: !1489)
!1492 = !DILocation(line: 422, column: 100, scope: !1489)
!1493 = !DILocation(line: 422, column: 73, scope: !1489)
!1494 = !DILocation(line: 423, column: 73, scope: !1489)
!1495 = !DILocation(line: 424, column: 13, scope: !1489)
!1496 = !DILocation(line: 425, column: 73, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !786, line: 424, column: 41)
!1498 = distinct !DILexicalBlock(scope: !1490, file: !786, line: 424, column: 24)
!1499 = !DILocation(line: 426, column: 91, scope: !1497)
!1500 = !DILocation(line: 426, column: 100, scope: !1497)
!1501 = !DILocation(line: 426, column: 73, scope: !1497)
!1502 = !DILocation(line: 427, column: 73, scope: !1497)
!1503 = !DILocation(line: 428, column: 13, scope: !1497)
!1504 = !DILocation(line: 429, column: 75, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !786, line: 428, column: 41)
!1506 = distinct !DILexicalBlock(scope: !1498, file: !786, line: 428, column: 24)
!1507 = !DILocation(line: 430, column: 93, scope: !1505)
!1508 = !DILocation(line: 430, column: 102, scope: !1505)
!1509 = !DILocation(line: 430, column: 75, scope: !1505)
!1510 = !DILocation(line: 431, column: 75, scope: !1505)
!1511 = !DILocation(line: 432, column: 13, scope: !1505)
!1512 = !DILocation(line: 433, column: 75, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !786, line: 432, column: 41)
!1514 = distinct !DILexicalBlock(scope: !1506, file: !786, line: 432, column: 24)
!1515 = !DILocation(line: 434, column: 93, scope: !1513)
!1516 = !DILocation(line: 434, column: 102, scope: !1513)
!1517 = !DILocation(line: 434, column: 75, scope: !1513)
!1518 = !DILocation(line: 435, column: 75, scope: !1513)
!1519 = !DILocation(line: 436, column: 13, scope: !1513)
!1520 = !DILocation(line: 437, column: 75, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !786, line: 436, column: 41)
!1522 = distinct !DILexicalBlock(scope: !1514, file: !786, line: 436, column: 24)
!1523 = !DILocation(line: 438, column: 93, scope: !1521)
!1524 = !DILocation(line: 438, column: 102, scope: !1521)
!1525 = !DILocation(line: 438, column: 75, scope: !1521)
!1526 = !DILocation(line: 439, column: 75, scope: !1521)
!1527 = !DILocation(line: 440, column: 13, scope: !1521)
!1528 = !DILocation(line: 443, column: 18, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1465, file: !786, line: 443, column: 17)
!1530 = !DILocation(line: 443, column: 17, scope: !1465)
!1531 = !DILocation(line: 444, column: 75, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !786, line: 443, column: 29)
!1533 = !DILocation(line: 445, column: 93, scope: !1532)
!1534 = !DILocation(line: 445, column: 102, scope: !1532)
!1535 = !DILocation(line: 445, column: 75, scope: !1532)
!1536 = !DILocation(line: 446, column: 75, scope: !1532)
!1537 = !DILocation(line: 447, column: 13, scope: !1532)
!1538 = !DILocation(line: 448, column: 88, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !786, line: 447, column: 20)
!1540 = !DILocation(line: 448, column: 74, scope: !1539)
!1541 = !DILocation(line: 448, column: 68, scope: !1539)
!1542 = !DILocation(line: 448, column: 65, scope: !1539)
!1543 = !DILocation(line: 449, column: 83, scope: !1539)
!1544 = !DILocation(line: 449, column: 87, scope: !1539)
!1545 = !DILocation(line: 449, column: 92, scope: !1539)
!1546 = !DILocation(line: 449, column: 65, scope: !1539)
!1547 = !DILocation(line: 453, column: 84, scope: !1465)
!1548 = !DILocation(line: 453, column: 70, scope: !1465)
!1549 = !DILocation(line: 453, column: 64, scope: !1465)
!1550 = !DILocation(line: 453, column: 61, scope: !1465)
!1551 = !DILocation(line: 454, column: 79, scope: !1465)
!1552 = !DILocation(line: 454, column: 83, scope: !1465)
!1553 = !DILocation(line: 454, column: 88, scope: !1465)
!1554 = !DILocation(line: 454, column: 61, scope: !1465)
!1555 = !DILocation(line: 455, column: 13, scope: !1465)
!1556 = !DILocation(line: 460, column: 1, scope: !1454)
!1557 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !786, file: !786, line: 463, type: !1558, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1561)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1052, !104, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!1561 = !{!1562, !1563, !1564, !1565, !1566}
!1562 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1557, file: !786, line: 463, type: !104)
!1563 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1557, file: !786, line: 463, type: !1560)
!1564 = !DILocalVariable(name: "no", scope: !1557, file: !786, line: 465, type: !1057)
!1565 = !DILocalVariable(name: "remainder", scope: !1557, file: !786, line: 466, type: !1057)
!1566 = !DILocalVariable(name: "temp", scope: !1557, file: !786, line: 467, type: !104)
!1567 = !DILocation(line: 0, scope: !1557)
!1568 = !DILocation(line: 468, column: 19, scope: !1557)
!1569 = !DILocation(line: 469, column: 17, scope: !1557)
!1570 = !DILocation(line: 471, column: 5, scope: !1557)
!1571 = !DILocation(line: 473, column: 20, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1557, file: !786, line: 471, column: 17)
!1573 = !DILocation(line: 474, column: 40, scope: !1572)
!1574 = !DILocation(line: 474, column: 26, scope: !1572)
!1575 = !DILocation(line: 474, column: 18, scope: !1572)
!1576 = !DILocation(line: 475, column: 40, scope: !1572)
!1577 = !DILocation(line: 475, column: 29, scope: !1572)
!1578 = !DILocation(line: 476, column: 13, scope: !1572)
!1579 = !DILocation(line: 478, column: 27, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !786, line: 478, column: 17)
!1581 = !DILocation(line: 478, column: 17, scope: !1572)
!1582 = !DILocation(line: 479, column: 24, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !786, line: 478, column: 33)
!1584 = !DILocation(line: 480, column: 44, scope: !1583)
!1585 = !DILocation(line: 480, column: 30, scope: !1583)
!1586 = !DILocation(line: 480, column: 22, scope: !1583)
!1587 = !DILocation(line: 481, column: 44, scope: !1583)
!1588 = !DILocation(line: 481, column: 33, scope: !1583)
!1589 = !DILocation(line: 482, column: 13, scope: !1583)
!1590 = !DILocation(line: 482, column: 24, scope: !1580)
!1591 = !DILocation(line: 483, column: 24, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !786, line: 482, column: 41)
!1593 = distinct !DILexicalBlock(scope: !1580, file: !786, line: 482, column: 24)
!1594 = !DILocation(line: 485, column: 53, scope: !1592)
!1595 = !DILocation(line: 485, column: 33, scope: !1592)
!1596 = !DILocation(line: 486, column: 13, scope: !1592)
!1597 = !DILocation(line: 487, column: 24, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !786, line: 486, column: 41)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !786, line: 486, column: 24)
!1600 = !DILocation(line: 489, column: 53, scope: !1598)
!1601 = !DILocation(line: 489, column: 33, scope: !1598)
!1602 = !DILocation(line: 490, column: 13, scope: !1598)
!1603 = !DILocation(line: 491, column: 24, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !786, line: 490, column: 41)
!1605 = distinct !DILexicalBlock(scope: !1599, file: !786, line: 490, column: 24)
!1606 = !DILocation(line: 493, column: 53, scope: !1604)
!1607 = !DILocation(line: 493, column: 33, scope: !1604)
!1608 = !DILocation(line: 494, column: 13, scope: !1604)
!1609 = !DILocation(line: 495, column: 24, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !786, line: 494, column: 41)
!1611 = distinct !DILexicalBlock(scope: !1605, file: !786, line: 494, column: 24)
!1612 = !DILocation(line: 497, column: 53, scope: !1610)
!1613 = !DILocation(line: 497, column: 33, scope: !1610)
!1614 = !DILocation(line: 498, column: 13, scope: !1610)
!1615 = !DILocation(line: 499, column: 24, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !786, line: 498, column: 41)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !786, line: 498, column: 24)
!1618 = !DILocation(line: 501, column: 53, scope: !1616)
!1619 = !DILocation(line: 501, column: 33, scope: !1616)
!1620 = !DILocation(line: 502, column: 13, scope: !1616)
!1621 = !DILocation(line: 505, column: 18, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1572, file: !786, line: 505, column: 17)
!1623 = !DILocation(line: 505, column: 17, scope: !1572)
!1624 = !DILocation(line: 506, column: 24, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !786, line: 505, column: 29)
!1626 = !DILocation(line: 508, column: 53, scope: !1625)
!1627 = !DILocation(line: 508, column: 33, scope: !1625)
!1628 = !DILocation(line: 509, column: 13, scope: !1625)
!1629 = !DILocation(line: 510, column: 24, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1622, file: !786, line: 509, column: 20)
!1631 = !DILocation(line: 511, column: 44, scope: !1630)
!1632 = !DILocation(line: 511, column: 30, scope: !1630)
!1633 = !DILocation(line: 511, column: 22, scope: !1630)
!1634 = !DILocation(line: 512, column: 44, scope: !1630)
!1635 = !DILocation(line: 512, column: 33, scope: !1630)
!1636 = !DILocation(line: 516, column: 20, scope: !1572)
!1637 = !DILocation(line: 517, column: 40, scope: !1572)
!1638 = !DILocation(line: 517, column: 26, scope: !1572)
!1639 = !DILocation(line: 517, column: 18, scope: !1572)
!1640 = !DILocation(line: 518, column: 40, scope: !1572)
!1641 = !DILocation(line: 518, column: 29, scope: !1572)
!1642 = !DILocation(line: 519, column: 13, scope: !1572)
!1643 = !DILocation(line: 0, scope: !1572)
!1644 = !DILocation(line: 524, column: 1, scope: !1557)
!1645 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !786, file: !786, line: 526, type: !1646, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !1649)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !104, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !789, line: 1212, baseType: !788)
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1645, file: !786, line: 526, type: !104)
!1651 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1645, file: !786, line: 526, type: !1648)
!1652 = !DILocalVariable(name: "no", scope: !1645, file: !786, line: 529, type: !1057)
!1653 = !DILocalVariable(name: "remainder", scope: !1645, file: !786, line: 530, type: !1057)
!1654 = !DILocation(line: 0, scope: !1645)
!1655 = !DILocation(line: 531, column: 19, scope: !1645)
!1656 = !DILocation(line: 532, column: 17, scope: !1645)
!1657 = !DILocation(line: 534, column: 9, scope: !1645)
!1658 = !DILocation(line: 536, column: 9, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !786, line: 534, column: 45)
!1660 = distinct !DILexicalBlock(scope: !1645, file: !786, line: 534, column: 9)
!1661 = !DILocation(line: 538, column: 56, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !786, line: 536, column: 21)
!1663 = !DILocation(line: 538, column: 53, scope: !1662)
!1664 = !DILocation(line: 538, column: 47, scope: !1662)
!1665 = !DILocation(line: 539, column: 17, scope: !1662)
!1666 = !DILocation(line: 541, column: 56, scope: !1662)
!1667 = !DILocation(line: 541, column: 53, scope: !1662)
!1668 = !DILocation(line: 541, column: 47, scope: !1662)
!1669 = !DILocation(line: 542, column: 17, scope: !1662)
!1670 = !DILocation(line: 548, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !786, line: 547, column: 51)
!1672 = distinct !DILexicalBlock(scope: !1660, file: !786, line: 547, column: 16)
!1673 = !DILocation(line: 550, column: 57, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !786, line: 548, column: 21)
!1675 = !DILocation(line: 550, column: 54, scope: !1674)
!1676 = !DILocation(line: 550, column: 50, scope: !1674)
!1677 = !DILocation(line: 550, column: 47, scope: !1674)
!1678 = !DILocation(line: 551, column: 17, scope: !1674)
!1679 = !DILocation(line: 553, column: 57, scope: !1674)
!1680 = !DILocation(line: 553, column: 54, scope: !1674)
!1681 = !DILocation(line: 553, column: 50, scope: !1674)
!1682 = !DILocation(line: 553, column: 47, scope: !1674)
!1683 = !DILocation(line: 554, column: 17, scope: !1674)
!1684 = !DILocation(line: 560, column: 1, scope: !1645)
!1685 = distinct !DISubprogram(name: "hal_irrx_init", scope: !3, file: !3, line: 53, type: !1686, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1689)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_status_t", file: !6, line: 166, baseType: !5)
!1689 = !{}
!1690 = !DILocation(line: 55, column: 5, scope: !1685)
!1691 = !DILocation(line: 67, column: 5, scope: !1685)
!1692 = distinct !DISubprogram(name: "hal_irrx_deinit", scope: !3, file: !3, line: 72, type: !1686, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1689)
!1693 = !DILocation(line: 74, column: 5, scope: !1692)
!1694 = !DILocation(line: 83, column: 5, scope: !1692)
!1695 = distinct !DISubprogram(name: "hal_irrx_receive_rc5_start", scope: !3, file: !3, line: 88, type: !1696, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1688, !327, !1034, !37}
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704}
!1699 = !DILocalVariable(name: "format", arg: 1, scope: !1695, file: !3, line: 88, type: !327)
!1700 = !DILocalVariable(name: "callback", arg: 2, scope: !1695, file: !3, line: 89, type: !1034)
!1701 = !DILocalVariable(name: "parameter", arg: 3, scope: !1695, file: !3, line: 90, type: !37)
!1702 = !DILocalVariable(name: "ucInverse", scope: !1695, file: !3, line: 92, type: !43)
!1703 = !DILocalVariable(name: "ucBitReverse", scope: !1695, file: !3, line: 93, type: !43)
!1704 = !DILocalVariable(name: "ret", scope: !1695, file: !3, line: 94, type: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !17, line: 368, baseType: !16)
!1706 = !DILocation(line: 0, scope: !1695)
!1707 = !DILocation(line: 96, column: 5, scope: !1695)
!1708 = !DILocation(line: 98, column: 24, scope: !1695)
!1709 = !DILocation(line: 99, column: 27, scope: !1695)
!1710 = !DILocation(line: 101, column: 11, scope: !1695)
!1711 = !DILocation(line: 102, column: 22, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 102, column: 9)
!1713 = !DILocation(line: 102, column: 9, scope: !1695)
!1714 = !DILocation(line: 105, column: 52, scope: !1695)
!1715 = !DILocation(line: 105, column: 5, scope: !1695)
!1716 = !DILocation(line: 107, column: 23, scope: !1695)
!1717 = !DILocation(line: 109, column: 5, scope: !1695)
!1718 = !DILocation(line: 110, column: 1, scope: !1695)
!1719 = distinct !DISubprogram(name: "hal_irrx_receive_rc5", scope: !3, file: !3, line: 113, type: !1720, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!1688, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_rc5_code_t", file: !6, line: 212, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 209, size: 96, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1724, file: !6, line: 210, baseType: !327, size: 8)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1724, file: !6, line: 211, baseType: !1728, size: 64, offset: 32)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !360)
!1729 = !{!1730}
!1730 = !DILocalVariable(name: "code", arg: 1, scope: !1719, file: !3, line: 113, type: !1722)
!1731 = !DILocation(line: 0, scope: !1719)
!1732 = !DILocation(line: 115, column: 26, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 115, column: 9)
!1734 = !DILocation(line: 115, column: 9, scope: !1719)
!1735 = !DILocation(line: 119, column: 37, scope: !1719)
!1736 = !DILocation(line: 119, column: 57, scope: !1719)
!1737 = !DILocation(line: 119, column: 86, scope: !1719)
!1738 = !DILocation(line: 119, column: 5, scope: !1719)
!1739 = !DILocation(line: 121, column: 23, scope: !1719)
!1740 = !DILocation(line: 123, column: 5, scope: !1719)
!1741 = !DILocation(line: 124, column: 1, scope: !1719)
!1742 = distinct !DISubprogram(name: "hal_irrx_receive_pwd_start", scope: !3, file: !3, line: 127, type: !1743, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1753)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!1688, !1745, !1034, !1752}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_pwd_config_t", file: !6, line: 219, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 216, size: 64, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "inverse", scope: !1748, file: !6, line: 217, baseType: !327, size: 8)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "terminate_threshold", scope: !1748, file: !6, line: 218, baseType: !155, size: 32, offset: 32)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!1753 = !{!1754, !1755, !1756, !1757, !1758}
!1754 = !DILocalVariable(name: "config", arg: 1, scope: !1742, file: !3, line: 128, type: !1745)
!1755 = !DILocalVariable(name: "callback", arg: 2, scope: !1742, file: !3, line: 129, type: !1034)
!1756 = !DILocalVariable(name: "precision_us", arg: 3, scope: !1742, file: !3, line: 130, type: !1752)
!1757 = !DILocalVariable(name: "ret", scope: !1742, file: !3, line: 132, type: !1705)
!1758 = !DILocalVariable(name: "parameter", scope: !1742, file: !3, line: 133, type: !37)
!1759 = !DILocation(line: 0, scope: !1742)
!1760 = !DILocation(line: 135, column: 5, scope: !1742)
!1761 = !DILocation(line: 137, column: 46, scope: !1742)
!1762 = !DILocation(line: 137, column: 63, scope: !1742)
!1763 = !DILocation(line: 137, column: 11, scope: !1742)
!1764 = !DILocation(line: 138, column: 22, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 138, column: 9)
!1766 = !DILocation(line: 138, column: 9, scope: !1742)
!1767 = !DILocation(line: 141, column: 52, scope: !1742)
!1768 = !DILocation(line: 141, column: 5, scope: !1742)
!1769 = !DILocation(line: 143, column: 23, scope: !1742)
!1770 = !DILocation(line: 145, column: 5, scope: !1742)
!1771 = !DILocation(line: 147, column: 1, scope: !1742)
!1772 = distinct !DISubprogram(name: "hal_irrx_receive_pwd", scope: !3, file: !3, line: 150, type: !1773, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1688, !494, !494, !327}
!1775 = !{!1776, !1777, !1778}
!1776 = !DILocalVariable(name: "received_length", arg: 1, scope: !1772, file: !3, line: 150, type: !494)
!1777 = !DILocalVariable(name: "buffer", arg: 2, scope: !1772, file: !3, line: 151, type: !494)
!1778 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1772, file: !3, line: 152, type: !327)
!1779 = !DILocation(line: 0, scope: !1772)
!1780 = !DILocation(line: 154, column: 26, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 154, column: 9)
!1782 = !DILocation(line: 154, column: 9, scope: !1772)
!1783 = !DILocation(line: 158, column: 5, scope: !1772)
!1784 = !DILocation(line: 160, column: 23, scope: !1772)
!1785 = !DILocation(line: 162, column: 5, scope: !1772)
!1786 = !DILocation(line: 163, column: 1, scope: !1772)
!1787 = distinct !DISubprogram(name: "hal_irrx_get_running_status", scope: !3, file: !3, line: 166, type: !1788, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1791)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1688, !1790}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!1791 = !{!1792}
!1792 = !DILocalVariable(name: "running_status", arg: 1, scope: !1787, file: !3, line: 166, type: !1790)
!1793 = !DILocation(line: 0, scope: !1787)
!1794 = !DILocation(line: 169, column: 23, scope: !1787)
!1795 = !DILocation(line: 169, column: 21, scope: !1787)
!1796 = !DILocation(line: 170, column: 5, scope: !1787)
!1797 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !798, file: !798, line: 85, type: !1798, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !1802)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !1801, !43}
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !39, line: 79, baseType: null)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !801, line: 225, baseType: !800)
!1802 = !{!1803, !1804, !1805}
!1803 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1797, file: !798, line: 85, type: !1801)
!1804 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1797, file: !798, line: 85, type: !43)
!1805 = !DILocalVariable(name: "temp", scope: !1797, file: !798, line: 87, type: !155)
!1806 = !DILocation(line: 0, scope: !1797)
!1807 = !DILocation(line: 88, column: 5, scope: !1797)
!1808 = !DILocation(line: 91, column: 20, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1797, file: !798, line: 88, column: 24)
!1810 = !DILocation(line: 92, column: 18, scope: !1809)
!1811 = !DILocation(line: 93, column: 66, scope: !1809)
!1812 = !DILocation(line: 93, column: 63, scope: !1809)
!1813 = !DILocation(line: 93, column: 56, scope: !1809)
!1814 = !DILocation(line: 94, column: 13, scope: !1809)
!1815 = !DILocation(line: 97, column: 20, scope: !1809)
!1816 = !DILocation(line: 98, column: 18, scope: !1809)
!1817 = !DILocation(line: 99, column: 67, scope: !1809)
!1818 = !DILocation(line: 99, column: 74, scope: !1809)
!1819 = !DILocation(line: 99, column: 64, scope: !1809)
!1820 = !DILocation(line: 99, column: 56, scope: !1809)
!1821 = !DILocation(line: 100, column: 13, scope: !1809)
!1822 = !DILocation(line: 103, column: 20, scope: !1809)
!1823 = !DILocation(line: 104, column: 18, scope: !1809)
!1824 = !DILocation(line: 105, column: 67, scope: !1809)
!1825 = !DILocation(line: 105, column: 74, scope: !1809)
!1826 = !DILocation(line: 105, column: 64, scope: !1809)
!1827 = !DILocation(line: 105, column: 56, scope: !1809)
!1828 = !DILocation(line: 106, column: 13, scope: !1809)
!1829 = !DILocation(line: 109, column: 20, scope: !1809)
!1830 = !DILocation(line: 110, column: 18, scope: !1809)
!1831 = !DILocation(line: 111, column: 67, scope: !1809)
!1832 = !DILocation(line: 111, column: 74, scope: !1809)
!1833 = !DILocation(line: 111, column: 64, scope: !1809)
!1834 = !DILocation(line: 111, column: 56, scope: !1809)
!1835 = !DILocation(line: 112, column: 13, scope: !1809)
!1836 = !DILocation(line: 115, column: 20, scope: !1809)
!1837 = !DILocation(line: 116, column: 18, scope: !1809)
!1838 = !DILocation(line: 117, column: 67, scope: !1809)
!1839 = !DILocation(line: 117, column: 74, scope: !1809)
!1840 = !DILocation(line: 117, column: 64, scope: !1809)
!1841 = !DILocation(line: 117, column: 56, scope: !1809)
!1842 = !DILocation(line: 118, column: 13, scope: !1809)
!1843 = !DILocation(line: 121, column: 20, scope: !1809)
!1844 = !DILocation(line: 122, column: 18, scope: !1809)
!1845 = !DILocation(line: 123, column: 67, scope: !1809)
!1846 = !DILocation(line: 123, column: 74, scope: !1809)
!1847 = !DILocation(line: 123, column: 64, scope: !1809)
!1848 = !DILocation(line: 123, column: 56, scope: !1809)
!1849 = !DILocation(line: 124, column: 13, scope: !1809)
!1850 = !DILocation(line: 127, column: 20, scope: !1809)
!1851 = !DILocation(line: 128, column: 18, scope: !1809)
!1852 = !DILocation(line: 129, column: 67, scope: !1809)
!1853 = !DILocation(line: 129, column: 74, scope: !1809)
!1854 = !DILocation(line: 129, column: 64, scope: !1809)
!1855 = !DILocation(line: 129, column: 56, scope: !1809)
!1856 = !DILocation(line: 130, column: 13, scope: !1809)
!1857 = !DILocation(line: 133, column: 20, scope: !1809)
!1858 = !DILocation(line: 134, column: 18, scope: !1809)
!1859 = !DILocation(line: 135, column: 67, scope: !1809)
!1860 = !DILocation(line: 135, column: 74, scope: !1809)
!1861 = !DILocation(line: 135, column: 64, scope: !1809)
!1862 = !DILocation(line: 135, column: 56, scope: !1809)
!1863 = !DILocation(line: 136, column: 13, scope: !1809)
!1864 = !DILocation(line: 139, column: 20, scope: !1809)
!1865 = !DILocation(line: 140, column: 18, scope: !1809)
!1866 = !DILocation(line: 141, column: 67, scope: !1809)
!1867 = !DILocation(line: 141, column: 64, scope: !1809)
!1868 = !DILocation(line: 141, column: 56, scope: !1809)
!1869 = !DILocation(line: 142, column: 13, scope: !1809)
!1870 = !DILocation(line: 145, column: 20, scope: !1809)
!1871 = !DILocation(line: 146, column: 18, scope: !1809)
!1872 = !DILocation(line: 147, column: 67, scope: !1809)
!1873 = !DILocation(line: 147, column: 74, scope: !1809)
!1874 = !DILocation(line: 147, column: 64, scope: !1809)
!1875 = !DILocation(line: 147, column: 56, scope: !1809)
!1876 = !DILocation(line: 148, column: 13, scope: !1809)
!1877 = !DILocation(line: 151, column: 20, scope: !1809)
!1878 = !DILocation(line: 152, column: 18, scope: !1809)
!1879 = !DILocation(line: 153, column: 67, scope: !1809)
!1880 = !DILocation(line: 153, column: 74, scope: !1809)
!1881 = !DILocation(line: 153, column: 64, scope: !1809)
!1882 = !DILocation(line: 153, column: 56, scope: !1809)
!1883 = !DILocation(line: 154, column: 13, scope: !1809)
!1884 = !DILocation(line: 157, column: 20, scope: !1809)
!1885 = !DILocation(line: 158, column: 18, scope: !1809)
!1886 = !DILocation(line: 159, column: 67, scope: !1809)
!1887 = !DILocation(line: 159, column: 74, scope: !1809)
!1888 = !DILocation(line: 159, column: 64, scope: !1809)
!1889 = !DILocation(line: 159, column: 56, scope: !1809)
!1890 = !DILocation(line: 160, column: 29, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1809, file: !798, line: 160, column: 17)
!1892 = !DILocation(line: 161, column: 17, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1891, file: !798, line: 160, column: 60)
!1894 = !DILocation(line: 162, column: 13, scope: !1893)
!1895 = !DILocation(line: 166, column: 20, scope: !1809)
!1896 = !DILocation(line: 167, column: 18, scope: !1809)
!1897 = !DILocation(line: 168, column: 67, scope: !1809)
!1898 = !DILocation(line: 168, column: 74, scope: !1809)
!1899 = !DILocation(line: 168, column: 64, scope: !1809)
!1900 = !DILocation(line: 168, column: 56, scope: !1809)
!1901 = !DILocation(line: 169, column: 29, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1809, file: !798, line: 169, column: 17)
!1903 = !DILocation(line: 170, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1902, file: !798, line: 169, column: 45)
!1905 = !DILocation(line: 171, column: 13, scope: !1904)
!1906 = !DILocation(line: 175, column: 20, scope: !1809)
!1907 = !DILocation(line: 176, column: 18, scope: !1809)
!1908 = !DILocation(line: 177, column: 67, scope: !1809)
!1909 = !DILocation(line: 177, column: 74, scope: !1809)
!1910 = !DILocation(line: 177, column: 64, scope: !1809)
!1911 = !DILocation(line: 177, column: 56, scope: !1809)
!1912 = !DILocation(line: 178, column: 19, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1809, file: !798, line: 178, column: 17)
!1914 = !DILocation(line: 178, column: 17, scope: !1809)
!1915 = !DILocation(line: 179, column: 17, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !798, line: 178, column: 30)
!1917 = !DILocation(line: 180, column: 13, scope: !1916)
!1918 = !DILocation(line: 184, column: 20, scope: !1809)
!1919 = !DILocation(line: 185, column: 18, scope: !1809)
!1920 = !DILocation(line: 186, column: 67, scope: !1809)
!1921 = !DILocation(line: 186, column: 74, scope: !1809)
!1922 = !DILocation(line: 186, column: 64, scope: !1809)
!1923 = !DILocation(line: 186, column: 56, scope: !1809)
!1924 = !DILocation(line: 187, column: 29, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1809, file: !798, line: 187, column: 17)
!1926 = !DILocation(line: 188, column: 17, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1925, file: !798, line: 187, column: 45)
!1928 = !DILocation(line: 189, column: 13, scope: !1927)
!1929 = !DILocation(line: 193, column: 20, scope: !1809)
!1930 = !DILocation(line: 194, column: 18, scope: !1809)
!1931 = !DILocation(line: 195, column: 67, scope: !1809)
!1932 = !DILocation(line: 195, column: 74, scope: !1809)
!1933 = !DILocation(line: 195, column: 64, scope: !1809)
!1934 = !DILocation(line: 195, column: 56, scope: !1809)
!1935 = !DILocation(line: 196, column: 29, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1809, file: !798, line: 196, column: 17)
!1937 = !DILocation(line: 197, column: 17, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1936, file: !798, line: 196, column: 45)
!1939 = !DILocation(line: 198, column: 13, scope: !1938)
!1940 = !DILocation(line: 202, column: 20, scope: !1809)
!1941 = !DILocation(line: 203, column: 18, scope: !1809)
!1942 = !DILocation(line: 204, column: 67, scope: !1809)
!1943 = !DILocation(line: 204, column: 64, scope: !1809)
!1944 = !DILocation(line: 204, column: 56, scope: !1809)
!1945 = !DILocation(line: 205, column: 29, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1809, file: !798, line: 205, column: 17)
!1947 = !DILocation(line: 206, column: 17, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !798, line: 205, column: 45)
!1949 = !DILocation(line: 207, column: 13, scope: !1948)
!1950 = !DILocation(line: 211, column: 20, scope: !1809)
!1951 = !DILocation(line: 212, column: 18, scope: !1809)
!1952 = !DILocation(line: 213, column: 67, scope: !1809)
!1953 = !DILocation(line: 213, column: 74, scope: !1809)
!1954 = !DILocation(line: 213, column: 64, scope: !1809)
!1955 = !DILocation(line: 213, column: 56, scope: !1809)
!1956 = !DILocation(line: 214, column: 13, scope: !1809)
!1957 = !DILocation(line: 217, column: 20, scope: !1809)
!1958 = !DILocation(line: 218, column: 18, scope: !1809)
!1959 = !DILocation(line: 219, column: 67, scope: !1809)
!1960 = !DILocation(line: 219, column: 74, scope: !1809)
!1961 = !DILocation(line: 219, column: 64, scope: !1809)
!1962 = !DILocation(line: 219, column: 56, scope: !1809)
!1963 = !DILocation(line: 220, column: 13, scope: !1809)
!1964 = !DILocation(line: 223, column: 20, scope: !1809)
!1965 = !DILocation(line: 224, column: 18, scope: !1809)
!1966 = !DILocation(line: 225, column: 67, scope: !1809)
!1967 = !DILocation(line: 225, column: 74, scope: !1809)
!1968 = !DILocation(line: 225, column: 64, scope: !1809)
!1969 = !DILocation(line: 225, column: 56, scope: !1809)
!1970 = !DILocation(line: 226, column: 13, scope: !1809)
!1971 = !DILocation(line: 229, column: 20, scope: !1809)
!1972 = !DILocation(line: 230, column: 18, scope: !1809)
!1973 = !DILocation(line: 231, column: 67, scope: !1809)
!1974 = !DILocation(line: 231, column: 74, scope: !1809)
!1975 = !DILocation(line: 231, column: 64, scope: !1809)
!1976 = !DILocation(line: 231, column: 56, scope: !1809)
!1977 = !DILocation(line: 232, column: 13, scope: !1809)
!1978 = !DILocation(line: 235, column: 20, scope: !1809)
!1979 = !DILocation(line: 236, column: 18, scope: !1809)
!1980 = !DILocation(line: 237, column: 66, scope: !1809)
!1981 = !DILocation(line: 237, column: 73, scope: !1809)
!1982 = !DILocation(line: 237, column: 63, scope: !1809)
!1983 = !DILocation(line: 237, column: 56, scope: !1809)
!1984 = !DILocation(line: 238, column: 13, scope: !1809)
!1985 = !DILocation(line: 241, column: 20, scope: !1809)
!1986 = !DILocation(line: 242, column: 18, scope: !1809)
!1987 = !DILocation(line: 243, column: 67, scope: !1809)
!1988 = !DILocation(line: 243, column: 74, scope: !1809)
!1989 = !DILocation(line: 243, column: 64, scope: !1809)
!1990 = !DILocation(line: 243, column: 56, scope: !1809)
!1991 = !DILocation(line: 244, column: 13, scope: !1809)
!1992 = !DILocation(line: 247, column: 20, scope: !1809)
!1993 = !DILocation(line: 248, column: 18, scope: !1809)
!1994 = !DILocation(line: 249, column: 67, scope: !1809)
!1995 = !DILocation(line: 249, column: 74, scope: !1809)
!1996 = !DILocation(line: 249, column: 64, scope: !1809)
!1997 = !DILocation(line: 249, column: 56, scope: !1809)
!1998 = !DILocation(line: 250, column: 13, scope: !1809)
!1999 = !DILocation(line: 253, column: 20, scope: !1809)
!2000 = !DILocation(line: 254, column: 18, scope: !1809)
!2001 = !DILocation(line: 255, column: 67, scope: !1809)
!2002 = !DILocation(line: 255, column: 74, scope: !1809)
!2003 = !DILocation(line: 255, column: 64, scope: !1809)
!2004 = !DILocation(line: 255, column: 56, scope: !1809)
!2005 = !DILocation(line: 256, column: 13, scope: !1809)
!2006 = !DILocation(line: 259, column: 20, scope: !1809)
!2007 = !DILocation(line: 260, column: 18, scope: !1809)
!2008 = !DILocation(line: 261, column: 67, scope: !1809)
!2009 = !DILocation(line: 261, column: 74, scope: !1809)
!2010 = !DILocation(line: 261, column: 64, scope: !1809)
!2011 = !DILocation(line: 261, column: 56, scope: !1809)
!2012 = !DILocation(line: 262, column: 13, scope: !1809)
!2013 = !DILocation(line: 265, column: 20, scope: !1809)
!2014 = !DILocation(line: 266, column: 18, scope: !1809)
!2015 = !DILocation(line: 267, column: 67, scope: !1809)
!2016 = !DILocation(line: 267, column: 74, scope: !1809)
!2017 = !DILocation(line: 267, column: 64, scope: !1809)
!2018 = !DILocation(line: 267, column: 56, scope: !1809)
!2019 = !DILocation(line: 268, column: 13, scope: !1809)
!2020 = !DILocation(line: 271, column: 20, scope: !1809)
!2021 = !DILocation(line: 272, column: 18, scope: !1809)
!2022 = !DILocation(line: 273, column: 67, scope: !1809)
!2023 = !DILocation(line: 273, column: 74, scope: !1809)
!2024 = !DILocation(line: 273, column: 64, scope: !1809)
!2025 = !DILocation(line: 273, column: 56, scope: !1809)
!2026 = !DILocation(line: 274, column: 13, scope: !1809)
!2027 = !DILocation(line: 278, column: 1, scope: !1797)
!2028 = distinct !DISubprogram(name: "halIrRxClearInterrupt", scope: !50, file: !50, line: 93, type: !2029, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!1800}
!2031 = !{!2032}
!2032 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2028, file: !50, line: 95, type: !98)
!2033 = !DILocation(line: 0, scope: !2028)
!2034 = !DILocation(line: 99, column: 31, scope: !2028)
!2035 = !DILocation(line: 100, column: 1, scope: !2028)
!2036 = distinct !DISubprogram(name: "halIrRxRegisterCallback", scope: !50, file: !50, line: 123, type: !2037, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2040)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!1705, !2039, !33, !37}
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "low_hal_irrx_mode_t", file: !23, line: 85, baseType: !22)
!2040 = !{!2041, !2042, !2043, !2044}
!2041 = !DILocalVariable(name: "mode", arg: 1, scope: !2036, file: !50, line: 123, type: !2039)
!2042 = !DILocalVariable(name: "callback", arg: 2, scope: !2036, file: !50, line: 123, type: !33)
!2043 = !DILocalVariable(name: "parameter", arg: 3, scope: !2036, file: !50, line: 123, type: !37)
!2044 = !DILocalVariable(name: "ret", scope: !2036, file: !50, line: 125, type: !1705)
!2045 = !DILocation(line: 0, scope: !2036)
!2046 = !DILocation(line: 127, column: 9, scope: !2036)
!2047 = !DILocation(line: 133, column: 5, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !50, line: 130, column: 47)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !50, line: 130, column: 16)
!2050 = distinct !DILexicalBlock(scope: !2036, file: !50, line: 127, column: 9)
!2051 = !DILocation(line: 0, scope: !2050)
!2052 = !DILocation(line: 135, column: 5, scope: !2036)
!2053 = !DILocation(line: 136, column: 5, scope: !2036)
!2054 = !DILocation(line: 137, column: 5, scope: !2036)
!2055 = !DILocation(line: 139, column: 5, scope: !2036)
!2056 = distinct !DISubprogram(name: "halIrRxIsr", scope: !50, file: !50, line: 103, type: !2057, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!1800, !297}
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2056, file: !50, line: 103, type: !297)
!2061 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2056, file: !50, line: 105, type: !98)
!2062 = !DILocation(line: 0, scope: !2056)
!2063 = !DILocation(line: 107, column: 5, scope: !2056)
!2064 = !DILocation(line: 109, column: 25, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2056, file: !50, line: 109, column: 9)
!2066 = !DILocation(line: 109, column: 33, scope: !2065)
!2067 = !DILocation(line: 109, column: 9, scope: !2056)
!2068 = !DILocation(line: 111, column: 41, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !50, line: 111, column: 13)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !50, line: 109, column: 65)
!2071 = !DILocation(line: 111, column: 13, scope: !2069)
!2072 = !DILocation(line: 111, column: 13, scope: !2070)
!2073 = !DILocation(line: 116, column: 41, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !50, line: 116, column: 13)
!2075 = distinct !DILexicalBlock(scope: !2065, file: !50, line: 114, column: 12)
!2076 = !DILocation(line: 116, column: 13, scope: !2074)
!2077 = !DILocation(line: 116, column: 13, scope: !2075)
!2078 = !DILocation(line: 0, scope: !2065)
!2079 = !DILocation(line: 120, column: 1, scope: !2056)
!2080 = distinct !DISubprogram(name: "halIrRxRC5Read", scope: !50, file: !50, line: 143, type: !2081, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!1800, !38, !41, !41}
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089}
!2084 = !DILocalVariable(name: "pucBitNum", arg: 1, scope: !2080, file: !50, line: 143, type: !38)
!2085 = !DILocalVariable(name: "pu4DW0", arg: 2, scope: !2080, file: !50, line: 143, type: !41)
!2086 = !DILocalVariable(name: "pu4DW1", arg: 3, scope: !2080, file: !50, line: 143, type: !41)
!2087 = !DILocalVariable(name: "ucBitNum", scope: !2080, file: !50, line: 145, type: !43)
!2088 = !DILocalVariable(name: "format", scope: !2080, file: !50, line: 146, type: !43)
!2089 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2080, file: !50, line: 147, type: !98)
!2090 = !DILocation(line: 0, scope: !2080)
!2091 = !DILocation(line: 148, column: 33, scope: !2080)
!2092 = !DILocation(line: 148, column: 16, scope: !2080)
!2093 = !DILocation(line: 149, column: 30, scope: !2080)
!2094 = !DILocation(line: 149, column: 14, scope: !2080)
!2095 = !DILocation(line: 150, column: 18, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2080, file: !50, line: 150, column: 9)
!2097 = !DILocation(line: 150, column: 9, scope: !2080)
!2098 = !DILocation(line: 151, column: 34, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2096, file: !50, line: 150, column: 23)
!2100 = !DILocation(line: 151, column: 22, scope: !2099)
!2101 = !DILocation(line: 152, column: 36, scope: !2099)
!2102 = !DILocation(line: 152, column: 19, scope: !2099)
!2103 = !DILocation(line: 153, column: 36, scope: !2099)
!2104 = !DILocation(line: 153, column: 19, scope: !2099)
!2105 = !DILocation(line: 154, column: 5, scope: !2099)
!2106 = !DILocation(line: 155, column: 22, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2096, file: !50, line: 154, column: 12)
!2108 = !DILocation(line: 157, column: 16, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2080, file: !50, line: 157, column: 9)
!2110 = !DILocation(line: 157, column: 9, scope: !2080)
!2111 = !DILocation(line: 158, column: 12, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !50, line: 158, column: 12)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !50, line: 157, column: 59)
!2114 = !DILocation(line: 158, column: 23, scope: !2112)
!2115 = !DILocation(line: 0, scope: !2112)
!2116 = !DILocation(line: 164, column: 5, scope: !2080)
!2117 = !DILocation(line: 165, column: 1, scope: !2080)
!2118 = distinct !DISubprogram(name: "halIrRxReset", scope: !50, file: !50, line: 218, type: !2029, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2119)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2118, file: !50, line: 220, type: !98)
!2121 = !DILocation(line: 0, scope: !2118)
!2122 = !DILocation(line: 224, column: 27, scope: !2118)
!2123 = !DILocation(line: 225, column: 1, scope: !2118)
!2124 = distinct !DISubprogram(name: "halIrRxPWDRead", scope: !50, file: !50, line: 168, type: !2125, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!1800, !38, !38, !43}
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2128 = !DILocalVariable(name: "pucPWNum", arg: 1, scope: !2124, file: !50, line: 168, type: !38)
!2129 = !DILocalVariable(name: "pucPWBuf", arg: 2, scope: !2124, file: !50, line: 168, type: !38)
!2130 = !DILocalVariable(name: "ucBufLen", arg: 3, scope: !2124, file: !50, line: 168, type: !43)
!2131 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2124, file: !50, line: 170, type: !98)
!2132 = !DILocalVariable(name: "ucNum", scope: !2124, file: !50, line: 171, type: !43)
!2133 = !DILocalVariable(name: "u4RegVal", scope: !2124, file: !50, line: 172, type: !104)
!2134 = !DILocalVariable(name: "u4RegAddr", scope: !2124, file: !50, line: 173, type: !104)
!2135 = !DILocation(line: 0, scope: !2124)
!2136 = !DILocation(line: 175, column: 5, scope: !2124)
!2137 = !DILocation(line: 176, column: 20, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2124, file: !50, line: 175, column: 8)
!2139 = !DILocation(line: 177, column: 41, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2138, file: !50, line: 177, column: 13)
!2141 = !DILocation(line: 178, column: 13, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2140, file: !50, line: 177, column: 73)
!2143 = !DILocation(line: 178, column: 29, scope: !2142)
!2144 = !DILocation(line: 180, column: 18, scope: !2142)
!2145 = !DILocation(line: 185, column: 33, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2138, file: !50, line: 185, column: 13)
!2147 = !DILocation(line: 185, column: 48, scope: !2146)
!2148 = !DILocation(line: 186, column: 13, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !50, line: 185, column: 87)
!2150 = !DILocation(line: 186, column: 29, scope: !2149)
!2151 = !DILocation(line: 188, column: 18, scope: !2149)
!2152 = !DILocation(line: 193, column: 33, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2138, file: !50, line: 193, column: 13)
!2154 = !DILocation(line: 193, column: 49, scope: !2153)
!2155 = !DILocation(line: 194, column: 13, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !50, line: 193, column: 89)
!2157 = !DILocation(line: 194, column: 29, scope: !2156)
!2158 = !DILocation(line: 196, column: 18, scope: !2156)
!2159 = !DILocation(line: 201, column: 33, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2138, file: !50, line: 201, column: 13)
!2161 = !DILocation(line: 201, column: 19, scope: !2160)
!2162 = !DILocation(line: 201, column: 49, scope: !2160)
!2163 = !DILocation(line: 202, column: 31, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !50, line: 201, column: 89)
!2165 = !DILocation(line: 202, column: 13, scope: !2164)
!2166 = !DILocation(line: 202, column: 29, scope: !2164)
!2167 = !DILocation(line: 204, column: 18, scope: !2164)
!2168 = !DILocation(line: 209, column: 31, scope: !2138)
!2169 = !DILocation(line: 210, column: 5, scope: !2138)
!2170 = distinct !{!2170, !2136, !2171}
!2171 = !DILocation(line: 210, column: 15, scope: !2124)
!2172 = !DILocation(line: 212, column: 17, scope: !2124)
!2173 = !DILocation(line: 214, column: 5, scope: !2124)
!2174 = !DILocation(line: 215, column: 1, scope: !2124)
!2175 = distinct !DISubprogram(name: "halIrRxRC5", scope: !50, file: !50, line: 227, type: !2176, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!1705, !43, !43, !43, !1057}
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2179 = !DILocalVariable(name: "ucInverse", arg: 1, scope: !2175, file: !50, line: 227, type: !43)
!2180 = !DILocalVariable(name: "ucBitReverse", arg: 2, scope: !2175, file: !50, line: 227, type: !43)
!2181 = !DILocalVariable(name: "ucIgnoreEmpty", arg: 3, scope: !2175, file: !50, line: 227, type: !43)
!2182 = !DILocalVariable(name: "u2SamplePeriod", arg: 4, scope: !2175, file: !50, line: 227, type: !1057)
!2183 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2175, file: !50, line: 230, type: !98)
!2184 = !DILocalVariable(name: "u4Val", scope: !2175, file: !50, line: 231, type: !104)
!2185 = !DILocalVariable(name: "u4DeGlitchCnt", scope: !2175, file: !50, line: 232, type: !104)
!2186 = !DILocalVariable(name: "ret", scope: !2175, file: !50, line: 233, type: !1705)
!2187 = !DILocation(line: 0, scope: !2175)
!2188 = !DILocation(line: 236, column: 28, scope: !2175)
!2189 = !DILocation(line: 242, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2175, file: !50, line: 242, column: 9)
!2191 = !DILocation(line: 242, column: 9, scope: !2175)
!2192 = !DILocation(line: 251, column: 11, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2175, file: !50, line: 251, column: 9)
!2194 = !DILocation(line: 251, column: 9, scope: !2175)
!2195 = !DILocation(line: 265, column: 11, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2175, file: !50, line: 265, column: 9)
!2197 = !DILocation(line: 265, column: 9, scope: !2175)
!2198 = !DILocation(line: 272, column: 11, scope: !2175)
!2199 = !DILocation(line: 273, column: 11, scope: !2175)
!2200 = !DILocation(line: 275, column: 28, scope: !2175)
!2201 = !DILocation(line: 280, column: 28, scope: !2175)
!2202 = !DILocation(line: 281, column: 32, scope: !2175)
!2203 = !DILocation(line: 281, column: 28, scope: !2175)
!2204 = !DILocation(line: 285, column: 27, scope: !2175)
!2205 = !DILocation(line: 288, column: 27, scope: !2175)
!2206 = !DILocation(line: 289, column: 27, scope: !2175)
!2207 = !DILocation(line: 294, column: 27, scope: !2175)
!2208 = !DILocation(line: 296, column: 5, scope: !2175)
!2209 = distinct !DISubprogram(name: "halIrRxPulseWidthDetect", scope: !50, file: !50, line: 304, type: !2210, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2213)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!1705, !104, !43, !104, !2212}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2214 = !DILocalVariable(name: "u4DeGlitchCnt", arg: 1, scope: !2209, file: !50, line: 305, type: !104)
!2215 = !DILocalVariable(name: "ucInverse", arg: 2, scope: !2209, file: !50, line: 306, type: !43)
!2216 = !DILocalVariable(name: "u4TherminateThresholdUs", arg: 3, scope: !2209, file: !50, line: 307, type: !104)
!2217 = !DILocalVariable(name: "pu4DetectPrecesionUs", arg: 4, scope: !2209, file: !50, line: 308, type: !2212)
!2218 = !DILocalVariable(name: "ret", scope: !2209, file: !50, line: 312, type: !1705)
!2219 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2209, file: !50, line: 313, type: !98)
!2220 = !DILocalVariable(name: "u4Val", scope: !2209, file: !50, line: 314, type: !104)
!2221 = !DILocalVariable(name: "u4OKPeriod", scope: !2209, file: !50, line: 315, type: !104)
!2222 = !DILocalVariable(name: "u4SAPeriod", scope: !2209, file: !50, line: 316, type: !104)
!2223 = !DILocalVariable(name: "u4ChkPeriod", scope: !2209, file: !50, line: 317, type: !104)
!2224 = !DILocation(line: 0, scope: !2209)
!2225 = !DILocation(line: 353, column: 66, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2209, file: !50, line: 352, column: 8)
!2227 = !DILocation(line: 354, column: 15, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2226, file: !50, line: 354, column: 13)
!2229 = !DILocation(line: 354, column: 13, scope: !2226)
!2230 = !DILocation(line: 357, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !50, line: 354, column: 45)
!2232 = !DILocation(line: 358, column: 38, scope: !2231)
!2233 = !DILocation(line: 353, column: 80, scope: !2226)
!2234 = distinct !{!2234, !2235, !2236}
!2235 = !DILocation(line: 352, column: 5, scope: !2209)
!2236 = !DILocation(line: 372, column: 15, scope: !2209)
!2237 = !DILocation(line: 362, column: 35, scope: !2226)
!2238 = !DILocation(line: 362, column: 50, scope: !2226)
!2239 = !DILocation(line: 362, column: 48, scope: !2226)
!2240 = !DILocation(line: 362, column: 65, scope: !2226)
!2241 = !DILocation(line: 390, column: 28, scope: !2209)
!2242 = !DILocation(line: 396, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2209, file: !50, line: 396, column: 9)
!2244 = !DILocation(line: 396, column: 9, scope: !2209)
!2245 = !DILocation(line: 405, column: 11, scope: !2209)
!2246 = !DILocation(line: 415, column: 26, scope: !2209)
!2247 = !DILocation(line: 415, column: 11, scope: !2209)
!2248 = !DILocation(line: 417, column: 28, scope: !2209)
!2249 = !DILocation(line: 422, column: 28, scope: !2209)
!2250 = !DILocation(line: 423, column: 28, scope: !2209)
!2251 = !DILocation(line: 425, column: 28, scope: !2209)
!2252 = !DILocation(line: 426, column: 44, scope: !2209)
!2253 = !DILocation(line: 426, column: 28, scope: !2209)
!2254 = !DILocation(line: 431, column: 27, scope: !2209)
!2255 = !DILocation(line: 434, column: 27, scope: !2209)
!2256 = !DILocation(line: 435, column: 45, scope: !2209)
!2257 = !DILocation(line: 435, column: 27, scope: !2209)
!2258 = !DILocation(line: 440, column: 27, scope: !2209)
!2259 = !DILocation(line: 443, column: 45, scope: !2209)
!2260 = !DILocation(line: 443, column: 55, scope: !2209)
!2261 = !DILocation(line: 443, column: 53, scope: !2209)
!2262 = !DILocation(line: 443, column: 29, scope: !2209)
!2263 = !DILocation(line: 446, column: 1, scope: !2209)
!2264 = distinct !DISubprogram(name: "halIrRxPulseWidthDetect_DVT", scope: !50, file: !50, line: 452, type: !2265, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !49, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!1705, !104, !43, !104, !104, !104, !43, !43}
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2280}
!2268 = !DILocalVariable(name: "u4DeGlitchCnt", arg: 1, scope: !2264, file: !50, line: 453, type: !104)
!2269 = !DILocalVariable(name: "ucInverse", arg: 2, scope: !2264, file: !50, line: 454, type: !43)
!2270 = !DILocalVariable(name: "u4OKPeriod", arg: 3, scope: !2264, file: !50, line: 455, type: !104)
!2271 = !DILocalVariable(name: "u4SAPeriod", arg: 4, scope: !2264, file: !50, line: 456, type: !104)
!2272 = !DILocalVariable(name: "u4ChkPeriod", arg: 5, scope: !2264, file: !50, line: 457, type: !104)
!2273 = !DILocalVariable(name: "ucLowTerminate", arg: 6, scope: !2264, file: !50, line: 458, type: !43)
!2274 = !DILocalVariable(name: "ucHighTerminate", arg: 7, scope: !2264, file: !50, line: 459, type: !43)
!2275 = !DILocalVariable(name: "ret", scope: !2264, file: !50, line: 463, type: !1705)
!2276 = !DILocalVariable(name: "pIRRXTypeDef", scope: !2264, file: !50, line: 464, type: !98)
!2277 = !DILocalVariable(name: "u4Val", scope: !2264, file: !50, line: 465, type: !104)
!2278 = !DILocalVariable(name: "u4CalTherminateThresholdUs", scope: !2279, file: !50, line: 469, type: !104)
!2279 = distinct !DILexicalBlock(scope: !2264, file: !50, line: 468, column: 5)
!2280 = !DILocalVariable(name: "u4CalPrecesionUs", scope: !2279, file: !50, line: 470, type: !104)
!2281 = !DILocation(line: 0, scope: !2264)
!2282 = !DILocation(line: 0, scope: !2279)
!2283 = !DILocation(line: 473, column: 52, scope: !2279)
!2284 = !DILocation(line: 473, column: 66, scope: !2279)
!2285 = !DILocation(line: 473, column: 74, scope: !2279)
!2286 = !DILocation(line: 474, column: 42, scope: !2279)
!2287 = !DILocation(line: 474, column: 52, scope: !2279)
!2288 = !DILocation(line: 474, column: 50, scope: !2279)
!2289 = !DILocation(line: 476, column: 9, scope: !2279)
!2290 = !DILocation(line: 477, column: 9, scope: !2279)
!2291 = !DILocation(line: 484, column: 28, scope: !2264)
!2292 = !DILocation(line: 490, column: 11, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2264, file: !50, line: 490, column: 9)
!2294 = !DILocation(line: 490, column: 9, scope: !2264)
!2295 = !DILocation(line: 498, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2264, file: !50, line: 498, column: 9)
!2297 = !DILocation(line: 498, column: 9, scope: !2264)
!2298 = !DILocation(line: 504, column: 11, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2264, file: !50, line: 504, column: 9)
!2300 = !DILocation(line: 504, column: 9, scope: !2264)
!2301 = !DILocation(line: 518, column: 26, scope: !2264)
!2302 = !DILocation(line: 518, column: 11, scope: !2264)
!2303 = !DILocation(line: 520, column: 28, scope: !2264)
!2304 = !DILocation(line: 525, column: 28, scope: !2264)
!2305 = !DILocation(line: 526, column: 28, scope: !2264)
!2306 = !DILocation(line: 528, column: 28, scope: !2264)
!2307 = !DILocation(line: 529, column: 44, scope: !2264)
!2308 = !DILocation(line: 529, column: 28, scope: !2264)
!2309 = !DILocation(line: 534, column: 27, scope: !2264)
!2310 = !DILocation(line: 537, column: 27, scope: !2264)
!2311 = !DILocation(line: 538, column: 45, scope: !2264)
!2312 = !DILocation(line: 538, column: 27, scope: !2264)
!2313 = !DILocation(line: 543, column: 27, scope: !2264)
!2314 = !DILocation(line: 545, column: 5, scope: !2264)
!2315 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !879, file: !879, line: 47, type: !2316, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !155}
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "addr", arg: 1, scope: !2315, file: !879, line: 47, type: !155)
!2320 = !DILocation(line: 0, scope: !2315)
!2321 = !DILocation(line: 49, column: 15, scope: !2315)
!2322 = !DILocation(line: 51, column: 5, scope: !2315)
!2323 = !{i64 2624}
!2324 = !DILocation(line: 52, column: 5, scope: !2315)
!2325 = !{i64 2651}
!2326 = !DILocation(line: 53, column: 1, scope: !2315)
!2327 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !879, file: !879, line: 56, type: !2328, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !24}
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "source", arg: 1, scope: !2327, file: !879, line: 56, type: !24)
!2332 = !DILocation(line: 0, scope: !2327)
!2333 = !DILocation(line: 58, column: 16, scope: !2327)
!2334 = !DILocation(line: 59, column: 1, scope: !2327)
!2335 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !879, file: !879, line: 61, type: !2336, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!155}
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "mask", scope: !2335, file: !879, line: 63, type: !155)
!2340 = !DILocation(line: 470, column: 3, scope: !2341, inlinedAt: !2345)
!2341 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2342, file: !2342, line: 466, type: !2336, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !2343)
!2342 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!2343 = !{!2344}
!2344 = !DILocalVariable(name: "result", scope: !2341, file: !2342, line: 468, type: !155)
!2345 = distinct !DILocation(line: 64, column: 5, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !879, line: 64, column: 5)
!2347 = !{i64 302171}
!2348 = !DILocation(line: 0, scope: !2341, inlinedAt: !2345)
!2349 = !DILocation(line: 0, scope: !2335)
!2350 = !DILocation(line: 330, column: 3, scope: !2351, inlinedAt: !2352)
!2351 = distinct !DISubprogram(name: "__disable_irq", scope: !2342, file: !2342, line: 328, type: !452, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !1689)
!2352 = distinct !DILocation(line: 64, column: 5, scope: !2346)
!2353 = !{i64 298835}
!2354 = !DILocation(line: 65, column: 5, scope: !2335)
!2355 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !879, file: !879, line: 68, type: !2316, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !2356)
!2356 = !{!2357}
!2357 = !DILocalVariable(name: "mask", arg: 1, scope: !2355, file: !879, line: 68, type: !155)
!2358 = !DILocation(line: 0, scope: !2355)
!2359 = !DILocalVariable(name: "priMask", arg: 1, scope: !2360, file: !2342, line: 481, type: !155)
!2360 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2342, file: !2342, line: 481, type: !2316, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !2361)
!2361 = !{!2359}
!2362 = !DILocation(line: 0, scope: !2360, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 70, column: 5, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2355, file: !879, line: 70, column: 5)
!2365 = !DILocation(line: 483, column: 3, scope: !2360, inlinedAt: !2363)
!2366 = !{i64 302489}
!2367 = !DILocation(line: 71, column: 1, scope: !2355)
!2368 = distinct !DISubprogram(name: "pinmux_config", scope: !924, file: !924, line: 54, type: !2369, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!298, !1026, !155}
!2371 = !{!2372, !2373, !2374}
!2372 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2368, file: !924, line: 54, type: !1026)
!2373 = !DILocalVariable(name: "function", arg: 2, scope: !2368, file: !924, line: 54, type: !155)
!2374 = !DILocalVariable(name: "ePadIndex", scope: !2368, file: !924, line: 56, type: !1801)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocation(line: 60, column: 5, scope: !2368)
!2377 = !DILocation(line: 205, column: 38, scope: !2368)
!2378 = !DILocation(line: 205, column: 5, scope: !2368)
!2379 = !DILocation(line: 207, column: 5, scope: !2368)
!2380 = !DILocation(line: 208, column: 1, scope: !2368)
!2381 = distinct !DISubprogram(name: "top_xtal_init", scope: !151, file: !151, line: 52, type: !452, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2382)
!2382 = !{!2383, !2384}
!2383 = !DILocalVariable(name: "u4RegVal", scope: !2381, file: !151, line: 54, type: !155)
!2384 = !DILocalVariable(name: "reg", scope: !2381, file: !151, line: 55, type: !673)
!2385 = !DILocation(line: 0, scope: !2381)
!2386 = !DILocation(line: 55, column: 25, scope: !2381)
!2387 = !DILocation(line: 56, column: 16, scope: !2381)
!2388 = !DILocation(line: 56, column: 23, scope: !2381)
!2389 = !DILocation(line: 58, column: 16, scope: !2381)
!2390 = !DILocation(line: 61, column: 5, scope: !2381)
!2391 = !DILocation(line: 59, column: 14, scope: !2381)
!2392 = !DILocation(line: 0, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2381, file: !151, line: 61, column: 18)
!2394 = !DILocation(line: 87, column: 38, scope: !2381)
!2395 = !DILocation(line: 88, column: 21, scope: !2381)
!2396 = !DILocation(line: 88, column: 19, scope: !2381)
!2397 = !DILocation(line: 89, column: 5, scope: !2381)
!2398 = !DILocation(line: 90, column: 17, scope: !2381)
!2399 = !DILocation(line: 90, column: 33, scope: !2381)
!2400 = !DILocation(line: 90, column: 5, scope: !2381)
!2401 = !DILocation(line: 91, column: 1, scope: !2381)
!2402 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !151, file: !151, line: 98, type: !2336, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1689)
!2403 = !DILocation(line: 100, column: 12, scope: !2402)
!2404 = !DILocation(line: 100, column: 5, scope: !2402)
!2405 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !151, file: !151, line: 108, type: !2336, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !1689)
!2406 = !DILocation(line: 110, column: 12, scope: !2405)
!2407 = !DILocation(line: 110, column: 5, scope: !2405)
!2408 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !151, file: !151, line: 118, type: !452, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2409)
!2409 = !{!2410, !2411}
!2410 = !DILocalVariable(name: "reg", scope: !2408, file: !151, line: 120, type: !154)
!2411 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2408, file: !151, line: 121, type: !153)
!2412 = !DILocation(line: 120, column: 5, scope: !2408)
!2413 = !DILocation(line: 120, column: 23, scope: !2408)
!2414 = !DILocation(line: 0, scope: !2408)
!2415 = !DILocation(line: 123, column: 11, scope: !2408)
!2416 = !DILocation(line: 123, column: 9, scope: !2408)
!2417 = !DILocation(line: 124, column: 12, scope: !2408)
!2418 = !DILocation(line: 124, column: 16, scope: !2408)
!2419 = !DILocation(line: 124, column: 39, scope: !2408)
!2420 = !DILocation(line: 124, column: 9, scope: !2408)
!2421 = !DILocation(line: 126, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2408, file: !151, line: 126, column: 9)
!2423 = !DILocation(line: 126, column: 13, scope: !2422)
!2424 = !DILocation(line: 126, column: 9, scope: !2408)
!2425 = !DILocation(line: 127, column: 15, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !151, line: 126, column: 47)
!2427 = !DILocation(line: 127, column: 13, scope: !2426)
!2428 = !DILocation(line: 128, column: 15, scope: !2426)
!2429 = !DILocation(line: 128, column: 19, scope: !2426)
!2430 = !DILocation(line: 128, column: 13, scope: !2426)
!2431 = !DILocation(line: 129, column: 15, scope: !2426)
!2432 = !DILocation(line: 129, column: 19, scope: !2426)
!2433 = !DILocation(line: 129, column: 13, scope: !2426)
!2434 = !DILocation(line: 130, column: 46, scope: !2426)
!2435 = !DILocation(line: 130, column: 9, scope: !2426)
!2436 = !DILocation(line: 132, column: 9, scope: !2426)
!2437 = !DILocation(line: 133, column: 19, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2426, file: !151, line: 132, column: 12)
!2439 = !DILocation(line: 133, column: 17, scope: !2438)
!2440 = !DILocation(line: 134, column: 19, scope: !2438)
!2441 = !DILocation(line: 134, column: 23, scope: !2438)
!2442 = !DILocation(line: 134, column: 17, scope: !2438)
!2443 = !DILocation(line: 135, column: 19, scope: !2426)
!2444 = !DILocation(line: 135, column: 18, scope: !2426)
!2445 = !DILocation(line: 135, column: 9, scope: !2438)
!2446 = distinct !{!2446, !2436, !2447}
!2447 = !DILocation(line: 135, column: 22, scope: !2426)
!2448 = !DILocation(line: 138, column: 1, scope: !2408)
!2449 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2450, file: !2450, line: 176, type: !2451, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2455)
!2450 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!155, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "Register", arg: 1, scope: !2449, file: !2450, line: 176, type: !2453)
!2457 = !DILocation(line: 0, scope: !2449)
!2458 = !DILocation(line: 178, column: 13, scope: !2449)
!2459 = !DILocation(line: 178, column: 12, scope: !2449)
!2460 = !DILocation(line: 178, column: 5, scope: !2449)
!2461 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2450, file: !2450, line: 171, type: !2462, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2464)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !2453, !155}
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "Register", arg: 1, scope: !2461, file: !2450, line: 171, type: !2453)
!2466 = !DILocalVariable(name: "Value", arg: 2, scope: !2461, file: !2450, line: 171, type: !155)
!2467 = !DILocation(line: 0, scope: !2461)
!2468 = !DILocation(line: 173, column: 6, scope: !2461)
!2469 = !DILocation(line: 173, column: 36, scope: !2461)
!2470 = !DILocation(line: 174, column: 1, scope: !2461)
!2471 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !151, file: !151, line: 145, type: !2472, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !327}
!2474 = !{!2475, !2476, !2477}
!2475 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2471, file: !151, line: 145, type: !327)
!2476 = !DILocalVariable(name: "reg", scope: !2471, file: !151, line: 147, type: !154)
!2477 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2471, file: !151, line: 148, type: !153)
!2478 = !DILocation(line: 0, scope: !2471)
!2479 = !DILocation(line: 147, column: 5, scope: !2471)
!2480 = !DILocation(line: 147, column: 23, scope: !2471)
!2481 = !DILocation(line: 150, column: 11, scope: !2471)
!2482 = !DILocation(line: 150, column: 9, scope: !2471)
!2483 = !DILocation(line: 151, column: 12, scope: !2471)
!2484 = !DILocation(line: 151, column: 16, scope: !2471)
!2485 = !DILocation(line: 151, column: 39, scope: !2471)
!2486 = !DILocation(line: 151, column: 9, scope: !2471)
!2487 = !DILocation(line: 153, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2471, file: !151, line: 153, column: 9)
!2489 = !DILocation(line: 153, column: 13, scope: !2488)
!2490 = !DILocation(line: 153, column: 9, scope: !2471)
!2491 = !DILocation(line: 154, column: 15, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !151, line: 153, column: 45)
!2493 = !DILocation(line: 154, column: 13, scope: !2492)
!2494 = !DILocation(line: 155, column: 15, scope: !2492)
!2495 = !DILocation(line: 155, column: 19, scope: !2492)
!2496 = !DILocation(line: 155, column: 13, scope: !2492)
!2497 = !DILocation(line: 156, column: 15, scope: !2492)
!2498 = !DILocation(line: 156, column: 19, scope: !2492)
!2499 = !DILocation(line: 156, column: 13, scope: !2492)
!2500 = !DILocation(line: 157, column: 15, scope: !2492)
!2501 = !DILocation(line: 157, column: 13, scope: !2492)
!2502 = !DILocation(line: 158, column: 46, scope: !2492)
!2503 = !DILocation(line: 158, column: 9, scope: !2492)
!2504 = !DILocation(line: 160, column: 15, scope: !2492)
!2505 = !DILocation(line: 160, column: 13, scope: !2492)
!2506 = !DILocation(line: 161, column: 15, scope: !2492)
!2507 = !DILocation(line: 161, column: 19, scope: !2492)
!2508 = !DILocation(line: 161, column: 13, scope: !2492)
!2509 = !DILocation(line: 162, column: 15, scope: !2492)
!2510 = !DILocation(line: 162, column: 19, scope: !2492)
!2511 = !DILocation(line: 162, column: 13, scope: !2492)
!2512 = !DILocation(line: 163, column: 15, scope: !2492)
!2513 = !DILocation(line: 163, column: 19, scope: !2492)
!2514 = !DILocation(line: 163, column: 13, scope: !2492)
!2515 = !DILocation(line: 164, column: 46, scope: !2492)
!2516 = !DILocation(line: 164, column: 9, scope: !2492)
!2517 = !DILocation(line: 166, column: 9, scope: !2492)
!2518 = !DILocation(line: 167, column: 19, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2492, file: !151, line: 166, column: 12)
!2520 = !DILocation(line: 167, column: 17, scope: !2519)
!2521 = !DILocation(line: 168, column: 19, scope: !2519)
!2522 = !DILocation(line: 168, column: 23, scope: !2519)
!2523 = !DILocation(line: 168, column: 17, scope: !2519)
!2524 = !DILocation(line: 169, column: 19, scope: !2492)
!2525 = !DILocation(line: 169, column: 18, scope: !2492)
!2526 = !DILocation(line: 169, column: 9, scope: !2519)
!2527 = distinct !{!2527, !2517, !2528}
!2528 = !DILocation(line: 169, column: 22, scope: !2492)
!2529 = !DILocation(line: 171, column: 15, scope: !2492)
!2530 = !DILocation(line: 171, column: 13, scope: !2492)
!2531 = !DILocation(line: 172, column: 15, scope: !2492)
!2532 = !DILocation(line: 172, column: 19, scope: !2492)
!2533 = !DILocation(line: 172, column: 13, scope: !2492)
!2534 = !DILocation(line: 173, column: 15, scope: !2492)
!2535 = !DILocation(line: 173, column: 19, scope: !2492)
!2536 = !DILocation(line: 173, column: 13, scope: !2492)
!2537 = !DILocation(line: 174, column: 5, scope: !2492)
!2538 = !DILocation(line: 176, column: 11, scope: !2471)
!2539 = !DILocation(line: 176, column: 9, scope: !2471)
!2540 = !DILocation(line: 177, column: 9, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2471, file: !151, line: 177, column: 9)
!2542 = !DILocation(line: 0, scope: !2541)
!2543 = !DILocation(line: 177, column: 9, scope: !2471)
!2544 = !DILocation(line: 178, column: 19, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !151, line: 177, column: 17)
!2546 = !DILocation(line: 178, column: 13, scope: !2545)
!2547 = !DILocation(line: 179, column: 5, scope: !2545)
!2548 = !DILocation(line: 180, column: 13, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2541, file: !151, line: 179, column: 12)
!2550 = !DILocation(line: 182, column: 42, scope: !2471)
!2551 = !DILocation(line: 182, column: 5, scope: !2471)
!2552 = !DILocation(line: 184, column: 1, scope: !2471)
!2553 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !151, file: !151, line: 191, type: !452, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2554)
!2554 = !{!2555, !2556}
!2555 = !DILocalVariable(name: "reg", scope: !2553, file: !151, line: 193, type: !154)
!2556 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2553, file: !151, line: 194, type: !153)
!2557 = !DILocation(line: 193, column: 5, scope: !2553)
!2558 = !DILocation(line: 193, column: 23, scope: !2553)
!2559 = !DILocation(line: 0, scope: !2553)
!2560 = !DILocation(line: 196, column: 11, scope: !2553)
!2561 = !DILocation(line: 196, column: 9, scope: !2553)
!2562 = !DILocation(line: 197, column: 11, scope: !2553)
!2563 = !DILocation(line: 197, column: 15, scope: !2553)
!2564 = !DILocation(line: 197, column: 9, scope: !2553)
!2565 = !DILocation(line: 198, column: 11, scope: !2553)
!2566 = !DILocation(line: 198, column: 15, scope: !2553)
!2567 = !DILocation(line: 198, column: 9, scope: !2553)
!2568 = !DILocation(line: 199, column: 11, scope: !2553)
!2569 = !DILocation(line: 199, column: 9, scope: !2553)
!2570 = !DILocation(line: 200, column: 42, scope: !2553)
!2571 = !DILocation(line: 200, column: 5, scope: !2553)
!2572 = !DILocation(line: 202, column: 11, scope: !2553)
!2573 = !DILocation(line: 202, column: 9, scope: !2553)
!2574 = !DILocation(line: 203, column: 11, scope: !2553)
!2575 = !DILocation(line: 203, column: 15, scope: !2553)
!2576 = !DILocation(line: 203, column: 9, scope: !2553)
!2577 = !DILocation(line: 204, column: 11, scope: !2553)
!2578 = !DILocation(line: 204, column: 15, scope: !2553)
!2579 = !DILocation(line: 204, column: 9, scope: !2553)
!2580 = !DILocation(line: 205, column: 11, scope: !2553)
!2581 = !DILocation(line: 205, column: 9, scope: !2553)
!2582 = !DILocation(line: 206, column: 42, scope: !2553)
!2583 = !DILocation(line: 206, column: 5, scope: !2553)
!2584 = !DILocation(line: 209, column: 1, scope: !2553)
!2585 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !151, file: !151, line: 216, type: !452, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2586)
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "reg", scope: !2585, file: !151, line: 218, type: !154)
!2588 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2585, file: !151, line: 219, type: !153)
!2589 = !DILocation(line: 218, column: 5, scope: !2585)
!2590 = !DILocation(line: 218, column: 23, scope: !2585)
!2591 = !DILocation(line: 0, scope: !2585)
!2592 = !DILocation(line: 222, column: 11, scope: !2585)
!2593 = !DILocation(line: 222, column: 9, scope: !2585)
!2594 = !DILocation(line: 223, column: 11, scope: !2585)
!2595 = !DILocation(line: 223, column: 15, scope: !2585)
!2596 = !DILocation(line: 223, column: 9, scope: !2585)
!2597 = !DILocation(line: 224, column: 11, scope: !2585)
!2598 = !DILocation(line: 224, column: 9, scope: !2585)
!2599 = !DILocation(line: 225, column: 39, scope: !2585)
!2600 = !DILocation(line: 225, column: 5, scope: !2585)
!2601 = !DILocation(line: 228, column: 11, scope: !2585)
!2602 = !DILocation(line: 228, column: 9, scope: !2585)
!2603 = !DILocation(line: 229, column: 11, scope: !2585)
!2604 = !DILocation(line: 229, column: 15, scope: !2585)
!2605 = !DILocation(line: 229, column: 9, scope: !2585)
!2606 = !DILocation(line: 230, column: 11, scope: !2585)
!2607 = !DILocation(line: 230, column: 9, scope: !2585)
!2608 = !DILocation(line: 231, column: 39, scope: !2585)
!2609 = !DILocation(line: 231, column: 5, scope: !2585)
!2610 = !DILocation(line: 233, column: 5, scope: !2585)
!2611 = !DILocation(line: 233, column: 12, scope: !2585)
!2612 = !DILocation(line: 233, column: 19, scope: !2585)
!2613 = !DILocation(line: 233, column: 16, scope: !2585)
!2614 = distinct !{!2614, !2610, !2615}
!2615 = !DILocation(line: 233, column: 52, scope: !2585)
!2616 = !DILocation(line: 235, column: 21, scope: !2585)
!2617 = !DILocation(line: 235, column: 19, scope: !2585)
!2618 = !DILocation(line: 236, column: 5, scope: !2585)
!2619 = !DILocation(line: 237, column: 17, scope: !2585)
!2620 = !DILocation(line: 237, column: 33, scope: !2585)
!2621 = !DILocation(line: 237, column: 5, scope: !2585)
!2622 = !DILocation(line: 239, column: 1, scope: !2585)
!2623 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !151, file: !151, line: 246, type: !452, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2624)
!2624 = !{!2625, !2626}
!2625 = !DILocalVariable(name: "reg", scope: !2623, file: !151, line: 248, type: !154)
!2626 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2623, file: !151, line: 249, type: !153)
!2627 = !DILocation(line: 248, column: 5, scope: !2623)
!2628 = !DILocation(line: 248, column: 23, scope: !2623)
!2629 = !DILocation(line: 0, scope: !2623)
!2630 = !DILocation(line: 252, column: 5, scope: !2623)
!2631 = !DILocation(line: 255, column: 11, scope: !2623)
!2632 = !DILocation(line: 255, column: 9, scope: !2623)
!2633 = !DILocation(line: 256, column: 11, scope: !2623)
!2634 = !DILocation(line: 256, column: 15, scope: !2623)
!2635 = !DILocation(line: 256, column: 9, scope: !2623)
!2636 = !DILocation(line: 257, column: 11, scope: !2623)
!2637 = !DILocation(line: 257, column: 15, scope: !2623)
!2638 = !DILocation(line: 257, column: 9, scope: !2623)
!2639 = !DILocation(line: 258, column: 39, scope: !2623)
!2640 = !DILocation(line: 258, column: 5, scope: !2623)
!2641 = !DILocation(line: 260, column: 5, scope: !2623)
!2642 = !DILocation(line: 260, column: 12, scope: !2623)
!2643 = !DILocation(line: 260, column: 19, scope: !2623)
!2644 = !DILocation(line: 260, column: 16, scope: !2623)
!2645 = distinct !{!2645, !2641, !2646}
!2646 = !DILocation(line: 260, column: 52, scope: !2623)
!2647 = !DILocation(line: 263, column: 11, scope: !2623)
!2648 = !DILocation(line: 263, column: 9, scope: !2623)
!2649 = !DILocation(line: 264, column: 11, scope: !2623)
!2650 = !DILocation(line: 264, column: 15, scope: !2623)
!2651 = !DILocation(line: 264, column: 9, scope: !2623)
!2652 = !DILocation(line: 265, column: 11, scope: !2623)
!2653 = !DILocation(line: 265, column: 15, scope: !2623)
!2654 = !DILocation(line: 265, column: 9, scope: !2623)
!2655 = !DILocation(line: 266, column: 39, scope: !2623)
!2656 = !DILocation(line: 266, column: 5, scope: !2623)
!2657 = !DILocation(line: 269, column: 11, scope: !2623)
!2658 = !DILocation(line: 269, column: 9, scope: !2623)
!2659 = !DILocation(line: 270, column: 11, scope: !2623)
!2660 = !DILocation(line: 270, column: 15, scope: !2623)
!2661 = !DILocation(line: 270, column: 9, scope: !2623)
!2662 = !DILocation(line: 271, column: 11, scope: !2623)
!2663 = !DILocation(line: 271, column: 15, scope: !2623)
!2664 = !DILocation(line: 271, column: 9, scope: !2623)
!2665 = !DILocation(line: 272, column: 39, scope: !2623)
!2666 = !DILocation(line: 272, column: 5, scope: !2623)
!2667 = !DILocation(line: 273, column: 19, scope: !2623)
!2668 = !DILocation(line: 274, column: 5, scope: !2623)
!2669 = !DILocation(line: 275, column: 17, scope: !2623)
!2670 = !DILocation(line: 275, column: 33, scope: !2623)
!2671 = !DILocation(line: 275, column: 5, scope: !2623)
!2672 = !DILocation(line: 277, column: 1, scope: !2623)
!2673 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !151, file: !151, line: 284, type: !452, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2674)
!2674 = !{!2675, !2676}
!2675 = !DILocalVariable(name: "reg", scope: !2673, file: !151, line: 286, type: !154)
!2676 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2673, file: !151, line: 287, type: !153)
!2677 = !DILocation(line: 286, column: 5, scope: !2673)
!2678 = !DILocation(line: 286, column: 23, scope: !2673)
!2679 = !DILocation(line: 0, scope: !2673)
!2680 = !DILocation(line: 290, column: 5, scope: !2673)
!2681 = !DILocation(line: 293, column: 11, scope: !2673)
!2682 = !DILocation(line: 293, column: 9, scope: !2673)
!2683 = !DILocation(line: 294, column: 11, scope: !2673)
!2684 = !DILocation(line: 294, column: 15, scope: !2673)
!2685 = !DILocation(line: 294, column: 9, scope: !2673)
!2686 = !DILocation(line: 295, column: 11, scope: !2673)
!2687 = !DILocation(line: 295, column: 15, scope: !2673)
!2688 = !DILocation(line: 295, column: 9, scope: !2673)
!2689 = !DILocation(line: 296, column: 39, scope: !2673)
!2690 = !DILocation(line: 296, column: 5, scope: !2673)
!2691 = !DILocation(line: 298, column: 5, scope: !2673)
!2692 = !DILocation(line: 298, column: 12, scope: !2673)
!2693 = !DILocation(line: 298, column: 19, scope: !2673)
!2694 = !DILocation(line: 298, column: 16, scope: !2673)
!2695 = distinct !{!2695, !2691, !2696}
!2696 = !DILocation(line: 298, column: 52, scope: !2673)
!2697 = !DILocation(line: 301, column: 11, scope: !2673)
!2698 = !DILocation(line: 301, column: 9, scope: !2673)
!2699 = !DILocation(line: 302, column: 11, scope: !2673)
!2700 = !DILocation(line: 302, column: 15, scope: !2673)
!2701 = !DILocation(line: 302, column: 9, scope: !2673)
!2702 = !DILocation(line: 303, column: 11, scope: !2673)
!2703 = !DILocation(line: 303, column: 15, scope: !2673)
!2704 = !DILocation(line: 303, column: 9, scope: !2673)
!2705 = !DILocation(line: 304, column: 39, scope: !2673)
!2706 = !DILocation(line: 304, column: 5, scope: !2673)
!2707 = !DILocation(line: 307, column: 11, scope: !2673)
!2708 = !DILocation(line: 307, column: 9, scope: !2673)
!2709 = !DILocation(line: 308, column: 11, scope: !2673)
!2710 = !DILocation(line: 308, column: 15, scope: !2673)
!2711 = !DILocation(line: 308, column: 9, scope: !2673)
!2712 = !DILocation(line: 309, column: 11, scope: !2673)
!2713 = !DILocation(line: 309, column: 15, scope: !2673)
!2714 = !DILocation(line: 309, column: 9, scope: !2673)
!2715 = !DILocation(line: 310, column: 39, scope: !2673)
!2716 = !DILocation(line: 310, column: 5, scope: !2673)
!2717 = !DILocation(line: 311, column: 19, scope: !2673)
!2718 = !DILocation(line: 312, column: 5, scope: !2673)
!2719 = !DILocation(line: 313, column: 17, scope: !2673)
!2720 = !DILocation(line: 313, column: 33, scope: !2673)
!2721 = !DILocation(line: 313, column: 5, scope: !2673)
!2722 = !DILocation(line: 315, column: 1, scope: !2673)
!2723 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !151, file: !151, line: 323, type: !452, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2724)
!2724 = !{!2725, !2726}
!2725 = !DILocalVariable(name: "reg", scope: !2723, file: !151, line: 325, type: !154)
!2726 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2723, file: !151, line: 326, type: !153)
!2727 = !DILocation(line: 325, column: 5, scope: !2723)
!2728 = !DILocation(line: 325, column: 23, scope: !2723)
!2729 = !DILocation(line: 0, scope: !2723)
!2730 = !DILocation(line: 329, column: 5, scope: !2723)
!2731 = !DILocation(line: 332, column: 11, scope: !2723)
!2732 = !DILocation(line: 332, column: 9, scope: !2723)
!2733 = !DILocation(line: 333, column: 11, scope: !2723)
!2734 = !DILocation(line: 333, column: 15, scope: !2723)
!2735 = !DILocation(line: 333, column: 9, scope: !2723)
!2736 = !DILocation(line: 334, column: 11, scope: !2723)
!2737 = !DILocation(line: 334, column: 9, scope: !2723)
!2738 = !DILocation(line: 335, column: 39, scope: !2723)
!2739 = !DILocation(line: 335, column: 5, scope: !2723)
!2740 = !DILocation(line: 337, column: 5, scope: !2723)
!2741 = !DILocation(line: 337, column: 12, scope: !2723)
!2742 = !DILocation(line: 337, column: 19, scope: !2723)
!2743 = !DILocation(line: 337, column: 16, scope: !2723)
!2744 = distinct !{!2744, !2740, !2745}
!2745 = !DILocation(line: 337, column: 52, scope: !2723)
!2746 = !DILocation(line: 340, column: 11, scope: !2723)
!2747 = !DILocation(line: 340, column: 9, scope: !2723)
!2748 = !DILocation(line: 341, column: 11, scope: !2723)
!2749 = !DILocation(line: 341, column: 15, scope: !2723)
!2750 = !DILocation(line: 341, column: 9, scope: !2723)
!2751 = !DILocation(line: 342, column: 11, scope: !2723)
!2752 = !DILocation(line: 342, column: 15, scope: !2723)
!2753 = !DILocation(line: 342, column: 9, scope: !2723)
!2754 = !DILocation(line: 343, column: 39, scope: !2723)
!2755 = !DILocation(line: 343, column: 5, scope: !2723)
!2756 = !DILocation(line: 344, column: 19, scope: !2723)
!2757 = !DILocation(line: 345, column: 5, scope: !2723)
!2758 = !DILocation(line: 346, column: 17, scope: !2723)
!2759 = !DILocation(line: 346, column: 33, scope: !2723)
!2760 = !DILocation(line: 346, column: 5, scope: !2723)
!2761 = !DILocation(line: 348, column: 1, scope: !2723)
!2762 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !151, file: !151, line: 353, type: !452, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !150, retainedNodes: !2763)
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "reg", scope: !2762, file: !151, line: 355, type: !103)
!2765 = !DILocalVariable(name: "pTopCfgHclk", scope: !2762, file: !151, line: 356, type: !159)
!2766 = !DILocation(line: 355, column: 5, scope: !2762)
!2767 = !DILocation(line: 355, column: 21, scope: !2762)
!2768 = !DILocation(line: 0, scope: !2762)
!2769 = !DILocation(line: 358, column: 11, scope: !2762)
!2770 = !DILocation(line: 358, column: 9, scope: !2762)
!2771 = !DILocation(line: 359, column: 11, scope: !2762)
!2772 = !DILocation(line: 359, column: 15, scope: !2762)
!2773 = !DILocation(line: 359, column: 9, scope: !2762)
!2774 = !DILocation(line: 360, column: 11, scope: !2762)
!2775 = !DILocation(line: 360, column: 9, scope: !2762)
!2776 = !DILocation(line: 361, column: 37, scope: !2762)
!2777 = !DILocation(line: 361, column: 5, scope: !2762)
!2778 = !DILocation(line: 362, column: 1, scope: !2762)
!2779 = distinct !DISubprogram(name: "getc", scope: !166, file: !166, line: 68, type: !2780, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2782)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!7}
!2782 = !{!2783}
!2783 = !DILocalVariable(name: "rc", scope: !2779, file: !166, line: 71, type: !7)
!2784 = !DILocation(line: 71, column: 14, scope: !2779)
!2785 = !DILocation(line: 0, scope: !2779)
!2786 = !DILocation(line: 72, column: 5, scope: !2779)
!2787 = distinct !DISubprogram(name: "getc_nowait", scope: !166, file: !166, line: 80, type: !2780, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2788)
!2788 = !{!2789}
!2789 = !DILocalVariable(name: "c", scope: !2787, file: !166, line: 82, type: !443)
!2790 = !DILocation(line: 84, column: 9, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !166, line: 84, column: 9)
!2792 = !DILocation(line: 84, column: 40, scope: !2791)
!2793 = !DILocation(line: 84, column: 9, scope: !2787)
!2794 = !DILocation(line: 85, column: 13, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !166, line: 84, column: 47)
!2796 = !DILocation(line: 86, column: 16, scope: !2795)
!2797 = !DILocation(line: 0, scope: !2787)
!2798 = !DILocation(line: 86, column: 9, scope: !2795)
!2799 = !DILocation(line: 0, scope: !2791)
!2800 = !DILocation(line: 90, column: 1, scope: !2787)
!2801 = distinct !DISubprogram(name: "uart_output_char", scope: !166, file: !166, line: 93, type: !2802, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2805)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2804, !18}
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !169, line: 75, baseType: !168)
!2805 = !{!2806, !2807, !2808}
!2806 = !DILocalVariable(name: "port_no", arg: 1, scope: !2801, file: !166, line: 93, type: !2804)
!2807 = !DILocalVariable(name: "c", arg: 2, scope: !2801, file: !166, line: 93, type: !18)
!2808 = !DILocalVariable(name: "base", scope: !2801, file: !166, line: 95, type: !24)
!2809 = !DILocation(line: 0, scope: !2801)
!2810 = !DILocation(line: 95, column: 25, scope: !2801)
!2811 = !DILocation(line: 97, column: 5, scope: !2801)
!2812 = !DILocation(line: 97, column: 14, scope: !2801)
!2813 = !DILocation(line: 97, column: 42, scope: !2801)
!2814 = !DILocation(line: 97, column: 12, scope: !2801)
!2815 = distinct !{!2815, !2811, !2816}
!2816 = !DILocation(line: 98, column: 9, scope: !2801)
!2817 = !DILocation(line: 99, column: 35, scope: !2801)
!2818 = !DILocation(line: 99, column: 5, scope: !2801)
!2819 = !DILocation(line: 99, column: 33, scope: !2801)
!2820 = !DILocation(line: 102, column: 1, scope: !2801)
!2821 = distinct !DISubprogram(name: "uart_input_char", scope: !166, file: !166, line: 106, type: !2822, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!327, !2804}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "port_no", arg: 1, scope: !2821, file: !166, line: 106, type: !2804)
!2826 = !DILocalVariable(name: "base", scope: !2821, file: !166, line: 108, type: !24)
!2827 = !DILocalVariable(name: "c", scope: !2821, file: !166, line: 109, type: !443)
!2828 = !DILocation(line: 0, scope: !2821)
!2829 = !DILocation(line: 108, column: 25, scope: !2821)
!2830 = !DILocation(line: 111, column: 5, scope: !2821)
!2831 = !DILocation(line: 111, column: 14, scope: !2821)
!2832 = !DILocation(line: 111, column: 42, scope: !2821)
!2833 = !DILocation(line: 111, column: 12, scope: !2821)
!2834 = distinct !{!2834, !2830, !2835}
!2835 = !DILocation(line: 112, column: 9, scope: !2821)
!2836 = !DILocation(line: 114, column: 9, scope: !2821)
!2837 = !DILocation(line: 116, column: 5, scope: !2821)
!2838 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !166, file: !166, line: 120, type: !2839, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!155, !2804}
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "port_no", arg: 1, scope: !2838, file: !166, line: 120, type: !2804)
!2843 = !DILocalVariable(name: "base", scope: !2838, file: !166, line: 122, type: !24)
!2844 = !DILocalVariable(name: "c", scope: !2838, file: !166, line: 123, type: !443)
!2845 = !DILocation(line: 0, scope: !2838)
!2846 = !DILocation(line: 122, column: 25, scope: !2838)
!2847 = !DILocation(line: 125, column: 9, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2838, file: !166, line: 125, column: 9)
!2849 = !DILocation(line: 125, column: 37, scope: !2848)
!2850 = !DILocation(line: 125, column: 9, scope: !2838)
!2851 = !DILocation(line: 126, column: 13, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !166, line: 125, column: 44)
!2853 = !DILocation(line: 127, column: 16, scope: !2852)
!2854 = !DILocation(line: 127, column: 9, scope: !2852)
!2855 = !DILocation(line: 0, scope: !2848)
!2856 = !DILocation(line: 131, column: 1, scope: !2838)
!2857 = distinct !DISubprogram(name: "halUART_HWInit", scope: !166, file: !166, line: 136, type: !2858, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2804}
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "u_port", arg: 1, scope: !2857, file: !166, line: 136, type: !2804)
!2862 = !DILocation(line: 0, scope: !2857)
!2863 = !DILocation(line: 139, column: 5, scope: !2857)
!2864 = !DILocation(line: 140, column: 9, scope: !2857)
!2865 = !DILocation(line: 153, column: 5, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !166, line: 147, column: 38)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !166, line: 147, column: 16)
!2868 = distinct !DILexicalBlock(scope: !2857, file: !166, line: 140, column: 9)
!2869 = !DILocation(line: 0, scope: !2868)
!2870 = !DILocation(line: 155, column: 1, scope: !2857)
!2871 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !166, file: !166, line: 158, type: !2872, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2876)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2804, !155, !2874, !2874, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !156, line: 36, baseType: !2875)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !158, line: 57, baseType: !195)
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2892, !2893}
!2877 = !DILocalVariable(name: "u_port", arg: 1, scope: !2871, file: !166, line: 158, type: !2804)
!2878 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2871, file: !166, line: 158, type: !155)
!2879 = !DILocalVariable(name: "databit", arg: 3, scope: !2871, file: !166, line: 158, type: !2874)
!2880 = !DILocalVariable(name: "parity", arg: 4, scope: !2871, file: !166, line: 158, type: !2874)
!2881 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2871, file: !166, line: 158, type: !2874)
!2882 = !DILocalVariable(name: "control_word", scope: !2871, file: !166, line: 160, type: !2874)
!2883 = !DILocalVariable(name: "UART_BASE", scope: !2871, file: !166, line: 161, type: !155)
!2884 = !DILocalVariable(name: "data", scope: !2871, file: !166, line: 162, type: !155)
!2885 = !DILocalVariable(name: "uart_lcr", scope: !2871, file: !166, line: 162, type: !155)
!2886 = !DILocalVariable(name: "high_speed_div", scope: !2871, file: !166, line: 162, type: !155)
!2887 = !DILocalVariable(name: "sample_count", scope: !2871, file: !166, line: 162, type: !155)
!2888 = !DILocalVariable(name: "sample_point", scope: !2871, file: !166, line: 162, type: !155)
!2889 = !DILocalVariable(name: "fraction", scope: !2871, file: !166, line: 162, type: !155)
!2890 = !DILocalVariable(name: "fraction_L_mapping", scope: !2871, file: !166, line: 163, type: !2891)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 176, elements: !778)
!2892 = !DILocalVariable(name: "fraction_M_mapping", scope: !2871, file: !166, line: 164, type: !2891)
!2893 = !DILocalVariable(name: "status", scope: !2871, file: !166, line: 165, type: !298)
!2894 = !DILocation(line: 0, scope: !2871)
!2895 = !DILocation(line: 163, column: 15, scope: !2871)
!2896 = !DILocation(line: 164, column: 15, scope: !2871)
!2897 = !DILocation(line: 166, column: 20, scope: !2871)
!2898 = !DILocation(line: 166, column: 18, scope: !2871)
!2899 = !DILocation(line: 168, column: 9, scope: !2871)
!2900 = !DILocation(line: 176, column: 5, scope: !2871)
!2901 = !DILocation(line: 176, column: 44, scope: !2871)
!2902 = !DILocation(line: 177, column: 16, scope: !2871)
!2903 = !DILocation(line: 178, column: 50, scope: !2871)
!2904 = !DILocation(line: 178, column: 38, scope: !2871)
!2905 = !DILocation(line: 179, column: 12, scope: !2871)
!2906 = !DILocation(line: 179, column: 25, scope: !2871)
!2907 = !DILocation(line: 180, column: 28, scope: !2871)
!2908 = !DILocation(line: 180, column: 34, scope: !2871)
!2909 = !DILocation(line: 182, column: 29, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2871, file: !166, line: 181, column: 5)
!2911 = !DILocation(line: 182, column: 46, scope: !2910)
!2912 = !DILocation(line: 183, column: 26, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !166, line: 183, column: 13)
!2914 = !DILocation(line: 183, column: 13, scope: !2910)
!2915 = !DILocation(line: 192, column: 30, scope: !2871)
!2916 = !DILocation(line: 192, column: 35, scope: !2871)
!2917 = !DILocation(line: 192, column: 46, scope: !2871)
!2918 = !DILocation(line: 192, column: 74, scope: !2871)
!2919 = !DILocation(line: 192, column: 53, scope: !2871)
!2920 = !DILocation(line: 192, column: 80, scope: !2871)
!2921 = !DILocation(line: 193, column: 56, scope: !2871)
!2922 = !DILocation(line: 193, column: 5, scope: !2871)
!2923 = !DILocation(line: 193, column: 38, scope: !2871)
!2924 = !DILocation(line: 194, column: 57, scope: !2871)
!2925 = !DILocation(line: 194, column: 63, scope: !2871)
!2926 = !DILocation(line: 194, column: 5, scope: !2871)
!2927 = !DILocation(line: 194, column: 38, scope: !2871)
!2928 = !DILocation(line: 195, column: 5, scope: !2871)
!2929 = !DILocation(line: 195, column: 45, scope: !2871)
!2930 = !DILocation(line: 196, column: 5, scope: !2871)
!2931 = !DILocation(line: 196, column: 47, scope: !2871)
!2932 = !DILocation(line: 197, column: 46, scope: !2871)
!2933 = !DILocation(line: 197, column: 5, scope: !2871)
!2934 = !DILocation(line: 197, column: 44, scope: !2871)
!2935 = !DILocation(line: 198, column: 46, scope: !2871)
!2936 = !DILocation(line: 198, column: 5, scope: !2871)
!2937 = !DILocation(line: 198, column: 44, scope: !2871)
!2938 = !DILocation(line: 199, column: 38, scope: !2871)
!2939 = !DILocation(line: 200, column: 5, scope: !2871)
!2940 = !DILocation(line: 200, column: 38, scope: !2871)
!2941 = !DILocation(line: 202, column: 20, scope: !2871)
!2942 = !DILocation(line: 203, column: 18, scope: !2871)
!2943 = !DILocation(line: 205, column: 18, scope: !2871)
!2944 = !DILocation(line: 207, column: 18, scope: !2871)
!2945 = !DILocation(line: 208, column: 18, scope: !2871)
!2946 = !DILocation(line: 209, column: 5, scope: !2871)
!2947 = !DILocation(line: 213, column: 1, scope: !2871)
!2948 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !166, file: !166, line: 215, type: !2949, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{null, !2804, !298, !1752}
!2951 = !{!2952, !2953, !2954}
!2952 = !DILocalVariable(name: "u_port", arg: 1, scope: !2948, file: !166, line: 215, type: !2804)
!2953 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2948, file: !166, line: 215, type: !298)
!2954 = !DILocalVariable(name: "length", arg: 3, scope: !2948, file: !166, line: 215, type: !1752)
!2955 = !DILocation(line: 0, scope: !2948)
!2956 = !DILocation(line: 217, column: 16, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2948, file: !166, line: 217, column: 9)
!2958 = !DILocation(line: 0, scope: !2957)
!2959 = !DILocation(line: 217, column: 9, scope: !2948)
!2960 = !DILocation(line: 218, column: 13, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !166, line: 217, column: 31)
!2962 = !DILocation(line: 219, column: 23, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !166, line: 218, column: 20)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !166, line: 218, column: 13)
!2965 = !DILocation(line: 220, column: 9, scope: !2963)
!2966 = !DILocation(line: 221, column: 23, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !166, line: 220, column: 16)
!2968 = !DILocation(line: 221, column: 21, scope: !2967)
!2969 = !DILocation(line: 222, column: 24, scope: !2967)
!2970 = !DILocation(line: 222, column: 21, scope: !2967)
!2971 = !DILocation(line: 225, column: 13, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2957, file: !166, line: 224, column: 12)
!2973 = !DILocation(line: 226, column: 23, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !166, line: 225, column: 20)
!2975 = distinct !DILexicalBlock(scope: !2972, file: !166, line: 225, column: 13)
!2976 = !DILocation(line: 227, column: 9, scope: !2974)
!2977 = !DILocation(line: 228, column: 23, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !166, line: 227, column: 16)
!2979 = !DILocation(line: 228, column: 21, scope: !2978)
!2980 = !DILocation(line: 229, column: 24, scope: !2978)
!2981 = !DILocation(line: 229, column: 21, scope: !2978)
!2982 = !DILocation(line: 233, column: 5, scope: !2948)
!2983 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !166, file: !166, line: 236, type: !2984, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !2804, !494, !155}
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DILocalVariable(name: "u_port", arg: 1, scope: !2983, file: !166, line: 236, type: !2804)
!2988 = !DILocalVariable(name: "data", arg: 2, scope: !2983, file: !166, line: 236, type: !494)
!2989 = !DILocalVariable(name: "length", arg: 3, scope: !2983, file: !166, line: 236, type: !155)
!2990 = !DILocalVariable(name: "idx", scope: !2983, file: !166, line: 238, type: !104)
!2991 = !DILocation(line: 0, scope: !2983)
!2992 = !DILocation(line: 239, column: 23, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !166, line: 239, column: 5)
!2994 = distinct !DILexicalBlock(scope: !2983, file: !166, line: 239, column: 5)
!2995 = !DILocation(line: 239, column: 5, scope: !2994)
!2996 = !DILocation(line: 240, column: 13, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !166, line: 239, column: 40)
!2998 = !DILocation(line: 244, column: 9, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !166, line: 242, column: 42)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !166, line: 242, column: 20)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !166, line: 240, column: 13)
!3002 = !DILocation(line: 0, scope: !3001)
!3003 = !DILocation(line: 239, column: 36, scope: !2993)
!3004 = distinct !{!3004, !2995, !3005}
!3005 = !DILocation(line: 246, column: 5, scope: !2994)
!3006 = !DILocation(line: 249, column: 1, scope: !2983)
!3007 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !166, file: !166, line: 251, type: !3008, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3012)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2804, !3010, !155}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!3012 = !{!3013, !3014, !3015, !3016}
!3013 = !DILocalVariable(name: "u_port", arg: 1, scope: !3007, file: !166, line: 251, type: !2804)
!3014 = !DILocalVariable(name: "data", arg: 2, scope: !3007, file: !166, line: 251, type: !3010)
!3015 = !DILocalVariable(name: "length", arg: 3, scope: !3007, file: !166, line: 251, type: !155)
!3016 = !DILocalVariable(name: "idx", scope: !3007, file: !166, line: 253, type: !104)
!3017 = !DILocation(line: 0, scope: !3007)
!3018 = !DILocation(line: 254, column: 23, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !166, line: 254, column: 5)
!3020 = distinct !DILexicalBlock(scope: !3007, file: !166, line: 254, column: 5)
!3021 = !DILocation(line: 254, column: 5, scope: !3020)
!3022 = !DILocation(line: 255, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !166, line: 254, column: 40)
!3024 = !DILocation(line: 256, column: 61, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !166, line: 255, column: 35)
!3026 = distinct !DILexicalBlock(scope: !3023, file: !166, line: 255, column: 13)
!3027 = !DILocation(line: 256, column: 59, scope: !3025)
!3028 = !DILocation(line: 257, column: 9, scope: !3025)
!3029 = !DILocation(line: 258, column: 61, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !166, line: 257, column: 42)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !166, line: 257, column: 20)
!3032 = !DILocation(line: 258, column: 59, scope: !3030)
!3033 = !DILocation(line: 259, column: 9, scope: !3030)
!3034 = !DILocation(line: 254, column: 36, scope: !3019)
!3035 = distinct !{!3035, !3021, !3036}
!3036 = !DILocation(line: 261, column: 5, scope: !3020)
!3037 = !DILocation(line: 264, column: 1, scope: !3007)
!3038 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !166, file: !166, line: 266, type: !3039, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !2804, !494, !155, !155}
!3041 = !{!3042, !3043, !3044, !3045}
!3042 = !DILocalVariable(name: "u_port", arg: 1, scope: !3038, file: !166, line: 266, type: !2804)
!3043 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3038, file: !166, line: 266, type: !494)
!3044 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3038, file: !166, line: 266, type: !155)
!3045 = !DILocalVariable(name: "threshold", arg: 4, scope: !3038, file: !166, line: 266, type: !155)
!3046 = !DILocation(line: 0, scope: !3038)
!3047 = !DILocation(line: 268, column: 9, scope: !3038)
!3048 = !DILocation(line: 274, column: 5, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !166, line: 271, column: 38)
!3050 = distinct !DILexicalBlock(scope: !3051, file: !166, line: 271, column: 16)
!3051 = distinct !DILexicalBlock(scope: !3038, file: !166, line: 268, column: 9)
!3052 = !DILocation(line: 0, scope: !3051)
!3053 = !DILocation(line: 276, column: 1, scope: !3038)
!3054 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !166, file: !166, line: 278, type: !3055, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null, !2804, !494, !155, !155, !155, !155}
!3057 = !{!3058, !3059, !3060, !3061, !3062, !3063}
!3058 = !DILocalVariable(name: "u_port", arg: 1, scope: !3054, file: !166, line: 278, type: !2804)
!3059 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3054, file: !166, line: 278, type: !494)
!3060 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3054, file: !166, line: 278, type: !155)
!3061 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3054, file: !166, line: 278, type: !155)
!3062 = !DILocalVariable(name: "threshold", arg: 5, scope: !3054, file: !166, line: 278, type: !155)
!3063 = !DILocalVariable(name: "timeout", arg: 6, scope: !3054, file: !166, line: 278, type: !155)
!3064 = !DILocation(line: 0, scope: !3054)
!3065 = !DILocation(line: 280, column: 9, scope: !3054)
!3066 = !DILocation(line: 286, column: 5, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !166, line: 283, column: 38)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !166, line: 283, column: 16)
!3069 = distinct !DILexicalBlock(scope: !3054, file: !166, line: 280, column: 9)
!3070 = !DILocation(line: 0, scope: !3069)
!3071 = !DILocation(line: 288, column: 1, scope: !3054)
!3072 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !166, file: !166, line: 290, type: !3073, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !2804, !450}
!3075 = !{!3076, !3077}
!3076 = !DILocalVariable(name: "u_port", arg: 1, scope: !3072, file: !166, line: 290, type: !2804)
!3077 = !DILocalVariable(name: "func", arg: 2, scope: !3072, file: !166, line: 290, type: !450)
!3078 = !DILocation(line: 0, scope: !3072)
!3079 = !DILocation(line: 292, column: 9, scope: !3072)
!3080 = !DILocation(line: 296, column: 5, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !166, line: 294, column: 38)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !166, line: 294, column: 16)
!3083 = distinct !DILexicalBlock(scope: !3072, file: !166, line: 292, column: 9)
!3084 = !DILocation(line: 0, scope: !3083)
!3085 = !DILocation(line: 298, column: 1, scope: !3072)
!3086 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !166, file: !166, line: 300, type: !3073, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3087)
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "u_port", arg: 1, scope: !3086, file: !166, line: 300, type: !2804)
!3089 = !DILocalVariable(name: "func", arg: 2, scope: !3086, file: !166, line: 300, type: !450)
!3090 = !DILocation(line: 0, scope: !3086)
!3091 = !DILocation(line: 302, column: 9, scope: !3086)
!3092 = !DILocation(line: 306, column: 5, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !166, line: 304, column: 38)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !166, line: 304, column: 16)
!3095 = distinct !DILexicalBlock(scope: !3086, file: !166, line: 302, column: 9)
!3096 = !DILocation(line: 0, scope: !3095)
!3097 = !DILocation(line: 308, column: 1, scope: !3086)
!3098 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !166, file: !166, line: 310, type: !2858, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DILocalVariable(name: "u_port", arg: 1, scope: !3098, file: !166, line: 310, type: !2804)
!3101 = !DILocalVariable(name: "base", scope: !3098, file: !166, line: 312, type: !24)
!3102 = !DILocalVariable(name: "EFR", scope: !3098, file: !166, line: 313, type: !2874)
!3103 = !DILocalVariable(name: "LCR", scope: !3098, file: !166, line: 313, type: !2874)
!3104 = !DILocation(line: 0, scope: !3098)
!3105 = !DILocation(line: 312, column: 25, scope: !3098)
!3106 = !DILocation(line: 315, column: 11, scope: !3098)
!3107 = !DILocation(line: 317, column: 33, scope: !3098)
!3108 = !DILocation(line: 318, column: 11, scope: !3098)
!3109 = !DILocation(line: 320, column: 35, scope: !3098)
!3110 = !DILocation(line: 320, column: 33, scope: !3098)
!3111 = !DILocation(line: 322, column: 5, scope: !3098)
!3112 = !DILocation(line: 322, column: 39, scope: !3098)
!3113 = !DILocation(line: 324, column: 33, scope: !3098)
!3114 = !DILocation(line: 325, column: 5, scope: !3098)
!3115 = !DILocation(line: 325, column: 33, scope: !3098)
!3116 = !DILocation(line: 327, column: 35, scope: !3098)
!3117 = !DILocation(line: 327, column: 33, scope: !3098)
!3118 = !DILocation(line: 328, column: 1, scope: !3098)
!3119 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !166, file: !166, line: 330, type: !3120, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !2804, !327, !327, !327}
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128, !3129}
!3123 = !DILocalVariable(name: "u_port", arg: 1, scope: !3119, file: !166, line: 330, type: !2804)
!3124 = !DILocalVariable(name: "xon", arg: 2, scope: !3119, file: !166, line: 330, type: !327)
!3125 = !DILocalVariable(name: "xoff", arg: 3, scope: !3119, file: !166, line: 330, type: !327)
!3126 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3119, file: !166, line: 330, type: !327)
!3127 = !DILocalVariable(name: "base", scope: !3119, file: !166, line: 332, type: !24)
!3128 = !DILocalVariable(name: "EFR", scope: !3119, file: !166, line: 333, type: !2874)
!3129 = !DILocalVariable(name: "LCR", scope: !3119, file: !166, line: 333, type: !2874)
!3130 = !DILocation(line: 0, scope: !3119)
!3131 = !DILocation(line: 332, column: 25, scope: !3119)
!3132 = !DILocation(line: 335, column: 11, scope: !3119)
!3133 = !DILocation(line: 337, column: 33, scope: !3119)
!3134 = !DILocation(line: 338, column: 36, scope: !3119)
!3135 = !DILocation(line: 338, column: 5, scope: !3119)
!3136 = !DILocation(line: 338, column: 34, scope: !3119)
!3137 = !DILocation(line: 339, column: 5, scope: !3119)
!3138 = !DILocation(line: 339, column: 34, scope: !3119)
!3139 = !DILocation(line: 340, column: 37, scope: !3119)
!3140 = !DILocation(line: 340, column: 5, scope: !3119)
!3141 = !DILocation(line: 340, column: 35, scope: !3119)
!3142 = !DILocation(line: 341, column: 5, scope: !3119)
!3143 = !DILocation(line: 341, column: 35, scope: !3119)
!3144 = !DILocation(line: 343, column: 11, scope: !3119)
!3145 = !DILocation(line: 345, column: 35, scope: !3119)
!3146 = !DILocation(line: 345, column: 33, scope: !3119)
!3147 = !DILocation(line: 347, column: 35, scope: !3119)
!3148 = !DILocation(line: 347, column: 33, scope: !3119)
!3149 = !DILocation(line: 349, column: 43, scope: !3119)
!3150 = !DILocation(line: 349, column: 5, scope: !3119)
!3151 = !DILocation(line: 349, column: 41, scope: !3119)
!3152 = !DILocation(line: 350, column: 5, scope: !3119)
!3153 = !DILocation(line: 350, column: 39, scope: !3119)
!3154 = !DILocation(line: 351, column: 1, scope: !3119)
!3155 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !166, file: !166, line: 353, type: !2858, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "u_port", arg: 1, scope: !3155, file: !166, line: 353, type: !2804)
!3158 = !DILocalVariable(name: "base", scope: !3155, file: !166, line: 355, type: !24)
!3159 = !DILocalVariable(name: "LCR", scope: !3155, file: !166, line: 356, type: !2874)
!3160 = !DILocation(line: 0, scope: !3155)
!3161 = !DILocation(line: 355, column: 25, scope: !3155)
!3162 = !DILocation(line: 358, column: 11, scope: !3155)
!3163 = !DILocation(line: 360, column: 33, scope: !3155)
!3164 = !DILocation(line: 362, column: 5, scope: !3155)
!3165 = !DILocation(line: 362, column: 33, scope: !3155)
!3166 = !DILocation(line: 364, column: 33, scope: !3155)
!3167 = !DILocation(line: 366, column: 35, scope: !3155)
!3168 = !DILocation(line: 366, column: 33, scope: !3155)
!3169 = !DILocation(line: 367, column: 1, scope: !3155)
!3170 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !166, file: !166, line: 436, type: !2858, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3171)
!3171 = !{!3172, !3173}
!3172 = !DILocalVariable(name: "u_port", arg: 1, scope: !3170, file: !166, line: 436, type: !2804)
!3173 = !DILocalVariable(name: "base", scope: !3170, file: !166, line: 438, type: !24)
!3174 = !DILocation(line: 0, scope: !3170)
!3175 = !DILocation(line: 438, column: 25, scope: !3170)
!3176 = !DILocation(line: 440, column: 5, scope: !3170)
!3177 = !DILocation(line: 440, column: 33, scope: !3170)
!3178 = !DILocation(line: 441, column: 5, scope: !3170)
!3179 = !DILocation(line: 441, column: 33, scope: !3170)
!3180 = !DILocation(line: 442, column: 5, scope: !3170)
!3181 = !DILocation(line: 442, column: 34, scope: !3170)
!3182 = !DILocation(line: 443, column: 5, scope: !3170)
!3183 = !DILocation(line: 443, column: 35, scope: !3170)
!3184 = !DILocation(line: 445, column: 33, scope: !3170)
!3185 = !DILocation(line: 446, column: 5, scope: !3170)
!3186 = !DILocation(line: 446, column: 33, scope: !3170)
!3187 = !DILocation(line: 447, column: 5, scope: !3170)
!3188 = !DILocation(line: 447, column: 33, scope: !3170)
!3189 = !DILocation(line: 449, column: 33, scope: !3170)
!3190 = !DILocation(line: 450, column: 33, scope: !3170)
!3191 = !DILocation(line: 451, column: 33, scope: !3170)
!3192 = !DILocation(line: 453, column: 33, scope: !3170)
!3193 = !DILocation(line: 454, column: 33, scope: !3170)
!3194 = !DILocation(line: 455, column: 33, scope: !3170)
!3195 = !DILocation(line: 457, column: 33, scope: !3170)
!3196 = !DILocation(line: 458, column: 5, scope: !3170)
!3197 = !DILocation(line: 458, column: 33, scope: !3170)
!3198 = !DILocation(line: 459, column: 5, scope: !3170)
!3199 = !DILocation(line: 459, column: 39, scope: !3170)
!3200 = !DILocation(line: 460, column: 5, scope: !3170)
!3201 = !DILocation(line: 460, column: 40, scope: !3170)
!3202 = !DILocation(line: 461, column: 5, scope: !3170)
!3203 = !DILocation(line: 461, column: 42, scope: !3170)
!3204 = !DILocation(line: 462, column: 5, scope: !3170)
!3205 = !DILocation(line: 462, column: 42, scope: !3170)
!3206 = !DILocation(line: 463, column: 5, scope: !3170)
!3207 = !DILocation(line: 463, column: 35, scope: !3170)
!3208 = !DILocation(line: 464, column: 5, scope: !3170)
!3209 = !DILocation(line: 464, column: 41, scope: !3170)
!3210 = !DILocation(line: 465, column: 5, scope: !3170)
!3211 = !DILocation(line: 465, column: 39, scope: !3170)
!3212 = !DILocation(line: 466, column: 5, scope: !3170)
!3213 = !DILocation(line: 466, column: 38, scope: !3170)
!3214 = !DILocation(line: 467, column: 5, scope: !3170)
!3215 = !DILocation(line: 467, column: 42, scope: !3170)
!3216 = !DILocation(line: 468, column: 5, scope: !3170)
!3217 = !DILocation(line: 468, column: 45, scope: !3170)
!3218 = !DILocation(line: 469, column: 5, scope: !3170)
!3219 = !DILocation(line: 469, column: 39, scope: !3170)
!3220 = !DILocation(line: 470, column: 5, scope: !3170)
!3221 = !DILocation(line: 470, column: 39, scope: !3170)
!3222 = !DILocation(line: 471, column: 5, scope: !3170)
!3223 = !DILocation(line: 471, column: 42, scope: !3170)
!3224 = !DILocation(line: 472, column: 1, scope: !3170)
!3225 = distinct !DISubprogram(name: "uart_query_empty", scope: !166, file: !166, line: 474, type: !2858, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !3226)
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "u_port", arg: 1, scope: !3225, file: !166, line: 474, type: !2804)
!3228 = !DILocalVariable(name: "base", scope: !3225, file: !166, line: 476, type: !24)
!3229 = !DILocation(line: 0, scope: !3225)
!3230 = !DILocation(line: 476, column: 25, scope: !3225)
!3231 = !DILocation(line: 478, column: 5, scope: !3225)
!3232 = !DILocation(line: 478, column: 14, scope: !3225)
!3233 = !DILocation(line: 478, column: 42, scope: !3225)
!3234 = !DILocation(line: 478, column: 12, scope: !3225)
!3235 = distinct !{!3235, !3231, !3236}
!3236 = !DILocation(line: 478, column: 50, scope: !3225)
!3237 = !DILocation(line: 479, column: 1, scope: !3225)
!3238 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !958, file: !958, line: 64, type: !3239, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !602, !7, !602, null}
!3241 = !{!3242, !3243, !3244, !3245, !3254}
!3242 = !DILocalVariable(name: "func", arg: 1, scope: !3238, file: !958, line: 64, type: !602)
!3243 = !DILocalVariable(name: "line", arg: 2, scope: !3238, file: !958, line: 64, type: !7)
!3244 = !DILocalVariable(name: "message", arg: 3, scope: !3238, file: !958, line: 64, type: !602)
!3245 = !DILocalVariable(name: "ap", scope: !3238, file: !958, line: 66, type: !3246)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3247, line: 46, baseType: !3248)
!3247 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3249, line: 32, baseType: !3250)
!3249 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !958, baseType: !3251)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3252)
!3252 = !{!3253}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3251, file: !958, line: 66, baseType: !37, size: 32)
!3254 = !DILocalVariable(name: "mask", scope: !3238, file: !958, line: 68, type: !155)
!3255 = !DILocation(line: 0, scope: !3238)
!3256 = !DILocation(line: 66, column: 5, scope: !3238)
!3257 = !DILocation(line: 66, column: 13, scope: !3238)
!3258 = !DILocation(line: 68, column: 5, scope: !3238)
!3259 = !DILocation(line: 69, column: 5, scope: !3238)
!3260 = !DILocation(line: 71, column: 5, scope: !3238)
!3261 = !DILocation(line: 72, column: 5, scope: !3238)
!3262 = !DILocation(line: 73, column: 5, scope: !3238)
!3263 = !DILocation(line: 75, column: 37, scope: !3238)
!3264 = !DILocation(line: 75, column: 5, scope: !3238)
!3265 = !DILocation(line: 77, column: 1, scope: !3238)
!3266 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !958, file: !958, line: 78, type: !3239, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272}
!3268 = !DILocalVariable(name: "func", arg: 1, scope: !3266, file: !958, line: 78, type: !602)
!3269 = !DILocalVariable(name: "line", arg: 2, scope: !3266, file: !958, line: 78, type: !7)
!3270 = !DILocalVariable(name: "message", arg: 3, scope: !3266, file: !958, line: 78, type: !602)
!3271 = !DILocalVariable(name: "ap", scope: !3266, file: !958, line: 80, type: !3246)
!3272 = !DILocalVariable(name: "mask", scope: !3266, file: !958, line: 82, type: !155)
!3273 = !DILocation(line: 0, scope: !3266)
!3274 = !DILocation(line: 80, column: 5, scope: !3266)
!3275 = !DILocation(line: 80, column: 13, scope: !3266)
!3276 = !DILocation(line: 82, column: 5, scope: !3266)
!3277 = !DILocation(line: 83, column: 5, scope: !3266)
!3278 = !DILocation(line: 85, column: 5, scope: !3266)
!3279 = !DILocation(line: 86, column: 5, scope: !3266)
!3280 = !DILocation(line: 87, column: 5, scope: !3266)
!3281 = !DILocation(line: 89, column: 37, scope: !3266)
!3282 = !DILocation(line: 89, column: 5, scope: !3266)
!3283 = !DILocation(line: 91, column: 1, scope: !3266)
!3284 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !958, file: !958, line: 92, type: !3239, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290}
!3286 = !DILocalVariable(name: "func", arg: 1, scope: !3284, file: !958, line: 92, type: !602)
!3287 = !DILocalVariable(name: "line", arg: 2, scope: !3284, file: !958, line: 92, type: !7)
!3288 = !DILocalVariable(name: "message", arg: 3, scope: !3284, file: !958, line: 92, type: !602)
!3289 = !DILocalVariable(name: "ap", scope: !3284, file: !958, line: 94, type: !3246)
!3290 = !DILocalVariable(name: "mask", scope: !3284, file: !958, line: 96, type: !155)
!3291 = !DILocation(line: 0, scope: !3284)
!3292 = !DILocation(line: 94, column: 5, scope: !3284)
!3293 = !DILocation(line: 94, column: 13, scope: !3284)
!3294 = !DILocation(line: 96, column: 5, scope: !3284)
!3295 = !DILocation(line: 97, column: 5, scope: !3284)
!3296 = !DILocation(line: 99, column: 5, scope: !3284)
!3297 = !DILocation(line: 100, column: 5, scope: !3284)
!3298 = !DILocation(line: 101, column: 5, scope: !3284)
!3299 = !DILocation(line: 103, column: 37, scope: !3284)
!3300 = !DILocation(line: 103, column: 5, scope: !3284)
!3301 = !DILocation(line: 105, column: 1, scope: !3284)
!3302 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !958, file: !958, line: 106, type: !3239, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3303)
!3303 = !{!3304, !3305, !3306, !3307, !3308}
!3304 = !DILocalVariable(name: "func", arg: 1, scope: !3302, file: !958, line: 106, type: !602)
!3305 = !DILocalVariable(name: "line", arg: 2, scope: !3302, file: !958, line: 106, type: !7)
!3306 = !DILocalVariable(name: "message", arg: 3, scope: !3302, file: !958, line: 106, type: !602)
!3307 = !DILocalVariable(name: "ap", scope: !3302, file: !958, line: 108, type: !3246)
!3308 = !DILocalVariable(name: "mask", scope: !3302, file: !958, line: 110, type: !155)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 108, column: 5, scope: !3302)
!3311 = !DILocation(line: 108, column: 13, scope: !3302)
!3312 = !DILocation(line: 110, column: 5, scope: !3302)
!3313 = !DILocation(line: 111, column: 5, scope: !3302)
!3314 = !DILocation(line: 113, column: 5, scope: !3302)
!3315 = !DILocation(line: 114, column: 5, scope: !3302)
!3316 = !DILocation(line: 115, column: 5, scope: !3302)
!3317 = !DILocation(line: 117, column: 37, scope: !3302)
!3318 = !DILocation(line: 117, column: 5, scope: !3302)
!3319 = !DILocation(line: 119, column: 1, scope: !3302)
!3320 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !958, file: !958, line: 121, type: !3321, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3325)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !602, !7, !602, !3323, !7, null}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3325 = !{!3326, !3327, !3328, !3329, !3330}
!3326 = !DILocalVariable(name: "func", arg: 1, scope: !3320, file: !958, line: 121, type: !602)
!3327 = !DILocalVariable(name: "line", arg: 2, scope: !3320, file: !958, line: 121, type: !7)
!3328 = !DILocalVariable(name: "message", arg: 3, scope: !3320, file: !958, line: 121, type: !602)
!3329 = !DILocalVariable(name: "data", arg: 4, scope: !3320, file: !958, line: 121, type: !3323)
!3330 = !DILocalVariable(name: "length", arg: 5, scope: !3320, file: !958, line: 121, type: !7)
!3331 = !DILocation(line: 0, scope: !3320)
!3332 = !DILocation(line: 123, column: 1, scope: !3320)
!3333 = distinct !DISubprogram(name: "hal_cache_init", scope: !202, file: !202, line: 53, type: !3334, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3337)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !205, line: 172, baseType: !204)
!3337 = !{!3338, !3340}
!3338 = !DILocalVariable(name: "region", scope: !3333, file: !202, line: 55, type: !3339)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !205, line: 204, baseType: !215)
!3340 = !DILocalVariable(name: "irq_flag", scope: !3333, file: !202, line: 56, type: !155)
!3341 = !DILocation(line: 59, column: 16, scope: !3333)
!3342 = !DILocation(line: 0, scope: !3333)
!3343 = !DILocation(line: 62, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3333, file: !202, line: 62, column: 9)
!3345 = !{i8 0, i8 2}
!3346 = !DILocation(line: 62, column: 9, scope: !3333)
!3347 = !DILocation(line: 64, column: 9, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !202, line: 62, column: 39)
!3349 = !DILocation(line: 66, column: 9, scope: !3348)
!3350 = !DILocation(line: 69, column: 24, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !202, line: 67, column: 12)
!3352 = !DILocation(line: 72, column: 9, scope: !3351)
!3353 = !DILocation(line: 77, column: 5, scope: !3333)
!3354 = !DILocation(line: 80, column: 22, scope: !3333)
!3355 = !DILocation(line: 81, column: 28, scope: !3333)
!3356 = !DILocation(line: 84, column: 19, scope: !3333)
!3357 = !DILocation(line: 85, column: 23, scope: !3333)
!3358 = !DILocation(line: 88, column: 5, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3333, file: !202, line: 88, column: 5)
!3360 = !DILocation(line: 90, column: 9, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !202, line: 88, column: 81)
!3362 = distinct !DILexicalBlock(scope: !3359, file: !202, line: 88, column: 5)
!3363 = !DILocation(line: 90, column: 38, scope: !3361)
!3364 = !DILocation(line: 91, column: 9, scope: !3361)
!3365 = !DILocation(line: 91, column: 42, scope: !3361)
!3366 = !DILocation(line: 94, column: 45, scope: !3361)
!3367 = !DILocation(line: 94, column: 47, scope: !3361)
!3368 = !DILocation(line: 95, column: 49, scope: !3361)
!3369 = !DILocation(line: 95, column: 51, scope: !3361)
!3370 = !DILocation(line: 88, column: 77, scope: !3362)
!3371 = !DILocation(line: 88, column: 46, scope: !3362)
!3372 = distinct !{!3372, !3358, !3373}
!3373 = !DILocation(line: 96, column: 5, scope: !3359)
!3374 = !DILocation(line: 99, column: 1, scope: !3333)
!3375 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !202, file: !202, line: 327, type: !3334, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3376)
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "irq_flag", scope: !3375, file: !202, line: 329, type: !155)
!3378 = !DILocation(line: 332, column: 16, scope: !3375)
!3379 = !DILocation(line: 0, scope: !3375)
!3380 = !DILocation(line: 335, column: 21, scope: !3375)
!3381 = !DILocation(line: 336, column: 21, scope: !3375)
!3382 = !DILocation(line: 339, column: 21, scope: !3375)
!3383 = !DILocation(line: 340, column: 21, scope: !3375)
!3384 = !DILocation(line: 434, column: 3, scope: !3385, inlinedAt: !3387)
!3385 = distinct !DISubprogram(name: "__ISB", scope: !3386, file: !3386, line: 432, type: !452, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1689)
!3386 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/irrx_receive_pwd_data/GCC")
!3387 = distinct !DILocation(line: 343, column: 5, scope: !3375)
!3388 = !{i64 296584}
!3389 = !DILocation(line: 346, column: 5, scope: !3375)
!3390 = !DILocation(line: 348, column: 5, scope: !3375)
!3391 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !202, file: !202, line: 101, type: !3334, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3392)
!3392 = !{!3393}
!3393 = !DILocalVariable(name: "region", scope: !3391, file: !202, line: 103, type: !3339)
!3394 = !DILocation(line: 107, column: 5, scope: !3391)
!3395 = !DILocation(line: 110, column: 22, scope: !3391)
!3396 = !DILocation(line: 111, column: 28, scope: !3391)
!3397 = !DILocation(line: 114, column: 19, scope: !3391)
!3398 = !DILocation(line: 115, column: 23, scope: !3391)
!3399 = !DILocation(line: 0, scope: !3391)
!3400 = !DILocation(line: 118, column: 5, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3391, file: !202, line: 118, column: 5)
!3402 = !DILocation(line: 120, column: 9, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !202, line: 118, column: 81)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !202, line: 118, column: 5)
!3405 = !DILocation(line: 120, column: 38, scope: !3403)
!3406 = !DILocation(line: 121, column: 9, scope: !3403)
!3407 = !DILocation(line: 121, column: 42, scope: !3403)
!3408 = !DILocation(line: 124, column: 45, scope: !3403)
!3409 = !DILocation(line: 124, column: 47, scope: !3403)
!3410 = !DILocation(line: 125, column: 49, scope: !3403)
!3411 = !DILocation(line: 125, column: 51, scope: !3403)
!3412 = !DILocation(line: 118, column: 77, scope: !3404)
!3413 = !DILocation(line: 118, column: 46, scope: !3404)
!3414 = distinct !{!3414, !3400, !3415}
!3415 = !DILocation(line: 126, column: 5, scope: !3401)
!3416 = !DILocation(line: 129, column: 20, scope: !3391)
!3417 = !DILocation(line: 131, column: 5, scope: !3391)
!3418 = distinct !DISubprogram(name: "hal_cache_enable", scope: !202, file: !202, line: 134, type: !3334, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1689)
!3419 = !DILocation(line: 137, column: 45, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3418, file: !202, line: 137, column: 9)
!3421 = !DILocation(line: 137, column: 28, scope: !3420)
!3422 = !DILocation(line: 137, column: 9, scope: !3418)
!3423 = !DILocation(line: 142, column: 22, scope: !3418)
!3424 = !DILocation(line: 145, column: 28, scope: !3418)
!3425 = !DILocation(line: 145, column: 19, scope: !3418)
!3426 = !DILocation(line: 147, column: 5, scope: !3418)
!3427 = !DILocation(line: 0, scope: !3418)
!3428 = !DILocation(line: 148, column: 1, scope: !3418)
!3429 = distinct !DISubprogram(name: "hal_cache_disable", scope: !202, file: !202, line: 150, type: !3334, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3430)
!3430 = !{!3431}
!3431 = !DILocalVariable(name: "irq_flag", scope: !3429, file: !202, line: 152, type: !155)
!3432 = !DILocation(line: 155, column: 16, scope: !3429)
!3433 = !DILocation(line: 0, scope: !3429)
!3434 = !DILocation(line: 158, column: 16, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3429, file: !202, line: 158, column: 9)
!3436 = !DILocation(line: 158, column: 26, scope: !3435)
!3437 = !DILocation(line: 158, column: 9, scope: !3429)
!3438 = !DILocation(line: 160, column: 9, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !202, line: 158, column: 49)
!3440 = !DILocation(line: 161, column: 5, scope: !3439)
!3441 = !DILocation(line: 164, column: 22, scope: !3429)
!3442 = !DILocation(line: 167, column: 28, scope: !3429)
!3443 = !DILocation(line: 167, column: 19, scope: !3429)
!3444 = !DILocation(line: 170, column: 5, scope: !3429)
!3445 = !DILocation(line: 172, column: 5, scope: !3429)
!3446 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !202, file: !202, line: 175, type: !3447, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3449)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!3336, !3339}
!3449 = !{!3450}
!3450 = !DILocalVariable(name: "region", arg: 1, scope: !3446, file: !202, line: 175, type: !3339)
!3451 = !DILocation(line: 0, scope: !3446)
!3452 = !DILocation(line: 178, column: 16, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !202, line: 178, column: 9)
!3454 = !DILocation(line: 178, column: 9, scope: !3446)
!3455 = !DILocation(line: 183, column: 9, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3446, file: !202, line: 183, column: 9)
!3457 = !DILocation(line: 183, column: 38, scope: !3456)
!3458 = !DILocation(line: 183, column: 9, scope: !3446)
!3459 = !DILocation(line: 184, column: 38, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3456, file: !202, line: 183, column: 62)
!3461 = !DILocation(line: 184, column: 32, scope: !3460)
!3462 = !DILocation(line: 190, column: 32, scope: !3446)
!3463 = !DILocation(line: 190, column: 23, scope: !3446)
!3464 = !DILocation(line: 192, column: 5, scope: !3446)
!3465 = !DILocation(line: 193, column: 1, scope: !3446)
!3466 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !202, file: !202, line: 195, type: !3447, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3467)
!3467 = !{!3468}
!3468 = !DILocalVariable(name: "region", arg: 1, scope: !3466, file: !202, line: 195, type: !3339)
!3469 = !DILocation(line: 0, scope: !3466)
!3470 = !DILocation(line: 198, column: 16, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3466, file: !202, line: 198, column: 9)
!3472 = !DILocation(line: 198, column: 9, scope: !3466)
!3473 = !DILocation(line: 203, column: 35, scope: !3466)
!3474 = !DILocation(line: 203, column: 31, scope: !3466)
!3475 = !DILocation(line: 203, column: 28, scope: !3466)
!3476 = !DILocation(line: 206, column: 32, scope: !3466)
!3477 = !DILocation(line: 206, column: 23, scope: !3466)
!3478 = !DILocation(line: 209, column: 41, scope: !3466)
!3479 = !DILocation(line: 209, column: 43, scope: !3466)
!3480 = !DILocation(line: 210, column: 45, scope: !3466)
!3481 = !DILocation(line: 210, column: 47, scope: !3466)
!3482 = !DILocation(line: 212, column: 5, scope: !3466)
!3483 = !DILocation(line: 213, column: 1, scope: !3466)
!3484 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !202, file: !202, line: 215, type: !3485, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3488)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!3336, !3487}
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !205, line: 182, baseType: !234)
!3488 = !{!3489}
!3489 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3484, file: !202, line: 215, type: !3487)
!3490 = !DILocation(line: 0, scope: !3484)
!3491 = !DILocation(line: 218, column: 20, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3484, file: !202, line: 218, column: 9)
!3493 = !DILocation(line: 218, column: 9, scope: !3484)
!3494 = !DILocation(line: 223, column: 22, scope: !3484)
!3495 = !DILocation(line: 224, column: 37, scope: !3484)
!3496 = !DILocation(line: 224, column: 22, scope: !3484)
!3497 = !DILocation(line: 227, column: 20, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3484, file: !202, line: 227, column: 9)
!3499 = !DILocation(line: 227, column: 9, scope: !3484)
!3500 = !DILocation(line: 228, column: 26, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3498, file: !202, line: 227, column: 43)
!3502 = !DILocation(line: 229, column: 5, scope: !3501)
!3503 = !DILocation(line: 232, column: 28, scope: !3484)
!3504 = !DILocation(line: 232, column: 19, scope: !3484)
!3505 = !DILocation(line: 234, column: 5, scope: !3484)
!3506 = !DILocation(line: 235, column: 1, scope: !3484)
!3507 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !202, file: !202, line: 237, type: !3508, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3517)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!3336, !3339, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !205, line: 222, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 219, size: 64, elements: !3514)
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3513, file: !205, line: 220, baseType: !155, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3513, file: !205, line: 221, baseType: !155, size: 32, offset: 32)
!3517 = !{!3518, !3519}
!3518 = !DILocalVariable(name: "region", arg: 1, scope: !3507, file: !202, line: 237, type: !3339)
!3519 = !DILocalVariable(name: "region_config", arg: 2, scope: !3507, file: !202, line: 237, type: !3510)
!3520 = !DILocation(line: 0, scope: !3507)
!3521 = !DILocation(line: 240, column: 16, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3507, file: !202, line: 240, column: 9)
!3523 = !DILocation(line: 240, column: 9, scope: !3507)
!3524 = !DILocation(line: 245, column: 23, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3507, file: !202, line: 245, column: 9)
!3526 = !DILocation(line: 245, column: 9, scope: !3507)
!3527 = !DILocation(line: 250, column: 24, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3507, file: !202, line: 250, column: 9)
!3529 = !DILocation(line: 250, column: 45, scope: !3528)
!3530 = !DILocation(line: 250, column: 9, scope: !3507)
!3531 = !DILocation(line: 251, column: 9, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !202, line: 250, column: 81)
!3533 = !DILocation(line: 256, column: 24, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3507, file: !202, line: 256, column: 9)
!3535 = !DILocation(line: 256, column: 42, scope: !3534)
!3536 = !DILocation(line: 256, column: 9, scope: !3507)
!3537 = !DILocation(line: 257, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !202, line: 256, column: 78)
!3539 = !DILocation(line: 262, column: 5, scope: !3507)
!3540 = !DILocation(line: 262, column: 34, scope: !3507)
!3541 = !DILocation(line: 263, column: 55, scope: !3507)
!3542 = !DILocation(line: 263, column: 93, scope: !3507)
!3543 = !DILocation(line: 263, column: 76, scope: !3507)
!3544 = !DILocation(line: 263, column: 5, scope: !3507)
!3545 = !DILocation(line: 263, column: 38, scope: !3507)
!3546 = !DILocation(line: 266, column: 34, scope: !3507)
!3547 = !DILocation(line: 269, column: 45, scope: !3507)
!3548 = !DILocation(line: 269, column: 41, scope: !3507)
!3549 = !DILocation(line: 269, column: 43, scope: !3507)
!3550 = !DILocation(line: 270, column: 49, scope: !3507)
!3551 = !DILocation(line: 270, column: 45, scope: !3507)
!3552 = !DILocation(line: 270, column: 47, scope: !3507)
!3553 = !DILocation(line: 272, column: 5, scope: !3507)
!3554 = !DILocation(line: 273, column: 1, scope: !3507)
!3555 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !202, file: !202, line: 275, type: !3556, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3558)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!3336, !155}
!3558 = !{!3559, !3560}
!3559 = !DILocalVariable(name: "address", arg: 1, scope: !3555, file: !202, line: 275, type: !155)
!3560 = !DILocalVariable(name: "irq_flag", scope: !3555, file: !202, line: 277, type: !155)
!3561 = !DILocation(line: 0, scope: !3555)
!3562 = !DILocation(line: 280, column: 17, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3555, file: !202, line: 280, column: 9)
!3564 = !DILocation(line: 280, column: 9, scope: !3555)
!3565 = !DILocation(line: 284, column: 16, scope: !3555)
!3566 = !DILocation(line: 287, column: 32, scope: !3555)
!3567 = !DILocation(line: 287, column: 21, scope: !3555)
!3568 = !DILocation(line: 288, column: 21, scope: !3555)
!3569 = !DILocation(line: 434, column: 3, scope: !3385, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 291, column: 5, scope: !3555)
!3571 = !DILocation(line: 294, column: 5, scope: !3555)
!3572 = !DILocation(line: 296, column: 5, scope: !3555)
!3573 = !DILocation(line: 297, column: 1, scope: !3555)
!3574 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !202, file: !202, line: 299, type: !3575, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!3336, !155, !155}
!3577 = !{!3578, !3579, !3580, !3581}
!3578 = !DILocalVariable(name: "address", arg: 1, scope: !3574, file: !202, line: 299, type: !155)
!3579 = !DILocalVariable(name: "length", arg: 2, scope: !3574, file: !202, line: 299, type: !155)
!3580 = !DILocalVariable(name: "irq_flag", scope: !3574, file: !202, line: 301, type: !155)
!3581 = !DILocalVariable(name: "end_address", scope: !3574, file: !202, line: 302, type: !155)
!3582 = !DILocation(line: 0, scope: !3574)
!3583 = !DILocation(line: 302, column: 36, scope: !3574)
!3584 = !DILocation(line: 305, column: 47, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3574, file: !202, line: 305, column: 9)
!3586 = !DILocation(line: 310, column: 16, scope: !3574)
!3587 = !DILocation(line: 313, column: 20, scope: !3574)
!3588 = !DILocation(line: 313, column: 5, scope: !3574)
!3589 = !DILocation(line: 314, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3574, file: !202, line: 313, column: 35)
!3591 = !DILocation(line: 315, column: 17, scope: !3590)
!3592 = distinct !{!3592, !3588, !3593}
!3593 = !DILocation(line: 316, column: 5, scope: !3574)
!3594 = !DILocation(line: 434, column: 3, scope: !3385, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 319, column: 5, scope: !3574)
!3596 = !DILocation(line: 322, column: 5, scope: !3574)
!3597 = !DILocation(line: 324, column: 5, scope: !3574)
!3598 = !DILocation(line: 325, column: 1, scope: !3574)
!3599 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !202, file: !202, line: 351, type: !3556, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3600)
!3600 = !{!3601, !3602}
!3601 = !DILocalVariable(name: "address", arg: 1, scope: !3599, file: !202, line: 351, type: !155)
!3602 = !DILocalVariable(name: "irq_flag", scope: !3599, file: !202, line: 353, type: !155)
!3603 = !DILocation(line: 0, scope: !3599)
!3604 = !DILocation(line: 356, column: 17, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3599, file: !202, line: 356, column: 9)
!3606 = !DILocation(line: 356, column: 9, scope: !3599)
!3607 = !DILocation(line: 361, column: 16, scope: !3599)
!3608 = !DILocation(line: 364, column: 32, scope: !3599)
!3609 = !DILocation(line: 364, column: 21, scope: !3599)
!3610 = !DILocation(line: 365, column: 21, scope: !3599)
!3611 = !DILocation(line: 434, column: 3, scope: !3385, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 368, column: 5, scope: !3599)
!3613 = !DILocation(line: 371, column: 5, scope: !3599)
!3614 = !DILocation(line: 373, column: 5, scope: !3599)
!3615 = !DILocation(line: 374, column: 1, scope: !3599)
!3616 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !202, file: !202, line: 376, type: !3575, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3617)
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DILocalVariable(name: "address", arg: 1, scope: !3616, file: !202, line: 376, type: !155)
!3619 = !DILocalVariable(name: "length", arg: 2, scope: !3616, file: !202, line: 376, type: !155)
!3620 = !DILocalVariable(name: "irq_flag", scope: !3616, file: !202, line: 378, type: !155)
!3621 = !DILocalVariable(name: "end_address", scope: !3616, file: !202, line: 379, type: !155)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 379, column: 36, scope: !3616)
!3624 = !DILocation(line: 382, column: 47, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !202, line: 382, column: 9)
!3626 = !DILocation(line: 387, column: 16, scope: !3616)
!3627 = !DILocation(line: 390, column: 20, scope: !3616)
!3628 = !DILocation(line: 390, column: 5, scope: !3616)
!3629 = !DILocation(line: 391, column: 9, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3616, file: !202, line: 390, column: 35)
!3631 = !DILocation(line: 392, column: 17, scope: !3630)
!3632 = distinct !{!3632, !3628, !3633}
!3633 = !DILocation(line: 393, column: 5, scope: !3616)
!3634 = !DILocation(line: 434, column: 3, scope: !3385, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 396, column: 5, scope: !3616)
!3636 = !DILocation(line: 399, column: 5, scope: !3616)
!3637 = !DILocation(line: 401, column: 5, scope: !3616)
!3638 = !DILocation(line: 402, column: 1, scope: !3616)
!3639 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !202, file: !202, line: 404, type: !3334, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3640)
!3640 = !{!3641}
!3641 = !DILocalVariable(name: "irq_flag", scope: !3639, file: !202, line: 406, type: !155)
!3642 = !DILocation(line: 409, column: 16, scope: !3639)
!3643 = !DILocation(line: 0, scope: !3639)
!3644 = !DILocation(line: 412, column: 21, scope: !3639)
!3645 = !DILocation(line: 413, column: 21, scope: !3639)
!3646 = !DILocation(line: 434, column: 3, scope: !3385, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 416, column: 5, scope: !3639)
!3648 = !DILocation(line: 419, column: 5, scope: !3639)
!3649 = !DILocation(line: 421, column: 5, scope: !3639)
!3650 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !202, file: !202, line: 424, type: !3651, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!282, !155}
!3653 = !{!3654, !3655}
!3654 = !DILocalVariable(name: "address", arg: 1, scope: !3650, file: !202, line: 424, type: !155)
!3655 = !DILocalVariable(name: "region", scope: !3650, file: !202, line: 426, type: !3339)
!3656 = !DILocation(line: 0, scope: !3650)
!3657 = !DILocation(line: 429, column: 18, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3650, file: !202, line: 429, column: 9)
!3659 = !DILocation(line: 429, column: 28, scope: !3658)
!3660 = !DILocation(line: 429, column: 9, scope: !3650)
!3661 = !DILocation(line: 435, column: 20, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !202, line: 435, column: 13)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !202, line: 433, column: 81)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !202, line: 433, column: 5)
!3665 = distinct !DILexicalBlock(scope: !3650, file: !202, line: 433, column: 5)
!3666 = !DILocation(line: 435, column: 41, scope: !3662)
!3667 = !DILocation(line: 435, column: 36, scope: !3662)
!3668 = !DILocation(line: 435, column: 13, scope: !3663)
!3669 = !DILocation(line: 436, column: 30, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !202, line: 436, column: 17)
!3671 = distinct !DILexicalBlock(scope: !3662, file: !202, line: 435, column: 53)
!3672 = !DILocation(line: 436, column: 59, scope: !3670)
!3673 = !DILocation(line: 436, column: 26, scope: !3670)
!3674 = !DILocation(line: 436, column: 85, scope: !3670)
!3675 = !DILocation(line: 436, column: 99, scope: !3670)
!3676 = !DILocation(line: 436, column: 97, scope: !3670)
!3677 = !DILocation(line: 436, column: 17, scope: !3671)
!3678 = !DILocation(line: 433, column: 77, scope: !3664)
!3679 = !DILocation(line: 433, column: 46, scope: !3664)
!3680 = !DILocation(line: 433, column: 5, scope: !3665)
!3681 = distinct !{!3681, !3680, !3682}
!3682 = !DILocation(line: 440, column: 5, scope: !3665)
!3683 = !DILocation(line: 442, column: 1, scope: !3650)
!3684 = distinct !DISubprogram(name: "hal_nvic_init", scope: !286, file: !286, line: 60, type: !3685, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1689)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!3687}
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !289, line: 158, baseType: !288)
!3688 = !DILocation(line: 62, column: 5, scope: !3684)
!3689 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !286, file: !286, line: 65, type: !3690, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3692)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3687, !297}
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3689, file: !286, line: 65, type: !297)
!3694 = !DILocalVariable(name: "status", scope: !3689, file: !286, line: 67, type: !3687)
!3695 = !DILocation(line: 0, scope: !3689)
!3696 = !DILocation(line: 69, column: 40, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3689, file: !286, line: 69, column: 9)
!3698 = !DILocation(line: 73, column: 9, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3697, file: !286, line: 72, column: 12)
!3700 = !DILocation(line: 77, column: 5, scope: !3689)
!3701 = !DILocation(line: 78, column: 1, scope: !3689)
!3702 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !302, file: !302, line: 1494, type: !3703, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !133}
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3702, file: !302, line: 1494, type: !133)
!3707 = !DILocation(line: 0, scope: !3702)
!3708 = !DILocation(line: 1497, column: 91, scope: !3702)
!3709 = !DILocation(line: 1497, column: 61, scope: !3702)
!3710 = !DILocation(line: 1497, column: 40, scope: !3702)
!3711 = !DILocation(line: 1497, column: 3, scope: !3702)
!3712 = !DILocation(line: 1497, column: 46, scope: !3702)
!3713 = !DILocation(line: 1498, column: 1, scope: !3702)
!3714 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !286, file: !286, line: 80, type: !3690, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3715)
!3715 = !{!3716, !3717}
!3716 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3714, file: !286, line: 80, type: !297)
!3717 = !DILocalVariable(name: "status", scope: !3714, file: !286, line: 82, type: !3687)
!3718 = !DILocation(line: 0, scope: !3714)
!3719 = !DILocation(line: 84, column: 40, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3714, file: !286, line: 84, column: 9)
!3721 = !DILocation(line: 88, column: 9, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3720, file: !286, line: 87, column: 12)
!3723 = !DILocation(line: 92, column: 5, scope: !3714)
!3724 = !DILocation(line: 93, column: 1, scope: !3714)
!3725 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !302, file: !302, line: 1507, type: !3703, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3726)
!3726 = !{!3727}
!3727 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3725, file: !302, line: 1507, type: !133)
!3728 = !DILocation(line: 0, scope: !3725)
!3729 = !DILocation(line: 1509, column: 65, scope: !3725)
!3730 = !DILocation(line: 1509, column: 44, scope: !3725)
!3731 = !DILocation(line: 1509, column: 32, scope: !3725)
!3732 = !DILocation(line: 1509, column: 3, scope: !3725)
!3733 = !DILocation(line: 1509, column: 39, scope: !3725)
!3734 = !DILocation(line: 1510, column: 1, scope: !3725)
!3735 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !286, file: !286, line: 95, type: !3736, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!155, !297}
!3738 = !{!3739, !3740}
!3739 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3735, file: !286, line: 95, type: !297)
!3740 = !DILocalVariable(name: "ret", scope: !3735, file: !286, line: 97, type: !155)
!3741 = !DILocation(line: 0, scope: !3735)
!3742 = !DILocation(line: 99, column: 40, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3735, file: !286, line: 99, column: 9)
!3744 = !DILocation(line: 102, column: 15, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3743, file: !286, line: 101, column: 12)
!3746 = !DILocation(line: 105, column: 5, scope: !3735)
!3747 = !DILocation(line: 106, column: 1, scope: !3735)
!3748 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !302, file: !302, line: 1523, type: !3749, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!155, !133}
!3751 = !{!3752}
!3752 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3748, file: !302, line: 1523, type: !133)
!3753 = !DILocation(line: 0, scope: !3748)
!3754 = !DILocation(line: 1525, column: 51, scope: !3748)
!3755 = !DILocation(line: 1525, column: 23, scope: !3748)
!3756 = !DILocation(line: 1525, column: 83, scope: !3748)
!3757 = !DILocation(line: 1525, column: 22, scope: !3748)
!3758 = !DILocation(line: 1525, column: 3, scope: !3748)
!3759 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !286, file: !286, line: 108, type: !3690, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3760)
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3759, file: !286, line: 108, type: !297)
!3762 = !DILocalVariable(name: "status", scope: !3759, file: !286, line: 110, type: !3687)
!3763 = !DILocation(line: 0, scope: !3759)
!3764 = !DILocation(line: 112, column: 40, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3759, file: !286, line: 112, column: 9)
!3766 = !DILocation(line: 116, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3765, file: !286, line: 115, column: 12)
!3768 = !DILocation(line: 120, column: 5, scope: !3759)
!3769 = !DILocation(line: 121, column: 1, scope: !3759)
!3770 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !302, file: !302, line: 1535, type: !3703, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3771)
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3770, file: !302, line: 1535, type: !133)
!3773 = !DILocation(line: 0, scope: !3770)
!3774 = !DILocation(line: 1537, column: 65, scope: !3770)
!3775 = !DILocation(line: 1537, column: 44, scope: !3770)
!3776 = !DILocation(line: 1537, column: 32, scope: !3770)
!3777 = !DILocation(line: 1537, column: 3, scope: !3770)
!3778 = !DILocation(line: 1537, column: 39, scope: !3770)
!3779 = !DILocation(line: 1538, column: 1, scope: !3770)
!3780 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !286, file: !286, line: 123, type: !3690, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3781)
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3780, file: !286, line: 123, type: !297)
!3783 = !DILocalVariable(name: "status", scope: !3780, file: !286, line: 125, type: !3687)
!3784 = !DILocation(line: 0, scope: !3780)
!3785 = !DILocation(line: 127, column: 40, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3780, file: !286, line: 127, column: 9)
!3787 = !DILocation(line: 131, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3786, file: !286, line: 130, column: 12)
!3789 = !DILocation(line: 135, column: 5, scope: !3780)
!3790 = !DILocation(line: 136, column: 1, scope: !3780)
!3791 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !302, file: !302, line: 1547, type: !3703, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3792)
!3792 = !{!3793}
!3793 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3791, file: !302, line: 1547, type: !133)
!3794 = !DILocation(line: 0, scope: !3791)
!3795 = !DILocation(line: 1549, column: 65, scope: !3791)
!3796 = !DILocation(line: 1549, column: 44, scope: !3791)
!3797 = !DILocation(line: 1549, column: 32, scope: !3791)
!3798 = !DILocation(line: 1549, column: 3, scope: !3791)
!3799 = !DILocation(line: 1549, column: 39, scope: !3791)
!3800 = !DILocation(line: 1550, column: 1, scope: !3791)
!3801 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !286, file: !286, line: 138, type: !3802, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!3687, !297, !155}
!3804 = !{!3805, !3806, !3807}
!3805 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3801, file: !286, line: 138, type: !297)
!3806 = !DILocalVariable(name: "priority", arg: 2, scope: !3801, file: !286, line: 138, type: !155)
!3807 = !DILocalVariable(name: "status", scope: !3801, file: !286, line: 140, type: !3687)
!3808 = !DILocation(line: 0, scope: !3801)
!3809 = !DILocation(line: 142, column: 40, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3801, file: !286, line: 142, column: 9)
!3811 = !DILocation(line: 146, column: 9, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3810, file: !286, line: 145, column: 12)
!3813 = !DILocation(line: 150, column: 5, scope: !3801)
!3814 = !DILocation(line: 151, column: 1, scope: !3801)
!3815 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !302, file: !302, line: 1577, type: !3816, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{null, !133, !155}
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3815, file: !302, line: 1577, type: !133)
!3820 = !DILocalVariable(name: "priority", arg: 2, scope: !3815, file: !302, line: 1577, type: !155)
!3821 = !DILocation(line: 0, scope: !3815)
!3822 = !DILocation(line: 1582, column: 34, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !302, line: 1581, column: 8)
!3824 = distinct !DILexicalBlock(scope: !3815, file: !302, line: 1579, column: 6)
!3825 = !DILocation(line: 1582, column: 5, scope: !3823)
!3826 = !DILocation(line: 1582, column: 32, scope: !3823)
!3827 = !DILocation(line: 1583, column: 1, scope: !3815)
!3828 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !286, file: !286, line: 153, type: !3736, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3829)
!3829 = !{!3830, !3831}
!3830 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3828, file: !286, line: 153, type: !297)
!3831 = !DILocalVariable(name: "ret", scope: !3828, file: !286, line: 155, type: !155)
!3832 = !DILocation(line: 0, scope: !3828)
!3833 = !DILocation(line: 157, column: 40, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3828, file: !286, line: 157, column: 9)
!3835 = !DILocation(line: 160, column: 15, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3834, file: !286, line: 159, column: 12)
!3837 = !DILocation(line: 163, column: 5, scope: !3828)
!3838 = !DILocation(line: 164, column: 1, scope: !3828)
!3839 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !302, file: !302, line: 1597, type: !3749, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3840)
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3839, file: !302, line: 1597, type: !133)
!3842 = !DILocation(line: 0, scope: !3839)
!3843 = !DILocation(line: 1603, column: 23, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !302, line: 1602, column: 8)
!3845 = distinct !DILexicalBlock(scope: !3839, file: !302, line: 1600, column: 6)
!3846 = !DILocation(line: 1603, column: 60, scope: !3844)
!3847 = !DILocation(line: 1604, column: 1, scope: !3839)
!3848 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !286, file: !286, line: 173, type: !452, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1689)
!3849 = !DILocation(line: 175, column: 1, scope: !3848)
!3850 = distinct !DISubprogram(name: "isrC_main", scope: !286, file: !286, line: 178, type: !3685, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3851)
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "status", scope: !3850, file: !286, line: 180, type: !3687)
!3853 = !DILocalVariable(name: "irq_number", scope: !3850, file: !286, line: 181, type: !297)
!3854 = !DILocation(line: 0, scope: !3850)
!3855 = !DILocation(line: 188, column: 34, scope: !3850)
!3856 = !DILocation(line: 189, column: 24, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3850, file: !286, line: 189, column: 9)
!3858 = !DILocation(line: 192, column: 48, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3857, file: !286, line: 192, column: 16)
!3860 = !DILocation(line: 192, column: 62, scope: !3859)
!3861 = !DILocation(line: 192, column: 16, scope: !3857)
!3862 = !DILocation(line: 194, column: 9, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3859, file: !286, line: 192, column: 71)
!3864 = !DILocation(line: 195, column: 9, scope: !3863)
!3865 = !DILocation(line: 197, column: 55, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3859, file: !286, line: 196, column: 12)
!3867 = !DILocation(line: 197, column: 41, scope: !3866)
!3868 = !DILocation(line: 197, column: 53, scope: !3866)
!3869 = !DILocation(line: 198, column: 41, scope: !3866)
!3870 = !DILocation(line: 198, column: 9, scope: !3866)
!3871 = !DILocation(line: 202, column: 5, scope: !3850)
!3872 = !DILocation(line: 203, column: 1, scope: !3850)
!3873 = distinct !DISubprogram(name: "get_current_irq", scope: !286, file: !286, line: 166, type: !2336, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3874)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "irq_num", scope: !3873, file: !286, line: 168, type: !155)
!3876 = !DILocation(line: 168, column: 31, scope: !3873)
!3877 = !DILocation(line: 168, column: 36, scope: !3873)
!3878 = !DILocation(line: 0, scope: !3873)
!3879 = !DILocation(line: 169, column: 21, scope: !3873)
!3880 = !DILocation(line: 169, column: 5, scope: !3873)
!3881 = distinct !DISubprogram(name: "get_pending_irq", scope: !286, file: !286, line: 55, type: !2336, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !1689)
!3882 = !DILocation(line: 57, column: 19, scope: !3881)
!3883 = !DILocation(line: 57, column: 51, scope: !3881)
!3884 = !DILocation(line: 57, column: 5, scope: !3881)
!3885 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !286, file: !286, line: 205, type: !3886, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3889)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!3687, !297, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !289, line: 175, baseType: !381)
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3885, file: !286, line: 205, type: !297)
!3891 = !DILocalVariable(name: "callback", arg: 2, scope: !3885, file: !286, line: 205, type: !3888)
!3892 = !DILocalVariable(name: "mask", scope: !3885, file: !286, line: 207, type: !155)
!3893 = !DILocation(line: 0, scope: !3885)
!3894 = !DILocation(line: 209, column: 24, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3885, file: !286, line: 209, column: 9)
!3896 = !DILocation(line: 213, column: 12, scope: !3885)
!3897 = !DILocation(line: 214, column: 5, scope: !3885)
!3898 = !DILocation(line: 215, column: 37, scope: !3885)
!3899 = !DILocation(line: 215, column: 51, scope: !3885)
!3900 = !DILocation(line: 216, column: 37, scope: !3885)
!3901 = !DILocation(line: 216, column: 49, scope: !3885)
!3902 = !DILocation(line: 217, column: 5, scope: !3885)
!3903 = !DILocation(line: 219, column: 5, scope: !3885)
!3904 = !DILocation(line: 220, column: 1, scope: !3885)
!3905 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !286, file: !286, line: 222, type: !3906, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!3687, !1752}
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "mask", arg: 1, scope: !3905, file: !286, line: 222, type: !1752)
!3910 = !DILocation(line: 0, scope: !3905)
!3911 = !DILocation(line: 224, column: 13, scope: !3905)
!3912 = !DILocation(line: 224, column: 11, scope: !3905)
!3913 = !DILocation(line: 225, column: 5, scope: !3905)
!3914 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !286, file: !286, line: 228, type: !3915, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !285, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!3687, !155}
!3917 = !{!3918}
!3918 = !DILocalVariable(name: "mask", arg: 1, scope: !3914, file: !286, line: 228, type: !155)
!3919 = !DILocation(line: 0, scope: !3914)
!3920 = !DILocation(line: 230, column: 5, scope: !3914)
!3921 = !DILocation(line: 231, column: 5, scope: !3914)
!3922 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !960, file: !960, line: 50, type: !3923, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3927)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!3925, !3926, !327}
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !963, line: 238, baseType: !962)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !401, line: 281, baseType: !969)
!3927 = !{!3928, !3929, !3930}
!3928 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3922, file: !960, line: 50, type: !3926)
!3929 = !DILocalVariable(name: "function_index", arg: 2, scope: !3922, file: !960, line: 50, type: !327)
!3930 = !DILocalVariable(name: "ret_value", scope: !3922, file: !960, line: 52, type: !298)
!3931 = !DILocation(line: 0, scope: !3922)
!3932 = !DILocation(line: 53, column: 18, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3922, file: !960, line: 53, column: 9)
!3934 = !DILocation(line: 53, column: 9, scope: !3922)
!3935 = !DILocation(line: 57, column: 24, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3922, file: !960, line: 57, column: 9)
!3937 = !DILocation(line: 57, column: 9, scope: !3922)
!3938 = !DILocation(line: 57, column: 9, scope: !3936)
!3939 = !DILocation(line: 60, column: 17, scope: !3922)
!3940 = !DILocation(line: 61, column: 12, scope: !3922)
!3941 = !DILocation(line: 61, column: 5, scope: !3922)
!3942 = !DILocation(line: 62, column: 1, scope: !3922)
!3943 = distinct !DISubprogram(name: "hal_gpio_init", scope: !960, file: !960, line: 64, type: !3944, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3947)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!3946, !3926}
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !963, line: 229, baseType: !1000)
!3947 = !{!3948}
!3948 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3943, file: !960, line: 64, type: !3926)
!3949 = !DILocation(line: 0, scope: !3943)
!3950 = !DILocation(line: 66, column: 5, scope: !3943)
!3951 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !960, file: !960, line: 69, type: !3944, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3952)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3951, file: !960, line: 69, type: !3926)
!3954 = !DILocation(line: 0, scope: !3951)
!3955 = !DILocation(line: 71, column: 5, scope: !3951)
!3956 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !960, file: !960, line: 74, type: !3957, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3960)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!3946, !3926, !3959}
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 32)
!3960 = !{!3961, !3962, !3963}
!3961 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3956, file: !960, line: 74, type: !3926)
!3962 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3956, file: !960, line: 74, type: !3959)
!3963 = !DILocalVariable(name: "status", scope: !3956, file: !960, line: 76, type: !3964)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1021, line: 67, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1021, line: 62, size: 64, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3965, file: !1021, line: 63, baseType: !155, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3965, file: !1021, line: 64, baseType: !327, size: 8, offset: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3965, file: !1021, line: 65, baseType: !327, size: 8, offset: 40)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3965, file: !1021, line: 66, baseType: !327, size: 8, offset: 48)
!3971 = !DILocation(line: 0, scope: !3956)
!3972 = !DILocation(line: 77, column: 14, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3956, file: !960, line: 77, column: 9)
!3974 = !DILocation(line: 77, column: 9, scope: !3956)
!3975 = !DILocation(line: 81, column: 18, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3956, file: !960, line: 81, column: 9)
!3977 = !DILocation(line: 81, column: 9, scope: !3956)
!3978 = !DILocation(line: 85, column: 14, scope: !3956)
!3979 = !DILocation(line: 86, column: 18, scope: !3956)
!3980 = !DILocation(line: 86, column: 16, scope: !3956)
!3981 = !DILocation(line: 87, column: 5, scope: !3956)
!3982 = !DILocation(line: 88, column: 1, scope: !3956)
!3983 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !960, file: !960, line: 90, type: !3984, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3946, !3926, !1027}
!3986 = !{!3987, !3988, !3989}
!3987 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3983, file: !960, line: 90, type: !3926)
!3988 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3983, file: !960, line: 90, type: !1027)
!3989 = !DILocalVariable(name: "ret_value", scope: !3983, file: !960, line: 92, type: !298)
!3990 = !DILocation(line: 0, scope: !3983)
!3991 = !DILocation(line: 93, column: 18, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3983, file: !960, line: 93, column: 9)
!3993 = !DILocation(line: 93, column: 9, scope: !3983)
!3994 = !DILocation(line: 97, column: 60, scope: !3983)
!3995 = !DILocation(line: 97, column: 17, scope: !3983)
!3996 = !DILocation(line: 98, column: 12, scope: !3983)
!3997 = !DILocation(line: 98, column: 5, scope: !3983)
!3998 = !DILocation(line: 99, column: 1, scope: !3983)
!3999 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !960, file: !960, line: 101, type: !3957, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3999, file: !960, line: 101, type: !3926)
!4002 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3999, file: !960, line: 101, type: !3959)
!4003 = !DILocalVariable(name: "status", scope: !3999, file: !960, line: 103, type: !3964)
!4004 = !DILocation(line: 0, scope: !3999)
!4005 = !DILocation(line: 104, column: 18, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !3999, file: !960, line: 104, column: 9)
!4007 = !DILocation(line: 104, column: 9, scope: !3999)
!4008 = !DILocation(line: 108, column: 14, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3999, file: !960, line: 108, column: 9)
!4010 = !DILocation(line: 108, column: 9, scope: !3999)
!4011 = !DILocation(line: 112, column: 14, scope: !3999)
!4012 = !DILocation(line: 113, column: 18, scope: !3999)
!4013 = !DILocation(line: 113, column: 16, scope: !3999)
!4014 = !DILocation(line: 114, column: 5, scope: !3999)
!4015 = !DILocation(line: 115, column: 1, scope: !3999)
!4016 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !960, file: !960, line: 117, type: !4017, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4020)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!3946, !3926, !4019}
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !963, line: 213, baseType: !1010)
!4020 = !{!4021, !4022, !4023}
!4021 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4016, file: !960, line: 117, type: !3926)
!4022 = !DILocalVariable(name: "direction", arg: 2, scope: !4016, file: !960, line: 117, type: !4019)
!4023 = !DILocalVariable(name: "ret_value", scope: !4016, file: !960, line: 119, type: !298)
!4024 = !DILocation(line: 0, scope: !4016)
!4025 = !DILocation(line: 120, column: 18, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4016, file: !960, line: 120, column: 9)
!4027 = !DILocation(line: 120, column: 9, scope: !4016)
!4028 = !DILocation(line: 123, column: 17, scope: !4016)
!4029 = !DILocation(line: 125, column: 12, scope: !4016)
!4030 = !DILocation(line: 125, column: 5, scope: !4016)
!4031 = !DILocation(line: 126, column: 1, scope: !4016)
!4032 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !960, file: !960, line: 128, type: !4033, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4036)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!3946, !3926, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 32)
!4036 = !{!4037, !4038, !4039}
!4037 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4032, file: !960, line: 128, type: !3926)
!4038 = !DILocalVariable(name: "direction", arg: 2, scope: !4032, file: !960, line: 128, type: !4035)
!4039 = !DILocalVariable(name: "status", scope: !4032, file: !960, line: 131, type: !3964)
!4040 = !DILocation(line: 0, scope: !4032)
!4041 = !DILocation(line: 132, column: 18, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4032, file: !960, line: 132, column: 9)
!4043 = !DILocation(line: 132, column: 9, scope: !4032)
!4044 = !DILocation(line: 136, column: 14, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4032, file: !960, line: 136, column: 9)
!4046 = !DILocation(line: 136, column: 9, scope: !4032)
!4047 = !DILocation(line: 140, column: 14, scope: !4032)
!4048 = !DILocation(line: 141, column: 18, scope: !4032)
!4049 = !DILocation(line: 141, column: 16, scope: !4032)
!4050 = !DILocation(line: 142, column: 5, scope: !4032)
!4051 = !DILocation(line: 143, column: 1, scope: !4032)
!4052 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !960, file: !960, line: 146, type: !3944, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4053)
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4052, file: !960, line: 146, type: !3926)
!4055 = !DILocalVariable(name: "status", scope: !4052, file: !960, line: 148, type: !3964)
!4056 = !DILocation(line: 0, scope: !4052)
!4057 = !DILocation(line: 149, column: 18, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4052, file: !960, line: 149, column: 9)
!4059 = !DILocation(line: 149, column: 9, scope: !4052)
!4060 = !DILocation(line: 153, column: 14, scope: !4052)
!4061 = !DILocation(line: 154, column: 76, scope: !4052)
!4062 = !DILocation(line: 154, column: 12, scope: !4052)
!4063 = !DILocation(line: 154, column: 5, scope: !4052)
!4064 = !DILocation(line: 155, column: 1, scope: !4052)
!4065 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !960, file: !960, line: 157, type: !3944, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4066)
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4065, file: !960, line: 157, type: !3926)
!4068 = !DILocalVariable(name: "ret_value", scope: !4065, file: !960, line: 159, type: !298)
!4069 = !DILocation(line: 0, scope: !4065)
!4070 = !DILocation(line: 160, column: 18, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4065, file: !960, line: 160, column: 9)
!4072 = !DILocation(line: 160, column: 9, scope: !4065)
!4073 = !DILocation(line: 164, column: 17, scope: !4065)
!4074 = !DILocation(line: 165, column: 19, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4065, file: !960, line: 165, column: 9)
!4076 = !DILocation(line: 165, column: 9, scope: !4065)
!4077 = !DILocation(line: 168, column: 17, scope: !4065)
!4078 = !DILocation(line: 169, column: 12, scope: !4065)
!4079 = !DILocation(line: 169, column: 5, scope: !4065)
!4080 = !DILocation(line: 170, column: 1, scope: !4065)
!4081 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !960, file: !960, line: 172, type: !3944, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4082)
!4082 = !{!4083, !4084}
!4083 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4081, file: !960, line: 172, type: !3926)
!4084 = !DILocalVariable(name: "ret_value", scope: !4081, file: !960, line: 174, type: !298)
!4085 = !DILocation(line: 0, scope: !4081)
!4086 = !DILocation(line: 175, column: 18, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4081, file: !960, line: 175, column: 9)
!4088 = !DILocation(line: 175, column: 9, scope: !4081)
!4089 = !DILocation(line: 179, column: 17, scope: !4081)
!4090 = !DILocation(line: 180, column: 19, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4081, file: !960, line: 180, column: 9)
!4092 = !DILocation(line: 180, column: 9, scope: !4081)
!4093 = !DILocation(line: 183, column: 17, scope: !4081)
!4094 = !DILocation(line: 184, column: 12, scope: !4081)
!4095 = !DILocation(line: 184, column: 5, scope: !4081)
!4096 = !DILocation(line: 185, column: 1, scope: !4081)
!4097 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !960, file: !960, line: 187, type: !3944, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4098)
!4098 = !{!4099, !4100}
!4099 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4097, file: !960, line: 187, type: !3926)
!4100 = !DILocalVariable(name: "ret_value", scope: !4097, file: !960, line: 189, type: !298)
!4101 = !DILocation(line: 0, scope: !4097)
!4102 = !DILocation(line: 191, column: 18, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4097, file: !960, line: 191, column: 9)
!4104 = !DILocation(line: 191, column: 9, scope: !4097)
!4105 = !DILocation(line: 195, column: 17, scope: !4097)
!4106 = !DILocation(line: 196, column: 12, scope: !4097)
!4107 = !DILocation(line: 196, column: 5, scope: !4097)
!4108 = !DILocation(line: 197, column: 1, scope: !4097)
!4109 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !960, file: !960, line: 200, type: !4110, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!3946, !3926, !1028}
!4112 = !{!4113, !4114, !4115}
!4113 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4109, file: !960, line: 200, type: !3926)
!4114 = !DILocalVariable(name: "driving", arg: 2, scope: !4109, file: !960, line: 200, type: !1028)
!4115 = !DILocalVariable(name: "ret_value", scope: !4109, file: !960, line: 202, type: !298)
!4116 = !DILocation(line: 0, scope: !4109)
!4117 = !DILocation(line: 204, column: 18, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4109, file: !960, line: 204, column: 9)
!4119 = !DILocation(line: 204, column: 9, scope: !4109)
!4120 = !DILocation(line: 208, column: 64, scope: !4109)
!4121 = !DILocation(line: 208, column: 17, scope: !4109)
!4122 = !DILocation(line: 210, column: 12, scope: !4109)
!4123 = !DILocation(line: 210, column: 5, scope: !4109)
!4124 = !DILocation(line: 211, column: 1, scope: !4109)
!4125 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !960, file: !960, line: 214, type: !4126, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !4129)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!3946, !3926, !4128}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 32)
!4129 = !{!4130, !4131, !4132, !4133}
!4130 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4125, file: !960, line: 214, type: !3926)
!4131 = !DILocalVariable(name: "driving", arg: 2, scope: !4125, file: !960, line: 214, type: !4128)
!4132 = !DILocalVariable(name: "ret_value", scope: !4125, file: !960, line: 216, type: !298)
!4133 = !DILocalVariable(name: "value", scope: !4125, file: !960, line: 217, type: !327)
!4134 = !DILocation(line: 0, scope: !4125)
!4135 = !DILocation(line: 217, column: 5, scope: !4125)
!4136 = !DILocation(line: 219, column: 18, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4125, file: !960, line: 219, column: 9)
!4138 = !DILocation(line: 219, column: 9, scope: !4125)
!4139 = !DILocation(line: 223, column: 17, scope: !4125)
!4140 = !DILocation(line: 225, column: 44, scope: !4125)
!4141 = !DILocation(line: 225, column: 16, scope: !4125)
!4142 = !DILocation(line: 225, column: 14, scope: !4125)
!4143 = !DILocation(line: 227, column: 12, scope: !4125)
!4144 = !DILocation(line: 227, column: 5, scope: !4125)
!4145 = !DILocation(line: 228, column: 1, scope: !4125)
!4146 = distinct !DISubprogram(name: "hal_uart_init", scope: !390, file: !390, line: 234, type: !4147, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4151)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!4149, !454, !4150}
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !393, line: 351, baseType: !392)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!4151 = !{!4152, !4153}
!4152 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4146, file: !390, line: 234, type: !454)
!4153 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4146, file: !390, line: 234, type: !4150)
!4154 = !DILocation(line: 0, scope: !4146)
!4155 = !DILocation(line: 236, column: 10, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4146, file: !390, line: 236, column: 9)
!4157 = !DILocation(line: 236, column: 9, scope: !4146)
!4158 = !DILocation(line: 239, column: 41, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4146, file: !390, line: 239, column: 9)
!4160 = !DILocation(line: 239, column: 9, scope: !4146)
!4161 = !DILocation(line: 242, column: 5, scope: !4146)
!4162 = !DILocation(line: 243, column: 45, scope: !4146)
!4163 = !DILocation(line: 243, column: 12, scope: !4146)
!4164 = !DILocation(line: 244, column: 12, scope: !4146)
!4165 = !DILocation(line: 243, column: 5, scope: !4146)
!4166 = !DILocation(line: 245, column: 58, scope: !4146)
!4167 = !DILocation(line: 246, column: 30, scope: !4146)
!4168 = !{i32 0, i32 2}
!4169 = !DILocation(line: 246, column: 5, scope: !4146)
!4170 = !DILocation(line: 247, column: 5, scope: !4146)
!4171 = !DILocation(line: 249, column: 31, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4146, file: !390, line: 249, column: 9)
!4173 = !DILocation(line: 249, column: 28, scope: !4172)
!4174 = !DILocation(line: 261, column: 1, scope: !4146)
!4175 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !390, file: !390, line: 93, type: !4176, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4180)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!282, !454, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 32)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!4180 = !{!4181, !4182}
!4181 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4175, file: !390, line: 93, type: !454)
!4182 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4175, file: !390, line: 93, type: !4178)
!4183 = !DILocation(line: 0, scope: !4175)
!4184 = !DILocation(line: 95, column: 10, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4175, file: !390, line: 95, column: 9)
!4186 = !DILocation(line: 95, column: 9, scope: !4175)
!4187 = !DILocation(line: 101, column: 23, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4175, file: !390, line: 101, column: 9)
!4189 = !DILocation(line: 101, column: 32, scope: !4188)
!4190 = !DILocation(line: 101, column: 60, scope: !4188)
!4191 = !DILocation(line: 102, column: 27, scope: !4188)
!4192 = !DILocation(line: 102, column: 34, scope: !4188)
!4193 = !DILocation(line: 102, column: 58, scope: !4188)
!4194 = !DILocation(line: 103, column: 27, scope: !4188)
!4195 = !DILocation(line: 103, column: 36, scope: !4188)
!4196 = !DILocation(line: 103, column: 59, scope: !4188)
!4197 = !DILocation(line: 104, column: 27, scope: !4188)
!4198 = !DILocation(line: 104, column: 39, scope: !4188)
!4199 = !DILocation(line: 101, column: 9, scope: !4175)
!4200 = !DILocation(line: 109, column: 1, scope: !4175)
!4201 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !390, file: !390, line: 139, type: !4202, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4204)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!2804, !454}
!4204 = !{!4205}
!4205 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4201, file: !390, line: 139, type: !454)
!4206 = !DILocation(line: 0, scope: !4201)
!4207 = !DILocation(line: 141, column: 24, scope: !4201)
!4208 = !DILocation(line: 141, column: 12, scope: !4201)
!4209 = !DILocation(line: 141, column: 5, scope: !4201)
!4210 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !390, file: !390, line: 593, type: !4211, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4213)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!4149, !454, !4178}
!4213 = !{!4214, !4215}
!4214 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4210, file: !390, line: 593, type: !454)
!4215 = !DILocalVariable(name: "config", arg: 2, scope: !4210, file: !390, line: 593, type: !4178)
!4216 = !DILocation(line: 0, scope: !4210)
!4217 = !DILocation(line: 595, column: 10, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4210, file: !390, line: 595, column: 9)
!4219 = !DILocation(line: 595, column: 9, scope: !4210)
!4220 = !DILocation(line: 598, column: 45, scope: !4210)
!4221 = !DILocation(line: 598, column: 12, scope: !4210)
!4222 = !DILocation(line: 598, column: 59, scope: !4210)
!4223 = !DILocation(line: 598, column: 5, scope: !4210)
!4224 = !DILocation(line: 599, column: 23, scope: !4210)
!4225 = !DILocation(line: 600, column: 59, scope: !4210)
!4226 = !DILocation(line: 600, column: 23, scope: !4210)
!4227 = !DILocation(line: 601, column: 62, scope: !4210)
!4228 = !DILocation(line: 601, column: 23, scope: !4210)
!4229 = !DILocation(line: 602, column: 57, scope: !4210)
!4230 = !DILocation(line: 602, column: 23, scope: !4210)
!4231 = !DILocation(line: 603, column: 58, scope: !4210)
!4232 = !DILocation(line: 603, column: 23, scope: !4210)
!4233 = !DILocation(line: 599, column: 5, scope: !4210)
!4234 = !DILocation(line: 604, column: 5, scope: !4210)
!4235 = !DILocation(line: 605, column: 1, scope: !4210)
!4236 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !390, file: !390, line: 145, type: !4237, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!155, !469}
!4239 = !{!4240, !4241}
!4240 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4236, file: !390, line: 145, type: !469)
!4241 = !DILocalVariable(name: "baudrate_tbl", scope: !4236, file: !390, line: 147, type: !4242)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 416, elements: !4243)
!4243 = !{!4244}
!4244 = !DISubrange(count: 13)
!4245 = !DILocation(line: 0, scope: !4236)
!4246 = !DILocation(line: 147, column: 14, scope: !4236)
!4247 = !DILocation(line: 151, column: 12, scope: !4236)
!4248 = !DILocation(line: 151, column: 5, scope: !4236)
!4249 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !390, file: !390, line: 155, type: !4250, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!2874, !471}
!4252 = !{!4253, !4254}
!4253 = !DILocalVariable(name: "word_length", arg: 1, scope: !4249, file: !390, line: 155, type: !471)
!4254 = !DILocalVariable(name: "databit_tbl", scope: !4249, file: !390, line: 157, type: !4255)
!4255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 64, elements: !366)
!4256 = !DILocation(line: 0, scope: !4249)
!4257 = !DILocation(line: 157, column: 14, scope: !4249)
!4258 = !DILocation(line: 160, column: 12, scope: !4249)
!4259 = !DILocation(line: 160, column: 5, scope: !4249)
!4260 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !390, file: !390, line: 164, type: !4261, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!2874, !475}
!4263 = !{!4264, !4265}
!4264 = !DILocalVariable(name: "parity", arg: 1, scope: !4260, file: !390, line: 164, type: !475)
!4265 = !DILocalVariable(name: "parity_tbl", scope: !4260, file: !390, line: 166, type: !4266)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 80, elements: !370)
!4267 = !DILocation(line: 0, scope: !4260)
!4268 = !DILocation(line: 166, column: 14, scope: !4260)
!4269 = !DILocation(line: 169, column: 12, scope: !4260)
!4270 = !DILocation(line: 169, column: 5, scope: !4260)
!4271 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !390, file: !390, line: 173, type: !4272, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4274)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!2874, !473}
!4274 = !{!4275, !4276}
!4275 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4271, file: !390, line: 173, type: !473)
!4276 = !DILocalVariable(name: "stopbit_tbl", scope: !4271, file: !390, line: 175, type: !4277)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2874, size: 48, elements: !620)
!4278 = !DILocation(line: 0, scope: !4271)
!4279 = !DILocation(line: 175, column: 14, scope: !4271)
!4280 = !DILocation(line: 178, column: 12, scope: !4271)
!4281 = !DILocation(line: 178, column: 5, scope: !4271)
!4282 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !390, file: !390, line: 87, type: !4283, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!282, !454}
!4285 = !{!4286}
!4286 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4282, file: !390, line: 87, type: !454)
!4287 = !DILocation(line: 0, scope: !4282)
!4288 = !DILocation(line: 89, column: 23, scope: !4282)
!4289 = !DILocation(line: 89, column: 5, scope: !4282)
!4290 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !390, file: !390, line: 264, type: !4291, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!4149, !454}
!4293 = !{!4294}
!4294 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4290, file: !390, line: 264, type: !454)
!4295 = !DILocation(line: 0, scope: !4290)
!4296 = !DILocation(line: 266, column: 10, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4290, file: !390, line: 266, column: 9)
!4298 = !DILocation(line: 266, column: 9, scope: !4290)
!4299 = !DILocation(line: 269, column: 41, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4290, file: !390, line: 269, column: 9)
!4301 = !DILocation(line: 269, column: 62, scope: !4300)
!4302 = !DILocation(line: 269, column: 9, scope: !4290)
!4303 = !DILocation(line: 272, column: 5, scope: !4290)
!4304 = !DILocation(line: 275, column: 22, scope: !4290)
!4305 = !DILocation(line: 275, column: 5, scope: !4290)
!4306 = !DILocation(line: 284, column: 5, scope: !4290)
!4307 = !DILocation(line: 286, column: 5, scope: !4290)
!4308 = !DILocation(line: 287, column: 1, scope: !4290)
!4309 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !390, file: !390, line: 290, type: !4310, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4312)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{null, !454, !443}
!4312 = !{!4313, !4314, !4315}
!4313 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4309, file: !390, line: 290, type: !454)
!4314 = !DILocalVariable(name: "byte", arg: 2, scope: !4309, file: !390, line: 290, type: !443)
!4315 = !DILocalVariable(name: "int_no", scope: !4309, file: !390, line: 292, type: !2804)
!4316 = !DILocation(line: 0, scope: !4309)
!4317 = !DILocation(line: 292, column: 26, scope: !4309)
!4318 = !DILocation(line: 294, column: 16, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4309, file: !390, line: 294, column: 9)
!4320 = !DILocation(line: 294, column: 9, scope: !4309)
!4321 = !DILocation(line: 295, column: 9, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4319, file: !390, line: 294, column: 34)
!4323 = !DILocation(line: 296, column: 5, scope: !4322)
!4324 = !DILocation(line: 299, column: 1, scope: !4309)
!4325 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !390, file: !390, line: 302, type: !4326, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!155, !454, !3010, !155}
!4328 = !{!4329, !4330, !4331, !4332, !4333}
!4329 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4325, file: !390, line: 302, type: !454)
!4330 = !DILocalVariable(name: "data", arg: 2, scope: !4325, file: !390, line: 302, type: !3010)
!4331 = !DILocalVariable(name: "size", arg: 3, scope: !4325, file: !390, line: 302, type: !155)
!4332 = !DILocalVariable(name: "int_no", scope: !4325, file: !390, line: 304, type: !2804)
!4333 = !DILocalVariable(name: "index", scope: !4325, file: !390, line: 305, type: !155)
!4334 = !DILocation(line: 0, scope: !4325)
!4335 = !DILocation(line: 304, column: 26, scope: !4325)
!4336 = !DILocation(line: 307, column: 14, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4325, file: !390, line: 307, column: 9)
!4338 = !DILocation(line: 307, column: 9, scope: !4325)
!4339 = !DILocation(line: 313, column: 53, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4341, file: !390, line: 312, column: 48)
!4341 = distinct !DILexicalBlock(scope: !4342, file: !390, line: 312, column: 9)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !390, line: 312, column: 9)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !390, line: 311, column: 33)
!4344 = distinct !DILexicalBlock(scope: !4325, file: !390, line: 311, column: 9)
!4345 = !DILocation(line: 313, column: 13, scope: !4340)
!4346 = !DILocation(line: 312, column: 44, scope: !4341)
!4347 = !DILocation(line: 312, column: 31, scope: !4341)
!4348 = !DILocation(line: 312, column: 9, scope: !4342)
!4349 = distinct !{!4349, !4348, !4350}
!4350 = !DILocation(line: 314, column: 9, scope: !4342)
!4351 = !DILocation(line: 318, column: 1, scope: !4325)
!4352 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !390, file: !390, line: 320, type: !4326, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4353)
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4359}
!4354 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4352, file: !390, line: 320, type: !454)
!4355 = !DILocalVariable(name: "data", arg: 2, scope: !4352, file: !390, line: 320, type: !3010)
!4356 = !DILocalVariable(name: "size", arg: 3, scope: !4352, file: !390, line: 320, type: !155)
!4357 = !DILocalVariable(name: "actual_space", scope: !4352, file: !390, line: 322, type: !155)
!4358 = !DILocalVariable(name: "send_size", scope: !4352, file: !390, line: 322, type: !155)
!4359 = !DILocalVariable(name: "ch", scope: !4352, file: !390, line: 323, type: !4360)
!4360 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !175, line: 144, baseType: !174)
!4361 = !DILocation(line: 0, scope: !4352)
!4362 = !DILocation(line: 322, column: 5, scope: !4352)
!4363 = !DILocation(line: 328, column: 10, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4352, file: !390, line: 328, column: 9)
!4365 = !DILocation(line: 328, column: 9, scope: !4352)
!4366 = !DILocation(line: 332, column: 15, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4352, file: !390, line: 332, column: 9)
!4368 = !DILocation(line: 332, column: 24, scope: !4367)
!4369 = !DILocation(line: 335, column: 42, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4352, file: !390, line: 335, column: 9)
!4371 = !DILocation(line: 335, column: 9, scope: !4352)
!4372 = !DILocation(line: 349, column: 30, scope: !4352)
!4373 = !DILocation(line: 349, column: 5, scope: !4352)
!4374 = !DILocation(line: 350, column: 9, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4352, file: !390, line: 350, column: 9)
!4376 = !DILocation(line: 350, column: 22, scope: !4375)
!4377 = !DILocation(line: 355, column: 5, scope: !4352)
!4378 = !DILocation(line: 357, column: 22, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4352, file: !390, line: 357, column: 9)
!4380 = !DILocation(line: 357, column: 19, scope: !4379)
!4381 = !DILocation(line: 357, column: 9, scope: !4352)
!4382 = !DILocation(line: 358, column: 14, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4379, file: !390, line: 357, column: 36)
!4384 = !{i32 14, i32 18}
!4385 = !DILocation(line: 359, column: 9, scope: !4383)
!4386 = !DILocation(line: 360, column: 5, scope: !4383)
!4387 = !DILocation(line: 362, column: 1, scope: !4352)
!4388 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !390, file: !390, line: 191, type: !4389, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4391)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!4360, !2804, !282}
!4391 = !{!4392, !4393, !4394}
!4392 = !DILocalVariable(name: "port", arg: 1, scope: !4388, file: !390, line: 191, type: !2804)
!4393 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4388, file: !390, line: 191, type: !282)
!4394 = !DILocalVariable(name: "ch", scope: !4388, file: !390, line: 193, type: !4360)
!4395 = !DILocation(line: 0, scope: !4388)
!4396 = !DILocation(line: 195, column: 14, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4388, file: !390, line: 195, column: 9)
!4398 = !DILocation(line: 195, column: 9, scope: !4388)
!4399 = !DILocation(line: 209, column: 5, scope: !4388)
!4400 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !390, file: !390, line: 365, type: !4401, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4403)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!443, !454}
!4403 = !{!4404, !4405}
!4404 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4400, file: !390, line: 365, type: !454)
!4405 = !DILocalVariable(name: "int_no", scope: !4400, file: !390, line: 367, type: !2804)
!4406 = !DILocation(line: 0, scope: !4400)
!4407 = !DILocation(line: 367, column: 26, scope: !4400)
!4408 = !DILocation(line: 369, column: 16, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4400, file: !390, line: 369, column: 9)
!4410 = !DILocation(line: 369, column: 9, scope: !4400)
!4411 = !DILocation(line: 370, column: 22, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4409, file: !390, line: 369, column: 33)
!4413 = !DILocation(line: 370, column: 9, scope: !4412)
!4414 = !DILocation(line: 0, scope: !4409)
!4415 = !DILocation(line: 375, column: 1, scope: !4400)
!4416 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !390, file: !390, line: 377, type: !4417, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4419)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!155, !454}
!4419 = !{!4420, !4421}
!4420 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4416, file: !390, line: 377, type: !454)
!4421 = !DILocalVariable(name: "int_no", scope: !4416, file: !390, line: 379, type: !2804)
!4422 = !DILocation(line: 0, scope: !4416)
!4423 = !DILocation(line: 379, column: 26, scope: !4416)
!4424 = !DILocation(line: 381, column: 16, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4416, file: !390, line: 381, column: 9)
!4426 = !DILocation(line: 381, column: 9, scope: !4416)
!4427 = !DILocation(line: 382, column: 16, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !390, line: 381, column: 33)
!4429 = !DILocation(line: 382, column: 9, scope: !4428)
!4430 = !DILocation(line: 0, scope: !4425)
!4431 = !DILocation(line: 387, column: 1, scope: !4416)
!4432 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !390, file: !390, line: 390, type: !4433, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4435)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!155, !454, !494, !155}
!4435 = !{!4436, !4437, !4438, !4439, !4440}
!4436 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4432, file: !390, line: 390, type: !454)
!4437 = !DILocalVariable(name: "buffer", arg: 2, scope: !4432, file: !390, line: 390, type: !494)
!4438 = !DILocalVariable(name: "size", arg: 3, scope: !4432, file: !390, line: 390, type: !155)
!4439 = !DILocalVariable(name: "int_no", scope: !4432, file: !390, line: 392, type: !2804)
!4440 = !DILocalVariable(name: "index", scope: !4432, file: !390, line: 393, type: !155)
!4441 = !DILocation(line: 0, scope: !4432)
!4442 = !DILocation(line: 392, column: 26, scope: !4432)
!4443 = !DILocation(line: 395, column: 16, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4432, file: !390, line: 395, column: 9)
!4445 = !DILocation(line: 395, column: 9, scope: !4432)
!4446 = !DILocation(line: 401, column: 38, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !390, line: 400, column: 48)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !390, line: 400, column: 9)
!4449 = distinct !DILexicalBlock(scope: !4450, file: !390, line: 400, column: 9)
!4450 = distinct !DILexicalBlock(scope: !4451, file: !390, line: 399, column: 33)
!4451 = distinct !DILexicalBlock(scope: !4432, file: !390, line: 399, column: 9)
!4452 = !DILocation(line: 401, column: 13, scope: !4447)
!4453 = !DILocation(line: 401, column: 27, scope: !4447)
!4454 = !DILocation(line: 400, column: 44, scope: !4448)
!4455 = !DILocation(line: 400, column: 31, scope: !4448)
!4456 = !DILocation(line: 400, column: 9, scope: !4449)
!4457 = distinct !{!4457, !4456, !4458}
!4458 = !DILocation(line: 402, column: 9, scope: !4449)
!4459 = !DILocation(line: 406, column: 1, scope: !4432)
!4460 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !390, file: !390, line: 408, type: !4433, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4461)
!4461 = !{!4462, !4463, !4464, !4465, !4466, !4467}
!4462 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4460, file: !390, line: 408, type: !454)
!4463 = !DILocalVariable(name: "buffer", arg: 2, scope: !4460, file: !390, line: 408, type: !494)
!4464 = !DILocalVariable(name: "size", arg: 3, scope: !4460, file: !390, line: 408, type: !155)
!4465 = !DILocalVariable(name: "actual_size", scope: !4460, file: !390, line: 410, type: !155)
!4466 = !DILocalVariable(name: "receive_size", scope: !4460, file: !390, line: 410, type: !155)
!4467 = !DILocalVariable(name: "ch", scope: !4460, file: !390, line: 411, type: !4360)
!4468 = !DILocation(line: 0, scope: !4460)
!4469 = !DILocation(line: 410, column: 5, scope: !4460)
!4470 = !DILocation(line: 413, column: 10, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4460, file: !390, line: 413, column: 9)
!4472 = !DILocation(line: 413, column: 9, scope: !4460)
!4473 = !DILocation(line: 417, column: 17, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4460, file: !390, line: 417, column: 9)
!4475 = !DILocation(line: 417, column: 26, scope: !4474)
!4476 = !DILocation(line: 421, column: 30, scope: !4460)
!4477 = !DILocation(line: 421, column: 5, scope: !4460)
!4478 = !DILocation(line: 422, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4460, file: !390, line: 422, column: 9)
!4480 = !DILocation(line: 422, column: 21, scope: !4479)
!4481 = !DILocation(line: 427, column: 5, scope: !4460)
!4482 = !DILocation(line: 429, column: 25, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4460, file: !390, line: 429, column: 9)
!4484 = !DILocation(line: 429, column: 22, scope: !4483)
!4485 = !DILocation(line: 429, column: 9, scope: !4460)
!4486 = !DILocation(line: 430, column: 14, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4483, file: !390, line: 429, column: 38)
!4488 = !DILocation(line: 431, column: 9, scope: !4487)
!4489 = !DILocation(line: 432, column: 5, scope: !4487)
!4490 = !DILocation(line: 435, column: 1, scope: !4460)
!4491 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !390, file: !390, line: 438, type: !4417, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4492)
!4492 = !{!4493, !4494}
!4493 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4491, file: !390, line: 438, type: !454)
!4494 = !DILocalVariable(name: "length", scope: !4491, file: !390, line: 440, type: !155)
!4495 = !DILocation(line: 0, scope: !4491)
!4496 = !DILocation(line: 440, column: 5, scope: !4491)
!4497 = !DILocation(line: 440, column: 14, scope: !4491)
!4498 = !DILocation(line: 442, column: 10, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !390, line: 442, column: 9)
!4500 = !DILocation(line: 442, column: 9, scope: !4491)
!4501 = !DILocation(line: 446, column: 30, scope: !4491)
!4502 = !DILocation(line: 446, column: 5, scope: !4491)
!4503 = !DILocation(line: 447, column: 12, scope: !4491)
!4504 = !DILocation(line: 447, column: 5, scope: !4491)
!4505 = !DILocation(line: 448, column: 1, scope: !4491)
!4506 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !390, file: !390, line: 451, type: !4417, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4507)
!4507 = !{!4508, !4509}
!4508 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4506, file: !390, line: 451, type: !454)
!4509 = !DILocalVariable(name: "length", scope: !4506, file: !390, line: 453, type: !155)
!4510 = !DILocation(line: 0, scope: !4506)
!4511 = !DILocation(line: 453, column: 5, scope: !4506)
!4512 = !DILocation(line: 453, column: 14, scope: !4506)
!4513 = !DILocation(line: 455, column: 10, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4506, file: !390, line: 455, column: 9)
!4515 = !DILocation(line: 455, column: 9, scope: !4506)
!4516 = !DILocation(line: 459, column: 30, scope: !4506)
!4517 = !DILocation(line: 459, column: 5, scope: !4506)
!4518 = !DILocation(line: 461, column: 12, scope: !4506)
!4519 = !DILocation(line: 461, column: 5, scope: !4506)
!4520 = !DILocation(line: 462, column: 1, scope: !4506)
!4521 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !390, file: !390, line: 543, type: !4522, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4524)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!4149, !454, !482, !37}
!4524 = !{!4525, !4526, !4527, !4528}
!4525 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4521, file: !390, line: 543, type: !454)
!4526 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4521, file: !390, line: 544, type: !482)
!4527 = !DILocalVariable(name: "user_data", arg: 3, scope: !4521, file: !390, line: 545, type: !37)
!4528 = !DILocalVariable(name: "ch", scope: !4521, file: !390, line: 547, type: !4360)
!4529 = !DILocation(line: 0, scope: !4521)
!4530 = !DILocation(line: 549, column: 10, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4521, file: !390, line: 549, column: 9)
!4532 = !DILocation(line: 549, column: 9, scope: !4521)
!4533 = !DILocation(line: 556, column: 53, scope: !4521)
!4534 = !DILocation(line: 556, column: 62, scope: !4521)
!4535 = !DILocation(line: 557, column: 53, scope: !4521)
!4536 = !DILocation(line: 557, column: 63, scope: !4521)
!4537 = !DILocation(line: 558, column: 37, scope: !4521)
!4538 = !DILocation(line: 558, column: 54, scope: !4521)
!4539 = !DILocation(line: 560, column: 39, scope: !4521)
!4540 = !DILocation(line: 561, column: 39, scope: !4521)
!4541 = !DILocation(line: 560, column: 5, scope: !4521)
!4542 = !DILocation(line: 562, column: 5, scope: !4521)
!4543 = !DILocation(line: 564, column: 44, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4521, file: !390, line: 564, column: 9)
!4545 = !DILocation(line: 564, column: 9, scope: !4521)
!4546 = !DILocation(line: 565, column: 9, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !390, line: 564, column: 59)
!4548 = !DILocation(line: 566, column: 5, scope: !4547)
!4549 = !DILocation(line: 567, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4544, file: !390, line: 566, column: 12)
!4551 = !DILocation(line: 569, column: 10, scope: !4521)
!4552 = !DILocation(line: 570, column: 5, scope: !4521)
!4553 = !DILocation(line: 578, column: 5, scope: !4521)
!4554 = !DILocation(line: 579, column: 1, scope: !4521)
!4555 = !DILocation(line: 0, scope: !447)
!4556 = !DILocation(line: 539, column: 12, scope: !447)
!4557 = !DILocation(line: 539, column: 5, scope: !447)
!4558 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !390, file: !390, line: 511, type: !452, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4559)
!4559 = !{!4560}
!4560 = !DILocalVariable(name: "callback_context", scope: !4561, file: !390, line: 514, type: !4563)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !390, line: 513, column: 60)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !390, line: 513, column: 9)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 32)
!4564 = !DILocation(line: 513, column: 42, scope: !4562)
!4565 = !DILocation(line: 513, column: 9, scope: !4558)
!4566 = !DILocation(line: 515, column: 39, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4561, file: !390, line: 515, column: 13)
!4568 = !DILocation(line: 515, column: 18, scope: !4567)
!4569 = !DILocation(line: 515, column: 13, scope: !4561)
!4570 = !DILocation(line: 516, column: 89, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4567, file: !390, line: 515, column: 49)
!4572 = !DILocation(line: 516, column: 13, scope: !4571)
!4573 = !DILocation(line: 517, column: 9, scope: !4571)
!4574 = !DILocation(line: 519, column: 32, scope: !4558)
!4575 = !DILocation(line: 519, column: 5, scope: !4558)
!4576 = !DILocation(line: 520, column: 1, scope: !4558)
!4577 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !390, file: !390, line: 523, type: !452, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4578)
!4578 = !{!4579}
!4579 = !DILocalVariable(name: "callback_context", scope: !4580, file: !390, line: 526, type: !4563)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !390, line: 525, column: 60)
!4581 = distinct !DILexicalBlock(scope: !4577, file: !390, line: 525, column: 9)
!4582 = !DILocation(line: 525, column: 42, scope: !4581)
!4583 = !DILocation(line: 525, column: 9, scope: !4577)
!4584 = !DILocation(line: 527, column: 39, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4580, file: !390, line: 527, column: 13)
!4586 = !DILocation(line: 527, column: 18, scope: !4585)
!4587 = !DILocation(line: 527, column: 13, scope: !4580)
!4588 = !DILocation(line: 528, column: 89, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4585, file: !390, line: 527, column: 49)
!4590 = !DILocation(line: 528, column: 13, scope: !4589)
!4591 = !DILocation(line: 529, column: 9, scope: !4589)
!4592 = !DILocation(line: 531, column: 32, scope: !4577)
!4593 = !DILocation(line: 531, column: 5, scope: !4577)
!4594 = !DILocation(line: 532, column: 1, scope: !4577)
!4595 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !390, file: !390, line: 464, type: !4596, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !2804, !282}
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4605}
!4599 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4595, file: !390, line: 464, type: !2804)
!4600 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4595, file: !390, line: 464, type: !282)
!4601 = !DILocalVariable(name: "avail_size", scope: !4595, file: !390, line: 466, type: !155)
!4602 = !DILocalVariable(name: "avail_space", scope: !4595, file: !390, line: 466, type: !155)
!4603 = !DILocalVariable(name: "dma_config", scope: !4595, file: !390, line: 467, type: !4604)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 32)
!4605 = !DILocalVariable(name: "ch", scope: !4595, file: !390, line: 468, type: !4360)
!4606 = !DILocation(line: 0, scope: !4595)
!4607 = !DILocation(line: 466, column: 5, scope: !4595)
!4608 = !DILocation(line: 471, column: 9, scope: !4595)
!4609 = !DILocation(line: 472, column: 9, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !390, line: 471, column: 16)
!4611 = distinct !DILexicalBlock(scope: !4595, file: !390, line: 471, column: 9)
!4612 = !DILocation(line: 473, column: 13, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4610, file: !390, line: 473, column: 13)
!4614 = !DILocation(line: 473, column: 39, scope: !4613)
!4615 = !DILocation(line: 473, column: 24, scope: !4613)
!4616 = !DILocation(line: 473, column: 13, scope: !4610)
!4617 = !DILocation(line: 478, column: 9, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4611, file: !390, line: 477, column: 12)
!4619 = !DILocation(line: 479, column: 13, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4618, file: !390, line: 479, column: 13)
!4621 = !DILocation(line: 479, column: 40, scope: !4620)
!4622 = !DILocation(line: 479, column: 77, scope: !4620)
!4623 = !DILocation(line: 479, column: 63, scope: !4620)
!4624 = !DILocation(line: 479, column: 25, scope: !4620)
!4625 = !DILocation(line: 479, column: 13, scope: !4618)
!4626 = !DILocation(line: 0, scope: !4611)
!4627 = !DILocation(line: 484, column: 1, scope: !4595)
!4628 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !390, file: !390, line: 486, type: !452, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4629)
!4629 = !{!4630}
!4630 = !DILocalVariable(name: "callback_context", scope: !4631, file: !390, line: 490, type: !4563)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !390, line: 489, column: 70)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !390, line: 488, column: 9)
!4633 = !DILocation(line: 488, column: 43, scope: !4632)
!4634 = !DILocation(line: 488, column: 61, scope: !4632)
!4635 = !DILocation(line: 489, column: 14, scope: !4632)
!4636 = !DILocation(line: 489, column: 63, scope: !4632)
!4637 = !DILocation(line: 488, column: 9, scope: !4628)
!4638 = !DILocation(line: 491, column: 39, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4631, file: !390, line: 491, column: 13)
!4640 = !DILocation(line: 491, column: 18, scope: !4639)
!4641 = !DILocation(line: 491, column: 13, scope: !4631)
!4642 = !DILocation(line: 492, column: 88, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4639, file: !390, line: 491, column: 49)
!4644 = !DILocation(line: 492, column: 13, scope: !4643)
!4645 = !DILocation(line: 493, column: 9, scope: !4643)
!4646 = !DILocation(line: 495, column: 32, scope: !4628)
!4647 = !DILocation(line: 495, column: 5, scope: !4628)
!4648 = !DILocation(line: 496, column: 1, scope: !4628)
!4649 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !390, file: !390, line: 499, type: !452, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4650)
!4650 = !{!4651}
!4651 = !DILocalVariable(name: "callback_context", scope: !4652, file: !390, line: 503, type: !4563)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !390, line: 502, column: 70)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !390, line: 501, column: 9)
!4654 = !DILocation(line: 501, column: 43, scope: !4653)
!4655 = !DILocation(line: 501, column: 61, scope: !4653)
!4656 = !DILocation(line: 502, column: 14, scope: !4653)
!4657 = !DILocation(line: 502, column: 63, scope: !4653)
!4658 = !DILocation(line: 501, column: 9, scope: !4649)
!4659 = !DILocation(line: 504, column: 39, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4652, file: !390, line: 504, column: 13)
!4661 = !DILocation(line: 504, column: 18, scope: !4660)
!4662 = !DILocation(line: 504, column: 13, scope: !4652)
!4663 = !DILocation(line: 505, column: 88, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4660, file: !390, line: 504, column: 49)
!4665 = !DILocation(line: 505, column: 13, scope: !4664)
!4666 = !DILocation(line: 506, column: 9, scope: !4664)
!4667 = !DILocation(line: 508, column: 32, scope: !4649)
!4668 = !DILocation(line: 508, column: 5, scope: !4649)
!4669 = !DILocation(line: 509, column: 1, scope: !4649)
!4670 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !390, file: !390, line: 582, type: !4671, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!4149, !454, !469}
!4673 = !{!4674, !4675}
!4674 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4670, file: !390, line: 582, type: !454)
!4675 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4670, file: !390, line: 582, type: !469)
!4676 = !DILocation(line: 0, scope: !4670)
!4677 = !DILocation(line: 584, column: 11, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4670, file: !390, line: 584, column: 9)
!4679 = !DILocation(line: 584, column: 46, scope: !4678)
!4680 = !DILocation(line: 588, column: 37, scope: !4670)
!4681 = !DILocation(line: 588, column: 50, scope: !4670)
!4682 = !DILocation(line: 588, column: 59, scope: !4670)
!4683 = !DILocation(line: 589, column: 12, scope: !4670)
!4684 = !DILocation(line: 589, column: 5, scope: !4670)
!4685 = !DILocation(line: 590, column: 1, scope: !4670)
!4686 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !390, file: !390, line: 608, type: !4687, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4691)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!4149, !454, !4689}
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 32)
!4690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!4691 = !{!4692, !4693}
!4692 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4686, file: !390, line: 608, type: !454)
!4693 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4686, file: !390, line: 608, type: !4689)
!4694 = !DILocation(line: 0, scope: !4686)
!4695 = !DILocation(line: 610, column: 10, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4686, file: !390, line: 610, column: 9)
!4697 = !DILocation(line: 610, column: 9, scope: !4686)
!4698 = !DILocation(line: 614, column: 10, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4686, file: !390, line: 614, column: 9)
!4700 = !DILocation(line: 614, column: 9, scope: !4686)
!4701 = !DILocation(line: 618, column: 37, scope: !4686)
!4702 = !DILocation(line: 618, column: 56, scope: !4686)
!4703 = !DILocation(line: 619, column: 45, scope: !4686)
!4704 = !DILocation(line: 619, column: 12, scope: !4686)
!4705 = !DILocation(line: 620, column: 12, scope: !4686)
!4706 = !DILocation(line: 619, column: 5, scope: !4686)
!4707 = !DILocation(line: 621, column: 5, scope: !4686)
!4708 = !DILocation(line: 622, column: 5, scope: !4686)
!4709 = !DILocation(line: 623, column: 33, scope: !4686)
!4710 = !DILocation(line: 624, column: 50, scope: !4686)
!4711 = !DILocation(line: 625, column: 50, scope: !4686)
!4712 = !DILocation(line: 626, column: 50, scope: !4686)
!4713 = !DILocation(line: 627, column: 50, scope: !4686)
!4714 = !DILocation(line: 628, column: 33, scope: !4686)
!4715 = !DILocation(line: 623, column: 5, scope: !4686)
!4716 = !DILocation(line: 630, column: 50, scope: !4686)
!4717 = !DILocation(line: 631, column: 50, scope: !4686)
!4718 = !DILocation(line: 632, column: 50, scope: !4686)
!4719 = !DILocation(line: 629, column: 5, scope: !4686)
!4720 = !DILocation(line: 634, column: 5, scope: !4686)
!4721 = !DILocation(line: 635, column: 1, scope: !4686)
!4722 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !390, file: !390, line: 112, type: !4723, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4725)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!282, !4689}
!4725 = !{!4726}
!4726 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4722, file: !390, line: 112, type: !4689)
!4727 = !DILocation(line: 0, scope: !4722)
!4728 = !DILocation(line: 114, column: 14, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4722, file: !390, line: 114, column: 9)
!4730 = !DILocation(line: 114, column: 9, scope: !4722)
!4731 = !DILocation(line: 117, column: 29, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4722, file: !390, line: 117, column: 9)
!4733 = !DILocation(line: 117, column: 14, scope: !4732)
!4734 = !DILocation(line: 117, column: 9, scope: !4722)
!4735 = !DILocation(line: 120, column: 21, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4722, file: !390, line: 120, column: 9)
!4737 = !DILocation(line: 120, column: 61, scope: !4736)
!4738 = !DILocation(line: 120, column: 47, scope: !4736)
!4739 = !DILocation(line: 120, column: 9, scope: !4722)
!4740 = !DILocation(line: 123, column: 61, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4722, file: !390, line: 123, column: 9)
!4742 = !DILocation(line: 123, column: 47, scope: !4741)
!4743 = !DILocation(line: 123, column: 9, scope: !4722)
!4744 = !DILocation(line: 126, column: 29, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4722, file: !390, line: 126, column: 9)
!4746 = !DILocation(line: 126, column: 14, scope: !4745)
!4747 = !DILocation(line: 126, column: 9, scope: !4722)
!4748 = !DILocation(line: 129, column: 21, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4722, file: !390, line: 129, column: 9)
!4750 = !DILocation(line: 129, column: 58, scope: !4749)
!4751 = !DILocation(line: 129, column: 44, scope: !4749)
!4752 = !DILocation(line: 129, column: 9, scope: !4722)
!4753 = !DILocation(line: 136, column: 1, scope: !4722)
!4754 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !390, file: !390, line: 182, type: !4755, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4757)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!155, !155}
!4757 = !{!4758, !4759}
!4758 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4754, file: !390, line: 182, type: !155)
!4759 = !DILocalVariable(name: "ticks_per_us", scope: !4754, file: !390, line: 184, type: !155)
!4760 = !DILocation(line: 0, scope: !4754)
!4761 = !DILocation(line: 186, column: 20, scope: !4754)
!4762 = !DILocation(line: 186, column: 39, scope: !4754)
!4763 = !DILocation(line: 188, column: 25, scope: !4754)
!4764 = !DILocation(line: 188, column: 5, scope: !4754)
!4765 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !390, file: !390, line: 637, type: !4291, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4766)
!4766 = !{!4767, !4768}
!4767 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4765, file: !390, line: 637, type: !454)
!4768 = !DILocalVariable(name: "int_no", scope: !4765, file: !390, line: 639, type: !2804)
!4769 = !DILocation(line: 0, scope: !4765)
!4770 = !DILocation(line: 641, column: 10, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4765, file: !390, line: 641, column: 9)
!4772 = !DILocation(line: 641, column: 9, scope: !4765)
!4773 = !DILocation(line: 645, column: 14, scope: !4765)
!4774 = !DILocation(line: 646, column: 5, scope: !4765)
!4775 = !DILocation(line: 648, column: 5, scope: !4765)
!4776 = !DILocation(line: 649, column: 1, scope: !4765)
!4777 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !390, file: !390, line: 651, type: !4778, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!4149, !454, !327, !327, !327}
!4780 = !{!4781, !4782, !4783, !4784, !4785}
!4781 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4777, file: !390, line: 651, type: !454)
!4782 = !DILocalVariable(name: "xon", arg: 2, scope: !4777, file: !390, line: 652, type: !327)
!4783 = !DILocalVariable(name: "xoff", arg: 3, scope: !4777, file: !390, line: 653, type: !327)
!4784 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4777, file: !390, line: 654, type: !327)
!4785 = !DILocalVariable(name: "int_no", scope: !4777, file: !390, line: 656, type: !2804)
!4786 = !DILocation(line: 0, scope: !4777)
!4787 = !DILocation(line: 658, column: 10, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4777, file: !390, line: 658, column: 9)
!4789 = !DILocation(line: 658, column: 9, scope: !4777)
!4790 = !DILocation(line: 662, column: 14, scope: !4777)
!4791 = !DILocation(line: 663, column: 5, scope: !4777)
!4792 = !DILocation(line: 665, column: 5, scope: !4777)
!4793 = !DILocation(line: 666, column: 1, scope: !4777)
!4794 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !390, file: !390, line: 668, type: !4291, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4795)
!4795 = !{!4796, !4797}
!4796 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4794, file: !390, line: 668, type: !454)
!4797 = !DILocalVariable(name: "int_no", scope: !4794, file: !390, line: 670, type: !2804)
!4798 = !DILocation(line: 0, scope: !4794)
!4799 = !DILocation(line: 672, column: 10, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4794, file: !390, line: 672, column: 9)
!4801 = !DILocation(line: 672, column: 9, scope: !4794)
!4802 = !DILocation(line: 676, column: 14, scope: !4794)
!4803 = !DILocation(line: 677, column: 5, scope: !4794)
!4804 = !DILocation(line: 679, column: 5, scope: !4794)
!4805 = !DILocation(line: 680, column: 1, scope: !4794)
!4806 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !390, file: !390, line: 683, type: !4807, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!4149, !454, !155}
!4809 = !{!4810, !4811}
!4810 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4806, file: !390, line: 683, type: !454)
!4811 = !DILocalVariable(name: "timeout", arg: 2, scope: !4806, file: !390, line: 683, type: !155)
!4812 = !DILocation(line: 0, scope: !4806)
!4813 = !DILocation(line: 685, column: 10, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4806, file: !390, line: 685, column: 9)
!4815 = !DILocation(line: 685, column: 9, scope: !4806)
!4816 = !DILocation(line: 689, column: 19, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4806, file: !390, line: 689, column: 9)
!4818 = !DILocation(line: 0, scope: !4817)
!4819 = !DILocation(line: 696, column: 1, scope: !4806)
!4820 = distinct !DISubprogram(name: "__io_putchar", scope: !1031, file: !1031, line: 58, type: !4821, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4823)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!7, !7}
!4823 = !{!4824}
!4824 = !DILocalVariable(name: "ch", arg: 1, scope: !4820, file: !1031, line: 58, type: !7)
!4825 = !DILocation(line: 0, scope: !4820)
!4826 = !DILocation(line: 65, column: 35, scope: !4820)
!4827 = !DILocation(line: 65, column: 5, scope: !4820)
!4828 = !DILocation(line: 66, column: 5, scope: !4820)
!4829 = distinct !DISubprogram(name: "main", scope: !1031, file: !1031, line: 178, type: !2780, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1689)
!4830 = !DILocation(line: 181, column: 5, scope: !4829)
!4831 = !DILocation(line: 184, column: 5, scope: !4829)
!4832 = !DILocation(line: 319, column: 3, scope: !4833, inlinedAt: !4834)
!4833 = distinct !DISubprogram(name: "__enable_irq", scope: !2342, file: !2342, line: 317, type: !452, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1689)
!4834 = distinct !DILocation(line: 187, column: 5, scope: !4829)
!4835 = !{i64 513905}
!4836 = !DILocation(line: 496, column: 3, scope: !4837, inlinedAt: !4838)
!4837 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2342, file: !2342, line: 494, type: !452, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1689)
!4838 = distinct !DILocation(line: 188, column: 5, scope: !4829)
!4839 = !{i64 518180}
!4840 = !DILocation(line: 191, column: 5, scope: !4829)
!4841 = !DILocation(line: 193, column: 5, scope: !4829)
!4842 = !DILocation(line: 194, column: 5, scope: !4829)
!4843 = !DILocation(line: 196, column: 5, scope: !4829)
!4844 = !DILocation(line: 197, column: 5, scope: !4829)
!4845 = !DILocation(line: 197, column: 5, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !1031, line: 197, column: 5)
!4847 = distinct !DILexicalBlock(scope: !4829, file: !1031, line: 197, column: 5)
!4848 = distinct !{!4848, !4849, !4850}
!4849 = !DILocation(line: 197, column: 5, scope: !4847)
!4850 = !DILocation(line: 197, column: 13, scope: !4847)
!4851 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1031, file: !1031, line: 97, type: !452, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1689)
!4852 = !DILocation(line: 99, column: 5, scope: !4851)
!4853 = !DILocation(line: 100, column: 1, scope: !4851)
!4854 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1031, file: !1031, line: 107, type: !452, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !1689)
!4855 = !DILocation(line: 110, column: 5, scope: !4854)
!4856 = !DILocation(line: 111, column: 1, scope: !4854)
!4857 = distinct !DISubprogram(name: "irrx_receive_pwd_data", scope: !1031, file: !1031, line: 160, type: !452, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4858)
!4858 = !{!4859, !4860}
!4859 = !DILocalVariable(name: "us", scope: !4857, file: !1031, line: 162, type: !155)
!4860 = !DILocalVariable(name: "format", scope: !4857, file: !1031, line: 169, type: !4861)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_irrx_pwd_config_t", file: !6, line: 219, baseType: !4862)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 216, size: 64, elements: !4863)
!4863 = !{!4864, !4865}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "inverse", scope: !4862, file: !6, line: 217, baseType: !327, size: 8)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "terminate_threshold", scope: !4862, file: !6, line: 218, baseType: !155, size: 32, offset: 32)
!4866 = !DILocation(line: 162, column: 5, scope: !4857)
!4867 = !DILocation(line: 0, scope: !4857)
!4868 = !DILocation(line: 162, column: 14, scope: !4857)
!4869 = !DILocation(line: 163, column: 5, scope: !4857)
!4870 = !DILocation(line: 165, column: 5, scope: !4857)
!4871 = !DILocation(line: 166, column: 5, scope: !4857)
!4872 = !DILocation(line: 168, column: 5, scope: !4857)
!4873 = !DILocation(line: 169, column: 5, scope: !4857)
!4874 = !DILocation(line: 169, column: 27, scope: !4857)
!4875 = !DILocation(line: 172, column: 5, scope: !4857)
!4876 = !DILocation(line: 173, column: 5, scope: !4857)
!4877 = !DILocation(line: 174, column: 5, scope: !4857)
!4878 = !DILocation(line: 176, column: 1, scope: !4857)
!4879 = distinct !DISubprogram(name: "receive_code_pwd", scope: !1031, file: !1031, line: 144, type: !4880, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4881)
!4880 = !DISubroutineType(types: !1033)
!4881 = !{!4882, !4883}
!4882 = !DILocalVariable(name: "received_length", scope: !4879, file: !1031, line: 146, type: !327)
!4883 = !DILocalVariable(name: "data", scope: !4879, file: !1031, line: 147, type: !4884)
!4884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 544, elements: !4885)
!4885 = !{!4886}
!4886 = !DISubrange(count: 68)
!4887 = !DILocation(line: 146, column: 5, scope: !4879)
!4888 = !DILocation(line: 0, scope: !4879)
!4889 = !DILocation(line: 146, column: 13, scope: !4879)
!4890 = !DILocation(line: 147, column: 5, scope: !4879)
!4891 = !DILocation(line: 147, column: 13, scope: !4879)
!4892 = !DILocation(line: 148, column: 5, scope: !4879)
!4893 = !DILocation(line: 149, column: 5, scope: !4879)
!4894 = !DILocation(line: 150, column: 24, scope: !4879)
!4895 = !DILocation(line: 150, column: 5, scope: !4879)
!4896 = !DILocation(line: 151, column: 5, scope: !4879)
!4897 = !DILocation(line: 153, column: 1, scope: !4879)
!4898 = !DILocation(line: 152, column: 5, scope: !4879)
!4899 = distinct !DISubprogram(name: "show_ir_data", scope: !1031, file: !1031, line: 119, type: !4900, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4902)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !37, !155}
!4902 = !{!4903, !4904, !4905, !4906}
!4903 = !DILocalVariable(name: "data", arg: 1, scope: !4899, file: !1031, line: 119, type: !37)
!4904 = !DILocalVariable(name: "length", arg: 2, scope: !4899, file: !1031, line: 119, type: !155)
!4905 = !DILocalVariable(name: "buffer", scope: !4899, file: !1031, line: 121, type: !494)
!4906 = !DILocalVariable(name: "index", scope: !4899, file: !1031, line: 122, type: !155)
!4907 = !DILocation(line: 0, scope: !4899)
!4908 = !DILocation(line: 123, column: 27, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !1031, line: 123, column: 5)
!4910 = distinct !DILexicalBlock(scope: !4899, file: !1031, line: 123, column: 5)
!4911 = !DILocation(line: 123, column: 5, scope: !4910)
!4912 = !DILocation(line: 124, column: 24, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4909, file: !1031, line: 123, column: 46)
!4914 = !DILocation(line: 124, column: 9, scope: !4913)
!4915 = !DILocation(line: 125, column: 19, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !1031, line: 125, column: 13)
!4917 = !DILocation(line: 125, column: 13, scope: !4913)
!4918 = !DILocation(line: 126, column: 13, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4916, file: !1031, line: 125, column: 34)
!4920 = !DILocation(line: 127, column: 9, scope: !4919)
!4921 = !DILocation(line: 128, column: 20, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4913, file: !1031, line: 128, column: 13)
!4923 = !DILocation(line: 128, column: 25, scope: !4922)
!4924 = !DILocation(line: 128, column: 30, scope: !4922)
!4925 = !DILocation(line: 128, column: 13, scope: !4913)
!4926 = !DILocation(line: 129, column: 13, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4922, file: !1031, line: 128, column: 36)
!4928 = !DILocation(line: 130, column: 13, scope: !4927)
!4929 = distinct !{!4929, !4911, !4930}
!4930 = !DILocation(line: 132, column: 5, scope: !4910)
!4931 = !DILocation(line: 133, column: 20, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4899, file: !1031, line: 133, column: 9)
!4933 = !DILocation(line: 134, column: 9, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4932, file: !1031, line: 133, column: 40)
!4935 = !DILocation(line: 135, column: 5, scope: !4934)
!4936 = !DILocation(line: 136, column: 5, scope: !4899)
!4937 = !DILocation(line: 137, column: 1, scope: !4899)
!4938 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1031, file: !1031, line: 75, type: !452, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1030, retainedNodes: !4939)
!4939 = !{!4940}
!4940 = !DILocalVariable(name: "uart_config", scope: !4938, file: !1031, line: 77, type: !4941)
!4941 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !393, line: 378, baseType: !4942)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 373, size: 128, elements: !4943)
!4943 = !{!4944, !4945, !4946, !4947}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4942, file: !393, line: 374, baseType: !469, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4942, file: !393, line: 375, baseType: !471, size: 32, offset: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4942, file: !393, line: 376, baseType: !473, size: 32, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4942, file: !393, line: 377, baseType: !475, size: 32, offset: 96)
!4948 = !DILocation(line: 77, column: 5, scope: !4938)
!4949 = !DILocation(line: 77, column: 23, scope: !4938)
!4950 = !DILocation(line: 79, column: 5, scope: !4938)
!4951 = !DILocation(line: 80, column: 5, scope: !4938)
!4952 = !DILocation(line: 81, column: 5, scope: !4938)
!4953 = !DILocation(line: 82, column: 5, scope: !4938)
!4954 = !DILocation(line: 85, column: 17, scope: !4938)
!4955 = !DILocation(line: 85, column: 26, scope: !4938)
!4956 = !DILocation(line: 86, column: 17, scope: !4938)
!4957 = !DILocation(line: 86, column: 29, scope: !4938)
!4958 = !DILocation(line: 87, column: 17, scope: !4938)
!4959 = !DILocation(line: 87, column: 26, scope: !4938)
!4960 = !DILocation(line: 88, column: 17, scope: !4938)
!4961 = !DILocation(line: 88, column: 24, scope: !4938)
!4962 = !DILocation(line: 89, column: 5, scope: !4938)
!4963 = !DILocation(line: 90, column: 1, scope: !4938)
!4964 = distinct !DISubprogram(name: "SysTick_Set", scope: !504, file: !504, line: 70, type: !4755, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4965)
!4965 = !{!4966, !4967}
!4966 = !DILocalVariable(name: "ticks", arg: 1, scope: !4964, file: !504, line: 70, type: !155)
!4967 = !DILocalVariable(name: "val", scope: !4964, file: !504, line: 72, type: !155)
!4968 = !DILocation(line: 0, scope: !4964)
!4969 = !DILocation(line: 74, column: 16, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4964, file: !504, line: 74, column: 9)
!4971 = !DILocation(line: 74, column: 21, scope: !4970)
!4972 = !DILocation(line: 74, column: 9, scope: !4964)
!4973 = !DILocation(line: 78, column: 20, scope: !4964)
!4974 = !DILocation(line: 80, column: 19, scope: !4964)
!4975 = !DILocation(line: 83, column: 20, scope: !4964)
!4976 = !DILocation(line: 84, column: 20, scope: !4964)
!4977 = !DILocation(line: 86, column: 19, scope: !4964)
!4978 = !DILocation(line: 88, column: 5, scope: !4964)
!4979 = !DILocation(line: 89, column: 1, scope: !4964)
!4980 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !504, file: !504, line: 98, type: !452, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1689)
!4981 = !DILocation(line: 100, column: 28, scope: !4980)
!4982 = !DILocation(line: 101, column: 1, scope: !4980)
!4983 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !504, file: !504, line: 110, type: !2336, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1689)
!4984 = !DILocation(line: 112, column: 12, scope: !4983)
!4985 = !DILocation(line: 112, column: 5, scope: !4983)
!4986 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !504, file: !504, line: 122, type: !452, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1689)
!4987 = !DILocation(line: 124, column: 23, scope: !4986)
!4988 = !DILocation(line: 124, column: 21, scope: !4986)
!4989 = !DILocation(line: 125, column: 1, scope: !4986)
!4990 = distinct !DISubprogram(name: "SystemInit", scope: !504, file: !504, line: 136, type: !452, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1689)
!4991 = !DILocation(line: 140, column: 16, scope: !4990)
!4992 = !DILocation(line: 144, column: 16, scope: !4990)
!4993 = !DILocation(line: 147, column: 16, scope: !4990)
!4994 = !DILocation(line: 150, column: 1, scope: !4990)
!4995 = distinct !DISubprogram(name: "CachePreInit", scope: !504, file: !504, line: 158, type: !452, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1689)
!4996 = !DILocation(line: 161, column: 22, scope: !4995)
!4997 = !DILocation(line: 164, column: 21, scope: !4995)
!4998 = !DILocation(line: 167, column: 21, scope: !4995)
!4999 = !DILocation(line: 170, column: 29, scope: !4995)
!5000 = !DILocation(line: 171, column: 33, scope: !4995)
!5001 = !DILocation(line: 173, column: 28, scope: !4995)
!5002 = !DILocation(line: 178, column: 30, scope: !4995)
!5003 = !DILocation(line: 192, column: 1, scope: !4995)
!5004 = distinct !DISubprogram(name: "_close", scope: !564, file: !564, line: 11, type: !4821, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5005)
!5005 = !{!5006}
!5006 = !DILocalVariable(name: "file", arg: 1, scope: !5004, file: !564, line: 11, type: !7)
!5007 = !DILocation(line: 0, scope: !5004)
!5008 = !DILocation(line: 13, column: 5, scope: !5004)
!5009 = distinct !DISubprogram(name: "_fstat", scope: !564, file: !564, line: 16, type: !5010, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5058)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!7, !7, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 32)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5014, line: 27, size: 704, elements: !5015)
!5014 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5015 = !{!5016, !5019, !5022, !5025, !5028, !5031, !5034, !5035, !5038, !5048, !5049, !5050, !5053, !5056}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5013, file: !5014, line: 29, baseType: !5017, size: 16)
!5017 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !568, line: 161, baseType: !5018)
!5018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !609, line: 56, baseType: !584)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5013, file: !5014, line: 30, baseType: !5020, size: 16, offset: 16)
!5020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !568, line: 139, baseType: !5021)
!5021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !609, line: 75, baseType: !195)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5013, file: !5014, line: 31, baseType: !5023, size: 32, offset: 32)
!5023 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !568, line: 189, baseType: !5024)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !609, line: 90, baseType: !157)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5013, file: !5014, line: 32, baseType: !5026, size: 16, offset: 64)
!5026 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !568, line: 194, baseType: !5027)
!5027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !609, line: 209, baseType: !195)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5013, file: !5014, line: 33, baseType: !5029, size: 16, offset: 80)
!5029 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !568, line: 165, baseType: !5030)
!5030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !609, line: 60, baseType: !195)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5013, file: !5014, line: 34, baseType: !5032, size: 16, offset: 96)
!5032 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !568, line: 169, baseType: !5033)
!5033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !609, line: 63, baseType: !195)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5013, file: !5014, line: 35, baseType: !5017, size: 16, offset: 112)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5013, file: !5014, line: 36, baseType: !5036, size: 32, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !568, line: 157, baseType: !5037)
!5037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !609, line: 102, baseType: !627)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5013, file: !5014, line: 42, baseType: !5039, size: 128, offset: 192)
!5039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5040, line: 47, size: 128, elements: !5041)
!5040 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5041 = !{!5042, !5047}
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5039, file: !5040, line: 48, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5044, line: 42, baseType: !5045)
!5044 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !158, line: 200, baseType: !5046)
!5046 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5039, file: !5040, line: 49, baseType: !610, size: 32, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5013, file: !5014, line: 43, baseType: !5039, size: 128, offset: 320)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5013, file: !5014, line: 44, baseType: !5039, size: 128, offset: 448)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5013, file: !5014, line: 45, baseType: !5051, size: 32, offset: 576)
!5051 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !568, line: 102, baseType: !5052)
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !609, line: 34, baseType: !610)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5013, file: !5014, line: 46, baseType: !5054, size: 32, offset: 608)
!5054 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !568, line: 97, baseType: !5055)
!5055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !609, line: 30, baseType: !610)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5013, file: !5014, line: 48, baseType: !5057, size: 64, offset: 640)
!5057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !360)
!5058 = !{!5059, !5060}
!5059 = !DILocalVariable(name: "file", arg: 1, scope: !5009, file: !564, line: 16, type: !7)
!5060 = !DILocalVariable(name: "st", arg: 2, scope: !5009, file: !564, line: 16, type: !5012)
!5061 = !DILocation(line: 0, scope: !5009)
!5062 = !DILocation(line: 18, column: 5, scope: !5009)
!5063 = distinct !DISubprogram(name: "_isatty", scope: !564, file: !564, line: 22, type: !4821, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5064)
!5064 = !{!5065}
!5065 = !DILocalVariable(name: "file", arg: 1, scope: !5063, file: !564, line: 22, type: !7)
!5066 = !DILocation(line: 0, scope: !5063)
!5067 = !DILocation(line: 24, column: 5, scope: !5063)
!5068 = distinct !DISubprogram(name: "_lseek", scope: !564, file: !564, line: 27, type: !5069, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5071)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!7, !7, !7, !7}
!5071 = !{!5072, !5073, !5074}
!5072 = !DILocalVariable(name: "file", arg: 1, scope: !5068, file: !564, line: 27, type: !7)
!5073 = !DILocalVariable(name: "ptr", arg: 2, scope: !5068, file: !564, line: 27, type: !7)
!5074 = !DILocalVariable(name: "dir", arg: 3, scope: !5068, file: !564, line: 27, type: !7)
!5075 = !DILocation(line: 0, scope: !5068)
!5076 = !DILocation(line: 29, column: 5, scope: !5068)
!5077 = distinct !DISubprogram(name: "_open", scope: !564, file: !564, line: 32, type: !5078, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5080)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!7, !602, !7, !7}
!5080 = !{!5081, !5082, !5083}
!5081 = !DILocalVariable(name: "name", arg: 1, scope: !5077, file: !564, line: 32, type: !602)
!5082 = !DILocalVariable(name: "flags", arg: 2, scope: !5077, file: !564, line: 32, type: !7)
!5083 = !DILocalVariable(name: "mode", arg: 3, scope: !5077, file: !564, line: 32, type: !7)
!5084 = !DILocation(line: 0, scope: !5077)
!5085 = !DILocation(line: 34, column: 5, scope: !5077)
!5086 = distinct !DISubprogram(name: "_read", scope: !564, file: !564, line: 37, type: !5087, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5089)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!7, !7, !569, !7}
!5089 = !{!5090, !5091, !5092}
!5090 = !DILocalVariable(name: "file", arg: 1, scope: !5086, file: !564, line: 37, type: !7)
!5091 = !DILocalVariable(name: "ptr", arg: 2, scope: !5086, file: !564, line: 37, type: !569)
!5092 = !DILocalVariable(name: "len", arg: 3, scope: !5086, file: !564, line: 37, type: !7)
!5093 = !DILocation(line: 0, scope: !5086)
!5094 = !DILocation(line: 39, column: 5, scope: !5086)
!5095 = distinct !DISubprogram(name: "_write", scope: !564, file: !564, line: 52, type: !5087, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5096)
!5096 = !{!5097, !5098, !5099, !5100}
!5097 = !DILocalVariable(name: "file", arg: 1, scope: !5095, file: !564, line: 52, type: !7)
!5098 = !DILocalVariable(name: "ptr", arg: 2, scope: !5095, file: !564, line: 52, type: !569)
!5099 = !DILocalVariable(name: "len", arg: 3, scope: !5095, file: !564, line: 52, type: !7)
!5100 = !DILocalVariable(name: "i", scope: !5095, file: !564, line: 54, type: !7)
!5101 = !DILocation(line: 0, scope: !5095)
!5102 = !DILocation(line: 56, column: 19, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5104, file: !564, line: 56, column: 5)
!5104 = distinct !DILexicalBlock(scope: !5095, file: !564, line: 56, column: 5)
!5105 = !DILocation(line: 56, column: 5, scope: !5104)
!5106 = !DILocation(line: 57, column: 26, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5103, file: !564, line: 56, column: 31)
!5108 = !DILocation(line: 57, column: 22, scope: !5107)
!5109 = !DILocation(line: 57, column: 9, scope: !5107)
!5110 = !DILocation(line: 56, column: 27, scope: !5103)
!5111 = distinct !{!5111, !5105, !5112}
!5112 = !DILocation(line: 58, column: 5, scope: !5104)
!5113 = !DILocation(line: 60, column: 5, scope: !5095)
!5114 = !DILocation(line: 0, scope: !563)
!5115 = !DILocation(line: 70, column: 5, scope: !563)
!5116 = !{i64 1109}
!5117 = !DILocation(line: 72, column: 14, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !563, file: !564, line: 72, column: 9)
!5119 = !DILocation(line: 72, column: 11, scope: !5118)
!5120 = !DILocation(line: 72, column: 9, scope: !563)
!5121 = !DILocation(line: 78, column: 32, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !563, file: !564, line: 78, column: 9)
!5123 = !DILocation(line: 78, column: 15, scope: !5122)
!5124 = !DILocation(line: 89, column: 1, scope: !563)
!5125 = !DILocation(line: 78, column: 9, scope: !563)
!5126 = distinct !DISubprogram(name: "_exit", scope: !564, file: !564, line: 91, type: !712, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5127)
!5127 = !{!5128}
!5128 = !DILocalVariable(name: "__status", arg: 1, scope: !5126, file: !564, line: 91, type: !7)
!5129 = !DILocation(line: 0, scope: !5126)
!5130 = !DILocation(line: 93, column: 5, scope: !5126)
!5131 = !DILocation(line: 94, column: 5, scope: !5126)
!5132 = distinct !{!5132, !5131, !5133}
!5133 = !DILocation(line: 96, column: 5, scope: !5126)
!5134 = distinct !DISubprogram(name: "_kill", scope: !564, file: !564, line: 100, type: !5135, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !5137)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!7, !7, !7}
!5137 = !{!5138, !5139}
!5138 = !DILocalVariable(name: "pid", arg: 1, scope: !5134, file: !564, line: 100, type: !7)
!5139 = !DILocalVariable(name: "sig", arg: 2, scope: !5134, file: !564, line: 100, type: !7)
!5140 = !DILocation(line: 0, scope: !5134)
!5141 = !DILocation(line: 102, column: 5, scope: !5134)
!5142 = !DILocation(line: 103, column: 5, scope: !5134)
!5143 = distinct !DISubprogram(name: "_getpid", scope: !564, file: !564, line: 107, type: !5144, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !1689)
!5144 = !DISubroutineType(types: !5145)
!5145 = !{!5146}
!5146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !568, line: 174, baseType: !5147)
!5147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !609, line: 52, baseType: !7)
!5148 = !DILocation(line: 109, column: 5, scope: !5143)
!5149 = !DILocation(line: 110, column: 5, scope: !5143)
