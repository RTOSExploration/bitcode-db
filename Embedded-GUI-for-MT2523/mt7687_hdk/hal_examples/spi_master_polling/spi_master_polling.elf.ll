; ModuleID = './build/spi_master_polling.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.gpio_backup_restore_t = type { i32, i32 }
%union.CACHE_CON_Type = type { %struct.anon }
%struct.anon = type { i32 }
%struct.CACHE_ENTRY_Type = type { %union.CACHE_CON_Type, %union.CACHE_CON_Type }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_spi_master_config_t = type { i32, i32, i32, i32, i32 }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.gpio_status = type { i32, i8, i8, i8 }
%struct.__va_list = type { i8* }
%struct.hal_spi_master_send_and_receive_config_t = type { i8*, i32, i8*, i32 }
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

@halspim_isr = dso_local local_unnamed_addr global void ()* null, align 4, !dbg !0
@gpio_bakup_table = internal unnamed_addr global [22 x %struct.gpio_backup_restore_t] [%struct.gpio_backup_restore_t { i32 0, i32 -2097106944 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106928 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106912 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106896 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106880 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106864 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106848 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106832 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106816 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106800 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106784 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106768 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106736 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106732 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106728 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106724 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106720 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106704 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106700 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106688 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106684 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106680 }], align 4, !dbg !83
@spi_ok_cnt = internal global i32 0, align 4, !dbg !139
@quotient = internal unnamed_addr global i32 0, align 4, !dbg !190
@spim_write.remainder = internal unnamed_addr global i32 0, align 4, !dbg !157
@spim_write.regVal = internal unnamed_addr global i32 0, align 4, !dbg !174
@spim_read.remainder = internal unnamed_addr global i32 0, align 4, !dbg !176
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !193
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !201
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !203
@g_cache_status = dso_local global i8 0, align 1, !dbg !239
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !323
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_spi_master_status = internal global i8 0, align 1, !dbg !424
@g_spi_master_context = internal global %struct.hal_spi_master_config_t zeroinitializer, align 4, !dbg !496
@g_spi_master_cs_n = dso_local local_unnamed_addr global i32 0, align 4, !dbg !510
@__FUNCTION__.hal_spi_master_map_cs_pin = private unnamed_addr constant [26 x i8] c"hal_spi_master_map_cs_pin\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"[SPIM]: g_spi_master_cs_n: %d.\0D\0A\00", align 1
@.str.1.22 = private unnamed_addr constant [43 x i8] c"[SPIM]: cannot decide the GPIO for CS_N.\0D\0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !520
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !577
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.23 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.24 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"---spim_send_data_polling_example begins---\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SPI Master GPIOs config\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"SPI Master port init\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"  SPI master init fail\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SPI master send data fail\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"SPI master deinit\0D\0A\0D\0A\00", align 1
@.str.8.25 = private unnamed_addr constant [27 x i8] c"  SPI master deinit fail\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"---spim_send_data_polling_example ends---\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !629
@System_Initialize_Done = internal global i32 0, align 4, !dbg !687
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !689
@end = external dso_local global i8, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.33 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.34 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:36 GMT +00:00\00", align 1, !dbg !897
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !902
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !908

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1091, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %1, metadata !1092, metadata !DIExpression()), !dbg !1096
  %3 = lshr i32 %0, 5, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %3, metadata !1093, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %4 = trunc i32 %0 to i16, !dbg !1098
  %5 = and i16 %4, 31, !dbg !1098
  call void @llvm.dbg.value(metadata i16 %4, metadata !1095, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1096
  %6 = trunc i32 %3 to i16, !dbg !1099
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1099

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1100
  %9 = zext i16 %5 to i32, !dbg !1103
  %10 = icmp ult i16 %5, 27, !dbg !1103
  br i1 %8, label %11, label %46, !dbg !1104

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1105

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1107
  %14 = xor i32 %13, -1, !dbg !1110
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1111
  %16 = and i32 %15, %14, !dbg !1111
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1111
  br label %44, !dbg !1112

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1113
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1113

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1114
  %21 = and i32 %20, -3, !dbg !1114
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1114
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1117
  %23 = or i32 %22, 2048, !dbg !1117
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1117
  br label %44, !dbg !1118

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1119
  %26 = and i32 %25, -3, !dbg !1119
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1119
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1122
  %28 = or i32 %27, 2048, !dbg !1122
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1122
  br label %44, !dbg !1123

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1124
  %31 = and i32 %30, -3, !dbg !1124
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1124
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1127
  %33 = or i32 %32, 2048, !dbg !1127
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1127
  br label %44, !dbg !1128

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1129
  %36 = and i32 %35, -3, !dbg !1129
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1129
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1132
  %38 = or i32 %37, 2048, !dbg !1132
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1132
  br label %44, !dbg !1133

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1134
  %41 = and i32 %40, -3, !dbg !1134
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1134
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1137
  %43 = or i32 %42, 2048, !dbg !1137
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1137
  br label %44, !dbg !1138

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1139
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1139
  br label %97, !dbg !1140

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1141

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1143
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1146
  %50 = or i32 %49, %48, !dbg !1146
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1146
  br label %68, !dbg !1147

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1148
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1148

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1149
  %55 = or i32 %54, 2050, !dbg !1149
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1149
  br label %68, !dbg !1152

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1153
  %58 = or i32 %57, 2050, !dbg !1153
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1153
  br label %68, !dbg !1156

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1157
  %61 = or i32 %60, 2050, !dbg !1157
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1157
  br label %68, !dbg !1160

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1161
  %64 = or i32 %63, 2050, !dbg !1161
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1161
  br label %68, !dbg !1164

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1165
  %67 = or i32 %66, 2050, !dbg !1165
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1165
  br label %68, !dbg !1168

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1169
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1169
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1170
  %72 = zext i16 %5 to i32, !dbg !1172
  %73 = icmp eq i16 %5, 0, !dbg !1172
  br i1 %71, label %74, label %87, !dbg !1173

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1174

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1176
  %77 = xor i32 %76, -1, !dbg !1179
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1180
  %79 = and i32 %78, %77, !dbg !1180
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1180
  br label %85, !dbg !1181

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1182
  %82 = and i32 %81, -3, !dbg !1182
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1182
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1184
  %84 = or i32 %83, 2048, !dbg !1184
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1184
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1185
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1185
  br label %97, !dbg !1186

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1187

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1189
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1192
  %91 = or i32 %90, %89, !dbg !1192
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1192
  br label %95, !dbg !1193

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1194
  %94 = or i32 %93, 2050, !dbg !1194
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1194
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1196
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1196
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1096
  ret i32 %98, !dbg !1197
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1200, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8 %1, metadata !1201, metadata !DIExpression()), !dbg !1204
  %3 = lshr i32 %0, 5, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %3, metadata !1202, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1204
  %4 = trunc i32 %0 to i16, !dbg !1206
  %5 = and i16 %4, 31, !dbg !1206
  call void @llvm.dbg.value(metadata i16 %5, metadata !1203, metadata !DIExpression()), !dbg !1204
  %6 = trunc i32 %3 to i16, !dbg !1207
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1207

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1208
  %9 = zext i16 %5 to i32, !dbg !1211
  %10 = shl nuw i32 1, %9, !dbg !1211
  br i1 %8, label %12, label %11, !dbg !1212

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1213
  br label %19, !dbg !1215

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1216
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1218
  %15 = zext i16 %5 to i32, !dbg !1220
  %16 = shl nuw i32 1, %15, !dbg !1220
  br i1 %14, label %18, label %17, !dbg !1221

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1222
  br label %19, !dbg !1224

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1225
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1204
  ret i32 %20, !dbg !1227
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1232, metadata !DIExpression()), !dbg !1236
  %2 = lshr i32 %0, 5, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %2, metadata !1233, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1236
  %3 = and i32 %0, 31, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %0, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1236
  call void @llvm.dbg.value(metadata i8 0, metadata !1235, metadata !DIExpression()), !dbg !1236
  %4 = trunc i32 %2 to i16, !dbg !1239
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1239

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1235, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1236
  br label %6, !dbg !1240

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1242
  %9 = lshr i32 %8, %3, !dbg !1242
  %10 = trunc i32 %9 to i8, !dbg !1242
  %11 = and i8 %10, 1, !dbg !1242
  call void @llvm.dbg.value(metadata i8 %11, metadata !1235, metadata !DIExpression()), !dbg !1236
  br label %12, !dbg !1243

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1236
  ret i8 %13, !dbg !1244
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1247, metadata !DIExpression()), !dbg !1251
  %2 = lshr i32 %0, 5, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %2, metadata !1248, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1251
  %3 = and i32 %0, 31, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %0, metadata !1249, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1251
  call void @llvm.dbg.value(metadata i8 0, metadata !1250, metadata !DIExpression()), !dbg !1251
  %4 = trunc i32 %2 to i16, !dbg !1254
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1254

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1250, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1251
  br label %6, !dbg !1255

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1257
  %9 = lshr i32 %8, %3, !dbg !1257
  %10 = trunc i32 %9 to i8, !dbg !1257
  %11 = and i8 %10, 1, !dbg !1257
  call void @llvm.dbg.value(metadata i8 %11, metadata !1250, metadata !DIExpression()), !dbg !1251
  br label %12, !dbg !1258

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1251
  ret i8 %13, !dbg !1259
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1262, metadata !DIExpression()), !dbg !1266
  %2 = lshr i32 %0, 5, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %2, metadata !1263, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1266
  %3 = and i32 %0, 31, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %0, metadata !1264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1266
  call void @llvm.dbg.value(metadata i8 0, metadata !1265, metadata !DIExpression()), !dbg !1266
  %4 = trunc i32 %2 to i16, !dbg !1269
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1269

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1265, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1266
  br label %6, !dbg !1270

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1272
  %9 = lshr i32 %8, %3, !dbg !1272
  %10 = trunc i32 %9 to i8, !dbg !1272
  %11 = and i8 %10, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i8 %11, metadata !1265, metadata !DIExpression()), !dbg !1266
  br label %12, !dbg !1273

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1266
  ret i8 %13, !dbg !1274
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1279, metadata !DIExpression()), !dbg !1282
  %2 = lshr i32 %0, 5, !dbg !1283
  call void @llvm.dbg.value(metadata i32 %2, metadata !1280, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1282
  %3 = trunc i32 %0 to i16, !dbg !1284
  %4 = and i16 %3, 31, !dbg !1284
  call void @llvm.dbg.value(metadata i16 %3, metadata !1281, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1282
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1285
  %6 = trunc i32 %2 to i16, !dbg !1286
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1286

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1287
  br i1 %8, label %9, label %12, !dbg !1290

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1291
  %11 = shl nuw nsw i32 1, %10, !dbg !1292
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1292
  br label %49, !dbg !1294

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1295
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1295

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1296
  %16 = and i32 %15, -29, !dbg !1296
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1296
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1299
  %18 = or i32 %17, 2052, !dbg !1299
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1299
  br label %49, !dbg !1300

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1301
  %21 = and i32 %20, -29, !dbg !1301
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1301
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1304
  %23 = or i32 %22, 2052, !dbg !1304
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1304
  br label %49, !dbg !1305

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1306
  %26 = and i32 %25, -29, !dbg !1306
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1306
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1309
  %28 = or i32 %27, 2052, !dbg !1309
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1309
  br label %49, !dbg !1310

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1311
  %31 = and i32 %30, -29, !dbg !1311
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1311
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1314
  %33 = or i32 %32, 2052, !dbg !1314
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1314
  br label %49, !dbg !1315

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1316
  %36 = and i32 %35, -29, !dbg !1316
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1316
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1319
  %38 = or i32 %37, 2052, !dbg !1319
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1319
  br label %49, !dbg !1320

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1321
  br i1 %40, label %41, label %46, !dbg !1323

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1324
  %43 = and i32 %42, -29, !dbg !1324
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1324
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1326
  %45 = or i32 %44, 2052, !dbg !1326
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1326
  br label %49, !dbg !1327

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1328
  %48 = shl nuw i32 1, %47, !dbg !1328
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1328
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1282
  ret i32 %50, !dbg !1330
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1333, metadata !DIExpression()), !dbg !1336
  %2 = lshr i32 %0, 5, !dbg !1337
  call void @llvm.dbg.value(metadata i32 %2, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1336
  %3 = trunc i32 %0 to i16, !dbg !1338
  %4 = and i16 %3, 31, !dbg !1338
  call void @llvm.dbg.value(metadata i16 %3, metadata !1335, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1336
  %5 = trunc i32 %2 to i16, !dbg !1339
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1339

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1340
  br i1 %7, label %8, label %11, !dbg !1343

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1344
  %10 = shl nuw nsw i32 1, %9, !dbg !1345
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1345
  br label %48, !dbg !1347

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1348
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1348

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1349
  %15 = and i32 %14, -29, !dbg !1349
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1349
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1352
  %17 = or i32 %16, 2048, !dbg !1352
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1352
  br label %48, !dbg !1353

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1354
  %20 = and i32 %19, -29, !dbg !1354
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1354
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1357
  %22 = or i32 %21, 2048, !dbg !1357
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1357
  br label %48, !dbg !1358

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1359
  %25 = and i32 %24, -29, !dbg !1359
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1359
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1362
  %27 = or i32 %26, 2048, !dbg !1362
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1362
  br label %48, !dbg !1363

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1364
  %30 = and i32 %29, -29, !dbg !1364
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1364
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1367
  %32 = or i32 %31, 2048, !dbg !1367
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1367
  br label %48, !dbg !1368

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1369
  %35 = and i32 %34, -29, !dbg !1369
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1369
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1372
  %37 = or i32 %36, 2048, !dbg !1372
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1372
  br label %48, !dbg !1373

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1374
  br i1 %39, label %40, label %45, !dbg !1376

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1377
  %42 = and i32 %41, -29, !dbg !1377
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1377
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1379
  %44 = or i32 %43, 2048, !dbg !1379
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1379
  br label %48, !dbg !1380

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1381
  %47 = shl nuw i32 1, %46, !dbg !1381
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1381
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1336
  ret i32 %49, !dbg !1383
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1386, metadata !DIExpression()), !dbg !1389
  %2 = lshr i32 %0, 5, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %2, metadata !1387, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1389
  %3 = trunc i32 %0 to i16, !dbg !1391
  %4 = and i16 %3, 31, !dbg !1391
  call void @llvm.dbg.value(metadata i16 %3, metadata !1388, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1389
  %5 = trunc i32 %2 to i16, !dbg !1392
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1392

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1393
  br i1 %7, label %8, label %11, !dbg !1396

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1397
  %10 = shl nuw nsw i32 1, %9, !dbg !1398
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1398
  br label %48, !dbg !1400

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1401
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1401

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1402
  %15 = and i32 %14, -29, !dbg !1402
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1402
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1405
  %17 = or i32 %16, 2048, !dbg !1405
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1405
  br label %48, !dbg !1406

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1407
  %20 = and i32 %19, -29, !dbg !1407
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1407
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1410
  %22 = or i32 %21, 2048, !dbg !1410
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1410
  br label %48, !dbg !1411

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1412
  %25 = and i32 %24, -29, !dbg !1412
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1412
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1415
  %27 = or i32 %26, 2048, !dbg !1415
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1415
  br label %48, !dbg !1416

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1417
  %30 = and i32 %29, -29, !dbg !1417
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1417
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1420
  %32 = or i32 %31, 2048, !dbg !1420
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1420
  br label %48, !dbg !1421

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1422
  %35 = and i32 %34, -29, !dbg !1422
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1422
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1425
  %37 = or i32 %36, 2048, !dbg !1425
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1425
  br label %48, !dbg !1426

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1427
  br i1 %39, label %40, label %45, !dbg !1429

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1430
  %42 = and i32 %41, -29, !dbg !1430
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1430
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1432
  %44 = or i32 %43, 2048, !dbg !1432
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1432
  br label %48, !dbg !1433

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1434
  %47 = shl nuw i32 1, %46, !dbg !1434
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1434
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1389
  ret i32 %49, !dbg !1436
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1439, metadata !DIExpression()), !dbg !1442
  %2 = lshr i32 %0, 5, !dbg !1443
  call void @llvm.dbg.value(metadata i32 %2, metadata !1440, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1442
  %3 = trunc i32 %0 to i16, !dbg !1444
  %4 = and i16 %3, 31, !dbg !1444
  call void @llvm.dbg.value(metadata i16 %3, metadata !1441, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1442
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1445
  %6 = trunc i32 %2 to i16, !dbg !1446
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1446

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1447
  br i1 %8, label %9, label %12, !dbg !1450

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1451
  %11 = shl nuw nsw i32 1, %10, !dbg !1452
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1452
  br label %49, !dbg !1454

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1455
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1455

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1456
  %16 = and i32 %15, -29, !dbg !1456
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1456
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1459
  %18 = or i32 %17, 2068, !dbg !1459
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1459
  br label %49, !dbg !1460

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1461
  %21 = and i32 %20, -29, !dbg !1461
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1461
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1464
  %23 = or i32 %22, 2068, !dbg !1464
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1464
  br label %49, !dbg !1465

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1466
  %26 = and i32 %25, -29, !dbg !1466
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1466
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1469
  %28 = or i32 %27, 2068, !dbg !1469
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1469
  br label %49, !dbg !1470

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1471
  %31 = and i32 %30, -29, !dbg !1471
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1471
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1474
  %33 = or i32 %32, 2068, !dbg !1474
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1474
  br label %49, !dbg !1475

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1476
  %36 = and i32 %35, -29, !dbg !1476
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1476
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1479
  %38 = or i32 %37, 2068, !dbg !1479
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1479
  br label %49, !dbg !1480

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1481
  br i1 %40, label %41, label %46, !dbg !1483

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1484
  %43 = and i32 %42, -29, !dbg !1484
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1484
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1486
  %45 = or i32 %44, 2068, !dbg !1486
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1486
  br label %49, !dbg !1487

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1488
  %48 = shl nuw i32 1, %47, !dbg !1488
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1488
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1442
  ret i32 %50, !dbg !1490
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1493, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8 %1, metadata !1494, metadata !DIExpression()), !dbg !1497
  %3 = lshr i32 %0, 4, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %3, metadata !1495, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  %4 = trunc i32 %0 to i16, !dbg !1499
  %5 = and i16 %4, 15, !dbg !1499
  call void @llvm.dbg.value(metadata i16 %4, metadata !1496, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1497
  %6 = trunc i32 %3 to i16, !dbg !1500
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1500

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1501
  %9 = zext i16 %8 to i32, !dbg !1501
  %10 = shl nuw i32 3, %9, !dbg !1503
  %11 = xor i32 %10, -1, !dbg !1504
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1505
  %13 = and i32 %12, %11, !dbg !1505
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1505
  %14 = lshr i8 %1, 2, !dbg !1506
  %15 = zext i8 %14 to i32, !dbg !1506
  %16 = add nsw i32 %15, -1, !dbg !1507
  %17 = shl i32 %16, %9, !dbg !1508
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1509
  %19 = or i32 %18, %17, !dbg !1509
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1509
  br label %131, !dbg !1510

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1511
  br i1 %21, label %22, label %35, !dbg !1513

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1514
  %24 = zext i16 %23 to i32, !dbg !1514
  %25 = shl nuw nsw i32 3, %24, !dbg !1516
  %26 = xor i32 %25, -1, !dbg !1517
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1518
  %28 = and i32 %27, %26, !dbg !1518
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1518
  %29 = lshr i8 %1, 2, !dbg !1519
  %30 = zext i8 %29 to i32, !dbg !1519
  %31 = add nsw i32 %30, -1, !dbg !1520
  %32 = shl nsw i32 %31, %24, !dbg !1521
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1522
  %34 = or i32 %33, %32, !dbg !1522
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1522
  br label %131, !dbg !1523

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1524
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1524

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1525
  %39 = and i32 %38, -449, !dbg !1525
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1525
  %40 = lshr i8 %1, 1, !dbg !1528
  %41 = zext i8 %40 to i32, !dbg !1528
  %42 = shl nuw nsw i32 %41, 6, !dbg !1529
  %43 = add nsw i32 %42, -64, !dbg !1529
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1530
  %45 = or i32 %44, %43, !dbg !1530
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1530
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1531
  %47 = or i32 %46, 2048, !dbg !1531
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1531
  br label %131, !dbg !1532

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1533
  %50 = and i32 %49, -449, !dbg !1533
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1533
  %51 = lshr i8 %1, 1, !dbg !1536
  %52 = zext i8 %51 to i32, !dbg !1536
  %53 = shl nuw nsw i32 %52, 6, !dbg !1537
  %54 = add nsw i32 %53, -64, !dbg !1537
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1538
  %56 = or i32 %55, %54, !dbg !1538
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1538
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1539
  %58 = or i32 %57, 2048, !dbg !1539
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1539
  br label %131, !dbg !1540

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1541
  %61 = and i32 %60, -449, !dbg !1541
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1541
  %62 = lshr i8 %1, 1, !dbg !1544
  %63 = zext i8 %62 to i32, !dbg !1544
  %64 = shl nuw nsw i32 %63, 6, !dbg !1545
  %65 = add nsw i32 %64, -64, !dbg !1545
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1546
  %67 = or i32 %66, %65, !dbg !1546
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1546
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  %69 = or i32 %68, 2048, !dbg !1547
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  br label %131, !dbg !1548

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1549
  %72 = and i32 %71, -449, !dbg !1549
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1549
  %73 = lshr i8 %1, 1, !dbg !1552
  %74 = zext i8 %73 to i32, !dbg !1552
  %75 = shl nuw nsw i32 %74, 6, !dbg !1553
  %76 = add nsw i32 %75, -64, !dbg !1553
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1554
  %78 = or i32 %77, %76, !dbg !1554
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1554
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  %80 = or i32 %79, 2048, !dbg !1555
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  br label %131, !dbg !1556

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1557
  %83 = and i32 %82, -449, !dbg !1557
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1557
  %84 = lshr i8 %1, 1, !dbg !1560
  %85 = zext i8 %84 to i32, !dbg !1560
  %86 = shl nuw nsw i32 %85, 6, !dbg !1561
  %87 = add nsw i32 %86, -64, !dbg !1561
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1562
  %89 = or i32 %88, %87, !dbg !1562
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1562
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1563
  %91 = or i32 %90, 2048, !dbg !1563
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1563
  br label %131, !dbg !1564

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1565
  br i1 %93, label %94, label %105, !dbg !1567

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1568
  %96 = and i32 %95, -449, !dbg !1568
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1568
  %97 = lshr i8 %1, 1, !dbg !1570
  %98 = zext i8 %97 to i32, !dbg !1570
  %99 = shl nuw nsw i32 %98, 6, !dbg !1571
  %100 = add nsw i32 %99, -64, !dbg !1571
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1572
  %102 = or i32 %101, %100, !dbg !1572
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1572
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1573
  %104 = or i32 %103, 2048, !dbg !1573
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1573
  br label %131, !dbg !1574

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1575
  %107 = zext i16 %106 to i32, !dbg !1575
  %108 = shl nuw i32 3, %107, !dbg !1577
  %109 = xor i32 %108, -1, !dbg !1578
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1579
  %111 = and i32 %110, %109, !dbg !1579
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1579
  %112 = lshr i8 %1, 2, !dbg !1580
  %113 = zext i8 %112 to i32, !dbg !1580
  %114 = add nsw i32 %113, -1, !dbg !1581
  %115 = shl i32 %114, %107, !dbg !1582
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1583
  %117 = or i32 %116, %115, !dbg !1583
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1583
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1584
  %120 = zext i16 %119 to i32, !dbg !1584
  %121 = shl nuw i32 3, %120, !dbg !1585
  %122 = xor i32 %121, -1, !dbg !1586
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1587
  %124 = and i32 %123, %122, !dbg !1587
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1587
  %125 = lshr i8 %1, 2, !dbg !1588
  %126 = zext i8 %125 to i32, !dbg !1588
  %127 = add nsw i32 %126, -1, !dbg !1589
  %128 = shl i32 %127, %120, !dbg !1590
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1591
  %130 = or i32 %129, %128, !dbg !1591
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1591
  br label %131, !dbg !1592

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1497
  ret i32 %132, !dbg !1593
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1594 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1599, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* %1, metadata !1600, metadata !DIExpression()), !dbg !1604
  %3 = lshr i32 %0, 4, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %3, metadata !1601, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1604
  %4 = trunc i32 %0 to i16, !dbg !1606
  %5 = and i16 %4, 15, !dbg !1606
  call void @llvm.dbg.value(metadata i16 %4, metadata !1602, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %6 = trunc i32 %3 to i16, !dbg !1607
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1607

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %8, metadata !1603, metadata !DIExpression()), !dbg !1604
  %9 = shl nuw nsw i16 %5, 1, !dbg !1610
  %10 = zext i16 %9 to i32, !dbg !1610
  %11 = shl nuw i32 3, %10, !dbg !1611
  %12 = and i32 %8, %11, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %12, metadata !1603, metadata !DIExpression()), !dbg !1604
  %13 = lshr i32 %12, %10, !dbg !1613
  %14 = trunc i32 %13 to i8, !dbg !1614
  %15 = shl i8 %14, 2, !dbg !1614
  %16 = add i8 %15, 4, !dbg !1614
  br label %89, !dbg !1615

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1616
  br i1 %18, label %19, label %29, !dbg !1618

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1619
  call void @llvm.dbg.value(metadata i32 %20, metadata !1603, metadata !DIExpression()), !dbg !1604
  %21 = shl nuw nsw i16 %5, 1, !dbg !1621
  %22 = zext i16 %21 to i32, !dbg !1621
  %23 = shl nuw nsw i32 3, %22, !dbg !1622
  %24 = and i32 %20, %23, !dbg !1623
  call void @llvm.dbg.value(metadata i32 %24, metadata !1603, metadata !DIExpression()), !dbg !1604
  %25 = lshr i32 %24, %22, !dbg !1624
  %26 = trunc i32 %25 to i8, !dbg !1625
  %27 = shl i8 %26, 2, !dbg !1625
  %28 = add i8 %27, 4, !dbg !1625
  br label %89, !dbg !1626

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1627
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1627

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %32, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %32, metadata !1603, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %33 = lshr i32 %32, 5, !dbg !1631
  %34 = trunc i32 %33 to i8, !dbg !1632
  %35 = and i8 %34, 14, !dbg !1632
  %36 = add nuw nsw i8 %35, 2, !dbg !1632
  br label %89, !dbg !1633

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %38, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %38, metadata !1603, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %39 = lshr i32 %38, 5, !dbg !1637
  %40 = trunc i32 %39 to i8, !dbg !1638
  %41 = and i8 %40, 14, !dbg !1638
  %42 = add nuw nsw i8 %41, 2, !dbg !1638
  br label %89, !dbg !1639

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %44, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %44, metadata !1603, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %45 = lshr i32 %44, 5, !dbg !1643
  %46 = trunc i32 %45 to i8, !dbg !1644
  %47 = and i8 %46, 14, !dbg !1644
  %48 = add nuw nsw i8 %47, 2, !dbg !1644
  br label %89, !dbg !1645

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %50, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %50, metadata !1603, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %51 = lshr i32 %50, 5, !dbg !1649
  %52 = trunc i32 %51 to i8, !dbg !1650
  %53 = and i8 %52, 14, !dbg !1650
  %54 = add nuw nsw i8 %53, 2, !dbg !1650
  br label %89, !dbg !1651

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %56, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %56, metadata !1603, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %57 = lshr i32 %56, 5, !dbg !1655
  %58 = trunc i32 %57 to i8, !dbg !1656
  %59 = and i8 %58, 14, !dbg !1656
  %60 = add nuw nsw i8 %59, 2, !dbg !1656
  br label %89, !dbg !1657

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1658
  br i1 %62, label %63, label %69, !dbg !1660

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %64, metadata !1603, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 %64, metadata !1603, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %65 = lshr i32 %64, 5, !dbg !1663
  %66 = trunc i32 %65 to i8, !dbg !1664
  %67 = and i8 %66, 14, !dbg !1664
  %68 = add nuw nsw i8 %67, 2, !dbg !1664
  br label %89, !dbg !1665

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %70, metadata !1603, metadata !DIExpression()), !dbg !1604
  %71 = shl nuw nsw i16 %5, 1, !dbg !1668
  %72 = zext i16 %71 to i32, !dbg !1668
  %73 = shl nuw i32 3, %72, !dbg !1669
  %74 = and i32 %70, %73, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %74, metadata !1603, metadata !DIExpression()), !dbg !1604
  %75 = lshr i32 %74, %72, !dbg !1671
  %76 = trunc i32 %75 to i8, !dbg !1672
  %77 = shl i8 %76, 2, !dbg !1672
  %78 = add i8 %77, 4, !dbg !1672
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %80, metadata !1603, metadata !DIExpression()), !dbg !1604
  %81 = shl nuw nsw i16 %5, 1, !dbg !1674
  %82 = zext i16 %81 to i32, !dbg !1674
  %83 = shl nuw i32 3, %82, !dbg !1675
  %84 = and i32 %80, %83, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %84, metadata !1603, metadata !DIExpression()), !dbg !1604
  %85 = lshr i32 %84, %82, !dbg !1677
  %86 = trunc i32 %85 to i8, !dbg !1678
  %87 = shl i8 %86, 2, !dbg !1678
  %88 = add i8 %87, 4, !dbg !1678
  br label %89, !dbg !1679

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1680
  br label %91, !dbg !1681

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1604
  ret i32 %92, !dbg !1681
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1691
  %3 = lshr i32 %0, 5, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %3, metadata !1689, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1691
  %4 = trunc i32 %0 to i16, !dbg !1693
  %5 = and i16 %4, 31, !dbg !1693
  call void @llvm.dbg.value(metadata i16 %5, metadata !1690, metadata !DIExpression()), !dbg !1691
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1694

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1689, metadata !DIExpression()), !dbg !1691
  %7 = trunc i32 %3 to i16, !dbg !1695
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1695

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1698
  %10 = shl nuw i32 1, %9, !dbg !1700
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1701
  %12 = or i32 %11, %10, !dbg !1701
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1701
  br label %32, !dbg !1702

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1703
  %15 = shl nuw i32 1, %14, !dbg !1704
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1705
  %17 = or i32 %16, %15, !dbg !1705
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1705
  br label %32, !dbg !1706

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1707
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1707

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1710
  %22 = shl nuw i32 1, %21, !dbg !1712
  %23 = xor i32 %22, -1, !dbg !1713
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1714
  %25 = and i32 %24, %23, !dbg !1714
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1714
  br label %32, !dbg !1715

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1716
  %28 = shl nuw i32 1, %27, !dbg !1717
  %29 = xor i32 %28, -1, !dbg !1718
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1719
  %31 = and i32 %30, %29, !dbg !1719
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1719
  br label %32, !dbg !1720

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1721
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1728, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 %1, metadata !1729, metadata !DIExpression()), !dbg !1731
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
  ], !dbg !1732

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %4, metadata !1730, metadata !DIExpression()), !dbg !1731
  %5 = and i32 %4, -16, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %5, metadata !1730, metadata !DIExpression()), !dbg !1731
  %6 = zext i8 %1 to i32, !dbg !1736
  %7 = or i32 %5, %6, !dbg !1737
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1738
  br label %187, !dbg !1739

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %9, metadata !1730, metadata !DIExpression()), !dbg !1731
  %10 = and i32 %9, -241, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %10, metadata !1730, metadata !DIExpression()), !dbg !1731
  %11 = zext i8 %1 to i32, !dbg !1742
  %12 = shl nuw nsw i32 %11, 4, !dbg !1743
  %13 = or i32 %10, %12, !dbg !1744
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1745
  br label %187, !dbg !1746

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %15, metadata !1730, metadata !DIExpression()), !dbg !1731
  %16 = and i32 %15, -3841, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %16, metadata !1730, metadata !DIExpression()), !dbg !1731
  %17 = zext i8 %1 to i32, !dbg !1749
  %18 = shl nuw nsw i32 %17, 8, !dbg !1750
  %19 = or i32 %16, %18, !dbg !1751
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1752
  br label %187, !dbg !1753

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %21, metadata !1730, metadata !DIExpression()), !dbg !1731
  %22 = and i32 %21, -61441, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %22, metadata !1730, metadata !DIExpression()), !dbg !1731
  %23 = zext i8 %1 to i32, !dbg !1756
  %24 = shl nuw nsw i32 %23, 12, !dbg !1757
  %25 = or i32 %22, %24, !dbg !1758
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1759
  br label %187, !dbg !1760

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %27, metadata !1730, metadata !DIExpression()), !dbg !1731
  %28 = and i32 %27, -983041, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %28, metadata !1730, metadata !DIExpression()), !dbg !1731
  %29 = zext i8 %1 to i32, !dbg !1763
  %30 = shl nuw nsw i32 %29, 16, !dbg !1764
  %31 = or i32 %28, %30, !dbg !1765
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1766
  br label %187, !dbg !1767

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %33, metadata !1730, metadata !DIExpression()), !dbg !1731
  %34 = and i32 %33, -15728641, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %34, metadata !1730, metadata !DIExpression()), !dbg !1731
  %35 = zext i8 %1 to i32, !dbg !1770
  %36 = shl nuw nsw i32 %35, 20, !dbg !1771
  %37 = or i32 %34, %36, !dbg !1772
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1773
  br label %187, !dbg !1774

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %39, metadata !1730, metadata !DIExpression()), !dbg !1731
  %40 = and i32 %39, -251658241, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %40, metadata !1730, metadata !DIExpression()), !dbg !1731
  %41 = zext i8 %1 to i32, !dbg !1777
  %42 = shl nuw i32 %41, 24, !dbg !1778
  %43 = or i32 %40, %42, !dbg !1779
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1780
  br label %187, !dbg !1781

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %45, metadata !1730, metadata !DIExpression()), !dbg !1731
  %46 = and i32 %45, 268435455, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %46, metadata !1730, metadata !DIExpression()), !dbg !1731
  %47 = zext i8 %1 to i32, !dbg !1784
  %48 = shl i32 %47, 28, !dbg !1785
  %49 = or i32 %46, %48, !dbg !1786
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1787
  br label %187, !dbg !1788

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %51, metadata !1730, metadata !DIExpression()), !dbg !1731
  %52 = and i32 %51, -16, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %52, metadata !1730, metadata !DIExpression()), !dbg !1731
  %53 = zext i8 %1 to i32, !dbg !1791
  %54 = or i32 %52, %53, !dbg !1792
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1793
  br label %187, !dbg !1794

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %56, metadata !1730, metadata !DIExpression()), !dbg !1731
  %57 = and i32 %56, -241, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %57, metadata !1730, metadata !DIExpression()), !dbg !1731
  %58 = zext i8 %1 to i32, !dbg !1797
  %59 = shl nuw nsw i32 %58, 4, !dbg !1798
  %60 = or i32 %57, %59, !dbg !1799
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1800
  br label %187, !dbg !1801

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %62, metadata !1730, metadata !DIExpression()), !dbg !1731
  %63 = and i32 %62, -3841, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %63, metadata !1730, metadata !DIExpression()), !dbg !1731
  %64 = zext i8 %1 to i32, !dbg !1804
  %65 = shl nuw nsw i32 %64, 8, !dbg !1805
  %66 = or i32 %63, %65, !dbg !1806
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1807
  br label %187, !dbg !1808

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %68, metadata !1730, metadata !DIExpression()), !dbg !1731
  %69 = and i32 %68, -61441, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %69, metadata !1730, metadata !DIExpression()), !dbg !1731
  %70 = zext i8 %1 to i32, !dbg !1811
  %71 = shl nuw nsw i32 %70, 12, !dbg !1812
  %72 = or i32 %69, %71, !dbg !1813
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1814
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1815

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !1817
  br label %187, !dbg !1819

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %76, metadata !1730, metadata !DIExpression()), !dbg !1731
  %77 = and i32 %76, -983041, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %77, metadata !1730, metadata !DIExpression()), !dbg !1731
  %78 = zext i8 %1 to i32, !dbg !1822
  %79 = shl nuw nsw i32 %78, 16, !dbg !1823
  %80 = or i32 %77, %79, !dbg !1824
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1825
  %81 = and i8 %1, -2, !dbg !1826
  %82 = icmp eq i8 %81, 4, !dbg !1826
  br i1 %82, label %83, label %187, !dbg !1826

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !1828
  br label %187, !dbg !1830

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %86, metadata !1730, metadata !DIExpression()), !dbg !1731
  %87 = and i32 %86, -15728641, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %87, metadata !1730, metadata !DIExpression()), !dbg !1731
  %88 = zext i8 %1 to i32, !dbg !1833
  %89 = shl nuw nsw i32 %88, 20, !dbg !1834
  %90 = or i32 %87, %89, !dbg !1835
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1836
  %91 = icmp eq i8 %1, 6, !dbg !1837
  br i1 %91, label %92, label %187, !dbg !1839

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !1840
  br label %187, !dbg !1842

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %95, metadata !1730, metadata !DIExpression()), !dbg !1731
  %96 = and i32 %95, -251658241, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %96, metadata !1730, metadata !DIExpression()), !dbg !1731
  %97 = zext i8 %1 to i32, !dbg !1845
  %98 = shl nuw i32 %97, 24, !dbg !1846
  %99 = or i32 %96, %98, !dbg !1847
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1848
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1849

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !1851
  br label %187, !dbg !1853

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %103, metadata !1730, metadata !DIExpression()), !dbg !1731
  %104 = and i32 %103, 268435455, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %104, metadata !1730, metadata !DIExpression()), !dbg !1731
  %105 = zext i8 %1 to i32, !dbg !1856
  %106 = shl i32 %105, 28, !dbg !1857
  %107 = or i32 %104, %106, !dbg !1858
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1859
  %108 = and i8 %1, -3, !dbg !1860
  %109 = icmp eq i8 %108, 4, !dbg !1860
  br i1 %109, label %110, label %187, !dbg !1860

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !1862
  br label %187, !dbg !1864

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %113, metadata !1730, metadata !DIExpression()), !dbg !1731
  %114 = and i32 %113, -16, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %114, metadata !1730, metadata !DIExpression()), !dbg !1731
  %115 = zext i8 %1 to i32, !dbg !1867
  %116 = or i32 %114, %115, !dbg !1868
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1869
  %117 = and i8 %1, -3, !dbg !1870
  %118 = icmp eq i8 %117, 4, !dbg !1870
  br i1 %118, label %119, label %187, !dbg !1870

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !1872
  br label %187, !dbg !1874

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %122, metadata !1730, metadata !DIExpression()), !dbg !1731
  %123 = and i32 %122, -241, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %123, metadata !1730, metadata !DIExpression()), !dbg !1731
  %124 = zext i8 %1 to i32, !dbg !1877
  %125 = shl nuw nsw i32 %124, 4, !dbg !1878
  %126 = or i32 %123, %125, !dbg !1879
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1880
  br label %187, !dbg !1881

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %128, metadata !1730, metadata !DIExpression()), !dbg !1731
  %129 = and i32 %128, -3841, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %129, metadata !1730, metadata !DIExpression()), !dbg !1731
  %130 = zext i8 %1 to i32, !dbg !1884
  %131 = shl nuw nsw i32 %130, 8, !dbg !1885
  %132 = or i32 %129, %131, !dbg !1886
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1887
  br label %187, !dbg !1888

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %134, metadata !1730, metadata !DIExpression()), !dbg !1731
  %135 = and i32 %134, -61441, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %135, metadata !1730, metadata !DIExpression()), !dbg !1731
  %136 = zext i8 %1 to i32, !dbg !1891
  %137 = shl nuw nsw i32 %136, 12, !dbg !1892
  %138 = or i32 %135, %137, !dbg !1893
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1894
  br label %187, !dbg !1895

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %140, metadata !1730, metadata !DIExpression()), !dbg !1731
  %141 = and i32 %140, -983041, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %141, metadata !1730, metadata !DIExpression()), !dbg !1731
  %142 = zext i8 %1 to i32, !dbg !1898
  %143 = shl nuw nsw i32 %142, 16, !dbg !1899
  %144 = or i32 %141, %143, !dbg !1900
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1901
  br label %187, !dbg !1902

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %146, metadata !1730, metadata !DIExpression()), !dbg !1731
  %147 = and i32 %146, -15728641, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %147, metadata !1730, metadata !DIExpression()), !dbg !1731
  %148 = zext i8 %1 to i32, !dbg !1905
  %149 = shl nuw nsw i32 %148, 20, !dbg !1906
  %150 = or i32 %147, %149, !dbg !1907
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1908
  br label %187, !dbg !1909

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %152, metadata !1730, metadata !DIExpression()), !dbg !1731
  %153 = and i32 %152, -251658241, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %153, metadata !1730, metadata !DIExpression()), !dbg !1731
  %154 = zext i8 %1 to i32, !dbg !1912
  %155 = shl nuw i32 %154, 24, !dbg !1913
  %156 = or i32 %153, %155, !dbg !1914
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1915
  br label %187, !dbg !1916

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %158, metadata !1730, metadata !DIExpression()), !dbg !1731
  %159 = and i32 %158, 268435455, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %159, metadata !1730, metadata !DIExpression()), !dbg !1731
  %160 = zext i8 %1 to i32, !dbg !1919
  %161 = shl i32 %160, 28, !dbg !1920
  %162 = or i32 %159, %161, !dbg !1921
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1922
  br label %187, !dbg !1923

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1924
  call void @llvm.dbg.value(metadata i32 %164, metadata !1730, metadata !DIExpression()), !dbg !1731
  %165 = and i32 %164, -241, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %165, metadata !1730, metadata !DIExpression()), !dbg !1731
  %166 = zext i8 %1 to i32, !dbg !1926
  %167 = shl nuw nsw i32 %166, 4, !dbg !1927
  %168 = or i32 %165, %167, !dbg !1928
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1929
  br label %187, !dbg !1930

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %170, metadata !1730, metadata !DIExpression()), !dbg !1731
  %171 = and i32 %170, -3841, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %171, metadata !1730, metadata !DIExpression()), !dbg !1731
  %172 = zext i8 %1 to i32, !dbg !1933
  %173 = shl nuw nsw i32 %172, 8, !dbg !1934
  %174 = or i32 %171, %173, !dbg !1935
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1936
  br label %187, !dbg !1937

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %176, metadata !1730, metadata !DIExpression()), !dbg !1731
  %177 = and i32 %176, -61441, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %177, metadata !1730, metadata !DIExpression()), !dbg !1731
  %178 = zext i8 %1 to i32, !dbg !1940
  %179 = shl nuw nsw i32 %178, 12, !dbg !1941
  %180 = or i32 %177, %179, !dbg !1942
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1943
  br label %187, !dbg !1944

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %182, metadata !1730, metadata !DIExpression()), !dbg !1731
  %183 = and i32 %182, -983041, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %183, metadata !1730, metadata !DIExpression()), !dbg !1731
  %184 = zext i8 %1 to i32, !dbg !1947
  %185 = shl nuw nsw i32 %184, 16, !dbg !1948
  %186 = or i32 %183, %185, !dbg !1949
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1950
  br label %187, !dbg !1951

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1952
}

; Function Attrs: noinline nounwind optsize
define dso_local void @spim_irqhandler(i32 %0) #3 !dbg !1953 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 undef, metadata !1955, metadata !DIExpression()), !dbg !1957
  %3 = bitcast i32* %2 to i8*, !dbg !1958
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !1958
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1956, metadata !DIExpression()), !dbg !1959
  %4 = load void ()*, void ()** @halspim_isr, align 4, !dbg !1960
  tail call void %4() #15, !dbg !1960
  %5 = load volatile i32, i32* inttoptr (i32 603979828 to i32*), align 4, !dbg !1961
  store volatile i32 %5, i32* %2, align 4, !dbg !1962
  %6 = load volatile i32, i32* %2, align 4, !dbg !1963
  store volatile i32 %6, i32* %2, align 4, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !1965
  ret void, !dbg !1965
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @spim_isr_Register(void ()* noundef %0) local_unnamed_addr #5 !dbg !1966 {
  call void @llvm.dbg.value(metadata void ()* %0, metadata !1970, metadata !DIExpression()), !dbg !1971
  store void ()* %0, void ()** @halspim_isr, align 4, !dbg !1972
  ret void, !dbg !1973
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halSpim_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1974 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1978, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i32 %1, metadata !1979, metadata !DIExpression()), !dbg !1982
  %4 = bitcast i32* %3 to i8*, !dbg !1983
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !1983
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1981, metadata !DIExpression()), !dbg !1982
  %5 = tail call fastcc i32 @cmnReadRegister32() #14, !dbg !1985
  store volatile i32 %5, i32* %3, align 4, !dbg !1986
  %6 = load volatile i32, i32* %3, align 4, !dbg !1987
  %7 = lshr i32 %6, 28, !dbg !1988
  %8 = and i32 %7, 3, !dbg !1989
  store volatile i32 %8, i32* %3, align 4, !dbg !1990
  %9 = load volatile i32, i32* %3, align 4, !dbg !1991
  %10 = icmp eq i32 %9, 3, !dbg !1993
  br i1 %10, label %12, label %11, !dbg !1994

11:                                               ; preds = %2
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #15, !dbg !1995
  br label %12, !dbg !1997

12:                                               ; preds = %11, %2
  %13 = load volatile i32, i32* inttoptr (i32 -2097118796 to i32*), align 4, !dbg !1998
  %14 = and i32 %13, -131073, !dbg !1998
  store volatile i32 %14, i32* inttoptr (i32 -2097118796 to i32*), align 4, !dbg !1998
  %15 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 27, void (i32)* noundef nonnull @spim_irqhandler) #15, !dbg !1999
  %16 = tail call i32 @hal_nvic_set_priority(i32 noundef 27, i32 noundef 5) #15, !dbg !2000
  %17 = tail call i32 @hal_nvic_enable_irq(i32 noundef 27) #15, !dbg !2001
  %18 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2002
  %19 = and i32 %18, 268499332, !dbg !2002
  store volatile i32 %19, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2002
  %20 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2003
  %21 = shl i32 %1, 16, !dbg !2003
  %22 = or i32 %21, %0, !dbg !2003
  %23 = or i32 %22, %20, !dbg !2003
  store volatile i32 %23, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2003
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4), !dbg !2004
  ret i32 0, !dbg !2005
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32() unnamed_addr #2 !dbg !2006 {
  call void @llvm.dbg.value(metadata i8* inttoptr (i32 -2097118792 to i8*), metadata !2013, metadata !DIExpression()), !dbg !2014
  %1 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2015
  ret i32 %1, !dbg !2016
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @spim_busy_wait() local_unnamed_addr #0 !dbg !2017 {
  call void @llvm.dbg.value(metadata i32 60000, metadata !2021, metadata !DIExpression()), !dbg !2022
  br label %1, !dbg !2023

1:                                                ; preds = %6, %0
  %2 = phi i32 [ 60000, %0 ], [ %7, %6 ], !dbg !2022
  call void @llvm.dbg.value(metadata i32 %2, metadata !2021, metadata !DIExpression()), !dbg !2022
  %3 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2024
  %4 = and i32 %3, 65536, !dbg !2027
  %5 = icmp eq i32 %4, 0, !dbg !2028
  br i1 %5, label %9, label %6, !dbg !2029

6:                                                ; preds = %1
  %7 = add nsw i32 %2, -1, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %7, metadata !2021, metadata !DIExpression()), !dbg !2022
  %8 = icmp ugt i32 %2, 1, !dbg !2031
  br i1 %8, label %1, label %9, !dbg !2032, !llvm.loop !2033

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ -1, %6 ], !dbg !2022
  ret i32 %10, !dbg !2035
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !2036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2044, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %1, metadata !2045, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %2, metadata !2046, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %3, metadata !2047, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %4, metadata !2048, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 -1, metadata !2053, metadata !DIExpression()), !dbg !2055
  %6 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2056
  %7 = or i32 %6, 4, !dbg !2056
  store volatile i32 %7, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2056
  store volatile i32 %0, i32* inttoptr (i32 603979780 to i32*), align 4, !dbg !2057
  %8 = shl i32 %1, 27, !dbg !2058
  store volatile i32 %8, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2058
  call void @llvm.dbg.value(metadata i32 0, metadata !2050, metadata !DIExpression()), !dbg !2055
  br label %9, !dbg !2059

9:                                                ; preds = %5, %9
  %10 = phi i32 [ 0, %5 ], [ %14, %9 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !2050, metadata !DIExpression()), !dbg !2055
  %11 = shl nuw nsw i32 %10, 2, !dbg !2061
  %12 = add nuw nsw i32 %11, 603979784, !dbg !2061
  %13 = inttoptr i32 %12 to i32*, !dbg !2061
  store volatile i32 0, i32* %13, align 4, !dbg !2061
  %14 = add nuw nsw i32 %10, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i32 %14, metadata !2050, metadata !DIExpression()), !dbg !2055
  %15 = icmp eq i32 %14, 8, !dbg !2065
  br i1 %15, label %16, label %9, !dbg !2059, !llvm.loop !2066

16:                                               ; preds = %9
  %17 = and i32 %4, 2, !dbg !2068
  %18 = icmp eq i32 %17, 0, !dbg !2068
  br i1 %18, label %41, label %19, !dbg !2070

19:                                               ; preds = %16
  %20 = icmp eq i8* %2, null, !dbg !2071
  br i1 %20, label %70, label %21, !dbg !2074

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !2050, metadata !DIExpression()), !dbg !2055
  %22 = icmp eq i32 %3, 0, !dbg !2075
  br i1 %22, label %41, label %23, !dbg !2078

23:                                               ; preds = %21, %31
  %24 = phi i32 [ %39, %31 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !2050, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %24, metadata !2051, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2055
  %25 = and i32 %24, 3, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %25, metadata !2052, metadata !DIExpression()), !dbg !2055
  %26 = icmp eq i32 %25, 0, !dbg !2081
  %27 = and i32 %24, 2147483644, !dbg !2083
  %28 = add nuw nsw i32 %27, 603979784, !dbg !2083
  %29 = inttoptr i32 %28 to i32*, !dbg !2083
  br i1 %26, label %30, label %31, !dbg !2084

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %24, metadata !2051, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2055
  store volatile i32 0, i32* %29, align 4, !dbg !2085
  br label %31, !dbg !2087

31:                                               ; preds = %23, %30
  %32 = load volatile i32, i32* %29, align 4, !dbg !2088
  %33 = getelementptr inbounds i8, i8* %2, i32 %24, !dbg !2088
  %34 = load i8, i8* %33, align 1, !dbg !2088
  %35 = zext i8 %34 to i32, !dbg !2088
  %36 = shl nuw nsw i32 %25, 3, !dbg !2088
  %37 = shl nuw i32 %35, %36, !dbg !2088
  %38 = or i32 %37, %32, !dbg !2088
  store volatile i32 %38, i32* %29, align 4, !dbg !2088
  %39 = add nuw i32 %24, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %39, metadata !2050, metadata !DIExpression()), !dbg !2055
  %40 = icmp eq i32 %39, %3, !dbg !2075
  br i1 %40, label %41, label %23, !dbg !2078, !llvm.loop !2090

41:                                               ; preds = %31, %16, %21
  %42 = phi i32 [ 3, %21 ], [ 15, %16 ], [ 3, %31 ]
  %43 = load volatile i32, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2092
  %44 = and i32 %43, -2093568, !dbg !2092
  store volatile i32 %44, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2092
  %45 = load volatile i32, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2093
  %46 = shl i32 %3, %42, !dbg !2093
  %47 = or i32 %45, %46, !dbg !2093
  store volatile i32 %47, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2093
  %48 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2095
  %49 = or i32 %48, 256, !dbg !2095
  store volatile i32 %49, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2095
  %50 = tail call i32 @spim_busy_wait() #14, !dbg !2096
  %51 = and i32 %4, 3, !dbg !2097
  %52 = icmp eq i32 %51, 1, !dbg !2097
  br i1 %52, label %53, label %70, !dbg !2097

53:                                               ; preds = %41
  %54 = icmp eq i8* %2, null, !dbg !2098
  br i1 %54, label %74, label %55, !dbg !2102

55:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !2050, metadata !DIExpression()), !dbg !2055
  %56 = icmp eq i32 %3, 0, !dbg !2103
  br i1 %56, label %70, label %57, !dbg !2106

57:                                               ; preds = %55, %57
  %58 = phi i32 [ %68, %57 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i32 %58, metadata !2050, metadata !DIExpression()), !dbg !2055
  %59 = and i32 %58, 2147483644, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %58, metadata !2051, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %58, metadata !2052, metadata !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !2055
  %60 = add nuw nsw i32 %59, 603979784, !dbg !2107
  %61 = inttoptr i32 %60 to i32*, !dbg !2107
  %62 = load volatile i32, i32* %61, align 4, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %62, metadata !2049, metadata !DIExpression()), !dbg !2055
  %63 = shl i32 %58, 3, !dbg !2109
  %64 = and i32 %63, 24, !dbg !2109
  %65 = lshr i32 %62, %64, !dbg !2110
  %66 = trunc i32 %65 to i8, !dbg !2111
  %67 = getelementptr inbounds i8, i8* %2, i32 %58, !dbg !2112
  store i8 %66, i8* %67, align 1, !dbg !2113
  %68 = add nuw nsw i32 %58, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %68, metadata !2050, metadata !DIExpression()), !dbg !2055
  %69 = icmp eq i32 %68, %3, !dbg !2103
  br i1 %69, label %70, label %57, !dbg !2106, !llvm.loop !2115

70:                                               ; preds = %57, %55, %41, %19
  %71 = phi i32 [ -1, %19 ], [ 0, %41 ], [ 0, %55 ], [ 0, %57 ], !dbg !2055
  call void @llvm.dbg.value(metadata i32 %71, metadata !2053, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.label(metadata !2054), !dbg !2117
  %72 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2118
  %73 = and i32 %72, -5, !dbg !2118
  store volatile i32 %73, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2118
  br label %74, !dbg !2119

74:                                               ; preds = %53, %70
  %75 = phi i32 [ %71, %70 ], [ -1, %53 ], !dbg !2055
  ret i32 %75, !dbg !2120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %1, metadata !2126, metadata !DIExpression()), !dbg !2127
  %3 = trunc i32 %1 to i8, !dbg !2128
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #15, !dbg !2129
  ret i32 %4, !dbg !2130
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2135, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i8 %1, metadata !2136, metadata !DIExpression()), !dbg !2137
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2138
  ret i32 %3, !dbg !2139
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2140 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2151, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !2152, metadata !DIExpression()), !dbg !2154
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !2155
  store i32 %1, i32* %3, align 4, !dbg !2156
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #15, !dbg !2157
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !2158
  store i8 %4, i8* %5, align 4, !dbg !2159
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #15, !dbg !2160
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !2161
  store i8 %6, i8* %7, align 1, !dbg !2162
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #15, !dbg !2163
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !2164
  store i8 %8, i8* %9, align 2, !dbg !2165
  ret void, !dbg !2166
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #3 !dbg !2167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i32 0, metadata !2172, metadata !DIExpression()), !dbg !2173
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2174
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #15, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %2, metadata !2172, metadata !DIExpression()), !dbg !2173
  ret i32 %2, !dbg !2176
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #3 !dbg !2177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2179, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i32 0, metadata !2180, metadata !DIExpression()), !dbg !2181
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2182
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #15, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %2, metadata !2180, metadata !DIExpression()), !dbg !2181
  ret i32 %2, !dbg !2184
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #3 !dbg !2185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 0, metadata !2188, metadata !DIExpression()), !dbg !2189
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2190
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %2, metadata !2188, metadata !DIExpression()), !dbg !2189
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %3, metadata !2188, metadata !DIExpression()), !dbg !2189
  ret i32 %3, !dbg !2193
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2194 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 %1, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 0, metadata !2198, metadata !DIExpression()), !dbg !2199
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %3, metadata !2198, metadata !DIExpression()), !dbg !2199
  ret i32 %3, !dbg !2201
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !2202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8* %1, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32 0, metadata !2208, metadata !DIExpression()), !dbg !2209
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #15, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %3, metadata !2208, metadata !DIExpression()), !dbg !2209
  ret i32 %3, !dbg !2211
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #0 !dbg !2212 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2214, metadata !DIExpression()), !dbg !2215
  br label %1, !dbg !2216

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2214, metadata !DIExpression()), !dbg !2215
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2218
  %4 = load i32, i32* %3, align 4, !dbg !2218
  %5 = inttoptr i32 %4 to i32*, !dbg !2218
  %6 = load volatile i32, i32* %5, align 4, !dbg !2218
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2221
  store i32 %6, i32* %7, align 4, !dbg !2222
  %8 = add nuw nsw i32 %2, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %8, metadata !2214, metadata !DIExpression()), !dbg !2215
  %9 = icmp eq i32 %8, 22, !dbg !2224
  br i1 %9, label %10, label %1, !dbg !2216, !llvm.loop !2225

10:                                               ; preds = %1
  ret void, !dbg !2227
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #0 !dbg !2228 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %1, !dbg !2232

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2230, metadata !DIExpression()), !dbg !2231
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2234
  %4 = load i32, i32* %3, align 4, !dbg !2234
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2237
  %6 = load i32, i32* %5, align 4, !dbg !2237
  %7 = inttoptr i32 %6 to i32*, !dbg !2237
  store volatile i32 %4, i32* %7, align 4, !dbg !2238
  %8 = add nuw nsw i32 %2, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %8, metadata !2230, metadata !DIExpression()), !dbg !2231
  %9 = icmp eq i32 %8, 22, !dbg !2240
  br i1 %9, label %10, label %1, !dbg !2232, !llvm.loop !2241

10:                                               ; preds = %1
  ret void, !dbg !2243
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2248, metadata !DIExpression()), !dbg !2249
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2250
  tail call void asm sideeffect "dsb", ""() #16, !dbg !2251, !srcloc !2252
  tail call void asm sideeffect "isb", ""() #16, !dbg !2253, !srcloc !2254
  ret void, !dbg !2255
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !2256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2260, metadata !DIExpression()), !dbg !2261
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2262
  ret void, !dbg !2263
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2264 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #16, !dbg !2269, !srcloc !2276
  call void @llvm.dbg.value(metadata i32 %1, metadata !2273, metadata !DIExpression()) #16, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %1, metadata !2268, metadata !DIExpression()), !dbg !2278
  tail call void asm sideeffect "cpsid i", "~{memory}"() #16, !dbg !2279, !srcloc !2283
  ret i32 %1, !dbg !2284
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2287, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %0, metadata !2289, metadata !DIExpression()) #16, !dbg !2292
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #16, !dbg !2295, !srcloc !2296
  ret void, !dbg !2297
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2298 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression()), !dbg !2305
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
  ], !dbg !2306

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2304, metadata !DIExpression()), !dbg !2305
  %4 = trunc i32 %1 to i8, !dbg !2307
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2308
  br label %5, !dbg !2309

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2305
  ret i32 %6, !dbg !2310
}

; Function Attrs: noinline nounwind optsize
define dso_local void @spim_Lisr() #3 !dbg !2311 {
  %1 = load volatile i32, i32* @spi_ok_cnt, align 4, !dbg !2312
  %2 = add nsw i32 %1, 1, !dbg !2312
  store volatile i32 %2, i32* @spi_ok_cnt, align 4, !dbg !2312
  %3 = load volatile i32, i32* @spi_ok_cnt, align 4, !dbg !2313
  %4 = load i32, i32* @quotient, align 4, !dbg !2315
  %5 = add i32 %4, 1, !dbg !2316
  %6 = icmp eq i32 %3, %5, !dbg !2317
  br i1 %6, label %7, label %10, !dbg !2318

7:                                                ; preds = %0
  %8 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2319
  %9 = tail call i32 @hal_gpio_set_output(i32 noundef %8, i32 noundef 1) #15, !dbg !2321
  store volatile i32 0, i32* @spi_ok_cnt, align 4, !dbg !2322
  br label %10, !dbg !2323

10:                                               ; preds = %7, %0
  ret void, !dbg !2324
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %1, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 0, metadata !2331, metadata !DIExpression()), !dbg !2332
  tail call void @spim_isr_Register(void ()* noundef nonnull @spim_Lisr) #15, !dbg !2333
  %3 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2334
  %4 = tail call i32 @hal_gpio_set_direction(i32 noundef %3, i32 noundef 1) #15, !dbg !2335
  %5 = or i32 %0, 4, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %5, metadata !2329, metadata !DIExpression()), !dbg !2332
  %6 = tail call i32 @halSpim_init(i32 noundef %5, i32 noundef %1) #15, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %6, metadata !2331, metadata !DIExpression()), !dbg !2332
  %7 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2338
  %8 = tail call i32 @hal_gpio_set_output(i32 noundef %7, i32 noundef 1) #15, !dbg !2339
  ret i32 %6, !dbg !2340
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_write(i8* noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !159 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !167, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %1, metadata !168, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !171, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 4, metadata !172, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2341
  %3 = udiv i32 %1, 36, !dbg !2342
  store i32 %3, i32* @quotient, align 4, !dbg !2343
  %4 = mul i32 %3, 36
  %5 = sub i32 %1, %4
  store i32 %5, i32* @spim_write.remainder, align 4, !dbg !2344
  %6 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2345
  %7 = and i32 %6, 8, !dbg !2346
  store i32 %7, i32* @spim_write.regVal, align 4, !dbg !2346
  %8 = icmp eq i32 %1, 0, !dbg !2347
  br i1 %8, label %57, label %9, !dbg !2349

9:                                                ; preds = %2
  %10 = icmp ult i32 %1, 5, !dbg !2350
  br i1 %10, label %19, label %11, !dbg !2352

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !2341
  %12 = icmp ult i32 %1, 36, !dbg !2353
  br i1 %12, label %38, label %13, !dbg !2357

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %0, i32 4
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2341
  %15 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef 0, i32 noundef %7, i32 noundef 4) #14, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %15, metadata !171, metadata !DIExpression()), !dbg !2341
  %16 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %15, i32 noundef 4, i8* noundef nonnull %14, i32 noundef 32, i32 noundef 2) #15, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %16, metadata !169, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 1, metadata !173, metadata !DIExpression()), !dbg !2341
  %17 = load i32, i32* @quotient, align 4, !dbg !2361
  %18 = icmp ugt i32 %17, 1, !dbg !2353
  br i1 %18, label %22, label %32, !dbg !2357, !llvm.loop !2362

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef 0, i32 noundef %7, i32 noundef %5) #14, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %20, metadata !171, metadata !DIExpression()), !dbg !2341
  %21 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %20, i32 noundef %1, i8* noundef null, i32 noundef 0, i32 noundef 0) #15, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %21, metadata !169, metadata !DIExpression()), !dbg !2341
  br label %57, !dbg !2367

22:                                               ; preds = %13, %22
  %23 = phi i32 [ %29, %22 ], [ 1, %13 ]
  %24 = load i32, i32* @spim_write.regVal, align 4, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %23, metadata !173, metadata !DIExpression()), !dbg !2341
  %25 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %23, i32 noundef %24, i32 noundef 4) #14, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %25, metadata !171, metadata !DIExpression()), !dbg !2341
  %26 = mul i32 %23, 36, !dbg !2369
  %27 = getelementptr inbounds i8, i8* %14, i32 %26, !dbg !2370
  %28 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %25, i32 noundef 4, i8* noundef nonnull %27, i32 noundef 32, i32 noundef 2) #15, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %28, metadata !169, metadata !DIExpression()), !dbg !2341
  %29 = add nuw i32 %23, 1, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %29, metadata !173, metadata !DIExpression()), !dbg !2341
  %30 = load i32, i32* @quotient, align 4, !dbg !2361
  %31 = icmp ult i32 %29, %30, !dbg !2353
  br i1 %31, label %22, label %32, !dbg !2357, !llvm.loop !2362

32:                                               ; preds = %22, %13
  %33 = phi i32 [ %16, %13 ], [ %28, %22 ], !dbg !2360
  %34 = phi i32 [ 1, %13 ], [ %29, %22 ], !dbg !2371
  %35 = phi i32 [ %17, %13 ], [ %30, %22 ], !dbg !2361
  %36 = load i32, i32* @spim_write.remainder, align 4, !dbg !2372
  %37 = mul i32 %35, 36, !dbg !2372
  br label %38, !dbg !2372

38:                                               ; preds = %32, %11
  %39 = phi i32 [ %5, %11 ], [ %36, %32 ], !dbg !2372
  %40 = phi i32 [ 0, %11 ], [ %33, %32 ], !dbg !2341
  %41 = phi i32 [ 0, %11 ], [ %34, %32 ], !dbg !2374
  %42 = phi i32 [ 0, %11 ], [ %37, %32 ]
  %43 = icmp ult i32 %39, 5, !dbg !2375
  br i1 %43, label %44, label %50, !dbg !2376

44:                                               ; preds = %38
  %45 = icmp eq i32 %39, 0, !dbg !2377
  br i1 %45, label %57, label %46, !dbg !2380

46:                                               ; preds = %44
  %47 = load i32, i32* @spim_write.regVal, align 4, !dbg !2381
  %48 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %41, i32 noundef %47, i32 noundef %39) #14, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %48, metadata !171, metadata !DIExpression()), !dbg !2341
  %49 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %48, i32 noundef %39, i8* noundef null, i32 noundef 0, i32 noundef 0) #15, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %49, metadata !169, metadata !DIExpression()), !dbg !2341
  br label %57, !dbg !2384

50:                                               ; preds = %38
  %51 = load i32, i32* @spim_write.regVal, align 4, !dbg !2385
  %52 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %41, i32 noundef %51, i32 noundef 4) #14, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %52, metadata !171, metadata !DIExpression()), !dbg !2341
  %53 = getelementptr inbounds i8, i8* %0, i32 %42, !dbg !2388
  %54 = getelementptr inbounds i8, i8* %53, i32 4, !dbg !2389
  %55 = add i32 %39, -4, !dbg !2390
  %56 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %52, i32 noundef 4, i8* noundef nonnull %54, i32 noundef %55, i32 noundef 2) #15, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %56, metadata !169, metadata !DIExpression()), !dbg !2341
  br label %57, !dbg !2392

57:                                               ; preds = %44, %2, %50, %46, %19
  %58 = phi i32 [ %21, %19 ], [ %49, %46 ], [ %56, %50 ], [ -1, %2 ], [ %40, %44 ], !dbg !2341
  ret i32 %58, !dbg !2393
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @spim_fill_in_data(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !dbg !2394 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2398, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %2, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %3, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2403
  %5 = icmp eq i32 %2, 0, !dbg !2404
  br i1 %5, label %6, label %57, !dbg !2406

6:                                                ; preds = %4
  switch i32 %3, label %108 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %22
    i32 4, label %37
  ], !dbg !2407

7:                                                ; preds = %6
  %8 = mul i32 %1, 36, !dbg !2409
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !2412
  %10 = load i8, i8* %9, align 1, !dbg !2413
  %11 = zext i8 %10 to i32, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %11, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2414

12:                                               ; preds = %6
  %13 = mul i32 %1, 36, !dbg !2415
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !2418
  %15 = load i8, i8* %14, align 1, !dbg !2419
  %16 = zext i8 %15 to i32, !dbg !2419
  %17 = shl nuw nsw i32 %16, 8, !dbg !2420
  %18 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !2421
  %19 = load i8, i8* %18, align 1, !dbg !2422
  %20 = zext i8 %19 to i32, !dbg !2422
  %21 = or i32 %17, %20, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %21, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2424

22:                                               ; preds = %6
  %23 = mul i32 %1, 36, !dbg !2425
  %24 = getelementptr inbounds i8, i8* %0, i32 %23, !dbg !2428
  %25 = load i8, i8* %24, align 1, !dbg !2429
  %26 = zext i8 %25 to i32, !dbg !2429
  %27 = shl nuw nsw i32 %26, 16, !dbg !2430
  %28 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !2431
  %29 = load i8, i8* %28, align 1, !dbg !2432
  %30 = zext i8 %29 to i32, !dbg !2432
  %31 = shl nuw nsw i32 %30, 8, !dbg !2433
  %32 = or i32 %31, %27, !dbg !2434
  %33 = getelementptr inbounds i8, i8* %24, i32 2, !dbg !2435
  %34 = load i8, i8* %33, align 1, !dbg !2436
  %35 = zext i8 %34 to i32, !dbg !2436
  %36 = or i32 %32, %35, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %36, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2438

37:                                               ; preds = %6
  %38 = mul i32 %1, 36, !dbg !2439
  %39 = getelementptr inbounds i8, i8* %0, i32 %38, !dbg !2442
  %40 = load i8, i8* %39, align 1, !dbg !2443
  %41 = zext i8 %40 to i32, !dbg !2443
  %42 = shl nuw i32 %41, 24, !dbg !2444
  %43 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !2445
  %44 = load i8, i8* %43, align 1, !dbg !2446
  %45 = zext i8 %44 to i32, !dbg !2446
  %46 = shl nuw nsw i32 %45, 16, !dbg !2447
  %47 = or i32 %46, %42, !dbg !2448
  %48 = getelementptr inbounds i8, i8* %39, i32 2, !dbg !2449
  %49 = load i8, i8* %48, align 1, !dbg !2450
  %50 = zext i8 %49 to i32, !dbg !2450
  %51 = shl nuw nsw i32 %50, 8, !dbg !2451
  %52 = or i32 %47, %51, !dbg !2452
  %53 = getelementptr inbounds i8, i8* %39, i32 3, !dbg !2453
  %54 = load i8, i8* %53, align 1, !dbg !2454
  %55 = zext i8 %54 to i32, !dbg !2454
  %56 = or i32 %52, %55, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %56, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2456

57:                                               ; preds = %4
  switch i32 %3, label %108 [
    i32 1, label %58
    i32 2, label %63
    i32 3, label %73
    i32 4, label %88
  ], !dbg !2457

58:                                               ; preds = %57
  %59 = mul i32 %1, 36, !dbg !2459
  %60 = getelementptr inbounds i8, i8* %0, i32 %59, !dbg !2462
  %61 = load i8, i8* %60, align 1, !dbg !2463
  %62 = zext i8 %61 to i32, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %62, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2464

63:                                               ; preds = %57
  %64 = mul i32 %1, 36, !dbg !2465
  %65 = getelementptr inbounds i8, i8* %0, i32 %64, !dbg !2468
  %66 = load i8, i8* %65, align 1, !dbg !2469
  %67 = zext i8 %66 to i32, !dbg !2469
  %68 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !2470
  %69 = load i8, i8* %68, align 1, !dbg !2471
  %70 = zext i8 %69 to i32, !dbg !2471
  %71 = shl nuw nsw i32 %70, 8, !dbg !2472
  %72 = or i32 %71, %67, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %72, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2474

73:                                               ; preds = %57
  %74 = mul i32 %1, 36, !dbg !2475
  %75 = getelementptr inbounds i8, i8* %0, i32 %74, !dbg !2478
  %76 = load i8, i8* %75, align 1, !dbg !2479
  %77 = zext i8 %76 to i32, !dbg !2479
  %78 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !2480
  %79 = load i8, i8* %78, align 1, !dbg !2481
  %80 = zext i8 %79 to i32, !dbg !2481
  %81 = shl nuw nsw i32 %80, 8, !dbg !2482
  %82 = or i32 %81, %77, !dbg !2483
  %83 = getelementptr inbounds i8, i8* %75, i32 2, !dbg !2484
  %84 = load i8, i8* %83, align 1, !dbg !2485
  %85 = zext i8 %84 to i32, !dbg !2485
  %86 = shl nuw nsw i32 %85, 16, !dbg !2486
  %87 = or i32 %82, %86, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %87, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2488

88:                                               ; preds = %57
  %89 = mul i32 %1, 36, !dbg !2489
  %90 = getelementptr inbounds i8, i8* %0, i32 %89, !dbg !2492
  %91 = load i8, i8* %90, align 1, !dbg !2493
  %92 = zext i8 %91 to i32, !dbg !2493
  %93 = getelementptr inbounds i8, i8* %90, i32 1, !dbg !2494
  %94 = load i8, i8* %93, align 1, !dbg !2495
  %95 = zext i8 %94 to i32, !dbg !2495
  %96 = shl nuw nsw i32 %95, 8, !dbg !2496
  %97 = or i32 %96, %92, !dbg !2497
  %98 = getelementptr inbounds i8, i8* %90, i32 2, !dbg !2498
  %99 = load i8, i8* %98, align 1, !dbg !2499
  %100 = zext i8 %99 to i32, !dbg !2499
  %101 = shl nuw nsw i32 %100, 16, !dbg !2500
  %102 = or i32 %97, %101, !dbg !2501
  %103 = getelementptr inbounds i8, i8* %90, i32 3, !dbg !2502
  %104 = load i8, i8* %103, align 1, !dbg !2503
  %105 = zext i8 %104 to i32, !dbg !2503
  %106 = shl nuw i32 %105, 24, !dbg !2504
  %107 = or i32 %102, %106, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %107, metadata !2402, metadata !DIExpression()), !dbg !2403
  br label %108, !dbg !2506

108:                                              ; preds = %57, %6, %58, %73, %88, %63, %7, %22, %37, %12
  %109 = phi i32 [ %11, %7 ], [ %21, %12 ], [ %36, %22 ], [ %56, %37 ], [ %62, %58 ], [ %72, %63 ], [ %87, %73 ], [ %107, %88 ], [ 0, %6 ], [ 0, %57 ], !dbg !2403
  call void @llvm.dbg.value(metadata i32 %109, metadata !2402, metadata !DIExpression()), !dbg !2403
  ret i32 %109, !dbg !2507
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_read(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !182, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !184, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 %3, metadata !185, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !188, metadata !DIExpression()), !dbg !2508
  %5 = lshr i32 %3, 5, !dbg !2509
  store i32 %5, i32* @quotient, align 4, !dbg !2510
  %6 = and i32 %3, 31, !dbg !2511
  store i32 %6, i32* @spim_read.remainder, align 4, !dbg !2512
  %7 = icmp ult i32 %3, 32, !dbg !2513
  br i1 %7, label %8, label %10, !dbg !2515

8:                                                ; preds = %4
  %9 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef 1) #15, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %9, metadata !186, metadata !DIExpression()), !dbg !2508
  br label %31, !dbg !2518

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !189, metadata !DIExpression()), !dbg !2508
  %11 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef 32, i32 noundef 1) #15, !dbg !2519
  call void @llvm.dbg.value(metadata i32 1, metadata !189, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !2508
  %12 = load i32, i32* @quotient, align 4, !dbg !2521
  %13 = icmp ugt i32 %12, 1, !dbg !2524
  br i1 %13, label %14, label %22, !dbg !2525

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %19, %14 ], [ 1, %10 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !189, metadata !DIExpression()), !dbg !2508
  %16 = shl i32 %15, 5, !dbg !2526
  %17 = getelementptr inbounds i8, i8* %2, i32 %16, !dbg !2528
  %18 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef 0, i32 noundef 0, i8* noundef %17, i32 noundef 32, i32 noundef 1) #15, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %18, metadata !186, metadata !DIExpression()), !dbg !2508
  %19 = add nuw i32 %15, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %19, metadata !189, metadata !DIExpression()), !dbg !2508
  %20 = load i32, i32* @quotient, align 4, !dbg !2521
  %21 = icmp ult i32 %19, %20, !dbg !2524
  br i1 %21, label %14, label %22, !dbg !2525, !llvm.loop !2531

22:                                               ; preds = %14, %10
  %23 = phi i32 [ 0, %10 ], [ %18, %14 ], !dbg !2508
  %24 = phi i32 [ %12, %10 ], [ %20, %14 ], !dbg !2521
  %25 = load i32, i32* @spim_read.remainder, align 4, !dbg !2533
  %26 = icmp eq i32 %25, 0, !dbg !2535
  br i1 %26, label %31, label %27, !dbg !2536

27:                                               ; preds = %22
  %28 = shl i32 %24, 5, !dbg !2537
  %29 = getelementptr inbounds i8, i8* %2, i32 %28, !dbg !2539
  %30 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef 0, i32 noundef 0, i8* noundef %29, i32 noundef %25, i32 noundef 1) #15, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %30, metadata !186, metadata !DIExpression()), !dbg !2508
  br label %31, !dbg !2541

31:                                               ; preds = %22, %27, %8
  %32 = phi i32 [ %9, %8 ], [ %30, %27 ], [ %23, %22 ], !dbg !2542
  ret i32 %32, !dbg !2543
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2544 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2546, metadata !DIExpression()), !dbg !2548
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %1, metadata !2547, metadata !DIExpression()), !dbg !2548
  %2 = lshr i32 %1, 13, !dbg !2550
  %3 = and i32 %2, 7, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %3, metadata !2547, metadata !DIExpression()), !dbg !2548
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %4, metadata !2546, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %4, metadata !2546, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2548
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2553
  %6 = load i32, i32* %5, align 4, !dbg !2553
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2553
  %8 = load i32, i32* %7, align 4, !dbg !2553
  %9 = and i32 %4, -2048, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %9, metadata !2546, metadata !DIExpression()), !dbg !2548
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2555
  %10 = or i32 %9, %8, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %10, metadata !2546, metadata !DIExpression()), !dbg !2548
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2557
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2558
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2559
  tail call void @SystemCoreClockUpdate() #15, !dbg !2560
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2561
  %13 = udiv i32 %12, 1000, !dbg !2562
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !2563
  ret void, !dbg !2564
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !2565 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2566
  ret i32 %1, !dbg !2567
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !2568 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2569
  ret i32 %1, !dbg !2570
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !2571 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2575
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2574, metadata !DIExpression()), !dbg !2577
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2578
  store volatile i32 %3, i32* %1, align 4, !dbg !2579
  %4 = load volatile i32, i32* %1, align 4, !dbg !2580
  %5 = lshr i32 %4, 28, !dbg !2581
  %6 = and i32 %5, 3, !dbg !2582
  store volatile i32 %6, i32* %1, align 4, !dbg !2583
  %7 = load volatile i32, i32* %1, align 4, !dbg !2584
  %8 = icmp eq i32 %7, 0, !dbg !2586
  br i1 %8, label %9, label %22, !dbg !2587

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2588
  store volatile i32 %10, i32* %1, align 4, !dbg !2590
  %11 = load volatile i32, i32* %1, align 4, !dbg !2591
  %12 = and i32 %11, -16777217, !dbg !2592
  store volatile i32 %12, i32* %1, align 4, !dbg !2593
  %13 = load volatile i32, i32* %1, align 4, !dbg !2594
  %14 = or i32 %13, 536870912, !dbg !2595
  store volatile i32 %14, i32* %1, align 4, !dbg !2596
  %15 = load volatile i32, i32* %1, align 4, !dbg !2597
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2598
  br label %16, !dbg !2599

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2600
  store volatile i32 %17, i32* %1, align 4, !dbg !2602
  %18 = load volatile i32, i32* %1, align 4, !dbg !2603
  %19 = and i32 %18, 134217728, !dbg !2604
  store volatile i32 %19, i32* %1, align 4, !dbg !2605
  %20 = load volatile i32, i32* %1, align 4, !dbg !2606
  %21 = icmp eq i32 %20, 0, !dbg !2607
  br i1 %21, label %16, label %22, !dbg !2608, !llvm.loop !2609

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2611
  ret void, !dbg !2611
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32.1(i8* noundef %0) unnamed_addr #2 !dbg !2612 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2614, metadata !DIExpression()), !dbg !2615
  %2 = bitcast i8* %0 to i32*, !dbg !2616
  %3 = load volatile i32, i32* %2, align 4, !dbg !2617
  ret i32 %3, !dbg !2618
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2619 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2623, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %1, metadata !2624, metadata !DIExpression()), !dbg !2625
  %3 = bitcast i8* %0 to i32*, !dbg !2626
  store volatile i32 %1, i32* %3, align 4, !dbg !2627
  ret void, !dbg !2628
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !2629 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2633, metadata !DIExpression()), !dbg !2636
  %3 = bitcast i32* %2 to i8*, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2637
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2635, metadata !DIExpression()), !dbg !2636
  %4 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2639
  store volatile i32 %4, i32* %2, align 4, !dbg !2640
  %5 = load volatile i32, i32* %2, align 4, !dbg !2641
  %6 = lshr i32 %5, 28, !dbg !2642
  %7 = and i32 %6, 3, !dbg !2643
  store volatile i32 %7, i32* %2, align 4, !dbg !2644
  %8 = load volatile i32, i32* %2, align 4, !dbg !2645
  %9 = icmp eq i32 %8, 3, !dbg !2647
  br i1 %9, label %38, label %10, !dbg !2648

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2649
  store volatile i32 %11, i32* %2, align 4, !dbg !2651
  %12 = load volatile i32, i32* %2, align 4, !dbg !2652
  %13 = and i32 %12, -262145, !dbg !2653
  store volatile i32 %13, i32* %2, align 4, !dbg !2654
  %14 = load volatile i32, i32* %2, align 4, !dbg !2655
  %15 = and i32 %14, -16777217, !dbg !2656
  store volatile i32 %15, i32* %2, align 4, !dbg !2657
  %16 = load volatile i32, i32* %2, align 4, !dbg !2658
  store volatile i32 %16, i32* %2, align 4, !dbg !2659
  %17 = load volatile i32, i32* %2, align 4, !dbg !2660
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2661
  %18 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2662
  store volatile i32 %18, i32* %2, align 4, !dbg !2663
  %19 = load volatile i32, i32* %2, align 4, !dbg !2664
  %20 = and i32 %19, -805306369, !dbg !2665
  store volatile i32 %20, i32* %2, align 4, !dbg !2666
  %21 = load volatile i32, i32* %2, align 4, !dbg !2667
  %22 = and i32 %21, -16777217, !dbg !2668
  store volatile i32 %22, i32* %2, align 4, !dbg !2669
  %23 = load volatile i32, i32* %2, align 4, !dbg !2670
  %24 = or i32 %23, 805306368, !dbg !2671
  store volatile i32 %24, i32* %2, align 4, !dbg !2672
  %25 = load volatile i32, i32* %2, align 4, !dbg !2673
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2674
  br label %26, !dbg !2675

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2676
  store volatile i32 %27, i32* %2, align 4, !dbg !2678
  %28 = load volatile i32, i32* %2, align 4, !dbg !2679
  %29 = and i32 %28, 67108864, !dbg !2680
  store volatile i32 %29, i32* %2, align 4, !dbg !2681
  %30 = load volatile i32, i32* %2, align 4, !dbg !2682
  %31 = icmp eq i32 %30, 0, !dbg !2683
  br i1 %31, label %26, label %32, !dbg !2684, !llvm.loop !2685

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2687
  store volatile i32 %33, i32* %2, align 4, !dbg !2688
  %34 = load volatile i32, i32* %2, align 4, !dbg !2689
  %35 = and i32 %34, -262145, !dbg !2690
  store volatile i32 %35, i32* %2, align 4, !dbg !2691
  %36 = load volatile i32, i32* %2, align 4, !dbg !2692
  %37 = and i32 %36, -16777217, !dbg !2693
  store volatile i32 %37, i32* %2, align 4, !dbg !2694
  br label %38, !dbg !2695

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2696
  store volatile i32 %39, i32* %2, align 4, !dbg !2697
  %40 = icmp eq i8 %0, 0, !dbg !2698
  %41 = load volatile i32, i32* %2, align 4, !dbg !2700
  br i1 %40, label %44, label %42, !dbg !2701

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2702
  store volatile i32 %43, i32* %2, align 4, !dbg !2704
  br label %45, !dbg !2705

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2706
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2708
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2709
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2710
  ret void, !dbg !2710
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !2711 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2715
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2715
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2714, metadata !DIExpression()), !dbg !2717
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2718
  store volatile i32 %3, i32* %1, align 4, !dbg !2719
  %4 = load volatile i32, i32* %1, align 4, !dbg !2720
  %5 = and i32 %4, -805306369, !dbg !2721
  store volatile i32 %5, i32* %1, align 4, !dbg !2722
  %6 = load volatile i32, i32* %1, align 4, !dbg !2723
  %7 = and i32 %6, -16777217, !dbg !2724
  store volatile i32 %7, i32* %1, align 4, !dbg !2725
  %8 = load volatile i32, i32* %1, align 4, !dbg !2726
  store volatile i32 %8, i32* %1, align 4, !dbg !2727
  %9 = load volatile i32, i32* %1, align 4, !dbg !2728
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2729
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2730
  store volatile i32 %10, i32* %1, align 4, !dbg !2731
  %11 = load volatile i32, i32* %1, align 4, !dbg !2732
  %12 = and i32 %11, -262145, !dbg !2733
  store volatile i32 %12, i32* %1, align 4, !dbg !2734
  %13 = load volatile i32, i32* %1, align 4, !dbg !2735
  %14 = and i32 %13, -16777217, !dbg !2736
  store volatile i32 %14, i32* %1, align 4, !dbg !2737
  %15 = load volatile i32, i32* %1, align 4, !dbg !2738
  store volatile i32 %15, i32* %1, align 4, !dbg !2739
  %16 = load volatile i32, i32* %1, align 4, !dbg !2740
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2741
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2742
  ret void, !dbg !2742
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2743 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2747
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2746, metadata !DIExpression()), !dbg !2749
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2750
  store volatile i32 %3, i32* %1, align 4, !dbg !2751
  %4 = load volatile i32, i32* %1, align 4, !dbg !2752
  %5 = and i32 %4, -8, !dbg !2753
  store volatile i32 %5, i32* %1, align 4, !dbg !2754
  %6 = load volatile i32, i32* %1, align 4, !dbg !2755
  store volatile i32 %6, i32* %1, align 4, !dbg !2756
  %7 = load volatile i32, i32* %1, align 4, !dbg !2757
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2758
  %8 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2759
  store volatile i32 %8, i32* %1, align 4, !dbg !2760
  %9 = load volatile i32, i32* %1, align 4, !dbg !2761
  %10 = and i32 %9, -49153, !dbg !2762
  store volatile i32 %10, i32* %1, align 4, !dbg !2763
  %11 = load volatile i32, i32* %1, align 4, !dbg !2764
  store volatile i32 %11, i32* %1, align 4, !dbg !2765
  %12 = load volatile i32, i32* %1, align 4, !dbg !2766
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2767
  br label %13, !dbg !2768

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2769
  %15 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2770
  %16 = icmp eq i32 %14, %15, !dbg !2771
  br i1 %16, label %17, label %13, !dbg !2768, !llvm.loop !2772

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2774
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2775
  tail call void @SystemCoreClockUpdate() #15, !dbg !2776
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2777
  %20 = udiv i32 %19, 1000, !dbg !2778
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2780
  ret void, !dbg !2780
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2781 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2785
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2785
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2783, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2784, metadata !DIExpression()), !dbg !2787
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2788
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2789
  store volatile i32 %3, i32* %1, align 4, !dbg !2790
  %4 = load volatile i32, i32* %1, align 4, !dbg !2791
  %5 = and i32 %4, -49153, !dbg !2792
  store volatile i32 %5, i32* %1, align 4, !dbg !2793
  %6 = load volatile i32, i32* %1, align 4, !dbg !2794
  %7 = or i32 %6, 16384, !dbg !2795
  store volatile i32 %7, i32* %1, align 4, !dbg !2796
  %8 = load volatile i32, i32* %1, align 4, !dbg !2797
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2798
  br label %9, !dbg !2799

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2800
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2801
  %12 = icmp eq i32 %10, %11, !dbg !2802
  br i1 %12, label %13, label %9, !dbg !2799, !llvm.loop !2803

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2805
  store volatile i32 %14, i32* %1, align 4, !dbg !2806
  %15 = load volatile i32, i32* %1, align 4, !dbg !2807
  %16 = and i32 %15, -1009, !dbg !2808
  store volatile i32 %16, i32* %1, align 4, !dbg !2809
  %17 = load volatile i32, i32* %1, align 4, !dbg !2810
  %18 = or i32 %17, 128, !dbg !2811
  store volatile i32 %18, i32* %1, align 4, !dbg !2812
  %19 = load volatile i32, i32* %1, align 4, !dbg !2813
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2814
  %20 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2815
  store volatile i32 %20, i32* %1, align 4, !dbg !2816
  %21 = load volatile i32, i32* %1, align 4, !dbg !2817
  %22 = and i32 %21, -8, !dbg !2818
  store volatile i32 %22, i32* %1, align 4, !dbg !2819
  %23 = load volatile i32, i32* %1, align 4, !dbg !2820
  %24 = or i32 %23, 4, !dbg !2821
  store volatile i32 %24, i32* %1, align 4, !dbg !2822
  %25 = load volatile i32, i32* %1, align 4, !dbg !2823
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2824
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2825
  tail call void @SystemCoreClockUpdate() #15, !dbg !2826
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2827
  %27 = udiv i32 %26, 1000, !dbg !2828
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2830
  ret void, !dbg !2830
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2831 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2835
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2835
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2834, metadata !DIExpression()), !dbg !2837
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2838
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2839
  store volatile i32 %3, i32* %1, align 4, !dbg !2840
  %4 = load volatile i32, i32* %1, align 4, !dbg !2841
  %5 = and i32 %4, -49153, !dbg !2842
  store volatile i32 %5, i32* %1, align 4, !dbg !2843
  %6 = load volatile i32, i32* %1, align 4, !dbg !2844
  %7 = or i32 %6, 32768, !dbg !2845
  store volatile i32 %7, i32* %1, align 4, !dbg !2846
  %8 = load volatile i32, i32* %1, align 4, !dbg !2847
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2848
  br label %9, !dbg !2849

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2850
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2851
  %12 = icmp eq i32 %10, %11, !dbg !2852
  br i1 %12, label %13, label %9, !dbg !2849, !llvm.loop !2853

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2855
  store volatile i32 %14, i32* %1, align 4, !dbg !2856
  %15 = load volatile i32, i32* %1, align 4, !dbg !2857
  %16 = and i32 %15, -1009, !dbg !2858
  store volatile i32 %16, i32* %1, align 4, !dbg !2859
  %17 = load volatile i32, i32* %1, align 4, !dbg !2860
  %18 = or i32 %17, 32, !dbg !2861
  store volatile i32 %18, i32* %1, align 4, !dbg !2862
  %19 = load volatile i32, i32* %1, align 4, !dbg !2863
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2864
  %20 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2865
  store volatile i32 %20, i32* %1, align 4, !dbg !2866
  %21 = load volatile i32, i32* %1, align 4, !dbg !2867
  %22 = and i32 %21, -8, !dbg !2868
  store volatile i32 %22, i32* %1, align 4, !dbg !2869
  %23 = load volatile i32, i32* %1, align 4, !dbg !2870
  %24 = or i32 %23, 4, !dbg !2871
  store volatile i32 %24, i32* %1, align 4, !dbg !2872
  %25 = load volatile i32, i32* %1, align 4, !dbg !2873
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2874
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2875
  tail call void @SystemCoreClockUpdate() #15, !dbg !2876
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2877
  %27 = udiv i32 %26, 1000, !dbg !2878
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2880
  ret void, !dbg !2880
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2881 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2885
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2885
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2884, metadata !DIExpression()), !dbg !2887
  tail call void @cmnPLL1ON() #14, !dbg !2888
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2889
  store volatile i32 %3, i32* %1, align 4, !dbg !2890
  %4 = load volatile i32, i32* %1, align 4, !dbg !2891
  %5 = and i32 %4, -49153, !dbg !2892
  store volatile i32 %5, i32* %1, align 4, !dbg !2893
  %6 = load volatile i32, i32* %1, align 4, !dbg !2894
  store volatile i32 %6, i32* %1, align 4, !dbg !2895
  %7 = load volatile i32, i32* %1, align 4, !dbg !2896
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2897
  br label %8, !dbg !2898

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2899
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2900
  %11 = icmp eq i32 %9, %10, !dbg !2901
  br i1 %11, label %12, label %8, !dbg !2898, !llvm.loop !2902

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2904
  store volatile i32 %13, i32* %1, align 4, !dbg !2905
  %14 = load volatile i32, i32* %1, align 4, !dbg !2906
  %15 = and i32 %14, -8, !dbg !2907
  store volatile i32 %15, i32* %1, align 4, !dbg !2908
  %16 = load volatile i32, i32* %1, align 4, !dbg !2909
  %17 = or i32 %16, 2, !dbg !2910
  store volatile i32 %17, i32* %1, align 4, !dbg !2911
  %18 = load volatile i32, i32* %1, align 4, !dbg !2912
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2913
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2914
  tail call void @SystemCoreClockUpdate() #15, !dbg !2915
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2916
  %20 = udiv i32 %19, 1000, !dbg !2917
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2918
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2919
  ret void, !dbg !2919
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !2920 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2924
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2923, metadata !DIExpression()), !dbg !2926
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2927
  store volatile i32 %3, i32* %1, align 4, !dbg !2928
  %4 = load volatile i32, i32* %1, align 4, !dbg !2929
  %5 = and i32 %4, -24577, !dbg !2930
  store volatile i32 %5, i32* %1, align 4, !dbg !2931
  %6 = load volatile i32, i32* %1, align 4, !dbg !2932
  store volatile i32 %6, i32* %1, align 4, !dbg !2933
  %7 = load volatile i32, i32* %1, align 4, !dbg !2934
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2936
  ret void, !dbg !2936
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2937 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %1, metadata !2941, metadata !DIExpression()), !dbg !2943
  ret i32 %1, !dbg !2944
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2945 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2948
  %2 = and i32 %1, 1, !dbg !2950
  %3 = icmp eq i32 %2, 0, !dbg !2950
  br i1 %3, label %7, label %4, !dbg !2951

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2952
  %6 = and i32 %5, 255, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %5, metadata !2947, metadata !DIExpression()), !dbg !2955
  br label %7, !dbg !2956

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2957
  ret i32 %8, !dbg !2958
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2964, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8 %1, metadata !2965, metadata !DIExpression()), !dbg !2967
  %3 = icmp eq i32 %0, 0, !dbg !2968
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2968
  call void @llvm.dbg.value(metadata i32 %4, metadata !2966, metadata !DIExpression()), !dbg !2967
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2969

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2970
  %9 = and i32 %8, 32, !dbg !2971
  %10 = icmp eq i32 %9, 0, !dbg !2972
  br i1 %10, label %7, label %11, !dbg !2969, !llvm.loop !2973

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2975
  %13 = inttoptr i32 %4 to i32*, !dbg !2976
  store volatile i32 %12, i32* %13, align 65536, !dbg !2977
  ret void, !dbg !2978
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2983, metadata !DIExpression()), !dbg !2986
  %2 = icmp eq i32 %0, 0, !dbg !2987
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2987
  call void @llvm.dbg.value(metadata i32 %3, metadata !2984, metadata !DIExpression()), !dbg !2986
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2988

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2989
  %8 = and i32 %7, 1, !dbg !2990
  %9 = icmp eq i32 %8, 0, !dbg !2991
  br i1 %9, label %6, label %10, !dbg !2988, !llvm.loop !2992

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2994
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2994
  %13 = trunc i32 %12 to i8, !dbg !2994
  call void @llvm.dbg.value(metadata i8 %13, metadata !2985, metadata !DIExpression()), !dbg !2986
  ret i8 %13, !dbg !2995
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3000, metadata !DIExpression()), !dbg !3003
  %2 = icmp eq i32 %0, 0, !dbg !3004
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %3, metadata !3001, metadata !DIExpression()), !dbg !3003
  %4 = or i32 %3, 20, !dbg !3005
  %5 = inttoptr i32 %4 to i32*, !dbg !3005
  %6 = load volatile i32, i32* %5, align 4, !dbg !3005
  %7 = and i32 %6, 1, !dbg !3007
  %8 = icmp eq i32 %7, 0, !dbg !3007
  br i1 %8, label %13, label %9, !dbg !3008

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3009
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3009
  %12 = and i32 %11, 255, !dbg !3011
  call void @llvm.dbg.value(metadata i32 %11, metadata !3002, metadata !DIExpression()), !dbg !3003
  br label %13, !dbg !3012

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3013
  ret i32 %14, !dbg !3014
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3019, metadata !DIExpression()), !dbg !3020
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3021
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3022

2:                                                ; preds = %1
  br label %3, !dbg !3023

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3027
  %6 = or i32 %5, 1, !dbg !3027
  store volatile i32 %6, i32* %4, align 4, !dbg !3027
  br label %7, !dbg !3028

7:                                                ; preds = %3, %1
  ret void, !dbg !3028
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3035, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 %1, metadata !3036, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i16 %2, metadata !3037, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i16 %3, metadata !3038, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i16 %4, metadata !3039, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3041, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3048, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 0, metadata !3051, metadata !DIExpression()), !dbg !3052
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !3055
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3056
  %7 = icmp eq i32 %0, 1, !dbg !3057
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3057
  call void @llvm.dbg.value(metadata i32 %8, metadata !3041, metadata !DIExpression()), !dbg !3052
  %9 = or i32 %8, 36, !dbg !3058
  %10 = inttoptr i32 %9 to i32*, !dbg !3058
  store volatile i32 3, i32* %10, align 4, !dbg !3059
  %11 = or i32 %8, 12, !dbg !3060
  %12 = inttoptr i32 %11 to i32*, !dbg !3060
  %13 = load volatile i32, i32* %12, align 4, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %13, metadata !3043, metadata !DIExpression()), !dbg !3052
  %14 = or i32 %13, 128, !dbg !3061
  store volatile i32 %14, i32* %12, align 4, !dbg !3062
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3063
  %16 = udiv i32 %15, %1, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %16, metadata !3042, metadata !DIExpression()), !dbg !3052
  %17 = lshr i32 %16, 8, !dbg !3065
  %18 = add nuw nsw i32 %17, 1, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %18, metadata !3044, metadata !DIExpression()), !dbg !3052
  %19 = udiv i32 %16, %18, !dbg !3067
  %20 = add i32 %19, -1, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %20, metadata !3045, metadata !DIExpression()), !dbg !3052
  %21 = icmp eq i32 %20, 3, !dbg !3070
  %22 = lshr i32 %20, 1, !dbg !3072
  %23 = add nsw i32 %22, -1, !dbg !3072
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %24, metadata !3046, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 undef, metadata !3051, metadata !DIExpression()), !dbg !3052
  %25 = mul i32 %15, 10, !dbg !3073
  %26 = udiv i32 %25, %1, !dbg !3074
  %27 = udiv i32 %26, %16, !dbg !3075
  %28 = mul i32 %19, -10, !dbg !3076
  %29 = add i32 %27, %28, !dbg !3077
  %30 = urem i32 %29, 10, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %30, metadata !3047, metadata !DIExpression()), !dbg !3052
  %31 = and i32 %18, 255, !dbg !3079
  %32 = inttoptr i32 %8 to i32*, !dbg !3080
  store volatile i32 %31, i32* %32, align 65536, !dbg !3081
  %33 = lshr i32 %18, 8, !dbg !3082
  %34 = and i32 %33, 255, !dbg !3083
  %35 = or i32 %8, 4, !dbg !3084
  %36 = inttoptr i32 %35 to i32*, !dbg !3084
  store volatile i32 %34, i32* %36, align 4, !dbg !3085
  %37 = or i32 %8, 40, !dbg !3086
  %38 = inttoptr i32 %37 to i32*, !dbg !3086
  store volatile i32 %20, i32* %38, align 8, !dbg !3087
  %39 = or i32 %8, 44, !dbg !3088
  %40 = inttoptr i32 %39 to i32*, !dbg !3088
  store volatile i32 %24, i32* %40, align 4, !dbg !3089
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3090
  %42 = load i16, i16* %41, align 2, !dbg !3090
  %43 = zext i16 %42 to i32, !dbg !3090
  %44 = or i32 %8, 88, !dbg !3091
  %45 = inttoptr i32 %44 to i32*, !dbg !3091
  store volatile i32 %43, i32* %45, align 8, !dbg !3092
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3093
  %47 = load i16, i16* %46, align 2, !dbg !3093
  %48 = zext i16 %47 to i32, !dbg !3093
  %49 = or i32 %8, 84, !dbg !3094
  %50 = inttoptr i32 %49 to i32*, !dbg !3094
  store volatile i32 %48, i32* %50, align 4, !dbg !3095
  store volatile i32 %13, i32* %12, align 4, !dbg !3096
  %51 = or i32 %8, 8, !dbg !3097
  %52 = inttoptr i32 %51 to i32*, !dbg !3097
  store volatile i32 71, i32* %52, align 8, !dbg !3098
  %53 = inttoptr i32 %11 to i16*, !dbg !3099
  %54 = load volatile i16, i16* %53, align 4, !dbg !3099
  call void @llvm.dbg.value(metadata i16 %54, metadata !3040, metadata !DIExpression()), !dbg !3052
  %55 = and i16 %54, -64, !dbg !3100
  call void @llvm.dbg.value(metadata i16 %54, metadata !3040, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3052
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3040, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3052
  %56 = and i16 %2, -61, !dbg !3101
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3040, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3052
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3040, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3052
  %57 = and i16 %4, -57, !dbg !3102
  call void @llvm.dbg.value(metadata i16 undef, metadata !3040, metadata !DIExpression()), !dbg !3052
  %58 = or i16 %56, %3, !dbg !3101
  %59 = or i16 %58, %57, !dbg !3102
  %60 = or i16 %59, %55, !dbg !3103
  call void @llvm.dbg.value(metadata i16 %60, metadata !3040, metadata !DIExpression()), !dbg !3052
  store volatile i16 %60, i16* %53, align 4, !dbg !3104
  ret void, !dbg !3105
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !3106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3111, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 %1, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32* %2, metadata !3113, metadata !DIExpression()), !dbg !3114
  %4 = icmp eq i32 %0, 0, !dbg !3115
  %5 = icmp eq i32 %1, 0, !dbg !3117
  br i1 %4, label %6, label %16, !dbg !3118

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3119

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3121
  %9 = zext i16 %8 to i32, !dbg !3121
  br label %26, !dbg !3124

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3125
  %12 = zext i16 %11 to i32, !dbg !3125
  store i32 %12, i32* %2, align 4, !dbg !3127
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3128
  %14 = zext i16 %13 to i32, !dbg !3128
  %15 = sub nsw i32 %12, %14, !dbg !3129
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3130

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3132
  %19 = zext i16 %18 to i32, !dbg !3132
  br label %26, !dbg !3135

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3136
  %22 = zext i16 %21 to i32, !dbg !3136
  store i32 %22, i32* %2, align 4, !dbg !3138
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3139
  %24 = zext i16 %23 to i32, !dbg !3139
  %25 = sub nsw i32 %22, %24, !dbg !3140
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3117
  ret void, !dbg !3141
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3146, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8* %1, metadata !3147, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 %2, metadata !3148, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 0, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i32 0, metadata !3149, metadata !DIExpression()), !dbg !3150
  %4 = icmp eq i32 %2, 0, !dbg !3151
  br i1 %4, label %15, label %5, !dbg !3154

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3149, metadata !DIExpression()), !dbg !3150
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3155

7:                                                ; preds = %5
  br label %8, !dbg !3157

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3161
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3161
  store i8 %10, i8* %11, align 1, !dbg !3161
  br label %12, !dbg !3162

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %13, metadata !3149, metadata !DIExpression()), !dbg !3150
  %14 = icmp eq i32 %13, %2, !dbg !3151
  br i1 %14, label %15, label %5, !dbg !3154, !llvm.loop !3163

15:                                               ; preds = %12, %3
  ret void, !dbg !3165
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i8* %1, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 %2, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i32 0, metadata !3175, metadata !DIExpression()), !dbg !3176
  %4 = icmp eq i32 %2, 0, !dbg !3177
  br i1 %4, label %16, label %5, !dbg !3180

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3175, metadata !DIExpression()), !dbg !3176
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3181

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3183
  %9 = load i8, i8* %8, align 1, !dbg !3183
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3186
  br label %13, !dbg !3187

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3188
  %12 = load i8, i8* %11, align 1, !dbg !3188
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3191
  br label %13, !dbg !3192

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3193
  call void @llvm.dbg.value(metadata i32 %14, metadata !3175, metadata !DIExpression()), !dbg !3176
  %15 = icmp eq i32 %14, %2, !dbg !3177
  br i1 %15, label %16, label %5, !dbg !3180, !llvm.loop !3194

16:                                               ; preds = %13, %3
  ret void, !dbg !3196
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %1, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %2, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %3, metadata !3204, metadata !DIExpression()), !dbg !3205
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3206

5:                                                ; preds = %4
  br label %6, !dbg !3207

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3211
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3211
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3211
  br label %9, !dbg !3212

9:                                                ; preds = %6, %4
  ret void, !dbg !3212
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3213 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3217, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i8* %1, metadata !3218, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %2, metadata !3219, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %3, metadata !3220, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %4, metadata !3221, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %5, metadata !3222, metadata !DIExpression()), !dbg !3223
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3224

7:                                                ; preds = %6
  br label %8, !dbg !3225

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3229
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3229
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3229
  br label %11, !dbg !3230

11:                                               ; preds = %8, %6
  ret void, !dbg !3230
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3235, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3236, metadata !DIExpression()), !dbg !3237
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3238

3:                                                ; preds = %2
  br label %4, !dbg !3239

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3243
  br label %6, !dbg !3244

6:                                                ; preds = %4, %2
  ret void, !dbg !3244
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3247, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3248, metadata !DIExpression()), !dbg !3249
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3250

3:                                                ; preds = %2
  br label %4, !dbg !3251

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3255
  br label %6, !dbg !3256

6:                                                ; preds = %4, %2
  ret void, !dbg !3256
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3259, metadata !DIExpression()), !dbg !3263
  %2 = icmp eq i32 %0, 0, !dbg !3264
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3264
  call void @llvm.dbg.value(metadata i32 %3, metadata !3260, metadata !DIExpression()), !dbg !3263
  %4 = or i32 %3, 12, !dbg !3265
  %5 = inttoptr i32 %4 to i32*, !dbg !3265
  %6 = load volatile i32, i32* %5, align 4, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %6, metadata !3262, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3263
  store volatile i32 191, i32* %5, align 4, !dbg !3266
  %7 = or i32 %3, 8, !dbg !3267
  %8 = inttoptr i32 %7 to i32*, !dbg !3267
  %9 = load volatile i32, i32* %8, align 8, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %9, metadata !3261, metadata !DIExpression()), !dbg !3263
  %10 = and i32 %9, 65327, !dbg !3268
  %11 = or i32 %10, 208, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %9, metadata !3261, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3263
  store volatile i32 %11, i32* %8, align 8, !dbg !3269
  %12 = or i32 %3, 68, !dbg !3270
  %13 = inttoptr i32 %12 to i32*, !dbg !3270
  store volatile i32 0, i32* %13, align 4, !dbg !3271
  store volatile i32 0, i32* %5, align 4, !dbg !3272
  %14 = or i32 %3, 16, !dbg !3273
  %15 = inttoptr i32 %14 to i32*, !dbg !3273
  store volatile i32 2, i32* %15, align 16, !dbg !3274
  %16 = and i32 %6, 65535, !dbg !3275
  store volatile i32 %16, i32* %5, align 4, !dbg !3276
  ret void, !dbg !3277
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !3278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3282, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 %1, metadata !3283, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 %2, metadata !3284, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 %3, metadata !3285, metadata !DIExpression()), !dbg !3289
  %5 = icmp eq i32 %0, 0, !dbg !3290
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %6, metadata !3286, metadata !DIExpression()), !dbg !3289
  %7 = or i32 %6, 12, !dbg !3291
  %8 = inttoptr i32 %7 to i32*, !dbg !3291
  %9 = load volatile i32, i32* %8, align 4, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %9, metadata !3288, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3289
  store volatile i32 191, i32* %8, align 4, !dbg !3292
  %10 = zext i8 %1 to i32, !dbg !3293
  %11 = or i32 %6, 16, !dbg !3294
  %12 = inttoptr i32 %11 to i32*, !dbg !3294
  store volatile i32 %10, i32* %12, align 16, !dbg !3295
  %13 = or i32 %6, 20, !dbg !3296
  %14 = inttoptr i32 %13 to i32*, !dbg !3296
  store volatile i32 %10, i32* %14, align 4, !dbg !3297
  %15 = zext i8 %2 to i32, !dbg !3298
  %16 = or i32 %6, 24, !dbg !3299
  %17 = inttoptr i32 %16 to i32*, !dbg !3299
  store volatile i32 %15, i32* %17, align 8, !dbg !3300
  %18 = or i32 %6, 28, !dbg !3301
  %19 = inttoptr i32 %18 to i32*, !dbg !3301
  store volatile i32 %15, i32* %19, align 4, !dbg !3302
  %20 = or i32 %6, 8, !dbg !3303
  %21 = inttoptr i32 %20 to i32*, !dbg !3303
  %22 = load volatile i32, i32* %21, align 8, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %22, metadata !3287, metadata !DIExpression()), !dbg !3289
  %23 = and i32 %22, 65525, !dbg !3304
  %24 = or i32 %23, 10, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %22, metadata !3287, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3289
  store volatile i32 %24, i32* %21, align 8, !dbg !3305
  %25 = and i32 %9, 65535, !dbg !3306
  store volatile i32 %25, i32* %8, align 4, !dbg !3307
  %26 = zext i8 %3 to i32, !dbg !3308
  %27 = or i32 %6, 64, !dbg !3309
  %28 = inttoptr i32 %27 to i32*, !dbg !3309
  store volatile i32 %26, i32* %28, align 64, !dbg !3310
  %29 = or i32 %6, 68, !dbg !3311
  %30 = inttoptr i32 %29 to i32*, !dbg !3311
  store volatile i32 1, i32* %30, align 4, !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3319
  %2 = icmp eq i32 %0, 0, !dbg !3320
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %3, metadata !3317, metadata !DIExpression()), !dbg !3319
  %4 = or i32 %3, 12, !dbg !3321
  %5 = inttoptr i32 %4 to i32*, !dbg !3321
  %6 = load volatile i32, i32* %5, align 4, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %6, metadata !3318, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3319
  store volatile i32 191, i32* %5, align 4, !dbg !3322
  %7 = or i32 %3, 8, !dbg !3323
  %8 = inttoptr i32 %7 to i32*, !dbg !3323
  store volatile i32 0, i32* %8, align 8, !dbg !3324
  store volatile i32 0, i32* %5, align 4, !dbg !3325
  %9 = and i32 %6, 65535, !dbg !3326
  store volatile i32 %9, i32* %5, align 4, !dbg !3327
  ret void, !dbg !3328
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !3329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()), !dbg !3333
  %2 = icmp eq i32 %0, 0, !dbg !3334
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %3, metadata !3332, metadata !DIExpression()), !dbg !3333
  %4 = or i32 %3, 12, !dbg !3335
  %5 = inttoptr i32 %4 to i32*, !dbg !3335
  store volatile i32 191, i32* %5, align 4, !dbg !3336
  %6 = or i32 %3, 8, !dbg !3337
  %7 = inttoptr i32 %6 to i32*, !dbg !3337
  store volatile i32 16, i32* %7, align 8, !dbg !3338
  %8 = or i32 %3, 16, !dbg !3339
  %9 = inttoptr i32 %8 to i32*, !dbg !3339
  store volatile i32 0, i32* %9, align 16, !dbg !3340
  %10 = or i32 %3, 24, !dbg !3341
  %11 = inttoptr i32 %10 to i32*, !dbg !3341
  store volatile i32 0, i32* %11, align 8, !dbg !3342
  store volatile i32 128, i32* %5, align 4, !dbg !3343
  %12 = inttoptr i32 %3 to i32*, !dbg !3344
  store volatile i32 0, i32* %12, align 65536, !dbg !3345
  %13 = or i32 %3, 4, !dbg !3346
  %14 = inttoptr i32 %13 to i32*, !dbg !3346
  store volatile i32 0, i32* %14, align 4, !dbg !3347
  store volatile i32 0, i32* %5, align 4, !dbg !3348
  store volatile i32 0, i32* %14, align 4, !dbg !3349
  store volatile i32 0, i32* %7, align 8, !dbg !3350
  store volatile i32 191, i32* %5, align 4, !dbg !3351
  store volatile i32 0, i32* %7, align 8, !dbg !3352
  store volatile i32 0, i32* %5, align 4, !dbg !3353
  store volatile i32 0, i32* %9, align 16, !dbg !3354
  %15 = or i32 %3, 28, !dbg !3355
  %16 = inttoptr i32 %15 to i32*, !dbg !3355
  store volatile i32 0, i32* %16, align 4, !dbg !3356
  %17 = or i32 %3, 36, !dbg !3357
  %18 = inttoptr i32 %17 to i32*, !dbg !3357
  store volatile i32 0, i32* %18, align 4, !dbg !3358
  %19 = or i32 %3, 40, !dbg !3359
  %20 = inttoptr i32 %19 to i32*, !dbg !3359
  store volatile i32 0, i32* %20, align 8, !dbg !3360
  %21 = or i32 %3, 44, !dbg !3361
  %22 = inttoptr i32 %21 to i32*, !dbg !3361
  store volatile i32 0, i32* %22, align 4, !dbg !3362
  %23 = or i32 %3, 52, !dbg !3363
  %24 = inttoptr i32 %23 to i32*, !dbg !3363
  store volatile i32 0, i32* %24, align 4, !dbg !3364
  %25 = or i32 %3, 60, !dbg !3365
  %26 = inttoptr i32 %25 to i32*, !dbg !3365
  store volatile i32 0, i32* %26, align 4, !dbg !3366
  %27 = or i32 %3, 64, !dbg !3367
  %28 = inttoptr i32 %27 to i32*, !dbg !3367
  store volatile i32 0, i32* %28, align 64, !dbg !3368
  %29 = or i32 %3, 68, !dbg !3369
  %30 = inttoptr i32 %29 to i32*, !dbg !3369
  store volatile i32 0, i32* %30, align 4, !dbg !3370
  %31 = or i32 %3, 72, !dbg !3371
  %32 = inttoptr i32 %31 to i32*, !dbg !3371
  store volatile i32 0, i32* %32, align 8, !dbg !3372
  %33 = or i32 %3, 76, !dbg !3373
  %34 = inttoptr i32 %33 to i32*, !dbg !3373
  store volatile i32 0, i32* %34, align 4, !dbg !3374
  %35 = or i32 %3, 80, !dbg !3375
  %36 = inttoptr i32 %35 to i32*, !dbg !3375
  store volatile i32 0, i32* %36, align 16, !dbg !3376
  %37 = or i32 %3, 84, !dbg !3377
  %38 = inttoptr i32 %37 to i32*, !dbg !3377
  store volatile i32 0, i32* %38, align 4, !dbg !3378
  %39 = or i32 %3, 88, !dbg !3379
  %40 = inttoptr i32 %39 to i32*, !dbg !3379
  store volatile i32 0, i32* %40, align 8, !dbg !3380
  %41 = or i32 %3, 96, !dbg !3381
  %42 = inttoptr i32 %41 to i32*, !dbg !3381
  store volatile i32 0, i32* %42, align 32, !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !3384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3386, metadata !DIExpression()), !dbg !3388
  %2 = icmp eq i32 %0, 0, !dbg !3389
  call void @llvm.dbg.value(metadata i32 undef, metadata !3387, metadata !DIExpression()), !dbg !3388
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3390

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3391
  %7 = and i32 %6, 64, !dbg !3392
  %8 = icmp eq i32 %7, 0, !dbg !3393
  br i1 %8, label %5, label %9, !dbg !3390, !llvm.loop !3394

9:                                                ; preds = %5
  ret void, !dbg !3396
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3397 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3401, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 %1, metadata !3402, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8* %2, metadata !3403, metadata !DIExpression()), !dbg !3414
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3415
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3415
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3404, metadata !DIExpression()), !dbg !3416
  %7 = bitcast i32* %5 to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3417
  call void @llvm.dbg.value(metadata i32* %5, metadata !3413, metadata !DIExpression(DW_OP_deref)), !dbg !3414
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3418
  call void @llvm.va_start(i8* nonnull %6), !dbg !3419
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3420
  %10 = load i32, i32* %9, align 4, !dbg !3420
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3420
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3420
  call void @llvm.va_end(i8* nonnull %6), !dbg !3421
  %13 = load i32, i32* %5, align 4, !dbg !3422
  call void @llvm.dbg.value(metadata i32 %13, metadata !3413, metadata !DIExpression()), !dbg !3414
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3423
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3424
  ret void, !dbg !3424
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3425 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3427, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 %1, metadata !3428, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i8* %2, metadata !3429, metadata !DIExpression()), !dbg !3432
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3433
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3433
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3430, metadata !DIExpression()), !dbg !3434
  %7 = bitcast i32* %5 to i8*, !dbg !3435
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3435
  call void @llvm.dbg.value(metadata i32* %5, metadata !3431, metadata !DIExpression(DW_OP_deref)), !dbg !3432
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3436
  call void @llvm.va_start(i8* nonnull %6), !dbg !3437
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3438
  %10 = load i32, i32* %9, align 4, !dbg !3438
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3438
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3438
  call void @llvm.va_end(i8* nonnull %6), !dbg !3439
  %13 = load i32, i32* %5, align 4, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %13, metadata !3431, metadata !DIExpression()), !dbg !3432
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3441
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3442
  ret void, !dbg !3442
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3443 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3445, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i32 %1, metadata !3446, metadata !DIExpression()), !dbg !3450
  call void @llvm.dbg.value(metadata i8* %2, metadata !3447, metadata !DIExpression()), !dbg !3450
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3451
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3451
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3448, metadata !DIExpression()), !dbg !3452
  %7 = bitcast i32* %5 to i8*, !dbg !3453
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3453
  call void @llvm.dbg.value(metadata i32* %5, metadata !3449, metadata !DIExpression(DW_OP_deref)), !dbg !3450
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3454
  call void @llvm.va_start(i8* nonnull %6), !dbg !3455
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3456
  %10 = load i32, i32* %9, align 4, !dbg !3456
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3456
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3456
  call void @llvm.va_end(i8* nonnull %6), !dbg !3457
  %13 = load i32, i32* %5, align 4, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %13, metadata !3449, metadata !DIExpression()), !dbg !3450
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3459
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3460
  ret void, !dbg !3460
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3461 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3463, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i32 %1, metadata !3464, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i8* %2, metadata !3465, metadata !DIExpression()), !dbg !3468
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3469
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3466, metadata !DIExpression()), !dbg !3470
  %7 = bitcast i32* %5 to i8*, !dbg !3471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3471
  call void @llvm.dbg.value(metadata i32* %5, metadata !3467, metadata !DIExpression(DW_OP_deref)), !dbg !3468
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3472
  call void @llvm.va_start(i8* nonnull %6), !dbg !3473
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3474
  %10 = load i32, i32* %9, align 4, !dbg !3474
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3474
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3474
  call void @llvm.va_end(i8* nonnull %6), !dbg !3475
  %13 = load i32, i32* %5, align 4, !dbg !3476
  call void @llvm.dbg.value(metadata i32 %13, metadata !3467, metadata !DIExpression()), !dbg !3468
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3477
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3478
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3478
  ret void, !dbg !3478
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3479 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %1, metadata !3486, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %2, metadata !3487, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %3, metadata !3488, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %4, metadata !3489, metadata !DIExpression()), !dbg !3490
  ret void, !dbg !3491
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3492 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %1, metadata !3499, metadata !DIExpression()), !dbg !3501
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3502, !range !3504
  %3 = icmp eq i8 %2, 0, !dbg !3502
  br i1 %3, label %5, label %4, !dbg !3505

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3506
  br label %15, !dbg !3508

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3509
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3511
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3512
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3513
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3514
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3515
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3516
  call void @llvm.dbg.value(metadata i32 0, metadata !3497, metadata !DIExpression()), !dbg !3501
  br label %7, !dbg !3517

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3497, metadata !DIExpression()), !dbg !3501
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3519
  store volatile i32 0, i32* %9, align 4, !dbg !3522
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3523
  store volatile i32 0, i32* %10, align 4, !dbg !3524
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3525
  store i32 0, i32* %11, align 4, !dbg !3526
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3527
  store i32 0, i32* %12, align 4, !dbg !3528
  %13 = add nuw nsw i32 %8, 1, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %13, metadata !3497, metadata !DIExpression()), !dbg !3501
  %14 = icmp eq i32 %13, 16, !dbg !3530
  br i1 %14, label %15, label %7, !dbg !3517, !llvm.loop !3531

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3501
  ret i32 %16, !dbg !3533
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3534 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3537
  call void @llvm.dbg.value(metadata i32 %1, metadata !3536, metadata !DIExpression()), !dbg !3538
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3539
  %3 = and i32 %2, -31, !dbg !3539
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3539
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3540
  %5 = or i32 %4, 19, !dbg !3540
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3540
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3541
  %7 = and i32 %6, -31, !dbg !3541
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3541
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %9 = or i32 %8, 3, !dbg !3542
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  tail call void asm sideeffect "isb", ""() #16, !dbg !3543, !srcloc !3547
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3548
  ret i32 0, !dbg !3549
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3550 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3553
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3554
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3555
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3556
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3557
  call void @llvm.dbg.value(metadata i32 0, metadata !3552, metadata !DIExpression()), !dbg !3558
  br label %2, !dbg !3559

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3552, metadata !DIExpression()), !dbg !3558
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3561
  store volatile i32 0, i32* %4, align 4, !dbg !3564
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3565
  store volatile i32 0, i32* %5, align 4, !dbg !3566
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3567
  store i32 0, i32* %6, align 4, !dbg !3568
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3569
  store i32 0, i32* %7, align 4, !dbg !3570
  %8 = add nuw nsw i32 %3, 1, !dbg !3571
  call void @llvm.dbg.value(metadata i32 %8, metadata !3552, metadata !DIExpression()), !dbg !3558
  %9 = icmp eq i32 %8, 16, !dbg !3572
  br i1 %9, label %10, label %2, !dbg !3559, !llvm.loop !3573

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3575
  ret i32 0, !dbg !3576
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3577 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3578
  %2 = and i32 %1, 768, !dbg !3580
  %3 = icmp eq i32 %2, 0, !dbg !3580
  br i1 %3, label %8, label %4, !dbg !3581

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3582
  %6 = or i32 %5, 13, !dbg !3582
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3582
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3583
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3584
  br label %8, !dbg !3585

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3586
  ret i32 %9, !dbg !3587
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3588 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3591
  call void @llvm.dbg.value(metadata i32 %1, metadata !3590, metadata !DIExpression()), !dbg !3592
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3593
  %3 = and i32 %2, 1, !dbg !3595
  %4 = icmp eq i32 %3, 0, !dbg !3595
  br i1 %4, label %7, label %5, !dbg !3596

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3597
  br label %7, !dbg !3599

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3600
  %9 = and i32 %8, -2, !dbg !3600
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3600
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3601
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3602
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3603
  ret i32 0, !dbg !3604
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()), !dbg !3610
  %2 = icmp ugt i32 %0, 15, !dbg !3611
  br i1 %2, label %13, label %3, !dbg !3613

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3614
  %5 = load volatile i32, i32* %4, align 4, !dbg !3614
  %6 = and i32 %5, 256, !dbg !3616
  %7 = icmp eq i32 %6, 0, !dbg !3616
  br i1 %7, label %13, label %8, !dbg !3617

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3618
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3620
  %11 = or i32 %10, %9, !dbg !3620
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3620
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3621
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3622
  br label %13, !dbg !3623

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3610
  ret i32 %14, !dbg !3624
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3627, metadata !DIExpression()), !dbg !3628
  %2 = icmp ugt i32 %0, 15, !dbg !3629
  br i1 %2, label %11, label %3, !dbg !3631

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3632
  %5 = xor i32 %4, -1, !dbg !3633
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3634
  %7 = and i32 %6, %5, !dbg !3634
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3634
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3635
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3636
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3637
  store i32 0, i32* %9, align 4, !dbg !3638
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3639
  store i32 0, i32* %10, align 4, !dbg !3640
  br label %11, !dbg !3641

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3628
  ret i32 %12, !dbg !3642
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3649
  %2 = icmp ugt i32 %0, 3, !dbg !3650
  br i1 %2, label %13, label %3, !dbg !3652

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3653
  %5 = and i32 %4, -769, !dbg !3653
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3653
  %6 = shl nuw nsw i32 %0, 8, !dbg !3654
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3655
  %8 = or i32 %7, %6, !dbg !3655
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3655
  %9 = icmp eq i32 %0, 0, !dbg !3656
  br i1 %9, label %10, label %11, !dbg !3658

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3659
  br label %11, !dbg !3661

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3662
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3663
  br label %13, !dbg !3664

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3649
  ret i32 %14, !dbg !3665
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.gpio_backup_restore_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3666 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !3678, metadata !DIExpression()), !dbg !3679
  %3 = icmp ugt i32 %0, 15, !dbg !3680
  br i1 %3, label %30, label %4, !dbg !3682

4:                                                ; preds = %2
  %5 = icmp eq %struct.gpio_backup_restore_t* %1, null, !dbg !3683
  br i1 %5, label %30, label %6, !dbg !3685

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !3686
  %8 = load i32, i32* %7, align 4, !dbg !3686
  %9 = and i32 %8, 4095, !dbg !3688
  %10 = icmp eq i32 %9, 0, !dbg !3688
  br i1 %10, label %12, label %11, !dbg !3689

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3690
  unreachable, !dbg !3690

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !3692
  %14 = load i32, i32* %13, align 4, !dbg !3692
  %15 = and i32 %14, 4095, !dbg !3694
  %16 = icmp eq i32 %15, 0, !dbg !3694
  br i1 %16, label %18, label %17, !dbg !3695

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3696
  unreachable, !dbg !3696

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3698
  store volatile i32 %8, i32* %19, align 4, !dbg !3699
  %20 = load i32, i32* %7, align 4, !dbg !3700
  %21 = load i32, i32* %13, align 4, !dbg !3701
  %22 = add i32 %21, %20, !dbg !3702
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3703
  store volatile i32 %22, i32* %23, align 4, !dbg !3704
  %24 = load volatile i32, i32* %19, align 4, !dbg !3705
  %25 = or i32 %24, 256, !dbg !3705
  store volatile i32 %25, i32* %19, align 4, !dbg !3705
  %26 = load volatile i32, i32* %19, align 4, !dbg !3706
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3707
  store i32 %26, i32* %27, align 4, !dbg !3708
  %28 = load volatile i32, i32* %23, align 4, !dbg !3709
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3710
  store i32 %28, i32* %29, align 4, !dbg !3711
  br label %30, !dbg !3712

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3679
  ret i32 %31, !dbg !3713
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3718, metadata !DIExpression()), !dbg !3720
  %2 = and i32 %0, 31, !dbg !3721
  %3 = icmp eq i32 %2, 0, !dbg !3721
  br i1 %3, label %4, label %9, !dbg !3723

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %5, metadata !3719, metadata !DIExpression()), !dbg !3720
  %6 = and i32 %0, -32, !dbg !3725
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3726
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3727
  %8 = or i32 %7, 5, !dbg !3727
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3727
  tail call void asm sideeffect "isb", ""() #16, !dbg !3728, !srcloc !3547
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3730
  br label %9, !dbg !3731

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3720
  ret i32 %10, !dbg !3732
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 %1, metadata !3738, metadata !DIExpression()), !dbg !3741
  %3 = add i32 %1, %0, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %3, metadata !3740, metadata !DIExpression()), !dbg !3741
  %4 = or i32 %1, %0, !dbg !3743
  %5 = and i32 %4, 31, !dbg !3743
  %6 = icmp eq i32 %5, 0, !dbg !3743
  br i1 %6, label %7, label %16, !dbg !3743

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %8, metadata !3739, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  %9 = icmp ugt i32 %3, %0, !dbg !3746
  br i1 %9, label %10, label %15, !dbg !3747

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3737, metadata !DIExpression()), !dbg !3741
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3748
  %13 = add i32 %11, 32, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %13, metadata !3737, metadata !DIExpression()), !dbg !3741
  %14 = icmp ult i32 %13, %3, !dbg !3746
  br i1 %14, label %10, label %15, !dbg !3747, !llvm.loop !3751

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3753, !srcloc !3547
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3755
  br label %16, !dbg !3756

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3741
  ret i32 %17, !dbg !3757
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3758 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3760, metadata !DIExpression()), !dbg !3762
  %2 = and i32 %0, 31, !dbg !3763
  %3 = icmp eq i32 %2, 0, !dbg !3763
  br i1 %3, label %4, label %9, !dbg !3765

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %5, metadata !3761, metadata !DIExpression()), !dbg !3762
  %6 = and i32 %0, -32, !dbg !3767
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3768
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3769
  %8 = or i32 %7, 21, !dbg !3769
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3769
  tail call void asm sideeffect "isb", ""() #16, !dbg !3770, !srcloc !3547
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3772
  br label %9, !dbg !3773

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3762
  ret i32 %10, !dbg !3774
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %1, metadata !3778, metadata !DIExpression()), !dbg !3781
  %3 = add i32 %1, %0, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %3, metadata !3780, metadata !DIExpression()), !dbg !3781
  %4 = or i32 %1, %0, !dbg !3783
  %5 = and i32 %4, 31, !dbg !3783
  %6 = icmp eq i32 %5, 0, !dbg !3783
  br i1 %6, label %7, label %16, !dbg !3783

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3785
  call void @llvm.dbg.value(metadata i32 %8, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3781
  %9 = icmp ugt i32 %3, %0, !dbg !3786
  br i1 %9, label %10, label %15, !dbg !3787

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3777, metadata !DIExpression()), !dbg !3781
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3788
  %13 = add i32 %11, 32, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %13, metadata !3777, metadata !DIExpression()), !dbg !3781
  %14 = icmp ult i32 %13, %3, !dbg !3786
  br i1 %14, label %10, label %15, !dbg !3787, !llvm.loop !3791

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3793, !srcloc !3547
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3795
  br label %16, !dbg !3796

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3781
  ret i32 %17, !dbg !3797
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3798 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3801
  call void @llvm.dbg.value(metadata i32 %1, metadata !3800, metadata !DIExpression()), !dbg !3802
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3803
  %3 = and i32 %2, -31, !dbg !3803
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3803
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3804
  %5 = or i32 %4, 19, !dbg !3804
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3804
  tail call void asm sideeffect "isb", ""() #16, !dbg !3805, !srcloc !3547
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3807
  ret i32 0, !dbg !3808
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3815
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3816
  %3 = and i32 %2, 8, !dbg !3818
  %4 = icmp eq i32 %3, 0, !dbg !3818
  br i1 %4, label %23, label %5, !dbg !3819

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3814, metadata !DIExpression()), !dbg !3815
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3820
  %8 = shl nuw nsw i32 1, %6, !dbg !3825
  %9 = and i32 %7, %8, !dbg !3826
  %10 = icmp eq i32 %9, 0, !dbg !3826
  br i1 %10, label %20, label %11, !dbg !3827

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3828
  %13 = load volatile i32, i32* %12, align 4, !dbg !3828
  %14 = and i32 %13, -257, !dbg !3831
  %15 = icmp ugt i32 %14, %0, !dbg !3832
  br i1 %15, label %20, label %16, !dbg !3833

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3834
  %18 = load volatile i32, i32* %17, align 4, !dbg !3834
  %19 = icmp ugt i32 %18, %0, !dbg !3835
  br i1 %19, label %23, label %20, !dbg !3836

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3837
  call void @llvm.dbg.value(metadata i32 %21, metadata !3814, metadata !DIExpression()), !dbg !3815
  %22 = icmp eq i32 %21, 16, !dbg !3838
  br i1 %22, label %23, label %5, !dbg !3839, !llvm.loop !3840

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3815
  ret i1 %24, !dbg !3842
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !3843 {
  ret i32 0, !dbg !3847
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 -1, metadata !3853, metadata !DIExpression()), !dbg !3854
  %2 = icmp ugt i32 %0, 95, !dbg !3855
  br i1 %2, label %4, label %3, !dbg !3855

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3857
  call void @llvm.dbg.value(metadata i32 0, metadata !3853, metadata !DIExpression()), !dbg !3854
  br label %4, !dbg !3859

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3854
  ret i32 %5, !dbg !3860
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3865, metadata !DIExpression()), !dbg !3866
  %2 = and i32 %0, 31, !dbg !3867
  %3 = shl nuw i32 1, %2, !dbg !3868
  %4 = lshr i32 %0, 5, !dbg !3869
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3870
  store volatile i32 %3, i32* %5, align 4, !dbg !3871
  ret void, !dbg !3872
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3875, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i32 -1, metadata !3876, metadata !DIExpression()), !dbg !3877
  %2 = icmp ugt i32 %0, 95, !dbg !3878
  br i1 %2, label %4, label %3, !dbg !3878

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3880
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3877
  br label %4, !dbg !3882

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3877
  ret i32 %5, !dbg !3883
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3886, metadata !DIExpression()), !dbg !3887
  %2 = and i32 %0, 31, !dbg !3888
  %3 = shl nuw i32 1, %2, !dbg !3889
  %4 = lshr i32 %0, 5, !dbg !3890
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3891
  store volatile i32 %3, i32* %5, align 4, !dbg !3892
  ret void, !dbg !3893
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 255, metadata !3899, metadata !DIExpression()), !dbg !3900
  %2 = icmp ugt i32 %0, 95, !dbg !3901
  br i1 %2, label %5, label %3, !dbg !3901

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3903
  call void @llvm.dbg.value(metadata i32 %4, metadata !3899, metadata !DIExpression()), !dbg !3900
  br label %5, !dbg !3905

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3900
  ret i32 %6, !dbg !3906
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3907 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3911, metadata !DIExpression()), !dbg !3912
  %2 = lshr i32 %0, 5, !dbg !3913
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3914
  %4 = load volatile i32, i32* %3, align 4, !dbg !3914
  %5 = and i32 %0, 31, !dbg !3915
  %6 = lshr i32 %4, %5, !dbg !3916
  %7 = and i32 %6, 1, !dbg !3916
  ret i32 %7, !dbg !3917
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3918 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32 -1, metadata !3921, metadata !DIExpression()), !dbg !3922
  %2 = icmp ugt i32 %0, 95, !dbg !3923
  br i1 %2, label %4, label %3, !dbg !3923

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3925
  call void @llvm.dbg.value(metadata i32 0, metadata !3921, metadata !DIExpression()), !dbg !3922
  br label %4, !dbg !3927

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3922
  ret i32 %5, !dbg !3928
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3931, metadata !DIExpression()), !dbg !3932
  %2 = and i32 %0, 31, !dbg !3933
  %3 = shl nuw i32 1, %2, !dbg !3934
  %4 = lshr i32 %0, 5, !dbg !3935
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3936
  store volatile i32 %3, i32* %5, align 4, !dbg !3937
  ret void, !dbg !3938
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3941, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i32 -1, metadata !3942, metadata !DIExpression()), !dbg !3943
  %2 = icmp ugt i32 %0, 95, !dbg !3944
  br i1 %2, label %4, label %3, !dbg !3944

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3946
  call void @llvm.dbg.value(metadata i32 0, metadata !3942, metadata !DIExpression()), !dbg !3943
  br label %4, !dbg !3948

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3943
  ret i32 %5, !dbg !3949
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3950 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3952, metadata !DIExpression()), !dbg !3953
  %2 = and i32 %0, 31, !dbg !3954
  %3 = shl nuw i32 1, %2, !dbg !3955
  %4 = lshr i32 %0, 5, !dbg !3956
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3957
  store volatile i32 %3, i32* %5, align 4, !dbg !3958
  ret void, !dbg !3959
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 %1, metadata !3965, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i32 -1, metadata !3966, metadata !DIExpression()), !dbg !3967
  %3 = icmp ugt i32 %0, 95, !dbg !3968
  br i1 %3, label %5, label %4, !dbg !3968

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3966, metadata !DIExpression()), !dbg !3967
  br label %5, !dbg !3972

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3967
  ret i32 %6, !dbg !3973
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3974 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3978, metadata !DIExpression()), !dbg !3980
  call void @llvm.dbg.value(metadata i32 %1, metadata !3979, metadata !DIExpression()), !dbg !3980
  %3 = trunc i32 %1 to i8, !dbg !3981
  %4 = shl i8 %3, 5, !dbg !3981
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3984
  store volatile i8 %4, i8* %5, align 1, !dbg !3985
  ret void, !dbg !3986
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3989, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 68, metadata !3990, metadata !DIExpression()), !dbg !3991
  %2 = icmp ugt i32 %0, 95, !dbg !3992
  br i1 %2, label %5, label %3, !dbg !3992

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3994
  call void @llvm.dbg.value(metadata i32 %4, metadata !3990, metadata !DIExpression()), !dbg !3991
  br label %5, !dbg !3996

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3991
  ret i32 %6, !dbg !3997
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3998 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4000, metadata !DIExpression()), !dbg !4001
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4002
  %3 = load volatile i8, i8* %2, align 1, !dbg !4002
  %4 = lshr i8 %3, 5, !dbg !4005
  %5 = zext i8 %4 to i32, !dbg !4005
  ret i32 %5, !dbg !4006
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !4007 {
  ret void, !dbg !4008
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4009 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4011, metadata !DIExpression()), !dbg !4013
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %1, metadata !4012, metadata !DIExpression()), !dbg !4013
  %2 = icmp ugt i32 %1, 95, !dbg !4015
  br i1 %2, label %12, label %3, !dbg !4015

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4017
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4017
  %6 = icmp eq void (i32)* %5, null, !dbg !4019
  br i1 %6, label %7, label %8, !dbg !4020

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4011, metadata !DIExpression()), !dbg !4013
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !4021
  br label %12, !dbg !4023

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4024
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4026
  store i32 %9, i32* %10, align 4, !dbg !4027
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4028
  tail call void %11(i32 noundef %1) #15, !dbg !4029
  call void @llvm.dbg.value(metadata i32 0, metadata !4011, metadata !DIExpression()), !dbg !4013
  br label %12, !dbg !4030

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4013
  ret i32 %13, !dbg !4031
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !4032 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4035
  %2 = and i32 %1, 511, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %2, metadata !4034, metadata !DIExpression()), !dbg !4037
  %3 = add nsw i32 %2, -16, !dbg !4038
  ret i32 %3, !dbg !4039
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !4040 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4041
  %2 = lshr i32 %1, 22, !dbg !4042
  %3 = and i32 %2, 1, !dbg !4042
  ret i32 %3, !dbg !4043
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4049, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4050, metadata !DIExpression()), !dbg !4052
  %3 = icmp ugt i32 %0, 95, !dbg !4053
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4053
  br i1 %5, label %10, label %6, !dbg !4053

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %7, metadata !4051, metadata !DIExpression()), !dbg !4052
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4056
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4057
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4058
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4059
  store i32 0, i32* %9, align 4, !dbg !4060
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !4061
  br label %10, !dbg !4062

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4052
  ret i32 %11, !dbg !4063
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4064 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4068, metadata !DIExpression()), !dbg !4069
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4070
  store i32 %2, i32* %0, align 4, !dbg !4071
  ret i32 0, !dbg !4072
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4077, metadata !DIExpression()), !dbg !4078
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !4079
  ret i32 0, !dbg !4080
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i8 %1, metadata !4087, metadata !DIExpression()), !dbg !4089
  %3 = icmp ugt i32 %0, 60, !dbg !4090
  br i1 %3, label %11, label %4, !dbg !4092

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4093
  br i1 %5, label %11, label %6, !dbg !4095

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4096
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !4097
  call void @llvm.dbg.value(metadata i32 %8, metadata !4088, metadata !DIExpression()), !dbg !4089
  %9 = icmp slt i32 %8, 0, !dbg !4098
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4098
  br label %11, !dbg !4099

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4089
  ret i32 %12, !dbg !4100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !4101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4107
  ret i32 0, !dbg !4108
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !4109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4111, metadata !DIExpression()), !dbg !4112
  ret i32 0, !dbg !4113
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4114 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4119, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32* %1, metadata !4120, metadata !DIExpression()), !dbg !4129
  %4 = icmp eq i32* %1, null, !dbg !4130
  br i1 %4, label %12, label %5, !dbg !4132

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4133
  br i1 %6, label %12, label %7, !dbg !4135

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4136
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4136
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4136
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4136
  %10 = load i8, i8* %9, align 1, !dbg !4136
  call void @llvm.dbg.value(metadata i8 %10, metadata !4121, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4136
  %11 = zext i8 %10 to i32, !dbg !4137
  store i32 %11, i32* %1, align 4, !dbg !4138
  br label %12, !dbg !4139

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4129
  ret i32 %13, !dbg !4140
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4145, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 %1, metadata !4146, metadata !DIExpression()), !dbg !4148
  %3 = icmp ugt i32 %0, 60, !dbg !4149
  br i1 %3, label %9, label %4, !dbg !4151

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4152
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4153
  call void @llvm.dbg.value(metadata i32 %6, metadata !4147, metadata !DIExpression()), !dbg !4148
  %7 = icmp slt i32 %6, 0, !dbg !4154
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4154
  br label %9, !dbg !4155

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4148
  ret i32 %10, !dbg !4156
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4157 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata i32* %1, metadata !4160, metadata !DIExpression()), !dbg !4162
  %4 = icmp ugt i32 %0, 60, !dbg !4163
  br i1 %4, label %12, label %5, !dbg !4165

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4166
  br i1 %6, label %12, label %7, !dbg !4168

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4169
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4169
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4169
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4169
  %10 = load i8, i8* %9, align 2, !dbg !4169
  call void @llvm.dbg.value(metadata i8 %10, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4162
  call void @llvm.dbg.value(metadata i8 undef, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4169
  %11 = zext i8 %10 to i32, !dbg !4170
  store i32 %11, i32* %1, align 4, !dbg !4171
  br label %12, !dbg !4172

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4162
  ret i32 %13, !dbg !4173
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4179, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i32 %1, metadata !4180, metadata !DIExpression()), !dbg !4182
  %3 = icmp ugt i32 %0, 60, !dbg !4183
  br i1 %3, label %8, label %4, !dbg !4185

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4186
  call void @llvm.dbg.value(metadata i32 %5, metadata !4181, metadata !DIExpression()), !dbg !4182
  %6 = icmp slt i32 %5, 0, !dbg !4187
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4187
  br label %8, !dbg !4188

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4182
  ret i32 %9, !dbg !4189
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4190 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4195, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.value(metadata i32* %1, metadata !4196, metadata !DIExpression()), !dbg !4198
  %4 = icmp ugt i32 %0, 60, !dbg !4199
  br i1 %4, label %13, label %5, !dbg !4201

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4202
  br i1 %6, label %13, label %7, !dbg !4204

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4205
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4205
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4205
  call void @llvm.dbg.value(metadata i32 undef, metadata !4197, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4198
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4205
  %10 = load i8, i8* %9, align 4, !dbg !4205
  call void @llvm.dbg.value(metadata i8 %10, metadata !4197, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4205
  %11 = icmp ne i8 %10, 0, !dbg !4206
  %12 = zext i1 %11 to i32, !dbg !4206
  store i32 %12, i32* %1, align 4, !dbg !4207
  br label %13, !dbg !4208

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4198
  ret i32 %14, !dbg !4209
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4210 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4212, metadata !DIExpression()), !dbg !4214
  %3 = icmp ugt i32 %0, 60, !dbg !4215
  br i1 %3, label %11, label %4, !dbg !4217

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4218
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4218
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4218
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4218
  %7 = load i8, i8* %6, align 2, !dbg !4218
  call void @llvm.dbg.value(metadata i8 %7, metadata !4213, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4214
  call void @llvm.dbg.value(metadata i8 undef, metadata !4213, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4214
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4218
  %8 = xor i8 %7, 1, !dbg !4219
  %9 = zext i8 %8 to i32, !dbg !4219
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4220
  br label %11, !dbg !4221

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4214
  ret i32 %12, !dbg !4222
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4227
  %2 = icmp ugt i32 %0, 60, !dbg !4228
  br i1 %2, label %10, label %3, !dbg !4230

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4231
  call void @llvm.dbg.value(metadata i32 %4, metadata !4226, metadata !DIExpression()), !dbg !4227
  %5 = icmp slt i32 %4, 0, !dbg !4232
  br i1 %5, label %10, label %6, !dbg !4234

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4235
  call void @llvm.dbg.value(metadata i32 %7, metadata !4226, metadata !DIExpression()), !dbg !4227
  %8 = icmp slt i32 %7, 0, !dbg !4236
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4236
  br label %10, !dbg !4237

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4227
  ret i32 %11, !dbg !4238
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4241, metadata !DIExpression()), !dbg !4243
  %2 = icmp ugt i32 %0, 60, !dbg !4244
  br i1 %2, label %10, label %3, !dbg !4246

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4247
  call void @llvm.dbg.value(metadata i32 %4, metadata !4242, metadata !DIExpression()), !dbg !4243
  %5 = icmp slt i32 %4, 0, !dbg !4248
  br i1 %5, label %10, label %6, !dbg !4250

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %7, metadata !4242, metadata !DIExpression()), !dbg !4243
  %8 = icmp slt i32 %7, 0, !dbg !4252
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4252
  br label %10, !dbg !4253

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4243
  ret i32 %11, !dbg !4254
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4257, metadata !DIExpression()), !dbg !4259
  %2 = icmp ugt i32 %0, 60, !dbg !4260
  br i1 %2, label %7, label %3, !dbg !4262

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4263
  call void @llvm.dbg.value(metadata i32 %4, metadata !4258, metadata !DIExpression()), !dbg !4259
  %5 = icmp slt i32 %4, 0, !dbg !4264
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4264
  br label %7, !dbg !4265

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4259
  ret i32 %8, !dbg !4266
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4271, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 %1, metadata !4272, metadata !DIExpression()), !dbg !4274
  %3 = icmp ugt i32 %0, 60, !dbg !4275
  br i1 %3, label %9, label %4, !dbg !4277

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4278
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4279
  call void @llvm.dbg.value(metadata i32 %6, metadata !4273, metadata !DIExpression()), !dbg !4274
  %7 = icmp slt i32 %6, 0, !dbg !4280
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4280
  br label %9, !dbg !4281

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4274
  ret i32 %10, !dbg !4282
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4283 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4288, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.value(metadata i32* %1, metadata !4289, metadata !DIExpression()), !dbg !4292
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4293
  %4 = icmp ugt i32 %0, 60, !dbg !4294
  br i1 %4, label %11, label %5, !dbg !4296

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4291, metadata !DIExpression(DW_OP_deref)), !dbg !4292
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4297
  call void @llvm.dbg.value(metadata i32 %6, metadata !4290, metadata !DIExpression()), !dbg !4292
  %7 = load i8, i8* %3, align 1, !dbg !4298
  call void @llvm.dbg.value(metadata i8 %7, metadata !4291, metadata !DIExpression()), !dbg !4292
  %8 = zext i8 %7 to i32, !dbg !4299
  store i32 %8, i32* %1, align 4, !dbg !4300
  %9 = icmp slt i32 %6, 0, !dbg !4301
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4301
  br label %11, !dbg !4302

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4292
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4303
  ret i32 %12, !dbg !4303
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_init(i32 noundef %0, %struct.hal_spi_master_config_t* noundef %1) local_unnamed_addr #3 !dbg !4304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4311, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_config_t* %1, metadata !4312, metadata !DIExpression()), !dbg !4318
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4319
  br i1 %3, label %4, label %28, !dbg !4321

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_spi_master_config_t* %1, null, !dbg !4322
  br i1 %5, label %28, label %6, !dbg !4324

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 0, !dbg !4325
  %8 = load i32, i32* %7, align 4, !dbg !4325
  %9 = add i32 %8, -60000001, !dbg !4327
  %10 = icmp ult i32 %9, -59970001, !dbg !4327
  br i1 %10, label %28, label %11, !dbg !4327

11:                                               ; preds = %6
  %12 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4328
  call void @llvm.dbg.value(metadata i32 %12, metadata !4316, metadata !DIExpression()), !dbg !4329
  %13 = load volatile i8, i8* @g_spi_master_status, align 1, !dbg !4330
  %14 = icmp eq i8 %13, 1, !dbg !4330
  br i1 %14, label %15, label %16, !dbg !4328

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !4315, metadata !DIExpression()), !dbg !4318
  tail call void @restore_interrupt_mask(i32 noundef %12) #15, !dbg !4328
  br label %28, !dbg !4332

16:                                               ; preds = %11
  store volatile i8 1, i8* @g_spi_master_status, align 1, !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4315, metadata !DIExpression()), !dbg !4318
  tail call void @restore_interrupt_mask(i32 noundef %12) #15, !dbg !4328
  %17 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 1, !dbg !4335
  %18 = load i32, i32* %17, align 4, !dbg !4335
  tail call fastcc void @hal_spi_master_map_cs_pin(i32 noundef %18) #14, !dbg !4336
  %19 = tail call fastcc i32 @hal_spi_master_build_settings(%struct.hal_spi_master_config_t* noundef nonnull %1) #14, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %19, metadata !4313, metadata !DIExpression()), !dbg !4318
  %20 = load i32, i32* %7, align 4, !dbg !4338
  %21 = tail call fastcc i32 @hal_spi_master_calc_divisor(i32 noundef %20) #14, !dbg !4339, !range !4340
  %22 = tail call i32 @spim_init(i32 noundef %19, i32 noundef %21) #15, !dbg !4341
  call void @llvm.dbg.value(metadata i32 %22, metadata !4314, metadata !DIExpression()), !dbg !4318
  %23 = icmp slt i32 %22, 0, !dbg !4342
  br i1 %23, label %28, label %24, !dbg !4344

24:                                               ; preds = %16
  %25 = tail call i8* @memset(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i32 noundef 0, i32 noundef 20) #15, !dbg !4345
  %26 = bitcast %struct.hal_spi_master_config_t* %1 to i8*, !dbg !4346
  %27 = tail call i8* @memcpy(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i8* noundef nonnull %26, i32 noundef 20) #15, !dbg !4347
  br label %28, !dbg !4348

28:                                               ; preds = %15, %16, %6, %4, %2, %24
  %29 = phi i32 [ 0, %24 ], [ -2, %2 ], [ -1, %4 ], [ -1, %6 ], [ -4, %16 ], [ -3, %15 ], !dbg !4318
  ret i32 %29, !dbg !4349
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4354, metadata !DIExpression()), !dbg !4355
  %2 = icmp eq i32 %0, 0, !dbg !4356
  ret i1 %2, !dbg !4357
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_spi_master_map_cs_pin(i32 noundef %0) unnamed_addr #3 !dbg !4358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4362, metadata !DIExpression()), !dbg !4363
  %2 = icmp eq i32 %0, 0, !dbg !4364
  br i1 %2, label %3, label %14, !dbg !4366

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !4367
  %5 = and i32 %4, 7340032, !dbg !4367
  %6 = icmp eq i32 %5, 7340032, !dbg !4367
  br i1 %6, label %7, label %8, !dbg !4370

7:                                                ; preds = %3
  store i32 32, i32* @g_spi_master_cs_n, align 4, !dbg !4371
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 106, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 32) #15, !dbg !4373
  br label %15, !dbg !4374

8:                                                ; preds = %3
  %9 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !4375
  %10 = and i32 %9, 6, !dbg !4375
  %11 = icmp eq i32 %10, 6, !dbg !4375
  br i1 %11, label %12, label %13, !dbg !4377

12:                                               ; preds = %8
  store i32 7, i32* @g_spi_master_cs_n, align 4, !dbg !4378
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 7) #15, !dbg !4380
  br label %15, !dbg !4381

13:                                               ; preds = %8
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 111, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.22, i32 0, i32 0)) #15, !dbg !4382
  store i32 32, i32* @g_spi_master_cs_n, align 4, !dbg !4384
  br label %15

14:                                               ; preds = %1
  store i32 6, i32* @g_spi_master_cs_n, align 4, !dbg !4385
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 116, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 6) #15, !dbg !4387
  br label %15

15:                                               ; preds = %7, %13, %12, %14
  ret void, !dbg !4388
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @hal_spi_master_build_settings(%struct.hal_spi_master_config_t* nocapture noundef readonly %0) unnamed_addr #6 !dbg !4389 {
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_config_t* %0, metadata !4393, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 0, metadata !4394, metadata !DIExpression()), !dbg !4395
  %2 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 1, !dbg !4396
  %3 = load i32, i32* %2, align 4, !dbg !4396
  %4 = icmp eq i32 %3, 0, !dbg !4398
  %5 = select i1 %4, i32 0, i32 536870912
  call void @llvm.dbg.value(metadata i32 %5, metadata !4394, metadata !DIExpression()), !dbg !4395
  %6 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 2, !dbg !4399
  %7 = load i32, i32* %6, align 4, !dbg !4399
  %8 = icmp eq i32 %7, 1, !dbg !4401
  %9 = or i32 %5, 8, !dbg !4402
  %10 = select i1 %8, i32 %5, i32 %9, !dbg !4402
  call void @llvm.dbg.value(metadata i32 %10, metadata !4394, metadata !DIExpression()), !dbg !4395
  %11 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 3, !dbg !4403
  %12 = load i32, i32* %11, align 4, !dbg !4403
  %13 = icmp eq i32 %12, 0, !dbg !4405
  %14 = or i32 %10, 16, !dbg !4406
  %15 = select i1 %13, i32 %10, i32 %14, !dbg !4406
  call void @llvm.dbg.value(metadata i32 %15, metadata !4394, metadata !DIExpression()), !dbg !4395
  %16 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 4, !dbg !4407
  %17 = load i32, i32* %16, align 4, !dbg !4407
  %18 = icmp eq i32 %17, 0, !dbg !4409
  %19 = or i32 %15, 32, !dbg !4410
  %20 = select i1 %18, i32 %15, i32 %19, !dbg !4410
  call void @llvm.dbg.value(metadata i32 %20, metadata !4394, metadata !DIExpression()), !dbg !4395
  ret i32 %20, !dbg !4411
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_spi_master_calc_divisor(i32 noundef %0) unnamed_addr #10 !dbg !515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !519, metadata !DIExpression()), !dbg !4412
  %2 = udiv i32 120000000, %0, !dbg !4413
  %3 = add nsw i32 %2, -2, !dbg !4414
  ret i32 %3, !dbg !4415
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4420, metadata !DIExpression()), !dbg !4421
  %2 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4422
  br i1 %2, label %3, label %5, !dbg !4424

3:                                                ; preds = %1
  %4 = tail call i8* @memset(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i32 noundef 0, i32 noundef 20) #15, !dbg !4425
  store volatile i8 0, i8* @g_spi_master_status, align 1, !dbg !4426
  br label %5, !dbg !4428

5:                                                ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !4421
  ret i32 %6, !dbg !4429
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_send_polling(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4434, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i8* %1, metadata !4435, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata i32 %2, metadata !4436, metadata !DIExpression()), !dbg !4438
  %4 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4439
  br i1 %4, label %5, label %19, !dbg !4441

5:                                                ; preds = %3
  %6 = icmp eq i8* %1, null, !dbg !4442
  br i1 %6, label %19, label %7, !dbg !4444

7:                                                ; preds = %5
  %8 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4445
  %9 = and i32 %8, 65536, !dbg !4447
  %10 = icmp eq i32 %9, 0, !dbg !4448
  br i1 %10, label %11, label %19, !dbg !4449

11:                                               ; preds = %7
  %12 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4450
  %13 = tail call i32 @hal_gpio_set_output(i32 noundef %12, i32 noundef 0) #15, !dbg !4451
  %14 = tail call i32 @spim_write(i8* noundef nonnull %1, i32 noundef %2) #15, !dbg !4452
  call void @llvm.dbg.value(metadata i32 %14, metadata !4437, metadata !DIExpression()), !dbg !4438
  %15 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4453
  %16 = tail call i32 @hal_gpio_set_output(i32 noundef %15, i32 noundef 1) #15, !dbg !4454
  %17 = icmp slt i32 %14, 0, !dbg !4455
  %18 = select i1 %17, i32 -4, i32 0, !dbg !4455
  br label %19, !dbg !4456

19:                                               ; preds = %7, %5, %3, %11
  %20 = phi i32 [ %18, %11 ], [ -2, %3 ], [ -1, %5 ], [ -3, %7 ], !dbg !4438
  ret i32 %20, !dbg !4457
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_send_and_receive_polling(i32 noundef %0, %struct.hal_spi_master_send_and_receive_config_t* nocapture noundef readonly %1) local_unnamed_addr #3 !dbg !4458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4470, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_send_and_receive_config_t* %1, metadata !4471, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 0, metadata !4472, metadata !DIExpression()), !dbg !4473
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4474
  br i1 %3, label %4, label %38, !dbg !4476

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 2, !dbg !4477
  %6 = load i8*, i8** %5, align 4, !dbg !4477
  %7 = icmp eq i8* %6, null, !dbg !4479
  br i1 %7, label %38, label %8, !dbg !4480

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 0, !dbg !4481
  %10 = load i8*, i8** %9, align 4, !dbg !4481
  %11 = icmp eq i8* %10, null, !dbg !4483
  br i1 %11, label %38, label %12, !dbg !4484

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 1, !dbg !4485
  %14 = load i32, i32* %13, align 4, !dbg !4485
  %15 = icmp ugt i32 %14, 4, !dbg !4487
  br i1 %15, label %38, label %16, !dbg !4488

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 3, !dbg !4489
  %18 = load i32, i32* %17, align 4, !dbg !4489
  %19 = icmp ugt i32 %14, %18, !dbg !4491
  br i1 %19, label %38, label %20, !dbg !4492

20:                                               ; preds = %16
  %21 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4493
  %22 = and i32 %21, 65536, !dbg !4495
  %23 = icmp eq i32 %22, 0, !dbg !4496
  br i1 %23, label %24, label %38, !dbg !4497

24:                                               ; preds = %20
  %25 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4498
  %26 = tail call i32 @hal_gpio_set_output(i32 noundef %25, i32 noundef 0) #15, !dbg !4499
  %27 = tail call fastcc i32 @hal_spi_build_op_addr(%struct.hal_spi_master_send_and_receive_config_t* noundef nonnull %1) #14, !dbg !4500
  %28 = load i32, i32* %13, align 4, !dbg !4501
  %29 = load i8*, i8** %5, align 4, !dbg !4502
  %30 = getelementptr inbounds i8, i8* %29, i32 %28, !dbg !4503
  %31 = load i32, i32* %17, align 4, !dbg !4504
  %32 = sub i32 %31, %28, !dbg !4505
  %33 = tail call i32 @spim_read(i32 noundef %27, i32 noundef %28, i8* noundef %30, i32 noundef %32) #15, !dbg !4506
  call void @llvm.dbg.value(metadata i32 %33, metadata !4472, metadata !DIExpression()), !dbg !4473
  %34 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4507
  %35 = tail call i32 @hal_gpio_set_output(i32 noundef %34, i32 noundef 1) #15, !dbg !4508
  %36 = icmp slt i32 %33, 0, !dbg !4509
  %37 = select i1 %36, i32 -4, i32 0, !dbg !4509
  br label %38, !dbg !4510

38:                                               ; preds = %20, %16, %12, %8, %4, %2, %24
  %39 = phi i32 [ %37, %24 ], [ -2, %2 ], [ -1, %4 ], [ -1, %8 ], [ -1, %12 ], [ -1, %16 ], [ -3, %20 ], !dbg !4473
  ret i32 %39, !dbg !4511
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readonly
define internal fastcc i32 @hal_spi_build_op_addr(%struct.hal_spi_master_send_and_receive_config_t* nocapture noundef readonly %0) unnamed_addr #12 !dbg !4512 {
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_send_and_receive_config_t* %0, metadata !4518, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i32 0, metadata !4519, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i32 0, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i32 0, metadata !4520, metadata !DIExpression()), !dbg !4521
  %2 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i32 0, metadata !4519, metadata !DIExpression()), !dbg !4521
  %4 = icmp eq i32 %3, 0, !dbg !4522
  br i1 %4, label %21, label %5, !dbg !4525

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 4
  br label %8, !dbg !4525

8:                                                ; preds = %5, %8
  %9 = phi i32 [ 0, %5 ], [ %19, %8 ]
  %10 = phi i32 [ 0, %5 ], [ %18, %8 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4520, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i32 %10, metadata !4519, metadata !DIExpression()), !dbg !4521
  %11 = getelementptr inbounds i8, i8* %7, i32 %9, !dbg !4526
  %12 = load i8, i8* %11, align 1, !dbg !4526
  %13 = zext i8 %12 to i32, !dbg !4526
  %14 = xor i32 %9, -1, !dbg !4528
  %15 = add i32 %3, %14, !dbg !4528
  %16 = shl i32 %15, 3, !dbg !4529
  %17 = shl i32 %13, %16, !dbg !4530
  %18 = or i32 %17, %10, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %18, metadata !4519, metadata !DIExpression()), !dbg !4521
  %19 = add nuw i32 %9, 1, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %19, metadata !4520, metadata !DIExpression()), !dbg !4521
  %20 = icmp eq i32 %19, %3, !dbg !4522
  br i1 %20, label %21, label %8, !dbg !4525, !llvm.loop !4533

21:                                               ; preds = %8, %1
  %22 = phi i32 [ 0, %1 ], [ %18, %8 ], !dbg !4521
  ret i32 %22, !dbg !4535
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_spi_master_get_running_status(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 !dbg !4536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4542, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i32* %1, metadata !4543, metadata !DIExpression()), !dbg !4544
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4545
  br i1 %3, label %4, label %11, !dbg !4547

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !4548
  br i1 %5, label %11, label %6, !dbg !4550

6:                                                ; preds = %4
  %7 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4551
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  store i32 %10, i32* %1, align 4, !dbg !4553
  br label %11, !dbg !4554

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4544
  ret i32 %12, !dbg !4555
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4562, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4563, metadata !DIExpression()), !dbg !4564
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4565
  br i1 %3, label %4, label %18, !dbg !4567

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4568
  %6 = load i8, i8* %5, align 4, !dbg !4568, !range !3504
  %7 = icmp eq i8 %6, 0, !dbg !4568
  br i1 %7, label %8, label %18, !dbg !4570

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !4571
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4572
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4573
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4574
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !4575
  store i8 1, i8* %5, align 4, !dbg !4576
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4577, !range !4578
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !4579
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !4580
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4581
  %16 = icmp eq i32 %15, 0, !dbg !4583
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4564
  br label %18, !dbg !4564

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4564
  ret i32 %19, !dbg !4584
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #6 !dbg !4585 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4591, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4592, metadata !DIExpression()), !dbg !4593
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4594
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4596
  br i1 %5, label %6, label %22, !dbg !4596

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4597
  %8 = load i32, i32* %7, align 4, !dbg !4597
  %9 = icmp ugt i32 %8, 12, !dbg !4599
  br i1 %9, label %22, label %10, !dbg !4600

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4601
  %12 = load i32, i32* %11, align 4, !dbg !4601
  %13 = icmp ugt i32 %12, 2, !dbg !4602
  br i1 %13, label %22, label %14, !dbg !4603

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4604
  %16 = load i32, i32* %15, align 4, !dbg !4604
  %17 = icmp ugt i32 %16, 1, !dbg !4605
  br i1 %17, label %22, label %18, !dbg !4606

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4607
  %20 = load i32, i32* %19, align 4, !dbg !4607
  %21 = icmp ult i32 %20, 4, !dbg !4608
  br label %22, !dbg !4609

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4593
  ret i1 %23, !dbg !4610
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !4611 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4615, metadata !DIExpression()), !dbg !4616
  %2 = icmp ne i32 %0, 0, !dbg !4617
  %3 = zext i1 %2 to i32, !dbg !4618
  ret i32 %3, !dbg !4619
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4624, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4625, metadata !DIExpression()), !dbg !4626
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4627
  br i1 %3, label %4, label %22, !dbg !4629

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4630
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4631
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4632
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !4633
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4634
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4635
  %11 = load i32, i32* %10, align 4, !dbg !4635
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4636
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4637
  %14 = load i32, i32* %13, align 4, !dbg !4637
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4638
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4639
  %17 = load i32, i32* %16, align 4, !dbg !4639
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4640
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4641
  %20 = load i32, i32* %19, align 4, !dbg !4641
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4642
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !4643
  br label %22, !dbg !4644

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4626
  ret i32 %23, !dbg !4645
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !4646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4650, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4651, metadata !DIExpression()), !dbg !4656
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4657
  %3 = load i32, i32* %2, align 4, !dbg !4657
  ret i32 %3, !dbg !4658
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !4659 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4663, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4664, metadata !DIExpression()), !dbg !4667
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4668
  %3 = load i16, i16* %2, align 2, !dbg !4668
  ret i16 %3, !dbg !4669
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !4670 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4674, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4675, metadata !DIExpression()), !dbg !4678
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4679
  %3 = load i16, i16* %2, align 2, !dbg !4679
  ret i16 %3, !dbg !4680
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !4681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4685, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4686, metadata !DIExpression()), !dbg !4689
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4690
  %3 = load i16, i16* %2, align 2, !dbg !4690
  ret i16 %3, !dbg !4691
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4696, metadata !DIExpression()), !dbg !4697
  %2 = icmp ult i32 %0, 2, !dbg !4698
  ret i1 %2, !dbg !4699
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4704, metadata !DIExpression()), !dbg !4705
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4706
  br i1 %2, label %3, label %10, !dbg !4708

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4709
  %5 = load i8, i8* %4, align 4, !dbg !4709, !range !3504
  %6 = icmp eq i8 %5, 0, !dbg !4711
  br i1 %6, label %10, label %7, !dbg !4712

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !4713
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4714, !range !4578
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !4715
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !4716
  br label %10, !dbg !4717

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4705
  ret i32 %11, !dbg !4718
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4719 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4723, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i8 %1, metadata !4724, metadata !DIExpression()), !dbg !4726
  %3 = icmp eq i32 %0, 0, !dbg !4727
  %4 = icmp eq i32 %0, 1, !dbg !4727
  %5 = select i1 %4, i32 1, i32 2, !dbg !4727
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4727
  call void @llvm.dbg.value(metadata i32 %6, metadata !4725, metadata !DIExpression()), !dbg !4726
  %7 = icmp eq i32 %6, 2, !dbg !4728
  br i1 %7, label %9, label %8, !dbg !4730

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !4731
  br label %9, !dbg !4733

9:                                                ; preds = %2, %8
  ret void, !dbg !4734
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4735 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4739, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i8* %1, metadata !4740, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 %2, metadata !4741, metadata !DIExpression()), !dbg !4744
  %4 = icmp eq i32 %0, 0, !dbg !4745
  %5 = icmp eq i32 %0, 1, !dbg !4745
  %6 = select i1 %5, i32 1, i32 2, !dbg !4745
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4745
  call void @llvm.dbg.value(metadata i32 %7, metadata !4742, metadata !DIExpression()), !dbg !4744
  %8 = icmp eq i8* %1, null, !dbg !4746
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4748
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4748
  call void @llvm.dbg.value(metadata i32 0, metadata !4743, metadata !DIExpression()), !dbg !4744
  br i1 %12, label %19, label %13, !dbg !4748

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4743, metadata !DIExpression()), !dbg !4744
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4749
  %16 = load i8, i8* %15, align 1, !dbg !4749
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !4755
  %17 = add nuw i32 %14, 1, !dbg !4756
  call void @llvm.dbg.value(metadata i32 %17, metadata !4743, metadata !DIExpression()), !dbg !4744
  %18 = icmp eq i32 %17, %2, !dbg !4757
  br i1 %18, label %19, label %13, !dbg !4758, !llvm.loop !4759

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4744
  ret i32 %20, !dbg !4761
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4762 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4764, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i8* %1, metadata !4765, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 %2, metadata !4766, metadata !DIExpression()), !dbg !4771
  %5 = bitcast i32* %4 to i8*, !dbg !4772
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4772
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4773
  br i1 %6, label %7, label %24, !dbg !4775

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4776
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4778
  br i1 %10, label %24, label %11, !dbg !4778

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4779
  %13 = load i8, i8* %12, align 4, !dbg !4779, !range !3504
  %14 = icmp eq i8 %13, 0, !dbg !4779
  br i1 %14, label %24, label %15, !dbg !4781

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4782, !range !4578
  call void @llvm.dbg.value(metadata i32* %4, metadata !4767, metadata !DIExpression(DW_OP_deref)), !dbg !4771
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4783
  %17 = load i32, i32* %4, align 4, !dbg !4784
  call void @llvm.dbg.value(metadata i32 %17, metadata !4767, metadata !DIExpression()), !dbg !4771
  %18 = icmp ult i32 %17, %2, !dbg !4786
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4768, metadata !DIExpression()), !dbg !4771
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !4787
  %20 = load i32, i32* %4, align 4, !dbg !4788
  call void @llvm.dbg.value(metadata i32 %20, metadata !4767, metadata !DIExpression()), !dbg !4771
  %21 = icmp eq i32 %19, %20, !dbg !4790
  br i1 %21, label %22, label %24, !dbg !4791

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4792, !range !4794
  call void @llvm.dbg.value(metadata i32 %23, metadata !4769, metadata !DIExpression()), !dbg !4771
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !4795
  br label %24, !dbg !4796

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4771
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4797
  ret i32 %25, !dbg !4797
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !4798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4802, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata i1 %1, metadata !4803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4805
  %3 = icmp eq i32 %0, 0, !dbg !4806
  %4 = select i1 %1, i32 15, i32 14, !dbg !4808
  %5 = select i1 %1, i32 17, i32 16, !dbg !4808
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4808
  call void @llvm.dbg.value(metadata i32 %6, metadata !4804, metadata !DIExpression()), !dbg !4805
  ret i32 %6, !dbg !4809
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4814, metadata !DIExpression()), !dbg !4816
  %2 = icmp eq i32 %0, 0, !dbg !4817
  %3 = icmp eq i32 %0, 1, !dbg !4817
  %4 = select i1 %3, i32 1, i32 2, !dbg !4817
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4817
  call void @llvm.dbg.value(metadata i32 %5, metadata !4815, metadata !DIExpression()), !dbg !4816
  %6 = icmp ult i32 %5, 2, !dbg !4818
  br i1 %6, label %7, label %9, !dbg !4820

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !4821
  br label %9, !dbg !4823

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4824
  ret i8 %10, !dbg !4825
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4826 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4830, metadata !DIExpression()), !dbg !4832
  %2 = icmp eq i32 %0, 0, !dbg !4833
  %3 = icmp eq i32 %0, 1, !dbg !4833
  %4 = select i1 %3, i32 1, i32 2, !dbg !4833
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4833
  call void @llvm.dbg.value(metadata i32 %5, metadata !4831, metadata !DIExpression()), !dbg !4832
  %6 = icmp ult i32 %5, 2, !dbg !4834
  br i1 %6, label %7, label %9, !dbg !4836

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !4837
  br label %9, !dbg !4839

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4840
  ret i32 %10, !dbg !4841
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4846, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i8* %1, metadata !4847, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i32 %2, metadata !4848, metadata !DIExpression()), !dbg !4851
  %4 = icmp eq i32 %0, 0, !dbg !4852
  %5 = icmp eq i32 %0, 1, !dbg !4852
  %6 = select i1 %5, i32 1, i32 2, !dbg !4852
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4852
  call void @llvm.dbg.value(metadata i32 %7, metadata !4849, metadata !DIExpression()), !dbg !4851
  %8 = icmp eq i8* %1, null, !dbg !4853
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4855
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4855
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4851
  br i1 %12, label %19, label %13, !dbg !4855

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4850, metadata !DIExpression()), !dbg !4851
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !4856
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4862
  store i8 %15, i8* %16, align 1, !dbg !4863
  %17 = add nuw i32 %14, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i32 %17, metadata !4850, metadata !DIExpression()), !dbg !4851
  %18 = icmp eq i32 %17, %2, !dbg !4865
  br i1 %18, label %19, label %13, !dbg !4866, !llvm.loop !4867

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4851
  ret i32 %20, !dbg !4869
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4870 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4872, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i8* %1, metadata !4873, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i32 %2, metadata !4874, metadata !DIExpression()), !dbg !4878
  %5 = bitcast i32* %4 to i8*, !dbg !4879
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4879
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4880
  br i1 %6, label %7, label %20, !dbg !4882

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4883
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4885
  br i1 %10, label %20, label %11, !dbg !4885

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4886, !range !4578
  call void @llvm.dbg.value(metadata i32* %4, metadata !4875, metadata !DIExpression(DW_OP_deref)), !dbg !4878
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !4887
  %13 = load i32, i32* %4, align 4, !dbg !4888
  call void @llvm.dbg.value(metadata i32 %13, metadata !4875, metadata !DIExpression()), !dbg !4878
  %14 = icmp ult i32 %13, %2, !dbg !4890
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4876, metadata !DIExpression()), !dbg !4878
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !4891
  %16 = load i32, i32* %4, align 4, !dbg !4892
  call void @llvm.dbg.value(metadata i32 %16, metadata !4875, metadata !DIExpression()), !dbg !4878
  %17 = icmp eq i32 %15, %16, !dbg !4894
  br i1 %17, label %18, label %20, !dbg !4895

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4896, !range !4794
  call void @llvm.dbg.value(metadata i32 %19, metadata !4877, metadata !DIExpression()), !dbg !4878
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !4898
  br label %20, !dbg !4899

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4878
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4900
  ret i32 %21, !dbg !4900
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4901 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4903, metadata !DIExpression()), !dbg !4905
  %3 = bitcast i32* %2 to i8*, !dbg !4906
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4906
  call void @llvm.dbg.value(metadata i32 0, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i32 0, i32* %2, align 4, !dbg !4907
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4908
  br i1 %4, label %5, label %8, !dbg !4910

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4911, !range !4578
  call void @llvm.dbg.value(metadata i32* %2, metadata !4904, metadata !DIExpression(DW_OP_deref)), !dbg !4905
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !4912
  %7 = load i32, i32* %2, align 4, !dbg !4913
  call void @llvm.dbg.value(metadata i32 %7, metadata !4904, metadata !DIExpression()), !dbg !4905
  br label %8, !dbg !4914

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4905
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4915
  ret i32 %9, !dbg !4915
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4916 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4918, metadata !DIExpression()), !dbg !4920
  %3 = bitcast i32* %2 to i8*, !dbg !4921
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4921
  call void @llvm.dbg.value(metadata i32 0, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i32 0, i32* %2, align 4, !dbg !4922
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4923
  br i1 %4, label %5, label %8, !dbg !4925

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4926, !range !4578
  call void @llvm.dbg.value(metadata i32* %2, metadata !4919, metadata !DIExpression(DW_OP_deref)), !dbg !4920
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !4927
  %7 = load i32, i32* %2, align 4, !dbg !4928
  call void @llvm.dbg.value(metadata i32 %7, metadata !4919, metadata !DIExpression()), !dbg !4920
  br label %8, !dbg !4929

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4920
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4930
  ret i32 %9, !dbg !4930
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4935, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4936, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.value(metadata i8* %2, metadata !4937, metadata !DIExpression()), !dbg !4939
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4940
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4942
  br i1 %6, label %7, label %18, !dbg !4942

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4943
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4944
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4945
  store i8* %2, i8** %9, align 4, !dbg !4946
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4947
  store i8 1, i8* %10, align 4, !dbg !4948
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4949
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4950
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4951
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4952
  %13 = icmp eq i32 %11, 0, !dbg !4953
  br i1 %13, label %14, label %15, !dbg !4955

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !4956
  br label %16, !dbg !4958

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !4959
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4961, !range !4794
  call void @llvm.dbg.value(metadata i32 %17, metadata !4938, metadata !DIExpression()), !dbg !4939
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !4962
  br label %18, !dbg !4963

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4939
  ret i32 %19, !dbg !4964
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !585, metadata !DIExpression()), !dbg !4965
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4966
  %3 = load void ()*, void ()** %2, align 4, !dbg !4966
  ret void ()* %3, !dbg !4967
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4968 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4974, !range !3504
  %2 = icmp eq i8 %1, 0, !dbg !4974
  br i1 %2, label %8, label %3, !dbg !4975

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4976
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4978
  br i1 %5, label %8, label %6, !dbg !4979

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4980
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4982
  br label %8, !dbg !4983

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4984, !range !4578
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4985
  ret void, !dbg !4986
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4987 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4992, !range !3504
  %2 = icmp eq i8 %1, 0, !dbg !4992
  br i1 %2, label %8, label %3, !dbg !4993

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4994
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4996
  br i1 %5, label %8, label %6, !dbg !4997

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4998
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5000
  br label %8, !dbg !5001

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5002, !range !4578
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5003
  ret void, !dbg !5004
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5005 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5009, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.value(metadata i1 %1, metadata !5010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5016
  %5 = bitcast i32* %3 to i8*, !dbg !5017
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5017
  %6 = bitcast i32* %4 to i8*, !dbg !5017
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5017
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5013, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5016
  br i1 %1, label %7, label %12, !dbg !5018

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5013, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5016
  call void @llvm.dbg.value(metadata i32* %3, metadata !5011, metadata !DIExpression(DW_OP_deref)), !dbg !5016
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !5019
  %8 = load i32, i32* %3, align 4, !dbg !5022
  call void @llvm.dbg.value(metadata i32 %8, metadata !5011, metadata !DIExpression()), !dbg !5016
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5024
  %10 = load i32, i32* %9, align 4, !dbg !5024
  %11 = icmp ult i32 %8, %10, !dbg !5025
  br i1 %11, label %22, label %20, !dbg !5026

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5012, metadata !DIExpression(DW_OP_deref)), !dbg !5016
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5027
  %13 = load i32, i32* %4, align 4, !dbg !5029
  call void @llvm.dbg.value(metadata i32 %13, metadata !5012, metadata !DIExpression()), !dbg !5016
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5031
  %15 = load i32, i32* %14, align 4, !dbg !5031
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5032
  %17 = load i32, i32* %16, align 4, !dbg !5032
  %18 = sub i32 %15, %17, !dbg !5033
  %19 = icmp ult i32 %13, %18, !dbg !5034
  br i1 %19, label %22, label %20, !dbg !5035

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5036, !range !4794
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !5036
  br label %22, !dbg !5037

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5037
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5037
  ret void, !dbg !5037
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5038 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5043, !range !3504
  %2 = icmp eq i8 %1, 0, !dbg !5043
  br i1 %2, label %11, label %3, !dbg !5044

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5045
  %5 = icmp eq i32 %4, 0, !dbg !5046
  br i1 %5, label %11, label %6, !dbg !5047

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5048
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5050
  br i1 %8, label %11, label %9, !dbg !5051

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5052
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5054
  br label %11, !dbg !5055

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5056, !range !4578
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5057
  ret void, !dbg !5058
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5059 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5064, !range !3504
  %2 = icmp eq i8 %1, 0, !dbg !5064
  br i1 %2, label %11, label %3, !dbg !5065

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5066
  %5 = icmp eq i32 %4, 0, !dbg !5067
  br i1 %5, label %11, label %6, !dbg !5068

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5069
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5071
  br i1 %8, label %11, label %9, !dbg !5072

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5073
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5075
  br label %11, !dbg !5076

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5077, !range !4578
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5078
  ret void, !dbg !5079
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5080 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5084, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i32 %1, metadata !5085, metadata !DIExpression()), !dbg !5086
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5087
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5089
  br i1 %5, label %6, label %10, !dbg !5089

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5090
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5091
  store i32 %1, i32* %8, align 4, !dbg !5092
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5093
  br label %10, !dbg !5094

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5086
  ret i32 %11, !dbg !5095
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5096 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5102, metadata !DIExpression()), !dbg !5104
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5103, metadata !DIExpression()), !dbg !5104
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5105
  br i1 %3, label %4, label %28, !dbg !5107

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5108
  br i1 %5, label %6, label %28, !dbg !5110

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5111
  store i8 1, i8* %7, align 4, !dbg !5112
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5113
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5114
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5115
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !5116
  tail call void @DMA_Init() #15, !dbg !5117
  tail call void @DMA_Vfifo_init() #15, !dbg !5118
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5119
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5120
  %14 = load i8*, i8** %13, align 4, !dbg !5120
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5121
  %16 = load i32, i32* %15, align 4, !dbg !5121
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5122
  %18 = load i32, i32* %17, align 4, !dbg !5122
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5123
  %20 = load i32, i32* %19, align 4, !dbg !5123
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5124
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !5125
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5126
  %23 = load i8*, i8** %22, align 4, !dbg !5126
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5127
  %25 = load i32, i32* %24, align 4, !dbg !5127
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5128
  %27 = load i32, i32* %26, align 4, !dbg !5128
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !5129
  br label %28, !dbg !5130

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5104
  ret i32 %29, !dbg !5131
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !5132 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5136, metadata !DIExpression()), !dbg !5137
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5138
  br i1 %2, label %27, label %3, !dbg !5140

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5141
  %5 = load i8*, i8** %4, align 4, !dbg !5141
  %6 = icmp eq i8* %5, null, !dbg !5143
  br i1 %6, label %27, label %7, !dbg !5144

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5145
  %9 = load i32, i32* %8, align 4, !dbg !5145
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5147
  %11 = load i32, i32* %10, align 4, !dbg !5147
  %12 = icmp ult i32 %9, %11, !dbg !5148
  br i1 %12, label %27, label %13, !dbg !5149

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5150
  %15 = load i32, i32* %14, align 4, !dbg !5150
  %16 = icmp ult i32 %9, %15, !dbg !5152
  br i1 %16, label %27, label %17, !dbg !5153

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5154
  %19 = load i8*, i8** %18, align 4, !dbg !5154
  %20 = icmp eq i8* %19, null, !dbg !5156
  br i1 %20, label %27, label %21, !dbg !5157

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5158
  %23 = load i32, i32* %22, align 4, !dbg !5158
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5160
  %25 = load i32, i32* %24, align 4, !dbg !5160
  %26 = icmp uge i32 %23, %25, !dbg !5161
  br label %27, !dbg !5162

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5137
  ret i1 %28, !dbg !5163
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5166, metadata !DIExpression()), !dbg !5168
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !5169
  %3 = udiv i32 %2, 1000000, !dbg !5170
  call void @llvm.dbg.value(metadata i32 %3, metadata !5167, metadata !DIExpression()), !dbg !5168
  %4 = mul i32 %3, %0, !dbg !5171
  ret i32 %4, !dbg !5172
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5173 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5175, metadata !DIExpression()), !dbg !5177
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5178
  br i1 %2, label %3, label %8, !dbg !5180

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5181
  %5 = icmp eq i32 %0, 1, !dbg !5181
  %6 = select i1 %5, i32 1, i32 2, !dbg !5181
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5181
  call void @llvm.dbg.value(metadata i32 %7, metadata !5176, metadata !DIExpression()), !dbg !5177
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !5182
  br label %8, !dbg !5183

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5177
  ret i32 %9, !dbg !5184
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5189, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.value(metadata i8 %1, metadata !5190, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.value(metadata i8 %2, metadata !5191, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.value(metadata i8 %3, metadata !5192, metadata !DIExpression()), !dbg !5194
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5195
  br i1 %5, label %6, label %11, !dbg !5197

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5198
  %8 = icmp eq i32 %0, 1, !dbg !5198
  %9 = select i1 %8, i32 1, i32 2, !dbg !5198
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5198
  call void @llvm.dbg.value(metadata i32 %10, metadata !5193, metadata !DIExpression()), !dbg !5194
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !5199
  br label %11, !dbg !5200

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5194
  ret i32 %12, !dbg !5201
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5204, metadata !DIExpression()), !dbg !5206
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5207
  br i1 %2, label %3, label %8, !dbg !5209

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5210
  %5 = icmp eq i32 %0, 1, !dbg !5210
  %6 = select i1 %5, i32 1, i32 2, !dbg !5210
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5210
  call void @llvm.dbg.value(metadata i32 %7, metadata !5205, metadata !DIExpression()), !dbg !5206
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !5211
  br label %8, !dbg !5212

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5206
  ret i32 %9, !dbg !5213
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5218, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i32 %1, metadata !5219, metadata !DIExpression()), !dbg !5220
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5221
  br i1 %3, label %4, label %8, !dbg !5223

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5224
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5226
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !5226
  br label %8, !dbg !5227

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5220
  ret i32 %9, !dbg !5227
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !5228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5232, metadata !DIExpression()), !dbg !5233
  %2 = trunc i32 %0 to i8, !dbg !5234
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !5235
  ret i32 %0, !dbg !5236
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !5237 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5238
  tail call fastcc void @prvSetupHardware() #14, !dbg !5239
  tail call void asm sideeffect "cpsie i", "~{memory}"() #16, !dbg !5240, !srcloc !5243
  tail call void asm sideeffect "cpsie f", "~{memory}"() #16, !dbg !5244, !srcloc !5247
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #15, !dbg !5248
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.24, i32 0, i32 0)) #15, !dbg !5249
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #15, !dbg !5250
  tail call fastcc void @spim_send_data_polling_example() #14, !dbg !5251
  br label %4, !dbg !5252

4:                                                ; preds = %0, %4
  br label %4, !dbg !5252, !llvm.loop !5253
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5255 {
  tail call void @top_xtal_init() #15, !dbg !5256
  ret void, !dbg !5257
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !5258 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5259
  ret void, !dbg !5260
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_send_data_polling_example() unnamed_addr #3 !dbg !5261 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.hal_spi_master_config_t, align 4
  %3 = bitcast i16* %1 to i8*, !dbg !5274
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %3) #16, !dbg !5274
  call void @llvm.dbg.value(metadata i16 21886, metadata !5263, metadata !DIExpression()), !dbg !5275
  store i16 21886, i16* %1, align 2, !dbg !5276
  %4 = bitcast %struct.hal_spi_master_config_t* %2 to i8*, !dbg !5277
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #16, !dbg !5277
  call void @llvm.dbg.declare(metadata %struct.hal_spi_master_config_t* %2, metadata !5265, metadata !DIExpression()), !dbg !5278
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !5279
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #15, !dbg !5280
  %7 = tail call i32 @hal_gpio_init(i32 noundef 32) #15, !dbg !5281
  %8 = tail call i32 @hal_gpio_init(i32 noundef 31) #15, !dbg !5282
  %9 = tail call i32 @hal_gpio_init(i32 noundef 29) #15, !dbg !5283
  %10 = tail call i32 @hal_gpio_init(i32 noundef 30) #15, !dbg !5284
  %11 = tail call i32 @hal_pinmux_set_function(i32 noundef 32, i8 noundef zeroext 8) #15, !dbg !5285
  %12 = tail call i32 @hal_pinmux_set_function(i32 noundef 31, i8 noundef zeroext 7) #15, !dbg !5286
  %13 = tail call i32 @hal_pinmux_set_function(i32 noundef 29, i8 noundef zeroext 7) #15, !dbg !5287
  %14 = tail call i32 @hal_pinmux_set_function(i32 noundef 30, i8 noundef zeroext 7) #15, !dbg !5288
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #15, !dbg !5289
  %16 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 2, !dbg !5290
  store i32 0, i32* %16, align 4, !dbg !5291
  %17 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 0, !dbg !5292
  store i32 1000000, i32* %17, align 4, !dbg !5293
  %18 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 4, !dbg !5294
  store i32 0, i32* %18, align 4, !dbg !5295
  %19 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 3, !dbg !5296
  store i32 0, i32* %19, align 4, !dbg !5297
  %20 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 1, !dbg !5298
  store i32 0, i32* %20, align 4, !dbg !5299
  %21 = call i32 @hal_spi_master_init(i32 noundef 0, %struct.hal_spi_master_config_t* noundef nonnull %2) #15, !dbg !5300
  %22 = icmp eq i32 %21, 0, !dbg !5302
  br i1 %22, label %23, label %35, !dbg !5303

23:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i16* %1, metadata !5263, metadata !DIExpression(DW_OP_deref)), !dbg !5275
  %24 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %3, i32 noundef 2) #15, !dbg !5304
  %25 = icmp eq i32 %24, 0, !dbg !5306
  br i1 %25, label %26, label %35, !dbg !5307

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !5308
  %28 = call i32 @hal_spi_master_deinit(i32 noundef 0) #15, !dbg !5309
  %29 = icmp eq i32 %28, 0, !dbg !5311
  br i1 %29, label %30, label %35, !dbg !5312

30:                                               ; preds = %26
  %31 = call i32 @hal_gpio_deinit(i32 noundef 32) #15, !dbg !5313
  %32 = call i32 @hal_gpio_deinit(i32 noundef 31) #15, !dbg !5314
  %33 = call i32 @hal_gpio_deinit(i32 noundef 29) #15, !dbg !5315
  %34 = call i32 @hal_gpio_deinit(i32 noundef 30) #15, !dbg !5316
  br label %35, !dbg !5317

35:                                               ; preds = %26, %23, %0, %30
  %36 = phi i8* [ getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), %30 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), %0 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %23 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8.25, i32 0, i32 0), %26 ]
  %37 = call i32 (i8*, ...) @printf(i8* noundef %36) #15, !dbg !5275
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #16, !dbg !5317
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %3) #16, !dbg !5317
  ret void, !dbg !5317
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !5318 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5328
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5328
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5320, metadata !DIExpression()), !dbg !5329
  %3 = tail call i32 @hal_gpio_init(i32 noundef 2) #15, !dbg !5330
  %4 = tail call i32 @hal_gpio_init(i32 noundef 3) #15, !dbg !5331
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !5332
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !5333
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5334
  store i32 9, i32* %7, align 4, !dbg !5335
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5336
  store i32 3, i32* %8, align 4, !dbg !5337
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5338
  store i32 0, i32* %9, align 4, !dbg !5339
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5340
  store i32 0, i32* %10, align 4, !dbg !5341
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #15, !dbg !5342
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5343
  ret void, !dbg !5343
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !5344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5346, metadata !DIExpression()), !dbg !5348
  %2 = add i32 %0, -1, !dbg !5349
  %3 = icmp ugt i32 %2, 16777215, !dbg !5351
  br i1 %3, label %8, label %4, !dbg !5352

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5353
  call void @llvm.dbg.value(metadata i32 %5, metadata !5347, metadata !DIExpression()), !dbg !5348
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5354
  %7 = and i32 %6, -4, !dbg !5354
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5354
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5355
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5356
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5357
  br label %8, !dbg !5358

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5348
  ret i32 %9, !dbg !5359
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !5360 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5361
  ret void, !dbg !5362
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !5363 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5364
  ret i32 %1, !dbg !5365
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5366 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !5367
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !5370 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5371
  %2 = or i32 %1, 15728640, !dbg !5371
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5371
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5372
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5373
  %4 = or i32 %3, 458752, !dbg !5373
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5373
  ret void, !dbg !5374
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !5375 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5376
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5377
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5378
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5379
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5380
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5381
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5382
  ret void, !dbg !5383
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5386, metadata !DIExpression()), !dbg !5387
  ret i32 0, !dbg !5388
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5389 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5439, metadata !DIExpression()), !dbg !5441
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5440, metadata !DIExpression()), !dbg !5441
  ret i32 0, !dbg !5442
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !5443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5445, metadata !DIExpression()), !dbg !5446
  ret i32 1, !dbg !5447
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5448 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5452, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.value(metadata i32 %1, metadata !5453, metadata !DIExpression()), !dbg !5455
  call void @llvm.dbg.value(metadata i32 %2, metadata !5454, metadata !DIExpression()), !dbg !5455
  ret i32 0, !dbg !5456
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5457 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5461, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.value(metadata i32 %1, metadata !5462, metadata !DIExpression()), !dbg !5464
  call void @llvm.dbg.value(metadata i32 %2, metadata !5463, metadata !DIExpression()), !dbg !5464
  ret i32 -1, !dbg !5465
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5470, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.value(metadata i8* %1, metadata !5471, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.value(metadata i32 %2, metadata !5472, metadata !DIExpression()), !dbg !5473
  ret i32 0, !dbg !5474
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5477, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i8* %1, metadata !5478, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i32 %2, metadata !5479, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i32 0, metadata !5480, metadata !DIExpression()), !dbg !5481
  %4 = icmp sgt i32 %2, 0, !dbg !5482
  br i1 %4, label %5, label %14, !dbg !5485

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i8* %7, metadata !5478, metadata !DIExpression()), !dbg !5481
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5486
  call void @llvm.dbg.value(metadata i8* %8, metadata !5478, metadata !DIExpression()), !dbg !5481
  %9 = load i8, i8* %7, align 1, !dbg !5488
  %10 = zext i8 %9 to i32, !dbg !5488
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !5489
  %12 = add nuw nsw i32 %6, 1, !dbg !5490
  call void @llvm.dbg.value(metadata i32 %12, metadata !5480, metadata !DIExpression()), !dbg !5481
  %13 = icmp eq i32 %12, %2, !dbg !5482
  br i1 %13, label %14, label %5, !dbg !5485, !llvm.loop !5491

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5493
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !691 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !893, metadata !DIExpression()), !dbg !5494
  call void @llvm.dbg.value(metadata i32 %1, metadata !894, metadata !DIExpression()), !dbg !5494
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #16, !dbg !5495, !srcloc !5496
  call void @llvm.dbg.value(metadata i8* %3, metadata !896, metadata !DIExpression()), !dbg !5494
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5497
  %5 = icmp eq i8* %4, null, !dbg !5499
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5500
  call void @llvm.dbg.value(metadata i8* %6, metadata !895, metadata !DIExpression()), !dbg !5494
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5501
  %8 = icmp ult i8* %3, %7, !dbg !5503
  %9 = xor i1 %8, true, !dbg !5504
  %10 = or i1 %5, %9, !dbg !5504
  br i1 %10, label %11, label %13, !dbg !5504

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5505
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5504
  br label %13, !dbg !5504

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5505
  ret i8* %14, !dbg !5504
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5506 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5508, metadata !DIExpression()), !dbg !5509
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #15, !dbg !5510
  br label %3, !dbg !5511

3:                                                ; preds = %1, %3
  br label %3, !dbg !5511, !llvm.loop !5512
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5514 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5518, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.value(metadata i32 %1, metadata !5519, metadata !DIExpression()), !dbg !5520
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.33, i32 0, i32 0), i32 noundef %1) #15, !dbg !5521
  ret i32 -1, !dbg !5522
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5523 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.34, i32 0, i32 0)) #15, !dbg !5528
  ret i32 0, !dbg !5529
}

attributes #0 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize readonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nobuiltin nounwind optsize "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!913, !917, !2, !85, !998, !1043, !141, !195, !205, !1046, !241, !325, !1048, !426, !522, !1074, !631, !888, !899}
!llvm.ident = !{!1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077, !1077}
!llvm.module.flags = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halspim_isr", scope: !2, file: !3, line: 51, type: !78, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !77, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_spim.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!4 = !{!5, !51}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!9 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!10 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!11 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!12 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!13 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!14 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!15 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!16 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!17 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!18 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!19 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!20 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!21 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!22 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!23 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!24 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!25 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!26 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!27 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!28 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!29 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!30 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!31 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!32 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!33 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!34 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!35 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!36 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!37 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!38 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!39 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!40 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!41 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!42 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!43 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!44 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!45 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!46 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!47 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!48 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!49 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!50 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 121, baseType: !53, size: 32, elements: !54)
!52 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!56 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!57 = !{!58, !62, !65, !68, !69, !71}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "ULONG", file: !52, line: 68, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !52, line: 62, baseType: !53)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !52, line: 116, baseType: !53)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !52, line: 59, baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !74, line: 48, baseType: !75)
!74 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !76, line: 79, baseType: !53)
!76 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!77 = !{!0}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "HALSPIM_ISR", file: !79, line: 45, baseType: !80)
!79 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_spim.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !85, file: !86, line: 62, type: !131, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !129, globals: !130, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!87 = !{!88, !119, !124}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 55, baseType: !53, size: 32, elements: !90)
!89 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!91 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!92 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!93 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!94 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!95 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!96 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!97 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!98 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!99 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!100 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!101 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!102 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!103 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!104 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!105 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!106 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!107 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!108 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!109 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!110 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!111 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!112 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!113 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!114 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!115 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!116 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!117 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!118 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 57, baseType: !53, size: 32, elements: !121)
!120 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!121 = !{!122, !123}
!122 = !DIEnumerator(name: "eDirection_IN", value: 0)
!123 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 1209, baseType: !53, size: 32, elements: !126)
!125 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!128 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!129 = !{!65}
!130 = !{!83}
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1408, elements: !137)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_backup_restore_t", file: !86, line: 60, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 57, size: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data", scope: !133, file: !86, line: 58, baseType: !73, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reg_addr", scope: !133, file: !86, line: 59, baseType: !73, size: 32, offset: 32)
!137 = !{!138}
!138 = !DISubrange(count: 22)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "spi_ok_cnt", scope: !141, file: !142, line: 51, type: !192, isLocal: true, isDefinition: true)
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !143, retainedTypes: !153, globals: !156, splitDebugInlining: false, nameTableKind: None)
!142 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/spim.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!143 = !{!144, !149}
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 217, baseType: !53, size: 32, elements: !146)
!145 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!146 = !{!147, !148}
!147 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!148 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 210, baseType: !53, size: 32, elements: !150)
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!152 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!153 = !{!154, !65}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !74, line: 44, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !76, line: 77, baseType: !7)
!156 = !{!157, !174, !176, !139, !190}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "remainder", scope: !159, file: !142, line: 109, type: !73, isLocal: true, isDefinition: true)
!159 = distinct !DISubprogram(name: "spim_write", scope: !142, file: !142, line: 103, type: !160, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !166)
!160 = !DISubroutineType(types: !161)
!161 = !{!154, !162, !165}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !74, line: 24, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !76, line: 43, baseType: !70)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!166 = !{!167, !168, !169, !171, !172, !173}
!167 = !DILocalVariable(name: "buf", arg: 1, scope: !159, file: !142, line: 103, type: !162)
!168 = !DILocalVariable(name: "buf_cnt", arg: 2, scope: !159, file: !142, line: 103, type: !165)
!169 = !DILocalVariable(name: "ret", scope: !159, file: !142, line: 105, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !52, line: 56, baseType: !7)
!171 = !DILocalVariable(name: "op_addr", scope: !159, file: !142, line: 106, type: !73)
!172 = !DILocalVariable(name: "n_cmd_byte", scope: !159, file: !142, line: 107, type: !73)
!173 = !DILocalVariable(name: "i", scope: !159, file: !142, line: 108, type: !73)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "regVal", scope: !159, file: !142, line: 109, type: !73, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "remainder", scope: !178, file: !142, line: 152, type: !73, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "spim_read", scope: !142, file: !142, line: 146, type: !179, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!154, !165, !165, !162, !165}
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189}
!182 = !DILocalVariable(name: "cmd", arg: 1, scope: !178, file: !142, line: 146, type: !165)
!183 = !DILocalVariable(name: "n_cmd_byte", arg: 2, scope: !178, file: !142, line: 146, type: !165)
!184 = !DILocalVariable(name: "buf", arg: 3, scope: !178, file: !142, line: 146, type: !162)
!185 = !DILocalVariable(name: "buf_cnt", arg: 4, scope: !178, file: !142, line: 146, type: !165)
!186 = !DILocalVariable(name: "ret", scope: !178, file: !142, line: 148, type: !170)
!187 = !DILocalVariable(name: "fake_op", scope: !178, file: !142, line: 149, type: !73)
!188 = !DILocalVariable(name: "fake_cmd_byte", scope: !178, file: !142, line: 150, type: !73)
!189 = !DILocalVariable(name: "i", scope: !178, file: !142, line: 151, type: !73)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "quotient", scope: !141, file: !142, line: 52, type: !73, isLocal: true, isDefinition: true)
!192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !154)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !195, file: !196, line: 43, type: !73, isLocal: true, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !197, globals: !200, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!197 = !{!198, !64, !71, !62}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!200 = !{!193, !201}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !195, file: !196, line: 44, type: !73, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !205, file: !206, line: 54, type: !73, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !231, globals: !238, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!207 = !{!208, !214}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 71, baseType: !53, size: 32, elements: !210)
!209 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!210 = !{!211, !212, !213}
!211 = !DIEnumerator(name: "UART_PORT0", value: 0)
!212 = !DIEnumerator(name: "UART_PORT1", value: 1)
!213 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 129, baseType: !53, size: 32, elements: !216)
!215 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!217 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!218 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!219 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!220 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!221 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!222 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!223 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!224 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!225 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!226 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!227 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!228 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!229 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!230 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!231 = !{!198, !73, !232, !234, !69, !236, !64}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !52, line: 113, baseType: !235)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!238 = !{!203}
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !241, file: !242, line: 51, type: !321, isLocal: false, isDefinition: true)
!241 = distinct !DICompileUnit(language: DW_LANG_C99, file: !242, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !243, retainedTypes: !290, globals: !320, splitDebugInlining: false, nameTableKind: None)
!242 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!243 = !{!244, !255, !274, !281}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 163, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254}
!247 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!248 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!249 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!250 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!251 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!252 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!253 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!254 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 186, baseType: !53, size: 32, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!257 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!258 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!259 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!260 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!261 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!262 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!263 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!264 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!265 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!266 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!267 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!268 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!269 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!270 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!271 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!272 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!273 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 176, baseType: !53, size: 32, elements: !275)
!275 = !{!276, !277, !278, !279, !280}
!276 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!277 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!278 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!279 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!280 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 99, baseType: !53, size: 32, elements: !283)
!282 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!283 = !{!284, !285, !286, !287, !288, !289}
!284 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!285 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!286 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!287 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!288 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!289 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!290 = !{!291, !68}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !293, line: 72, baseType: !294)
!293 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 56, size: 525312, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !310, !311, !315, !319}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !294, file: !293, line: 57, baseType: !72, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !294, file: !293, line: 58, baseType: !72, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !294, file: !293, line: 59, baseType: !72, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !294, file: !293, line: 60, baseType: !72, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !294, file: !293, line: 61, baseType: !72, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !294, file: !293, line: 62, baseType: !72, size: 32, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !294, file: !293, line: 63, baseType: !72, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !294, file: !293, line: 64, baseType: !72, size: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !294, file: !293, line: 65, baseType: !72, size: 32, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !294, file: !293, line: 66, baseType: !72, size: 32, offset: 288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !294, file: !293, line: 67, baseType: !307, size: 32, offset: 320)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 1)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !294, file: !293, line: 68, baseType: !72, size: 32, offset: 352)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !294, file: !293, line: 69, baseType: !312, size: 523904, offset: 384)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 523904, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 16372)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !294, file: !293, line: 70, baseType: !316, size: 512, offset: 524288)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 512, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 16)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !294, file: !293, line: 71, baseType: !316, size: 512, offset: 524800)
!320 = !{!239}
!321 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !322)
!322 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !325, file: !326, line: 53, type: !413, isLocal: false, isDefinition: true)
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !327, retainedTypes: !336, globals: !412, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!327 = !{!328, !5}
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !329, line: 152, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!330 = !{!331, !332, !333, !334, !335}
!331 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!332 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!333 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!334 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!335 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!336 = !{!337, !68, !73, !154, !339, !373}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !6, line: 97, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !6, line: 95, baseType: !5)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !341, line: 378, baseType: !342)
!341 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 363, size: 28704, elements: !343)
!343 = !{!344, !348, !352, !353, !354, !355, !356, !357, !358, !359, !363, !368, !372}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !342, file: !341, line: 365, baseType: !345, size: 256)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !342, file: !341, line: 366, baseType: !349, size: 768, offset: 256)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 768, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 24)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !342, file: !341, line: 367, baseType: !345, size: 256, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !342, file: !341, line: 368, baseType: !349, size: 768, offset: 1280)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !342, file: !341, line: 369, baseType: !345, size: 256, offset: 2048)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !342, file: !341, line: 370, baseType: !349, size: 768, offset: 2304)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !342, file: !341, line: 371, baseType: !345, size: 256, offset: 3072)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !342, file: !341, line: 372, baseType: !349, size: 768, offset: 3328)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !342, file: !341, line: 373, baseType: !345, size: 256, offset: 4096)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !342, file: !341, line: 374, baseType: !360, size: 1792, offset: 4352)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 1792, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 56)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !342, file: !341, line: 375, baseType: !364, size: 1920, offset: 6144)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 1920, elements: !366)
!365 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !163)
!366 = !{!367}
!367 = !DISubrange(count: 240)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !342, file: !341, line: 376, baseType: !369, size: 20608, offset: 8064)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 20608, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 644)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !342, file: !341, line: 377, baseType: !72, size: 32, offset: 28672)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !341, line: 418, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 395, size: 1120, elements: !376)
!376 = !{!377, !379, !380, !381, !382, !383, !384, !388, !389, !390, !391, !392, !393, !394, !395, !399, !400, !401, !405, !409, !411}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !375, file: !341, line: 397, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !375, file: !341, line: 398, baseType: !72, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !375, file: !341, line: 399, baseType: !72, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !375, file: !341, line: 400, baseType: !72, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !375, file: !341, line: 401, baseType: !72, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !375, file: !341, line: 402, baseType: !72, size: 32, offset: 160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !375, file: !341, line: 403, baseType: !385, size: 96, offset: 192)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 96, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 12)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !375, file: !341, line: 404, baseType: !72, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !375, file: !341, line: 405, baseType: !72, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !375, file: !341, line: 406, baseType: !72, size: 32, offset: 352)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !375, file: !341, line: 407, baseType: !72, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !375, file: !341, line: 408, baseType: !72, size: 32, offset: 416)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !375, file: !341, line: 409, baseType: !72, size: 32, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !375, file: !341, line: 410, baseType: !72, size: 32, offset: 480)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !375, file: !341, line: 411, baseType: !396, size: 64, offset: 512)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 64, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 2)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !375, file: !341, line: 412, baseType: !378, size: 32, offset: 576)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !375, file: !341, line: 413, baseType: !378, size: 32, offset: 608)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !375, file: !341, line: 414, baseType: !402, size: 128, offset: 640)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 128, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 4)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !375, file: !341, line: 415, baseType: !406, size: 160, offset: 768)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 160, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 5)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !375, file: !341, line: 416, baseType: !410, size: 160, offset: 928)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 160, elements: !407)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !375, file: !341, line: 417, baseType: !72, size: 32, offset: 1088)
!412 = !{!323}
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 6144, elements: !422)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !326, line: 50, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 47, size: 64, elements: !416)
!416 = !{!417, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !415, file: !326, line: 48, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 32)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !337}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !415, file: !326, line: 49, baseType: !73, size: 32, offset: 32)
!422 = !{!423}
!423 = !DISubrange(count: 96)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "g_spi_master_status", scope: !426, file: !427, line: 57, type: !365, isLocal: true, isDefinition: true)
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !428, retainedTypes: !494, globals: !495, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_spi_master.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!428 = !{!429, !437, !442, !447, !451, !455, !144, !459, !463}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 550, baseType: !7, size: 32, elements: !431)
!430 = !DIFile(filename: "../../../../../driver/chip/inc/hal_spi_master.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!431 = !{!432, !433, !434, !435, !436}
!432 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR", value: -4)
!433 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR_BUSY", value: -3)
!434 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR_PORT", value: -2)
!435 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_INVALID_PARAMETER", value: -1)
!436 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_OK", value: 0)
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 459, baseType: !53, size: 32, elements: !439)
!438 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!439 = !{!440, !441}
!440 = !DIEnumerator(name: "HAL_SPI_MASTER_0", value: 0)
!441 = !DIEnumerator(name: "HAL_SPI_MASTER_MAX", value: 1)
!442 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 466, baseType: !53, size: 32, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIEnumerator(name: "HAL_SPI_MASTER_SLAVE_0", value: 0)
!445 = !DIEnumerator(name: "HAL_SPI_MASTER_SLAVE_1", value: 1)
!446 = !DIEnumerator(name: "HAL_SPI_MASTER_SLAVE_MAX", value: 2)
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 487, baseType: !53, size: 32, elements: !448)
!448 = !{!449, !450}
!449 = !DIEnumerator(name: "HAL_SPI_MASTER_LSB_FIRST", value: 0)
!450 = !DIEnumerator(name: "HAL_SPI_MASTER_MSB_FIRST", value: 1)
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 473, baseType: !53, size: 32, elements: !452)
!452 = !{!453, !454}
!453 = !DIEnumerator(name: "HAL_SPI_MASTER_CLOCK_POLARITY0", value: 0)
!454 = !DIEnumerator(name: "HAL_SPI_MASTER_CLOCK_POLARITY1", value: 1)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 480, baseType: !53, size: 32, elements: !456)
!456 = !{!457, !458}
!457 = !DIEnumerator(name: "HAL_SPI_MASTER_CLOCK_PHASE0", value: 0)
!458 = !DIEnumerator(name: "HAL_SPI_MASTER_CLOCK_PHASE1", value: 1)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 560, baseType: !53, size: 32, elements: !460)
!460 = !{!461, !462}
!461 = !DIEnumerator(name: "HAL_SPI_MASTER_BUSY", value: 0)
!462 = !DIEnumerator(name: "HAL_SPI_MASTER_IDLE", value: 1)
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 249, baseType: !53, size: 32, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!465 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!466 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!467 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!468 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!469 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!470 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!471 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!472 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!473 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!474 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!475 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!476 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!477 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!478 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!479 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!480 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!481 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!482 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!483 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!484 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!485 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!486 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!487 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!488 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!489 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!490 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!491 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!492 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!493 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!494 = !{!68, !58, !71, !73}
!495 = !{!496, !424, !510, !513}
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "g_spi_master_context", scope: !426, file: !427, line: 49, type: !498, isLocal: true, isDefinition: true)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_config_t", file: !430, line: 580, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 574, size: 160, elements: !500)
!500 = !{!501, !502, !504, !506, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "clock_frequency", scope: !499, file: !430, line: 575, baseType: !73, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "slave_port", scope: !499, file: !430, line: 576, baseType: !503, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_slave_port_t", file: !438, line: 470, baseType: !442)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "bit_order", scope: !499, file: !430, line: 577, baseType: !505, size: 32, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_bit_order_t", file: !438, line: 490, baseType: !447)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !499, file: !430, line: 578, baseType: !507, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_clock_polarity_t", file: !438, line: 476, baseType: !451)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !499, file: !430, line: 579, baseType: !509, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_clock_phase_t", file: !438, line: 483, baseType: !455)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "g_spi_master_cs_n", scope: !426, file: !427, line: 58, type: !512, isLocal: false, isDefinition: true)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !438, line: 281, baseType: !463)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "hal_spi_source_clock", scope: !515, file: !427, line: 96, type: !165, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "hal_spi_master_calc_divisor", scope: !427, file: !427, line: 91, type: !516, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!73, !73}
!518 = !{!519}
!519 = !DILocalVariable(name: "frequency", arg: 1, scope: !515, file: !427, line: 91, type: !73)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !522, file: !523, line: 77, type: !588, isLocal: true, isDefinition: true)
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !524, retainedTypes: !574, globals: !576, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!524 = !{!525, !533, !538, !554, !560, !564, !208, !214, !569}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 345, baseType: !7, size: 32, elements: !527)
!526 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!527 = !{!528, !529, !530, !531, !532}
!528 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!529 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!530 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!531 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!532 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 109, baseType: !53, size: 32, elements: !534)
!534 = !{!535, !536, !537}
!535 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!536 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!537 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!538 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 302, baseType: !53, size: 32, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!540 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!541 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!542 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!543 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!544 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!545 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!546 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!547 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!548 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!549 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!550 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!551 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!552 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!553 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 321, baseType: !53, size: 32, elements: !555)
!555 = !{!556, !557, !558, !559}
!556 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!557 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!558 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!559 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 330, baseType: !53, size: 32, elements: !561)
!561 = !{!562, !563}
!562 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!563 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!564 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 337, baseType: !53, size: 32, elements: !565)
!565 = !{!566, !567, !568}
!566 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!567 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!568 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 355, baseType: !7, size: 32, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!572 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!573 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!574 = !{!53, !68, !70, !575, !163}
!575 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!576 = !{!520, !577}
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(name: "func_tbl", scope: !579, file: !523, line: 536, type: !586, isLocal: true, isDefinition: true)
!579 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !523, file: !523, line: 534, type: !580, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !584)
!580 = !DISubroutineType(types: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !215, line: 197, baseType: !80)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !438, line: 113, baseType: !533)
!584 = !{!585}
!585 = !DILocalVariable(name: "uart_port", arg: 1, scope: !579, file: !523, line: 534, type: !583)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 64, elements: !397)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 1024, elements: !397)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !523, line: 75, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 68, size: 512, elements: !591)
!591 = !{!592, !593, !605, !606, !617, !618}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !590, file: !523, line: 69, baseType: !322, size: 8)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !590, file: !523, line: 70, baseType: !594, size: 128, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !526, line: 378, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 373, size: 128, elements: !596)
!596 = !{!597, !599, !601, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !595, file: !526, line: 374, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !526, line: 317, baseType: !538)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !595, file: !526, line: 375, baseType: !600, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !526, line: 326, baseType: !554)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !595, file: !526, line: 376, baseType: !602, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !526, line: 333, baseType: !560)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !595, file: !526, line: 377, baseType: !604, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !526, line: 341, baseType: !564)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !590, file: !523, line: 71, baseType: !322, size: 8, offset: 160)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !590, file: !523, line: 72, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !523, line: 66, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 63, size: 64, elements: !609)
!609 = !{!610, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !608, file: !523, line: 64, baseType: !611, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !526, line: 410, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 32)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !615, !68}
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !526, line: 359, baseType: !569)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !608, file: !523, line: 65, baseType: !68, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !590, file: !523, line: 73, baseType: !322, size: 8, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !590, file: !523, line: 74, baseType: !619, size: 224, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !526, line: 390, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 382, size: 224, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !620, file: !526, line: 383, baseType: !162, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !620, file: !526, line: 384, baseType: !73, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !620, file: !526, line: 385, baseType: !73, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !620, file: !526, line: 386, baseType: !162, size: 32, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !620, file: !526, line: 387, baseType: !73, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !620, file: !526, line: 388, baseType: !73, size: 32, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !620, file: !526, line: 389, baseType: !73, size: 32, offset: 192)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !631, file: !632, line: 59, type: !73, isLocal: false, isDefinition: true)
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !633, globals: !686, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_master_polling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!633 = !{!634, !642, !667}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !341, line: 656, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 650, size: 128, elements: !637)
!637 = !{!638, !639, !640, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !636, file: !341, line: 652, baseType: !72, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !636, file: !341, line: 653, baseType: !72, size: 32, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !636, file: !341, line: 654, baseType: !72, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !636, file: !341, line: 655, baseType: !378, size: 32, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !341, line: 418, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 395, size: 1120, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !644, file: !341, line: 397, baseType: !378, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !644, file: !341, line: 398, baseType: !72, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !644, file: !341, line: 399, baseType: !72, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !644, file: !341, line: 400, baseType: !72, size: 32, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !644, file: !341, line: 401, baseType: !72, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !644, file: !341, line: 402, baseType: !72, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !644, file: !341, line: 403, baseType: !385, size: 96, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !644, file: !341, line: 404, baseType: !72, size: 32, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !644, file: !341, line: 405, baseType: !72, size: 32, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !644, file: !341, line: 406, baseType: !72, size: 32, offset: 352)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !644, file: !341, line: 407, baseType: !72, size: 32, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !644, file: !341, line: 408, baseType: !72, size: 32, offset: 416)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !644, file: !341, line: 409, baseType: !72, size: 32, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !644, file: !341, line: 410, baseType: !72, size: 32, offset: 480)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !644, file: !341, line: 411, baseType: !396, size: 64, offset: 512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !644, file: !341, line: 412, baseType: !378, size: 32, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !644, file: !341, line: 413, baseType: !378, size: 32, offset: 608)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !644, file: !341, line: 414, baseType: !402, size: 128, offset: 640)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !644, file: !341, line: 415, baseType: !406, size: 160, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !644, file: !341, line: 416, baseType: !410, size: 160, offset: 928)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !644, file: !341, line: 417, baseType: !72, size: 32, offset: 1088)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !293, line: 72, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 56, size: 525312, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !669, file: !293, line: 57, baseType: !72, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !669, file: !293, line: 58, baseType: !72, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !669, file: !293, line: 59, baseType: !72, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !669, file: !293, line: 60, baseType: !72, size: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !669, file: !293, line: 61, baseType: !72, size: 32, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !669, file: !293, line: 62, baseType: !72, size: 32, offset: 160)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !669, file: !293, line: 63, baseType: !72, size: 32, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !669, file: !293, line: 64, baseType: !72, size: 32, offset: 224)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !669, file: !293, line: 65, baseType: !72, size: 32, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !669, file: !293, line: 66, baseType: !72, size: 32, offset: 288)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !669, file: !293, line: 67, baseType: !307, size: 32, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !669, file: !293, line: 68, baseType: !72, size: 32, offset: 352)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !669, file: !293, line: 69, baseType: !312, size: 523904, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !669, file: !293, line: 70, baseType: !316, size: 512, offset: 524288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !669, file: !293, line: 71, baseType: !316, size: 512, offset: 524800)
!686 = !{!629, !687}
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !631, file: !632, line: 61, type: !72, isLocal: true, isDefinition: true)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "heap_end", scope: !691, file: !692, line: 66, type: !697, isLocal: true, isDefinition: true)
!691 = distinct !DISubprogram(name: "_sbrk_r", scope: !692, file: !692, line: 63, type: !693, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !892)
!692 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_master_polling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!693 = !DISubroutineType(types: !694)
!694 = !{!695, !698, !887}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !696, line: 123, baseType: !697)
!696 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 32)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !700, line: 377, size: 1920, elements: !701)
!700 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!701 = !{!702, !703, !777, !778, !779, !780, !781, !782, !783, !786, !806, !810, !811, !812, !813, !823, !836, !837, !842, !861, !862, !869, !870, !886}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !699, file: !700, line: 381, baseType: !7, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !699, file: !700, line: 386, baseType: !704, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !700, line: 292, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !700, line: 186, size: 832, elements: !707)
!707 = !{!708, !710, !711, !712, !714, !715, !720, !721, !722, !723, !727, !733, !740, !744, !745, !746, !747, !751, !753, !754, !755, !757, !763, !776}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !706, file: !700, line: 187, baseType: !709, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !706, file: !700, line: 188, baseType: !7, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !706, file: !700, line: 189, baseType: !7, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !706, file: !700, line: 190, baseType: !713, size: 16, offset: 96)
!713 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !706, file: !700, line: 191, baseType: !713, size: 16, offset: 112)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !706, file: !700, line: 192, baseType: !716, size: 64, offset: 128)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !700, line: 122, size: 64, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !716, file: !700, line: 123, baseType: !709, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !716, file: !700, line: 124, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !706, file: !700, line: 193, baseType: !7, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !706, file: !700, line: 196, baseType: !698, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !706, file: !700, line: 200, baseType: !68, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !706, file: !700, line: 202, baseType: !724, size: 32, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 32)
!725 = !DISubroutineType(types: !726)
!726 = !{!7, !698, !68, !697, !7}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !706, file: !700, line: 204, baseType: !728, size: 32, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 32)
!729 = !DISubroutineType(types: !730)
!730 = !{!7, !698, !68, !731, !7}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !706, file: !700, line: 207, baseType: !734, size: 32, offset: 352)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 32)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !698, !68, !737, !7}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !738, line: 116, baseType: !739)
!738 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!739 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !706, file: !700, line: 208, baseType: !741, size: 32, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 32)
!742 = !DISubroutineType(types: !743)
!743 = !{!7, !698, !68}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !706, file: !700, line: 211, baseType: !716, size: 64, offset: 416)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !706, file: !700, line: 212, baseType: !709, size: 32, offset: 480)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !706, file: !700, line: 213, baseType: !7, size: 32, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !706, file: !700, line: 216, baseType: !748, size: 24, offset: 544)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 24, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 3)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !706, file: !700, line: 217, baseType: !752, size: 8, offset: 568)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 8, elements: !308)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !706, file: !700, line: 220, baseType: !716, size: 64, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !706, file: !700, line: 223, baseType: !7, size: 32, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !706, file: !700, line: 224, baseType: !756, size: 32, offset: 672)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !738, line: 46, baseType: !739)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !706, file: !700, line: 231, baseType: !758, size: 32, offset: 704)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !700, line: 35, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !760, line: 34, baseType: !761)
!760 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 32)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !760, line: 33, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !706, file: !700, line: 233, baseType: !764, size: 64, offset: 736)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !738, line: 170, baseType: !765)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 162, size: 64, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !765, file: !738, line: 164, baseType: !7, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !765, file: !738, line: 169, baseType: !769, size: 32, offset: 32)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !738, line: 165, size: 32, elements: !770)
!770 = !{!771, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !769, file: !738, line: 167, baseType: !772, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !773, line: 116, baseType: !7)
!773 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !769, file: !738, line: 168, baseType: !775, size: 32)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32, elements: !403)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !706, file: !700, line: 234, baseType: !7, size: 32, offset: 800)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !699, file: !700, line: 386, baseType: !704, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !699, file: !700, line: 386, baseType: !704, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !699, file: !700, line: 388, baseType: !7, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !699, file: !700, line: 390, baseType: !697, size: 32, offset: 160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !699, file: !700, line: 392, baseType: !7, size: 32, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !699, file: !700, line: 394, baseType: !7, size: 32, offset: 224)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !699, file: !700, line: 395, baseType: !784, size: 32, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 32)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !700, line: 45, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !699, file: !700, line: 397, baseType: !787, size: 32, offset: 288)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 32)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !700, line: 349, size: 128, elements: !789)
!789 = !{!790, !802, !803, !804}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !788, file: !700, line: 352, baseType: !791, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 32)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !700, line: 52, size: 192, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !792, file: !700, line: 54, baseType: !791, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !792, file: !700, line: 55, baseType: !7, size: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !792, file: !700, line: 55, baseType: !7, size: 32, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !792, file: !700, line: 55, baseType: !7, size: 32, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !792, file: !700, line: 55, baseType: !7, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !792, file: !700, line: 56, baseType: !800, size: 32, offset: 160)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 32, elements: !308)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !700, line: 22, baseType: !61)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !788, file: !700, line: 353, baseType: !7, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !788, file: !700, line: 354, baseType: !791, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !788, file: !700, line: 355, baseType: !805, size: 32, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !699, file: !700, line: 399, baseType: !807, size: 32, offset: 320)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 32)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !698}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !699, file: !700, line: 401, baseType: !7, size: 32, offset: 352)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !699, file: !700, line: 404, baseType: !7, size: 32, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !699, file: !700, line: 405, baseType: !697, size: 32, offset: 416)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !699, file: !700, line: 407, baseType: !814, size: 32, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 32)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !700, line: 324, size: 192, elements: !816)
!816 = !{!817, !819, !820, !821}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !815, file: !700, line: 325, baseType: !818, size: 48)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 48, elements: !749)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !815, file: !700, line: 326, baseType: !818, size: 48, offset: 48)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !815, file: !700, line: 327, baseType: !235, size: 16, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !815, file: !700, line: 330, baseType: !822, size: 64, offset: 128)
!822 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !699, file: !700, line: 408, baseType: !824, size: 32, offset: 480)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 32)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !700, line: 60, size: 288, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !825, file: !700, line: 62, baseType: !7, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !825, file: !700, line: 63, baseType: !7, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !825, file: !700, line: 64, baseType: !7, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !825, file: !700, line: 65, baseType: !7, size: 32, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !825, file: !700, line: 66, baseType: !7, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !825, file: !700, line: 67, baseType: !7, size: 32, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !825, file: !700, line: 68, baseType: !7, size: 32, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !825, file: !700, line: 69, baseType: !7, size: 32, offset: 224)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !825, file: !700, line: 70, baseType: !7, size: 32, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !699, file: !700, line: 409, baseType: !697, size: 32, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !699, file: !700, line: 412, baseType: !838, size: 32, offset: 544)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 32)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !7}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !699, file: !700, line: 416, baseType: !843, size: 32, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 32)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !700, line: 90, size: 1120, elements: !845)
!845 = !{!846, !847, !848, !852}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !844, file: !700, line: 91, baseType: !843, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !844, file: !700, line: 92, baseType: !7, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !844, file: !700, line: 93, baseType: !849, size: 1024, offset: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1024, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !844, file: !700, line: 94, baseType: !853, size: 32, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 32)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !700, line: 79, size: 2112, elements: !855)
!855 = !{!856, !858, !859, !860}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !854, file: !700, line: 80, baseType: !857, size: 1024)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, elements: !850)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !854, file: !700, line: 81, baseType: !857, size: 1024, offset: 1024)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !854, file: !700, line: 83, baseType: !801, size: 32, offset: 2048)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !854, file: !700, line: 86, baseType: !801, size: 32, offset: 2080)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !699, file: !700, line: 417, baseType: !844, size: 1120, offset: 608)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !699, file: !700, line: 420, baseType: !863, size: 96, offset: 1728)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !700, line: 296, size: 96, elements: !864)
!864 = !{!865, !867, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !863, file: !700, line: 298, baseType: !866, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !863, file: !700, line: 299, baseType: !7, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !863, file: !700, line: 300, baseType: !704, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !699, file: !700, line: 421, baseType: !704, size: 32, offset: 1824)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !699, file: !700, line: 422, baseType: !871, size: 32, offset: 1856)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 32)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !700, line: 359, size: 640, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !880, !881, !882, !883, !884, !885}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !872, file: !700, line: 362, baseType: !697, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !872, file: !700, line: 363, baseType: !764, size: 64, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !872, file: !700, line: 364, baseType: !764, size: 64, offset: 96)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !872, file: !700, line: 365, baseType: !764, size: 64, offset: 160)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !872, file: !700, line: 366, baseType: !879, size: 64, offset: 224)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 64, elements: !346)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !872, file: !700, line: 367, baseType: !7, size: 32, offset: 288)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !872, file: !700, line: 368, baseType: !764, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !872, file: !700, line: 369, baseType: !764, size: 64, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !872, file: !700, line: 370, baseType: !764, size: 64, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !872, file: !700, line: 371, baseType: !764, size: 64, offset: 512)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !872, file: !700, line: 372, baseType: !764, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !699, file: !700, line: 423, baseType: !697, size: 32, offset: 1888)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !773, line: 46, baseType: !53)
!888 = distinct !DICompileUnit(language: DW_LANG_C99, file: !889, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !890, globals: !891, splitDebugInlining: false, nameTableKind: None)
!889 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!890 = !{!697, !695}
!891 = !{!689}
!892 = !{!893, !894, !895, !896}
!893 = !DILocalVariable(name: "r", arg: 1, scope: !691, file: !692, line: 63, type: !698)
!894 = !DILocalVariable(name: "nbytes", arg: 2, scope: !691, file: !692, line: 63, type: !887)
!895 = !DILocalVariable(name: "prev_heap_end", scope: !691, file: !692, line: 67, type: !697)
!896 = !DILocalVariable(name: "stack", scope: !691, file: !692, line: 68, type: !697)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !899, file: !904, line: 4, type: !910, isLocal: false, isDefinition: true)
!899 = distinct !DICompileUnit(language: DW_LANG_C99, file: !900, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !901, splitDebugInlining: false, nameTableKind: None)
!900 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!901 = !{!897, !902, !908}
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !899, file: !904, line: 5, type: !905, isLocal: false, isDefinition: true)
!904 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 88, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 11)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !899, file: !904, line: 6, type: !905, isLocal: false, isDefinition: true)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 248, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 31)
!913 = distinct !DICompileUnit(language: DW_LANG_C99, file: !914, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !915, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!915 = !{!124}
!916 = !{!65, !67}
!917 = distinct !DICompileUnit(language: DW_LANG_C99, file: !918, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !919, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!919 = !{!920}
!920 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !921, line: 150, baseType: !53, size: 32, elements: !922)
!921 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!922 = !{!923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996}
!923 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!924 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!925 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!926 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!927 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!928 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!929 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!930 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!931 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!932 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!933 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!934 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!935 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!936 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!937 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!938 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!939 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!940 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!941 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!942 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!943 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!944 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!945 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!946 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!947 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!948 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!949 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!950 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!951 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!952 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!953 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!954 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!955 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!956 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!957 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!958 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!959 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!960 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!961 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!962 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!963 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!964 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!965 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!966 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!967 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!968 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!969 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!970 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!971 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!972 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!973 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!974 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!975 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!976 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!977 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!978 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!979 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!980 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!981 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!982 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!983 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!984 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!985 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!986 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!987 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!988 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!989 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!990 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!991 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!992 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!993 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!994 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!995 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!996 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!997 = !{!65, !64}
!998 = distinct !DICompileUnit(language: DW_LANG_C99, file: !999, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1000, splitDebugInlining: false, nameTableKind: None)
!999 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!1000 = !{!1001, !1026}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !341, line: 418, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 395, size: 1120, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1003, file: !341, line: 397, baseType: !378, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1003, file: !341, line: 398, baseType: !72, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1003, file: !341, line: 399, baseType: !72, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1003, file: !341, line: 400, baseType: !72, size: 32, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1003, file: !341, line: 401, baseType: !72, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1003, file: !341, line: 402, baseType: !72, size: 32, offset: 160)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1003, file: !341, line: 403, baseType: !385, size: 96, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1003, file: !341, line: 404, baseType: !72, size: 32, offset: 288)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1003, file: !341, line: 405, baseType: !72, size: 32, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1003, file: !341, line: 406, baseType: !72, size: 32, offset: 352)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1003, file: !341, line: 407, baseType: !72, size: 32, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1003, file: !341, line: 408, baseType: !72, size: 32, offset: 416)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1003, file: !341, line: 409, baseType: !72, size: 32, offset: 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1003, file: !341, line: 410, baseType: !72, size: 32, offset: 480)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1003, file: !341, line: 411, baseType: !396, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1003, file: !341, line: 412, baseType: !378, size: 32, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1003, file: !341, line: 413, baseType: !378, size: 32, offset: 608)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1003, file: !341, line: 414, baseType: !402, size: 128, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1003, file: !341, line: 415, baseType: !406, size: 160, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1003, file: !341, line: 416, baseType: !410, size: 160, offset: 928)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1003, file: !341, line: 417, baseType: !72, size: 32, offset: 1088)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !341, line: 378, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 363, size: 28704, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1028, file: !341, line: 365, baseType: !345, size: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1028, file: !341, line: 366, baseType: !349, size: 768, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1028, file: !341, line: 367, baseType: !345, size: 256, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1028, file: !341, line: 368, baseType: !349, size: 768, offset: 1280)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1028, file: !341, line: 369, baseType: !345, size: 256, offset: 2048)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1028, file: !341, line: 370, baseType: !349, size: 768, offset: 2304)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1028, file: !341, line: 371, baseType: !345, size: 256, offset: 3072)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1028, file: !341, line: 372, baseType: !349, size: 768, offset: 3328)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1028, file: !341, line: 373, baseType: !345, size: 256, offset: 4096)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1028, file: !341, line: 374, baseType: !360, size: 1792, offset: 4352)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1028, file: !341, line: 375, baseType: !364, size: 1920, offset: 6144)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1028, file: !341, line: 376, baseType: !369, size: 20608, offset: 8064)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1028, file: !341, line: 377, baseType: !72, size: 32, offset: 28672)
!1043 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1044, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1045, splitDebugInlining: false, nameTableKind: None)
!1044 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!1045 = !{!88, !920}
!1046 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1047, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1047 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!1048 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1049, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1050, retainedTypes: !1069, splitDebugInlining: false, nameTableKind: None)
!1049 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!1050 = !{!1051, !463, !88, !1057, !144, !149, !1063, !119}
!1051 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 233, baseType: !7, size: 32, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1054 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1055 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1056 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1057 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 224, baseType: !7, size: 32, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062}
!1059 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1060 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1061 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1062 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1063 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 242, baseType: !53, size: 32, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068}
!1065 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1066 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1067 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1068 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1069 = !{!1070, !68, !1071, !163, !1072, !1073}
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !89, line: 87, baseType: !88)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !145, line: 220, baseType: !144)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !145, line: 247, baseType: !1063)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !120, line: 60, baseType: !119)
!1074 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1075, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1076, splitDebugInlining: false, nameTableKind: None)
!1075 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_master_polling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!1076 = !{!533, !538, !554, !560, !564, !463, !442, !447, !451, !455, !429, !437}
!1077 = !{!"Ubuntu clang version 14.0.6"}
!1078 = !{i32 7, !"Dwarf Version", i32 2}
!1079 = !{i32 2, !"Debug Info Version", i32 3}
!1080 = !{i32 1, !"wchar_size", i32 4}
!1081 = !{i32 1, !"min_enum_size", i32 4}
!1082 = !{i32 1, !"branch-target-enforcement", i32 0}
!1083 = !{i32 1, !"sign-return-address", i32 0}
!1084 = !{i32 1, !"sign-return-address-all", i32 0}
!1085 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1086 = !{i32 7, !"frame-pointer", i32 2}
!1087 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !914, file: !914, line: 54, type: !1088, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!170, !64, !69}
!1090 = !{!1091, !1092, !1093, !1095}
!1091 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1087, file: !914, line: 54, type: !64)
!1092 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1087, file: !914, line: 54, type: !69)
!1093 = !DILocalVariable(name: "no", scope: !1087, file: !914, line: 57, type: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !52, line: 60, baseType: !235)
!1095 = !DILocalVariable(name: "remainder", scope: !1087, file: !914, line: 58, type: !1094)
!1096 = !DILocation(line: 0, scope: !1087)
!1097 = !DILocation(line: 59, column: 19, scope: !1087)
!1098 = !DILocation(line: 60, column: 17, scope: !1087)
!1099 = !DILocation(line: 61, column: 5, scope: !1087)
!1100 = !DILocation(line: 65, column: 27, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !914, line: 65, column: 17)
!1102 = distinct !DILexicalBlock(scope: !1087, file: !914, line: 61, column: 17)
!1103 = !DILocation(line: 0, scope: !1101)
!1104 = !DILocation(line: 65, column: 17, scope: !1102)
!1105 = !DILocation(line: 66, column: 21, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !914, line: 65, column: 33)
!1107 = !DILocation(line: 67, column: 73, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !914, line: 66, column: 38)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !914, line: 66, column: 21)
!1110 = !DILocation(line: 67, column: 69, scope: !1108)
!1111 = !DILocation(line: 67, column: 66, scope: !1108)
!1112 = !DILocation(line: 68, column: 17, scope: !1108)
!1113 = !DILocation(line: 68, column: 28, scope: !1109)
!1114 = !DILocation(line: 69, column: 77, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !914, line: 68, column: 45)
!1116 = distinct !DILexicalBlock(scope: !1109, file: !914, line: 68, column: 28)
!1117 = !DILocation(line: 70, column: 77, scope: !1115)
!1118 = !DILocation(line: 71, column: 17, scope: !1115)
!1119 = !DILocation(line: 72, column: 77, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !914, line: 71, column: 45)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !914, line: 71, column: 28)
!1122 = !DILocation(line: 73, column: 77, scope: !1120)
!1123 = !DILocation(line: 74, column: 17, scope: !1120)
!1124 = !DILocation(line: 75, column: 79, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !914, line: 74, column: 45)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !914, line: 74, column: 28)
!1127 = !DILocation(line: 76, column: 79, scope: !1125)
!1128 = !DILocation(line: 77, column: 17, scope: !1125)
!1129 = !DILocation(line: 78, column: 79, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !914, line: 77, column: 45)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !914, line: 77, column: 28)
!1132 = !DILocation(line: 79, column: 79, scope: !1130)
!1133 = !DILocation(line: 80, column: 17, scope: !1130)
!1134 = !DILocation(line: 81, column: 79, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !914, line: 80, column: 45)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !914, line: 80, column: 28)
!1137 = !DILocation(line: 82, column: 79, scope: !1135)
!1138 = !DILocation(line: 83, column: 17, scope: !1135)
!1139 = !DILocation(line: 85, column: 17, scope: !1106)
!1140 = !DILocation(line: 86, column: 13, scope: !1106)
!1141 = !DILocation(line: 88, column: 21, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1101, file: !914, line: 86, column: 20)
!1143 = !DILocation(line: 89, column: 72, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !914, line: 88, column: 38)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !914, line: 88, column: 21)
!1146 = !DILocation(line: 89, column: 66, scope: !1144)
!1147 = !DILocation(line: 90, column: 17, scope: !1144)
!1148 = !DILocation(line: 90, column: 28, scope: !1145)
!1149 = !DILocation(line: 91, column: 77, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !914, line: 90, column: 45)
!1151 = distinct !DILexicalBlock(scope: !1145, file: !914, line: 90, column: 28)
!1152 = !DILocation(line: 92, column: 17, scope: !1150)
!1153 = !DILocation(line: 93, column: 77, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !914, line: 92, column: 45)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !914, line: 92, column: 28)
!1156 = !DILocation(line: 94, column: 17, scope: !1154)
!1157 = !DILocation(line: 95, column: 79, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !914, line: 94, column: 45)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !914, line: 94, column: 28)
!1160 = !DILocation(line: 96, column: 17, scope: !1158)
!1161 = !DILocation(line: 97, column: 79, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !914, line: 96, column: 45)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !914, line: 96, column: 28)
!1164 = !DILocation(line: 98, column: 17, scope: !1162)
!1165 = !DILocation(line: 99, column: 79, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !914, line: 98, column: 45)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !914, line: 98, column: 28)
!1168 = !DILocation(line: 100, column: 17, scope: !1166)
!1169 = !DILocation(line: 103, column: 17, scope: !1142)
!1170 = !DILocation(line: 109, column: 27, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1102, file: !914, line: 109, column: 17)
!1172 = !DILocation(line: 0, scope: !1171)
!1173 = !DILocation(line: 109, column: 17, scope: !1102)
!1174 = !DILocation(line: 110, column: 21, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !914, line: 109, column: 33)
!1176 = !DILocation(line: 111, column: 73, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !914, line: 110, column: 36)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !914, line: 110, column: 21)
!1179 = !DILocation(line: 111, column: 69, scope: !1177)
!1180 = !DILocation(line: 111, column: 66, scope: !1177)
!1181 = !DILocation(line: 112, column: 17, scope: !1177)
!1182 = !DILocation(line: 113, column: 79, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !914, line: 112, column: 24)
!1184 = !DILocation(line: 114, column: 79, scope: !1183)
!1185 = !DILocation(line: 117, column: 17, scope: !1175)
!1186 = !DILocation(line: 118, column: 13, scope: !1175)
!1187 = !DILocation(line: 120, column: 21, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1171, file: !914, line: 118, column: 20)
!1189 = !DILocation(line: 121, column: 72, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !914, line: 120, column: 36)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !914, line: 120, column: 21)
!1192 = !DILocation(line: 121, column: 66, scope: !1190)
!1193 = !DILocation(line: 122, column: 17, scope: !1190)
!1194 = !DILocation(line: 123, column: 79, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !914, line: 122, column: 24)
!1196 = !DILocation(line: 126, column: 17, scope: !1188)
!1197 = !DILocation(line: 133, column: 1, scope: !1087)
!1198 = distinct !DISubprogram(name: "halGPO_Write", scope: !914, file: !914, line: 136, type: !1088, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1199)
!1199 = !{!1200, !1201, !1202, !1203}
!1200 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1198, file: !914, line: 136, type: !64)
!1201 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1198, file: !914, line: 136, type: !69)
!1202 = !DILocalVariable(name: "no", scope: !1198, file: !914, line: 138, type: !1094)
!1203 = !DILocalVariable(name: "remainder", scope: !1198, file: !914, line: 139, type: !1094)
!1204 = !DILocation(line: 0, scope: !1198)
!1205 = !DILocation(line: 140, column: 19, scope: !1198)
!1206 = !DILocation(line: 141, column: 17, scope: !1198)
!1207 = !DILocation(line: 142, column: 5, scope: !1198)
!1208 = !DILocation(line: 145, column: 17, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !914, line: 145, column: 17)
!1210 = distinct !DILexicalBlock(scope: !1198, file: !914, line: 142, column: 17)
!1211 = !DILocation(line: 0, scope: !1209)
!1212 = !DILocation(line: 145, column: 17, scope: !1210)
!1213 = !DILocation(line: 146, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !914, line: 145, column: 29)
!1215 = !DILocation(line: 147, column: 13, scope: !1214)
!1216 = !DILocation(line: 148, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !914, line: 147, column: 20)
!1218 = !DILocation(line: 153, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !914, line: 153, column: 17)
!1220 = !DILocation(line: 0, scope: !1219)
!1221 = !DILocation(line: 153, column: 17, scope: !1210)
!1222 = !DILocation(line: 154, column: 17, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !914, line: 153, column: 29)
!1224 = !DILocation(line: 155, column: 13, scope: !1223)
!1225 = !DILocation(line: 156, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1219, file: !914, line: 155, column: 20)
!1227 = !DILocation(line: 163, column: 1, scope: !1198)
!1228 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !914, file: !914, line: 169, type: !1229, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!69, !64}
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1228, file: !914, line: 169, type: !64)
!1233 = !DILocalVariable(name: "no", scope: !1228, file: !914, line: 171, type: !1094)
!1234 = !DILocalVariable(name: "remainder", scope: !1228, file: !914, line: 172, type: !1094)
!1235 = !DILocalVariable(name: "dout", scope: !1228, file: !914, line: 175, type: !69)
!1236 = !DILocation(line: 0, scope: !1228)
!1237 = !DILocation(line: 173, column: 19, scope: !1228)
!1238 = !DILocation(line: 174, column: 17, scope: !1228)
!1239 = !DILocation(line: 177, column: 5, scope: !1228)
!1240 = !DILocation(line: 183, column: 13, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1228, file: !914, line: 177, column: 17)
!1242 = !DILocation(line: 0, scope: !1241)
!1243 = !DILocation(line: 187, column: 5, scope: !1228)
!1244 = !DILocation(line: 188, column: 1, scope: !1228)
!1245 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !914, file: !914, line: 189, type: !1229, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1245, file: !914, line: 189, type: !64)
!1248 = !DILocalVariable(name: "no", scope: !1245, file: !914, line: 191, type: !1094)
!1249 = !DILocalVariable(name: "remainder", scope: !1245, file: !914, line: 192, type: !1094)
!1250 = !DILocalVariable(name: "din", scope: !1245, file: !914, line: 195, type: !69)
!1251 = !DILocation(line: 0, scope: !1245)
!1252 = !DILocation(line: 193, column: 19, scope: !1245)
!1253 = !DILocation(line: 194, column: 17, scope: !1245)
!1254 = !DILocation(line: 196, column: 5, scope: !1245)
!1255 = !DILocation(line: 203, column: 13, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1245, file: !914, line: 196, column: 17)
!1257 = !DILocation(line: 0, scope: !1256)
!1258 = !DILocation(line: 208, column: 5, scope: !1245)
!1259 = !DILocation(line: 209, column: 1, scope: !1245)
!1260 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !914, file: !914, line: 210, type: !1229, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1261)
!1261 = !{!1262, !1263, !1264, !1265}
!1262 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1260, file: !914, line: 210, type: !64)
!1263 = !DILocalVariable(name: "no", scope: !1260, file: !914, line: 212, type: !1094)
!1264 = !DILocalVariable(name: "remainder", scope: !1260, file: !914, line: 213, type: !1094)
!1265 = !DILocalVariable(name: "outEnable", scope: !1260, file: !914, line: 216, type: !69)
!1266 = !DILocation(line: 0, scope: !1260)
!1267 = !DILocation(line: 214, column: 19, scope: !1260)
!1268 = !DILocation(line: 215, column: 17, scope: !1260)
!1269 = !DILocation(line: 218, column: 5, scope: !1260)
!1270 = !DILocation(line: 224, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1260, file: !914, line: 218, column: 17)
!1272 = !DILocation(line: 0, scope: !1271)
!1273 = !DILocation(line: 228, column: 5, scope: !1260)
!1274 = !DILocation(line: 229, column: 1, scope: !1260)
!1275 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !914, file: !914, line: 232, type: !1276, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!170, !64}
!1278 = !{!1279, !1280, !1281}
!1279 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1275, file: !914, line: 232, type: !64)
!1280 = !DILocalVariable(name: "no", scope: !1275, file: !914, line: 234, type: !1094)
!1281 = !DILocalVariable(name: "remainder", scope: !1275, file: !914, line: 235, type: !1094)
!1282 = !DILocation(line: 0, scope: !1275)
!1283 = !DILocation(line: 236, column: 19, scope: !1275)
!1284 = !DILocation(line: 237, column: 17, scope: !1275)
!1285 = !DILocation(line: 238, column: 5, scope: !1275)
!1286 = !DILocation(line: 239, column: 5, scope: !1275)
!1287 = !DILocation(line: 241, column: 27, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !914, line: 241, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1275, file: !914, line: 239, column: 17)
!1290 = !DILocation(line: 241, column: 17, scope: !1289)
!1291 = !DILocation(line: 241, column: 17, scope: !1288)
!1292 = !DILocation(line: 242, column: 17, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !914, line: 241, column: 34)
!1294 = !DILocation(line: 243, column: 13, scope: !1293)
!1295 = !DILocation(line: 243, column: 24, scope: !1288)
!1296 = !DILocation(line: 244, column: 73, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !914, line: 243, column: 41)
!1298 = distinct !DILexicalBlock(scope: !1288, file: !914, line: 243, column: 24)
!1299 = !DILocation(line: 245, column: 73, scope: !1297)
!1300 = !DILocation(line: 246, column: 13, scope: !1297)
!1301 = !DILocation(line: 247, column: 73, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !914, line: 246, column: 41)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !914, line: 246, column: 24)
!1304 = !DILocation(line: 248, column: 73, scope: !1302)
!1305 = !DILocation(line: 249, column: 13, scope: !1302)
!1306 = !DILocation(line: 250, column: 75, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !914, line: 249, column: 41)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !914, line: 249, column: 24)
!1309 = !DILocation(line: 251, column: 75, scope: !1307)
!1310 = !DILocation(line: 252, column: 13, scope: !1307)
!1311 = !DILocation(line: 253, column: 75, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !914, line: 252, column: 41)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !914, line: 252, column: 24)
!1314 = !DILocation(line: 254, column: 75, scope: !1312)
!1315 = !DILocation(line: 255, column: 13, scope: !1312)
!1316 = !DILocation(line: 256, column: 75, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !914, line: 255, column: 41)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !914, line: 255, column: 24)
!1319 = !DILocation(line: 257, column: 75, scope: !1317)
!1320 = !DILocation(line: 258, column: 13, scope: !1317)
!1321 = !DILocation(line: 261, column: 18, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1289, file: !914, line: 261, column: 17)
!1323 = !DILocation(line: 261, column: 17, scope: !1289)
!1324 = !DILocation(line: 262, column: 75, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !914, line: 261, column: 29)
!1326 = !DILocation(line: 263, column: 75, scope: !1325)
!1327 = !DILocation(line: 264, column: 13, scope: !1325)
!1328 = !DILocation(line: 265, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !914, line: 264, column: 20)
!1330 = !DILocation(line: 272, column: 1, scope: !1275)
!1331 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !914, file: !914, line: 359, type: !1276, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1331, file: !914, line: 359, type: !64)
!1334 = !DILocalVariable(name: "no", scope: !1331, file: !914, line: 362, type: !1094)
!1335 = !DILocalVariable(name: "remainder", scope: !1331, file: !914, line: 363, type: !1094)
!1336 = !DILocation(line: 0, scope: !1331)
!1337 = !DILocation(line: 364, column: 19, scope: !1331)
!1338 = !DILocation(line: 365, column: 17, scope: !1331)
!1339 = !DILocation(line: 367, column: 5, scope: !1331)
!1340 = !DILocation(line: 369, column: 27, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !914, line: 369, column: 17)
!1342 = distinct !DILexicalBlock(scope: !1331, file: !914, line: 367, column: 17)
!1343 = !DILocation(line: 369, column: 17, scope: !1342)
!1344 = !DILocation(line: 369, column: 17, scope: !1341)
!1345 = !DILocation(line: 370, column: 17, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !914, line: 369, column: 34)
!1347 = !DILocation(line: 371, column: 13, scope: !1346)
!1348 = !DILocation(line: 371, column: 24, scope: !1341)
!1349 = !DILocation(line: 372, column: 73, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !914, line: 371, column: 41)
!1351 = distinct !DILexicalBlock(scope: !1341, file: !914, line: 371, column: 24)
!1352 = !DILocation(line: 373, column: 73, scope: !1350)
!1353 = !DILocation(line: 374, column: 13, scope: !1350)
!1354 = !DILocation(line: 375, column: 73, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !914, line: 374, column: 41)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !914, line: 374, column: 24)
!1357 = !DILocation(line: 376, column: 73, scope: !1355)
!1358 = !DILocation(line: 377, column: 13, scope: !1355)
!1359 = !DILocation(line: 378, column: 75, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !914, line: 377, column: 41)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !914, line: 377, column: 24)
!1362 = !DILocation(line: 379, column: 75, scope: !1360)
!1363 = !DILocation(line: 380, column: 13, scope: !1360)
!1364 = !DILocation(line: 381, column: 75, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !914, line: 380, column: 41)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !914, line: 380, column: 24)
!1367 = !DILocation(line: 382, column: 75, scope: !1365)
!1368 = !DILocation(line: 383, column: 13, scope: !1365)
!1369 = !DILocation(line: 384, column: 75, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !914, line: 383, column: 41)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !914, line: 383, column: 24)
!1372 = !DILocation(line: 385, column: 75, scope: !1370)
!1373 = !DILocation(line: 386, column: 13, scope: !1370)
!1374 = !DILocation(line: 389, column: 18, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1342, file: !914, line: 389, column: 17)
!1376 = !DILocation(line: 389, column: 17, scope: !1342)
!1377 = !DILocation(line: 390, column: 75, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !914, line: 389, column: 29)
!1379 = !DILocation(line: 391, column: 75, scope: !1378)
!1380 = !DILocation(line: 392, column: 13, scope: !1378)
!1381 = !DILocation(line: 393, column: 17, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !914, line: 392, column: 20)
!1383 = !DILocation(line: 401, column: 1, scope: !1331)
!1384 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !914, file: !914, line: 274, type: !1276, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1384, file: !914, line: 274, type: !64)
!1387 = !DILocalVariable(name: "no", scope: !1384, file: !914, line: 276, type: !1094)
!1388 = !DILocalVariable(name: "remainder", scope: !1384, file: !914, line: 277, type: !1094)
!1389 = !DILocation(line: 0, scope: !1384)
!1390 = !DILocation(line: 278, column: 19, scope: !1384)
!1391 = !DILocation(line: 279, column: 17, scope: !1384)
!1392 = !DILocation(line: 281, column: 5, scope: !1384)
!1393 = !DILocation(line: 283, column: 27, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !914, line: 283, column: 17)
!1395 = distinct !DILexicalBlock(scope: !1384, file: !914, line: 281, column: 17)
!1396 = !DILocation(line: 283, column: 17, scope: !1395)
!1397 = !DILocation(line: 283, column: 17, scope: !1394)
!1398 = !DILocation(line: 284, column: 17, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !914, line: 283, column: 34)
!1400 = !DILocation(line: 285, column: 13, scope: !1399)
!1401 = !DILocation(line: 285, column: 24, scope: !1394)
!1402 = !DILocation(line: 286, column: 73, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !914, line: 285, column: 41)
!1404 = distinct !DILexicalBlock(scope: !1394, file: !914, line: 285, column: 24)
!1405 = !DILocation(line: 287, column: 73, scope: !1403)
!1406 = !DILocation(line: 288, column: 13, scope: !1403)
!1407 = !DILocation(line: 289, column: 73, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !914, line: 288, column: 41)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !914, line: 288, column: 24)
!1410 = !DILocation(line: 290, column: 73, scope: !1408)
!1411 = !DILocation(line: 291, column: 13, scope: !1408)
!1412 = !DILocation(line: 292, column: 75, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !914, line: 291, column: 41)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !914, line: 291, column: 24)
!1415 = !DILocation(line: 293, column: 75, scope: !1413)
!1416 = !DILocation(line: 294, column: 13, scope: !1413)
!1417 = !DILocation(line: 295, column: 75, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !914, line: 294, column: 41)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !914, line: 294, column: 24)
!1420 = !DILocation(line: 296, column: 75, scope: !1418)
!1421 = !DILocation(line: 297, column: 13, scope: !1418)
!1422 = !DILocation(line: 298, column: 75, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !914, line: 297, column: 41)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !914, line: 297, column: 24)
!1425 = !DILocation(line: 299, column: 75, scope: !1423)
!1426 = !DILocation(line: 300, column: 13, scope: !1423)
!1427 = !DILocation(line: 303, column: 18, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1395, file: !914, line: 303, column: 17)
!1429 = !DILocation(line: 303, column: 17, scope: !1395)
!1430 = !DILocation(line: 304, column: 75, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !914, line: 303, column: 29)
!1432 = !DILocation(line: 305, column: 75, scope: !1431)
!1433 = !DILocation(line: 306, column: 13, scope: !1431)
!1434 = !DILocation(line: 307, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1428, file: !914, line: 306, column: 20)
!1436 = !DILocation(line: 314, column: 1, scope: !1384)
!1437 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !914, file: !914, line: 316, type: !1276, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1437, file: !914, line: 316, type: !64)
!1440 = !DILocalVariable(name: "no", scope: !1437, file: !914, line: 318, type: !1094)
!1441 = !DILocalVariable(name: "remainder", scope: !1437, file: !914, line: 319, type: !1094)
!1442 = !DILocation(line: 0, scope: !1437)
!1443 = !DILocation(line: 320, column: 19, scope: !1437)
!1444 = !DILocation(line: 321, column: 17, scope: !1437)
!1445 = !DILocation(line: 322, column: 5, scope: !1437)
!1446 = !DILocation(line: 323, column: 5, scope: !1437)
!1447 = !DILocation(line: 325, column: 27, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !914, line: 325, column: 17)
!1449 = distinct !DILexicalBlock(scope: !1437, file: !914, line: 323, column: 17)
!1450 = !DILocation(line: 325, column: 17, scope: !1449)
!1451 = !DILocation(line: 325, column: 17, scope: !1448)
!1452 = !DILocation(line: 326, column: 17, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !914, line: 325, column: 34)
!1454 = !DILocation(line: 327, column: 13, scope: !1453)
!1455 = !DILocation(line: 327, column: 24, scope: !1448)
!1456 = !DILocation(line: 328, column: 73, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !914, line: 327, column: 41)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !914, line: 327, column: 24)
!1459 = !DILocation(line: 329, column: 73, scope: !1457)
!1460 = !DILocation(line: 330, column: 13, scope: !1457)
!1461 = !DILocation(line: 331, column: 73, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !914, line: 330, column: 41)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !914, line: 330, column: 24)
!1464 = !DILocation(line: 332, column: 73, scope: !1462)
!1465 = !DILocation(line: 333, column: 13, scope: !1462)
!1466 = !DILocation(line: 334, column: 75, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !914, line: 333, column: 41)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !914, line: 333, column: 24)
!1469 = !DILocation(line: 335, column: 75, scope: !1467)
!1470 = !DILocation(line: 336, column: 13, scope: !1467)
!1471 = !DILocation(line: 337, column: 75, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !914, line: 336, column: 41)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !914, line: 336, column: 24)
!1474 = !DILocation(line: 338, column: 75, scope: !1472)
!1475 = !DILocation(line: 339, column: 13, scope: !1472)
!1476 = !DILocation(line: 340, column: 75, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !914, line: 339, column: 41)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !914, line: 339, column: 24)
!1479 = !DILocation(line: 341, column: 75, scope: !1477)
!1480 = !DILocation(line: 342, column: 13, scope: !1477)
!1481 = !DILocation(line: 345, column: 18, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1449, file: !914, line: 345, column: 17)
!1483 = !DILocation(line: 345, column: 17, scope: !1449)
!1484 = !DILocation(line: 346, column: 75, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !914, line: 345, column: 29)
!1486 = !DILocation(line: 347, column: 75, scope: !1485)
!1487 = !DILocation(line: 348, column: 13, scope: !1485)
!1488 = !DILocation(line: 349, column: 17, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !914, line: 348, column: 20)
!1490 = !DILocation(line: 357, column: 1, scope: !1437)
!1491 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !914, file: !914, line: 404, type: !1088, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1492)
!1492 = !{!1493, !1494, !1495, !1496}
!1493 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1491, file: !914, line: 404, type: !64)
!1494 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1491, file: !914, line: 404, type: !69)
!1495 = !DILocalVariable(name: "no", scope: !1491, file: !914, line: 406, type: !1094)
!1496 = !DILocalVariable(name: "remainder", scope: !1491, file: !914, line: 407, type: !1094)
!1497 = !DILocation(line: 0, scope: !1491)
!1498 = !DILocation(line: 408, column: 19, scope: !1491)
!1499 = !DILocation(line: 409, column: 17, scope: !1491)
!1500 = !DILocation(line: 411, column: 5, scope: !1491)
!1501 = !DILocation(line: 413, column: 84, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1491, file: !914, line: 411, column: 17)
!1503 = !DILocation(line: 413, column: 70, scope: !1502)
!1504 = !DILocation(line: 413, column: 64, scope: !1502)
!1505 = !DILocation(line: 413, column: 61, scope: !1502)
!1506 = !DILocation(line: 414, column: 79, scope: !1502)
!1507 = !DILocation(line: 414, column: 83, scope: !1502)
!1508 = !DILocation(line: 414, column: 88, scope: !1502)
!1509 = !DILocation(line: 414, column: 61, scope: !1502)
!1510 = !DILocation(line: 415, column: 13, scope: !1502)
!1511 = !DILocation(line: 417, column: 27, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1502, file: !914, line: 417, column: 17)
!1513 = !DILocation(line: 417, column: 17, scope: !1502)
!1514 = !DILocation(line: 418, column: 88, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1512, file: !914, line: 417, column: 33)
!1516 = !DILocation(line: 418, column: 74, scope: !1515)
!1517 = !DILocation(line: 418, column: 68, scope: !1515)
!1518 = !DILocation(line: 418, column: 65, scope: !1515)
!1519 = !DILocation(line: 419, column: 83, scope: !1515)
!1520 = !DILocation(line: 419, column: 87, scope: !1515)
!1521 = !DILocation(line: 419, column: 92, scope: !1515)
!1522 = !DILocation(line: 419, column: 65, scope: !1515)
!1523 = !DILocation(line: 420, column: 13, scope: !1515)
!1524 = !DILocation(line: 420, column: 24, scope: !1512)
!1525 = !DILocation(line: 421, column: 73, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !914, line: 420, column: 41)
!1527 = distinct !DILexicalBlock(scope: !1512, file: !914, line: 420, column: 24)
!1528 = !DILocation(line: 422, column: 91, scope: !1526)
!1529 = !DILocation(line: 422, column: 100, scope: !1526)
!1530 = !DILocation(line: 422, column: 73, scope: !1526)
!1531 = !DILocation(line: 423, column: 73, scope: !1526)
!1532 = !DILocation(line: 424, column: 13, scope: !1526)
!1533 = !DILocation(line: 425, column: 73, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !914, line: 424, column: 41)
!1535 = distinct !DILexicalBlock(scope: !1527, file: !914, line: 424, column: 24)
!1536 = !DILocation(line: 426, column: 91, scope: !1534)
!1537 = !DILocation(line: 426, column: 100, scope: !1534)
!1538 = !DILocation(line: 426, column: 73, scope: !1534)
!1539 = !DILocation(line: 427, column: 73, scope: !1534)
!1540 = !DILocation(line: 428, column: 13, scope: !1534)
!1541 = !DILocation(line: 429, column: 75, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !914, line: 428, column: 41)
!1543 = distinct !DILexicalBlock(scope: !1535, file: !914, line: 428, column: 24)
!1544 = !DILocation(line: 430, column: 93, scope: !1542)
!1545 = !DILocation(line: 430, column: 102, scope: !1542)
!1546 = !DILocation(line: 430, column: 75, scope: !1542)
!1547 = !DILocation(line: 431, column: 75, scope: !1542)
!1548 = !DILocation(line: 432, column: 13, scope: !1542)
!1549 = !DILocation(line: 433, column: 75, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !914, line: 432, column: 41)
!1551 = distinct !DILexicalBlock(scope: !1543, file: !914, line: 432, column: 24)
!1552 = !DILocation(line: 434, column: 93, scope: !1550)
!1553 = !DILocation(line: 434, column: 102, scope: !1550)
!1554 = !DILocation(line: 434, column: 75, scope: !1550)
!1555 = !DILocation(line: 435, column: 75, scope: !1550)
!1556 = !DILocation(line: 436, column: 13, scope: !1550)
!1557 = !DILocation(line: 437, column: 75, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !914, line: 436, column: 41)
!1559 = distinct !DILexicalBlock(scope: !1551, file: !914, line: 436, column: 24)
!1560 = !DILocation(line: 438, column: 93, scope: !1558)
!1561 = !DILocation(line: 438, column: 102, scope: !1558)
!1562 = !DILocation(line: 438, column: 75, scope: !1558)
!1563 = !DILocation(line: 439, column: 75, scope: !1558)
!1564 = !DILocation(line: 440, column: 13, scope: !1558)
!1565 = !DILocation(line: 443, column: 18, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1502, file: !914, line: 443, column: 17)
!1567 = !DILocation(line: 443, column: 17, scope: !1502)
!1568 = !DILocation(line: 444, column: 75, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !914, line: 443, column: 29)
!1570 = !DILocation(line: 445, column: 93, scope: !1569)
!1571 = !DILocation(line: 445, column: 102, scope: !1569)
!1572 = !DILocation(line: 445, column: 75, scope: !1569)
!1573 = !DILocation(line: 446, column: 75, scope: !1569)
!1574 = !DILocation(line: 447, column: 13, scope: !1569)
!1575 = !DILocation(line: 448, column: 88, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1566, file: !914, line: 447, column: 20)
!1577 = !DILocation(line: 448, column: 74, scope: !1576)
!1578 = !DILocation(line: 448, column: 68, scope: !1576)
!1579 = !DILocation(line: 448, column: 65, scope: !1576)
!1580 = !DILocation(line: 449, column: 83, scope: !1576)
!1581 = !DILocation(line: 449, column: 87, scope: !1576)
!1582 = !DILocation(line: 449, column: 92, scope: !1576)
!1583 = !DILocation(line: 449, column: 65, scope: !1576)
!1584 = !DILocation(line: 453, column: 84, scope: !1502)
!1585 = !DILocation(line: 453, column: 70, scope: !1502)
!1586 = !DILocation(line: 453, column: 64, scope: !1502)
!1587 = !DILocation(line: 453, column: 61, scope: !1502)
!1588 = !DILocation(line: 454, column: 79, scope: !1502)
!1589 = !DILocation(line: 454, column: 83, scope: !1502)
!1590 = !DILocation(line: 454, column: 88, scope: !1502)
!1591 = !DILocation(line: 454, column: 61, scope: !1502)
!1592 = !DILocation(line: 455, column: 13, scope: !1502)
!1593 = !DILocation(line: 460, column: 1, scope: !1491)
!1594 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !914, file: !914, line: 463, type: !1595, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1598)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!170, !64, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!1598 = !{!1599, !1600, !1601, !1602, !1603}
!1599 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1594, file: !914, line: 463, type: !64)
!1600 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1594, file: !914, line: 463, type: !1597)
!1601 = !DILocalVariable(name: "no", scope: !1594, file: !914, line: 465, type: !1094)
!1602 = !DILocalVariable(name: "remainder", scope: !1594, file: !914, line: 466, type: !1094)
!1603 = !DILocalVariable(name: "temp", scope: !1594, file: !914, line: 467, type: !64)
!1604 = !DILocation(line: 0, scope: !1594)
!1605 = !DILocation(line: 468, column: 19, scope: !1594)
!1606 = !DILocation(line: 469, column: 17, scope: !1594)
!1607 = !DILocation(line: 471, column: 5, scope: !1594)
!1608 = !DILocation(line: 473, column: 20, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1594, file: !914, line: 471, column: 17)
!1610 = !DILocation(line: 474, column: 40, scope: !1609)
!1611 = !DILocation(line: 474, column: 26, scope: !1609)
!1612 = !DILocation(line: 474, column: 18, scope: !1609)
!1613 = !DILocation(line: 475, column: 40, scope: !1609)
!1614 = !DILocation(line: 475, column: 29, scope: !1609)
!1615 = !DILocation(line: 476, column: 13, scope: !1609)
!1616 = !DILocation(line: 478, column: 27, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1609, file: !914, line: 478, column: 17)
!1618 = !DILocation(line: 478, column: 17, scope: !1609)
!1619 = !DILocation(line: 479, column: 24, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !914, line: 478, column: 33)
!1621 = !DILocation(line: 480, column: 44, scope: !1620)
!1622 = !DILocation(line: 480, column: 30, scope: !1620)
!1623 = !DILocation(line: 480, column: 22, scope: !1620)
!1624 = !DILocation(line: 481, column: 44, scope: !1620)
!1625 = !DILocation(line: 481, column: 33, scope: !1620)
!1626 = !DILocation(line: 482, column: 13, scope: !1620)
!1627 = !DILocation(line: 482, column: 24, scope: !1617)
!1628 = !DILocation(line: 483, column: 24, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !914, line: 482, column: 41)
!1630 = distinct !DILexicalBlock(scope: !1617, file: !914, line: 482, column: 24)
!1631 = !DILocation(line: 485, column: 53, scope: !1629)
!1632 = !DILocation(line: 485, column: 33, scope: !1629)
!1633 = !DILocation(line: 486, column: 13, scope: !1629)
!1634 = !DILocation(line: 487, column: 24, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !914, line: 486, column: 41)
!1636 = distinct !DILexicalBlock(scope: !1630, file: !914, line: 486, column: 24)
!1637 = !DILocation(line: 489, column: 53, scope: !1635)
!1638 = !DILocation(line: 489, column: 33, scope: !1635)
!1639 = !DILocation(line: 490, column: 13, scope: !1635)
!1640 = !DILocation(line: 491, column: 24, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !914, line: 490, column: 41)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !914, line: 490, column: 24)
!1643 = !DILocation(line: 493, column: 53, scope: !1641)
!1644 = !DILocation(line: 493, column: 33, scope: !1641)
!1645 = !DILocation(line: 494, column: 13, scope: !1641)
!1646 = !DILocation(line: 495, column: 24, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !914, line: 494, column: 41)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !914, line: 494, column: 24)
!1649 = !DILocation(line: 497, column: 53, scope: !1647)
!1650 = !DILocation(line: 497, column: 33, scope: !1647)
!1651 = !DILocation(line: 498, column: 13, scope: !1647)
!1652 = !DILocation(line: 499, column: 24, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !914, line: 498, column: 41)
!1654 = distinct !DILexicalBlock(scope: !1648, file: !914, line: 498, column: 24)
!1655 = !DILocation(line: 501, column: 53, scope: !1653)
!1656 = !DILocation(line: 501, column: 33, scope: !1653)
!1657 = !DILocation(line: 502, column: 13, scope: !1653)
!1658 = !DILocation(line: 505, column: 18, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1609, file: !914, line: 505, column: 17)
!1660 = !DILocation(line: 505, column: 17, scope: !1609)
!1661 = !DILocation(line: 506, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1659, file: !914, line: 505, column: 29)
!1663 = !DILocation(line: 508, column: 53, scope: !1662)
!1664 = !DILocation(line: 508, column: 33, scope: !1662)
!1665 = !DILocation(line: 509, column: 13, scope: !1662)
!1666 = !DILocation(line: 510, column: 24, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1659, file: !914, line: 509, column: 20)
!1668 = !DILocation(line: 511, column: 44, scope: !1667)
!1669 = !DILocation(line: 511, column: 30, scope: !1667)
!1670 = !DILocation(line: 511, column: 22, scope: !1667)
!1671 = !DILocation(line: 512, column: 44, scope: !1667)
!1672 = !DILocation(line: 512, column: 33, scope: !1667)
!1673 = !DILocation(line: 516, column: 20, scope: !1609)
!1674 = !DILocation(line: 517, column: 40, scope: !1609)
!1675 = !DILocation(line: 517, column: 26, scope: !1609)
!1676 = !DILocation(line: 517, column: 18, scope: !1609)
!1677 = !DILocation(line: 518, column: 40, scope: !1609)
!1678 = !DILocation(line: 518, column: 29, scope: !1609)
!1679 = !DILocation(line: 519, column: 13, scope: !1609)
!1680 = !DILocation(line: 0, scope: !1609)
!1681 = !DILocation(line: 524, column: 1, scope: !1594)
!1682 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !914, file: !914, line: 526, type: !1683, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1686)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !64, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !125, line: 1212, baseType: !124)
!1686 = !{!1687, !1688, !1689, !1690}
!1687 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1682, file: !914, line: 526, type: !64)
!1688 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1682, file: !914, line: 526, type: !1685)
!1689 = !DILocalVariable(name: "no", scope: !1682, file: !914, line: 529, type: !1094)
!1690 = !DILocalVariable(name: "remainder", scope: !1682, file: !914, line: 530, type: !1094)
!1691 = !DILocation(line: 0, scope: !1682)
!1692 = !DILocation(line: 531, column: 19, scope: !1682)
!1693 = !DILocation(line: 532, column: 17, scope: !1682)
!1694 = !DILocation(line: 534, column: 9, scope: !1682)
!1695 = !DILocation(line: 536, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !914, line: 534, column: 45)
!1697 = distinct !DILexicalBlock(scope: !1682, file: !914, line: 534, column: 9)
!1698 = !DILocation(line: 538, column: 56, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1696, file: !914, line: 536, column: 21)
!1700 = !DILocation(line: 538, column: 53, scope: !1699)
!1701 = !DILocation(line: 538, column: 47, scope: !1699)
!1702 = !DILocation(line: 539, column: 17, scope: !1699)
!1703 = !DILocation(line: 541, column: 56, scope: !1699)
!1704 = !DILocation(line: 541, column: 53, scope: !1699)
!1705 = !DILocation(line: 541, column: 47, scope: !1699)
!1706 = !DILocation(line: 542, column: 17, scope: !1699)
!1707 = !DILocation(line: 548, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !914, line: 547, column: 51)
!1709 = distinct !DILexicalBlock(scope: !1697, file: !914, line: 547, column: 16)
!1710 = !DILocation(line: 550, column: 57, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !914, line: 548, column: 21)
!1712 = !DILocation(line: 550, column: 54, scope: !1711)
!1713 = !DILocation(line: 550, column: 50, scope: !1711)
!1714 = !DILocation(line: 550, column: 47, scope: !1711)
!1715 = !DILocation(line: 551, column: 17, scope: !1711)
!1716 = !DILocation(line: 553, column: 57, scope: !1711)
!1717 = !DILocation(line: 553, column: 54, scope: !1711)
!1718 = !DILocation(line: 553, column: 50, scope: !1711)
!1719 = !DILocation(line: 553, column: 47, scope: !1711)
!1720 = !DILocation(line: 554, column: 17, scope: !1711)
!1721 = !DILocation(line: 560, column: 1, scope: !1682)
!1722 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !918, file: !918, line: 85, type: !1723, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !1727)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!1725, !1726, !69}
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !52, line: 79, baseType: null)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !921, line: 225, baseType: !920)
!1727 = !{!1728, !1729, !1730}
!1728 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1722, file: !918, line: 85, type: !1726)
!1729 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1722, file: !918, line: 85, type: !69)
!1730 = !DILocalVariable(name: "temp", scope: !1722, file: !918, line: 87, type: !73)
!1731 = !DILocation(line: 0, scope: !1722)
!1732 = !DILocation(line: 88, column: 5, scope: !1722)
!1733 = !DILocation(line: 91, column: 20, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1722, file: !918, line: 88, column: 24)
!1735 = !DILocation(line: 92, column: 18, scope: !1734)
!1736 = !DILocation(line: 93, column: 66, scope: !1734)
!1737 = !DILocation(line: 93, column: 63, scope: !1734)
!1738 = !DILocation(line: 93, column: 56, scope: !1734)
!1739 = !DILocation(line: 94, column: 13, scope: !1734)
!1740 = !DILocation(line: 97, column: 20, scope: !1734)
!1741 = !DILocation(line: 98, column: 18, scope: !1734)
!1742 = !DILocation(line: 99, column: 67, scope: !1734)
!1743 = !DILocation(line: 99, column: 74, scope: !1734)
!1744 = !DILocation(line: 99, column: 64, scope: !1734)
!1745 = !DILocation(line: 99, column: 56, scope: !1734)
!1746 = !DILocation(line: 100, column: 13, scope: !1734)
!1747 = !DILocation(line: 103, column: 20, scope: !1734)
!1748 = !DILocation(line: 104, column: 18, scope: !1734)
!1749 = !DILocation(line: 105, column: 67, scope: !1734)
!1750 = !DILocation(line: 105, column: 74, scope: !1734)
!1751 = !DILocation(line: 105, column: 64, scope: !1734)
!1752 = !DILocation(line: 105, column: 56, scope: !1734)
!1753 = !DILocation(line: 106, column: 13, scope: !1734)
!1754 = !DILocation(line: 109, column: 20, scope: !1734)
!1755 = !DILocation(line: 110, column: 18, scope: !1734)
!1756 = !DILocation(line: 111, column: 67, scope: !1734)
!1757 = !DILocation(line: 111, column: 74, scope: !1734)
!1758 = !DILocation(line: 111, column: 64, scope: !1734)
!1759 = !DILocation(line: 111, column: 56, scope: !1734)
!1760 = !DILocation(line: 112, column: 13, scope: !1734)
!1761 = !DILocation(line: 115, column: 20, scope: !1734)
!1762 = !DILocation(line: 116, column: 18, scope: !1734)
!1763 = !DILocation(line: 117, column: 67, scope: !1734)
!1764 = !DILocation(line: 117, column: 74, scope: !1734)
!1765 = !DILocation(line: 117, column: 64, scope: !1734)
!1766 = !DILocation(line: 117, column: 56, scope: !1734)
!1767 = !DILocation(line: 118, column: 13, scope: !1734)
!1768 = !DILocation(line: 121, column: 20, scope: !1734)
!1769 = !DILocation(line: 122, column: 18, scope: !1734)
!1770 = !DILocation(line: 123, column: 67, scope: !1734)
!1771 = !DILocation(line: 123, column: 74, scope: !1734)
!1772 = !DILocation(line: 123, column: 64, scope: !1734)
!1773 = !DILocation(line: 123, column: 56, scope: !1734)
!1774 = !DILocation(line: 124, column: 13, scope: !1734)
!1775 = !DILocation(line: 127, column: 20, scope: !1734)
!1776 = !DILocation(line: 128, column: 18, scope: !1734)
!1777 = !DILocation(line: 129, column: 67, scope: !1734)
!1778 = !DILocation(line: 129, column: 74, scope: !1734)
!1779 = !DILocation(line: 129, column: 64, scope: !1734)
!1780 = !DILocation(line: 129, column: 56, scope: !1734)
!1781 = !DILocation(line: 130, column: 13, scope: !1734)
!1782 = !DILocation(line: 133, column: 20, scope: !1734)
!1783 = !DILocation(line: 134, column: 18, scope: !1734)
!1784 = !DILocation(line: 135, column: 67, scope: !1734)
!1785 = !DILocation(line: 135, column: 74, scope: !1734)
!1786 = !DILocation(line: 135, column: 64, scope: !1734)
!1787 = !DILocation(line: 135, column: 56, scope: !1734)
!1788 = !DILocation(line: 136, column: 13, scope: !1734)
!1789 = !DILocation(line: 139, column: 20, scope: !1734)
!1790 = !DILocation(line: 140, column: 18, scope: !1734)
!1791 = !DILocation(line: 141, column: 67, scope: !1734)
!1792 = !DILocation(line: 141, column: 64, scope: !1734)
!1793 = !DILocation(line: 141, column: 56, scope: !1734)
!1794 = !DILocation(line: 142, column: 13, scope: !1734)
!1795 = !DILocation(line: 145, column: 20, scope: !1734)
!1796 = !DILocation(line: 146, column: 18, scope: !1734)
!1797 = !DILocation(line: 147, column: 67, scope: !1734)
!1798 = !DILocation(line: 147, column: 74, scope: !1734)
!1799 = !DILocation(line: 147, column: 64, scope: !1734)
!1800 = !DILocation(line: 147, column: 56, scope: !1734)
!1801 = !DILocation(line: 148, column: 13, scope: !1734)
!1802 = !DILocation(line: 151, column: 20, scope: !1734)
!1803 = !DILocation(line: 152, column: 18, scope: !1734)
!1804 = !DILocation(line: 153, column: 67, scope: !1734)
!1805 = !DILocation(line: 153, column: 74, scope: !1734)
!1806 = !DILocation(line: 153, column: 64, scope: !1734)
!1807 = !DILocation(line: 153, column: 56, scope: !1734)
!1808 = !DILocation(line: 154, column: 13, scope: !1734)
!1809 = !DILocation(line: 157, column: 20, scope: !1734)
!1810 = !DILocation(line: 158, column: 18, scope: !1734)
!1811 = !DILocation(line: 159, column: 67, scope: !1734)
!1812 = !DILocation(line: 159, column: 74, scope: !1734)
!1813 = !DILocation(line: 159, column: 64, scope: !1734)
!1814 = !DILocation(line: 159, column: 56, scope: !1734)
!1815 = !DILocation(line: 160, column: 29, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1734, file: !918, line: 160, column: 17)
!1817 = !DILocation(line: 161, column: 17, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1816, file: !918, line: 160, column: 60)
!1819 = !DILocation(line: 162, column: 13, scope: !1818)
!1820 = !DILocation(line: 166, column: 20, scope: !1734)
!1821 = !DILocation(line: 167, column: 18, scope: !1734)
!1822 = !DILocation(line: 168, column: 67, scope: !1734)
!1823 = !DILocation(line: 168, column: 74, scope: !1734)
!1824 = !DILocation(line: 168, column: 64, scope: !1734)
!1825 = !DILocation(line: 168, column: 56, scope: !1734)
!1826 = !DILocation(line: 169, column: 29, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1734, file: !918, line: 169, column: 17)
!1828 = !DILocation(line: 170, column: 17, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !918, line: 169, column: 45)
!1830 = !DILocation(line: 171, column: 13, scope: !1829)
!1831 = !DILocation(line: 175, column: 20, scope: !1734)
!1832 = !DILocation(line: 176, column: 18, scope: !1734)
!1833 = !DILocation(line: 177, column: 67, scope: !1734)
!1834 = !DILocation(line: 177, column: 74, scope: !1734)
!1835 = !DILocation(line: 177, column: 64, scope: !1734)
!1836 = !DILocation(line: 177, column: 56, scope: !1734)
!1837 = !DILocation(line: 178, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1734, file: !918, line: 178, column: 17)
!1839 = !DILocation(line: 178, column: 17, scope: !1734)
!1840 = !DILocation(line: 179, column: 17, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !918, line: 178, column: 30)
!1842 = !DILocation(line: 180, column: 13, scope: !1841)
!1843 = !DILocation(line: 184, column: 20, scope: !1734)
!1844 = !DILocation(line: 185, column: 18, scope: !1734)
!1845 = !DILocation(line: 186, column: 67, scope: !1734)
!1846 = !DILocation(line: 186, column: 74, scope: !1734)
!1847 = !DILocation(line: 186, column: 64, scope: !1734)
!1848 = !DILocation(line: 186, column: 56, scope: !1734)
!1849 = !DILocation(line: 187, column: 29, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1734, file: !918, line: 187, column: 17)
!1851 = !DILocation(line: 188, column: 17, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1850, file: !918, line: 187, column: 45)
!1853 = !DILocation(line: 189, column: 13, scope: !1852)
!1854 = !DILocation(line: 193, column: 20, scope: !1734)
!1855 = !DILocation(line: 194, column: 18, scope: !1734)
!1856 = !DILocation(line: 195, column: 67, scope: !1734)
!1857 = !DILocation(line: 195, column: 74, scope: !1734)
!1858 = !DILocation(line: 195, column: 64, scope: !1734)
!1859 = !DILocation(line: 195, column: 56, scope: !1734)
!1860 = !DILocation(line: 196, column: 29, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1734, file: !918, line: 196, column: 17)
!1862 = !DILocation(line: 197, column: 17, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1861, file: !918, line: 196, column: 45)
!1864 = !DILocation(line: 198, column: 13, scope: !1863)
!1865 = !DILocation(line: 202, column: 20, scope: !1734)
!1866 = !DILocation(line: 203, column: 18, scope: !1734)
!1867 = !DILocation(line: 204, column: 67, scope: !1734)
!1868 = !DILocation(line: 204, column: 64, scope: !1734)
!1869 = !DILocation(line: 204, column: 56, scope: !1734)
!1870 = !DILocation(line: 205, column: 29, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1734, file: !918, line: 205, column: 17)
!1872 = !DILocation(line: 206, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !918, line: 205, column: 45)
!1874 = !DILocation(line: 207, column: 13, scope: !1873)
!1875 = !DILocation(line: 211, column: 20, scope: !1734)
!1876 = !DILocation(line: 212, column: 18, scope: !1734)
!1877 = !DILocation(line: 213, column: 67, scope: !1734)
!1878 = !DILocation(line: 213, column: 74, scope: !1734)
!1879 = !DILocation(line: 213, column: 64, scope: !1734)
!1880 = !DILocation(line: 213, column: 56, scope: !1734)
!1881 = !DILocation(line: 214, column: 13, scope: !1734)
!1882 = !DILocation(line: 217, column: 20, scope: !1734)
!1883 = !DILocation(line: 218, column: 18, scope: !1734)
!1884 = !DILocation(line: 219, column: 67, scope: !1734)
!1885 = !DILocation(line: 219, column: 74, scope: !1734)
!1886 = !DILocation(line: 219, column: 64, scope: !1734)
!1887 = !DILocation(line: 219, column: 56, scope: !1734)
!1888 = !DILocation(line: 220, column: 13, scope: !1734)
!1889 = !DILocation(line: 223, column: 20, scope: !1734)
!1890 = !DILocation(line: 224, column: 18, scope: !1734)
!1891 = !DILocation(line: 225, column: 67, scope: !1734)
!1892 = !DILocation(line: 225, column: 74, scope: !1734)
!1893 = !DILocation(line: 225, column: 64, scope: !1734)
!1894 = !DILocation(line: 225, column: 56, scope: !1734)
!1895 = !DILocation(line: 226, column: 13, scope: !1734)
!1896 = !DILocation(line: 229, column: 20, scope: !1734)
!1897 = !DILocation(line: 230, column: 18, scope: !1734)
!1898 = !DILocation(line: 231, column: 67, scope: !1734)
!1899 = !DILocation(line: 231, column: 74, scope: !1734)
!1900 = !DILocation(line: 231, column: 64, scope: !1734)
!1901 = !DILocation(line: 231, column: 56, scope: !1734)
!1902 = !DILocation(line: 232, column: 13, scope: !1734)
!1903 = !DILocation(line: 235, column: 20, scope: !1734)
!1904 = !DILocation(line: 236, column: 18, scope: !1734)
!1905 = !DILocation(line: 237, column: 66, scope: !1734)
!1906 = !DILocation(line: 237, column: 73, scope: !1734)
!1907 = !DILocation(line: 237, column: 63, scope: !1734)
!1908 = !DILocation(line: 237, column: 56, scope: !1734)
!1909 = !DILocation(line: 238, column: 13, scope: !1734)
!1910 = !DILocation(line: 241, column: 20, scope: !1734)
!1911 = !DILocation(line: 242, column: 18, scope: !1734)
!1912 = !DILocation(line: 243, column: 67, scope: !1734)
!1913 = !DILocation(line: 243, column: 74, scope: !1734)
!1914 = !DILocation(line: 243, column: 64, scope: !1734)
!1915 = !DILocation(line: 243, column: 56, scope: !1734)
!1916 = !DILocation(line: 244, column: 13, scope: !1734)
!1917 = !DILocation(line: 247, column: 20, scope: !1734)
!1918 = !DILocation(line: 248, column: 18, scope: !1734)
!1919 = !DILocation(line: 249, column: 67, scope: !1734)
!1920 = !DILocation(line: 249, column: 74, scope: !1734)
!1921 = !DILocation(line: 249, column: 64, scope: !1734)
!1922 = !DILocation(line: 249, column: 56, scope: !1734)
!1923 = !DILocation(line: 250, column: 13, scope: !1734)
!1924 = !DILocation(line: 253, column: 20, scope: !1734)
!1925 = !DILocation(line: 254, column: 18, scope: !1734)
!1926 = !DILocation(line: 255, column: 67, scope: !1734)
!1927 = !DILocation(line: 255, column: 74, scope: !1734)
!1928 = !DILocation(line: 255, column: 64, scope: !1734)
!1929 = !DILocation(line: 255, column: 56, scope: !1734)
!1930 = !DILocation(line: 256, column: 13, scope: !1734)
!1931 = !DILocation(line: 259, column: 20, scope: !1734)
!1932 = !DILocation(line: 260, column: 18, scope: !1734)
!1933 = !DILocation(line: 261, column: 67, scope: !1734)
!1934 = !DILocation(line: 261, column: 74, scope: !1734)
!1935 = !DILocation(line: 261, column: 64, scope: !1734)
!1936 = !DILocation(line: 261, column: 56, scope: !1734)
!1937 = !DILocation(line: 262, column: 13, scope: !1734)
!1938 = !DILocation(line: 265, column: 20, scope: !1734)
!1939 = !DILocation(line: 266, column: 18, scope: !1734)
!1940 = !DILocation(line: 267, column: 67, scope: !1734)
!1941 = !DILocation(line: 267, column: 74, scope: !1734)
!1942 = !DILocation(line: 267, column: 64, scope: !1734)
!1943 = !DILocation(line: 267, column: 56, scope: !1734)
!1944 = !DILocation(line: 268, column: 13, scope: !1734)
!1945 = !DILocation(line: 271, column: 20, scope: !1734)
!1946 = !DILocation(line: 272, column: 18, scope: !1734)
!1947 = !DILocation(line: 273, column: 67, scope: !1734)
!1948 = !DILocation(line: 273, column: 74, scope: !1734)
!1949 = !DILocation(line: 273, column: 64, scope: !1734)
!1950 = !DILocation(line: 273, column: 56, scope: !1734)
!1951 = !DILocation(line: 274, column: 13, scope: !1734)
!1952 = !DILocation(line: 278, column: 1, scope: !1722)
!1953 = distinct !DISubprogram(name: "spim_irqhandler", scope: !3, file: !3, line: 52, type: !419, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1954 = !{!1955, !1956}
!1955 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1953, file: !3, line: 52, type: !337)
!1956 = !DILocalVariable(name: "reg", scope: !1953, file: !3, line: 54, type: !63)
!1957 = !DILocation(line: 0, scope: !1953)
!1958 = !DILocation(line: 54, column: 5, scope: !1953)
!1959 = !DILocation(line: 54, column: 21, scope: !1953)
!1960 = !DILocation(line: 56, column: 5, scope: !1953)
!1961 = !DILocation(line: 57, column: 11, scope: !1953)
!1962 = !DILocation(line: 57, column: 9, scope: !1953)
!1963 = !DILocation(line: 58, column: 11, scope: !1953)
!1964 = !DILocation(line: 58, column: 9, scope: !1953)
!1965 = !DILocation(line: 60, column: 1, scope: !1953)
!1966 = distinct !DISubprogram(name: "spim_isr_Register", scope: !3, file: !3, line: 62, type: !1967, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1969)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !78}
!1969 = !{!1970}
!1970 = !DILocalVariable(name: "spim_isr", arg: 1, scope: !1966, file: !3, line: 62, type: !78)
!1971 = !DILocation(line: 0, scope: !1966)
!1972 = !DILocation(line: 64, column: 17, scope: !1966)
!1973 = !DILocation(line: 65, column: 1, scope: !1966)
!1974 = distinct !DISubprogram(name: "halSpim_init", scope: !3, file: !3, line: 75, type: !1975, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!170, !60, !60}
!1977 = !{!1978, !1979, !1980, !1981}
!1978 = !DILocalVariable(name: "setting", arg: 1, scope: !1974, file: !3, line: 75, type: !60)
!1979 = !DILocalVariable(name: "clock", arg: 2, scope: !1974, file: !3, line: 75, type: !60)
!1980 = !DILocalVariable(name: "reg", scope: !1974, file: !3, line: 78, type: !63)
!1981 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1974, file: !3, line: 79, type: !62)
!1982 = !DILocation(line: 0, scope: !1974)
!1983 = !DILocation(line: 78, column: 5, scope: !1974)
!1984 = !DILocation(line: 78, column: 21, scope: !1974)
!1985 = !DILocation(line: 80, column: 11, scope: !1974)
!1986 = !DILocation(line: 80, column: 9, scope: !1974)
!1987 = !DILocation(line: 81, column: 12, scope: !1974)
!1988 = !DILocation(line: 81, column: 16, scope: !1974)
!1989 = !DILocation(line: 81, column: 39, scope: !1974)
!1990 = !DILocation(line: 81, column: 9, scope: !1974)
!1991 = !DILocation(line: 83, column: 9, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 83, column: 9)
!1993 = !DILocation(line: 83, column: 13, scope: !1992)
!1994 = !DILocation(line: 83, column: 9, scope: !1974)
!1995 = !DILocation(line: 84, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 83, column: 45)
!1997 = !DILocation(line: 85, column: 5, scope: !1996)
!1998 = !DILocation(line: 87, column: 38, scope: !1974)
!1999 = !DILocation(line: 89, column: 5, scope: !1974)
!2000 = !DILocation(line: 90, column: 5, scope: !1974)
!2001 = !DILocation(line: 92, column: 5, scope: !1974)
!2002 = !DILocation(line: 95, column: 5, scope: !1974)
!2003 = !DILocation(line: 96, column: 5, scope: !1974)
!2004 = !DILocation(line: 98, column: 1, scope: !1974)
!2005 = !DILocation(line: 97, column: 5, scope: !1974)
!2006 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2007, file: !2007, line: 176, type: !2008, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2007 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!73, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "Register", arg: 1, scope: !2006, file: !2007, line: 176, type: !2010)
!2014 = !DILocation(line: 0, scope: !2006)
!2015 = !DILocation(line: 178, column: 12, scope: !2006)
!2016 = !DILocation(line: 178, column: 5, scope: !2006)
!2017 = distinct !DISubprogram(name: "spim_busy_wait", scope: !3, file: !3, line: 102, type: !2018, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!170}
!2020 = !{!2021}
!2021 = !DILocalVariable(name: "n", scope: !2017, file: !3, line: 104, type: !7)
!2022 = !DILocation(line: 0, scope: !2017)
!2023 = !DILocation(line: 105, column: 5, scope: !2017)
!2024 = !DILocation(line: 106, column: 14, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 106, column: 13)
!2026 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 105, column: 8)
!2027 = !DILocation(line: 106, column: 39, scope: !2025)
!2028 = !DILocation(line: 106, column: 55, scope: !2025)
!2029 = !DILocation(line: 106, column: 13, scope: !2026)
!2030 = !DILocation(line: 109, column: 14, scope: !2017)
!2031 = !DILocation(line: 109, column: 18, scope: !2017)
!2032 = !DILocation(line: 109, column: 5, scope: !2026)
!2033 = distinct !{!2033, !2023, !2034}
!2034 = !DILocation(line: 109, column: 21, scope: !2017)
!2035 = !DILocation(line: 113, column: 1, scope: !2017)
!2036 = distinct !DISubprogram(name: "spim_more_buf_trans_gpio", scope: !3, file: !3, line: 115, type: !2037, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!170, !2039, !2040, !1597, !2040, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 51, baseType: !53)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!2043 = !{!2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2044 = !DILocalVariable(name: "op_addr", arg: 1, scope: !2036, file: !3, line: 115, type: !2039)
!2045 = !DILocalVariable(name: "n_cmd_byte", arg: 2, scope: !2036, file: !3, line: 115, type: !2040)
!2046 = !DILocalVariable(name: "buf", arg: 3, scope: !2036, file: !3, line: 115, type: !1597)
!2047 = !DILocalVariable(name: "buf_cnt", arg: 4, scope: !2036, file: !3, line: 115, type: !2040)
!2048 = !DILocalVariable(name: "flag", arg: 5, scope: !2036, file: !3, line: 115, type: !2042)
!2049 = !DILocalVariable(name: "reg", scope: !2036, file: !3, line: 117, type: !64)
!2050 = !DILocalVariable(name: "i", scope: !2036, file: !3, line: 118, type: !7)
!2051 = !DILocalVariable(name: "q", scope: !2036, file: !3, line: 118, type: !7)
!2052 = !DILocalVariable(name: "r", scope: !2036, file: !3, line: 118, type: !7)
!2053 = !DILocalVariable(name: "rc", scope: !2036, file: !3, line: 119, type: !7)
!2054 = !DILabel(scope: !2036, name: "RET_MB_TRANS", file: !3, line: 187)
!2055 = !DILocation(line: 0, scope: !2036)
!2056 = !DILocation(line: 122, column: 5, scope: !2036)
!2057 = !DILocation(line: 124, column: 5, scope: !2036)
!2058 = !DILocation(line: 125, column: 5, scope: !2036)
!2059 = !DILocation(line: 128, column: 5, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 128, column: 5)
!2061 = !DILocation(line: 129, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 128, column: 29)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 128, column: 5)
!2064 = !DILocation(line: 128, column: 25, scope: !2063)
!2065 = !DILocation(line: 128, column: 19, scope: !2063)
!2066 = distinct !{!2066, !2059, !2067}
!2067 = !DILocation(line: 130, column: 5, scope: !2060)
!2068 = !DILocation(line: 133, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 133, column: 9)
!2070 = !DILocation(line: 133, column: 9, scope: !2036)
!2071 = !DILocation(line: 134, column: 17, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 134, column: 13)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 133, column: 32)
!2074 = !DILocation(line: 134, column: 13, scope: !2073)
!2075 = !DILocation(line: 138, column: 23, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 138, column: 9)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 138, column: 9)
!2078 = !DILocation(line: 138, column: 9, scope: !2077)
!2079 = !DILocation(line: 140, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 138, column: 39)
!2081 = !DILocation(line: 141, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 141, column: 17)
!2083 = !DILocation(line: 0, scope: !2080)
!2084 = !DILocation(line: 141, column: 17, scope: !2080)
!2085 = !DILocation(line: 142, column: 17, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 141, column: 25)
!2087 = !DILocation(line: 143, column: 13, scope: !2086)
!2088 = !DILocation(line: 145, column: 13, scope: !2080)
!2089 = !DILocation(line: 138, column: 35, scope: !2076)
!2090 = distinct !{!2090, !2078, !2091}
!2091 = !DILocation(line: 146, column: 9, scope: !2077)
!2092 = !DILocation(line: 150, column: 5, scope: !2036)
!2093 = !DILocation(line: 0, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 151, column: 9)
!2095 = !DILocation(line: 160, column: 5, scope: !2036)
!2096 = !DILocation(line: 162, column: 5, scope: !2036)
!2097 = !DILocation(line: 165, column: 9, scope: !2036)
!2098 = !DILocation(line: 172, column: 17, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 172, column: 13)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 171, column: 31)
!2101 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 171, column: 9)
!2102 = !DILocation(line: 172, column: 13, scope: !2100)
!2103 = !DILocation(line: 177, column: 23, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 177, column: 9)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 177, column: 9)
!2106 = !DILocation(line: 177, column: 9, scope: !2105)
!2107 = !DILocation(line: 180, column: 19, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 177, column: 39)
!2109 = !DILocation(line: 181, column: 44, scope: !2108)
!2110 = !DILocation(line: 181, column: 38, scope: !2108)
!2111 = !DILocation(line: 181, column: 26, scope: !2108)
!2112 = !DILocation(line: 181, column: 19, scope: !2108)
!2113 = !DILocation(line: 181, column: 24, scope: !2108)
!2114 = !DILocation(line: 177, column: 35, scope: !2104)
!2115 = distinct !{!2115, !2106, !2116}
!2116 = !DILocation(line: 182, column: 9, scope: !2105)
!2117 = !DILocation(line: 187, column: 1, scope: !2036)
!2118 = !DILocation(line: 189, column: 5, scope: !2036)
!2119 = !DILocation(line: 190, column: 5, scope: !2036)
!2120 = !DILocation(line: 191, column: 1, scope: !2036)
!2121 = distinct !DISubprogram(name: "gpio_direction", scope: !86, file: !86, line: 107, type: !2122, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!154, !1070, !1073}
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2121, file: !86, line: 107, type: !1070)
!2126 = !DILocalVariable(name: "direction", arg: 2, scope: !2121, file: !86, line: 107, type: !1073)
!2127 = !DILocation(line: 0, scope: !2121)
!2128 = !DILocation(line: 109, column: 45, scope: !2121)
!2129 = !DILocation(line: 109, column: 12, scope: !2121)
!2130 = !DILocation(line: 109, column: 5, scope: !2121)
!2131 = distinct !DISubprogram(name: "gpio_write", scope: !86, file: !86, line: 113, type: !2132, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!154, !1070, !163}
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2131, file: !86, line: 113, type: !1070)
!2136 = !DILocalVariable(name: "data", arg: 2, scope: !2131, file: !86, line: 113, type: !163)
!2137 = !DILocation(line: 0, scope: !2131)
!2138 = !DILocation(line: 115, column: 12, scope: !2131)
!2139 = !DILocation(line: 115, column: 5, scope: !2131)
!2140 = distinct !DISubprogram(name: "gpio_get_status", scope: !86, file: !86, line: 169, type: !2141, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2150)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!2143, !1070}
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !120, line: 67, baseType: !2144)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 62, size: 64, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !2144, file: !120, line: 63, baseType: !73, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !2144, file: !120, line: 64, baseType: !163, size: 8, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !2144, file: !120, line: 65, baseType: !163, size: 8, offset: 40)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !2144, file: !120, line: 66, baseType: !163, size: 8, offset: 48)
!2150 = !{!2151, !2152}
!2151 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2140, file: !86, line: 169, type: !1070)
!2152 = !DILocalVariable(name: "p", scope: !2140, file: !86, line: 171, type: !2143)
!2153 = !DILocation(line: 0, scope: !2140)
!2154 = !DILocation(line: 171, column: 17, scope: !2140)
!2155 = !DILocation(line: 172, column: 7, scope: !2140)
!2156 = !DILocation(line: 172, column: 16, scope: !2140)
!2157 = !DILocation(line: 173, column: 20, scope: !2140)
!2158 = !DILocation(line: 173, column: 7, scope: !2140)
!2159 = !DILocation(line: 173, column: 18, scope: !2140)
!2160 = !DILocation(line: 174, column: 17, scope: !2140)
!2161 = !DILocation(line: 174, column: 7, scope: !2140)
!2162 = !DILocation(line: 174, column: 15, scope: !2140)
!2163 = !DILocation(line: 175, column: 18, scope: !2140)
!2164 = !DILocation(line: 175, column: 7, scope: !2140)
!2165 = !DILocation(line: 175, column: 16, scope: !2140)
!2166 = !DILocation(line: 176, column: 5, scope: !2140)
!2167 = distinct !DISubprogram(name: "gpio_PullUp", scope: !86, file: !86, line: 179, type: !2168, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!154, !1070}
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2167, file: !86, line: 179, type: !1070)
!2172 = !DILocalVariable(name: "ret", scope: !2167, file: !86, line: 181, type: !170)
!2173 = !DILocation(line: 0, scope: !2167)
!2174 = !DILocation(line: 182, column: 5, scope: !2167)
!2175 = !DILocation(line: 183, column: 11, scope: !2167)
!2176 = !DILocation(line: 184, column: 5, scope: !2167)
!2177 = distinct !DISubprogram(name: "gpio_PullDown", scope: !86, file: !86, line: 187, type: !2168, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2178)
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2177, file: !86, line: 187, type: !1070)
!2180 = !DILocalVariable(name: "ret", scope: !2177, file: !86, line: 189, type: !170)
!2181 = !DILocation(line: 0, scope: !2177)
!2182 = !DILocation(line: 190, column: 5, scope: !2177)
!2183 = !DILocation(line: 191, column: 11, scope: !2177)
!2184 = !DILocation(line: 192, column: 5, scope: !2177)
!2185 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !86, file: !86, line: 194, type: !2168, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2186)
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2185, file: !86, line: 194, type: !1070)
!2188 = !DILocalVariable(name: "ret", scope: !2185, file: !86, line: 196, type: !170)
!2189 = !DILocation(line: 0, scope: !2185)
!2190 = !DILocation(line: 197, column: 5, scope: !2185)
!2191 = !DILocation(line: 198, column: 11, scope: !2185)
!2192 = !DILocation(line: 199, column: 11, scope: !2185)
!2193 = !DILocation(line: 200, column: 5, scope: !2185)
!2194 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !86, file: !86, line: 202, type: !2132, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2194, file: !86, line: 202, type: !1070)
!2197 = !DILocalVariable(name: "driving", arg: 2, scope: !2194, file: !86, line: 202, type: !163)
!2198 = !DILocalVariable(name: "ret", scope: !2194, file: !86, line: 204, type: !170)
!2199 = !DILocation(line: 0, scope: !2194)
!2200 = !DILocation(line: 205, column: 11, scope: !2194)
!2201 = !DILocation(line: 206, column: 5, scope: !2194)
!2202 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !86, file: !86, line: 209, type: !2203, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!154, !1070, !162}
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2202, file: !86, line: 209, type: !1070)
!2207 = !DILocalVariable(name: "driving", arg: 2, scope: !2202, file: !86, line: 209, type: !162)
!2208 = !DILocalVariable(name: "ret", scope: !2202, file: !86, line: 211, type: !170)
!2209 = !DILocation(line: 0, scope: !2202)
!2210 = !DILocation(line: 212, column: 11, scope: !2202)
!2211 = !DILocation(line: 213, column: 5, scope: !2202)
!2212 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !86, file: !86, line: 216, type: !81, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "i", scope: !2212, file: !86, line: 218, type: !73)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 220, column: 5, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !86, line: 220, column: 5)
!2218 = !DILocation(line: 221, column: 40, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !86, line: 220, column: 78)
!2220 = distinct !DILexicalBlock(scope: !2217, file: !86, line: 220, column: 5)
!2221 = !DILocation(line: 221, column: 29, scope: !2219)
!2222 = !DILocation(line: 221, column: 38, scope: !2219)
!2223 = !DILocation(line: 220, column: 74, scope: !2220)
!2224 = !DILocation(line: 220, column: 15, scope: !2220)
!2225 = distinct !{!2225, !2216, !2226}
!2226 = !DILocation(line: 222, column: 5, scope: !2217)
!2227 = !DILocation(line: 224, column: 1, scope: !2212)
!2228 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !86, file: !86, line: 226, type: !81, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2229)
!2229 = !{!2230}
!2230 = !DILocalVariable(name: "i", scope: !2228, file: !86, line: 228, type: !73)
!2231 = !DILocation(line: 0, scope: !2228)
!2232 = !DILocation(line: 230, column: 5, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !86, line: 230, column: 5)
!2234 = !DILocation(line: 231, column: 71, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !86, line: 230, column: 78)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !86, line: 230, column: 5)
!2237 = !DILocation(line: 231, column: 9, scope: !2235)
!2238 = !DILocation(line: 231, column: 49, scope: !2235)
!2239 = !DILocation(line: 230, column: 74, scope: !2236)
!2240 = !DILocation(line: 230, column: 15, scope: !2236)
!2241 = distinct !{!2241, !2232, !2242}
!2242 = !DILocation(line: 233, column: 5, scope: !2233)
!2243 = !DILocation(line: 234, column: 1, scope: !2228)
!2244 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !999, file: !999, line: 47, type: !2245, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !73}
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "addr", arg: 1, scope: !2244, file: !999, line: 47, type: !73)
!2249 = !DILocation(line: 0, scope: !2244)
!2250 = !DILocation(line: 49, column: 15, scope: !2244)
!2251 = !DILocation(line: 51, column: 5, scope: !2244)
!2252 = !{i64 2624}
!2253 = !DILocation(line: 52, column: 5, scope: !2244)
!2254 = !{i64 2651}
!2255 = !DILocation(line: 53, column: 1, scope: !2244)
!2256 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !999, file: !999, line: 56, type: !2257, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !53}
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "source", arg: 1, scope: !2256, file: !999, line: 56, type: !53)
!2261 = !DILocation(line: 0, scope: !2256)
!2262 = !DILocation(line: 58, column: 16, scope: !2256)
!2263 = !DILocation(line: 59, column: 1, scope: !2256)
!2264 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !999, file: !999, line: 61, type: !2265, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!73}
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "mask", scope: !2264, file: !999, line: 63, type: !73)
!2269 = !DILocation(line: 470, column: 3, scope: !2270, inlinedAt: !2274)
!2270 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2271, file: !2271, line: 466, type: !2265, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2272)
!2271 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!2272 = !{!2273}
!2273 = !DILocalVariable(name: "result", scope: !2270, file: !2271, line: 468, type: !73)
!2274 = distinct !DILocation(line: 64, column: 5, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2264, file: !999, line: 64, column: 5)
!2276 = !{i64 302171}
!2277 = !DILocation(line: 0, scope: !2270, inlinedAt: !2274)
!2278 = !DILocation(line: 0, scope: !2264)
!2279 = !DILocation(line: 330, column: 3, scope: !2280, inlinedAt: !2282)
!2280 = distinct !DISubprogram(name: "__disable_irq", scope: !2271, file: !2271, line: 328, type: !81, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2281)
!2281 = !{}
!2282 = distinct !DILocation(line: 64, column: 5, scope: !2275)
!2283 = !{i64 298835}
!2284 = !DILocation(line: 65, column: 5, scope: !2264)
!2285 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !999, file: !999, line: 68, type: !2245, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2286)
!2286 = !{!2287}
!2287 = !DILocalVariable(name: "mask", arg: 1, scope: !2285, file: !999, line: 68, type: !73)
!2288 = !DILocation(line: 0, scope: !2285)
!2289 = !DILocalVariable(name: "priMask", arg: 1, scope: !2290, file: !2271, line: 481, type: !73)
!2290 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2271, file: !2271, line: 481, type: !2245, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2291)
!2291 = !{!2289}
!2292 = !DILocation(line: 0, scope: !2290, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 70, column: 5, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2285, file: !999, line: 70, column: 5)
!2295 = !DILocation(line: 483, column: 3, scope: !2290, inlinedAt: !2293)
!2296 = !{i64 302489}
!2297 = !DILocation(line: 71, column: 1, scope: !2285)
!2298 = distinct !DISubprogram(name: "pinmux_config", scope: !1044, file: !1044, line: 54, type: !2299, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!154, !1070, !73}
!2301 = !{!2302, !2303, !2304}
!2302 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2298, file: !1044, line: 54, type: !1070)
!2303 = !DILocalVariable(name: "function", arg: 2, scope: !2298, file: !1044, line: 54, type: !73)
!2304 = !DILocalVariable(name: "ePadIndex", scope: !2298, file: !1044, line: 56, type: !1726)
!2305 = !DILocation(line: 0, scope: !2298)
!2306 = !DILocation(line: 60, column: 5, scope: !2298)
!2307 = !DILocation(line: 205, column: 38, scope: !2298)
!2308 = !DILocation(line: 205, column: 5, scope: !2298)
!2309 = !DILocation(line: 207, column: 5, scope: !2298)
!2310 = !DILocation(line: 208, column: 1, scope: !2298)
!2311 = distinct !DISubprogram(name: "spim_Lisr", scope: !142, file: !142, line: 54, type: !81, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2281)
!2312 = !DILocation(line: 56, column: 15, scope: !2311)
!2313 = !DILocation(line: 57, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !142, line: 57, column: 9)
!2315 = !DILocation(line: 57, column: 24, scope: !2314)
!2316 = !DILocation(line: 57, column: 33, scope: !2314)
!2317 = !DILocation(line: 57, column: 20, scope: !2314)
!2318 = !DILocation(line: 57, column: 9, scope: !2311)
!2319 = !DILocation(line: 58, column: 29, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2314, file: !142, line: 57, column: 39)
!2321 = !DILocation(line: 58, column: 9, scope: !2320)
!2322 = !DILocation(line: 59, column: 20, scope: !2320)
!2323 = !DILocation(line: 60, column: 5, scope: !2320)
!2324 = !DILocation(line: 61, column: 1, scope: !2311)
!2325 = distinct !DISubprogram(name: "spim_init", scope: !142, file: !142, line: 63, type: !2326, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2328)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!154, !73, !73}
!2328 = !{!2329, !2330, !2331}
!2329 = !DILocalVariable(name: "setting", arg: 1, scope: !2325, file: !142, line: 63, type: !73)
!2330 = !DILocalVariable(name: "clock", arg: 2, scope: !2325, file: !142, line: 63, type: !73)
!2331 = !DILocalVariable(name: "ret", scope: !2325, file: !142, line: 65, type: !170)
!2332 = !DILocation(line: 0, scope: !2325)
!2333 = !DILocation(line: 67, column: 5, scope: !2325)
!2334 = !DILocation(line: 69, column: 28, scope: !2325)
!2335 = !DILocation(line: 69, column: 5, scope: !2325)
!2336 = !DILocation(line: 70, column: 89, scope: !2325)
!2337 = !DILocation(line: 71, column: 11, scope: !2325)
!2338 = !DILocation(line: 72, column: 25, scope: !2325)
!2339 = !DILocation(line: 72, column: 5, scope: !2325)
!2340 = !DILocation(line: 73, column: 5, scope: !2325)
!2341 = !DILocation(line: 0, scope: !159)
!2342 = !DILocation(line: 110, column: 24, scope: !159)
!2343 = !DILocation(line: 110, column: 14, scope: !159)
!2344 = !DILocation(line: 111, column: 17, scope: !159)
!2345 = !DILocation(line: 113, column: 14, scope: !159)
!2346 = !DILocation(line: 114, column: 12, scope: !159)
!2347 = !DILocation(line: 116, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !159, file: !142, line: 116, column: 9)
!2349 = !DILocation(line: 116, column: 9, scope: !159)
!2350 = !DILocation(line: 120, column: 17, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !159, file: !142, line: 120, column: 9)
!2352 = !DILocation(line: 120, column: 9, scope: !159)
!2353 = !DILocation(line: 126, column: 23, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !142, line: 126, column: 9)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !142, line: 126, column: 9)
!2356 = distinct !DILexicalBlock(scope: !2351, file: !142, line: 124, column: 12)
!2357 = !DILocation(line: 126, column: 9, scope: !2355)
!2358 = !DILocation(line: 127, column: 23, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !142, line: 126, column: 40)
!2360 = !DILocation(line: 128, column: 19, scope: !2359)
!2361 = !DILocation(line: 126, column: 25, scope: !2354)
!2362 = distinct !{!2362, !2357, !2363}
!2363 = !DILocation(line: 129, column: 9, scope: !2355)
!2364 = !DILocation(line: 121, column: 19, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2351, file: !142, line: 120, column: 32)
!2366 = !DILocation(line: 122, column: 15, scope: !2365)
!2367 = !DILocation(line: 123, column: 9, scope: !2365)
!2368 = !DILocation(line: 127, column: 49, scope: !2359)
!2369 = !DILocation(line: 128, column: 74, scope: !2359)
!2370 = !DILocation(line: 128, column: 102, scope: !2359)
!2371 = !DILocation(line: 126, column: 36, scope: !2354)
!2372 = !DILocation(line: 131, column: 13, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2356, file: !142, line: 131, column: 13)
!2374 = !DILocation(line: 0, scope: !2355)
!2375 = !DILocation(line: 131, column: 23, scope: !2373)
!2376 = !DILocation(line: 131, column: 13, scope: !2356)
!2377 = !DILocation(line: 132, column: 27, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !142, line: 132, column: 17)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !142, line: 131, column: 38)
!2380 = !DILocation(line: 132, column: 17, scope: !2379)
!2381 = !DILocation(line: 135, column: 49, scope: !2379)
!2382 = !DILocation(line: 135, column: 23, scope: !2379)
!2383 = !DILocation(line: 136, column: 19, scope: !2379)
!2384 = !DILocation(line: 137, column: 13, scope: !2379)
!2385 = !DILocation(line: 139, column: 49, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2373, file: !142, line: 138, column: 16)
!2387 = !DILocation(line: 139, column: 23, scope: !2386)
!2388 = !DILocation(line: 140, column: 70, scope: !2386)
!2389 = !DILocation(line: 140, column: 109, scope: !2386)
!2390 = !DILocation(line: 140, column: 134, scope: !2386)
!2391 = !DILocation(line: 140, column: 19, scope: !2386)
!2392 = !DILocation(line: 141, column: 13, scope: !2386)
!2393 = !DILocation(line: 144, column: 1, scope: !159)
!2394 = distinct !DISubprogram(name: "spim_fill_in_data", scope: !142, file: !142, line: 76, type: !2395, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!73, !162, !73, !73, !73}
!2397 = !{!2398, !2399, !2400, !2401, !2402}
!2398 = !DILocalVariable(name: "buf", arg: 1, scope: !2394, file: !142, line: 76, type: !162)
!2399 = !DILocalVariable(name: "write_buf_cnt", arg: 2, scope: !2394, file: !142, line: 76, type: !73)
!2400 = !DILocalVariable(name: "regVal", arg: 3, scope: !2394, file: !142, line: 76, type: !73)
!2401 = !DILocalVariable(name: "remainder", arg: 4, scope: !2394, file: !142, line: 76, type: !73)
!2402 = !DILocalVariable(name: "op_addr", scope: !2394, file: !142, line: 78, type: !73)
!2403 = !DILocation(line: 0, scope: !2394)
!2404 = !DILocation(line: 79, column: 16, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2394, file: !142, line: 79, column: 9)
!2406 = !DILocation(line: 79, column: 9, scope: !2394)
!2407 = !DILocation(line: 80, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !142, line: 79, column: 44)
!2409 = !DILocation(line: 81, column: 46, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !142, line: 80, column: 29)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !142, line: 80, column: 13)
!2412 = !DILocation(line: 81, column: 30, scope: !2410)
!2413 = !DILocation(line: 81, column: 24, scope: !2410)
!2414 = !DILocation(line: 82, column: 9, scope: !2410)
!2415 = !DILocation(line: 83, column: 46, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !142, line: 82, column: 36)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !142, line: 82, column: 20)
!2418 = !DILocation(line: 83, column: 30, scope: !2416)
!2419 = !DILocation(line: 83, column: 24, scope: !2416)
!2420 = !DILocation(line: 83, column: 79, scope: !2416)
!2421 = !DILocation(line: 83, column: 138, scope: !2416)
!2422 = !DILocation(line: 83, column: 88, scope: !2416)
!2423 = !DILocation(line: 83, column: 85, scope: !2416)
!2424 = !DILocation(line: 84, column: 9, scope: !2416)
!2425 = !DILocation(line: 85, column: 46, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !142, line: 84, column: 36)
!2427 = distinct !DILexicalBlock(scope: !2417, file: !142, line: 84, column: 20)
!2428 = !DILocation(line: 85, column: 30, scope: !2426)
!2429 = !DILocation(line: 85, column: 24, scope: !2426)
!2430 = !DILocation(line: 85, column: 79, scope: !2426)
!2431 = !DILocation(line: 85, column: 139, scope: !2426)
!2432 = !DILocation(line: 85, column: 89, scope: !2426)
!2433 = !DILocation(line: 85, column: 144, scope: !2426)
!2434 = !DILocation(line: 85, column: 86, scope: !2426)
!2435 = !DILocation(line: 85, column: 203, scope: !2426)
!2436 = !DILocation(line: 85, column: 153, scope: !2426)
!2437 = !DILocation(line: 85, column: 150, scope: !2426)
!2438 = !DILocation(line: 86, column: 9, scope: !2426)
!2439 = !DILocation(line: 87, column: 46, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !142, line: 86, column: 36)
!2441 = distinct !DILexicalBlock(scope: !2427, file: !142, line: 86, column: 20)
!2442 = !DILocation(line: 87, column: 30, scope: !2440)
!2443 = !DILocation(line: 87, column: 24, scope: !2440)
!2444 = !DILocation(line: 87, column: 79, scope: !2440)
!2445 = !DILocation(line: 87, column: 139, scope: !2440)
!2446 = !DILocation(line: 87, column: 89, scope: !2440)
!2447 = !DILocation(line: 87, column: 144, scope: !2440)
!2448 = !DILocation(line: 87, column: 86, scope: !2440)
!2449 = !DILocation(line: 87, column: 204, scope: !2440)
!2450 = !DILocation(line: 87, column: 154, scope: !2440)
!2451 = !DILocation(line: 87, column: 209, scope: !2440)
!2452 = !DILocation(line: 87, column: 151, scope: !2440)
!2453 = !DILocation(line: 87, column: 268, scope: !2440)
!2454 = !DILocation(line: 87, column: 218, scope: !2440)
!2455 = !DILocation(line: 87, column: 215, scope: !2440)
!2456 = !DILocation(line: 88, column: 9, scope: !2440)
!2457 = !DILocation(line: 90, column: 13, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2405, file: !142, line: 89, column: 12)
!2459 = !DILocation(line: 91, column: 46, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !142, line: 90, column: 29)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !142, line: 90, column: 13)
!2462 = !DILocation(line: 91, column: 30, scope: !2460)
!2463 = !DILocation(line: 91, column: 24, scope: !2460)
!2464 = !DILocation(line: 92, column: 9, scope: !2460)
!2465 = !DILocation(line: 93, column: 46, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !142, line: 92, column: 36)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !142, line: 92, column: 20)
!2468 = !DILocation(line: 93, column: 30, scope: !2466)
!2469 = !DILocation(line: 93, column: 24, scope: !2466)
!2470 = !DILocation(line: 93, column: 138, scope: !2466)
!2471 = !DILocation(line: 93, column: 88, scope: !2466)
!2472 = !DILocation(line: 93, column: 143, scope: !2466)
!2473 = !DILocation(line: 93, column: 85, scope: !2466)
!2474 = !DILocation(line: 94, column: 9, scope: !2466)
!2475 = !DILocation(line: 95, column: 46, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !142, line: 94, column: 36)
!2477 = distinct !DILexicalBlock(scope: !2467, file: !142, line: 94, column: 20)
!2478 = !DILocation(line: 95, column: 30, scope: !2476)
!2479 = !DILocation(line: 95, column: 24, scope: !2476)
!2480 = !DILocation(line: 95, column: 138, scope: !2476)
!2481 = !DILocation(line: 95, column: 88, scope: !2476)
!2482 = !DILocation(line: 95, column: 143, scope: !2476)
!2483 = !DILocation(line: 95, column: 85, scope: !2476)
!2484 = !DILocation(line: 95, column: 202, scope: !2476)
!2485 = !DILocation(line: 95, column: 152, scope: !2476)
!2486 = !DILocation(line: 95, column: 207, scope: !2476)
!2487 = !DILocation(line: 95, column: 149, scope: !2476)
!2488 = !DILocation(line: 96, column: 9, scope: !2476)
!2489 = !DILocation(line: 97, column: 46, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !142, line: 96, column: 36)
!2491 = distinct !DILexicalBlock(scope: !2477, file: !142, line: 96, column: 20)
!2492 = !DILocation(line: 97, column: 30, scope: !2490)
!2493 = !DILocation(line: 97, column: 24, scope: !2490)
!2494 = !DILocation(line: 97, column: 138, scope: !2490)
!2495 = !DILocation(line: 97, column: 88, scope: !2490)
!2496 = !DILocation(line: 97, column: 143, scope: !2490)
!2497 = !DILocation(line: 97, column: 85, scope: !2490)
!2498 = !DILocation(line: 97, column: 202, scope: !2490)
!2499 = !DILocation(line: 97, column: 152, scope: !2490)
!2500 = !DILocation(line: 97, column: 207, scope: !2490)
!2501 = !DILocation(line: 97, column: 149, scope: !2490)
!2502 = !DILocation(line: 97, column: 267, scope: !2490)
!2503 = !DILocation(line: 97, column: 217, scope: !2490)
!2504 = !DILocation(line: 97, column: 272, scope: !2490)
!2505 = !DILocation(line: 97, column: 214, scope: !2490)
!2506 = !DILocation(line: 98, column: 9, scope: !2490)
!2507 = !DILocation(line: 100, column: 5, scope: !2394)
!2508 = !DILocation(line: 0, scope: !178)
!2509 = !DILocation(line: 154, column: 24, scope: !178)
!2510 = !DILocation(line: 154, column: 14, scope: !178)
!2511 = !DILocation(line: 155, column: 27, scope: !178)
!2512 = !DILocation(line: 155, column: 17, scope: !178)
!2513 = !DILocation(line: 157, column: 18, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !178, file: !142, line: 157, column: 9)
!2515 = !DILocation(line: 157, column: 9, scope: !178)
!2516 = !DILocation(line: 158, column: 15, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !142, line: 157, column: 24)
!2518 = !DILocation(line: 159, column: 9, scope: !2517)
!2519 = !DILocation(line: 162, column: 9, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2514, file: !142, line: 160, column: 12)
!2521 = !DILocation(line: 163, column: 25, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !142, line: 163, column: 9)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !142, line: 163, column: 9)
!2524 = !DILocation(line: 163, column: 23, scope: !2522)
!2525 = !DILocation(line: 163, column: 9, scope: !2523)
!2526 = !DILocation(line: 164, column: 77, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !142, line: 163, column: 40)
!2528 = !DILocation(line: 164, column: 73, scope: !2527)
!2529 = !DILocation(line: 164, column: 19, scope: !2527)
!2530 = !DILocation(line: 163, column: 36, scope: !2522)
!2531 = distinct !{!2531, !2525, !2532}
!2532 = !DILocation(line: 165, column: 9, scope: !2523)
!2533 = !DILocation(line: 166, column: 13, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2520, file: !142, line: 166, column: 13)
!2535 = !DILocation(line: 166, column: 23, scope: !2534)
!2536 = !DILocation(line: 166, column: 13, scope: !2520)
!2537 = !DILocation(line: 167, column: 84, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2534, file: !142, line: 166, column: 29)
!2539 = !DILocation(line: 167, column: 73, scope: !2538)
!2540 = !DILocation(line: 167, column: 19, scope: !2538)
!2541 = !DILocation(line: 168, column: 9, scope: !2538)
!2542 = !DILocation(line: 0, scope: !2514)
!2543 = !DILocation(line: 171, column: 1, scope: !178)
!2544 = distinct !DISubprogram(name: "top_xtal_init", scope: !196, file: !196, line: 52, type: !81, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2545)
!2545 = !{!2546, !2547}
!2546 = !DILocalVariable(name: "u4RegVal", scope: !2544, file: !196, line: 54, type: !73)
!2547 = !DILocalVariable(name: "reg", scope: !2544, file: !196, line: 55, type: !61)
!2548 = !DILocation(line: 0, scope: !2544)
!2549 = !DILocation(line: 55, column: 25, scope: !2544)
!2550 = !DILocation(line: 56, column: 16, scope: !2544)
!2551 = !DILocation(line: 56, column: 23, scope: !2544)
!2552 = !DILocation(line: 58, column: 16, scope: !2544)
!2553 = !DILocation(line: 61, column: 5, scope: !2544)
!2554 = !DILocation(line: 59, column: 14, scope: !2544)
!2555 = !DILocation(line: 0, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2544, file: !196, line: 61, column: 18)
!2557 = !DILocation(line: 87, column: 38, scope: !2544)
!2558 = !DILocation(line: 88, column: 21, scope: !2544)
!2559 = !DILocation(line: 88, column: 19, scope: !2544)
!2560 = !DILocation(line: 89, column: 5, scope: !2544)
!2561 = !DILocation(line: 90, column: 17, scope: !2544)
!2562 = !DILocation(line: 90, column: 33, scope: !2544)
!2563 = !DILocation(line: 90, column: 5, scope: !2544)
!2564 = !DILocation(line: 91, column: 1, scope: !2544)
!2565 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !196, file: !196, line: 98, type: !2265, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2281)
!2566 = !DILocation(line: 100, column: 12, scope: !2565)
!2567 = !DILocation(line: 100, column: 5, scope: !2565)
!2568 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !196, file: !196, line: 108, type: !2265, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2281)
!2569 = !DILocation(line: 110, column: 12, scope: !2568)
!2570 = !DILocation(line: 110, column: 5, scope: !2568)
!2571 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !196, file: !196, line: 118, type: !81, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2572)
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "reg", scope: !2571, file: !196, line: 120, type: !72)
!2574 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2571, file: !196, line: 121, type: !71)
!2575 = !DILocation(line: 120, column: 5, scope: !2571)
!2576 = !DILocation(line: 120, column: 23, scope: !2571)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 123, column: 11, scope: !2571)
!2579 = !DILocation(line: 123, column: 9, scope: !2571)
!2580 = !DILocation(line: 124, column: 12, scope: !2571)
!2581 = !DILocation(line: 124, column: 16, scope: !2571)
!2582 = !DILocation(line: 124, column: 39, scope: !2571)
!2583 = !DILocation(line: 124, column: 9, scope: !2571)
!2584 = !DILocation(line: 126, column: 9, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2571, file: !196, line: 126, column: 9)
!2586 = !DILocation(line: 126, column: 13, scope: !2585)
!2587 = !DILocation(line: 126, column: 9, scope: !2571)
!2588 = !DILocation(line: 127, column: 15, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !196, line: 126, column: 47)
!2590 = !DILocation(line: 127, column: 13, scope: !2589)
!2591 = !DILocation(line: 128, column: 15, scope: !2589)
!2592 = !DILocation(line: 128, column: 19, scope: !2589)
!2593 = !DILocation(line: 128, column: 13, scope: !2589)
!2594 = !DILocation(line: 129, column: 15, scope: !2589)
!2595 = !DILocation(line: 129, column: 19, scope: !2589)
!2596 = !DILocation(line: 129, column: 13, scope: !2589)
!2597 = !DILocation(line: 130, column: 46, scope: !2589)
!2598 = !DILocation(line: 130, column: 9, scope: !2589)
!2599 = !DILocation(line: 132, column: 9, scope: !2589)
!2600 = !DILocation(line: 133, column: 19, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2589, file: !196, line: 132, column: 12)
!2602 = !DILocation(line: 133, column: 17, scope: !2601)
!2603 = !DILocation(line: 134, column: 19, scope: !2601)
!2604 = !DILocation(line: 134, column: 23, scope: !2601)
!2605 = !DILocation(line: 134, column: 17, scope: !2601)
!2606 = !DILocation(line: 135, column: 19, scope: !2589)
!2607 = !DILocation(line: 135, column: 18, scope: !2589)
!2608 = !DILocation(line: 135, column: 9, scope: !2601)
!2609 = distinct !{!2609, !2599, !2610}
!2610 = !DILocation(line: 135, column: 22, scope: !2589)
!2611 = !DILocation(line: 138, column: 1, scope: !2571)
!2612 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2007, file: !2007, line: 176, type: !2008, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2613)
!2613 = !{!2614}
!2614 = !DILocalVariable(name: "Register", arg: 1, scope: !2612, file: !2007, line: 176, type: !2010)
!2615 = !DILocation(line: 0, scope: !2612)
!2616 = !DILocation(line: 178, column: 13, scope: !2612)
!2617 = !DILocation(line: 178, column: 12, scope: !2612)
!2618 = !DILocation(line: 178, column: 5, scope: !2612)
!2619 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2007, file: !2007, line: 171, type: !2620, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2010, !73}
!2622 = !{!2623, !2624}
!2623 = !DILocalVariable(name: "Register", arg: 1, scope: !2619, file: !2007, line: 171, type: !2010)
!2624 = !DILocalVariable(name: "Value", arg: 2, scope: !2619, file: !2007, line: 171, type: !73)
!2625 = !DILocation(line: 0, scope: !2619)
!2626 = !DILocation(line: 173, column: 6, scope: !2619)
!2627 = !DILocation(line: 173, column: 36, scope: !2619)
!2628 = !DILocation(line: 174, column: 1, scope: !2619)
!2629 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !196, file: !196, line: 145, type: !2630, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{null, !163}
!2632 = !{!2633, !2634, !2635}
!2633 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2629, file: !196, line: 145, type: !163)
!2634 = !DILocalVariable(name: "reg", scope: !2629, file: !196, line: 147, type: !72)
!2635 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2629, file: !196, line: 148, type: !71)
!2636 = !DILocation(line: 0, scope: !2629)
!2637 = !DILocation(line: 147, column: 5, scope: !2629)
!2638 = !DILocation(line: 147, column: 23, scope: !2629)
!2639 = !DILocation(line: 150, column: 11, scope: !2629)
!2640 = !DILocation(line: 150, column: 9, scope: !2629)
!2641 = !DILocation(line: 151, column: 12, scope: !2629)
!2642 = !DILocation(line: 151, column: 16, scope: !2629)
!2643 = !DILocation(line: 151, column: 39, scope: !2629)
!2644 = !DILocation(line: 151, column: 9, scope: !2629)
!2645 = !DILocation(line: 153, column: 9, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2629, file: !196, line: 153, column: 9)
!2647 = !DILocation(line: 153, column: 13, scope: !2646)
!2648 = !DILocation(line: 153, column: 9, scope: !2629)
!2649 = !DILocation(line: 154, column: 15, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !196, line: 153, column: 45)
!2651 = !DILocation(line: 154, column: 13, scope: !2650)
!2652 = !DILocation(line: 155, column: 15, scope: !2650)
!2653 = !DILocation(line: 155, column: 19, scope: !2650)
!2654 = !DILocation(line: 155, column: 13, scope: !2650)
!2655 = !DILocation(line: 156, column: 15, scope: !2650)
!2656 = !DILocation(line: 156, column: 19, scope: !2650)
!2657 = !DILocation(line: 156, column: 13, scope: !2650)
!2658 = !DILocation(line: 157, column: 15, scope: !2650)
!2659 = !DILocation(line: 157, column: 13, scope: !2650)
!2660 = !DILocation(line: 158, column: 46, scope: !2650)
!2661 = !DILocation(line: 158, column: 9, scope: !2650)
!2662 = !DILocation(line: 160, column: 15, scope: !2650)
!2663 = !DILocation(line: 160, column: 13, scope: !2650)
!2664 = !DILocation(line: 161, column: 15, scope: !2650)
!2665 = !DILocation(line: 161, column: 19, scope: !2650)
!2666 = !DILocation(line: 161, column: 13, scope: !2650)
!2667 = !DILocation(line: 162, column: 15, scope: !2650)
!2668 = !DILocation(line: 162, column: 19, scope: !2650)
!2669 = !DILocation(line: 162, column: 13, scope: !2650)
!2670 = !DILocation(line: 163, column: 15, scope: !2650)
!2671 = !DILocation(line: 163, column: 19, scope: !2650)
!2672 = !DILocation(line: 163, column: 13, scope: !2650)
!2673 = !DILocation(line: 164, column: 46, scope: !2650)
!2674 = !DILocation(line: 164, column: 9, scope: !2650)
!2675 = !DILocation(line: 166, column: 9, scope: !2650)
!2676 = !DILocation(line: 167, column: 19, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2650, file: !196, line: 166, column: 12)
!2678 = !DILocation(line: 167, column: 17, scope: !2677)
!2679 = !DILocation(line: 168, column: 19, scope: !2677)
!2680 = !DILocation(line: 168, column: 23, scope: !2677)
!2681 = !DILocation(line: 168, column: 17, scope: !2677)
!2682 = !DILocation(line: 169, column: 19, scope: !2650)
!2683 = !DILocation(line: 169, column: 18, scope: !2650)
!2684 = !DILocation(line: 169, column: 9, scope: !2677)
!2685 = distinct !{!2685, !2675, !2686}
!2686 = !DILocation(line: 169, column: 22, scope: !2650)
!2687 = !DILocation(line: 171, column: 15, scope: !2650)
!2688 = !DILocation(line: 171, column: 13, scope: !2650)
!2689 = !DILocation(line: 172, column: 15, scope: !2650)
!2690 = !DILocation(line: 172, column: 19, scope: !2650)
!2691 = !DILocation(line: 172, column: 13, scope: !2650)
!2692 = !DILocation(line: 173, column: 15, scope: !2650)
!2693 = !DILocation(line: 173, column: 19, scope: !2650)
!2694 = !DILocation(line: 173, column: 13, scope: !2650)
!2695 = !DILocation(line: 174, column: 5, scope: !2650)
!2696 = !DILocation(line: 176, column: 11, scope: !2629)
!2697 = !DILocation(line: 176, column: 9, scope: !2629)
!2698 = !DILocation(line: 177, column: 9, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2629, file: !196, line: 177, column: 9)
!2700 = !DILocation(line: 0, scope: !2699)
!2701 = !DILocation(line: 177, column: 9, scope: !2629)
!2702 = !DILocation(line: 178, column: 19, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2699, file: !196, line: 177, column: 17)
!2704 = !DILocation(line: 178, column: 13, scope: !2703)
!2705 = !DILocation(line: 179, column: 5, scope: !2703)
!2706 = !DILocation(line: 180, column: 13, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2699, file: !196, line: 179, column: 12)
!2708 = !DILocation(line: 182, column: 42, scope: !2629)
!2709 = !DILocation(line: 182, column: 5, scope: !2629)
!2710 = !DILocation(line: 184, column: 1, scope: !2629)
!2711 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !196, file: !196, line: 191, type: !81, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2712)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "reg", scope: !2711, file: !196, line: 193, type: !72)
!2714 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2711, file: !196, line: 194, type: !71)
!2715 = !DILocation(line: 193, column: 5, scope: !2711)
!2716 = !DILocation(line: 193, column: 23, scope: !2711)
!2717 = !DILocation(line: 0, scope: !2711)
!2718 = !DILocation(line: 196, column: 11, scope: !2711)
!2719 = !DILocation(line: 196, column: 9, scope: !2711)
!2720 = !DILocation(line: 197, column: 11, scope: !2711)
!2721 = !DILocation(line: 197, column: 15, scope: !2711)
!2722 = !DILocation(line: 197, column: 9, scope: !2711)
!2723 = !DILocation(line: 198, column: 11, scope: !2711)
!2724 = !DILocation(line: 198, column: 15, scope: !2711)
!2725 = !DILocation(line: 198, column: 9, scope: !2711)
!2726 = !DILocation(line: 199, column: 11, scope: !2711)
!2727 = !DILocation(line: 199, column: 9, scope: !2711)
!2728 = !DILocation(line: 200, column: 42, scope: !2711)
!2729 = !DILocation(line: 200, column: 5, scope: !2711)
!2730 = !DILocation(line: 202, column: 11, scope: !2711)
!2731 = !DILocation(line: 202, column: 9, scope: !2711)
!2732 = !DILocation(line: 203, column: 11, scope: !2711)
!2733 = !DILocation(line: 203, column: 15, scope: !2711)
!2734 = !DILocation(line: 203, column: 9, scope: !2711)
!2735 = !DILocation(line: 204, column: 11, scope: !2711)
!2736 = !DILocation(line: 204, column: 15, scope: !2711)
!2737 = !DILocation(line: 204, column: 9, scope: !2711)
!2738 = !DILocation(line: 205, column: 11, scope: !2711)
!2739 = !DILocation(line: 205, column: 9, scope: !2711)
!2740 = !DILocation(line: 206, column: 42, scope: !2711)
!2741 = !DILocation(line: 206, column: 5, scope: !2711)
!2742 = !DILocation(line: 209, column: 1, scope: !2711)
!2743 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !196, file: !196, line: 216, type: !81, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2744)
!2744 = !{!2745, !2746}
!2745 = !DILocalVariable(name: "reg", scope: !2743, file: !196, line: 218, type: !72)
!2746 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2743, file: !196, line: 219, type: !71)
!2747 = !DILocation(line: 218, column: 5, scope: !2743)
!2748 = !DILocation(line: 218, column: 23, scope: !2743)
!2749 = !DILocation(line: 0, scope: !2743)
!2750 = !DILocation(line: 222, column: 11, scope: !2743)
!2751 = !DILocation(line: 222, column: 9, scope: !2743)
!2752 = !DILocation(line: 223, column: 11, scope: !2743)
!2753 = !DILocation(line: 223, column: 15, scope: !2743)
!2754 = !DILocation(line: 223, column: 9, scope: !2743)
!2755 = !DILocation(line: 224, column: 11, scope: !2743)
!2756 = !DILocation(line: 224, column: 9, scope: !2743)
!2757 = !DILocation(line: 225, column: 39, scope: !2743)
!2758 = !DILocation(line: 225, column: 5, scope: !2743)
!2759 = !DILocation(line: 228, column: 11, scope: !2743)
!2760 = !DILocation(line: 228, column: 9, scope: !2743)
!2761 = !DILocation(line: 229, column: 11, scope: !2743)
!2762 = !DILocation(line: 229, column: 15, scope: !2743)
!2763 = !DILocation(line: 229, column: 9, scope: !2743)
!2764 = !DILocation(line: 230, column: 11, scope: !2743)
!2765 = !DILocation(line: 230, column: 9, scope: !2743)
!2766 = !DILocation(line: 231, column: 39, scope: !2743)
!2767 = !DILocation(line: 231, column: 5, scope: !2743)
!2768 = !DILocation(line: 233, column: 5, scope: !2743)
!2769 = !DILocation(line: 233, column: 12, scope: !2743)
!2770 = !DILocation(line: 233, column: 19, scope: !2743)
!2771 = !DILocation(line: 233, column: 16, scope: !2743)
!2772 = distinct !{!2772, !2768, !2773}
!2773 = !DILocation(line: 233, column: 52, scope: !2743)
!2774 = !DILocation(line: 235, column: 21, scope: !2743)
!2775 = !DILocation(line: 235, column: 19, scope: !2743)
!2776 = !DILocation(line: 236, column: 5, scope: !2743)
!2777 = !DILocation(line: 237, column: 17, scope: !2743)
!2778 = !DILocation(line: 237, column: 33, scope: !2743)
!2779 = !DILocation(line: 237, column: 5, scope: !2743)
!2780 = !DILocation(line: 239, column: 1, scope: !2743)
!2781 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !196, file: !196, line: 246, type: !81, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2782)
!2782 = !{!2783, !2784}
!2783 = !DILocalVariable(name: "reg", scope: !2781, file: !196, line: 248, type: !72)
!2784 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2781, file: !196, line: 249, type: !71)
!2785 = !DILocation(line: 248, column: 5, scope: !2781)
!2786 = !DILocation(line: 248, column: 23, scope: !2781)
!2787 = !DILocation(line: 0, scope: !2781)
!2788 = !DILocation(line: 252, column: 5, scope: !2781)
!2789 = !DILocation(line: 255, column: 11, scope: !2781)
!2790 = !DILocation(line: 255, column: 9, scope: !2781)
!2791 = !DILocation(line: 256, column: 11, scope: !2781)
!2792 = !DILocation(line: 256, column: 15, scope: !2781)
!2793 = !DILocation(line: 256, column: 9, scope: !2781)
!2794 = !DILocation(line: 257, column: 11, scope: !2781)
!2795 = !DILocation(line: 257, column: 15, scope: !2781)
!2796 = !DILocation(line: 257, column: 9, scope: !2781)
!2797 = !DILocation(line: 258, column: 39, scope: !2781)
!2798 = !DILocation(line: 258, column: 5, scope: !2781)
!2799 = !DILocation(line: 260, column: 5, scope: !2781)
!2800 = !DILocation(line: 260, column: 12, scope: !2781)
!2801 = !DILocation(line: 260, column: 19, scope: !2781)
!2802 = !DILocation(line: 260, column: 16, scope: !2781)
!2803 = distinct !{!2803, !2799, !2804}
!2804 = !DILocation(line: 260, column: 52, scope: !2781)
!2805 = !DILocation(line: 263, column: 11, scope: !2781)
!2806 = !DILocation(line: 263, column: 9, scope: !2781)
!2807 = !DILocation(line: 264, column: 11, scope: !2781)
!2808 = !DILocation(line: 264, column: 15, scope: !2781)
!2809 = !DILocation(line: 264, column: 9, scope: !2781)
!2810 = !DILocation(line: 265, column: 11, scope: !2781)
!2811 = !DILocation(line: 265, column: 15, scope: !2781)
!2812 = !DILocation(line: 265, column: 9, scope: !2781)
!2813 = !DILocation(line: 266, column: 39, scope: !2781)
!2814 = !DILocation(line: 266, column: 5, scope: !2781)
!2815 = !DILocation(line: 269, column: 11, scope: !2781)
!2816 = !DILocation(line: 269, column: 9, scope: !2781)
!2817 = !DILocation(line: 270, column: 11, scope: !2781)
!2818 = !DILocation(line: 270, column: 15, scope: !2781)
!2819 = !DILocation(line: 270, column: 9, scope: !2781)
!2820 = !DILocation(line: 271, column: 11, scope: !2781)
!2821 = !DILocation(line: 271, column: 15, scope: !2781)
!2822 = !DILocation(line: 271, column: 9, scope: !2781)
!2823 = !DILocation(line: 272, column: 39, scope: !2781)
!2824 = !DILocation(line: 272, column: 5, scope: !2781)
!2825 = !DILocation(line: 273, column: 19, scope: !2781)
!2826 = !DILocation(line: 274, column: 5, scope: !2781)
!2827 = !DILocation(line: 275, column: 17, scope: !2781)
!2828 = !DILocation(line: 275, column: 33, scope: !2781)
!2829 = !DILocation(line: 275, column: 5, scope: !2781)
!2830 = !DILocation(line: 277, column: 1, scope: !2781)
!2831 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !196, file: !196, line: 284, type: !81, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2832)
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "reg", scope: !2831, file: !196, line: 286, type: !72)
!2834 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2831, file: !196, line: 287, type: !71)
!2835 = !DILocation(line: 286, column: 5, scope: !2831)
!2836 = !DILocation(line: 286, column: 23, scope: !2831)
!2837 = !DILocation(line: 0, scope: !2831)
!2838 = !DILocation(line: 290, column: 5, scope: !2831)
!2839 = !DILocation(line: 293, column: 11, scope: !2831)
!2840 = !DILocation(line: 293, column: 9, scope: !2831)
!2841 = !DILocation(line: 294, column: 11, scope: !2831)
!2842 = !DILocation(line: 294, column: 15, scope: !2831)
!2843 = !DILocation(line: 294, column: 9, scope: !2831)
!2844 = !DILocation(line: 295, column: 11, scope: !2831)
!2845 = !DILocation(line: 295, column: 15, scope: !2831)
!2846 = !DILocation(line: 295, column: 9, scope: !2831)
!2847 = !DILocation(line: 296, column: 39, scope: !2831)
!2848 = !DILocation(line: 296, column: 5, scope: !2831)
!2849 = !DILocation(line: 298, column: 5, scope: !2831)
!2850 = !DILocation(line: 298, column: 12, scope: !2831)
!2851 = !DILocation(line: 298, column: 19, scope: !2831)
!2852 = !DILocation(line: 298, column: 16, scope: !2831)
!2853 = distinct !{!2853, !2849, !2854}
!2854 = !DILocation(line: 298, column: 52, scope: !2831)
!2855 = !DILocation(line: 301, column: 11, scope: !2831)
!2856 = !DILocation(line: 301, column: 9, scope: !2831)
!2857 = !DILocation(line: 302, column: 11, scope: !2831)
!2858 = !DILocation(line: 302, column: 15, scope: !2831)
!2859 = !DILocation(line: 302, column: 9, scope: !2831)
!2860 = !DILocation(line: 303, column: 11, scope: !2831)
!2861 = !DILocation(line: 303, column: 15, scope: !2831)
!2862 = !DILocation(line: 303, column: 9, scope: !2831)
!2863 = !DILocation(line: 304, column: 39, scope: !2831)
!2864 = !DILocation(line: 304, column: 5, scope: !2831)
!2865 = !DILocation(line: 307, column: 11, scope: !2831)
!2866 = !DILocation(line: 307, column: 9, scope: !2831)
!2867 = !DILocation(line: 308, column: 11, scope: !2831)
!2868 = !DILocation(line: 308, column: 15, scope: !2831)
!2869 = !DILocation(line: 308, column: 9, scope: !2831)
!2870 = !DILocation(line: 309, column: 11, scope: !2831)
!2871 = !DILocation(line: 309, column: 15, scope: !2831)
!2872 = !DILocation(line: 309, column: 9, scope: !2831)
!2873 = !DILocation(line: 310, column: 39, scope: !2831)
!2874 = !DILocation(line: 310, column: 5, scope: !2831)
!2875 = !DILocation(line: 311, column: 19, scope: !2831)
!2876 = !DILocation(line: 312, column: 5, scope: !2831)
!2877 = !DILocation(line: 313, column: 17, scope: !2831)
!2878 = !DILocation(line: 313, column: 33, scope: !2831)
!2879 = !DILocation(line: 313, column: 5, scope: !2831)
!2880 = !DILocation(line: 315, column: 1, scope: !2831)
!2881 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !196, file: !196, line: 323, type: !81, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2882)
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "reg", scope: !2881, file: !196, line: 325, type: !72)
!2884 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2881, file: !196, line: 326, type: !71)
!2885 = !DILocation(line: 325, column: 5, scope: !2881)
!2886 = !DILocation(line: 325, column: 23, scope: !2881)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 329, column: 5, scope: !2881)
!2889 = !DILocation(line: 332, column: 11, scope: !2881)
!2890 = !DILocation(line: 332, column: 9, scope: !2881)
!2891 = !DILocation(line: 333, column: 11, scope: !2881)
!2892 = !DILocation(line: 333, column: 15, scope: !2881)
!2893 = !DILocation(line: 333, column: 9, scope: !2881)
!2894 = !DILocation(line: 334, column: 11, scope: !2881)
!2895 = !DILocation(line: 334, column: 9, scope: !2881)
!2896 = !DILocation(line: 335, column: 39, scope: !2881)
!2897 = !DILocation(line: 335, column: 5, scope: !2881)
!2898 = !DILocation(line: 337, column: 5, scope: !2881)
!2899 = !DILocation(line: 337, column: 12, scope: !2881)
!2900 = !DILocation(line: 337, column: 19, scope: !2881)
!2901 = !DILocation(line: 337, column: 16, scope: !2881)
!2902 = distinct !{!2902, !2898, !2903}
!2903 = !DILocation(line: 337, column: 52, scope: !2881)
!2904 = !DILocation(line: 340, column: 11, scope: !2881)
!2905 = !DILocation(line: 340, column: 9, scope: !2881)
!2906 = !DILocation(line: 341, column: 11, scope: !2881)
!2907 = !DILocation(line: 341, column: 15, scope: !2881)
!2908 = !DILocation(line: 341, column: 9, scope: !2881)
!2909 = !DILocation(line: 342, column: 11, scope: !2881)
!2910 = !DILocation(line: 342, column: 15, scope: !2881)
!2911 = !DILocation(line: 342, column: 9, scope: !2881)
!2912 = !DILocation(line: 343, column: 39, scope: !2881)
!2913 = !DILocation(line: 343, column: 5, scope: !2881)
!2914 = !DILocation(line: 344, column: 19, scope: !2881)
!2915 = !DILocation(line: 345, column: 5, scope: !2881)
!2916 = !DILocation(line: 346, column: 17, scope: !2881)
!2917 = !DILocation(line: 346, column: 33, scope: !2881)
!2918 = !DILocation(line: 346, column: 5, scope: !2881)
!2919 = !DILocation(line: 348, column: 1, scope: !2881)
!2920 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !196, file: !196, line: 353, type: !81, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2921)
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "reg", scope: !2920, file: !196, line: 355, type: !63)
!2923 = !DILocalVariable(name: "pTopCfgHclk", scope: !2920, file: !196, line: 356, type: !62)
!2924 = !DILocation(line: 355, column: 5, scope: !2920)
!2925 = !DILocation(line: 355, column: 21, scope: !2920)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 358, column: 11, scope: !2920)
!2928 = !DILocation(line: 358, column: 9, scope: !2920)
!2929 = !DILocation(line: 359, column: 11, scope: !2920)
!2930 = !DILocation(line: 359, column: 15, scope: !2920)
!2931 = !DILocation(line: 359, column: 9, scope: !2920)
!2932 = !DILocation(line: 360, column: 11, scope: !2920)
!2933 = !DILocation(line: 360, column: 9, scope: !2920)
!2934 = !DILocation(line: 361, column: 37, scope: !2920)
!2935 = !DILocation(line: 361, column: 5, scope: !2920)
!2936 = !DILocation(line: 362, column: 1, scope: !2920)
!2937 = distinct !DISubprogram(name: "getc", scope: !206, file: !206, line: 68, type: !2938, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!7}
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "rc", scope: !2937, file: !206, line: 71, type: !7)
!2942 = !DILocation(line: 71, column: 14, scope: !2937)
!2943 = !DILocation(line: 0, scope: !2937)
!2944 = !DILocation(line: 72, column: 5, scope: !2937)
!2945 = distinct !DISubprogram(name: "getc_nowait", scope: !206, file: !206, line: 80, type: !2938, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2946)
!2946 = !{!2947}
!2947 = !DILocalVariable(name: "c", scope: !2945, file: !206, line: 82, type: !575)
!2948 = !DILocation(line: 84, column: 9, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !206, line: 84, column: 9)
!2950 = !DILocation(line: 84, column: 40, scope: !2949)
!2951 = !DILocation(line: 84, column: 9, scope: !2945)
!2952 = !DILocation(line: 85, column: 13, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !206, line: 84, column: 47)
!2954 = !DILocation(line: 86, column: 16, scope: !2953)
!2955 = !DILocation(line: 0, scope: !2945)
!2956 = !DILocation(line: 86, column: 9, scope: !2953)
!2957 = !DILocation(line: 0, scope: !2949)
!2958 = !DILocation(line: 90, column: 1, scope: !2945)
!2959 = distinct !DISubprogram(name: "uart_output_char", scope: !206, file: !206, line: 93, type: !2960, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2963)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !2962, !70}
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !209, line: 75, baseType: !208)
!2963 = !{!2964, !2965, !2966}
!2964 = !DILocalVariable(name: "port_no", arg: 1, scope: !2959, file: !206, line: 93, type: !2962)
!2965 = !DILocalVariable(name: "c", arg: 2, scope: !2959, file: !206, line: 93, type: !70)
!2966 = !DILocalVariable(name: "base", scope: !2959, file: !206, line: 95, type: !53)
!2967 = !DILocation(line: 0, scope: !2959)
!2968 = !DILocation(line: 95, column: 25, scope: !2959)
!2969 = !DILocation(line: 97, column: 5, scope: !2959)
!2970 = !DILocation(line: 97, column: 14, scope: !2959)
!2971 = !DILocation(line: 97, column: 42, scope: !2959)
!2972 = !DILocation(line: 97, column: 12, scope: !2959)
!2973 = distinct !{!2973, !2969, !2974}
!2974 = !DILocation(line: 98, column: 9, scope: !2959)
!2975 = !DILocation(line: 99, column: 35, scope: !2959)
!2976 = !DILocation(line: 99, column: 5, scope: !2959)
!2977 = !DILocation(line: 99, column: 33, scope: !2959)
!2978 = !DILocation(line: 102, column: 1, scope: !2959)
!2979 = distinct !DISubprogram(name: "uart_input_char", scope: !206, file: !206, line: 106, type: !2980, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!163, !2962}
!2982 = !{!2983, !2984, !2985}
!2983 = !DILocalVariable(name: "port_no", arg: 1, scope: !2979, file: !206, line: 106, type: !2962)
!2984 = !DILocalVariable(name: "base", scope: !2979, file: !206, line: 108, type: !53)
!2985 = !DILocalVariable(name: "c", scope: !2979, file: !206, line: 109, type: !575)
!2986 = !DILocation(line: 0, scope: !2979)
!2987 = !DILocation(line: 108, column: 25, scope: !2979)
!2988 = !DILocation(line: 111, column: 5, scope: !2979)
!2989 = !DILocation(line: 111, column: 14, scope: !2979)
!2990 = !DILocation(line: 111, column: 42, scope: !2979)
!2991 = !DILocation(line: 111, column: 12, scope: !2979)
!2992 = distinct !{!2992, !2988, !2993}
!2993 = !DILocation(line: 112, column: 9, scope: !2979)
!2994 = !DILocation(line: 114, column: 9, scope: !2979)
!2995 = !DILocation(line: 116, column: 5, scope: !2979)
!2996 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !206, file: !206, line: 120, type: !2997, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!73, !2962}
!2999 = !{!3000, !3001, !3002}
!3000 = !DILocalVariable(name: "port_no", arg: 1, scope: !2996, file: !206, line: 120, type: !2962)
!3001 = !DILocalVariable(name: "base", scope: !2996, file: !206, line: 122, type: !53)
!3002 = !DILocalVariable(name: "c", scope: !2996, file: !206, line: 123, type: !575)
!3003 = !DILocation(line: 0, scope: !2996)
!3004 = !DILocation(line: 122, column: 25, scope: !2996)
!3005 = !DILocation(line: 125, column: 9, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2996, file: !206, line: 125, column: 9)
!3007 = !DILocation(line: 125, column: 37, scope: !3006)
!3008 = !DILocation(line: 125, column: 9, scope: !2996)
!3009 = !DILocation(line: 126, column: 13, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !206, line: 125, column: 44)
!3011 = !DILocation(line: 127, column: 16, scope: !3010)
!3012 = !DILocation(line: 127, column: 9, scope: !3010)
!3013 = !DILocation(line: 0, scope: !3006)
!3014 = !DILocation(line: 131, column: 1, scope: !2996)
!3015 = distinct !DISubprogram(name: "halUART_HWInit", scope: !206, file: !206, line: 136, type: !3016, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2962}
!3018 = !{!3019}
!3019 = !DILocalVariable(name: "u_port", arg: 1, scope: !3015, file: !206, line: 136, type: !2962)
!3020 = !DILocation(line: 0, scope: !3015)
!3021 = !DILocation(line: 139, column: 5, scope: !3015)
!3022 = !DILocation(line: 140, column: 9, scope: !3015)
!3023 = !DILocation(line: 153, column: 5, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !206, line: 147, column: 38)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !206, line: 147, column: 16)
!3026 = distinct !DILexicalBlock(scope: !3015, file: !206, line: 140, column: 9)
!3027 = !DILocation(line: 0, scope: !3026)
!3028 = !DILocation(line: 155, column: 1, scope: !3015)
!3029 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !206, file: !206, line: 158, type: !3030, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3034)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2962, !73, !3032, !3032, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !74, line: 36, baseType: !3033)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !76, line: 57, baseType: !235)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3050, !3051}
!3035 = !DILocalVariable(name: "u_port", arg: 1, scope: !3029, file: !206, line: 158, type: !2962)
!3036 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3029, file: !206, line: 158, type: !73)
!3037 = !DILocalVariable(name: "databit", arg: 3, scope: !3029, file: !206, line: 158, type: !3032)
!3038 = !DILocalVariable(name: "parity", arg: 4, scope: !3029, file: !206, line: 158, type: !3032)
!3039 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3029, file: !206, line: 158, type: !3032)
!3040 = !DILocalVariable(name: "control_word", scope: !3029, file: !206, line: 160, type: !3032)
!3041 = !DILocalVariable(name: "UART_BASE", scope: !3029, file: !206, line: 161, type: !73)
!3042 = !DILocalVariable(name: "data", scope: !3029, file: !206, line: 162, type: !73)
!3043 = !DILocalVariable(name: "uart_lcr", scope: !3029, file: !206, line: 162, type: !73)
!3044 = !DILocalVariable(name: "high_speed_div", scope: !3029, file: !206, line: 162, type: !73)
!3045 = !DILocalVariable(name: "sample_count", scope: !3029, file: !206, line: 162, type: !73)
!3046 = !DILocalVariable(name: "sample_point", scope: !3029, file: !206, line: 162, type: !73)
!3047 = !DILocalVariable(name: "fraction", scope: !3029, file: !206, line: 162, type: !73)
!3048 = !DILocalVariable(name: "fraction_L_mapping", scope: !3029, file: !206, line: 163, type: !3049)
!3049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 176, elements: !906)
!3050 = !DILocalVariable(name: "fraction_M_mapping", scope: !3029, file: !206, line: 164, type: !3049)
!3051 = !DILocalVariable(name: "status", scope: !3029, file: !206, line: 165, type: !154)
!3052 = !DILocation(line: 0, scope: !3029)
!3053 = !DILocation(line: 163, column: 15, scope: !3029)
!3054 = !DILocation(line: 164, column: 15, scope: !3029)
!3055 = !DILocation(line: 166, column: 20, scope: !3029)
!3056 = !DILocation(line: 166, column: 18, scope: !3029)
!3057 = !DILocation(line: 168, column: 9, scope: !3029)
!3058 = !DILocation(line: 176, column: 5, scope: !3029)
!3059 = !DILocation(line: 176, column: 44, scope: !3029)
!3060 = !DILocation(line: 177, column: 16, scope: !3029)
!3061 = !DILocation(line: 178, column: 50, scope: !3029)
!3062 = !DILocation(line: 178, column: 38, scope: !3029)
!3063 = !DILocation(line: 179, column: 12, scope: !3029)
!3064 = !DILocation(line: 179, column: 25, scope: !3029)
!3065 = !DILocation(line: 180, column: 28, scope: !3029)
!3066 = !DILocation(line: 180, column: 34, scope: !3029)
!3067 = !DILocation(line: 182, column: 29, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3029, file: !206, line: 181, column: 5)
!3069 = !DILocation(line: 182, column: 46, scope: !3068)
!3070 = !DILocation(line: 183, column: 26, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !206, line: 183, column: 13)
!3072 = !DILocation(line: 183, column: 13, scope: !3068)
!3073 = !DILocation(line: 192, column: 30, scope: !3029)
!3074 = !DILocation(line: 192, column: 35, scope: !3029)
!3075 = !DILocation(line: 192, column: 46, scope: !3029)
!3076 = !DILocation(line: 192, column: 74, scope: !3029)
!3077 = !DILocation(line: 192, column: 53, scope: !3029)
!3078 = !DILocation(line: 192, column: 80, scope: !3029)
!3079 = !DILocation(line: 193, column: 56, scope: !3029)
!3080 = !DILocation(line: 193, column: 5, scope: !3029)
!3081 = !DILocation(line: 193, column: 38, scope: !3029)
!3082 = !DILocation(line: 194, column: 57, scope: !3029)
!3083 = !DILocation(line: 194, column: 63, scope: !3029)
!3084 = !DILocation(line: 194, column: 5, scope: !3029)
!3085 = !DILocation(line: 194, column: 38, scope: !3029)
!3086 = !DILocation(line: 195, column: 5, scope: !3029)
!3087 = !DILocation(line: 195, column: 45, scope: !3029)
!3088 = !DILocation(line: 196, column: 5, scope: !3029)
!3089 = !DILocation(line: 196, column: 47, scope: !3029)
!3090 = !DILocation(line: 197, column: 46, scope: !3029)
!3091 = !DILocation(line: 197, column: 5, scope: !3029)
!3092 = !DILocation(line: 197, column: 44, scope: !3029)
!3093 = !DILocation(line: 198, column: 46, scope: !3029)
!3094 = !DILocation(line: 198, column: 5, scope: !3029)
!3095 = !DILocation(line: 198, column: 44, scope: !3029)
!3096 = !DILocation(line: 199, column: 38, scope: !3029)
!3097 = !DILocation(line: 200, column: 5, scope: !3029)
!3098 = !DILocation(line: 200, column: 38, scope: !3029)
!3099 = !DILocation(line: 202, column: 20, scope: !3029)
!3100 = !DILocation(line: 203, column: 18, scope: !3029)
!3101 = !DILocation(line: 205, column: 18, scope: !3029)
!3102 = !DILocation(line: 207, column: 18, scope: !3029)
!3103 = !DILocation(line: 208, column: 18, scope: !3029)
!3104 = !DILocation(line: 209, column: 5, scope: !3029)
!3105 = !DILocation(line: 213, column: 1, scope: !3029)
!3106 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !206, file: !206, line: 215, type: !3107, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3110)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !2962, !154, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "u_port", arg: 1, scope: !3106, file: !206, line: 215, type: !2962)
!3112 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3106, file: !206, line: 215, type: !154)
!3113 = !DILocalVariable(name: "length", arg: 3, scope: !3106, file: !206, line: 215, type: !3109)
!3114 = !DILocation(line: 0, scope: !3106)
!3115 = !DILocation(line: 217, column: 16, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3106, file: !206, line: 217, column: 9)
!3117 = !DILocation(line: 0, scope: !3116)
!3118 = !DILocation(line: 217, column: 9, scope: !3106)
!3119 = !DILocation(line: 218, column: 13, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !206, line: 217, column: 31)
!3121 = !DILocation(line: 219, column: 23, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !206, line: 218, column: 20)
!3123 = distinct !DILexicalBlock(scope: !3120, file: !206, line: 218, column: 13)
!3124 = !DILocation(line: 220, column: 9, scope: !3122)
!3125 = !DILocation(line: 221, column: 23, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !206, line: 220, column: 16)
!3127 = !DILocation(line: 221, column: 21, scope: !3126)
!3128 = !DILocation(line: 222, column: 24, scope: !3126)
!3129 = !DILocation(line: 222, column: 21, scope: !3126)
!3130 = !DILocation(line: 225, column: 13, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3116, file: !206, line: 224, column: 12)
!3132 = !DILocation(line: 226, column: 23, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !206, line: 225, column: 20)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !206, line: 225, column: 13)
!3135 = !DILocation(line: 227, column: 9, scope: !3133)
!3136 = !DILocation(line: 228, column: 23, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3134, file: !206, line: 227, column: 16)
!3138 = !DILocation(line: 228, column: 21, scope: !3137)
!3139 = !DILocation(line: 229, column: 24, scope: !3137)
!3140 = !DILocation(line: 229, column: 21, scope: !3137)
!3141 = !DILocation(line: 233, column: 5, scope: !3106)
!3142 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !206, file: !206, line: 236, type: !3143, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !2962, !162, !73}
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DILocalVariable(name: "u_port", arg: 1, scope: !3142, file: !206, line: 236, type: !2962)
!3147 = !DILocalVariable(name: "data", arg: 2, scope: !3142, file: !206, line: 236, type: !162)
!3148 = !DILocalVariable(name: "length", arg: 3, scope: !3142, file: !206, line: 236, type: !73)
!3149 = !DILocalVariable(name: "idx", scope: !3142, file: !206, line: 238, type: !64)
!3150 = !DILocation(line: 0, scope: !3142)
!3151 = !DILocation(line: 239, column: 23, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !206, line: 239, column: 5)
!3153 = distinct !DILexicalBlock(scope: !3142, file: !206, line: 239, column: 5)
!3154 = !DILocation(line: 239, column: 5, scope: !3153)
!3155 = !DILocation(line: 240, column: 13, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3152, file: !206, line: 239, column: 40)
!3157 = !DILocation(line: 244, column: 9, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !206, line: 242, column: 42)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !206, line: 242, column: 20)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !206, line: 240, column: 13)
!3161 = !DILocation(line: 0, scope: !3160)
!3162 = !DILocation(line: 239, column: 36, scope: !3152)
!3163 = distinct !{!3163, !3154, !3164}
!3164 = !DILocation(line: 246, column: 5, scope: !3153)
!3165 = !DILocation(line: 249, column: 1, scope: !3142)
!3166 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !206, file: !206, line: 251, type: !3167, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3171)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !2962, !3169, !73}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!3171 = !{!3172, !3173, !3174, !3175}
!3172 = !DILocalVariable(name: "u_port", arg: 1, scope: !3166, file: !206, line: 251, type: !2962)
!3173 = !DILocalVariable(name: "data", arg: 2, scope: !3166, file: !206, line: 251, type: !3169)
!3174 = !DILocalVariable(name: "length", arg: 3, scope: !3166, file: !206, line: 251, type: !73)
!3175 = !DILocalVariable(name: "idx", scope: !3166, file: !206, line: 253, type: !64)
!3176 = !DILocation(line: 0, scope: !3166)
!3177 = !DILocation(line: 254, column: 23, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !206, line: 254, column: 5)
!3179 = distinct !DILexicalBlock(scope: !3166, file: !206, line: 254, column: 5)
!3180 = !DILocation(line: 254, column: 5, scope: !3179)
!3181 = !DILocation(line: 255, column: 13, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !206, line: 254, column: 40)
!3183 = !DILocation(line: 256, column: 61, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !206, line: 255, column: 35)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !206, line: 255, column: 13)
!3186 = !DILocation(line: 256, column: 59, scope: !3184)
!3187 = !DILocation(line: 257, column: 9, scope: !3184)
!3188 = !DILocation(line: 258, column: 61, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !206, line: 257, column: 42)
!3190 = distinct !DILexicalBlock(scope: !3185, file: !206, line: 257, column: 20)
!3191 = !DILocation(line: 258, column: 59, scope: !3189)
!3192 = !DILocation(line: 259, column: 9, scope: !3189)
!3193 = !DILocation(line: 254, column: 36, scope: !3178)
!3194 = distinct !{!3194, !3180, !3195}
!3195 = !DILocation(line: 261, column: 5, scope: !3179)
!3196 = !DILocation(line: 264, column: 1, scope: !3166)
!3197 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !206, file: !206, line: 266, type: !3198, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3200)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !2962, !162, !73, !73}
!3200 = !{!3201, !3202, !3203, !3204}
!3201 = !DILocalVariable(name: "u_port", arg: 1, scope: !3197, file: !206, line: 266, type: !2962)
!3202 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3197, file: !206, line: 266, type: !162)
!3203 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3197, file: !206, line: 266, type: !73)
!3204 = !DILocalVariable(name: "threshold", arg: 4, scope: !3197, file: !206, line: 266, type: !73)
!3205 = !DILocation(line: 0, scope: !3197)
!3206 = !DILocation(line: 268, column: 9, scope: !3197)
!3207 = !DILocation(line: 274, column: 5, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !206, line: 271, column: 38)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !206, line: 271, column: 16)
!3210 = distinct !DILexicalBlock(scope: !3197, file: !206, line: 268, column: 9)
!3211 = !DILocation(line: 0, scope: !3210)
!3212 = !DILocation(line: 276, column: 1, scope: !3197)
!3213 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !206, file: !206, line: 278, type: !3214, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !2962, !162, !73, !73, !73, !73}
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222}
!3217 = !DILocalVariable(name: "u_port", arg: 1, scope: !3213, file: !206, line: 278, type: !2962)
!3218 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3213, file: !206, line: 278, type: !162)
!3219 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3213, file: !206, line: 278, type: !73)
!3220 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3213, file: !206, line: 278, type: !73)
!3221 = !DILocalVariable(name: "threshold", arg: 5, scope: !3213, file: !206, line: 278, type: !73)
!3222 = !DILocalVariable(name: "timeout", arg: 6, scope: !3213, file: !206, line: 278, type: !73)
!3223 = !DILocation(line: 0, scope: !3213)
!3224 = !DILocation(line: 280, column: 9, scope: !3213)
!3225 = !DILocation(line: 286, column: 5, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !206, line: 283, column: 38)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !206, line: 283, column: 16)
!3228 = distinct !DILexicalBlock(scope: !3213, file: !206, line: 280, column: 9)
!3229 = !DILocation(line: 0, scope: !3228)
!3230 = !DILocation(line: 288, column: 1, scope: !3213)
!3231 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !206, file: !206, line: 290, type: !3232, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3234)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{null, !2962, !582}
!3234 = !{!3235, !3236}
!3235 = !DILocalVariable(name: "u_port", arg: 1, scope: !3231, file: !206, line: 290, type: !2962)
!3236 = !DILocalVariable(name: "func", arg: 2, scope: !3231, file: !206, line: 290, type: !582)
!3237 = !DILocation(line: 0, scope: !3231)
!3238 = !DILocation(line: 292, column: 9, scope: !3231)
!3239 = !DILocation(line: 296, column: 5, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3241, file: !206, line: 294, column: 38)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !206, line: 294, column: 16)
!3242 = distinct !DILexicalBlock(scope: !3231, file: !206, line: 292, column: 9)
!3243 = !DILocation(line: 0, scope: !3242)
!3244 = !DILocation(line: 298, column: 1, scope: !3231)
!3245 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !206, file: !206, line: 300, type: !3232, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3246)
!3246 = !{!3247, !3248}
!3247 = !DILocalVariable(name: "u_port", arg: 1, scope: !3245, file: !206, line: 300, type: !2962)
!3248 = !DILocalVariable(name: "func", arg: 2, scope: !3245, file: !206, line: 300, type: !582)
!3249 = !DILocation(line: 0, scope: !3245)
!3250 = !DILocation(line: 302, column: 9, scope: !3245)
!3251 = !DILocation(line: 306, column: 5, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !206, line: 304, column: 38)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !206, line: 304, column: 16)
!3254 = distinct !DILexicalBlock(scope: !3245, file: !206, line: 302, column: 9)
!3255 = !DILocation(line: 0, scope: !3254)
!3256 = !DILocation(line: 308, column: 1, scope: !3245)
!3257 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !206, file: !206, line: 310, type: !3016, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3258)
!3258 = !{!3259, !3260, !3261, !3262}
!3259 = !DILocalVariable(name: "u_port", arg: 1, scope: !3257, file: !206, line: 310, type: !2962)
!3260 = !DILocalVariable(name: "base", scope: !3257, file: !206, line: 312, type: !53)
!3261 = !DILocalVariable(name: "EFR", scope: !3257, file: !206, line: 313, type: !3032)
!3262 = !DILocalVariable(name: "LCR", scope: !3257, file: !206, line: 313, type: !3032)
!3263 = !DILocation(line: 0, scope: !3257)
!3264 = !DILocation(line: 312, column: 25, scope: !3257)
!3265 = !DILocation(line: 315, column: 11, scope: !3257)
!3266 = !DILocation(line: 317, column: 33, scope: !3257)
!3267 = !DILocation(line: 318, column: 11, scope: !3257)
!3268 = !DILocation(line: 320, column: 35, scope: !3257)
!3269 = !DILocation(line: 320, column: 33, scope: !3257)
!3270 = !DILocation(line: 322, column: 5, scope: !3257)
!3271 = !DILocation(line: 322, column: 39, scope: !3257)
!3272 = !DILocation(line: 324, column: 33, scope: !3257)
!3273 = !DILocation(line: 325, column: 5, scope: !3257)
!3274 = !DILocation(line: 325, column: 33, scope: !3257)
!3275 = !DILocation(line: 327, column: 35, scope: !3257)
!3276 = !DILocation(line: 327, column: 33, scope: !3257)
!3277 = !DILocation(line: 328, column: 1, scope: !3257)
!3278 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !206, file: !206, line: 330, type: !3279, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3281)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !2962, !163, !163, !163}
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288}
!3282 = !DILocalVariable(name: "u_port", arg: 1, scope: !3278, file: !206, line: 330, type: !2962)
!3283 = !DILocalVariable(name: "xon", arg: 2, scope: !3278, file: !206, line: 330, type: !163)
!3284 = !DILocalVariable(name: "xoff", arg: 3, scope: !3278, file: !206, line: 330, type: !163)
!3285 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3278, file: !206, line: 330, type: !163)
!3286 = !DILocalVariable(name: "base", scope: !3278, file: !206, line: 332, type: !53)
!3287 = !DILocalVariable(name: "EFR", scope: !3278, file: !206, line: 333, type: !3032)
!3288 = !DILocalVariable(name: "LCR", scope: !3278, file: !206, line: 333, type: !3032)
!3289 = !DILocation(line: 0, scope: !3278)
!3290 = !DILocation(line: 332, column: 25, scope: !3278)
!3291 = !DILocation(line: 335, column: 11, scope: !3278)
!3292 = !DILocation(line: 337, column: 33, scope: !3278)
!3293 = !DILocation(line: 338, column: 36, scope: !3278)
!3294 = !DILocation(line: 338, column: 5, scope: !3278)
!3295 = !DILocation(line: 338, column: 34, scope: !3278)
!3296 = !DILocation(line: 339, column: 5, scope: !3278)
!3297 = !DILocation(line: 339, column: 34, scope: !3278)
!3298 = !DILocation(line: 340, column: 37, scope: !3278)
!3299 = !DILocation(line: 340, column: 5, scope: !3278)
!3300 = !DILocation(line: 340, column: 35, scope: !3278)
!3301 = !DILocation(line: 341, column: 5, scope: !3278)
!3302 = !DILocation(line: 341, column: 35, scope: !3278)
!3303 = !DILocation(line: 343, column: 11, scope: !3278)
!3304 = !DILocation(line: 345, column: 35, scope: !3278)
!3305 = !DILocation(line: 345, column: 33, scope: !3278)
!3306 = !DILocation(line: 347, column: 35, scope: !3278)
!3307 = !DILocation(line: 347, column: 33, scope: !3278)
!3308 = !DILocation(line: 349, column: 43, scope: !3278)
!3309 = !DILocation(line: 349, column: 5, scope: !3278)
!3310 = !DILocation(line: 349, column: 41, scope: !3278)
!3311 = !DILocation(line: 350, column: 5, scope: !3278)
!3312 = !DILocation(line: 350, column: 39, scope: !3278)
!3313 = !DILocation(line: 351, column: 1, scope: !3278)
!3314 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !206, file: !206, line: 353, type: !3016, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3315)
!3315 = !{!3316, !3317, !3318}
!3316 = !DILocalVariable(name: "u_port", arg: 1, scope: !3314, file: !206, line: 353, type: !2962)
!3317 = !DILocalVariable(name: "base", scope: !3314, file: !206, line: 355, type: !53)
!3318 = !DILocalVariable(name: "LCR", scope: !3314, file: !206, line: 356, type: !3032)
!3319 = !DILocation(line: 0, scope: !3314)
!3320 = !DILocation(line: 355, column: 25, scope: !3314)
!3321 = !DILocation(line: 358, column: 11, scope: !3314)
!3322 = !DILocation(line: 360, column: 33, scope: !3314)
!3323 = !DILocation(line: 362, column: 5, scope: !3314)
!3324 = !DILocation(line: 362, column: 33, scope: !3314)
!3325 = !DILocation(line: 364, column: 33, scope: !3314)
!3326 = !DILocation(line: 366, column: 35, scope: !3314)
!3327 = !DILocation(line: 366, column: 33, scope: !3314)
!3328 = !DILocation(line: 367, column: 1, scope: !3314)
!3329 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !206, file: !206, line: 436, type: !3016, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3330)
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "u_port", arg: 1, scope: !3329, file: !206, line: 436, type: !2962)
!3332 = !DILocalVariable(name: "base", scope: !3329, file: !206, line: 438, type: !53)
!3333 = !DILocation(line: 0, scope: !3329)
!3334 = !DILocation(line: 438, column: 25, scope: !3329)
!3335 = !DILocation(line: 440, column: 5, scope: !3329)
!3336 = !DILocation(line: 440, column: 33, scope: !3329)
!3337 = !DILocation(line: 441, column: 5, scope: !3329)
!3338 = !DILocation(line: 441, column: 33, scope: !3329)
!3339 = !DILocation(line: 442, column: 5, scope: !3329)
!3340 = !DILocation(line: 442, column: 34, scope: !3329)
!3341 = !DILocation(line: 443, column: 5, scope: !3329)
!3342 = !DILocation(line: 443, column: 35, scope: !3329)
!3343 = !DILocation(line: 445, column: 33, scope: !3329)
!3344 = !DILocation(line: 446, column: 5, scope: !3329)
!3345 = !DILocation(line: 446, column: 33, scope: !3329)
!3346 = !DILocation(line: 447, column: 5, scope: !3329)
!3347 = !DILocation(line: 447, column: 33, scope: !3329)
!3348 = !DILocation(line: 449, column: 33, scope: !3329)
!3349 = !DILocation(line: 450, column: 33, scope: !3329)
!3350 = !DILocation(line: 451, column: 33, scope: !3329)
!3351 = !DILocation(line: 453, column: 33, scope: !3329)
!3352 = !DILocation(line: 454, column: 33, scope: !3329)
!3353 = !DILocation(line: 455, column: 33, scope: !3329)
!3354 = !DILocation(line: 457, column: 33, scope: !3329)
!3355 = !DILocation(line: 458, column: 5, scope: !3329)
!3356 = !DILocation(line: 458, column: 33, scope: !3329)
!3357 = !DILocation(line: 459, column: 5, scope: !3329)
!3358 = !DILocation(line: 459, column: 39, scope: !3329)
!3359 = !DILocation(line: 460, column: 5, scope: !3329)
!3360 = !DILocation(line: 460, column: 40, scope: !3329)
!3361 = !DILocation(line: 461, column: 5, scope: !3329)
!3362 = !DILocation(line: 461, column: 42, scope: !3329)
!3363 = !DILocation(line: 462, column: 5, scope: !3329)
!3364 = !DILocation(line: 462, column: 42, scope: !3329)
!3365 = !DILocation(line: 463, column: 5, scope: !3329)
!3366 = !DILocation(line: 463, column: 35, scope: !3329)
!3367 = !DILocation(line: 464, column: 5, scope: !3329)
!3368 = !DILocation(line: 464, column: 41, scope: !3329)
!3369 = !DILocation(line: 465, column: 5, scope: !3329)
!3370 = !DILocation(line: 465, column: 39, scope: !3329)
!3371 = !DILocation(line: 466, column: 5, scope: !3329)
!3372 = !DILocation(line: 466, column: 38, scope: !3329)
!3373 = !DILocation(line: 467, column: 5, scope: !3329)
!3374 = !DILocation(line: 467, column: 42, scope: !3329)
!3375 = !DILocation(line: 468, column: 5, scope: !3329)
!3376 = !DILocation(line: 468, column: 45, scope: !3329)
!3377 = !DILocation(line: 469, column: 5, scope: !3329)
!3378 = !DILocation(line: 469, column: 39, scope: !3329)
!3379 = !DILocation(line: 470, column: 5, scope: !3329)
!3380 = !DILocation(line: 470, column: 39, scope: !3329)
!3381 = !DILocation(line: 471, column: 5, scope: !3329)
!3382 = !DILocation(line: 471, column: 42, scope: !3329)
!3383 = !DILocation(line: 472, column: 1, scope: !3329)
!3384 = distinct !DISubprogram(name: "uart_query_empty", scope: !206, file: !206, line: 474, type: !3016, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3385)
!3385 = !{!3386, !3387}
!3386 = !DILocalVariable(name: "u_port", arg: 1, scope: !3384, file: !206, line: 474, type: !2962)
!3387 = !DILocalVariable(name: "base", scope: !3384, file: !206, line: 476, type: !53)
!3388 = !DILocation(line: 0, scope: !3384)
!3389 = !DILocation(line: 476, column: 25, scope: !3384)
!3390 = !DILocation(line: 478, column: 5, scope: !3384)
!3391 = !DILocation(line: 478, column: 14, scope: !3384)
!3392 = !DILocation(line: 478, column: 42, scope: !3384)
!3393 = !DILocation(line: 478, column: 12, scope: !3384)
!3394 = distinct !{!3394, !3390, !3395}
!3395 = !DILocation(line: 478, column: 50, scope: !3384)
!3396 = !DILocation(line: 479, column: 1, scope: !3384)
!3397 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1047, file: !1047, line: 64, type: !3398, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !731, !7, !731, null}
!3400 = !{!3401, !3402, !3403, !3404, !3413}
!3401 = !DILocalVariable(name: "func", arg: 1, scope: !3397, file: !1047, line: 64, type: !731)
!3402 = !DILocalVariable(name: "line", arg: 2, scope: !3397, file: !1047, line: 64, type: !7)
!3403 = !DILocalVariable(name: "message", arg: 3, scope: !3397, file: !1047, line: 64, type: !731)
!3404 = !DILocalVariable(name: "ap", scope: !3397, file: !1047, line: 66, type: !3405)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3406, line: 46, baseType: !3407)
!3406 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3408, line: 32, baseType: !3409)
!3408 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1047, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3411)
!3411 = !{!3412}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3410, file: !1047, line: 66, baseType: !68, size: 32)
!3413 = !DILocalVariable(name: "mask", scope: !3397, file: !1047, line: 68, type: !73)
!3414 = !DILocation(line: 0, scope: !3397)
!3415 = !DILocation(line: 66, column: 5, scope: !3397)
!3416 = !DILocation(line: 66, column: 13, scope: !3397)
!3417 = !DILocation(line: 68, column: 5, scope: !3397)
!3418 = !DILocation(line: 69, column: 5, scope: !3397)
!3419 = !DILocation(line: 71, column: 5, scope: !3397)
!3420 = !DILocation(line: 72, column: 5, scope: !3397)
!3421 = !DILocation(line: 73, column: 5, scope: !3397)
!3422 = !DILocation(line: 75, column: 37, scope: !3397)
!3423 = !DILocation(line: 75, column: 5, scope: !3397)
!3424 = !DILocation(line: 77, column: 1, scope: !3397)
!3425 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1047, file: !1047, line: 78, type: !3398, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431}
!3427 = !DILocalVariable(name: "func", arg: 1, scope: !3425, file: !1047, line: 78, type: !731)
!3428 = !DILocalVariable(name: "line", arg: 2, scope: !3425, file: !1047, line: 78, type: !7)
!3429 = !DILocalVariable(name: "message", arg: 3, scope: !3425, file: !1047, line: 78, type: !731)
!3430 = !DILocalVariable(name: "ap", scope: !3425, file: !1047, line: 80, type: !3405)
!3431 = !DILocalVariable(name: "mask", scope: !3425, file: !1047, line: 82, type: !73)
!3432 = !DILocation(line: 0, scope: !3425)
!3433 = !DILocation(line: 80, column: 5, scope: !3425)
!3434 = !DILocation(line: 80, column: 13, scope: !3425)
!3435 = !DILocation(line: 82, column: 5, scope: !3425)
!3436 = !DILocation(line: 83, column: 5, scope: !3425)
!3437 = !DILocation(line: 85, column: 5, scope: !3425)
!3438 = !DILocation(line: 86, column: 5, scope: !3425)
!3439 = !DILocation(line: 87, column: 5, scope: !3425)
!3440 = !DILocation(line: 89, column: 37, scope: !3425)
!3441 = !DILocation(line: 89, column: 5, scope: !3425)
!3442 = !DILocation(line: 91, column: 1, scope: !3425)
!3443 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1047, file: !1047, line: 92, type: !3398, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3444)
!3444 = !{!3445, !3446, !3447, !3448, !3449}
!3445 = !DILocalVariable(name: "func", arg: 1, scope: !3443, file: !1047, line: 92, type: !731)
!3446 = !DILocalVariable(name: "line", arg: 2, scope: !3443, file: !1047, line: 92, type: !7)
!3447 = !DILocalVariable(name: "message", arg: 3, scope: !3443, file: !1047, line: 92, type: !731)
!3448 = !DILocalVariable(name: "ap", scope: !3443, file: !1047, line: 94, type: !3405)
!3449 = !DILocalVariable(name: "mask", scope: !3443, file: !1047, line: 96, type: !73)
!3450 = !DILocation(line: 0, scope: !3443)
!3451 = !DILocation(line: 94, column: 5, scope: !3443)
!3452 = !DILocation(line: 94, column: 13, scope: !3443)
!3453 = !DILocation(line: 96, column: 5, scope: !3443)
!3454 = !DILocation(line: 97, column: 5, scope: !3443)
!3455 = !DILocation(line: 99, column: 5, scope: !3443)
!3456 = !DILocation(line: 100, column: 5, scope: !3443)
!3457 = !DILocation(line: 101, column: 5, scope: !3443)
!3458 = !DILocation(line: 103, column: 37, scope: !3443)
!3459 = !DILocation(line: 103, column: 5, scope: !3443)
!3460 = !DILocation(line: 105, column: 1, scope: !3443)
!3461 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1047, file: !1047, line: 106, type: !3398, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467}
!3463 = !DILocalVariable(name: "func", arg: 1, scope: !3461, file: !1047, line: 106, type: !731)
!3464 = !DILocalVariable(name: "line", arg: 2, scope: !3461, file: !1047, line: 106, type: !7)
!3465 = !DILocalVariable(name: "message", arg: 3, scope: !3461, file: !1047, line: 106, type: !731)
!3466 = !DILocalVariable(name: "ap", scope: !3461, file: !1047, line: 108, type: !3405)
!3467 = !DILocalVariable(name: "mask", scope: !3461, file: !1047, line: 110, type: !73)
!3468 = !DILocation(line: 0, scope: !3461)
!3469 = !DILocation(line: 108, column: 5, scope: !3461)
!3470 = !DILocation(line: 108, column: 13, scope: !3461)
!3471 = !DILocation(line: 110, column: 5, scope: !3461)
!3472 = !DILocation(line: 111, column: 5, scope: !3461)
!3473 = !DILocation(line: 113, column: 5, scope: !3461)
!3474 = !DILocation(line: 114, column: 5, scope: !3461)
!3475 = !DILocation(line: 115, column: 5, scope: !3461)
!3476 = !DILocation(line: 117, column: 37, scope: !3461)
!3477 = !DILocation(line: 117, column: 5, scope: !3461)
!3478 = !DILocation(line: 119, column: 1, scope: !3461)
!3479 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1047, file: !1047, line: 121, type: !3480, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3484)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !731, !7, !731, !3482, !7, null}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3484 = !{!3485, !3486, !3487, !3488, !3489}
!3485 = !DILocalVariable(name: "func", arg: 1, scope: !3479, file: !1047, line: 121, type: !731)
!3486 = !DILocalVariable(name: "line", arg: 2, scope: !3479, file: !1047, line: 121, type: !7)
!3487 = !DILocalVariable(name: "message", arg: 3, scope: !3479, file: !1047, line: 121, type: !731)
!3488 = !DILocalVariable(name: "data", arg: 4, scope: !3479, file: !1047, line: 121, type: !3482)
!3489 = !DILocalVariable(name: "length", arg: 5, scope: !3479, file: !1047, line: 121, type: !7)
!3490 = !DILocation(line: 0, scope: !3479)
!3491 = !DILocation(line: 123, column: 1, scope: !3479)
!3492 = distinct !DISubprogram(name: "hal_cache_init", scope: !242, file: !242, line: 53, type: !3493, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3496)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !245, line: 172, baseType: !244)
!3496 = !{!3497, !3499}
!3497 = !DILocalVariable(name: "region", scope: !3492, file: !242, line: 55, type: !3498)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !245, line: 204, baseType: !255)
!3499 = !DILocalVariable(name: "irq_flag", scope: !3492, file: !242, line: 56, type: !73)
!3500 = !DILocation(line: 59, column: 16, scope: !3492)
!3501 = !DILocation(line: 0, scope: !3492)
!3502 = !DILocation(line: 62, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3492, file: !242, line: 62, column: 9)
!3504 = !{i8 0, i8 2}
!3505 = !DILocation(line: 62, column: 9, scope: !3492)
!3506 = !DILocation(line: 64, column: 9, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3503, file: !242, line: 62, column: 39)
!3508 = !DILocation(line: 66, column: 9, scope: !3507)
!3509 = !DILocation(line: 69, column: 24, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3503, file: !242, line: 67, column: 12)
!3511 = !DILocation(line: 72, column: 9, scope: !3510)
!3512 = !DILocation(line: 77, column: 5, scope: !3492)
!3513 = !DILocation(line: 80, column: 22, scope: !3492)
!3514 = !DILocation(line: 81, column: 28, scope: !3492)
!3515 = !DILocation(line: 84, column: 19, scope: !3492)
!3516 = !DILocation(line: 85, column: 23, scope: !3492)
!3517 = !DILocation(line: 88, column: 5, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3492, file: !242, line: 88, column: 5)
!3519 = !DILocation(line: 90, column: 9, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !242, line: 88, column: 81)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !242, line: 88, column: 5)
!3522 = !DILocation(line: 90, column: 38, scope: !3520)
!3523 = !DILocation(line: 91, column: 9, scope: !3520)
!3524 = !DILocation(line: 91, column: 42, scope: !3520)
!3525 = !DILocation(line: 94, column: 45, scope: !3520)
!3526 = !DILocation(line: 94, column: 47, scope: !3520)
!3527 = !DILocation(line: 95, column: 49, scope: !3520)
!3528 = !DILocation(line: 95, column: 51, scope: !3520)
!3529 = !DILocation(line: 88, column: 77, scope: !3521)
!3530 = !DILocation(line: 88, column: 46, scope: !3521)
!3531 = distinct !{!3531, !3517, !3532}
!3532 = !DILocation(line: 96, column: 5, scope: !3518)
!3533 = !DILocation(line: 99, column: 1, scope: !3492)
!3534 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !242, file: !242, line: 327, type: !3493, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3535)
!3535 = !{!3536}
!3536 = !DILocalVariable(name: "irq_flag", scope: !3534, file: !242, line: 329, type: !73)
!3537 = !DILocation(line: 332, column: 16, scope: !3534)
!3538 = !DILocation(line: 0, scope: !3534)
!3539 = !DILocation(line: 335, column: 21, scope: !3534)
!3540 = !DILocation(line: 336, column: 21, scope: !3534)
!3541 = !DILocation(line: 339, column: 21, scope: !3534)
!3542 = !DILocation(line: 340, column: 21, scope: !3534)
!3543 = !DILocation(line: 434, column: 3, scope: !3544, inlinedAt: !3546)
!3544 = distinct !DISubprogram(name: "__ISB", scope: !3545, file: !3545, line: 432, type: !81, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2281)
!3545 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_polling/GCC")
!3546 = distinct !DILocation(line: 343, column: 5, scope: !3534)
!3547 = !{i64 296584}
!3548 = !DILocation(line: 346, column: 5, scope: !3534)
!3549 = !DILocation(line: 348, column: 5, scope: !3534)
!3550 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !242, file: !242, line: 101, type: !3493, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3551)
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "region", scope: !3550, file: !242, line: 103, type: !3498)
!3553 = !DILocation(line: 107, column: 5, scope: !3550)
!3554 = !DILocation(line: 110, column: 22, scope: !3550)
!3555 = !DILocation(line: 111, column: 28, scope: !3550)
!3556 = !DILocation(line: 114, column: 19, scope: !3550)
!3557 = !DILocation(line: 115, column: 23, scope: !3550)
!3558 = !DILocation(line: 0, scope: !3550)
!3559 = !DILocation(line: 118, column: 5, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3550, file: !242, line: 118, column: 5)
!3561 = !DILocation(line: 120, column: 9, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !242, line: 118, column: 81)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !242, line: 118, column: 5)
!3564 = !DILocation(line: 120, column: 38, scope: !3562)
!3565 = !DILocation(line: 121, column: 9, scope: !3562)
!3566 = !DILocation(line: 121, column: 42, scope: !3562)
!3567 = !DILocation(line: 124, column: 45, scope: !3562)
!3568 = !DILocation(line: 124, column: 47, scope: !3562)
!3569 = !DILocation(line: 125, column: 49, scope: !3562)
!3570 = !DILocation(line: 125, column: 51, scope: !3562)
!3571 = !DILocation(line: 118, column: 77, scope: !3563)
!3572 = !DILocation(line: 118, column: 46, scope: !3563)
!3573 = distinct !{!3573, !3559, !3574}
!3574 = !DILocation(line: 126, column: 5, scope: !3560)
!3575 = !DILocation(line: 129, column: 20, scope: !3550)
!3576 = !DILocation(line: 131, column: 5, scope: !3550)
!3577 = distinct !DISubprogram(name: "hal_cache_enable", scope: !242, file: !242, line: 134, type: !3493, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2281)
!3578 = !DILocation(line: 137, column: 45, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3577, file: !242, line: 137, column: 9)
!3580 = !DILocation(line: 137, column: 28, scope: !3579)
!3581 = !DILocation(line: 137, column: 9, scope: !3577)
!3582 = !DILocation(line: 142, column: 22, scope: !3577)
!3583 = !DILocation(line: 145, column: 28, scope: !3577)
!3584 = !DILocation(line: 145, column: 19, scope: !3577)
!3585 = !DILocation(line: 147, column: 5, scope: !3577)
!3586 = !DILocation(line: 0, scope: !3577)
!3587 = !DILocation(line: 148, column: 1, scope: !3577)
!3588 = distinct !DISubprogram(name: "hal_cache_disable", scope: !242, file: !242, line: 150, type: !3493, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3589)
!3589 = !{!3590}
!3590 = !DILocalVariable(name: "irq_flag", scope: !3588, file: !242, line: 152, type: !73)
!3591 = !DILocation(line: 155, column: 16, scope: !3588)
!3592 = !DILocation(line: 0, scope: !3588)
!3593 = !DILocation(line: 158, column: 16, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3588, file: !242, line: 158, column: 9)
!3595 = !DILocation(line: 158, column: 26, scope: !3594)
!3596 = !DILocation(line: 158, column: 9, scope: !3588)
!3597 = !DILocation(line: 160, column: 9, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3594, file: !242, line: 158, column: 49)
!3599 = !DILocation(line: 161, column: 5, scope: !3598)
!3600 = !DILocation(line: 164, column: 22, scope: !3588)
!3601 = !DILocation(line: 167, column: 28, scope: !3588)
!3602 = !DILocation(line: 167, column: 19, scope: !3588)
!3603 = !DILocation(line: 170, column: 5, scope: !3588)
!3604 = !DILocation(line: 172, column: 5, scope: !3588)
!3605 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !242, file: !242, line: 175, type: !3606, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3608)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3495, !3498}
!3608 = !{!3609}
!3609 = !DILocalVariable(name: "region", arg: 1, scope: !3605, file: !242, line: 175, type: !3498)
!3610 = !DILocation(line: 0, scope: !3605)
!3611 = !DILocation(line: 178, column: 16, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3605, file: !242, line: 178, column: 9)
!3613 = !DILocation(line: 178, column: 9, scope: !3605)
!3614 = !DILocation(line: 183, column: 9, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3605, file: !242, line: 183, column: 9)
!3616 = !DILocation(line: 183, column: 38, scope: !3615)
!3617 = !DILocation(line: 183, column: 9, scope: !3605)
!3618 = !DILocation(line: 184, column: 38, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !242, line: 183, column: 62)
!3620 = !DILocation(line: 184, column: 32, scope: !3619)
!3621 = !DILocation(line: 190, column: 32, scope: !3605)
!3622 = !DILocation(line: 190, column: 23, scope: !3605)
!3623 = !DILocation(line: 192, column: 5, scope: !3605)
!3624 = !DILocation(line: 193, column: 1, scope: !3605)
!3625 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !242, file: !242, line: 195, type: !3606, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3626)
!3626 = !{!3627}
!3627 = !DILocalVariable(name: "region", arg: 1, scope: !3625, file: !242, line: 195, type: !3498)
!3628 = !DILocation(line: 0, scope: !3625)
!3629 = !DILocation(line: 198, column: 16, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3625, file: !242, line: 198, column: 9)
!3631 = !DILocation(line: 198, column: 9, scope: !3625)
!3632 = !DILocation(line: 203, column: 35, scope: !3625)
!3633 = !DILocation(line: 203, column: 31, scope: !3625)
!3634 = !DILocation(line: 203, column: 28, scope: !3625)
!3635 = !DILocation(line: 206, column: 32, scope: !3625)
!3636 = !DILocation(line: 206, column: 23, scope: !3625)
!3637 = !DILocation(line: 209, column: 41, scope: !3625)
!3638 = !DILocation(line: 209, column: 43, scope: !3625)
!3639 = !DILocation(line: 210, column: 45, scope: !3625)
!3640 = !DILocation(line: 210, column: 47, scope: !3625)
!3641 = !DILocation(line: 212, column: 5, scope: !3625)
!3642 = !DILocation(line: 213, column: 1, scope: !3625)
!3643 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !242, file: !242, line: 215, type: !3644, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3647)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3495, !3646}
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !245, line: 182, baseType: !274)
!3647 = !{!3648}
!3648 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3643, file: !242, line: 215, type: !3646)
!3649 = !DILocation(line: 0, scope: !3643)
!3650 = !DILocation(line: 218, column: 20, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !242, line: 218, column: 9)
!3652 = !DILocation(line: 218, column: 9, scope: !3643)
!3653 = !DILocation(line: 223, column: 22, scope: !3643)
!3654 = !DILocation(line: 224, column: 37, scope: !3643)
!3655 = !DILocation(line: 224, column: 22, scope: !3643)
!3656 = !DILocation(line: 227, column: 20, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3643, file: !242, line: 227, column: 9)
!3658 = !DILocation(line: 227, column: 9, scope: !3643)
!3659 = !DILocation(line: 228, column: 26, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !242, line: 227, column: 43)
!3661 = !DILocation(line: 229, column: 5, scope: !3660)
!3662 = !DILocation(line: 232, column: 28, scope: !3643)
!3663 = !DILocation(line: 232, column: 19, scope: !3643)
!3664 = !DILocation(line: 234, column: 5, scope: !3643)
!3665 = !DILocation(line: 235, column: 1, scope: !3643)
!3666 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !242, file: !242, line: 237, type: !3667, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3676)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!3495, !3498, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3671)
!3671 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !245, line: 222, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 219, size: 64, elements: !3673)
!3673 = !{!3674, !3675}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3672, file: !245, line: 220, baseType: !73, size: 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3672, file: !245, line: 221, baseType: !73, size: 32, offset: 32)
!3676 = !{!3677, !3678}
!3677 = !DILocalVariable(name: "region", arg: 1, scope: !3666, file: !242, line: 237, type: !3498)
!3678 = !DILocalVariable(name: "region_config", arg: 2, scope: !3666, file: !242, line: 237, type: !3669)
!3679 = !DILocation(line: 0, scope: !3666)
!3680 = !DILocation(line: 240, column: 16, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3666, file: !242, line: 240, column: 9)
!3682 = !DILocation(line: 240, column: 9, scope: !3666)
!3683 = !DILocation(line: 245, column: 23, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3666, file: !242, line: 245, column: 9)
!3685 = !DILocation(line: 245, column: 9, scope: !3666)
!3686 = !DILocation(line: 250, column: 24, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3666, file: !242, line: 250, column: 9)
!3688 = !DILocation(line: 250, column: 45, scope: !3687)
!3689 = !DILocation(line: 250, column: 9, scope: !3666)
!3690 = !DILocation(line: 251, column: 9, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3687, file: !242, line: 250, column: 81)
!3692 = !DILocation(line: 256, column: 24, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3666, file: !242, line: 256, column: 9)
!3694 = !DILocation(line: 256, column: 42, scope: !3693)
!3695 = !DILocation(line: 256, column: 9, scope: !3666)
!3696 = !DILocation(line: 257, column: 9, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3693, file: !242, line: 256, column: 78)
!3698 = !DILocation(line: 262, column: 5, scope: !3666)
!3699 = !DILocation(line: 262, column: 34, scope: !3666)
!3700 = !DILocation(line: 263, column: 55, scope: !3666)
!3701 = !DILocation(line: 263, column: 93, scope: !3666)
!3702 = !DILocation(line: 263, column: 76, scope: !3666)
!3703 = !DILocation(line: 263, column: 5, scope: !3666)
!3704 = !DILocation(line: 263, column: 38, scope: !3666)
!3705 = !DILocation(line: 266, column: 34, scope: !3666)
!3706 = !DILocation(line: 269, column: 45, scope: !3666)
!3707 = !DILocation(line: 269, column: 41, scope: !3666)
!3708 = !DILocation(line: 269, column: 43, scope: !3666)
!3709 = !DILocation(line: 270, column: 49, scope: !3666)
!3710 = !DILocation(line: 270, column: 45, scope: !3666)
!3711 = !DILocation(line: 270, column: 47, scope: !3666)
!3712 = !DILocation(line: 272, column: 5, scope: !3666)
!3713 = !DILocation(line: 273, column: 1, scope: !3666)
!3714 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !242, file: !242, line: 275, type: !3715, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!3495, !73}
!3717 = !{!3718, !3719}
!3718 = !DILocalVariable(name: "address", arg: 1, scope: !3714, file: !242, line: 275, type: !73)
!3719 = !DILocalVariable(name: "irq_flag", scope: !3714, file: !242, line: 277, type: !73)
!3720 = !DILocation(line: 0, scope: !3714)
!3721 = !DILocation(line: 280, column: 17, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3714, file: !242, line: 280, column: 9)
!3723 = !DILocation(line: 280, column: 9, scope: !3714)
!3724 = !DILocation(line: 284, column: 16, scope: !3714)
!3725 = !DILocation(line: 287, column: 32, scope: !3714)
!3726 = !DILocation(line: 287, column: 21, scope: !3714)
!3727 = !DILocation(line: 288, column: 21, scope: !3714)
!3728 = !DILocation(line: 434, column: 3, scope: !3544, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 291, column: 5, scope: !3714)
!3730 = !DILocation(line: 294, column: 5, scope: !3714)
!3731 = !DILocation(line: 296, column: 5, scope: !3714)
!3732 = !DILocation(line: 297, column: 1, scope: !3714)
!3733 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !242, file: !242, line: 299, type: !3734, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3495, !73, !73}
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "address", arg: 1, scope: !3733, file: !242, line: 299, type: !73)
!3738 = !DILocalVariable(name: "length", arg: 2, scope: !3733, file: !242, line: 299, type: !73)
!3739 = !DILocalVariable(name: "irq_flag", scope: !3733, file: !242, line: 301, type: !73)
!3740 = !DILocalVariable(name: "end_address", scope: !3733, file: !242, line: 302, type: !73)
!3741 = !DILocation(line: 0, scope: !3733)
!3742 = !DILocation(line: 302, column: 36, scope: !3733)
!3743 = !DILocation(line: 305, column: 47, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3733, file: !242, line: 305, column: 9)
!3745 = !DILocation(line: 310, column: 16, scope: !3733)
!3746 = !DILocation(line: 313, column: 20, scope: !3733)
!3747 = !DILocation(line: 313, column: 5, scope: !3733)
!3748 = !DILocation(line: 314, column: 9, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3733, file: !242, line: 313, column: 35)
!3750 = !DILocation(line: 315, column: 17, scope: !3749)
!3751 = distinct !{!3751, !3747, !3752}
!3752 = !DILocation(line: 316, column: 5, scope: !3733)
!3753 = !DILocation(line: 434, column: 3, scope: !3544, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 319, column: 5, scope: !3733)
!3755 = !DILocation(line: 322, column: 5, scope: !3733)
!3756 = !DILocation(line: 324, column: 5, scope: !3733)
!3757 = !DILocation(line: 325, column: 1, scope: !3733)
!3758 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !242, file: !242, line: 351, type: !3715, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3759)
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "address", arg: 1, scope: !3758, file: !242, line: 351, type: !73)
!3761 = !DILocalVariable(name: "irq_flag", scope: !3758, file: !242, line: 353, type: !73)
!3762 = !DILocation(line: 0, scope: !3758)
!3763 = !DILocation(line: 356, column: 17, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3758, file: !242, line: 356, column: 9)
!3765 = !DILocation(line: 356, column: 9, scope: !3758)
!3766 = !DILocation(line: 361, column: 16, scope: !3758)
!3767 = !DILocation(line: 364, column: 32, scope: !3758)
!3768 = !DILocation(line: 364, column: 21, scope: !3758)
!3769 = !DILocation(line: 365, column: 21, scope: !3758)
!3770 = !DILocation(line: 434, column: 3, scope: !3544, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 368, column: 5, scope: !3758)
!3772 = !DILocation(line: 371, column: 5, scope: !3758)
!3773 = !DILocation(line: 373, column: 5, scope: !3758)
!3774 = !DILocation(line: 374, column: 1, scope: !3758)
!3775 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !242, file: !242, line: 376, type: !3734, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3776)
!3776 = !{!3777, !3778, !3779, !3780}
!3777 = !DILocalVariable(name: "address", arg: 1, scope: !3775, file: !242, line: 376, type: !73)
!3778 = !DILocalVariable(name: "length", arg: 2, scope: !3775, file: !242, line: 376, type: !73)
!3779 = !DILocalVariable(name: "irq_flag", scope: !3775, file: !242, line: 378, type: !73)
!3780 = !DILocalVariable(name: "end_address", scope: !3775, file: !242, line: 379, type: !73)
!3781 = !DILocation(line: 0, scope: !3775)
!3782 = !DILocation(line: 379, column: 36, scope: !3775)
!3783 = !DILocation(line: 382, column: 47, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3775, file: !242, line: 382, column: 9)
!3785 = !DILocation(line: 387, column: 16, scope: !3775)
!3786 = !DILocation(line: 390, column: 20, scope: !3775)
!3787 = !DILocation(line: 390, column: 5, scope: !3775)
!3788 = !DILocation(line: 391, column: 9, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3775, file: !242, line: 390, column: 35)
!3790 = !DILocation(line: 392, column: 17, scope: !3789)
!3791 = distinct !{!3791, !3787, !3792}
!3792 = !DILocation(line: 393, column: 5, scope: !3775)
!3793 = !DILocation(line: 434, column: 3, scope: !3544, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 396, column: 5, scope: !3775)
!3795 = !DILocation(line: 399, column: 5, scope: !3775)
!3796 = !DILocation(line: 401, column: 5, scope: !3775)
!3797 = !DILocation(line: 402, column: 1, scope: !3775)
!3798 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !242, file: !242, line: 404, type: !3493, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3799)
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "irq_flag", scope: !3798, file: !242, line: 406, type: !73)
!3801 = !DILocation(line: 409, column: 16, scope: !3798)
!3802 = !DILocation(line: 0, scope: !3798)
!3803 = !DILocation(line: 412, column: 21, scope: !3798)
!3804 = !DILocation(line: 413, column: 21, scope: !3798)
!3805 = !DILocation(line: 434, column: 3, scope: !3544, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 416, column: 5, scope: !3798)
!3807 = !DILocation(line: 419, column: 5, scope: !3798)
!3808 = !DILocation(line: 421, column: 5, scope: !3798)
!3809 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !242, file: !242, line: 424, type: !3810, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!322, !73}
!3812 = !{!3813, !3814}
!3813 = !DILocalVariable(name: "address", arg: 1, scope: !3809, file: !242, line: 424, type: !73)
!3814 = !DILocalVariable(name: "region", scope: !3809, file: !242, line: 426, type: !3498)
!3815 = !DILocation(line: 0, scope: !3809)
!3816 = !DILocation(line: 429, column: 18, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3809, file: !242, line: 429, column: 9)
!3818 = !DILocation(line: 429, column: 28, scope: !3817)
!3819 = !DILocation(line: 429, column: 9, scope: !3809)
!3820 = !DILocation(line: 435, column: 20, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !242, line: 435, column: 13)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !242, line: 433, column: 81)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !242, line: 433, column: 5)
!3824 = distinct !DILexicalBlock(scope: !3809, file: !242, line: 433, column: 5)
!3825 = !DILocation(line: 435, column: 41, scope: !3821)
!3826 = !DILocation(line: 435, column: 36, scope: !3821)
!3827 = !DILocation(line: 435, column: 13, scope: !3822)
!3828 = !DILocation(line: 436, column: 30, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !242, line: 436, column: 17)
!3830 = distinct !DILexicalBlock(scope: !3821, file: !242, line: 435, column: 53)
!3831 = !DILocation(line: 436, column: 59, scope: !3829)
!3832 = !DILocation(line: 436, column: 26, scope: !3829)
!3833 = !DILocation(line: 436, column: 85, scope: !3829)
!3834 = !DILocation(line: 436, column: 99, scope: !3829)
!3835 = !DILocation(line: 436, column: 97, scope: !3829)
!3836 = !DILocation(line: 436, column: 17, scope: !3830)
!3837 = !DILocation(line: 433, column: 77, scope: !3823)
!3838 = !DILocation(line: 433, column: 46, scope: !3823)
!3839 = !DILocation(line: 433, column: 5, scope: !3824)
!3840 = distinct !{!3840, !3839, !3841}
!3841 = !DILocation(line: 440, column: 5, scope: !3824)
!3842 = !DILocation(line: 442, column: 1, scope: !3809)
!3843 = distinct !DISubprogram(name: "hal_nvic_init", scope: !326, file: !326, line: 60, type: !3844, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2281)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !329, line: 158, baseType: !328)
!3847 = !DILocation(line: 62, column: 5, scope: !3843)
!3848 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !326, file: !326, line: 65, type: !3849, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!3846, !337}
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3848, file: !326, line: 65, type: !337)
!3853 = !DILocalVariable(name: "status", scope: !3848, file: !326, line: 67, type: !3846)
!3854 = !DILocation(line: 0, scope: !3848)
!3855 = !DILocation(line: 69, column: 40, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3848, file: !326, line: 69, column: 9)
!3857 = !DILocation(line: 73, column: 9, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3856, file: !326, line: 72, column: 12)
!3859 = !DILocation(line: 77, column: 5, scope: !3848)
!3860 = !DILocation(line: 78, column: 1, scope: !3848)
!3861 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !341, file: !341, line: 1494, type: !3862, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !338}
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3861, file: !341, line: 1494, type: !338)
!3866 = !DILocation(line: 0, scope: !3861)
!3867 = !DILocation(line: 1497, column: 91, scope: !3861)
!3868 = !DILocation(line: 1497, column: 61, scope: !3861)
!3869 = !DILocation(line: 1497, column: 40, scope: !3861)
!3870 = !DILocation(line: 1497, column: 3, scope: !3861)
!3871 = !DILocation(line: 1497, column: 46, scope: !3861)
!3872 = !DILocation(line: 1498, column: 1, scope: !3861)
!3873 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !326, file: !326, line: 80, type: !3849, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3874)
!3874 = !{!3875, !3876}
!3875 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3873, file: !326, line: 80, type: !337)
!3876 = !DILocalVariable(name: "status", scope: !3873, file: !326, line: 82, type: !3846)
!3877 = !DILocation(line: 0, scope: !3873)
!3878 = !DILocation(line: 84, column: 40, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3873, file: !326, line: 84, column: 9)
!3880 = !DILocation(line: 88, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3879, file: !326, line: 87, column: 12)
!3882 = !DILocation(line: 92, column: 5, scope: !3873)
!3883 = !DILocation(line: 93, column: 1, scope: !3873)
!3884 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !341, file: !341, line: 1507, type: !3862, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3885)
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3884, file: !341, line: 1507, type: !338)
!3887 = !DILocation(line: 0, scope: !3884)
!3888 = !DILocation(line: 1509, column: 65, scope: !3884)
!3889 = !DILocation(line: 1509, column: 44, scope: !3884)
!3890 = !DILocation(line: 1509, column: 32, scope: !3884)
!3891 = !DILocation(line: 1509, column: 3, scope: !3884)
!3892 = !DILocation(line: 1509, column: 39, scope: !3884)
!3893 = !DILocation(line: 1510, column: 1, scope: !3884)
!3894 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !326, file: !326, line: 95, type: !3895, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!73, !337}
!3897 = !{!3898, !3899}
!3898 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3894, file: !326, line: 95, type: !337)
!3899 = !DILocalVariable(name: "ret", scope: !3894, file: !326, line: 97, type: !73)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 99, column: 40, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3894, file: !326, line: 99, column: 9)
!3903 = !DILocation(line: 102, column: 15, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3902, file: !326, line: 101, column: 12)
!3905 = !DILocation(line: 105, column: 5, scope: !3894)
!3906 = !DILocation(line: 106, column: 1, scope: !3894)
!3907 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !341, file: !341, line: 1523, type: !3908, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3910)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!73, !338}
!3910 = !{!3911}
!3911 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3907, file: !341, line: 1523, type: !338)
!3912 = !DILocation(line: 0, scope: !3907)
!3913 = !DILocation(line: 1525, column: 51, scope: !3907)
!3914 = !DILocation(line: 1525, column: 23, scope: !3907)
!3915 = !DILocation(line: 1525, column: 83, scope: !3907)
!3916 = !DILocation(line: 1525, column: 22, scope: !3907)
!3917 = !DILocation(line: 1525, column: 3, scope: !3907)
!3918 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !326, file: !326, line: 108, type: !3849, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3919)
!3919 = !{!3920, !3921}
!3920 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3918, file: !326, line: 108, type: !337)
!3921 = !DILocalVariable(name: "status", scope: !3918, file: !326, line: 110, type: !3846)
!3922 = !DILocation(line: 0, scope: !3918)
!3923 = !DILocation(line: 112, column: 40, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3918, file: !326, line: 112, column: 9)
!3925 = !DILocation(line: 116, column: 9, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3924, file: !326, line: 115, column: 12)
!3927 = !DILocation(line: 120, column: 5, scope: !3918)
!3928 = !DILocation(line: 121, column: 1, scope: !3918)
!3929 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !341, file: !341, line: 1535, type: !3862, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3930)
!3930 = !{!3931}
!3931 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3929, file: !341, line: 1535, type: !338)
!3932 = !DILocation(line: 0, scope: !3929)
!3933 = !DILocation(line: 1537, column: 65, scope: !3929)
!3934 = !DILocation(line: 1537, column: 44, scope: !3929)
!3935 = !DILocation(line: 1537, column: 32, scope: !3929)
!3936 = !DILocation(line: 1537, column: 3, scope: !3929)
!3937 = !DILocation(line: 1537, column: 39, scope: !3929)
!3938 = !DILocation(line: 1538, column: 1, scope: !3929)
!3939 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !326, file: !326, line: 123, type: !3849, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3940)
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3939, file: !326, line: 123, type: !337)
!3942 = !DILocalVariable(name: "status", scope: !3939, file: !326, line: 125, type: !3846)
!3943 = !DILocation(line: 0, scope: !3939)
!3944 = !DILocation(line: 127, column: 40, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3939, file: !326, line: 127, column: 9)
!3946 = !DILocation(line: 131, column: 9, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3945, file: !326, line: 130, column: 12)
!3948 = !DILocation(line: 135, column: 5, scope: !3939)
!3949 = !DILocation(line: 136, column: 1, scope: !3939)
!3950 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !341, file: !341, line: 1547, type: !3862, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3951)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3950, file: !341, line: 1547, type: !338)
!3953 = !DILocation(line: 0, scope: !3950)
!3954 = !DILocation(line: 1549, column: 65, scope: !3950)
!3955 = !DILocation(line: 1549, column: 44, scope: !3950)
!3956 = !DILocation(line: 1549, column: 32, scope: !3950)
!3957 = !DILocation(line: 1549, column: 3, scope: !3950)
!3958 = !DILocation(line: 1549, column: 39, scope: !3950)
!3959 = !DILocation(line: 1550, column: 1, scope: !3950)
!3960 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !326, file: !326, line: 138, type: !3961, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!3846, !337, !73}
!3963 = !{!3964, !3965, !3966}
!3964 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3960, file: !326, line: 138, type: !337)
!3965 = !DILocalVariable(name: "priority", arg: 2, scope: !3960, file: !326, line: 138, type: !73)
!3966 = !DILocalVariable(name: "status", scope: !3960, file: !326, line: 140, type: !3846)
!3967 = !DILocation(line: 0, scope: !3960)
!3968 = !DILocation(line: 142, column: 40, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3960, file: !326, line: 142, column: 9)
!3970 = !DILocation(line: 146, column: 9, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3969, file: !326, line: 145, column: 12)
!3972 = !DILocation(line: 150, column: 5, scope: !3960)
!3973 = !DILocation(line: 151, column: 1, scope: !3960)
!3974 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !341, file: !341, line: 1577, type: !3975, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{null, !338, !73}
!3977 = !{!3978, !3979}
!3978 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3974, file: !341, line: 1577, type: !338)
!3979 = !DILocalVariable(name: "priority", arg: 2, scope: !3974, file: !341, line: 1577, type: !73)
!3980 = !DILocation(line: 0, scope: !3974)
!3981 = !DILocation(line: 1582, column: 34, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3983, file: !341, line: 1581, column: 8)
!3983 = distinct !DILexicalBlock(scope: !3974, file: !341, line: 1579, column: 6)
!3984 = !DILocation(line: 1582, column: 5, scope: !3982)
!3985 = !DILocation(line: 1582, column: 32, scope: !3982)
!3986 = !DILocation(line: 1583, column: 1, scope: !3974)
!3987 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !326, file: !326, line: 153, type: !3895, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3988)
!3988 = !{!3989, !3990}
!3989 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3987, file: !326, line: 153, type: !337)
!3990 = !DILocalVariable(name: "ret", scope: !3987, file: !326, line: 155, type: !73)
!3991 = !DILocation(line: 0, scope: !3987)
!3992 = !DILocation(line: 157, column: 40, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3987, file: !326, line: 157, column: 9)
!3994 = !DILocation(line: 160, column: 15, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3993, file: !326, line: 159, column: 12)
!3996 = !DILocation(line: 163, column: 5, scope: !3987)
!3997 = !DILocation(line: 164, column: 1, scope: !3987)
!3998 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !341, file: !341, line: 1597, type: !3908, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3999)
!3999 = !{!4000}
!4000 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3998, file: !341, line: 1597, type: !338)
!4001 = !DILocation(line: 0, scope: !3998)
!4002 = !DILocation(line: 1603, column: 23, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !341, line: 1602, column: 8)
!4004 = distinct !DILexicalBlock(scope: !3998, file: !341, line: 1600, column: 6)
!4005 = !DILocation(line: 1603, column: 60, scope: !4003)
!4006 = !DILocation(line: 1604, column: 1, scope: !3998)
!4007 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !326, file: !326, line: 173, type: !81, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2281)
!4008 = !DILocation(line: 175, column: 1, scope: !4007)
!4009 = distinct !DISubprogram(name: "isrC_main", scope: !326, file: !326, line: 178, type: !3844, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4010)
!4010 = !{!4011, !4012}
!4011 = !DILocalVariable(name: "status", scope: !4009, file: !326, line: 180, type: !3846)
!4012 = !DILocalVariable(name: "irq_number", scope: !4009, file: !326, line: 181, type: !337)
!4013 = !DILocation(line: 0, scope: !4009)
!4014 = !DILocation(line: 188, column: 34, scope: !4009)
!4015 = !DILocation(line: 189, column: 24, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4009, file: !326, line: 189, column: 9)
!4017 = !DILocation(line: 192, column: 48, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4016, file: !326, line: 192, column: 16)
!4019 = !DILocation(line: 192, column: 62, scope: !4018)
!4020 = !DILocation(line: 192, column: 16, scope: !4016)
!4021 = !DILocation(line: 194, column: 9, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4018, file: !326, line: 192, column: 71)
!4023 = !DILocation(line: 195, column: 9, scope: !4022)
!4024 = !DILocation(line: 197, column: 55, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4018, file: !326, line: 196, column: 12)
!4026 = !DILocation(line: 197, column: 41, scope: !4025)
!4027 = !DILocation(line: 197, column: 53, scope: !4025)
!4028 = !DILocation(line: 198, column: 41, scope: !4025)
!4029 = !DILocation(line: 198, column: 9, scope: !4025)
!4030 = !DILocation(line: 202, column: 5, scope: !4009)
!4031 = !DILocation(line: 203, column: 1, scope: !4009)
!4032 = distinct !DISubprogram(name: "get_current_irq", scope: !326, file: !326, line: 166, type: !2265, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4033)
!4033 = !{!4034}
!4034 = !DILocalVariable(name: "irq_num", scope: !4032, file: !326, line: 168, type: !73)
!4035 = !DILocation(line: 168, column: 31, scope: !4032)
!4036 = !DILocation(line: 168, column: 36, scope: !4032)
!4037 = !DILocation(line: 0, scope: !4032)
!4038 = !DILocation(line: 169, column: 21, scope: !4032)
!4039 = !DILocation(line: 169, column: 5, scope: !4032)
!4040 = distinct !DISubprogram(name: "get_pending_irq", scope: !326, file: !326, line: 55, type: !2265, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2281)
!4041 = !DILocation(line: 57, column: 19, scope: !4040)
!4042 = !DILocation(line: 57, column: 51, scope: !4040)
!4043 = !DILocation(line: 57, column: 5, scope: !4040)
!4044 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !326, file: !326, line: 205, type: !4045, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4048)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!3846, !337, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !329, line: 175, baseType: !418)
!4048 = !{!4049, !4050, !4051}
!4049 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4044, file: !326, line: 205, type: !337)
!4050 = !DILocalVariable(name: "callback", arg: 2, scope: !4044, file: !326, line: 205, type: !4047)
!4051 = !DILocalVariable(name: "mask", scope: !4044, file: !326, line: 207, type: !73)
!4052 = !DILocation(line: 0, scope: !4044)
!4053 = !DILocation(line: 209, column: 24, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4044, file: !326, line: 209, column: 9)
!4055 = !DILocation(line: 213, column: 12, scope: !4044)
!4056 = !DILocation(line: 214, column: 5, scope: !4044)
!4057 = !DILocation(line: 215, column: 37, scope: !4044)
!4058 = !DILocation(line: 215, column: 51, scope: !4044)
!4059 = !DILocation(line: 216, column: 37, scope: !4044)
!4060 = !DILocation(line: 216, column: 49, scope: !4044)
!4061 = !DILocation(line: 217, column: 5, scope: !4044)
!4062 = !DILocation(line: 219, column: 5, scope: !4044)
!4063 = !DILocation(line: 220, column: 1, scope: !4044)
!4064 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !326, file: !326, line: 222, type: !4065, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4067)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!3846, !3109}
!4067 = !{!4068}
!4068 = !DILocalVariable(name: "mask", arg: 1, scope: !4064, file: !326, line: 222, type: !3109)
!4069 = !DILocation(line: 0, scope: !4064)
!4070 = !DILocation(line: 224, column: 13, scope: !4064)
!4071 = !DILocation(line: 224, column: 11, scope: !4064)
!4072 = !DILocation(line: 225, column: 5, scope: !4064)
!4073 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !326, file: !326, line: 228, type: !4074, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4076)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!3846, !73}
!4076 = !{!4077}
!4077 = !DILocalVariable(name: "mask", arg: 1, scope: !4073, file: !326, line: 228, type: !73)
!4078 = !DILocation(line: 0, scope: !4073)
!4079 = !DILocation(line: 230, column: 5, scope: !4073)
!4080 = !DILocation(line: 231, column: 5, scope: !4073)
!4081 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1049, file: !1049, line: 50, type: !4082, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4085)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!4084, !512, !163}
!4084 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !145, line: 238, baseType: !1051)
!4085 = !{!4086, !4087, !4088}
!4086 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4081, file: !1049, line: 50, type: !512)
!4087 = !DILocalVariable(name: "function_index", arg: 2, scope: !4081, file: !1049, line: 50, type: !163)
!4088 = !DILocalVariable(name: "ret_value", scope: !4081, file: !1049, line: 52, type: !154)
!4089 = !DILocation(line: 0, scope: !4081)
!4090 = !DILocation(line: 53, column: 18, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4081, file: !1049, line: 53, column: 9)
!4092 = !DILocation(line: 53, column: 9, scope: !4081)
!4093 = !DILocation(line: 57, column: 24, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4081, file: !1049, line: 57, column: 9)
!4095 = !DILocation(line: 57, column: 9, scope: !4081)
!4096 = !DILocation(line: 57, column: 9, scope: !4094)
!4097 = !DILocation(line: 60, column: 17, scope: !4081)
!4098 = !DILocation(line: 61, column: 12, scope: !4081)
!4099 = !DILocation(line: 61, column: 5, scope: !4081)
!4100 = !DILocation(line: 62, column: 1, scope: !4081)
!4101 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1049, file: !1049, line: 64, type: !4102, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4105)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!4104, !512}
!4104 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !145, line: 229, baseType: !1057)
!4105 = !{!4106}
!4106 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4101, file: !1049, line: 64, type: !512)
!4107 = !DILocation(line: 0, scope: !4101)
!4108 = !DILocation(line: 66, column: 5, scope: !4101)
!4109 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1049, file: !1049, line: 69, type: !4102, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4110)
!4110 = !{!4111}
!4111 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4109, file: !1049, line: 69, type: !512)
!4112 = !DILocation(line: 0, scope: !4109)
!4113 = !DILocation(line: 71, column: 5, scope: !4109)
!4114 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1049, file: !1049, line: 74, type: !4115, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4118)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!4104, !512, !4117}
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 32)
!4118 = !{!4119, !4120, !4121}
!4119 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4114, file: !1049, line: 74, type: !512)
!4120 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4114, file: !1049, line: 74, type: !4117)
!4121 = !DILocalVariable(name: "status", scope: !4114, file: !1049, line: 76, type: !4122)
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !120, line: 67, baseType: !4123)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 62, size: 64, elements: !4124)
!4124 = !{!4125, !4126, !4127, !4128}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4123, file: !120, line: 63, baseType: !73, size: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4123, file: !120, line: 64, baseType: !163, size: 8, offset: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4123, file: !120, line: 65, baseType: !163, size: 8, offset: 40)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4123, file: !120, line: 66, baseType: !163, size: 8, offset: 48)
!4129 = !DILocation(line: 0, scope: !4114)
!4130 = !DILocation(line: 77, column: 14, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4114, file: !1049, line: 77, column: 9)
!4132 = !DILocation(line: 77, column: 9, scope: !4114)
!4133 = !DILocation(line: 81, column: 18, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4114, file: !1049, line: 81, column: 9)
!4135 = !DILocation(line: 81, column: 9, scope: !4114)
!4136 = !DILocation(line: 85, column: 14, scope: !4114)
!4137 = !DILocation(line: 86, column: 18, scope: !4114)
!4138 = !DILocation(line: 86, column: 16, scope: !4114)
!4139 = !DILocation(line: 87, column: 5, scope: !4114)
!4140 = !DILocation(line: 88, column: 1, scope: !4114)
!4141 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1049, file: !1049, line: 90, type: !4142, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!4104, !512, !1071}
!4144 = !{!4145, !4146, !4147}
!4145 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4141, file: !1049, line: 90, type: !512)
!4146 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4141, file: !1049, line: 90, type: !1071)
!4147 = !DILocalVariable(name: "ret_value", scope: !4141, file: !1049, line: 92, type: !154)
!4148 = !DILocation(line: 0, scope: !4141)
!4149 = !DILocation(line: 93, column: 18, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4141, file: !1049, line: 93, column: 9)
!4151 = !DILocation(line: 93, column: 9, scope: !4141)
!4152 = !DILocation(line: 97, column: 60, scope: !4141)
!4153 = !DILocation(line: 97, column: 17, scope: !4141)
!4154 = !DILocation(line: 98, column: 12, scope: !4141)
!4155 = !DILocation(line: 98, column: 5, scope: !4141)
!4156 = !DILocation(line: 99, column: 1, scope: !4141)
!4157 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1049, file: !1049, line: 101, type: !4115, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4158)
!4158 = !{!4159, !4160, !4161}
!4159 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4157, file: !1049, line: 101, type: !512)
!4160 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4157, file: !1049, line: 101, type: !4117)
!4161 = !DILocalVariable(name: "status", scope: !4157, file: !1049, line: 103, type: !4122)
!4162 = !DILocation(line: 0, scope: !4157)
!4163 = !DILocation(line: 104, column: 18, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4157, file: !1049, line: 104, column: 9)
!4165 = !DILocation(line: 104, column: 9, scope: !4157)
!4166 = !DILocation(line: 108, column: 14, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4157, file: !1049, line: 108, column: 9)
!4168 = !DILocation(line: 108, column: 9, scope: !4157)
!4169 = !DILocation(line: 112, column: 14, scope: !4157)
!4170 = !DILocation(line: 113, column: 18, scope: !4157)
!4171 = !DILocation(line: 113, column: 16, scope: !4157)
!4172 = !DILocation(line: 114, column: 5, scope: !4157)
!4173 = !DILocation(line: 115, column: 1, scope: !4157)
!4174 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1049, file: !1049, line: 117, type: !4175, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4178)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!4104, !512, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !145, line: 213, baseType: !149)
!4178 = !{!4179, !4180, !4181}
!4179 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4174, file: !1049, line: 117, type: !512)
!4180 = !DILocalVariable(name: "direction", arg: 2, scope: !4174, file: !1049, line: 117, type: !4177)
!4181 = !DILocalVariable(name: "ret_value", scope: !4174, file: !1049, line: 119, type: !154)
!4182 = !DILocation(line: 0, scope: !4174)
!4183 = !DILocation(line: 120, column: 18, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4174, file: !1049, line: 120, column: 9)
!4185 = !DILocation(line: 120, column: 9, scope: !4174)
!4186 = !DILocation(line: 123, column: 17, scope: !4174)
!4187 = !DILocation(line: 125, column: 12, scope: !4174)
!4188 = !DILocation(line: 125, column: 5, scope: !4174)
!4189 = !DILocation(line: 126, column: 1, scope: !4174)
!4190 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1049, file: !1049, line: 128, type: !4191, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4194)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!4104, !512, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 32)
!4194 = !{!4195, !4196, !4197}
!4195 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4190, file: !1049, line: 128, type: !512)
!4196 = !DILocalVariable(name: "direction", arg: 2, scope: !4190, file: !1049, line: 128, type: !4193)
!4197 = !DILocalVariable(name: "status", scope: !4190, file: !1049, line: 131, type: !4122)
!4198 = !DILocation(line: 0, scope: !4190)
!4199 = !DILocation(line: 132, column: 18, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4190, file: !1049, line: 132, column: 9)
!4201 = !DILocation(line: 132, column: 9, scope: !4190)
!4202 = !DILocation(line: 136, column: 14, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4190, file: !1049, line: 136, column: 9)
!4204 = !DILocation(line: 136, column: 9, scope: !4190)
!4205 = !DILocation(line: 140, column: 14, scope: !4190)
!4206 = !DILocation(line: 141, column: 18, scope: !4190)
!4207 = !DILocation(line: 141, column: 16, scope: !4190)
!4208 = !DILocation(line: 142, column: 5, scope: !4190)
!4209 = !DILocation(line: 143, column: 1, scope: !4190)
!4210 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1049, file: !1049, line: 146, type: !4102, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4211)
!4211 = !{!4212, !4213}
!4212 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4210, file: !1049, line: 146, type: !512)
!4213 = !DILocalVariable(name: "status", scope: !4210, file: !1049, line: 148, type: !4122)
!4214 = !DILocation(line: 0, scope: !4210)
!4215 = !DILocation(line: 149, column: 18, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4210, file: !1049, line: 149, column: 9)
!4217 = !DILocation(line: 149, column: 9, scope: !4210)
!4218 = !DILocation(line: 153, column: 14, scope: !4210)
!4219 = !DILocation(line: 154, column: 76, scope: !4210)
!4220 = !DILocation(line: 154, column: 12, scope: !4210)
!4221 = !DILocation(line: 154, column: 5, scope: !4210)
!4222 = !DILocation(line: 155, column: 1, scope: !4210)
!4223 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1049, file: !1049, line: 157, type: !4102, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4224)
!4224 = !{!4225, !4226}
!4225 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4223, file: !1049, line: 157, type: !512)
!4226 = !DILocalVariable(name: "ret_value", scope: !4223, file: !1049, line: 159, type: !154)
!4227 = !DILocation(line: 0, scope: !4223)
!4228 = !DILocation(line: 160, column: 18, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4223, file: !1049, line: 160, column: 9)
!4230 = !DILocation(line: 160, column: 9, scope: !4223)
!4231 = !DILocation(line: 164, column: 17, scope: !4223)
!4232 = !DILocation(line: 165, column: 19, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4223, file: !1049, line: 165, column: 9)
!4234 = !DILocation(line: 165, column: 9, scope: !4223)
!4235 = !DILocation(line: 168, column: 17, scope: !4223)
!4236 = !DILocation(line: 169, column: 12, scope: !4223)
!4237 = !DILocation(line: 169, column: 5, scope: !4223)
!4238 = !DILocation(line: 170, column: 1, scope: !4223)
!4239 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1049, file: !1049, line: 172, type: !4102, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4240)
!4240 = !{!4241, !4242}
!4241 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4239, file: !1049, line: 172, type: !512)
!4242 = !DILocalVariable(name: "ret_value", scope: !4239, file: !1049, line: 174, type: !154)
!4243 = !DILocation(line: 0, scope: !4239)
!4244 = !DILocation(line: 175, column: 18, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4239, file: !1049, line: 175, column: 9)
!4246 = !DILocation(line: 175, column: 9, scope: !4239)
!4247 = !DILocation(line: 179, column: 17, scope: !4239)
!4248 = !DILocation(line: 180, column: 19, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4239, file: !1049, line: 180, column: 9)
!4250 = !DILocation(line: 180, column: 9, scope: !4239)
!4251 = !DILocation(line: 183, column: 17, scope: !4239)
!4252 = !DILocation(line: 184, column: 12, scope: !4239)
!4253 = !DILocation(line: 184, column: 5, scope: !4239)
!4254 = !DILocation(line: 185, column: 1, scope: !4239)
!4255 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1049, file: !1049, line: 187, type: !4102, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4256)
!4256 = !{!4257, !4258}
!4257 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4255, file: !1049, line: 187, type: !512)
!4258 = !DILocalVariable(name: "ret_value", scope: !4255, file: !1049, line: 189, type: !154)
!4259 = !DILocation(line: 0, scope: !4255)
!4260 = !DILocation(line: 191, column: 18, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !1049, line: 191, column: 9)
!4262 = !DILocation(line: 191, column: 9, scope: !4255)
!4263 = !DILocation(line: 195, column: 17, scope: !4255)
!4264 = !DILocation(line: 196, column: 12, scope: !4255)
!4265 = !DILocation(line: 196, column: 5, scope: !4255)
!4266 = !DILocation(line: 197, column: 1, scope: !4255)
!4267 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1049, file: !1049, line: 200, type: !4268, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!4104, !512, !1072}
!4270 = !{!4271, !4272, !4273}
!4271 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4267, file: !1049, line: 200, type: !512)
!4272 = !DILocalVariable(name: "driving", arg: 2, scope: !4267, file: !1049, line: 200, type: !1072)
!4273 = !DILocalVariable(name: "ret_value", scope: !4267, file: !1049, line: 202, type: !154)
!4274 = !DILocation(line: 0, scope: !4267)
!4275 = !DILocation(line: 204, column: 18, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4267, file: !1049, line: 204, column: 9)
!4277 = !DILocation(line: 204, column: 9, scope: !4267)
!4278 = !DILocation(line: 208, column: 64, scope: !4267)
!4279 = !DILocation(line: 208, column: 17, scope: !4267)
!4280 = !DILocation(line: 210, column: 12, scope: !4267)
!4281 = !DILocation(line: 210, column: 5, scope: !4267)
!4282 = !DILocation(line: 211, column: 1, scope: !4267)
!4283 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1049, file: !1049, line: 214, type: !4284, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4287)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4104, !512, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 32)
!4287 = !{!4288, !4289, !4290, !4291}
!4288 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4283, file: !1049, line: 214, type: !512)
!4289 = !DILocalVariable(name: "driving", arg: 2, scope: !4283, file: !1049, line: 214, type: !4286)
!4290 = !DILocalVariable(name: "ret_value", scope: !4283, file: !1049, line: 216, type: !154)
!4291 = !DILocalVariable(name: "value", scope: !4283, file: !1049, line: 217, type: !163)
!4292 = !DILocation(line: 0, scope: !4283)
!4293 = !DILocation(line: 217, column: 5, scope: !4283)
!4294 = !DILocation(line: 219, column: 18, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4283, file: !1049, line: 219, column: 9)
!4296 = !DILocation(line: 219, column: 9, scope: !4283)
!4297 = !DILocation(line: 223, column: 17, scope: !4283)
!4298 = !DILocation(line: 225, column: 44, scope: !4283)
!4299 = !DILocation(line: 225, column: 16, scope: !4283)
!4300 = !DILocation(line: 225, column: 14, scope: !4283)
!4301 = !DILocation(line: 227, column: 12, scope: !4283)
!4302 = !DILocation(line: 227, column: 5, scope: !4283)
!4303 = !DILocation(line: 228, column: 1, scope: !4283)
!4304 = distinct !DISubprogram(name: "hal_spi_master_init", scope: !427, file: !427, line: 132, type: !4305, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4310)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!4307, !4308, !4309}
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_status_t", file: !430, line: 556, baseType: !429)
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_port_t", file: !438, line: 462, baseType: !437)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!4310 = !{!4311, !4312, !4313, !4314, !4315, !4316}
!4311 = !DILocalVariable(name: "master_port", arg: 1, scope: !4304, file: !427, line: 132, type: !4308)
!4312 = !DILocalVariable(name: "spi_config", arg: 2, scope: !4304, file: !427, line: 133, type: !4309)
!4313 = !DILocalVariable(name: "settings", scope: !4304, file: !427, line: 135, type: !73)
!4314 = !DILocalVariable(name: "ret_val", scope: !4304, file: !427, line: 136, type: !154)
!4315 = !DILocalVariable(name: "busy_status", scope: !4304, file: !427, line: 137, type: !4307)
!4316 = !DILocalVariable(name: "saved_mask", scope: !4317, file: !427, line: 150, type: !73)
!4317 = distinct !DILexicalBlock(scope: !4304, file: !427, line: 150, column: 5)
!4318 = !DILocation(line: 0, scope: !4304)
!4319 = !DILocation(line: 138, column: 10, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4304, file: !427, line: 138, column: 9)
!4321 = !DILocation(line: 138, column: 9, scope: !4304)
!4322 = !DILocation(line: 141, column: 14, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4304, file: !427, line: 141, column: 9)
!4324 = !DILocation(line: 141, column: 9, scope: !4304)
!4325 = !DILocation(line: 144, column: 22, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4304, file: !427, line: 144, column: 9)
!4327 = !DILocation(line: 144, column: 76, scope: !4326)
!4328 = !DILocation(line: 150, column: 5, scope: !4317)
!4329 = !DILocation(line: 0, scope: !4317)
!4330 = !DILocation(line: 150, column: 5, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4317, file: !427, line: 150, column: 5)
!4332 = !DILocation(line: 151, column: 9, scope: !4304)
!4333 = !DILocation(line: 150, column: 5, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4331, file: !427, line: 150, column: 5)
!4335 = !DILocation(line: 154, column: 43, scope: !4304)
!4336 = !DILocation(line: 154, column: 5, scope: !4304)
!4337 = !DILocation(line: 156, column: 16, scope: !4304)
!4338 = !DILocation(line: 158, column: 65, scope: !4304)
!4339 = !DILocation(line: 158, column: 25, scope: !4304)
!4340 = !{i32 -2, i32 119999999}
!4341 = !DILocation(line: 157, column: 15, scope: !4304)
!4342 = !DILocation(line: 159, column: 17, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4304, file: !427, line: 159, column: 9)
!4344 = !DILocation(line: 159, column: 9, scope: !4304)
!4345 = !DILocation(line: 162, column: 5, scope: !4304)
!4346 = !DILocation(line: 163, column: 35, scope: !4304)
!4347 = !DILocation(line: 163, column: 5, scope: !4304)
!4348 = !DILocation(line: 169, column: 5, scope: !4304)
!4349 = !DILocation(line: 170, column: 1, scope: !4304)
!4350 = distinct !DISubprogram(name: "hal_spi_master_is_master_port_valid", scope: !427, file: !427, line: 60, type: !4351, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!322, !4308}
!4353 = !{!4354}
!4354 = !DILocalVariable(name: "master_port", arg: 1, scope: !4350, file: !427, line: 60, type: !4308)
!4355 = !DILocation(line: 0, scope: !4350)
!4356 = !DILocation(line: 62, column: 24, scope: !4350)
!4357 = !DILocation(line: 62, column: 5, scope: !4350)
!4358 = distinct !DISubprogram(name: "hal_spi_master_map_cs_pin", scope: !427, file: !427, line: 100, type: !4359, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!512, !503}
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "slave_port", arg: 1, scope: !4358, file: !427, line: 100, type: !503)
!4363 = !DILocation(line: 0, scope: !4358)
!4364 = !DILocation(line: 103, column: 32, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4358, file: !427, line: 103, column: 9)
!4366 = !DILocation(line: 103, column: 9, scope: !4358)
!4367 = !DILocation(line: 104, column: 13, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !427, line: 104, column: 13)
!4369 = distinct !DILexicalBlock(scope: !4365, file: !427, line: 103, column: 47)
!4370 = !DILocation(line: 104, column: 13, scope: !4369)
!4371 = !DILocation(line: 105, column: 31, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4368, file: !427, line: 104, column: 35)
!4373 = !DILocation(line: 106, column: 13, scope: !4372)
!4374 = !DILocation(line: 107, column: 9, scope: !4372)
!4375 = !DILocation(line: 107, column: 20, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4368, file: !427, line: 107, column: 20)
!4377 = !DILocation(line: 107, column: 20, scope: !4368)
!4378 = !DILocation(line: 108, column: 31, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4376, file: !427, line: 107, column: 41)
!4380 = !DILocation(line: 109, column: 13, scope: !4379)
!4381 = !DILocation(line: 110, column: 9, scope: !4379)
!4382 = !DILocation(line: 111, column: 13, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4376, file: !427, line: 110, column: 16)
!4384 = !DILocation(line: 112, column: 31, scope: !4383)
!4385 = !DILocation(line: 115, column: 27, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4365, file: !427, line: 114, column: 12)
!4387 = !DILocation(line: 116, column: 9, scope: !4386)
!4388 = !DILocation(line: 118, column: 5, scope: !4358)
!4389 = distinct !DISubprogram(name: "hal_spi_master_build_settings", scope: !427, file: !427, line: 65, type: !4390, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!73, !4309}
!4392 = !{!4393, !4394}
!4393 = !DILocalVariable(name: "spi_config", arg: 1, scope: !4389, file: !427, line: 65, type: !4309)
!4394 = !DILocalVariable(name: "settings", scope: !4389, file: !427, line: 67, type: !73)
!4395 = !DILocation(line: 0, scope: !4389)
!4396 = !DILocation(line: 68, column: 47, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4389, file: !427, line: 68, column: 9)
!4398 = !DILocation(line: 68, column: 32, scope: !4397)
!4399 = !DILocation(line: 73, column: 49, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4389, file: !427, line: 73, column: 9)
!4401 = !DILocation(line: 73, column: 34, scope: !4400)
!4402 = !DILocation(line: 73, column: 9, scope: !4389)
!4403 = !DILocation(line: 78, column: 55, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4389, file: !427, line: 78, column: 9)
!4405 = !DILocation(line: 78, column: 40, scope: !4404)
!4406 = !DILocation(line: 78, column: 9, scope: !4389)
!4407 = !DILocation(line: 83, column: 52, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4389, file: !427, line: 83, column: 9)
!4409 = !DILocation(line: 83, column: 37, scope: !4408)
!4410 = !DILocation(line: 83, column: 9, scope: !4389)
!4411 = !DILocation(line: 88, column: 5, scope: !4389)
!4412 = !DILocation(line: 0, scope: !515)
!4413 = !DILocation(line: 97, column: 33, scope: !515)
!4414 = !DILocation(line: 97, column: 45, scope: !515)
!4415 = !DILocation(line: 97, column: 5, scope: !515)
!4416 = distinct !DISubprogram(name: "hal_spi_master_deinit", scope: !427, file: !427, line: 172, type: !4417, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4419)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!4307, !4308}
!4419 = !{!4420}
!4420 = !DILocalVariable(name: "master_port", arg: 1, scope: !4416, file: !427, line: 172, type: !4308)
!4421 = !DILocation(line: 0, scope: !4416)
!4422 = !DILocation(line: 174, column: 10, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4416, file: !427, line: 174, column: 9)
!4424 = !DILocation(line: 174, column: 9, scope: !4416)
!4425 = !DILocation(line: 177, column: 5, scope: !4416)
!4426 = !DILocation(line: 179, column: 5, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4416, file: !427, line: 179, column: 5)
!4428 = !DILocation(line: 184, column: 5, scope: !4416)
!4429 = !DILocation(line: 185, column: 1, scope: !4416)
!4430 = distinct !DISubprogram(name: "hal_spi_master_send_polling", scope: !427, file: !427, line: 188, type: !4431, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!4307, !4308, !162, !73}
!4433 = !{!4434, !4435, !4436, !4437}
!4434 = !DILocalVariable(name: "master_port", arg: 1, scope: !4430, file: !427, line: 188, type: !4308)
!4435 = !DILocalVariable(name: "data", arg: 2, scope: !4430, file: !427, line: 189, type: !162)
!4436 = !DILocalVariable(name: "size", arg: 3, scope: !4430, file: !427, line: 190, type: !73)
!4437 = !DILocalVariable(name: "ret_val", scope: !4430, file: !427, line: 192, type: !154)
!4438 = !DILocation(line: 0, scope: !4430)
!4439 = !DILocation(line: 193, column: 10, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4430, file: !427, line: 193, column: 9)
!4441 = !DILocation(line: 193, column: 9, scope: !4430)
!4442 = !DILocation(line: 196, column: 14, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4430, file: !427, line: 196, column: 9)
!4444 = !DILocation(line: 196, column: 9, scope: !4430)
!4445 = !DILocation(line: 201, column: 10, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4430, file: !427, line: 201, column: 9)
!4447 = !DILocation(line: 201, column: 35, scope: !4446)
!4448 = !DILocation(line: 201, column: 51, scope: !4446)
!4449 = !DILocation(line: 201, column: 9, scope: !4430)
!4450 = !DILocation(line: 204, column: 25, scope: !4430)
!4451 = !DILocation(line: 204, column: 5, scope: !4430)
!4452 = !DILocation(line: 208, column: 15, scope: !4430)
!4453 = !DILocation(line: 212, column: 25, scope: !4430)
!4454 = !DILocation(line: 212, column: 5, scope: !4430)
!4455 = !DILocation(line: 213, column: 12, scope: !4430)
!4456 = !DILocation(line: 213, column: 5, scope: !4430)
!4457 = !DILocation(line: 214, column: 1, scope: !4430)
!4458 = distinct !DISubprogram(name: "hal_spi_master_send_and_receive_polling", scope: !427, file: !427, line: 218, type: !4459, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4469)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!4307, !4308, !4461}
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_send_and_receive_config_t", file: !430, line: 616, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 611, size: 128, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !4463, file: !430, line: 612, baseType: !162, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "send_length", scope: !4463, file: !430, line: 613, baseType: !73, size: 32, offset: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buffer", scope: !4463, file: !430, line: 614, baseType: !162, size: 32, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "receive_length", scope: !4463, file: !430, line: 615, baseType: !73, size: 32, offset: 96)
!4469 = !{!4470, !4471, !4472}
!4470 = !DILocalVariable(name: "master_port", arg: 1, scope: !4458, file: !427, line: 218, type: !4308)
!4471 = !DILocalVariable(name: "spi_send_and_receive_config", arg: 2, scope: !4458, file: !427, line: 219, type: !4461)
!4472 = !DILocalVariable(name: "ret_val", scope: !4458, file: !427, line: 221, type: !154)
!4473 = !DILocation(line: 0, scope: !4458)
!4474 = !DILocation(line: 222, column: 10, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4458, file: !427, line: 222, column: 9)
!4476 = !DILocation(line: 222, column: 9, scope: !4458)
!4477 = !DILocation(line: 225, column: 47, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4458, file: !427, line: 225, column: 9)
!4479 = !DILocation(line: 225, column: 14, scope: !4478)
!4480 = !DILocation(line: 225, column: 9, scope: !4458)
!4481 = !DILocation(line: 228, column: 47, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4458, file: !427, line: 228, column: 9)
!4483 = !DILocation(line: 228, column: 14, scope: !4482)
!4484 = !DILocation(line: 228, column: 9, scope: !4458)
!4485 = !DILocation(line: 231, column: 38, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4458, file: !427, line: 231, column: 9)
!4487 = !DILocation(line: 231, column: 50, scope: !4486)
!4488 = !DILocation(line: 231, column: 9, scope: !4458)
!4489 = !DILocation(line: 234, column: 84, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4458, file: !427, line: 234, column: 9)
!4491 = !DILocation(line: 234, column: 52, scope: !4490)
!4492 = !DILocation(line: 234, column: 9, scope: !4458)
!4493 = !DILocation(line: 239, column: 10, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4458, file: !427, line: 239, column: 9)
!4495 = !DILocation(line: 239, column: 35, scope: !4494)
!4496 = !DILocation(line: 239, column: 51, scope: !4494)
!4497 = !DILocation(line: 239, column: 9, scope: !4458)
!4498 = !DILocation(line: 242, column: 25, scope: !4458)
!4499 = !DILocation(line: 242, column: 5, scope: !4458)
!4500 = !DILocation(line: 246, column: 25, scope: !4458)
!4501 = !DILocation(line: 247, column: 54, scope: !4458)
!4502 = !DILocation(line: 248, column: 54, scope: !4458)
!4503 = !DILocation(line: 248, column: 69, scope: !4458)
!4504 = !DILocation(line: 249, column: 54, scope: !4458)
!4505 = !DILocation(line: 249, column: 69, scope: !4458)
!4506 = !DILocation(line: 246, column: 15, scope: !4458)
!4507 = !DILocation(line: 253, column: 25, scope: !4458)
!4508 = !DILocation(line: 253, column: 5, scope: !4458)
!4509 = !DILocation(line: 255, column: 12, scope: !4458)
!4510 = !DILocation(line: 255, column: 5, scope: !4458)
!4511 = !DILocation(line: 256, column: 1, scope: !4458)
!4512 = distinct !DISubprogram(name: "hal_spi_build_op_addr", scope: !427, file: !427, line: 121, type: !4513, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4517)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!73, !4515}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4462)
!4517 = !{!4518, !4519, !4520}
!4518 = !DILocalVariable(name: "config", arg: 1, scope: !4512, file: !427, line: 121, type: !4515)
!4519 = !DILocalVariable(name: "op_addr", scope: !4512, file: !427, line: 123, type: !73)
!4520 = !DILocalVariable(name: "index", scope: !4512, file: !427, line: 124, type: !73)
!4521 = !DILocation(line: 0, scope: !4512)
!4522 = !DILocation(line: 126, column: 27, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !427, line: 126, column: 5)
!4524 = distinct !DILexicalBlock(scope: !4512, file: !427, line: 126, column: 5)
!4525 = !DILocation(line: 126, column: 5, scope: !4524)
!4526 = !DILocation(line: 127, column: 31, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4523, file: !427, line: 126, column: 59)
!4528 = !DILocation(line: 127, column: 89, scope: !4527)
!4529 = !DILocation(line: 127, column: 94, scope: !4527)
!4530 = !DILocation(line: 127, column: 56, scope: !4527)
!4531 = !DILocation(line: 127, column: 17, scope: !4527)
!4532 = !DILocation(line: 126, column: 55, scope: !4523)
!4533 = distinct !{!4533, !4525, !4534}
!4534 = !DILocation(line: 128, column: 5, scope: !4524)
!4535 = !DILocation(line: 129, column: 5, scope: !4512)
!4536 = distinct !DISubprogram(name: "hal_spi_master_get_running_status", scope: !427, file: !427, line: 259, type: !4537, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4541)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!4307, !4308, !4539}
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_running_status_t", file: !430, line: 563, baseType: !459)
!4541 = !{!4542, !4543}
!4542 = !DILocalVariable(name: "master_port", arg: 1, scope: !4536, file: !427, line: 259, type: !4308)
!4543 = !DILocalVariable(name: "running_status", arg: 2, scope: !4536, file: !427, line: 260, type: !4539)
!4544 = !DILocation(line: 0, scope: !4536)
!4545 = !DILocation(line: 262, column: 10, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4536, file: !427, line: 262, column: 9)
!4547 = !DILocation(line: 262, column: 9, scope: !4536)
!4548 = !DILocation(line: 265, column: 14, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4536, file: !427, line: 265, column: 9)
!4550 = !DILocation(line: 265, column: 9, scope: !4536)
!4551 = !DILocation(line: 269, column: 10, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4536, file: !427, line: 269, column: 9)
!4553 = !DILocation(line: 0, scope: !4552)
!4554 = !DILocation(line: 275, column: 5, scope: !4536)
!4555 = !DILocation(line: 276, column: 1, scope: !4536)
!4556 = distinct !DISubprogram(name: "hal_uart_init", scope: !523, file: !523, line: 234, type: !4557, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4561)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4559, !583, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !526, line: 351, baseType: !525)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32)
!4561 = !{!4562, !4563}
!4562 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4556, file: !523, line: 234, type: !583)
!4563 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4556, file: !523, line: 234, type: !4560)
!4564 = !DILocation(line: 0, scope: !4556)
!4565 = !DILocation(line: 236, column: 10, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4556, file: !523, line: 236, column: 9)
!4567 = !DILocation(line: 236, column: 9, scope: !4556)
!4568 = !DILocation(line: 239, column: 41, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4556, file: !523, line: 239, column: 9)
!4570 = !DILocation(line: 239, column: 9, scope: !4556)
!4571 = !DILocation(line: 242, column: 5, scope: !4556)
!4572 = !DILocation(line: 243, column: 45, scope: !4556)
!4573 = !DILocation(line: 243, column: 12, scope: !4556)
!4574 = !DILocation(line: 244, column: 12, scope: !4556)
!4575 = !DILocation(line: 243, column: 5, scope: !4556)
!4576 = !DILocation(line: 245, column: 58, scope: !4556)
!4577 = !DILocation(line: 246, column: 30, scope: !4556)
!4578 = !{i32 0, i32 2}
!4579 = !DILocation(line: 246, column: 5, scope: !4556)
!4580 = !DILocation(line: 247, column: 5, scope: !4556)
!4581 = !DILocation(line: 249, column: 31, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4556, file: !523, line: 249, column: 9)
!4583 = !DILocation(line: 249, column: 28, scope: !4582)
!4584 = !DILocation(line: 261, column: 1, scope: !4556)
!4585 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !523, file: !523, line: 93, type: !4586, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4590)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!322, !583, !4588}
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!4590 = !{!4591, !4592}
!4591 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4585, file: !523, line: 93, type: !583)
!4592 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4585, file: !523, line: 93, type: !4588)
!4593 = !DILocation(line: 0, scope: !4585)
!4594 = !DILocation(line: 95, column: 10, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4585, file: !523, line: 95, column: 9)
!4596 = !DILocation(line: 95, column: 9, scope: !4585)
!4597 = !DILocation(line: 101, column: 23, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4585, file: !523, line: 101, column: 9)
!4599 = !DILocation(line: 101, column: 32, scope: !4598)
!4600 = !DILocation(line: 101, column: 60, scope: !4598)
!4601 = !DILocation(line: 102, column: 27, scope: !4598)
!4602 = !DILocation(line: 102, column: 34, scope: !4598)
!4603 = !DILocation(line: 102, column: 58, scope: !4598)
!4604 = !DILocation(line: 103, column: 27, scope: !4598)
!4605 = !DILocation(line: 103, column: 36, scope: !4598)
!4606 = !DILocation(line: 103, column: 59, scope: !4598)
!4607 = !DILocation(line: 104, column: 27, scope: !4598)
!4608 = !DILocation(line: 104, column: 39, scope: !4598)
!4609 = !DILocation(line: 101, column: 9, scope: !4585)
!4610 = !DILocation(line: 109, column: 1, scope: !4585)
!4611 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !523, file: !523, line: 139, type: !4612, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4614)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!2962, !583}
!4614 = !{!4615}
!4615 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4611, file: !523, line: 139, type: !583)
!4616 = !DILocation(line: 0, scope: !4611)
!4617 = !DILocation(line: 141, column: 24, scope: !4611)
!4618 = !DILocation(line: 141, column: 12, scope: !4611)
!4619 = !DILocation(line: 141, column: 5, scope: !4611)
!4620 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !523, file: !523, line: 593, type: !4621, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!4559, !583, !4588}
!4623 = !{!4624, !4625}
!4624 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4620, file: !523, line: 593, type: !583)
!4625 = !DILocalVariable(name: "config", arg: 2, scope: !4620, file: !523, line: 593, type: !4588)
!4626 = !DILocation(line: 0, scope: !4620)
!4627 = !DILocation(line: 595, column: 10, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4620, file: !523, line: 595, column: 9)
!4629 = !DILocation(line: 595, column: 9, scope: !4620)
!4630 = !DILocation(line: 598, column: 45, scope: !4620)
!4631 = !DILocation(line: 598, column: 12, scope: !4620)
!4632 = !DILocation(line: 598, column: 59, scope: !4620)
!4633 = !DILocation(line: 598, column: 5, scope: !4620)
!4634 = !DILocation(line: 599, column: 23, scope: !4620)
!4635 = !DILocation(line: 600, column: 59, scope: !4620)
!4636 = !DILocation(line: 600, column: 23, scope: !4620)
!4637 = !DILocation(line: 601, column: 62, scope: !4620)
!4638 = !DILocation(line: 601, column: 23, scope: !4620)
!4639 = !DILocation(line: 602, column: 57, scope: !4620)
!4640 = !DILocation(line: 602, column: 23, scope: !4620)
!4641 = !DILocation(line: 603, column: 58, scope: !4620)
!4642 = !DILocation(line: 603, column: 23, scope: !4620)
!4643 = !DILocation(line: 599, column: 5, scope: !4620)
!4644 = !DILocation(line: 604, column: 5, scope: !4620)
!4645 = !DILocation(line: 605, column: 1, scope: !4620)
!4646 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !523, file: !523, line: 145, type: !4647, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4649)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!73, !598}
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4646, file: !523, line: 145, type: !598)
!4651 = !DILocalVariable(name: "baudrate_tbl", scope: !4646, file: !523, line: 147, type: !4652)
!4652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 416, elements: !4653)
!4653 = !{!4654}
!4654 = !DISubrange(count: 13)
!4655 = !DILocation(line: 0, scope: !4646)
!4656 = !DILocation(line: 147, column: 14, scope: !4646)
!4657 = !DILocation(line: 151, column: 12, scope: !4646)
!4658 = !DILocation(line: 151, column: 5, scope: !4646)
!4659 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !523, file: !523, line: 155, type: !4660, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!3032, !600}
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "word_length", arg: 1, scope: !4659, file: !523, line: 155, type: !600)
!4664 = !DILocalVariable(name: "databit_tbl", scope: !4659, file: !523, line: 157, type: !4665)
!4665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 64, elements: !403)
!4666 = !DILocation(line: 0, scope: !4659)
!4667 = !DILocation(line: 157, column: 14, scope: !4659)
!4668 = !DILocation(line: 160, column: 12, scope: !4659)
!4669 = !DILocation(line: 160, column: 5, scope: !4659)
!4670 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !523, file: !523, line: 164, type: !4671, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4673)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!3032, !604}
!4673 = !{!4674, !4675}
!4674 = !DILocalVariable(name: "parity", arg: 1, scope: !4670, file: !523, line: 164, type: !604)
!4675 = !DILocalVariable(name: "parity_tbl", scope: !4670, file: !523, line: 166, type: !4676)
!4676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 80, elements: !407)
!4677 = !DILocation(line: 0, scope: !4670)
!4678 = !DILocation(line: 166, column: 14, scope: !4670)
!4679 = !DILocation(line: 169, column: 12, scope: !4670)
!4680 = !DILocation(line: 169, column: 5, scope: !4670)
!4681 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !523, file: !523, line: 173, type: !4682, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4684)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!3032, !602}
!4684 = !{!4685, !4686}
!4685 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4681, file: !523, line: 173, type: !602)
!4686 = !DILocalVariable(name: "stopbit_tbl", scope: !4681, file: !523, line: 175, type: !4687)
!4687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 48, elements: !749)
!4688 = !DILocation(line: 0, scope: !4681)
!4689 = !DILocation(line: 175, column: 14, scope: !4681)
!4690 = !DILocation(line: 178, column: 12, scope: !4681)
!4691 = !DILocation(line: 178, column: 5, scope: !4681)
!4692 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !523, file: !523, line: 87, type: !4693, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!322, !583}
!4695 = !{!4696}
!4696 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4692, file: !523, line: 87, type: !583)
!4697 = !DILocation(line: 0, scope: !4692)
!4698 = !DILocation(line: 89, column: 23, scope: !4692)
!4699 = !DILocation(line: 89, column: 5, scope: !4692)
!4700 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !523, file: !523, line: 264, type: !4701, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4703)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{!4559, !583}
!4703 = !{!4704}
!4704 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4700, file: !523, line: 264, type: !583)
!4705 = !DILocation(line: 0, scope: !4700)
!4706 = !DILocation(line: 266, column: 10, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4700, file: !523, line: 266, column: 9)
!4708 = !DILocation(line: 266, column: 9, scope: !4700)
!4709 = !DILocation(line: 269, column: 41, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4700, file: !523, line: 269, column: 9)
!4711 = !DILocation(line: 269, column: 62, scope: !4710)
!4712 = !DILocation(line: 269, column: 9, scope: !4700)
!4713 = !DILocation(line: 272, column: 5, scope: !4700)
!4714 = !DILocation(line: 275, column: 22, scope: !4700)
!4715 = !DILocation(line: 275, column: 5, scope: !4700)
!4716 = !DILocation(line: 284, column: 5, scope: !4700)
!4717 = !DILocation(line: 286, column: 5, scope: !4700)
!4718 = !DILocation(line: 287, column: 1, scope: !4700)
!4719 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !523, file: !523, line: 290, type: !4720, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4722)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{null, !583, !575}
!4722 = !{!4723, !4724, !4725}
!4723 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4719, file: !523, line: 290, type: !583)
!4724 = !DILocalVariable(name: "byte", arg: 2, scope: !4719, file: !523, line: 290, type: !575)
!4725 = !DILocalVariable(name: "int_no", scope: !4719, file: !523, line: 292, type: !2962)
!4726 = !DILocation(line: 0, scope: !4719)
!4727 = !DILocation(line: 292, column: 26, scope: !4719)
!4728 = !DILocation(line: 294, column: 16, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4719, file: !523, line: 294, column: 9)
!4730 = !DILocation(line: 294, column: 9, scope: !4719)
!4731 = !DILocation(line: 295, column: 9, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4729, file: !523, line: 294, column: 34)
!4733 = !DILocation(line: 296, column: 5, scope: !4732)
!4734 = !DILocation(line: 299, column: 1, scope: !4719)
!4735 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !523, file: !523, line: 302, type: !4736, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!73, !583, !3169, !73}
!4738 = !{!4739, !4740, !4741, !4742, !4743}
!4739 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4735, file: !523, line: 302, type: !583)
!4740 = !DILocalVariable(name: "data", arg: 2, scope: !4735, file: !523, line: 302, type: !3169)
!4741 = !DILocalVariable(name: "size", arg: 3, scope: !4735, file: !523, line: 302, type: !73)
!4742 = !DILocalVariable(name: "int_no", scope: !4735, file: !523, line: 304, type: !2962)
!4743 = !DILocalVariable(name: "index", scope: !4735, file: !523, line: 305, type: !73)
!4744 = !DILocation(line: 0, scope: !4735)
!4745 = !DILocation(line: 304, column: 26, scope: !4735)
!4746 = !DILocation(line: 307, column: 14, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4735, file: !523, line: 307, column: 9)
!4748 = !DILocation(line: 307, column: 9, scope: !4735)
!4749 = !DILocation(line: 313, column: 53, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !523, line: 312, column: 48)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !523, line: 312, column: 9)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !523, line: 312, column: 9)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !523, line: 311, column: 33)
!4754 = distinct !DILexicalBlock(scope: !4735, file: !523, line: 311, column: 9)
!4755 = !DILocation(line: 313, column: 13, scope: !4750)
!4756 = !DILocation(line: 312, column: 44, scope: !4751)
!4757 = !DILocation(line: 312, column: 31, scope: !4751)
!4758 = !DILocation(line: 312, column: 9, scope: !4752)
!4759 = distinct !{!4759, !4758, !4760}
!4760 = !DILocation(line: 314, column: 9, scope: !4752)
!4761 = !DILocation(line: 318, column: 1, scope: !4735)
!4762 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !523, file: !523, line: 320, type: !4736, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4763)
!4763 = !{!4764, !4765, !4766, !4767, !4768, !4769}
!4764 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4762, file: !523, line: 320, type: !583)
!4765 = !DILocalVariable(name: "data", arg: 2, scope: !4762, file: !523, line: 320, type: !3169)
!4766 = !DILocalVariable(name: "size", arg: 3, scope: !4762, file: !523, line: 320, type: !73)
!4767 = !DILocalVariable(name: "actual_space", scope: !4762, file: !523, line: 322, type: !73)
!4768 = !DILocalVariable(name: "send_size", scope: !4762, file: !523, line: 322, type: !73)
!4769 = !DILocalVariable(name: "ch", scope: !4762, file: !523, line: 323, type: !4770)
!4770 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !215, line: 144, baseType: !214)
!4771 = !DILocation(line: 0, scope: !4762)
!4772 = !DILocation(line: 322, column: 5, scope: !4762)
!4773 = !DILocation(line: 328, column: 10, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4762, file: !523, line: 328, column: 9)
!4775 = !DILocation(line: 328, column: 9, scope: !4762)
!4776 = !DILocation(line: 332, column: 15, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4762, file: !523, line: 332, column: 9)
!4778 = !DILocation(line: 332, column: 24, scope: !4777)
!4779 = !DILocation(line: 335, column: 42, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4762, file: !523, line: 335, column: 9)
!4781 = !DILocation(line: 335, column: 9, scope: !4762)
!4782 = !DILocation(line: 349, column: 30, scope: !4762)
!4783 = !DILocation(line: 349, column: 5, scope: !4762)
!4784 = !DILocation(line: 350, column: 9, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4762, file: !523, line: 350, column: 9)
!4786 = !DILocation(line: 350, column: 22, scope: !4785)
!4787 = !DILocation(line: 355, column: 5, scope: !4762)
!4788 = !DILocation(line: 357, column: 22, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4762, file: !523, line: 357, column: 9)
!4790 = !DILocation(line: 357, column: 19, scope: !4789)
!4791 = !DILocation(line: 357, column: 9, scope: !4762)
!4792 = !DILocation(line: 358, column: 14, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !523, line: 357, column: 36)
!4794 = !{i32 14, i32 18}
!4795 = !DILocation(line: 359, column: 9, scope: !4793)
!4796 = !DILocation(line: 360, column: 5, scope: !4793)
!4797 = !DILocation(line: 362, column: 1, scope: !4762)
!4798 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !523, file: !523, line: 191, type: !4799, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4801)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!4770, !2962, !322}
!4801 = !{!4802, !4803, !4804}
!4802 = !DILocalVariable(name: "port", arg: 1, scope: !4798, file: !523, line: 191, type: !2962)
!4803 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4798, file: !523, line: 191, type: !322)
!4804 = !DILocalVariable(name: "ch", scope: !4798, file: !523, line: 193, type: !4770)
!4805 = !DILocation(line: 0, scope: !4798)
!4806 = !DILocation(line: 195, column: 14, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4798, file: !523, line: 195, column: 9)
!4808 = !DILocation(line: 195, column: 9, scope: !4798)
!4809 = !DILocation(line: 209, column: 5, scope: !4798)
!4810 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !523, file: !523, line: 365, type: !4811, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4813)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!575, !583}
!4813 = !{!4814, !4815}
!4814 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4810, file: !523, line: 365, type: !583)
!4815 = !DILocalVariable(name: "int_no", scope: !4810, file: !523, line: 367, type: !2962)
!4816 = !DILocation(line: 0, scope: !4810)
!4817 = !DILocation(line: 367, column: 26, scope: !4810)
!4818 = !DILocation(line: 369, column: 16, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4810, file: !523, line: 369, column: 9)
!4820 = !DILocation(line: 369, column: 9, scope: !4810)
!4821 = !DILocation(line: 370, column: 22, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4819, file: !523, line: 369, column: 33)
!4823 = !DILocation(line: 370, column: 9, scope: !4822)
!4824 = !DILocation(line: 0, scope: !4819)
!4825 = !DILocation(line: 375, column: 1, scope: !4810)
!4826 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !523, file: !523, line: 377, type: !4827, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4829)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!73, !583}
!4829 = !{!4830, !4831}
!4830 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4826, file: !523, line: 377, type: !583)
!4831 = !DILocalVariable(name: "int_no", scope: !4826, file: !523, line: 379, type: !2962)
!4832 = !DILocation(line: 0, scope: !4826)
!4833 = !DILocation(line: 379, column: 26, scope: !4826)
!4834 = !DILocation(line: 381, column: 16, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4826, file: !523, line: 381, column: 9)
!4836 = !DILocation(line: 381, column: 9, scope: !4826)
!4837 = !DILocation(line: 382, column: 16, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !523, line: 381, column: 33)
!4839 = !DILocation(line: 382, column: 9, scope: !4838)
!4840 = !DILocation(line: 0, scope: !4835)
!4841 = !DILocation(line: 387, column: 1, scope: !4826)
!4842 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !523, file: !523, line: 390, type: !4843, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!73, !583, !162, !73}
!4845 = !{!4846, !4847, !4848, !4849, !4850}
!4846 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4842, file: !523, line: 390, type: !583)
!4847 = !DILocalVariable(name: "buffer", arg: 2, scope: !4842, file: !523, line: 390, type: !162)
!4848 = !DILocalVariable(name: "size", arg: 3, scope: !4842, file: !523, line: 390, type: !73)
!4849 = !DILocalVariable(name: "int_no", scope: !4842, file: !523, line: 392, type: !2962)
!4850 = !DILocalVariable(name: "index", scope: !4842, file: !523, line: 393, type: !73)
!4851 = !DILocation(line: 0, scope: !4842)
!4852 = !DILocation(line: 392, column: 26, scope: !4842)
!4853 = !DILocation(line: 395, column: 16, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4842, file: !523, line: 395, column: 9)
!4855 = !DILocation(line: 395, column: 9, scope: !4842)
!4856 = !DILocation(line: 401, column: 38, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4858, file: !523, line: 400, column: 48)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !523, line: 400, column: 9)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !523, line: 400, column: 9)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !523, line: 399, column: 33)
!4861 = distinct !DILexicalBlock(scope: !4842, file: !523, line: 399, column: 9)
!4862 = !DILocation(line: 401, column: 13, scope: !4857)
!4863 = !DILocation(line: 401, column: 27, scope: !4857)
!4864 = !DILocation(line: 400, column: 44, scope: !4858)
!4865 = !DILocation(line: 400, column: 31, scope: !4858)
!4866 = !DILocation(line: 400, column: 9, scope: !4859)
!4867 = distinct !{!4867, !4866, !4868}
!4868 = !DILocation(line: 402, column: 9, scope: !4859)
!4869 = !DILocation(line: 406, column: 1, scope: !4842)
!4870 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !523, file: !523, line: 408, type: !4843, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4871)
!4871 = !{!4872, !4873, !4874, !4875, !4876, !4877}
!4872 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4870, file: !523, line: 408, type: !583)
!4873 = !DILocalVariable(name: "buffer", arg: 2, scope: !4870, file: !523, line: 408, type: !162)
!4874 = !DILocalVariable(name: "size", arg: 3, scope: !4870, file: !523, line: 408, type: !73)
!4875 = !DILocalVariable(name: "actual_size", scope: !4870, file: !523, line: 410, type: !73)
!4876 = !DILocalVariable(name: "receive_size", scope: !4870, file: !523, line: 410, type: !73)
!4877 = !DILocalVariable(name: "ch", scope: !4870, file: !523, line: 411, type: !4770)
!4878 = !DILocation(line: 0, scope: !4870)
!4879 = !DILocation(line: 410, column: 5, scope: !4870)
!4880 = !DILocation(line: 413, column: 10, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4870, file: !523, line: 413, column: 9)
!4882 = !DILocation(line: 413, column: 9, scope: !4870)
!4883 = !DILocation(line: 417, column: 17, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4870, file: !523, line: 417, column: 9)
!4885 = !DILocation(line: 417, column: 26, scope: !4884)
!4886 = !DILocation(line: 421, column: 30, scope: !4870)
!4887 = !DILocation(line: 421, column: 5, scope: !4870)
!4888 = !DILocation(line: 422, column: 9, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4870, file: !523, line: 422, column: 9)
!4890 = !DILocation(line: 422, column: 21, scope: !4889)
!4891 = !DILocation(line: 427, column: 5, scope: !4870)
!4892 = !DILocation(line: 429, column: 25, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4870, file: !523, line: 429, column: 9)
!4894 = !DILocation(line: 429, column: 22, scope: !4893)
!4895 = !DILocation(line: 429, column: 9, scope: !4870)
!4896 = !DILocation(line: 430, column: 14, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !523, line: 429, column: 38)
!4898 = !DILocation(line: 431, column: 9, scope: !4897)
!4899 = !DILocation(line: 432, column: 5, scope: !4897)
!4900 = !DILocation(line: 435, column: 1, scope: !4870)
!4901 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !523, file: !523, line: 438, type: !4827, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4902)
!4902 = !{!4903, !4904}
!4903 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4901, file: !523, line: 438, type: !583)
!4904 = !DILocalVariable(name: "length", scope: !4901, file: !523, line: 440, type: !73)
!4905 = !DILocation(line: 0, scope: !4901)
!4906 = !DILocation(line: 440, column: 5, scope: !4901)
!4907 = !DILocation(line: 440, column: 14, scope: !4901)
!4908 = !DILocation(line: 442, column: 10, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4901, file: !523, line: 442, column: 9)
!4910 = !DILocation(line: 442, column: 9, scope: !4901)
!4911 = !DILocation(line: 446, column: 30, scope: !4901)
!4912 = !DILocation(line: 446, column: 5, scope: !4901)
!4913 = !DILocation(line: 447, column: 12, scope: !4901)
!4914 = !DILocation(line: 447, column: 5, scope: !4901)
!4915 = !DILocation(line: 448, column: 1, scope: !4901)
!4916 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !523, file: !523, line: 451, type: !4827, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4917)
!4917 = !{!4918, !4919}
!4918 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4916, file: !523, line: 451, type: !583)
!4919 = !DILocalVariable(name: "length", scope: !4916, file: !523, line: 453, type: !73)
!4920 = !DILocation(line: 0, scope: !4916)
!4921 = !DILocation(line: 453, column: 5, scope: !4916)
!4922 = !DILocation(line: 453, column: 14, scope: !4916)
!4923 = !DILocation(line: 455, column: 10, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4916, file: !523, line: 455, column: 9)
!4925 = !DILocation(line: 455, column: 9, scope: !4916)
!4926 = !DILocation(line: 459, column: 30, scope: !4916)
!4927 = !DILocation(line: 459, column: 5, scope: !4916)
!4928 = !DILocation(line: 461, column: 12, scope: !4916)
!4929 = !DILocation(line: 461, column: 5, scope: !4916)
!4930 = !DILocation(line: 462, column: 1, scope: !4916)
!4931 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !523, file: !523, line: 543, type: !4932, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4934)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!4559, !583, !611, !68}
!4934 = !{!4935, !4936, !4937, !4938}
!4935 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4931, file: !523, line: 543, type: !583)
!4936 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4931, file: !523, line: 544, type: !611)
!4937 = !DILocalVariable(name: "user_data", arg: 3, scope: !4931, file: !523, line: 545, type: !68)
!4938 = !DILocalVariable(name: "ch", scope: !4931, file: !523, line: 547, type: !4770)
!4939 = !DILocation(line: 0, scope: !4931)
!4940 = !DILocation(line: 549, column: 10, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4931, file: !523, line: 549, column: 9)
!4942 = !DILocation(line: 549, column: 9, scope: !4931)
!4943 = !DILocation(line: 556, column: 53, scope: !4931)
!4944 = !DILocation(line: 556, column: 62, scope: !4931)
!4945 = !DILocation(line: 557, column: 53, scope: !4931)
!4946 = !DILocation(line: 557, column: 63, scope: !4931)
!4947 = !DILocation(line: 558, column: 37, scope: !4931)
!4948 = !DILocation(line: 558, column: 54, scope: !4931)
!4949 = !DILocation(line: 560, column: 39, scope: !4931)
!4950 = !DILocation(line: 561, column: 39, scope: !4931)
!4951 = !DILocation(line: 560, column: 5, scope: !4931)
!4952 = !DILocation(line: 562, column: 5, scope: !4931)
!4953 = !DILocation(line: 564, column: 44, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4931, file: !523, line: 564, column: 9)
!4955 = !DILocation(line: 564, column: 9, scope: !4931)
!4956 = !DILocation(line: 565, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4954, file: !523, line: 564, column: 59)
!4958 = !DILocation(line: 566, column: 5, scope: !4957)
!4959 = !DILocation(line: 567, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4954, file: !523, line: 566, column: 12)
!4961 = !DILocation(line: 569, column: 10, scope: !4931)
!4962 = !DILocation(line: 570, column: 5, scope: !4931)
!4963 = !DILocation(line: 578, column: 5, scope: !4931)
!4964 = !DILocation(line: 579, column: 1, scope: !4931)
!4965 = !DILocation(line: 0, scope: !579)
!4966 = !DILocation(line: 539, column: 12, scope: !579)
!4967 = !DILocation(line: 539, column: 5, scope: !579)
!4968 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !523, file: !523, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4969)
!4969 = !{!4970}
!4970 = !DILocalVariable(name: "callback_context", scope: !4971, file: !523, line: 514, type: !4973)
!4971 = distinct !DILexicalBlock(scope: !4972, file: !523, line: 513, column: 60)
!4972 = distinct !DILexicalBlock(scope: !4968, file: !523, line: 513, column: 9)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 32)
!4974 = !DILocation(line: 513, column: 42, scope: !4972)
!4975 = !DILocation(line: 513, column: 9, scope: !4968)
!4976 = !DILocation(line: 515, column: 39, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4971, file: !523, line: 515, column: 13)
!4978 = !DILocation(line: 515, column: 18, scope: !4977)
!4979 = !DILocation(line: 515, column: 13, scope: !4971)
!4980 = !DILocation(line: 516, column: 89, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !523, line: 515, column: 49)
!4982 = !DILocation(line: 516, column: 13, scope: !4981)
!4983 = !DILocation(line: 517, column: 9, scope: !4981)
!4984 = !DILocation(line: 519, column: 32, scope: !4968)
!4985 = !DILocation(line: 519, column: 5, scope: !4968)
!4986 = !DILocation(line: 520, column: 1, scope: !4968)
!4987 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !523, file: !523, line: 523, type: !81, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4988)
!4988 = !{!4989}
!4989 = !DILocalVariable(name: "callback_context", scope: !4990, file: !523, line: 526, type: !4973)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !523, line: 525, column: 60)
!4991 = distinct !DILexicalBlock(scope: !4987, file: !523, line: 525, column: 9)
!4992 = !DILocation(line: 525, column: 42, scope: !4991)
!4993 = !DILocation(line: 525, column: 9, scope: !4987)
!4994 = !DILocation(line: 527, column: 39, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4990, file: !523, line: 527, column: 13)
!4996 = !DILocation(line: 527, column: 18, scope: !4995)
!4997 = !DILocation(line: 527, column: 13, scope: !4990)
!4998 = !DILocation(line: 528, column: 89, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !523, line: 527, column: 49)
!5000 = !DILocation(line: 528, column: 13, scope: !4999)
!5001 = !DILocation(line: 529, column: 9, scope: !4999)
!5002 = !DILocation(line: 531, column: 32, scope: !4987)
!5003 = !DILocation(line: 531, column: 5, scope: !4987)
!5004 = !DILocation(line: 532, column: 1, scope: !4987)
!5005 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !523, file: !523, line: 464, type: !5006, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5008)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{null, !2962, !322}
!5008 = !{!5009, !5010, !5011, !5012, !5013, !5015}
!5009 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5005, file: !523, line: 464, type: !2962)
!5010 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5005, file: !523, line: 464, type: !322)
!5011 = !DILocalVariable(name: "avail_size", scope: !5005, file: !523, line: 466, type: !73)
!5012 = !DILocalVariable(name: "avail_space", scope: !5005, file: !523, line: 466, type: !73)
!5013 = !DILocalVariable(name: "dma_config", scope: !5005, file: !523, line: 467, type: !5014)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 32)
!5015 = !DILocalVariable(name: "ch", scope: !5005, file: !523, line: 468, type: !4770)
!5016 = !DILocation(line: 0, scope: !5005)
!5017 = !DILocation(line: 466, column: 5, scope: !5005)
!5018 = !DILocation(line: 471, column: 9, scope: !5005)
!5019 = !DILocation(line: 472, column: 9, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !523, line: 471, column: 16)
!5021 = distinct !DILexicalBlock(scope: !5005, file: !523, line: 471, column: 9)
!5022 = !DILocation(line: 473, column: 13, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !523, line: 473, column: 13)
!5024 = !DILocation(line: 473, column: 39, scope: !5023)
!5025 = !DILocation(line: 473, column: 24, scope: !5023)
!5026 = !DILocation(line: 473, column: 13, scope: !5020)
!5027 = !DILocation(line: 478, column: 9, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5021, file: !523, line: 477, column: 12)
!5029 = !DILocation(line: 479, column: 13, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5028, file: !523, line: 479, column: 13)
!5031 = !DILocation(line: 479, column: 40, scope: !5030)
!5032 = !DILocation(line: 479, column: 77, scope: !5030)
!5033 = !DILocation(line: 479, column: 63, scope: !5030)
!5034 = !DILocation(line: 479, column: 25, scope: !5030)
!5035 = !DILocation(line: 479, column: 13, scope: !5028)
!5036 = !DILocation(line: 0, scope: !5021)
!5037 = !DILocation(line: 484, column: 1, scope: !5005)
!5038 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !523, file: !523, line: 486, type: !81, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5039)
!5039 = !{!5040}
!5040 = !DILocalVariable(name: "callback_context", scope: !5041, file: !523, line: 490, type: !4973)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !523, line: 489, column: 70)
!5042 = distinct !DILexicalBlock(scope: !5038, file: !523, line: 488, column: 9)
!5043 = !DILocation(line: 488, column: 43, scope: !5042)
!5044 = !DILocation(line: 488, column: 61, scope: !5042)
!5045 = !DILocation(line: 489, column: 14, scope: !5042)
!5046 = !DILocation(line: 489, column: 63, scope: !5042)
!5047 = !DILocation(line: 488, column: 9, scope: !5038)
!5048 = !DILocation(line: 491, column: 39, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5041, file: !523, line: 491, column: 13)
!5050 = !DILocation(line: 491, column: 18, scope: !5049)
!5051 = !DILocation(line: 491, column: 13, scope: !5041)
!5052 = !DILocation(line: 492, column: 88, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5049, file: !523, line: 491, column: 49)
!5054 = !DILocation(line: 492, column: 13, scope: !5053)
!5055 = !DILocation(line: 493, column: 9, scope: !5053)
!5056 = !DILocation(line: 495, column: 32, scope: !5038)
!5057 = !DILocation(line: 495, column: 5, scope: !5038)
!5058 = !DILocation(line: 496, column: 1, scope: !5038)
!5059 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !523, file: !523, line: 499, type: !81, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5060)
!5060 = !{!5061}
!5061 = !DILocalVariable(name: "callback_context", scope: !5062, file: !523, line: 503, type: !4973)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !523, line: 502, column: 70)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !523, line: 501, column: 9)
!5064 = !DILocation(line: 501, column: 43, scope: !5063)
!5065 = !DILocation(line: 501, column: 61, scope: !5063)
!5066 = !DILocation(line: 502, column: 14, scope: !5063)
!5067 = !DILocation(line: 502, column: 63, scope: !5063)
!5068 = !DILocation(line: 501, column: 9, scope: !5059)
!5069 = !DILocation(line: 504, column: 39, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5062, file: !523, line: 504, column: 13)
!5071 = !DILocation(line: 504, column: 18, scope: !5070)
!5072 = !DILocation(line: 504, column: 13, scope: !5062)
!5073 = !DILocation(line: 505, column: 88, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !523, line: 504, column: 49)
!5075 = !DILocation(line: 505, column: 13, scope: !5074)
!5076 = !DILocation(line: 506, column: 9, scope: !5074)
!5077 = !DILocation(line: 508, column: 32, scope: !5059)
!5078 = !DILocation(line: 508, column: 5, scope: !5059)
!5079 = !DILocation(line: 509, column: 1, scope: !5059)
!5080 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !523, file: !523, line: 582, type: !5081, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5083)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!4559, !583, !598}
!5083 = !{!5084, !5085}
!5084 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5080, file: !523, line: 582, type: !583)
!5085 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5080, file: !523, line: 582, type: !598)
!5086 = !DILocation(line: 0, scope: !5080)
!5087 = !DILocation(line: 584, column: 11, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5080, file: !523, line: 584, column: 9)
!5089 = !DILocation(line: 584, column: 46, scope: !5088)
!5090 = !DILocation(line: 588, column: 37, scope: !5080)
!5091 = !DILocation(line: 588, column: 50, scope: !5080)
!5092 = !DILocation(line: 588, column: 59, scope: !5080)
!5093 = !DILocation(line: 589, column: 12, scope: !5080)
!5094 = !DILocation(line: 589, column: 5, scope: !5080)
!5095 = !DILocation(line: 590, column: 1, scope: !5080)
!5096 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !523, file: !523, line: 608, type: !5097, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5101)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!4559, !583, !5099}
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 32)
!5100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!5101 = !{!5102, !5103}
!5102 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5096, file: !523, line: 608, type: !583)
!5103 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5096, file: !523, line: 608, type: !5099)
!5104 = !DILocation(line: 0, scope: !5096)
!5105 = !DILocation(line: 610, column: 10, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5096, file: !523, line: 610, column: 9)
!5107 = !DILocation(line: 610, column: 9, scope: !5096)
!5108 = !DILocation(line: 614, column: 10, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5096, file: !523, line: 614, column: 9)
!5110 = !DILocation(line: 614, column: 9, scope: !5096)
!5111 = !DILocation(line: 618, column: 37, scope: !5096)
!5112 = !DILocation(line: 618, column: 56, scope: !5096)
!5113 = !DILocation(line: 619, column: 45, scope: !5096)
!5114 = !DILocation(line: 619, column: 12, scope: !5096)
!5115 = !DILocation(line: 620, column: 12, scope: !5096)
!5116 = !DILocation(line: 619, column: 5, scope: !5096)
!5117 = !DILocation(line: 621, column: 5, scope: !5096)
!5118 = !DILocation(line: 622, column: 5, scope: !5096)
!5119 = !DILocation(line: 623, column: 33, scope: !5096)
!5120 = !DILocation(line: 624, column: 50, scope: !5096)
!5121 = !DILocation(line: 625, column: 50, scope: !5096)
!5122 = !DILocation(line: 626, column: 50, scope: !5096)
!5123 = !DILocation(line: 627, column: 50, scope: !5096)
!5124 = !DILocation(line: 628, column: 33, scope: !5096)
!5125 = !DILocation(line: 623, column: 5, scope: !5096)
!5126 = !DILocation(line: 630, column: 50, scope: !5096)
!5127 = !DILocation(line: 631, column: 50, scope: !5096)
!5128 = !DILocation(line: 632, column: 50, scope: !5096)
!5129 = !DILocation(line: 629, column: 5, scope: !5096)
!5130 = !DILocation(line: 634, column: 5, scope: !5096)
!5131 = !DILocation(line: 635, column: 1, scope: !5096)
!5132 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !523, file: !523, line: 112, type: !5133, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5135)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!322, !5099}
!5135 = !{!5136}
!5136 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5132, file: !523, line: 112, type: !5099)
!5137 = !DILocation(line: 0, scope: !5132)
!5138 = !DILocation(line: 114, column: 14, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5132, file: !523, line: 114, column: 9)
!5140 = !DILocation(line: 114, column: 9, scope: !5132)
!5141 = !DILocation(line: 117, column: 29, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5132, file: !523, line: 117, column: 9)
!5143 = !DILocation(line: 117, column: 14, scope: !5142)
!5144 = !DILocation(line: 117, column: 9, scope: !5132)
!5145 = !DILocation(line: 120, column: 21, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5132, file: !523, line: 120, column: 9)
!5147 = !DILocation(line: 120, column: 61, scope: !5146)
!5148 = !DILocation(line: 120, column: 47, scope: !5146)
!5149 = !DILocation(line: 120, column: 9, scope: !5132)
!5150 = !DILocation(line: 123, column: 61, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5132, file: !523, line: 123, column: 9)
!5152 = !DILocation(line: 123, column: 47, scope: !5151)
!5153 = !DILocation(line: 123, column: 9, scope: !5132)
!5154 = !DILocation(line: 126, column: 29, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5132, file: !523, line: 126, column: 9)
!5156 = !DILocation(line: 126, column: 14, scope: !5155)
!5157 = !DILocation(line: 126, column: 9, scope: !5132)
!5158 = !DILocation(line: 129, column: 21, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5132, file: !523, line: 129, column: 9)
!5160 = !DILocation(line: 129, column: 58, scope: !5159)
!5161 = !DILocation(line: 129, column: 44, scope: !5159)
!5162 = !DILocation(line: 129, column: 9, scope: !5132)
!5163 = !DILocation(line: 136, column: 1, scope: !5132)
!5164 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !523, file: !523, line: 182, type: !516, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5165)
!5165 = !{!5166, !5167}
!5166 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5164, file: !523, line: 182, type: !73)
!5167 = !DILocalVariable(name: "ticks_per_us", scope: !5164, file: !523, line: 184, type: !73)
!5168 = !DILocation(line: 0, scope: !5164)
!5169 = !DILocation(line: 186, column: 20, scope: !5164)
!5170 = !DILocation(line: 186, column: 39, scope: !5164)
!5171 = !DILocation(line: 188, column: 25, scope: !5164)
!5172 = !DILocation(line: 188, column: 5, scope: !5164)
!5173 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !523, file: !523, line: 637, type: !4701, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5174)
!5174 = !{!5175, !5176}
!5175 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5173, file: !523, line: 637, type: !583)
!5176 = !DILocalVariable(name: "int_no", scope: !5173, file: !523, line: 639, type: !2962)
!5177 = !DILocation(line: 0, scope: !5173)
!5178 = !DILocation(line: 641, column: 10, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5173, file: !523, line: 641, column: 9)
!5180 = !DILocation(line: 641, column: 9, scope: !5173)
!5181 = !DILocation(line: 645, column: 14, scope: !5173)
!5182 = !DILocation(line: 646, column: 5, scope: !5173)
!5183 = !DILocation(line: 648, column: 5, scope: !5173)
!5184 = !DILocation(line: 649, column: 1, scope: !5173)
!5185 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !523, file: !523, line: 651, type: !5186, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5188)
!5186 = !DISubroutineType(types: !5187)
!5187 = !{!4559, !583, !163, !163, !163}
!5188 = !{!5189, !5190, !5191, !5192, !5193}
!5189 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5185, file: !523, line: 651, type: !583)
!5190 = !DILocalVariable(name: "xon", arg: 2, scope: !5185, file: !523, line: 652, type: !163)
!5191 = !DILocalVariable(name: "xoff", arg: 3, scope: !5185, file: !523, line: 653, type: !163)
!5192 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5185, file: !523, line: 654, type: !163)
!5193 = !DILocalVariable(name: "int_no", scope: !5185, file: !523, line: 656, type: !2962)
!5194 = !DILocation(line: 0, scope: !5185)
!5195 = !DILocation(line: 658, column: 10, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5185, file: !523, line: 658, column: 9)
!5197 = !DILocation(line: 658, column: 9, scope: !5185)
!5198 = !DILocation(line: 662, column: 14, scope: !5185)
!5199 = !DILocation(line: 663, column: 5, scope: !5185)
!5200 = !DILocation(line: 665, column: 5, scope: !5185)
!5201 = !DILocation(line: 666, column: 1, scope: !5185)
!5202 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !523, file: !523, line: 668, type: !4701, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5203)
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5202, file: !523, line: 668, type: !583)
!5205 = !DILocalVariable(name: "int_no", scope: !5202, file: !523, line: 670, type: !2962)
!5206 = !DILocation(line: 0, scope: !5202)
!5207 = !DILocation(line: 672, column: 10, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5202, file: !523, line: 672, column: 9)
!5209 = !DILocation(line: 672, column: 9, scope: !5202)
!5210 = !DILocation(line: 676, column: 14, scope: !5202)
!5211 = !DILocation(line: 677, column: 5, scope: !5202)
!5212 = !DILocation(line: 679, column: 5, scope: !5202)
!5213 = !DILocation(line: 680, column: 1, scope: !5202)
!5214 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !523, file: !523, line: 683, type: !5215, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5217)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!4559, !583, !73}
!5217 = !{!5218, !5219}
!5218 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5214, file: !523, line: 683, type: !583)
!5219 = !DILocalVariable(name: "timeout", arg: 2, scope: !5214, file: !523, line: 683, type: !73)
!5220 = !DILocation(line: 0, scope: !5214)
!5221 = !DILocation(line: 685, column: 10, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5214, file: !523, line: 685, column: 9)
!5223 = !DILocation(line: 685, column: 9, scope: !5214)
!5224 = !DILocation(line: 689, column: 19, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5214, file: !523, line: 689, column: 9)
!5226 = !DILocation(line: 0, scope: !5225)
!5227 = !DILocation(line: 696, column: 1, scope: !5214)
!5228 = distinct !DISubprogram(name: "__io_putchar", scope: !1075, file: !1075, line: 62, type: !5229, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{!7, !7}
!5231 = !{!5232}
!5232 = !DILocalVariable(name: "ch", arg: 1, scope: !5228, file: !1075, line: 62, type: !7)
!5233 = !DILocation(line: 0, scope: !5228)
!5234 = !DILocation(line: 69, column: 35, scope: !5228)
!5235 = !DILocation(line: 69, column: 5, scope: !5228)
!5236 = !DILocation(line: 70, column: 5, scope: !5228)
!5237 = distinct !DISubprogram(name: "main", scope: !1075, file: !1075, line: 172, type: !2938, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2281)
!5238 = !DILocation(line: 175, column: 5, scope: !5237)
!5239 = !DILocation(line: 178, column: 5, scope: !5237)
!5240 = !DILocation(line: 319, column: 3, scope: !5241, inlinedAt: !5242)
!5241 = distinct !DISubprogram(name: "__enable_irq", scope: !2271, file: !2271, line: 317, type: !81, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2281)
!5242 = distinct !DILocation(line: 181, column: 5, scope: !5237)
!5243 = !{i64 514396}
!5244 = !DILocation(line: 496, column: 3, scope: !5245, inlinedAt: !5246)
!5245 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2271, file: !2271, line: 494, type: !81, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2281)
!5246 = distinct !DILocation(line: 182, column: 5, scope: !5237)
!5247 = !{i64 518671}
!5248 = !DILocation(line: 185, column: 5, scope: !5237)
!5249 = !DILocation(line: 187, column: 5, scope: !5237)
!5250 = !DILocation(line: 188, column: 5, scope: !5237)
!5251 = !DILocation(line: 191, column: 5, scope: !5237)
!5252 = !DILocation(line: 193, column: 5, scope: !5237)
!5253 = distinct !{!5253, !5252, !5254}
!5254 = !DILocation(line: 193, column: 14, scope: !5237)
!5255 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1075, file: !1075, line: 101, type: !81, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2281)
!5256 = !DILocation(line: 103, column: 5, scope: !5255)
!5257 = !DILocation(line: 104, column: 1, scope: !5255)
!5258 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1075, file: !1075, line: 111, type: !81, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2281)
!5259 = !DILocation(line: 114, column: 5, scope: !5258)
!5260 = !DILocation(line: 115, column: 1, scope: !5258)
!5261 = distinct !DISubprogram(name: "spim_send_data_polling_example", scope: !1075, file: !1075, line: 122, type: !81, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5262)
!5262 = !{!5263, !5265}
!5263 = !DILocalVariable(name: "send_data", scope: !5261, file: !1075, line: 124, type: !5264)
!5264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 16, elements: !397)
!5265 = !DILocalVariable(name: "spi_config", scope: !5261, file: !1075, line: 125, type: !5266)
!5266 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_config_t", file: !430, line: 580, baseType: !5267)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 574, size: 160, elements: !5268)
!5268 = !{!5269, !5270, !5271, !5272, !5273}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "clock_frequency", scope: !5267, file: !430, line: 575, baseType: !73, size: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "slave_port", scope: !5267, file: !430, line: 576, baseType: !503, size: 32, offset: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "bit_order", scope: !5267, file: !430, line: 577, baseType: !505, size: 32, offset: 64)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5267, file: !430, line: 578, baseType: !507, size: 32, offset: 96)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !5267, file: !430, line: 579, baseType: !509, size: 32, offset: 128)
!5274 = !DILocation(line: 124, column: 5, scope: !5261)
!5275 = !DILocation(line: 0, scope: !5261)
!5276 = !DILocation(line: 124, column: 13, scope: !5261)
!5277 = !DILocation(line: 125, column: 5, scope: !5261)
!5278 = !DILocation(line: 125, column: 29, scope: !5261)
!5279 = !DILocation(line: 127, column: 5, scope: !5261)
!5280 = !DILocation(line: 130, column: 5, scope: !5261)
!5281 = !DILocation(line: 131, column: 5, scope: !5261)
!5282 = !DILocation(line: 132, column: 5, scope: !5261)
!5283 = !DILocation(line: 133, column: 5, scope: !5261)
!5284 = !DILocation(line: 134, column: 5, scope: !5261)
!5285 = !DILocation(line: 135, column: 5, scope: !5261)
!5286 = !DILocation(line: 136, column: 5, scope: !5261)
!5287 = !DILocation(line: 137, column: 5, scope: !5261)
!5288 = !DILocation(line: 138, column: 5, scope: !5261)
!5289 = !DILocation(line: 141, column: 5, scope: !5261)
!5290 = !DILocation(line: 142, column: 16, scope: !5261)
!5291 = !DILocation(line: 142, column: 26, scope: !5261)
!5292 = !DILocation(line: 143, column: 16, scope: !5261)
!5293 = !DILocation(line: 143, column: 32, scope: !5261)
!5294 = !DILocation(line: 144, column: 16, scope: !5261)
!5295 = !DILocation(line: 144, column: 22, scope: !5261)
!5296 = !DILocation(line: 145, column: 16, scope: !5261)
!5297 = !DILocation(line: 145, column: 25, scope: !5261)
!5298 = !DILocation(line: 146, column: 16, scope: !5261)
!5299 = !DILocation(line: 146, column: 27, scope: !5261)
!5300 = !DILocation(line: 147, column: 37, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5261, file: !1075, line: 147, column: 9)
!5302 = !DILocation(line: 147, column: 34, scope: !5301)
!5303 = !DILocation(line: 147, column: 9, scope: !5261)
!5304 = !DILocation(line: 153, column: 37, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5261, file: !1075, line: 153, column: 9)
!5306 = !DILocation(line: 153, column: 34, scope: !5305)
!5307 = !DILocation(line: 153, column: 9, scope: !5261)
!5308 = !DILocation(line: 159, column: 5, scope: !5261)
!5309 = !DILocation(line: 160, column: 37, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5261, file: !1075, line: 160, column: 9)
!5311 = !DILocation(line: 160, column: 34, scope: !5310)
!5312 = !DILocation(line: 160, column: 9, scope: !5261)
!5313 = !DILocation(line: 164, column: 5, scope: !5261)
!5314 = !DILocation(line: 165, column: 5, scope: !5261)
!5315 = !DILocation(line: 166, column: 5, scope: !5261)
!5316 = !DILocation(line: 167, column: 5, scope: !5261)
!5317 = !DILocation(line: 170, column: 1, scope: !5261)
!5318 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1075, file: !1075, line: 78, type: !81, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5319)
!5319 = !{!5320}
!5320 = !DILocalVariable(name: "uart_config", scope: !5318, file: !1075, line: 80, type: !5321)
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !526, line: 378, baseType: !5322)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 373, size: 128, elements: !5323)
!5323 = !{!5324, !5325, !5326, !5327}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5322, file: !526, line: 374, baseType: !598, size: 32)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5322, file: !526, line: 375, baseType: !600, size: 32, offset: 32)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5322, file: !526, line: 376, baseType: !602, size: 32, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5322, file: !526, line: 377, baseType: !604, size: 32, offset: 96)
!5328 = !DILocation(line: 80, column: 5, scope: !5318)
!5329 = !DILocation(line: 80, column: 23, scope: !5318)
!5330 = !DILocation(line: 83, column: 5, scope: !5318)
!5331 = !DILocation(line: 84, column: 5, scope: !5318)
!5332 = !DILocation(line: 85, column: 5, scope: !5318)
!5333 = !DILocation(line: 86, column: 5, scope: !5318)
!5334 = !DILocation(line: 89, column: 17, scope: !5318)
!5335 = !DILocation(line: 89, column: 26, scope: !5318)
!5336 = !DILocation(line: 90, column: 17, scope: !5318)
!5337 = !DILocation(line: 90, column: 29, scope: !5318)
!5338 = !DILocation(line: 91, column: 17, scope: !5318)
!5339 = !DILocation(line: 91, column: 26, scope: !5318)
!5340 = !DILocation(line: 92, column: 17, scope: !5318)
!5341 = !DILocation(line: 92, column: 24, scope: !5318)
!5342 = !DILocation(line: 93, column: 5, scope: !5318)
!5343 = !DILocation(line: 94, column: 1, scope: !5318)
!5344 = distinct !DISubprogram(name: "SysTick_Set", scope: !632, file: !632, line: 70, type: !516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !5345)
!5345 = !{!5346, !5347}
!5346 = !DILocalVariable(name: "ticks", arg: 1, scope: !5344, file: !632, line: 70, type: !73)
!5347 = !DILocalVariable(name: "val", scope: !5344, file: !632, line: 72, type: !73)
!5348 = !DILocation(line: 0, scope: !5344)
!5349 = !DILocation(line: 74, column: 16, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5344, file: !632, line: 74, column: 9)
!5351 = !DILocation(line: 74, column: 21, scope: !5350)
!5352 = !DILocation(line: 74, column: 9, scope: !5344)
!5353 = !DILocation(line: 78, column: 20, scope: !5344)
!5354 = !DILocation(line: 80, column: 19, scope: !5344)
!5355 = !DILocation(line: 83, column: 20, scope: !5344)
!5356 = !DILocation(line: 84, column: 20, scope: !5344)
!5357 = !DILocation(line: 86, column: 19, scope: !5344)
!5358 = !DILocation(line: 88, column: 5, scope: !5344)
!5359 = !DILocation(line: 89, column: 1, scope: !5344)
!5360 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !632, file: !632, line: 98, type: !81, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2281)
!5361 = !DILocation(line: 100, column: 28, scope: !5360)
!5362 = !DILocation(line: 101, column: 1, scope: !5360)
!5363 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !632, file: !632, line: 110, type: !2265, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2281)
!5364 = !DILocation(line: 112, column: 12, scope: !5363)
!5365 = !DILocation(line: 112, column: 5, scope: !5363)
!5366 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !632, file: !632, line: 122, type: !81, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2281)
!5367 = !DILocation(line: 124, column: 23, scope: !5366)
!5368 = !DILocation(line: 124, column: 21, scope: !5366)
!5369 = !DILocation(line: 125, column: 1, scope: !5366)
!5370 = distinct !DISubprogram(name: "SystemInit", scope: !632, file: !632, line: 136, type: !81, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2281)
!5371 = !DILocation(line: 140, column: 16, scope: !5370)
!5372 = !DILocation(line: 144, column: 16, scope: !5370)
!5373 = !DILocation(line: 147, column: 16, scope: !5370)
!5374 = !DILocation(line: 150, column: 1, scope: !5370)
!5375 = distinct !DISubprogram(name: "CachePreInit", scope: !632, file: !632, line: 158, type: !81, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2281)
!5376 = !DILocation(line: 161, column: 22, scope: !5375)
!5377 = !DILocation(line: 164, column: 21, scope: !5375)
!5378 = !DILocation(line: 167, column: 21, scope: !5375)
!5379 = !DILocation(line: 170, column: 29, scope: !5375)
!5380 = !DILocation(line: 171, column: 33, scope: !5375)
!5381 = !DILocation(line: 173, column: 28, scope: !5375)
!5382 = !DILocation(line: 178, column: 30, scope: !5375)
!5383 = !DILocation(line: 192, column: 1, scope: !5375)
!5384 = distinct !DISubprogram(name: "_close", scope: !692, file: !692, line: 11, type: !5229, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5385)
!5385 = !{!5386}
!5386 = !DILocalVariable(name: "file", arg: 1, scope: !5384, file: !692, line: 11, type: !7)
!5387 = !DILocation(line: 0, scope: !5384)
!5388 = !DILocation(line: 13, column: 5, scope: !5384)
!5389 = distinct !DISubprogram(name: "_fstat", scope: !692, file: !692, line: 16, type: !5390, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5438)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!7, !7, !5392}
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 32)
!5393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5394, line: 27, size: 704, elements: !5395)
!5394 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5395 = !{!5396, !5399, !5402, !5405, !5408, !5411, !5414, !5415, !5418, !5428, !5429, !5430, !5433, !5436}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5393, file: !5394, line: 29, baseType: !5397, size: 16)
!5397 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !696, line: 161, baseType: !5398)
!5398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !738, line: 56, baseType: !713)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5393, file: !5394, line: 30, baseType: !5400, size: 16, offset: 16)
!5400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !696, line: 139, baseType: !5401)
!5401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !738, line: 75, baseType: !235)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5393, file: !5394, line: 31, baseType: !5403, size: 32, offset: 32)
!5403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !696, line: 189, baseType: !5404)
!5404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !738, line: 90, baseType: !75)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5393, file: !5394, line: 32, baseType: !5406, size: 16, offset: 64)
!5406 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !696, line: 194, baseType: !5407)
!5407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !738, line: 209, baseType: !235)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5393, file: !5394, line: 33, baseType: !5409, size: 16, offset: 80)
!5409 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !696, line: 165, baseType: !5410)
!5410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !738, line: 60, baseType: !235)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5393, file: !5394, line: 34, baseType: !5412, size: 16, offset: 96)
!5412 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !696, line: 169, baseType: !5413)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !738, line: 63, baseType: !235)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5393, file: !5394, line: 35, baseType: !5397, size: 16, offset: 112)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5393, file: !5394, line: 36, baseType: !5416, size: 32, offset: 128)
!5416 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !696, line: 157, baseType: !5417)
!5417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !738, line: 102, baseType: !756)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5393, file: !5394, line: 42, baseType: !5419, size: 128, offset: 192)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5420, line: 47, size: 128, elements: !5421)
!5420 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5421 = !{!5422, !5427}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5419, file: !5420, line: 48, baseType: !5423, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5424, line: 42, baseType: !5425)
!5424 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !76, line: 200, baseType: !5426)
!5426 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5419, file: !5420, line: 49, baseType: !739, size: 32, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5393, file: !5394, line: 43, baseType: !5419, size: 128, offset: 320)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5393, file: !5394, line: 44, baseType: !5419, size: 128, offset: 448)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5393, file: !5394, line: 45, baseType: !5431, size: 32, offset: 576)
!5431 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !696, line: 102, baseType: !5432)
!5432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !738, line: 34, baseType: !739)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5393, file: !5394, line: 46, baseType: !5434, size: 32, offset: 608)
!5434 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !696, line: 97, baseType: !5435)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !738, line: 30, baseType: !739)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5393, file: !5394, line: 48, baseType: !5437, size: 64, offset: 640)
!5437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 64, elements: !397)
!5438 = !{!5439, !5440}
!5439 = !DILocalVariable(name: "file", arg: 1, scope: !5389, file: !692, line: 16, type: !7)
!5440 = !DILocalVariable(name: "st", arg: 2, scope: !5389, file: !692, line: 16, type: !5392)
!5441 = !DILocation(line: 0, scope: !5389)
!5442 = !DILocation(line: 18, column: 5, scope: !5389)
!5443 = distinct !DISubprogram(name: "_isatty", scope: !692, file: !692, line: 22, type: !5229, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5444)
!5444 = !{!5445}
!5445 = !DILocalVariable(name: "file", arg: 1, scope: !5443, file: !692, line: 22, type: !7)
!5446 = !DILocation(line: 0, scope: !5443)
!5447 = !DILocation(line: 24, column: 5, scope: !5443)
!5448 = distinct !DISubprogram(name: "_lseek", scope: !692, file: !692, line: 27, type: !5449, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5451)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!7, !7, !7, !7}
!5451 = !{!5452, !5453, !5454}
!5452 = !DILocalVariable(name: "file", arg: 1, scope: !5448, file: !692, line: 27, type: !7)
!5453 = !DILocalVariable(name: "ptr", arg: 2, scope: !5448, file: !692, line: 27, type: !7)
!5454 = !DILocalVariable(name: "dir", arg: 3, scope: !5448, file: !692, line: 27, type: !7)
!5455 = !DILocation(line: 0, scope: !5448)
!5456 = !DILocation(line: 29, column: 5, scope: !5448)
!5457 = distinct !DISubprogram(name: "_open", scope: !692, file: !692, line: 32, type: !5458, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5460)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!7, !731, !7, !7}
!5460 = !{!5461, !5462, !5463}
!5461 = !DILocalVariable(name: "name", arg: 1, scope: !5457, file: !692, line: 32, type: !731)
!5462 = !DILocalVariable(name: "flags", arg: 2, scope: !5457, file: !692, line: 32, type: !7)
!5463 = !DILocalVariable(name: "mode", arg: 3, scope: !5457, file: !692, line: 32, type: !7)
!5464 = !DILocation(line: 0, scope: !5457)
!5465 = !DILocation(line: 34, column: 5, scope: !5457)
!5466 = distinct !DISubprogram(name: "_read", scope: !692, file: !692, line: 37, type: !5467, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5469)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!7, !7, !697, !7}
!5469 = !{!5470, !5471, !5472}
!5470 = !DILocalVariable(name: "file", arg: 1, scope: !5466, file: !692, line: 37, type: !7)
!5471 = !DILocalVariable(name: "ptr", arg: 2, scope: !5466, file: !692, line: 37, type: !697)
!5472 = !DILocalVariable(name: "len", arg: 3, scope: !5466, file: !692, line: 37, type: !7)
!5473 = !DILocation(line: 0, scope: !5466)
!5474 = !DILocation(line: 39, column: 5, scope: !5466)
!5475 = distinct !DISubprogram(name: "_write", scope: !692, file: !692, line: 52, type: !5467, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5476)
!5476 = !{!5477, !5478, !5479, !5480}
!5477 = !DILocalVariable(name: "file", arg: 1, scope: !5475, file: !692, line: 52, type: !7)
!5478 = !DILocalVariable(name: "ptr", arg: 2, scope: !5475, file: !692, line: 52, type: !697)
!5479 = !DILocalVariable(name: "len", arg: 3, scope: !5475, file: !692, line: 52, type: !7)
!5480 = !DILocalVariable(name: "i", scope: !5475, file: !692, line: 54, type: !7)
!5481 = !DILocation(line: 0, scope: !5475)
!5482 = !DILocation(line: 56, column: 19, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !692, line: 56, column: 5)
!5484 = distinct !DILexicalBlock(scope: !5475, file: !692, line: 56, column: 5)
!5485 = !DILocation(line: 56, column: 5, scope: !5484)
!5486 = !DILocation(line: 57, column: 26, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5483, file: !692, line: 56, column: 31)
!5488 = !DILocation(line: 57, column: 22, scope: !5487)
!5489 = !DILocation(line: 57, column: 9, scope: !5487)
!5490 = !DILocation(line: 56, column: 27, scope: !5483)
!5491 = distinct !{!5491, !5485, !5492}
!5492 = !DILocation(line: 58, column: 5, scope: !5484)
!5493 = !DILocation(line: 60, column: 5, scope: !5475)
!5494 = !DILocation(line: 0, scope: !691)
!5495 = !DILocation(line: 70, column: 5, scope: !691)
!5496 = !{i64 1109}
!5497 = !DILocation(line: 72, column: 14, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !691, file: !692, line: 72, column: 9)
!5499 = !DILocation(line: 72, column: 11, scope: !5498)
!5500 = !DILocation(line: 72, column: 9, scope: !691)
!5501 = !DILocation(line: 78, column: 32, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !691, file: !692, line: 78, column: 9)
!5503 = !DILocation(line: 78, column: 15, scope: !5502)
!5504 = !DILocation(line: 89, column: 1, scope: !691)
!5505 = !DILocation(line: 78, column: 9, scope: !691)
!5506 = distinct !DISubprogram(name: "_exit", scope: !692, file: !692, line: 91, type: !840, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5507)
!5507 = !{!5508}
!5508 = !DILocalVariable(name: "__status", arg: 1, scope: !5506, file: !692, line: 91, type: !7)
!5509 = !DILocation(line: 0, scope: !5506)
!5510 = !DILocation(line: 93, column: 5, scope: !5506)
!5511 = !DILocation(line: 94, column: 5, scope: !5506)
!5512 = distinct !{!5512, !5511, !5513}
!5513 = !DILocation(line: 96, column: 5, scope: !5506)
!5514 = distinct !DISubprogram(name: "_kill", scope: !692, file: !692, line: 100, type: !5515, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5517)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!7, !7, !7}
!5517 = !{!5518, !5519}
!5518 = !DILocalVariable(name: "pid", arg: 1, scope: !5514, file: !692, line: 100, type: !7)
!5519 = !DILocalVariable(name: "sig", arg: 2, scope: !5514, file: !692, line: 100, type: !7)
!5520 = !DILocation(line: 0, scope: !5514)
!5521 = !DILocation(line: 102, column: 5, scope: !5514)
!5522 = !DILocation(line: 103, column: 5, scope: !5514)
!5523 = distinct !DISubprogram(name: "_getpid", scope: !692, file: !692, line: 107, type: !5524, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !2281)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!5526}
!5526 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !696, line: 174, baseType: !5527)
!5527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !738, line: 52, baseType: !7)
!5528 = !DILocation(line: 109, column: 5, scope: !5523)
!5529 = !DILocation(line: 110, column: 5, scope: !5523)
