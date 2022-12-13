; ModuleID = './build/rtc_set_alarm.elf.bc'
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
%struct._IOT_RTC_CTRL_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IOT_RTC_BACKUP_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list = type { i8* }
%struct.hal_cache_region_config_t = type { i32, i32 }
%struct.gpio_status = type { i32, i8, i8, i8 }
%struct.hal_rtc_time_t = type { i8, i8, i8, i8, i8, i8, i8 }
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

@.str = private unnamed_addr constant [23 x i8] c"halRTCUnlock timeout\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"u4Count:%d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"reduce RTC power\0D\0A\00", align 1
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !0
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !19
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !21
@g_cache_status = dso_local global i8 0, align 1, !dbg !59
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !145
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@FRE_DET_CR = dso_local local_unnamed_addr global i32* inttoptr (i32 -2147348192 to i32*), align 4, !dbg !295
@s_hal_rtc_alarm_callback = internal unnamed_addr global void (i8*)* null, align 4, !dbg !398
@s_hal_rtc_user_data = internal unnamed_addr global i8* null, align 4, !dbg !404
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !406
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !463
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@test_rtc_callback = dso_local global i8 0, align 1, !dbg !519
@.str.10 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.12 = private unnamed_addr constant [26 x i8] c"---RTC example begin---\0D\0A\00", align 1
@param = internal global [7 x i8] c"\0F\0B\06\05\0F\1A\0F", align 1, !dbg !526
@.str.3.13 = private unnamed_addr constant [40 x i8] c"Set RTC time: 20%d,%d,%d (%d) %d:%d:%d\0A\00", align 1
@alarm_param = internal global [7 x i8] c"\0F\0B\06\05\0F\1A\19", align 1, !dbg !531
@.str.4 = private unnamed_addr constant [46 x i8] c"Set RTC alarm time: 20%d,%d,%d (%d) %d:%d:%d\0A\00", align 1
@.str.5.14 = private unnamed_addr constant [19 x i8] c"RTC alarm enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"RTC alarm fired \0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"RTC current time: 20%d,%d,%d (%d) %d:%d:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"---RTC example end---\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"example project test success.\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !533
@System_Initialize_Done = internal global i32 0, align 4, !dbg !591
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !593
@end = external dso_local global i8, align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.22 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.23 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:47 GMT +00:00\00", align 1, !dbg !802
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !807
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !813

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %1, metadata !1124, metadata !DIExpression()), !dbg !1128
  %3 = lshr i32 %0, 5, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %3, metadata !1125, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1128
  %4 = trunc i32 %0 to i16, !dbg !1130
  %5 = and i16 %4, 31, !dbg !1130
  call void @llvm.dbg.value(metadata i16 %4, metadata !1127, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1128
  %6 = trunc i32 %3 to i16, !dbg !1131
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1131

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1132
  %9 = zext i16 %5 to i32, !dbg !1135
  %10 = icmp ult i16 %5, 27, !dbg !1135
  br i1 %8, label %11, label %46, !dbg !1136

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1137

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1139
  %14 = xor i32 %13, -1, !dbg !1142
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1143
  %16 = and i32 %15, %14, !dbg !1143
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1143
  br label %44, !dbg !1144

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1145
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1145

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1146
  %21 = and i32 %20, -3, !dbg !1146
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1146
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1149
  %23 = or i32 %22, 2048, !dbg !1149
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1149
  br label %44, !dbg !1150

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1151
  %26 = and i32 %25, -3, !dbg !1151
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1151
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1154
  %28 = or i32 %27, 2048, !dbg !1154
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1154
  br label %44, !dbg !1155

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1156
  %31 = and i32 %30, -3, !dbg !1156
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1156
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1159
  %33 = or i32 %32, 2048, !dbg !1159
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1159
  br label %44, !dbg !1160

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1161
  %36 = and i32 %35, -3, !dbg !1161
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1161
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1164
  %38 = or i32 %37, 2048, !dbg !1164
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1164
  br label %44, !dbg !1165

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1166
  %41 = and i32 %40, -3, !dbg !1166
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1166
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1169
  %43 = or i32 %42, 2048, !dbg !1169
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1169
  br label %44, !dbg !1170

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1171
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1171
  br label %97, !dbg !1172

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1173

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1175
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1178
  %50 = or i32 %49, %48, !dbg !1178
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1178
  br label %68, !dbg !1179

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1180
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1180

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1181
  %55 = or i32 %54, 2050, !dbg !1181
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1181
  br label %68, !dbg !1184

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1185
  %58 = or i32 %57, 2050, !dbg !1185
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1185
  br label %68, !dbg !1188

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1189
  %61 = or i32 %60, 2050, !dbg !1189
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1189
  br label %68, !dbg !1192

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1193
  %64 = or i32 %63, 2050, !dbg !1193
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1193
  br label %68, !dbg !1196

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1197
  %67 = or i32 %66, 2050, !dbg !1197
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1197
  br label %68, !dbg !1200

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1201
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1201
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1202
  %72 = zext i16 %5 to i32, !dbg !1204
  %73 = icmp eq i16 %5, 0, !dbg !1204
  br i1 %71, label %74, label %87, !dbg !1205

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1206

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1208
  %77 = xor i32 %76, -1, !dbg !1211
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1212
  %79 = and i32 %78, %77, !dbg !1212
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1212
  br label %85, !dbg !1213

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1214
  %82 = and i32 %81, -3, !dbg !1214
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1214
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1216
  %84 = or i32 %83, 2048, !dbg !1216
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1216
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1217
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1217
  br label %97, !dbg !1218

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1219

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1221
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1224
  %91 = or i32 %90, %89, !dbg !1224
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1224
  br label %95, !dbg !1225

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1226
  %94 = or i32 %93, 2050, !dbg !1226
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1226
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1228
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1228
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1128
  ret i32 %98, !dbg !1229
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1230 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1232, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8 %1, metadata !1233, metadata !DIExpression()), !dbg !1236
  %3 = lshr i32 %0, 5, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %3, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1236
  %4 = trunc i32 %0 to i16, !dbg !1238
  %5 = and i16 %4, 31, !dbg !1238
  call void @llvm.dbg.value(metadata i16 %5, metadata !1235, metadata !DIExpression()), !dbg !1236
  %6 = trunc i32 %3 to i16, !dbg !1239
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1239

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1240
  %9 = zext i16 %5 to i32, !dbg !1243
  %10 = shl nuw i32 1, %9, !dbg !1243
  br i1 %8, label %12, label %11, !dbg !1244

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1245
  br label %19, !dbg !1247

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1248
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1250
  %15 = zext i16 %5 to i32, !dbg !1252
  %16 = shl nuw i32 1, %15, !dbg !1252
  br i1 %14, label %18, label %17, !dbg !1253

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1254
  br label %19, !dbg !1256

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1257
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1236
  ret i32 %20, !dbg !1259
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1264, metadata !DIExpression()), !dbg !1268
  %2 = lshr i32 %0, 5, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %2, metadata !1265, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1268
  %3 = and i32 %0, 31, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %0, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1268
  call void @llvm.dbg.value(metadata i8 0, metadata !1267, metadata !DIExpression()), !dbg !1268
  %4 = trunc i32 %2 to i16, !dbg !1271
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1271

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1268
  br label %6, !dbg !1272

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1274
  %9 = lshr i32 %8, %3, !dbg !1274
  %10 = trunc i32 %9 to i8, !dbg !1274
  %11 = and i8 %10, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i8 %11, metadata !1267, metadata !DIExpression()), !dbg !1268
  br label %12, !dbg !1275

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1268
  ret i8 %13, !dbg !1276
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1279, metadata !DIExpression()), !dbg !1283
  %2 = lshr i32 %0, 5, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %2, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1283
  %3 = and i32 %0, 31, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1283
  call void @llvm.dbg.value(metadata i8 0, metadata !1282, metadata !DIExpression()), !dbg !1283
  %4 = trunc i32 %2 to i16, !dbg !1286
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1286

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1282, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1283
  br label %6, !dbg !1287

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1289
  %9 = lshr i32 %8, %3, !dbg !1289
  %10 = trunc i32 %9 to i8, !dbg !1289
  %11 = and i8 %10, 1, !dbg !1289
  call void @llvm.dbg.value(metadata i8 %11, metadata !1282, metadata !DIExpression()), !dbg !1283
  br label %12, !dbg !1290

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1283
  ret i8 %13, !dbg !1291
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1292 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1294, metadata !DIExpression()), !dbg !1298
  %2 = lshr i32 %0, 5, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %2, metadata !1295, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  %3 = and i32 %0, 31, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %0, metadata !1296, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1297, metadata !DIExpression()), !dbg !1298
  %4 = trunc i32 %2 to i16, !dbg !1301
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1301

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1297, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1298
  br label %6, !dbg !1302

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1304
  %9 = lshr i32 %8, %3, !dbg !1304
  %10 = trunc i32 %9 to i8, !dbg !1304
  %11 = and i8 %10, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i8 %11, metadata !1297, metadata !DIExpression()), !dbg !1298
  br label %12, !dbg !1305

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1298
  ret i8 %13, !dbg !1306
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1311, metadata !DIExpression()), !dbg !1314
  %2 = lshr i32 %0, 5, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %2, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1314
  %3 = trunc i32 %0 to i16, !dbg !1316
  %4 = and i16 %3, 31, !dbg !1316
  call void @llvm.dbg.value(metadata i16 %3, metadata !1313, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1314
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1317
  %6 = trunc i32 %2 to i16, !dbg !1318
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1318

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1319
  br i1 %8, label %9, label %12, !dbg !1322

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1323
  %11 = shl nuw nsw i32 1, %10, !dbg !1324
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1324
  br label %49, !dbg !1326

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1327
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1327

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1328
  %16 = and i32 %15, -29, !dbg !1328
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1328
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1331
  %18 = or i32 %17, 2052, !dbg !1331
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1331
  br label %49, !dbg !1332

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1333
  %21 = and i32 %20, -29, !dbg !1333
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1333
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1336
  %23 = or i32 %22, 2052, !dbg !1336
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1336
  br label %49, !dbg !1337

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1338
  %26 = and i32 %25, -29, !dbg !1338
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1338
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1341
  %28 = or i32 %27, 2052, !dbg !1341
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1341
  br label %49, !dbg !1342

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1343
  %31 = and i32 %30, -29, !dbg !1343
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1343
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1346
  %33 = or i32 %32, 2052, !dbg !1346
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1346
  br label %49, !dbg !1347

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1348
  %36 = and i32 %35, -29, !dbg !1348
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1348
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1351
  %38 = or i32 %37, 2052, !dbg !1351
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1351
  br label %49, !dbg !1352

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1353
  br i1 %40, label %41, label %46, !dbg !1355

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1356
  %43 = and i32 %42, -29, !dbg !1356
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1356
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1358
  %45 = or i32 %44, 2052, !dbg !1358
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1358
  br label %49, !dbg !1359

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1360
  %48 = shl nuw i32 1, %47, !dbg !1360
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1360
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1314
  ret i32 %50, !dbg !1362
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1365, metadata !DIExpression()), !dbg !1368
  %2 = lshr i32 %0, 5, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %2, metadata !1366, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1368
  %3 = trunc i32 %0 to i16, !dbg !1370
  %4 = and i16 %3, 31, !dbg !1370
  call void @llvm.dbg.value(metadata i16 %3, metadata !1367, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1368
  %5 = trunc i32 %2 to i16, !dbg !1371
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1371

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1372
  br i1 %7, label %8, label %11, !dbg !1375

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1376
  %10 = shl nuw nsw i32 1, %9, !dbg !1377
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1377
  br label %48, !dbg !1379

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1380
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1380

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1381
  %15 = and i32 %14, -29, !dbg !1381
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1381
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1384
  %17 = or i32 %16, 2048, !dbg !1384
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1384
  br label %48, !dbg !1385

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1386
  %20 = and i32 %19, -29, !dbg !1386
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1386
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1389
  %22 = or i32 %21, 2048, !dbg !1389
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1389
  br label %48, !dbg !1390

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1391
  %25 = and i32 %24, -29, !dbg !1391
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1391
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1394
  %27 = or i32 %26, 2048, !dbg !1394
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1394
  br label %48, !dbg !1395

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1396
  %30 = and i32 %29, -29, !dbg !1396
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1396
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1399
  %32 = or i32 %31, 2048, !dbg !1399
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1399
  br label %48, !dbg !1400

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1401
  %35 = and i32 %34, -29, !dbg !1401
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1401
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1404
  %37 = or i32 %36, 2048, !dbg !1404
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1404
  br label %48, !dbg !1405

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1406
  br i1 %39, label %40, label %45, !dbg !1408

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1409
  %42 = and i32 %41, -29, !dbg !1409
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1409
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1411
  %44 = or i32 %43, 2048, !dbg !1411
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1411
  br label %48, !dbg !1412

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1413
  %47 = shl nuw i32 1, %46, !dbg !1413
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1413
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1368
  ret i32 %49, !dbg !1415
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  %2 = lshr i32 %0, 5, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %2, metadata !1419, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1421
  %3 = trunc i32 %0 to i16, !dbg !1423
  %4 = and i16 %3, 31, !dbg !1423
  call void @llvm.dbg.value(metadata i16 %3, metadata !1420, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1421
  %5 = trunc i32 %2 to i16, !dbg !1424
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1424

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1425
  br i1 %7, label %8, label %11, !dbg !1428

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1429
  %10 = shl nuw nsw i32 1, %9, !dbg !1430
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1430
  br label %48, !dbg !1432

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1433
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1433

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1434
  %15 = and i32 %14, -29, !dbg !1434
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1434
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1437
  %17 = or i32 %16, 2048, !dbg !1437
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1437
  br label %48, !dbg !1438

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1439
  %20 = and i32 %19, -29, !dbg !1439
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1439
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1442
  %22 = or i32 %21, 2048, !dbg !1442
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1442
  br label %48, !dbg !1443

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1444
  %25 = and i32 %24, -29, !dbg !1444
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1444
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1447
  %27 = or i32 %26, 2048, !dbg !1447
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1447
  br label %48, !dbg !1448

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1449
  %30 = and i32 %29, -29, !dbg !1449
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1449
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1452
  %32 = or i32 %31, 2048, !dbg !1452
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1452
  br label %48, !dbg !1453

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1454
  %35 = and i32 %34, -29, !dbg !1454
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1454
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1457
  %37 = or i32 %36, 2048, !dbg !1457
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1457
  br label %48, !dbg !1458

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1459
  br i1 %39, label %40, label %45, !dbg !1461

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1462
  %42 = and i32 %41, -29, !dbg !1462
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1462
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1464
  %44 = or i32 %43, 2048, !dbg !1464
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1464
  br label %48, !dbg !1465

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1466
  %47 = shl nuw i32 1, %46, !dbg !1466
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1466
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1421
  ret i32 %49, !dbg !1468
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1474
  %2 = lshr i32 %0, 5, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %2, metadata !1472, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1474
  %3 = trunc i32 %0 to i16, !dbg !1476
  %4 = and i16 %3, 31, !dbg !1476
  call void @llvm.dbg.value(metadata i16 %3, metadata !1473, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1474
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1477
  %6 = trunc i32 %2 to i16, !dbg !1478
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1478

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1479
  br i1 %8, label %9, label %12, !dbg !1482

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1483
  %11 = shl nuw nsw i32 1, %10, !dbg !1484
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1484
  br label %49, !dbg !1486

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1487
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1487

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1488
  %16 = and i32 %15, -29, !dbg !1488
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1488
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1491
  %18 = or i32 %17, 2068, !dbg !1491
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1491
  br label %49, !dbg !1492

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1493
  %21 = and i32 %20, -29, !dbg !1493
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1493
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1496
  %23 = or i32 %22, 2068, !dbg !1496
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1496
  br label %49, !dbg !1497

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1498
  %26 = and i32 %25, -29, !dbg !1498
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1498
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1501
  %28 = or i32 %27, 2068, !dbg !1501
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1501
  br label %49, !dbg !1502

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1503
  %31 = and i32 %30, -29, !dbg !1503
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1503
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1506
  %33 = or i32 %32, 2068, !dbg !1506
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1506
  br label %49, !dbg !1507

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1508
  %36 = and i32 %35, -29, !dbg !1508
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1508
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1511
  %38 = or i32 %37, 2068, !dbg !1511
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1511
  br label %49, !dbg !1512

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1513
  br i1 %40, label %41, label %46, !dbg !1515

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1516
  %43 = and i32 %42, -29, !dbg !1516
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1516
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1518
  %45 = or i32 %44, 2068, !dbg !1518
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1518
  br label %49, !dbg !1519

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1520
  %48 = shl nuw i32 1, %47, !dbg !1520
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1520
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1474
  ret i32 %50, !dbg !1522
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1523 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1525, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8 %1, metadata !1526, metadata !DIExpression()), !dbg !1529
  %3 = lshr i32 %0, 4, !dbg !1530
  call void @llvm.dbg.value(metadata i32 %3, metadata !1527, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1529
  %4 = trunc i32 %0 to i16, !dbg !1531
  %5 = and i16 %4, 15, !dbg !1531
  call void @llvm.dbg.value(metadata i16 %4, metadata !1528, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1529
  %6 = trunc i32 %3 to i16, !dbg !1532
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1532

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1533
  %9 = zext i16 %8 to i32, !dbg !1533
  %10 = shl nuw i32 3, %9, !dbg !1535
  %11 = xor i32 %10, -1, !dbg !1536
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1537
  %13 = and i32 %12, %11, !dbg !1537
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1537
  %14 = lshr i8 %1, 2, !dbg !1538
  %15 = zext i8 %14 to i32, !dbg !1538
  %16 = add nsw i32 %15, -1, !dbg !1539
  %17 = shl i32 %16, %9, !dbg !1540
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1541
  %19 = or i32 %18, %17, !dbg !1541
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1541
  br label %131, !dbg !1542

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1543
  br i1 %21, label %22, label %35, !dbg !1545

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1546
  %24 = zext i16 %23 to i32, !dbg !1546
  %25 = shl nuw nsw i32 3, %24, !dbg !1548
  %26 = xor i32 %25, -1, !dbg !1549
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1550
  %28 = and i32 %27, %26, !dbg !1550
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1550
  %29 = lshr i8 %1, 2, !dbg !1551
  %30 = zext i8 %29 to i32, !dbg !1551
  %31 = add nsw i32 %30, -1, !dbg !1552
  %32 = shl nsw i32 %31, %24, !dbg !1553
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1554
  %34 = or i32 %33, %32, !dbg !1554
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1554
  br label %131, !dbg !1555

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1556
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1556

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1557
  %39 = and i32 %38, -449, !dbg !1557
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1557
  %40 = lshr i8 %1, 1, !dbg !1560
  %41 = zext i8 %40 to i32, !dbg !1560
  %42 = shl nuw nsw i32 %41, 6, !dbg !1561
  %43 = add nsw i32 %42, -64, !dbg !1561
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1562
  %45 = or i32 %44, %43, !dbg !1562
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1562
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1563
  %47 = or i32 %46, 2048, !dbg !1563
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1563
  br label %131, !dbg !1564

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1565
  %50 = and i32 %49, -449, !dbg !1565
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1565
  %51 = lshr i8 %1, 1, !dbg !1568
  %52 = zext i8 %51 to i32, !dbg !1568
  %53 = shl nuw nsw i32 %52, 6, !dbg !1569
  %54 = add nsw i32 %53, -64, !dbg !1569
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1570
  %56 = or i32 %55, %54, !dbg !1570
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1570
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1571
  %58 = or i32 %57, 2048, !dbg !1571
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1571
  br label %131, !dbg !1572

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1573
  %61 = and i32 %60, -449, !dbg !1573
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1573
  %62 = lshr i8 %1, 1, !dbg !1576
  %63 = zext i8 %62 to i32, !dbg !1576
  %64 = shl nuw nsw i32 %63, 6, !dbg !1577
  %65 = add nsw i32 %64, -64, !dbg !1577
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1578
  %67 = or i32 %66, %65, !dbg !1578
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1578
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1579
  %69 = or i32 %68, 2048, !dbg !1579
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1579
  br label %131, !dbg !1580

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1581
  %72 = and i32 %71, -449, !dbg !1581
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1581
  %73 = lshr i8 %1, 1, !dbg !1584
  %74 = zext i8 %73 to i32, !dbg !1584
  %75 = shl nuw nsw i32 %74, 6, !dbg !1585
  %76 = add nsw i32 %75, -64, !dbg !1585
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1586
  %78 = or i32 %77, %76, !dbg !1586
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1586
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1587
  %80 = or i32 %79, 2048, !dbg !1587
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1587
  br label %131, !dbg !1588

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1589
  %83 = and i32 %82, -449, !dbg !1589
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1589
  %84 = lshr i8 %1, 1, !dbg !1592
  %85 = zext i8 %84 to i32, !dbg !1592
  %86 = shl nuw nsw i32 %85, 6, !dbg !1593
  %87 = add nsw i32 %86, -64, !dbg !1593
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1594
  %89 = or i32 %88, %87, !dbg !1594
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1594
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1595
  %91 = or i32 %90, 2048, !dbg !1595
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1595
  br label %131, !dbg !1596

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1597
  br i1 %93, label %94, label %105, !dbg !1599

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1600
  %96 = and i32 %95, -449, !dbg !1600
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1600
  %97 = lshr i8 %1, 1, !dbg !1602
  %98 = zext i8 %97 to i32, !dbg !1602
  %99 = shl nuw nsw i32 %98, 6, !dbg !1603
  %100 = add nsw i32 %99, -64, !dbg !1603
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1604
  %102 = or i32 %101, %100, !dbg !1604
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1604
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1605
  %104 = or i32 %103, 2048, !dbg !1605
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1605
  br label %131, !dbg !1606

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1607
  %107 = zext i16 %106 to i32, !dbg !1607
  %108 = shl nuw i32 3, %107, !dbg !1609
  %109 = xor i32 %108, -1, !dbg !1610
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1611
  %111 = and i32 %110, %109, !dbg !1611
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1611
  %112 = lshr i8 %1, 2, !dbg !1612
  %113 = zext i8 %112 to i32, !dbg !1612
  %114 = add nsw i32 %113, -1, !dbg !1613
  %115 = shl i32 %114, %107, !dbg !1614
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1615
  %117 = or i32 %116, %115, !dbg !1615
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1615
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1616
  %120 = zext i16 %119 to i32, !dbg !1616
  %121 = shl nuw i32 3, %120, !dbg !1617
  %122 = xor i32 %121, -1, !dbg !1618
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1619
  %124 = and i32 %123, %122, !dbg !1619
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1619
  %125 = lshr i8 %1, 2, !dbg !1620
  %126 = zext i8 %125 to i32, !dbg !1620
  %127 = add nsw i32 %126, -1, !dbg !1621
  %128 = shl i32 %127, %120, !dbg !1622
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1623
  %130 = or i32 %129, %128, !dbg !1623
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1623
  br label %131, !dbg !1624

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1529
  ret i32 %132, !dbg !1625
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1631, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8* %1, metadata !1632, metadata !DIExpression()), !dbg !1636
  %3 = lshr i32 %0, 4, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %3, metadata !1633, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1636
  %4 = trunc i32 %0 to i16, !dbg !1638
  %5 = and i16 %4, 15, !dbg !1638
  call void @llvm.dbg.value(metadata i16 %4, metadata !1634, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %6 = trunc i32 %3 to i16, !dbg !1639
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1639

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %8, metadata !1635, metadata !DIExpression()), !dbg !1636
  %9 = shl nuw nsw i16 %5, 1, !dbg !1642
  %10 = zext i16 %9 to i32, !dbg !1642
  %11 = shl nuw i32 3, %10, !dbg !1643
  %12 = and i32 %8, %11, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %12, metadata !1635, metadata !DIExpression()), !dbg !1636
  %13 = lshr i32 %12, %10, !dbg !1645
  %14 = trunc i32 %13 to i8, !dbg !1646
  %15 = shl i8 %14, 2, !dbg !1646
  %16 = add i8 %15, 4, !dbg !1646
  br label %89, !dbg !1647

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1648
  br i1 %18, label %19, label %29, !dbg !1650

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %20, metadata !1635, metadata !DIExpression()), !dbg !1636
  %21 = shl nuw nsw i16 %5, 1, !dbg !1653
  %22 = zext i16 %21 to i32, !dbg !1653
  %23 = shl nuw nsw i32 3, %22, !dbg !1654
  %24 = and i32 %20, %23, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %24, metadata !1635, metadata !DIExpression()), !dbg !1636
  %25 = lshr i32 %24, %22, !dbg !1656
  %26 = trunc i32 %25 to i8, !dbg !1657
  %27 = shl i8 %26, 2, !dbg !1657
  %28 = add i8 %27, 4, !dbg !1657
  br label %89, !dbg !1658

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1659
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1659

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %32, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %32, metadata !1635, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %33 = lshr i32 %32, 5, !dbg !1663
  %34 = trunc i32 %33 to i8, !dbg !1664
  %35 = and i8 %34, 14, !dbg !1664
  %36 = add nuw nsw i8 %35, 2, !dbg !1664
  br label %89, !dbg !1665

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %38, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %38, metadata !1635, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %39 = lshr i32 %38, 5, !dbg !1669
  %40 = trunc i32 %39 to i8, !dbg !1670
  %41 = and i8 %40, 14, !dbg !1670
  %42 = add nuw nsw i8 %41, 2, !dbg !1670
  br label %89, !dbg !1671

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %44, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %44, metadata !1635, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %45 = lshr i32 %44, 5, !dbg !1675
  %46 = trunc i32 %45 to i8, !dbg !1676
  %47 = and i8 %46, 14, !dbg !1676
  %48 = add nuw nsw i8 %47, 2, !dbg !1676
  br label %89, !dbg !1677

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %50, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %50, metadata !1635, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %51 = lshr i32 %50, 5, !dbg !1681
  %52 = trunc i32 %51 to i8, !dbg !1682
  %53 = and i8 %52, 14, !dbg !1682
  %54 = add nuw nsw i8 %53, 2, !dbg !1682
  br label %89, !dbg !1683

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %56, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %56, metadata !1635, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %57 = lshr i32 %56, 5, !dbg !1687
  %58 = trunc i32 %57 to i8, !dbg !1688
  %59 = and i8 %58, 14, !dbg !1688
  %60 = add nuw nsw i8 %59, 2, !dbg !1688
  br label %89, !dbg !1689

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1690
  br i1 %62, label %63, label %69, !dbg !1692

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %64, metadata !1635, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %64, metadata !1635, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  %65 = lshr i32 %64, 5, !dbg !1695
  %66 = trunc i32 %65 to i8, !dbg !1696
  %67 = and i8 %66, 14, !dbg !1696
  %68 = add nuw nsw i8 %67, 2, !dbg !1696
  br label %89, !dbg !1697

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %70, metadata !1635, metadata !DIExpression()), !dbg !1636
  %71 = shl nuw nsw i16 %5, 1, !dbg !1700
  %72 = zext i16 %71 to i32, !dbg !1700
  %73 = shl nuw i32 3, %72, !dbg !1701
  %74 = and i32 %70, %73, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %74, metadata !1635, metadata !DIExpression()), !dbg !1636
  %75 = lshr i32 %74, %72, !dbg !1703
  %76 = trunc i32 %75 to i8, !dbg !1704
  %77 = shl i8 %76, 2, !dbg !1704
  %78 = add i8 %77, 4, !dbg !1704
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %80, metadata !1635, metadata !DIExpression()), !dbg !1636
  %81 = shl nuw nsw i16 %5, 1, !dbg !1706
  %82 = zext i16 %81 to i32, !dbg !1706
  %83 = shl nuw i32 3, %82, !dbg !1707
  %84 = and i32 %80, %83, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %84, metadata !1635, metadata !DIExpression()), !dbg !1636
  %85 = lshr i32 %84, %82, !dbg !1709
  %86 = trunc i32 %85 to i8, !dbg !1710
  %87 = shl i8 %86, 2, !dbg !1710
  %88 = add i8 %87, 4, !dbg !1710
  br label %89, !dbg !1711

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1712
  br label %91, !dbg !1713

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1636
  ret i32 %92, !dbg !1713
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1719, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 %1, metadata !1720, metadata !DIExpression()), !dbg !1723
  %3 = lshr i32 %0, 5, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %3, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1723
  %4 = trunc i32 %0 to i16, !dbg !1725
  %5 = and i16 %4, 31, !dbg !1725
  call void @llvm.dbg.value(metadata i16 %5, metadata !1722, metadata !DIExpression()), !dbg !1723
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1726

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1721, metadata !DIExpression()), !dbg !1723
  %7 = trunc i32 %3 to i16, !dbg !1727
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1727

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1730
  %10 = shl nuw i32 1, %9, !dbg !1732
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1733
  %12 = or i32 %11, %10, !dbg !1733
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1733
  br label %32, !dbg !1734

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1735
  %15 = shl nuw i32 1, %14, !dbg !1736
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1737
  %17 = or i32 %16, %15, !dbg !1737
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1737
  br label %32, !dbg !1738

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1739
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1739

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1742
  %22 = shl nuw i32 1, %21, !dbg !1744
  %23 = xor i32 %22, -1, !dbg !1745
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1746
  %25 = and i32 %24, %23, !dbg !1746
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1746
  br label %32, !dbg !1747

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1748
  %28 = shl nuw i32 1, %27, !dbg !1749
  %29 = xor i32 %28, -1, !dbg !1750
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1751
  %31 = and i32 %30, %29, !dbg !1751
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1751
  br label %32, !dbg !1752

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1753
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1760, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %1, metadata !1761, metadata !DIExpression()), !dbg !1763
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
  ], !dbg !1764

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %4, metadata !1762, metadata !DIExpression()), !dbg !1763
  %5 = and i32 %4, -16, !dbg !1767
  call void @llvm.dbg.value(metadata i32 %5, metadata !1762, metadata !DIExpression()), !dbg !1763
  %6 = zext i8 %1 to i32, !dbg !1768
  %7 = or i32 %5, %6, !dbg !1769
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1770
  br label %187, !dbg !1771

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %9, metadata !1762, metadata !DIExpression()), !dbg !1763
  %10 = and i32 %9, -241, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %10, metadata !1762, metadata !DIExpression()), !dbg !1763
  %11 = zext i8 %1 to i32, !dbg !1774
  %12 = shl nuw nsw i32 %11, 4, !dbg !1775
  %13 = or i32 %10, %12, !dbg !1776
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1777
  br label %187, !dbg !1778

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %15, metadata !1762, metadata !DIExpression()), !dbg !1763
  %16 = and i32 %15, -3841, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %16, metadata !1762, metadata !DIExpression()), !dbg !1763
  %17 = zext i8 %1 to i32, !dbg !1781
  %18 = shl nuw nsw i32 %17, 8, !dbg !1782
  %19 = or i32 %16, %18, !dbg !1783
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1784
  br label %187, !dbg !1785

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %21, metadata !1762, metadata !DIExpression()), !dbg !1763
  %22 = and i32 %21, -61441, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %22, metadata !1762, metadata !DIExpression()), !dbg !1763
  %23 = zext i8 %1 to i32, !dbg !1788
  %24 = shl nuw nsw i32 %23, 12, !dbg !1789
  %25 = or i32 %22, %24, !dbg !1790
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1791
  br label %187, !dbg !1792

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %27, metadata !1762, metadata !DIExpression()), !dbg !1763
  %28 = and i32 %27, -983041, !dbg !1794
  call void @llvm.dbg.value(metadata i32 %28, metadata !1762, metadata !DIExpression()), !dbg !1763
  %29 = zext i8 %1 to i32, !dbg !1795
  %30 = shl nuw nsw i32 %29, 16, !dbg !1796
  %31 = or i32 %28, %30, !dbg !1797
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1798
  br label %187, !dbg !1799

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %33, metadata !1762, metadata !DIExpression()), !dbg !1763
  %34 = and i32 %33, -15728641, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %34, metadata !1762, metadata !DIExpression()), !dbg !1763
  %35 = zext i8 %1 to i32, !dbg !1802
  %36 = shl nuw nsw i32 %35, 20, !dbg !1803
  %37 = or i32 %34, %36, !dbg !1804
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1805
  br label %187, !dbg !1806

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %39, metadata !1762, metadata !DIExpression()), !dbg !1763
  %40 = and i32 %39, -251658241, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %40, metadata !1762, metadata !DIExpression()), !dbg !1763
  %41 = zext i8 %1 to i32, !dbg !1809
  %42 = shl nuw i32 %41, 24, !dbg !1810
  %43 = or i32 %40, %42, !dbg !1811
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1812
  br label %187, !dbg !1813

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %45, metadata !1762, metadata !DIExpression()), !dbg !1763
  %46 = and i32 %45, 268435455, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %46, metadata !1762, metadata !DIExpression()), !dbg !1763
  %47 = zext i8 %1 to i32, !dbg !1816
  %48 = shl i32 %47, 28, !dbg !1817
  %49 = or i32 %46, %48, !dbg !1818
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1819
  br label %187, !dbg !1820

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %51, metadata !1762, metadata !DIExpression()), !dbg !1763
  %52 = and i32 %51, -16, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %52, metadata !1762, metadata !DIExpression()), !dbg !1763
  %53 = zext i8 %1 to i32, !dbg !1823
  %54 = or i32 %52, %53, !dbg !1824
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1825
  br label %187, !dbg !1826

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %56, metadata !1762, metadata !DIExpression()), !dbg !1763
  %57 = and i32 %56, -241, !dbg !1828
  call void @llvm.dbg.value(metadata i32 %57, metadata !1762, metadata !DIExpression()), !dbg !1763
  %58 = zext i8 %1 to i32, !dbg !1829
  %59 = shl nuw nsw i32 %58, 4, !dbg !1830
  %60 = or i32 %57, %59, !dbg !1831
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1832
  br label %187, !dbg !1833

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %62, metadata !1762, metadata !DIExpression()), !dbg !1763
  %63 = and i32 %62, -3841, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %63, metadata !1762, metadata !DIExpression()), !dbg !1763
  %64 = zext i8 %1 to i32, !dbg !1836
  %65 = shl nuw nsw i32 %64, 8, !dbg !1837
  %66 = or i32 %63, %65, !dbg !1838
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1839
  br label %187, !dbg !1840

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %68, metadata !1762, metadata !DIExpression()), !dbg !1763
  %69 = and i32 %68, -61441, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %69, metadata !1762, metadata !DIExpression()), !dbg !1763
  %70 = zext i8 %1 to i32, !dbg !1843
  %71 = shl nuw nsw i32 %70, 12, !dbg !1844
  %72 = or i32 %69, %71, !dbg !1845
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1846
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1847

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !1849
  br label %187, !dbg !1851

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %76, metadata !1762, metadata !DIExpression()), !dbg !1763
  %77 = and i32 %76, -983041, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %77, metadata !1762, metadata !DIExpression()), !dbg !1763
  %78 = zext i8 %1 to i32, !dbg !1854
  %79 = shl nuw nsw i32 %78, 16, !dbg !1855
  %80 = or i32 %77, %79, !dbg !1856
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1857
  %81 = and i8 %1, -2, !dbg !1858
  %82 = icmp eq i8 %81, 4, !dbg !1858
  br i1 %82, label %83, label %187, !dbg !1858

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !1860
  br label %187, !dbg !1862

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %86, metadata !1762, metadata !DIExpression()), !dbg !1763
  %87 = and i32 %86, -15728641, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %87, metadata !1762, metadata !DIExpression()), !dbg !1763
  %88 = zext i8 %1 to i32, !dbg !1865
  %89 = shl nuw nsw i32 %88, 20, !dbg !1866
  %90 = or i32 %87, %89, !dbg !1867
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1868
  %91 = icmp eq i8 %1, 6, !dbg !1869
  br i1 %91, label %92, label %187, !dbg !1871

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !1872
  br label %187, !dbg !1874

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %95, metadata !1762, metadata !DIExpression()), !dbg !1763
  %96 = and i32 %95, -251658241, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %96, metadata !1762, metadata !DIExpression()), !dbg !1763
  %97 = zext i8 %1 to i32, !dbg !1877
  %98 = shl nuw i32 %97, 24, !dbg !1878
  %99 = or i32 %96, %98, !dbg !1879
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1880
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1881

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !1883
  br label %187, !dbg !1885

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %103, metadata !1762, metadata !DIExpression()), !dbg !1763
  %104 = and i32 %103, 268435455, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %104, metadata !1762, metadata !DIExpression()), !dbg !1763
  %105 = zext i8 %1 to i32, !dbg !1888
  %106 = shl i32 %105, 28, !dbg !1889
  %107 = or i32 %104, %106, !dbg !1890
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1891
  %108 = and i8 %1, -3, !dbg !1892
  %109 = icmp eq i8 %108, 4, !dbg !1892
  br i1 %109, label %110, label %187, !dbg !1892

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !1894
  br label %187, !dbg !1896

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %113, metadata !1762, metadata !DIExpression()), !dbg !1763
  %114 = and i32 %113, -16, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %114, metadata !1762, metadata !DIExpression()), !dbg !1763
  %115 = zext i8 %1 to i32, !dbg !1899
  %116 = or i32 %114, %115, !dbg !1900
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1901
  %117 = and i8 %1, -3, !dbg !1902
  %118 = icmp eq i8 %117, 4, !dbg !1902
  br i1 %118, label %119, label %187, !dbg !1902

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !1904
  br label %187, !dbg !1906

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %122, metadata !1762, metadata !DIExpression()), !dbg !1763
  %123 = and i32 %122, -241, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %123, metadata !1762, metadata !DIExpression()), !dbg !1763
  %124 = zext i8 %1 to i32, !dbg !1909
  %125 = shl nuw nsw i32 %124, 4, !dbg !1910
  %126 = or i32 %123, %125, !dbg !1911
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1912
  br label %187, !dbg !1913

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %128, metadata !1762, metadata !DIExpression()), !dbg !1763
  %129 = and i32 %128, -3841, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %129, metadata !1762, metadata !DIExpression()), !dbg !1763
  %130 = zext i8 %1 to i32, !dbg !1916
  %131 = shl nuw nsw i32 %130, 8, !dbg !1917
  %132 = or i32 %129, %131, !dbg !1918
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1919
  br label %187, !dbg !1920

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %134, metadata !1762, metadata !DIExpression()), !dbg !1763
  %135 = and i32 %134, -61441, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %135, metadata !1762, metadata !DIExpression()), !dbg !1763
  %136 = zext i8 %1 to i32, !dbg !1923
  %137 = shl nuw nsw i32 %136, 12, !dbg !1924
  %138 = or i32 %135, %137, !dbg !1925
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1926
  br label %187, !dbg !1927

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %140, metadata !1762, metadata !DIExpression()), !dbg !1763
  %141 = and i32 %140, -983041, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %141, metadata !1762, metadata !DIExpression()), !dbg !1763
  %142 = zext i8 %1 to i32, !dbg !1930
  %143 = shl nuw nsw i32 %142, 16, !dbg !1931
  %144 = or i32 %141, %143, !dbg !1932
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1933
  br label %187, !dbg !1934

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %146, metadata !1762, metadata !DIExpression()), !dbg !1763
  %147 = and i32 %146, -15728641, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %147, metadata !1762, metadata !DIExpression()), !dbg !1763
  %148 = zext i8 %1 to i32, !dbg !1937
  %149 = shl nuw nsw i32 %148, 20, !dbg !1938
  %150 = or i32 %147, %149, !dbg !1939
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1940
  br label %187, !dbg !1941

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %152, metadata !1762, metadata !DIExpression()), !dbg !1763
  %153 = and i32 %152, -251658241, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %153, metadata !1762, metadata !DIExpression()), !dbg !1763
  %154 = zext i8 %1 to i32, !dbg !1944
  %155 = shl nuw i32 %154, 24, !dbg !1945
  %156 = or i32 %153, %155, !dbg !1946
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1947
  br label %187, !dbg !1948

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %158, metadata !1762, metadata !DIExpression()), !dbg !1763
  %159 = and i32 %158, 268435455, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %159, metadata !1762, metadata !DIExpression()), !dbg !1763
  %160 = zext i8 %1 to i32, !dbg !1951
  %161 = shl i32 %160, 28, !dbg !1952
  %162 = or i32 %159, %161, !dbg !1953
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1954
  br label %187, !dbg !1955

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %164, metadata !1762, metadata !DIExpression()), !dbg !1763
  %165 = and i32 %164, -241, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %165, metadata !1762, metadata !DIExpression()), !dbg !1763
  %166 = zext i8 %1 to i32, !dbg !1958
  %167 = shl nuw nsw i32 %166, 4, !dbg !1959
  %168 = or i32 %165, %167, !dbg !1960
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1961
  br label %187, !dbg !1962

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1963
  call void @llvm.dbg.value(metadata i32 %170, metadata !1762, metadata !DIExpression()), !dbg !1763
  %171 = and i32 %170, -3841, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %171, metadata !1762, metadata !DIExpression()), !dbg !1763
  %172 = zext i8 %1 to i32, !dbg !1965
  %173 = shl nuw nsw i32 %172, 8, !dbg !1966
  %174 = or i32 %171, %173, !dbg !1967
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1968
  br label %187, !dbg !1969

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %176, metadata !1762, metadata !DIExpression()), !dbg !1763
  %177 = and i32 %176, -61441, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %177, metadata !1762, metadata !DIExpression()), !dbg !1763
  %178 = zext i8 %1 to i32, !dbg !1972
  %179 = shl nuw nsw i32 %178, 12, !dbg !1973
  %180 = or i32 %177, %179, !dbg !1974
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1975
  br label %187, !dbg !1976

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %182, metadata !1762, metadata !DIExpression()), !dbg !1763
  %183 = and i32 %182, -983041, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %183, metadata !1762, metadata !DIExpression()), !dbg !1763
  %184 = zext i8 %1 to i32, !dbg !1979
  %185 = shl nuw nsw i32 %184, 16, !dbg !1980
  %186 = or i32 %183, %185, !dbg !1981
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1982
  br label %187, !dbg !1983

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1984
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCUnlock() local_unnamed_addr #3 !dbg !1985 {
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !1990, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i32 0, metadata !1992, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !1990, metadata !DIExpression()), !dbg !1993
  br label %1, !dbg !1994

1:                                                ; preds = %8, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %8 ], !dbg !1993
  call void @llvm.dbg.value(metadata i32 %2, metadata !1992, metadata !DIExpression()), !dbg !1993
  %3 = load volatile i32, i32* inttoptr (i32 -2096365312 to i32*), align 256, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %3, metadata !1991, metadata !DIExpression()), !dbg !1993
  %4 = add nuw nsw i32 %2, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %4, metadata !1992, metadata !DIExpression()), !dbg !1993
  %5 = icmp eq i32 %2, 16777216, !dbg !1999
  br i1 %5, label %6, label %8, !dbg !2000

6:                                                ; preds = %1
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #15, !dbg !2001
  br label %13, !dbg !2003

8:                                                ; preds = %1
  %9 = and i32 %3, 2, !dbg !2004
  %10 = icmp eq i32 %9, 0, !dbg !2005
  br i1 %10, label %1, label %11, !dbg !2006, !llvm.loop !2007

11:                                               ; preds = %8
  %12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef %4) #15, !dbg !2009
  store volatile i32 198, i32* inttoptr (i32 -2096365564 to i32*), align 4, !dbg !2010
  store volatile i32 154, i32* inttoptr (i32 -2096365560 to i32*), align 8, !dbg !2011
  store volatile i32 89, i32* inttoptr (i32 -2096365556 to i32*), align 4, !dbg !2012
  store volatile i32 163, i32* inttoptr (i32 -2096365552 to i32*), align 16, !dbg !2013
  store volatile i32 87, i32* inttoptr (i32 -2096365548 to i32*), align 4, !dbg !2014
  store volatile i32 103, i32* inttoptr (i32 -2096365544 to i32*), align 8, !dbg !2015
  store volatile i32 210, i32* inttoptr (i32 -2096365540 to i32*), align 4, !dbg !2016
  br label %13, !dbg !2017

13:                                               ; preds = %11, %6
  %14 = phi i8 [ 1, %6 ], [ 0, %11 ], !dbg !1993
  ret i8 %14, !dbg !2018
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halRTCCheckInhibit() local_unnamed_addr #0 !dbg !2019 {
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2021, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32 16777215, metadata !2024, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2021, metadata !DIExpression()), !dbg !2025
  br label %1, !dbg !2026

1:                                                ; preds = %1, %0
  call void @llvm.dbg.value(metadata i8 poison, metadata !2023, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 poison, metadata !2023, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2025
  %2 = load volatile i32, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2027
  %3 = and i32 %2, 64, !dbg !2028
  %4 = icmp eq i32 %3, 0, !dbg !2028
  br i1 %4, label %5, label %1, !dbg !2029, !llvm.loop !2031

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2025
  ret i8 0, !dbg !2033
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @halRTCGetTime(i8* nocapture noundef writeonly %0, i8* nocapture noundef writeonly %1, i8* nocapture noundef writeonly %2, i8* nocapture noundef writeonly %3, i8* nocapture noundef writeonly %4, i8* nocapture noundef writeonly %5, i8* nocapture noundef writeonly %6) local_unnamed_addr #0 !dbg !2034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2039, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %1, metadata !2040, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %2, metadata !2041, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %3, metadata !2042, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %4, metadata !2043, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %5, metadata !2044, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* %6, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2046, metadata !DIExpression()), !dbg !2048
  %8 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2049
  %9 = load volatile i32, i32* inttoptr (i32 -2096365504 to i32*), align 64, !dbg !2051
  %10 = trunc i32 %9 to i8, !dbg !2053
  store i8 %10, i8* %0, align 1, !dbg !2054
  %11 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2055
  %12 = load volatile i32, i32* inttoptr (i32 -2096365500 to i32*), align 4, !dbg !2057
  %13 = trunc i32 %12 to i8, !dbg !2059
  store i8 %13, i8* %1, align 1, !dbg !2060
  %14 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2061
  %15 = load volatile i32, i32* inttoptr (i32 -2096365496 to i32*), align 8, !dbg !2063
  %16 = trunc i32 %15 to i8, !dbg !2065
  store i8 %16, i8* %2, align 1, !dbg !2066
  %17 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2067
  %18 = load volatile i32, i32* inttoptr (i32 -2096365492 to i32*), align 4, !dbg !2069
  %19 = trunc i32 %18 to i8, !dbg !2071
  store i8 %19, i8* %3, align 1, !dbg !2072
  %20 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2073
  %21 = load volatile i32, i32* inttoptr (i32 -2096365488 to i32*), align 16, !dbg !2075
  %22 = trunc i32 %21 to i8, !dbg !2077
  store i8 %22, i8* %4, align 1, !dbg !2078
  %23 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2079
  %24 = load volatile i32, i32* inttoptr (i32 -2096365484 to i32*), align 4, !dbg !2081
  %25 = trunc i32 %24 to i8, !dbg !2083
  store i8 %25, i8* %5, align 1, !dbg !2084
  %26 = tail call zeroext i8 @halRTCCheckInhibit() #14, !dbg !2085
  %27 = load volatile i32, i32* inttoptr (i32 -2096365480 to i32*), align 8, !dbg !2087
  %28 = trunc i32 %27 to i8, !dbg !2089
  store i8 %28, i8* %6, align 1, !dbg !2090
  ret i8 0, !dbg !2091
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCSetTime(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #3 !dbg !2092 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2096, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %1, metadata !2097, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %2, metadata !2098, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %3, metadata !2099, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %4, metadata !2100, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %5, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 %6, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 1, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2103, metadata !DIExpression()), !dbg !2105
  %8 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2106
  call void @llvm.dbg.value(metadata i8 %8, metadata !2104, metadata !DIExpression()), !dbg !2105
  %9 = icmp eq i8 %8, 0, !dbg !2107
  br i1 %9, label %10, label %22, !dbg !2109

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2110
  %12 = or i32 %11, 1, !dbg !2110
  store volatile i32 %12, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2110
  %13 = zext i8 %0 to i32, !dbg !2112
  store volatile i32 %13, i32* inttoptr (i32 -2096365504 to i32*), align 64, !dbg !2113
  %14 = zext i8 %1 to i32, !dbg !2114
  store volatile i32 %14, i32* inttoptr (i32 -2096365500 to i32*), align 4, !dbg !2115
  %15 = zext i8 %2 to i32, !dbg !2116
  store volatile i32 %15, i32* inttoptr (i32 -2096365496 to i32*), align 8, !dbg !2117
  %16 = zext i8 %3 to i32, !dbg !2118
  store volatile i32 %16, i32* inttoptr (i32 -2096365492 to i32*), align 4, !dbg !2119
  %17 = zext i8 %4 to i32, !dbg !2120
  store volatile i32 %17, i32* inttoptr (i32 -2096365488 to i32*), align 16, !dbg !2121
  %18 = zext i8 %5 to i32, !dbg !2122
  store volatile i32 %18, i32* inttoptr (i32 -2096365484 to i32*), align 4, !dbg !2123
  %19 = zext i8 %6 to i32, !dbg !2124
  store volatile i32 %19, i32* inttoptr (i32 -2096365480 to i32*), align 8, !dbg !2125
  %20 = load volatile i32, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2126
  %21 = and i32 %20, -2, !dbg !2126
  store volatile i32 %21, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2126
  br label %22, !dbg !2127

22:                                               ; preds = %10, %7
  ret i8 %8, !dbg !2128
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCInit() local_unnamed_addr #3 !dbg !2129 {
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 1, metadata !2132, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2131, metadata !DIExpression()), !dbg !2133
  %1 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2134
  call void @llvm.dbg.value(metadata i8 %1, metadata !2132, metadata !DIExpression()), !dbg !2133
  %2 = icmp eq i8 %1, 0, !dbg !2135
  br i1 %2, label %3, label %15, !dbg !2137

3:                                                ; preds = %0
  %4 = load volatile i32, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2138
  %5 = and i32 %4, -129, !dbg !2138
  store volatile i32 %5, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2138
  %6 = load volatile i32, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2140
  %7 = and i32 %6, -33, !dbg !2140
  store volatile i32 %7, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2140
  %8 = load volatile i32, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2141
  %9 = and i32 %8, -17, !dbg !2141
  store volatile i32 %9, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2141
  %10 = load volatile i32, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2142
  %11 = and i32 %10, -16, !dbg !2142
  store volatile i32 %11, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2142
  %12 = load volatile i32, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2143
  %13 = or i32 %12, 16, !dbg !2143
  store volatile i32 %13, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2143
  %14 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !2144
  br label %15, !dbg !2145

15:                                               ; preds = %3, %0
  ret i8 %1, !dbg !2146
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCDeInit() local_unnamed_addr #3 !dbg !2147 {
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2149, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i8 1, metadata !2150, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2149, metadata !DIExpression()), !dbg !2151
  %1 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2152
  call void @llvm.dbg.value(metadata i8 %1, metadata !2150, metadata !DIExpression()), !dbg !2151
  %2 = icmp eq i8 %1, 0, !dbg !2153
  br i1 %2, label %3, label %6, !dbg !2155

3:                                                ; preds = %0
  %4 = load volatile i32, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2156
  %5 = or i32 %4, 1, !dbg !2156
  store volatile i32 %5, i32* inttoptr (i32 -2096365536 to i32*), align 32, !dbg !2156
  br label %6, !dbg !2158

6:                                                ; preds = %3, %0
  ret i8 %1, !dbg !2159
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCSetAlarm(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #3 !dbg !2160 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2164, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %1, metadata !2165, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %2, metadata !2166, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %3, metadata !2167, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %4, metadata !2168, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %5, metadata !2169, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %6, metadata !2170, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 %7, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2172, metadata !DIExpression()), !dbg !2174
  %9 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2175
  call void @llvm.dbg.value(metadata i8 %9, metadata !2173, metadata !DIExpression()), !dbg !2174
  %10 = icmp eq i8 %9, 0, !dbg !2176
  br i1 %10, label %11, label %20, !dbg !2178

11:                                               ; preds = %8
  %12 = zext i8 %0 to i32, !dbg !2179
  store volatile i32 %12, i32* inttoptr (i32 -2096365472 to i32*), align 32, !dbg !2181
  %13 = zext i8 %1 to i32, !dbg !2182
  store volatile i32 %13, i32* inttoptr (i32 -2096365468 to i32*), align 4, !dbg !2183
  %14 = zext i8 %2 to i32, !dbg !2184
  store volatile i32 %14, i32* inttoptr (i32 -2096365464 to i32*), align 8, !dbg !2185
  %15 = zext i8 %3 to i32, !dbg !2186
  store volatile i32 %15, i32* inttoptr (i32 -2096365460 to i32*), align 4, !dbg !2187
  %16 = zext i8 %4 to i32, !dbg !2188
  store volatile i32 %16, i32* inttoptr (i32 -2096365456 to i32*), align 16, !dbg !2189
  %17 = zext i8 %5 to i32, !dbg !2190
  store volatile i32 %17, i32* inttoptr (i32 -2096365452 to i32*), align 4, !dbg !2191
  %18 = zext i8 %6 to i32, !dbg !2192
  store volatile i32 %18, i32* inttoptr (i32 -2096365448 to i32*), align 8, !dbg !2193
  %19 = zext i8 %7 to i32, !dbg !2194
  store volatile i32 %19, i32* inttoptr (i32 -2096365444 to i32*), align 4, !dbg !2195
  br label %20, !dbg !2196

20:                                               ; preds = %11, %8
  ret i8 %9, !dbg !2197
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halRTCGetAlarm(i8* nocapture noundef writeonly %0, i8* nocapture noundef writeonly %1, i8* nocapture noundef writeonly %2, i8* nocapture noundef writeonly %3, i8* nocapture noundef writeonly %4, i8* nocapture noundef writeonly %5, i8* nocapture noundef writeonly %6) local_unnamed_addr #2 !dbg !2198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2200, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %1, metadata !2201, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %2, metadata !2202, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %3, metadata !2203, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %4, metadata !2204, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %5, metadata !2205, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %6, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2207, metadata !DIExpression()), !dbg !2209
  %8 = load volatile i32, i32* inttoptr (i32 -2096365472 to i32*), align 32, !dbg !2210
  %9 = trunc i32 %8 to i8, !dbg !2211
  store i8 %9, i8* %0, align 1, !dbg !2212
  %10 = load volatile i32, i32* inttoptr (i32 -2096365468 to i32*), align 4, !dbg !2213
  %11 = trunc i32 %10 to i8, !dbg !2214
  store i8 %11, i8* %1, align 1, !dbg !2215
  %12 = load volatile i32, i32* inttoptr (i32 -2096365464 to i32*), align 8, !dbg !2216
  %13 = trunc i32 %12 to i8, !dbg !2217
  store i8 %13, i8* %2, align 1, !dbg !2218
  %14 = load volatile i32, i32* inttoptr (i32 -2096365460 to i32*), align 4, !dbg !2219
  %15 = trunc i32 %14 to i8, !dbg !2220
  store i8 %15, i8* %3, align 1, !dbg !2221
  %16 = load volatile i32, i32* inttoptr (i32 -2096365456 to i32*), align 16, !dbg !2222
  %17 = trunc i32 %16 to i8, !dbg !2223
  store i8 %17, i8* %4, align 1, !dbg !2224
  %18 = load volatile i32, i32* inttoptr (i32 -2096365452 to i32*), align 4, !dbg !2225
  %19 = trunc i32 %18 to i8, !dbg !2226
  store i8 %19, i8* %5, align 1, !dbg !2227
  %20 = load volatile i32, i32* inttoptr (i32 -2096365448 to i32*), align 8, !dbg !2228
  %21 = trunc i32 %20 to i8, !dbg !2229
  store i8 %21, i8* %6, align 1, !dbg !2230
  ret i8 0, !dbg !2231
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCEnableAlarm(i8 noundef zeroext %0) local_unnamed_addr #3 !dbg !2232 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !2236, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 0, metadata !2238, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2237, metadata !DIExpression()), !dbg !2239
  %2 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2240
  call void @llvm.dbg.value(metadata i8 %2, metadata !2238, metadata !DIExpression()), !dbg !2239
  %3 = icmp eq i8 %2, 0, !dbg !2241
  br i1 %3, label %4, label %10, !dbg !2243

4:                                                ; preds = %1
  %5 = icmp eq i8 %0, 1, !dbg !2244
  %6 = load volatile i32, i32* inttoptr (i32 -2096365444 to i32*), align 4, !dbg !2247
  %7 = and i32 %6, -2, !dbg !2248
  %8 = zext i1 %5 to i32, !dbg !2248
  %9 = or i32 %7, %8, !dbg !2248
  store volatile i32 %9, i32* inttoptr (i32 -2096365444 to i32*), align 4, !dbg !2247
  br label %10, !dbg !2249

10:                                               ; preds = %4, %1
  ret i8 %2, !dbg !2249
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCEnterMode() local_unnamed_addr #3 !dbg !2250 {
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i8 0, metadata !2253, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !2252, metadata !DIExpression()), !dbg !2254
  %1 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2255
  call void @llvm.dbg.value(metadata i8 %1, metadata !2253, metadata !DIExpression()), !dbg !2254
  %2 = icmp eq i8 %1, 0, !dbg !2256
  br i1 %2, label %3, label %10, !dbg !2258

3:                                                ; preds = %0
  %4 = load volatile i32, i32* inttoptr (i32 -2096365524 to i32*), align 4, !dbg !2259
  %5 = and i32 %4, -8, !dbg !2259
  store volatile i32 %5, i32* inttoptr (i32 -2096365524 to i32*), align 4, !dbg !2259
  %6 = load volatile i32, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2261
  %7 = or i32 %6, 16, !dbg !2261
  store volatile i32 %7, i32* inttoptr (i32 -2096365528 to i32*), align 8, !dbg !2261
  %8 = load volatile i32, i32* inttoptr (i32 -2096365520 to i32*), align 16, !dbg !2262
  %9 = and i32 %8, -2, !dbg !2262
  store volatile i32 %9, i32* inttoptr (i32 -2096365520 to i32*), align 16, !dbg !2262
  br label %10, !dbg !2263

10:                                               ; preds = %3, %0
  ret i8 %1, !dbg !2264
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCSetBackup(i16 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 !dbg !2265 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2272, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %1, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i16 %2, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2276
  %4 = tail call fastcc zeroext i8 @halRTCWriteBackup(i16 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) #14, !dbg !2277
  call void @llvm.dbg.value(metadata i8 %4, metadata !2275, metadata !DIExpression()), !dbg !2276
  ret i8 %4, !dbg !2278
}

; Function Attrs: noinline nounwind optsize
define internal fastcc zeroext i8 @halRTCWriteBackup(i16 noundef zeroext %0, i8* noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #3 !dbg !2279 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2281, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %1, metadata !2282, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i16 %2, metadata !2283, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2284, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_BACKUP_TypeDef* null, metadata !2285, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32* null, metadata !2286, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2287, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i16 %2, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i16 0, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_BACKUP_TypeDef* inttoptr (i32 -2096365248 to %struct._IOT_RTC_BACKUP_TypeDef*), metadata !2285, metadata !DIExpression()), !dbg !2292
  %4 = zext i16 %0 to i32, !dbg !2293
  %5 = zext i16 %2 to i32, !dbg !2295
  %6 = add nuw nsw i32 %5, %4, !dbg !2296
  %7 = icmp ugt i32 %6, 144, !dbg !2297
  br i1 %7, label %136, label %8, !dbg !2298

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2299
  call void @llvm.dbg.value(metadata i8 %9, metadata !2284, metadata !DIExpression()), !dbg !2292
  %10 = icmp eq i8 %9, 0, !dbg !2300
  br i1 %10, label %11, label %136, !dbg !2302

11:                                               ; preds = %8
  %12 = and i16 %0, 3, !dbg !2303
  %13 = zext i16 %12 to i32, !dbg !2303
  call void @llvm.dbg.value(metadata i16 %0, metadata !2287, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !2292
  %14 = lshr i16 %0, 2, !dbg !2305
  call void @llvm.dbg.value(metadata i16 %14, metadata !2288, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2292
  %15 = icmp eq i16 %12, 0, !dbg !2306
  br i1 %15, label %53, label %16, !dbg !2308

16:                                               ; preds = %11
  %17 = and i16 %14, 255, !dbg !2309
  %18 = zext i16 %17 to i32, !dbg !2309
  %19 = getelementptr inbounds i32, i32* inttoptr (i32 -2096365248 to i32*), i32 %18, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %19, metadata !2286, metadata !DIExpression()), !dbg !2292
  %20 = load volatile i32, i32* %19, align 4, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %20, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i16 0, metadata !2291, metadata !DIExpression()), !dbg !2292
  %21 = sub nuw nsw i32 4, %13
  call void @llvm.dbg.value(metadata i16 0, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %20, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i16 %2, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %1, metadata !2282, metadata !DIExpression()), !dbg !2292
  %22 = icmp eq i16 %2, 0, !dbg !2313
  br i1 %22, label %48, label %23, !dbg !2316

23:                                               ; preds = %16, %40
  %24 = phi i32 [ %44, %40 ], [ 0, %16 ]
  %25 = phi i32 [ %42, %40 ], [ %20, %16 ]
  %26 = phi i16 [ %43, %40 ], [ %2, %16 ]
  %27 = phi i8* [ %41, %40 ], [ %1, %16 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %25, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i16 %26, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %27, metadata !2282, metadata !DIExpression()), !dbg !2292
  %28 = add nuw nsw i32 %24, %13, !dbg !2317
  %29 = shl nuw nsw i32 %28, 3, !dbg !2319
  %30 = shl i32 255, %29, !dbg !2320
  %31 = xor i32 %30, -1, !dbg !2321
  %32 = and i32 %25, %31, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %32, metadata !2290, metadata !DIExpression()), !dbg !2292
  %33 = icmp eq i8* %27, null, !dbg !2323
  br i1 %33, label %40, label %34, !dbg !2325

34:                                               ; preds = %23
  %35 = load i8, i8* %27, align 1, !dbg !2326
  %36 = zext i8 %35 to i32, !dbg !2328
  %37 = shl i32 %36, %29, !dbg !2329
  %38 = or i32 %37, %32, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %38, metadata !2290, metadata !DIExpression()), !dbg !2292
  %39 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %39, metadata !2282, metadata !DIExpression()), !dbg !2292
  br label %40, !dbg !2332

40:                                               ; preds = %23, %34
  %41 = phi i8* [ %39, %34 ], [ null, %23 ]
  %42 = phi i32 [ %38, %34 ], [ %32, %23 ], !dbg !2333
  call void @llvm.dbg.value(metadata i32 %42, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %41, metadata !2282, metadata !DIExpression()), !dbg !2292
  %43 = add i16 %26, -1, !dbg !2334
  call void @llvm.dbg.value(metadata i16 %43, metadata !2289, metadata !DIExpression()), !dbg !2292
  %44 = add nuw nsw i32 %24, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %44, metadata !2291, metadata !DIExpression()), !dbg !2292
  %45 = icmp ugt i32 %21, %44, !dbg !2336
  %46 = icmp ne i16 %43, 0, !dbg !2313
  %47 = select i1 %45, i1 %46, i1 false, !dbg !2313
  br i1 %47, label %23, label %48, !dbg !2316, !llvm.loop !2337

48:                                               ; preds = %40, %16
  %49 = phi i8* [ %1, %16 ], [ %41, %40 ]
  %50 = phi i16 [ 0, %16 ], [ %43, %40 ], !dbg !2292
  %51 = phi i32 [ %20, %16 ], [ %42, %40 ], !dbg !2339
  store volatile i32 %51, i32* %19, align 4, !dbg !2340
  %52 = add nuw nsw i16 %14, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i16 %14, metadata !2288, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2292
  br label %53, !dbg !2342

53:                                               ; preds = %48, %11
  %54 = phi i8* [ %49, %48 ], [ %1, %11 ]
  %55 = phi i16 [ %52, %48 ], [ %14, %11 ]
  %56 = phi i16 [ %50, %48 ], [ %2, %11 ], !dbg !2343
  call void @llvm.dbg.value(metadata i16 %56, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 undef, metadata !2288, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %54, metadata !2282, metadata !DIExpression()), !dbg !2292
  %57 = and i16 %55, 255, !dbg !2344
  %58 = zext i16 %57 to i32, !dbg !2344
  %59 = getelementptr inbounds i32, i32* inttoptr (i32 -2096365248 to i32*), i32 %58, !dbg !2345
  call void @llvm.dbg.value(metadata i32* %59, metadata !2286, metadata !DIExpression()), !dbg !2292
  %60 = icmp ugt i16 %56, 3, !dbg !2346
  br i1 %60, label %61, label %91, !dbg !2347

61:                                               ; preds = %53, %86
  %62 = phi i16 [ %89, %86 ], [ %56, %53 ]
  %63 = phi i32* [ %88, %86 ], [ %59, %53 ]
  %64 = phi i8* [ %87, %86 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i16 %62, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32* %63, metadata !2286, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %64, metadata !2282, metadata !DIExpression()), !dbg !2292
  %65 = icmp eq i8* %64, null, !dbg !2348
  br i1 %65, label %85, label %66, !dbg !2351

66:                                               ; preds = %61
  %67 = load i8, i8* %64, align 1, !dbg !2352
  %68 = zext i8 %67 to i32, !dbg !2354
  %69 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !2355
  %70 = load i8, i8* %69, align 1, !dbg !2356
  %71 = zext i8 %70 to i32, !dbg !2357
  %72 = shl nuw nsw i32 %71, 8, !dbg !2358
  %73 = or i32 %72, %68, !dbg !2359
  %74 = getelementptr inbounds i8, i8* %64, i32 2, !dbg !2360
  %75 = load i8, i8* %74, align 1, !dbg !2361
  %76 = zext i8 %75 to i32, !dbg !2362
  %77 = shl nuw nsw i32 %76, 16, !dbg !2363
  %78 = or i32 %73, %77, !dbg !2364
  %79 = getelementptr inbounds i8, i8* %64, i32 3, !dbg !2365
  %80 = load i8, i8* %79, align 1, !dbg !2366
  %81 = zext i8 %80 to i32, !dbg !2367
  %82 = shl nuw i32 %81, 24, !dbg !2368
  %83 = or i32 %78, %82, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %83, metadata !2290, metadata !DIExpression()), !dbg !2292
  store volatile i32 %83, i32* %63, align 4, !dbg !2370
  call void @llvm.dbg.value(metadata i32* %63, metadata !2286, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2292
  %84 = getelementptr inbounds i8, i8* %64, i32 4, !dbg !2371
  call void @llvm.dbg.value(metadata i8* %84, metadata !2282, metadata !DIExpression()), !dbg !2292
  br label %86, !dbg !2372

85:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()), !dbg !2292
  store volatile i32 0, i32* %63, align 4, !dbg !2373
  call void @llvm.dbg.value(metadata i32* %63, metadata !2286, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2292
  br label %86

86:                                               ; preds = %85, %66
  %87 = phi i8* [ %84, %66 ], [ null, %85 ]
  %88 = getelementptr inbounds i32, i32* %63, i32 1, !dbg !2375
  call void @llvm.dbg.value(metadata i32* %88, metadata !2286, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %87, metadata !2282, metadata !DIExpression()), !dbg !2292
  %89 = add i16 %62, -4, !dbg !2376
  call void @llvm.dbg.value(metadata i16 %89, metadata !2289, metadata !DIExpression()), !dbg !2292
  %90 = icmp ugt i16 %89, 3, !dbg !2346
  br i1 %90, label %61, label %91, !dbg !2347, !llvm.loop !2377

91:                                               ; preds = %86, %53
  %92 = phi i8* [ %54, %53 ], [ %87, %86 ]
  %93 = phi i32* [ %59, %53 ], [ %88, %86 ], !dbg !2379
  %94 = phi i16 [ %56, %53 ], [ %89, %86 ], !dbg !2292
  %95 = icmp eq i16 %94, 0, !dbg !2380
  br i1 %95, label %136, label %96, !dbg !2382

96:                                               ; preds = %91
  %97 = load volatile i32, i32* %93, align 4, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %97, metadata !2290, metadata !DIExpression()), !dbg !2292
  switch i16 %94, label %134 [
    i16 1, label %98
    i16 2, label %105
    i16 3, label %117
  ], !dbg !2385

98:                                               ; preds = %96
  %99 = and i32 %97, -256, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %99, metadata !2290, metadata !DIExpression()), !dbg !2292
  %100 = icmp eq i8* %92, null, !dbg !2388
  br i1 %100, label %134, label %101, !dbg !2390

101:                                              ; preds = %98
  %102 = load i8, i8* %92, align 1, !dbg !2391
  %103 = zext i8 %102 to i32, !dbg !2393
  %104 = or i32 %99, %103, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %104, metadata !2290, metadata !DIExpression()), !dbg !2292
  br label %134, !dbg !2395

105:                                              ; preds = %96
  %106 = and i32 %97, -65536, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %106, metadata !2290, metadata !DIExpression()), !dbg !2292
  %107 = icmp eq i8* %92, null, !dbg !2397
  br i1 %107, label %134, label %108, !dbg !2399

108:                                              ; preds = %105
  %109 = load i8, i8* %92, align 1, !dbg !2400
  %110 = zext i8 %109 to i32, !dbg !2402
  %111 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !2403
  %112 = load i8, i8* %111, align 1, !dbg !2404
  %113 = zext i8 %112 to i32, !dbg !2405
  %114 = shl nuw nsw i32 %113, 8, !dbg !2406
  %115 = or i32 %106, %110, !dbg !2407
  %116 = or i32 %115, %114, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %116, metadata !2290, metadata !DIExpression()), !dbg !2292
  br label %134, !dbg !2409

117:                                              ; preds = %96
  %118 = and i32 %97, -16777216, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %118, metadata !2290, metadata !DIExpression()), !dbg !2292
  %119 = icmp eq i8* %92, null, !dbg !2411
  br i1 %119, label %134, label %120, !dbg !2413

120:                                              ; preds = %117
  %121 = load i8, i8* %92, align 1, !dbg !2414
  %122 = zext i8 %121 to i32, !dbg !2416
  %123 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !2417
  %124 = load i8, i8* %123, align 1, !dbg !2418
  %125 = zext i8 %124 to i32, !dbg !2419
  %126 = shl nuw nsw i32 %125, 8, !dbg !2420
  %127 = getelementptr inbounds i8, i8* %92, i32 2, !dbg !2421
  %128 = load i8, i8* %127, align 1, !dbg !2422
  %129 = zext i8 %128 to i32, !dbg !2423
  %130 = shl nuw nsw i32 %129, 16, !dbg !2424
  %131 = or i32 %118, %122, !dbg !2425
  %132 = or i32 %131, %126, !dbg !2426
  %133 = or i32 %132, %130, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %133, metadata !2290, metadata !DIExpression()), !dbg !2292
  br label %134, !dbg !2428

134:                                              ; preds = %117, %120, %105, %108, %98, %101, %96
  %135 = phi i32 [ %97, %96 ], [ %133, %120 ], [ %118, %117 ], [ %116, %108 ], [ %106, %105 ], [ %104, %101 ], [ %99, %98 ], !dbg !2429
  call void @llvm.dbg.value(metadata i32 %135, metadata !2290, metadata !DIExpression()), !dbg !2292
  store volatile i32 %135, i32* %93, align 4, !dbg !2430
  br label %136, !dbg !2431

136:                                              ; preds = %8, %134, %91, %3
  %137 = phi i8 [ 1, %3 ], [ 0, %91 ], [ 0, %134 ], [ %9, %8 ], !dbg !2292
  ret i8 %137, !dbg !2432
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCClearBackup(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #3 !dbg !2433 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i16 %1, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2440
  %3 = tail call fastcc zeroext i8 @halRTCWriteBackup(i16 noundef zeroext %0, i8* noundef null, i16 noundef zeroext %1) #14, !dbg !2441
  call void @llvm.dbg.value(metadata i8 %3, metadata !2439, metadata !DIExpression()), !dbg !2440
  ret i8 %3, !dbg !2442
}

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @halRTCGetBackup(i16 noundef zeroext %0, i8* nocapture noundef writeonly %1, i16 noundef zeroext %2) local_unnamed_addr #3 !dbg !2443 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !2448, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 %2, metadata !2450, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_BACKUP_TypeDef* null, metadata !2452, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32* null, metadata !2453, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2454, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 %2, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 0, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_BACKUP_TypeDef* inttoptr (i32 -2096365248 to %struct._IOT_RTC_BACKUP_TypeDef*), metadata !2452, metadata !DIExpression()), !dbg !2459
  %4 = zext i16 %0 to i32, !dbg !2460
  %5 = zext i16 %2 to i32, !dbg !2462
  %6 = add nuw nsw i32 %5, %4, !dbg !2463
  %7 = icmp ugt i32 %6, 144, !dbg !2464
  br i1 %7, label %89, label %8, !dbg !2465

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @halRTCUnlock() #14, !dbg !2466
  call void @llvm.dbg.value(metadata i8 %9, metadata !2451, metadata !DIExpression()), !dbg !2459
  %10 = icmp eq i8 %9, 0, !dbg !2467
  br i1 %10, label %11, label %89, !dbg !2469

11:                                               ; preds = %8
  %12 = and i16 %0, 3, !dbg !2470
  %13 = zext i16 %12 to i32, !dbg !2470
  call void @llvm.dbg.value(metadata i16 %0, metadata !2454, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !2459
  %14 = lshr i16 %0, 2, !dbg !2472
  call void @llvm.dbg.value(metadata i16 %14, metadata !2455, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2459
  %15 = icmp eq i16 %12, 0, !dbg !2473
  br i1 %15, label %43, label %16, !dbg !2475

16:                                               ; preds = %11
  %17 = and i16 %14, 255, !dbg !2476
  %18 = zext i16 %17 to i32, !dbg !2476
  %19 = getelementptr inbounds i32, i32* inttoptr (i32 -2096365248 to i32*), i32 %18, !dbg !2478
  call void @llvm.dbg.value(metadata i32* %19, metadata !2453, metadata !DIExpression()), !dbg !2459
  %20 = load volatile i32, i32* %19, align 4, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %20, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 0, metadata !2458, metadata !DIExpression()), !dbg !2459
  %21 = sub nuw nsw i32 4, %13
  call void @llvm.dbg.value(metadata i16 0, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 %2, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()), !dbg !2459
  %22 = icmp eq i16 %2, 0, !dbg !2480
  br i1 %22, label %39, label %23, !dbg !2483

23:                                               ; preds = %16, %23
  %24 = phi i32 [ %35, %23 ], [ 0, %16 ]
  %25 = phi i16 [ %34, %23 ], [ %2, %16 ]
  %26 = phi i8* [ %33, %23 ], [ %1, %16 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 %25, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %26, metadata !2449, metadata !DIExpression()), !dbg !2459
  %27 = add nuw nsw i32 %24, %13, !dbg !2484
  %28 = shl nuw nsw i32 %27, 3, !dbg !2486
  %29 = shl i32 255, %28, !dbg !2487
  %30 = and i32 %29, %20, !dbg !2488
  %31 = lshr i32 %30, %28, !dbg !2489
  %32 = trunc i32 %31 to i8, !dbg !2490
  store i8 %32, i8* %26, align 1, !dbg !2491
  %33 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %33, metadata !2449, metadata !DIExpression()), !dbg !2459
  %34 = add i16 %25, -1, !dbg !2493
  call void @llvm.dbg.value(metadata i16 %34, metadata !2456, metadata !DIExpression()), !dbg !2459
  %35 = add nuw nsw i32 %24, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %35, metadata !2458, metadata !DIExpression()), !dbg !2459
  %36 = icmp ugt i32 %21, %35, !dbg !2495
  %37 = icmp ne i16 %34, 0, !dbg !2480
  %38 = select i1 %36, i1 %37, i1 false, !dbg !2480
  br i1 %38, label %23, label %39, !dbg !2483, !llvm.loop !2496

39:                                               ; preds = %23, %16
  %40 = phi i8* [ %1, %16 ], [ %33, %23 ]
  %41 = phi i16 [ 0, %16 ], [ %34, %23 ], !dbg !2459
  %42 = add nuw nsw i16 %14, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i16 %14, metadata !2455, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2459
  br label %43, !dbg !2499

43:                                               ; preds = %39, %11
  %44 = phi i8* [ %40, %39 ], [ %1, %11 ]
  %45 = phi i16 [ %42, %39 ], [ %14, %11 ]
  %46 = phi i16 [ %41, %39 ], [ %2, %11 ], !dbg !2500
  call void @llvm.dbg.value(metadata i16 %46, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 undef, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %44, metadata !2449, metadata !DIExpression()), !dbg !2459
  %47 = and i16 %45, 255, !dbg !2501
  %48 = zext i16 %47 to i32, !dbg !2501
  %49 = getelementptr inbounds i32, i32* inttoptr (i32 -2096365248 to i32*), i32 %48, !dbg !2502
  call void @llvm.dbg.value(metadata i32* %49, metadata !2453, metadata !DIExpression()), !dbg !2459
  %50 = icmp ugt i16 %46, 3, !dbg !2503
  br i1 %50, label %51, label %70, !dbg !2504

51:                                               ; preds = %43, %51
  %52 = phi i16 [ %68, %51 ], [ %46, %43 ]
  %53 = phi i32* [ %66, %51 ], [ %49, %43 ]
  %54 = phi i8* [ %67, %51 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i16 %52, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32* %53, metadata !2453, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %54, metadata !2449, metadata !DIExpression()), !dbg !2459
  %55 = load volatile i32, i32* %53, align 4, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %55, metadata !2457, metadata !DIExpression()), !dbg !2459
  %56 = trunc i32 %55 to i8, !dbg !2507
  store i8 %56, i8* %54, align 1, !dbg !2508
  %57 = lshr i32 %55, 8, !dbg !2509
  %58 = trunc i32 %57 to i8, !dbg !2510
  %59 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !2511
  store i8 %58, i8* %59, align 1, !dbg !2512
  %60 = lshr i32 %55, 16, !dbg !2513
  %61 = trunc i32 %60 to i8, !dbg !2514
  %62 = getelementptr inbounds i8, i8* %54, i32 2, !dbg !2515
  store i8 %61, i8* %62, align 1, !dbg !2516
  %63 = lshr i32 %55, 24, !dbg !2517
  %64 = trunc i32 %63 to i8, !dbg !2518
  %65 = getelementptr inbounds i8, i8* %54, i32 3, !dbg !2519
  store i8 %64, i8* %65, align 1, !dbg !2520
  %66 = getelementptr inbounds i32, i32* %53, i32 1, !dbg !2521
  call void @llvm.dbg.value(metadata i32* %66, metadata !2453, metadata !DIExpression()), !dbg !2459
  %67 = getelementptr inbounds i8, i8* %54, i32 4, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %67, metadata !2449, metadata !DIExpression()), !dbg !2459
  %68 = add i16 %52, -4, !dbg !2523
  call void @llvm.dbg.value(metadata i16 %68, metadata !2456, metadata !DIExpression()), !dbg !2459
  %69 = icmp ugt i16 %68, 3, !dbg !2503
  br i1 %69, label %51, label %70, !dbg !2504, !llvm.loop !2524

70:                                               ; preds = %51, %43
  %71 = phi i8* [ %44, %43 ], [ %67, %51 ]
  %72 = phi i32* [ %49, %43 ], [ %66, %51 ], !dbg !2526
  %73 = phi i16 [ %46, %43 ], [ %68, %51 ], !dbg !2459
  %74 = icmp eq i16 %73, 0, !dbg !2527
  br i1 %74, label %89, label %75, !dbg !2529

75:                                               ; preds = %70
  %76 = load volatile i32, i32* %72, align 4, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %76, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i16 0, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %71, metadata !2449, metadata !DIExpression()), !dbg !2459
  %77 = zext i16 %73 to i32, !dbg !2532
  br label %78, !dbg !2535

78:                                               ; preds = %75, %78
  %79 = phi i32 [ 0, %75 ], [ %87, %78 ]
  %80 = phi i8* [ %71, %75 ], [ %86, %78 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %80, metadata !2449, metadata !DIExpression()), !dbg !2459
  %81 = shl nuw nsw i32 %79, 3, !dbg !2536
  %82 = shl i32 255, %81, !dbg !2538
  %83 = and i32 %82, %76, !dbg !2539
  %84 = lshr i32 %83, %81, !dbg !2540
  %85 = trunc i32 %84 to i8, !dbg !2541
  store i8 %85, i8* %80, align 1, !dbg !2542
  %86 = getelementptr inbounds i8, i8* %80, i32 1, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %86, metadata !2449, metadata !DIExpression()), !dbg !2459
  %87 = add nuw nsw i32 %79, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %87, metadata !2458, metadata !DIExpression()), !dbg !2459
  %88 = icmp eq i32 %87, %77, !dbg !2532
  br i1 %88, label %89, label %78, !dbg !2535, !llvm.loop !2545

89:                                               ; preds = %78, %8, %70, %3
  %90 = phi i8 [ 1, %3 ], [ 0, %70 ], [ %9, %8 ], [ 0, %78 ], !dbg !2459
  ret i8 %90, !dbg !2547
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2553
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2554
  tail call void asm sideeffect "dsb", ""() #16, !dbg !2555, !srcloc !2556
  tail call void asm sideeffect "isb", ""() #16, !dbg !2557, !srcloc !2558
  ret void, !dbg !2559
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !2560 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2564, metadata !DIExpression()), !dbg !2565
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2566
  ret void, !dbg !2567
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2568 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #16, !dbg !2573, !srcloc !2580
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()) #16, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %1, metadata !2572, metadata !DIExpression()), !dbg !2582
  tail call void asm sideeffect "cpsid i", "~{memory}"() #16, !dbg !2583, !srcloc !2587
  ret i32 %1, !dbg !2588
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()) #16, !dbg !2596
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #16, !dbg !2599, !srcloc !2600
  ret void, !dbg !2601
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %1, metadata !2607, metadata !DIExpression()), !dbg !2609
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
  ], !dbg !2610

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2609
  %4 = trunc i32 %1 to i8, !dbg !2611
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2612
  br label %5, !dbg !2613

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2609
  ret i32 %6, !dbg !2614
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2615 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2619
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2618, metadata !DIExpression()), !dbg !2619
  %2 = lshr i32 %1, 13, !dbg !2621
  %3 = and i32 %2, 7, !dbg !2622
  call void @llvm.dbg.value(metadata i32 %3, metadata !2618, metadata !DIExpression()), !dbg !2619
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %4, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %4, metadata !2617, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2619
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2624
  %6 = load i32, i32* %5, align 4, !dbg !2624
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2624
  %8 = load i32, i32* %7, align 4, !dbg !2624
  %9 = and i32 %4, -2048, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %9, metadata !2617, metadata !DIExpression()), !dbg !2619
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2626
  %10 = or i32 %9, %8, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %10, metadata !2617, metadata !DIExpression()), !dbg !2619
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2628
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2629
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2630
  tail call void @SystemCoreClockUpdate() #15, !dbg !2631
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2632
  %13 = udiv i32 %12, 1000, !dbg !2633
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !2634
  ret void, !dbg !2635
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2636 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2637
  ret i32 %1, !dbg !2638
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2639 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2640
  ret i32 %1, !dbg !2641
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2642 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2646
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2646
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2644, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2645, metadata !DIExpression()), !dbg !2648
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2649
  store volatile i32 %3, i32* %1, align 4, !dbg !2650
  %4 = load volatile i32, i32* %1, align 4, !dbg !2651
  %5 = lshr i32 %4, 28, !dbg !2652
  %6 = and i32 %5, 3, !dbg !2653
  store volatile i32 %6, i32* %1, align 4, !dbg !2654
  %7 = load volatile i32, i32* %1, align 4, !dbg !2655
  %8 = icmp eq i32 %7, 0, !dbg !2657
  br i1 %8, label %9, label %22, !dbg !2658

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2659
  store volatile i32 %10, i32* %1, align 4, !dbg !2661
  %11 = load volatile i32, i32* %1, align 4, !dbg !2662
  %12 = and i32 %11, -16777217, !dbg !2663
  store volatile i32 %12, i32* %1, align 4, !dbg !2664
  %13 = load volatile i32, i32* %1, align 4, !dbg !2665
  %14 = or i32 %13, 536870912, !dbg !2666
  store volatile i32 %14, i32* %1, align 4, !dbg !2667
  %15 = load volatile i32, i32* %1, align 4, !dbg !2668
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2669
  br label %16, !dbg !2670

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2671
  store volatile i32 %17, i32* %1, align 4, !dbg !2673
  %18 = load volatile i32, i32* %1, align 4, !dbg !2674
  %19 = and i32 %18, 134217728, !dbg !2675
  store volatile i32 %19, i32* %1, align 4, !dbg !2676
  %20 = load volatile i32, i32* %1, align 4, !dbg !2677
  %21 = icmp eq i32 %20, 0, !dbg !2678
  br i1 %21, label %16, label %22, !dbg !2679, !llvm.loop !2680

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2682
  ret void, !dbg !2682
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !2683 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2690, metadata !DIExpression()), !dbg !2691
  %2 = bitcast i8* %0 to i32*, !dbg !2692
  %3 = load volatile i32, i32* %2, align 4, !dbg !2693
  ret i32 %3, !dbg !2694
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2695 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2700, metadata !DIExpression()), !dbg !2701
  %3 = bitcast i8* %0 to i32*, !dbg !2702
  store volatile i32 %1, i32* %3, align 4, !dbg !2703
  ret void, !dbg !2704
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2705 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2709, metadata !DIExpression()), !dbg !2712
  %3 = bitcast i32* %2 to i8*, !dbg !2713
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2713
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2711, metadata !DIExpression()), !dbg !2712
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2715
  store volatile i32 %4, i32* %2, align 4, !dbg !2716
  %5 = load volatile i32, i32* %2, align 4, !dbg !2717
  %6 = lshr i32 %5, 28, !dbg !2718
  %7 = and i32 %6, 3, !dbg !2719
  store volatile i32 %7, i32* %2, align 4, !dbg !2720
  %8 = load volatile i32, i32* %2, align 4, !dbg !2721
  %9 = icmp eq i32 %8, 3, !dbg !2723
  br i1 %9, label %38, label %10, !dbg !2724

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2725
  store volatile i32 %11, i32* %2, align 4, !dbg !2727
  %12 = load volatile i32, i32* %2, align 4, !dbg !2728
  %13 = and i32 %12, -262145, !dbg !2729
  store volatile i32 %13, i32* %2, align 4, !dbg !2730
  %14 = load volatile i32, i32* %2, align 4, !dbg !2731
  %15 = and i32 %14, -16777217, !dbg !2732
  store volatile i32 %15, i32* %2, align 4, !dbg !2733
  %16 = load volatile i32, i32* %2, align 4, !dbg !2734
  store volatile i32 %16, i32* %2, align 4, !dbg !2735
  %17 = load volatile i32, i32* %2, align 4, !dbg !2736
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2737
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2738
  store volatile i32 %18, i32* %2, align 4, !dbg !2739
  %19 = load volatile i32, i32* %2, align 4, !dbg !2740
  %20 = and i32 %19, -805306369, !dbg !2741
  store volatile i32 %20, i32* %2, align 4, !dbg !2742
  %21 = load volatile i32, i32* %2, align 4, !dbg !2743
  %22 = and i32 %21, -16777217, !dbg !2744
  store volatile i32 %22, i32* %2, align 4, !dbg !2745
  %23 = load volatile i32, i32* %2, align 4, !dbg !2746
  %24 = or i32 %23, 805306368, !dbg !2747
  store volatile i32 %24, i32* %2, align 4, !dbg !2748
  %25 = load volatile i32, i32* %2, align 4, !dbg !2749
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2750
  br label %26, !dbg !2751

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2752
  store volatile i32 %27, i32* %2, align 4, !dbg !2754
  %28 = load volatile i32, i32* %2, align 4, !dbg !2755
  %29 = and i32 %28, 67108864, !dbg !2756
  store volatile i32 %29, i32* %2, align 4, !dbg !2757
  %30 = load volatile i32, i32* %2, align 4, !dbg !2758
  %31 = icmp eq i32 %30, 0, !dbg !2759
  br i1 %31, label %26, label %32, !dbg !2760, !llvm.loop !2761

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2763
  store volatile i32 %33, i32* %2, align 4, !dbg !2764
  %34 = load volatile i32, i32* %2, align 4, !dbg !2765
  %35 = and i32 %34, -262145, !dbg !2766
  store volatile i32 %35, i32* %2, align 4, !dbg !2767
  %36 = load volatile i32, i32* %2, align 4, !dbg !2768
  %37 = and i32 %36, -16777217, !dbg !2769
  store volatile i32 %37, i32* %2, align 4, !dbg !2770
  br label %38, !dbg !2771

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2772
  store volatile i32 %39, i32* %2, align 4, !dbg !2773
  %40 = icmp eq i8 %0, 0, !dbg !2774
  %41 = load volatile i32, i32* %2, align 4, !dbg !2776
  br i1 %40, label %44, label %42, !dbg !2777

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2778
  store volatile i32 %43, i32* %2, align 4, !dbg !2780
  br label %45, !dbg !2781

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2782
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2784
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2786
  ret void, !dbg !2786
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2787 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2791
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2790, metadata !DIExpression()), !dbg !2793
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2794
  store volatile i32 %3, i32* %1, align 4, !dbg !2795
  %4 = load volatile i32, i32* %1, align 4, !dbg !2796
  %5 = and i32 %4, -805306369, !dbg !2797
  store volatile i32 %5, i32* %1, align 4, !dbg !2798
  %6 = load volatile i32, i32* %1, align 4, !dbg !2799
  %7 = and i32 %6, -16777217, !dbg !2800
  store volatile i32 %7, i32* %1, align 4, !dbg !2801
  %8 = load volatile i32, i32* %1, align 4, !dbg !2802
  store volatile i32 %8, i32* %1, align 4, !dbg !2803
  %9 = load volatile i32, i32* %1, align 4, !dbg !2804
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2805
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2806
  store volatile i32 %10, i32* %1, align 4, !dbg !2807
  %11 = load volatile i32, i32* %1, align 4, !dbg !2808
  %12 = and i32 %11, -262145, !dbg !2809
  store volatile i32 %12, i32* %1, align 4, !dbg !2810
  %13 = load volatile i32, i32* %1, align 4, !dbg !2811
  %14 = and i32 %13, -16777217, !dbg !2812
  store volatile i32 %14, i32* %1, align 4, !dbg !2813
  %15 = load volatile i32, i32* %1, align 4, !dbg !2814
  store volatile i32 %15, i32* %1, align 4, !dbg !2815
  %16 = load volatile i32, i32* %1, align 4, !dbg !2816
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2817
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2818
  ret void, !dbg !2818
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2819 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2823
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2823
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2821, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2822, metadata !DIExpression()), !dbg !2825
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2826
  store volatile i32 %3, i32* %1, align 4, !dbg !2827
  %4 = load volatile i32, i32* %1, align 4, !dbg !2828
  %5 = and i32 %4, -8, !dbg !2829
  store volatile i32 %5, i32* %1, align 4, !dbg !2830
  %6 = load volatile i32, i32* %1, align 4, !dbg !2831
  store volatile i32 %6, i32* %1, align 4, !dbg !2832
  %7 = load volatile i32, i32* %1, align 4, !dbg !2833
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2834
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2835
  store volatile i32 %8, i32* %1, align 4, !dbg !2836
  %9 = load volatile i32, i32* %1, align 4, !dbg !2837
  %10 = and i32 %9, -49153, !dbg !2838
  store volatile i32 %10, i32* %1, align 4, !dbg !2839
  %11 = load volatile i32, i32* %1, align 4, !dbg !2840
  store volatile i32 %11, i32* %1, align 4, !dbg !2841
  %12 = load volatile i32, i32* %1, align 4, !dbg !2842
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2843
  br label %13, !dbg !2844

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2845
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2846
  %16 = icmp eq i32 %14, %15, !dbg !2847
  br i1 %16, label %17, label %13, !dbg !2844, !llvm.loop !2848

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2850
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2851
  tail call void @SystemCoreClockUpdate() #15, !dbg !2852
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2853
  %20 = udiv i32 %19, 1000, !dbg !2854
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2856
  ret void, !dbg !2856
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2857 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2861
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2861
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2859, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2860, metadata !DIExpression()), !dbg !2863
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2864
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2865
  store volatile i32 %3, i32* %1, align 4, !dbg !2866
  %4 = load volatile i32, i32* %1, align 4, !dbg !2867
  %5 = and i32 %4, -49153, !dbg !2868
  store volatile i32 %5, i32* %1, align 4, !dbg !2869
  %6 = load volatile i32, i32* %1, align 4, !dbg !2870
  %7 = or i32 %6, 16384, !dbg !2871
  store volatile i32 %7, i32* %1, align 4, !dbg !2872
  %8 = load volatile i32, i32* %1, align 4, !dbg !2873
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2874
  br label %9, !dbg !2875

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2876
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2877
  %12 = icmp eq i32 %10, %11, !dbg !2878
  br i1 %12, label %13, label %9, !dbg !2875, !llvm.loop !2879

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2881
  store volatile i32 %14, i32* %1, align 4, !dbg !2882
  %15 = load volatile i32, i32* %1, align 4, !dbg !2883
  %16 = and i32 %15, -1009, !dbg !2884
  store volatile i32 %16, i32* %1, align 4, !dbg !2885
  %17 = load volatile i32, i32* %1, align 4, !dbg !2886
  %18 = or i32 %17, 128, !dbg !2887
  store volatile i32 %18, i32* %1, align 4, !dbg !2888
  %19 = load volatile i32, i32* %1, align 4, !dbg !2889
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2890
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2891
  store volatile i32 %20, i32* %1, align 4, !dbg !2892
  %21 = load volatile i32, i32* %1, align 4, !dbg !2893
  %22 = and i32 %21, -8, !dbg !2894
  store volatile i32 %22, i32* %1, align 4, !dbg !2895
  %23 = load volatile i32, i32* %1, align 4, !dbg !2896
  %24 = or i32 %23, 4, !dbg !2897
  store volatile i32 %24, i32* %1, align 4, !dbg !2898
  %25 = load volatile i32, i32* %1, align 4, !dbg !2899
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2900
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2901
  tail call void @SystemCoreClockUpdate() #15, !dbg !2902
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2903
  %27 = udiv i32 %26, 1000, !dbg !2904
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2906
  ret void, !dbg !2906
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2907 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2911
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2910, metadata !DIExpression()), !dbg !2913
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2914
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2915
  store volatile i32 %3, i32* %1, align 4, !dbg !2916
  %4 = load volatile i32, i32* %1, align 4, !dbg !2917
  %5 = and i32 %4, -49153, !dbg !2918
  store volatile i32 %5, i32* %1, align 4, !dbg !2919
  %6 = load volatile i32, i32* %1, align 4, !dbg !2920
  %7 = or i32 %6, 32768, !dbg !2921
  store volatile i32 %7, i32* %1, align 4, !dbg !2922
  %8 = load volatile i32, i32* %1, align 4, !dbg !2923
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2924
  br label %9, !dbg !2925

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2926
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2927
  %12 = icmp eq i32 %10, %11, !dbg !2928
  br i1 %12, label %13, label %9, !dbg !2925, !llvm.loop !2929

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2931
  store volatile i32 %14, i32* %1, align 4, !dbg !2932
  %15 = load volatile i32, i32* %1, align 4, !dbg !2933
  %16 = and i32 %15, -1009, !dbg !2934
  store volatile i32 %16, i32* %1, align 4, !dbg !2935
  %17 = load volatile i32, i32* %1, align 4, !dbg !2936
  %18 = or i32 %17, 32, !dbg !2937
  store volatile i32 %18, i32* %1, align 4, !dbg !2938
  %19 = load volatile i32, i32* %1, align 4, !dbg !2939
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2940
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2941
  store volatile i32 %20, i32* %1, align 4, !dbg !2942
  %21 = load volatile i32, i32* %1, align 4, !dbg !2943
  %22 = and i32 %21, -8, !dbg !2944
  store volatile i32 %22, i32* %1, align 4, !dbg !2945
  %23 = load volatile i32, i32* %1, align 4, !dbg !2946
  %24 = or i32 %23, 4, !dbg !2947
  store volatile i32 %24, i32* %1, align 4, !dbg !2948
  %25 = load volatile i32, i32* %1, align 4, !dbg !2949
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2950
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2951
  tail call void @SystemCoreClockUpdate() #15, !dbg !2952
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2953
  %27 = udiv i32 %26, 1000, !dbg !2954
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2955
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2956
  ret void, !dbg !2956
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2957 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2961
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2959, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2960, metadata !DIExpression()), !dbg !2963
  tail call void @cmnPLL1ON() #14, !dbg !2964
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2965
  store volatile i32 %3, i32* %1, align 4, !dbg !2966
  %4 = load volatile i32, i32* %1, align 4, !dbg !2967
  %5 = and i32 %4, -49153, !dbg !2968
  store volatile i32 %5, i32* %1, align 4, !dbg !2969
  %6 = load volatile i32, i32* %1, align 4, !dbg !2970
  store volatile i32 %6, i32* %1, align 4, !dbg !2971
  %7 = load volatile i32, i32* %1, align 4, !dbg !2972
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2973
  br label %8, !dbg !2974

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2975
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2976
  %11 = icmp eq i32 %9, %10, !dbg !2977
  br i1 %11, label %12, label %8, !dbg !2974, !llvm.loop !2978

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2980
  store volatile i32 %13, i32* %1, align 4, !dbg !2981
  %14 = load volatile i32, i32* %1, align 4, !dbg !2982
  %15 = and i32 %14, -8, !dbg !2983
  store volatile i32 %15, i32* %1, align 4, !dbg !2984
  %16 = load volatile i32, i32* %1, align 4, !dbg !2985
  %17 = or i32 %16, 2, !dbg !2986
  store volatile i32 %17, i32* %1, align 4, !dbg !2987
  %18 = load volatile i32, i32* %1, align 4, !dbg !2988
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2989
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2990
  tail call void @SystemCoreClockUpdate() #15, !dbg !2991
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2992
  %20 = udiv i32 %19, 1000, !dbg !2993
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2995
  ret void, !dbg !2995
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !2996 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3000
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3000
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2998, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2999, metadata !DIExpression()), !dbg !3002
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !3003
  store volatile i32 %3, i32* %1, align 4, !dbg !3004
  %4 = load volatile i32, i32* %1, align 4, !dbg !3005
  %5 = and i32 %4, -24577, !dbg !3006
  store volatile i32 %5, i32* %1, align 4, !dbg !3007
  %6 = load volatile i32, i32* %1, align 4, !dbg !3008
  store volatile i32 %6, i32* %1, align 4, !dbg !3009
  %7 = load volatile i32, i32* %1, align 4, !dbg !3010
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !3011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3012
  ret void, !dbg !3012
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !3013 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %1, metadata !3017, metadata !DIExpression()), !dbg !3019
  ret i32 %1, !dbg !3020
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !3021 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3024
  %2 = and i32 %1, 1, !dbg !3026
  %3 = icmp eq i32 %2, 0, !dbg !3026
  br i1 %3, label %7, label %4, !dbg !3027

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3028
  %6 = and i32 %5, 255, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %5, metadata !3023, metadata !DIExpression()), !dbg !3031
  br label %7, !dbg !3032

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3033
  ret i32 %8, !dbg !3034
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8 %1, metadata !3041, metadata !DIExpression()), !dbg !3043
  %3 = icmp eq i32 %0, 0, !dbg !3044
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3044
  call void @llvm.dbg.value(metadata i32 %4, metadata !3042, metadata !DIExpression()), !dbg !3043
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3045

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3046
  %9 = and i32 %8, 32, !dbg !3047
  %10 = icmp eq i32 %9, 0, !dbg !3048
  br i1 %10, label %7, label %11, !dbg !3045, !llvm.loop !3049

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3051
  %13 = inttoptr i32 %4 to i32*, !dbg !3052
  store volatile i32 %12, i32* %13, align 65536, !dbg !3053
  ret void, !dbg !3054
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !3055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3059, metadata !DIExpression()), !dbg !3062
  %2 = icmp eq i32 %0, 0, !dbg !3063
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %3, metadata !3060, metadata !DIExpression()), !dbg !3062
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3064

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3065
  %8 = and i32 %7, 1, !dbg !3066
  %9 = icmp eq i32 %8, 0, !dbg !3067
  br i1 %9, label %6, label %10, !dbg !3064, !llvm.loop !3068

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3070
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3070
  %13 = trunc i32 %12 to i8, !dbg !3070
  call void @llvm.dbg.value(metadata i8 %13, metadata !3061, metadata !DIExpression()), !dbg !3062
  ret i8 %13, !dbg !3071
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !3072 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3076, metadata !DIExpression()), !dbg !3079
  %2 = icmp eq i32 %0, 0, !dbg !3080
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %3, metadata !3077, metadata !DIExpression()), !dbg !3079
  %4 = or i32 %3, 20, !dbg !3081
  %5 = inttoptr i32 %4 to i32*, !dbg !3081
  %6 = load volatile i32, i32* %5, align 4, !dbg !3081
  %7 = and i32 %6, 1, !dbg !3083
  %8 = icmp eq i32 %7, 0, !dbg !3083
  br i1 %8, label %13, label %9, !dbg !3084

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3085
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3085
  %12 = and i32 %11, 255, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %11, metadata !3078, metadata !DIExpression()), !dbg !3079
  br label %13, !dbg !3088

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3089
  ret i32 %14, !dbg !3090
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3091 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3095, metadata !DIExpression()), !dbg !3096
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3097
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3098

2:                                                ; preds = %1
  br label %3, !dbg !3099

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3103
  %6 = or i32 %5, 1, !dbg !3103
  store volatile i32 %6, i32* %4, align 4, !dbg !3103
  br label %7, !dbg !3104

7:                                                ; preds = %3, %1
  ret void, !dbg !3104
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3111, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %1, metadata !3112, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i16 %2, metadata !3113, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i16 %3, metadata !3114, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i16 %4, metadata !3115, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3117, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3124, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3126, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 0, metadata !3127, metadata !DIExpression()), !dbg !3128
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !3131
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3132
  %7 = icmp eq i32 %0, 1, !dbg !3133
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3133
  call void @llvm.dbg.value(metadata i32 %8, metadata !3117, metadata !DIExpression()), !dbg !3128
  %9 = or i32 %8, 36, !dbg !3134
  %10 = inttoptr i32 %9 to i32*, !dbg !3134
  store volatile i32 3, i32* %10, align 4, !dbg !3135
  %11 = or i32 %8, 12, !dbg !3136
  %12 = inttoptr i32 %11 to i32*, !dbg !3136
  %13 = load volatile i32, i32* %12, align 4, !dbg !3136
  call void @llvm.dbg.value(metadata i32 %13, metadata !3119, metadata !DIExpression()), !dbg !3128
  %14 = or i32 %13, 128, !dbg !3137
  store volatile i32 %14, i32* %12, align 4, !dbg !3138
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3139
  %16 = udiv i32 %15, %1, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %16, metadata !3118, metadata !DIExpression()), !dbg !3128
  %17 = lshr i32 %16, 8, !dbg !3141
  %18 = add nuw nsw i32 %17, 1, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %18, metadata !3120, metadata !DIExpression()), !dbg !3128
  %19 = udiv i32 %16, %18, !dbg !3143
  %20 = add i32 %19, -1, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %20, metadata !3121, metadata !DIExpression()), !dbg !3128
  %21 = icmp eq i32 %20, 3, !dbg !3146
  %22 = lshr i32 %20, 1, !dbg !3148
  %23 = add nsw i32 %22, -1, !dbg !3148
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %24, metadata !3122, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 undef, metadata !3127, metadata !DIExpression()), !dbg !3128
  %25 = mul i32 %15, 10, !dbg !3149
  %26 = udiv i32 %25, %1, !dbg !3150
  %27 = udiv i32 %26, %16, !dbg !3151
  %28 = mul i32 %19, -10, !dbg !3152
  %29 = add i32 %27, %28, !dbg !3153
  %30 = urem i32 %29, 10, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %30, metadata !3123, metadata !DIExpression()), !dbg !3128
  %31 = and i32 %18, 255, !dbg !3155
  %32 = inttoptr i32 %8 to i32*, !dbg !3156
  store volatile i32 %31, i32* %32, align 65536, !dbg !3157
  %33 = lshr i32 %18, 8, !dbg !3158
  %34 = and i32 %33, 255, !dbg !3159
  %35 = or i32 %8, 4, !dbg !3160
  %36 = inttoptr i32 %35 to i32*, !dbg !3160
  store volatile i32 %34, i32* %36, align 4, !dbg !3161
  %37 = or i32 %8, 40, !dbg !3162
  %38 = inttoptr i32 %37 to i32*, !dbg !3162
  store volatile i32 %20, i32* %38, align 8, !dbg !3163
  %39 = or i32 %8, 44, !dbg !3164
  %40 = inttoptr i32 %39 to i32*, !dbg !3164
  store volatile i32 %24, i32* %40, align 4, !dbg !3165
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3166
  %42 = load i16, i16* %41, align 2, !dbg !3166
  %43 = zext i16 %42 to i32, !dbg !3166
  %44 = or i32 %8, 88, !dbg !3167
  %45 = inttoptr i32 %44 to i32*, !dbg !3167
  store volatile i32 %43, i32* %45, align 8, !dbg !3168
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3169
  %47 = load i16, i16* %46, align 2, !dbg !3169
  %48 = zext i16 %47 to i32, !dbg !3169
  %49 = or i32 %8, 84, !dbg !3170
  %50 = inttoptr i32 %49 to i32*, !dbg !3170
  store volatile i32 %48, i32* %50, align 4, !dbg !3171
  store volatile i32 %13, i32* %12, align 4, !dbg !3172
  %51 = or i32 %8, 8, !dbg !3173
  %52 = inttoptr i32 %51 to i32*, !dbg !3173
  store volatile i32 71, i32* %52, align 8, !dbg !3174
  %53 = inttoptr i32 %11 to i16*, !dbg !3175
  %54 = load volatile i16, i16* %53, align 4, !dbg !3175
  call void @llvm.dbg.value(metadata i16 %54, metadata !3116, metadata !DIExpression()), !dbg !3128
  %55 = and i16 %54, -64, !dbg !3176
  call void @llvm.dbg.value(metadata i16 %54, metadata !3116, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3128
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3128
  %56 = and i16 %2, -61, !dbg !3177
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3128
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3116, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3128
  %57 = and i16 %4, -57, !dbg !3178
  call void @llvm.dbg.value(metadata i16 undef, metadata !3116, metadata !DIExpression()), !dbg !3128
  %58 = or i16 %56, %3, !dbg !3177
  %59 = or i16 %58, %57, !dbg !3178
  %60 = or i16 %59, %55, !dbg !3179
  call void @llvm.dbg.value(metadata i16 %60, metadata !3116, metadata !DIExpression()), !dbg !3128
  store volatile i16 %60, i16* %53, align 4, !dbg !3180
  ret void, !dbg !3181
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !3182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3187, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32 %1, metadata !3188, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i32* %2, metadata !3189, metadata !DIExpression()), !dbg !3190
  %4 = icmp eq i32 %0, 0, !dbg !3191
  %5 = icmp eq i32 %1, 0, !dbg !3193
  br i1 %4, label %6, label %16, !dbg !3194

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3195

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3197
  %9 = zext i16 %8 to i32, !dbg !3197
  br label %26, !dbg !3200

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3201
  %12 = zext i16 %11 to i32, !dbg !3201
  store i32 %12, i32* %2, align 4, !dbg !3203
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3204
  %14 = zext i16 %13 to i32, !dbg !3204
  %15 = sub nsw i32 %12, %14, !dbg !3205
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3206

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3208
  %19 = zext i16 %18 to i32, !dbg !3208
  br label %26, !dbg !3211

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3212
  %22 = zext i16 %21 to i32, !dbg !3212
  store i32 %22, i32* %2, align 4, !dbg !3214
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3215
  %24 = zext i16 %23 to i32, !dbg !3215
  %25 = sub nsw i32 %22, %24, !dbg !3216
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3193
  ret void, !dbg !3217
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3218 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3222, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %2, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()), !dbg !3226
  %4 = icmp eq i32 %2, 0, !dbg !3227
  br i1 %4, label %15, label %5, !dbg !3230

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3225, metadata !DIExpression()), !dbg !3226
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3231

7:                                                ; preds = %5
  br label %8, !dbg !3233

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3237
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3237
  store i8 %10, i8* %11, align 1, !dbg !3237
  br label %12, !dbg !3238

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %13, metadata !3225, metadata !DIExpression()), !dbg !3226
  %14 = icmp eq i32 %13, %2, !dbg !3227
  br i1 %14, label %15, label %5, !dbg !3230, !llvm.loop !3239

15:                                               ; preds = %12, %3
  ret void, !dbg !3241
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3248, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %1, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 %2, metadata !3250, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 0, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i32 0, metadata !3251, metadata !DIExpression()), !dbg !3252
  %4 = icmp eq i32 %2, 0, !dbg !3253
  br i1 %4, label %16, label %5, !dbg !3256

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3251, metadata !DIExpression()), !dbg !3252
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3257

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3259
  %9 = load i8, i8* %8, align 1, !dbg !3259
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3262
  br label %13, !dbg !3263

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3264
  %12 = load i8, i8* %11, align 1, !dbg !3264
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3267
  br label %13, !dbg !3268

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %14, metadata !3251, metadata !DIExpression()), !dbg !3252
  %15 = icmp eq i32 %14, %2, !dbg !3253
  br i1 %15, label %16, label %5, !dbg !3256, !llvm.loop !3270

16:                                               ; preds = %13, %3
  ret void, !dbg !3272
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3278, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %2, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %3, metadata !3280, metadata !DIExpression()), !dbg !3281
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3282

5:                                                ; preds = %4
  br label %6, !dbg !3283

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3287
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3287
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3287
  br label %9, !dbg !3288

9:                                                ; preds = %6, %4
  ret void, !dbg !3288
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3289 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8* %1, metadata !3294, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %2, metadata !3295, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %3, metadata !3296, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %4, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %5, metadata !3298, metadata !DIExpression()), !dbg !3299
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3300

7:                                                ; preds = %6
  br label %8, !dbg !3301

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3305
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3305
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3305
  br label %11, !dbg !3306

11:                                               ; preds = %8, %6
  ret void, !dbg !3306
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3311, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3312, metadata !DIExpression()), !dbg !3313
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3314

3:                                                ; preds = %2
  br label %4, !dbg !3315

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3319
  br label %6, !dbg !3320

6:                                                ; preds = %4, %2
  ret void, !dbg !3320
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3323, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3324, metadata !DIExpression()), !dbg !3325
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3326

3:                                                ; preds = %2
  br label %4, !dbg !3327

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3331
  br label %6, !dbg !3332

6:                                                ; preds = %4, %2
  ret void, !dbg !3332
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3333 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3335, metadata !DIExpression()), !dbg !3339
  %2 = icmp eq i32 %0, 0, !dbg !3340
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3340
  call void @llvm.dbg.value(metadata i32 %3, metadata !3336, metadata !DIExpression()), !dbg !3339
  %4 = or i32 %3, 12, !dbg !3341
  %5 = inttoptr i32 %4 to i32*, !dbg !3341
  %6 = load volatile i32, i32* %5, align 4, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %6, metadata !3338, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  store volatile i32 191, i32* %5, align 4, !dbg !3342
  %7 = or i32 %3, 8, !dbg !3343
  %8 = inttoptr i32 %7 to i32*, !dbg !3343
  %9 = load volatile i32, i32* %8, align 8, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %9, metadata !3337, metadata !DIExpression()), !dbg !3339
  %10 = and i32 %9, 65327, !dbg !3344
  %11 = or i32 %10, 208, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %9, metadata !3337, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3339
  store volatile i32 %11, i32* %8, align 8, !dbg !3345
  %12 = or i32 %3, 68, !dbg !3346
  %13 = inttoptr i32 %12 to i32*, !dbg !3346
  store volatile i32 0, i32* %13, align 4, !dbg !3347
  store volatile i32 0, i32* %5, align 4, !dbg !3348
  %14 = or i32 %3, 16, !dbg !3349
  %15 = inttoptr i32 %14 to i32*, !dbg !3349
  store volatile i32 2, i32* %15, align 16, !dbg !3350
  %16 = and i32 %6, 65535, !dbg !3351
  store volatile i32 %16, i32* %5, align 4, !dbg !3352
  ret void, !dbg !3353
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !3354 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3358, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %1, metadata !3359, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %2, metadata !3360, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %3, metadata !3361, metadata !DIExpression()), !dbg !3365
  %5 = icmp eq i32 %0, 0, !dbg !3366
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3366
  call void @llvm.dbg.value(metadata i32 %6, metadata !3362, metadata !DIExpression()), !dbg !3365
  %7 = or i32 %6, 12, !dbg !3367
  %8 = inttoptr i32 %7 to i32*, !dbg !3367
  %9 = load volatile i32, i32* %8, align 4, !dbg !3367
  call void @llvm.dbg.value(metadata i32 %9, metadata !3364, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3365
  store volatile i32 191, i32* %8, align 4, !dbg !3368
  %10 = zext i8 %1 to i32, !dbg !3369
  %11 = or i32 %6, 16, !dbg !3370
  %12 = inttoptr i32 %11 to i32*, !dbg !3370
  store volatile i32 %10, i32* %12, align 16, !dbg !3371
  %13 = or i32 %6, 20, !dbg !3372
  %14 = inttoptr i32 %13 to i32*, !dbg !3372
  store volatile i32 %10, i32* %14, align 4, !dbg !3373
  %15 = zext i8 %2 to i32, !dbg !3374
  %16 = or i32 %6, 24, !dbg !3375
  %17 = inttoptr i32 %16 to i32*, !dbg !3375
  store volatile i32 %15, i32* %17, align 8, !dbg !3376
  %18 = or i32 %6, 28, !dbg !3377
  %19 = inttoptr i32 %18 to i32*, !dbg !3377
  store volatile i32 %15, i32* %19, align 4, !dbg !3378
  %20 = or i32 %6, 8, !dbg !3379
  %21 = inttoptr i32 %20 to i32*, !dbg !3379
  %22 = load volatile i32, i32* %21, align 8, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %22, metadata !3363, metadata !DIExpression()), !dbg !3365
  %23 = and i32 %22, 65525, !dbg !3380
  %24 = or i32 %23, 10, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %22, metadata !3363, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3365
  store volatile i32 %24, i32* %21, align 8, !dbg !3381
  %25 = and i32 %9, 65535, !dbg !3382
  store volatile i32 %25, i32* %8, align 4, !dbg !3383
  %26 = zext i8 %3 to i32, !dbg !3384
  %27 = or i32 %6, 64, !dbg !3385
  %28 = inttoptr i32 %27 to i32*, !dbg !3385
  store volatile i32 %26, i32* %28, align 64, !dbg !3386
  %29 = or i32 %6, 68, !dbg !3387
  %30 = inttoptr i32 %29 to i32*, !dbg !3387
  store volatile i32 1, i32* %30, align 4, !dbg !3388
  ret void, !dbg !3389
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3390 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()), !dbg !3395
  %2 = icmp eq i32 %0, 0, !dbg !3396
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %3, metadata !3393, metadata !DIExpression()), !dbg !3395
  %4 = or i32 %3, 12, !dbg !3397
  %5 = inttoptr i32 %4 to i32*, !dbg !3397
  %6 = load volatile i32, i32* %5, align 4, !dbg !3397
  call void @llvm.dbg.value(metadata i32 %6, metadata !3394, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3395
  store volatile i32 191, i32* %5, align 4, !dbg !3398
  %7 = or i32 %3, 8, !dbg !3399
  %8 = inttoptr i32 %7 to i32*, !dbg !3399
  store volatile i32 0, i32* %8, align 8, !dbg !3400
  store volatile i32 0, i32* %5, align 4, !dbg !3401
  %9 = and i32 %6, 65535, !dbg !3402
  store volatile i32 %9, i32* %5, align 4, !dbg !3403
  ret void, !dbg !3404
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !3405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3407, metadata !DIExpression()), !dbg !3409
  %2 = icmp eq i32 %0, 0, !dbg !3410
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3410
  call void @llvm.dbg.value(metadata i32 %3, metadata !3408, metadata !DIExpression()), !dbg !3409
  %4 = or i32 %3, 12, !dbg !3411
  %5 = inttoptr i32 %4 to i32*, !dbg !3411
  store volatile i32 191, i32* %5, align 4, !dbg !3412
  %6 = or i32 %3, 8, !dbg !3413
  %7 = inttoptr i32 %6 to i32*, !dbg !3413
  store volatile i32 16, i32* %7, align 8, !dbg !3414
  %8 = or i32 %3, 16, !dbg !3415
  %9 = inttoptr i32 %8 to i32*, !dbg !3415
  store volatile i32 0, i32* %9, align 16, !dbg !3416
  %10 = or i32 %3, 24, !dbg !3417
  %11 = inttoptr i32 %10 to i32*, !dbg !3417
  store volatile i32 0, i32* %11, align 8, !dbg !3418
  store volatile i32 128, i32* %5, align 4, !dbg !3419
  %12 = inttoptr i32 %3 to i32*, !dbg !3420
  store volatile i32 0, i32* %12, align 65536, !dbg !3421
  %13 = or i32 %3, 4, !dbg !3422
  %14 = inttoptr i32 %13 to i32*, !dbg !3422
  store volatile i32 0, i32* %14, align 4, !dbg !3423
  store volatile i32 0, i32* %5, align 4, !dbg !3424
  store volatile i32 0, i32* %14, align 4, !dbg !3425
  store volatile i32 0, i32* %7, align 8, !dbg !3426
  store volatile i32 191, i32* %5, align 4, !dbg !3427
  store volatile i32 0, i32* %7, align 8, !dbg !3428
  store volatile i32 0, i32* %5, align 4, !dbg !3429
  store volatile i32 0, i32* %9, align 16, !dbg !3430
  %15 = or i32 %3, 28, !dbg !3431
  %16 = inttoptr i32 %15 to i32*, !dbg !3431
  store volatile i32 0, i32* %16, align 4, !dbg !3432
  %17 = or i32 %3, 36, !dbg !3433
  %18 = inttoptr i32 %17 to i32*, !dbg !3433
  store volatile i32 0, i32* %18, align 4, !dbg !3434
  %19 = or i32 %3, 40, !dbg !3435
  %20 = inttoptr i32 %19 to i32*, !dbg !3435
  store volatile i32 0, i32* %20, align 8, !dbg !3436
  %21 = or i32 %3, 44, !dbg !3437
  %22 = inttoptr i32 %21 to i32*, !dbg !3437
  store volatile i32 0, i32* %22, align 4, !dbg !3438
  %23 = or i32 %3, 52, !dbg !3439
  %24 = inttoptr i32 %23 to i32*, !dbg !3439
  store volatile i32 0, i32* %24, align 4, !dbg !3440
  %25 = or i32 %3, 60, !dbg !3441
  %26 = inttoptr i32 %25 to i32*, !dbg !3441
  store volatile i32 0, i32* %26, align 4, !dbg !3442
  %27 = or i32 %3, 64, !dbg !3443
  %28 = inttoptr i32 %27 to i32*, !dbg !3443
  store volatile i32 0, i32* %28, align 64, !dbg !3444
  %29 = or i32 %3, 68, !dbg !3445
  %30 = inttoptr i32 %29 to i32*, !dbg !3445
  store volatile i32 0, i32* %30, align 4, !dbg !3446
  %31 = or i32 %3, 72, !dbg !3447
  %32 = inttoptr i32 %31 to i32*, !dbg !3447
  store volatile i32 0, i32* %32, align 8, !dbg !3448
  %33 = or i32 %3, 76, !dbg !3449
  %34 = inttoptr i32 %33 to i32*, !dbg !3449
  store volatile i32 0, i32* %34, align 4, !dbg !3450
  %35 = or i32 %3, 80, !dbg !3451
  %36 = inttoptr i32 %35 to i32*, !dbg !3451
  store volatile i32 0, i32* %36, align 16, !dbg !3452
  %37 = or i32 %3, 84, !dbg !3453
  %38 = inttoptr i32 %37 to i32*, !dbg !3453
  store volatile i32 0, i32* %38, align 4, !dbg !3454
  %39 = or i32 %3, 88, !dbg !3455
  %40 = inttoptr i32 %39 to i32*, !dbg !3455
  store volatile i32 0, i32* %40, align 8, !dbg !3456
  %41 = or i32 %3, 96, !dbg !3457
  %42 = inttoptr i32 %41 to i32*, !dbg !3457
  store volatile i32 0, i32* %42, align 32, !dbg !3458
  ret void, !dbg !3459
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !3460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3462, metadata !DIExpression()), !dbg !3464
  %2 = icmp eq i32 %0, 0, !dbg !3465
  call void @llvm.dbg.value(metadata i32 undef, metadata !3463, metadata !DIExpression()), !dbg !3464
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3466

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3467
  %7 = and i32 %6, 64, !dbg !3468
  %8 = icmp eq i32 %7, 0, !dbg !3469
  br i1 %8, label %5, label %9, !dbg !3466, !llvm.loop !3470

9:                                                ; preds = %5
  ret void, !dbg !3472
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3473 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3477, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %1, metadata !3478, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %2, metadata !3479, metadata !DIExpression()), !dbg !3490
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3480, metadata !DIExpression()), !dbg !3492
  %7 = bitcast i32* %5 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3493
  call void @llvm.dbg.value(metadata i32* %5, metadata !3489, metadata !DIExpression(DW_OP_deref)), !dbg !3490
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3494
  call void @llvm.va_start(i8* nonnull %6), !dbg !3495
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3496
  %10 = load i32, i32* %9, align 4, !dbg !3496
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3496
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3496
  call void @llvm.va_end(i8* nonnull %6), !dbg !3497
  %13 = load i32, i32* %5, align 4, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %13, metadata !3489, metadata !DIExpression()), !dbg !3490
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3500
  ret void, !dbg !3500
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3501 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3503, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 %1, metadata !3504, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i8* %2, metadata !3505, metadata !DIExpression()), !dbg !3508
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3509
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3509
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3506, metadata !DIExpression()), !dbg !3510
  %7 = bitcast i32* %5 to i8*, !dbg !3511
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3511
  call void @llvm.dbg.value(metadata i32* %5, metadata !3507, metadata !DIExpression(DW_OP_deref)), !dbg !3508
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3512
  call void @llvm.va_start(i8* nonnull %6), !dbg !3513
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3514
  %10 = load i32, i32* %9, align 4, !dbg !3514
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3514
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3514
  call void @llvm.va_end(i8* nonnull %6), !dbg !3515
  %13 = load i32, i32* %5, align 4, !dbg !3516
  call void @llvm.dbg.value(metadata i32 %13, metadata !3507, metadata !DIExpression()), !dbg !3508
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3517
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3518
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3518
  ret void, !dbg !3518
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3519 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 %1, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i8* %2, metadata !3523, metadata !DIExpression()), !dbg !3526
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3527
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3527
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3524, metadata !DIExpression()), !dbg !3528
  %7 = bitcast i32* %5 to i8*, !dbg !3529
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3529
  call void @llvm.dbg.value(metadata i32* %5, metadata !3525, metadata !DIExpression(DW_OP_deref)), !dbg !3526
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3530
  call void @llvm.va_start(i8* nonnull %6), !dbg !3531
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3532
  %10 = load i32, i32* %9, align 4, !dbg !3532
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3532
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3532
  call void @llvm.va_end(i8* nonnull %6), !dbg !3533
  %13 = load i32, i32* %5, align 4, !dbg !3534
  call void @llvm.dbg.value(metadata i32 %13, metadata !3525, metadata !DIExpression()), !dbg !3526
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3535
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3536
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3536
  ret void, !dbg !3536
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3537 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3539, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 %1, metadata !3540, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()), !dbg !3544
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3545
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3545
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3542, metadata !DIExpression()), !dbg !3546
  %7 = bitcast i32* %5 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3547
  call void @llvm.dbg.value(metadata i32* %5, metadata !3543, metadata !DIExpression(DW_OP_deref)), !dbg !3544
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3548
  call void @llvm.va_start(i8* nonnull %6), !dbg !3549
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3550
  %10 = load i32, i32* %9, align 4, !dbg !3550
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3550
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3550
  call void @llvm.va_end(i8* nonnull %6), !dbg !3551
  %13 = load i32, i32* %5, align 4, !dbg !3552
  call void @llvm.dbg.value(metadata i32 %13, metadata !3543, metadata !DIExpression()), !dbg !3544
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3553
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3554
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3554
  ret void, !dbg !3554
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !3555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3561, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %1, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %2, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %3, metadata !3564, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %4, metadata !3565, metadata !DIExpression()), !dbg !3566
  ret void, !dbg !3567
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3568 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %1, metadata !3575, metadata !DIExpression()), !dbg !3577
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3578, !range !3580
  %3 = icmp eq i8 %2, 0, !dbg !3578
  br i1 %3, label %5, label %4, !dbg !3581

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3582
  br label %15, !dbg !3584

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3585
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3587
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3588
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3589
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3590
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3591
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3573, metadata !DIExpression()), !dbg !3577
  br label %7, !dbg !3593

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3573, metadata !DIExpression()), !dbg !3577
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3595
  store volatile i32 0, i32* %9, align 4, !dbg !3598
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3599
  store volatile i32 0, i32* %10, align 4, !dbg !3600
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3601
  store i32 0, i32* %11, align 4, !dbg !3602
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3603
  store i32 0, i32* %12, align 4, !dbg !3604
  %13 = add nuw nsw i32 %8, 1, !dbg !3605
  call void @llvm.dbg.value(metadata i32 %13, metadata !3573, metadata !DIExpression()), !dbg !3577
  %14 = icmp eq i32 %13, 16, !dbg !3606
  br i1 %14, label %15, label %7, !dbg !3593, !llvm.loop !3607

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3577
  ret i32 %16, !dbg !3609
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3610 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3613
  call void @llvm.dbg.value(metadata i32 %1, metadata !3612, metadata !DIExpression()), !dbg !3614
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3615
  %3 = and i32 %2, -31, !dbg !3615
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3615
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3616
  %5 = or i32 %4, 19, !dbg !3616
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3616
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3617
  %7 = and i32 %6, -31, !dbg !3617
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3617
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3618
  %9 = or i32 %8, 3, !dbg !3618
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3618
  tail call void asm sideeffect "isb", ""() #16, !dbg !3619, !srcloc !3623
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3624
  ret i32 0, !dbg !3625
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3626 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3629
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3630
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3631
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3632
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3633
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3634
  br label %2, !dbg !3635

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3628, metadata !DIExpression()), !dbg !3634
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3637
  store volatile i32 0, i32* %4, align 4, !dbg !3640
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3641
  store volatile i32 0, i32* %5, align 4, !dbg !3642
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3643
  store i32 0, i32* %6, align 4, !dbg !3644
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3645
  store i32 0, i32* %7, align 4, !dbg !3646
  %8 = add nuw nsw i32 %3, 1, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %8, metadata !3628, metadata !DIExpression()), !dbg !3634
  %9 = icmp eq i32 %8, 16, !dbg !3648
  br i1 %9, label %10, label %2, !dbg !3635, !llvm.loop !3649

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3651
  ret i32 0, !dbg !3652
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3653 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3654
  %2 = and i32 %1, 768, !dbg !3656
  %3 = icmp eq i32 %2, 0, !dbg !3656
  br i1 %3, label %8, label %4, !dbg !3657

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3658
  %6 = or i32 %5, 13, !dbg !3658
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3658
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3659
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3660
  br label %8, !dbg !3661

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3662
  ret i32 %9, !dbg !3663
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3664 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3667
  call void @llvm.dbg.value(metadata i32 %1, metadata !3666, metadata !DIExpression()), !dbg !3668
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3669
  %3 = and i32 %2, 1, !dbg !3671
  %4 = icmp eq i32 %3, 0, !dbg !3671
  br i1 %4, label %7, label %5, !dbg !3672

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3673
  br label %7, !dbg !3675

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3676
  %9 = and i32 %8, -2, !dbg !3676
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3676
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3677
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3678
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3679
  ret i32 0, !dbg !3680
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()), !dbg !3686
  %2 = icmp ugt i32 %0, 15, !dbg !3687
  br i1 %2, label %13, label %3, !dbg !3689

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3690
  %5 = load volatile i32, i32* %4, align 4, !dbg !3690
  %6 = and i32 %5, 256, !dbg !3692
  %7 = icmp eq i32 %6, 0, !dbg !3692
  br i1 %7, label %13, label %8, !dbg !3693

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3694
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3696
  %11 = or i32 %10, %9, !dbg !3696
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3696
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3697
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3698
  br label %13, !dbg !3699

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3686
  ret i32 %14, !dbg !3700
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3703, metadata !DIExpression()), !dbg !3704
  %2 = icmp ugt i32 %0, 15, !dbg !3705
  br i1 %2, label %11, label %3, !dbg !3707

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3708
  %5 = xor i32 %4, -1, !dbg !3709
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3710
  %7 = and i32 %6, %5, !dbg !3710
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3710
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3711
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3712
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3713
  store i32 0, i32* %9, align 4, !dbg !3714
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3715
  store i32 0, i32* %10, align 4, !dbg !3716
  br label %11, !dbg !3717

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3704
  ret i32 %12, !dbg !3718
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3719 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3724, metadata !DIExpression()), !dbg !3725
  %2 = icmp ugt i32 %0, 3, !dbg !3726
  br i1 %2, label %13, label %3, !dbg !3728

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3729
  %5 = and i32 %4, -769, !dbg !3729
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3729
  %6 = shl nuw nsw i32 %0, 8, !dbg !3730
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3731
  %8 = or i32 %7, %6, !dbg !3731
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3731
  %9 = icmp eq i32 %0, 0, !dbg !3732
  br i1 %9, label %10, label %11, !dbg !3734

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3735
  br label %11, !dbg !3737

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3738
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3739
  br label %13, !dbg !3740

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3725
  ret i32 %14, !dbg !3741
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3742 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3753, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3754, metadata !DIExpression()), !dbg !3755
  %3 = icmp ugt i32 %0, 15, !dbg !3756
  br i1 %3, label %30, label %4, !dbg !3758

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3759
  br i1 %5, label %30, label %6, !dbg !3761

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3762
  %8 = load i32, i32* %7, align 4, !dbg !3762
  %9 = and i32 %8, 4095, !dbg !3764
  %10 = icmp eq i32 %9, 0, !dbg !3764
  br i1 %10, label %12, label %11, !dbg !3765

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i32 0, i32 0)) #17, !dbg !3766
  unreachable, !dbg !3766

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3768
  %14 = load i32, i32* %13, align 4, !dbg !3768
  %15 = and i32 %14, 4095, !dbg !3770
  %16 = icmp eq i32 %15, 0, !dbg !3770
  br i1 %16, label %18, label %17, !dbg !3771

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.4, i32 0, i32 0)) #17, !dbg !3772
  unreachable, !dbg !3772

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3774
  store volatile i32 %8, i32* %19, align 4, !dbg !3775
  %20 = load i32, i32* %7, align 4, !dbg !3776
  %21 = load i32, i32* %13, align 4, !dbg !3777
  %22 = add i32 %21, %20, !dbg !3778
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3779
  store volatile i32 %22, i32* %23, align 4, !dbg !3780
  %24 = load volatile i32, i32* %19, align 4, !dbg !3781
  %25 = or i32 %24, 256, !dbg !3781
  store volatile i32 %25, i32* %19, align 4, !dbg !3781
  %26 = load volatile i32, i32* %19, align 4, !dbg !3782
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3783
  store i32 %26, i32* %27, align 4, !dbg !3784
  %28 = load volatile i32, i32* %23, align 4, !dbg !3785
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3786
  store i32 %28, i32* %29, align 4, !dbg !3787
  br label %30, !dbg !3788

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3755
  ret i32 %31, !dbg !3789
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3790 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3796
  %2 = and i32 %0, 31, !dbg !3797
  %3 = icmp eq i32 %2, 0, !dbg !3797
  br i1 %3, label %4, label %9, !dbg !3799

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3800
  call void @llvm.dbg.value(metadata i32 %5, metadata !3795, metadata !DIExpression()), !dbg !3796
  %6 = and i32 %0, -32, !dbg !3801
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3802
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3803
  %8 = or i32 %7, 5, !dbg !3803
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3803
  tail call void asm sideeffect "isb", ""() #16, !dbg !3804, !srcloc !3623
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3806
  br label %9, !dbg !3807

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3796
  ret i32 %10, !dbg !3808
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %1, metadata !3814, metadata !DIExpression()), !dbg !3817
  %3 = add i32 %1, %0, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %3, metadata !3816, metadata !DIExpression()), !dbg !3817
  %4 = or i32 %1, %0, !dbg !3819
  %5 = and i32 %4, 31, !dbg !3819
  %6 = icmp eq i32 %5, 0, !dbg !3819
  br i1 %6, label %7, label %16, !dbg !3819

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %8, metadata !3815, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3817
  %9 = icmp ugt i32 %3, %0, !dbg !3822
  br i1 %9, label %10, label %15, !dbg !3823

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3813, metadata !DIExpression()), !dbg !3817
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3824
  %13 = add i32 %11, 32, !dbg !3826
  call void @llvm.dbg.value(metadata i32 %13, metadata !3813, metadata !DIExpression()), !dbg !3817
  %14 = icmp ult i32 %13, %3, !dbg !3822
  br i1 %14, label %10, label %15, !dbg !3823, !llvm.loop !3827

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3829, !srcloc !3623
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3831
  br label %16, !dbg !3832

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3817
  ret i32 %17, !dbg !3833
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3836, metadata !DIExpression()), !dbg !3838
  %2 = and i32 %0, 31, !dbg !3839
  %3 = icmp eq i32 %2, 0, !dbg !3839
  br i1 %3, label %4, label %9, !dbg !3841

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3842
  call void @llvm.dbg.value(metadata i32 %5, metadata !3837, metadata !DIExpression()), !dbg !3838
  %6 = and i32 %0, -32, !dbg !3843
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3844
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3845
  %8 = or i32 %7, 21, !dbg !3845
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3845
  tail call void asm sideeffect "isb", ""() #16, !dbg !3846, !srcloc !3623
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3848
  br label %9, !dbg !3849

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3838
  ret i32 %10, !dbg !3850
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %1, metadata !3854, metadata !DIExpression()), !dbg !3857
  %3 = add i32 %1, %0, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %3, metadata !3856, metadata !DIExpression()), !dbg !3857
  %4 = or i32 %1, %0, !dbg !3859
  %5 = and i32 %4, 31, !dbg !3859
  %6 = icmp eq i32 %5, 0, !dbg !3859
  br i1 %6, label %7, label %16, !dbg !3859

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3861
  call void @llvm.dbg.value(metadata i32 %8, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3857
  %9 = icmp ugt i32 %3, %0, !dbg !3862
  br i1 %9, label %10, label %15, !dbg !3863

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3853, metadata !DIExpression()), !dbg !3857
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3864
  %13 = add i32 %11, 32, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %13, metadata !3853, metadata !DIExpression()), !dbg !3857
  %14 = icmp ult i32 %13, %3, !dbg !3862
  br i1 %14, label %10, label %15, !dbg !3863, !llvm.loop !3867

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3869, !srcloc !3623
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3871
  br label %16, !dbg !3872

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3857
  ret i32 %17, !dbg !3873
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3874 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %1, metadata !3876, metadata !DIExpression()), !dbg !3878
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3879
  %3 = and i32 %2, -31, !dbg !3879
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3879
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3880
  %5 = or i32 %4, 19, !dbg !3880
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3880
  tail call void asm sideeffect "isb", ""() #16, !dbg !3881, !srcloc !3623
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3883
  ret i32 0, !dbg !3884
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3891
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3892
  %3 = and i32 %2, 8, !dbg !3894
  %4 = icmp eq i32 %3, 0, !dbg !3894
  br i1 %4, label %23, label %5, !dbg !3895

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3890, metadata !DIExpression()), !dbg !3891
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3896
  %8 = shl nuw nsw i32 1, %6, !dbg !3901
  %9 = and i32 %7, %8, !dbg !3902
  %10 = icmp eq i32 %9, 0, !dbg !3902
  br i1 %10, label %20, label %11, !dbg !3903

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3904
  %13 = load volatile i32, i32* %12, align 4, !dbg !3904
  %14 = and i32 %13, -257, !dbg !3907
  %15 = icmp ugt i32 %14, %0, !dbg !3908
  br i1 %15, label %20, label %16, !dbg !3909

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3910
  %18 = load volatile i32, i32* %17, align 4, !dbg !3910
  %19 = icmp ugt i32 %18, %0, !dbg !3911
  br i1 %19, label %23, label %20, !dbg !3912

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3913
  call void @llvm.dbg.value(metadata i32 %21, metadata !3890, metadata !DIExpression()), !dbg !3891
  %22 = icmp eq i32 %21, 16, !dbg !3914
  br i1 %22, label %23, label %5, !dbg !3915, !llvm.loop !3916

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3891
  ret i1 %24, !dbg !3918
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3919 {
  ret i32 0, !dbg !3923
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 -1, metadata !3929, metadata !DIExpression()), !dbg !3930
  %2 = icmp ugt i32 %0, 95, !dbg !3931
  br i1 %2, label %4, label %3, !dbg !3931

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3933
  call void @llvm.dbg.value(metadata i32 0, metadata !3929, metadata !DIExpression()), !dbg !3930
  br label %4, !dbg !3935

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3930
  ret i32 %5, !dbg !3936
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3942
  %2 = and i32 %0, 31, !dbg !3943
  %3 = shl nuw i32 1, %2, !dbg !3944
  %4 = lshr i32 %0, 5, !dbg !3945
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3946
  store volatile i32 %3, i32* %5, align 4, !dbg !3947
  ret void, !dbg !3948
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3949 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 -1, metadata !3952, metadata !DIExpression()), !dbg !3953
  %2 = icmp ugt i32 %0, 95, !dbg !3954
  br i1 %2, label %4, label %3, !dbg !3954

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3956
  call void @llvm.dbg.value(metadata i32 0, metadata !3952, metadata !DIExpression()), !dbg !3953
  br label %4, !dbg !3958

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3953
  ret i32 %5, !dbg !3959
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3962, metadata !DIExpression()), !dbg !3963
  %2 = and i32 %0, 31, !dbg !3964
  %3 = shl nuw i32 1, %2, !dbg !3965
  %4 = lshr i32 %0, 5, !dbg !3966
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3967
  store volatile i32 %3, i32* %5, align 4, !dbg !3968
  ret void, !dbg !3969
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3974, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.value(metadata i32 255, metadata !3975, metadata !DIExpression()), !dbg !3976
  %2 = icmp ugt i32 %0, 95, !dbg !3977
  br i1 %2, label %5, label %3, !dbg !3977

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3979
  call void @llvm.dbg.value(metadata i32 %4, metadata !3975, metadata !DIExpression()), !dbg !3976
  br label %5, !dbg !3981

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3976
  ret i32 %6, !dbg !3982
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3983 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3987, metadata !DIExpression()), !dbg !3988
  %2 = lshr i32 %0, 5, !dbg !3989
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3990
  %4 = load volatile i32, i32* %3, align 4, !dbg !3990
  %5 = and i32 %0, 31, !dbg !3991
  %6 = lshr i32 %4, %5, !dbg !3992
  %7 = and i32 %6, 1, !dbg !3992
  ret i32 %7, !dbg !3993
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 -1, metadata !3997, metadata !DIExpression()), !dbg !3998
  %2 = icmp ugt i32 %0, 95, !dbg !3999
  br i1 %2, label %4, label %3, !dbg !3999

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !3997, metadata !DIExpression()), !dbg !3998
  br label %4, !dbg !4003

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3998
  ret i32 %5, !dbg !4004
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !4005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4008
  %2 = and i32 %0, 31, !dbg !4009
  %3 = shl nuw i32 1, %2, !dbg !4010
  %4 = lshr i32 %0, 5, !dbg !4011
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4012
  store volatile i32 %3, i32* %5, align 4, !dbg !4013
  ret void, !dbg !4014
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !4015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i32 -1, metadata !4018, metadata !DIExpression()), !dbg !4019
  %2 = icmp ugt i32 %0, 95, !dbg !4020
  br i1 %2, label %4, label %3, !dbg !4020

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4022
  call void @llvm.dbg.value(metadata i32 0, metadata !4018, metadata !DIExpression()), !dbg !4019
  br label %4, !dbg !4024

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4019
  ret i32 %5, !dbg !4025
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !4026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4028, metadata !DIExpression()), !dbg !4029
  %2 = and i32 %0, 31, !dbg !4030
  %3 = shl nuw i32 1, %2, !dbg !4031
  %4 = lshr i32 %0, 5, !dbg !4032
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4033
  store volatile i32 %3, i32* %5, align 4, !dbg !4034
  ret void, !dbg !4035
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4040, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %1, metadata !4041, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 -1, metadata !4042, metadata !DIExpression()), !dbg !4043
  %3 = icmp ugt i32 %0, 95, !dbg !4044
  br i1 %3, label %5, label %4, !dbg !4044

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !4046
  call void @llvm.dbg.value(metadata i32 0, metadata !4042, metadata !DIExpression()), !dbg !4043
  br label %5, !dbg !4048

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4043
  ret i32 %6, !dbg !4049
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !4050 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4054, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %1, metadata !4055, metadata !DIExpression()), !dbg !4056
  %3 = trunc i32 %1 to i8, !dbg !4057
  %4 = shl i8 %3, 5, !dbg !4057
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4060
  store volatile i8 %4, i8* %5, align 1, !dbg !4061
  ret void, !dbg !4062
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !4063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4065, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 68, metadata !4066, metadata !DIExpression()), !dbg !4067
  %2 = icmp ugt i32 %0, 95, !dbg !4068
  br i1 %2, label %5, label %3, !dbg !4068

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %4, metadata !4066, metadata !DIExpression()), !dbg !4067
  br label %5, !dbg !4072

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4067
  ret i32 %6, !dbg !4073
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !4074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4076, metadata !DIExpression()), !dbg !4077
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4078
  %3 = load volatile i8, i8* %2, align 1, !dbg !4078
  %4 = lshr i8 %3, 5, !dbg !4081
  %5 = zext i8 %4 to i32, !dbg !4081
  ret i32 %5, !dbg !4082
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !4083 {
  ret void, !dbg !4084
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4085 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4087, metadata !DIExpression()), !dbg !4089
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4090
  call void @llvm.dbg.value(metadata i32 %1, metadata !4088, metadata !DIExpression()), !dbg !4089
  %2 = icmp ugt i32 %1, 95, !dbg !4091
  br i1 %2, label %12, label %3, !dbg !4091

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4093
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4093
  %6 = icmp eq void (i32)* %5, null, !dbg !4095
  br i1 %6, label %7, label %8, !dbg !4096

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4087, metadata !DIExpression()), !dbg !4089
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0)) #15, !dbg !4097
  br label %12, !dbg !4099

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4100
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4102
  store i32 %9, i32* %10, align 4, !dbg !4103
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4104
  tail call void %11(i32 noundef %1) #15, !dbg !4105
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()), !dbg !4089
  br label %12, !dbg !4106

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4089
  ret i32 %13, !dbg !4107
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !4108 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4111
  %2 = and i32 %1, 511, !dbg !4112
  call void @llvm.dbg.value(metadata i32 %2, metadata !4110, metadata !DIExpression()), !dbg !4113
  %3 = add nsw i32 %2, -16, !dbg !4114
  ret i32 %3, !dbg !4115
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !4116 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4117
  %2 = lshr i32 %1, 22, !dbg !4118
  %3 = and i32 %2, 1, !dbg !4118
  ret i32 %3, !dbg !4119
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4125, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4126, metadata !DIExpression()), !dbg !4128
  %3 = icmp ugt i32 %0, 95, !dbg !4129
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4129
  br i1 %5, label %10, label %6, !dbg !4129

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4131
  call void @llvm.dbg.value(metadata i32 %7, metadata !4127, metadata !DIExpression()), !dbg !4128
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4132
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4133
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4134
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4135
  store i32 0, i32* %9, align 4, !dbg !4136
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !4137
  br label %10, !dbg !4138

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4128
  ret i32 %11, !dbg !4139
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4140 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4144, metadata !DIExpression()), !dbg !4145
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4146
  store i32 %2, i32* %0, align 4, !dbg !4147
  ret i32 0, !dbg !4148
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4149 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4153, metadata !DIExpression()), !dbg !4154
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !4155
  ret i32 0, !dbg !4156
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4157 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4163, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.value(metadata i8 %1, metadata !4164, metadata !DIExpression()), !dbg !4166
  %3 = icmp ugt i32 %0, 60, !dbg !4167
  br i1 %3, label %11, label %4, !dbg !4169

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4170
  br i1 %5, label %11, label %6, !dbg !4172

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4173
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %8, metadata !4165, metadata !DIExpression()), !dbg !4166
  %9 = icmp slt i32 %8, 0, !dbg !4175
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4175
  br label %11, !dbg !4176

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4166
  ret i32 %12, !dbg !4177
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !4178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4183, metadata !DIExpression()), !dbg !4184
  ret i32 0, !dbg !4185
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !4186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4188, metadata !DIExpression()), !dbg !4189
  ret i32 0, !dbg !4190
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4191 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4195, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i32* %1, metadata !4196, metadata !DIExpression()), !dbg !4205
  %4 = icmp eq i32* %1, null, !dbg !4206
  br i1 %4, label %12, label %5, !dbg !4208

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4209
  br i1 %6, label %12, label %7, !dbg !4211

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4212
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4212
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4212
  %10 = load i8, i8* %9, align 1, !dbg !4212
  call void @llvm.dbg.value(metadata i8 %10, metadata !4197, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4205
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4212
  %11 = zext i8 %10 to i32, !dbg !4213
  store i32 %11, i32* %1, align 4, !dbg !4214
  br label %12, !dbg !4215

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4205
  ret i32 %13, !dbg !4216
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4221, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %1, metadata !4222, metadata !DIExpression()), !dbg !4224
  %3 = icmp ugt i32 %0, 60, !dbg !4225
  br i1 %3, label %9, label %4, !dbg !4227

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4228
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4229
  call void @llvm.dbg.value(metadata i32 %6, metadata !4223, metadata !DIExpression()), !dbg !4224
  %7 = icmp slt i32 %6, 0, !dbg !4230
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4230
  br label %9, !dbg !4231

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4224
  ret i32 %10, !dbg !4232
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4233 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4235, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32* %1, metadata !4236, metadata !DIExpression()), !dbg !4238
  %4 = icmp ugt i32 %0, 60, !dbg !4239
  br i1 %4, label %12, label %5, !dbg !4241

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4242
  br i1 %6, label %12, label %7, !dbg !4244

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4245
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4245
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4245
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4245
  %10 = load i8, i8* %9, align 2, !dbg !4245
  call void @llvm.dbg.value(metadata i8 %10, metadata !4237, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4238
  call void @llvm.dbg.value(metadata i8 undef, metadata !4237, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4238
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4245
  %11 = zext i8 %10 to i32, !dbg !4246
  store i32 %11, i32* %1, align 4, !dbg !4247
  br label %12, !dbg !4248

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4238
  ret i32 %13, !dbg !4249
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4255, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i32 %1, metadata !4256, metadata !DIExpression()), !dbg !4258
  %3 = icmp ugt i32 %0, 60, !dbg !4259
  br i1 %3, label %8, label %4, !dbg !4261

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4262
  call void @llvm.dbg.value(metadata i32 %5, metadata !4257, metadata !DIExpression()), !dbg !4258
  %6 = icmp slt i32 %5, 0, !dbg !4263
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4263
  br label %8, !dbg !4264

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4258
  ret i32 %9, !dbg !4265
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4266 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4271, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32* %1, metadata !4272, metadata !DIExpression()), !dbg !4274
  %4 = icmp ugt i32 %0, 60, !dbg !4275
  br i1 %4, label %13, label %5, !dbg !4277

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4278
  br i1 %6, label %13, label %7, !dbg !4280

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4281
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4281
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4281
  call void @llvm.dbg.value(metadata i32 undef, metadata !4273, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4274
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4281
  %10 = load i8, i8* %9, align 4, !dbg !4281
  call void @llvm.dbg.value(metadata i8 %10, metadata !4273, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4274
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4281
  %11 = icmp ne i8 %10, 0, !dbg !4282
  %12 = zext i1 %11 to i32, !dbg !4282
  store i32 %12, i32* %1, align 4, !dbg !4283
  br label %13, !dbg !4284

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4274
  ret i32 %14, !dbg !4285
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4286 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4288, metadata !DIExpression()), !dbg !4290
  %3 = icmp ugt i32 %0, 60, !dbg !4291
  br i1 %3, label %11, label %4, !dbg !4293

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4294
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4294
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4294
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4294
  %7 = load i8, i8* %6, align 2, !dbg !4294
  call void @llvm.dbg.value(metadata i8 %7, metadata !4289, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4290
  call void @llvm.dbg.value(metadata i8 undef, metadata !4289, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4294
  %8 = xor i8 %7, 1, !dbg !4295
  %9 = zext i8 %8 to i32, !dbg !4295
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4296
  br label %11, !dbg !4297

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4290
  ret i32 %12, !dbg !4298
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4299 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4301, metadata !DIExpression()), !dbg !4303
  %2 = icmp ugt i32 %0, 60, !dbg !4304
  br i1 %2, label %10, label %3, !dbg !4306

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4307
  call void @llvm.dbg.value(metadata i32 %4, metadata !4302, metadata !DIExpression()), !dbg !4303
  %5 = icmp slt i32 %4, 0, !dbg !4308
  br i1 %5, label %10, label %6, !dbg !4310

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %7, metadata !4302, metadata !DIExpression()), !dbg !4303
  %8 = icmp slt i32 %7, 0, !dbg !4312
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4312
  br label %10, !dbg !4313

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4303
  ret i32 %11, !dbg !4314
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4317, metadata !DIExpression()), !dbg !4319
  %2 = icmp ugt i32 %0, 60, !dbg !4320
  br i1 %2, label %10, label %3, !dbg !4322

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %4, metadata !4318, metadata !DIExpression()), !dbg !4319
  %5 = icmp slt i32 %4, 0, !dbg !4324
  br i1 %5, label %10, label %6, !dbg !4326

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %7, metadata !4318, metadata !DIExpression()), !dbg !4319
  %8 = icmp slt i32 %7, 0, !dbg !4328
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4328
  br label %10, !dbg !4329

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4319
  ret i32 %11, !dbg !4330
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4333, metadata !DIExpression()), !dbg !4335
  %2 = icmp ugt i32 %0, 60, !dbg !4336
  br i1 %2, label %7, label %3, !dbg !4338

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4339
  call void @llvm.dbg.value(metadata i32 %4, metadata !4334, metadata !DIExpression()), !dbg !4335
  %5 = icmp slt i32 %4, 0, !dbg !4340
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4340
  br label %7, !dbg !4341

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4335
  ret i32 %8, !dbg !4342
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4347, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %1, metadata !4348, metadata !DIExpression()), !dbg !4350
  %3 = icmp ugt i32 %0, 60, !dbg !4351
  br i1 %3, label %9, label %4, !dbg !4353

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4354
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4355
  call void @llvm.dbg.value(metadata i32 %6, metadata !4349, metadata !DIExpression()), !dbg !4350
  %7 = icmp slt i32 %6, 0, !dbg !4356
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4356
  br label %9, !dbg !4357

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4350
  ret i32 %10, !dbg !4358
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4359 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i32* %1, metadata !4365, metadata !DIExpression()), !dbg !4368
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4369
  %4 = icmp ugt i32 %0, 60, !dbg !4370
  br i1 %4, label %11, label %5, !dbg !4372

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4367, metadata !DIExpression(DW_OP_deref)), !dbg !4368
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4373
  call void @llvm.dbg.value(metadata i32 %6, metadata !4366, metadata !DIExpression()), !dbg !4368
  %7 = load i8, i8* %3, align 1, !dbg !4374
  call void @llvm.dbg.value(metadata i8 %7, metadata !4367, metadata !DIExpression()), !dbg !4368
  %8 = zext i8 %7 to i32, !dbg !4375
  store i32 %8, i32* %1, align 4, !dbg !4376
  %9 = icmp slt i32 %6, 0, !dbg !4377
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4377
  br label %11, !dbg !4378

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4368
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4379
  ret i32 %12, !dbg !4379
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_init() local_unnamed_addr #3 !dbg !4380 {
  call void @llvm.dbg.value(metadata i8 1, metadata !4385, metadata !DIExpression()), !dbg !4386
  %1 = tail call zeroext i8 @halRTCInit() #15, !dbg !4387
  call void @llvm.dbg.value(metadata i8 %1, metadata !4385, metadata !DIExpression()), !dbg !4386
  %2 = icmp eq i8 %1, 1, !dbg !4388
  %3 = select i1 %2, i32 -2, i32 0, !dbg !4386
  ret i32 %3, !dbg !4390
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_deinit() local_unnamed_addr #3 !dbg !4391 {
  call void @llvm.dbg.value(metadata i8 1, metadata !4393, metadata !DIExpression()), !dbg !4394
  %1 = tail call zeroext i8 @halRTCDeInit() #15, !dbg !4395
  call void @llvm.dbg.value(metadata i8 %1, metadata !4393, metadata !DIExpression()), !dbg !4394
  %2 = icmp eq i8 %1, 1, !dbg !4396
  %3 = select i1 %2, i32 -2, i32 0, !dbg !4394
  ret i32 %3, !dbg !4398
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_set_time(%struct.hal_rtc_time_t* nocapture noundef readonly %0) local_unnamed_addr #3 !dbg !4399 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !4415, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i8 1, metadata !4416, metadata !DIExpression()), !dbg !4418
  %2 = tail call fastcc i32 @hal_rtc_time_sanity(%struct.hal_rtc_time_t* noundef %0) #14, !dbg !4419
  call void @llvm.dbg.value(metadata i32 %2, metadata !4417, metadata !DIExpression()), !dbg !4418
  %3 = icmp eq i32 %2, -1, !dbg !4420
  br i1 %3, label %22, label %4, !dbg !4422

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !4423
  %6 = load i8, i8* %5, align 1, !dbg !4423
  %7 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !4424
  %8 = load i8, i8* %7, align 1, !dbg !4424
  %9 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !4425
  %10 = load i8, i8* %9, align 1, !dbg !4425
  %11 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !4426
  %12 = load i8, i8* %11, align 1, !dbg !4426
  %13 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !4427
  %14 = load i8, i8* %13, align 1, !dbg !4427
  %15 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !4428
  %16 = load i8, i8* %15, align 1, !dbg !4428
  %17 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !4429
  %18 = load i8, i8* %17, align 1, !dbg !4429
  %19 = tail call zeroext i8 @halRTCSetTime(i8 noundef zeroext %6, i8 noundef zeroext %8, i8 noundef zeroext %10, i8 noundef zeroext %12, i8 noundef zeroext %14, i8 noundef zeroext %16, i8 noundef zeroext %18) #15, !dbg !4430
  call void @llvm.dbg.value(metadata i8 %19, metadata !4416, metadata !DIExpression()), !dbg !4418
  %20 = icmp eq i8 %19, 1, !dbg !4431
  %21 = select i1 %20, i32 -2, i32 0, !dbg !4418
  br label %22, !dbg !4418

22:                                               ; preds = %4, %1
  %23 = phi i32 [ -1, %1 ], [ %21, %4 ], !dbg !4418
  ret i32 %23, !dbg !4433
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @hal_rtc_time_sanity(%struct.hal_rtc_time_t* nocapture noundef readonly %0) unnamed_addr #5 !dbg !4434 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !4436, metadata !DIExpression()), !dbg !4437
  %2 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !4438
  %3 = load i8, i8* %2, align 1, !dbg !4438
  %4 = icmp ugt i8 %3, 99, !dbg !4440
  br i1 %4, label %32, label %5, !dbg !4441

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !4442
  %7 = load i8, i8* %6, align 1, !dbg !4442
  %8 = add i8 %7, -13, !dbg !4443
  %9 = icmp ult i8 %8, -12, !dbg !4443
  br i1 %9, label %32, label %10, !dbg !4443

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !4444
  %12 = load i8, i8* %11, align 1, !dbg !4444
  %13 = add i8 %12, -32, !dbg !4445
  %14 = icmp ult i8 %13, -31, !dbg !4445
  br i1 %14, label %32, label %15, !dbg !4445

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !4446
  %17 = load i8, i8* %16, align 1, !dbg !4446
  %18 = icmp ugt i8 %17, 6, !dbg !4447
  br i1 %18, label %32, label %19, !dbg !4448

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !4449
  %21 = load i8, i8* %20, align 1, !dbg !4449
  %22 = icmp ugt i8 %21, 23, !dbg !4450
  br i1 %22, label %32, label %23, !dbg !4451

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !4452
  %25 = load i8, i8* %24, align 1, !dbg !4452
  %26 = icmp ugt i8 %25, 59, !dbg !4453
  br i1 %26, label %32, label %27, !dbg !4454

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !4455
  %29 = load i8, i8* %28, align 1, !dbg !4455
  %30 = icmp ugt i8 %29, 59, !dbg !4456
  %31 = sext i1 %30 to i32, !dbg !4457
  br label %32, !dbg !4457

32:                                               ; preds = %27, %1, %5, %10, %15, %19, %23
  %33 = phi i32 [ -1, %23 ], [ -1, %19 ], [ -1, %15 ], [ -1, %10 ], [ -1, %5 ], [ -1, %1 ], [ %31, %27 ], !dbg !4437
  ret i32 %33, !dbg !4458
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_get_time(%struct.hal_rtc_time_t* noundef %0) local_unnamed_addr #3 !dbg !4459 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !4464, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i8 1, metadata !4465, metadata !DIExpression()), !dbg !4466
  %2 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !4467
  %3 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !4468
  %4 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !4469
  %5 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !4470
  %6 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !4471
  %7 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !4472
  %8 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !4473
  %9 = tail call zeroext i8 @halRTCGetTime(i8* noundef nonnull %2, i8* noundef nonnull %3, i8* noundef nonnull %4, i8* noundef nonnull %5, i8* noundef nonnull %6, i8* noundef nonnull %7, i8* noundef %8) #15, !dbg !4474
  call void @llvm.dbg.value(metadata i8 %9, metadata !4465, metadata !DIExpression()), !dbg !4466
  %10 = icmp eq i8 %9, 1, !dbg !4475
  %11 = select i1 %10, i32 -2, i32 0, !dbg !4466
  ret i32 %11, !dbg !4477
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_set_alarm(%struct.hal_rtc_time_t* nocapture noundef readonly %0) local_unnamed_addr #3 !dbg !4478 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !4480, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata i8 1, metadata !4481, metadata !DIExpression()), !dbg !4483
  %2 = tail call fastcc i32 @hal_rtc_time_sanity(%struct.hal_rtc_time_t* noundef %0) #14, !dbg !4484
  call void @llvm.dbg.value(metadata i32 %2, metadata !4482, metadata !DIExpression()), !dbg !4483
  %3 = icmp eq i32 %2, -1, !dbg !4485
  br i1 %3, label %22, label %4, !dbg !4487

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !4488
  %6 = load i8, i8* %5, align 1, !dbg !4488
  %7 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !4489
  %8 = load i8, i8* %7, align 1, !dbg !4489
  %9 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !4490
  %10 = load i8, i8* %9, align 1, !dbg !4490
  %11 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !4491
  %12 = load i8, i8* %11, align 1, !dbg !4491
  %13 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !4492
  %14 = load i8, i8* %13, align 1, !dbg !4492
  %15 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !4493
  %16 = load i8, i8* %15, align 1, !dbg !4493
  %17 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !4494
  %18 = load i8, i8* %17, align 1, !dbg !4494
  %19 = tail call zeroext i8 @halRTCSetAlarm(i8 noundef zeroext %6, i8 noundef zeroext %8, i8 noundef zeroext %10, i8 noundef zeroext %12, i8 noundef zeroext %14, i8 noundef zeroext %16, i8 noundef zeroext %18, i8 noundef zeroext -2) #15, !dbg !4495
  call void @llvm.dbg.value(metadata i8 %19, metadata !4481, metadata !DIExpression()), !dbg !4483
  %20 = icmp eq i8 %19, 1, !dbg !4496
  %21 = select i1 %20, i32 -2, i32 0, !dbg !4483
  br label %22, !dbg !4483

22:                                               ; preds = %4, %1
  %23 = phi i32 [ -1, %1 ], [ %21, %4 ], !dbg !4483
  ret i32 %23, !dbg !4498
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_get_alarm(%struct.hal_rtc_time_t* noundef %0) local_unnamed_addr #3 !dbg !4499 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !4501, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.value(metadata i8 1, metadata !4502, metadata !DIExpression()), !dbg !4503
  %2 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !4504
  %3 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !4505
  %4 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !4506
  %5 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !4507
  %6 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !4508
  %7 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !4509
  %8 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !4510
  %9 = tail call zeroext i8 @halRTCGetAlarm(i8* noundef nonnull %2, i8* noundef nonnull %3, i8* noundef nonnull %4, i8* noundef nonnull %5, i8* noundef nonnull %6, i8* noundef nonnull %7, i8* noundef %8) #15, !dbg !4511
  call void @llvm.dbg.value(metadata i8 %9, metadata !4502, metadata !DIExpression()), !dbg !4503
  %10 = icmp eq i8 %9, 1, !dbg !4512
  %11 = select i1 %10, i32 -2, i32 0, !dbg !4503
  ret i32 %11, !dbg !4514
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_enable_alarm() local_unnamed_addr #3 !dbg !4515 {
  call void @llvm.dbg.value(metadata i8 1, metadata !4517, metadata !DIExpression()), !dbg !4518
  %1 = tail call zeroext i8 @halRTCEnableAlarm(i8 noundef zeroext 1) #15, !dbg !4519
  call void @llvm.dbg.value(metadata i8 %1, metadata !4517, metadata !DIExpression()), !dbg !4518
  %2 = icmp eq i8 %1, 1, !dbg !4520
  %3 = select i1 %2, i32 -2, i32 0, !dbg !4518
  ret i32 %3, !dbg !4522
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_disable_alarm() local_unnamed_addr #3 !dbg !4523 {
  call void @llvm.dbg.value(metadata i8 1, metadata !4525, metadata !DIExpression()), !dbg !4526
  %1 = tail call zeroext i8 @halRTCEnableAlarm(i8 noundef zeroext 0) #15, !dbg !4527
  call void @llvm.dbg.value(metadata i8 %1, metadata !4525, metadata !DIExpression()), !dbg !4526
  %2 = icmp eq i8 %1, 1, !dbg !4528
  %3 = select i1 %2, i32 -2, i32 0, !dbg !4526
  ret i32 %3, !dbg !4530
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_set_alarm_callback(void (i8*)* noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !4531 {
  call void @llvm.dbg.value(metadata void (i8*)* %0, metadata !4536, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.value(metadata i8* %1, metadata !4537, metadata !DIExpression()), !dbg !4538
  store void (i8*)* %0, void (i8*)** @s_hal_rtc_alarm_callback, align 4, !dbg !4539
  store i8* %1, i8** @s_hal_rtc_user_data, align 4, !dbg !4540
  %3 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 21, void (i32)* noundef nonnull @hal_rtc_isr) #15, !dbg !4541
  %4 = tail call i32 @hal_nvic_set_priority(i32 noundef 21, i32 noundef 5) #15, !dbg !4542
  %5 = tail call i32 @hal_nvic_enable_irq(i32 noundef 21) #15, !dbg !4543
  ret i32 0, !dbg !4544
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_rtc_isr(i32 noundef %0) #3 !dbg !4545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4547, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* null, metadata !4548, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata %struct._IOT_RTC_CTRL_TypeDef* inttoptr (i32 -2096365564 to %struct._IOT_RTC_CTRL_TypeDef*), metadata !4548, metadata !DIExpression()), !dbg !4549
  %2 = load volatile i32, i32* inttoptr (i32 -2096365520 to i32*), align 16, !dbg !4550
  %3 = or i32 %2, 16, !dbg !4550
  store volatile i32 %3, i32* inttoptr (i32 -2096365520 to i32*), align 16, !dbg !4550
  %4 = load void (i8*)*, void (i8*)** @s_hal_rtc_alarm_callback, align 4, !dbg !4551
  %5 = icmp eq void (i8*)* %4, null, !dbg !4551
  br i1 %5, label %8, label %6, !dbg !4553

6:                                                ; preds = %1
  %7 = load i8*, i8** @s_hal_rtc_user_data, align 4, !dbg !4554
  tail call void %4(i8* noundef %7) #15, !dbg !4556
  br label %8, !dbg !4557

8:                                                ; preds = %6, %1
  ret void, !dbg !4558
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_sleep(i32 noundef %0) local_unnamed_addr #3 !dbg !4559 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4563, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i8 1, metadata !4564, metadata !DIExpression()), !dbg !4566
  %3 = bitcast i32* %2 to i8*, !dbg !4567
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4567
  call void @llvm.dbg.value(metadata i32* %2, metadata !4565, metadata !DIExpression(DW_OP_deref)), !dbg !4566
  %4 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %2) #15, !dbg !4568
  %5 = icmp eq i32 %0, -1161905474, !dbg !4569
  br i1 %5, label %6, label %12, !dbg !4571

6:                                                ; preds = %1
  %7 = call zeroext i8 @halRTCEnterMode() #15, !dbg !4572
  call void @llvm.dbg.value(metadata i8 %7, metadata !4564, metadata !DIExpression()), !dbg !4566
  %8 = icmp eq i8 %7, 1, !dbg !4574
  %9 = load i32, i32* %2, align 4, !dbg !4566
  call void @llvm.dbg.value(metadata i32 %9, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i32 %9, metadata !4565, metadata !DIExpression()), !dbg !4566
  %10 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %9) #15, !dbg !4566
  %11 = select i1 %8, i32 -2, i32 0, !dbg !4566
  br label %15, !dbg !4566

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4, !dbg !4576
  call void @llvm.dbg.value(metadata i32 %13, metadata !4565, metadata !DIExpression()), !dbg !4566
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !4578
  br label %15, !dbg !4579

15:                                               ; preds = %6, %12
  %16 = phi i32 [ -1, %12 ], [ %11, %6 ], !dbg !4566
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4580
  ret i32 %16, !dbg !4580
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_set_data(i16 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 !dbg !4581 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4585, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8* %1, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i16 %2, metadata !4587, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8 1, metadata !4588, metadata !DIExpression()), !dbg !4589
  %4 = tail call zeroext i8 @halRTCSetBackup(i16 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) #15, !dbg !4590
  call void @llvm.dbg.value(metadata i8 %4, metadata !4588, metadata !DIExpression()), !dbg !4589
  %5 = icmp eq i8 %4, 1, !dbg !4591
  %6 = select i1 %5, i32 -2, i32 0, !dbg !4589
  ret i32 %6, !dbg !4593
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_get_data(i16 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 !dbg !4594 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4598, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i8* %1, metadata !4599, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i16 %2, metadata !4600, metadata !DIExpression()), !dbg !4602
  call void @llvm.dbg.value(metadata i8 1, metadata !4601, metadata !DIExpression()), !dbg !4602
  %4 = tail call zeroext i8 @halRTCGetBackup(i16 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) #15, !dbg !4603
  call void @llvm.dbg.value(metadata i8 %4, metadata !4601, metadata !DIExpression()), !dbg !4602
  %5 = icmp eq i8 %4, 1, !dbg !4604
  %6 = select i1 %5, i32 -2, i32 0, !dbg !4602
  ret i32 %6, !dbg !4606
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_clear_data(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #3 !dbg !4607 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !4611, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i16 %1, metadata !4612, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i8 1, metadata !4613, metadata !DIExpression()), !dbg !4614
  %3 = tail call zeroext i8 @halRTCClearBackup(i16 noundef zeroext %0, i16 noundef zeroext %1) #15, !dbg !4615
  call void @llvm.dbg.value(metadata i8 %3, metadata !4613, metadata !DIExpression()), !dbg !4614
  %4 = icmp eq i8 %3, 1, !dbg !4616
  %5 = select i1 %4, i32 -2, i32 0, !dbg !4614
  ret i32 %5, !dbg !4618
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_rtc_get_f32k_frequency(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4619 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4623, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i32 0, metadata !4624, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i32 0, metadata !4625, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i32 0, metadata !4626, metadata !DIExpression()), !dbg !4628
  %3 = bitcast i32* %2 to i8*, !dbg !4629
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4629
  call void @llvm.dbg.value(metadata i32 0, metadata !4627, metadata !DIExpression()), !dbg !4628
  store i32 0, i32* %2, align 4, !dbg !4630
  %4 = tail call i32 @hal_gpio_init(i32 noundef 6) #15, !dbg !4631
  %5 = tail call i32 @hal_gpio_set_direction(i32 noundef 6, i32 noundef 0) #15, !dbg !4632
  call void @llvm.dbg.value(metadata i32* %2, metadata !4627, metadata !DIExpression(DW_OP_deref)), !dbg !4628
  %6 = call i32 @hal_gpio_get_input(i32 noundef 6, i32* noundef nonnull %2) #15, !dbg !4633
  %7 = load volatile i32, i32* inttoptr (i32 -2130571008 to i32*), align 256, !dbg !4634
  call void @llvm.dbg.value(metadata i32 %7, metadata !4626, metadata !DIExpression()), !dbg !4628
  %8 = and i32 %7, -196609, !dbg !4635
  call void @llvm.dbg.value(metadata i32 %8, metadata !4626, metadata !DIExpression()), !dbg !4628
  %9 = load i32, i32* %2, align 4, !dbg !4636
  call void @llvm.dbg.value(metadata i32 %9, metadata !4627, metadata !DIExpression()), !dbg !4628
  switch i32 %9, label %14 [
    i32 0, label %10
    i32 1, label %12
  ], !dbg !4638

10:                                               ; preds = %1
  %11 = or i32 %8, 131072, !dbg !4639
  call void @llvm.dbg.value(metadata i32 %11, metadata !4626, metadata !DIExpression()), !dbg !4628
  br label %14, !dbg !4641

12:                                               ; preds = %1
  %13 = or i32 %8, 65536, !dbg !4642
  call void @llvm.dbg.value(metadata i32 %13, metadata !4626, metadata !DIExpression()), !dbg !4628
  br label %14, !dbg !4645

14:                                               ; preds = %1, %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ], [ %8, %1 ], !dbg !4628
  call void @llvm.dbg.value(metadata i32 %15, metadata !4626, metadata !DIExpression()), !dbg !4628
  store volatile i32 %15, i32* inttoptr (i32 -2130571008 to i32*), align 256, !dbg !4646
  %16 = load i32*, i32** @FRE_DET_CR, align 4, !dbg !4647
  store volatile i32 917504, i32* %16, align 4, !dbg !4648
  call void @llvm.dbg.value(metadata i32 0, metadata !4624, metadata !DIExpression()), !dbg !4628
  %17 = load i32*, i32** @FRE_DET_CR, align 4
  br label %18, !dbg !4649

18:                                               ; preds = %14, %18
  %19 = load volatile i32, i32* %17, align 4, !dbg !4650
  call void @llvm.dbg.value(metadata i32 %19, metadata !4624, metadata !DIExpression()), !dbg !4628
  %20 = and i32 %19, 32768, !dbg !4652
  %21 = icmp eq i32 %20, 0, !dbg !4653
  br i1 %21, label %18, label %22, !dbg !4649, !llvm.loop !4654

22:                                               ; preds = %18
  %23 = load volatile i32, i32* %17, align 4, !dbg !4656
  %24 = and i32 %23, 8191, !dbg !4657
  call void @llvm.dbg.value(metadata i32 %24, metadata !4625, metadata !DIExpression()), !dbg !4628
  %25 = udiv i32 240000000, %24, !dbg !4658
  store i32 %25, i32* %0, align 4, !dbg !4659
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4660
  ret i32 0, !dbg !4661
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4662 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4668, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4669, metadata !DIExpression()), !dbg !4670
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4671
  br i1 %3, label %4, label %18, !dbg !4673

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4674
  %6 = load i8, i8* %5, align 4, !dbg !4674, !range !3580
  %7 = icmp eq i8 %6, 0, !dbg !4674
  br i1 %7, label %8, label %18, !dbg !4676

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !4677
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4678
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4679
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4680
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !4681
  store i8 1, i8* %5, align 4, !dbg !4682
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4683, !range !4684
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !4685
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !4686
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4687
  %16 = icmp eq i32 %15, 0, !dbg !4689
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4670
  br label %18, !dbg !4670

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4670
  ret i32 %19, !dbg !4690
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !4691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4697, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4698, metadata !DIExpression()), !dbg !4699
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4700
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4702
  br i1 %5, label %6, label %22, !dbg !4702

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4703
  %8 = load i32, i32* %7, align 4, !dbg !4703
  %9 = icmp ugt i32 %8, 12, !dbg !4705
  br i1 %9, label %22, label %10, !dbg !4706

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4707
  %12 = load i32, i32* %11, align 4, !dbg !4707
  %13 = icmp ugt i32 %12, 2, !dbg !4708
  br i1 %13, label %22, label %14, !dbg !4709

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4710
  %16 = load i32, i32* %15, align 4, !dbg !4710
  %17 = icmp ugt i32 %16, 1, !dbg !4711
  br i1 %17, label %22, label %18, !dbg !4712

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4713
  %20 = load i32, i32* %19, align 4, !dbg !4713
  %21 = icmp ult i32 %20, 4, !dbg !4714
  br label %22, !dbg !4715

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4699
  ret i1 %23, !dbg !4716
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !4717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4721, metadata !DIExpression()), !dbg !4722
  %2 = icmp ne i32 %0, 0, !dbg !4723
  %3 = zext i1 %2 to i32, !dbg !4724
  ret i32 %3, !dbg !4725
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4730, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4731, metadata !DIExpression()), !dbg !4732
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4733
  br i1 %3, label %4, label %22, !dbg !4735

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4736
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4737
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4738
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !4739
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4740
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4741
  %11 = load i32, i32* %10, align 4, !dbg !4741
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4742
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4743
  %14 = load i32, i32* %13, align 4, !dbg !4743
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4744
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4745
  %17 = load i32, i32* %16, align 4, !dbg !4745
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4746
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4747
  %20 = load i32, i32* %19, align 4, !dbg !4747
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4748
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !4749
  br label %22, !dbg !4750

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4732
  ret i32 %23, !dbg !4751
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !4752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4757, metadata !DIExpression()), !dbg !4762
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4763
  %3 = load i32, i32* %2, align 4, !dbg !4763
  ret i32 %3, !dbg !4764
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !4765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4769, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4770, metadata !DIExpression()), !dbg !4773
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4774
  %3 = load i16, i16* %2, align 2, !dbg !4774
  ret i16 %3, !dbg !4775
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !4776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4780, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4781, metadata !DIExpression()), !dbg !4784
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4785
  %3 = load i16, i16* %2, align 2, !dbg !4785
  ret i16 %3, !dbg !4786
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !4787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4791, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4792, metadata !DIExpression()), !dbg !4795
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4796
  %3 = load i16, i16* %2, align 2, !dbg !4796
  ret i16 %3, !dbg !4797
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4802, metadata !DIExpression()), !dbg !4803
  %2 = icmp ult i32 %0, 2, !dbg !4804
  ret i1 %2, !dbg !4805
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4806 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4810, metadata !DIExpression()), !dbg !4811
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4812
  br i1 %2, label %3, label %10, !dbg !4814

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4815
  %5 = load i8, i8* %4, align 4, !dbg !4815, !range !3580
  %6 = icmp eq i8 %5, 0, !dbg !4817
  br i1 %6, label %10, label %7, !dbg !4818

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !4819
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4820, !range !4684
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !4821
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !4822
  br label %10, !dbg !4823

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4811
  ret i32 %11, !dbg !4824
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4825 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4829, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i8 %1, metadata !4830, metadata !DIExpression()), !dbg !4832
  %3 = icmp eq i32 %0, 0, !dbg !4833
  %4 = icmp eq i32 %0, 1, !dbg !4833
  %5 = select i1 %4, i32 1, i32 2, !dbg !4833
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4833
  call void @llvm.dbg.value(metadata i32 %6, metadata !4831, metadata !DIExpression()), !dbg !4832
  %7 = icmp eq i32 %6, 2, !dbg !4834
  br i1 %7, label %9, label %8, !dbg !4836

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !4837
  br label %9, !dbg !4839

9:                                                ; preds = %2, %8
  ret void, !dbg !4840
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4845, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i8* %1, metadata !4846, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.value(metadata i32 %2, metadata !4847, metadata !DIExpression()), !dbg !4850
  %4 = icmp eq i32 %0, 0, !dbg !4851
  %5 = icmp eq i32 %0, 1, !dbg !4851
  %6 = select i1 %5, i32 1, i32 2, !dbg !4851
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4851
  call void @llvm.dbg.value(metadata i32 %7, metadata !4848, metadata !DIExpression()), !dbg !4850
  %8 = icmp eq i8* %1, null, !dbg !4852
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4854
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4854
  call void @llvm.dbg.value(metadata i32 0, metadata !4849, metadata !DIExpression()), !dbg !4850
  br i1 %12, label %19, label %13, !dbg !4854

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4849, metadata !DIExpression()), !dbg !4850
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4855
  %16 = load i8, i8* %15, align 1, !dbg !4855
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !4861
  %17 = add nuw i32 %14, 1, !dbg !4862
  call void @llvm.dbg.value(metadata i32 %17, metadata !4849, metadata !DIExpression()), !dbg !4850
  %18 = icmp eq i32 %17, %2, !dbg !4863
  br i1 %18, label %19, label %13, !dbg !4864, !llvm.loop !4865

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4850
  ret i32 %20, !dbg !4867
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4868 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4870, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i8* %1, metadata !4871, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.value(metadata i32 %2, metadata !4872, metadata !DIExpression()), !dbg !4877
  %5 = bitcast i32* %4 to i8*, !dbg !4878
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4878
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4879
  br i1 %6, label %7, label %24, !dbg !4881

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4882
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4884
  br i1 %10, label %24, label %11, !dbg !4884

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4885
  %13 = load i8, i8* %12, align 4, !dbg !4885, !range !3580
  %14 = icmp eq i8 %13, 0, !dbg !4885
  br i1 %14, label %24, label %15, !dbg !4887

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4888, !range !4684
  call void @llvm.dbg.value(metadata i32* %4, metadata !4873, metadata !DIExpression(DW_OP_deref)), !dbg !4877
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4889
  %17 = load i32, i32* %4, align 4, !dbg !4890
  call void @llvm.dbg.value(metadata i32 %17, metadata !4873, metadata !DIExpression()), !dbg !4877
  %18 = icmp ult i32 %17, %2, !dbg !4892
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4874, metadata !DIExpression()), !dbg !4877
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !4893
  %20 = load i32, i32* %4, align 4, !dbg !4894
  call void @llvm.dbg.value(metadata i32 %20, metadata !4873, metadata !DIExpression()), !dbg !4877
  %21 = icmp eq i32 %19, %20, !dbg !4896
  br i1 %21, label %22, label %24, !dbg !4897

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4898, !range !4900
  call void @llvm.dbg.value(metadata i32 %23, metadata !4875, metadata !DIExpression()), !dbg !4877
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !4901
  br label %24, !dbg !4902

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4877
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4903
  ret i32 %25, !dbg !4903
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4904 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4908, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i1 %1, metadata !4909, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4911
  %3 = icmp eq i32 %0, 0, !dbg !4912
  %4 = select i1 %1, i32 15, i32 14, !dbg !4914
  %5 = select i1 %1, i32 17, i32 16, !dbg !4914
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4914
  call void @llvm.dbg.value(metadata i32 %6, metadata !4910, metadata !DIExpression()), !dbg !4911
  ret i32 %6, !dbg !4915
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4920, metadata !DIExpression()), !dbg !4922
  %2 = icmp eq i32 %0, 0, !dbg !4923
  %3 = icmp eq i32 %0, 1, !dbg !4923
  %4 = select i1 %3, i32 1, i32 2, !dbg !4923
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4923
  call void @llvm.dbg.value(metadata i32 %5, metadata !4921, metadata !DIExpression()), !dbg !4922
  %6 = icmp ult i32 %5, 2, !dbg !4924
  br i1 %6, label %7, label %9, !dbg !4926

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !4927
  br label %9, !dbg !4929

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4930
  ret i8 %10, !dbg !4931
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4936, metadata !DIExpression()), !dbg !4938
  %2 = icmp eq i32 %0, 0, !dbg !4939
  %3 = icmp eq i32 %0, 1, !dbg !4939
  %4 = select i1 %3, i32 1, i32 2, !dbg !4939
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4939
  call void @llvm.dbg.value(metadata i32 %5, metadata !4937, metadata !DIExpression()), !dbg !4938
  %6 = icmp ult i32 %5, 2, !dbg !4940
  br i1 %6, label %7, label %9, !dbg !4942

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !4943
  br label %9, !dbg !4945

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4946
  ret i32 %10, !dbg !4947
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4952, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i8* %1, metadata !4953, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i32 %2, metadata !4954, metadata !DIExpression()), !dbg !4957
  %4 = icmp eq i32 %0, 0, !dbg !4958
  %5 = icmp eq i32 %0, 1, !dbg !4958
  %6 = select i1 %5, i32 1, i32 2, !dbg !4958
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4958
  call void @llvm.dbg.value(metadata i32 %7, metadata !4955, metadata !DIExpression()), !dbg !4957
  %8 = icmp eq i8* %1, null, !dbg !4959
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4961
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4961
  call void @llvm.dbg.value(metadata i32 0, metadata !4956, metadata !DIExpression()), !dbg !4957
  br i1 %12, label %19, label %13, !dbg !4961

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4956, metadata !DIExpression()), !dbg !4957
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !4962
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4968
  store i8 %15, i8* %16, align 1, !dbg !4969
  %17 = add nuw i32 %14, 1, !dbg !4970
  call void @llvm.dbg.value(metadata i32 %17, metadata !4956, metadata !DIExpression()), !dbg !4957
  %18 = icmp eq i32 %17, %2, !dbg !4971
  br i1 %18, label %19, label %13, !dbg !4972, !llvm.loop !4973

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4957
  ret i32 %20, !dbg !4975
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4976 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4978, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i8* %1, metadata !4979, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.value(metadata i32 %2, metadata !4980, metadata !DIExpression()), !dbg !4984
  %5 = bitcast i32* %4 to i8*, !dbg !4985
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4985
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4986
  br i1 %6, label %7, label %20, !dbg !4988

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4989
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4991
  br i1 %10, label %20, label %11, !dbg !4991

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4992, !range !4684
  call void @llvm.dbg.value(metadata i32* %4, metadata !4981, metadata !DIExpression(DW_OP_deref)), !dbg !4984
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !4993
  %13 = load i32, i32* %4, align 4, !dbg !4994
  call void @llvm.dbg.value(metadata i32 %13, metadata !4981, metadata !DIExpression()), !dbg !4984
  %14 = icmp ult i32 %13, %2, !dbg !4996
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4982, metadata !DIExpression()), !dbg !4984
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !4997
  %16 = load i32, i32* %4, align 4, !dbg !4998
  call void @llvm.dbg.value(metadata i32 %16, metadata !4981, metadata !DIExpression()), !dbg !4984
  %17 = icmp eq i32 %15, %16, !dbg !5000
  br i1 %17, label %18, label %20, !dbg !5001

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5002, !range !4900
  call void @llvm.dbg.value(metadata i32 %19, metadata !4983, metadata !DIExpression()), !dbg !4984
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !5004
  br label %20, !dbg !5005

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4984
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5006
  ret i32 %21, !dbg !5006
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !5007 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5009, metadata !DIExpression()), !dbg !5011
  %3 = bitcast i32* %2 to i8*, !dbg !5012
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !5012
  call void @llvm.dbg.value(metadata i32 0, metadata !5010, metadata !DIExpression()), !dbg !5011
  store i32 0, i32* %2, align 4, !dbg !5013
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5014
  br i1 %4, label %5, label %8, !dbg !5016

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5017, !range !4684
  call void @llvm.dbg.value(metadata i32* %2, metadata !5010, metadata !DIExpression(DW_OP_deref)), !dbg !5011
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !5018
  %7 = load i32, i32* %2, align 4, !dbg !5019
  call void @llvm.dbg.value(metadata i32 %7, metadata !5010, metadata !DIExpression()), !dbg !5011
  br label %8, !dbg !5020

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5011
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !5021
  ret i32 %9, !dbg !5021
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !5022 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5024, metadata !DIExpression()), !dbg !5026
  %3 = bitcast i32* %2 to i8*, !dbg !5027
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !5027
  call void @llvm.dbg.value(metadata i32 0, metadata !5025, metadata !DIExpression()), !dbg !5026
  store i32 0, i32* %2, align 4, !dbg !5028
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5029
  br i1 %4, label %5, label %8, !dbg !5031

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5032, !range !4684
  call void @llvm.dbg.value(metadata i32* %2, metadata !5025, metadata !DIExpression(DW_OP_deref)), !dbg !5026
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !5033
  %7 = load i32, i32* %2, align 4, !dbg !5034
  call void @llvm.dbg.value(metadata i32 %7, metadata !5025, metadata !DIExpression()), !dbg !5026
  br label %8, !dbg !5035

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5026
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !5036
  ret i32 %9, !dbg !5036
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !5037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5041, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5042, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata i8* %2, metadata !5043, metadata !DIExpression()), !dbg !5045
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5046
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5048
  br i1 %6, label %7, label %18, !dbg !5048

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5049
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5050
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5051
  store i8* %2, i8** %9, align 4, !dbg !5052
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5053
  store i8 1, i8* %10, align 4, !dbg !5054
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5055
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !5056
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !5057
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !5058
  %13 = icmp eq i32 %11, 0, !dbg !5059
  br i1 %13, label %14, label %15, !dbg !5061

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !5062
  br label %16, !dbg !5064

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !5065
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !5067, !range !4900
  call void @llvm.dbg.value(metadata i32 %17, metadata !5044, metadata !DIExpression()), !dbg !5045
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !5068
  br label %18, !dbg !5069

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5045
  ret i32 %19, !dbg !5070
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !474, metadata !DIExpression()), !dbg !5071
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5072
  %3 = load void ()*, void ()** %2, align 4, !dbg !5072
  ret void ()* %3, !dbg !5073
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !5074 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5080, !range !3580
  %2 = icmp eq i8 %1, 0, !dbg !5080
  br i1 %2, label %8, label %3, !dbg !5081

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5082
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5084
  br i1 %5, label %8, label %6, !dbg !5085

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5086
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5088
  br label %8, !dbg !5089

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5090, !range !4684
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5091
  ret void, !dbg !5092
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !5093 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5098, !range !3580
  %2 = icmp eq i8 %1, 0, !dbg !5098
  br i1 %2, label %8, label %3, !dbg !5099

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5100
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5102
  br i1 %5, label %8, label %6, !dbg !5103

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5104
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5106
  br label %8, !dbg !5107

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5108, !range !4684
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5109
  ret void, !dbg !5110
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5111 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5115, metadata !DIExpression()), !dbg !5122
  call void @llvm.dbg.value(metadata i1 %1, metadata !5116, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5122
  %5 = bitcast i32* %3 to i8*, !dbg !5123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5123
  %6 = bitcast i32* %4 to i8*, !dbg !5123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5123
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5119, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5122
  br i1 %1, label %7, label %12, !dbg !5124

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5119, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5122
  call void @llvm.dbg.value(metadata i32* %3, metadata !5117, metadata !DIExpression(DW_OP_deref)), !dbg !5122
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !5125
  %8 = load i32, i32* %3, align 4, !dbg !5128
  call void @llvm.dbg.value(metadata i32 %8, metadata !5117, metadata !DIExpression()), !dbg !5122
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5130
  %10 = load i32, i32* %9, align 4, !dbg !5130
  %11 = icmp ult i32 %8, %10, !dbg !5131
  br i1 %11, label %22, label %20, !dbg !5132

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5118, metadata !DIExpression(DW_OP_deref)), !dbg !5122
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5133
  %13 = load i32, i32* %4, align 4, !dbg !5135
  call void @llvm.dbg.value(metadata i32 %13, metadata !5118, metadata !DIExpression()), !dbg !5122
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5137
  %15 = load i32, i32* %14, align 4, !dbg !5137
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5138
  %17 = load i32, i32* %16, align 4, !dbg !5138
  %18 = sub i32 %15, %17, !dbg !5139
  %19 = icmp ult i32 %13, %18, !dbg !5140
  br i1 %19, label %22, label %20, !dbg !5141

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5142, !range !4900
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !5142
  br label %22, !dbg !5143

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5143
  ret void, !dbg !5143
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5144 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5149, !range !3580
  %2 = icmp eq i8 %1, 0, !dbg !5149
  br i1 %2, label %11, label %3, !dbg !5150

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5151
  %5 = icmp eq i32 %4, 0, !dbg !5152
  br i1 %5, label %11, label %6, !dbg !5153

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5154
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5156
  br i1 %8, label %11, label %9, !dbg !5157

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5158
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5160
  br label %11, !dbg !5161

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5162, !range !4684
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5163
  ret void, !dbg !5164
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5165 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5170, !range !3580
  %2 = icmp eq i8 %1, 0, !dbg !5170
  br i1 %2, label %11, label %3, !dbg !5171

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5172
  %5 = icmp eq i32 %4, 0, !dbg !5173
  br i1 %5, label %11, label %6, !dbg !5174

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5175
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5177
  br i1 %8, label %11, label %9, !dbg !5178

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5179
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5181
  br label %11, !dbg !5182

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5183, !range !4684
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5184
  ret void, !dbg !5185
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5190, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.value(metadata i32 %1, metadata !5191, metadata !DIExpression()), !dbg !5192
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5193
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5195
  br i1 %5, label %6, label %10, !dbg !5195

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5196
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5197
  store i32 %1, i32* %8, align 4, !dbg !5198
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5199
  br label %10, !dbg !5200

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5192
  ret i32 %11, !dbg !5201
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5208, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5209, metadata !DIExpression()), !dbg !5210
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5211
  br i1 %3, label %4, label %28, !dbg !5213

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5214
  br i1 %5, label %6, label %28, !dbg !5216

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5217
  store i8 1, i8* %7, align 4, !dbg !5218
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5219
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5220
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5221
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !5222
  tail call void @DMA_Init() #15, !dbg !5223
  tail call void @DMA_Vfifo_init() #15, !dbg !5224
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5225
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5226
  %14 = load i8*, i8** %13, align 4, !dbg !5226
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5227
  %16 = load i32, i32* %15, align 4, !dbg !5227
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5228
  %18 = load i32, i32* %17, align 4, !dbg !5228
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5229
  %20 = load i32, i32* %19, align 4, !dbg !5229
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5230
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !5231
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5232
  %23 = load i8*, i8** %22, align 4, !dbg !5232
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5233
  %25 = load i32, i32* %24, align 4, !dbg !5233
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5234
  %27 = load i32, i32* %26, align 4, !dbg !5234
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !5235
  br label %28, !dbg !5236

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5210
  ret i32 %29, !dbg !5237
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !5238 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5242, metadata !DIExpression()), !dbg !5243
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5244
  br i1 %2, label %27, label %3, !dbg !5246

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5247
  %5 = load i8*, i8** %4, align 4, !dbg !5247
  %6 = icmp eq i8* %5, null, !dbg !5249
  br i1 %6, label %27, label %7, !dbg !5250

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5251
  %9 = load i32, i32* %8, align 4, !dbg !5251
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5253
  %11 = load i32, i32* %10, align 4, !dbg !5253
  %12 = icmp ult i32 %9, %11, !dbg !5254
  br i1 %12, label %27, label %13, !dbg !5255

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5256
  %15 = load i32, i32* %14, align 4, !dbg !5256
  %16 = icmp ult i32 %9, %15, !dbg !5258
  br i1 %16, label %27, label %17, !dbg !5259

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5260
  %19 = load i8*, i8** %18, align 4, !dbg !5260
  %20 = icmp eq i8* %19, null, !dbg !5262
  br i1 %20, label %27, label %21, !dbg !5263

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5264
  %23 = load i32, i32* %22, align 4, !dbg !5264
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5266
  %25 = load i32, i32* %24, align 4, !dbg !5266
  %26 = icmp uge i32 %23, %25, !dbg !5267
  br label %27, !dbg !5268

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5243
  ret i1 %28, !dbg !5269
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #4

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5274, metadata !DIExpression()), !dbg !5276
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !5277
  %3 = udiv i32 %2, 1000000, !dbg !5278
  call void @llvm.dbg.value(metadata i32 %3, metadata !5275, metadata !DIExpression()), !dbg !5276
  %4 = mul i32 %3, %0, !dbg !5279
  ret i32 %4, !dbg !5280
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5283, metadata !DIExpression()), !dbg !5285
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5286
  br i1 %2, label %3, label %8, !dbg !5288

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5289
  %5 = icmp eq i32 %0, 1, !dbg !5289
  %6 = select i1 %5, i32 1, i32 2, !dbg !5289
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5289
  call void @llvm.dbg.value(metadata i32 %7, metadata !5284, metadata !DIExpression()), !dbg !5285
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !5290
  br label %8, !dbg !5291

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5285
  ret i32 %9, !dbg !5292
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5297, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.value(metadata i8 %1, metadata !5298, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.value(metadata i8 %2, metadata !5299, metadata !DIExpression()), !dbg !5302
  call void @llvm.dbg.value(metadata i8 %3, metadata !5300, metadata !DIExpression()), !dbg !5302
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5303
  br i1 %5, label %6, label %11, !dbg !5305

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5306
  %8 = icmp eq i32 %0, 1, !dbg !5306
  %9 = select i1 %8, i32 1, i32 2, !dbg !5306
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5306
  call void @llvm.dbg.value(metadata i32 %10, metadata !5301, metadata !DIExpression()), !dbg !5302
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !5307
  br label %11, !dbg !5308

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5302
  ret i32 %12, !dbg !5309
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5312, metadata !DIExpression()), !dbg !5314
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5315
  br i1 %2, label %3, label %8, !dbg !5317

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5318
  %5 = icmp eq i32 %0, 1, !dbg !5318
  %6 = select i1 %5, i32 1, i32 2, !dbg !5318
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5318
  call void @llvm.dbg.value(metadata i32 %7, metadata !5313, metadata !DIExpression()), !dbg !5314
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !5319
  br label %8, !dbg !5320

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5314
  ret i32 %9, !dbg !5321
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5322 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5326, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.value(metadata i32 %1, metadata !5327, metadata !DIExpression()), !dbg !5328
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5329
  br i1 %3, label %4, label %8, !dbg !5331

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5332
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5334
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !5334
  br label %8, !dbg !5335

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5328
  ret i32 %9, !dbg !5335
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !5336 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5340, metadata !DIExpression()), !dbg !5341
  %2 = trunc i32 %0 to i8, !dbg !5342
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !5343
  ret i32 %0, !dbg !5344
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #11 !dbg !5345 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5346
  tail call fastcc void @prvSetupHardware() #14, !dbg !5347
  tail call void asm sideeffect "cpsie i", "~{memory}"() #16, !dbg !5348, !srcloc !5351
  tail call void asm sideeffect "cpsie f", "~{memory}"() #16, !dbg !5352, !srcloc !5355
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #15, !dbg !5356
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.11, i32 0, i32 0)) #15, !dbg !5357
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)) #15, !dbg !5358
  tail call fastcc void @rtc_set_alarm_example() #14, !dbg !5359
  br label %4, !dbg !5360

4:                                                ; preds = %4, %0
  br label %4, !dbg !5361, !llvm.loop !5364
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5367 {
  tail call void @top_xtal_init() #15, !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !5370 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5371
  ret void, !dbg !5372
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @rtc_set_alarm_example() unnamed_addr #3 !dbg !5373 {
  %1 = alloca %struct.hal_rtc_time_t, align 1
  %2 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 0, !dbg !5386
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %2) #16, !dbg !5386
  call void @llvm.dbg.declare(metadata %struct.hal_rtc_time_t* %1, metadata !5375, metadata !DIExpression()), !dbg !5387
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.12, i32 0, i32 0)) #15, !dbg !5388
  %4 = tail call i32 @hal_rtc_init() #15, !dbg !5389
  call fastcc void @rtc_fill_time(%struct.hal_rtc_time_t* noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @param, i32 0, i32 0)) #14, !dbg !5390
  %5 = call i32 @hal_rtc_set_time(%struct.hal_rtc_time_t* noundef nonnull %1) #15, !dbg !5391
  %6 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 6, !dbg !5392
  %7 = load i8, i8* %6, align 1, !dbg !5392
  %8 = zext i8 %7 to i32, !dbg !5393
  %9 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 4, !dbg !5394
  %10 = load i8, i8* %9, align 1, !dbg !5394
  %11 = zext i8 %10 to i32, !dbg !5395
  %12 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 3, !dbg !5396
  %13 = load i8, i8* %12, align 1, !dbg !5396
  %14 = zext i8 %13 to i32, !dbg !5397
  %15 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 5, !dbg !5398
  %16 = load i8, i8* %15, align 1, !dbg !5398
  %17 = zext i8 %16 to i32, !dbg !5399
  %18 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 2, !dbg !5400
  %19 = load i8, i8* %18, align 1, !dbg !5400
  %20 = zext i8 %19 to i32, !dbg !5401
  %21 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %1, i32 0, i32 1, !dbg !5402
  %22 = load i8, i8* %21, align 1, !dbg !5402
  %23 = zext i8 %22 to i32, !dbg !5403
  %24 = load i8, i8* %2, align 1, !dbg !5404
  %25 = zext i8 %24 to i32, !dbg !5405
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3.13, i32 0, i32 0), i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %25) #15, !dbg !5406
  call fastcc void @rtc_clear_time(%struct.hal_rtc_time_t* noundef nonnull %1) #14, !dbg !5407
  call fastcc void @rtc_fill_time(%struct.hal_rtc_time_t* noundef nonnull %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @alarm_param, i32 0, i32 0)) #14, !dbg !5408
  %27 = call i32 @hal_rtc_set_alarm(%struct.hal_rtc_time_t* noundef nonnull %1) #15, !dbg !5409
  %28 = load i8, i8* %6, align 1, !dbg !5410
  %29 = zext i8 %28 to i32, !dbg !5411
  %30 = load i8, i8* %9, align 1, !dbg !5412
  %31 = zext i8 %30 to i32, !dbg !5413
  %32 = load i8, i8* %12, align 1, !dbg !5414
  %33 = zext i8 %32 to i32, !dbg !5415
  %34 = load i8, i8* %15, align 1, !dbg !5416
  %35 = zext i8 %34 to i32, !dbg !5417
  %36 = load i8, i8* %18, align 1, !dbg !5418
  %37 = zext i8 %36 to i32, !dbg !5419
  %38 = load i8, i8* %21, align 1, !dbg !5420
  %39 = zext i8 %38 to i32, !dbg !5421
  %40 = load i8, i8* %2, align 1, !dbg !5422
  %41 = zext i8 %40 to i32, !dbg !5423
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #15, !dbg !5424
  %43 = call i32 @hal_rtc_enable_alarm() #15, !dbg !5425
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5.14, i32 0, i32 0)) #15, !dbg !5426
  %45 = call i32 @hal_rtc_set_alarm_callback(void (i8*)* noundef nonnull @test_rtc_alarm_callback, i8* noundef null) #15, !dbg !5427
  br label %46, !dbg !5428

46:                                               ; preds = %46, %0
  %47 = load volatile i8, i8* @test_rtc_callback, align 1, !dbg !5429
  %48 = icmp eq i8 %47, 0, !dbg !5430
  br i1 %48, label %46, label %49, !dbg !5428, !llvm.loop !5431

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0)) #15, !dbg !5433
  call fastcc void @rtc_clear_time(%struct.hal_rtc_time_t* noundef nonnull %1) #14, !dbg !5434
  %51 = call i32 @hal_rtc_get_time(%struct.hal_rtc_time_t* noundef nonnull %1) #15, !dbg !5435
  %52 = load i8, i8* %6, align 1, !dbg !5436
  %53 = zext i8 %52 to i32, !dbg !5437
  %54 = load i8, i8* %9, align 1, !dbg !5438
  %55 = zext i8 %54 to i32, !dbg !5439
  %56 = load i8, i8* %12, align 1, !dbg !5440
  %57 = zext i8 %56 to i32, !dbg !5441
  %58 = load i8, i8* %15, align 1, !dbg !5442
  %59 = zext i8 %58 to i32, !dbg !5443
  %60 = load i8, i8* %18, align 1, !dbg !5444
  %61 = zext i8 %60 to i32, !dbg !5445
  %62 = load i8, i8* %21, align 1, !dbg !5446
  %63 = zext i8 %62 to i32, !dbg !5447
  %64 = load i8, i8* %2, align 1, !dbg !5448
  %65 = zext i8 %64 to i32, !dbg !5449
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #15, !dbg !5450
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !5451
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #15, !dbg !5452
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %2) #16, !dbg !5453
  ret void, !dbg !5453
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define internal fastcc void @rtc_fill_time(%struct.hal_rtc_time_t* nocapture noundef writeonly %0, i8* nocapture noundef readonly %1) unnamed_addr #12 !dbg !5454 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !5459, metadata !DIExpression()), !dbg !5461
  call void @llvm.dbg.value(metadata i8* %1, metadata !5460, metadata !DIExpression()), !dbg !5461
  %3 = load i8, i8* %1, align 1, !dbg !5462
  %4 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !5463
  store i8 %3, i8* %4, align 1, !dbg !5464
  %5 = getelementptr inbounds i8, i8* %1, i32 1, !dbg !5465
  %6 = load i8, i8* %5, align 1, !dbg !5465
  %7 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !5466
  store i8 %6, i8* %7, align 1, !dbg !5467
  %8 = getelementptr inbounds i8, i8* %1, i32 2, !dbg !5468
  %9 = load i8, i8* %8, align 1, !dbg !5468
  %10 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !5469
  store i8 %9, i8* %10, align 1, !dbg !5470
  %11 = getelementptr inbounds i8, i8* %1, i32 3, !dbg !5471
  %12 = load i8, i8* %11, align 1, !dbg !5471
  %13 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !5472
  store i8 %12, i8* %13, align 1, !dbg !5473
  %14 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !5474
  %15 = load i8, i8* %14, align 1, !dbg !5474
  %16 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !5475
  store i8 %15, i8* %16, align 1, !dbg !5476
  %17 = getelementptr inbounds i8, i8* %1, i32 5, !dbg !5477
  %18 = load i8, i8* %17, align 1, !dbg !5477
  %19 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !5478
  store i8 %18, i8* %19, align 1, !dbg !5479
  %20 = getelementptr inbounds i8, i8* %1, i32 6, !dbg !5480
  %21 = load i8, i8* %20, align 1, !dbg !5480
  %22 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !5481
  store i8 %21, i8* %22, align 1, !dbg !5482
  ret void, !dbg !5483
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define internal fastcc void @rtc_clear_time(%struct.hal_rtc_time_t* nocapture noundef writeonly %0) unnamed_addr #13 !dbg !5484 {
  call void @llvm.dbg.value(metadata %struct.hal_rtc_time_t* %0, metadata !5488, metadata !DIExpression()), !dbg !5489
  %2 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 6, !dbg !5490
  store i8 0, i8* %2, align 1, !dbg !5491
  %3 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 4, !dbg !5492
  store i8 0, i8* %3, align 1, !dbg !5493
  %4 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 3, !dbg !5494
  store i8 0, i8* %4, align 1, !dbg !5495
  %5 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 5, !dbg !5496
  store i8 0, i8* %5, align 1, !dbg !5497
  %6 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 2, !dbg !5498
  store i8 0, i8* %6, align 1, !dbg !5499
  %7 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 1, !dbg !5500
  store i8 0, i8* %7, align 1, !dbg !5501
  %8 = getelementptr inbounds %struct.hal_rtc_time_t, %struct.hal_rtc_time_t* %0, i32 0, i32 0, !dbg !5502
  store i8 0, i8* %8, align 1, !dbg !5503
  ret void, !dbg !5504
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal void @test_rtc_alarm_callback(i8* nocapture noundef readnone %0) #0 !dbg !5505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5507, metadata !DIExpression()), !dbg !5508
  store volatile i8 1, i8* @test_rtc_callback, align 1, !dbg !5509
  ret void, !dbg !5510
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !5511 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5521
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5521
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5513, metadata !DIExpression()), !dbg !5522
  %3 = tail call i32 @hal_gpio_init(i32 noundef 2) #15, !dbg !5523
  %4 = tail call i32 @hal_gpio_init(i32 noundef 3) #15, !dbg !5524
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !5525
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !5526
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5527
  store i32 9, i32* %7, align 4, !dbg !5528
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5529
  store i32 3, i32* %8, align 4, !dbg !5530
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5531
  store i32 0, i32* %9, align 4, !dbg !5532
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5533
  store i32 0, i32* %10, align 4, !dbg !5534
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #15, !dbg !5535
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5536
  ret void, !dbg !5536
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !5537 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5539, metadata !DIExpression()), !dbg !5541
  %2 = add i32 %0, -1, !dbg !5542
  %3 = icmp ugt i32 %2, 16777215, !dbg !5544
  br i1 %3, label %8, label %4, !dbg !5545

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5546
  call void @llvm.dbg.value(metadata i32 %5, metadata !5540, metadata !DIExpression()), !dbg !5541
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5547
  %7 = and i32 %6, -4, !dbg !5547
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5547
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5548
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5549
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5550
  br label %8, !dbg !5551

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5541
  ret i32 %9, !dbg !5552
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !5553 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5554
  ret void, !dbg !5555
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !5556 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5557
  ret i32 %1, !dbg !5558
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5559 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !5560
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5561
  ret void, !dbg !5562
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !5563 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5564
  %2 = or i32 %1, 15728640, !dbg !5564
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5564
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5565
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5566
  %4 = or i32 %3, 458752, !dbg !5566
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5566
  ret void, !dbg !5567
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !5568 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5569
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5570
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5571
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5572
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5573
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5574
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5575
  ret void, !dbg !5576
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !5577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5579, metadata !DIExpression()), !dbg !5580
  ret i32 0, !dbg !5581
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !5582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5632, metadata !DIExpression()), !dbg !5634
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5633, metadata !DIExpression()), !dbg !5634
  ret i32 0, !dbg !5635
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !5636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5638, metadata !DIExpression()), !dbg !5639
  ret i32 1, !dbg !5640
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5641 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5645, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.value(metadata i32 %1, metadata !5646, metadata !DIExpression()), !dbg !5648
  call void @llvm.dbg.value(metadata i32 %2, metadata !5647, metadata !DIExpression()), !dbg !5648
  ret i32 0, !dbg !5649
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5650 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5654, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.value(metadata i32 %1, metadata !5655, metadata !DIExpression()), !dbg !5657
  call void @llvm.dbg.value(metadata i32 %2, metadata !5656, metadata !DIExpression()), !dbg !5657
  ret i32 -1, !dbg !5658
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5663, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.value(metadata i8* %1, metadata !5664, metadata !DIExpression()), !dbg !5666
  call void @llvm.dbg.value(metadata i32 %2, metadata !5665, metadata !DIExpression()), !dbg !5666
  ret i32 0, !dbg !5667
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5670, metadata !DIExpression()), !dbg !5674
  call void @llvm.dbg.value(metadata i8* %1, metadata !5671, metadata !DIExpression()), !dbg !5674
  call void @llvm.dbg.value(metadata i32 %2, metadata !5672, metadata !DIExpression()), !dbg !5674
  call void @llvm.dbg.value(metadata i32 0, metadata !5673, metadata !DIExpression()), !dbg !5674
  %4 = icmp sgt i32 %2, 0, !dbg !5675
  br i1 %4, label %5, label %14, !dbg !5678

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5673, metadata !DIExpression()), !dbg !5674
  call void @llvm.dbg.value(metadata i8* %7, metadata !5671, metadata !DIExpression()), !dbg !5674
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5679
  call void @llvm.dbg.value(metadata i8* %8, metadata !5671, metadata !DIExpression()), !dbg !5674
  %9 = load i8, i8* %7, align 1, !dbg !5681
  %10 = zext i8 %9 to i32, !dbg !5681
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !5682
  %12 = add nuw nsw i32 %6, 1, !dbg !5683
  call void @llvm.dbg.value(metadata i32 %12, metadata !5673, metadata !DIExpression()), !dbg !5674
  %13 = icmp eq i32 %12, %2, !dbg !5675
  br i1 %13, label %14, label %5, !dbg !5678, !llvm.loop !5684

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5686
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !595 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !798, metadata !DIExpression()), !dbg !5687
  call void @llvm.dbg.value(metadata i32 %1, metadata !799, metadata !DIExpression()), !dbg !5687
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #16, !dbg !5688, !srcloc !5689
  call void @llvm.dbg.value(metadata i8* %3, metadata !801, metadata !DIExpression()), !dbg !5687
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5690
  %5 = icmp eq i8* %4, null, !dbg !5692
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5693
  call void @llvm.dbg.value(metadata i8* %6, metadata !800, metadata !DIExpression()), !dbg !5687
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5694
  %8 = icmp ult i8* %3, %7, !dbg !5696
  %9 = xor i1 %8, true, !dbg !5697
  %10 = or i1 %5, %9, !dbg !5697
  br i1 %10, label %11, label %13, !dbg !5697

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5698
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5697
  br label %13, !dbg !5697

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5698
  ret i8* %14, !dbg !5697
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #11 !dbg !5699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5701, metadata !DIExpression()), !dbg !5702
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #15, !dbg !5703
  br label %3, !dbg !5704

3:                                                ; preds = %1, %3
  br label %3, !dbg !5704, !llvm.loop !5705
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5707 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5711, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.value(metadata i32 %1, metadata !5712, metadata !DIExpression()), !dbg !5713
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.22, i32 0, i32 0), i32 noundef %1) #15, !dbg !5714
  ret i32 -1, !dbg !5715
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5716 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.23, i32 0, i32 0)) #15, !dbg !5721
  ret i32 0, !dbg !5722
}

attributes #0 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nobuiltin nounwind optsize "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!818, !830, !911, !997, !1042, !2, !23, !1076, !61, !147, !1078, !297, !408, !521, !535, !793, !804}
!llvm.ident = !{!1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108, !1108}
!llvm.module.flags = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !2, file: !3, line: 43, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!4 = !{!5, !8, !10, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !9, line: 62, baseType: !7)
!9 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 48, baseType: !14)
!13 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !7)
!15 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !2, file: !3, line: 44, type: !12, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !23, file: !24, line: 54, type: !12, isLocal: false, isDefinition: true)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !49, globals: !58, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!25 = !{!26, !32}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 71, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "UART_PORT0", value: 0)
!30 = !DIEnumerator(name: "UART_PORT1", value: 1)
!31 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 129, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!36 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!37 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!38 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!39 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!40 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!41 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!42 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!43 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!44 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!45 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!46 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!47 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!48 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!49 = !{!5, !12, !50, !52, !54, !56, !8}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !9, line: 113, baseType: !53)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !9, line: 59, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!58 = !{!21}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !61, file: !62, line: 51, type: !143, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !111, globals: !142, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!63 = !{!64, !76, !95, !102}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 163, baseType: !66, size: 32, elements: !67)
!65 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75}
!68 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!69 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!70 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!71 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!72 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!73 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!74 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!75 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 186, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!78 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!79 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!80 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!81 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!82 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!83 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!84 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!85 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!86 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!87 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!88 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!89 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!90 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!91 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!92 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!93 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!94 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 176, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!98 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!99 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!100 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!101 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 99, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!106 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!107 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!108 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!109 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!110 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!111 = !{!112, !141}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !114, line: 72, baseType: !115)
!114 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 56, size: 525312, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !131, !132, !136, !140}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !115, file: !114, line: 57, baseType: !11, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !115, file: !114, line: 58, baseType: !11, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !115, file: !114, line: 59, baseType: !11, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !115, file: !114, line: 60, baseType: !11, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !115, file: !114, line: 61, baseType: !11, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !115, file: !114, line: 62, baseType: !11, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !115, file: !114, line: 63, baseType: !11, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !115, file: !114, line: 64, baseType: !11, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !115, file: !114, line: 65, baseType: !11, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !115, file: !114, line: 66, baseType: !11, size: 32, offset: 288)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !115, file: !114, line: 67, baseType: !128, size: 32, offset: 320)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 1)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !115, file: !114, line: 68, baseType: !11, size: 32, offset: 352)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !115, file: !114, line: 69, baseType: !133, size: 523904, offset: 384)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 523904, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 16372)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !115, file: !114, line: 70, baseType: !137, size: 512, offset: 524288)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !115, file: !114, line: 71, baseType: !137, size: 512, offset: 524800)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!142 = !{!59}
!143 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!144 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !147, file: !148, line: 53, type: !284, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !203, globals: !283, splitDebugInlining: false, nameTableKind: None)
!148 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!149 = !{!150, !158}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !151, line: 152, baseType: !66, size: 32, elements: !152)
!151 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!152 = !{!153, !154, !155, !156, !157}
!153 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!154 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!155 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!156 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!157 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !159, line: 47, baseType: !66, size: 32, elements: !160)
!159 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!161 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!162 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!163 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!164 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!165 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!166 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!167 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!168 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!169 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!170 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!171 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!172 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!173 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!174 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!175 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!176 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!177 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!178 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!179 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!180 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!181 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!182 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!183 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!184 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!185 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!186 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!187 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!188 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!189 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!190 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!191 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!192 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!193 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!194 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!195 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!196 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!197 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!198 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!199 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!200 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!201 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!202 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!203 = !{!204, !141, !12, !206, !208, !244}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !159, line: 97, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !159, line: 95, baseType: !158)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 44, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 77, baseType: !66)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !211)
!210 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !212)
!212 = !{!213, !217, !221, !222, !223, !224, !225, !226, !227, !228, !232, !239, !243}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !211, file: !210, line: 365, baseType: !214, size: 256)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 8)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !211, file: !210, line: 366, baseType: !218, size: 768, offset: 256)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 24)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !211, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !211, file: !210, line: 368, baseType: !218, size: 768, offset: 1280)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !211, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !211, file: !210, line: 370, baseType: !218, size: 768, offset: 2304)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !211, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !211, file: !210, line: 372, baseType: !218, size: 768, offset: 3328)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !211, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !211, file: !210, line: 374, baseType: !229, size: 1792, offset: 4352)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1792, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 56)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !211, file: !210, line: 375, baseType: !233, size: 1920, offset: 6144)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1920, elements: !237)
!234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 43, baseType: !55)
!237 = !{!238}
!238 = !DISubrange(count: 240)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !211, file: !210, line: 376, baseType: !240, size: 20608, offset: 8064)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 20608, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 644)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !211, file: !210, line: 377, baseType: !11, size: 32, offset: 28672)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !247)
!247 = !{!248, !250, !251, !252, !253, !254, !255, !259, !260, !261, !262, !263, !264, !265, !266, !270, !271, !272, !276, !280, !282}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !246, file: !210, line: 397, baseType: !249, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !246, file: !210, line: 398, baseType: !11, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !246, file: !210, line: 399, baseType: !11, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !246, file: !210, line: 400, baseType: !11, size: 32, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !246, file: !210, line: 401, baseType: !11, size: 32, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !246, file: !210, line: 402, baseType: !11, size: 32, offset: 160)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !246, file: !210, line: 403, baseType: !256, size: 96, offset: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 96, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 12)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !246, file: !210, line: 404, baseType: !11, size: 32, offset: 288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !246, file: !210, line: 405, baseType: !11, size: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !246, file: !210, line: 406, baseType: !11, size: 32, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !246, file: !210, line: 407, baseType: !11, size: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !246, file: !210, line: 408, baseType: !11, size: 32, offset: 416)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !246, file: !210, line: 409, baseType: !11, size: 32, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !246, file: !210, line: 410, baseType: !11, size: 32, offset: 480)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !246, file: !210, line: 411, baseType: !267, size: 64, offset: 512)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 2)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !246, file: !210, line: 412, baseType: !249, size: 32, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !246, file: !210, line: 413, baseType: !249, size: 32, offset: 608)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !246, file: !210, line: 414, baseType: !273, size: 128, offset: 640)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 4)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !246, file: !210, line: 415, baseType: !277, size: 160, offset: 768)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 160, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 5)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !246, file: !210, line: 416, baseType: !281, size: 160, offset: 928)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !278)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !246, file: !210, line: 417, baseType: !11, size: 32, offset: 1088)
!283 = !{!145}
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 6144, elements: !293)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !148, line: 50, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 47, size: 64, elements: !287)
!287 = !{!288, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !286, file: !148, line: 48, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !204}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !286, file: !148, line: 49, baseType: !12, size: 32, offset: 32)
!293 = !{!294}
!294 = !DISubrange(count: 96)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "FRE_DET_CR", scope: !297, file: !298, line: 44, type: !10, isLocal: false, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !352, globals: !397, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_rtc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!299 = !{!300, !306, !158, !311, !343, !348}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 399, baseType: !66, size: 32, elements: !302)
!301 = !DIFile(filename: "../../../../../driver/chip/inc/hal_rtc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!302 = !{!303, !304, !305}
!303 = !DIEnumerator(name: "HAL_RTC_STATUS_ERROR", value: -2)
!304 = !DIEnumerator(name: "HAL_RTC_STATUS_INVALID_PARAM", value: -1)
!305 = !DIEnumerator(name: "HAL_RTC_STATUS_OK", value: 0)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENUM_HAL_RET_T", file: !307, line: 365, baseType: !55, size: 8, elements: !308)
!307 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687_cm4_hw_memmap.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!308 = !{!309, !310}
!309 = !DIEnumerator(name: "HAL_RET_SUCCESS", value: 0)
!310 = !DIEnumerator(name: "HAL_RET_FAIL", value: 1)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !312, line: 249, baseType: !7, size: 32, elements: !313)
!312 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!314 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!315 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!316 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!317 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!318 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!319 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!320 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!321 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!322 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!323 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!324 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!325 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!326 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!327 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!328 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!329 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!330 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!331 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!332 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!333 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!334 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!335 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!336 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!337 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!338 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!339 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!340 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!341 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!342 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 210, baseType: !7, size: 32, elements: !345)
!344 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!345 = !{!346, !347}
!346 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!347 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 217, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!351 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!352 = !{!205, !353, !10, !355, !8}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !344, line: 220, baseType: !348)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_RTC_CTRL_TypeDef", file: !307, line: 733, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IOT_RTC_CTRL_TypeDef", file: !307, line: 694, size: 1216, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PWRCHK1", scope: !357, file: !307, line: 695, baseType: !17, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PWRCHK2", scope: !357, file: !307, line: 696, baseType: !17, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_KEY", scope: !357, file: !307, line: 697, baseType: !17, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT1", scope: !357, file: !307, line: 698, baseType: !17, size: 32, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT2", scope: !357, file: !307, line: 699, baseType: !17, size: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT3", scope: !357, file: !307, line: 700, baseType: !17, size: 32, offset: 160)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT4", scope: !357, file: !307, line: 701, baseType: !17, size: 32, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_CTL", scope: !357, file: !307, line: 702, baseType: !17, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_LPD_CTL", scope: !357, file: !307, line: 703, baseType: !17, size: 32, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_XOSC_CFG", scope: !357, file: !307, line: 704, baseType: !17, size: 32, offset: 288)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_DEBNCE", scope: !357, file: !307, line: 705, baseType: !17, size: 32, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PMU_EN", scope: !357, file: !307, line: 706, baseType: !17, size: 32, offset: 352)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PAD_CTL", scope: !357, file: !307, line: 707, baseType: !17, size: 32, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RESV0", scope: !357, file: !307, line: 708, baseType: !17, size: 32, offset: 416)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_WAVEOUT", scope: !357, file: !307, line: 709, baseType: !17, size: 32, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_YEA", scope: !357, file: !307, line: 710, baseType: !17, size: 32, offset: 480)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_MON", scope: !357, file: !307, line: 711, baseType: !17, size: 32, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_DOM", scope: !357, file: !307, line: 712, baseType: !17, size: 32, offset: 544)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_DOW", scope: !357, file: !307, line: 713, baseType: !17, size: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_HOU", scope: !357, file: !307, line: 714, baseType: !17, size: 32, offset: 608)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_MIN", scope: !357, file: !307, line: 715, baseType: !17, size: 32, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_SEC", scope: !357, file: !307, line: 716, baseType: !17, size: 32, offset: 672)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RESV1", scope: !357, file: !307, line: 717, baseType: !17, size: 32, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_YEAR", scope: !357, file: !307, line: 718, baseType: !17, size: 32, offset: 736)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_MON", scope: !357, file: !307, line: 719, baseType: !17, size: 32, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_DOM", scope: !357, file: !307, line: 720, baseType: !17, size: 32, offset: 800)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_DOW", scope: !357, file: !307, line: 721, baseType: !17, size: 32, offset: 832)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_HOUR", scope: !357, file: !307, line: 722, baseType: !17, size: 32, offset: 864)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_MIN", scope: !357, file: !307, line: 723, baseType: !17, size: 32, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_SEC", scope: !357, file: !307, line: 724, baseType: !17, size: 32, offset: 928)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_CTL", scope: !357, file: !307, line: 725, baseType: !17, size: 32, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RIP_CTL", scope: !357, file: !307, line: 726, baseType: !17, size: 32, offset: 992)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RIP_CNTH", scope: !357, file: !307, line: 727, baseType: !17, size: 32, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RIP_CNTL", scope: !357, file: !307, line: 728, baseType: !17, size: 32, offset: 1056)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RESV2", scope: !357, file: !307, line: 729, baseType: !17, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TIMER_CTL", scope: !357, file: !307, line: 730, baseType: !17, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TIMER_CNTH", scope: !357, file: !307, line: 731, baseType: !17, size: 32, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TIMER_CNTL", scope: !357, file: !307, line: 732, baseType: !17, size: 32, offset: 1184)
!397 = !{!295, !398, !404}
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "s_hal_rtc_alarm_callback", scope: !297, file: !298, line: 45, type: !400, isLocal: true, isDefinition: true)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_rtc_alarm_callback_t", file: !301, line: 423, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 32)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !141}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "s_hal_rtc_user_data", scope: !297, file: !298, line: 46, type: !141, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !408, file: !409, line: 77, type: !477, isLocal: true, isDefinition: true)
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !410, retainedTypes: !460, globals: !462, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!410 = !{!411, !419, !424, !440, !446, !450, !26, !32, !455}
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 345, baseType: !66, size: 32, elements: !413)
!412 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!413 = !{!414, !415, !416, !417, !418}
!414 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!415 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!416 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!417 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!418 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !312, line: 109, baseType: !7, size: 32, elements: !420)
!420 = !{!421, !422, !423}
!421 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!422 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!423 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 302, baseType: !7, size: 32, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439}
!426 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!427 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!428 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!429 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!430 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!431 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!432 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!433 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!434 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!435 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!436 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!437 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!438 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!439 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 321, baseType: !7, size: 32, elements: !441)
!441 = !{!442, !443, !444, !445}
!442 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!443 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!444 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!445 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 330, baseType: !7, size: 32, elements: !447)
!447 = !{!448, !449}
!448 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!449 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 337, baseType: !7, size: 32, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!453 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!454 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !412, line: 355, baseType: !66, size: 32, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!458 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!459 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!460 = !{!7, !141, !55, !461, !235}
!461 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!462 = !{!406, !463}
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "func_tbl", scope: !465, file: !409, line: 536, type: !475, isLocal: true, isDefinition: true)
!465 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !409, file: !409, line: 534, type: !466, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !473)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !472}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !33, line: 197, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 32)
!470 = !DISubroutineType(types: !471)
!471 = !{null}
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !312, line: 113, baseType: !419)
!473 = !{!474}
!474 = !DILocalVariable(name: "uart_port", arg: 1, scope: !465, file: !409, line: 534, type: !472)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 64, elements: !268)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 1024, elements: !268)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !409, line: 75, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 68, size: 512, elements: !480)
!480 = !{!481, !482, !494, !495, !506, !507}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !479, file: !409, line: 69, baseType: !144, size: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !479, file: !409, line: 70, baseType: !483, size: 128, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !412, line: 378, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 373, size: 128, elements: !485)
!485 = !{!486, !488, !490, !492}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !484, file: !412, line: 374, baseType: !487, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !412, line: 317, baseType: !424)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !484, file: !412, line: 375, baseType: !489, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !412, line: 326, baseType: !440)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !484, file: !412, line: 376, baseType: !491, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !412, line: 333, baseType: !446)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !484, file: !412, line: 377, baseType: !493, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !412, line: 341, baseType: !450)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !479, file: !409, line: 71, baseType: !144, size: 8, offset: 160)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !479, file: !409, line: 72, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !409, line: 66, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 63, size: 64, elements: !498)
!498 = !{!499, !505}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !497, file: !409, line: 64, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !412, line: 410, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 32)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504, !141}
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !412, line: 359, baseType: !455)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !497, file: !409, line: 65, baseType: !141, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !479, file: !409, line: 73, baseType: !144, size: 8, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !479, file: !409, line: 74, baseType: !508, size: 224, offset: 288)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !412, line: 390, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 382, size: 224, elements: !510)
!510 = !{!511, !513, !514, !515, !516, !517, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !509, file: !412, line: 383, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !509, file: !412, line: 384, baseType: !12, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !509, file: !412, line: 385, baseType: !12, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !509, file: !412, line: 386, baseType: !512, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !509, file: !412, line: 387, baseType: !12, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !509, file: !412, line: 388, baseType: !12, size: 32, offset: 160)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !509, file: !412, line: 389, baseType: !12, size: 32, offset: 192)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(name: "test_rtc_callback", scope: !521, file: !522, line: 68, type: !234, isLocal: false, isDefinition: true)
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !523, retainedTypes: !524, globals: !525, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/rtc_set_alarm/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!523 = !{!419, !424, !440, !446, !450, !311}
!524 = !{!141}
!525 = !{!519, !526, !531}
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "param", scope: !521, file: !522, line: 50, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 56, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 7)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "alarm_param", scope: !521, file: !522, line: 59, type: !528, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !535, file: !536, line: 59, type: !12, isLocal: false, isDefinition: true)
!535 = distinct !DICompileUnit(language: DW_LANG_C99, file: !536, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !537, globals: !590, splitDebugInlining: false, nameTableKind: None)
!536 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/rtc_set_alarm/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!537 = !{!538, !546, !571}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !210, line: 656, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 650, size: 128, elements: !541)
!541 = !{!542, !543, !544, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !540, file: !210, line: 652, baseType: !11, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !540, file: !210, line: 653, baseType: !11, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !540, file: !210, line: 654, baseType: !11, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !540, file: !210, line: 655, baseType: !249, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !548, file: !210, line: 397, baseType: !249, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !548, file: !210, line: 398, baseType: !11, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !548, file: !210, line: 399, baseType: !11, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !548, file: !210, line: 400, baseType: !11, size: 32, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !548, file: !210, line: 401, baseType: !11, size: 32, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !548, file: !210, line: 402, baseType: !11, size: 32, offset: 160)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !548, file: !210, line: 403, baseType: !256, size: 96, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !548, file: !210, line: 404, baseType: !11, size: 32, offset: 288)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !548, file: !210, line: 405, baseType: !11, size: 32, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !548, file: !210, line: 406, baseType: !11, size: 32, offset: 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !548, file: !210, line: 407, baseType: !11, size: 32, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !548, file: !210, line: 408, baseType: !11, size: 32, offset: 416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !548, file: !210, line: 409, baseType: !11, size: 32, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !548, file: !210, line: 410, baseType: !11, size: 32, offset: 480)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !548, file: !210, line: 411, baseType: !267, size: 64, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !548, file: !210, line: 412, baseType: !249, size: 32, offset: 576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !548, file: !210, line: 413, baseType: !249, size: 32, offset: 608)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !548, file: !210, line: 414, baseType: !273, size: 128, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !548, file: !210, line: 415, baseType: !277, size: 160, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !548, file: !210, line: 416, baseType: !281, size: 160, offset: 928)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !548, file: !210, line: 417, baseType: !11, size: 32, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !114, line: 72, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 56, size: 525312, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !573, file: !114, line: 57, baseType: !11, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !573, file: !114, line: 58, baseType: !11, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !573, file: !114, line: 59, baseType: !11, size: 32, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !573, file: !114, line: 60, baseType: !11, size: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !573, file: !114, line: 61, baseType: !11, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !573, file: !114, line: 62, baseType: !11, size: 32, offset: 160)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !573, file: !114, line: 63, baseType: !11, size: 32, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !573, file: !114, line: 64, baseType: !11, size: 32, offset: 224)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !573, file: !114, line: 65, baseType: !11, size: 32, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !573, file: !114, line: 66, baseType: !11, size: 32, offset: 288)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !573, file: !114, line: 67, baseType: !128, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !573, file: !114, line: 68, baseType: !11, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !573, file: !114, line: 69, baseType: !133, size: 523904, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !573, file: !114, line: 70, baseType: !137, size: 512, offset: 524288)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !573, file: !114, line: 71, baseType: !137, size: 512, offset: 524800)
!590 = !{!533, !591}
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !535, file: !536, line: 61, type: !11, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "heap_end", scope: !595, file: !596, line: 66, type: !601, isLocal: true, isDefinition: true)
!595 = distinct !DISubprogram(name: "_sbrk_r", scope: !596, file: !596, line: 63, type: !597, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !797)
!596 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !602, !792}
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !600, line: 123, baseType: !601)
!600 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 32)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !604, line: 377, size: 1920, elements: !605)
!604 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!605 = !{!606, !607, !681, !682, !683, !684, !685, !686, !687, !690, !711, !715, !716, !717, !718, !728, !741, !742, !747, !766, !767, !774, !775, !791}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !603, file: !604, line: 381, baseType: !66, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !603, file: !604, line: 386, baseType: !608, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !604, line: 292, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !604, line: 186, size: 832, elements: !611)
!611 = !{!612, !614, !615, !616, !618, !619, !624, !625, !626, !627, !631, !637, !644, !648, !649, !650, !651, !655, !657, !658, !659, !661, !667, !680}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !610, file: !604, line: 187, baseType: !613, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !610, file: !604, line: 188, baseType: !66, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !610, file: !604, line: 189, baseType: !66, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !610, file: !604, line: 190, baseType: !617, size: 16, offset: 96)
!617 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !610, file: !604, line: 191, baseType: !617, size: 16, offset: 112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !610, file: !604, line: 192, baseType: !620, size: 64, offset: 128)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !604, line: 122, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !620, file: !604, line: 123, baseType: !613, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !620, file: !604, line: 124, baseType: !66, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !610, file: !604, line: 193, baseType: !66, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !610, file: !604, line: 196, baseType: !602, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !610, file: !604, line: 200, baseType: !141, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !610, file: !604, line: 202, baseType: !628, size: 32, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 32)
!629 = !DISubroutineType(types: !630)
!630 = !{!66, !602, !141, !601, !66}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !610, file: !604, line: 204, baseType: !632, size: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 32)
!633 = !DISubroutineType(types: !634)
!634 = !{!66, !602, !141, !635, !66}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !610, file: !604, line: 207, baseType: !638, size: 32, offset: 352)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 32)
!639 = !DISubroutineType(types: !640)
!640 = !{!641, !602, !141, !641, !66}
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !642, line: 116, baseType: !643)
!642 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!643 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !610, file: !604, line: 208, baseType: !645, size: 32, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 32)
!646 = !DISubroutineType(types: !647)
!647 = !{!66, !602, !141}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !610, file: !604, line: 211, baseType: !620, size: 64, offset: 416)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !610, file: !604, line: 212, baseType: !613, size: 32, offset: 480)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !610, file: !604, line: 213, baseType: !66, size: 32, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !610, file: !604, line: 216, baseType: !652, size: 24, offset: 544)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 3)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !610, file: !604, line: 217, baseType: !656, size: 8, offset: 568)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !129)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !610, file: !604, line: 220, baseType: !620, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !610, file: !604, line: 223, baseType: !66, size: 32, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !610, file: !604, line: 224, baseType: !660, size: 32, offset: 672)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !642, line: 46, baseType: !643)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !610, file: !604, line: 231, baseType: !662, size: 32, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !604, line: 35, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !664, line: 34, baseType: !665)
!664 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 32)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !664, line: 33, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !610, file: !604, line: 233, baseType: !668, size: 64, offset: 736)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !642, line: 170, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 162, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !669, file: !642, line: 164, baseType: !66, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !669, file: !642, line: 169, baseType: !673, size: 32, offset: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !642, line: 165, size: 32, elements: !674)
!674 = !{!675, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !673, file: !642, line: 167, baseType: !676, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !677, line: 116, baseType: !66)
!677 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !673, file: !642, line: 168, baseType: !679, size: 32)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !274)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !610, file: !604, line: 234, baseType: !66, size: 32, offset: 800)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !603, file: !604, line: 386, baseType: !608, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !603, file: !604, line: 386, baseType: !608, size: 32, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !603, file: !604, line: 388, baseType: !66, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !603, file: !604, line: 390, baseType: !601, size: 32, offset: 160)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !603, file: !604, line: 392, baseType: !66, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !603, file: !604, line: 394, baseType: !66, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !603, file: !604, line: 395, baseType: !688, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 32)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !604, line: 45, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !603, file: !604, line: 397, baseType: !691, size: 32, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 32)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !604, line: 349, size: 128, elements: !693)
!693 = !{!694, !707, !708, !709}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !692, file: !604, line: 352, baseType: !695, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !604, line: 52, size: 192, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !696, file: !604, line: 54, baseType: !695, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !696, file: !604, line: 55, baseType: !66, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !696, file: !604, line: 55, baseType: !66, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !696, file: !604, line: 55, baseType: !66, size: 32, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !696, file: !604, line: 55, baseType: !66, size: 32, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !696, file: !604, line: 56, baseType: !704, size: 32, offset: 160)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 32, elements: !129)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !604, line: 22, baseType: !706)
!706 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !692, file: !604, line: 353, baseType: !66, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !692, file: !604, line: 354, baseType: !695, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !692, file: !604, line: 355, baseType: !710, size: 32, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !603, file: !604, line: 399, baseType: !712, size: 32, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 32)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !602}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !603, file: !604, line: 401, baseType: !66, size: 32, offset: 352)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !603, file: !604, line: 404, baseType: !66, size: 32, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !603, file: !604, line: 405, baseType: !601, size: 32, offset: 416)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !603, file: !604, line: 407, baseType: !719, size: 32, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 32)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !604, line: 324, size: 192, elements: !721)
!721 = !{!722, !724, !725, !726}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !720, file: !604, line: 325, baseType: !723, size: 48)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !653)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !720, file: !604, line: 326, baseType: !723, size: 48, offset: 48)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !720, file: !604, line: 327, baseType: !53, size: 16, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !720, file: !604, line: 330, baseType: !727, size: 64, offset: 128)
!727 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !603, file: !604, line: 408, baseType: !729, size: 32, offset: 480)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !604, line: 60, size: 288, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !730, file: !604, line: 62, baseType: !66, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !730, file: !604, line: 63, baseType: !66, size: 32, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !730, file: !604, line: 64, baseType: !66, size: 32, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !730, file: !604, line: 65, baseType: !66, size: 32, offset: 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !730, file: !604, line: 66, baseType: !66, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !730, file: !604, line: 67, baseType: !66, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !730, file: !604, line: 68, baseType: !66, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !730, file: !604, line: 69, baseType: !66, size: 32, offset: 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !730, file: !604, line: 70, baseType: !66, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !603, file: !604, line: 409, baseType: !601, size: 32, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !603, file: !604, line: 412, baseType: !743, size: 32, offset: 544)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 32)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !66}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !603, file: !604, line: 416, baseType: !748, size: 32, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 32)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !604, line: 90, size: 1120, elements: !750)
!750 = !{!751, !752, !753, !757}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !749, file: !604, line: 91, baseType: !748, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !749, file: !604, line: 92, baseType: !66, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !749, file: !604, line: 93, baseType: !754, size: 1024, offset: 64)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 1024, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !749, file: !604, line: 94, baseType: !758, size: 32, offset: 1088)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 32)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !604, line: 79, size: 2112, elements: !760)
!760 = !{!761, !763, !764, !765}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !759, file: !604, line: 80, baseType: !762, size: 1024)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1024, elements: !755)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !759, file: !604, line: 81, baseType: !762, size: 1024, offset: 1024)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !759, file: !604, line: 83, baseType: !705, size: 32, offset: 2048)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !759, file: !604, line: 86, baseType: !705, size: 32, offset: 2080)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !603, file: !604, line: 417, baseType: !749, size: 1120, offset: 608)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !603, file: !604, line: 420, baseType: !768, size: 96, offset: 1728)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !604, line: 296, size: 96, elements: !769)
!769 = !{!770, !772, !773}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !768, file: !604, line: 298, baseType: !771, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !768, file: !604, line: 299, baseType: !66, size: 32, offset: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !768, file: !604, line: 300, baseType: !608, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !603, file: !604, line: 421, baseType: !608, size: 32, offset: 1824)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !603, file: !604, line: 422, baseType: !776, size: 32, offset: 1856)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 32)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !604, line: 359, size: 640, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !785, !786, !787, !788, !789, !790}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !777, file: !604, line: 362, baseType: !601, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !777, file: !604, line: 363, baseType: !668, size: 64, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !777, file: !604, line: 364, baseType: !668, size: 64, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !777, file: !604, line: 365, baseType: !668, size: 64, offset: 160)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !777, file: !604, line: 366, baseType: !784, size: 64, offset: 224)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 64, elements: !215)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !777, file: !604, line: 367, baseType: !66, size: 32, offset: 288)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !777, file: !604, line: 368, baseType: !668, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !777, file: !604, line: 369, baseType: !668, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !777, file: !604, line: 370, baseType: !668, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !777, file: !604, line: 371, baseType: !668, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !777, file: !604, line: 372, baseType: !668, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !603, file: !604, line: 423, baseType: !601, size: 32, offset: 1888)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !677, line: 46, baseType: !7)
!793 = distinct !DICompileUnit(language: DW_LANG_C99, file: !794, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !795, globals: !796, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!795 = !{!601, !599}
!796 = !{!593}
!797 = !{!798, !799, !800, !801}
!798 = !DILocalVariable(name: "r", arg: 1, scope: !595, file: !596, line: 63, type: !602)
!799 = !DILocalVariable(name: "nbytes", arg: 2, scope: !595, file: !596, line: 63, type: !792)
!800 = !DILocalVariable(name: "prev_heap_end", scope: !595, file: !596, line: 67, type: !601)
!801 = !DILocalVariable(name: "stack", scope: !595, file: !596, line: 68, type: !601)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !804, file: !809, line: 4, type: !815, isLocal: false, isDefinition: true)
!804 = distinct !DICompileUnit(language: DW_LANG_C99, file: !805, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !806, splitDebugInlining: false, nameTableKind: None)
!805 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!806 = !{!802, !807, !813}
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !804, file: !809, line: 5, type: !810, isLocal: false, isDefinition: true)
!809 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 88, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 11)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !804, file: !809, line: 6, type: !810, isLocal: false, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 248, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 31)
!818 = distinct !DICompileUnit(language: DW_LANG_C99, file: !819, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !820, retainedTypes: !826, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!820 = !{!821}
!821 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !822, line: 1209, baseType: !7, size: 32, elements: !823)
!822 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!823 = !{!824, !825}
!824 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!825 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!826 = !{!827, !829}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !9, line: 116, baseType: !7)
!830 = distinct !DICompileUnit(language: DW_LANG_C99, file: !831, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !832, retainedTypes: !910, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!832 = !{!833}
!833 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !834, line: 150, baseType: !7, size: 32, elements: !835)
!834 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!835 = !{!836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!836 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!837 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!838 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!839 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!840 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!841 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!842 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!843 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!844 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!845 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!846 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!847 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!848 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!849 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!850 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!851 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!852 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!853 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!854 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!855 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!856 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!857 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!858 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!859 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!860 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!861 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!862 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!863 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!864 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!865 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!866 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!867 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!868 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!869 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!870 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!871 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!872 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!873 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!874 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!875 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!876 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!877 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!878 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!879 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!880 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!881 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!882 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!883 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!884 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!885 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!886 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!887 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!888 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!889 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!890 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!891 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!892 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!893 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!894 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!895 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!896 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!897 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!898 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!899 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!900 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!901 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!902 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!903 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!904 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!905 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!906 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!907 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!908 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!909 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!910 = !{!827, !8}
!911 = distinct !DICompileUnit(language: DW_LANG_C99, file: !912, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !913, retainedTypes: !914, splitDebugInlining: false, nameTableKind: None)
!912 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_rtc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!913 = !{!306}
!914 = !{!915, !5, !8, !957, !141}
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_RTC_CTRL_TypeDef", file: !307, line: 733, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 32)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IOT_RTC_CTRL_TypeDef", file: !307, line: 694, size: 1216, elements: !918)
!918 = !{!919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PWRCHK1", scope: !917, file: !307, line: 695, baseType: !17, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PWRCHK2", scope: !917, file: !307, line: 696, baseType: !17, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_KEY", scope: !917, file: !307, line: 697, baseType: !17, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT1", scope: !917, file: !307, line: 698, baseType: !17, size: 32, offset: 96)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT2", scope: !917, file: !307, line: 699, baseType: !17, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT3", scope: !917, file: !307, line: 700, baseType: !17, size: 32, offset: 160)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PROT4", scope: !917, file: !307, line: 701, baseType: !17, size: 32, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_CTL", scope: !917, file: !307, line: 702, baseType: !17, size: 32, offset: 224)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_LPD_CTL", scope: !917, file: !307, line: 703, baseType: !17, size: 32, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_XOSC_CFG", scope: !917, file: !307, line: 704, baseType: !17, size: 32, offset: 288)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_DEBNCE", scope: !917, file: !307, line: 705, baseType: !17, size: 32, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PMU_EN", scope: !917, file: !307, line: 706, baseType: !17, size: 32, offset: 352)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_PAD_CTL", scope: !917, file: !307, line: 707, baseType: !17, size: 32, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RESV0", scope: !917, file: !307, line: 708, baseType: !17, size: 32, offset: 416)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_WAVEOUT", scope: !917, file: !307, line: 709, baseType: !17, size: 32, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_YEA", scope: !917, file: !307, line: 710, baseType: !17, size: 32, offset: 480)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_MON", scope: !917, file: !307, line: 711, baseType: !17, size: 32, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_DOM", scope: !917, file: !307, line: 712, baseType: !17, size: 32, offset: 544)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_DOW", scope: !917, file: !307, line: 713, baseType: !17, size: 32, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_HOU", scope: !917, file: !307, line: 714, baseType: !17, size: 32, offset: 608)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_MIN", scope: !917, file: !307, line: 715, baseType: !17, size: 32, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TC_SEC", scope: !917, file: !307, line: 716, baseType: !17, size: 32, offset: 672)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RESV1", scope: !917, file: !307, line: 717, baseType: !17, size: 32, offset: 704)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_YEAR", scope: !917, file: !307, line: 718, baseType: !17, size: 32, offset: 736)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_MON", scope: !917, file: !307, line: 719, baseType: !17, size: 32, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_DOM", scope: !917, file: !307, line: 720, baseType: !17, size: 32, offset: 800)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_DOW", scope: !917, file: !307, line: 721, baseType: !17, size: 32, offset: 832)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_HOUR", scope: !917, file: !307, line: 722, baseType: !17, size: 32, offset: 864)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_MIN", scope: !917, file: !307, line: 723, baseType: !17, size: 32, offset: 896)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_SEC", scope: !917, file: !307, line: 724, baseType: !17, size: 32, offset: 928)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_AL_CTL", scope: !917, file: !307, line: 725, baseType: !17, size: 32, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RIP_CTL", scope: !917, file: !307, line: 726, baseType: !17, size: 32, offset: 992)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RIP_CNTH", scope: !917, file: !307, line: 727, baseType: !17, size: 32, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RIP_CNTL", scope: !917, file: !307, line: 728, baseType: !17, size: 32, offset: 1056)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_RESV2", scope: !917, file: !307, line: 729, baseType: !17, size: 32, offset: 1088)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TIMER_CTL", scope: !917, file: !307, line: 730, baseType: !17, size: 32, offset: 1120)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TIMER_CNTH", scope: !917, file: !307, line: 731, baseType: !17, size: 32, offset: 1152)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_TIMER_CNTL", scope: !917, file: !307, line: 732, baseType: !17, size: 32, offset: 1184)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "P_IOT_RTC_BACKUP_TypeDef", file: !307, line: 792, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 32)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IOT_RTC_BACKUP_TypeDef", file: !307, line: 755, size: 1152, elements: !960)
!960 = !{!961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP0", scope: !959, file: !307, line: 756, baseType: !17, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP1", scope: !959, file: !307, line: 757, baseType: !17, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP2", scope: !959, file: !307, line: 758, baseType: !17, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP3", scope: !959, file: !307, line: 759, baseType: !17, size: 32, offset: 96)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP4", scope: !959, file: !307, line: 760, baseType: !17, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP5", scope: !959, file: !307, line: 761, baseType: !17, size: 32, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP6", scope: !959, file: !307, line: 762, baseType: !17, size: 32, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP7", scope: !959, file: !307, line: 763, baseType: !17, size: 32, offset: 224)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP8", scope: !959, file: !307, line: 764, baseType: !17, size: 32, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP9", scope: !959, file: !307, line: 765, baseType: !17, size: 32, offset: 288)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP10", scope: !959, file: !307, line: 766, baseType: !17, size: 32, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP11", scope: !959, file: !307, line: 767, baseType: !17, size: 32, offset: 352)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP12", scope: !959, file: !307, line: 768, baseType: !17, size: 32, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP13", scope: !959, file: !307, line: 769, baseType: !17, size: 32, offset: 416)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP14", scope: !959, file: !307, line: 770, baseType: !17, size: 32, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP15", scope: !959, file: !307, line: 771, baseType: !17, size: 32, offset: 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP16", scope: !959, file: !307, line: 772, baseType: !17, size: 32, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP17", scope: !959, file: !307, line: 773, baseType: !17, size: 32, offset: 544)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP18", scope: !959, file: !307, line: 774, baseType: !17, size: 32, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP19", scope: !959, file: !307, line: 775, baseType: !17, size: 32, offset: 608)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP20", scope: !959, file: !307, line: 776, baseType: !17, size: 32, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP21", scope: !959, file: !307, line: 777, baseType: !17, size: 32, offset: 672)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP22", scope: !959, file: !307, line: 778, baseType: !17, size: 32, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP23", scope: !959, file: !307, line: 779, baseType: !17, size: 32, offset: 736)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP24", scope: !959, file: !307, line: 780, baseType: !17, size: 32, offset: 768)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP25", scope: !959, file: !307, line: 781, baseType: !17, size: 32, offset: 800)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP26", scope: !959, file: !307, line: 782, baseType: !17, size: 32, offset: 832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP27", scope: !959, file: !307, line: 783, baseType: !17, size: 32, offset: 864)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP28", scope: !959, file: !307, line: 784, baseType: !17, size: 32, offset: 896)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP29", scope: !959, file: !307, line: 785, baseType: !17, size: 32, offset: 928)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP30", scope: !959, file: !307, line: 786, baseType: !17, size: 32, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP31", scope: !959, file: !307, line: 787, baseType: !17, size: 32, offset: 992)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP32", scope: !959, file: !307, line: 788, baseType: !17, size: 32, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP33", scope: !959, file: !307, line: 789, baseType: !17, size: 32, offset: 1056)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP34", scope: !959, file: !307, line: 790, baseType: !17, size: 32, offset: 1088)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "RTC_BACKUP35", scope: !959, file: !307, line: 791, baseType: !17, size: 32, offset: 1120)
!997 = distinct !DICompileUnit(language: DW_LANG_C99, file: !998, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !999, splitDebugInlining: false, nameTableKind: None)
!998 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!999 = !{!1000, !1025}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1002, file: !210, line: 397, baseType: !249, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1002, file: !210, line: 398, baseType: !11, size: 32, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1002, file: !210, line: 399, baseType: !11, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1002, file: !210, line: 400, baseType: !11, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1002, file: !210, line: 401, baseType: !11, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1002, file: !210, line: 402, baseType: !11, size: 32, offset: 160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1002, file: !210, line: 403, baseType: !256, size: 96, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1002, file: !210, line: 404, baseType: !11, size: 32, offset: 288)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1002, file: !210, line: 405, baseType: !11, size: 32, offset: 320)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1002, file: !210, line: 406, baseType: !11, size: 32, offset: 352)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1002, file: !210, line: 407, baseType: !11, size: 32, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1002, file: !210, line: 408, baseType: !11, size: 32, offset: 416)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1002, file: !210, line: 409, baseType: !11, size: 32, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1002, file: !210, line: 410, baseType: !11, size: 32, offset: 480)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1002, file: !210, line: 411, baseType: !267, size: 64, offset: 512)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1002, file: !210, line: 412, baseType: !249, size: 32, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1002, file: !210, line: 413, baseType: !249, size: 32, offset: 608)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1002, file: !210, line: 414, baseType: !273, size: 128, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1002, file: !210, line: 415, baseType: !277, size: 160, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1002, file: !210, line: 416, baseType: !281, size: 160, offset: 928)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1002, file: !210, line: 417, baseType: !11, size: 32, offset: 1088)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1027, file: !210, line: 365, baseType: !214, size: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1027, file: !210, line: 366, baseType: !218, size: 768, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1027, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1027, file: !210, line: 368, baseType: !218, size: 768, offset: 1280)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1027, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1027, file: !210, line: 370, baseType: !218, size: 768, offset: 2304)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1027, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1027, file: !210, line: 372, baseType: !218, size: 768, offset: 3328)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1027, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1027, file: !210, line: 374, baseType: !229, size: 1792, offset: 4352)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1027, file: !210, line: 375, baseType: !233, size: 1920, offset: 6144)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1027, file: !210, line: 376, baseType: !240, size: 20608, offset: 8064)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1027, file: !210, line: 377, baseType: !11, size: 32, offset: 28672)
!1042 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1043, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1044, splitDebugInlining: false, nameTableKind: None)
!1043 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!1044 = !{!1045, !833}
!1045 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1046, line: 55, baseType: !7, size: 32, elements: !1047)
!1046 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1048 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!1049 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!1050 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!1051 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!1052 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!1053 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!1054 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!1055 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!1056 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!1057 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!1058 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!1059 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!1060 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!1061 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!1062 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!1063 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!1064 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!1065 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!1066 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!1067 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!1068 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!1069 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!1070 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!1071 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!1072 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!1073 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!1074 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!1075 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!1076 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1077, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!1078 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1079, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1080, retainedTypes: !1104, splitDebugInlining: false, nameTableKind: None)
!1079 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!1080 = !{!1081, !311, !1045, !1087, !348, !343, !1093, !1099}
!1081 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 233, baseType: !66, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1084 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1085 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1086 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1087 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 224, baseType: !66, size: 32, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1090 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1091 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1092 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1093 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 242, baseType: !7, size: 32, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098}
!1095 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1096 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1097 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1098 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1099 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1100, line: 57, baseType: !7, size: 32, elements: !1101)
!1100 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!1101 = !{!1102, !1103}
!1102 = !DIEnumerator(name: "eDirection_IN", value: 0)
!1103 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!1104 = !{!1105, !141, !354, !235, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !1046, line: 87, baseType: !1045)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !344, line: 247, baseType: !1093)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !1100, line: 60, baseType: !1099)
!1108 = !{!"Ubuntu clang version 14.0.6"}
!1109 = !{i32 7, !"Dwarf Version", i32 2}
!1110 = !{i32 2, !"Debug Info Version", i32 3}
!1111 = !{i32 1, !"wchar_size", i32 4}
!1112 = !{i32 1, !"min_enum_size", i32 4}
!1113 = !{i32 1, !"branch-target-enforcement", i32 0}
!1114 = !{i32 1, !"sign-return-address", i32 0}
!1115 = !{i32 1, !"sign-return-address-all", i32 0}
!1116 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1117 = !{i32 7, !"frame-pointer", i32 2}
!1118 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !819, file: !819, line: 54, type: !1119, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1122)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!1121, !8, !54}
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !9, line: 56, baseType: !66)
!1122 = !{!1123, !1124, !1125, !1127}
!1123 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1118, file: !819, line: 54, type: !8)
!1124 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1118, file: !819, line: 54, type: !54)
!1125 = !DILocalVariable(name: "no", scope: !1118, file: !819, line: 57, type: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !9, line: 60, baseType: !53)
!1127 = !DILocalVariable(name: "remainder", scope: !1118, file: !819, line: 58, type: !1126)
!1128 = !DILocation(line: 0, scope: !1118)
!1129 = !DILocation(line: 59, column: 19, scope: !1118)
!1130 = !DILocation(line: 60, column: 17, scope: !1118)
!1131 = !DILocation(line: 61, column: 5, scope: !1118)
!1132 = !DILocation(line: 65, column: 27, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !819, line: 65, column: 17)
!1134 = distinct !DILexicalBlock(scope: !1118, file: !819, line: 61, column: 17)
!1135 = !DILocation(line: 0, scope: !1133)
!1136 = !DILocation(line: 65, column: 17, scope: !1134)
!1137 = !DILocation(line: 66, column: 21, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !819, line: 65, column: 33)
!1139 = !DILocation(line: 67, column: 73, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !819, line: 66, column: 38)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !819, line: 66, column: 21)
!1142 = !DILocation(line: 67, column: 69, scope: !1140)
!1143 = !DILocation(line: 67, column: 66, scope: !1140)
!1144 = !DILocation(line: 68, column: 17, scope: !1140)
!1145 = !DILocation(line: 68, column: 28, scope: !1141)
!1146 = !DILocation(line: 69, column: 77, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !819, line: 68, column: 45)
!1148 = distinct !DILexicalBlock(scope: !1141, file: !819, line: 68, column: 28)
!1149 = !DILocation(line: 70, column: 77, scope: !1147)
!1150 = !DILocation(line: 71, column: 17, scope: !1147)
!1151 = !DILocation(line: 72, column: 77, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !819, line: 71, column: 45)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !819, line: 71, column: 28)
!1154 = !DILocation(line: 73, column: 77, scope: !1152)
!1155 = !DILocation(line: 74, column: 17, scope: !1152)
!1156 = !DILocation(line: 75, column: 79, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !819, line: 74, column: 45)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !819, line: 74, column: 28)
!1159 = !DILocation(line: 76, column: 79, scope: !1157)
!1160 = !DILocation(line: 77, column: 17, scope: !1157)
!1161 = !DILocation(line: 78, column: 79, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !819, line: 77, column: 45)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !819, line: 77, column: 28)
!1164 = !DILocation(line: 79, column: 79, scope: !1162)
!1165 = !DILocation(line: 80, column: 17, scope: !1162)
!1166 = !DILocation(line: 81, column: 79, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !819, line: 80, column: 45)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !819, line: 80, column: 28)
!1169 = !DILocation(line: 82, column: 79, scope: !1167)
!1170 = !DILocation(line: 83, column: 17, scope: !1167)
!1171 = !DILocation(line: 85, column: 17, scope: !1138)
!1172 = !DILocation(line: 86, column: 13, scope: !1138)
!1173 = !DILocation(line: 88, column: 21, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1133, file: !819, line: 86, column: 20)
!1175 = !DILocation(line: 89, column: 72, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !819, line: 88, column: 38)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !819, line: 88, column: 21)
!1178 = !DILocation(line: 89, column: 66, scope: !1176)
!1179 = !DILocation(line: 90, column: 17, scope: !1176)
!1180 = !DILocation(line: 90, column: 28, scope: !1177)
!1181 = !DILocation(line: 91, column: 77, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !819, line: 90, column: 45)
!1183 = distinct !DILexicalBlock(scope: !1177, file: !819, line: 90, column: 28)
!1184 = !DILocation(line: 92, column: 17, scope: !1182)
!1185 = !DILocation(line: 93, column: 77, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !819, line: 92, column: 45)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !819, line: 92, column: 28)
!1188 = !DILocation(line: 94, column: 17, scope: !1186)
!1189 = !DILocation(line: 95, column: 79, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !819, line: 94, column: 45)
!1191 = distinct !DILexicalBlock(scope: !1187, file: !819, line: 94, column: 28)
!1192 = !DILocation(line: 96, column: 17, scope: !1190)
!1193 = !DILocation(line: 97, column: 79, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !819, line: 96, column: 45)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !819, line: 96, column: 28)
!1196 = !DILocation(line: 98, column: 17, scope: !1194)
!1197 = !DILocation(line: 99, column: 79, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !819, line: 98, column: 45)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !819, line: 98, column: 28)
!1200 = !DILocation(line: 100, column: 17, scope: !1198)
!1201 = !DILocation(line: 103, column: 17, scope: !1174)
!1202 = !DILocation(line: 109, column: 27, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1134, file: !819, line: 109, column: 17)
!1204 = !DILocation(line: 0, scope: !1203)
!1205 = !DILocation(line: 109, column: 17, scope: !1134)
!1206 = !DILocation(line: 110, column: 21, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !819, line: 109, column: 33)
!1208 = !DILocation(line: 111, column: 73, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !819, line: 110, column: 36)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !819, line: 110, column: 21)
!1211 = !DILocation(line: 111, column: 69, scope: !1209)
!1212 = !DILocation(line: 111, column: 66, scope: !1209)
!1213 = !DILocation(line: 112, column: 17, scope: !1209)
!1214 = !DILocation(line: 113, column: 79, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !819, line: 112, column: 24)
!1216 = !DILocation(line: 114, column: 79, scope: !1215)
!1217 = !DILocation(line: 117, column: 17, scope: !1207)
!1218 = !DILocation(line: 118, column: 13, scope: !1207)
!1219 = !DILocation(line: 120, column: 21, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1203, file: !819, line: 118, column: 20)
!1221 = !DILocation(line: 121, column: 72, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !819, line: 120, column: 36)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !819, line: 120, column: 21)
!1224 = !DILocation(line: 121, column: 66, scope: !1222)
!1225 = !DILocation(line: 122, column: 17, scope: !1222)
!1226 = !DILocation(line: 123, column: 79, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !819, line: 122, column: 24)
!1228 = !DILocation(line: 126, column: 17, scope: !1220)
!1229 = !DILocation(line: 133, column: 1, scope: !1118)
!1230 = distinct !DISubprogram(name: "halGPO_Write", scope: !819, file: !819, line: 136, type: !1119, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1231)
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1230, file: !819, line: 136, type: !8)
!1233 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1230, file: !819, line: 136, type: !54)
!1234 = !DILocalVariable(name: "no", scope: !1230, file: !819, line: 138, type: !1126)
!1235 = !DILocalVariable(name: "remainder", scope: !1230, file: !819, line: 139, type: !1126)
!1236 = !DILocation(line: 0, scope: !1230)
!1237 = !DILocation(line: 140, column: 19, scope: !1230)
!1238 = !DILocation(line: 141, column: 17, scope: !1230)
!1239 = !DILocation(line: 142, column: 5, scope: !1230)
!1240 = !DILocation(line: 145, column: 17, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !819, line: 145, column: 17)
!1242 = distinct !DILexicalBlock(scope: !1230, file: !819, line: 142, column: 17)
!1243 = !DILocation(line: 0, scope: !1241)
!1244 = !DILocation(line: 145, column: 17, scope: !1242)
!1245 = !DILocation(line: 146, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !819, line: 145, column: 29)
!1247 = !DILocation(line: 147, column: 13, scope: !1246)
!1248 = !DILocation(line: 148, column: 17, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1241, file: !819, line: 147, column: 20)
!1250 = !DILocation(line: 153, column: 17, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1242, file: !819, line: 153, column: 17)
!1252 = !DILocation(line: 0, scope: !1251)
!1253 = !DILocation(line: 153, column: 17, scope: !1242)
!1254 = !DILocation(line: 154, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !819, line: 153, column: 29)
!1256 = !DILocation(line: 155, column: 13, scope: !1255)
!1257 = !DILocation(line: 156, column: 17, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1251, file: !819, line: 155, column: 20)
!1259 = !DILocation(line: 163, column: 1, scope: !1230)
!1260 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !819, file: !819, line: 169, type: !1261, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!54, !8}
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1260, file: !819, line: 169, type: !8)
!1265 = !DILocalVariable(name: "no", scope: !1260, file: !819, line: 171, type: !1126)
!1266 = !DILocalVariable(name: "remainder", scope: !1260, file: !819, line: 172, type: !1126)
!1267 = !DILocalVariable(name: "dout", scope: !1260, file: !819, line: 175, type: !54)
!1268 = !DILocation(line: 0, scope: !1260)
!1269 = !DILocation(line: 173, column: 19, scope: !1260)
!1270 = !DILocation(line: 174, column: 17, scope: !1260)
!1271 = !DILocation(line: 177, column: 5, scope: !1260)
!1272 = !DILocation(line: 183, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1260, file: !819, line: 177, column: 17)
!1274 = !DILocation(line: 0, scope: !1273)
!1275 = !DILocation(line: 187, column: 5, scope: !1260)
!1276 = !DILocation(line: 188, column: 1, scope: !1260)
!1277 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !819, file: !819, line: 189, type: !1261, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281, !1282}
!1279 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1277, file: !819, line: 189, type: !8)
!1280 = !DILocalVariable(name: "no", scope: !1277, file: !819, line: 191, type: !1126)
!1281 = !DILocalVariable(name: "remainder", scope: !1277, file: !819, line: 192, type: !1126)
!1282 = !DILocalVariable(name: "din", scope: !1277, file: !819, line: 195, type: !54)
!1283 = !DILocation(line: 0, scope: !1277)
!1284 = !DILocation(line: 193, column: 19, scope: !1277)
!1285 = !DILocation(line: 194, column: 17, scope: !1277)
!1286 = !DILocation(line: 196, column: 5, scope: !1277)
!1287 = !DILocation(line: 203, column: 13, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1277, file: !819, line: 196, column: 17)
!1289 = !DILocation(line: 0, scope: !1288)
!1290 = !DILocation(line: 208, column: 5, scope: !1277)
!1291 = !DILocation(line: 209, column: 1, scope: !1277)
!1292 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !819, file: !819, line: 210, type: !1261, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1293)
!1293 = !{!1294, !1295, !1296, !1297}
!1294 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1292, file: !819, line: 210, type: !8)
!1295 = !DILocalVariable(name: "no", scope: !1292, file: !819, line: 212, type: !1126)
!1296 = !DILocalVariable(name: "remainder", scope: !1292, file: !819, line: 213, type: !1126)
!1297 = !DILocalVariable(name: "outEnable", scope: !1292, file: !819, line: 216, type: !54)
!1298 = !DILocation(line: 0, scope: !1292)
!1299 = !DILocation(line: 214, column: 19, scope: !1292)
!1300 = !DILocation(line: 215, column: 17, scope: !1292)
!1301 = !DILocation(line: 218, column: 5, scope: !1292)
!1302 = !DILocation(line: 224, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1292, file: !819, line: 218, column: 17)
!1304 = !DILocation(line: 0, scope: !1303)
!1305 = !DILocation(line: 228, column: 5, scope: !1292)
!1306 = !DILocation(line: 229, column: 1, scope: !1292)
!1307 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !819, file: !819, line: 232, type: !1308, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!1121, !8}
!1310 = !{!1311, !1312, !1313}
!1311 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1307, file: !819, line: 232, type: !8)
!1312 = !DILocalVariable(name: "no", scope: !1307, file: !819, line: 234, type: !1126)
!1313 = !DILocalVariable(name: "remainder", scope: !1307, file: !819, line: 235, type: !1126)
!1314 = !DILocation(line: 0, scope: !1307)
!1315 = !DILocation(line: 236, column: 19, scope: !1307)
!1316 = !DILocation(line: 237, column: 17, scope: !1307)
!1317 = !DILocation(line: 238, column: 5, scope: !1307)
!1318 = !DILocation(line: 239, column: 5, scope: !1307)
!1319 = !DILocation(line: 241, column: 27, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !819, line: 241, column: 17)
!1321 = distinct !DILexicalBlock(scope: !1307, file: !819, line: 239, column: 17)
!1322 = !DILocation(line: 241, column: 17, scope: !1321)
!1323 = !DILocation(line: 241, column: 17, scope: !1320)
!1324 = !DILocation(line: 242, column: 17, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !819, line: 241, column: 34)
!1326 = !DILocation(line: 243, column: 13, scope: !1325)
!1327 = !DILocation(line: 243, column: 24, scope: !1320)
!1328 = !DILocation(line: 244, column: 73, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !819, line: 243, column: 41)
!1330 = distinct !DILexicalBlock(scope: !1320, file: !819, line: 243, column: 24)
!1331 = !DILocation(line: 245, column: 73, scope: !1329)
!1332 = !DILocation(line: 246, column: 13, scope: !1329)
!1333 = !DILocation(line: 247, column: 73, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !819, line: 246, column: 41)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !819, line: 246, column: 24)
!1336 = !DILocation(line: 248, column: 73, scope: !1334)
!1337 = !DILocation(line: 249, column: 13, scope: !1334)
!1338 = !DILocation(line: 250, column: 75, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !819, line: 249, column: 41)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !819, line: 249, column: 24)
!1341 = !DILocation(line: 251, column: 75, scope: !1339)
!1342 = !DILocation(line: 252, column: 13, scope: !1339)
!1343 = !DILocation(line: 253, column: 75, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !819, line: 252, column: 41)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !819, line: 252, column: 24)
!1346 = !DILocation(line: 254, column: 75, scope: !1344)
!1347 = !DILocation(line: 255, column: 13, scope: !1344)
!1348 = !DILocation(line: 256, column: 75, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !819, line: 255, column: 41)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !819, line: 255, column: 24)
!1351 = !DILocation(line: 257, column: 75, scope: !1349)
!1352 = !DILocation(line: 258, column: 13, scope: !1349)
!1353 = !DILocation(line: 261, column: 18, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1321, file: !819, line: 261, column: 17)
!1355 = !DILocation(line: 261, column: 17, scope: !1321)
!1356 = !DILocation(line: 262, column: 75, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !819, line: 261, column: 29)
!1358 = !DILocation(line: 263, column: 75, scope: !1357)
!1359 = !DILocation(line: 264, column: 13, scope: !1357)
!1360 = !DILocation(line: 265, column: 17, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1354, file: !819, line: 264, column: 20)
!1362 = !DILocation(line: 272, column: 1, scope: !1307)
!1363 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !819, file: !819, line: 359, type: !1308, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1364)
!1364 = !{!1365, !1366, !1367}
!1365 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1363, file: !819, line: 359, type: !8)
!1366 = !DILocalVariable(name: "no", scope: !1363, file: !819, line: 362, type: !1126)
!1367 = !DILocalVariable(name: "remainder", scope: !1363, file: !819, line: 363, type: !1126)
!1368 = !DILocation(line: 0, scope: !1363)
!1369 = !DILocation(line: 364, column: 19, scope: !1363)
!1370 = !DILocation(line: 365, column: 17, scope: !1363)
!1371 = !DILocation(line: 367, column: 5, scope: !1363)
!1372 = !DILocation(line: 369, column: 27, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !819, line: 369, column: 17)
!1374 = distinct !DILexicalBlock(scope: !1363, file: !819, line: 367, column: 17)
!1375 = !DILocation(line: 369, column: 17, scope: !1374)
!1376 = !DILocation(line: 369, column: 17, scope: !1373)
!1377 = !DILocation(line: 370, column: 17, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !819, line: 369, column: 34)
!1379 = !DILocation(line: 371, column: 13, scope: !1378)
!1380 = !DILocation(line: 371, column: 24, scope: !1373)
!1381 = !DILocation(line: 372, column: 73, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !819, line: 371, column: 41)
!1383 = distinct !DILexicalBlock(scope: !1373, file: !819, line: 371, column: 24)
!1384 = !DILocation(line: 373, column: 73, scope: !1382)
!1385 = !DILocation(line: 374, column: 13, scope: !1382)
!1386 = !DILocation(line: 375, column: 73, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !819, line: 374, column: 41)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !819, line: 374, column: 24)
!1389 = !DILocation(line: 376, column: 73, scope: !1387)
!1390 = !DILocation(line: 377, column: 13, scope: !1387)
!1391 = !DILocation(line: 378, column: 75, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !819, line: 377, column: 41)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !819, line: 377, column: 24)
!1394 = !DILocation(line: 379, column: 75, scope: !1392)
!1395 = !DILocation(line: 380, column: 13, scope: !1392)
!1396 = !DILocation(line: 381, column: 75, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !819, line: 380, column: 41)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !819, line: 380, column: 24)
!1399 = !DILocation(line: 382, column: 75, scope: !1397)
!1400 = !DILocation(line: 383, column: 13, scope: !1397)
!1401 = !DILocation(line: 384, column: 75, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !819, line: 383, column: 41)
!1403 = distinct !DILexicalBlock(scope: !1398, file: !819, line: 383, column: 24)
!1404 = !DILocation(line: 385, column: 75, scope: !1402)
!1405 = !DILocation(line: 386, column: 13, scope: !1402)
!1406 = !DILocation(line: 389, column: 18, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1374, file: !819, line: 389, column: 17)
!1408 = !DILocation(line: 389, column: 17, scope: !1374)
!1409 = !DILocation(line: 390, column: 75, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1407, file: !819, line: 389, column: 29)
!1411 = !DILocation(line: 391, column: 75, scope: !1410)
!1412 = !DILocation(line: 392, column: 13, scope: !1410)
!1413 = !DILocation(line: 393, column: 17, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1407, file: !819, line: 392, column: 20)
!1415 = !DILocation(line: 401, column: 1, scope: !1363)
!1416 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !819, file: !819, line: 274, type: !1308, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1416, file: !819, line: 274, type: !8)
!1419 = !DILocalVariable(name: "no", scope: !1416, file: !819, line: 276, type: !1126)
!1420 = !DILocalVariable(name: "remainder", scope: !1416, file: !819, line: 277, type: !1126)
!1421 = !DILocation(line: 0, scope: !1416)
!1422 = !DILocation(line: 278, column: 19, scope: !1416)
!1423 = !DILocation(line: 279, column: 17, scope: !1416)
!1424 = !DILocation(line: 281, column: 5, scope: !1416)
!1425 = !DILocation(line: 283, column: 27, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !819, line: 283, column: 17)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !819, line: 281, column: 17)
!1428 = !DILocation(line: 283, column: 17, scope: !1427)
!1429 = !DILocation(line: 283, column: 17, scope: !1426)
!1430 = !DILocation(line: 284, column: 17, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !819, line: 283, column: 34)
!1432 = !DILocation(line: 285, column: 13, scope: !1431)
!1433 = !DILocation(line: 285, column: 24, scope: !1426)
!1434 = !DILocation(line: 286, column: 73, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !819, line: 285, column: 41)
!1436 = distinct !DILexicalBlock(scope: !1426, file: !819, line: 285, column: 24)
!1437 = !DILocation(line: 287, column: 73, scope: !1435)
!1438 = !DILocation(line: 288, column: 13, scope: !1435)
!1439 = !DILocation(line: 289, column: 73, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !819, line: 288, column: 41)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !819, line: 288, column: 24)
!1442 = !DILocation(line: 290, column: 73, scope: !1440)
!1443 = !DILocation(line: 291, column: 13, scope: !1440)
!1444 = !DILocation(line: 292, column: 75, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !819, line: 291, column: 41)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !819, line: 291, column: 24)
!1447 = !DILocation(line: 293, column: 75, scope: !1445)
!1448 = !DILocation(line: 294, column: 13, scope: !1445)
!1449 = !DILocation(line: 295, column: 75, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !819, line: 294, column: 41)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !819, line: 294, column: 24)
!1452 = !DILocation(line: 296, column: 75, scope: !1450)
!1453 = !DILocation(line: 297, column: 13, scope: !1450)
!1454 = !DILocation(line: 298, column: 75, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !819, line: 297, column: 41)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !819, line: 297, column: 24)
!1457 = !DILocation(line: 299, column: 75, scope: !1455)
!1458 = !DILocation(line: 300, column: 13, scope: !1455)
!1459 = !DILocation(line: 303, column: 18, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1427, file: !819, line: 303, column: 17)
!1461 = !DILocation(line: 303, column: 17, scope: !1427)
!1462 = !DILocation(line: 304, column: 75, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !819, line: 303, column: 29)
!1464 = !DILocation(line: 305, column: 75, scope: !1463)
!1465 = !DILocation(line: 306, column: 13, scope: !1463)
!1466 = !DILocation(line: 307, column: 17, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !819, line: 306, column: 20)
!1468 = !DILocation(line: 314, column: 1, scope: !1416)
!1469 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !819, file: !819, line: 316, type: !1308, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1469, file: !819, line: 316, type: !8)
!1472 = !DILocalVariable(name: "no", scope: !1469, file: !819, line: 318, type: !1126)
!1473 = !DILocalVariable(name: "remainder", scope: !1469, file: !819, line: 319, type: !1126)
!1474 = !DILocation(line: 0, scope: !1469)
!1475 = !DILocation(line: 320, column: 19, scope: !1469)
!1476 = !DILocation(line: 321, column: 17, scope: !1469)
!1477 = !DILocation(line: 322, column: 5, scope: !1469)
!1478 = !DILocation(line: 323, column: 5, scope: !1469)
!1479 = !DILocation(line: 325, column: 27, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !819, line: 325, column: 17)
!1481 = distinct !DILexicalBlock(scope: !1469, file: !819, line: 323, column: 17)
!1482 = !DILocation(line: 325, column: 17, scope: !1481)
!1483 = !DILocation(line: 325, column: 17, scope: !1480)
!1484 = !DILocation(line: 326, column: 17, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !819, line: 325, column: 34)
!1486 = !DILocation(line: 327, column: 13, scope: !1485)
!1487 = !DILocation(line: 327, column: 24, scope: !1480)
!1488 = !DILocation(line: 328, column: 73, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !819, line: 327, column: 41)
!1490 = distinct !DILexicalBlock(scope: !1480, file: !819, line: 327, column: 24)
!1491 = !DILocation(line: 329, column: 73, scope: !1489)
!1492 = !DILocation(line: 330, column: 13, scope: !1489)
!1493 = !DILocation(line: 331, column: 73, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !819, line: 330, column: 41)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !819, line: 330, column: 24)
!1496 = !DILocation(line: 332, column: 73, scope: !1494)
!1497 = !DILocation(line: 333, column: 13, scope: !1494)
!1498 = !DILocation(line: 334, column: 75, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !819, line: 333, column: 41)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !819, line: 333, column: 24)
!1501 = !DILocation(line: 335, column: 75, scope: !1499)
!1502 = !DILocation(line: 336, column: 13, scope: !1499)
!1503 = !DILocation(line: 337, column: 75, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !819, line: 336, column: 41)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !819, line: 336, column: 24)
!1506 = !DILocation(line: 338, column: 75, scope: !1504)
!1507 = !DILocation(line: 339, column: 13, scope: !1504)
!1508 = !DILocation(line: 340, column: 75, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !819, line: 339, column: 41)
!1510 = distinct !DILexicalBlock(scope: !1505, file: !819, line: 339, column: 24)
!1511 = !DILocation(line: 341, column: 75, scope: !1509)
!1512 = !DILocation(line: 342, column: 13, scope: !1509)
!1513 = !DILocation(line: 345, column: 18, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1481, file: !819, line: 345, column: 17)
!1515 = !DILocation(line: 345, column: 17, scope: !1481)
!1516 = !DILocation(line: 346, column: 75, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1514, file: !819, line: 345, column: 29)
!1518 = !DILocation(line: 347, column: 75, scope: !1517)
!1519 = !DILocation(line: 348, column: 13, scope: !1517)
!1520 = !DILocation(line: 349, column: 17, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !819, line: 348, column: 20)
!1522 = !DILocation(line: 357, column: 1, scope: !1469)
!1523 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !819, file: !819, line: 404, type: !1119, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527, !1528}
!1525 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1523, file: !819, line: 404, type: !8)
!1526 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1523, file: !819, line: 404, type: !54)
!1527 = !DILocalVariable(name: "no", scope: !1523, file: !819, line: 406, type: !1126)
!1528 = !DILocalVariable(name: "remainder", scope: !1523, file: !819, line: 407, type: !1126)
!1529 = !DILocation(line: 0, scope: !1523)
!1530 = !DILocation(line: 408, column: 19, scope: !1523)
!1531 = !DILocation(line: 409, column: 17, scope: !1523)
!1532 = !DILocation(line: 411, column: 5, scope: !1523)
!1533 = !DILocation(line: 413, column: 84, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1523, file: !819, line: 411, column: 17)
!1535 = !DILocation(line: 413, column: 70, scope: !1534)
!1536 = !DILocation(line: 413, column: 64, scope: !1534)
!1537 = !DILocation(line: 413, column: 61, scope: !1534)
!1538 = !DILocation(line: 414, column: 79, scope: !1534)
!1539 = !DILocation(line: 414, column: 83, scope: !1534)
!1540 = !DILocation(line: 414, column: 88, scope: !1534)
!1541 = !DILocation(line: 414, column: 61, scope: !1534)
!1542 = !DILocation(line: 415, column: 13, scope: !1534)
!1543 = !DILocation(line: 417, column: 27, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1534, file: !819, line: 417, column: 17)
!1545 = !DILocation(line: 417, column: 17, scope: !1534)
!1546 = !DILocation(line: 418, column: 88, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !819, line: 417, column: 33)
!1548 = !DILocation(line: 418, column: 74, scope: !1547)
!1549 = !DILocation(line: 418, column: 68, scope: !1547)
!1550 = !DILocation(line: 418, column: 65, scope: !1547)
!1551 = !DILocation(line: 419, column: 83, scope: !1547)
!1552 = !DILocation(line: 419, column: 87, scope: !1547)
!1553 = !DILocation(line: 419, column: 92, scope: !1547)
!1554 = !DILocation(line: 419, column: 65, scope: !1547)
!1555 = !DILocation(line: 420, column: 13, scope: !1547)
!1556 = !DILocation(line: 420, column: 24, scope: !1544)
!1557 = !DILocation(line: 421, column: 73, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !819, line: 420, column: 41)
!1559 = distinct !DILexicalBlock(scope: !1544, file: !819, line: 420, column: 24)
!1560 = !DILocation(line: 422, column: 91, scope: !1558)
!1561 = !DILocation(line: 422, column: 100, scope: !1558)
!1562 = !DILocation(line: 422, column: 73, scope: !1558)
!1563 = !DILocation(line: 423, column: 73, scope: !1558)
!1564 = !DILocation(line: 424, column: 13, scope: !1558)
!1565 = !DILocation(line: 425, column: 73, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !819, line: 424, column: 41)
!1567 = distinct !DILexicalBlock(scope: !1559, file: !819, line: 424, column: 24)
!1568 = !DILocation(line: 426, column: 91, scope: !1566)
!1569 = !DILocation(line: 426, column: 100, scope: !1566)
!1570 = !DILocation(line: 426, column: 73, scope: !1566)
!1571 = !DILocation(line: 427, column: 73, scope: !1566)
!1572 = !DILocation(line: 428, column: 13, scope: !1566)
!1573 = !DILocation(line: 429, column: 75, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !819, line: 428, column: 41)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !819, line: 428, column: 24)
!1576 = !DILocation(line: 430, column: 93, scope: !1574)
!1577 = !DILocation(line: 430, column: 102, scope: !1574)
!1578 = !DILocation(line: 430, column: 75, scope: !1574)
!1579 = !DILocation(line: 431, column: 75, scope: !1574)
!1580 = !DILocation(line: 432, column: 13, scope: !1574)
!1581 = !DILocation(line: 433, column: 75, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !819, line: 432, column: 41)
!1583 = distinct !DILexicalBlock(scope: !1575, file: !819, line: 432, column: 24)
!1584 = !DILocation(line: 434, column: 93, scope: !1582)
!1585 = !DILocation(line: 434, column: 102, scope: !1582)
!1586 = !DILocation(line: 434, column: 75, scope: !1582)
!1587 = !DILocation(line: 435, column: 75, scope: !1582)
!1588 = !DILocation(line: 436, column: 13, scope: !1582)
!1589 = !DILocation(line: 437, column: 75, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !819, line: 436, column: 41)
!1591 = distinct !DILexicalBlock(scope: !1583, file: !819, line: 436, column: 24)
!1592 = !DILocation(line: 438, column: 93, scope: !1590)
!1593 = !DILocation(line: 438, column: 102, scope: !1590)
!1594 = !DILocation(line: 438, column: 75, scope: !1590)
!1595 = !DILocation(line: 439, column: 75, scope: !1590)
!1596 = !DILocation(line: 440, column: 13, scope: !1590)
!1597 = !DILocation(line: 443, column: 18, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1534, file: !819, line: 443, column: 17)
!1599 = !DILocation(line: 443, column: 17, scope: !1534)
!1600 = !DILocation(line: 444, column: 75, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !819, line: 443, column: 29)
!1602 = !DILocation(line: 445, column: 93, scope: !1601)
!1603 = !DILocation(line: 445, column: 102, scope: !1601)
!1604 = !DILocation(line: 445, column: 75, scope: !1601)
!1605 = !DILocation(line: 446, column: 75, scope: !1601)
!1606 = !DILocation(line: 447, column: 13, scope: !1601)
!1607 = !DILocation(line: 448, column: 88, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1598, file: !819, line: 447, column: 20)
!1609 = !DILocation(line: 448, column: 74, scope: !1608)
!1610 = !DILocation(line: 448, column: 68, scope: !1608)
!1611 = !DILocation(line: 448, column: 65, scope: !1608)
!1612 = !DILocation(line: 449, column: 83, scope: !1608)
!1613 = !DILocation(line: 449, column: 87, scope: !1608)
!1614 = !DILocation(line: 449, column: 92, scope: !1608)
!1615 = !DILocation(line: 449, column: 65, scope: !1608)
!1616 = !DILocation(line: 453, column: 84, scope: !1534)
!1617 = !DILocation(line: 453, column: 70, scope: !1534)
!1618 = !DILocation(line: 453, column: 64, scope: !1534)
!1619 = !DILocation(line: 453, column: 61, scope: !1534)
!1620 = !DILocation(line: 454, column: 79, scope: !1534)
!1621 = !DILocation(line: 454, column: 83, scope: !1534)
!1622 = !DILocation(line: 454, column: 88, scope: !1534)
!1623 = !DILocation(line: 454, column: 61, scope: !1534)
!1624 = !DILocation(line: 455, column: 13, scope: !1534)
!1625 = !DILocation(line: 460, column: 1, scope: !1523)
!1626 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !819, file: !819, line: 463, type: !1627, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1630)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1121, !8, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!1630 = !{!1631, !1632, !1633, !1634, !1635}
!1631 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1626, file: !819, line: 463, type: !8)
!1632 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1626, file: !819, line: 463, type: !1629)
!1633 = !DILocalVariable(name: "no", scope: !1626, file: !819, line: 465, type: !1126)
!1634 = !DILocalVariable(name: "remainder", scope: !1626, file: !819, line: 466, type: !1126)
!1635 = !DILocalVariable(name: "temp", scope: !1626, file: !819, line: 467, type: !8)
!1636 = !DILocation(line: 0, scope: !1626)
!1637 = !DILocation(line: 468, column: 19, scope: !1626)
!1638 = !DILocation(line: 469, column: 17, scope: !1626)
!1639 = !DILocation(line: 471, column: 5, scope: !1626)
!1640 = !DILocation(line: 473, column: 20, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1626, file: !819, line: 471, column: 17)
!1642 = !DILocation(line: 474, column: 40, scope: !1641)
!1643 = !DILocation(line: 474, column: 26, scope: !1641)
!1644 = !DILocation(line: 474, column: 18, scope: !1641)
!1645 = !DILocation(line: 475, column: 40, scope: !1641)
!1646 = !DILocation(line: 475, column: 29, scope: !1641)
!1647 = !DILocation(line: 476, column: 13, scope: !1641)
!1648 = !DILocation(line: 478, column: 27, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1641, file: !819, line: 478, column: 17)
!1650 = !DILocation(line: 478, column: 17, scope: !1641)
!1651 = !DILocation(line: 479, column: 24, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !819, line: 478, column: 33)
!1653 = !DILocation(line: 480, column: 44, scope: !1652)
!1654 = !DILocation(line: 480, column: 30, scope: !1652)
!1655 = !DILocation(line: 480, column: 22, scope: !1652)
!1656 = !DILocation(line: 481, column: 44, scope: !1652)
!1657 = !DILocation(line: 481, column: 33, scope: !1652)
!1658 = !DILocation(line: 482, column: 13, scope: !1652)
!1659 = !DILocation(line: 482, column: 24, scope: !1649)
!1660 = !DILocation(line: 483, column: 24, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !819, line: 482, column: 41)
!1662 = distinct !DILexicalBlock(scope: !1649, file: !819, line: 482, column: 24)
!1663 = !DILocation(line: 485, column: 53, scope: !1661)
!1664 = !DILocation(line: 485, column: 33, scope: !1661)
!1665 = !DILocation(line: 486, column: 13, scope: !1661)
!1666 = !DILocation(line: 487, column: 24, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !819, line: 486, column: 41)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !819, line: 486, column: 24)
!1669 = !DILocation(line: 489, column: 53, scope: !1667)
!1670 = !DILocation(line: 489, column: 33, scope: !1667)
!1671 = !DILocation(line: 490, column: 13, scope: !1667)
!1672 = !DILocation(line: 491, column: 24, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !819, line: 490, column: 41)
!1674 = distinct !DILexicalBlock(scope: !1668, file: !819, line: 490, column: 24)
!1675 = !DILocation(line: 493, column: 53, scope: !1673)
!1676 = !DILocation(line: 493, column: 33, scope: !1673)
!1677 = !DILocation(line: 494, column: 13, scope: !1673)
!1678 = !DILocation(line: 495, column: 24, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !819, line: 494, column: 41)
!1680 = distinct !DILexicalBlock(scope: !1674, file: !819, line: 494, column: 24)
!1681 = !DILocation(line: 497, column: 53, scope: !1679)
!1682 = !DILocation(line: 497, column: 33, scope: !1679)
!1683 = !DILocation(line: 498, column: 13, scope: !1679)
!1684 = !DILocation(line: 499, column: 24, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !819, line: 498, column: 41)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !819, line: 498, column: 24)
!1687 = !DILocation(line: 501, column: 53, scope: !1685)
!1688 = !DILocation(line: 501, column: 33, scope: !1685)
!1689 = !DILocation(line: 502, column: 13, scope: !1685)
!1690 = !DILocation(line: 505, column: 18, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1641, file: !819, line: 505, column: 17)
!1692 = !DILocation(line: 505, column: 17, scope: !1641)
!1693 = !DILocation(line: 506, column: 24, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !819, line: 505, column: 29)
!1695 = !DILocation(line: 508, column: 53, scope: !1694)
!1696 = !DILocation(line: 508, column: 33, scope: !1694)
!1697 = !DILocation(line: 509, column: 13, scope: !1694)
!1698 = !DILocation(line: 510, column: 24, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1691, file: !819, line: 509, column: 20)
!1700 = !DILocation(line: 511, column: 44, scope: !1699)
!1701 = !DILocation(line: 511, column: 30, scope: !1699)
!1702 = !DILocation(line: 511, column: 22, scope: !1699)
!1703 = !DILocation(line: 512, column: 44, scope: !1699)
!1704 = !DILocation(line: 512, column: 33, scope: !1699)
!1705 = !DILocation(line: 516, column: 20, scope: !1641)
!1706 = !DILocation(line: 517, column: 40, scope: !1641)
!1707 = !DILocation(line: 517, column: 26, scope: !1641)
!1708 = !DILocation(line: 517, column: 18, scope: !1641)
!1709 = !DILocation(line: 518, column: 40, scope: !1641)
!1710 = !DILocation(line: 518, column: 29, scope: !1641)
!1711 = !DILocation(line: 519, column: 13, scope: !1641)
!1712 = !DILocation(line: 0, scope: !1641)
!1713 = !DILocation(line: 524, column: 1, scope: !1626)
!1714 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !819, file: !819, line: 526, type: !1715, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !1718)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !8, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !822, line: 1212, baseType: !821)
!1718 = !{!1719, !1720, !1721, !1722}
!1719 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1714, file: !819, line: 526, type: !8)
!1720 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1714, file: !819, line: 526, type: !1717)
!1721 = !DILocalVariable(name: "no", scope: !1714, file: !819, line: 529, type: !1126)
!1722 = !DILocalVariable(name: "remainder", scope: !1714, file: !819, line: 530, type: !1126)
!1723 = !DILocation(line: 0, scope: !1714)
!1724 = !DILocation(line: 531, column: 19, scope: !1714)
!1725 = !DILocation(line: 532, column: 17, scope: !1714)
!1726 = !DILocation(line: 534, column: 9, scope: !1714)
!1727 = !DILocation(line: 536, column: 9, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !819, line: 534, column: 45)
!1729 = distinct !DILexicalBlock(scope: !1714, file: !819, line: 534, column: 9)
!1730 = !DILocation(line: 538, column: 56, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1728, file: !819, line: 536, column: 21)
!1732 = !DILocation(line: 538, column: 53, scope: !1731)
!1733 = !DILocation(line: 538, column: 47, scope: !1731)
!1734 = !DILocation(line: 539, column: 17, scope: !1731)
!1735 = !DILocation(line: 541, column: 56, scope: !1731)
!1736 = !DILocation(line: 541, column: 53, scope: !1731)
!1737 = !DILocation(line: 541, column: 47, scope: !1731)
!1738 = !DILocation(line: 542, column: 17, scope: !1731)
!1739 = !DILocation(line: 548, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !819, line: 547, column: 51)
!1741 = distinct !DILexicalBlock(scope: !1729, file: !819, line: 547, column: 16)
!1742 = !DILocation(line: 550, column: 57, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !819, line: 548, column: 21)
!1744 = !DILocation(line: 550, column: 54, scope: !1743)
!1745 = !DILocation(line: 550, column: 50, scope: !1743)
!1746 = !DILocation(line: 550, column: 47, scope: !1743)
!1747 = !DILocation(line: 551, column: 17, scope: !1743)
!1748 = !DILocation(line: 553, column: 57, scope: !1743)
!1749 = !DILocation(line: 553, column: 54, scope: !1743)
!1750 = !DILocation(line: 553, column: 50, scope: !1743)
!1751 = !DILocation(line: 553, column: 47, scope: !1743)
!1752 = !DILocation(line: 554, column: 17, scope: !1743)
!1753 = !DILocation(line: 560, column: 1, scope: !1714)
!1754 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !831, file: !831, line: 85, type: !1755, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !1759)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1757, !1758, !54}
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !9, line: 79, baseType: null)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !834, line: 225, baseType: !833)
!1759 = !{!1760, !1761, !1762}
!1760 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1754, file: !831, line: 85, type: !1758)
!1761 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1754, file: !831, line: 85, type: !54)
!1762 = !DILocalVariable(name: "temp", scope: !1754, file: !831, line: 87, type: !12)
!1763 = !DILocation(line: 0, scope: !1754)
!1764 = !DILocation(line: 88, column: 5, scope: !1754)
!1765 = !DILocation(line: 91, column: 20, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1754, file: !831, line: 88, column: 24)
!1767 = !DILocation(line: 92, column: 18, scope: !1766)
!1768 = !DILocation(line: 93, column: 66, scope: !1766)
!1769 = !DILocation(line: 93, column: 63, scope: !1766)
!1770 = !DILocation(line: 93, column: 56, scope: !1766)
!1771 = !DILocation(line: 94, column: 13, scope: !1766)
!1772 = !DILocation(line: 97, column: 20, scope: !1766)
!1773 = !DILocation(line: 98, column: 18, scope: !1766)
!1774 = !DILocation(line: 99, column: 67, scope: !1766)
!1775 = !DILocation(line: 99, column: 74, scope: !1766)
!1776 = !DILocation(line: 99, column: 64, scope: !1766)
!1777 = !DILocation(line: 99, column: 56, scope: !1766)
!1778 = !DILocation(line: 100, column: 13, scope: !1766)
!1779 = !DILocation(line: 103, column: 20, scope: !1766)
!1780 = !DILocation(line: 104, column: 18, scope: !1766)
!1781 = !DILocation(line: 105, column: 67, scope: !1766)
!1782 = !DILocation(line: 105, column: 74, scope: !1766)
!1783 = !DILocation(line: 105, column: 64, scope: !1766)
!1784 = !DILocation(line: 105, column: 56, scope: !1766)
!1785 = !DILocation(line: 106, column: 13, scope: !1766)
!1786 = !DILocation(line: 109, column: 20, scope: !1766)
!1787 = !DILocation(line: 110, column: 18, scope: !1766)
!1788 = !DILocation(line: 111, column: 67, scope: !1766)
!1789 = !DILocation(line: 111, column: 74, scope: !1766)
!1790 = !DILocation(line: 111, column: 64, scope: !1766)
!1791 = !DILocation(line: 111, column: 56, scope: !1766)
!1792 = !DILocation(line: 112, column: 13, scope: !1766)
!1793 = !DILocation(line: 115, column: 20, scope: !1766)
!1794 = !DILocation(line: 116, column: 18, scope: !1766)
!1795 = !DILocation(line: 117, column: 67, scope: !1766)
!1796 = !DILocation(line: 117, column: 74, scope: !1766)
!1797 = !DILocation(line: 117, column: 64, scope: !1766)
!1798 = !DILocation(line: 117, column: 56, scope: !1766)
!1799 = !DILocation(line: 118, column: 13, scope: !1766)
!1800 = !DILocation(line: 121, column: 20, scope: !1766)
!1801 = !DILocation(line: 122, column: 18, scope: !1766)
!1802 = !DILocation(line: 123, column: 67, scope: !1766)
!1803 = !DILocation(line: 123, column: 74, scope: !1766)
!1804 = !DILocation(line: 123, column: 64, scope: !1766)
!1805 = !DILocation(line: 123, column: 56, scope: !1766)
!1806 = !DILocation(line: 124, column: 13, scope: !1766)
!1807 = !DILocation(line: 127, column: 20, scope: !1766)
!1808 = !DILocation(line: 128, column: 18, scope: !1766)
!1809 = !DILocation(line: 129, column: 67, scope: !1766)
!1810 = !DILocation(line: 129, column: 74, scope: !1766)
!1811 = !DILocation(line: 129, column: 64, scope: !1766)
!1812 = !DILocation(line: 129, column: 56, scope: !1766)
!1813 = !DILocation(line: 130, column: 13, scope: !1766)
!1814 = !DILocation(line: 133, column: 20, scope: !1766)
!1815 = !DILocation(line: 134, column: 18, scope: !1766)
!1816 = !DILocation(line: 135, column: 67, scope: !1766)
!1817 = !DILocation(line: 135, column: 74, scope: !1766)
!1818 = !DILocation(line: 135, column: 64, scope: !1766)
!1819 = !DILocation(line: 135, column: 56, scope: !1766)
!1820 = !DILocation(line: 136, column: 13, scope: !1766)
!1821 = !DILocation(line: 139, column: 20, scope: !1766)
!1822 = !DILocation(line: 140, column: 18, scope: !1766)
!1823 = !DILocation(line: 141, column: 67, scope: !1766)
!1824 = !DILocation(line: 141, column: 64, scope: !1766)
!1825 = !DILocation(line: 141, column: 56, scope: !1766)
!1826 = !DILocation(line: 142, column: 13, scope: !1766)
!1827 = !DILocation(line: 145, column: 20, scope: !1766)
!1828 = !DILocation(line: 146, column: 18, scope: !1766)
!1829 = !DILocation(line: 147, column: 67, scope: !1766)
!1830 = !DILocation(line: 147, column: 74, scope: !1766)
!1831 = !DILocation(line: 147, column: 64, scope: !1766)
!1832 = !DILocation(line: 147, column: 56, scope: !1766)
!1833 = !DILocation(line: 148, column: 13, scope: !1766)
!1834 = !DILocation(line: 151, column: 20, scope: !1766)
!1835 = !DILocation(line: 152, column: 18, scope: !1766)
!1836 = !DILocation(line: 153, column: 67, scope: !1766)
!1837 = !DILocation(line: 153, column: 74, scope: !1766)
!1838 = !DILocation(line: 153, column: 64, scope: !1766)
!1839 = !DILocation(line: 153, column: 56, scope: !1766)
!1840 = !DILocation(line: 154, column: 13, scope: !1766)
!1841 = !DILocation(line: 157, column: 20, scope: !1766)
!1842 = !DILocation(line: 158, column: 18, scope: !1766)
!1843 = !DILocation(line: 159, column: 67, scope: !1766)
!1844 = !DILocation(line: 159, column: 74, scope: !1766)
!1845 = !DILocation(line: 159, column: 64, scope: !1766)
!1846 = !DILocation(line: 159, column: 56, scope: !1766)
!1847 = !DILocation(line: 160, column: 29, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1766, file: !831, line: 160, column: 17)
!1849 = !DILocation(line: 161, column: 17, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !831, line: 160, column: 60)
!1851 = !DILocation(line: 162, column: 13, scope: !1850)
!1852 = !DILocation(line: 166, column: 20, scope: !1766)
!1853 = !DILocation(line: 167, column: 18, scope: !1766)
!1854 = !DILocation(line: 168, column: 67, scope: !1766)
!1855 = !DILocation(line: 168, column: 74, scope: !1766)
!1856 = !DILocation(line: 168, column: 64, scope: !1766)
!1857 = !DILocation(line: 168, column: 56, scope: !1766)
!1858 = !DILocation(line: 169, column: 29, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1766, file: !831, line: 169, column: 17)
!1860 = !DILocation(line: 170, column: 17, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1859, file: !831, line: 169, column: 45)
!1862 = !DILocation(line: 171, column: 13, scope: !1861)
!1863 = !DILocation(line: 175, column: 20, scope: !1766)
!1864 = !DILocation(line: 176, column: 18, scope: !1766)
!1865 = !DILocation(line: 177, column: 67, scope: !1766)
!1866 = !DILocation(line: 177, column: 74, scope: !1766)
!1867 = !DILocation(line: 177, column: 64, scope: !1766)
!1868 = !DILocation(line: 177, column: 56, scope: !1766)
!1869 = !DILocation(line: 178, column: 19, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1766, file: !831, line: 178, column: 17)
!1871 = !DILocation(line: 178, column: 17, scope: !1766)
!1872 = !DILocation(line: 179, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !831, line: 178, column: 30)
!1874 = !DILocation(line: 180, column: 13, scope: !1873)
!1875 = !DILocation(line: 184, column: 20, scope: !1766)
!1876 = !DILocation(line: 185, column: 18, scope: !1766)
!1877 = !DILocation(line: 186, column: 67, scope: !1766)
!1878 = !DILocation(line: 186, column: 74, scope: !1766)
!1879 = !DILocation(line: 186, column: 64, scope: !1766)
!1880 = !DILocation(line: 186, column: 56, scope: !1766)
!1881 = !DILocation(line: 187, column: 29, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1766, file: !831, line: 187, column: 17)
!1883 = !DILocation(line: 188, column: 17, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1882, file: !831, line: 187, column: 45)
!1885 = !DILocation(line: 189, column: 13, scope: !1884)
!1886 = !DILocation(line: 193, column: 20, scope: !1766)
!1887 = !DILocation(line: 194, column: 18, scope: !1766)
!1888 = !DILocation(line: 195, column: 67, scope: !1766)
!1889 = !DILocation(line: 195, column: 74, scope: !1766)
!1890 = !DILocation(line: 195, column: 64, scope: !1766)
!1891 = !DILocation(line: 195, column: 56, scope: !1766)
!1892 = !DILocation(line: 196, column: 29, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1766, file: !831, line: 196, column: 17)
!1894 = !DILocation(line: 197, column: 17, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1893, file: !831, line: 196, column: 45)
!1896 = !DILocation(line: 198, column: 13, scope: !1895)
!1897 = !DILocation(line: 202, column: 20, scope: !1766)
!1898 = !DILocation(line: 203, column: 18, scope: !1766)
!1899 = !DILocation(line: 204, column: 67, scope: !1766)
!1900 = !DILocation(line: 204, column: 64, scope: !1766)
!1901 = !DILocation(line: 204, column: 56, scope: !1766)
!1902 = !DILocation(line: 205, column: 29, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1766, file: !831, line: 205, column: 17)
!1904 = !DILocation(line: 206, column: 17, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1903, file: !831, line: 205, column: 45)
!1906 = !DILocation(line: 207, column: 13, scope: !1905)
!1907 = !DILocation(line: 211, column: 20, scope: !1766)
!1908 = !DILocation(line: 212, column: 18, scope: !1766)
!1909 = !DILocation(line: 213, column: 67, scope: !1766)
!1910 = !DILocation(line: 213, column: 74, scope: !1766)
!1911 = !DILocation(line: 213, column: 64, scope: !1766)
!1912 = !DILocation(line: 213, column: 56, scope: !1766)
!1913 = !DILocation(line: 214, column: 13, scope: !1766)
!1914 = !DILocation(line: 217, column: 20, scope: !1766)
!1915 = !DILocation(line: 218, column: 18, scope: !1766)
!1916 = !DILocation(line: 219, column: 67, scope: !1766)
!1917 = !DILocation(line: 219, column: 74, scope: !1766)
!1918 = !DILocation(line: 219, column: 64, scope: !1766)
!1919 = !DILocation(line: 219, column: 56, scope: !1766)
!1920 = !DILocation(line: 220, column: 13, scope: !1766)
!1921 = !DILocation(line: 223, column: 20, scope: !1766)
!1922 = !DILocation(line: 224, column: 18, scope: !1766)
!1923 = !DILocation(line: 225, column: 67, scope: !1766)
!1924 = !DILocation(line: 225, column: 74, scope: !1766)
!1925 = !DILocation(line: 225, column: 64, scope: !1766)
!1926 = !DILocation(line: 225, column: 56, scope: !1766)
!1927 = !DILocation(line: 226, column: 13, scope: !1766)
!1928 = !DILocation(line: 229, column: 20, scope: !1766)
!1929 = !DILocation(line: 230, column: 18, scope: !1766)
!1930 = !DILocation(line: 231, column: 67, scope: !1766)
!1931 = !DILocation(line: 231, column: 74, scope: !1766)
!1932 = !DILocation(line: 231, column: 64, scope: !1766)
!1933 = !DILocation(line: 231, column: 56, scope: !1766)
!1934 = !DILocation(line: 232, column: 13, scope: !1766)
!1935 = !DILocation(line: 235, column: 20, scope: !1766)
!1936 = !DILocation(line: 236, column: 18, scope: !1766)
!1937 = !DILocation(line: 237, column: 66, scope: !1766)
!1938 = !DILocation(line: 237, column: 73, scope: !1766)
!1939 = !DILocation(line: 237, column: 63, scope: !1766)
!1940 = !DILocation(line: 237, column: 56, scope: !1766)
!1941 = !DILocation(line: 238, column: 13, scope: !1766)
!1942 = !DILocation(line: 241, column: 20, scope: !1766)
!1943 = !DILocation(line: 242, column: 18, scope: !1766)
!1944 = !DILocation(line: 243, column: 67, scope: !1766)
!1945 = !DILocation(line: 243, column: 74, scope: !1766)
!1946 = !DILocation(line: 243, column: 64, scope: !1766)
!1947 = !DILocation(line: 243, column: 56, scope: !1766)
!1948 = !DILocation(line: 244, column: 13, scope: !1766)
!1949 = !DILocation(line: 247, column: 20, scope: !1766)
!1950 = !DILocation(line: 248, column: 18, scope: !1766)
!1951 = !DILocation(line: 249, column: 67, scope: !1766)
!1952 = !DILocation(line: 249, column: 74, scope: !1766)
!1953 = !DILocation(line: 249, column: 64, scope: !1766)
!1954 = !DILocation(line: 249, column: 56, scope: !1766)
!1955 = !DILocation(line: 250, column: 13, scope: !1766)
!1956 = !DILocation(line: 253, column: 20, scope: !1766)
!1957 = !DILocation(line: 254, column: 18, scope: !1766)
!1958 = !DILocation(line: 255, column: 67, scope: !1766)
!1959 = !DILocation(line: 255, column: 74, scope: !1766)
!1960 = !DILocation(line: 255, column: 64, scope: !1766)
!1961 = !DILocation(line: 255, column: 56, scope: !1766)
!1962 = !DILocation(line: 256, column: 13, scope: !1766)
!1963 = !DILocation(line: 259, column: 20, scope: !1766)
!1964 = !DILocation(line: 260, column: 18, scope: !1766)
!1965 = !DILocation(line: 261, column: 67, scope: !1766)
!1966 = !DILocation(line: 261, column: 74, scope: !1766)
!1967 = !DILocation(line: 261, column: 64, scope: !1766)
!1968 = !DILocation(line: 261, column: 56, scope: !1766)
!1969 = !DILocation(line: 262, column: 13, scope: !1766)
!1970 = !DILocation(line: 265, column: 20, scope: !1766)
!1971 = !DILocation(line: 266, column: 18, scope: !1766)
!1972 = !DILocation(line: 267, column: 67, scope: !1766)
!1973 = !DILocation(line: 267, column: 74, scope: !1766)
!1974 = !DILocation(line: 267, column: 64, scope: !1766)
!1975 = !DILocation(line: 267, column: 56, scope: !1766)
!1976 = !DILocation(line: 268, column: 13, scope: !1766)
!1977 = !DILocation(line: 271, column: 20, scope: !1766)
!1978 = !DILocation(line: 272, column: 18, scope: !1766)
!1979 = !DILocation(line: 273, column: 67, scope: !1766)
!1980 = !DILocation(line: 273, column: 74, scope: !1766)
!1981 = !DILocation(line: 273, column: 64, scope: !1766)
!1982 = !DILocation(line: 273, column: 56, scope: !1766)
!1983 = !DILocation(line: 274, column: 13, scope: !1766)
!1984 = !DILocation(line: 278, column: 1, scope: !1754)
!1985 = distinct !DISubprogram(name: "halRTCUnlock", scope: !912, file: !912, line: 132, type: !1986, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !1989)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1988}
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_HAL_RET_T", file: !307, line: 368, baseType: !306)
!1989 = !{!1990, !1991, !1992}
!1990 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !1985, file: !912, line: 134, type: !915)
!1991 = !DILocalVariable(name: "u4Val", scope: !1985, file: !912, line: 135, type: !8)
!1992 = !DILocalVariable(name: "u4Count", scope: !1985, file: !912, line: 136, type: !8)
!1993 = !DILocation(line: 0, scope: !1985)
!1994 = !DILocation(line: 142, column: 5, scope: !1985)
!1995 = !DILocation(line: 143, column: 17, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1985, file: !912, line: 142, column: 8)
!1997 = !DILocation(line: 144, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1996, file: !912, line: 144, column: 13)
!1999 = !DILocation(line: 144, column: 25, scope: !1998)
!2000 = !DILocation(line: 144, column: 13, scope: !1996)
!2001 = !DILocation(line: 146, column: 13, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !912, line: 144, column: 37)
!2003 = !DILocation(line: 147, column: 13, scope: !2002)
!2004 = !DILocation(line: 149, column: 26, scope: !1985)
!2005 = !DILocation(line: 149, column: 16, scope: !1985)
!2006 = !DILocation(line: 149, column: 5, scope: !1996)
!2007 = distinct !{!2007, !1994, !2008}
!2008 = !DILocation(line: 149, column: 61, scope: !1985)
!2009 = !DILocation(line: 150, column: 5, scope: !1985)
!2010 = !DILocation(line: 154, column: 36, scope: !1985)
!2011 = !DILocation(line: 157, column: 36, scope: !1985)
!2012 = !DILocation(line: 162, column: 32, scope: !1985)
!2013 = !DILocation(line: 166, column: 34, scope: !1985)
!2014 = !DILocation(line: 168, column: 34, scope: !1985)
!2015 = !DILocation(line: 170, column: 34, scope: !1985)
!2016 = !DILocation(line: 172, column: 34, scope: !1985)
!2017 = !DILocation(line: 174, column: 5, scope: !1985)
!2018 = !DILocation(line: 175, column: 1, scope: !1985)
!2019 = distinct !DISubprogram(name: "halRTCCheckInhibit", scope: !912, file: !912, line: 202, type: !1986, scopeLine: 203, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2020)
!2020 = !{!2021, !2022, !2023, !2024}
!2021 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2019, file: !912, line: 204, type: !915)
!2022 = !DILocalVariable(name: "ret", scope: !2019, file: !912, line: 205, type: !1988)
!2023 = !DILocalVariable(name: "ucCnt", scope: !2019, file: !912, line: 206, type: !54)
!2024 = !DILocalVariable(name: "ucTimeout", scope: !2019, file: !912, line: 207, type: !8)
!2025 = !DILocation(line: 0, scope: !2019)
!2026 = !DILocation(line: 211, column: 5, scope: !2019)
!2027 = !DILocation(line: 213, column: 33, scope: !2019)
!2028 = !DILocation(line: 213, column: 42, scope: !2019)
!2029 = !DILocation(line: 213, column: 5, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2019, file: !912, line: 211, column: 8)
!2031 = distinct !{!2031, !2026, !2032}
!2032 = !DILocation(line: 213, column: 95, scope: !2019)
!2033 = !DILocation(line: 221, column: 5, scope: !2019)
!2034 = distinct !DISubprogram(name: "halRTCGetTime", scope: !912, file: !912, line: 224, type: !2035, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2038)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!1988, !2037, !2037, !2037, !2037, !2037, !2037, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "PUINT8", file: !9, line: 84, baseType: !613)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!2039 = !DILocalVariable(name: "pucYear", arg: 1, scope: !2034, file: !912, line: 225, type: !2037)
!2040 = !DILocalVariable(name: "pucMonth", arg: 2, scope: !2034, file: !912, line: 226, type: !2037)
!2041 = !DILocalVariable(name: "pucDayofMonth", arg: 3, scope: !2034, file: !912, line: 227, type: !2037)
!2042 = !DILocalVariable(name: "pucDayofWeek", arg: 4, scope: !2034, file: !912, line: 228, type: !2037)
!2043 = !DILocalVariable(name: "pucHour", arg: 5, scope: !2034, file: !912, line: 229, type: !2037)
!2044 = !DILocalVariable(name: "pucMinute", arg: 6, scope: !2034, file: !912, line: 230, type: !2037)
!2045 = !DILocalVariable(name: "pucSecond", arg: 7, scope: !2034, file: !912, line: 231, type: !2037)
!2046 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2034, file: !912, line: 237, type: !915)
!2047 = !DILocalVariable(name: "ret", scope: !2034, file: !912, line: 238, type: !1988)
!2048 = !DILocation(line: 0, scope: !2034)
!2049 = !DILocation(line: 242, column: 28, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 242, column: 9)
!2051 = !DILocation(line: 243, column: 40, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2050, file: !912, line: 242, column: 50)
!2053 = !DILocation(line: 243, column: 22, scope: !2052)
!2054 = !DILocation(line: 243, column: 20, scope: !2052)
!2055 = !DILocation(line: 248, column: 28, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 248, column: 9)
!2057 = !DILocation(line: 249, column: 41, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !912, line: 248, column: 50)
!2059 = !DILocation(line: 249, column: 23, scope: !2058)
!2060 = !DILocation(line: 249, column: 21, scope: !2058)
!2061 = !DILocation(line: 254, column: 28, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 254, column: 9)
!2063 = !DILocation(line: 255, column: 46, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2062, file: !912, line: 254, column: 50)
!2065 = !DILocation(line: 255, column: 28, scope: !2064)
!2066 = !DILocation(line: 255, column: 26, scope: !2064)
!2067 = !DILocation(line: 260, column: 28, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 260, column: 9)
!2069 = !DILocation(line: 261, column: 45, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2068, file: !912, line: 260, column: 50)
!2071 = !DILocation(line: 261, column: 27, scope: !2070)
!2072 = !DILocation(line: 261, column: 25, scope: !2070)
!2073 = !DILocation(line: 266, column: 28, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 266, column: 9)
!2075 = !DILocation(line: 267, column: 40, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2074, file: !912, line: 266, column: 50)
!2077 = !DILocation(line: 267, column: 22, scope: !2076)
!2078 = !DILocation(line: 267, column: 20, scope: !2076)
!2079 = !DILocation(line: 272, column: 28, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 272, column: 9)
!2081 = !DILocation(line: 273, column: 42, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !912, line: 272, column: 50)
!2083 = !DILocation(line: 273, column: 24, scope: !2082)
!2084 = !DILocation(line: 273, column: 22, scope: !2082)
!2085 = !DILocation(line: 278, column: 28, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2034, file: !912, line: 278, column: 9)
!2087 = !DILocation(line: 279, column: 42, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2086, file: !912, line: 278, column: 50)
!2089 = !DILocation(line: 279, column: 24, scope: !2088)
!2090 = !DILocation(line: 279, column: 22, scope: !2088)
!2091 = !DILocation(line: 285, column: 1, scope: !2034)
!2092 = distinct !DISubprogram(name: "halRTCSetTime", scope: !912, file: !912, line: 287, type: !2093, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!1988, !54, !54, !54, !54, !54, !54, !54}
!2095 = !{!2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2096 = !DILocalVariable(name: "ucYear", arg: 1, scope: !2092, file: !912, line: 288, type: !54)
!2097 = !DILocalVariable(name: "ucMonth", arg: 2, scope: !2092, file: !912, line: 289, type: !54)
!2098 = !DILocalVariable(name: "ucDayofMonth", arg: 3, scope: !2092, file: !912, line: 290, type: !54)
!2099 = !DILocalVariable(name: "ucDayofWeek", arg: 4, scope: !2092, file: !912, line: 291, type: !54)
!2100 = !DILocalVariable(name: "ucHour", arg: 5, scope: !2092, file: !912, line: 292, type: !54)
!2101 = !DILocalVariable(name: "ucMinute", arg: 6, scope: !2092, file: !912, line: 293, type: !54)
!2102 = !DILocalVariable(name: "ucSecond", arg: 7, scope: !2092, file: !912, line: 294, type: !54)
!2103 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2092, file: !912, line: 297, type: !915)
!2104 = !DILocalVariable(name: "ret", scope: !2092, file: !912, line: 298, type: !1988)
!2105 = !DILocation(line: 0, scope: !2092)
!2106 = !DILocation(line: 302, column: 11, scope: !2092)
!2107 = !DILocation(line: 304, column: 25, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2092, file: !912, line: 304, column: 9)
!2109 = !DILocation(line: 304, column: 9, scope: !2092)
!2110 = !DILocation(line: 307, column: 36, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !912, line: 304, column: 33)
!2112 = !DILocation(line: 311, column: 41, scope: !2111)
!2113 = !DILocation(line: 311, column: 39, scope: !2111)
!2114 = !DILocation(line: 313, column: 41, scope: !2111)
!2115 = !DILocation(line: 313, column: 39, scope: !2111)
!2116 = !DILocation(line: 315, column: 41, scope: !2111)
!2117 = !DILocation(line: 315, column: 39, scope: !2111)
!2118 = !DILocation(line: 317, column: 41, scope: !2111)
!2119 = !DILocation(line: 317, column: 39, scope: !2111)
!2120 = !DILocation(line: 319, column: 41, scope: !2111)
!2121 = !DILocation(line: 319, column: 39, scope: !2111)
!2122 = !DILocation(line: 321, column: 41, scope: !2111)
!2123 = !DILocation(line: 321, column: 39, scope: !2111)
!2124 = !DILocation(line: 323, column: 41, scope: !2111)
!2125 = !DILocation(line: 323, column: 39, scope: !2111)
!2126 = !DILocation(line: 327, column: 36, scope: !2111)
!2127 = !DILocation(line: 328, column: 5, scope: !2111)
!2128 = !DILocation(line: 330, column: 5, scope: !2092)
!2129 = distinct !DISubprogram(name: "halRTCInit", scope: !912, file: !912, line: 335, type: !1986, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2130)
!2130 = !{!2131, !2132}
!2131 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2129, file: !912, line: 338, type: !915)
!2132 = !DILocalVariable(name: "ret", scope: !2129, file: !912, line: 339, type: !1988)
!2133 = !DILocation(line: 0, scope: !2129)
!2134 = !DILocation(line: 343, column: 11, scope: !2129)
!2135 = !DILocation(line: 345, column: 25, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2129, file: !912, line: 345, column: 9)
!2137 = !DILocation(line: 345, column: 9, scope: !2129)
!2138 = !DILocation(line: 347, column: 41, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !912, line: 345, column: 33)
!2140 = !DILocation(line: 348, column: 41, scope: !2139)
!2141 = !DILocation(line: 349, column: 41, scope: !2139)
!2142 = !DILocation(line: 350, column: 41, scope: !2139)
!2143 = !DILocation(line: 351, column: 41, scope: !2139)
!2144 = !DILocation(line: 352, column: 9, scope: !2139)
!2145 = !DILocation(line: 353, column: 5, scope: !2139)
!2146 = !DILocation(line: 355, column: 5, scope: !2129)
!2147 = distinct !DISubprogram(name: "halRTCDeInit", scope: !912, file: !912, line: 358, type: !1986, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2148)
!2148 = !{!2149, !2150}
!2149 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2147, file: !912, line: 360, type: !915)
!2150 = !DILocalVariable(name: "ret", scope: !2147, file: !912, line: 361, type: !1988)
!2151 = !DILocation(line: 0, scope: !2147)
!2152 = !DILocation(line: 365, column: 11, scope: !2147)
!2153 = !DILocation(line: 367, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2147, file: !912, line: 367, column: 9)
!2155 = !DILocation(line: 367, column: 9, scope: !2147)
!2156 = !DILocation(line: 370, column: 36, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !912, line: 367, column: 33)
!2158 = !DILocation(line: 371, column: 5, scope: !2157)
!2159 = !DILocation(line: 373, column: 5, scope: !2147)
!2160 = distinct !DISubprogram(name: "halRTCSetAlarm", scope: !912, file: !912, line: 404, type: !2161, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!1988, !54, !54, !54, !54, !54, !54, !54, !54}
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2164 = !DILocalVariable(name: "ucYear", arg: 1, scope: !2160, file: !912, line: 405, type: !54)
!2165 = !DILocalVariable(name: "ucMonth", arg: 2, scope: !2160, file: !912, line: 406, type: !54)
!2166 = !DILocalVariable(name: "ucDayofMonth", arg: 3, scope: !2160, file: !912, line: 407, type: !54)
!2167 = !DILocalVariable(name: "ucDayofWeek", arg: 4, scope: !2160, file: !912, line: 408, type: !54)
!2168 = !DILocalVariable(name: "ucHour", arg: 5, scope: !2160, file: !912, line: 409, type: !54)
!2169 = !DILocalVariable(name: "ucMinute", arg: 6, scope: !2160, file: !912, line: 410, type: !54)
!2170 = !DILocalVariable(name: "ucSecond", arg: 7, scope: !2160, file: !912, line: 411, type: !54)
!2171 = !DILocalVariable(name: "ucEnableMask", arg: 8, scope: !2160, file: !912, line: 412, type: !54)
!2172 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2160, file: !912, line: 415, type: !915)
!2173 = !DILocalVariable(name: "ret", scope: !2160, file: !912, line: 416, type: !1988)
!2174 = !DILocation(line: 0, scope: !2160)
!2175 = !DILocation(line: 421, column: 11, scope: !2160)
!2176 = !DILocation(line: 423, column: 25, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2160, file: !912, line: 423, column: 9)
!2178 = !DILocation(line: 423, column: 9, scope: !2160)
!2179 = !DILocation(line: 426, column: 42, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2177, file: !912, line: 423, column: 33)
!2181 = !DILocation(line: 426, column: 40, scope: !2180)
!2182 = !DILocation(line: 428, column: 41, scope: !2180)
!2183 = !DILocation(line: 428, column: 39, scope: !2180)
!2184 = !DILocation(line: 430, column: 41, scope: !2180)
!2185 = !DILocation(line: 430, column: 39, scope: !2180)
!2186 = !DILocation(line: 432, column: 41, scope: !2180)
!2187 = !DILocation(line: 432, column: 39, scope: !2180)
!2188 = !DILocation(line: 434, column: 42, scope: !2180)
!2189 = !DILocation(line: 434, column: 40, scope: !2180)
!2190 = !DILocation(line: 436, column: 41, scope: !2180)
!2191 = !DILocation(line: 436, column: 39, scope: !2180)
!2192 = !DILocation(line: 438, column: 41, scope: !2180)
!2193 = !DILocation(line: 438, column: 39, scope: !2180)
!2194 = !DILocation(line: 442, column: 41, scope: !2180)
!2195 = !DILocation(line: 442, column: 39, scope: !2180)
!2196 = !DILocation(line: 443, column: 5, scope: !2180)
!2197 = !DILocation(line: 445, column: 5, scope: !2160)
!2198 = distinct !DISubprogram(name: "halRTCGetAlarm", scope: !912, file: !912, line: 448, type: !2035, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2200 = !DILocalVariable(name: "pucYear", arg: 1, scope: !2198, file: !912, line: 449, type: !2037)
!2201 = !DILocalVariable(name: "pucMonth", arg: 2, scope: !2198, file: !912, line: 450, type: !2037)
!2202 = !DILocalVariable(name: "pucDayofMonth", arg: 3, scope: !2198, file: !912, line: 451, type: !2037)
!2203 = !DILocalVariable(name: "pucDayofWeek", arg: 4, scope: !2198, file: !912, line: 452, type: !2037)
!2204 = !DILocalVariable(name: "pucHour", arg: 5, scope: !2198, file: !912, line: 453, type: !2037)
!2205 = !DILocalVariable(name: "pucMinute", arg: 6, scope: !2198, file: !912, line: 454, type: !2037)
!2206 = !DILocalVariable(name: "pucSecond", arg: 7, scope: !2198, file: !912, line: 455, type: !2037)
!2207 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2198, file: !912, line: 458, type: !915)
!2208 = !DILocalVariable(name: "ret", scope: !2198, file: !912, line: 459, type: !1988)
!2209 = !DILocation(line: 0, scope: !2198)
!2210 = !DILocation(line: 463, column: 36, scope: !2198)
!2211 = !DILocation(line: 463, column: 18, scope: !2198)
!2212 = !DILocation(line: 463, column: 16, scope: !2198)
!2213 = !DILocation(line: 464, column: 37, scope: !2198)
!2214 = !DILocation(line: 464, column: 19, scope: !2198)
!2215 = !DILocation(line: 464, column: 17, scope: !2198)
!2216 = !DILocation(line: 465, column: 42, scope: !2198)
!2217 = !DILocation(line: 465, column: 24, scope: !2198)
!2218 = !DILocation(line: 465, column: 22, scope: !2198)
!2219 = !DILocation(line: 466, column: 41, scope: !2198)
!2220 = !DILocation(line: 466, column: 23, scope: !2198)
!2221 = !DILocation(line: 466, column: 21, scope: !2198)
!2222 = !DILocation(line: 467, column: 36, scope: !2198)
!2223 = !DILocation(line: 467, column: 18, scope: !2198)
!2224 = !DILocation(line: 467, column: 16, scope: !2198)
!2225 = !DILocation(line: 468, column: 38, scope: !2198)
!2226 = !DILocation(line: 468, column: 20, scope: !2198)
!2227 = !DILocation(line: 468, column: 18, scope: !2198)
!2228 = !DILocation(line: 469, column: 38, scope: !2198)
!2229 = !DILocation(line: 469, column: 20, scope: !2198)
!2230 = !DILocation(line: 469, column: 18, scope: !2198)
!2231 = !DILocation(line: 471, column: 5, scope: !2198)
!2232 = distinct !DISubprogram(name: "halRTCEnableAlarm", scope: !912, file: !912, line: 474, type: !2233, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!1988, !54}
!2235 = !{!2236, !2237, !2238}
!2236 = !DILocalVariable(name: "ucEnable", arg: 1, scope: !2232, file: !912, line: 474, type: !54)
!2237 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2232, file: !912, line: 476, type: !915)
!2238 = !DILocalVariable(name: "ret", scope: !2232, file: !912, line: 477, type: !1988)
!2239 = !DILocation(line: 0, scope: !2232)
!2240 = !DILocation(line: 482, column: 11, scope: !2232)
!2241 = !DILocation(line: 484, column: 25, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2232, file: !912, line: 484, column: 9)
!2243 = !DILocation(line: 484, column: 9, scope: !2232)
!2244 = !DILocation(line: 485, column: 15, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !912, line: 485, column: 13)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !912, line: 484, column: 33)
!2247 = !DILocation(line: 0, scope: !2245)
!2248 = !DILocation(line: 485, column: 13, scope: !2246)
!2249 = !DILocation(line: 492, column: 5, scope: !2232)
!2250 = distinct !DISubprogram(name: "halRTCEnterMode", scope: !912, file: !912, line: 529, type: !1986, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2251)
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !2250, file: !912, line: 531, type: !915)
!2253 = !DILocalVariable(name: "ret", scope: !2250, file: !912, line: 532, type: !1988)
!2254 = !DILocation(line: 0, scope: !2250)
!2255 = !DILocation(line: 538, column: 11, scope: !2250)
!2256 = !DILocation(line: 539, column: 25, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2250, file: !912, line: 539, column: 9)
!2258 = !DILocation(line: 539, column: 9, scope: !2250)
!2259 = !DILocation(line: 542, column: 39, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2257, file: !912, line: 539, column: 33)
!2261 = !DILocation(line: 544, column: 41, scope: !2260)
!2262 = !DILocation(line: 547, column: 39, scope: !2260)
!2263 = !DILocation(line: 574, column: 5, scope: !2260)
!2264 = !DILocation(line: 575, column: 5, scope: !2250)
!2265 = distinct !DISubprogram(name: "halRTCSetBackup", scope: !912, file: !912, line: 678, type: !2266, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2271)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!1988, !1126, !2268, !1126}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT8", file: !9, line: 54, baseType: !461)
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "addr", arg: 1, scope: !2265, file: !912, line: 678, type: !1126)
!2273 = !DILocalVariable(name: "buf", arg: 2, scope: !2265, file: !912, line: 678, type: !2268)
!2274 = !DILocalVariable(name: "len", arg: 3, scope: !2265, file: !912, line: 678, type: !1126)
!2275 = !DILocalVariable(name: "ret", scope: !2265, file: !912, line: 680, type: !1988)
!2276 = !DILocation(line: 0, scope: !2265)
!2277 = !DILocation(line: 681, column: 11, scope: !2265)
!2278 = !DILocation(line: 683, column: 5, scope: !2265)
!2279 = distinct !DISubprogram(name: "halRTCWriteBackup", scope: !912, file: !912, line: 594, type: !2266, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2281 = !DILocalVariable(name: "addr", arg: 1, scope: !2279, file: !912, line: 594, type: !1126)
!2282 = !DILocalVariable(name: "buf", arg: 2, scope: !2279, file: !912, line: 594, type: !2268)
!2283 = !DILocalVariable(name: "len", arg: 3, scope: !2279, file: !912, line: 594, type: !1126)
!2284 = !DILocalVariable(name: "ret", scope: !2279, file: !912, line: 596, type: !1988)
!2285 = !DILocalVariable(name: "pRTCBackupTypeDef", scope: !2279, file: !912, line: 597, type: !957)
!2286 = !DILocalVariable(name: "pu4RegVal", scope: !2279, file: !912, line: 598, type: !16)
!2287 = !DILocalVariable(name: "ucRegOffset", scope: !2279, file: !912, line: 599, type: !54)
!2288 = !DILocalVariable(name: "ucRegIndex", scope: !2279, file: !912, line: 600, type: !54)
!2289 = !DILocalVariable(name: "u2Residual", scope: !2279, file: !912, line: 601, type: !1126)
!2290 = !DILocalVariable(name: "u4Val", scope: !2279, file: !912, line: 602, type: !8)
!2291 = !DILocalVariable(name: "i", scope: !2279, file: !912, line: 603, type: !1126)
!2292 = !DILocation(line: 0, scope: !2279)
!2293 = !DILocation(line: 608, column: 10, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2279, file: !912, line: 608, column: 9)
!2295 = !DILocation(line: 608, column: 17, scope: !2294)
!2296 = !DILocation(line: 608, column: 15, scope: !2294)
!2297 = !DILocation(line: 608, column: 22, scope: !2294)
!2298 = !DILocation(line: 608, column: 9, scope: !2279)
!2299 = !DILocation(line: 612, column: 11, scope: !2279)
!2300 = !DILocation(line: 613, column: 25, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2279, file: !912, line: 613, column: 9)
!2302 = !DILocation(line: 613, column: 9, scope: !2279)
!2303 = !DILocation(line: 614, column: 23, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !912, line: 613, column: 33)
!2305 = !DILocation(line: 615, column: 28, scope: !2304)
!2306 = !DILocation(line: 616, column: 15, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !912, line: 616, column: 13)
!2308 = !DILocation(line: 616, column: 13, scope: !2304)
!2309 = !DILocation(line: 617, column: 64, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !912, line: 616, column: 31)
!2311 = !DILocation(line: 617, column: 62, scope: !2310)
!2312 = !DILocation(line: 618, column: 22, scope: !2310)
!2313 = !DILocation(line: 619, column: 50, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !912, line: 619, column: 13)
!2315 = distinct !DILexicalBlock(scope: !2310, file: !912, line: 619, column: 13)
!2316 = !DILocation(line: 619, column: 13, scope: !2315)
!2317 = !DILocation(line: 620, column: 61, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !912, line: 619, column: 77)
!2319 = !DILocation(line: 620, column: 66, scope: !2318)
!2320 = !DILocation(line: 620, column: 44, scope: !2318)
!2321 = !DILocation(line: 620, column: 35, scope: !2318)
!2322 = !DILocation(line: 620, column: 32, scope: !2318)
!2323 = !DILocation(line: 621, column: 26, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2318, file: !912, line: 621, column: 21)
!2325 = !DILocation(line: 621, column: 21, scope: !2318)
!2326 = !DILocation(line: 622, column: 40, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2324, file: !912, line: 621, column: 34)
!2328 = !DILocation(line: 622, column: 39, scope: !2327)
!2329 = !DILocation(line: 622, column: 46, scope: !2327)
!2330 = !DILocation(line: 622, column: 36, scope: !2327)
!2331 = !DILocation(line: 624, column: 31, scope: !2327)
!2332 = !DILocation(line: 625, column: 17, scope: !2327)
!2333 = !DILocation(line: 0, scope: !2324)
!2334 = !DILocation(line: 628, column: 41, scope: !2318)
!2335 = !DILocation(line: 619, column: 73, scope: !2314)
!2336 = !DILocation(line: 619, column: 29, scope: !2314)
!2337 = distinct !{!2337, !2316, !2338}
!2338 = !DILocation(line: 629, column: 13, scope: !2315)
!2339 = !DILocation(line: 0, scope: !2310)
!2340 = !DILocation(line: 630, column: 26, scope: !2310)
!2341 = !DILocation(line: 632, column: 24, scope: !2310)
!2342 = !DILocation(line: 633, column: 9, scope: !2310)
!2343 = !DILocation(line: 601, column: 12, scope: !2279)
!2344 = !DILocation(line: 634, column: 60, scope: !2304)
!2345 = !DILocation(line: 634, column: 58, scope: !2304)
!2346 = !DILocation(line: 635, column: 27, scope: !2304)
!2347 = !DILocation(line: 635, column: 9, scope: !2304)
!2348 = !DILocation(line: 636, column: 22, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !912, line: 636, column: 17)
!2350 = distinct !DILexicalBlock(scope: !2304, file: !912, line: 635, column: 33)
!2351 = !DILocation(line: 636, column: 17, scope: !2350)
!2352 = !DILocation(line: 637, column: 28, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !912, line: 636, column: 30)
!2354 = !DILocation(line: 637, column: 27, scope: !2353)
!2355 = !DILocation(line: 637, column: 50, scope: !2353)
!2356 = !DILocation(line: 637, column: 44, scope: !2353)
!2357 = !DILocation(line: 637, column: 43, scope: !2353)
!2358 = !DILocation(line: 637, column: 56, scope: !2353)
!2359 = !DILocation(line: 637, column: 40, scope: !2353)
!2360 = !DILocation(line: 637, column: 72, scope: !2353)
!2361 = !DILocation(line: 637, column: 66, scope: !2353)
!2362 = !DILocation(line: 637, column: 65, scope: !2353)
!2363 = !DILocation(line: 637, column: 78, scope: !2353)
!2364 = !DILocation(line: 637, column: 62, scope: !2353)
!2365 = !DILocation(line: 637, column: 95, scope: !2353)
!2366 = !DILocation(line: 637, column: 89, scope: !2353)
!2367 = !DILocation(line: 637, column: 88, scope: !2353)
!2368 = !DILocation(line: 637, column: 101, scope: !2353)
!2369 = !DILocation(line: 637, column: 85, scope: !2353)
!2370 = !DILocation(line: 638, column: 30, scope: !2353)
!2371 = !DILocation(line: 640, column: 27, scope: !2353)
!2372 = !DILocation(line: 641, column: 13, scope: !2353)
!2373 = !DILocation(line: 643, column: 30, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2349, file: !912, line: 641, column: 20)
!2375 = !DILocation(line: 0, scope: !2349)
!2376 = !DILocation(line: 646, column: 37, scope: !2350)
!2377 = distinct !{!2377, !2347, !2378}
!2378 = !DILocation(line: 647, column: 9, scope: !2304)
!2379 = !DILocation(line: 0, scope: !2304)
!2380 = !DILocation(line: 649, column: 24, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2304, file: !912, line: 649, column: 13)
!2382 = !DILocation(line: 649, column: 13, scope: !2304)
!2383 = !DILocation(line: 650, column: 22, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !912, line: 649, column: 29)
!2385 = !DILocation(line: 651, column: 13, scope: !2384)
!2386 = !DILocation(line: 653, column: 36, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !912, line: 651, column: 33)
!2388 = !DILocation(line: 654, column: 30, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2387, file: !912, line: 654, column: 25)
!2390 = !DILocation(line: 654, column: 25, scope: !2387)
!2391 = !DILocation(line: 655, column: 43, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2389, file: !912, line: 654, column: 38)
!2393 = !DILocation(line: 655, column: 42, scope: !2392)
!2394 = !DILocation(line: 655, column: 39, scope: !2392)
!2395 = !DILocation(line: 656, column: 21, scope: !2392)
!2396 = !DILocation(line: 659, column: 36, scope: !2387)
!2397 = !DILocation(line: 660, column: 30, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2387, file: !912, line: 660, column: 25)
!2399 = !DILocation(line: 660, column: 25, scope: !2387)
!2400 = !DILocation(line: 661, column: 45, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2398, file: !912, line: 660, column: 38)
!2402 = !DILocation(line: 661, column: 44, scope: !2401)
!2403 = !DILocation(line: 661, column: 67, scope: !2401)
!2404 = !DILocation(line: 661, column: 61, scope: !2401)
!2405 = !DILocation(line: 661, column: 60, scope: !2401)
!2406 = !DILocation(line: 661, column: 73, scope: !2401)
!2407 = !DILocation(line: 661, column: 57, scope: !2401)
!2408 = !DILocation(line: 661, column: 40, scope: !2401)
!2409 = !DILocation(line: 662, column: 21, scope: !2401)
!2410 = !DILocation(line: 665, column: 36, scope: !2387)
!2411 = !DILocation(line: 666, column: 30, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2387, file: !912, line: 666, column: 25)
!2413 = !DILocation(line: 666, column: 25, scope: !2387)
!2414 = !DILocation(line: 667, column: 45, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !912, line: 666, column: 38)
!2416 = !DILocation(line: 667, column: 44, scope: !2415)
!2417 = !DILocation(line: 667, column: 67, scope: !2415)
!2418 = !DILocation(line: 667, column: 61, scope: !2415)
!2419 = !DILocation(line: 667, column: 60, scope: !2415)
!2420 = !DILocation(line: 667, column: 73, scope: !2415)
!2421 = !DILocation(line: 667, column: 89, scope: !2415)
!2422 = !DILocation(line: 667, column: 83, scope: !2415)
!2423 = !DILocation(line: 667, column: 82, scope: !2415)
!2424 = !DILocation(line: 667, column: 95, scope: !2415)
!2425 = !DILocation(line: 667, column: 57, scope: !2415)
!2426 = !DILocation(line: 667, column: 79, scope: !2415)
!2427 = !DILocation(line: 667, column: 40, scope: !2415)
!2428 = !DILocation(line: 668, column: 21, scope: !2415)
!2429 = !DILocation(line: 0, scope: !2384)
!2430 = !DILocation(line: 671, column: 26, scope: !2384)
!2431 = !DILocation(line: 672, column: 9, scope: !2384)
!2432 = !DILocation(line: 677, column: 1, scope: !2279)
!2433 = distinct !DISubprogram(name: "halRTCClearBackup", scope: !912, file: !912, line: 687, type: !2434, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!1988, !1126, !1126}
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "addr", arg: 1, scope: !2433, file: !912, line: 687, type: !1126)
!2438 = !DILocalVariable(name: "len", arg: 2, scope: !2433, file: !912, line: 687, type: !1126)
!2439 = !DILocalVariable(name: "ret", scope: !2433, file: !912, line: 689, type: !1988)
!2440 = !DILocation(line: 0, scope: !2433)
!2441 = !DILocation(line: 690, column: 11, scope: !2433)
!2442 = !DILocation(line: 692, column: 5, scope: !2433)
!2443 = distinct !DISubprogram(name: "halRTCGetBackup", scope: !912, file: !912, line: 696, type: !2444, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !911, retainedNodes: !2447)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!1988, !1126, !2446, !1126}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 32)
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2448 = !DILocalVariable(name: "addr", arg: 1, scope: !2443, file: !912, line: 696, type: !1126)
!2449 = !DILocalVariable(name: "buf", arg: 2, scope: !2443, file: !912, line: 696, type: !2446)
!2450 = !DILocalVariable(name: "len", arg: 3, scope: !2443, file: !912, line: 696, type: !1126)
!2451 = !DILocalVariable(name: "ret", scope: !2443, file: !912, line: 698, type: !1988)
!2452 = !DILocalVariable(name: "pRTCBackupTypeDef", scope: !2443, file: !912, line: 699, type: !957)
!2453 = !DILocalVariable(name: "pu4RegVal", scope: !2443, file: !912, line: 700, type: !16)
!2454 = !DILocalVariable(name: "ucRegOffset", scope: !2443, file: !912, line: 701, type: !54)
!2455 = !DILocalVariable(name: "ucRegIndex", scope: !2443, file: !912, line: 702, type: !54)
!2456 = !DILocalVariable(name: "u2Residual", scope: !2443, file: !912, line: 703, type: !1126)
!2457 = !DILocalVariable(name: "u4Val", scope: !2443, file: !912, line: 704, type: !8)
!2458 = !DILocalVariable(name: "i", scope: !2443, file: !912, line: 705, type: !1126)
!2459 = !DILocation(line: 0, scope: !2443)
!2460 = !DILocation(line: 710, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2443, file: !912, line: 710, column: 9)
!2462 = !DILocation(line: 710, column: 17, scope: !2461)
!2463 = !DILocation(line: 710, column: 15, scope: !2461)
!2464 = !DILocation(line: 710, column: 22, scope: !2461)
!2465 = !DILocation(line: 710, column: 9, scope: !2443)
!2466 = !DILocation(line: 714, column: 11, scope: !2443)
!2467 = !DILocation(line: 715, column: 25, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2443, file: !912, line: 715, column: 9)
!2469 = !DILocation(line: 715, column: 9, scope: !2443)
!2470 = !DILocation(line: 716, column: 23, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2468, file: !912, line: 715, column: 33)
!2472 = !DILocation(line: 717, column: 28, scope: !2471)
!2473 = !DILocation(line: 718, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !912, line: 718, column: 13)
!2475 = !DILocation(line: 718, column: 13, scope: !2471)
!2476 = !DILocation(line: 719, column: 64, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !912, line: 718, column: 31)
!2478 = !DILocation(line: 719, column: 62, scope: !2477)
!2479 = !DILocation(line: 720, column: 22, scope: !2477)
!2480 = !DILocation(line: 721, column: 50, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !912, line: 721, column: 13)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !912, line: 721, column: 13)
!2483 = !DILocation(line: 721, column: 13, scope: !2482)
!2484 = !DILocation(line: 722, column: 62, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !912, line: 721, column: 77)
!2486 = !DILocation(line: 722, column: 67, scope: !2485)
!2487 = !DILocation(line: 722, column: 45, scope: !2485)
!2488 = !DILocation(line: 722, column: 34, scope: !2485)
!2489 = !DILocation(line: 722, column: 75, scope: !2485)
!2490 = !DILocation(line: 722, column: 26, scope: !2485)
!2491 = !DILocation(line: 722, column: 24, scope: !2485)
!2492 = !DILocation(line: 724, column: 27, scope: !2485)
!2493 = !DILocation(line: 725, column: 41, scope: !2485)
!2494 = !DILocation(line: 721, column: 73, scope: !2481)
!2495 = !DILocation(line: 721, column: 29, scope: !2481)
!2496 = distinct !{!2496, !2483, !2497}
!2497 = !DILocation(line: 726, column: 13, scope: !2482)
!2498 = !DILocation(line: 728, column: 24, scope: !2477)
!2499 = !DILocation(line: 729, column: 9, scope: !2477)
!2500 = !DILocation(line: 703, column: 12, scope: !2443)
!2501 = !DILocation(line: 730, column: 60, scope: !2471)
!2502 = !DILocation(line: 730, column: 58, scope: !2471)
!2503 = !DILocation(line: 731, column: 27, scope: !2471)
!2504 = !DILocation(line: 731, column: 9, scope: !2471)
!2505 = !DILocation(line: 732, column: 22, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2471, file: !912, line: 731, column: 33)
!2507 = !DILocation(line: 734, column: 22, scope: !2506)
!2508 = !DILocation(line: 734, column: 20, scope: !2506)
!2509 = !DILocation(line: 735, column: 46, scope: !2506)
!2510 = !DILocation(line: 735, column: 28, scope: !2506)
!2511 = !DILocation(line: 735, column: 20, scope: !2506)
!2512 = !DILocation(line: 735, column: 26, scope: !2506)
!2513 = !DILocation(line: 736, column: 48, scope: !2506)
!2514 = !DILocation(line: 736, column: 28, scope: !2506)
!2515 = !DILocation(line: 736, column: 20, scope: !2506)
!2516 = !DILocation(line: 736, column: 26, scope: !2506)
!2517 = !DILocation(line: 737, column: 50, scope: !2506)
!2518 = !DILocation(line: 737, column: 28, scope: !2506)
!2519 = !DILocation(line: 737, column: 20, scope: !2506)
!2520 = !DILocation(line: 737, column: 26, scope: !2506)
!2521 = !DILocation(line: 739, column: 35, scope: !2506)
!2522 = !DILocation(line: 740, column: 23, scope: !2506)
!2523 = !DILocation(line: 741, column: 37, scope: !2506)
!2524 = distinct !{!2524, !2504, !2525}
!2525 = !DILocation(line: 742, column: 9, scope: !2471)
!2526 = !DILocation(line: 0, scope: !2471)
!2527 = !DILocation(line: 744, column: 24, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2471, file: !912, line: 744, column: 13)
!2529 = !DILocation(line: 744, column: 13, scope: !2471)
!2530 = !DILocation(line: 745, column: 22, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2528, file: !912, line: 744, column: 29)
!2532 = !DILocation(line: 747, column: 27, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !912, line: 747, column: 13)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !912, line: 747, column: 13)
!2535 = !DILocation(line: 747, column: 13, scope: !2534)
!2536 = !DILocation(line: 748, column: 48, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !912, line: 747, column: 46)
!2538 = !DILocation(line: 748, column: 42, scope: !2537)
!2539 = !DILocation(line: 748, column: 34, scope: !2537)
!2540 = !DILocation(line: 748, column: 55, scope: !2537)
!2541 = !DILocation(line: 748, column: 26, scope: !2537)
!2542 = !DILocation(line: 748, column: 24, scope: !2537)
!2543 = !DILocation(line: 749, column: 27, scope: !2537)
!2544 = !DILocation(line: 747, column: 42, scope: !2533)
!2545 = distinct !{!2545, !2535, !2546}
!2546 = !DILocation(line: 750, column: 13, scope: !2534)
!2547 = !DILocation(line: 757, column: 1, scope: !2443)
!2548 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !998, file: !998, line: 47, type: !2549, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !12}
!2551 = !{!2552}
!2552 = !DILocalVariable(name: "addr", arg: 1, scope: !2548, file: !998, line: 47, type: !12)
!2553 = !DILocation(line: 0, scope: !2548)
!2554 = !DILocation(line: 49, column: 15, scope: !2548)
!2555 = !DILocation(line: 51, column: 5, scope: !2548)
!2556 = !{i64 2624}
!2557 = !DILocation(line: 52, column: 5, scope: !2548)
!2558 = !{i64 2651}
!2559 = !DILocation(line: 53, column: 1, scope: !2548)
!2560 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !998, file: !998, line: 56, type: !2561, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !7}
!2563 = !{!2564}
!2564 = !DILocalVariable(name: "source", arg: 1, scope: !2560, file: !998, line: 56, type: !7)
!2565 = !DILocation(line: 0, scope: !2560)
!2566 = !DILocation(line: 58, column: 16, scope: !2560)
!2567 = !DILocation(line: 59, column: 1, scope: !2560)
!2568 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !998, file: !998, line: 61, type: !2569, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!12}
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "mask", scope: !2568, file: !998, line: 63, type: !12)
!2573 = !DILocation(line: 470, column: 3, scope: !2574, inlinedAt: !2578)
!2574 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2575, file: !2575, line: 466, type: !2569, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2576)
!2575 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!2576 = !{!2577}
!2577 = !DILocalVariable(name: "result", scope: !2574, file: !2575, line: 468, type: !12)
!2578 = distinct !DILocation(line: 64, column: 5, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2568, file: !998, line: 64, column: 5)
!2580 = !{i64 302171}
!2581 = !DILocation(line: 0, scope: !2574, inlinedAt: !2578)
!2582 = !DILocation(line: 0, scope: !2568)
!2583 = !DILocation(line: 330, column: 3, scope: !2584, inlinedAt: !2586)
!2584 = distinct !DISubprogram(name: "__disable_irq", scope: !2575, file: !2575, line: 328, type: !470, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2585)
!2585 = !{}
!2586 = distinct !DILocation(line: 64, column: 5, scope: !2579)
!2587 = !{i64 298835}
!2588 = !DILocation(line: 65, column: 5, scope: !2568)
!2589 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !998, file: !998, line: 68, type: !2549, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2590)
!2590 = !{!2591}
!2591 = !DILocalVariable(name: "mask", arg: 1, scope: !2589, file: !998, line: 68, type: !12)
!2592 = !DILocation(line: 0, scope: !2589)
!2593 = !DILocalVariable(name: "priMask", arg: 1, scope: !2594, file: !2575, line: 481, type: !12)
!2594 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2575, file: !2575, line: 481, type: !2549, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !997, retainedNodes: !2595)
!2595 = !{!2593}
!2596 = !DILocation(line: 0, scope: !2594, inlinedAt: !2597)
!2597 = distinct !DILocation(line: 70, column: 5, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2589, file: !998, line: 70, column: 5)
!2599 = !DILocation(line: 483, column: 3, scope: !2594, inlinedAt: !2597)
!2600 = !{i64 302489}
!2601 = !DILocation(line: 71, column: 1, scope: !2589)
!2602 = distinct !DISubprogram(name: "pinmux_config", scope: !1043, file: !1043, line: 54, type: !2603, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1042, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!206, !1105, !12}
!2605 = !{!2606, !2607, !2608}
!2606 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2602, file: !1043, line: 54, type: !1105)
!2607 = !DILocalVariable(name: "function", arg: 2, scope: !2602, file: !1043, line: 54, type: !12)
!2608 = !DILocalVariable(name: "ePadIndex", scope: !2602, file: !1043, line: 56, type: !1758)
!2609 = !DILocation(line: 0, scope: !2602)
!2610 = !DILocation(line: 60, column: 5, scope: !2602)
!2611 = !DILocation(line: 205, column: 38, scope: !2602)
!2612 = !DILocation(line: 205, column: 5, scope: !2602)
!2613 = !DILocation(line: 207, column: 5, scope: !2602)
!2614 = !DILocation(line: 208, column: 1, scope: !2602)
!2615 = distinct !DISubprogram(name: "top_xtal_init", scope: !3, file: !3, line: 52, type: !470, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2616)
!2616 = !{!2617, !2618}
!2617 = !DILocalVariable(name: "u4RegVal", scope: !2615, file: !3, line: 54, type: !12)
!2618 = !DILocalVariable(name: "reg", scope: !2615, file: !3, line: 55, type: !706)
!2619 = !DILocation(line: 0, scope: !2615)
!2620 = !DILocation(line: 55, column: 25, scope: !2615)
!2621 = !DILocation(line: 56, column: 16, scope: !2615)
!2622 = !DILocation(line: 56, column: 23, scope: !2615)
!2623 = !DILocation(line: 58, column: 16, scope: !2615)
!2624 = !DILocation(line: 61, column: 5, scope: !2615)
!2625 = !DILocation(line: 59, column: 14, scope: !2615)
!2626 = !DILocation(line: 0, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 61, column: 18)
!2628 = !DILocation(line: 87, column: 38, scope: !2615)
!2629 = !DILocation(line: 88, column: 21, scope: !2615)
!2630 = !DILocation(line: 88, column: 19, scope: !2615)
!2631 = !DILocation(line: 89, column: 5, scope: !2615)
!2632 = !DILocation(line: 90, column: 17, scope: !2615)
!2633 = !DILocation(line: 90, column: 33, scope: !2615)
!2634 = !DILocation(line: 90, column: 5, scope: !2615)
!2635 = !DILocation(line: 91, column: 1, scope: !2615)
!2636 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !3, file: !3, line: 98, type: !2569, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2585)
!2637 = !DILocation(line: 100, column: 12, scope: !2636)
!2638 = !DILocation(line: 100, column: 5, scope: !2636)
!2639 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !3, file: !3, line: 108, type: !2569, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2585)
!2640 = !DILocation(line: 110, column: 12, scope: !2639)
!2641 = !DILocation(line: 110, column: 5, scope: !2639)
!2642 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !3, file: !3, line: 118, type: !470, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2643)
!2643 = !{!2644, !2645}
!2644 = !DILocalVariable(name: "reg", scope: !2642, file: !3, line: 120, type: !11)
!2645 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2642, file: !3, line: 121, type: !10)
!2646 = !DILocation(line: 120, column: 5, scope: !2642)
!2647 = !DILocation(line: 120, column: 23, scope: !2642)
!2648 = !DILocation(line: 0, scope: !2642)
!2649 = !DILocation(line: 123, column: 11, scope: !2642)
!2650 = !DILocation(line: 123, column: 9, scope: !2642)
!2651 = !DILocation(line: 124, column: 12, scope: !2642)
!2652 = !DILocation(line: 124, column: 16, scope: !2642)
!2653 = !DILocation(line: 124, column: 39, scope: !2642)
!2654 = !DILocation(line: 124, column: 9, scope: !2642)
!2655 = !DILocation(line: 126, column: 9, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 126, column: 9)
!2657 = !DILocation(line: 126, column: 13, scope: !2656)
!2658 = !DILocation(line: 126, column: 9, scope: !2642)
!2659 = !DILocation(line: 127, column: 15, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 126, column: 47)
!2661 = !DILocation(line: 127, column: 13, scope: !2660)
!2662 = !DILocation(line: 128, column: 15, scope: !2660)
!2663 = !DILocation(line: 128, column: 19, scope: !2660)
!2664 = !DILocation(line: 128, column: 13, scope: !2660)
!2665 = !DILocation(line: 129, column: 15, scope: !2660)
!2666 = !DILocation(line: 129, column: 19, scope: !2660)
!2667 = !DILocation(line: 129, column: 13, scope: !2660)
!2668 = !DILocation(line: 130, column: 46, scope: !2660)
!2669 = !DILocation(line: 130, column: 9, scope: !2660)
!2670 = !DILocation(line: 132, column: 9, scope: !2660)
!2671 = !DILocation(line: 133, column: 19, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 132, column: 12)
!2673 = !DILocation(line: 133, column: 17, scope: !2672)
!2674 = !DILocation(line: 134, column: 19, scope: !2672)
!2675 = !DILocation(line: 134, column: 23, scope: !2672)
!2676 = !DILocation(line: 134, column: 17, scope: !2672)
!2677 = !DILocation(line: 135, column: 19, scope: !2660)
!2678 = !DILocation(line: 135, column: 18, scope: !2660)
!2679 = !DILocation(line: 135, column: 9, scope: !2672)
!2680 = distinct !{!2680, !2670, !2681}
!2681 = !DILocation(line: 135, column: 22, scope: !2660)
!2682 = !DILocation(line: 138, column: 1, scope: !2642)
!2683 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2684, file: !2684, line: 176, type: !2685, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2684 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!12, !2687}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "Register", arg: 1, scope: !2683, file: !2684, line: 176, type: !2687)
!2691 = !DILocation(line: 0, scope: !2683)
!2692 = !DILocation(line: 178, column: 13, scope: !2683)
!2693 = !DILocation(line: 178, column: 12, scope: !2683)
!2694 = !DILocation(line: 178, column: 5, scope: !2683)
!2695 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2684, file: !2684, line: 171, type: !2696, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !2687, !12}
!2698 = !{!2699, !2700}
!2699 = !DILocalVariable(name: "Register", arg: 1, scope: !2695, file: !2684, line: 171, type: !2687)
!2700 = !DILocalVariable(name: "Value", arg: 2, scope: !2695, file: !2684, line: 171, type: !12)
!2701 = !DILocation(line: 0, scope: !2695)
!2702 = !DILocation(line: 173, column: 6, scope: !2695)
!2703 = !DILocation(line: 173, column: 36, scope: !2695)
!2704 = !DILocation(line: 174, column: 1, scope: !2695)
!2705 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !3, file: !3, line: 145, type: !2706, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !235}
!2708 = !{!2709, !2710, !2711}
!2709 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2705, file: !3, line: 145, type: !235)
!2710 = !DILocalVariable(name: "reg", scope: !2705, file: !3, line: 147, type: !11)
!2711 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2705, file: !3, line: 148, type: !10)
!2712 = !DILocation(line: 0, scope: !2705)
!2713 = !DILocation(line: 147, column: 5, scope: !2705)
!2714 = !DILocation(line: 147, column: 23, scope: !2705)
!2715 = !DILocation(line: 150, column: 11, scope: !2705)
!2716 = !DILocation(line: 150, column: 9, scope: !2705)
!2717 = !DILocation(line: 151, column: 12, scope: !2705)
!2718 = !DILocation(line: 151, column: 16, scope: !2705)
!2719 = !DILocation(line: 151, column: 39, scope: !2705)
!2720 = !DILocation(line: 151, column: 9, scope: !2705)
!2721 = !DILocation(line: 153, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 153, column: 9)
!2723 = !DILocation(line: 153, column: 13, scope: !2722)
!2724 = !DILocation(line: 153, column: 9, scope: !2705)
!2725 = !DILocation(line: 154, column: 15, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 153, column: 45)
!2727 = !DILocation(line: 154, column: 13, scope: !2726)
!2728 = !DILocation(line: 155, column: 15, scope: !2726)
!2729 = !DILocation(line: 155, column: 19, scope: !2726)
!2730 = !DILocation(line: 155, column: 13, scope: !2726)
!2731 = !DILocation(line: 156, column: 15, scope: !2726)
!2732 = !DILocation(line: 156, column: 19, scope: !2726)
!2733 = !DILocation(line: 156, column: 13, scope: !2726)
!2734 = !DILocation(line: 157, column: 15, scope: !2726)
!2735 = !DILocation(line: 157, column: 13, scope: !2726)
!2736 = !DILocation(line: 158, column: 46, scope: !2726)
!2737 = !DILocation(line: 158, column: 9, scope: !2726)
!2738 = !DILocation(line: 160, column: 15, scope: !2726)
!2739 = !DILocation(line: 160, column: 13, scope: !2726)
!2740 = !DILocation(line: 161, column: 15, scope: !2726)
!2741 = !DILocation(line: 161, column: 19, scope: !2726)
!2742 = !DILocation(line: 161, column: 13, scope: !2726)
!2743 = !DILocation(line: 162, column: 15, scope: !2726)
!2744 = !DILocation(line: 162, column: 19, scope: !2726)
!2745 = !DILocation(line: 162, column: 13, scope: !2726)
!2746 = !DILocation(line: 163, column: 15, scope: !2726)
!2747 = !DILocation(line: 163, column: 19, scope: !2726)
!2748 = !DILocation(line: 163, column: 13, scope: !2726)
!2749 = !DILocation(line: 164, column: 46, scope: !2726)
!2750 = !DILocation(line: 164, column: 9, scope: !2726)
!2751 = !DILocation(line: 166, column: 9, scope: !2726)
!2752 = !DILocation(line: 167, column: 19, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 166, column: 12)
!2754 = !DILocation(line: 167, column: 17, scope: !2753)
!2755 = !DILocation(line: 168, column: 19, scope: !2753)
!2756 = !DILocation(line: 168, column: 23, scope: !2753)
!2757 = !DILocation(line: 168, column: 17, scope: !2753)
!2758 = !DILocation(line: 169, column: 19, scope: !2726)
!2759 = !DILocation(line: 169, column: 18, scope: !2726)
!2760 = !DILocation(line: 169, column: 9, scope: !2753)
!2761 = distinct !{!2761, !2751, !2762}
!2762 = !DILocation(line: 169, column: 22, scope: !2726)
!2763 = !DILocation(line: 171, column: 15, scope: !2726)
!2764 = !DILocation(line: 171, column: 13, scope: !2726)
!2765 = !DILocation(line: 172, column: 15, scope: !2726)
!2766 = !DILocation(line: 172, column: 19, scope: !2726)
!2767 = !DILocation(line: 172, column: 13, scope: !2726)
!2768 = !DILocation(line: 173, column: 15, scope: !2726)
!2769 = !DILocation(line: 173, column: 19, scope: !2726)
!2770 = !DILocation(line: 173, column: 13, scope: !2726)
!2771 = !DILocation(line: 174, column: 5, scope: !2726)
!2772 = !DILocation(line: 176, column: 11, scope: !2705)
!2773 = !DILocation(line: 176, column: 9, scope: !2705)
!2774 = !DILocation(line: 177, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 177, column: 9)
!2776 = !DILocation(line: 0, scope: !2775)
!2777 = !DILocation(line: 177, column: 9, scope: !2705)
!2778 = !DILocation(line: 178, column: 19, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 177, column: 17)
!2780 = !DILocation(line: 178, column: 13, scope: !2779)
!2781 = !DILocation(line: 179, column: 5, scope: !2779)
!2782 = !DILocation(line: 180, column: 13, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 179, column: 12)
!2784 = !DILocation(line: 182, column: 42, scope: !2705)
!2785 = !DILocation(line: 182, column: 5, scope: !2705)
!2786 = !DILocation(line: 184, column: 1, scope: !2705)
!2787 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !3, file: !3, line: 191, type: !470, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2788)
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "reg", scope: !2787, file: !3, line: 193, type: !11)
!2790 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2787, file: !3, line: 194, type: !10)
!2791 = !DILocation(line: 193, column: 5, scope: !2787)
!2792 = !DILocation(line: 193, column: 23, scope: !2787)
!2793 = !DILocation(line: 0, scope: !2787)
!2794 = !DILocation(line: 196, column: 11, scope: !2787)
!2795 = !DILocation(line: 196, column: 9, scope: !2787)
!2796 = !DILocation(line: 197, column: 11, scope: !2787)
!2797 = !DILocation(line: 197, column: 15, scope: !2787)
!2798 = !DILocation(line: 197, column: 9, scope: !2787)
!2799 = !DILocation(line: 198, column: 11, scope: !2787)
!2800 = !DILocation(line: 198, column: 15, scope: !2787)
!2801 = !DILocation(line: 198, column: 9, scope: !2787)
!2802 = !DILocation(line: 199, column: 11, scope: !2787)
!2803 = !DILocation(line: 199, column: 9, scope: !2787)
!2804 = !DILocation(line: 200, column: 42, scope: !2787)
!2805 = !DILocation(line: 200, column: 5, scope: !2787)
!2806 = !DILocation(line: 202, column: 11, scope: !2787)
!2807 = !DILocation(line: 202, column: 9, scope: !2787)
!2808 = !DILocation(line: 203, column: 11, scope: !2787)
!2809 = !DILocation(line: 203, column: 15, scope: !2787)
!2810 = !DILocation(line: 203, column: 9, scope: !2787)
!2811 = !DILocation(line: 204, column: 11, scope: !2787)
!2812 = !DILocation(line: 204, column: 15, scope: !2787)
!2813 = !DILocation(line: 204, column: 9, scope: !2787)
!2814 = !DILocation(line: 205, column: 11, scope: !2787)
!2815 = !DILocation(line: 205, column: 9, scope: !2787)
!2816 = !DILocation(line: 206, column: 42, scope: !2787)
!2817 = !DILocation(line: 206, column: 5, scope: !2787)
!2818 = !DILocation(line: 209, column: 1, scope: !2787)
!2819 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !3, file: !3, line: 216, type: !470, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2820)
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "reg", scope: !2819, file: !3, line: 218, type: !11)
!2822 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2819, file: !3, line: 219, type: !10)
!2823 = !DILocation(line: 218, column: 5, scope: !2819)
!2824 = !DILocation(line: 218, column: 23, scope: !2819)
!2825 = !DILocation(line: 0, scope: !2819)
!2826 = !DILocation(line: 222, column: 11, scope: !2819)
!2827 = !DILocation(line: 222, column: 9, scope: !2819)
!2828 = !DILocation(line: 223, column: 11, scope: !2819)
!2829 = !DILocation(line: 223, column: 15, scope: !2819)
!2830 = !DILocation(line: 223, column: 9, scope: !2819)
!2831 = !DILocation(line: 224, column: 11, scope: !2819)
!2832 = !DILocation(line: 224, column: 9, scope: !2819)
!2833 = !DILocation(line: 225, column: 39, scope: !2819)
!2834 = !DILocation(line: 225, column: 5, scope: !2819)
!2835 = !DILocation(line: 228, column: 11, scope: !2819)
!2836 = !DILocation(line: 228, column: 9, scope: !2819)
!2837 = !DILocation(line: 229, column: 11, scope: !2819)
!2838 = !DILocation(line: 229, column: 15, scope: !2819)
!2839 = !DILocation(line: 229, column: 9, scope: !2819)
!2840 = !DILocation(line: 230, column: 11, scope: !2819)
!2841 = !DILocation(line: 230, column: 9, scope: !2819)
!2842 = !DILocation(line: 231, column: 39, scope: !2819)
!2843 = !DILocation(line: 231, column: 5, scope: !2819)
!2844 = !DILocation(line: 233, column: 5, scope: !2819)
!2845 = !DILocation(line: 233, column: 12, scope: !2819)
!2846 = !DILocation(line: 233, column: 19, scope: !2819)
!2847 = !DILocation(line: 233, column: 16, scope: !2819)
!2848 = distinct !{!2848, !2844, !2849}
!2849 = !DILocation(line: 233, column: 52, scope: !2819)
!2850 = !DILocation(line: 235, column: 21, scope: !2819)
!2851 = !DILocation(line: 235, column: 19, scope: !2819)
!2852 = !DILocation(line: 236, column: 5, scope: !2819)
!2853 = !DILocation(line: 237, column: 17, scope: !2819)
!2854 = !DILocation(line: 237, column: 33, scope: !2819)
!2855 = !DILocation(line: 237, column: 5, scope: !2819)
!2856 = !DILocation(line: 239, column: 1, scope: !2819)
!2857 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !3, file: !3, line: 246, type: !470, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "reg", scope: !2857, file: !3, line: 248, type: !11)
!2860 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2857, file: !3, line: 249, type: !10)
!2861 = !DILocation(line: 248, column: 5, scope: !2857)
!2862 = !DILocation(line: 248, column: 23, scope: !2857)
!2863 = !DILocation(line: 0, scope: !2857)
!2864 = !DILocation(line: 252, column: 5, scope: !2857)
!2865 = !DILocation(line: 255, column: 11, scope: !2857)
!2866 = !DILocation(line: 255, column: 9, scope: !2857)
!2867 = !DILocation(line: 256, column: 11, scope: !2857)
!2868 = !DILocation(line: 256, column: 15, scope: !2857)
!2869 = !DILocation(line: 256, column: 9, scope: !2857)
!2870 = !DILocation(line: 257, column: 11, scope: !2857)
!2871 = !DILocation(line: 257, column: 15, scope: !2857)
!2872 = !DILocation(line: 257, column: 9, scope: !2857)
!2873 = !DILocation(line: 258, column: 39, scope: !2857)
!2874 = !DILocation(line: 258, column: 5, scope: !2857)
!2875 = !DILocation(line: 260, column: 5, scope: !2857)
!2876 = !DILocation(line: 260, column: 12, scope: !2857)
!2877 = !DILocation(line: 260, column: 19, scope: !2857)
!2878 = !DILocation(line: 260, column: 16, scope: !2857)
!2879 = distinct !{!2879, !2875, !2880}
!2880 = !DILocation(line: 260, column: 52, scope: !2857)
!2881 = !DILocation(line: 263, column: 11, scope: !2857)
!2882 = !DILocation(line: 263, column: 9, scope: !2857)
!2883 = !DILocation(line: 264, column: 11, scope: !2857)
!2884 = !DILocation(line: 264, column: 15, scope: !2857)
!2885 = !DILocation(line: 264, column: 9, scope: !2857)
!2886 = !DILocation(line: 265, column: 11, scope: !2857)
!2887 = !DILocation(line: 265, column: 15, scope: !2857)
!2888 = !DILocation(line: 265, column: 9, scope: !2857)
!2889 = !DILocation(line: 266, column: 39, scope: !2857)
!2890 = !DILocation(line: 266, column: 5, scope: !2857)
!2891 = !DILocation(line: 269, column: 11, scope: !2857)
!2892 = !DILocation(line: 269, column: 9, scope: !2857)
!2893 = !DILocation(line: 270, column: 11, scope: !2857)
!2894 = !DILocation(line: 270, column: 15, scope: !2857)
!2895 = !DILocation(line: 270, column: 9, scope: !2857)
!2896 = !DILocation(line: 271, column: 11, scope: !2857)
!2897 = !DILocation(line: 271, column: 15, scope: !2857)
!2898 = !DILocation(line: 271, column: 9, scope: !2857)
!2899 = !DILocation(line: 272, column: 39, scope: !2857)
!2900 = !DILocation(line: 272, column: 5, scope: !2857)
!2901 = !DILocation(line: 273, column: 19, scope: !2857)
!2902 = !DILocation(line: 274, column: 5, scope: !2857)
!2903 = !DILocation(line: 275, column: 17, scope: !2857)
!2904 = !DILocation(line: 275, column: 33, scope: !2857)
!2905 = !DILocation(line: 275, column: 5, scope: !2857)
!2906 = !DILocation(line: 277, column: 1, scope: !2857)
!2907 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !3, file: !3, line: 284, type: !470, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2908)
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "reg", scope: !2907, file: !3, line: 286, type: !11)
!2910 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2907, file: !3, line: 287, type: !10)
!2911 = !DILocation(line: 286, column: 5, scope: !2907)
!2912 = !DILocation(line: 286, column: 23, scope: !2907)
!2913 = !DILocation(line: 0, scope: !2907)
!2914 = !DILocation(line: 290, column: 5, scope: !2907)
!2915 = !DILocation(line: 293, column: 11, scope: !2907)
!2916 = !DILocation(line: 293, column: 9, scope: !2907)
!2917 = !DILocation(line: 294, column: 11, scope: !2907)
!2918 = !DILocation(line: 294, column: 15, scope: !2907)
!2919 = !DILocation(line: 294, column: 9, scope: !2907)
!2920 = !DILocation(line: 295, column: 11, scope: !2907)
!2921 = !DILocation(line: 295, column: 15, scope: !2907)
!2922 = !DILocation(line: 295, column: 9, scope: !2907)
!2923 = !DILocation(line: 296, column: 39, scope: !2907)
!2924 = !DILocation(line: 296, column: 5, scope: !2907)
!2925 = !DILocation(line: 298, column: 5, scope: !2907)
!2926 = !DILocation(line: 298, column: 12, scope: !2907)
!2927 = !DILocation(line: 298, column: 19, scope: !2907)
!2928 = !DILocation(line: 298, column: 16, scope: !2907)
!2929 = distinct !{!2929, !2925, !2930}
!2930 = !DILocation(line: 298, column: 52, scope: !2907)
!2931 = !DILocation(line: 301, column: 11, scope: !2907)
!2932 = !DILocation(line: 301, column: 9, scope: !2907)
!2933 = !DILocation(line: 302, column: 11, scope: !2907)
!2934 = !DILocation(line: 302, column: 15, scope: !2907)
!2935 = !DILocation(line: 302, column: 9, scope: !2907)
!2936 = !DILocation(line: 303, column: 11, scope: !2907)
!2937 = !DILocation(line: 303, column: 15, scope: !2907)
!2938 = !DILocation(line: 303, column: 9, scope: !2907)
!2939 = !DILocation(line: 304, column: 39, scope: !2907)
!2940 = !DILocation(line: 304, column: 5, scope: !2907)
!2941 = !DILocation(line: 307, column: 11, scope: !2907)
!2942 = !DILocation(line: 307, column: 9, scope: !2907)
!2943 = !DILocation(line: 308, column: 11, scope: !2907)
!2944 = !DILocation(line: 308, column: 15, scope: !2907)
!2945 = !DILocation(line: 308, column: 9, scope: !2907)
!2946 = !DILocation(line: 309, column: 11, scope: !2907)
!2947 = !DILocation(line: 309, column: 15, scope: !2907)
!2948 = !DILocation(line: 309, column: 9, scope: !2907)
!2949 = !DILocation(line: 310, column: 39, scope: !2907)
!2950 = !DILocation(line: 310, column: 5, scope: !2907)
!2951 = !DILocation(line: 311, column: 19, scope: !2907)
!2952 = !DILocation(line: 312, column: 5, scope: !2907)
!2953 = !DILocation(line: 313, column: 17, scope: !2907)
!2954 = !DILocation(line: 313, column: 33, scope: !2907)
!2955 = !DILocation(line: 313, column: 5, scope: !2907)
!2956 = !DILocation(line: 315, column: 1, scope: !2907)
!2957 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !3, file: !3, line: 323, type: !470, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "reg", scope: !2957, file: !3, line: 325, type: !11)
!2960 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2957, file: !3, line: 326, type: !10)
!2961 = !DILocation(line: 325, column: 5, scope: !2957)
!2962 = !DILocation(line: 325, column: 23, scope: !2957)
!2963 = !DILocation(line: 0, scope: !2957)
!2964 = !DILocation(line: 329, column: 5, scope: !2957)
!2965 = !DILocation(line: 332, column: 11, scope: !2957)
!2966 = !DILocation(line: 332, column: 9, scope: !2957)
!2967 = !DILocation(line: 333, column: 11, scope: !2957)
!2968 = !DILocation(line: 333, column: 15, scope: !2957)
!2969 = !DILocation(line: 333, column: 9, scope: !2957)
!2970 = !DILocation(line: 334, column: 11, scope: !2957)
!2971 = !DILocation(line: 334, column: 9, scope: !2957)
!2972 = !DILocation(line: 335, column: 39, scope: !2957)
!2973 = !DILocation(line: 335, column: 5, scope: !2957)
!2974 = !DILocation(line: 337, column: 5, scope: !2957)
!2975 = !DILocation(line: 337, column: 12, scope: !2957)
!2976 = !DILocation(line: 337, column: 19, scope: !2957)
!2977 = !DILocation(line: 337, column: 16, scope: !2957)
!2978 = distinct !{!2978, !2974, !2979}
!2979 = !DILocation(line: 337, column: 52, scope: !2957)
!2980 = !DILocation(line: 340, column: 11, scope: !2957)
!2981 = !DILocation(line: 340, column: 9, scope: !2957)
!2982 = !DILocation(line: 341, column: 11, scope: !2957)
!2983 = !DILocation(line: 341, column: 15, scope: !2957)
!2984 = !DILocation(line: 341, column: 9, scope: !2957)
!2985 = !DILocation(line: 342, column: 11, scope: !2957)
!2986 = !DILocation(line: 342, column: 15, scope: !2957)
!2987 = !DILocation(line: 342, column: 9, scope: !2957)
!2988 = !DILocation(line: 343, column: 39, scope: !2957)
!2989 = !DILocation(line: 343, column: 5, scope: !2957)
!2990 = !DILocation(line: 344, column: 19, scope: !2957)
!2991 = !DILocation(line: 345, column: 5, scope: !2957)
!2992 = !DILocation(line: 346, column: 17, scope: !2957)
!2993 = !DILocation(line: 346, column: 33, scope: !2957)
!2994 = !DILocation(line: 346, column: 5, scope: !2957)
!2995 = !DILocation(line: 348, column: 1, scope: !2957)
!2996 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !3, file: !3, line: 353, type: !470, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "reg", scope: !2996, file: !3, line: 355, type: !17)
!2999 = !DILocalVariable(name: "pTopCfgHclk", scope: !2996, file: !3, line: 356, type: !16)
!3000 = !DILocation(line: 355, column: 5, scope: !2996)
!3001 = !DILocation(line: 355, column: 21, scope: !2996)
!3002 = !DILocation(line: 0, scope: !2996)
!3003 = !DILocation(line: 358, column: 11, scope: !2996)
!3004 = !DILocation(line: 358, column: 9, scope: !2996)
!3005 = !DILocation(line: 359, column: 11, scope: !2996)
!3006 = !DILocation(line: 359, column: 15, scope: !2996)
!3007 = !DILocation(line: 359, column: 9, scope: !2996)
!3008 = !DILocation(line: 360, column: 11, scope: !2996)
!3009 = !DILocation(line: 360, column: 9, scope: !2996)
!3010 = !DILocation(line: 361, column: 37, scope: !2996)
!3011 = !DILocation(line: 361, column: 5, scope: !2996)
!3012 = !DILocation(line: 362, column: 1, scope: !2996)
!3013 = distinct !DISubprogram(name: "getc", scope: !24, file: !24, line: 68, type: !3014, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!66}
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "rc", scope: !3013, file: !24, line: 71, type: !66)
!3018 = !DILocation(line: 71, column: 14, scope: !3013)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 72, column: 5, scope: !3013)
!3021 = distinct !DISubprogram(name: "getc_nowait", scope: !24, file: !24, line: 80, type: !3014, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3022)
!3022 = !{!3023}
!3023 = !DILocalVariable(name: "c", scope: !3021, file: !24, line: 82, type: !461)
!3024 = !DILocation(line: 84, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !24, line: 84, column: 9)
!3026 = !DILocation(line: 84, column: 40, scope: !3025)
!3027 = !DILocation(line: 84, column: 9, scope: !3021)
!3028 = !DILocation(line: 85, column: 13, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !24, line: 84, column: 47)
!3030 = !DILocation(line: 86, column: 16, scope: !3029)
!3031 = !DILocation(line: 0, scope: !3021)
!3032 = !DILocation(line: 86, column: 9, scope: !3029)
!3033 = !DILocation(line: 0, scope: !3025)
!3034 = !DILocation(line: 90, column: 1, scope: !3021)
!3035 = distinct !DISubprogram(name: "uart_output_char", scope: !24, file: !24, line: 93, type: !3036, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3039)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !3038, !55}
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !27, line: 75, baseType: !26)
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "port_no", arg: 1, scope: !3035, file: !24, line: 93, type: !3038)
!3041 = !DILocalVariable(name: "c", arg: 2, scope: !3035, file: !24, line: 93, type: !55)
!3042 = !DILocalVariable(name: "base", scope: !3035, file: !24, line: 95, type: !7)
!3043 = !DILocation(line: 0, scope: !3035)
!3044 = !DILocation(line: 95, column: 25, scope: !3035)
!3045 = !DILocation(line: 97, column: 5, scope: !3035)
!3046 = !DILocation(line: 97, column: 14, scope: !3035)
!3047 = !DILocation(line: 97, column: 42, scope: !3035)
!3048 = !DILocation(line: 97, column: 12, scope: !3035)
!3049 = distinct !{!3049, !3045, !3050}
!3050 = !DILocation(line: 98, column: 9, scope: !3035)
!3051 = !DILocation(line: 99, column: 35, scope: !3035)
!3052 = !DILocation(line: 99, column: 5, scope: !3035)
!3053 = !DILocation(line: 99, column: 33, scope: !3035)
!3054 = !DILocation(line: 102, column: 1, scope: !3035)
!3055 = distinct !DISubprogram(name: "uart_input_char", scope: !24, file: !24, line: 106, type: !3056, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!235, !3038}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "port_no", arg: 1, scope: !3055, file: !24, line: 106, type: !3038)
!3060 = !DILocalVariable(name: "base", scope: !3055, file: !24, line: 108, type: !7)
!3061 = !DILocalVariable(name: "c", scope: !3055, file: !24, line: 109, type: !461)
!3062 = !DILocation(line: 0, scope: !3055)
!3063 = !DILocation(line: 108, column: 25, scope: !3055)
!3064 = !DILocation(line: 111, column: 5, scope: !3055)
!3065 = !DILocation(line: 111, column: 14, scope: !3055)
!3066 = !DILocation(line: 111, column: 42, scope: !3055)
!3067 = !DILocation(line: 111, column: 12, scope: !3055)
!3068 = distinct !{!3068, !3064, !3069}
!3069 = !DILocation(line: 112, column: 9, scope: !3055)
!3070 = !DILocation(line: 114, column: 9, scope: !3055)
!3071 = !DILocation(line: 116, column: 5, scope: !3055)
!3072 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !24, file: !24, line: 120, type: !3073, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!12, !3038}
!3075 = !{!3076, !3077, !3078}
!3076 = !DILocalVariable(name: "port_no", arg: 1, scope: !3072, file: !24, line: 120, type: !3038)
!3077 = !DILocalVariable(name: "base", scope: !3072, file: !24, line: 122, type: !7)
!3078 = !DILocalVariable(name: "c", scope: !3072, file: !24, line: 123, type: !461)
!3079 = !DILocation(line: 0, scope: !3072)
!3080 = !DILocation(line: 122, column: 25, scope: !3072)
!3081 = !DILocation(line: 125, column: 9, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3072, file: !24, line: 125, column: 9)
!3083 = !DILocation(line: 125, column: 37, scope: !3082)
!3084 = !DILocation(line: 125, column: 9, scope: !3072)
!3085 = !DILocation(line: 126, column: 13, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !24, line: 125, column: 44)
!3087 = !DILocation(line: 127, column: 16, scope: !3086)
!3088 = !DILocation(line: 127, column: 9, scope: !3086)
!3089 = !DILocation(line: 0, scope: !3082)
!3090 = !DILocation(line: 131, column: 1, scope: !3072)
!3091 = distinct !DISubprogram(name: "halUART_HWInit", scope: !24, file: !24, line: 136, type: !3092, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3038}
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "u_port", arg: 1, scope: !3091, file: !24, line: 136, type: !3038)
!3096 = !DILocation(line: 0, scope: !3091)
!3097 = !DILocation(line: 139, column: 5, scope: !3091)
!3098 = !DILocation(line: 140, column: 9, scope: !3091)
!3099 = !DILocation(line: 153, column: 5, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !24, line: 147, column: 38)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !24, line: 147, column: 16)
!3102 = distinct !DILexicalBlock(scope: !3091, file: !24, line: 140, column: 9)
!3103 = !DILocation(line: 0, scope: !3102)
!3104 = !DILocation(line: 155, column: 1, scope: !3091)
!3105 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !24, file: !24, line: 158, type: !3106, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3110)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !3038, !12, !3108, !3108, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !3109)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !53)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3126, !3127}
!3111 = !DILocalVariable(name: "u_port", arg: 1, scope: !3105, file: !24, line: 158, type: !3038)
!3112 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3105, file: !24, line: 158, type: !12)
!3113 = !DILocalVariable(name: "databit", arg: 3, scope: !3105, file: !24, line: 158, type: !3108)
!3114 = !DILocalVariable(name: "parity", arg: 4, scope: !3105, file: !24, line: 158, type: !3108)
!3115 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3105, file: !24, line: 158, type: !3108)
!3116 = !DILocalVariable(name: "control_word", scope: !3105, file: !24, line: 160, type: !3108)
!3117 = !DILocalVariable(name: "UART_BASE", scope: !3105, file: !24, line: 161, type: !12)
!3118 = !DILocalVariable(name: "data", scope: !3105, file: !24, line: 162, type: !12)
!3119 = !DILocalVariable(name: "uart_lcr", scope: !3105, file: !24, line: 162, type: !12)
!3120 = !DILocalVariable(name: "high_speed_div", scope: !3105, file: !24, line: 162, type: !12)
!3121 = !DILocalVariable(name: "sample_count", scope: !3105, file: !24, line: 162, type: !12)
!3122 = !DILocalVariable(name: "sample_point", scope: !3105, file: !24, line: 162, type: !12)
!3123 = !DILocalVariable(name: "fraction", scope: !3105, file: !24, line: 162, type: !12)
!3124 = !DILocalVariable(name: "fraction_L_mapping", scope: !3105, file: !24, line: 163, type: !3125)
!3125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3108, size: 176, elements: !811)
!3126 = !DILocalVariable(name: "fraction_M_mapping", scope: !3105, file: !24, line: 164, type: !3125)
!3127 = !DILocalVariable(name: "status", scope: !3105, file: !24, line: 165, type: !206)
!3128 = !DILocation(line: 0, scope: !3105)
!3129 = !DILocation(line: 163, column: 15, scope: !3105)
!3130 = !DILocation(line: 164, column: 15, scope: !3105)
!3131 = !DILocation(line: 166, column: 20, scope: !3105)
!3132 = !DILocation(line: 166, column: 18, scope: !3105)
!3133 = !DILocation(line: 168, column: 9, scope: !3105)
!3134 = !DILocation(line: 176, column: 5, scope: !3105)
!3135 = !DILocation(line: 176, column: 44, scope: !3105)
!3136 = !DILocation(line: 177, column: 16, scope: !3105)
!3137 = !DILocation(line: 178, column: 50, scope: !3105)
!3138 = !DILocation(line: 178, column: 38, scope: !3105)
!3139 = !DILocation(line: 179, column: 12, scope: !3105)
!3140 = !DILocation(line: 179, column: 25, scope: !3105)
!3141 = !DILocation(line: 180, column: 28, scope: !3105)
!3142 = !DILocation(line: 180, column: 34, scope: !3105)
!3143 = !DILocation(line: 182, column: 29, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3105, file: !24, line: 181, column: 5)
!3145 = !DILocation(line: 182, column: 46, scope: !3144)
!3146 = !DILocation(line: 183, column: 26, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !24, line: 183, column: 13)
!3148 = !DILocation(line: 183, column: 13, scope: !3144)
!3149 = !DILocation(line: 192, column: 30, scope: !3105)
!3150 = !DILocation(line: 192, column: 35, scope: !3105)
!3151 = !DILocation(line: 192, column: 46, scope: !3105)
!3152 = !DILocation(line: 192, column: 74, scope: !3105)
!3153 = !DILocation(line: 192, column: 53, scope: !3105)
!3154 = !DILocation(line: 192, column: 80, scope: !3105)
!3155 = !DILocation(line: 193, column: 56, scope: !3105)
!3156 = !DILocation(line: 193, column: 5, scope: !3105)
!3157 = !DILocation(line: 193, column: 38, scope: !3105)
!3158 = !DILocation(line: 194, column: 57, scope: !3105)
!3159 = !DILocation(line: 194, column: 63, scope: !3105)
!3160 = !DILocation(line: 194, column: 5, scope: !3105)
!3161 = !DILocation(line: 194, column: 38, scope: !3105)
!3162 = !DILocation(line: 195, column: 5, scope: !3105)
!3163 = !DILocation(line: 195, column: 45, scope: !3105)
!3164 = !DILocation(line: 196, column: 5, scope: !3105)
!3165 = !DILocation(line: 196, column: 47, scope: !3105)
!3166 = !DILocation(line: 197, column: 46, scope: !3105)
!3167 = !DILocation(line: 197, column: 5, scope: !3105)
!3168 = !DILocation(line: 197, column: 44, scope: !3105)
!3169 = !DILocation(line: 198, column: 46, scope: !3105)
!3170 = !DILocation(line: 198, column: 5, scope: !3105)
!3171 = !DILocation(line: 198, column: 44, scope: !3105)
!3172 = !DILocation(line: 199, column: 38, scope: !3105)
!3173 = !DILocation(line: 200, column: 5, scope: !3105)
!3174 = !DILocation(line: 200, column: 38, scope: !3105)
!3175 = !DILocation(line: 202, column: 20, scope: !3105)
!3176 = !DILocation(line: 203, column: 18, scope: !3105)
!3177 = !DILocation(line: 205, column: 18, scope: !3105)
!3178 = !DILocation(line: 207, column: 18, scope: !3105)
!3179 = !DILocation(line: 208, column: 18, scope: !3105)
!3180 = !DILocation(line: 209, column: 5, scope: !3105)
!3181 = !DILocation(line: 213, column: 1, scope: !3105)
!3182 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !24, file: !24, line: 215, type: !3183, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3186)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3038, !206, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!3186 = !{!3187, !3188, !3189}
!3187 = !DILocalVariable(name: "u_port", arg: 1, scope: !3182, file: !24, line: 215, type: !3038)
!3188 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3182, file: !24, line: 215, type: !206)
!3189 = !DILocalVariable(name: "length", arg: 3, scope: !3182, file: !24, line: 215, type: !3185)
!3190 = !DILocation(line: 0, scope: !3182)
!3191 = !DILocation(line: 217, column: 16, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3182, file: !24, line: 217, column: 9)
!3193 = !DILocation(line: 0, scope: !3192)
!3194 = !DILocation(line: 217, column: 9, scope: !3182)
!3195 = !DILocation(line: 218, column: 13, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !24, line: 217, column: 31)
!3197 = !DILocation(line: 219, column: 23, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !24, line: 218, column: 20)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !24, line: 218, column: 13)
!3200 = !DILocation(line: 220, column: 9, scope: !3198)
!3201 = !DILocation(line: 221, column: 23, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !24, line: 220, column: 16)
!3203 = !DILocation(line: 221, column: 21, scope: !3202)
!3204 = !DILocation(line: 222, column: 24, scope: !3202)
!3205 = !DILocation(line: 222, column: 21, scope: !3202)
!3206 = !DILocation(line: 225, column: 13, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3192, file: !24, line: 224, column: 12)
!3208 = !DILocation(line: 226, column: 23, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !24, line: 225, column: 20)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !24, line: 225, column: 13)
!3211 = !DILocation(line: 227, column: 9, scope: !3209)
!3212 = !DILocation(line: 228, column: 23, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3210, file: !24, line: 227, column: 16)
!3214 = !DILocation(line: 228, column: 21, scope: !3213)
!3215 = !DILocation(line: 229, column: 24, scope: !3213)
!3216 = !DILocation(line: 229, column: 21, scope: !3213)
!3217 = !DILocation(line: 233, column: 5, scope: !3182)
!3218 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !24, file: !24, line: 236, type: !3219, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3221)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3038, !512, !12}
!3221 = !{!3222, !3223, !3224, !3225}
!3222 = !DILocalVariable(name: "u_port", arg: 1, scope: !3218, file: !24, line: 236, type: !3038)
!3223 = !DILocalVariable(name: "data", arg: 2, scope: !3218, file: !24, line: 236, type: !512)
!3224 = !DILocalVariable(name: "length", arg: 3, scope: !3218, file: !24, line: 236, type: !12)
!3225 = !DILocalVariable(name: "idx", scope: !3218, file: !24, line: 238, type: !8)
!3226 = !DILocation(line: 0, scope: !3218)
!3227 = !DILocation(line: 239, column: 23, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !24, line: 239, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3218, file: !24, line: 239, column: 5)
!3230 = !DILocation(line: 239, column: 5, scope: !3229)
!3231 = !DILocation(line: 240, column: 13, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3228, file: !24, line: 239, column: 40)
!3233 = !DILocation(line: 244, column: 9, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !24, line: 242, column: 42)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !24, line: 242, column: 20)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !24, line: 240, column: 13)
!3237 = !DILocation(line: 0, scope: !3236)
!3238 = !DILocation(line: 239, column: 36, scope: !3228)
!3239 = distinct !{!3239, !3230, !3240}
!3240 = !DILocation(line: 246, column: 5, scope: !3229)
!3241 = !DILocation(line: 249, column: 1, scope: !3218)
!3242 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !24, file: !24, line: 251, type: !3243, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3247)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !3038, !3245, !12}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DILocalVariable(name: "u_port", arg: 1, scope: !3242, file: !24, line: 251, type: !3038)
!3249 = !DILocalVariable(name: "data", arg: 2, scope: !3242, file: !24, line: 251, type: !3245)
!3250 = !DILocalVariable(name: "length", arg: 3, scope: !3242, file: !24, line: 251, type: !12)
!3251 = !DILocalVariable(name: "idx", scope: !3242, file: !24, line: 253, type: !8)
!3252 = !DILocation(line: 0, scope: !3242)
!3253 = !DILocation(line: 254, column: 23, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !24, line: 254, column: 5)
!3255 = distinct !DILexicalBlock(scope: !3242, file: !24, line: 254, column: 5)
!3256 = !DILocation(line: 254, column: 5, scope: !3255)
!3257 = !DILocation(line: 255, column: 13, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3254, file: !24, line: 254, column: 40)
!3259 = !DILocation(line: 256, column: 61, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !24, line: 255, column: 35)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !24, line: 255, column: 13)
!3262 = !DILocation(line: 256, column: 59, scope: !3260)
!3263 = !DILocation(line: 257, column: 9, scope: !3260)
!3264 = !DILocation(line: 258, column: 61, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !24, line: 257, column: 42)
!3266 = distinct !DILexicalBlock(scope: !3261, file: !24, line: 257, column: 20)
!3267 = !DILocation(line: 258, column: 59, scope: !3265)
!3268 = !DILocation(line: 259, column: 9, scope: !3265)
!3269 = !DILocation(line: 254, column: 36, scope: !3254)
!3270 = distinct !{!3270, !3256, !3271}
!3271 = !DILocation(line: 261, column: 5, scope: !3255)
!3272 = !DILocation(line: 264, column: 1, scope: !3242)
!3273 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !24, file: !24, line: 266, type: !3274, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3038, !512, !12, !12}
!3276 = !{!3277, !3278, !3279, !3280}
!3277 = !DILocalVariable(name: "u_port", arg: 1, scope: !3273, file: !24, line: 266, type: !3038)
!3278 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3273, file: !24, line: 266, type: !512)
!3279 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3273, file: !24, line: 266, type: !12)
!3280 = !DILocalVariable(name: "threshold", arg: 4, scope: !3273, file: !24, line: 266, type: !12)
!3281 = !DILocation(line: 0, scope: !3273)
!3282 = !DILocation(line: 268, column: 9, scope: !3273)
!3283 = !DILocation(line: 274, column: 5, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !24, line: 271, column: 38)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !24, line: 271, column: 16)
!3286 = distinct !DILexicalBlock(scope: !3273, file: !24, line: 268, column: 9)
!3287 = !DILocation(line: 0, scope: !3286)
!3288 = !DILocation(line: 276, column: 1, scope: !3273)
!3289 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !24, file: !24, line: 278, type: !3290, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{null, !3038, !512, !12, !12, !12, !12}
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3298}
!3293 = !DILocalVariable(name: "u_port", arg: 1, scope: !3289, file: !24, line: 278, type: !3038)
!3294 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3289, file: !24, line: 278, type: !512)
!3295 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3289, file: !24, line: 278, type: !12)
!3296 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3289, file: !24, line: 278, type: !12)
!3297 = !DILocalVariable(name: "threshold", arg: 5, scope: !3289, file: !24, line: 278, type: !12)
!3298 = !DILocalVariable(name: "timeout", arg: 6, scope: !3289, file: !24, line: 278, type: !12)
!3299 = !DILocation(line: 0, scope: !3289)
!3300 = !DILocation(line: 280, column: 9, scope: !3289)
!3301 = !DILocation(line: 286, column: 5, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !24, line: 283, column: 38)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !24, line: 283, column: 16)
!3304 = distinct !DILexicalBlock(scope: !3289, file: !24, line: 280, column: 9)
!3305 = !DILocation(line: 0, scope: !3304)
!3306 = !DILocation(line: 288, column: 1, scope: !3289)
!3307 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !24, file: !24, line: 290, type: !3308, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !3038, !468}
!3310 = !{!3311, !3312}
!3311 = !DILocalVariable(name: "u_port", arg: 1, scope: !3307, file: !24, line: 290, type: !3038)
!3312 = !DILocalVariable(name: "func", arg: 2, scope: !3307, file: !24, line: 290, type: !468)
!3313 = !DILocation(line: 0, scope: !3307)
!3314 = !DILocation(line: 292, column: 9, scope: !3307)
!3315 = !DILocation(line: 296, column: 5, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !24, line: 294, column: 38)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !24, line: 294, column: 16)
!3318 = distinct !DILexicalBlock(scope: !3307, file: !24, line: 292, column: 9)
!3319 = !DILocation(line: 0, scope: !3318)
!3320 = !DILocation(line: 298, column: 1, scope: !3307)
!3321 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !24, file: !24, line: 300, type: !3308, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3322)
!3322 = !{!3323, !3324}
!3323 = !DILocalVariable(name: "u_port", arg: 1, scope: !3321, file: !24, line: 300, type: !3038)
!3324 = !DILocalVariable(name: "func", arg: 2, scope: !3321, file: !24, line: 300, type: !468)
!3325 = !DILocation(line: 0, scope: !3321)
!3326 = !DILocation(line: 302, column: 9, scope: !3321)
!3327 = !DILocation(line: 306, column: 5, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !24, line: 304, column: 38)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !24, line: 304, column: 16)
!3330 = distinct !DILexicalBlock(scope: !3321, file: !24, line: 302, column: 9)
!3331 = !DILocation(line: 0, scope: !3330)
!3332 = !DILocation(line: 308, column: 1, scope: !3321)
!3333 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !24, file: !24, line: 310, type: !3092, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3334)
!3334 = !{!3335, !3336, !3337, !3338}
!3335 = !DILocalVariable(name: "u_port", arg: 1, scope: !3333, file: !24, line: 310, type: !3038)
!3336 = !DILocalVariable(name: "base", scope: !3333, file: !24, line: 312, type: !7)
!3337 = !DILocalVariable(name: "EFR", scope: !3333, file: !24, line: 313, type: !3108)
!3338 = !DILocalVariable(name: "LCR", scope: !3333, file: !24, line: 313, type: !3108)
!3339 = !DILocation(line: 0, scope: !3333)
!3340 = !DILocation(line: 312, column: 25, scope: !3333)
!3341 = !DILocation(line: 315, column: 11, scope: !3333)
!3342 = !DILocation(line: 317, column: 33, scope: !3333)
!3343 = !DILocation(line: 318, column: 11, scope: !3333)
!3344 = !DILocation(line: 320, column: 35, scope: !3333)
!3345 = !DILocation(line: 320, column: 33, scope: !3333)
!3346 = !DILocation(line: 322, column: 5, scope: !3333)
!3347 = !DILocation(line: 322, column: 39, scope: !3333)
!3348 = !DILocation(line: 324, column: 33, scope: !3333)
!3349 = !DILocation(line: 325, column: 5, scope: !3333)
!3350 = !DILocation(line: 325, column: 33, scope: !3333)
!3351 = !DILocation(line: 327, column: 35, scope: !3333)
!3352 = !DILocation(line: 327, column: 33, scope: !3333)
!3353 = !DILocation(line: 328, column: 1, scope: !3333)
!3354 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !24, file: !24, line: 330, type: !3355, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3357)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3038, !235, !235, !235}
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3358 = !DILocalVariable(name: "u_port", arg: 1, scope: !3354, file: !24, line: 330, type: !3038)
!3359 = !DILocalVariable(name: "xon", arg: 2, scope: !3354, file: !24, line: 330, type: !235)
!3360 = !DILocalVariable(name: "xoff", arg: 3, scope: !3354, file: !24, line: 330, type: !235)
!3361 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3354, file: !24, line: 330, type: !235)
!3362 = !DILocalVariable(name: "base", scope: !3354, file: !24, line: 332, type: !7)
!3363 = !DILocalVariable(name: "EFR", scope: !3354, file: !24, line: 333, type: !3108)
!3364 = !DILocalVariable(name: "LCR", scope: !3354, file: !24, line: 333, type: !3108)
!3365 = !DILocation(line: 0, scope: !3354)
!3366 = !DILocation(line: 332, column: 25, scope: !3354)
!3367 = !DILocation(line: 335, column: 11, scope: !3354)
!3368 = !DILocation(line: 337, column: 33, scope: !3354)
!3369 = !DILocation(line: 338, column: 36, scope: !3354)
!3370 = !DILocation(line: 338, column: 5, scope: !3354)
!3371 = !DILocation(line: 338, column: 34, scope: !3354)
!3372 = !DILocation(line: 339, column: 5, scope: !3354)
!3373 = !DILocation(line: 339, column: 34, scope: !3354)
!3374 = !DILocation(line: 340, column: 37, scope: !3354)
!3375 = !DILocation(line: 340, column: 5, scope: !3354)
!3376 = !DILocation(line: 340, column: 35, scope: !3354)
!3377 = !DILocation(line: 341, column: 5, scope: !3354)
!3378 = !DILocation(line: 341, column: 35, scope: !3354)
!3379 = !DILocation(line: 343, column: 11, scope: !3354)
!3380 = !DILocation(line: 345, column: 35, scope: !3354)
!3381 = !DILocation(line: 345, column: 33, scope: !3354)
!3382 = !DILocation(line: 347, column: 35, scope: !3354)
!3383 = !DILocation(line: 347, column: 33, scope: !3354)
!3384 = !DILocation(line: 349, column: 43, scope: !3354)
!3385 = !DILocation(line: 349, column: 5, scope: !3354)
!3386 = !DILocation(line: 349, column: 41, scope: !3354)
!3387 = !DILocation(line: 350, column: 5, scope: !3354)
!3388 = !DILocation(line: 350, column: 39, scope: !3354)
!3389 = !DILocation(line: 351, column: 1, scope: !3354)
!3390 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !24, file: !24, line: 353, type: !3092, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3391)
!3391 = !{!3392, !3393, !3394}
!3392 = !DILocalVariable(name: "u_port", arg: 1, scope: !3390, file: !24, line: 353, type: !3038)
!3393 = !DILocalVariable(name: "base", scope: !3390, file: !24, line: 355, type: !7)
!3394 = !DILocalVariable(name: "LCR", scope: !3390, file: !24, line: 356, type: !3108)
!3395 = !DILocation(line: 0, scope: !3390)
!3396 = !DILocation(line: 355, column: 25, scope: !3390)
!3397 = !DILocation(line: 358, column: 11, scope: !3390)
!3398 = !DILocation(line: 360, column: 33, scope: !3390)
!3399 = !DILocation(line: 362, column: 5, scope: !3390)
!3400 = !DILocation(line: 362, column: 33, scope: !3390)
!3401 = !DILocation(line: 364, column: 33, scope: !3390)
!3402 = !DILocation(line: 366, column: 35, scope: !3390)
!3403 = !DILocation(line: 366, column: 33, scope: !3390)
!3404 = !DILocation(line: 367, column: 1, scope: !3390)
!3405 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !24, file: !24, line: 436, type: !3092, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3406)
!3406 = !{!3407, !3408}
!3407 = !DILocalVariable(name: "u_port", arg: 1, scope: !3405, file: !24, line: 436, type: !3038)
!3408 = !DILocalVariable(name: "base", scope: !3405, file: !24, line: 438, type: !7)
!3409 = !DILocation(line: 0, scope: !3405)
!3410 = !DILocation(line: 438, column: 25, scope: !3405)
!3411 = !DILocation(line: 440, column: 5, scope: !3405)
!3412 = !DILocation(line: 440, column: 33, scope: !3405)
!3413 = !DILocation(line: 441, column: 5, scope: !3405)
!3414 = !DILocation(line: 441, column: 33, scope: !3405)
!3415 = !DILocation(line: 442, column: 5, scope: !3405)
!3416 = !DILocation(line: 442, column: 34, scope: !3405)
!3417 = !DILocation(line: 443, column: 5, scope: !3405)
!3418 = !DILocation(line: 443, column: 35, scope: !3405)
!3419 = !DILocation(line: 445, column: 33, scope: !3405)
!3420 = !DILocation(line: 446, column: 5, scope: !3405)
!3421 = !DILocation(line: 446, column: 33, scope: !3405)
!3422 = !DILocation(line: 447, column: 5, scope: !3405)
!3423 = !DILocation(line: 447, column: 33, scope: !3405)
!3424 = !DILocation(line: 449, column: 33, scope: !3405)
!3425 = !DILocation(line: 450, column: 33, scope: !3405)
!3426 = !DILocation(line: 451, column: 33, scope: !3405)
!3427 = !DILocation(line: 453, column: 33, scope: !3405)
!3428 = !DILocation(line: 454, column: 33, scope: !3405)
!3429 = !DILocation(line: 455, column: 33, scope: !3405)
!3430 = !DILocation(line: 457, column: 33, scope: !3405)
!3431 = !DILocation(line: 458, column: 5, scope: !3405)
!3432 = !DILocation(line: 458, column: 33, scope: !3405)
!3433 = !DILocation(line: 459, column: 5, scope: !3405)
!3434 = !DILocation(line: 459, column: 39, scope: !3405)
!3435 = !DILocation(line: 460, column: 5, scope: !3405)
!3436 = !DILocation(line: 460, column: 40, scope: !3405)
!3437 = !DILocation(line: 461, column: 5, scope: !3405)
!3438 = !DILocation(line: 461, column: 42, scope: !3405)
!3439 = !DILocation(line: 462, column: 5, scope: !3405)
!3440 = !DILocation(line: 462, column: 42, scope: !3405)
!3441 = !DILocation(line: 463, column: 5, scope: !3405)
!3442 = !DILocation(line: 463, column: 35, scope: !3405)
!3443 = !DILocation(line: 464, column: 5, scope: !3405)
!3444 = !DILocation(line: 464, column: 41, scope: !3405)
!3445 = !DILocation(line: 465, column: 5, scope: !3405)
!3446 = !DILocation(line: 465, column: 39, scope: !3405)
!3447 = !DILocation(line: 466, column: 5, scope: !3405)
!3448 = !DILocation(line: 466, column: 38, scope: !3405)
!3449 = !DILocation(line: 467, column: 5, scope: !3405)
!3450 = !DILocation(line: 467, column: 42, scope: !3405)
!3451 = !DILocation(line: 468, column: 5, scope: !3405)
!3452 = !DILocation(line: 468, column: 45, scope: !3405)
!3453 = !DILocation(line: 469, column: 5, scope: !3405)
!3454 = !DILocation(line: 469, column: 39, scope: !3405)
!3455 = !DILocation(line: 470, column: 5, scope: !3405)
!3456 = !DILocation(line: 470, column: 39, scope: !3405)
!3457 = !DILocation(line: 471, column: 5, scope: !3405)
!3458 = !DILocation(line: 471, column: 42, scope: !3405)
!3459 = !DILocation(line: 472, column: 1, scope: !3405)
!3460 = distinct !DISubprogram(name: "uart_query_empty", scope: !24, file: !24, line: 474, type: !3092, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !3461)
!3461 = !{!3462, !3463}
!3462 = !DILocalVariable(name: "u_port", arg: 1, scope: !3460, file: !24, line: 474, type: !3038)
!3463 = !DILocalVariable(name: "base", scope: !3460, file: !24, line: 476, type: !7)
!3464 = !DILocation(line: 0, scope: !3460)
!3465 = !DILocation(line: 476, column: 25, scope: !3460)
!3466 = !DILocation(line: 478, column: 5, scope: !3460)
!3467 = !DILocation(line: 478, column: 14, scope: !3460)
!3468 = !DILocation(line: 478, column: 42, scope: !3460)
!3469 = !DILocation(line: 478, column: 12, scope: !3460)
!3470 = distinct !{!3470, !3466, !3471}
!3471 = !DILocation(line: 478, column: 50, scope: !3460)
!3472 = !DILocation(line: 479, column: 1, scope: !3460)
!3473 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1077, file: !1077, line: 64, type: !3474, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !635, !66, !635, null}
!3476 = !{!3477, !3478, !3479, !3480, !3489}
!3477 = !DILocalVariable(name: "func", arg: 1, scope: !3473, file: !1077, line: 64, type: !635)
!3478 = !DILocalVariable(name: "line", arg: 2, scope: !3473, file: !1077, line: 64, type: !66)
!3479 = !DILocalVariable(name: "message", arg: 3, scope: !3473, file: !1077, line: 64, type: !635)
!3480 = !DILocalVariable(name: "ap", scope: !3473, file: !1077, line: 66, type: !3481)
!3481 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3482, line: 46, baseType: !3483)
!3482 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3484, line: 32, baseType: !3485)
!3484 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1077, baseType: !3486)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3486, file: !1077, line: 66, baseType: !141, size: 32)
!3489 = !DILocalVariable(name: "mask", scope: !3473, file: !1077, line: 68, type: !12)
!3490 = !DILocation(line: 0, scope: !3473)
!3491 = !DILocation(line: 66, column: 5, scope: !3473)
!3492 = !DILocation(line: 66, column: 13, scope: !3473)
!3493 = !DILocation(line: 68, column: 5, scope: !3473)
!3494 = !DILocation(line: 69, column: 5, scope: !3473)
!3495 = !DILocation(line: 71, column: 5, scope: !3473)
!3496 = !DILocation(line: 72, column: 5, scope: !3473)
!3497 = !DILocation(line: 73, column: 5, scope: !3473)
!3498 = !DILocation(line: 75, column: 37, scope: !3473)
!3499 = !DILocation(line: 75, column: 5, scope: !3473)
!3500 = !DILocation(line: 77, column: 1, scope: !3473)
!3501 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1077, file: !1077, line: 78, type: !3474, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507}
!3503 = !DILocalVariable(name: "func", arg: 1, scope: !3501, file: !1077, line: 78, type: !635)
!3504 = !DILocalVariable(name: "line", arg: 2, scope: !3501, file: !1077, line: 78, type: !66)
!3505 = !DILocalVariable(name: "message", arg: 3, scope: !3501, file: !1077, line: 78, type: !635)
!3506 = !DILocalVariable(name: "ap", scope: !3501, file: !1077, line: 80, type: !3481)
!3507 = !DILocalVariable(name: "mask", scope: !3501, file: !1077, line: 82, type: !12)
!3508 = !DILocation(line: 0, scope: !3501)
!3509 = !DILocation(line: 80, column: 5, scope: !3501)
!3510 = !DILocation(line: 80, column: 13, scope: !3501)
!3511 = !DILocation(line: 82, column: 5, scope: !3501)
!3512 = !DILocation(line: 83, column: 5, scope: !3501)
!3513 = !DILocation(line: 85, column: 5, scope: !3501)
!3514 = !DILocation(line: 86, column: 5, scope: !3501)
!3515 = !DILocation(line: 87, column: 5, scope: !3501)
!3516 = !DILocation(line: 89, column: 37, scope: !3501)
!3517 = !DILocation(line: 89, column: 5, scope: !3501)
!3518 = !DILocation(line: 91, column: 1, scope: !3501)
!3519 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1077, file: !1077, line: 92, type: !3474, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525}
!3521 = !DILocalVariable(name: "func", arg: 1, scope: !3519, file: !1077, line: 92, type: !635)
!3522 = !DILocalVariable(name: "line", arg: 2, scope: !3519, file: !1077, line: 92, type: !66)
!3523 = !DILocalVariable(name: "message", arg: 3, scope: !3519, file: !1077, line: 92, type: !635)
!3524 = !DILocalVariable(name: "ap", scope: !3519, file: !1077, line: 94, type: !3481)
!3525 = !DILocalVariable(name: "mask", scope: !3519, file: !1077, line: 96, type: !12)
!3526 = !DILocation(line: 0, scope: !3519)
!3527 = !DILocation(line: 94, column: 5, scope: !3519)
!3528 = !DILocation(line: 94, column: 13, scope: !3519)
!3529 = !DILocation(line: 96, column: 5, scope: !3519)
!3530 = !DILocation(line: 97, column: 5, scope: !3519)
!3531 = !DILocation(line: 99, column: 5, scope: !3519)
!3532 = !DILocation(line: 100, column: 5, scope: !3519)
!3533 = !DILocation(line: 101, column: 5, scope: !3519)
!3534 = !DILocation(line: 103, column: 37, scope: !3519)
!3535 = !DILocation(line: 103, column: 5, scope: !3519)
!3536 = !DILocation(line: 105, column: 1, scope: !3519)
!3537 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1077, file: !1077, line: 106, type: !3474, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !3538)
!3538 = !{!3539, !3540, !3541, !3542, !3543}
!3539 = !DILocalVariable(name: "func", arg: 1, scope: !3537, file: !1077, line: 106, type: !635)
!3540 = !DILocalVariable(name: "line", arg: 2, scope: !3537, file: !1077, line: 106, type: !66)
!3541 = !DILocalVariable(name: "message", arg: 3, scope: !3537, file: !1077, line: 106, type: !635)
!3542 = !DILocalVariable(name: "ap", scope: !3537, file: !1077, line: 108, type: !3481)
!3543 = !DILocalVariable(name: "mask", scope: !3537, file: !1077, line: 110, type: !12)
!3544 = !DILocation(line: 0, scope: !3537)
!3545 = !DILocation(line: 108, column: 5, scope: !3537)
!3546 = !DILocation(line: 108, column: 13, scope: !3537)
!3547 = !DILocation(line: 110, column: 5, scope: !3537)
!3548 = !DILocation(line: 111, column: 5, scope: !3537)
!3549 = !DILocation(line: 113, column: 5, scope: !3537)
!3550 = !DILocation(line: 114, column: 5, scope: !3537)
!3551 = !DILocation(line: 115, column: 5, scope: !3537)
!3552 = !DILocation(line: 117, column: 37, scope: !3537)
!3553 = !DILocation(line: 117, column: 5, scope: !3537)
!3554 = !DILocation(line: 119, column: 1, scope: !3537)
!3555 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1077, file: !1077, line: 121, type: !3556, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !3560)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{null, !635, !66, !635, !3558, !66, null}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3560 = !{!3561, !3562, !3563, !3564, !3565}
!3561 = !DILocalVariable(name: "func", arg: 1, scope: !3555, file: !1077, line: 121, type: !635)
!3562 = !DILocalVariable(name: "line", arg: 2, scope: !3555, file: !1077, line: 121, type: !66)
!3563 = !DILocalVariable(name: "message", arg: 3, scope: !3555, file: !1077, line: 121, type: !635)
!3564 = !DILocalVariable(name: "data", arg: 4, scope: !3555, file: !1077, line: 121, type: !3558)
!3565 = !DILocalVariable(name: "length", arg: 5, scope: !3555, file: !1077, line: 121, type: !66)
!3566 = !DILocation(line: 0, scope: !3555)
!3567 = !DILocation(line: 123, column: 1, scope: !3555)
!3568 = distinct !DISubprogram(name: "hal_cache_init", scope: !62, file: !62, line: 53, type: !3569, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3572)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!3571}
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !65, line: 172, baseType: !64)
!3572 = !{!3573, !3575}
!3573 = !DILocalVariable(name: "region", scope: !3568, file: !62, line: 55, type: !3574)
!3574 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !65, line: 204, baseType: !76)
!3575 = !DILocalVariable(name: "irq_flag", scope: !3568, file: !62, line: 56, type: !12)
!3576 = !DILocation(line: 59, column: 16, scope: !3568)
!3577 = !DILocation(line: 0, scope: !3568)
!3578 = !DILocation(line: 62, column: 9, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3568, file: !62, line: 62, column: 9)
!3580 = !{i8 0, i8 2}
!3581 = !DILocation(line: 62, column: 9, scope: !3568)
!3582 = !DILocation(line: 64, column: 9, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !62, line: 62, column: 39)
!3584 = !DILocation(line: 66, column: 9, scope: !3583)
!3585 = !DILocation(line: 69, column: 24, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !62, line: 67, column: 12)
!3587 = !DILocation(line: 72, column: 9, scope: !3586)
!3588 = !DILocation(line: 77, column: 5, scope: !3568)
!3589 = !DILocation(line: 80, column: 22, scope: !3568)
!3590 = !DILocation(line: 81, column: 28, scope: !3568)
!3591 = !DILocation(line: 84, column: 19, scope: !3568)
!3592 = !DILocation(line: 85, column: 23, scope: !3568)
!3593 = !DILocation(line: 88, column: 5, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3568, file: !62, line: 88, column: 5)
!3595 = !DILocation(line: 90, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !62, line: 88, column: 81)
!3597 = distinct !DILexicalBlock(scope: !3594, file: !62, line: 88, column: 5)
!3598 = !DILocation(line: 90, column: 38, scope: !3596)
!3599 = !DILocation(line: 91, column: 9, scope: !3596)
!3600 = !DILocation(line: 91, column: 42, scope: !3596)
!3601 = !DILocation(line: 94, column: 45, scope: !3596)
!3602 = !DILocation(line: 94, column: 47, scope: !3596)
!3603 = !DILocation(line: 95, column: 49, scope: !3596)
!3604 = !DILocation(line: 95, column: 51, scope: !3596)
!3605 = !DILocation(line: 88, column: 77, scope: !3597)
!3606 = !DILocation(line: 88, column: 46, scope: !3597)
!3607 = distinct !{!3607, !3593, !3608}
!3608 = !DILocation(line: 96, column: 5, scope: !3594)
!3609 = !DILocation(line: 99, column: 1, scope: !3568)
!3610 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !62, file: !62, line: 327, type: !3569, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3611)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "irq_flag", scope: !3610, file: !62, line: 329, type: !12)
!3613 = !DILocation(line: 332, column: 16, scope: !3610)
!3614 = !DILocation(line: 0, scope: !3610)
!3615 = !DILocation(line: 335, column: 21, scope: !3610)
!3616 = !DILocation(line: 336, column: 21, scope: !3610)
!3617 = !DILocation(line: 339, column: 21, scope: !3610)
!3618 = !DILocation(line: 340, column: 21, scope: !3610)
!3619 = !DILocation(line: 434, column: 3, scope: !3620, inlinedAt: !3622)
!3620 = distinct !DISubprogram(name: "__ISB", scope: !3621, file: !3621, line: 432, type: !470, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2585)
!3621 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/rtc_set_alarm/GCC")
!3622 = distinct !DILocation(line: 343, column: 5, scope: !3610)
!3623 = !{i64 296584}
!3624 = !DILocation(line: 346, column: 5, scope: !3610)
!3625 = !DILocation(line: 348, column: 5, scope: !3610)
!3626 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !62, file: !62, line: 101, type: !3569, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3627)
!3627 = !{!3628}
!3628 = !DILocalVariable(name: "region", scope: !3626, file: !62, line: 103, type: !3574)
!3629 = !DILocation(line: 107, column: 5, scope: !3626)
!3630 = !DILocation(line: 110, column: 22, scope: !3626)
!3631 = !DILocation(line: 111, column: 28, scope: !3626)
!3632 = !DILocation(line: 114, column: 19, scope: !3626)
!3633 = !DILocation(line: 115, column: 23, scope: !3626)
!3634 = !DILocation(line: 0, scope: !3626)
!3635 = !DILocation(line: 118, column: 5, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3626, file: !62, line: 118, column: 5)
!3637 = !DILocation(line: 120, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !62, line: 118, column: 81)
!3639 = distinct !DILexicalBlock(scope: !3636, file: !62, line: 118, column: 5)
!3640 = !DILocation(line: 120, column: 38, scope: !3638)
!3641 = !DILocation(line: 121, column: 9, scope: !3638)
!3642 = !DILocation(line: 121, column: 42, scope: !3638)
!3643 = !DILocation(line: 124, column: 45, scope: !3638)
!3644 = !DILocation(line: 124, column: 47, scope: !3638)
!3645 = !DILocation(line: 125, column: 49, scope: !3638)
!3646 = !DILocation(line: 125, column: 51, scope: !3638)
!3647 = !DILocation(line: 118, column: 77, scope: !3639)
!3648 = !DILocation(line: 118, column: 46, scope: !3639)
!3649 = distinct !{!3649, !3635, !3650}
!3650 = !DILocation(line: 126, column: 5, scope: !3636)
!3651 = !DILocation(line: 129, column: 20, scope: !3626)
!3652 = !DILocation(line: 131, column: 5, scope: !3626)
!3653 = distinct !DISubprogram(name: "hal_cache_enable", scope: !62, file: !62, line: 134, type: !3569, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2585)
!3654 = !DILocation(line: 137, column: 45, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3653, file: !62, line: 137, column: 9)
!3656 = !DILocation(line: 137, column: 28, scope: !3655)
!3657 = !DILocation(line: 137, column: 9, scope: !3653)
!3658 = !DILocation(line: 142, column: 22, scope: !3653)
!3659 = !DILocation(line: 145, column: 28, scope: !3653)
!3660 = !DILocation(line: 145, column: 19, scope: !3653)
!3661 = !DILocation(line: 147, column: 5, scope: !3653)
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 148, column: 1, scope: !3653)
!3664 = distinct !DISubprogram(name: "hal_cache_disable", scope: !62, file: !62, line: 150, type: !3569, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3665)
!3665 = !{!3666}
!3666 = !DILocalVariable(name: "irq_flag", scope: !3664, file: !62, line: 152, type: !12)
!3667 = !DILocation(line: 155, column: 16, scope: !3664)
!3668 = !DILocation(line: 0, scope: !3664)
!3669 = !DILocation(line: 158, column: 16, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3664, file: !62, line: 158, column: 9)
!3671 = !DILocation(line: 158, column: 26, scope: !3670)
!3672 = !DILocation(line: 158, column: 9, scope: !3664)
!3673 = !DILocation(line: 160, column: 9, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !62, line: 158, column: 49)
!3675 = !DILocation(line: 161, column: 5, scope: !3674)
!3676 = !DILocation(line: 164, column: 22, scope: !3664)
!3677 = !DILocation(line: 167, column: 28, scope: !3664)
!3678 = !DILocation(line: 167, column: 19, scope: !3664)
!3679 = !DILocation(line: 170, column: 5, scope: !3664)
!3680 = !DILocation(line: 172, column: 5, scope: !3664)
!3681 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !62, file: !62, line: 175, type: !3682, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3571, !3574}
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "region", arg: 1, scope: !3681, file: !62, line: 175, type: !3574)
!3686 = !DILocation(line: 0, scope: !3681)
!3687 = !DILocation(line: 178, column: 16, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3681, file: !62, line: 178, column: 9)
!3689 = !DILocation(line: 178, column: 9, scope: !3681)
!3690 = !DILocation(line: 183, column: 9, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3681, file: !62, line: 183, column: 9)
!3692 = !DILocation(line: 183, column: 38, scope: !3691)
!3693 = !DILocation(line: 183, column: 9, scope: !3681)
!3694 = !DILocation(line: 184, column: 38, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !62, line: 183, column: 62)
!3696 = !DILocation(line: 184, column: 32, scope: !3695)
!3697 = !DILocation(line: 190, column: 32, scope: !3681)
!3698 = !DILocation(line: 190, column: 23, scope: !3681)
!3699 = !DILocation(line: 192, column: 5, scope: !3681)
!3700 = !DILocation(line: 193, column: 1, scope: !3681)
!3701 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !62, file: !62, line: 195, type: !3682, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3702)
!3702 = !{!3703}
!3703 = !DILocalVariable(name: "region", arg: 1, scope: !3701, file: !62, line: 195, type: !3574)
!3704 = !DILocation(line: 0, scope: !3701)
!3705 = !DILocation(line: 198, column: 16, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3701, file: !62, line: 198, column: 9)
!3707 = !DILocation(line: 198, column: 9, scope: !3701)
!3708 = !DILocation(line: 203, column: 35, scope: !3701)
!3709 = !DILocation(line: 203, column: 31, scope: !3701)
!3710 = !DILocation(line: 203, column: 28, scope: !3701)
!3711 = !DILocation(line: 206, column: 32, scope: !3701)
!3712 = !DILocation(line: 206, column: 23, scope: !3701)
!3713 = !DILocation(line: 209, column: 41, scope: !3701)
!3714 = !DILocation(line: 209, column: 43, scope: !3701)
!3715 = !DILocation(line: 210, column: 45, scope: !3701)
!3716 = !DILocation(line: 210, column: 47, scope: !3701)
!3717 = !DILocation(line: 212, column: 5, scope: !3701)
!3718 = !DILocation(line: 213, column: 1, scope: !3701)
!3719 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !62, file: !62, line: 215, type: !3720, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3723)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3571, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !65, line: 182, baseType: !95)
!3723 = !{!3724}
!3724 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3719, file: !62, line: 215, type: !3722)
!3725 = !DILocation(line: 0, scope: !3719)
!3726 = !DILocation(line: 218, column: 20, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3719, file: !62, line: 218, column: 9)
!3728 = !DILocation(line: 218, column: 9, scope: !3719)
!3729 = !DILocation(line: 223, column: 22, scope: !3719)
!3730 = !DILocation(line: 224, column: 37, scope: !3719)
!3731 = !DILocation(line: 224, column: 22, scope: !3719)
!3732 = !DILocation(line: 227, column: 20, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3719, file: !62, line: 227, column: 9)
!3734 = !DILocation(line: 227, column: 9, scope: !3719)
!3735 = !DILocation(line: 228, column: 26, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !62, line: 227, column: 43)
!3737 = !DILocation(line: 229, column: 5, scope: !3736)
!3738 = !DILocation(line: 232, column: 28, scope: !3719)
!3739 = !DILocation(line: 232, column: 19, scope: !3719)
!3740 = !DILocation(line: 234, column: 5, scope: !3719)
!3741 = !DILocation(line: 235, column: 1, scope: !3719)
!3742 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !62, file: !62, line: 237, type: !3743, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3752)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!3571, !3574, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 32)
!3746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3747)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !65, line: 222, baseType: !3748)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 219, size: 64, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3748, file: !65, line: 220, baseType: !12, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3748, file: !65, line: 221, baseType: !12, size: 32, offset: 32)
!3752 = !{!3753, !3754}
!3753 = !DILocalVariable(name: "region", arg: 1, scope: !3742, file: !62, line: 237, type: !3574)
!3754 = !DILocalVariable(name: "region_config", arg: 2, scope: !3742, file: !62, line: 237, type: !3745)
!3755 = !DILocation(line: 0, scope: !3742)
!3756 = !DILocation(line: 240, column: 16, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3742, file: !62, line: 240, column: 9)
!3758 = !DILocation(line: 240, column: 9, scope: !3742)
!3759 = !DILocation(line: 245, column: 23, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3742, file: !62, line: 245, column: 9)
!3761 = !DILocation(line: 245, column: 9, scope: !3742)
!3762 = !DILocation(line: 250, column: 24, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3742, file: !62, line: 250, column: 9)
!3764 = !DILocation(line: 250, column: 45, scope: !3763)
!3765 = !DILocation(line: 250, column: 9, scope: !3742)
!3766 = !DILocation(line: 251, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3763, file: !62, line: 250, column: 81)
!3768 = !DILocation(line: 256, column: 24, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3742, file: !62, line: 256, column: 9)
!3770 = !DILocation(line: 256, column: 42, scope: !3769)
!3771 = !DILocation(line: 256, column: 9, scope: !3742)
!3772 = !DILocation(line: 257, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3769, file: !62, line: 256, column: 78)
!3774 = !DILocation(line: 262, column: 5, scope: !3742)
!3775 = !DILocation(line: 262, column: 34, scope: !3742)
!3776 = !DILocation(line: 263, column: 55, scope: !3742)
!3777 = !DILocation(line: 263, column: 93, scope: !3742)
!3778 = !DILocation(line: 263, column: 76, scope: !3742)
!3779 = !DILocation(line: 263, column: 5, scope: !3742)
!3780 = !DILocation(line: 263, column: 38, scope: !3742)
!3781 = !DILocation(line: 266, column: 34, scope: !3742)
!3782 = !DILocation(line: 269, column: 45, scope: !3742)
!3783 = !DILocation(line: 269, column: 41, scope: !3742)
!3784 = !DILocation(line: 269, column: 43, scope: !3742)
!3785 = !DILocation(line: 270, column: 49, scope: !3742)
!3786 = !DILocation(line: 270, column: 45, scope: !3742)
!3787 = !DILocation(line: 270, column: 47, scope: !3742)
!3788 = !DILocation(line: 272, column: 5, scope: !3742)
!3789 = !DILocation(line: 273, column: 1, scope: !3742)
!3790 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !62, file: !62, line: 275, type: !3791, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!3571, !12}
!3793 = !{!3794, !3795}
!3794 = !DILocalVariable(name: "address", arg: 1, scope: !3790, file: !62, line: 275, type: !12)
!3795 = !DILocalVariable(name: "irq_flag", scope: !3790, file: !62, line: 277, type: !12)
!3796 = !DILocation(line: 0, scope: !3790)
!3797 = !DILocation(line: 280, column: 17, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3790, file: !62, line: 280, column: 9)
!3799 = !DILocation(line: 280, column: 9, scope: !3790)
!3800 = !DILocation(line: 284, column: 16, scope: !3790)
!3801 = !DILocation(line: 287, column: 32, scope: !3790)
!3802 = !DILocation(line: 287, column: 21, scope: !3790)
!3803 = !DILocation(line: 288, column: 21, scope: !3790)
!3804 = !DILocation(line: 434, column: 3, scope: !3620, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 291, column: 5, scope: !3790)
!3806 = !DILocation(line: 294, column: 5, scope: !3790)
!3807 = !DILocation(line: 296, column: 5, scope: !3790)
!3808 = !DILocation(line: 297, column: 1, scope: !3790)
!3809 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !62, file: !62, line: 299, type: !3810, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!3571, !12, !12}
!3812 = !{!3813, !3814, !3815, !3816}
!3813 = !DILocalVariable(name: "address", arg: 1, scope: !3809, file: !62, line: 299, type: !12)
!3814 = !DILocalVariable(name: "length", arg: 2, scope: !3809, file: !62, line: 299, type: !12)
!3815 = !DILocalVariable(name: "irq_flag", scope: !3809, file: !62, line: 301, type: !12)
!3816 = !DILocalVariable(name: "end_address", scope: !3809, file: !62, line: 302, type: !12)
!3817 = !DILocation(line: 0, scope: !3809)
!3818 = !DILocation(line: 302, column: 36, scope: !3809)
!3819 = !DILocation(line: 305, column: 47, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3809, file: !62, line: 305, column: 9)
!3821 = !DILocation(line: 310, column: 16, scope: !3809)
!3822 = !DILocation(line: 313, column: 20, scope: !3809)
!3823 = !DILocation(line: 313, column: 5, scope: !3809)
!3824 = !DILocation(line: 314, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3809, file: !62, line: 313, column: 35)
!3826 = !DILocation(line: 315, column: 17, scope: !3825)
!3827 = distinct !{!3827, !3823, !3828}
!3828 = !DILocation(line: 316, column: 5, scope: !3809)
!3829 = !DILocation(line: 434, column: 3, scope: !3620, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 319, column: 5, scope: !3809)
!3831 = !DILocation(line: 322, column: 5, scope: !3809)
!3832 = !DILocation(line: 324, column: 5, scope: !3809)
!3833 = !DILocation(line: 325, column: 1, scope: !3809)
!3834 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !62, file: !62, line: 351, type: !3791, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3835)
!3835 = !{!3836, !3837}
!3836 = !DILocalVariable(name: "address", arg: 1, scope: !3834, file: !62, line: 351, type: !12)
!3837 = !DILocalVariable(name: "irq_flag", scope: !3834, file: !62, line: 353, type: !12)
!3838 = !DILocation(line: 0, scope: !3834)
!3839 = !DILocation(line: 356, column: 17, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3834, file: !62, line: 356, column: 9)
!3841 = !DILocation(line: 356, column: 9, scope: !3834)
!3842 = !DILocation(line: 361, column: 16, scope: !3834)
!3843 = !DILocation(line: 364, column: 32, scope: !3834)
!3844 = !DILocation(line: 364, column: 21, scope: !3834)
!3845 = !DILocation(line: 365, column: 21, scope: !3834)
!3846 = !DILocation(line: 434, column: 3, scope: !3620, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 368, column: 5, scope: !3834)
!3848 = !DILocation(line: 371, column: 5, scope: !3834)
!3849 = !DILocation(line: 373, column: 5, scope: !3834)
!3850 = !DILocation(line: 374, column: 1, scope: !3834)
!3851 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !62, file: !62, line: 376, type: !3810, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3852)
!3852 = !{!3853, !3854, !3855, !3856}
!3853 = !DILocalVariable(name: "address", arg: 1, scope: !3851, file: !62, line: 376, type: !12)
!3854 = !DILocalVariable(name: "length", arg: 2, scope: !3851, file: !62, line: 376, type: !12)
!3855 = !DILocalVariable(name: "irq_flag", scope: !3851, file: !62, line: 378, type: !12)
!3856 = !DILocalVariable(name: "end_address", scope: !3851, file: !62, line: 379, type: !12)
!3857 = !DILocation(line: 0, scope: !3851)
!3858 = !DILocation(line: 379, column: 36, scope: !3851)
!3859 = !DILocation(line: 382, column: 47, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3851, file: !62, line: 382, column: 9)
!3861 = !DILocation(line: 387, column: 16, scope: !3851)
!3862 = !DILocation(line: 390, column: 20, scope: !3851)
!3863 = !DILocation(line: 390, column: 5, scope: !3851)
!3864 = !DILocation(line: 391, column: 9, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3851, file: !62, line: 390, column: 35)
!3866 = !DILocation(line: 392, column: 17, scope: !3865)
!3867 = distinct !{!3867, !3863, !3868}
!3868 = !DILocation(line: 393, column: 5, scope: !3851)
!3869 = !DILocation(line: 434, column: 3, scope: !3620, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 396, column: 5, scope: !3851)
!3871 = !DILocation(line: 399, column: 5, scope: !3851)
!3872 = !DILocation(line: 401, column: 5, scope: !3851)
!3873 = !DILocation(line: 402, column: 1, scope: !3851)
!3874 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !62, file: !62, line: 404, type: !3569, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3875)
!3875 = !{!3876}
!3876 = !DILocalVariable(name: "irq_flag", scope: !3874, file: !62, line: 406, type: !12)
!3877 = !DILocation(line: 409, column: 16, scope: !3874)
!3878 = !DILocation(line: 0, scope: !3874)
!3879 = !DILocation(line: 412, column: 21, scope: !3874)
!3880 = !DILocation(line: 413, column: 21, scope: !3874)
!3881 = !DILocation(line: 434, column: 3, scope: !3620, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 416, column: 5, scope: !3874)
!3883 = !DILocation(line: 419, column: 5, scope: !3874)
!3884 = !DILocation(line: 421, column: 5, scope: !3874)
!3885 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !62, file: !62, line: 424, type: !3886, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!144, !12}
!3888 = !{!3889, !3890}
!3889 = !DILocalVariable(name: "address", arg: 1, scope: !3885, file: !62, line: 424, type: !12)
!3890 = !DILocalVariable(name: "region", scope: !3885, file: !62, line: 426, type: !3574)
!3891 = !DILocation(line: 0, scope: !3885)
!3892 = !DILocation(line: 429, column: 18, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3885, file: !62, line: 429, column: 9)
!3894 = !DILocation(line: 429, column: 28, scope: !3893)
!3895 = !DILocation(line: 429, column: 9, scope: !3885)
!3896 = !DILocation(line: 435, column: 20, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !62, line: 435, column: 13)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !62, line: 433, column: 81)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !62, line: 433, column: 5)
!3900 = distinct !DILexicalBlock(scope: !3885, file: !62, line: 433, column: 5)
!3901 = !DILocation(line: 435, column: 41, scope: !3897)
!3902 = !DILocation(line: 435, column: 36, scope: !3897)
!3903 = !DILocation(line: 435, column: 13, scope: !3898)
!3904 = !DILocation(line: 436, column: 30, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3906, file: !62, line: 436, column: 17)
!3906 = distinct !DILexicalBlock(scope: !3897, file: !62, line: 435, column: 53)
!3907 = !DILocation(line: 436, column: 59, scope: !3905)
!3908 = !DILocation(line: 436, column: 26, scope: !3905)
!3909 = !DILocation(line: 436, column: 85, scope: !3905)
!3910 = !DILocation(line: 436, column: 99, scope: !3905)
!3911 = !DILocation(line: 436, column: 97, scope: !3905)
!3912 = !DILocation(line: 436, column: 17, scope: !3906)
!3913 = !DILocation(line: 433, column: 77, scope: !3899)
!3914 = !DILocation(line: 433, column: 46, scope: !3899)
!3915 = !DILocation(line: 433, column: 5, scope: !3900)
!3916 = distinct !{!3916, !3915, !3917}
!3917 = !DILocation(line: 440, column: 5, scope: !3900)
!3918 = !DILocation(line: 442, column: 1, scope: !3885)
!3919 = distinct !DISubprogram(name: "hal_nvic_init", scope: !148, file: !148, line: 60, type: !3920, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2585)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!3922}
!3922 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !151, line: 158, baseType: !150)
!3923 = !DILocation(line: 62, column: 5, scope: !3919)
!3924 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !148, file: !148, line: 65, type: !3925, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3927)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!3922, !204}
!3927 = !{!3928, !3929}
!3928 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3924, file: !148, line: 65, type: !204)
!3929 = !DILocalVariable(name: "status", scope: !3924, file: !148, line: 67, type: !3922)
!3930 = !DILocation(line: 0, scope: !3924)
!3931 = !DILocation(line: 69, column: 40, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3924, file: !148, line: 69, column: 9)
!3933 = !DILocation(line: 73, column: 9, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3932, file: !148, line: 72, column: 12)
!3935 = !DILocation(line: 77, column: 5, scope: !3924)
!3936 = !DILocation(line: 78, column: 1, scope: !3924)
!3937 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !210, file: !210, line: 1494, type: !3938, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3940)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !205}
!3940 = !{!3941}
!3941 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3937, file: !210, line: 1494, type: !205)
!3942 = !DILocation(line: 0, scope: !3937)
!3943 = !DILocation(line: 1497, column: 91, scope: !3937)
!3944 = !DILocation(line: 1497, column: 61, scope: !3937)
!3945 = !DILocation(line: 1497, column: 40, scope: !3937)
!3946 = !DILocation(line: 1497, column: 3, scope: !3937)
!3947 = !DILocation(line: 1497, column: 46, scope: !3937)
!3948 = !DILocation(line: 1498, column: 1, scope: !3937)
!3949 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !148, file: !148, line: 80, type: !3925, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3950)
!3950 = !{!3951, !3952}
!3951 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3949, file: !148, line: 80, type: !204)
!3952 = !DILocalVariable(name: "status", scope: !3949, file: !148, line: 82, type: !3922)
!3953 = !DILocation(line: 0, scope: !3949)
!3954 = !DILocation(line: 84, column: 40, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3949, file: !148, line: 84, column: 9)
!3956 = !DILocation(line: 88, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3955, file: !148, line: 87, column: 12)
!3958 = !DILocation(line: 92, column: 5, scope: !3949)
!3959 = !DILocation(line: 93, column: 1, scope: !3949)
!3960 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !210, file: !210, line: 1507, type: !3938, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3961)
!3961 = !{!3962}
!3962 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3960, file: !210, line: 1507, type: !205)
!3963 = !DILocation(line: 0, scope: !3960)
!3964 = !DILocation(line: 1509, column: 65, scope: !3960)
!3965 = !DILocation(line: 1509, column: 44, scope: !3960)
!3966 = !DILocation(line: 1509, column: 32, scope: !3960)
!3967 = !DILocation(line: 1509, column: 3, scope: !3960)
!3968 = !DILocation(line: 1509, column: 39, scope: !3960)
!3969 = !DILocation(line: 1510, column: 1, scope: !3960)
!3970 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !148, file: !148, line: 95, type: !3971, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!12, !204}
!3973 = !{!3974, !3975}
!3974 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3970, file: !148, line: 95, type: !204)
!3975 = !DILocalVariable(name: "ret", scope: !3970, file: !148, line: 97, type: !12)
!3976 = !DILocation(line: 0, scope: !3970)
!3977 = !DILocation(line: 99, column: 40, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3970, file: !148, line: 99, column: 9)
!3979 = !DILocation(line: 102, column: 15, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3978, file: !148, line: 101, column: 12)
!3981 = !DILocation(line: 105, column: 5, scope: !3970)
!3982 = !DILocation(line: 106, column: 1, scope: !3970)
!3983 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !210, file: !210, line: 1523, type: !3984, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!12, !205}
!3986 = !{!3987}
!3987 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3983, file: !210, line: 1523, type: !205)
!3988 = !DILocation(line: 0, scope: !3983)
!3989 = !DILocation(line: 1525, column: 51, scope: !3983)
!3990 = !DILocation(line: 1525, column: 23, scope: !3983)
!3991 = !DILocation(line: 1525, column: 83, scope: !3983)
!3992 = !DILocation(line: 1525, column: 22, scope: !3983)
!3993 = !DILocation(line: 1525, column: 3, scope: !3983)
!3994 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !148, file: !148, line: 108, type: !3925, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3995)
!3995 = !{!3996, !3997}
!3996 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3994, file: !148, line: 108, type: !204)
!3997 = !DILocalVariable(name: "status", scope: !3994, file: !148, line: 110, type: !3922)
!3998 = !DILocation(line: 0, scope: !3994)
!3999 = !DILocation(line: 112, column: 40, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3994, file: !148, line: 112, column: 9)
!4001 = !DILocation(line: 116, column: 9, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4000, file: !148, line: 115, column: 12)
!4003 = !DILocation(line: 120, column: 5, scope: !3994)
!4004 = !DILocation(line: 121, column: 1, scope: !3994)
!4005 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !210, file: !210, line: 1535, type: !3938, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4006)
!4006 = !{!4007}
!4007 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4005, file: !210, line: 1535, type: !205)
!4008 = !DILocation(line: 0, scope: !4005)
!4009 = !DILocation(line: 1537, column: 65, scope: !4005)
!4010 = !DILocation(line: 1537, column: 44, scope: !4005)
!4011 = !DILocation(line: 1537, column: 32, scope: !4005)
!4012 = !DILocation(line: 1537, column: 3, scope: !4005)
!4013 = !DILocation(line: 1537, column: 39, scope: !4005)
!4014 = !DILocation(line: 1538, column: 1, scope: !4005)
!4015 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !148, file: !148, line: 123, type: !3925, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4016)
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4015, file: !148, line: 123, type: !204)
!4018 = !DILocalVariable(name: "status", scope: !4015, file: !148, line: 125, type: !3922)
!4019 = !DILocation(line: 0, scope: !4015)
!4020 = !DILocation(line: 127, column: 40, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4015, file: !148, line: 127, column: 9)
!4022 = !DILocation(line: 131, column: 9, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4021, file: !148, line: 130, column: 12)
!4024 = !DILocation(line: 135, column: 5, scope: !4015)
!4025 = !DILocation(line: 136, column: 1, scope: !4015)
!4026 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !210, file: !210, line: 1547, type: !3938, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4027)
!4027 = !{!4028}
!4028 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4026, file: !210, line: 1547, type: !205)
!4029 = !DILocation(line: 0, scope: !4026)
!4030 = !DILocation(line: 1549, column: 65, scope: !4026)
!4031 = !DILocation(line: 1549, column: 44, scope: !4026)
!4032 = !DILocation(line: 1549, column: 32, scope: !4026)
!4033 = !DILocation(line: 1549, column: 3, scope: !4026)
!4034 = !DILocation(line: 1549, column: 39, scope: !4026)
!4035 = !DILocation(line: 1550, column: 1, scope: !4026)
!4036 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !148, file: !148, line: 138, type: !4037, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!3922, !204, !12}
!4039 = !{!4040, !4041, !4042}
!4040 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4036, file: !148, line: 138, type: !204)
!4041 = !DILocalVariable(name: "priority", arg: 2, scope: !4036, file: !148, line: 138, type: !12)
!4042 = !DILocalVariable(name: "status", scope: !4036, file: !148, line: 140, type: !3922)
!4043 = !DILocation(line: 0, scope: !4036)
!4044 = !DILocation(line: 142, column: 40, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4036, file: !148, line: 142, column: 9)
!4046 = !DILocation(line: 146, column: 9, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4045, file: !148, line: 145, column: 12)
!4048 = !DILocation(line: 150, column: 5, scope: !4036)
!4049 = !DILocation(line: 151, column: 1, scope: !4036)
!4050 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !210, file: !210, line: 1577, type: !4051, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4053)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !205, !12}
!4053 = !{!4054, !4055}
!4054 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4050, file: !210, line: 1577, type: !205)
!4055 = !DILocalVariable(name: "priority", arg: 2, scope: !4050, file: !210, line: 1577, type: !12)
!4056 = !DILocation(line: 0, scope: !4050)
!4057 = !DILocation(line: 1582, column: 34, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !210, line: 1581, column: 8)
!4059 = distinct !DILexicalBlock(scope: !4050, file: !210, line: 1579, column: 6)
!4060 = !DILocation(line: 1582, column: 5, scope: !4058)
!4061 = !DILocation(line: 1582, column: 32, scope: !4058)
!4062 = !DILocation(line: 1583, column: 1, scope: !4050)
!4063 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !148, file: !148, line: 153, type: !3971, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4064)
!4064 = !{!4065, !4066}
!4065 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4063, file: !148, line: 153, type: !204)
!4066 = !DILocalVariable(name: "ret", scope: !4063, file: !148, line: 155, type: !12)
!4067 = !DILocation(line: 0, scope: !4063)
!4068 = !DILocation(line: 157, column: 40, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4063, file: !148, line: 157, column: 9)
!4070 = !DILocation(line: 160, column: 15, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4069, file: !148, line: 159, column: 12)
!4072 = !DILocation(line: 163, column: 5, scope: !4063)
!4073 = !DILocation(line: 164, column: 1, scope: !4063)
!4074 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !210, file: !210, line: 1597, type: !3984, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4075)
!4075 = !{!4076}
!4076 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4074, file: !210, line: 1597, type: !205)
!4077 = !DILocation(line: 0, scope: !4074)
!4078 = !DILocation(line: 1603, column: 23, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !210, line: 1602, column: 8)
!4080 = distinct !DILexicalBlock(scope: !4074, file: !210, line: 1600, column: 6)
!4081 = !DILocation(line: 1603, column: 60, scope: !4079)
!4082 = !DILocation(line: 1604, column: 1, scope: !4074)
!4083 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !148, file: !148, line: 173, type: !470, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2585)
!4084 = !DILocation(line: 175, column: 1, scope: !4083)
!4085 = distinct !DISubprogram(name: "isrC_main", scope: !148, file: !148, line: 178, type: !3920, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4086)
!4086 = !{!4087, !4088}
!4087 = !DILocalVariable(name: "status", scope: !4085, file: !148, line: 180, type: !3922)
!4088 = !DILocalVariable(name: "irq_number", scope: !4085, file: !148, line: 181, type: !204)
!4089 = !DILocation(line: 0, scope: !4085)
!4090 = !DILocation(line: 188, column: 34, scope: !4085)
!4091 = !DILocation(line: 189, column: 24, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4085, file: !148, line: 189, column: 9)
!4093 = !DILocation(line: 192, column: 48, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4092, file: !148, line: 192, column: 16)
!4095 = !DILocation(line: 192, column: 62, scope: !4094)
!4096 = !DILocation(line: 192, column: 16, scope: !4092)
!4097 = !DILocation(line: 194, column: 9, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4094, file: !148, line: 192, column: 71)
!4099 = !DILocation(line: 195, column: 9, scope: !4098)
!4100 = !DILocation(line: 197, column: 55, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4094, file: !148, line: 196, column: 12)
!4102 = !DILocation(line: 197, column: 41, scope: !4101)
!4103 = !DILocation(line: 197, column: 53, scope: !4101)
!4104 = !DILocation(line: 198, column: 41, scope: !4101)
!4105 = !DILocation(line: 198, column: 9, scope: !4101)
!4106 = !DILocation(line: 202, column: 5, scope: !4085)
!4107 = !DILocation(line: 203, column: 1, scope: !4085)
!4108 = distinct !DISubprogram(name: "get_current_irq", scope: !148, file: !148, line: 166, type: !2569, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4109)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "irq_num", scope: !4108, file: !148, line: 168, type: !12)
!4111 = !DILocation(line: 168, column: 31, scope: !4108)
!4112 = !DILocation(line: 168, column: 36, scope: !4108)
!4113 = !DILocation(line: 0, scope: !4108)
!4114 = !DILocation(line: 169, column: 21, scope: !4108)
!4115 = !DILocation(line: 169, column: 5, scope: !4108)
!4116 = distinct !DISubprogram(name: "get_pending_irq", scope: !148, file: !148, line: 55, type: !2569, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !2585)
!4117 = !DILocation(line: 57, column: 19, scope: !4116)
!4118 = !DILocation(line: 57, column: 51, scope: !4116)
!4119 = !DILocation(line: 57, column: 5, scope: !4116)
!4120 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !148, file: !148, line: 205, type: !4121, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4124)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!3922, !204, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !151, line: 175, baseType: !289)
!4124 = !{!4125, !4126, !4127}
!4125 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4120, file: !148, line: 205, type: !204)
!4126 = !DILocalVariable(name: "callback", arg: 2, scope: !4120, file: !148, line: 205, type: !4123)
!4127 = !DILocalVariable(name: "mask", scope: !4120, file: !148, line: 207, type: !12)
!4128 = !DILocation(line: 0, scope: !4120)
!4129 = !DILocation(line: 209, column: 24, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4120, file: !148, line: 209, column: 9)
!4131 = !DILocation(line: 213, column: 12, scope: !4120)
!4132 = !DILocation(line: 214, column: 5, scope: !4120)
!4133 = !DILocation(line: 215, column: 37, scope: !4120)
!4134 = !DILocation(line: 215, column: 51, scope: !4120)
!4135 = !DILocation(line: 216, column: 37, scope: !4120)
!4136 = !DILocation(line: 216, column: 49, scope: !4120)
!4137 = !DILocation(line: 217, column: 5, scope: !4120)
!4138 = !DILocation(line: 219, column: 5, scope: !4120)
!4139 = !DILocation(line: 220, column: 1, scope: !4120)
!4140 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !148, file: !148, line: 222, type: !4141, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!3922, !3185}
!4143 = !{!4144}
!4144 = !DILocalVariable(name: "mask", arg: 1, scope: !4140, file: !148, line: 222, type: !3185)
!4145 = !DILocation(line: 0, scope: !4140)
!4146 = !DILocation(line: 224, column: 13, scope: !4140)
!4147 = !DILocation(line: 224, column: 11, scope: !4140)
!4148 = !DILocation(line: 225, column: 5, scope: !4140)
!4149 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !148, file: !148, line: 228, type: !4150, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !4152)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!3922, !12}
!4152 = !{!4153}
!4153 = !DILocalVariable(name: "mask", arg: 1, scope: !4149, file: !148, line: 228, type: !12)
!4154 = !DILocation(line: 0, scope: !4149)
!4155 = !DILocation(line: 230, column: 5, scope: !4149)
!4156 = !DILocation(line: 231, column: 5, scope: !4149)
!4157 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1079, file: !1079, line: 50, type: !4158, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4162)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!4160, !4161, !235}
!4160 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !344, line: 238, baseType: !1081)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !312, line: 281, baseType: !311)
!4162 = !{!4163, !4164, !4165}
!4163 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4157, file: !1079, line: 50, type: !4161)
!4164 = !DILocalVariable(name: "function_index", arg: 2, scope: !4157, file: !1079, line: 50, type: !235)
!4165 = !DILocalVariable(name: "ret_value", scope: !4157, file: !1079, line: 52, type: !206)
!4166 = !DILocation(line: 0, scope: !4157)
!4167 = !DILocation(line: 53, column: 18, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4157, file: !1079, line: 53, column: 9)
!4169 = !DILocation(line: 53, column: 9, scope: !4157)
!4170 = !DILocation(line: 57, column: 24, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4157, file: !1079, line: 57, column: 9)
!4172 = !DILocation(line: 57, column: 9, scope: !4157)
!4173 = !DILocation(line: 57, column: 9, scope: !4171)
!4174 = !DILocation(line: 60, column: 17, scope: !4157)
!4175 = !DILocation(line: 61, column: 12, scope: !4157)
!4176 = !DILocation(line: 61, column: 5, scope: !4157)
!4177 = !DILocation(line: 62, column: 1, scope: !4157)
!4178 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1079, file: !1079, line: 64, type: !4179, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4182)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!4181, !4161}
!4181 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !344, line: 229, baseType: !1087)
!4182 = !{!4183}
!4183 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4178, file: !1079, line: 64, type: !4161)
!4184 = !DILocation(line: 0, scope: !4178)
!4185 = !DILocation(line: 66, column: 5, scope: !4178)
!4186 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1079, file: !1079, line: 69, type: !4179, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4187)
!4187 = !{!4188}
!4188 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4186, file: !1079, line: 69, type: !4161)
!4189 = !DILocation(line: 0, scope: !4186)
!4190 = !DILocation(line: 71, column: 5, scope: !4186)
!4191 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1079, file: !1079, line: 74, type: !4192, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4194)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!4181, !4161, !353}
!4194 = !{!4195, !4196, !4197}
!4195 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4191, file: !1079, line: 74, type: !4161)
!4196 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4191, file: !1079, line: 74, type: !353)
!4197 = !DILocalVariable(name: "status", scope: !4191, file: !1079, line: 76, type: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !1100, line: 67, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1100, line: 62, size: 64, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4199, file: !1100, line: 63, baseType: !12, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4199, file: !1100, line: 64, baseType: !235, size: 8, offset: 32)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4199, file: !1100, line: 65, baseType: !235, size: 8, offset: 40)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4199, file: !1100, line: 66, baseType: !235, size: 8, offset: 48)
!4205 = !DILocation(line: 0, scope: !4191)
!4206 = !DILocation(line: 77, column: 14, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4191, file: !1079, line: 77, column: 9)
!4208 = !DILocation(line: 77, column: 9, scope: !4191)
!4209 = !DILocation(line: 81, column: 18, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4191, file: !1079, line: 81, column: 9)
!4211 = !DILocation(line: 81, column: 9, scope: !4191)
!4212 = !DILocation(line: 85, column: 14, scope: !4191)
!4213 = !DILocation(line: 86, column: 18, scope: !4191)
!4214 = !DILocation(line: 86, column: 16, scope: !4191)
!4215 = !DILocation(line: 87, column: 5, scope: !4191)
!4216 = !DILocation(line: 88, column: 1, scope: !4191)
!4217 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1079, file: !1079, line: 90, type: !4218, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4220)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!4181, !4161, !354}
!4220 = !{!4221, !4222, !4223}
!4221 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4217, file: !1079, line: 90, type: !4161)
!4222 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4217, file: !1079, line: 90, type: !354)
!4223 = !DILocalVariable(name: "ret_value", scope: !4217, file: !1079, line: 92, type: !206)
!4224 = !DILocation(line: 0, scope: !4217)
!4225 = !DILocation(line: 93, column: 18, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4217, file: !1079, line: 93, column: 9)
!4227 = !DILocation(line: 93, column: 9, scope: !4217)
!4228 = !DILocation(line: 97, column: 60, scope: !4217)
!4229 = !DILocation(line: 97, column: 17, scope: !4217)
!4230 = !DILocation(line: 98, column: 12, scope: !4217)
!4231 = !DILocation(line: 98, column: 5, scope: !4217)
!4232 = !DILocation(line: 99, column: 1, scope: !4217)
!4233 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1079, file: !1079, line: 101, type: !4192, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4234)
!4234 = !{!4235, !4236, !4237}
!4235 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4233, file: !1079, line: 101, type: !4161)
!4236 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4233, file: !1079, line: 101, type: !353)
!4237 = !DILocalVariable(name: "status", scope: !4233, file: !1079, line: 103, type: !4198)
!4238 = !DILocation(line: 0, scope: !4233)
!4239 = !DILocation(line: 104, column: 18, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4233, file: !1079, line: 104, column: 9)
!4241 = !DILocation(line: 104, column: 9, scope: !4233)
!4242 = !DILocation(line: 108, column: 14, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4233, file: !1079, line: 108, column: 9)
!4244 = !DILocation(line: 108, column: 9, scope: !4233)
!4245 = !DILocation(line: 112, column: 14, scope: !4233)
!4246 = !DILocation(line: 113, column: 18, scope: !4233)
!4247 = !DILocation(line: 113, column: 16, scope: !4233)
!4248 = !DILocation(line: 114, column: 5, scope: !4233)
!4249 = !DILocation(line: 115, column: 1, scope: !4233)
!4250 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1079, file: !1079, line: 117, type: !4251, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4254)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!4181, !4161, !4253}
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !344, line: 213, baseType: !343)
!4254 = !{!4255, !4256, !4257}
!4255 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4250, file: !1079, line: 117, type: !4161)
!4256 = !DILocalVariable(name: "direction", arg: 2, scope: !4250, file: !1079, line: 117, type: !4253)
!4257 = !DILocalVariable(name: "ret_value", scope: !4250, file: !1079, line: 119, type: !206)
!4258 = !DILocation(line: 0, scope: !4250)
!4259 = !DILocation(line: 120, column: 18, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4250, file: !1079, line: 120, column: 9)
!4261 = !DILocation(line: 120, column: 9, scope: !4250)
!4262 = !DILocation(line: 123, column: 17, scope: !4250)
!4263 = !DILocation(line: 125, column: 12, scope: !4250)
!4264 = !DILocation(line: 125, column: 5, scope: !4250)
!4265 = !DILocation(line: 126, column: 1, scope: !4250)
!4266 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1079, file: !1079, line: 128, type: !4267, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4270)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!4181, !4161, !4269}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 32)
!4270 = !{!4271, !4272, !4273}
!4271 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4266, file: !1079, line: 128, type: !4161)
!4272 = !DILocalVariable(name: "direction", arg: 2, scope: !4266, file: !1079, line: 128, type: !4269)
!4273 = !DILocalVariable(name: "status", scope: !4266, file: !1079, line: 131, type: !4198)
!4274 = !DILocation(line: 0, scope: !4266)
!4275 = !DILocation(line: 132, column: 18, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4266, file: !1079, line: 132, column: 9)
!4277 = !DILocation(line: 132, column: 9, scope: !4266)
!4278 = !DILocation(line: 136, column: 14, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4266, file: !1079, line: 136, column: 9)
!4280 = !DILocation(line: 136, column: 9, scope: !4266)
!4281 = !DILocation(line: 140, column: 14, scope: !4266)
!4282 = !DILocation(line: 141, column: 18, scope: !4266)
!4283 = !DILocation(line: 141, column: 16, scope: !4266)
!4284 = !DILocation(line: 142, column: 5, scope: !4266)
!4285 = !DILocation(line: 143, column: 1, scope: !4266)
!4286 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1079, file: !1079, line: 146, type: !4179, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4287)
!4287 = !{!4288, !4289}
!4288 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4286, file: !1079, line: 146, type: !4161)
!4289 = !DILocalVariable(name: "status", scope: !4286, file: !1079, line: 148, type: !4198)
!4290 = !DILocation(line: 0, scope: !4286)
!4291 = !DILocation(line: 149, column: 18, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4286, file: !1079, line: 149, column: 9)
!4293 = !DILocation(line: 149, column: 9, scope: !4286)
!4294 = !DILocation(line: 153, column: 14, scope: !4286)
!4295 = !DILocation(line: 154, column: 76, scope: !4286)
!4296 = !DILocation(line: 154, column: 12, scope: !4286)
!4297 = !DILocation(line: 154, column: 5, scope: !4286)
!4298 = !DILocation(line: 155, column: 1, scope: !4286)
!4299 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1079, file: !1079, line: 157, type: !4179, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4300)
!4300 = !{!4301, !4302}
!4301 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4299, file: !1079, line: 157, type: !4161)
!4302 = !DILocalVariable(name: "ret_value", scope: !4299, file: !1079, line: 159, type: !206)
!4303 = !DILocation(line: 0, scope: !4299)
!4304 = !DILocation(line: 160, column: 18, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4299, file: !1079, line: 160, column: 9)
!4306 = !DILocation(line: 160, column: 9, scope: !4299)
!4307 = !DILocation(line: 164, column: 17, scope: !4299)
!4308 = !DILocation(line: 165, column: 19, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4299, file: !1079, line: 165, column: 9)
!4310 = !DILocation(line: 165, column: 9, scope: !4299)
!4311 = !DILocation(line: 168, column: 17, scope: !4299)
!4312 = !DILocation(line: 169, column: 12, scope: !4299)
!4313 = !DILocation(line: 169, column: 5, scope: !4299)
!4314 = !DILocation(line: 170, column: 1, scope: !4299)
!4315 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1079, file: !1079, line: 172, type: !4179, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4316)
!4316 = !{!4317, !4318}
!4317 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4315, file: !1079, line: 172, type: !4161)
!4318 = !DILocalVariable(name: "ret_value", scope: !4315, file: !1079, line: 174, type: !206)
!4319 = !DILocation(line: 0, scope: !4315)
!4320 = !DILocation(line: 175, column: 18, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4315, file: !1079, line: 175, column: 9)
!4322 = !DILocation(line: 175, column: 9, scope: !4315)
!4323 = !DILocation(line: 179, column: 17, scope: !4315)
!4324 = !DILocation(line: 180, column: 19, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4315, file: !1079, line: 180, column: 9)
!4326 = !DILocation(line: 180, column: 9, scope: !4315)
!4327 = !DILocation(line: 183, column: 17, scope: !4315)
!4328 = !DILocation(line: 184, column: 12, scope: !4315)
!4329 = !DILocation(line: 184, column: 5, scope: !4315)
!4330 = !DILocation(line: 185, column: 1, scope: !4315)
!4331 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1079, file: !1079, line: 187, type: !4179, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4332)
!4332 = !{!4333, !4334}
!4333 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4331, file: !1079, line: 187, type: !4161)
!4334 = !DILocalVariable(name: "ret_value", scope: !4331, file: !1079, line: 189, type: !206)
!4335 = !DILocation(line: 0, scope: !4331)
!4336 = !DILocation(line: 191, column: 18, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4331, file: !1079, line: 191, column: 9)
!4338 = !DILocation(line: 191, column: 9, scope: !4331)
!4339 = !DILocation(line: 195, column: 17, scope: !4331)
!4340 = !DILocation(line: 196, column: 12, scope: !4331)
!4341 = !DILocation(line: 196, column: 5, scope: !4331)
!4342 = !DILocation(line: 197, column: 1, scope: !4331)
!4343 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1079, file: !1079, line: 200, type: !4344, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4346)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!4181, !4161, !1106}
!4346 = !{!4347, !4348, !4349}
!4347 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4343, file: !1079, line: 200, type: !4161)
!4348 = !DILocalVariable(name: "driving", arg: 2, scope: !4343, file: !1079, line: 200, type: !1106)
!4349 = !DILocalVariable(name: "ret_value", scope: !4343, file: !1079, line: 202, type: !206)
!4350 = !DILocation(line: 0, scope: !4343)
!4351 = !DILocation(line: 204, column: 18, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4343, file: !1079, line: 204, column: 9)
!4353 = !DILocation(line: 204, column: 9, scope: !4343)
!4354 = !DILocation(line: 208, column: 64, scope: !4343)
!4355 = !DILocation(line: 208, column: 17, scope: !4343)
!4356 = !DILocation(line: 210, column: 12, scope: !4343)
!4357 = !DILocation(line: 210, column: 5, scope: !4343)
!4358 = !DILocation(line: 211, column: 1, scope: !4343)
!4359 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1079, file: !1079, line: 214, type: !4360, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !4363)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!4181, !4161, !4362}
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 32)
!4363 = !{!4364, !4365, !4366, !4367}
!4364 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4359, file: !1079, line: 214, type: !4161)
!4365 = !DILocalVariable(name: "driving", arg: 2, scope: !4359, file: !1079, line: 214, type: !4362)
!4366 = !DILocalVariable(name: "ret_value", scope: !4359, file: !1079, line: 216, type: !206)
!4367 = !DILocalVariable(name: "value", scope: !4359, file: !1079, line: 217, type: !235)
!4368 = !DILocation(line: 0, scope: !4359)
!4369 = !DILocation(line: 217, column: 5, scope: !4359)
!4370 = !DILocation(line: 219, column: 18, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4359, file: !1079, line: 219, column: 9)
!4372 = !DILocation(line: 219, column: 9, scope: !4359)
!4373 = !DILocation(line: 223, column: 17, scope: !4359)
!4374 = !DILocation(line: 225, column: 44, scope: !4359)
!4375 = !DILocation(line: 225, column: 16, scope: !4359)
!4376 = !DILocation(line: 225, column: 14, scope: !4359)
!4377 = !DILocation(line: 227, column: 12, scope: !4359)
!4378 = !DILocation(line: 227, column: 5, scope: !4359)
!4379 = !DILocation(line: 228, column: 1, scope: !4359)
!4380 = distinct !DISubprogram(name: "hal_rtc_init", scope: !298, file: !298, line: 79, type: !4381, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4384)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!4383}
!4383 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_rtc_status_t", file: !301, line: 403, baseType: !300)
!4384 = !{!4385}
!4385 = !DILocalVariable(name: "ret", scope: !4380, file: !298, line: 81, type: !1988)
!4386 = !DILocation(line: 0, scope: !4380)
!4387 = !DILocation(line: 83, column: 11, scope: !4380)
!4388 = !DILocation(line: 85, column: 22, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4380, file: !298, line: 85, column: 9)
!4390 = !DILocation(line: 90, column: 1, scope: !4380)
!4391 = distinct !DISubprogram(name: "hal_rtc_deinit", scope: !298, file: !298, line: 92, type: !4381, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4392)
!4392 = !{!4393}
!4393 = !DILocalVariable(name: "ret", scope: !4391, file: !298, line: 94, type: !1988)
!4394 = !DILocation(line: 0, scope: !4391)
!4395 = !DILocation(line: 96, column: 11, scope: !4391)
!4396 = !DILocation(line: 98, column: 22, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4391, file: !298, line: 98, column: 9)
!4398 = !DILocation(line: 103, column: 1, scope: !4391)
!4399 = distinct !DISubprogram(name: "hal_rtc_set_time", scope: !298, file: !298, line: 105, type: !4400, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4414)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!4383, !4402}
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4404)
!4404 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_rtc_time_t", file: !312, line: 579, baseType: !4405)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 571, size: 56, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_sec", scope: !4405, file: !312, line: 572, baseType: !235, size: 8)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_min", scope: !4405, file: !312, line: 573, baseType: !235, size: 8, offset: 8)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_hour", scope: !4405, file: !312, line: 574, baseType: !235, size: 8, offset: 16)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_day", scope: !4405, file: !312, line: 575, baseType: !235, size: 8, offset: 24)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_mon", scope: !4405, file: !312, line: 576, baseType: !235, size: 8, offset: 32)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_week", scope: !4405, file: !312, line: 577, baseType: !235, size: 8, offset: 40)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_year", scope: !4405, file: !312, line: 578, baseType: !235, size: 8, offset: 48)
!4414 = !{!4415, !4416, !4417}
!4415 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !4399, file: !298, line: 105, type: !4402)
!4416 = !DILocalVariable(name: "ret", scope: !4399, file: !298, line: 107, type: !1988)
!4417 = !DILocalVariable(name: "status", scope: !4399, file: !298, line: 108, type: !4383)
!4418 = !DILocation(line: 0, scope: !4399)
!4419 = !DILocation(line: 111, column: 14, scope: !4399)
!4420 = !DILocation(line: 113, column: 38, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4399, file: !298, line: 113, column: 9)
!4422 = !DILocation(line: 113, column: 9, scope: !4399)
!4423 = !DILocation(line: 117, column: 35, scope: !4399)
!4424 = !DILocation(line: 118, column: 35, scope: !4399)
!4425 = !DILocation(line: 119, column: 35, scope: !4399)
!4426 = !DILocation(line: 120, column: 35, scope: !4399)
!4427 = !DILocation(line: 121, column: 35, scope: !4399)
!4428 = !DILocation(line: 122, column: 35, scope: !4399)
!4429 = !DILocation(line: 123, column: 35, scope: !4399)
!4430 = !DILocation(line: 117, column: 11, scope: !4399)
!4431 = !DILocation(line: 125, column: 22, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4399, file: !298, line: 125, column: 9)
!4433 = !DILocation(line: 130, column: 1, scope: !4399)
!4434 = distinct !DISubprogram(name: "hal_rtc_time_sanity", scope: !298, file: !298, line: 63, type: !4400, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4435)
!4435 = !{!4436}
!4436 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !4434, file: !298, line: 63, type: !4402)
!4437 = !DILocation(line: 0, scope: !4434)
!4438 = !DILocation(line: 66, column: 21, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4434, file: !298, line: 66, column: 9)
!4440 = !DILocation(line: 66, column: 31, scope: !4439)
!4441 = !DILocation(line: 66, column: 37, scope: !4439)
!4442 = !DILocation(line: 67, column: 22, scope: !4439)
!4443 = !DILocation(line: 67, column: 36, scope: !4439)
!4444 = !DILocation(line: 68, column: 22, scope: !4439)
!4445 = !DILocation(line: 68, column: 36, scope: !4439)
!4446 = !DILocation(line: 69, column: 21, scope: !4439)
!4447 = !DILocation(line: 69, column: 31, scope: !4439)
!4448 = !DILocation(line: 69, column: 36, scope: !4439)
!4449 = !DILocation(line: 70, column: 21, scope: !4439)
!4450 = !DILocation(line: 70, column: 31, scope: !4439)
!4451 = !DILocation(line: 70, column: 37, scope: !4439)
!4452 = !DILocation(line: 71, column: 21, scope: !4439)
!4453 = !DILocation(line: 71, column: 30, scope: !4439)
!4454 = !DILocation(line: 71, column: 36, scope: !4439)
!4455 = !DILocation(line: 72, column: 21, scope: !4439)
!4456 = !DILocation(line: 72, column: 30, scope: !4439)
!4457 = !DILocation(line: 66, column: 9, scope: !4434)
!4458 = !DILocation(line: 77, column: 1, scope: !4434)
!4459 = distinct !DISubprogram(name: "hal_rtc_get_time", scope: !298, file: !298, line: 132, type: !4460, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4463)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4383, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 32)
!4463 = !{!4464, !4465}
!4464 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !4459, file: !298, line: 132, type: !4462)
!4465 = !DILocalVariable(name: "ret", scope: !4459, file: !298, line: 134, type: !1988)
!4466 = !DILocation(line: 0, scope: !4459)
!4467 = !DILocation(line: 136, column: 37, scope: !4459)
!4468 = !DILocation(line: 137, column: 37, scope: !4459)
!4469 = !DILocation(line: 138, column: 37, scope: !4459)
!4470 = !DILocation(line: 139, column: 37, scope: !4459)
!4471 = !DILocation(line: 140, column: 37, scope: !4459)
!4472 = !DILocation(line: 141, column: 37, scope: !4459)
!4473 = !DILocation(line: 142, column: 37, scope: !4459)
!4474 = !DILocation(line: 136, column: 11, scope: !4459)
!4475 = !DILocation(line: 144, column: 22, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4459, file: !298, line: 144, column: 9)
!4477 = !DILocation(line: 150, column: 1, scope: !4459)
!4478 = distinct !DISubprogram(name: "hal_rtc_set_alarm", scope: !298, file: !298, line: 152, type: !4400, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4479)
!4479 = !{!4480, !4481, !4482}
!4480 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !4478, file: !298, line: 152, type: !4402)
!4481 = !DILocalVariable(name: "ret", scope: !4478, file: !298, line: 154, type: !1988)
!4482 = !DILocalVariable(name: "status", scope: !4478, file: !298, line: 155, type: !4383)
!4483 = !DILocation(line: 0, scope: !4478)
!4484 = !DILocation(line: 158, column: 14, scope: !4478)
!4485 = !DILocation(line: 160, column: 38, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4478, file: !298, line: 160, column: 9)
!4487 = !DILocation(line: 160, column: 9, scope: !4478)
!4488 = !DILocation(line: 164, column: 36, scope: !4478)
!4489 = !DILocation(line: 165, column: 36, scope: !4478)
!4490 = !DILocation(line: 166, column: 36, scope: !4478)
!4491 = !DILocation(line: 167, column: 36, scope: !4478)
!4492 = !DILocation(line: 168, column: 36, scope: !4478)
!4493 = !DILocation(line: 169, column: 36, scope: !4478)
!4494 = !DILocation(line: 170, column: 36, scope: !4478)
!4495 = !DILocation(line: 164, column: 11, scope: !4478)
!4496 = !DILocation(line: 173, column: 22, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4478, file: !298, line: 173, column: 9)
!4498 = !DILocation(line: 178, column: 1, scope: !4478)
!4499 = distinct !DISubprogram(name: "hal_rtc_get_alarm", scope: !298, file: !298, line: 180, type: !4460, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4500)
!4500 = !{!4501, !4502}
!4501 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !4499, file: !298, line: 180, type: !4462)
!4502 = !DILocalVariable(name: "ret", scope: !4499, file: !298, line: 182, type: !1988)
!4503 = !DILocation(line: 0, scope: !4499)
!4504 = !DILocation(line: 184, column: 38, scope: !4499)
!4505 = !DILocation(line: 185, column: 38, scope: !4499)
!4506 = !DILocation(line: 186, column: 38, scope: !4499)
!4507 = !DILocation(line: 187, column: 38, scope: !4499)
!4508 = !DILocation(line: 188, column: 38, scope: !4499)
!4509 = !DILocation(line: 189, column: 38, scope: !4499)
!4510 = !DILocation(line: 190, column: 38, scope: !4499)
!4511 = !DILocation(line: 184, column: 11, scope: !4499)
!4512 = !DILocation(line: 192, column: 22, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4499, file: !298, line: 192, column: 9)
!4514 = !DILocation(line: 197, column: 1, scope: !4499)
!4515 = distinct !DISubprogram(name: "hal_rtc_enable_alarm", scope: !298, file: !298, line: 199, type: !4381, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4516)
!4516 = !{!4517}
!4517 = !DILocalVariable(name: "ret", scope: !4515, file: !298, line: 201, type: !1988)
!4518 = !DILocation(line: 0, scope: !4515)
!4519 = !DILocation(line: 203, column: 11, scope: !4515)
!4520 = !DILocation(line: 205, column: 22, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4515, file: !298, line: 205, column: 9)
!4522 = !DILocation(line: 210, column: 1, scope: !4515)
!4523 = distinct !DISubprogram(name: "hal_rtc_disable_alarm", scope: !298, file: !298, line: 212, type: !4381, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4524)
!4524 = !{!4525}
!4525 = !DILocalVariable(name: "ret", scope: !4523, file: !298, line: 214, type: !1988)
!4526 = !DILocation(line: 0, scope: !4523)
!4527 = !DILocation(line: 216, column: 11, scope: !4523)
!4528 = !DILocation(line: 218, column: 22, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4523, file: !298, line: 218, column: 9)
!4530 = !DILocation(line: 223, column: 1, scope: !4523)
!4531 = distinct !DISubprogram(name: "hal_rtc_set_alarm_callback", scope: !298, file: !298, line: 225, type: !4532, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4535)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!4383, !4534, !141}
!4534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!4535 = !{!4536, !4537}
!4536 = !DILocalVariable(name: "callback_function", arg: 1, scope: !4531, file: !298, line: 225, type: !4534)
!4537 = !DILocalVariable(name: "user_data", arg: 2, scope: !4531, file: !298, line: 225, type: !141)
!4538 = !DILocation(line: 0, scope: !4531)
!4539 = !DILocation(line: 228, column: 30, scope: !4531)
!4540 = !DILocation(line: 229, column: 30, scope: !4531)
!4541 = !DILocation(line: 232, column: 5, scope: !4531)
!4542 = !DILocation(line: 233, column: 5, scope: !4531)
!4543 = !DILocation(line: 234, column: 5, scope: !4531)
!4544 = !DILocation(line: 236, column: 5, scope: !4531)
!4545 = distinct !DISubprogram(name: "hal_rtc_isr", scope: !298, file: !298, line: 49, type: !290, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4546)
!4546 = !{!4547, !4548}
!4547 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4545, file: !298, line: 49, type: !204)
!4548 = !DILocalVariable(name: "pRTCCtrlTypeDef", scope: !4545, file: !298, line: 51, type: !355)
!4549 = !DILocation(line: 0, scope: !4545)
!4550 = !DILocation(line: 56, column: 35, scope: !4545)
!4551 = !DILocation(line: 58, column: 9, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4545, file: !298, line: 58, column: 9)
!4553 = !DILocation(line: 58, column: 9, scope: !4545)
!4554 = !DILocation(line: 59, column: 34, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4552, file: !298, line: 58, column: 35)
!4556 = !DILocation(line: 59, column: 9, scope: !4555)
!4557 = !DILocation(line: 60, column: 5, scope: !4555)
!4558 = !DILocation(line: 61, column: 1, scope: !4545)
!4559 = distinct !DISubprogram(name: "hal_rtc_sleep", scope: !298, file: !298, line: 239, type: !4560, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!4383, !12}
!4562 = !{!4563, !4564, !4565}
!4563 = !DILocalVariable(name: "magic", arg: 1, scope: !4559, file: !298, line: 239, type: !12)
!4564 = !DILocalVariable(name: "ret", scope: !4559, file: !298, line: 241, type: !1988)
!4565 = !DILocalVariable(name: "irq_status", scope: !4559, file: !298, line: 242, type: !12)
!4566 = !DILocation(line: 0, scope: !4559)
!4567 = !DILocation(line: 242, column: 5, scope: !4559)
!4568 = !DILocation(line: 245, column: 5, scope: !4559)
!4569 = !DILocation(line: 247, column: 29, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4559, file: !298, line: 247, column: 9)
!4571 = !DILocation(line: 247, column: 9, scope: !4559)
!4572 = !DILocation(line: 248, column: 15, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4570, file: !298, line: 247, column: 39)
!4574 = !DILocation(line: 249, column: 26, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !298, line: 249, column: 13)
!4576 = !DILocation(line: 254, column: 41, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4570, file: !298, line: 253, column: 12)
!4578 = !DILocation(line: 254, column: 9, scope: !4577)
!4579 = !DILocation(line: 255, column: 9, scope: !4577)
!4580 = !DILocation(line: 259, column: 1, scope: !4559)
!4581 = distinct !DISubprogram(name: "hal_rtc_set_data", scope: !298, file: !298, line: 261, type: !4582, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4383, !3108, !635, !3108}
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DILocalVariable(name: "addr", arg: 1, scope: !4581, file: !298, line: 261, type: !3108)
!4586 = !DILocalVariable(name: "buf", arg: 2, scope: !4581, file: !298, line: 261, type: !635)
!4587 = !DILocalVariable(name: "len", arg: 3, scope: !4581, file: !298, line: 261, type: !3108)
!4588 = !DILocalVariable(name: "ret", scope: !4581, file: !298, line: 263, type: !1988)
!4589 = !DILocation(line: 0, scope: !4581)
!4590 = !DILocation(line: 265, column: 11, scope: !4581)
!4591 = !DILocation(line: 267, column: 22, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4581, file: !298, line: 267, column: 9)
!4593 = !DILocation(line: 272, column: 1, scope: !4581)
!4594 = distinct !DISubprogram(name: "hal_rtc_get_data", scope: !298, file: !298, line: 274, type: !4595, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4597)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!4383, !3108, !601, !3108}
!4597 = !{!4598, !4599, !4600, !4601}
!4598 = !DILocalVariable(name: "addr", arg: 1, scope: !4594, file: !298, line: 274, type: !3108)
!4599 = !DILocalVariable(name: "buf", arg: 2, scope: !4594, file: !298, line: 274, type: !601)
!4600 = !DILocalVariable(name: "len", arg: 3, scope: !4594, file: !298, line: 274, type: !3108)
!4601 = !DILocalVariable(name: "ret", scope: !4594, file: !298, line: 276, type: !1988)
!4602 = !DILocation(line: 0, scope: !4594)
!4603 = !DILocation(line: 278, column: 11, scope: !4594)
!4604 = !DILocation(line: 280, column: 22, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4594, file: !298, line: 280, column: 9)
!4606 = !DILocation(line: 285, column: 1, scope: !4594)
!4607 = distinct !DISubprogram(name: "hal_rtc_clear_data", scope: !298, file: !298, line: 287, type: !4608, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4610)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4383, !3108, !3108}
!4610 = !{!4611, !4612, !4613}
!4611 = !DILocalVariable(name: "addr", arg: 1, scope: !4607, file: !298, line: 287, type: !3108)
!4612 = !DILocalVariable(name: "len", arg: 2, scope: !4607, file: !298, line: 287, type: !3108)
!4613 = !DILocalVariable(name: "ret", scope: !4607, file: !298, line: 289, type: !1988)
!4614 = !DILocation(line: 0, scope: !4607)
!4615 = !DILocation(line: 291, column: 11, scope: !4607)
!4616 = !DILocation(line: 293, column: 22, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4607, file: !298, line: 293, column: 9)
!4618 = !DILocation(line: 298, column: 1, scope: !4607)
!4619 = distinct !DISubprogram(name: "hal_rtc_get_f32k_frequency", scope: !298, file: !298, line: 300, type: !4620, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !4622)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!4383, !3185}
!4622 = !{!4623, !4624, !4625, !4626, !4627}
!4623 = !DILocalVariable(name: "frequency", arg: 1, scope: !4619, file: !298, line: 300, type: !3185)
!4624 = !DILocalVariable(name: "frequency_cr", scope: !4619, file: !298, line: 302, type: !12)
!4625 = !DILocalVariable(name: "measure_result", scope: !4619, file: !298, line: 303, type: !12)
!4626 = !DILocalVariable(name: "cr_data", scope: !4619, file: !298, line: 304, type: !12)
!4627 = !DILocalVariable(name: "data", scope: !4619, file: !298, line: 305, type: !12)
!4628 = !DILocation(line: 0, scope: !4619)
!4629 = !DILocation(line: 305, column: 5, scope: !4619)
!4630 = !DILocation(line: 305, column: 14, scope: !4619)
!4631 = !DILocation(line: 308, column: 5, scope: !4619)
!4632 = !DILocation(line: 309, column: 5, scope: !4619)
!4633 = !DILocation(line: 310, column: 5, scope: !4619)
!4634 = !DILocation(line: 312, column: 15, scope: !4619)
!4635 = !DILocation(line: 313, column: 13, scope: !4619)
!4636 = !DILocation(line: 314, column: 9, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4619, file: !298, line: 314, column: 9)
!4638 = !DILocation(line: 314, column: 9, scope: !4619)
!4639 = !DILocation(line: 316, column: 17, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !298, line: 314, column: 20)
!4641 = !DILocation(line: 317, column: 5, scope: !4640)
!4642 = !DILocation(line: 319, column: 17, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !298, line: 317, column: 27)
!4644 = distinct !DILexicalBlock(scope: !4637, file: !298, line: 317, column: 16)
!4645 = !DILocation(line: 320, column: 5, scope: !4643)
!4646 = !DILocation(line: 321, column: 38, scope: !4619)
!4647 = !DILocation(line: 324, column: 6, scope: !4619)
!4648 = !DILocation(line: 324, column: 17, scope: !4619)
!4649 = !DILocation(line: 326, column: 5, scope: !4619)
!4650 = !DILocation(line: 327, column: 24, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4619, file: !298, line: 326, column: 42)
!4652 = !DILocation(line: 326, column: 27, scope: !4619)
!4653 = !DILocation(line: 326, column: 12, scope: !4619)
!4654 = distinct !{!4654, !4649, !4655}
!4655 = !DILocation(line: 328, column: 5, scope: !4619)
!4656 = !DILocation(line: 330, column: 22, scope: !4619)
!4657 = !DILocation(line: 330, column: 34, scope: !4619)
!4658 = !DILocation(line: 332, column: 31, scope: !4619)
!4659 = !DILocation(line: 332, column: 16, scope: !4619)
!4660 = !DILocation(line: 335, column: 1, scope: !4619)
!4661 = !DILocation(line: 334, column: 5, scope: !4619)
!4662 = distinct !DISubprogram(name: "hal_uart_init", scope: !409, file: !409, line: 234, type: !4663, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4667)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!4665, !472, !4666}
!4665 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !412, line: 351, baseType: !411)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 32)
!4667 = !{!4668, !4669}
!4668 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4662, file: !409, line: 234, type: !472)
!4669 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4662, file: !409, line: 234, type: !4666)
!4670 = !DILocation(line: 0, scope: !4662)
!4671 = !DILocation(line: 236, column: 10, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4662, file: !409, line: 236, column: 9)
!4673 = !DILocation(line: 236, column: 9, scope: !4662)
!4674 = !DILocation(line: 239, column: 41, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4662, file: !409, line: 239, column: 9)
!4676 = !DILocation(line: 239, column: 9, scope: !4662)
!4677 = !DILocation(line: 242, column: 5, scope: !4662)
!4678 = !DILocation(line: 243, column: 45, scope: !4662)
!4679 = !DILocation(line: 243, column: 12, scope: !4662)
!4680 = !DILocation(line: 244, column: 12, scope: !4662)
!4681 = !DILocation(line: 243, column: 5, scope: !4662)
!4682 = !DILocation(line: 245, column: 58, scope: !4662)
!4683 = !DILocation(line: 246, column: 30, scope: !4662)
!4684 = !{i32 0, i32 2}
!4685 = !DILocation(line: 246, column: 5, scope: !4662)
!4686 = !DILocation(line: 247, column: 5, scope: !4662)
!4687 = !DILocation(line: 249, column: 31, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4662, file: !409, line: 249, column: 9)
!4689 = !DILocation(line: 249, column: 28, scope: !4688)
!4690 = !DILocation(line: 261, column: 1, scope: !4662)
!4691 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !409, file: !409, line: 93, type: !4692, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4696)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!144, !472, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 32)
!4695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!4696 = !{!4697, !4698}
!4697 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4691, file: !409, line: 93, type: !472)
!4698 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4691, file: !409, line: 93, type: !4694)
!4699 = !DILocation(line: 0, scope: !4691)
!4700 = !DILocation(line: 95, column: 10, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4691, file: !409, line: 95, column: 9)
!4702 = !DILocation(line: 95, column: 9, scope: !4691)
!4703 = !DILocation(line: 101, column: 23, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4691, file: !409, line: 101, column: 9)
!4705 = !DILocation(line: 101, column: 32, scope: !4704)
!4706 = !DILocation(line: 101, column: 60, scope: !4704)
!4707 = !DILocation(line: 102, column: 27, scope: !4704)
!4708 = !DILocation(line: 102, column: 34, scope: !4704)
!4709 = !DILocation(line: 102, column: 58, scope: !4704)
!4710 = !DILocation(line: 103, column: 27, scope: !4704)
!4711 = !DILocation(line: 103, column: 36, scope: !4704)
!4712 = !DILocation(line: 103, column: 59, scope: !4704)
!4713 = !DILocation(line: 104, column: 27, scope: !4704)
!4714 = !DILocation(line: 104, column: 39, scope: !4704)
!4715 = !DILocation(line: 101, column: 9, scope: !4691)
!4716 = !DILocation(line: 109, column: 1, scope: !4691)
!4717 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !409, file: !409, line: 139, type: !4718, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!3038, !472}
!4720 = !{!4721}
!4721 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4717, file: !409, line: 139, type: !472)
!4722 = !DILocation(line: 0, scope: !4717)
!4723 = !DILocation(line: 141, column: 24, scope: !4717)
!4724 = !DILocation(line: 141, column: 12, scope: !4717)
!4725 = !DILocation(line: 141, column: 5, scope: !4717)
!4726 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !409, file: !409, line: 593, type: !4727, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4729)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!4665, !472, !4694}
!4729 = !{!4730, !4731}
!4730 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4726, file: !409, line: 593, type: !472)
!4731 = !DILocalVariable(name: "config", arg: 2, scope: !4726, file: !409, line: 593, type: !4694)
!4732 = !DILocation(line: 0, scope: !4726)
!4733 = !DILocation(line: 595, column: 10, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4726, file: !409, line: 595, column: 9)
!4735 = !DILocation(line: 595, column: 9, scope: !4726)
!4736 = !DILocation(line: 598, column: 45, scope: !4726)
!4737 = !DILocation(line: 598, column: 12, scope: !4726)
!4738 = !DILocation(line: 598, column: 59, scope: !4726)
!4739 = !DILocation(line: 598, column: 5, scope: !4726)
!4740 = !DILocation(line: 599, column: 23, scope: !4726)
!4741 = !DILocation(line: 600, column: 59, scope: !4726)
!4742 = !DILocation(line: 600, column: 23, scope: !4726)
!4743 = !DILocation(line: 601, column: 62, scope: !4726)
!4744 = !DILocation(line: 601, column: 23, scope: !4726)
!4745 = !DILocation(line: 602, column: 57, scope: !4726)
!4746 = !DILocation(line: 602, column: 23, scope: !4726)
!4747 = !DILocation(line: 603, column: 58, scope: !4726)
!4748 = !DILocation(line: 603, column: 23, scope: !4726)
!4749 = !DILocation(line: 599, column: 5, scope: !4726)
!4750 = !DILocation(line: 604, column: 5, scope: !4726)
!4751 = !DILocation(line: 605, column: 1, scope: !4726)
!4752 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !409, file: !409, line: 145, type: !4753, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!12, !487}
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4752, file: !409, line: 145, type: !487)
!4757 = !DILocalVariable(name: "baudrate_tbl", scope: !4752, file: !409, line: 147, type: !4758)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, elements: !4759)
!4759 = !{!4760}
!4760 = !DISubrange(count: 13)
!4761 = !DILocation(line: 0, scope: !4752)
!4762 = !DILocation(line: 147, column: 14, scope: !4752)
!4763 = !DILocation(line: 151, column: 12, scope: !4752)
!4764 = !DILocation(line: 151, column: 5, scope: !4752)
!4765 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !409, file: !409, line: 155, type: !4766, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4768)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!3108, !489}
!4768 = !{!4769, !4770}
!4769 = !DILocalVariable(name: "word_length", arg: 1, scope: !4765, file: !409, line: 155, type: !489)
!4770 = !DILocalVariable(name: "databit_tbl", scope: !4765, file: !409, line: 157, type: !4771)
!4771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3108, size: 64, elements: !274)
!4772 = !DILocation(line: 0, scope: !4765)
!4773 = !DILocation(line: 157, column: 14, scope: !4765)
!4774 = !DILocation(line: 160, column: 12, scope: !4765)
!4775 = !DILocation(line: 160, column: 5, scope: !4765)
!4776 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !409, file: !409, line: 164, type: !4777, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4779)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!3108, !493}
!4779 = !{!4780, !4781}
!4780 = !DILocalVariable(name: "parity", arg: 1, scope: !4776, file: !409, line: 164, type: !493)
!4781 = !DILocalVariable(name: "parity_tbl", scope: !4776, file: !409, line: 166, type: !4782)
!4782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3108, size: 80, elements: !278)
!4783 = !DILocation(line: 0, scope: !4776)
!4784 = !DILocation(line: 166, column: 14, scope: !4776)
!4785 = !DILocation(line: 169, column: 12, scope: !4776)
!4786 = !DILocation(line: 169, column: 5, scope: !4776)
!4787 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !409, file: !409, line: 173, type: !4788, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4790)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!3108, !491}
!4790 = !{!4791, !4792}
!4791 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4787, file: !409, line: 173, type: !491)
!4792 = !DILocalVariable(name: "stopbit_tbl", scope: !4787, file: !409, line: 175, type: !4793)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3108, size: 48, elements: !653)
!4794 = !DILocation(line: 0, scope: !4787)
!4795 = !DILocation(line: 175, column: 14, scope: !4787)
!4796 = !DILocation(line: 178, column: 12, scope: !4787)
!4797 = !DILocation(line: 178, column: 5, scope: !4787)
!4798 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !409, file: !409, line: 87, type: !4799, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4801)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!144, !472}
!4801 = !{!4802}
!4802 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4798, file: !409, line: 87, type: !472)
!4803 = !DILocation(line: 0, scope: !4798)
!4804 = !DILocation(line: 89, column: 23, scope: !4798)
!4805 = !DILocation(line: 89, column: 5, scope: !4798)
!4806 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !409, file: !409, line: 264, type: !4807, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!4665, !472}
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4806, file: !409, line: 264, type: !472)
!4811 = !DILocation(line: 0, scope: !4806)
!4812 = !DILocation(line: 266, column: 10, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4806, file: !409, line: 266, column: 9)
!4814 = !DILocation(line: 266, column: 9, scope: !4806)
!4815 = !DILocation(line: 269, column: 41, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4806, file: !409, line: 269, column: 9)
!4817 = !DILocation(line: 269, column: 62, scope: !4816)
!4818 = !DILocation(line: 269, column: 9, scope: !4806)
!4819 = !DILocation(line: 272, column: 5, scope: !4806)
!4820 = !DILocation(line: 275, column: 22, scope: !4806)
!4821 = !DILocation(line: 275, column: 5, scope: !4806)
!4822 = !DILocation(line: 284, column: 5, scope: !4806)
!4823 = !DILocation(line: 286, column: 5, scope: !4806)
!4824 = !DILocation(line: 287, column: 1, scope: !4806)
!4825 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !409, file: !409, line: 290, type: !4826, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4828)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{null, !472, !461}
!4828 = !{!4829, !4830, !4831}
!4829 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4825, file: !409, line: 290, type: !472)
!4830 = !DILocalVariable(name: "byte", arg: 2, scope: !4825, file: !409, line: 290, type: !461)
!4831 = !DILocalVariable(name: "int_no", scope: !4825, file: !409, line: 292, type: !3038)
!4832 = !DILocation(line: 0, scope: !4825)
!4833 = !DILocation(line: 292, column: 26, scope: !4825)
!4834 = !DILocation(line: 294, column: 16, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4825, file: !409, line: 294, column: 9)
!4836 = !DILocation(line: 294, column: 9, scope: !4825)
!4837 = !DILocation(line: 295, column: 9, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !409, line: 294, column: 34)
!4839 = !DILocation(line: 296, column: 5, scope: !4838)
!4840 = !DILocation(line: 299, column: 1, scope: !4825)
!4841 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !409, file: !409, line: 302, type: !4842, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!12, !472, !3245, !12}
!4844 = !{!4845, !4846, !4847, !4848, !4849}
!4845 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4841, file: !409, line: 302, type: !472)
!4846 = !DILocalVariable(name: "data", arg: 2, scope: !4841, file: !409, line: 302, type: !3245)
!4847 = !DILocalVariable(name: "size", arg: 3, scope: !4841, file: !409, line: 302, type: !12)
!4848 = !DILocalVariable(name: "int_no", scope: !4841, file: !409, line: 304, type: !3038)
!4849 = !DILocalVariable(name: "index", scope: !4841, file: !409, line: 305, type: !12)
!4850 = !DILocation(line: 0, scope: !4841)
!4851 = !DILocation(line: 304, column: 26, scope: !4841)
!4852 = !DILocation(line: 307, column: 14, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4841, file: !409, line: 307, column: 9)
!4854 = !DILocation(line: 307, column: 9, scope: !4841)
!4855 = !DILocation(line: 313, column: 53, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4857, file: !409, line: 312, column: 48)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !409, line: 312, column: 9)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !409, line: 312, column: 9)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !409, line: 311, column: 33)
!4860 = distinct !DILexicalBlock(scope: !4841, file: !409, line: 311, column: 9)
!4861 = !DILocation(line: 313, column: 13, scope: !4856)
!4862 = !DILocation(line: 312, column: 44, scope: !4857)
!4863 = !DILocation(line: 312, column: 31, scope: !4857)
!4864 = !DILocation(line: 312, column: 9, scope: !4858)
!4865 = distinct !{!4865, !4864, !4866}
!4866 = !DILocation(line: 314, column: 9, scope: !4858)
!4867 = !DILocation(line: 318, column: 1, scope: !4841)
!4868 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !409, file: !409, line: 320, type: !4842, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4869)
!4869 = !{!4870, !4871, !4872, !4873, !4874, !4875}
!4870 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4868, file: !409, line: 320, type: !472)
!4871 = !DILocalVariable(name: "data", arg: 2, scope: !4868, file: !409, line: 320, type: !3245)
!4872 = !DILocalVariable(name: "size", arg: 3, scope: !4868, file: !409, line: 320, type: !12)
!4873 = !DILocalVariable(name: "actual_space", scope: !4868, file: !409, line: 322, type: !12)
!4874 = !DILocalVariable(name: "send_size", scope: !4868, file: !409, line: 322, type: !12)
!4875 = !DILocalVariable(name: "ch", scope: !4868, file: !409, line: 323, type: !4876)
!4876 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !33, line: 144, baseType: !32)
!4877 = !DILocation(line: 0, scope: !4868)
!4878 = !DILocation(line: 322, column: 5, scope: !4868)
!4879 = !DILocation(line: 328, column: 10, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4868, file: !409, line: 328, column: 9)
!4881 = !DILocation(line: 328, column: 9, scope: !4868)
!4882 = !DILocation(line: 332, column: 15, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4868, file: !409, line: 332, column: 9)
!4884 = !DILocation(line: 332, column: 24, scope: !4883)
!4885 = !DILocation(line: 335, column: 42, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4868, file: !409, line: 335, column: 9)
!4887 = !DILocation(line: 335, column: 9, scope: !4868)
!4888 = !DILocation(line: 349, column: 30, scope: !4868)
!4889 = !DILocation(line: 349, column: 5, scope: !4868)
!4890 = !DILocation(line: 350, column: 9, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4868, file: !409, line: 350, column: 9)
!4892 = !DILocation(line: 350, column: 22, scope: !4891)
!4893 = !DILocation(line: 355, column: 5, scope: !4868)
!4894 = !DILocation(line: 357, column: 22, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4868, file: !409, line: 357, column: 9)
!4896 = !DILocation(line: 357, column: 19, scope: !4895)
!4897 = !DILocation(line: 357, column: 9, scope: !4868)
!4898 = !DILocation(line: 358, column: 14, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4895, file: !409, line: 357, column: 36)
!4900 = !{i32 14, i32 18}
!4901 = !DILocation(line: 359, column: 9, scope: !4899)
!4902 = !DILocation(line: 360, column: 5, scope: !4899)
!4903 = !DILocation(line: 362, column: 1, scope: !4868)
!4904 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !409, file: !409, line: 191, type: !4905, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4907)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!4876, !3038, !144}
!4907 = !{!4908, !4909, !4910}
!4908 = !DILocalVariable(name: "port", arg: 1, scope: !4904, file: !409, line: 191, type: !3038)
!4909 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4904, file: !409, line: 191, type: !144)
!4910 = !DILocalVariable(name: "ch", scope: !4904, file: !409, line: 193, type: !4876)
!4911 = !DILocation(line: 0, scope: !4904)
!4912 = !DILocation(line: 195, column: 14, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4904, file: !409, line: 195, column: 9)
!4914 = !DILocation(line: 195, column: 9, scope: !4904)
!4915 = !DILocation(line: 209, column: 5, scope: !4904)
!4916 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !409, file: !409, line: 365, type: !4917, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4919)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!461, !472}
!4919 = !{!4920, !4921}
!4920 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4916, file: !409, line: 365, type: !472)
!4921 = !DILocalVariable(name: "int_no", scope: !4916, file: !409, line: 367, type: !3038)
!4922 = !DILocation(line: 0, scope: !4916)
!4923 = !DILocation(line: 367, column: 26, scope: !4916)
!4924 = !DILocation(line: 369, column: 16, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4916, file: !409, line: 369, column: 9)
!4926 = !DILocation(line: 369, column: 9, scope: !4916)
!4927 = !DILocation(line: 370, column: 22, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4925, file: !409, line: 369, column: 33)
!4929 = !DILocation(line: 370, column: 9, scope: !4928)
!4930 = !DILocation(line: 0, scope: !4925)
!4931 = !DILocation(line: 375, column: 1, scope: !4916)
!4932 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !409, file: !409, line: 377, type: !4933, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4935)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!12, !472}
!4935 = !{!4936, !4937}
!4936 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4932, file: !409, line: 377, type: !472)
!4937 = !DILocalVariable(name: "int_no", scope: !4932, file: !409, line: 379, type: !3038)
!4938 = !DILocation(line: 0, scope: !4932)
!4939 = !DILocation(line: 379, column: 26, scope: !4932)
!4940 = !DILocation(line: 381, column: 16, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4932, file: !409, line: 381, column: 9)
!4942 = !DILocation(line: 381, column: 9, scope: !4932)
!4943 = !DILocation(line: 382, column: 16, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4941, file: !409, line: 381, column: 33)
!4945 = !DILocation(line: 382, column: 9, scope: !4944)
!4946 = !DILocation(line: 0, scope: !4941)
!4947 = !DILocation(line: 387, column: 1, scope: !4932)
!4948 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !409, file: !409, line: 390, type: !4949, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4951)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!12, !472, !512, !12}
!4951 = !{!4952, !4953, !4954, !4955, !4956}
!4952 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4948, file: !409, line: 390, type: !472)
!4953 = !DILocalVariable(name: "buffer", arg: 2, scope: !4948, file: !409, line: 390, type: !512)
!4954 = !DILocalVariable(name: "size", arg: 3, scope: !4948, file: !409, line: 390, type: !12)
!4955 = !DILocalVariable(name: "int_no", scope: !4948, file: !409, line: 392, type: !3038)
!4956 = !DILocalVariable(name: "index", scope: !4948, file: !409, line: 393, type: !12)
!4957 = !DILocation(line: 0, scope: !4948)
!4958 = !DILocation(line: 392, column: 26, scope: !4948)
!4959 = !DILocation(line: 395, column: 16, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4948, file: !409, line: 395, column: 9)
!4961 = !DILocation(line: 395, column: 9, scope: !4948)
!4962 = !DILocation(line: 401, column: 38, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !409, line: 400, column: 48)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !409, line: 400, column: 9)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !409, line: 400, column: 9)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !409, line: 399, column: 33)
!4967 = distinct !DILexicalBlock(scope: !4948, file: !409, line: 399, column: 9)
!4968 = !DILocation(line: 401, column: 13, scope: !4963)
!4969 = !DILocation(line: 401, column: 27, scope: !4963)
!4970 = !DILocation(line: 400, column: 44, scope: !4964)
!4971 = !DILocation(line: 400, column: 31, scope: !4964)
!4972 = !DILocation(line: 400, column: 9, scope: !4965)
!4973 = distinct !{!4973, !4972, !4974}
!4974 = !DILocation(line: 402, column: 9, scope: !4965)
!4975 = !DILocation(line: 406, column: 1, scope: !4948)
!4976 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !409, file: !409, line: 408, type: !4949, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !4977)
!4977 = !{!4978, !4979, !4980, !4981, !4982, !4983}
!4978 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4976, file: !409, line: 408, type: !472)
!4979 = !DILocalVariable(name: "buffer", arg: 2, scope: !4976, file: !409, line: 408, type: !512)
!4980 = !DILocalVariable(name: "size", arg: 3, scope: !4976, file: !409, line: 408, type: !12)
!4981 = !DILocalVariable(name: "actual_size", scope: !4976, file: !409, line: 410, type: !12)
!4982 = !DILocalVariable(name: "receive_size", scope: !4976, file: !409, line: 410, type: !12)
!4983 = !DILocalVariable(name: "ch", scope: !4976, file: !409, line: 411, type: !4876)
!4984 = !DILocation(line: 0, scope: !4976)
!4985 = !DILocation(line: 410, column: 5, scope: !4976)
!4986 = !DILocation(line: 413, column: 10, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4976, file: !409, line: 413, column: 9)
!4988 = !DILocation(line: 413, column: 9, scope: !4976)
!4989 = !DILocation(line: 417, column: 17, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4976, file: !409, line: 417, column: 9)
!4991 = !DILocation(line: 417, column: 26, scope: !4990)
!4992 = !DILocation(line: 421, column: 30, scope: !4976)
!4993 = !DILocation(line: 421, column: 5, scope: !4976)
!4994 = !DILocation(line: 422, column: 9, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4976, file: !409, line: 422, column: 9)
!4996 = !DILocation(line: 422, column: 21, scope: !4995)
!4997 = !DILocation(line: 427, column: 5, scope: !4976)
!4998 = !DILocation(line: 429, column: 25, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4976, file: !409, line: 429, column: 9)
!5000 = !DILocation(line: 429, column: 22, scope: !4999)
!5001 = !DILocation(line: 429, column: 9, scope: !4976)
!5002 = !DILocation(line: 430, column: 14, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4999, file: !409, line: 429, column: 38)
!5004 = !DILocation(line: 431, column: 9, scope: !5003)
!5005 = !DILocation(line: 432, column: 5, scope: !5003)
!5006 = !DILocation(line: 435, column: 1, scope: !4976)
!5007 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !409, file: !409, line: 438, type: !4933, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5008)
!5008 = !{!5009, !5010}
!5009 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5007, file: !409, line: 438, type: !472)
!5010 = !DILocalVariable(name: "length", scope: !5007, file: !409, line: 440, type: !12)
!5011 = !DILocation(line: 0, scope: !5007)
!5012 = !DILocation(line: 440, column: 5, scope: !5007)
!5013 = !DILocation(line: 440, column: 14, scope: !5007)
!5014 = !DILocation(line: 442, column: 10, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5007, file: !409, line: 442, column: 9)
!5016 = !DILocation(line: 442, column: 9, scope: !5007)
!5017 = !DILocation(line: 446, column: 30, scope: !5007)
!5018 = !DILocation(line: 446, column: 5, scope: !5007)
!5019 = !DILocation(line: 447, column: 12, scope: !5007)
!5020 = !DILocation(line: 447, column: 5, scope: !5007)
!5021 = !DILocation(line: 448, column: 1, scope: !5007)
!5022 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !409, file: !409, line: 451, type: !4933, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5023)
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5022, file: !409, line: 451, type: !472)
!5025 = !DILocalVariable(name: "length", scope: !5022, file: !409, line: 453, type: !12)
!5026 = !DILocation(line: 0, scope: !5022)
!5027 = !DILocation(line: 453, column: 5, scope: !5022)
!5028 = !DILocation(line: 453, column: 14, scope: !5022)
!5029 = !DILocation(line: 455, column: 10, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5022, file: !409, line: 455, column: 9)
!5031 = !DILocation(line: 455, column: 9, scope: !5022)
!5032 = !DILocation(line: 459, column: 30, scope: !5022)
!5033 = !DILocation(line: 459, column: 5, scope: !5022)
!5034 = !DILocation(line: 461, column: 12, scope: !5022)
!5035 = !DILocation(line: 461, column: 5, scope: !5022)
!5036 = !DILocation(line: 462, column: 1, scope: !5022)
!5037 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !409, file: !409, line: 543, type: !5038, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!4665, !472, !500, !141}
!5040 = !{!5041, !5042, !5043, !5044}
!5041 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5037, file: !409, line: 543, type: !472)
!5042 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5037, file: !409, line: 544, type: !500)
!5043 = !DILocalVariable(name: "user_data", arg: 3, scope: !5037, file: !409, line: 545, type: !141)
!5044 = !DILocalVariable(name: "ch", scope: !5037, file: !409, line: 547, type: !4876)
!5045 = !DILocation(line: 0, scope: !5037)
!5046 = !DILocation(line: 549, column: 10, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5037, file: !409, line: 549, column: 9)
!5048 = !DILocation(line: 549, column: 9, scope: !5037)
!5049 = !DILocation(line: 556, column: 53, scope: !5037)
!5050 = !DILocation(line: 556, column: 62, scope: !5037)
!5051 = !DILocation(line: 557, column: 53, scope: !5037)
!5052 = !DILocation(line: 557, column: 63, scope: !5037)
!5053 = !DILocation(line: 558, column: 37, scope: !5037)
!5054 = !DILocation(line: 558, column: 54, scope: !5037)
!5055 = !DILocation(line: 560, column: 39, scope: !5037)
!5056 = !DILocation(line: 561, column: 39, scope: !5037)
!5057 = !DILocation(line: 560, column: 5, scope: !5037)
!5058 = !DILocation(line: 562, column: 5, scope: !5037)
!5059 = !DILocation(line: 564, column: 44, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5037, file: !409, line: 564, column: 9)
!5061 = !DILocation(line: 564, column: 9, scope: !5037)
!5062 = !DILocation(line: 565, column: 9, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5060, file: !409, line: 564, column: 59)
!5064 = !DILocation(line: 566, column: 5, scope: !5063)
!5065 = !DILocation(line: 567, column: 9, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5060, file: !409, line: 566, column: 12)
!5067 = !DILocation(line: 569, column: 10, scope: !5037)
!5068 = !DILocation(line: 570, column: 5, scope: !5037)
!5069 = !DILocation(line: 578, column: 5, scope: !5037)
!5070 = !DILocation(line: 579, column: 1, scope: !5037)
!5071 = !DILocation(line: 0, scope: !465)
!5072 = !DILocation(line: 539, column: 12, scope: !465)
!5073 = !DILocation(line: 539, column: 5, scope: !465)
!5074 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !409, file: !409, line: 511, type: !470, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5075)
!5075 = !{!5076}
!5076 = !DILocalVariable(name: "callback_context", scope: !5077, file: !409, line: 514, type: !5079)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !409, line: 513, column: 60)
!5078 = distinct !DILexicalBlock(scope: !5074, file: !409, line: 513, column: 9)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 32)
!5080 = !DILocation(line: 513, column: 42, scope: !5078)
!5081 = !DILocation(line: 513, column: 9, scope: !5074)
!5082 = !DILocation(line: 515, column: 39, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5077, file: !409, line: 515, column: 13)
!5084 = !DILocation(line: 515, column: 18, scope: !5083)
!5085 = !DILocation(line: 515, column: 13, scope: !5077)
!5086 = !DILocation(line: 516, column: 89, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5083, file: !409, line: 515, column: 49)
!5088 = !DILocation(line: 516, column: 13, scope: !5087)
!5089 = !DILocation(line: 517, column: 9, scope: !5087)
!5090 = !DILocation(line: 519, column: 32, scope: !5074)
!5091 = !DILocation(line: 519, column: 5, scope: !5074)
!5092 = !DILocation(line: 520, column: 1, scope: !5074)
!5093 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !409, file: !409, line: 523, type: !470, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5094)
!5094 = !{!5095}
!5095 = !DILocalVariable(name: "callback_context", scope: !5096, file: !409, line: 526, type: !5079)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !409, line: 525, column: 60)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !409, line: 525, column: 9)
!5098 = !DILocation(line: 525, column: 42, scope: !5097)
!5099 = !DILocation(line: 525, column: 9, scope: !5093)
!5100 = !DILocation(line: 527, column: 39, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5096, file: !409, line: 527, column: 13)
!5102 = !DILocation(line: 527, column: 18, scope: !5101)
!5103 = !DILocation(line: 527, column: 13, scope: !5096)
!5104 = !DILocation(line: 528, column: 89, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5101, file: !409, line: 527, column: 49)
!5106 = !DILocation(line: 528, column: 13, scope: !5105)
!5107 = !DILocation(line: 529, column: 9, scope: !5105)
!5108 = !DILocation(line: 531, column: 32, scope: !5093)
!5109 = !DILocation(line: 531, column: 5, scope: !5093)
!5110 = !DILocation(line: 532, column: 1, scope: !5093)
!5111 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !409, file: !409, line: 464, type: !5112, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5114)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{null, !3038, !144}
!5114 = !{!5115, !5116, !5117, !5118, !5119, !5121}
!5115 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5111, file: !409, line: 464, type: !3038)
!5116 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5111, file: !409, line: 464, type: !144)
!5117 = !DILocalVariable(name: "avail_size", scope: !5111, file: !409, line: 466, type: !12)
!5118 = !DILocalVariable(name: "avail_space", scope: !5111, file: !409, line: 466, type: !12)
!5119 = !DILocalVariable(name: "dma_config", scope: !5111, file: !409, line: 467, type: !5120)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 32)
!5121 = !DILocalVariable(name: "ch", scope: !5111, file: !409, line: 468, type: !4876)
!5122 = !DILocation(line: 0, scope: !5111)
!5123 = !DILocation(line: 466, column: 5, scope: !5111)
!5124 = !DILocation(line: 471, column: 9, scope: !5111)
!5125 = !DILocation(line: 472, column: 9, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !409, line: 471, column: 16)
!5127 = distinct !DILexicalBlock(scope: !5111, file: !409, line: 471, column: 9)
!5128 = !DILocation(line: 473, column: 13, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !409, line: 473, column: 13)
!5130 = !DILocation(line: 473, column: 39, scope: !5129)
!5131 = !DILocation(line: 473, column: 24, scope: !5129)
!5132 = !DILocation(line: 473, column: 13, scope: !5126)
!5133 = !DILocation(line: 478, column: 9, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5127, file: !409, line: 477, column: 12)
!5135 = !DILocation(line: 479, column: 13, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5134, file: !409, line: 479, column: 13)
!5137 = !DILocation(line: 479, column: 40, scope: !5136)
!5138 = !DILocation(line: 479, column: 77, scope: !5136)
!5139 = !DILocation(line: 479, column: 63, scope: !5136)
!5140 = !DILocation(line: 479, column: 25, scope: !5136)
!5141 = !DILocation(line: 479, column: 13, scope: !5134)
!5142 = !DILocation(line: 0, scope: !5127)
!5143 = !DILocation(line: 484, column: 1, scope: !5111)
!5144 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !409, file: !409, line: 486, type: !470, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5145)
!5145 = !{!5146}
!5146 = !DILocalVariable(name: "callback_context", scope: !5147, file: !409, line: 490, type: !5079)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !409, line: 489, column: 70)
!5148 = distinct !DILexicalBlock(scope: !5144, file: !409, line: 488, column: 9)
!5149 = !DILocation(line: 488, column: 43, scope: !5148)
!5150 = !DILocation(line: 488, column: 61, scope: !5148)
!5151 = !DILocation(line: 489, column: 14, scope: !5148)
!5152 = !DILocation(line: 489, column: 63, scope: !5148)
!5153 = !DILocation(line: 488, column: 9, scope: !5144)
!5154 = !DILocation(line: 491, column: 39, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5147, file: !409, line: 491, column: 13)
!5156 = !DILocation(line: 491, column: 18, scope: !5155)
!5157 = !DILocation(line: 491, column: 13, scope: !5147)
!5158 = !DILocation(line: 492, column: 88, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5155, file: !409, line: 491, column: 49)
!5160 = !DILocation(line: 492, column: 13, scope: !5159)
!5161 = !DILocation(line: 493, column: 9, scope: !5159)
!5162 = !DILocation(line: 495, column: 32, scope: !5144)
!5163 = !DILocation(line: 495, column: 5, scope: !5144)
!5164 = !DILocation(line: 496, column: 1, scope: !5144)
!5165 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !409, file: !409, line: 499, type: !470, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5166)
!5166 = !{!5167}
!5167 = !DILocalVariable(name: "callback_context", scope: !5168, file: !409, line: 503, type: !5079)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !409, line: 502, column: 70)
!5169 = distinct !DILexicalBlock(scope: !5165, file: !409, line: 501, column: 9)
!5170 = !DILocation(line: 501, column: 43, scope: !5169)
!5171 = !DILocation(line: 501, column: 61, scope: !5169)
!5172 = !DILocation(line: 502, column: 14, scope: !5169)
!5173 = !DILocation(line: 502, column: 63, scope: !5169)
!5174 = !DILocation(line: 501, column: 9, scope: !5165)
!5175 = !DILocation(line: 504, column: 39, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5168, file: !409, line: 504, column: 13)
!5177 = !DILocation(line: 504, column: 18, scope: !5176)
!5178 = !DILocation(line: 504, column: 13, scope: !5168)
!5179 = !DILocation(line: 505, column: 88, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5176, file: !409, line: 504, column: 49)
!5181 = !DILocation(line: 505, column: 13, scope: !5180)
!5182 = !DILocation(line: 506, column: 9, scope: !5180)
!5183 = !DILocation(line: 508, column: 32, scope: !5165)
!5184 = !DILocation(line: 508, column: 5, scope: !5165)
!5185 = !DILocation(line: 509, column: 1, scope: !5165)
!5186 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !409, file: !409, line: 582, type: !5187, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!4665, !472, !487}
!5189 = !{!5190, !5191}
!5190 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5186, file: !409, line: 582, type: !472)
!5191 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5186, file: !409, line: 582, type: !487)
!5192 = !DILocation(line: 0, scope: !5186)
!5193 = !DILocation(line: 584, column: 11, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5186, file: !409, line: 584, column: 9)
!5195 = !DILocation(line: 584, column: 46, scope: !5194)
!5196 = !DILocation(line: 588, column: 37, scope: !5186)
!5197 = !DILocation(line: 588, column: 50, scope: !5186)
!5198 = !DILocation(line: 588, column: 59, scope: !5186)
!5199 = !DILocation(line: 589, column: 12, scope: !5186)
!5200 = !DILocation(line: 589, column: 5, scope: !5186)
!5201 = !DILocation(line: 590, column: 1, scope: !5186)
!5202 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !409, file: !409, line: 608, type: !5203, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5207)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!4665, !472, !5205}
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 32)
!5206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!5207 = !{!5208, !5209}
!5208 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5202, file: !409, line: 608, type: !472)
!5209 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5202, file: !409, line: 608, type: !5205)
!5210 = !DILocation(line: 0, scope: !5202)
!5211 = !DILocation(line: 610, column: 10, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5202, file: !409, line: 610, column: 9)
!5213 = !DILocation(line: 610, column: 9, scope: !5202)
!5214 = !DILocation(line: 614, column: 10, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5202, file: !409, line: 614, column: 9)
!5216 = !DILocation(line: 614, column: 9, scope: !5202)
!5217 = !DILocation(line: 618, column: 37, scope: !5202)
!5218 = !DILocation(line: 618, column: 56, scope: !5202)
!5219 = !DILocation(line: 619, column: 45, scope: !5202)
!5220 = !DILocation(line: 619, column: 12, scope: !5202)
!5221 = !DILocation(line: 620, column: 12, scope: !5202)
!5222 = !DILocation(line: 619, column: 5, scope: !5202)
!5223 = !DILocation(line: 621, column: 5, scope: !5202)
!5224 = !DILocation(line: 622, column: 5, scope: !5202)
!5225 = !DILocation(line: 623, column: 33, scope: !5202)
!5226 = !DILocation(line: 624, column: 50, scope: !5202)
!5227 = !DILocation(line: 625, column: 50, scope: !5202)
!5228 = !DILocation(line: 626, column: 50, scope: !5202)
!5229 = !DILocation(line: 627, column: 50, scope: !5202)
!5230 = !DILocation(line: 628, column: 33, scope: !5202)
!5231 = !DILocation(line: 623, column: 5, scope: !5202)
!5232 = !DILocation(line: 630, column: 50, scope: !5202)
!5233 = !DILocation(line: 631, column: 50, scope: !5202)
!5234 = !DILocation(line: 632, column: 50, scope: !5202)
!5235 = !DILocation(line: 629, column: 5, scope: !5202)
!5236 = !DILocation(line: 634, column: 5, scope: !5202)
!5237 = !DILocation(line: 635, column: 1, scope: !5202)
!5238 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !409, file: !409, line: 112, type: !5239, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!144, !5205}
!5241 = !{!5242}
!5242 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5238, file: !409, line: 112, type: !5205)
!5243 = !DILocation(line: 0, scope: !5238)
!5244 = !DILocation(line: 114, column: 14, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5238, file: !409, line: 114, column: 9)
!5246 = !DILocation(line: 114, column: 9, scope: !5238)
!5247 = !DILocation(line: 117, column: 29, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5238, file: !409, line: 117, column: 9)
!5249 = !DILocation(line: 117, column: 14, scope: !5248)
!5250 = !DILocation(line: 117, column: 9, scope: !5238)
!5251 = !DILocation(line: 120, column: 21, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5238, file: !409, line: 120, column: 9)
!5253 = !DILocation(line: 120, column: 61, scope: !5252)
!5254 = !DILocation(line: 120, column: 47, scope: !5252)
!5255 = !DILocation(line: 120, column: 9, scope: !5238)
!5256 = !DILocation(line: 123, column: 61, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5238, file: !409, line: 123, column: 9)
!5258 = !DILocation(line: 123, column: 47, scope: !5257)
!5259 = !DILocation(line: 123, column: 9, scope: !5238)
!5260 = !DILocation(line: 126, column: 29, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5238, file: !409, line: 126, column: 9)
!5262 = !DILocation(line: 126, column: 14, scope: !5261)
!5263 = !DILocation(line: 126, column: 9, scope: !5238)
!5264 = !DILocation(line: 129, column: 21, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5238, file: !409, line: 129, column: 9)
!5266 = !DILocation(line: 129, column: 58, scope: !5265)
!5267 = !DILocation(line: 129, column: 44, scope: !5265)
!5268 = !DILocation(line: 129, column: 9, scope: !5238)
!5269 = !DILocation(line: 136, column: 1, scope: !5238)
!5270 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !409, file: !409, line: 182, type: !5271, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5273)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{!12, !12}
!5273 = !{!5274, !5275}
!5274 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5270, file: !409, line: 182, type: !12)
!5275 = !DILocalVariable(name: "ticks_per_us", scope: !5270, file: !409, line: 184, type: !12)
!5276 = !DILocation(line: 0, scope: !5270)
!5277 = !DILocation(line: 186, column: 20, scope: !5270)
!5278 = !DILocation(line: 186, column: 39, scope: !5270)
!5279 = !DILocation(line: 188, column: 25, scope: !5270)
!5280 = !DILocation(line: 188, column: 5, scope: !5270)
!5281 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !409, file: !409, line: 637, type: !4807, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5282)
!5282 = !{!5283, !5284}
!5283 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5281, file: !409, line: 637, type: !472)
!5284 = !DILocalVariable(name: "int_no", scope: !5281, file: !409, line: 639, type: !3038)
!5285 = !DILocation(line: 0, scope: !5281)
!5286 = !DILocation(line: 641, column: 10, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5281, file: !409, line: 641, column: 9)
!5288 = !DILocation(line: 641, column: 9, scope: !5281)
!5289 = !DILocation(line: 645, column: 14, scope: !5281)
!5290 = !DILocation(line: 646, column: 5, scope: !5281)
!5291 = !DILocation(line: 648, column: 5, scope: !5281)
!5292 = !DILocation(line: 649, column: 1, scope: !5281)
!5293 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !409, file: !409, line: 651, type: !5294, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5296)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!4665, !472, !235, !235, !235}
!5296 = !{!5297, !5298, !5299, !5300, !5301}
!5297 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5293, file: !409, line: 651, type: !472)
!5298 = !DILocalVariable(name: "xon", arg: 2, scope: !5293, file: !409, line: 652, type: !235)
!5299 = !DILocalVariable(name: "xoff", arg: 3, scope: !5293, file: !409, line: 653, type: !235)
!5300 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5293, file: !409, line: 654, type: !235)
!5301 = !DILocalVariable(name: "int_no", scope: !5293, file: !409, line: 656, type: !3038)
!5302 = !DILocation(line: 0, scope: !5293)
!5303 = !DILocation(line: 658, column: 10, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5293, file: !409, line: 658, column: 9)
!5305 = !DILocation(line: 658, column: 9, scope: !5293)
!5306 = !DILocation(line: 662, column: 14, scope: !5293)
!5307 = !DILocation(line: 663, column: 5, scope: !5293)
!5308 = !DILocation(line: 665, column: 5, scope: !5293)
!5309 = !DILocation(line: 666, column: 1, scope: !5293)
!5310 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !409, file: !409, line: 668, type: !4807, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5311)
!5311 = !{!5312, !5313}
!5312 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5310, file: !409, line: 668, type: !472)
!5313 = !DILocalVariable(name: "int_no", scope: !5310, file: !409, line: 670, type: !3038)
!5314 = !DILocation(line: 0, scope: !5310)
!5315 = !DILocation(line: 672, column: 10, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5310, file: !409, line: 672, column: 9)
!5317 = !DILocation(line: 672, column: 9, scope: !5310)
!5318 = !DILocation(line: 676, column: 14, scope: !5310)
!5319 = !DILocation(line: 677, column: 5, scope: !5310)
!5320 = !DILocation(line: 679, column: 5, scope: !5310)
!5321 = !DILocation(line: 680, column: 1, scope: !5310)
!5322 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !409, file: !409, line: 683, type: !5323, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !5325)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!4665, !472, !12}
!5325 = !{!5326, !5327}
!5326 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5322, file: !409, line: 683, type: !472)
!5327 = !DILocalVariable(name: "timeout", arg: 2, scope: !5322, file: !409, line: 683, type: !12)
!5328 = !DILocation(line: 0, scope: !5322)
!5329 = !DILocation(line: 685, column: 10, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5322, file: !409, line: 685, column: 9)
!5331 = !DILocation(line: 685, column: 9, scope: !5322)
!5332 = !DILocation(line: 689, column: 19, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5322, file: !409, line: 689, column: 9)
!5334 = !DILocation(line: 0, scope: !5333)
!5335 = !DILocation(line: 696, column: 1, scope: !5322)
!5336 = distinct !DISubprogram(name: "__io_putchar", scope: !522, file: !522, line: 72, type: !5337, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5339)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!66, !66}
!5339 = !{!5340}
!5340 = !DILocalVariable(name: "ch", arg: 1, scope: !5336, file: !522, line: 72, type: !66)
!5341 = !DILocation(line: 0, scope: !5336)
!5342 = !DILocation(line: 79, column: 35, scope: !5336)
!5343 = !DILocation(line: 79, column: 5, scope: !5336)
!5344 = !DILocation(line: 80, column: 5, scope: !5336)
!5345 = distinct !DISubprogram(name: "main", scope: !522, file: !522, line: 235, type: !3014, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2585)
!5346 = !DILocation(line: 238, column: 5, scope: !5345)
!5347 = !DILocation(line: 241, column: 5, scope: !5345)
!5348 = !DILocation(line: 319, column: 3, scope: !5349, inlinedAt: !5350)
!5349 = distinct !DISubprogram(name: "__enable_irq", scope: !2575, file: !2575, line: 317, type: !470, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2585)
!5350 = distinct !DILocation(line: 244, column: 5, scope: !5345)
!5351 = !{i64 515685}
!5352 = !DILocation(line: 496, column: 3, scope: !5353, inlinedAt: !5354)
!5353 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2575, file: !2575, line: 494, type: !470, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2585)
!5354 = distinct !DILocation(line: 245, column: 5, scope: !5345)
!5355 = !{i64 519960}
!5356 = !DILocation(line: 248, column: 5, scope: !5345)
!5357 = !DILocation(line: 251, column: 5, scope: !5345)
!5358 = !DILocation(line: 252, column: 5, scope: !5345)
!5359 = !DILocation(line: 254, column: 5, scope: !5345)
!5360 = !DILocation(line: 256, column: 5, scope: !5345)
!5361 = !DILocation(line: 256, column: 5, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !522, line: 256, column: 5)
!5363 = distinct !DILexicalBlock(scope: !5345, file: !522, line: 256, column: 5)
!5364 = distinct !{!5364, !5365, !5366}
!5365 = !DILocation(line: 256, column: 5, scope: !5363)
!5366 = !DILocation(line: 256, column: 13, scope: !5363)
!5367 = distinct !DISubprogram(name: "SystemClock_Config", scope: !522, file: !522, line: 110, type: !470, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2585)
!5368 = !DILocation(line: 112, column: 5, scope: !5367)
!5369 = !DILocation(line: 113, column: 1, scope: !5367)
!5370 = distinct !DISubprogram(name: "prvSetupHardware", scope: !522, file: !522, line: 120, type: !470, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !2585)
!5371 = !DILocation(line: 125, column: 5, scope: !5370)
!5372 = !DILocation(line: 128, column: 1, scope: !5370)
!5373 = distinct !DISubprogram(name: "rtc_set_alarm_example", scope: !522, file: !522, line: 179, type: !470, scopeLine: 180, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5374)
!5374 = !{!5375}
!5375 = !DILocalVariable(name: "rtc_time", scope: !5373, file: !522, line: 181, type: !5376)
!5376 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_rtc_time_t", file: !312, line: 579, baseType: !5377)
!5377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 571, size: 56, elements: !5378)
!5378 = !{!5379, !5380, !5381, !5382, !5383, !5384, !5385}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_sec", scope: !5377, file: !312, line: 572, baseType: !235, size: 8)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_min", scope: !5377, file: !312, line: 573, baseType: !235, size: 8, offset: 8)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_hour", scope: !5377, file: !312, line: 574, baseType: !235, size: 8, offset: 16)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_day", scope: !5377, file: !312, line: 575, baseType: !235, size: 8, offset: 24)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_mon", scope: !5377, file: !312, line: 576, baseType: !235, size: 8, offset: 32)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_week", scope: !5377, file: !312, line: 577, baseType: !235, size: 8, offset: 40)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "rtc_year", scope: !5377, file: !312, line: 578, baseType: !235, size: 8, offset: 48)
!5386 = !DILocation(line: 181, column: 5, scope: !5373)
!5387 = !DILocation(line: 181, column: 20, scope: !5373)
!5388 = !DILocation(line: 183, column: 5, scope: !5373)
!5389 = !DILocation(line: 186, column: 5, scope: !5373)
!5390 = !DILocation(line: 189, column: 5, scope: !5373)
!5391 = !DILocation(line: 190, column: 5, scope: !5373)
!5392 = !DILocation(line: 191, column: 65, scope: !5373)
!5393 = !DILocation(line: 191, column: 56, scope: !5373)
!5394 = !DILocation(line: 192, column: 21, scope: !5373)
!5395 = !DILocation(line: 192, column: 12, scope: !5373)
!5396 = !DILocation(line: 193, column: 21, scope: !5373)
!5397 = !DILocation(line: 193, column: 12, scope: !5373)
!5398 = !DILocation(line: 194, column: 21, scope: !5373)
!5399 = !DILocation(line: 194, column: 12, scope: !5373)
!5400 = !DILocation(line: 195, column: 21, scope: !5373)
!5401 = !DILocation(line: 195, column: 12, scope: !5373)
!5402 = !DILocation(line: 196, column: 21, scope: !5373)
!5403 = !DILocation(line: 196, column: 12, scope: !5373)
!5404 = !DILocation(line: 197, column: 21, scope: !5373)
!5405 = !DILocation(line: 197, column: 12, scope: !5373)
!5406 = !DILocation(line: 191, column: 5, scope: !5373)
!5407 = !DILocation(line: 200, column: 5, scope: !5373)
!5408 = !DILocation(line: 201, column: 5, scope: !5373)
!5409 = !DILocation(line: 202, column: 5, scope: !5373)
!5410 = !DILocation(line: 203, column: 71, scope: !5373)
!5411 = !DILocation(line: 203, column: 62, scope: !5373)
!5412 = !DILocation(line: 204, column: 21, scope: !5373)
!5413 = !DILocation(line: 204, column: 12, scope: !5373)
!5414 = !DILocation(line: 205, column: 21, scope: !5373)
!5415 = !DILocation(line: 205, column: 12, scope: !5373)
!5416 = !DILocation(line: 206, column: 21, scope: !5373)
!5417 = !DILocation(line: 206, column: 12, scope: !5373)
!5418 = !DILocation(line: 207, column: 21, scope: !5373)
!5419 = !DILocation(line: 207, column: 12, scope: !5373)
!5420 = !DILocation(line: 208, column: 21, scope: !5373)
!5421 = !DILocation(line: 208, column: 12, scope: !5373)
!5422 = !DILocation(line: 209, column: 21, scope: !5373)
!5423 = !DILocation(line: 209, column: 12, scope: !5373)
!5424 = !DILocation(line: 203, column: 5, scope: !5373)
!5425 = !DILocation(line: 211, column: 5, scope: !5373)
!5426 = !DILocation(line: 212, column: 5, scope: !5373)
!5427 = !DILocation(line: 213, column: 5, scope: !5373)
!5428 = !DILocation(line: 215, column: 5, scope: !5373)
!5429 = !DILocation(line: 215, column: 12, scope: !5373)
!5430 = !DILocation(line: 215, column: 30, scope: !5373)
!5431 = distinct !{!5431, !5428, !5432}
!5432 = !DILocation(line: 215, column: 35, scope: !5373)
!5433 = !DILocation(line: 216, column: 5, scope: !5373)
!5434 = !DILocation(line: 219, column: 5, scope: !5373)
!5435 = !DILocation(line: 220, column: 5, scope: !5373)
!5436 = !DILocation(line: 221, column: 69, scope: !5373)
!5437 = !DILocation(line: 221, column: 60, scope: !5373)
!5438 = !DILocation(line: 222, column: 21, scope: !5373)
!5439 = !DILocation(line: 222, column: 12, scope: !5373)
!5440 = !DILocation(line: 223, column: 21, scope: !5373)
!5441 = !DILocation(line: 223, column: 12, scope: !5373)
!5442 = !DILocation(line: 224, column: 21, scope: !5373)
!5443 = !DILocation(line: 224, column: 12, scope: !5373)
!5444 = !DILocation(line: 225, column: 21, scope: !5373)
!5445 = !DILocation(line: 225, column: 12, scope: !5373)
!5446 = !DILocation(line: 226, column: 21, scope: !5373)
!5447 = !DILocation(line: 226, column: 12, scope: !5373)
!5448 = !DILocation(line: 227, column: 21, scope: !5373)
!5449 = !DILocation(line: 227, column: 12, scope: !5373)
!5450 = !DILocation(line: 221, column: 5, scope: !5373)
!5451 = !DILocation(line: 229, column: 5, scope: !5373)
!5452 = !DILocation(line: 232, column: 5, scope: !5373)
!5453 = !DILocation(line: 233, column: 1, scope: !5373)
!5454 = distinct !DISubprogram(name: "rtc_fill_time", scope: !522, file: !522, line: 162, type: !5455, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5458)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{null, !5457, !512}
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 32)
!5458 = !{!5459, !5460}
!5459 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !5454, file: !522, line: 162, type: !5457)
!5460 = !DILocalVariable(name: "param", arg: 2, scope: !5454, file: !522, line: 162, type: !512)
!5461 = !DILocation(line: 0, scope: !5454)
!5462 = !DILocation(line: 164, column: 26, scope: !5454)
!5463 = !DILocation(line: 164, column: 15, scope: !5454)
!5464 = !DILocation(line: 164, column: 24, scope: !5454)
!5465 = !DILocation(line: 165, column: 25, scope: !5454)
!5466 = !DILocation(line: 165, column: 15, scope: !5454)
!5467 = !DILocation(line: 165, column: 23, scope: !5454)
!5468 = !DILocation(line: 166, column: 25, scope: !5454)
!5469 = !DILocation(line: 166, column: 15, scope: !5454)
!5470 = !DILocation(line: 166, column: 23, scope: !5454)
!5471 = !DILocation(line: 167, column: 26, scope: !5454)
!5472 = !DILocation(line: 167, column: 15, scope: !5454)
!5473 = !DILocation(line: 167, column: 24, scope: !5454)
!5474 = !DILocation(line: 168, column: 26, scope: !5454)
!5475 = !DILocation(line: 168, column: 15, scope: !5454)
!5476 = !DILocation(line: 168, column: 24, scope: !5454)
!5477 = !DILocation(line: 169, column: 25, scope: !5454)
!5478 = !DILocation(line: 169, column: 15, scope: !5454)
!5479 = !DILocation(line: 169, column: 23, scope: !5454)
!5480 = !DILocation(line: 170, column: 25, scope: !5454)
!5481 = !DILocation(line: 170, column: 15, scope: !5454)
!5482 = !DILocation(line: 170, column: 23, scope: !5454)
!5483 = !DILocation(line: 171, column: 1, scope: !5454)
!5484 = distinct !DISubprogram(name: "rtc_clear_time", scope: !522, file: !522, line: 145, type: !5485, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5487)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{null, !5457}
!5487 = !{!5488}
!5488 = !DILocalVariable(name: "rtc_time", arg: 1, scope: !5484, file: !522, line: 145, type: !5457)
!5489 = !DILocation(line: 0, scope: !5484)
!5490 = !DILocation(line: 147, column: 15, scope: !5484)
!5491 = !DILocation(line: 147, column: 24, scope: !5484)
!5492 = !DILocation(line: 148, column: 15, scope: !5484)
!5493 = !DILocation(line: 148, column: 23, scope: !5484)
!5494 = !DILocation(line: 149, column: 15, scope: !5484)
!5495 = !DILocation(line: 149, column: 23, scope: !5484)
!5496 = !DILocation(line: 150, column: 15, scope: !5484)
!5497 = !DILocation(line: 150, column: 24, scope: !5484)
!5498 = !DILocation(line: 151, column: 15, scope: !5484)
!5499 = !DILocation(line: 151, column: 24, scope: !5484)
!5500 = !DILocation(line: 152, column: 15, scope: !5484)
!5501 = !DILocation(line: 152, column: 23, scope: !5484)
!5502 = !DILocation(line: 153, column: 15, scope: !5484)
!5503 = !DILocation(line: 153, column: 23, scope: !5484)
!5504 = !DILocation(line: 154, column: 1, scope: !5484)
!5505 = distinct !DISubprogram(name: "test_rtc_alarm_callback", scope: !522, file: !522, line: 135, type: !402, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5506)
!5506 = !{!5507}
!5507 = !DILocalVariable(name: "parameter", arg: 1, scope: !5505, file: !522, line: 135, type: !141)
!5508 = !DILocation(line: 0, scope: !5505)
!5509 = !DILocation(line: 137, column: 23, scope: !5505)
!5510 = !DILocation(line: 138, column: 1, scope: !5505)
!5511 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !522, file: !522, line: 88, type: !470, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !5512)
!5512 = !{!5513}
!5513 = !DILocalVariable(name: "uart_config", scope: !5511, file: !522, line: 90, type: !5514)
!5514 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !412, line: 378, baseType: !5515)
!5515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 373, size: 128, elements: !5516)
!5516 = !{!5517, !5518, !5519, !5520}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5515, file: !412, line: 374, baseType: !487, size: 32)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5515, file: !412, line: 375, baseType: !489, size: 32, offset: 32)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5515, file: !412, line: 376, baseType: !491, size: 32, offset: 64)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5515, file: !412, line: 377, baseType: !493, size: 32, offset: 96)
!5521 = !DILocation(line: 90, column: 5, scope: !5511)
!5522 = !DILocation(line: 90, column: 23, scope: !5511)
!5523 = !DILocation(line: 93, column: 5, scope: !5511)
!5524 = !DILocation(line: 94, column: 5, scope: !5511)
!5525 = !DILocation(line: 95, column: 5, scope: !5511)
!5526 = !DILocation(line: 96, column: 5, scope: !5511)
!5527 = !DILocation(line: 99, column: 17, scope: !5511)
!5528 = !DILocation(line: 99, column: 26, scope: !5511)
!5529 = !DILocation(line: 100, column: 17, scope: !5511)
!5530 = !DILocation(line: 100, column: 29, scope: !5511)
!5531 = !DILocation(line: 101, column: 17, scope: !5511)
!5532 = !DILocation(line: 101, column: 26, scope: !5511)
!5533 = !DILocation(line: 102, column: 17, scope: !5511)
!5534 = !DILocation(line: 102, column: 24, scope: !5511)
!5535 = !DILocation(line: 103, column: 5, scope: !5511)
!5536 = !DILocation(line: 104, column: 1, scope: !5511)
!5537 = distinct !DISubprogram(name: "SysTick_Set", scope: !536, file: !536, line: 70, type: !5271, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !5538)
!5538 = !{!5539, !5540}
!5539 = !DILocalVariable(name: "ticks", arg: 1, scope: !5537, file: !536, line: 70, type: !12)
!5540 = !DILocalVariable(name: "val", scope: !5537, file: !536, line: 72, type: !12)
!5541 = !DILocation(line: 0, scope: !5537)
!5542 = !DILocation(line: 74, column: 16, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5537, file: !536, line: 74, column: 9)
!5544 = !DILocation(line: 74, column: 21, scope: !5543)
!5545 = !DILocation(line: 74, column: 9, scope: !5537)
!5546 = !DILocation(line: 78, column: 20, scope: !5537)
!5547 = !DILocation(line: 80, column: 19, scope: !5537)
!5548 = !DILocation(line: 83, column: 20, scope: !5537)
!5549 = !DILocation(line: 84, column: 20, scope: !5537)
!5550 = !DILocation(line: 86, column: 19, scope: !5537)
!5551 = !DILocation(line: 88, column: 5, scope: !5537)
!5552 = !DILocation(line: 89, column: 1, scope: !5537)
!5553 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !536, file: !536, line: 98, type: !470, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2585)
!5554 = !DILocation(line: 100, column: 28, scope: !5553)
!5555 = !DILocation(line: 101, column: 1, scope: !5553)
!5556 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !536, file: !536, line: 110, type: !2569, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2585)
!5557 = !DILocation(line: 112, column: 12, scope: !5556)
!5558 = !DILocation(line: 112, column: 5, scope: !5556)
!5559 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !536, file: !536, line: 122, type: !470, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2585)
!5560 = !DILocation(line: 124, column: 23, scope: !5559)
!5561 = !DILocation(line: 124, column: 21, scope: !5559)
!5562 = !DILocation(line: 125, column: 1, scope: !5559)
!5563 = distinct !DISubprogram(name: "SystemInit", scope: !536, file: !536, line: 136, type: !470, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2585)
!5564 = !DILocation(line: 140, column: 16, scope: !5563)
!5565 = !DILocation(line: 144, column: 16, scope: !5563)
!5566 = !DILocation(line: 147, column: 16, scope: !5563)
!5567 = !DILocation(line: 150, column: 1, scope: !5563)
!5568 = distinct !DISubprogram(name: "CachePreInit", scope: !536, file: !536, line: 158, type: !470, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !535, retainedNodes: !2585)
!5569 = !DILocation(line: 161, column: 22, scope: !5568)
!5570 = !DILocation(line: 164, column: 21, scope: !5568)
!5571 = !DILocation(line: 167, column: 21, scope: !5568)
!5572 = !DILocation(line: 170, column: 29, scope: !5568)
!5573 = !DILocation(line: 171, column: 33, scope: !5568)
!5574 = !DILocation(line: 173, column: 28, scope: !5568)
!5575 = !DILocation(line: 178, column: 30, scope: !5568)
!5576 = !DILocation(line: 192, column: 1, scope: !5568)
!5577 = distinct !DISubprogram(name: "_close", scope: !596, file: !596, line: 11, type: !5337, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5578)
!5578 = !{!5579}
!5579 = !DILocalVariable(name: "file", arg: 1, scope: !5577, file: !596, line: 11, type: !66)
!5580 = !DILocation(line: 0, scope: !5577)
!5581 = !DILocation(line: 13, column: 5, scope: !5577)
!5582 = distinct !DISubprogram(name: "_fstat", scope: !596, file: !596, line: 16, type: !5583, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5631)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!66, !66, !5585}
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 32)
!5586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5587, line: 27, size: 704, elements: !5588)
!5587 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5588 = !{!5589, !5592, !5595, !5598, !5601, !5604, !5607, !5608, !5611, !5621, !5622, !5623, !5626, !5629}
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5586, file: !5587, line: 29, baseType: !5590, size: 16)
!5590 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !600, line: 161, baseType: !5591)
!5591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !642, line: 56, baseType: !617)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5586, file: !5587, line: 30, baseType: !5593, size: 16, offset: 16)
!5593 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !600, line: 139, baseType: !5594)
!5594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !642, line: 75, baseType: !53)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5586, file: !5587, line: 31, baseType: !5596, size: 32, offset: 32)
!5596 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !600, line: 189, baseType: !5597)
!5597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !642, line: 90, baseType: !14)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5586, file: !5587, line: 32, baseType: !5599, size: 16, offset: 64)
!5599 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !600, line: 194, baseType: !5600)
!5600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !642, line: 209, baseType: !53)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5586, file: !5587, line: 33, baseType: !5602, size: 16, offset: 80)
!5602 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !600, line: 165, baseType: !5603)
!5603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !642, line: 60, baseType: !53)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5586, file: !5587, line: 34, baseType: !5605, size: 16, offset: 96)
!5605 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !600, line: 169, baseType: !5606)
!5606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !642, line: 63, baseType: !53)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5586, file: !5587, line: 35, baseType: !5590, size: 16, offset: 112)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5586, file: !5587, line: 36, baseType: !5609, size: 32, offset: 128)
!5609 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !600, line: 157, baseType: !5610)
!5610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !642, line: 102, baseType: !660)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5586, file: !5587, line: 42, baseType: !5612, size: 128, offset: 192)
!5612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5613, line: 47, size: 128, elements: !5614)
!5613 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5614 = !{!5615, !5620}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5612, file: !5613, line: 48, baseType: !5616, size: 64)
!5616 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5617, line: 42, baseType: !5618)
!5617 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !15, line: 200, baseType: !5619)
!5619 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5612, file: !5613, line: 49, baseType: !643, size: 32, offset: 64)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5586, file: !5587, line: 43, baseType: !5612, size: 128, offset: 320)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5586, file: !5587, line: 44, baseType: !5612, size: 128, offset: 448)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5586, file: !5587, line: 45, baseType: !5624, size: 32, offset: 576)
!5624 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !600, line: 102, baseType: !5625)
!5625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !642, line: 34, baseType: !643)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5586, file: !5587, line: 46, baseType: !5627, size: 32, offset: 608)
!5627 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !600, line: 97, baseType: !5628)
!5628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !642, line: 30, baseType: !643)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5586, file: !5587, line: 48, baseType: !5630, size: 64, offset: 640)
!5630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 64, elements: !268)
!5631 = !{!5632, !5633}
!5632 = !DILocalVariable(name: "file", arg: 1, scope: !5582, file: !596, line: 16, type: !66)
!5633 = !DILocalVariable(name: "st", arg: 2, scope: !5582, file: !596, line: 16, type: !5585)
!5634 = !DILocation(line: 0, scope: !5582)
!5635 = !DILocation(line: 18, column: 5, scope: !5582)
!5636 = distinct !DISubprogram(name: "_isatty", scope: !596, file: !596, line: 22, type: !5337, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5637)
!5637 = !{!5638}
!5638 = !DILocalVariable(name: "file", arg: 1, scope: !5636, file: !596, line: 22, type: !66)
!5639 = !DILocation(line: 0, scope: !5636)
!5640 = !DILocation(line: 24, column: 5, scope: !5636)
!5641 = distinct !DISubprogram(name: "_lseek", scope: !596, file: !596, line: 27, type: !5642, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5644)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!66, !66, !66, !66}
!5644 = !{!5645, !5646, !5647}
!5645 = !DILocalVariable(name: "file", arg: 1, scope: !5641, file: !596, line: 27, type: !66)
!5646 = !DILocalVariable(name: "ptr", arg: 2, scope: !5641, file: !596, line: 27, type: !66)
!5647 = !DILocalVariable(name: "dir", arg: 3, scope: !5641, file: !596, line: 27, type: !66)
!5648 = !DILocation(line: 0, scope: !5641)
!5649 = !DILocation(line: 29, column: 5, scope: !5641)
!5650 = distinct !DISubprogram(name: "_open", scope: !596, file: !596, line: 32, type: !5651, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5653)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!66, !635, !66, !66}
!5653 = !{!5654, !5655, !5656}
!5654 = !DILocalVariable(name: "name", arg: 1, scope: !5650, file: !596, line: 32, type: !635)
!5655 = !DILocalVariable(name: "flags", arg: 2, scope: !5650, file: !596, line: 32, type: !66)
!5656 = !DILocalVariable(name: "mode", arg: 3, scope: !5650, file: !596, line: 32, type: !66)
!5657 = !DILocation(line: 0, scope: !5650)
!5658 = !DILocation(line: 34, column: 5, scope: !5650)
!5659 = distinct !DISubprogram(name: "_read", scope: !596, file: !596, line: 37, type: !5660, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5662)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!66, !66, !601, !66}
!5662 = !{!5663, !5664, !5665}
!5663 = !DILocalVariable(name: "file", arg: 1, scope: !5659, file: !596, line: 37, type: !66)
!5664 = !DILocalVariable(name: "ptr", arg: 2, scope: !5659, file: !596, line: 37, type: !601)
!5665 = !DILocalVariable(name: "len", arg: 3, scope: !5659, file: !596, line: 37, type: !66)
!5666 = !DILocation(line: 0, scope: !5659)
!5667 = !DILocation(line: 39, column: 5, scope: !5659)
!5668 = distinct !DISubprogram(name: "_write", scope: !596, file: !596, line: 52, type: !5660, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5669)
!5669 = !{!5670, !5671, !5672, !5673}
!5670 = !DILocalVariable(name: "file", arg: 1, scope: !5668, file: !596, line: 52, type: !66)
!5671 = !DILocalVariable(name: "ptr", arg: 2, scope: !5668, file: !596, line: 52, type: !601)
!5672 = !DILocalVariable(name: "len", arg: 3, scope: !5668, file: !596, line: 52, type: !66)
!5673 = !DILocalVariable(name: "i", scope: !5668, file: !596, line: 54, type: !66)
!5674 = !DILocation(line: 0, scope: !5668)
!5675 = !DILocation(line: 56, column: 19, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5677, file: !596, line: 56, column: 5)
!5677 = distinct !DILexicalBlock(scope: !5668, file: !596, line: 56, column: 5)
!5678 = !DILocation(line: 56, column: 5, scope: !5677)
!5679 = !DILocation(line: 57, column: 26, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5676, file: !596, line: 56, column: 31)
!5681 = !DILocation(line: 57, column: 22, scope: !5680)
!5682 = !DILocation(line: 57, column: 9, scope: !5680)
!5683 = !DILocation(line: 56, column: 27, scope: !5676)
!5684 = distinct !{!5684, !5678, !5685}
!5685 = !DILocation(line: 58, column: 5, scope: !5677)
!5686 = !DILocation(line: 60, column: 5, scope: !5668)
!5687 = !DILocation(line: 0, scope: !595)
!5688 = !DILocation(line: 70, column: 5, scope: !595)
!5689 = !{i64 1109}
!5690 = !DILocation(line: 72, column: 14, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !595, file: !596, line: 72, column: 9)
!5692 = !DILocation(line: 72, column: 11, scope: !5691)
!5693 = !DILocation(line: 72, column: 9, scope: !595)
!5694 = !DILocation(line: 78, column: 32, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !595, file: !596, line: 78, column: 9)
!5696 = !DILocation(line: 78, column: 15, scope: !5695)
!5697 = !DILocation(line: 89, column: 1, scope: !595)
!5698 = !DILocation(line: 78, column: 9, scope: !595)
!5699 = distinct !DISubprogram(name: "_exit", scope: !596, file: !596, line: 91, type: !745, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5700)
!5700 = !{!5701}
!5701 = !DILocalVariable(name: "__status", arg: 1, scope: !5699, file: !596, line: 91, type: !66)
!5702 = !DILocation(line: 0, scope: !5699)
!5703 = !DILocation(line: 93, column: 5, scope: !5699)
!5704 = !DILocation(line: 94, column: 5, scope: !5699)
!5705 = distinct !{!5705, !5704, !5706}
!5706 = !DILocation(line: 96, column: 5, scope: !5699)
!5707 = distinct !DISubprogram(name: "_kill", scope: !596, file: !596, line: 100, type: !5708, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !5710)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{!66, !66, !66}
!5710 = !{!5711, !5712}
!5711 = !DILocalVariable(name: "pid", arg: 1, scope: !5707, file: !596, line: 100, type: !66)
!5712 = !DILocalVariable(name: "sig", arg: 2, scope: !5707, file: !596, line: 100, type: !66)
!5713 = !DILocation(line: 0, scope: !5707)
!5714 = !DILocation(line: 102, column: 5, scope: !5707)
!5715 = !DILocation(line: 103, column: 5, scope: !5707)
!5716 = distinct !DISubprogram(name: "_getpid", scope: !596, file: !596, line: 107, type: !5717, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2585)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!5719}
!5719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !600, line: 174, baseType: !5720)
!5720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !642, line: 52, baseType: !66)
!5721 = !DILocation(line: 109, column: 5, scope: !5716)
!5722 = !DILocation(line: 110, column: 5, scope: !5716)
