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
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 08:07:09 GMT +00:00\00", align 1, !dbg !897
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !902
@hw_verno_str = dso_local local_unnamed_addr global [15 x i8] c"linkit7697_hdk\00", align 1, !dbg !908

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1094, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %1, metadata !1095, metadata !DIExpression()), !dbg !1099
  %3 = lshr i32 %0, 5, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %3, metadata !1096, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1099
  %4 = trunc i32 %0 to i16, !dbg !1101
  %5 = and i16 %4, 31, !dbg !1101
  call void @llvm.dbg.value(metadata i16 %4, metadata !1098, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1099
  %6 = trunc i32 %3 to i16, !dbg !1102
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1102

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1103
  %9 = zext i16 %5 to i32, !dbg !1106
  %10 = icmp ult i16 %5, 27, !dbg !1106
  br i1 %8, label %11, label %46, !dbg !1107

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1108

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1110
  %14 = xor i32 %13, -1, !dbg !1113
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1114
  %16 = and i32 %15, %14, !dbg !1114
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1114
  br label %44, !dbg !1115

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1116
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1116

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1117
  %21 = and i32 %20, -3, !dbg !1117
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1117
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1120
  %23 = or i32 %22, 2048, !dbg !1120
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1120
  br label %44, !dbg !1121

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1122
  %26 = and i32 %25, -3, !dbg !1122
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1122
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1125
  %28 = or i32 %27, 2048, !dbg !1125
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1125
  br label %44, !dbg !1126

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1127
  %31 = and i32 %30, -3, !dbg !1127
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1127
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1130
  %33 = or i32 %32, 2048, !dbg !1130
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1130
  br label %44, !dbg !1131

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1132
  %36 = and i32 %35, -3, !dbg !1132
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1132
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1135
  %38 = or i32 %37, 2048, !dbg !1135
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1135
  br label %44, !dbg !1136

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1137
  %41 = and i32 %40, -3, !dbg !1137
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1137
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1140
  %43 = or i32 %42, 2048, !dbg !1140
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1140
  br label %44, !dbg !1141

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1142
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1142
  br label %97, !dbg !1143

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1144

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1146
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1149
  %50 = or i32 %49, %48, !dbg !1149
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1149
  br label %68, !dbg !1150

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1151
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1151

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1152
  %55 = or i32 %54, 2050, !dbg !1152
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1152
  br label %68, !dbg !1155

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1156
  %58 = or i32 %57, 2050, !dbg !1156
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1156
  br label %68, !dbg !1159

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1160
  %61 = or i32 %60, 2050, !dbg !1160
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1160
  br label %68, !dbg !1163

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1164
  %64 = or i32 %63, 2050, !dbg !1164
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1164
  br label %68, !dbg !1167

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1168
  %67 = or i32 %66, 2050, !dbg !1168
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1168
  br label %68, !dbg !1171

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1172
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1172
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1173
  %72 = zext i16 %5 to i32, !dbg !1175
  %73 = icmp eq i16 %5, 0, !dbg !1175
  br i1 %71, label %74, label %87, !dbg !1176

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1177

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1179
  %77 = xor i32 %76, -1, !dbg !1182
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1183
  %79 = and i32 %78, %77, !dbg !1183
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1183
  br label %85, !dbg !1184

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1185
  %82 = and i32 %81, -3, !dbg !1185
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1185
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1187
  %84 = or i32 %83, 2048, !dbg !1187
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1187
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1188
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1188
  br label %97, !dbg !1189

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1190

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1192
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1195
  %91 = or i32 %90, %89, !dbg !1195
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1195
  br label %95, !dbg !1196

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1197
  %94 = or i32 %93, 2050, !dbg !1197
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1197
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1199
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1199
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1099
  ret i32 %98, !dbg !1200
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1203, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %1, metadata !1204, metadata !DIExpression()), !dbg !1207
  %3 = lshr i32 %0, 5, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %3, metadata !1205, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1207
  %4 = trunc i32 %0 to i16, !dbg !1209
  %5 = and i16 %4, 31, !dbg !1209
  call void @llvm.dbg.value(metadata i16 %5, metadata !1206, metadata !DIExpression()), !dbg !1207
  %6 = trunc i32 %3 to i16, !dbg !1210
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1210

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1211
  %9 = zext i16 %5 to i32, !dbg !1214
  %10 = shl nuw i32 1, %9, !dbg !1214
  br i1 %8, label %12, label %11, !dbg !1215

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1216
  br label %19, !dbg !1218

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1219
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1221
  %15 = zext i16 %5 to i32, !dbg !1223
  %16 = shl nuw i32 1, %15, !dbg !1223
  br i1 %14, label %18, label %17, !dbg !1224

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1225
  br label %19, !dbg !1227

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1228
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1207
  ret i32 %20, !dbg !1230
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1235, metadata !DIExpression()), !dbg !1239
  %2 = lshr i32 %0, 5, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %2, metadata !1236, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1239
  %3 = and i32 %0, 31, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %0, metadata !1237, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1239
  call void @llvm.dbg.value(metadata i8 0, metadata !1238, metadata !DIExpression()), !dbg !1239
  %4 = trunc i32 %2 to i16, !dbg !1242
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1242

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1238, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1239
  br label %6, !dbg !1243

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1245
  %9 = lshr i32 %8, %3, !dbg !1245
  %10 = trunc i32 %9 to i8, !dbg !1245
  %11 = and i8 %10, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i8 %11, metadata !1238, metadata !DIExpression()), !dbg !1239
  br label %12, !dbg !1246

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1239
  ret i8 %13, !dbg !1247
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression()), !dbg !1254
  %2 = lshr i32 %0, 5, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %2, metadata !1251, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1254
  %3 = and i32 %0, 31, !dbg !1256
  call void @llvm.dbg.value(metadata i32 %0, metadata !1252, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1254
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()), !dbg !1254
  %4 = trunc i32 %2 to i16, !dbg !1257
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1257

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1253, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1254
  br label %6, !dbg !1258

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1260
  %9 = lshr i32 %8, %3, !dbg !1260
  %10 = trunc i32 %9 to i8, !dbg !1260
  %11 = and i8 %10, 1, !dbg !1260
  call void @llvm.dbg.value(metadata i8 %11, metadata !1253, metadata !DIExpression()), !dbg !1254
  br label %12, !dbg !1261

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1254
  ret i8 %13, !dbg !1262
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1265, metadata !DIExpression()), !dbg !1269
  %2 = lshr i32 %0, 5, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  %3 = and i32 %0, 31, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %0, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1269
  call void @llvm.dbg.value(metadata i8 0, metadata !1268, metadata !DIExpression()), !dbg !1269
  %4 = trunc i32 %2 to i16, !dbg !1272
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1272

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1268, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1269
  br label %6, !dbg !1273

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1275
  %9 = lshr i32 %8, %3, !dbg !1275
  %10 = trunc i32 %9 to i8, !dbg !1275
  %11 = and i8 %10, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i8 %11, metadata !1268, metadata !DIExpression()), !dbg !1269
  br label %12, !dbg !1276

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1269
  ret i8 %13, !dbg !1277
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1282, metadata !DIExpression()), !dbg !1285
  %2 = lshr i32 %0, 5, !dbg !1286
  call void @llvm.dbg.value(metadata i32 %2, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1285
  %3 = trunc i32 %0 to i16, !dbg !1287
  %4 = and i16 %3, 31, !dbg !1287
  call void @llvm.dbg.value(metadata i16 %3, metadata !1284, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1285
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1288
  %6 = trunc i32 %2 to i16, !dbg !1289
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1289

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1290
  br i1 %8, label %9, label %12, !dbg !1293

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1294
  %11 = shl nuw nsw i32 1, %10, !dbg !1295
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1295
  br label %49, !dbg !1297

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1298
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1298

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1299
  %16 = and i32 %15, -29, !dbg !1299
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1299
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1302
  %18 = or i32 %17, 2052, !dbg !1302
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1302
  br label %49, !dbg !1303

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1304
  %21 = and i32 %20, -29, !dbg !1304
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1304
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1307
  %23 = or i32 %22, 2052, !dbg !1307
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1307
  br label %49, !dbg !1308

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1309
  %26 = and i32 %25, -29, !dbg !1309
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1309
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1312
  %28 = or i32 %27, 2052, !dbg !1312
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1312
  br label %49, !dbg !1313

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1314
  %31 = and i32 %30, -29, !dbg !1314
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1314
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1317
  %33 = or i32 %32, 2052, !dbg !1317
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1317
  br label %49, !dbg !1318

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1319
  %36 = and i32 %35, -29, !dbg !1319
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1319
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1322
  %38 = or i32 %37, 2052, !dbg !1322
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1322
  br label %49, !dbg !1323

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1324
  br i1 %40, label %41, label %46, !dbg !1326

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1327
  %43 = and i32 %42, -29, !dbg !1327
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1327
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1329
  %45 = or i32 %44, 2052, !dbg !1329
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1329
  br label %49, !dbg !1330

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1331
  %48 = shl nuw i32 1, %47, !dbg !1331
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1331
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1285
  ret i32 %50, !dbg !1333
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1334 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1336, metadata !DIExpression()), !dbg !1339
  %2 = lshr i32 %0, 5, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %2, metadata !1337, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1339
  %3 = trunc i32 %0 to i16, !dbg !1341
  %4 = and i16 %3, 31, !dbg !1341
  call void @llvm.dbg.value(metadata i16 %3, metadata !1338, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1339
  %5 = trunc i32 %2 to i16, !dbg !1342
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1342

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1343
  br i1 %7, label %8, label %11, !dbg !1346

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1347
  %10 = shl nuw nsw i32 1, %9, !dbg !1348
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1348
  br label %48, !dbg !1350

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1351
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1351

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1352
  %15 = and i32 %14, -29, !dbg !1352
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1352
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1355
  %17 = or i32 %16, 2048, !dbg !1355
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1355
  br label %48, !dbg !1356

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1357
  %20 = and i32 %19, -29, !dbg !1357
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1357
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1360
  %22 = or i32 %21, 2048, !dbg !1360
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1360
  br label %48, !dbg !1361

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1362
  %25 = and i32 %24, -29, !dbg !1362
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1362
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1365
  %27 = or i32 %26, 2048, !dbg !1365
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1365
  br label %48, !dbg !1366

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1367
  %30 = and i32 %29, -29, !dbg !1367
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1367
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1370
  %32 = or i32 %31, 2048, !dbg !1370
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1370
  br label %48, !dbg !1371

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1372
  %35 = and i32 %34, -29, !dbg !1372
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1372
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1375
  %37 = or i32 %36, 2048, !dbg !1375
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1375
  br label %48, !dbg !1376

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1377
  br i1 %39, label %40, label %45, !dbg !1379

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  %42 = and i32 %41, -29, !dbg !1380
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1382
  %44 = or i32 %43, 2048, !dbg !1382
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1382
  br label %48, !dbg !1383

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1384
  %47 = shl nuw i32 1, %46, !dbg !1384
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1384
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1339
  ret i32 %49, !dbg !1386
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1389, metadata !DIExpression()), !dbg !1392
  %2 = lshr i32 %0, 5, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %2, metadata !1390, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1392
  %3 = trunc i32 %0 to i16, !dbg !1394
  %4 = and i16 %3, 31, !dbg !1394
  call void @llvm.dbg.value(metadata i16 %3, metadata !1391, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1392
  %5 = trunc i32 %2 to i16, !dbg !1395
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1395

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1396
  br i1 %7, label %8, label %11, !dbg !1399

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1400
  %10 = shl nuw nsw i32 1, %9, !dbg !1401
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1401
  br label %48, !dbg !1403

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1404
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1404

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1405
  %15 = and i32 %14, -29, !dbg !1405
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1405
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1408
  %17 = or i32 %16, 2048, !dbg !1408
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1408
  br label %48, !dbg !1409

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1410
  %20 = and i32 %19, -29, !dbg !1410
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1410
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1413
  %22 = or i32 %21, 2048, !dbg !1413
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1413
  br label %48, !dbg !1414

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1415
  %25 = and i32 %24, -29, !dbg !1415
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1415
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1418
  %27 = or i32 %26, 2048, !dbg !1418
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1418
  br label %48, !dbg !1419

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1420
  %30 = and i32 %29, -29, !dbg !1420
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1420
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1423
  %32 = or i32 %31, 2048, !dbg !1423
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1423
  br label %48, !dbg !1424

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1425
  %35 = and i32 %34, -29, !dbg !1425
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1425
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1428
  %37 = or i32 %36, 2048, !dbg !1428
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1428
  br label %48, !dbg !1429

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1430
  br i1 %39, label %40, label %45, !dbg !1432

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1433
  %42 = and i32 %41, -29, !dbg !1433
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1433
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1435
  %44 = or i32 %43, 2048, !dbg !1435
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1435
  br label %48, !dbg !1436

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1437
  %47 = shl nuw i32 1, %46, !dbg !1437
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1437
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1392
  ret i32 %49, !dbg !1439
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1440 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1442, metadata !DIExpression()), !dbg !1445
  %2 = lshr i32 %0, 5, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %2, metadata !1443, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1445
  %3 = trunc i32 %0 to i16, !dbg !1447
  %4 = and i16 %3, 31, !dbg !1447
  call void @llvm.dbg.value(metadata i16 %3, metadata !1444, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1445
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1448
  %6 = trunc i32 %2 to i16, !dbg !1449
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1449

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1450
  br i1 %8, label %9, label %12, !dbg !1453

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1454
  %11 = shl nuw nsw i32 1, %10, !dbg !1455
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1455
  br label %49, !dbg !1457

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1458
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1458

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1459
  %16 = and i32 %15, -29, !dbg !1459
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1459
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1462
  %18 = or i32 %17, 2068, !dbg !1462
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1462
  br label %49, !dbg !1463

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1464
  %21 = and i32 %20, -29, !dbg !1464
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1464
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1467
  %23 = or i32 %22, 2068, !dbg !1467
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1467
  br label %49, !dbg !1468

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1469
  %26 = and i32 %25, -29, !dbg !1469
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1469
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1472
  %28 = or i32 %27, 2068, !dbg !1472
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1472
  br label %49, !dbg !1473

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1474
  %31 = and i32 %30, -29, !dbg !1474
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1474
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1477
  %33 = or i32 %32, 2068, !dbg !1477
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1477
  br label %49, !dbg !1478

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1479
  %36 = and i32 %35, -29, !dbg !1479
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1479
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1482
  %38 = or i32 %37, 2068, !dbg !1482
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1482
  br label %49, !dbg !1483

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1484
  br i1 %40, label %41, label %46, !dbg !1486

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1487
  %43 = and i32 %42, -29, !dbg !1487
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1487
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1489
  %45 = or i32 %44, 2068, !dbg !1489
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1489
  br label %49, !dbg !1490

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1491
  %48 = shl nuw i32 1, %47, !dbg !1491
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1491
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1445
  ret i32 %50, !dbg !1493
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1496, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()), !dbg !1500
  %3 = lshr i32 %0, 4, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %3, metadata !1498, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1500
  %4 = trunc i32 %0 to i16, !dbg !1502
  %5 = and i16 %4, 15, !dbg !1502
  call void @llvm.dbg.value(metadata i16 %4, metadata !1499, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1500
  %6 = trunc i32 %3 to i16, !dbg !1503
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1503

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1504
  %9 = zext i16 %8 to i32, !dbg !1504
  %10 = shl nuw i32 3, %9, !dbg !1506
  %11 = xor i32 %10, -1, !dbg !1507
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1508
  %13 = and i32 %12, %11, !dbg !1508
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1508
  %14 = lshr i8 %1, 2, !dbg !1509
  %15 = zext i8 %14 to i32, !dbg !1509
  %16 = add nsw i32 %15, -1, !dbg !1510
  %17 = shl i32 %16, %9, !dbg !1511
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1512
  %19 = or i32 %18, %17, !dbg !1512
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1512
  br label %131, !dbg !1513

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1514
  br i1 %21, label %22, label %35, !dbg !1516

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1517
  %24 = zext i16 %23 to i32, !dbg !1517
  %25 = shl nuw nsw i32 3, %24, !dbg !1519
  %26 = xor i32 %25, -1, !dbg !1520
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1521
  %28 = and i32 %27, %26, !dbg !1521
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1521
  %29 = lshr i8 %1, 2, !dbg !1522
  %30 = zext i8 %29 to i32, !dbg !1522
  %31 = add nsw i32 %30, -1, !dbg !1523
  %32 = shl nsw i32 %31, %24, !dbg !1524
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1525
  %34 = or i32 %33, %32, !dbg !1525
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1525
  br label %131, !dbg !1526

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1527
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1527

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1528
  %39 = and i32 %38, -449, !dbg !1528
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1528
  %40 = lshr i8 %1, 1, !dbg !1531
  %41 = zext i8 %40 to i32, !dbg !1531
  %42 = shl nuw nsw i32 %41, 6, !dbg !1532
  %43 = add nsw i32 %42, -64, !dbg !1532
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1533
  %45 = or i32 %44, %43, !dbg !1533
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1533
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1534
  %47 = or i32 %46, 2048, !dbg !1534
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1534
  br label %131, !dbg !1535

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1536
  %50 = and i32 %49, -449, !dbg !1536
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1536
  %51 = lshr i8 %1, 1, !dbg !1539
  %52 = zext i8 %51 to i32, !dbg !1539
  %53 = shl nuw nsw i32 %52, 6, !dbg !1540
  %54 = add nsw i32 %53, -64, !dbg !1540
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1541
  %56 = or i32 %55, %54, !dbg !1541
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1541
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1542
  %58 = or i32 %57, 2048, !dbg !1542
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1542
  br label %131, !dbg !1543

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1544
  %61 = and i32 %60, -449, !dbg !1544
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1544
  %62 = lshr i8 %1, 1, !dbg !1547
  %63 = zext i8 %62 to i32, !dbg !1547
  %64 = shl nuw nsw i32 %63, 6, !dbg !1548
  %65 = add nsw i32 %64, -64, !dbg !1548
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1549
  %67 = or i32 %66, %65, !dbg !1549
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1549
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1550
  %69 = or i32 %68, 2048, !dbg !1550
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1550
  br label %131, !dbg !1551

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1552
  %72 = and i32 %71, -449, !dbg !1552
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1552
  %73 = lshr i8 %1, 1, !dbg !1555
  %74 = zext i8 %73 to i32, !dbg !1555
  %75 = shl nuw nsw i32 %74, 6, !dbg !1556
  %76 = add nsw i32 %75, -64, !dbg !1556
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1557
  %78 = or i32 %77, %76, !dbg !1557
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1557
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1558
  %80 = or i32 %79, 2048, !dbg !1558
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1558
  br label %131, !dbg !1559

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1560
  %83 = and i32 %82, -449, !dbg !1560
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1560
  %84 = lshr i8 %1, 1, !dbg !1563
  %85 = zext i8 %84 to i32, !dbg !1563
  %86 = shl nuw nsw i32 %85, 6, !dbg !1564
  %87 = add nsw i32 %86, -64, !dbg !1564
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1565
  %89 = or i32 %88, %87, !dbg !1565
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1565
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1566
  %91 = or i32 %90, 2048, !dbg !1566
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1566
  br label %131, !dbg !1567

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1568
  br i1 %93, label %94, label %105, !dbg !1570

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1571
  %96 = and i32 %95, -449, !dbg !1571
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1571
  %97 = lshr i8 %1, 1, !dbg !1573
  %98 = zext i8 %97 to i32, !dbg !1573
  %99 = shl nuw nsw i32 %98, 6, !dbg !1574
  %100 = add nsw i32 %99, -64, !dbg !1574
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1575
  %102 = or i32 %101, %100, !dbg !1575
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1575
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1576
  %104 = or i32 %103, 2048, !dbg !1576
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1576
  br label %131, !dbg !1577

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1578
  %107 = zext i16 %106 to i32, !dbg !1578
  %108 = shl nuw i32 3, %107, !dbg !1580
  %109 = xor i32 %108, -1, !dbg !1581
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1582
  %111 = and i32 %110, %109, !dbg !1582
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1582
  %112 = lshr i8 %1, 2, !dbg !1583
  %113 = zext i8 %112 to i32, !dbg !1583
  %114 = add nsw i32 %113, -1, !dbg !1584
  %115 = shl i32 %114, %107, !dbg !1585
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1586
  %117 = or i32 %116, %115, !dbg !1586
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1586
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1587
  %120 = zext i16 %119 to i32, !dbg !1587
  %121 = shl nuw i32 3, %120, !dbg !1588
  %122 = xor i32 %121, -1, !dbg !1589
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1590
  %124 = and i32 %123, %122, !dbg !1590
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1590
  %125 = lshr i8 %1, 2, !dbg !1591
  %126 = zext i8 %125 to i32, !dbg !1591
  %127 = add nsw i32 %126, -1, !dbg !1592
  %128 = shl i32 %127, %120, !dbg !1593
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1594
  %130 = or i32 %129, %128, !dbg !1594
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1594
  br label %131, !dbg !1595

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1500
  ret i32 %132, !dbg !1596
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1597 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1602, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %1, metadata !1603, metadata !DIExpression()), !dbg !1607
  %3 = lshr i32 %0, 4, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %3, metadata !1604, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1607
  %4 = trunc i32 %0 to i16, !dbg !1609
  %5 = and i16 %4, 15, !dbg !1609
  call void @llvm.dbg.value(metadata i16 %4, metadata !1605, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %6 = trunc i32 %3 to i16, !dbg !1610
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1610

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %8, metadata !1606, metadata !DIExpression()), !dbg !1607
  %9 = shl nuw nsw i16 %5, 1, !dbg !1613
  %10 = zext i16 %9 to i32, !dbg !1613
  %11 = shl nuw i32 3, %10, !dbg !1614
  %12 = and i32 %8, %11, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %12, metadata !1606, metadata !DIExpression()), !dbg !1607
  %13 = lshr i32 %12, %10, !dbg !1616
  %14 = trunc i32 %13 to i8, !dbg !1617
  %15 = shl i8 %14, 2, !dbg !1617
  %16 = add i8 %15, 4, !dbg !1617
  br label %89, !dbg !1618

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1619
  br i1 %18, label %19, label %29, !dbg !1621

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1622
  call void @llvm.dbg.value(metadata i32 %20, metadata !1606, metadata !DIExpression()), !dbg !1607
  %21 = shl nuw nsw i16 %5, 1, !dbg !1624
  %22 = zext i16 %21 to i32, !dbg !1624
  %23 = shl nuw nsw i32 3, %22, !dbg !1625
  %24 = and i32 %20, %23, !dbg !1626
  call void @llvm.dbg.value(metadata i32 %24, metadata !1606, metadata !DIExpression()), !dbg !1607
  %25 = lshr i32 %24, %22, !dbg !1627
  %26 = trunc i32 %25 to i8, !dbg !1628
  %27 = shl i8 %26, 2, !dbg !1628
  %28 = add i8 %27, 4, !dbg !1628
  br label %89, !dbg !1629

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1630
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1630

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %32, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %32, metadata !1606, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %33 = lshr i32 %32, 5, !dbg !1634
  %34 = trunc i32 %33 to i8, !dbg !1635
  %35 = and i8 %34, 14, !dbg !1635
  %36 = add nuw nsw i8 %35, 2, !dbg !1635
  br label %89, !dbg !1636

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %38, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %38, metadata !1606, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %39 = lshr i32 %38, 5, !dbg !1640
  %40 = trunc i32 %39 to i8, !dbg !1641
  %41 = and i8 %40, 14, !dbg !1641
  %42 = add nuw nsw i8 %41, 2, !dbg !1641
  br label %89, !dbg !1642

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %44, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %44, metadata !1606, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %45 = lshr i32 %44, 5, !dbg !1646
  %46 = trunc i32 %45 to i8, !dbg !1647
  %47 = and i8 %46, 14, !dbg !1647
  %48 = add nuw nsw i8 %47, 2, !dbg !1647
  br label %89, !dbg !1648

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %50, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %50, metadata !1606, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %51 = lshr i32 %50, 5, !dbg !1652
  %52 = trunc i32 %51 to i8, !dbg !1653
  %53 = and i8 %52, 14, !dbg !1653
  %54 = add nuw nsw i8 %53, 2, !dbg !1653
  br label %89, !dbg !1654

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %56, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %56, metadata !1606, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %57 = lshr i32 %56, 5, !dbg !1658
  %58 = trunc i32 %57 to i8, !dbg !1659
  %59 = and i8 %58, 14, !dbg !1659
  %60 = add nuw nsw i8 %59, 2, !dbg !1659
  br label %89, !dbg !1660

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1661
  br i1 %62, label %63, label %69, !dbg !1663

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %64, metadata !1606, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %64, metadata !1606, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1607
  %65 = lshr i32 %64, 5, !dbg !1666
  %66 = trunc i32 %65 to i8, !dbg !1667
  %67 = and i8 %66, 14, !dbg !1667
  %68 = add nuw nsw i8 %67, 2, !dbg !1667
  br label %89, !dbg !1668

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %70, metadata !1606, metadata !DIExpression()), !dbg !1607
  %71 = shl nuw nsw i16 %5, 1, !dbg !1671
  %72 = zext i16 %71 to i32, !dbg !1671
  %73 = shl nuw i32 3, %72, !dbg !1672
  %74 = and i32 %70, %73, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %74, metadata !1606, metadata !DIExpression()), !dbg !1607
  %75 = lshr i32 %74, %72, !dbg !1674
  %76 = trunc i32 %75 to i8, !dbg !1675
  %77 = shl i8 %76, 2, !dbg !1675
  %78 = add i8 %77, 4, !dbg !1675
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %80, metadata !1606, metadata !DIExpression()), !dbg !1607
  %81 = shl nuw nsw i16 %5, 1, !dbg !1677
  %82 = zext i16 %81 to i32, !dbg !1677
  %83 = shl nuw i32 3, %82, !dbg !1678
  %84 = and i32 %80, %83, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %84, metadata !1606, metadata !DIExpression()), !dbg !1607
  %85 = lshr i32 %84, %82, !dbg !1680
  %86 = trunc i32 %85 to i8, !dbg !1681
  %87 = shl i8 %86, 2, !dbg !1681
  %88 = add i8 %87, 4, !dbg !1681
  br label %89, !dbg !1682

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1683
  br label %91, !dbg !1684

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1607
  ret i32 %92, !dbg !1684
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1685 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1690, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %1, metadata !1691, metadata !DIExpression()), !dbg !1694
  %3 = lshr i32 %0, 5, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %3, metadata !1692, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1694
  %4 = trunc i32 %0 to i16, !dbg !1696
  %5 = and i16 %4, 31, !dbg !1696
  call void @llvm.dbg.value(metadata i16 %5, metadata !1693, metadata !DIExpression()), !dbg !1694
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1697

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1692, metadata !DIExpression()), !dbg !1694
  %7 = trunc i32 %3 to i16, !dbg !1698
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1698

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1701
  %10 = shl nuw i32 1, %9, !dbg !1703
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1704
  %12 = or i32 %11, %10, !dbg !1704
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1704
  br label %32, !dbg !1705

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1706
  %15 = shl nuw i32 1, %14, !dbg !1707
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1708
  %17 = or i32 %16, %15, !dbg !1708
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1708
  br label %32, !dbg !1709

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1710
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1710

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1713
  %22 = shl nuw i32 1, %21, !dbg !1715
  %23 = xor i32 %22, -1, !dbg !1716
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1717
  %25 = and i32 %24, %23, !dbg !1717
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1717
  br label %32, !dbg !1718

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1719
  %28 = shl nuw i32 1, %27, !dbg !1720
  %29 = xor i32 %28, -1, !dbg !1721
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1722
  %31 = and i32 %30, %29, !dbg !1722
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1722
  br label %32, !dbg !1723

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1724
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1731, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %1, metadata !1732, metadata !DIExpression()), !dbg !1734
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
  ], !dbg !1735

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %4, metadata !1733, metadata !DIExpression()), !dbg !1734
  %5 = and i32 %4, -16, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %5, metadata !1733, metadata !DIExpression()), !dbg !1734
  %6 = zext i8 %1 to i32, !dbg !1739
  %7 = or i32 %5, %6, !dbg !1740
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1741
  br label %187, !dbg !1742

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %9, metadata !1733, metadata !DIExpression()), !dbg !1734
  %10 = and i32 %9, -241, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %10, metadata !1733, metadata !DIExpression()), !dbg !1734
  %11 = zext i8 %1 to i32, !dbg !1745
  %12 = shl nuw nsw i32 %11, 4, !dbg !1746
  %13 = or i32 %10, %12, !dbg !1747
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1748
  br label %187, !dbg !1749

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %15, metadata !1733, metadata !DIExpression()), !dbg !1734
  %16 = and i32 %15, -3841, !dbg !1751
  call void @llvm.dbg.value(metadata i32 %16, metadata !1733, metadata !DIExpression()), !dbg !1734
  %17 = zext i8 %1 to i32, !dbg !1752
  %18 = shl nuw nsw i32 %17, 8, !dbg !1753
  %19 = or i32 %16, %18, !dbg !1754
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1755
  br label %187, !dbg !1756

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %21, metadata !1733, metadata !DIExpression()), !dbg !1734
  %22 = and i32 %21, -61441, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %22, metadata !1733, metadata !DIExpression()), !dbg !1734
  %23 = zext i8 %1 to i32, !dbg !1759
  %24 = shl nuw nsw i32 %23, 12, !dbg !1760
  %25 = or i32 %22, %24, !dbg !1761
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1762
  br label %187, !dbg !1763

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %27, metadata !1733, metadata !DIExpression()), !dbg !1734
  %28 = and i32 %27, -983041, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %28, metadata !1733, metadata !DIExpression()), !dbg !1734
  %29 = zext i8 %1 to i32, !dbg !1766
  %30 = shl nuw nsw i32 %29, 16, !dbg !1767
  %31 = or i32 %28, %30, !dbg !1768
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1769
  br label %187, !dbg !1770

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %33, metadata !1733, metadata !DIExpression()), !dbg !1734
  %34 = and i32 %33, -15728641, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %34, metadata !1733, metadata !DIExpression()), !dbg !1734
  %35 = zext i8 %1 to i32, !dbg !1773
  %36 = shl nuw nsw i32 %35, 20, !dbg !1774
  %37 = or i32 %34, %36, !dbg !1775
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1776
  br label %187, !dbg !1777

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %39, metadata !1733, metadata !DIExpression()), !dbg !1734
  %40 = and i32 %39, -251658241, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %40, metadata !1733, metadata !DIExpression()), !dbg !1734
  %41 = zext i8 %1 to i32, !dbg !1780
  %42 = shl nuw i32 %41, 24, !dbg !1781
  %43 = or i32 %40, %42, !dbg !1782
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1783
  br label %187, !dbg !1784

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %45, metadata !1733, metadata !DIExpression()), !dbg !1734
  %46 = and i32 %45, 268435455, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %46, metadata !1733, metadata !DIExpression()), !dbg !1734
  %47 = zext i8 %1 to i32, !dbg !1787
  %48 = shl i32 %47, 28, !dbg !1788
  %49 = or i32 %46, %48, !dbg !1789
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1790
  br label %187, !dbg !1791

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %51, metadata !1733, metadata !DIExpression()), !dbg !1734
  %52 = and i32 %51, -16, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %52, metadata !1733, metadata !DIExpression()), !dbg !1734
  %53 = zext i8 %1 to i32, !dbg !1794
  %54 = or i32 %52, %53, !dbg !1795
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1796
  br label %187, !dbg !1797

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %56, metadata !1733, metadata !DIExpression()), !dbg !1734
  %57 = and i32 %56, -241, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %57, metadata !1733, metadata !DIExpression()), !dbg !1734
  %58 = zext i8 %1 to i32, !dbg !1800
  %59 = shl nuw nsw i32 %58, 4, !dbg !1801
  %60 = or i32 %57, %59, !dbg !1802
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1803
  br label %187, !dbg !1804

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %62, metadata !1733, metadata !DIExpression()), !dbg !1734
  %63 = and i32 %62, -3841, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %63, metadata !1733, metadata !DIExpression()), !dbg !1734
  %64 = zext i8 %1 to i32, !dbg !1807
  %65 = shl nuw nsw i32 %64, 8, !dbg !1808
  %66 = or i32 %63, %65, !dbg !1809
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1810
  br label %187, !dbg !1811

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %68, metadata !1733, metadata !DIExpression()), !dbg !1734
  %69 = and i32 %68, -61441, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %69, metadata !1733, metadata !DIExpression()), !dbg !1734
  %70 = zext i8 %1 to i32, !dbg !1814
  %71 = shl nuw nsw i32 %70, 12, !dbg !1815
  %72 = or i32 %69, %71, !dbg !1816
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1817
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1818

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !1820
  br label %187, !dbg !1822

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %76, metadata !1733, metadata !DIExpression()), !dbg !1734
  %77 = and i32 %76, -983041, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %77, metadata !1733, metadata !DIExpression()), !dbg !1734
  %78 = zext i8 %1 to i32, !dbg !1825
  %79 = shl nuw nsw i32 %78, 16, !dbg !1826
  %80 = or i32 %77, %79, !dbg !1827
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1828
  %81 = and i8 %1, -2, !dbg !1829
  %82 = icmp eq i8 %81, 4, !dbg !1829
  br i1 %82, label %83, label %187, !dbg !1829

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !1831
  br label %187, !dbg !1833

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %86, metadata !1733, metadata !DIExpression()), !dbg !1734
  %87 = and i32 %86, -15728641, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %87, metadata !1733, metadata !DIExpression()), !dbg !1734
  %88 = zext i8 %1 to i32, !dbg !1836
  %89 = shl nuw nsw i32 %88, 20, !dbg !1837
  %90 = or i32 %87, %89, !dbg !1838
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1839
  %91 = icmp eq i8 %1, 6, !dbg !1840
  br i1 %91, label %92, label %187, !dbg !1842

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !1843
  br label %187, !dbg !1845

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %95, metadata !1733, metadata !DIExpression()), !dbg !1734
  %96 = and i32 %95, -251658241, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %96, metadata !1733, metadata !DIExpression()), !dbg !1734
  %97 = zext i8 %1 to i32, !dbg !1848
  %98 = shl nuw i32 %97, 24, !dbg !1849
  %99 = or i32 %96, %98, !dbg !1850
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1851
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1852

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !1854
  br label %187, !dbg !1856

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %103, metadata !1733, metadata !DIExpression()), !dbg !1734
  %104 = and i32 %103, 268435455, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %104, metadata !1733, metadata !DIExpression()), !dbg !1734
  %105 = zext i8 %1 to i32, !dbg !1859
  %106 = shl i32 %105, 28, !dbg !1860
  %107 = or i32 %104, %106, !dbg !1861
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1862
  %108 = and i8 %1, -3, !dbg !1863
  %109 = icmp eq i8 %108, 4, !dbg !1863
  br i1 %109, label %110, label %187, !dbg !1863

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !1865
  br label %187, !dbg !1867

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %113, metadata !1733, metadata !DIExpression()), !dbg !1734
  %114 = and i32 %113, -16, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %114, metadata !1733, metadata !DIExpression()), !dbg !1734
  %115 = zext i8 %1 to i32, !dbg !1870
  %116 = or i32 %114, %115, !dbg !1871
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1872
  %117 = and i8 %1, -3, !dbg !1873
  %118 = icmp eq i8 %117, 4, !dbg !1873
  br i1 %118, label %119, label %187, !dbg !1873

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !1875
  br label %187, !dbg !1877

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %122, metadata !1733, metadata !DIExpression()), !dbg !1734
  %123 = and i32 %122, -241, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %123, metadata !1733, metadata !DIExpression()), !dbg !1734
  %124 = zext i8 %1 to i32, !dbg !1880
  %125 = shl nuw nsw i32 %124, 4, !dbg !1881
  %126 = or i32 %123, %125, !dbg !1882
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1883
  br label %187, !dbg !1884

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %128, metadata !1733, metadata !DIExpression()), !dbg !1734
  %129 = and i32 %128, -3841, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %129, metadata !1733, metadata !DIExpression()), !dbg !1734
  %130 = zext i8 %1 to i32, !dbg !1887
  %131 = shl nuw nsw i32 %130, 8, !dbg !1888
  %132 = or i32 %129, %131, !dbg !1889
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1890
  br label %187, !dbg !1891

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %134, metadata !1733, metadata !DIExpression()), !dbg !1734
  %135 = and i32 %134, -61441, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %135, metadata !1733, metadata !DIExpression()), !dbg !1734
  %136 = zext i8 %1 to i32, !dbg !1894
  %137 = shl nuw nsw i32 %136, 12, !dbg !1895
  %138 = or i32 %135, %137, !dbg !1896
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1897
  br label %187, !dbg !1898

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %140, metadata !1733, metadata !DIExpression()), !dbg !1734
  %141 = and i32 %140, -983041, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %141, metadata !1733, metadata !DIExpression()), !dbg !1734
  %142 = zext i8 %1 to i32, !dbg !1901
  %143 = shl nuw nsw i32 %142, 16, !dbg !1902
  %144 = or i32 %141, %143, !dbg !1903
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1904
  br label %187, !dbg !1905

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %146, metadata !1733, metadata !DIExpression()), !dbg !1734
  %147 = and i32 %146, -15728641, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %147, metadata !1733, metadata !DIExpression()), !dbg !1734
  %148 = zext i8 %1 to i32, !dbg !1908
  %149 = shl nuw nsw i32 %148, 20, !dbg !1909
  %150 = or i32 %147, %149, !dbg !1910
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1911
  br label %187, !dbg !1912

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %152, metadata !1733, metadata !DIExpression()), !dbg !1734
  %153 = and i32 %152, -251658241, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %153, metadata !1733, metadata !DIExpression()), !dbg !1734
  %154 = zext i8 %1 to i32, !dbg !1915
  %155 = shl nuw i32 %154, 24, !dbg !1916
  %156 = or i32 %153, %155, !dbg !1917
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1918
  br label %187, !dbg !1919

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %158, metadata !1733, metadata !DIExpression()), !dbg !1734
  %159 = and i32 %158, 268435455, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %159, metadata !1733, metadata !DIExpression()), !dbg !1734
  %160 = zext i8 %1 to i32, !dbg !1922
  %161 = shl i32 %160, 28, !dbg !1923
  %162 = or i32 %159, %161, !dbg !1924
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1925
  br label %187, !dbg !1926

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %164, metadata !1733, metadata !DIExpression()), !dbg !1734
  %165 = and i32 %164, -241, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %165, metadata !1733, metadata !DIExpression()), !dbg !1734
  %166 = zext i8 %1 to i32, !dbg !1929
  %167 = shl nuw nsw i32 %166, 4, !dbg !1930
  %168 = or i32 %165, %167, !dbg !1931
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1932
  br label %187, !dbg !1933

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %170, metadata !1733, metadata !DIExpression()), !dbg !1734
  %171 = and i32 %170, -3841, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %171, metadata !1733, metadata !DIExpression()), !dbg !1734
  %172 = zext i8 %1 to i32, !dbg !1936
  %173 = shl nuw nsw i32 %172, 8, !dbg !1937
  %174 = or i32 %171, %173, !dbg !1938
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1939
  br label %187, !dbg !1940

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %176, metadata !1733, metadata !DIExpression()), !dbg !1734
  %177 = and i32 %176, -61441, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %177, metadata !1733, metadata !DIExpression()), !dbg !1734
  %178 = zext i8 %1 to i32, !dbg !1943
  %179 = shl nuw nsw i32 %178, 12, !dbg !1944
  %180 = or i32 %177, %179, !dbg !1945
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1946
  br label %187, !dbg !1947

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1948
  call void @llvm.dbg.value(metadata i32 %182, metadata !1733, metadata !DIExpression()), !dbg !1734
  %183 = and i32 %182, -983041, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %183, metadata !1733, metadata !DIExpression()), !dbg !1734
  %184 = zext i8 %1 to i32, !dbg !1950
  %185 = shl nuw nsw i32 %184, 16, !dbg !1951
  %186 = or i32 %183, %185, !dbg !1952
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1953
  br label %187, !dbg !1954

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1955
}

; Function Attrs: noinline nounwind optsize
define dso_local void @spim_irqhandler(i32 %0) #3 !dbg !1956 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 undef, metadata !1958, metadata !DIExpression()), !dbg !1960
  %3 = bitcast i32* %2 to i8*, !dbg !1961
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !1961
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1959, metadata !DIExpression()), !dbg !1962
  %4 = load void ()*, void ()** @halspim_isr, align 4, !dbg !1963
  tail call void %4() #15, !dbg !1963
  %5 = load volatile i32, i32* inttoptr (i32 603979828 to i32*), align 4, !dbg !1964
  store volatile i32 %5, i32* %2, align 4, !dbg !1965
  %6 = load volatile i32, i32* %2, align 4, !dbg !1966
  store volatile i32 %6, i32* %2, align 4, !dbg !1967
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !1968
  ret void, !dbg !1968
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @spim_isr_Register(void ()* noundef %0) local_unnamed_addr #5 !dbg !1969 {
  call void @llvm.dbg.value(metadata void ()* %0, metadata !1973, metadata !DIExpression()), !dbg !1974
  store void ()* %0, void ()** @halspim_isr, align 4, !dbg !1975
  ret void, !dbg !1976
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halSpim_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1977 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1981, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %1, metadata !1982, metadata !DIExpression()), !dbg !1985
  %4 = bitcast i32* %3 to i8*, !dbg !1986
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !1986
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1983, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1984, metadata !DIExpression()), !dbg !1985
  %5 = tail call fastcc i32 @cmnReadRegister32() #14, !dbg !1988
  store volatile i32 %5, i32* %3, align 4, !dbg !1989
  %6 = load volatile i32, i32* %3, align 4, !dbg !1990
  %7 = lshr i32 %6, 28, !dbg !1991
  %8 = and i32 %7, 3, !dbg !1992
  store volatile i32 %8, i32* %3, align 4, !dbg !1993
  %9 = load volatile i32, i32* %3, align 4, !dbg !1994
  %10 = icmp eq i32 %9, 3, !dbg !1996
  br i1 %10, label %12, label %11, !dbg !1997

11:                                               ; preds = %2
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #15, !dbg !1998
  br label %12, !dbg !2000

12:                                               ; preds = %11, %2
  %13 = load volatile i32, i32* inttoptr (i32 -2097118796 to i32*), align 4, !dbg !2001
  %14 = and i32 %13, -131073, !dbg !2001
  store volatile i32 %14, i32* inttoptr (i32 -2097118796 to i32*), align 4, !dbg !2001
  %15 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 27, void (i32)* noundef nonnull @spim_irqhandler) #15, !dbg !2002
  %16 = tail call i32 @hal_nvic_set_priority(i32 noundef 27, i32 noundef 5) #15, !dbg !2003
  %17 = tail call i32 @hal_nvic_enable_irq(i32 noundef 27) #15, !dbg !2004
  %18 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2005
  %19 = and i32 %18, 268499332, !dbg !2005
  store volatile i32 %19, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2005
  %20 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2006
  %21 = shl i32 %1, 16, !dbg !2006
  %22 = or i32 %21, %0, !dbg !2006
  %23 = or i32 %22, %20, !dbg !2006
  store volatile i32 %23, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4), !dbg !2007
  ret i32 0, !dbg !2008
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32() unnamed_addr #2 !dbg !2009 {
  call void @llvm.dbg.value(metadata i8* inttoptr (i32 -2097118792 to i8*), metadata !2016, metadata !DIExpression()), !dbg !2017
  %1 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2018
  ret i32 %1, !dbg !2019
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @spim_busy_wait() local_unnamed_addr #0 !dbg !2020 {
  call void @llvm.dbg.value(metadata i32 60000, metadata !2024, metadata !DIExpression()), !dbg !2025
  br label %1, !dbg !2026

1:                                                ; preds = %6, %0
  %2 = phi i32 [ 60000, %0 ], [ %7, %6 ], !dbg !2025
  call void @llvm.dbg.value(metadata i32 %2, metadata !2024, metadata !DIExpression()), !dbg !2025
  %3 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2027
  %4 = and i32 %3, 65536, !dbg !2030
  %5 = icmp eq i32 %4, 0, !dbg !2031
  br i1 %5, label %9, label %6, !dbg !2032

6:                                                ; preds = %1
  %7 = add nsw i32 %2, -1, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %7, metadata !2024, metadata !DIExpression()), !dbg !2025
  %8 = icmp ugt i32 %2, 1, !dbg !2034
  br i1 %8, label %1, label %9, !dbg !2035, !llvm.loop !2036

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ -1, %6 ], !dbg !2025
  ret i32 %10, !dbg !2038
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !2039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2047, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %1, metadata !2048, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8* %2, metadata !2049, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %3, metadata !2050, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %4, metadata !2051, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 -1, metadata !2056, metadata !DIExpression()), !dbg !2058
  %6 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2059
  %7 = or i32 %6, 4, !dbg !2059
  store volatile i32 %7, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2059
  store volatile i32 %0, i32* inttoptr (i32 603979780 to i32*), align 4, !dbg !2060
  %8 = shl i32 %1, 27, !dbg !2061
  store volatile i32 %8, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2061
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2058
  br label %9, !dbg !2062

9:                                                ; preds = %5, %9
  %10 = phi i32 [ 0, %5 ], [ %14, %9 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !2053, metadata !DIExpression()), !dbg !2058
  %11 = shl nuw nsw i32 %10, 2, !dbg !2064
  %12 = add nuw nsw i32 %11, 603979784, !dbg !2064
  %13 = inttoptr i32 %12 to i32*, !dbg !2064
  store volatile i32 0, i32* %13, align 4, !dbg !2064
  %14 = add nuw nsw i32 %10, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %14, metadata !2053, metadata !DIExpression()), !dbg !2058
  %15 = icmp eq i32 %14, 8, !dbg !2068
  br i1 %15, label %16, label %9, !dbg !2062, !llvm.loop !2069

16:                                               ; preds = %9
  %17 = and i32 %4, 2, !dbg !2071
  %18 = icmp eq i32 %17, 0, !dbg !2071
  br i1 %18, label %41, label %19, !dbg !2073

19:                                               ; preds = %16
  %20 = icmp eq i8* %2, null, !dbg !2074
  br i1 %20, label %70, label %21, !dbg !2077

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2058
  %22 = icmp eq i32 %3, 0, !dbg !2078
  br i1 %22, label %41, label %23, !dbg !2081

23:                                               ; preds = %21, %31
  %24 = phi i32 [ %39, %31 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !2053, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %24, metadata !2054, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2058
  %25 = and i32 %24, 3, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %25, metadata !2055, metadata !DIExpression()), !dbg !2058
  %26 = icmp eq i32 %25, 0, !dbg !2084
  %27 = and i32 %24, 2147483644, !dbg !2086
  %28 = add nuw nsw i32 %27, 603979784, !dbg !2086
  %29 = inttoptr i32 %28 to i32*, !dbg !2086
  br i1 %26, label %30, label %31, !dbg !2087

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %24, metadata !2054, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2058
  store volatile i32 0, i32* %29, align 4, !dbg !2088
  br label %31, !dbg !2090

31:                                               ; preds = %23, %30
  %32 = load volatile i32, i32* %29, align 4, !dbg !2091
  %33 = getelementptr inbounds i8, i8* %2, i32 %24, !dbg !2091
  %34 = load i8, i8* %33, align 1, !dbg !2091
  %35 = zext i8 %34 to i32, !dbg !2091
  %36 = shl nuw nsw i32 %25, 3, !dbg !2091
  %37 = shl nuw i32 %35, %36, !dbg !2091
  %38 = or i32 %37, %32, !dbg !2091
  store volatile i32 %38, i32* %29, align 4, !dbg !2091
  %39 = add nuw i32 %24, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %39, metadata !2053, metadata !DIExpression()), !dbg !2058
  %40 = icmp eq i32 %39, %3, !dbg !2078
  br i1 %40, label %41, label %23, !dbg !2081, !llvm.loop !2093

41:                                               ; preds = %31, %16, %21
  %42 = phi i32 [ 3, %21 ], [ 15, %16 ], [ 3, %31 ]
  %43 = load volatile i32, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2095
  %44 = and i32 %43, -2093568, !dbg !2095
  store volatile i32 %44, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2095
  %45 = load volatile i32, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2096
  %46 = shl i32 %3, %42, !dbg !2096
  %47 = or i32 %45, %46, !dbg !2096
  store volatile i32 %47, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2096
  %48 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2098
  %49 = or i32 %48, 256, !dbg !2098
  store volatile i32 %49, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2098
  %50 = tail call i32 @spim_busy_wait() #14, !dbg !2099
  %51 = and i32 %4, 3, !dbg !2100
  %52 = icmp eq i32 %51, 1, !dbg !2100
  br i1 %52, label %53, label %70, !dbg !2100

53:                                               ; preds = %41
  %54 = icmp eq i8* %2, null, !dbg !2101
  br i1 %54, label %74, label %55, !dbg !2105

55:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !2053, metadata !DIExpression()), !dbg !2058
  %56 = icmp eq i32 %3, 0, !dbg !2106
  br i1 %56, label %70, label %57, !dbg !2109

57:                                               ; preds = %55, %57
  %58 = phi i32 [ %68, %57 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i32 %58, metadata !2053, metadata !DIExpression()), !dbg !2058
  %59 = and i32 %58, 2147483644, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %58, metadata !2054, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2058
  call void @llvm.dbg.value(metadata i32 %58, metadata !2055, metadata !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !2058
  %60 = add nuw nsw i32 %59, 603979784, !dbg !2110
  %61 = inttoptr i32 %60 to i32*, !dbg !2110
  %62 = load volatile i32, i32* %61, align 4, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %62, metadata !2052, metadata !DIExpression()), !dbg !2058
  %63 = shl i32 %58, 3, !dbg !2112
  %64 = and i32 %63, 24, !dbg !2112
  %65 = lshr i32 %62, %64, !dbg !2113
  %66 = trunc i32 %65 to i8, !dbg !2114
  %67 = getelementptr inbounds i8, i8* %2, i32 %58, !dbg !2115
  store i8 %66, i8* %67, align 1, !dbg !2116
  %68 = add nuw nsw i32 %58, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %68, metadata !2053, metadata !DIExpression()), !dbg !2058
  %69 = icmp eq i32 %68, %3, !dbg !2106
  br i1 %69, label %70, label %57, !dbg !2109, !llvm.loop !2118

70:                                               ; preds = %57, %55, %41, %19
  %71 = phi i32 [ -1, %19 ], [ 0, %41 ], [ 0, %55 ], [ 0, %57 ], !dbg !2058
  call void @llvm.dbg.value(metadata i32 %71, metadata !2056, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.label(metadata !2057), !dbg !2120
  %72 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2121
  %73 = and i32 %72, -5, !dbg !2121
  store volatile i32 %73, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2121
  br label %74, !dbg !2122

74:                                               ; preds = %53, %70
  %75 = phi i32 [ %71, %70 ], [ -1, %53 ], !dbg !2058
  ret i32 %75, !dbg !2123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 %1, metadata !2129, metadata !DIExpression()), !dbg !2130
  %3 = trunc i32 %1 to i8, !dbg !2131
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #15, !dbg !2132
  ret i32 %4, !dbg !2133
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 %1, metadata !2139, metadata !DIExpression()), !dbg !2140
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2141
  ret i32 %3, !dbg !2142
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2143 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !2155, metadata !DIExpression()), !dbg !2157
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !2158
  store i32 %1, i32* %3, align 4, !dbg !2159
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #15, !dbg !2160
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !2161
  store i8 %4, i8* %5, align 4, !dbg !2162
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #15, !dbg !2163
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !2164
  store i8 %6, i8* %7, align 1, !dbg !2165
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #15, !dbg !2166
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !2167
  store i8 %8, i8* %9, align 2, !dbg !2168
  ret void, !dbg !2169
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #3 !dbg !2170 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 0, metadata !2175, metadata !DIExpression()), !dbg !2176
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2177
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #15, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %2, metadata !2175, metadata !DIExpression()), !dbg !2176
  ret i32 %2, !dbg !2179
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #3 !dbg !2180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 0, metadata !2183, metadata !DIExpression()), !dbg !2184
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2185
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #15, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %2, metadata !2183, metadata !DIExpression()), !dbg !2184
  ret i32 %2, !dbg !2187
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #3 !dbg !2188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 0, metadata !2191, metadata !DIExpression()), !dbg !2192
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2193
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %2, metadata !2191, metadata !DIExpression()), !dbg !2192
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %3, metadata !2191, metadata !DIExpression()), !dbg !2192
  ret i32 %3, !dbg !2196
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2197 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %1, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 0, metadata !2201, metadata !DIExpression()), !dbg !2202
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %3, metadata !2201, metadata !DIExpression()), !dbg !2202
  ret i32 %3, !dbg !2204
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !2205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2212
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #15, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %3, metadata !2211, metadata !DIExpression()), !dbg !2212
  ret i32 %3, !dbg !2214
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #0 !dbg !2215 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2217, metadata !DIExpression()), !dbg !2218
  br label %1, !dbg !2219

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2217, metadata !DIExpression()), !dbg !2218
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2221
  %4 = load i32, i32* %3, align 4, !dbg !2221
  %5 = inttoptr i32 %4 to i32*, !dbg !2221
  %6 = load volatile i32, i32* %5, align 4, !dbg !2221
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2224
  store i32 %6, i32* %7, align 4, !dbg !2225
  %8 = add nuw nsw i32 %2, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %8, metadata !2217, metadata !DIExpression()), !dbg !2218
  %9 = icmp eq i32 %8, 22, !dbg !2227
  br i1 %9, label %10, label %1, !dbg !2219, !llvm.loop !2228

10:                                               ; preds = %1
  ret void, !dbg !2230
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #0 !dbg !2231 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2233, metadata !DIExpression()), !dbg !2234
  br label %1, !dbg !2235

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2233, metadata !DIExpression()), !dbg !2234
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2237
  %4 = load i32, i32* %3, align 4, !dbg !2237
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2240
  %6 = load i32, i32* %5, align 4, !dbg !2240
  %7 = inttoptr i32 %6 to i32*, !dbg !2240
  store volatile i32 %4, i32* %7, align 4, !dbg !2241
  %8 = add nuw nsw i32 %2, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %8, metadata !2233, metadata !DIExpression()), !dbg !2234
  %9 = icmp eq i32 %8, 22, !dbg !2243
  br i1 %9, label %10, label %1, !dbg !2235, !llvm.loop !2244

10:                                               ; preds = %1
  ret void, !dbg !2246
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2251, metadata !DIExpression()), !dbg !2252
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2253
  tail call void asm sideeffect "dsb", ""() #16, !dbg !2254, !srcloc !2255
  tail call void asm sideeffect "isb", ""() #16, !dbg !2256, !srcloc !2257
  ret void, !dbg !2258
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !2259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2263, metadata !DIExpression()), !dbg !2264
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2265
  ret void, !dbg !2266
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2267 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #16, !dbg !2272, !srcloc !2279
  call void @llvm.dbg.value(metadata i32 %1, metadata !2276, metadata !DIExpression()) #16, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %1, metadata !2271, metadata !DIExpression()), !dbg !2281
  tail call void asm sideeffect "cpsid i", "~{memory}"() #16, !dbg !2282, !srcloc !2286
  ret i32 %1, !dbg !2287
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2290, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %0, metadata !2292, metadata !DIExpression()) #16, !dbg !2295
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #16, !dbg !2298, !srcloc !2299
  ret void, !dbg !2300
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %1, metadata !2306, metadata !DIExpression()), !dbg !2308
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
  ], !dbg !2309

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2307, metadata !DIExpression()), !dbg !2308
  %4 = trunc i32 %1 to i8, !dbg !2310
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2311
  br label %5, !dbg !2312

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2308
  ret i32 %6, !dbg !2313
}

; Function Attrs: noinline nounwind optsize
define dso_local void @spim_Lisr() #3 !dbg !2314 {
  %1 = load volatile i32, i32* @spi_ok_cnt, align 4, !dbg !2315
  %2 = add nsw i32 %1, 1, !dbg !2315
  store volatile i32 %2, i32* @spi_ok_cnt, align 4, !dbg !2315
  %3 = load volatile i32, i32* @spi_ok_cnt, align 4, !dbg !2316
  %4 = load i32, i32* @quotient, align 4, !dbg !2318
  %5 = add i32 %4, 1, !dbg !2319
  %6 = icmp eq i32 %3, %5, !dbg !2320
  br i1 %6, label %7, label %10, !dbg !2321

7:                                                ; preds = %0
  %8 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2322
  %9 = tail call i32 @hal_gpio_set_output(i32 noundef %8, i32 noundef 1) #15, !dbg !2324
  store volatile i32 0, i32* @spi_ok_cnt, align 4, !dbg !2325
  br label %10, !dbg !2326

10:                                               ; preds = %7, %0
  ret void, !dbg !2327
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2332, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 %1, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 0, metadata !2334, metadata !DIExpression()), !dbg !2335
  tail call void @spim_isr_Register(void ()* noundef nonnull @spim_Lisr) #15, !dbg !2336
  %3 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2337
  %4 = tail call i32 @hal_gpio_set_direction(i32 noundef %3, i32 noundef 1) #15, !dbg !2338
  %5 = or i32 %0, 4, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %5, metadata !2332, metadata !DIExpression()), !dbg !2335
  %6 = tail call i32 @halSpim_init(i32 noundef %5, i32 noundef %1) #15, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %6, metadata !2334, metadata !DIExpression()), !dbg !2335
  %7 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2341
  %8 = tail call i32 @hal_gpio_set_output(i32 noundef %7, i32 noundef 1) #15, !dbg !2342
  ret i32 %6, !dbg !2343
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_write(i8* noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !159 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !167, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 %1, metadata !168, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 0, metadata !171, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 4, metadata !172, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2344
  %3 = udiv i32 %1, 36, !dbg !2345
  store i32 %3, i32* @quotient, align 4, !dbg !2346
  %4 = mul i32 %3, 36
  %5 = sub i32 %1, %4
  store i32 %5, i32* @spim_write.remainder, align 4, !dbg !2347
  %6 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2348
  %7 = and i32 %6, 8, !dbg !2349
  store i32 %7, i32* @spim_write.regVal, align 4, !dbg !2349
  %8 = icmp eq i32 %1, 0, !dbg !2350
  br i1 %8, label %57, label %9, !dbg !2352

9:                                                ; preds = %2
  %10 = icmp ult i32 %1, 5, !dbg !2353
  br i1 %10, label %19, label %11, !dbg !2355

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !2344
  %12 = icmp ult i32 %1, 36, !dbg !2356
  br i1 %12, label %38, label %13, !dbg !2360

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %0, i32 4
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2344
  %15 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef 0, i32 noundef %7, i32 noundef 4) #14, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %15, metadata !171, metadata !DIExpression()), !dbg !2344
  %16 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %15, i32 noundef 4, i8* noundef nonnull %14, i32 noundef 32, i32 noundef 2) #15, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %16, metadata !169, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 1, metadata !173, metadata !DIExpression()), !dbg !2344
  %17 = load i32, i32* @quotient, align 4, !dbg !2364
  %18 = icmp ugt i32 %17, 1, !dbg !2356
  br i1 %18, label %22, label %32, !dbg !2360, !llvm.loop !2365

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef 0, i32 noundef %7, i32 noundef %5) #14, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %20, metadata !171, metadata !DIExpression()), !dbg !2344
  %21 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %20, i32 noundef %1, i8* noundef null, i32 noundef 0, i32 noundef 0) #15, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %21, metadata !169, metadata !DIExpression()), !dbg !2344
  br label %57, !dbg !2370

22:                                               ; preds = %13, %22
  %23 = phi i32 [ %29, %22 ], [ 1, %13 ]
  %24 = load i32, i32* @spim_write.regVal, align 4, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %23, metadata !173, metadata !DIExpression()), !dbg !2344
  %25 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %23, i32 noundef %24, i32 noundef 4) #14, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %25, metadata !171, metadata !DIExpression()), !dbg !2344
  %26 = mul i32 %23, 36, !dbg !2372
  %27 = getelementptr inbounds i8, i8* %14, i32 %26, !dbg !2373
  %28 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %25, i32 noundef 4, i8* noundef nonnull %27, i32 noundef 32, i32 noundef 2) #15, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %28, metadata !169, metadata !DIExpression()), !dbg !2344
  %29 = add nuw i32 %23, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %29, metadata !173, metadata !DIExpression()), !dbg !2344
  %30 = load i32, i32* @quotient, align 4, !dbg !2364
  %31 = icmp ult i32 %29, %30, !dbg !2356
  br i1 %31, label %22, label %32, !dbg !2360, !llvm.loop !2365

32:                                               ; preds = %22, %13
  %33 = phi i32 [ %16, %13 ], [ %28, %22 ], !dbg !2363
  %34 = phi i32 [ 1, %13 ], [ %29, %22 ], !dbg !2374
  %35 = phi i32 [ %17, %13 ], [ %30, %22 ], !dbg !2364
  %36 = load i32, i32* @spim_write.remainder, align 4, !dbg !2375
  %37 = mul i32 %35, 36, !dbg !2375
  br label %38, !dbg !2375

38:                                               ; preds = %32, %11
  %39 = phi i32 [ %5, %11 ], [ %36, %32 ], !dbg !2375
  %40 = phi i32 [ 0, %11 ], [ %33, %32 ], !dbg !2344
  %41 = phi i32 [ 0, %11 ], [ %34, %32 ], !dbg !2377
  %42 = phi i32 [ 0, %11 ], [ %37, %32 ]
  %43 = icmp ult i32 %39, 5, !dbg !2378
  br i1 %43, label %44, label %50, !dbg !2379

44:                                               ; preds = %38
  %45 = icmp eq i32 %39, 0, !dbg !2380
  br i1 %45, label %57, label %46, !dbg !2383

46:                                               ; preds = %44
  %47 = load i32, i32* @spim_write.regVal, align 4, !dbg !2384
  %48 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %41, i32 noundef %47, i32 noundef %39) #14, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %48, metadata !171, metadata !DIExpression()), !dbg !2344
  %49 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %48, i32 noundef %39, i8* noundef null, i32 noundef 0, i32 noundef 0) #15, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %49, metadata !169, metadata !DIExpression()), !dbg !2344
  br label %57, !dbg !2387

50:                                               ; preds = %38
  %51 = load i32, i32* @spim_write.regVal, align 4, !dbg !2388
  %52 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %41, i32 noundef %51, i32 noundef 4) #14, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %52, metadata !171, metadata !DIExpression()), !dbg !2344
  %53 = getelementptr inbounds i8, i8* %0, i32 %42, !dbg !2391
  %54 = getelementptr inbounds i8, i8* %53, i32 4, !dbg !2392
  %55 = add i32 %39, -4, !dbg !2393
  %56 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %52, i32 noundef 4, i8* noundef nonnull %54, i32 noundef %55, i32 noundef 2) #15, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %56, metadata !169, metadata !DIExpression()), !dbg !2344
  br label %57, !dbg !2395

57:                                               ; preds = %44, %2, %50, %46, %19
  %58 = phi i32 [ %21, %19 ], [ %49, %46 ], [ %56, %50 ], [ -1, %2 ], [ %40, %44 ], !dbg !2344
  ret i32 %58, !dbg !2396
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @spim_fill_in_data(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !dbg !2397 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2401, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %2, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %3, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2405, metadata !DIExpression()), !dbg !2406
  %5 = icmp eq i32 %2, 0, !dbg !2407
  br i1 %5, label %6, label %57, !dbg !2409

6:                                                ; preds = %4
  switch i32 %3, label %108 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %22
    i32 4, label %37
  ], !dbg !2410

7:                                                ; preds = %6
  %8 = mul i32 %1, 36, !dbg !2412
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !2415
  %10 = load i8, i8* %9, align 1, !dbg !2416
  %11 = zext i8 %10 to i32, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %11, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2417

12:                                               ; preds = %6
  %13 = mul i32 %1, 36, !dbg !2418
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !2421
  %15 = load i8, i8* %14, align 1, !dbg !2422
  %16 = zext i8 %15 to i32, !dbg !2422
  %17 = shl nuw nsw i32 %16, 8, !dbg !2423
  %18 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !2424
  %19 = load i8, i8* %18, align 1, !dbg !2425
  %20 = zext i8 %19 to i32, !dbg !2425
  %21 = or i32 %17, %20, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %21, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2427

22:                                               ; preds = %6
  %23 = mul i32 %1, 36, !dbg !2428
  %24 = getelementptr inbounds i8, i8* %0, i32 %23, !dbg !2431
  %25 = load i8, i8* %24, align 1, !dbg !2432
  %26 = zext i8 %25 to i32, !dbg !2432
  %27 = shl nuw nsw i32 %26, 16, !dbg !2433
  %28 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !2434
  %29 = load i8, i8* %28, align 1, !dbg !2435
  %30 = zext i8 %29 to i32, !dbg !2435
  %31 = shl nuw nsw i32 %30, 8, !dbg !2436
  %32 = or i32 %31, %27, !dbg !2437
  %33 = getelementptr inbounds i8, i8* %24, i32 2, !dbg !2438
  %34 = load i8, i8* %33, align 1, !dbg !2439
  %35 = zext i8 %34 to i32, !dbg !2439
  %36 = or i32 %32, %35, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %36, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2441

37:                                               ; preds = %6
  %38 = mul i32 %1, 36, !dbg !2442
  %39 = getelementptr inbounds i8, i8* %0, i32 %38, !dbg !2445
  %40 = load i8, i8* %39, align 1, !dbg !2446
  %41 = zext i8 %40 to i32, !dbg !2446
  %42 = shl nuw i32 %41, 24, !dbg !2447
  %43 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !2448
  %44 = load i8, i8* %43, align 1, !dbg !2449
  %45 = zext i8 %44 to i32, !dbg !2449
  %46 = shl nuw nsw i32 %45, 16, !dbg !2450
  %47 = or i32 %46, %42, !dbg !2451
  %48 = getelementptr inbounds i8, i8* %39, i32 2, !dbg !2452
  %49 = load i8, i8* %48, align 1, !dbg !2453
  %50 = zext i8 %49 to i32, !dbg !2453
  %51 = shl nuw nsw i32 %50, 8, !dbg !2454
  %52 = or i32 %47, %51, !dbg !2455
  %53 = getelementptr inbounds i8, i8* %39, i32 3, !dbg !2456
  %54 = load i8, i8* %53, align 1, !dbg !2457
  %55 = zext i8 %54 to i32, !dbg !2457
  %56 = or i32 %52, %55, !dbg !2458
  call void @llvm.dbg.value(metadata i32 %56, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2459

57:                                               ; preds = %4
  switch i32 %3, label %108 [
    i32 1, label %58
    i32 2, label %63
    i32 3, label %73
    i32 4, label %88
  ], !dbg !2460

58:                                               ; preds = %57
  %59 = mul i32 %1, 36, !dbg !2462
  %60 = getelementptr inbounds i8, i8* %0, i32 %59, !dbg !2465
  %61 = load i8, i8* %60, align 1, !dbg !2466
  %62 = zext i8 %61 to i32, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %62, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2467

63:                                               ; preds = %57
  %64 = mul i32 %1, 36, !dbg !2468
  %65 = getelementptr inbounds i8, i8* %0, i32 %64, !dbg !2471
  %66 = load i8, i8* %65, align 1, !dbg !2472
  %67 = zext i8 %66 to i32, !dbg !2472
  %68 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !2473
  %69 = load i8, i8* %68, align 1, !dbg !2474
  %70 = zext i8 %69 to i32, !dbg !2474
  %71 = shl nuw nsw i32 %70, 8, !dbg !2475
  %72 = or i32 %71, %67, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %72, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2477

73:                                               ; preds = %57
  %74 = mul i32 %1, 36, !dbg !2478
  %75 = getelementptr inbounds i8, i8* %0, i32 %74, !dbg !2481
  %76 = load i8, i8* %75, align 1, !dbg !2482
  %77 = zext i8 %76 to i32, !dbg !2482
  %78 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !2483
  %79 = load i8, i8* %78, align 1, !dbg !2484
  %80 = zext i8 %79 to i32, !dbg !2484
  %81 = shl nuw nsw i32 %80, 8, !dbg !2485
  %82 = or i32 %81, %77, !dbg !2486
  %83 = getelementptr inbounds i8, i8* %75, i32 2, !dbg !2487
  %84 = load i8, i8* %83, align 1, !dbg !2488
  %85 = zext i8 %84 to i32, !dbg !2488
  %86 = shl nuw nsw i32 %85, 16, !dbg !2489
  %87 = or i32 %82, %86, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %87, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2491

88:                                               ; preds = %57
  %89 = mul i32 %1, 36, !dbg !2492
  %90 = getelementptr inbounds i8, i8* %0, i32 %89, !dbg !2495
  %91 = load i8, i8* %90, align 1, !dbg !2496
  %92 = zext i8 %91 to i32, !dbg !2496
  %93 = getelementptr inbounds i8, i8* %90, i32 1, !dbg !2497
  %94 = load i8, i8* %93, align 1, !dbg !2498
  %95 = zext i8 %94 to i32, !dbg !2498
  %96 = shl nuw nsw i32 %95, 8, !dbg !2499
  %97 = or i32 %96, %92, !dbg !2500
  %98 = getelementptr inbounds i8, i8* %90, i32 2, !dbg !2501
  %99 = load i8, i8* %98, align 1, !dbg !2502
  %100 = zext i8 %99 to i32, !dbg !2502
  %101 = shl nuw nsw i32 %100, 16, !dbg !2503
  %102 = or i32 %97, %101, !dbg !2504
  %103 = getelementptr inbounds i8, i8* %90, i32 3, !dbg !2505
  %104 = load i8, i8* %103, align 1, !dbg !2506
  %105 = zext i8 %104 to i32, !dbg !2506
  %106 = shl nuw i32 %105, 24, !dbg !2507
  %107 = or i32 %102, %106, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %107, metadata !2405, metadata !DIExpression()), !dbg !2406
  br label %108, !dbg !2509

108:                                              ; preds = %57, %6, %58, %73, %88, %63, %7, %22, %37, %12
  %109 = phi i32 [ %11, %7 ], [ %21, %12 ], [ %36, %22 ], [ %56, %37 ], [ %62, %58 ], [ %72, %63 ], [ %87, %73 ], [ %107, %88 ], [ 0, %6 ], [ 0, %57 ], !dbg !2406
  call void @llvm.dbg.value(metadata i32 %109, metadata !2405, metadata !DIExpression()), !dbg !2406
  ret i32 %109, !dbg !2510
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_read(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !182, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %2, metadata !184, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %3, metadata !185, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !188, metadata !DIExpression()), !dbg !2511
  %5 = lshr i32 %3, 5, !dbg !2512
  store i32 %5, i32* @quotient, align 4, !dbg !2513
  %6 = and i32 %3, 31, !dbg !2514
  store i32 %6, i32* @spim_read.remainder, align 4, !dbg !2515
  %7 = icmp ult i32 %3, 32, !dbg !2516
  br i1 %7, label %8, label %10, !dbg !2518

8:                                                ; preds = %4
  %9 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef 1) #15, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %9, metadata !186, metadata !DIExpression()), !dbg !2511
  br label %31, !dbg !2521

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !189, metadata !DIExpression()), !dbg !2511
  %11 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef 32, i32 noundef 1) #15, !dbg !2522
  call void @llvm.dbg.value(metadata i32 1, metadata !189, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !2511
  %12 = load i32, i32* @quotient, align 4, !dbg !2524
  %13 = icmp ugt i32 %12, 1, !dbg !2527
  br i1 %13, label %14, label %22, !dbg !2528

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %19, %14 ], [ 1, %10 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !189, metadata !DIExpression()), !dbg !2511
  %16 = shl i32 %15, 5, !dbg !2529
  %17 = getelementptr inbounds i8, i8* %2, i32 %16, !dbg !2531
  %18 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef 0, i32 noundef 0, i8* noundef %17, i32 noundef 32, i32 noundef 1) #15, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %18, metadata !186, metadata !DIExpression()), !dbg !2511
  %19 = add nuw i32 %15, 1, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %19, metadata !189, metadata !DIExpression()), !dbg !2511
  %20 = load i32, i32* @quotient, align 4, !dbg !2524
  %21 = icmp ult i32 %19, %20, !dbg !2527
  br i1 %21, label %14, label %22, !dbg !2528, !llvm.loop !2534

22:                                               ; preds = %14, %10
  %23 = phi i32 [ 0, %10 ], [ %18, %14 ], !dbg !2511
  %24 = phi i32 [ %12, %10 ], [ %20, %14 ], !dbg !2524
  %25 = load i32, i32* @spim_read.remainder, align 4, !dbg !2536
  %26 = icmp eq i32 %25, 0, !dbg !2538
  br i1 %26, label %31, label %27, !dbg !2539

27:                                               ; preds = %22
  %28 = shl i32 %24, 5, !dbg !2540
  %29 = getelementptr inbounds i8, i8* %2, i32 %28, !dbg !2542
  %30 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef 0, i32 noundef 0, i8* noundef %29, i32 noundef %25, i32 noundef 1) #15, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %30, metadata !186, metadata !DIExpression()), !dbg !2511
  br label %31, !dbg !2544

31:                                               ; preds = %22, %27, %8
  %32 = phi i32 [ %9, %8 ], [ %30, %27 ], [ %23, %22 ], !dbg !2545
  ret i32 %32, !dbg !2546
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2547 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2549, metadata !DIExpression()), !dbg !2551
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %1, metadata !2550, metadata !DIExpression()), !dbg !2551
  %2 = lshr i32 %1, 13, !dbg !2553
  %3 = and i32 %2, 7, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %3, metadata !2550, metadata !DIExpression()), !dbg !2551
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %4, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %4, metadata !2549, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2551
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2556
  %6 = load i32, i32* %5, align 4, !dbg !2556
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2556
  %8 = load i32, i32* %7, align 4, !dbg !2556
  %9 = and i32 %4, -2048, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %9, metadata !2549, metadata !DIExpression()), !dbg !2551
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2558
  %10 = or i32 %9, %8, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %10, metadata !2549, metadata !DIExpression()), !dbg !2551
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2560
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2561
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2562
  tail call void @SystemCoreClockUpdate() #15, !dbg !2563
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2564
  %13 = udiv i32 %12, 1000, !dbg !2565
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !2566
  ret void, !dbg !2567
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !2568 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2569
  ret i32 %1, !dbg !2570
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !2571 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2572
  ret i32 %1, !dbg !2573
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !2574 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2578
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2578
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2577, metadata !DIExpression()), !dbg !2580
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2581
  store volatile i32 %3, i32* %1, align 4, !dbg !2582
  %4 = load volatile i32, i32* %1, align 4, !dbg !2583
  %5 = lshr i32 %4, 28, !dbg !2584
  %6 = and i32 %5, 3, !dbg !2585
  store volatile i32 %6, i32* %1, align 4, !dbg !2586
  %7 = load volatile i32, i32* %1, align 4, !dbg !2587
  %8 = icmp eq i32 %7, 0, !dbg !2589
  br i1 %8, label %9, label %22, !dbg !2590

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2591
  store volatile i32 %10, i32* %1, align 4, !dbg !2593
  %11 = load volatile i32, i32* %1, align 4, !dbg !2594
  %12 = and i32 %11, -16777217, !dbg !2595
  store volatile i32 %12, i32* %1, align 4, !dbg !2596
  %13 = load volatile i32, i32* %1, align 4, !dbg !2597
  %14 = or i32 %13, 536870912, !dbg !2598
  store volatile i32 %14, i32* %1, align 4, !dbg !2599
  %15 = load volatile i32, i32* %1, align 4, !dbg !2600
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2601
  br label %16, !dbg !2602

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2603
  store volatile i32 %17, i32* %1, align 4, !dbg !2605
  %18 = load volatile i32, i32* %1, align 4, !dbg !2606
  %19 = and i32 %18, 134217728, !dbg !2607
  store volatile i32 %19, i32* %1, align 4, !dbg !2608
  %20 = load volatile i32, i32* %1, align 4, !dbg !2609
  %21 = icmp eq i32 %20, 0, !dbg !2610
  br i1 %21, label %16, label %22, !dbg !2611, !llvm.loop !2612

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2614
  ret void, !dbg !2614
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32.1(i8* noundef %0) unnamed_addr #2 !dbg !2615 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()), !dbg !2618
  %2 = bitcast i8* %0 to i32*, !dbg !2619
  %3 = load volatile i32, i32* %2, align 4, !dbg !2620
  ret i32 %3, !dbg !2621
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %1, metadata !2627, metadata !DIExpression()), !dbg !2628
  %3 = bitcast i8* %0 to i32*, !dbg !2629
  store volatile i32 %1, i32* %3, align 4, !dbg !2630
  ret void, !dbg !2631
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !2632 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2636, metadata !DIExpression()), !dbg !2639
  %3 = bitcast i32* %2 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2640
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2637, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2638, metadata !DIExpression()), !dbg !2639
  %4 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2642
  store volatile i32 %4, i32* %2, align 4, !dbg !2643
  %5 = load volatile i32, i32* %2, align 4, !dbg !2644
  %6 = lshr i32 %5, 28, !dbg !2645
  %7 = and i32 %6, 3, !dbg !2646
  store volatile i32 %7, i32* %2, align 4, !dbg !2647
  %8 = load volatile i32, i32* %2, align 4, !dbg !2648
  %9 = icmp eq i32 %8, 3, !dbg !2650
  br i1 %9, label %38, label %10, !dbg !2651

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2652
  store volatile i32 %11, i32* %2, align 4, !dbg !2654
  %12 = load volatile i32, i32* %2, align 4, !dbg !2655
  %13 = and i32 %12, -262145, !dbg !2656
  store volatile i32 %13, i32* %2, align 4, !dbg !2657
  %14 = load volatile i32, i32* %2, align 4, !dbg !2658
  %15 = and i32 %14, -16777217, !dbg !2659
  store volatile i32 %15, i32* %2, align 4, !dbg !2660
  %16 = load volatile i32, i32* %2, align 4, !dbg !2661
  store volatile i32 %16, i32* %2, align 4, !dbg !2662
  %17 = load volatile i32, i32* %2, align 4, !dbg !2663
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2664
  %18 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2665
  store volatile i32 %18, i32* %2, align 4, !dbg !2666
  %19 = load volatile i32, i32* %2, align 4, !dbg !2667
  %20 = and i32 %19, -805306369, !dbg !2668
  store volatile i32 %20, i32* %2, align 4, !dbg !2669
  %21 = load volatile i32, i32* %2, align 4, !dbg !2670
  %22 = and i32 %21, -16777217, !dbg !2671
  store volatile i32 %22, i32* %2, align 4, !dbg !2672
  %23 = load volatile i32, i32* %2, align 4, !dbg !2673
  %24 = or i32 %23, 805306368, !dbg !2674
  store volatile i32 %24, i32* %2, align 4, !dbg !2675
  %25 = load volatile i32, i32* %2, align 4, !dbg !2676
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2677
  br label %26, !dbg !2678

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2679
  store volatile i32 %27, i32* %2, align 4, !dbg !2681
  %28 = load volatile i32, i32* %2, align 4, !dbg !2682
  %29 = and i32 %28, 67108864, !dbg !2683
  store volatile i32 %29, i32* %2, align 4, !dbg !2684
  %30 = load volatile i32, i32* %2, align 4, !dbg !2685
  %31 = icmp eq i32 %30, 0, !dbg !2686
  br i1 %31, label %26, label %32, !dbg !2687, !llvm.loop !2688

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2690
  store volatile i32 %33, i32* %2, align 4, !dbg !2691
  %34 = load volatile i32, i32* %2, align 4, !dbg !2692
  %35 = and i32 %34, -262145, !dbg !2693
  store volatile i32 %35, i32* %2, align 4, !dbg !2694
  %36 = load volatile i32, i32* %2, align 4, !dbg !2695
  %37 = and i32 %36, -16777217, !dbg !2696
  store volatile i32 %37, i32* %2, align 4, !dbg !2697
  br label %38, !dbg !2698

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2699
  store volatile i32 %39, i32* %2, align 4, !dbg !2700
  %40 = icmp eq i8 %0, 0, !dbg !2701
  %41 = load volatile i32, i32* %2, align 4, !dbg !2703
  br i1 %40, label %44, label %42, !dbg !2704

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2705
  store volatile i32 %43, i32* %2, align 4, !dbg !2707
  br label %45, !dbg !2708

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2709
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2711
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2712
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2713
  ret void, !dbg !2713
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !2714 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2718
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2718
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2716, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2717, metadata !DIExpression()), !dbg !2720
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2721
  store volatile i32 %3, i32* %1, align 4, !dbg !2722
  %4 = load volatile i32, i32* %1, align 4, !dbg !2723
  %5 = and i32 %4, -805306369, !dbg !2724
  store volatile i32 %5, i32* %1, align 4, !dbg !2725
  %6 = load volatile i32, i32* %1, align 4, !dbg !2726
  %7 = and i32 %6, -16777217, !dbg !2727
  store volatile i32 %7, i32* %1, align 4, !dbg !2728
  %8 = load volatile i32, i32* %1, align 4, !dbg !2729
  store volatile i32 %8, i32* %1, align 4, !dbg !2730
  %9 = load volatile i32, i32* %1, align 4, !dbg !2731
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2732
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2733
  store volatile i32 %10, i32* %1, align 4, !dbg !2734
  %11 = load volatile i32, i32* %1, align 4, !dbg !2735
  %12 = and i32 %11, -262145, !dbg !2736
  store volatile i32 %12, i32* %1, align 4, !dbg !2737
  %13 = load volatile i32, i32* %1, align 4, !dbg !2738
  %14 = and i32 %13, -16777217, !dbg !2739
  store volatile i32 %14, i32* %1, align 4, !dbg !2740
  %15 = load volatile i32, i32* %1, align 4, !dbg !2741
  store volatile i32 %15, i32* %1, align 4, !dbg !2742
  %16 = load volatile i32, i32* %1, align 4, !dbg !2743
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2744
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2745
  ret void, !dbg !2745
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2746 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2750
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2749, metadata !DIExpression()), !dbg !2752
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2753
  store volatile i32 %3, i32* %1, align 4, !dbg !2754
  %4 = load volatile i32, i32* %1, align 4, !dbg !2755
  %5 = and i32 %4, -8, !dbg !2756
  store volatile i32 %5, i32* %1, align 4, !dbg !2757
  %6 = load volatile i32, i32* %1, align 4, !dbg !2758
  store volatile i32 %6, i32* %1, align 4, !dbg !2759
  %7 = load volatile i32, i32* %1, align 4, !dbg !2760
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2761
  %8 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2762
  store volatile i32 %8, i32* %1, align 4, !dbg !2763
  %9 = load volatile i32, i32* %1, align 4, !dbg !2764
  %10 = and i32 %9, -49153, !dbg !2765
  store volatile i32 %10, i32* %1, align 4, !dbg !2766
  %11 = load volatile i32, i32* %1, align 4, !dbg !2767
  store volatile i32 %11, i32* %1, align 4, !dbg !2768
  %12 = load volatile i32, i32* %1, align 4, !dbg !2769
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2770
  br label %13, !dbg !2771

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2772
  %15 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2773
  %16 = icmp eq i32 %14, %15, !dbg !2774
  br i1 %16, label %17, label %13, !dbg !2771, !llvm.loop !2775

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2777
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2778
  tail call void @SystemCoreClockUpdate() #15, !dbg !2779
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2780
  %20 = udiv i32 %19, 1000, !dbg !2781
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2783
  ret void, !dbg !2783
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2784 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2788
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2786, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2787, metadata !DIExpression()), !dbg !2790
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2791
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2792
  store volatile i32 %3, i32* %1, align 4, !dbg !2793
  %4 = load volatile i32, i32* %1, align 4, !dbg !2794
  %5 = and i32 %4, -49153, !dbg !2795
  store volatile i32 %5, i32* %1, align 4, !dbg !2796
  %6 = load volatile i32, i32* %1, align 4, !dbg !2797
  %7 = or i32 %6, 16384, !dbg !2798
  store volatile i32 %7, i32* %1, align 4, !dbg !2799
  %8 = load volatile i32, i32* %1, align 4, !dbg !2800
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2801
  br label %9, !dbg !2802

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2803
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2804
  %12 = icmp eq i32 %10, %11, !dbg !2805
  br i1 %12, label %13, label %9, !dbg !2802, !llvm.loop !2806

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2808
  store volatile i32 %14, i32* %1, align 4, !dbg !2809
  %15 = load volatile i32, i32* %1, align 4, !dbg !2810
  %16 = and i32 %15, -1009, !dbg !2811
  store volatile i32 %16, i32* %1, align 4, !dbg !2812
  %17 = load volatile i32, i32* %1, align 4, !dbg !2813
  %18 = or i32 %17, 128, !dbg !2814
  store volatile i32 %18, i32* %1, align 4, !dbg !2815
  %19 = load volatile i32, i32* %1, align 4, !dbg !2816
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2817
  %20 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2818
  store volatile i32 %20, i32* %1, align 4, !dbg !2819
  %21 = load volatile i32, i32* %1, align 4, !dbg !2820
  %22 = and i32 %21, -8, !dbg !2821
  store volatile i32 %22, i32* %1, align 4, !dbg !2822
  %23 = load volatile i32, i32* %1, align 4, !dbg !2823
  %24 = or i32 %23, 4, !dbg !2824
  store volatile i32 %24, i32* %1, align 4, !dbg !2825
  %25 = load volatile i32, i32* %1, align 4, !dbg !2826
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2827
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2828
  tail call void @SystemCoreClockUpdate() #15, !dbg !2829
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2830
  %27 = udiv i32 %26, 1000, !dbg !2831
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2832
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2833
  ret void, !dbg !2833
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2834 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2838
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2838
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2837, metadata !DIExpression()), !dbg !2840
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2841
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2842
  store volatile i32 %3, i32* %1, align 4, !dbg !2843
  %4 = load volatile i32, i32* %1, align 4, !dbg !2844
  %5 = and i32 %4, -49153, !dbg !2845
  store volatile i32 %5, i32* %1, align 4, !dbg !2846
  %6 = load volatile i32, i32* %1, align 4, !dbg !2847
  %7 = or i32 %6, 32768, !dbg !2848
  store volatile i32 %7, i32* %1, align 4, !dbg !2849
  %8 = load volatile i32, i32* %1, align 4, !dbg !2850
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2851
  br label %9, !dbg !2852

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2853
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2854
  %12 = icmp eq i32 %10, %11, !dbg !2855
  br i1 %12, label %13, label %9, !dbg !2852, !llvm.loop !2856

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2858
  store volatile i32 %14, i32* %1, align 4, !dbg !2859
  %15 = load volatile i32, i32* %1, align 4, !dbg !2860
  %16 = and i32 %15, -1009, !dbg !2861
  store volatile i32 %16, i32* %1, align 4, !dbg !2862
  %17 = load volatile i32, i32* %1, align 4, !dbg !2863
  %18 = or i32 %17, 32, !dbg !2864
  store volatile i32 %18, i32* %1, align 4, !dbg !2865
  %19 = load volatile i32, i32* %1, align 4, !dbg !2866
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2867
  %20 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2868
  store volatile i32 %20, i32* %1, align 4, !dbg !2869
  %21 = load volatile i32, i32* %1, align 4, !dbg !2870
  %22 = and i32 %21, -8, !dbg !2871
  store volatile i32 %22, i32* %1, align 4, !dbg !2872
  %23 = load volatile i32, i32* %1, align 4, !dbg !2873
  %24 = or i32 %23, 4, !dbg !2874
  store volatile i32 %24, i32* %1, align 4, !dbg !2875
  %25 = load volatile i32, i32* %1, align 4, !dbg !2876
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2877
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2878
  tail call void @SystemCoreClockUpdate() #15, !dbg !2879
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2880
  %27 = udiv i32 %26, 1000, !dbg !2881
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2882
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2883
  ret void, !dbg !2883
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2884 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2888
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2887, metadata !DIExpression()), !dbg !2890
  tail call void @cmnPLL1ON() #14, !dbg !2891
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2892
  store volatile i32 %3, i32* %1, align 4, !dbg !2893
  %4 = load volatile i32, i32* %1, align 4, !dbg !2894
  %5 = and i32 %4, -49153, !dbg !2895
  store volatile i32 %5, i32* %1, align 4, !dbg !2896
  %6 = load volatile i32, i32* %1, align 4, !dbg !2897
  store volatile i32 %6, i32* %1, align 4, !dbg !2898
  %7 = load volatile i32, i32* %1, align 4, !dbg !2899
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2900
  br label %8, !dbg !2901

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2902
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2903
  %11 = icmp eq i32 %9, %10, !dbg !2904
  br i1 %11, label %12, label %8, !dbg !2901, !llvm.loop !2905

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2907
  store volatile i32 %13, i32* %1, align 4, !dbg !2908
  %14 = load volatile i32, i32* %1, align 4, !dbg !2909
  %15 = and i32 %14, -8, !dbg !2910
  store volatile i32 %15, i32* %1, align 4, !dbg !2911
  %16 = load volatile i32, i32* %1, align 4, !dbg !2912
  %17 = or i32 %16, 2, !dbg !2913
  store volatile i32 %17, i32* %1, align 4, !dbg !2914
  %18 = load volatile i32, i32* %1, align 4, !dbg !2915
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2916
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2917
  tail call void @SystemCoreClockUpdate() #15, !dbg !2918
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2919
  %20 = udiv i32 %19, 1000, !dbg !2920
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2922
  ret void, !dbg !2922
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !2923 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2927
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2927
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2926, metadata !DIExpression()), !dbg !2929
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2930
  store volatile i32 %3, i32* %1, align 4, !dbg !2931
  %4 = load volatile i32, i32* %1, align 4, !dbg !2932
  %5 = and i32 %4, -24577, !dbg !2933
  store volatile i32 %5, i32* %1, align 4, !dbg !2934
  %6 = load volatile i32, i32* %1, align 4, !dbg !2935
  store volatile i32 %6, i32* %1, align 4, !dbg !2936
  %7 = load volatile i32, i32* %1, align 4, !dbg !2937
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2938
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2939
  ret void, !dbg !2939
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2940 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %1, metadata !2944, metadata !DIExpression()), !dbg !2946
  ret i32 %1, !dbg !2947
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2948 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2951
  %2 = and i32 %1, 1, !dbg !2953
  %3 = icmp eq i32 %2, 0, !dbg !2953
  br i1 %3, label %7, label %4, !dbg !2954

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2955
  %6 = and i32 %5, 255, !dbg !2957
  call void @llvm.dbg.value(metadata i32 %5, metadata !2950, metadata !DIExpression()), !dbg !2958
  br label %7, !dbg !2959

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2960
  ret i32 %8, !dbg !2961
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2962 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8 %1, metadata !2968, metadata !DIExpression()), !dbg !2970
  %3 = icmp eq i32 %0, 0, !dbg !2971
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %4, metadata !2969, metadata !DIExpression()), !dbg !2970
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2972

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2973
  %9 = and i32 %8, 32, !dbg !2974
  %10 = icmp eq i32 %9, 0, !dbg !2975
  br i1 %10, label %7, label %11, !dbg !2972, !llvm.loop !2976

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2978
  %13 = inttoptr i32 %4 to i32*, !dbg !2979
  store volatile i32 %12, i32* %13, align 65536, !dbg !2980
  ret void, !dbg !2981
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2982 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2986, metadata !DIExpression()), !dbg !2989
  %2 = icmp eq i32 %0, 0, !dbg !2990
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2990
  call void @llvm.dbg.value(metadata i32 %3, metadata !2987, metadata !DIExpression()), !dbg !2989
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2991

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2992
  %8 = and i32 %7, 1, !dbg !2993
  %9 = icmp eq i32 %8, 0, !dbg !2994
  br i1 %9, label %6, label %10, !dbg !2991, !llvm.loop !2995

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2997
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2997
  %13 = trunc i32 %12 to i8, !dbg !2997
  call void @llvm.dbg.value(metadata i8 %13, metadata !2988, metadata !DIExpression()), !dbg !2989
  ret i8 %13, !dbg !2998
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2999 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3003, metadata !DIExpression()), !dbg !3006
  %2 = icmp eq i32 %0, 0, !dbg !3007
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %3, metadata !3004, metadata !DIExpression()), !dbg !3006
  %4 = or i32 %3, 20, !dbg !3008
  %5 = inttoptr i32 %4 to i32*, !dbg !3008
  %6 = load volatile i32, i32* %5, align 4, !dbg !3008
  %7 = and i32 %6, 1, !dbg !3010
  %8 = icmp eq i32 %7, 0, !dbg !3010
  br i1 %8, label %13, label %9, !dbg !3011

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3012
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3012
  %12 = and i32 %11, 255, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %11, metadata !3005, metadata !DIExpression()), !dbg !3006
  br label %13, !dbg !3015

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3016
  ret i32 %14, !dbg !3017
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3022, metadata !DIExpression()), !dbg !3023
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3024
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3025

2:                                                ; preds = %1
  br label %3, !dbg !3026

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3030
  %6 = or i32 %5, 1, !dbg !3030
  store volatile i32 %6, i32* %4, align 4, !dbg !3030
  br label %7, !dbg !3031

7:                                                ; preds = %3, %1
  ret void, !dbg !3031
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3032 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %1, metadata !3039, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i16 %2, metadata !3040, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i16 %3, metadata !3041, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i16 %4, metadata !3042, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3044, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3051, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3053, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i32 0, metadata !3054, metadata !DIExpression()), !dbg !3055
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !3058
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3059
  %7 = icmp eq i32 %0, 1, !dbg !3060
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %8, metadata !3044, metadata !DIExpression()), !dbg !3055
  %9 = or i32 %8, 36, !dbg !3061
  %10 = inttoptr i32 %9 to i32*, !dbg !3061
  store volatile i32 3, i32* %10, align 4, !dbg !3062
  %11 = or i32 %8, 12, !dbg !3063
  %12 = inttoptr i32 %11 to i32*, !dbg !3063
  %13 = load volatile i32, i32* %12, align 4, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %13, metadata !3046, metadata !DIExpression()), !dbg !3055
  %14 = or i32 %13, 128, !dbg !3064
  store volatile i32 %14, i32* %12, align 4, !dbg !3065
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3066
  %16 = udiv i32 %15, %1, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %16, metadata !3045, metadata !DIExpression()), !dbg !3055
  %17 = lshr i32 %16, 8, !dbg !3068
  %18 = add nuw nsw i32 %17, 1, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %18, metadata !3047, metadata !DIExpression()), !dbg !3055
  %19 = udiv i32 %16, %18, !dbg !3070
  %20 = add i32 %19, -1, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %20, metadata !3048, metadata !DIExpression()), !dbg !3055
  %21 = icmp eq i32 %20, 3, !dbg !3073
  %22 = lshr i32 %20, 1, !dbg !3075
  %23 = add nsw i32 %22, -1, !dbg !3075
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %24, metadata !3049, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 undef, metadata !3054, metadata !DIExpression()), !dbg !3055
  %25 = mul i32 %15, 10, !dbg !3076
  %26 = udiv i32 %25, %1, !dbg !3077
  %27 = udiv i32 %26, %16, !dbg !3078
  %28 = mul i32 %19, -10, !dbg !3079
  %29 = add i32 %27, %28, !dbg !3080
  %30 = urem i32 %29, 10, !dbg !3081
  call void @llvm.dbg.value(metadata i32 %30, metadata !3050, metadata !DIExpression()), !dbg !3055
  %31 = and i32 %18, 255, !dbg !3082
  %32 = inttoptr i32 %8 to i32*, !dbg !3083
  store volatile i32 %31, i32* %32, align 65536, !dbg !3084
  %33 = lshr i32 %18, 8, !dbg !3085
  %34 = and i32 %33, 255, !dbg !3086
  %35 = or i32 %8, 4, !dbg !3087
  %36 = inttoptr i32 %35 to i32*, !dbg !3087
  store volatile i32 %34, i32* %36, align 4, !dbg !3088
  %37 = or i32 %8, 40, !dbg !3089
  %38 = inttoptr i32 %37 to i32*, !dbg !3089
  store volatile i32 %20, i32* %38, align 8, !dbg !3090
  %39 = or i32 %8, 44, !dbg !3091
  %40 = inttoptr i32 %39 to i32*, !dbg !3091
  store volatile i32 %24, i32* %40, align 4, !dbg !3092
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3093
  %42 = load i16, i16* %41, align 2, !dbg !3093
  %43 = zext i16 %42 to i32, !dbg !3093
  %44 = or i32 %8, 88, !dbg !3094
  %45 = inttoptr i32 %44 to i32*, !dbg !3094
  store volatile i32 %43, i32* %45, align 8, !dbg !3095
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3096
  %47 = load i16, i16* %46, align 2, !dbg !3096
  %48 = zext i16 %47 to i32, !dbg !3096
  %49 = or i32 %8, 84, !dbg !3097
  %50 = inttoptr i32 %49 to i32*, !dbg !3097
  store volatile i32 %48, i32* %50, align 4, !dbg !3098
  store volatile i32 %13, i32* %12, align 4, !dbg !3099
  %51 = or i32 %8, 8, !dbg !3100
  %52 = inttoptr i32 %51 to i32*, !dbg !3100
  store volatile i32 71, i32* %52, align 8, !dbg !3101
  %53 = inttoptr i32 %11 to i16*, !dbg !3102
  %54 = load volatile i16, i16* %53, align 4, !dbg !3102
  call void @llvm.dbg.value(metadata i16 %54, metadata !3043, metadata !DIExpression()), !dbg !3055
  %55 = and i16 %54, -64, !dbg !3103
  call void @llvm.dbg.value(metadata i16 %54, metadata !3043, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3055
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3055
  %56 = and i16 %2, -61, !dbg !3104
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3055
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3043, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3055
  %57 = and i16 %4, -57, !dbg !3105
  call void @llvm.dbg.value(metadata i16 undef, metadata !3043, metadata !DIExpression()), !dbg !3055
  %58 = or i16 %56, %3, !dbg !3104
  %59 = or i16 %58, %57, !dbg !3105
  %60 = or i16 %59, %55, !dbg !3106
  call void @llvm.dbg.value(metadata i16 %60, metadata !3043, metadata !DIExpression()), !dbg !3055
  store volatile i16 %60, i16* %53, align 4, !dbg !3107
  ret void, !dbg !3108
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !3109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i32 %1, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i32* %2, metadata !3116, metadata !DIExpression()), !dbg !3117
  %4 = icmp eq i32 %0, 0, !dbg !3118
  %5 = icmp eq i32 %1, 0, !dbg !3120
  br i1 %4, label %6, label %16, !dbg !3121

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3122

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3124
  %9 = zext i16 %8 to i32, !dbg !3124
  br label %26, !dbg !3127

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3128
  %12 = zext i16 %11 to i32, !dbg !3128
  store i32 %12, i32* %2, align 4, !dbg !3130
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3131
  %14 = zext i16 %13 to i32, !dbg !3131
  %15 = sub nsw i32 %12, %14, !dbg !3132
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3133

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3135
  %19 = zext i16 %18 to i32, !dbg !3135
  br label %26, !dbg !3138

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3139
  %22 = zext i16 %21 to i32, !dbg !3139
  store i32 %22, i32* %2, align 4, !dbg !3141
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3142
  %24 = zext i16 %23 to i32, !dbg !3142
  %25 = sub nsw i32 %22, %24, !dbg !3143
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3120
  ret void, !dbg !3144
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3149, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %1, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 %2, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i32 0, metadata !3152, metadata !DIExpression()), !dbg !3153
  %4 = icmp eq i32 %2, 0, !dbg !3154
  br i1 %4, label %15, label %5, !dbg !3157

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3152, metadata !DIExpression()), !dbg !3153
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3158

7:                                                ; preds = %5
  br label %8, !dbg !3160

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3164
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3164
  store i8 %10, i8* %11, align 1, !dbg !3164
  br label %12, !dbg !3165

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i32 %13, metadata !3152, metadata !DIExpression()), !dbg !3153
  %14 = icmp eq i32 %13, %2, !dbg !3154
  br i1 %14, label %15, label %5, !dbg !3157, !llvm.loop !3166

15:                                               ; preds = %12, %3
  ret void, !dbg !3168
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3175, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i8* %1, metadata !3176, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %2, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32 0, metadata !3178, metadata !DIExpression()), !dbg !3179
  %4 = icmp eq i32 %2, 0, !dbg !3180
  br i1 %4, label %16, label %5, !dbg !3183

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3178, metadata !DIExpression()), !dbg !3179
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3184

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3186
  %9 = load i8, i8* %8, align 1, !dbg !3186
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3189
  br label %13, !dbg !3190

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3191
  %12 = load i8, i8* %11, align 1, !dbg !3191
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3194
  br label %13, !dbg !3195

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %14, metadata !3178, metadata !DIExpression()), !dbg !3179
  %15 = icmp eq i32 %14, %2, !dbg !3180
  br i1 %15, label %16, label %5, !dbg !3183, !llvm.loop !3197

16:                                               ; preds = %13, %3
  ret void, !dbg !3199
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3204, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %2, metadata !3206, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %3, metadata !3207, metadata !DIExpression()), !dbg !3208
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3209

5:                                                ; preds = %4
  br label %6, !dbg !3210

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3214
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3214
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3214
  br label %9, !dbg !3215

9:                                                ; preds = %6, %4
  ret void, !dbg !3215
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3220, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !3221, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %2, metadata !3222, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %3, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %4, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i32 %5, metadata !3225, metadata !DIExpression()), !dbg !3226
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3227

7:                                                ; preds = %6
  br label %8, !dbg !3228

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3232
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3232
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3232
  br label %11, !dbg !3233

11:                                               ; preds = %8, %6
  ret void, !dbg !3233
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3239, metadata !DIExpression()), !dbg !3240
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3241

3:                                                ; preds = %2
  br label %4, !dbg !3242

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3246
  br label %6, !dbg !3247

6:                                                ; preds = %4, %2
  ret void, !dbg !3247
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3250, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3251, metadata !DIExpression()), !dbg !3252
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3253

3:                                                ; preds = %2
  br label %4, !dbg !3254

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3258
  br label %6, !dbg !3259

6:                                                ; preds = %4, %2
  ret void, !dbg !3259
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  %2 = icmp eq i32 %0, 0, !dbg !3267
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %3, metadata !3263, metadata !DIExpression()), !dbg !3266
  %4 = or i32 %3, 12, !dbg !3268
  %5 = inttoptr i32 %4 to i32*, !dbg !3268
  %6 = load volatile i32, i32* %5, align 4, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %6, metadata !3265, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3266
  store volatile i32 191, i32* %5, align 4, !dbg !3269
  %7 = or i32 %3, 8, !dbg !3270
  %8 = inttoptr i32 %7 to i32*, !dbg !3270
  %9 = load volatile i32, i32* %8, align 8, !dbg !3270
  call void @llvm.dbg.value(metadata i32 %9, metadata !3264, metadata !DIExpression()), !dbg !3266
  %10 = and i32 %9, 65327, !dbg !3271
  %11 = or i32 %10, 208, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %9, metadata !3264, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3266
  store volatile i32 %11, i32* %8, align 8, !dbg !3272
  %12 = or i32 %3, 68, !dbg !3273
  %13 = inttoptr i32 %12 to i32*, !dbg !3273
  store volatile i32 0, i32* %13, align 4, !dbg !3274
  store volatile i32 0, i32* %5, align 4, !dbg !3275
  %14 = or i32 %3, 16, !dbg !3276
  %15 = inttoptr i32 %14 to i32*, !dbg !3276
  store volatile i32 2, i32* %15, align 16, !dbg !3277
  %16 = and i32 %6, 65535, !dbg !3278
  store volatile i32 %16, i32* %5, align 4, !dbg !3279
  ret void, !dbg !3280
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !3281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %1, metadata !3286, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %2, metadata !3287, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %3, metadata !3288, metadata !DIExpression()), !dbg !3292
  %5 = icmp eq i32 %0, 0, !dbg !3293
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %6, metadata !3289, metadata !DIExpression()), !dbg !3292
  %7 = or i32 %6, 12, !dbg !3294
  %8 = inttoptr i32 %7 to i32*, !dbg !3294
  %9 = load volatile i32, i32* %8, align 4, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %9, metadata !3291, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3292
  store volatile i32 191, i32* %8, align 4, !dbg !3295
  %10 = zext i8 %1 to i32, !dbg !3296
  %11 = or i32 %6, 16, !dbg !3297
  %12 = inttoptr i32 %11 to i32*, !dbg !3297
  store volatile i32 %10, i32* %12, align 16, !dbg !3298
  %13 = or i32 %6, 20, !dbg !3299
  %14 = inttoptr i32 %13 to i32*, !dbg !3299
  store volatile i32 %10, i32* %14, align 4, !dbg !3300
  %15 = zext i8 %2 to i32, !dbg !3301
  %16 = or i32 %6, 24, !dbg !3302
  %17 = inttoptr i32 %16 to i32*, !dbg !3302
  store volatile i32 %15, i32* %17, align 8, !dbg !3303
  %18 = or i32 %6, 28, !dbg !3304
  %19 = inttoptr i32 %18 to i32*, !dbg !3304
  store volatile i32 %15, i32* %19, align 4, !dbg !3305
  %20 = or i32 %6, 8, !dbg !3306
  %21 = inttoptr i32 %20 to i32*, !dbg !3306
  %22 = load volatile i32, i32* %21, align 8, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %22, metadata !3290, metadata !DIExpression()), !dbg !3292
  %23 = and i32 %22, 65525, !dbg !3307
  %24 = or i32 %23, 10, !dbg !3307
  call void @llvm.dbg.value(metadata i32 %22, metadata !3290, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3292
  store volatile i32 %24, i32* %21, align 8, !dbg !3308
  %25 = and i32 %9, 65535, !dbg !3309
  store volatile i32 %25, i32* %8, align 4, !dbg !3310
  %26 = zext i8 %3 to i32, !dbg !3311
  %27 = or i32 %6, 64, !dbg !3312
  %28 = inttoptr i32 %27 to i32*, !dbg !3312
  store volatile i32 %26, i32* %28, align 64, !dbg !3313
  %29 = or i32 %6, 68, !dbg !3314
  %30 = inttoptr i32 %29 to i32*, !dbg !3314
  store volatile i32 1, i32* %30, align 4, !dbg !3315
  ret void, !dbg !3316
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3322
  %2 = icmp eq i32 %0, 0, !dbg !3323
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %3, metadata !3320, metadata !DIExpression()), !dbg !3322
  %4 = or i32 %3, 12, !dbg !3324
  %5 = inttoptr i32 %4 to i32*, !dbg !3324
  %6 = load volatile i32, i32* %5, align 4, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %6, metadata !3321, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3322
  store volatile i32 191, i32* %5, align 4, !dbg !3325
  %7 = or i32 %3, 8, !dbg !3326
  %8 = inttoptr i32 %7 to i32*, !dbg !3326
  store volatile i32 0, i32* %8, align 8, !dbg !3327
  store volatile i32 0, i32* %5, align 4, !dbg !3328
  %9 = and i32 %6, 65535, !dbg !3329
  store volatile i32 %9, i32* %5, align 4, !dbg !3330
  ret void, !dbg !3331
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !3332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3336
  %2 = icmp eq i32 %0, 0, !dbg !3337
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %3, metadata !3335, metadata !DIExpression()), !dbg !3336
  %4 = or i32 %3, 12, !dbg !3338
  %5 = inttoptr i32 %4 to i32*, !dbg !3338
  store volatile i32 191, i32* %5, align 4, !dbg !3339
  %6 = or i32 %3, 8, !dbg !3340
  %7 = inttoptr i32 %6 to i32*, !dbg !3340
  store volatile i32 16, i32* %7, align 8, !dbg !3341
  %8 = or i32 %3, 16, !dbg !3342
  %9 = inttoptr i32 %8 to i32*, !dbg !3342
  store volatile i32 0, i32* %9, align 16, !dbg !3343
  %10 = or i32 %3, 24, !dbg !3344
  %11 = inttoptr i32 %10 to i32*, !dbg !3344
  store volatile i32 0, i32* %11, align 8, !dbg !3345
  store volatile i32 128, i32* %5, align 4, !dbg !3346
  %12 = inttoptr i32 %3 to i32*, !dbg !3347
  store volatile i32 0, i32* %12, align 65536, !dbg !3348
  %13 = or i32 %3, 4, !dbg !3349
  %14 = inttoptr i32 %13 to i32*, !dbg !3349
  store volatile i32 0, i32* %14, align 4, !dbg !3350
  store volatile i32 0, i32* %5, align 4, !dbg !3351
  store volatile i32 0, i32* %14, align 4, !dbg !3352
  store volatile i32 0, i32* %7, align 8, !dbg !3353
  store volatile i32 191, i32* %5, align 4, !dbg !3354
  store volatile i32 0, i32* %7, align 8, !dbg !3355
  store volatile i32 0, i32* %5, align 4, !dbg !3356
  store volatile i32 0, i32* %9, align 16, !dbg !3357
  %15 = or i32 %3, 28, !dbg !3358
  %16 = inttoptr i32 %15 to i32*, !dbg !3358
  store volatile i32 0, i32* %16, align 4, !dbg !3359
  %17 = or i32 %3, 36, !dbg !3360
  %18 = inttoptr i32 %17 to i32*, !dbg !3360
  store volatile i32 0, i32* %18, align 4, !dbg !3361
  %19 = or i32 %3, 40, !dbg !3362
  %20 = inttoptr i32 %19 to i32*, !dbg !3362
  store volatile i32 0, i32* %20, align 8, !dbg !3363
  %21 = or i32 %3, 44, !dbg !3364
  %22 = inttoptr i32 %21 to i32*, !dbg !3364
  store volatile i32 0, i32* %22, align 4, !dbg !3365
  %23 = or i32 %3, 52, !dbg !3366
  %24 = inttoptr i32 %23 to i32*, !dbg !3366
  store volatile i32 0, i32* %24, align 4, !dbg !3367
  %25 = or i32 %3, 60, !dbg !3368
  %26 = inttoptr i32 %25 to i32*, !dbg !3368
  store volatile i32 0, i32* %26, align 4, !dbg !3369
  %27 = or i32 %3, 64, !dbg !3370
  %28 = inttoptr i32 %27 to i32*, !dbg !3370
  store volatile i32 0, i32* %28, align 64, !dbg !3371
  %29 = or i32 %3, 68, !dbg !3372
  %30 = inttoptr i32 %29 to i32*, !dbg !3372
  store volatile i32 0, i32* %30, align 4, !dbg !3373
  %31 = or i32 %3, 72, !dbg !3374
  %32 = inttoptr i32 %31 to i32*, !dbg !3374
  store volatile i32 0, i32* %32, align 8, !dbg !3375
  %33 = or i32 %3, 76, !dbg !3376
  %34 = inttoptr i32 %33 to i32*, !dbg !3376
  store volatile i32 0, i32* %34, align 4, !dbg !3377
  %35 = or i32 %3, 80, !dbg !3378
  %36 = inttoptr i32 %35 to i32*, !dbg !3378
  store volatile i32 0, i32* %36, align 16, !dbg !3379
  %37 = or i32 %3, 84, !dbg !3380
  %38 = inttoptr i32 %37 to i32*, !dbg !3380
  store volatile i32 0, i32* %38, align 4, !dbg !3381
  %39 = or i32 %3, 88, !dbg !3382
  %40 = inttoptr i32 %39 to i32*, !dbg !3382
  store volatile i32 0, i32* %40, align 8, !dbg !3383
  %41 = or i32 %3, 96, !dbg !3384
  %42 = inttoptr i32 %41 to i32*, !dbg !3384
  store volatile i32 0, i32* %42, align 32, !dbg !3385
  ret void, !dbg !3386
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !3387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  %2 = icmp eq i32 %0, 0, !dbg !3392
  call void @llvm.dbg.value(metadata i32 undef, metadata !3390, metadata !DIExpression()), !dbg !3391
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3393

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3394
  %7 = and i32 %6, 64, !dbg !3395
  %8 = icmp eq i32 %7, 0, !dbg !3396
  br i1 %8, label %5, label %9, !dbg !3393, !llvm.loop !3397

9:                                                ; preds = %5
  ret void, !dbg !3399
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3400 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3404, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %1, metadata !3405, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %2, metadata !3406, metadata !DIExpression()), !dbg !3417
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3418
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3407, metadata !DIExpression()), !dbg !3419
  %7 = bitcast i32* %5 to i8*, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3420
  call void @llvm.dbg.value(metadata i32* %5, metadata !3416, metadata !DIExpression(DW_OP_deref)), !dbg !3417
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3421
  call void @llvm.va_start(i8* nonnull %6), !dbg !3422
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3423
  %10 = load i32, i32* %9, align 4, !dbg !3423
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3423
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3423
  call void @llvm.va_end(i8* nonnull %6), !dbg !3424
  %13 = load i32, i32* %5, align 4, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %13, metadata !3416, metadata !DIExpression()), !dbg !3417
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3426
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3427
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3427
  ret void, !dbg !3427
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3428 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3430, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %1, metadata !3431, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i8* %2, metadata !3432, metadata !DIExpression()), !dbg !3435
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3436
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3436
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3433, metadata !DIExpression()), !dbg !3437
  %7 = bitcast i32* %5 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3438
  call void @llvm.dbg.value(metadata i32* %5, metadata !3434, metadata !DIExpression(DW_OP_deref)), !dbg !3435
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3439
  call void @llvm.va_start(i8* nonnull %6), !dbg !3440
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3441
  %10 = load i32, i32* %9, align 4, !dbg !3441
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3441
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3441
  call void @llvm.va_end(i8* nonnull %6), !dbg !3442
  %13 = load i32, i32* %5, align 4, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %13, metadata !3434, metadata !DIExpression()), !dbg !3435
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3444
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3445
  ret void, !dbg !3445
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3446 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3448, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i32 %1, metadata !3449, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata i8* %2, metadata !3450, metadata !DIExpression()), !dbg !3453
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3454
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3454
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3451, metadata !DIExpression()), !dbg !3455
  %7 = bitcast i32* %5 to i8*, !dbg !3456
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3456
  call void @llvm.dbg.value(metadata i32* %5, metadata !3452, metadata !DIExpression(DW_OP_deref)), !dbg !3453
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3457
  call void @llvm.va_start(i8* nonnull %6), !dbg !3458
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3459
  %10 = load i32, i32* %9, align 4, !dbg !3459
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3459
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3459
  call void @llvm.va_end(i8* nonnull %6), !dbg !3460
  %13 = load i32, i32* %5, align 4, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %13, metadata !3452, metadata !DIExpression()), !dbg !3453
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3463
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3463
  ret void, !dbg !3463
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3464 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3466, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 %1, metadata !3467, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8* %2, metadata !3468, metadata !DIExpression()), !dbg !3471
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3472
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3469, metadata !DIExpression()), !dbg !3473
  %7 = bitcast i32* %5 to i8*, !dbg !3474
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3474
  call void @llvm.dbg.value(metadata i32* %5, metadata !3470, metadata !DIExpression(DW_OP_deref)), !dbg !3471
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3475
  call void @llvm.va_start(i8* nonnull %6), !dbg !3476
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3477
  %10 = load i32, i32* %9, align 4, !dbg !3477
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3477
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3477
  call void @llvm.va_end(i8* nonnull %6), !dbg !3478
  %13 = load i32, i32* %5, align 4, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %13, metadata !3470, metadata !DIExpression()), !dbg !3471
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3480
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3481
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3481
  ret void, !dbg !3481
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3482 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3488, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %1, metadata !3489, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %2, metadata !3490, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i8* %3, metadata !3491, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i32 %4, metadata !3492, metadata !DIExpression()), !dbg !3493
  ret void, !dbg !3494
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3495 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3503
  call void @llvm.dbg.value(metadata i32 %1, metadata !3502, metadata !DIExpression()), !dbg !3504
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3505, !range !3507
  %3 = icmp eq i8 %2, 0, !dbg !3505
  br i1 %3, label %5, label %4, !dbg !3508

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3509
  br label %15, !dbg !3511

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3512
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3514
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3515
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3516
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3517
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3518
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3519
  call void @llvm.dbg.value(metadata i32 0, metadata !3500, metadata !DIExpression()), !dbg !3504
  br label %7, !dbg !3520

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3500, metadata !DIExpression()), !dbg !3504
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3522
  store volatile i32 0, i32* %9, align 4, !dbg !3525
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3526
  store volatile i32 0, i32* %10, align 4, !dbg !3527
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3528
  store i32 0, i32* %11, align 4, !dbg !3529
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3530
  store i32 0, i32* %12, align 4, !dbg !3531
  %13 = add nuw nsw i32 %8, 1, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %13, metadata !3500, metadata !DIExpression()), !dbg !3504
  %14 = icmp eq i32 %13, 16, !dbg !3533
  br i1 %14, label %15, label %7, !dbg !3520, !llvm.loop !3534

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3504
  ret i32 %16, !dbg !3536
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3537 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %1, metadata !3539, metadata !DIExpression()), !dbg !3541
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %3 = and i32 %2, -31, !dbg !3542
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  %5 = or i32 %4, 19, !dbg !3543
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3544
  %7 = and i32 %6, -31, !dbg !3544
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3544
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3545
  %9 = or i32 %8, 3, !dbg !3545
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3545
  tail call void asm sideeffect "isb", ""() #16, !dbg !3546, !srcloc !3550
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3551
  ret i32 0, !dbg !3552
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3553 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3556
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3557
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3558
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3559
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3560
  call void @llvm.dbg.value(metadata i32 0, metadata !3555, metadata !DIExpression()), !dbg !3561
  br label %2, !dbg !3562

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3555, metadata !DIExpression()), !dbg !3561
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3564
  store volatile i32 0, i32* %4, align 4, !dbg !3567
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3568
  store volatile i32 0, i32* %5, align 4, !dbg !3569
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3570
  store i32 0, i32* %6, align 4, !dbg !3571
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3572
  store i32 0, i32* %7, align 4, !dbg !3573
  %8 = add nuw nsw i32 %3, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i32 %8, metadata !3555, metadata !DIExpression()), !dbg !3561
  %9 = icmp eq i32 %8, 16, !dbg !3575
  br i1 %9, label %10, label %2, !dbg !3562, !llvm.loop !3576

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3578
  ret i32 0, !dbg !3579
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3580 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3581
  %2 = and i32 %1, 768, !dbg !3583
  %3 = icmp eq i32 %2, 0, !dbg !3583
  br i1 %3, label %8, label %4, !dbg !3584

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3585
  %6 = or i32 %5, 13, !dbg !3585
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3585
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3586
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3587
  br label %8, !dbg !3588

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3589
  ret i32 %9, !dbg !3590
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3591 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3594
  call void @llvm.dbg.value(metadata i32 %1, metadata !3593, metadata !DIExpression()), !dbg !3595
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3596
  %3 = and i32 %2, 1, !dbg !3598
  %4 = icmp eq i32 %3, 0, !dbg !3598
  br i1 %4, label %7, label %5, !dbg !3599

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3600
  br label %7, !dbg !3602

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3603
  %9 = and i32 %8, -2, !dbg !3603
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3603
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3604
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3605
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3606
  ret i32 0, !dbg !3607
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3608 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3612, metadata !DIExpression()), !dbg !3613
  %2 = icmp ugt i32 %0, 15, !dbg !3614
  br i1 %2, label %13, label %3, !dbg !3616

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3617
  %5 = load volatile i32, i32* %4, align 4, !dbg !3617
  %6 = and i32 %5, 256, !dbg !3619
  %7 = icmp eq i32 %6, 0, !dbg !3619
  br i1 %7, label %13, label %8, !dbg !3620

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3621
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3623
  %11 = or i32 %10, %9, !dbg !3623
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3623
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3624
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3625
  br label %13, !dbg !3626

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3613
  ret i32 %14, !dbg !3627
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3628 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3630, metadata !DIExpression()), !dbg !3631
  %2 = icmp ugt i32 %0, 15, !dbg !3632
  br i1 %2, label %11, label %3, !dbg !3634

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3635
  %5 = xor i32 %4, -1, !dbg !3636
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3637
  %7 = and i32 %6, %5, !dbg !3637
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3637
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3638
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3639
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3640
  store i32 0, i32* %9, align 4, !dbg !3641
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3642
  store i32 0, i32* %10, align 4, !dbg !3643
  br label %11, !dbg !3644

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3631
  ret i32 %12, !dbg !3645
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3651, metadata !DIExpression()), !dbg !3652
  %2 = icmp ugt i32 %0, 3, !dbg !3653
  br i1 %2, label %13, label %3, !dbg !3655

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3656
  %5 = and i32 %4, -769, !dbg !3656
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3656
  %6 = shl nuw nsw i32 %0, 8, !dbg !3657
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3658
  %8 = or i32 %7, %6, !dbg !3658
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3658
  %9 = icmp eq i32 %0, 0, !dbg !3659
  br i1 %9, label %10, label %11, !dbg !3661

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3662
  br label %11, !dbg !3664

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3665
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3666
  br label %13, !dbg !3667

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3652
  ret i32 %14, !dbg !3668
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.gpio_backup_restore_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3669 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3680, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !3681, metadata !DIExpression()), !dbg !3682
  %3 = icmp ugt i32 %0, 15, !dbg !3683
  br i1 %3, label %30, label %4, !dbg !3685

4:                                                ; preds = %2
  %5 = icmp eq %struct.gpio_backup_restore_t* %1, null, !dbg !3686
  br i1 %5, label %30, label %6, !dbg !3688

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !3689
  %8 = load i32, i32* %7, align 4, !dbg !3689
  %9 = and i32 %8, 4095, !dbg !3691
  %10 = icmp eq i32 %9, 0, !dbg !3691
  br i1 %10, label %12, label %11, !dbg !3692

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3693
  unreachable, !dbg !3693

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !3695
  %14 = load i32, i32* %13, align 4, !dbg !3695
  %15 = and i32 %14, 4095, !dbg !3697
  %16 = icmp eq i32 %15, 0, !dbg !3697
  br i1 %16, label %18, label %17, !dbg !3698

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3699
  unreachable, !dbg !3699

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3701
  store volatile i32 %8, i32* %19, align 4, !dbg !3702
  %20 = load i32, i32* %7, align 4, !dbg !3703
  %21 = load i32, i32* %13, align 4, !dbg !3704
  %22 = add i32 %21, %20, !dbg !3705
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3706
  store volatile i32 %22, i32* %23, align 4, !dbg !3707
  %24 = load volatile i32, i32* %19, align 4, !dbg !3708
  %25 = or i32 %24, 256, !dbg !3708
  store volatile i32 %25, i32* %19, align 4, !dbg !3708
  %26 = load volatile i32, i32* %19, align 4, !dbg !3709
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3710
  store i32 %26, i32* %27, align 4, !dbg !3711
  %28 = load volatile i32, i32* %23, align 4, !dbg !3712
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3713
  store i32 %28, i32* %29, align 4, !dbg !3714
  br label %30, !dbg !3715

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3682
  ret i32 %31, !dbg !3716
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3721, metadata !DIExpression()), !dbg !3723
  %2 = and i32 %0, 31, !dbg !3724
  %3 = icmp eq i32 %2, 0, !dbg !3724
  br i1 %3, label %4, label %9, !dbg !3726

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %5, metadata !3722, metadata !DIExpression()), !dbg !3723
  %6 = and i32 %0, -32, !dbg !3728
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3729
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3730
  %8 = or i32 %7, 5, !dbg !3730
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3730
  tail call void asm sideeffect "isb", ""() #16, !dbg !3731, !srcloc !3550
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3733
  br label %9, !dbg !3734

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3723
  ret i32 %10, !dbg !3735
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %1, metadata !3741, metadata !DIExpression()), !dbg !3744
  %3 = add i32 %1, %0, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %3, metadata !3743, metadata !DIExpression()), !dbg !3744
  %4 = or i32 %1, %0, !dbg !3746
  %5 = and i32 %4, 31, !dbg !3746
  %6 = icmp eq i32 %5, 0, !dbg !3746
  br i1 %6, label %7, label %16, !dbg !3746

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %8, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3744
  %9 = icmp ugt i32 %3, %0, !dbg !3749
  br i1 %9, label %10, label %15, !dbg !3750

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3740, metadata !DIExpression()), !dbg !3744
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3751
  %13 = add i32 %11, 32, !dbg !3753
  call void @llvm.dbg.value(metadata i32 %13, metadata !3740, metadata !DIExpression()), !dbg !3744
  %14 = icmp ult i32 %13, %3, !dbg !3749
  br i1 %14, label %10, label %15, !dbg !3750, !llvm.loop !3754

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3756, !srcloc !3550
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3758
  br label %16, !dbg !3759

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3744
  ret i32 %17, !dbg !3760
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3765
  %2 = and i32 %0, 31, !dbg !3766
  %3 = icmp eq i32 %2, 0, !dbg !3766
  br i1 %3, label %4, label %9, !dbg !3768

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3769
  call void @llvm.dbg.value(metadata i32 %5, metadata !3764, metadata !DIExpression()), !dbg !3765
  %6 = and i32 %0, -32, !dbg !3770
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3771
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3772
  %8 = or i32 %7, 21, !dbg !3772
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3772
  tail call void asm sideeffect "isb", ""() #16, !dbg !3773, !srcloc !3550
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3775
  br label %9, !dbg !3776

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3765
  ret i32 %10, !dbg !3777
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 %1, metadata !3781, metadata !DIExpression()), !dbg !3784
  %3 = add i32 %1, %0, !dbg !3785
  call void @llvm.dbg.value(metadata i32 %3, metadata !3783, metadata !DIExpression()), !dbg !3784
  %4 = or i32 %1, %0, !dbg !3786
  %5 = and i32 %4, 31, !dbg !3786
  %6 = icmp eq i32 %5, 0, !dbg !3786
  br i1 %6, label %7, label %16, !dbg !3786

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3788
  call void @llvm.dbg.value(metadata i32 %8, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3784
  %9 = icmp ugt i32 %3, %0, !dbg !3789
  br i1 %9, label %10, label %15, !dbg !3790

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3780, metadata !DIExpression()), !dbg !3784
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3791
  %13 = add i32 %11, 32, !dbg !3793
  call void @llvm.dbg.value(metadata i32 %13, metadata !3780, metadata !DIExpression()), !dbg !3784
  %14 = icmp ult i32 %13, %3, !dbg !3789
  br i1 %14, label %10, label %15, !dbg !3790, !llvm.loop !3794

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3796, !srcloc !3550
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3798
  br label %16, !dbg !3799

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3784
  ret i32 %17, !dbg !3800
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3801 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %1, metadata !3803, metadata !DIExpression()), !dbg !3805
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3806
  %3 = and i32 %2, -31, !dbg !3806
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3806
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3807
  %5 = or i32 %4, 19, !dbg !3807
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3807
  tail call void asm sideeffect "isb", ""() #16, !dbg !3808, !srcloc !3550
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3810
  ret i32 0, !dbg !3811
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3818
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3819
  %3 = and i32 %2, 8, !dbg !3821
  %4 = icmp eq i32 %3, 0, !dbg !3821
  br i1 %4, label %23, label %5, !dbg !3822

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3817, metadata !DIExpression()), !dbg !3818
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3823
  %8 = shl nuw nsw i32 1, %6, !dbg !3828
  %9 = and i32 %7, %8, !dbg !3829
  %10 = icmp eq i32 %9, 0, !dbg !3829
  br i1 %10, label %20, label %11, !dbg !3830

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3831
  %13 = load volatile i32, i32* %12, align 4, !dbg !3831
  %14 = and i32 %13, -257, !dbg !3834
  %15 = icmp ugt i32 %14, %0, !dbg !3835
  br i1 %15, label %20, label %16, !dbg !3836

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3837
  %18 = load volatile i32, i32* %17, align 4, !dbg !3837
  %19 = icmp ugt i32 %18, %0, !dbg !3838
  br i1 %19, label %23, label %20, !dbg !3839

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %21, metadata !3817, metadata !DIExpression()), !dbg !3818
  %22 = icmp eq i32 %21, 16, !dbg !3841
  br i1 %22, label %23, label %5, !dbg !3842, !llvm.loop !3843

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3818
  ret i1 %24, !dbg !3845
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !3846 {
  ret i32 0, !dbg !3850
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 -1, metadata !3856, metadata !DIExpression()), !dbg !3857
  %2 = icmp ugt i32 %0, 95, !dbg !3858
  br i1 %2, label %4, label %3, !dbg !3858

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3860
  call void @llvm.dbg.value(metadata i32 0, metadata !3856, metadata !DIExpression()), !dbg !3857
  br label %4, !dbg !3862

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3857
  ret i32 %5, !dbg !3863
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3868, metadata !DIExpression()), !dbg !3869
  %2 = and i32 %0, 31, !dbg !3870
  %3 = shl nuw i32 1, %2, !dbg !3871
  %4 = lshr i32 %0, 5, !dbg !3872
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3873
  store volatile i32 %3, i32* %5, align 4, !dbg !3874
  ret void, !dbg !3875
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i32 -1, metadata !3879, metadata !DIExpression()), !dbg !3880
  %2 = icmp ugt i32 %0, 95, !dbg !3881
  br i1 %2, label %4, label %3, !dbg !3881

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3883
  call void @llvm.dbg.value(metadata i32 0, metadata !3879, metadata !DIExpression()), !dbg !3880
  br label %4, !dbg !3885

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3880
  ret i32 %5, !dbg !3886
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3890
  %2 = and i32 %0, 31, !dbg !3891
  %3 = shl nuw i32 1, %2, !dbg !3892
  %4 = lshr i32 %0, 5, !dbg !3893
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3894
  store volatile i32 %3, i32* %5, align 4, !dbg !3895
  ret void, !dbg !3896
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i32 255, metadata !3902, metadata !DIExpression()), !dbg !3903
  %2 = icmp ugt i32 %0, 95, !dbg !3904
  br i1 %2, label %5, label %3, !dbg !3904

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %4, metadata !3902, metadata !DIExpression()), !dbg !3903
  br label %5, !dbg !3908

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3903
  ret i32 %6, !dbg !3909
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3914, metadata !DIExpression()), !dbg !3915
  %2 = lshr i32 %0, 5, !dbg !3916
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3917
  %4 = load volatile i32, i32* %3, align 4, !dbg !3917
  %5 = and i32 %0, 31, !dbg !3918
  %6 = lshr i32 %4, %5, !dbg !3919
  %7 = and i32 %6, 1, !dbg !3919
  ret i32 %7, !dbg !3920
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3921 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3923, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i32 -1, metadata !3924, metadata !DIExpression()), !dbg !3925
  %2 = icmp ugt i32 %0, 95, !dbg !3926
  br i1 %2, label %4, label %3, !dbg !3926

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3928
  call void @llvm.dbg.value(metadata i32 0, metadata !3924, metadata !DIExpression()), !dbg !3925
  br label %4, !dbg !3930

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3925
  ret i32 %5, !dbg !3931
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3934, metadata !DIExpression()), !dbg !3935
  %2 = and i32 %0, 31, !dbg !3936
  %3 = shl nuw i32 1, %2, !dbg !3937
  %4 = lshr i32 %0, 5, !dbg !3938
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3939
  store volatile i32 %3, i32* %5, align 4, !dbg !3940
  ret void, !dbg !3941
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3942 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3944, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i32 -1, metadata !3945, metadata !DIExpression()), !dbg !3946
  %2 = icmp ugt i32 %0, 95, !dbg !3947
  br i1 %2, label %4, label %3, !dbg !3947

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3949
  call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression()), !dbg !3946
  br label %4, !dbg !3951

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3946
  ret i32 %5, !dbg !3952
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3955, metadata !DIExpression()), !dbg !3956
  %2 = and i32 %0, 31, !dbg !3957
  %3 = shl nuw i32 1, %2, !dbg !3958
  %4 = lshr i32 %0, 5, !dbg !3959
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3960
  store volatile i32 %3, i32* %5, align 4, !dbg !3961
  ret void, !dbg !3962
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 %1, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 -1, metadata !3969, metadata !DIExpression()), !dbg !3970
  %3 = icmp ugt i32 %0, 95, !dbg !3971
  br i1 %3, label %5, label %4, !dbg !3971

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3973
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3970
  br label %5, !dbg !3975

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3970
  ret i32 %6, !dbg !3976
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %1, metadata !3982, metadata !DIExpression()), !dbg !3983
  %3 = trunc i32 %1 to i8, !dbg !3984
  %4 = shl i8 %3, 5, !dbg !3984
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3987
  store volatile i8 %4, i8* %5, align 1, !dbg !3988
  ret void, !dbg !3989
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 68, metadata !3993, metadata !DIExpression()), !dbg !3994
  %2 = icmp ugt i32 %0, 95, !dbg !3995
  br i1 %2, label %5, label %3, !dbg !3995

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %4, metadata !3993, metadata !DIExpression()), !dbg !3994
  br label %5, !dbg !3999

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3994
  ret i32 %6, !dbg !4000
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !4001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4003, metadata !DIExpression()), !dbg !4004
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4005
  %3 = load volatile i8, i8* %2, align 1, !dbg !4005
  %4 = lshr i8 %3, 5, !dbg !4008
  %5 = zext i8 %4 to i32, !dbg !4008
  ret i32 %5, !dbg !4009
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !4010 {
  ret void, !dbg !4011
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4012 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4014, metadata !DIExpression()), !dbg !4016
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %1, metadata !4015, metadata !DIExpression()), !dbg !4016
  %2 = icmp ugt i32 %1, 95, !dbg !4018
  br i1 %2, label %12, label %3, !dbg !4018

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4020
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4020
  %6 = icmp eq void (i32)* %5, null, !dbg !4022
  br i1 %6, label %7, label %8, !dbg !4023

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4014, metadata !DIExpression()), !dbg !4016
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !4024
  br label %12, !dbg !4026

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4027
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4029
  store i32 %9, i32* %10, align 4, !dbg !4030
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4031
  tail call void %11(i32 noundef %1) #15, !dbg !4032
  call void @llvm.dbg.value(metadata i32 0, metadata !4014, metadata !DIExpression()), !dbg !4016
  br label %12, !dbg !4033

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4016
  ret i32 %13, !dbg !4034
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !4035 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4038
  %2 = and i32 %1, 511, !dbg !4039
  call void @llvm.dbg.value(metadata i32 %2, metadata !4037, metadata !DIExpression()), !dbg !4040
  %3 = add nsw i32 %2, -16, !dbg !4041
  ret i32 %3, !dbg !4042
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !4043 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4044
  %2 = lshr i32 %1, 22, !dbg !4045
  %3 = and i32 %2, 1, !dbg !4045
  ret i32 %3, !dbg !4046
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4047 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4052, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4053, metadata !DIExpression()), !dbg !4055
  %3 = icmp ugt i32 %0, 95, !dbg !4056
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4056
  br i1 %5, label %10, label %6, !dbg !4056

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4058
  call void @llvm.dbg.value(metadata i32 %7, metadata !4054, metadata !DIExpression()), !dbg !4055
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4059
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4060
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4061
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4062
  store i32 0, i32* %9, align 4, !dbg !4063
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !4064
  br label %10, !dbg !4065

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4055
  ret i32 %11, !dbg !4066
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4067 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4071, metadata !DIExpression()), !dbg !4072
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4073
  store i32 %2, i32* %0, align 4, !dbg !4074
  ret i32 0, !dbg !4075
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4076 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4080, metadata !DIExpression()), !dbg !4081
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !4082
  ret i32 0, !dbg !4083
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4084 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4089, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i8 %1, metadata !4090, metadata !DIExpression()), !dbg !4092
  %3 = icmp ugt i32 %0, 60, !dbg !4093
  br i1 %3, label %11, label %4, !dbg !4095

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4096
  br i1 %5, label %11, label %6, !dbg !4098

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4099
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !4100
  call void @llvm.dbg.value(metadata i32 %8, metadata !4091, metadata !DIExpression()), !dbg !4092
  %9 = icmp slt i32 %8, 0, !dbg !4101
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4101
  br label %11, !dbg !4102

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4092
  ret i32 %12, !dbg !4103
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !4104 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4109, metadata !DIExpression()), !dbg !4110
  ret i32 0, !dbg !4111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !4112 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4114, metadata !DIExpression()), !dbg !4115
  ret i32 0, !dbg !4116
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4117 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4122, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32* %1, metadata !4123, metadata !DIExpression()), !dbg !4132
  %4 = icmp eq i32* %1, null, !dbg !4133
  br i1 %4, label %12, label %5, !dbg !4135

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4136
  br i1 %6, label %12, label %7, !dbg !4138

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4139
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4139
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4139
  %10 = load i8, i8* %9, align 1, !dbg !4139
  call void @llvm.dbg.value(metadata i8 %10, metadata !4124, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4132
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4139
  %11 = zext i8 %10 to i32, !dbg !4140
  store i32 %11, i32* %1, align 4, !dbg !4141
  br label %12, !dbg !4142

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4132
  ret i32 %13, !dbg !4143
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 %1, metadata !4149, metadata !DIExpression()), !dbg !4151
  %3 = icmp ugt i32 %0, 60, !dbg !4152
  br i1 %3, label %9, label %4, !dbg !4154

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4155
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4156
  call void @llvm.dbg.value(metadata i32 %6, metadata !4150, metadata !DIExpression()), !dbg !4151
  %7 = icmp slt i32 %6, 0, !dbg !4157
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4157
  br label %9, !dbg !4158

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4151
  ret i32 %10, !dbg !4159
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4160 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32* %1, metadata !4163, metadata !DIExpression()), !dbg !4165
  %4 = icmp ugt i32 %0, 60, !dbg !4166
  br i1 %4, label %12, label %5, !dbg !4168

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4169
  br i1 %6, label %12, label %7, !dbg !4171

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4172
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4172
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4172
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4172
  %10 = load i8, i8* %9, align 2, !dbg !4172
  call void @llvm.dbg.value(metadata i8 %10, metadata !4164, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4165
  call void @llvm.dbg.value(metadata i8 undef, metadata !4164, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4172
  %11 = zext i8 %10 to i32, !dbg !4173
  store i32 %11, i32* %1, align 4, !dbg !4174
  br label %12, !dbg !4175

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4165
  ret i32 %13, !dbg !4176
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i32 %1, metadata !4183, metadata !DIExpression()), !dbg !4185
  %3 = icmp ugt i32 %0, 60, !dbg !4186
  br i1 %3, label %8, label %4, !dbg !4188

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4189
  call void @llvm.dbg.value(metadata i32 %5, metadata !4184, metadata !DIExpression()), !dbg !4185
  %6 = icmp slt i32 %5, 0, !dbg !4190
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4190
  br label %8, !dbg !4191

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4185
  ret i32 %9, !dbg !4192
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4193 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4198, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32* %1, metadata !4199, metadata !DIExpression()), !dbg !4201
  %4 = icmp ugt i32 %0, 60, !dbg !4202
  br i1 %4, label %13, label %5, !dbg !4204

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4205
  br i1 %6, label %13, label %7, !dbg !4207

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4208
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4208
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4208
  call void @llvm.dbg.value(metadata i32 undef, metadata !4200, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4201
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4208
  %10 = load i8, i8* %9, align 4, !dbg !4208
  call void @llvm.dbg.value(metadata i8 %10, metadata !4200, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4201
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4208
  %11 = icmp ne i8 %10, 0, !dbg !4209
  %12 = zext i1 %11 to i32, !dbg !4209
  store i32 %12, i32* %1, align 4, !dbg !4210
  br label %13, !dbg !4211

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4201
  ret i32 %14, !dbg !4212
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4213 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4215, metadata !DIExpression()), !dbg !4217
  %3 = icmp ugt i32 %0, 60, !dbg !4218
  br i1 %3, label %11, label %4, !dbg !4220

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4221
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4221
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4221
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4221
  %7 = load i8, i8* %6, align 2, !dbg !4221
  call void @llvm.dbg.value(metadata i8 %7, metadata !4216, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4217
  call void @llvm.dbg.value(metadata i8 undef, metadata !4216, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4217
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4221
  %8 = xor i8 %7, 1, !dbg !4222
  %9 = zext i8 %8 to i32, !dbg !4222
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4223
  br label %11, !dbg !4224

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4217
  ret i32 %12, !dbg !4225
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4228, metadata !DIExpression()), !dbg !4230
  %2 = icmp ugt i32 %0, 60, !dbg !4231
  br i1 %2, label %10, label %3, !dbg !4233

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4234
  call void @llvm.dbg.value(metadata i32 %4, metadata !4229, metadata !DIExpression()), !dbg !4230
  %5 = icmp slt i32 %4, 0, !dbg !4235
  br i1 %5, label %10, label %6, !dbg !4237

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4238
  call void @llvm.dbg.value(metadata i32 %7, metadata !4229, metadata !DIExpression()), !dbg !4230
  %8 = icmp slt i32 %7, 0, !dbg !4239
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4239
  br label %10, !dbg !4240

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4230
  ret i32 %11, !dbg !4241
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4244, metadata !DIExpression()), !dbg !4246
  %2 = icmp ugt i32 %0, 60, !dbg !4247
  br i1 %2, label %10, label %3, !dbg !4249

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %4, metadata !4245, metadata !DIExpression()), !dbg !4246
  %5 = icmp slt i32 %4, 0, !dbg !4251
  br i1 %5, label %10, label %6, !dbg !4253

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4254
  call void @llvm.dbg.value(metadata i32 %7, metadata !4245, metadata !DIExpression()), !dbg !4246
  %8 = icmp slt i32 %7, 0, !dbg !4255
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4255
  br label %10, !dbg !4256

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4246
  ret i32 %11, !dbg !4257
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4260, metadata !DIExpression()), !dbg !4262
  %2 = icmp ugt i32 %0, 60, !dbg !4263
  br i1 %2, label %7, label %3, !dbg !4265

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4266
  call void @llvm.dbg.value(metadata i32 %4, metadata !4261, metadata !DIExpression()), !dbg !4262
  %5 = icmp slt i32 %4, 0, !dbg !4267
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4267
  br label %7, !dbg !4268

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4262
  ret i32 %8, !dbg !4269
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4274, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i32 %1, metadata !4275, metadata !DIExpression()), !dbg !4277
  %3 = icmp ugt i32 %0, 60, !dbg !4278
  br i1 %3, label %9, label %4, !dbg !4280

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4281
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %6, metadata !4276, metadata !DIExpression()), !dbg !4277
  %7 = icmp slt i32 %6, 0, !dbg !4283
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4283
  br label %9, !dbg !4284

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4277
  ret i32 %10, !dbg !4285
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4286 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4291, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i32* %1, metadata !4292, metadata !DIExpression()), !dbg !4295
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4296
  %4 = icmp ugt i32 %0, 60, !dbg !4297
  br i1 %4, label %11, label %5, !dbg !4299

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4294, metadata !DIExpression(DW_OP_deref)), !dbg !4295
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %6, metadata !4293, metadata !DIExpression()), !dbg !4295
  %7 = load i8, i8* %3, align 1, !dbg !4301
  call void @llvm.dbg.value(metadata i8 %7, metadata !4294, metadata !DIExpression()), !dbg !4295
  %8 = zext i8 %7 to i32, !dbg !4302
  store i32 %8, i32* %1, align 4, !dbg !4303
  %9 = icmp slt i32 %6, 0, !dbg !4304
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4304
  br label %11, !dbg !4305

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4295
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4306
  ret i32 %12, !dbg !4306
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_init(i32 noundef %0, %struct.hal_spi_master_config_t* noundef %1) local_unnamed_addr #3 !dbg !4307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4314, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_config_t* %1, metadata !4315, metadata !DIExpression()), !dbg !4321
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4322
  br i1 %3, label %4, label %28, !dbg !4324

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_spi_master_config_t* %1, null, !dbg !4325
  br i1 %5, label %28, label %6, !dbg !4327

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 0, !dbg !4328
  %8 = load i32, i32* %7, align 4, !dbg !4328
  %9 = add i32 %8, -60000001, !dbg !4330
  %10 = icmp ult i32 %9, -59970001, !dbg !4330
  br i1 %10, label %28, label %11, !dbg !4330

11:                                               ; preds = %6
  %12 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4331
  call void @llvm.dbg.value(metadata i32 %12, metadata !4319, metadata !DIExpression()), !dbg !4332
  %13 = load volatile i8, i8* @g_spi_master_status, align 1, !dbg !4333
  %14 = icmp eq i8 %13, 1, !dbg !4333
  br i1 %14, label %15, label %16, !dbg !4331

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !4318, metadata !DIExpression()), !dbg !4321
  tail call void @restore_interrupt_mask(i32 noundef %12) #15, !dbg !4331
  br label %28, !dbg !4335

16:                                               ; preds = %11
  store volatile i8 1, i8* @g_spi_master_status, align 1, !dbg !4336
  call void @llvm.dbg.value(metadata i32 0, metadata !4318, metadata !DIExpression()), !dbg !4321
  tail call void @restore_interrupt_mask(i32 noundef %12) #15, !dbg !4331
  %17 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 1, !dbg !4338
  %18 = load i32, i32* %17, align 4, !dbg !4338
  tail call fastcc void @hal_spi_master_map_cs_pin(i32 noundef %18) #14, !dbg !4339
  %19 = tail call fastcc i32 @hal_spi_master_build_settings(%struct.hal_spi_master_config_t* noundef nonnull %1) #14, !dbg !4340
  call void @llvm.dbg.value(metadata i32 %19, metadata !4316, metadata !DIExpression()), !dbg !4321
  %20 = load i32, i32* %7, align 4, !dbg !4341
  %21 = tail call fastcc i32 @hal_spi_master_calc_divisor(i32 noundef %20) #14, !dbg !4342, !range !4343
  %22 = tail call i32 @spim_init(i32 noundef %19, i32 noundef %21) #15, !dbg !4344
  call void @llvm.dbg.value(metadata i32 %22, metadata !4317, metadata !DIExpression()), !dbg !4321
  %23 = icmp slt i32 %22, 0, !dbg !4345
  br i1 %23, label %28, label %24, !dbg !4347

24:                                               ; preds = %16
  %25 = tail call i8* @memset(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i32 noundef 0, i32 noundef 20) #15, !dbg !4348
  %26 = bitcast %struct.hal_spi_master_config_t* %1 to i8*, !dbg !4349
  %27 = tail call i8* @memcpy(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i8* noundef nonnull %26, i32 noundef 20) #15, !dbg !4350
  br label %28, !dbg !4351

28:                                               ; preds = %15, %16, %6, %4, %2, %24
  %29 = phi i32 [ 0, %24 ], [ -2, %2 ], [ -1, %4 ], [ -1, %6 ], [ -4, %16 ], [ -3, %15 ], !dbg !4321
  ret i32 %29, !dbg !4352
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4357, metadata !DIExpression()), !dbg !4358
  %2 = icmp eq i32 %0, 0, !dbg !4359
  ret i1 %2, !dbg !4360
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_spi_master_map_cs_pin(i32 noundef %0) unnamed_addr #3 !dbg !4361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4365, metadata !DIExpression()), !dbg !4366
  %2 = icmp eq i32 %0, 0, !dbg !4367
  br i1 %2, label %3, label %14, !dbg !4369

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !4370
  %5 = and i32 %4, 7340032, !dbg !4370
  %6 = icmp eq i32 %5, 7340032, !dbg !4370
  br i1 %6, label %7, label %8, !dbg !4373

7:                                                ; preds = %3
  store i32 32, i32* @g_spi_master_cs_n, align 4, !dbg !4374
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 106, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 32) #15, !dbg !4376
  br label %15, !dbg !4377

8:                                                ; preds = %3
  %9 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !4378
  %10 = and i32 %9, 6, !dbg !4378
  %11 = icmp eq i32 %10, 6, !dbg !4378
  br i1 %11, label %12, label %13, !dbg !4380

12:                                               ; preds = %8
  store i32 7, i32* @g_spi_master_cs_n, align 4, !dbg !4381
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 7) #15, !dbg !4383
  br label %15, !dbg !4384

13:                                               ; preds = %8
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 111, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.22, i32 0, i32 0)) #15, !dbg !4385
  store i32 32, i32* @g_spi_master_cs_n, align 4, !dbg !4387
  br label %15

14:                                               ; preds = %1
  store i32 6, i32* @g_spi_master_cs_n, align 4, !dbg !4388
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 116, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 6) #15, !dbg !4390
  br label %15

15:                                               ; preds = %7, %13, %12, %14
  ret void, !dbg !4391
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @hal_spi_master_build_settings(%struct.hal_spi_master_config_t* nocapture noundef readonly %0) unnamed_addr #6 !dbg !4392 {
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_config_t* %0, metadata !4396, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4397, metadata !DIExpression()), !dbg !4398
  %2 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 1, !dbg !4399
  %3 = load i32, i32* %2, align 4, !dbg !4399
  %4 = icmp eq i32 %3, 0, !dbg !4401
  %5 = select i1 %4, i32 0, i32 536870912
  call void @llvm.dbg.value(metadata i32 %5, metadata !4397, metadata !DIExpression()), !dbg !4398
  %6 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 2, !dbg !4402
  %7 = load i32, i32* %6, align 4, !dbg !4402
  %8 = icmp eq i32 %7, 1, !dbg !4404
  %9 = or i32 %5, 8, !dbg !4405
  %10 = select i1 %8, i32 %5, i32 %9, !dbg !4405
  call void @llvm.dbg.value(metadata i32 %10, metadata !4397, metadata !DIExpression()), !dbg !4398
  %11 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 3, !dbg !4406
  %12 = load i32, i32* %11, align 4, !dbg !4406
  %13 = icmp eq i32 %12, 0, !dbg !4408
  %14 = or i32 %10, 16, !dbg !4409
  %15 = select i1 %13, i32 %10, i32 %14, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %15, metadata !4397, metadata !DIExpression()), !dbg !4398
  %16 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 4, !dbg !4410
  %17 = load i32, i32* %16, align 4, !dbg !4410
  %18 = icmp eq i32 %17, 0, !dbg !4412
  %19 = or i32 %15, 32, !dbg !4413
  %20 = select i1 %18, i32 %15, i32 %19, !dbg !4413
  call void @llvm.dbg.value(metadata i32 %20, metadata !4397, metadata !DIExpression()), !dbg !4398
  ret i32 %20, !dbg !4414
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_spi_master_calc_divisor(i32 noundef %0) unnamed_addr #10 !dbg !515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !519, metadata !DIExpression()), !dbg !4415
  %2 = udiv i32 120000000, %0, !dbg !4416
  %3 = add nsw i32 %2, -2, !dbg !4417
  ret i32 %3, !dbg !4418
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4423, metadata !DIExpression()), !dbg !4424
  %2 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4425
  br i1 %2, label %3, label %5, !dbg !4427

3:                                                ; preds = %1
  %4 = tail call i8* @memset(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i32 noundef 0, i32 noundef 20) #15, !dbg !4428
  store volatile i8 0, i8* @g_spi_master_status, align 1, !dbg !4429
  br label %5, !dbg !4431

5:                                                ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !4424
  ret i32 %6, !dbg !4432
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_send_polling(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4437, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i8* %1, metadata !4438, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.value(metadata i32 %2, metadata !4439, metadata !DIExpression()), !dbg !4441
  %4 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4442
  br i1 %4, label %5, label %19, !dbg !4444

5:                                                ; preds = %3
  %6 = icmp eq i8* %1, null, !dbg !4445
  br i1 %6, label %19, label %7, !dbg !4447

7:                                                ; preds = %5
  %8 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4448
  %9 = and i32 %8, 65536, !dbg !4450
  %10 = icmp eq i32 %9, 0, !dbg !4451
  br i1 %10, label %11, label %19, !dbg !4452

11:                                               ; preds = %7
  %12 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4453
  %13 = tail call i32 @hal_gpio_set_output(i32 noundef %12, i32 noundef 0) #15, !dbg !4454
  %14 = tail call i32 @spim_write(i8* noundef nonnull %1, i32 noundef %2) #15, !dbg !4455
  call void @llvm.dbg.value(metadata i32 %14, metadata !4440, metadata !DIExpression()), !dbg !4441
  %15 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4456
  %16 = tail call i32 @hal_gpio_set_output(i32 noundef %15, i32 noundef 1) #15, !dbg !4457
  %17 = icmp slt i32 %14, 0, !dbg !4458
  %18 = select i1 %17, i32 -4, i32 0, !dbg !4458
  br label %19, !dbg !4459

19:                                               ; preds = %7, %5, %3, %11
  %20 = phi i32 [ %18, %11 ], [ -2, %3 ], [ -1, %5 ], [ -3, %7 ], !dbg !4441
  ret i32 %20, !dbg !4460
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_send_and_receive_polling(i32 noundef %0, %struct.hal_spi_master_send_and_receive_config_t* nocapture noundef readonly %1) local_unnamed_addr #3 !dbg !4461 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4473, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_send_and_receive_config_t* %1, metadata !4474, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i32 0, metadata !4475, metadata !DIExpression()), !dbg !4476
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4477
  br i1 %3, label %4, label %38, !dbg !4479

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 2, !dbg !4480
  %6 = load i8*, i8** %5, align 4, !dbg !4480
  %7 = icmp eq i8* %6, null, !dbg !4482
  br i1 %7, label %38, label %8, !dbg !4483

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 0, !dbg !4484
  %10 = load i8*, i8** %9, align 4, !dbg !4484
  %11 = icmp eq i8* %10, null, !dbg !4486
  br i1 %11, label %38, label %12, !dbg !4487

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 1, !dbg !4488
  %14 = load i32, i32* %13, align 4, !dbg !4488
  %15 = icmp ugt i32 %14, 4, !dbg !4490
  br i1 %15, label %38, label %16, !dbg !4491

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 3, !dbg !4492
  %18 = load i32, i32* %17, align 4, !dbg !4492
  %19 = icmp ugt i32 %14, %18, !dbg !4494
  br i1 %19, label %38, label %20, !dbg !4495

20:                                               ; preds = %16
  %21 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4496
  %22 = and i32 %21, 65536, !dbg !4498
  %23 = icmp eq i32 %22, 0, !dbg !4499
  br i1 %23, label %24, label %38, !dbg !4500

24:                                               ; preds = %20
  %25 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4501
  %26 = tail call i32 @hal_gpio_set_output(i32 noundef %25, i32 noundef 0) #15, !dbg !4502
  %27 = tail call fastcc i32 @hal_spi_build_op_addr(%struct.hal_spi_master_send_and_receive_config_t* noundef nonnull %1) #14, !dbg !4503
  %28 = load i32, i32* %13, align 4, !dbg !4504
  %29 = load i8*, i8** %5, align 4, !dbg !4505
  %30 = getelementptr inbounds i8, i8* %29, i32 %28, !dbg !4506
  %31 = load i32, i32* %17, align 4, !dbg !4507
  %32 = sub i32 %31, %28, !dbg !4508
  %33 = tail call i32 @spim_read(i32 noundef %27, i32 noundef %28, i8* noundef %30, i32 noundef %32) #15, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %33, metadata !4475, metadata !DIExpression()), !dbg !4476
  %34 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4510
  %35 = tail call i32 @hal_gpio_set_output(i32 noundef %34, i32 noundef 1) #15, !dbg !4511
  %36 = icmp slt i32 %33, 0, !dbg !4512
  %37 = select i1 %36, i32 -4, i32 0, !dbg !4512
  br label %38, !dbg !4513

38:                                               ; preds = %20, %16, %12, %8, %4, %2, %24
  %39 = phi i32 [ %37, %24 ], [ -2, %2 ], [ -1, %4 ], [ -1, %8 ], [ -1, %12 ], [ -1, %16 ], [ -3, %20 ], !dbg !4476
  ret i32 %39, !dbg !4514
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readonly
define internal fastcc i32 @hal_spi_build_op_addr(%struct.hal_spi_master_send_and_receive_config_t* nocapture noundef readonly %0) unnamed_addr #12 !dbg !4515 {
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_send_and_receive_config_t* %0, metadata !4521, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4524
  %2 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4524
  %4 = icmp eq i32 %3, 0, !dbg !4525
  br i1 %4, label %21, label %5, !dbg !4528

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 4
  br label %8, !dbg !4528

8:                                                ; preds = %5, %8
  %9 = phi i32 [ 0, %5 ], [ %19, %8 ]
  %10 = phi i32 [ 0, %5 ], [ %18, %8 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 %10, metadata !4522, metadata !DIExpression()), !dbg !4524
  %11 = getelementptr inbounds i8, i8* %7, i32 %9, !dbg !4529
  %12 = load i8, i8* %11, align 1, !dbg !4529
  %13 = zext i8 %12 to i32, !dbg !4529
  %14 = xor i32 %9, -1, !dbg !4531
  %15 = add i32 %3, %14, !dbg !4531
  %16 = shl i32 %15, 3, !dbg !4532
  %17 = shl i32 %13, %16, !dbg !4533
  %18 = or i32 %17, %10, !dbg !4534
  call void @llvm.dbg.value(metadata i32 %18, metadata !4522, metadata !DIExpression()), !dbg !4524
  %19 = add nuw i32 %9, 1, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %19, metadata !4523, metadata !DIExpression()), !dbg !4524
  %20 = icmp eq i32 %19, %3, !dbg !4525
  br i1 %20, label %21, label %8, !dbg !4528, !llvm.loop !4536

21:                                               ; preds = %8, %1
  %22 = phi i32 [ 0, %1 ], [ %18, %8 ], !dbg !4524
  ret i32 %22, !dbg !4538
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_spi_master_get_running_status(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 !dbg !4539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4545, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.value(metadata i32* %1, metadata !4546, metadata !DIExpression()), !dbg !4547
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4548
  br i1 %3, label %4, label %11, !dbg !4550

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !4551
  br i1 %5, label %11, label %6, !dbg !4553

6:                                                ; preds = %4
  %7 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4554
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  store i32 %10, i32* %1, align 4, !dbg !4556
  br label %11, !dbg !4557

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4547
  ret i32 %12, !dbg !4558
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4559 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4565, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4566, metadata !DIExpression()), !dbg !4567
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4568
  br i1 %3, label %4, label %18, !dbg !4570

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4571
  %6 = load i8, i8* %5, align 4, !dbg !4571, !range !3507
  %7 = icmp eq i8 %6, 0, !dbg !4571
  br i1 %7, label %8, label %18, !dbg !4573

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !4574
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4575
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4576
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4577
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !4578
  store i8 1, i8* %5, align 4, !dbg !4579
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4580, !range !4581
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !4582
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !4583
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4584
  %16 = icmp eq i32 %15, 0, !dbg !4586
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4567
  br label %18, !dbg !4567

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4567
  ret i32 %19, !dbg !4587
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #6 !dbg !4588 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4594, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4595, metadata !DIExpression()), !dbg !4596
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4597
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4599
  br i1 %5, label %6, label %22, !dbg !4599

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4600
  %8 = load i32, i32* %7, align 4, !dbg !4600
  %9 = icmp ugt i32 %8, 12, !dbg !4602
  br i1 %9, label %22, label %10, !dbg !4603

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4604
  %12 = load i32, i32* %11, align 4, !dbg !4604
  %13 = icmp ugt i32 %12, 2, !dbg !4605
  br i1 %13, label %22, label %14, !dbg !4606

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4607
  %16 = load i32, i32* %15, align 4, !dbg !4607
  %17 = icmp ugt i32 %16, 1, !dbg !4608
  br i1 %17, label %22, label %18, !dbg !4609

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4610
  %20 = load i32, i32* %19, align 4, !dbg !4610
  %21 = icmp ult i32 %20, 4, !dbg !4611
  br label %22, !dbg !4612

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4596
  ret i1 %23, !dbg !4613
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !4614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4618, metadata !DIExpression()), !dbg !4619
  %2 = icmp ne i32 %0, 0, !dbg !4620
  %3 = zext i1 %2 to i32, !dbg !4621
  ret i32 %3, !dbg !4622
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4623 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4627, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4628, metadata !DIExpression()), !dbg !4629
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4630
  br i1 %3, label %4, label %22, !dbg !4632

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4633
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4634
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4635
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !4636
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4637
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4638
  %11 = load i32, i32* %10, align 4, !dbg !4638
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4639
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4640
  %14 = load i32, i32* %13, align 4, !dbg !4640
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4641
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4642
  %17 = load i32, i32* %16, align 4, !dbg !4642
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4643
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4644
  %20 = load i32, i32* %19, align 4, !dbg !4644
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4645
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !4646
  br label %22, !dbg !4647

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4629
  ret i32 %23, !dbg !4648
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !4649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4653, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4654, metadata !DIExpression()), !dbg !4659
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4660
  %3 = load i32, i32* %2, align 4, !dbg !4660
  ret i32 %3, !dbg !4661
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !4662 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4666, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4667, metadata !DIExpression()), !dbg !4670
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4671
  %3 = load i16, i16* %2, align 2, !dbg !4671
  ret i16 %3, !dbg !4672
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !4673 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4677, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4678, metadata !DIExpression()), !dbg !4681
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4682
  %3 = load i16, i16* %2, align 2, !dbg !4682
  ret i16 %3, !dbg !4683
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !4684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4688, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4689, metadata !DIExpression()), !dbg !4692
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4693
  %3 = load i16, i16* %2, align 2, !dbg !4693
  ret i16 %3, !dbg !4694
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4699, metadata !DIExpression()), !dbg !4700
  %2 = icmp ult i32 %0, 2, !dbg !4701
  ret i1 %2, !dbg !4702
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4707, metadata !DIExpression()), !dbg !4708
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4709
  br i1 %2, label %3, label %10, !dbg !4711

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4712
  %5 = load i8, i8* %4, align 4, !dbg !4712, !range !3507
  %6 = icmp eq i8 %5, 0, !dbg !4714
  br i1 %6, label %10, label %7, !dbg !4715

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !4716
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4717, !range !4581
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !4718
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !4719
  br label %10, !dbg !4720

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4708
  ret i32 %11, !dbg !4721
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4722 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4726, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i8 %1, metadata !4727, metadata !DIExpression()), !dbg !4729
  %3 = icmp eq i32 %0, 0, !dbg !4730
  %4 = icmp eq i32 %0, 1, !dbg !4730
  %5 = select i1 %4, i32 1, i32 2, !dbg !4730
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4730
  call void @llvm.dbg.value(metadata i32 %6, metadata !4728, metadata !DIExpression()), !dbg !4729
  %7 = icmp eq i32 %6, 2, !dbg !4731
  br i1 %7, label %9, label %8, !dbg !4733

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !4734
  br label %9, !dbg !4736

9:                                                ; preds = %2, %8
  ret void, !dbg !4737
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4742, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i8* %1, metadata !4743, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 %2, metadata !4744, metadata !DIExpression()), !dbg !4747
  %4 = icmp eq i32 %0, 0, !dbg !4748
  %5 = icmp eq i32 %0, 1, !dbg !4748
  %6 = select i1 %5, i32 1, i32 2, !dbg !4748
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4748
  call void @llvm.dbg.value(metadata i32 %7, metadata !4745, metadata !DIExpression()), !dbg !4747
  %8 = icmp eq i8* %1, null, !dbg !4749
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4751
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4751
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4747
  br i1 %12, label %19, label %13, !dbg !4751

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4746, metadata !DIExpression()), !dbg !4747
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4752
  %16 = load i8, i8* %15, align 1, !dbg !4752
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !4758
  %17 = add nuw i32 %14, 1, !dbg !4759
  call void @llvm.dbg.value(metadata i32 %17, metadata !4746, metadata !DIExpression()), !dbg !4747
  %18 = icmp eq i32 %17, %2, !dbg !4760
  br i1 %18, label %19, label %13, !dbg !4761, !llvm.loop !4762

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4747
  ret i32 %20, !dbg !4764
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4765 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4767, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.value(metadata i8* %1, metadata !4768, metadata !DIExpression()), !dbg !4774
  call void @llvm.dbg.value(metadata i32 %2, metadata !4769, metadata !DIExpression()), !dbg !4774
  %5 = bitcast i32* %4 to i8*, !dbg !4775
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4775
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4776
  br i1 %6, label %7, label %24, !dbg !4778

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4779
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4781
  br i1 %10, label %24, label %11, !dbg !4781

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4782
  %13 = load i8, i8* %12, align 4, !dbg !4782, !range !3507
  %14 = icmp eq i8 %13, 0, !dbg !4782
  br i1 %14, label %24, label %15, !dbg !4784

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4785, !range !4581
  call void @llvm.dbg.value(metadata i32* %4, metadata !4770, metadata !DIExpression(DW_OP_deref)), !dbg !4774
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4786
  %17 = load i32, i32* %4, align 4, !dbg !4787
  call void @llvm.dbg.value(metadata i32 %17, metadata !4770, metadata !DIExpression()), !dbg !4774
  %18 = icmp ult i32 %17, %2, !dbg !4789
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4771, metadata !DIExpression()), !dbg !4774
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !4790
  %20 = load i32, i32* %4, align 4, !dbg !4791
  call void @llvm.dbg.value(metadata i32 %20, metadata !4770, metadata !DIExpression()), !dbg !4774
  %21 = icmp eq i32 %19, %20, !dbg !4793
  br i1 %21, label %22, label %24, !dbg !4794

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4795, !range !4797
  call void @llvm.dbg.value(metadata i32 %23, metadata !4772, metadata !DIExpression()), !dbg !4774
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !4798
  br label %24, !dbg !4799

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4774
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4800
  ret i32 %25, !dbg !4800
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !4801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4805, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i1 %1, metadata !4806, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4808
  %3 = icmp eq i32 %0, 0, !dbg !4809
  %4 = select i1 %1, i32 15, i32 14, !dbg !4811
  %5 = select i1 %1, i32 17, i32 16, !dbg !4811
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4811
  call void @llvm.dbg.value(metadata i32 %6, metadata !4807, metadata !DIExpression()), !dbg !4808
  ret i32 %6, !dbg !4812
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4817, metadata !DIExpression()), !dbg !4819
  %2 = icmp eq i32 %0, 0, !dbg !4820
  %3 = icmp eq i32 %0, 1, !dbg !4820
  %4 = select i1 %3, i32 1, i32 2, !dbg !4820
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4820
  call void @llvm.dbg.value(metadata i32 %5, metadata !4818, metadata !DIExpression()), !dbg !4819
  %6 = icmp ult i32 %5, 2, !dbg !4821
  br i1 %6, label %7, label %9, !dbg !4823

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !4824
  br label %9, !dbg !4826

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4827
  ret i8 %10, !dbg !4828
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4829 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4833, metadata !DIExpression()), !dbg !4835
  %2 = icmp eq i32 %0, 0, !dbg !4836
  %3 = icmp eq i32 %0, 1, !dbg !4836
  %4 = select i1 %3, i32 1, i32 2, !dbg !4836
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4836
  call void @llvm.dbg.value(metadata i32 %5, metadata !4834, metadata !DIExpression()), !dbg !4835
  %6 = icmp ult i32 %5, 2, !dbg !4837
  br i1 %6, label %7, label %9, !dbg !4839

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !4840
  br label %9, !dbg !4842

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4843
  ret i32 %10, !dbg !4844
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4849, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i8* %1, metadata !4850, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.value(metadata i32 %2, metadata !4851, metadata !DIExpression()), !dbg !4854
  %4 = icmp eq i32 %0, 0, !dbg !4855
  %5 = icmp eq i32 %0, 1, !dbg !4855
  %6 = select i1 %5, i32 1, i32 2, !dbg !4855
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4855
  call void @llvm.dbg.value(metadata i32 %7, metadata !4852, metadata !DIExpression()), !dbg !4854
  %8 = icmp eq i8* %1, null, !dbg !4856
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4858
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4858
  call void @llvm.dbg.value(metadata i32 0, metadata !4853, metadata !DIExpression()), !dbg !4854
  br i1 %12, label %19, label %13, !dbg !4858

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4853, metadata !DIExpression()), !dbg !4854
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !4859
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4865
  store i8 %15, i8* %16, align 1, !dbg !4866
  %17 = add nuw i32 %14, 1, !dbg !4867
  call void @llvm.dbg.value(metadata i32 %17, metadata !4853, metadata !DIExpression()), !dbg !4854
  %18 = icmp eq i32 %17, %2, !dbg !4868
  br i1 %18, label %19, label %13, !dbg !4869, !llvm.loop !4870

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4854
  ret i32 %20, !dbg !4872
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4873 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4875, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i8* %1, metadata !4876, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i32 %2, metadata !4877, metadata !DIExpression()), !dbg !4881
  %5 = bitcast i32* %4 to i8*, !dbg !4882
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4882
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4883
  br i1 %6, label %7, label %20, !dbg !4885

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4886
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4888
  br i1 %10, label %20, label %11, !dbg !4888

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4889, !range !4581
  call void @llvm.dbg.value(metadata i32* %4, metadata !4878, metadata !DIExpression(DW_OP_deref)), !dbg !4881
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !4890
  %13 = load i32, i32* %4, align 4, !dbg !4891
  call void @llvm.dbg.value(metadata i32 %13, metadata !4878, metadata !DIExpression()), !dbg !4881
  %14 = icmp ult i32 %13, %2, !dbg !4893
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4879, metadata !DIExpression()), !dbg !4881
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !4894
  %16 = load i32, i32* %4, align 4, !dbg !4895
  call void @llvm.dbg.value(metadata i32 %16, metadata !4878, metadata !DIExpression()), !dbg !4881
  %17 = icmp eq i32 %15, %16, !dbg !4897
  br i1 %17, label %18, label %20, !dbg !4898

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4899, !range !4797
  call void @llvm.dbg.value(metadata i32 %19, metadata !4880, metadata !DIExpression()), !dbg !4881
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !4901
  br label %20, !dbg !4902

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4881
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4903
  ret i32 %21, !dbg !4903
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4904 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4906, metadata !DIExpression()), !dbg !4908
  %3 = bitcast i32* %2 to i8*, !dbg !4909
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4909
  call void @llvm.dbg.value(metadata i32 0, metadata !4907, metadata !DIExpression()), !dbg !4908
  store i32 0, i32* %2, align 4, !dbg !4910
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4911
  br i1 %4, label %5, label %8, !dbg !4913

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4914, !range !4581
  call void @llvm.dbg.value(metadata i32* %2, metadata !4907, metadata !DIExpression(DW_OP_deref)), !dbg !4908
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !4915
  %7 = load i32, i32* %2, align 4, !dbg !4916
  call void @llvm.dbg.value(metadata i32 %7, metadata !4907, metadata !DIExpression()), !dbg !4908
  br label %8, !dbg !4917

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4908
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4918
  ret i32 %9, !dbg !4918
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4919 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4921, metadata !DIExpression()), !dbg !4923
  %3 = bitcast i32* %2 to i8*, !dbg !4924
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4924
  call void @llvm.dbg.value(metadata i32 0, metadata !4922, metadata !DIExpression()), !dbg !4923
  store i32 0, i32* %2, align 4, !dbg !4925
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4926
  br i1 %4, label %5, label %8, !dbg !4928

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4929, !range !4581
  call void @llvm.dbg.value(metadata i32* %2, metadata !4922, metadata !DIExpression(DW_OP_deref)), !dbg !4923
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !4930
  %7 = load i32, i32* %2, align 4, !dbg !4931
  call void @llvm.dbg.value(metadata i32 %7, metadata !4922, metadata !DIExpression()), !dbg !4923
  br label %8, !dbg !4932

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4923
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4933
  ret i32 %9, !dbg !4933
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4939, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.value(metadata i8* %2, metadata !4940, metadata !DIExpression()), !dbg !4942
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4943
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4945
  br i1 %6, label %7, label %18, !dbg !4945

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4946
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4947
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4948
  store i8* %2, i8** %9, align 4, !dbg !4949
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4950
  store i8 1, i8* %10, align 4, !dbg !4951
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4952
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4953
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4954
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4955
  %13 = icmp eq i32 %11, 0, !dbg !4956
  br i1 %13, label %14, label %15, !dbg !4958

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !4959
  br label %16, !dbg !4961

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !4962
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4964, !range !4797
  call void @llvm.dbg.value(metadata i32 %17, metadata !4941, metadata !DIExpression()), !dbg !4942
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !4965
  br label %18, !dbg !4966

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4942
  ret i32 %19, !dbg !4967
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !585, metadata !DIExpression()), !dbg !4968
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4969
  %3 = load void ()*, void ()** %2, align 4, !dbg !4969
  ret void ()* %3, !dbg !4970
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4971 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4977, !range !3507
  %2 = icmp eq i8 %1, 0, !dbg !4977
  br i1 %2, label %8, label %3, !dbg !4978

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4979
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4981
  br i1 %5, label %8, label %6, !dbg !4982

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4983
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4985
  br label %8, !dbg !4986

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4987, !range !4581
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4988
  ret void, !dbg !4989
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4990 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4995, !range !3507
  %2 = icmp eq i8 %1, 0, !dbg !4995
  br i1 %2, label %8, label %3, !dbg !4996

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4997
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4999
  br i1 %5, label %8, label %6, !dbg !5000

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5001
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5003
  br label %8, !dbg !5004

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5005, !range !4581
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5006
  ret void, !dbg !5007
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5008 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5012, metadata !DIExpression()), !dbg !5019
  call void @llvm.dbg.value(metadata i1 %1, metadata !5013, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5019
  %5 = bitcast i32* %3 to i8*, !dbg !5020
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5020
  %6 = bitcast i32* %4 to i8*, !dbg !5020
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5020
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5016, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5019
  br i1 %1, label %7, label %12, !dbg !5021

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5016, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5019
  call void @llvm.dbg.value(metadata i32* %3, metadata !5014, metadata !DIExpression(DW_OP_deref)), !dbg !5019
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !5022
  %8 = load i32, i32* %3, align 4, !dbg !5025
  call void @llvm.dbg.value(metadata i32 %8, metadata !5014, metadata !DIExpression()), !dbg !5019
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5027
  %10 = load i32, i32* %9, align 4, !dbg !5027
  %11 = icmp ult i32 %8, %10, !dbg !5028
  br i1 %11, label %22, label %20, !dbg !5029

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5015, metadata !DIExpression(DW_OP_deref)), !dbg !5019
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5030
  %13 = load i32, i32* %4, align 4, !dbg !5032
  call void @llvm.dbg.value(metadata i32 %13, metadata !5015, metadata !DIExpression()), !dbg !5019
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5034
  %15 = load i32, i32* %14, align 4, !dbg !5034
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5035
  %17 = load i32, i32* %16, align 4, !dbg !5035
  %18 = sub i32 %15, %17, !dbg !5036
  %19 = icmp ult i32 %13, %18, !dbg !5037
  br i1 %19, label %22, label %20, !dbg !5038

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5039, !range !4797
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !5039
  br label %22, !dbg !5040

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5040
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5040
  ret void, !dbg !5040
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5041 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5046, !range !3507
  %2 = icmp eq i8 %1, 0, !dbg !5046
  br i1 %2, label %11, label %3, !dbg !5047

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5048
  %5 = icmp eq i32 %4, 0, !dbg !5049
  br i1 %5, label %11, label %6, !dbg !5050

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5051
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5053
  br i1 %8, label %11, label %9, !dbg !5054

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5055
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5057
  br label %11, !dbg !5058

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5059, !range !4581
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5060
  ret void, !dbg !5061
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5062 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5067, !range !3507
  %2 = icmp eq i8 %1, 0, !dbg !5067
  br i1 %2, label %11, label %3, !dbg !5068

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5069
  %5 = icmp eq i32 %4, 0, !dbg !5070
  br i1 %5, label %11, label %6, !dbg !5071

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5072
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5074
  br i1 %8, label %11, label %9, !dbg !5075

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5076
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5078
  br label %11, !dbg !5079

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5080, !range !4581
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5081
  ret void, !dbg !5082
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5087, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.value(metadata i32 %1, metadata !5088, metadata !DIExpression()), !dbg !5089
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5090
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5092
  br i1 %5, label %6, label %10, !dbg !5092

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5093
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5094
  store i32 %1, i32* %8, align 4, !dbg !5095
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5096
  br label %10, !dbg !5097

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5089
  ret i32 %11, !dbg !5098
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5105, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5106, metadata !DIExpression()), !dbg !5107
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5108
  br i1 %3, label %4, label %28, !dbg !5110

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5111
  br i1 %5, label %6, label %28, !dbg !5113

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5114
  store i8 1, i8* %7, align 4, !dbg !5115
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5116
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5117
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5118
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !5119
  tail call void @DMA_Init() #15, !dbg !5120
  tail call void @DMA_Vfifo_init() #15, !dbg !5121
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5122
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5123
  %14 = load i8*, i8** %13, align 4, !dbg !5123
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5124
  %16 = load i32, i32* %15, align 4, !dbg !5124
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5125
  %18 = load i32, i32* %17, align 4, !dbg !5125
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5126
  %20 = load i32, i32* %19, align 4, !dbg !5126
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5127
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !5128
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5129
  %23 = load i8*, i8** %22, align 4, !dbg !5129
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5130
  %25 = load i32, i32* %24, align 4, !dbg !5130
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5131
  %27 = load i32, i32* %26, align 4, !dbg !5131
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !5132
  br label %28, !dbg !5133

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5107
  ret i32 %29, !dbg !5134
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !5135 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5139, metadata !DIExpression()), !dbg !5140
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5141
  br i1 %2, label %27, label %3, !dbg !5143

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5144
  %5 = load i8*, i8** %4, align 4, !dbg !5144
  %6 = icmp eq i8* %5, null, !dbg !5146
  br i1 %6, label %27, label %7, !dbg !5147

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5148
  %9 = load i32, i32* %8, align 4, !dbg !5148
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5150
  %11 = load i32, i32* %10, align 4, !dbg !5150
  %12 = icmp ult i32 %9, %11, !dbg !5151
  br i1 %12, label %27, label %13, !dbg !5152

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5153
  %15 = load i32, i32* %14, align 4, !dbg !5153
  %16 = icmp ult i32 %9, %15, !dbg !5155
  br i1 %16, label %27, label %17, !dbg !5156

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5157
  %19 = load i8*, i8** %18, align 4, !dbg !5157
  %20 = icmp eq i8* %19, null, !dbg !5159
  br i1 %20, label %27, label %21, !dbg !5160

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5161
  %23 = load i32, i32* %22, align 4, !dbg !5161
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5163
  %25 = load i32, i32* %24, align 4, !dbg !5163
  %26 = icmp uge i32 %23, %25, !dbg !5164
  br label %27, !dbg !5165

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5140
  ret i1 %28, !dbg !5166
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5169, metadata !DIExpression()), !dbg !5171
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !5172
  %3 = udiv i32 %2, 1000000, !dbg !5173
  call void @llvm.dbg.value(metadata i32 %3, metadata !5170, metadata !DIExpression()), !dbg !5171
  %4 = mul i32 %3, %0, !dbg !5174
  ret i32 %4, !dbg !5175
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5178, metadata !DIExpression()), !dbg !5180
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5181
  br i1 %2, label %3, label %8, !dbg !5183

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5184
  %5 = icmp eq i32 %0, 1, !dbg !5184
  %6 = select i1 %5, i32 1, i32 2, !dbg !5184
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5184
  call void @llvm.dbg.value(metadata i32 %7, metadata !5179, metadata !DIExpression()), !dbg !5180
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !5185
  br label %8, !dbg !5186

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5180
  ret i32 %9, !dbg !5187
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5192, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.value(metadata i8 %1, metadata !5193, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.value(metadata i8 %2, metadata !5194, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.value(metadata i8 %3, metadata !5195, metadata !DIExpression()), !dbg !5197
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5198
  br i1 %5, label %6, label %11, !dbg !5200

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5201
  %8 = icmp eq i32 %0, 1, !dbg !5201
  %9 = select i1 %8, i32 1, i32 2, !dbg !5201
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5201
  call void @llvm.dbg.value(metadata i32 %10, metadata !5196, metadata !DIExpression()), !dbg !5197
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !5202
  br label %11, !dbg !5203

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5197
  ret i32 %12, !dbg !5204
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5207, metadata !DIExpression()), !dbg !5209
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5210
  br i1 %2, label %3, label %8, !dbg !5212

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5213
  %5 = icmp eq i32 %0, 1, !dbg !5213
  %6 = select i1 %5, i32 1, i32 2, !dbg !5213
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5213
  call void @llvm.dbg.value(metadata i32 %7, metadata !5208, metadata !DIExpression()), !dbg !5209
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !5214
  br label %8, !dbg !5215

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5209
  ret i32 %9, !dbg !5216
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5217 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5221, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.value(metadata i32 %1, metadata !5222, metadata !DIExpression()), !dbg !5223
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5224
  br i1 %3, label %4, label %8, !dbg !5226

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5227
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5229
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !5229
  br label %8, !dbg !5230

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5223
  ret i32 %9, !dbg !5230
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !5231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5235, metadata !DIExpression()), !dbg !5236
  %2 = trunc i32 %0 to i8, !dbg !5237
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !5238
  ret i32 %0, !dbg !5239
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !5240 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5241
  tail call fastcc void @prvSetupHardware() #14, !dbg !5242
  tail call void asm sideeffect "cpsie i", "~{memory}"() #16, !dbg !5243, !srcloc !5246
  tail call void asm sideeffect "cpsie f", "~{memory}"() #16, !dbg !5247, !srcloc !5250
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #15, !dbg !5251
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.24, i32 0, i32 0)) #15, !dbg !5252
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #15, !dbg !5253
  tail call fastcc void @spim_send_data_polling_example() #14, !dbg !5254
  br label %4, !dbg !5255

4:                                                ; preds = %0, %4
  br label %4, !dbg !5255, !llvm.loop !5256
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5258 {
  tail call void @top_xtal_init() #15, !dbg !5259
  ret void, !dbg !5260
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !5261 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5262
  ret void, !dbg !5263
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_send_data_polling_example() unnamed_addr #3 !dbg !5264 {
  %1 = alloca i16, align 2
  %2 = alloca %struct.hal_spi_master_config_t, align 4
  %3 = bitcast i16* %1 to i8*, !dbg !5277
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %3) #16, !dbg !5277
  call void @llvm.dbg.value(metadata i16 21886, metadata !5266, metadata !DIExpression()), !dbg !5278
  store i16 21886, i16* %1, align 2, !dbg !5279
  %4 = bitcast %struct.hal_spi_master_config_t* %2 to i8*, !dbg !5280
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #16, !dbg !5280
  call void @llvm.dbg.declare(metadata %struct.hal_spi_master_config_t* %2, metadata !5268, metadata !DIExpression()), !dbg !5281
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !5282
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0)) #15, !dbg !5283
  %7 = tail call i32 @hal_gpio_init(i32 noundef 32) #15, !dbg !5284
  %8 = tail call i32 @hal_gpio_init(i32 noundef 31) #15, !dbg !5285
  %9 = tail call i32 @hal_gpio_init(i32 noundef 29) #15, !dbg !5286
  %10 = tail call i32 @hal_gpio_init(i32 noundef 30) #15, !dbg !5287
  %11 = tail call i32 @hal_pinmux_set_function(i32 noundef 32, i8 noundef zeroext 8) #15, !dbg !5288
  %12 = tail call i32 @hal_pinmux_set_function(i32 noundef 31, i8 noundef zeroext 7) #15, !dbg !5289
  %13 = tail call i32 @hal_pinmux_set_function(i32 noundef 29, i8 noundef zeroext 7) #15, !dbg !5290
  %14 = tail call i32 @hal_pinmux_set_function(i32 noundef 30, i8 noundef zeroext 7) #15, !dbg !5291
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #15, !dbg !5292
  %16 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 2, !dbg !5293
  store i32 0, i32* %16, align 4, !dbg !5294
  %17 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 0, !dbg !5295
  store i32 1000000, i32* %17, align 4, !dbg !5296
  %18 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 4, !dbg !5297
  store i32 0, i32* %18, align 4, !dbg !5298
  %19 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 3, !dbg !5299
  store i32 0, i32* %19, align 4, !dbg !5300
  %20 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %2, i32 0, i32 1, !dbg !5301
  store i32 0, i32* %20, align 4, !dbg !5302
  %21 = call i32 @hal_spi_master_init(i32 noundef 0, %struct.hal_spi_master_config_t* noundef nonnull %2) #15, !dbg !5303
  %22 = icmp eq i32 %21, 0, !dbg !5305
  br i1 %22, label %23, label %35, !dbg !5306

23:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i16* %1, metadata !5266, metadata !DIExpression(DW_OP_deref)), !dbg !5278
  %24 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %3, i32 noundef 2) #15, !dbg !5307
  %25 = icmp eq i32 %24, 0, !dbg !5309
  br i1 %25, label %26, label %35, !dbg !5310

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !5311
  %28 = call i32 @hal_spi_master_deinit(i32 noundef 0) #15, !dbg !5312
  %29 = icmp eq i32 %28, 0, !dbg !5314
  br i1 %29, label %30, label %35, !dbg !5315

30:                                               ; preds = %26
  %31 = call i32 @hal_gpio_deinit(i32 noundef 32) #15, !dbg !5316
  %32 = call i32 @hal_gpio_deinit(i32 noundef 31) #15, !dbg !5317
  %33 = call i32 @hal_gpio_deinit(i32 noundef 29) #15, !dbg !5318
  %34 = call i32 @hal_gpio_deinit(i32 noundef 30) #15, !dbg !5319
  br label %35, !dbg !5320

35:                                               ; preds = %26, %23, %0, %30
  %36 = phi i8* [ getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), %30 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), %0 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %23 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8.25, i32 0, i32 0), %26 ]
  %37 = call i32 (i8*, ...) @printf(i8* noundef %36) #15, !dbg !5278
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #16, !dbg !5320
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %3) #16, !dbg !5320
  ret void, !dbg !5320
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !5321 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5331
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5331
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5323, metadata !DIExpression()), !dbg !5332
  %3 = tail call i32 @hal_gpio_init(i32 noundef 2) #15, !dbg !5333
  %4 = tail call i32 @hal_gpio_init(i32 noundef 3) #15, !dbg !5334
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !5335
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !5336
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5337
  store i32 9, i32* %7, align 4, !dbg !5338
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5339
  store i32 3, i32* %8, align 4, !dbg !5340
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5341
  store i32 0, i32* %9, align 4, !dbg !5342
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5343
  store i32 0, i32* %10, align 4, !dbg !5344
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #15, !dbg !5345
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5346
  ret void, !dbg !5346
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !5347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5349, metadata !DIExpression()), !dbg !5351
  %2 = add i32 %0, -1, !dbg !5352
  %3 = icmp ugt i32 %2, 16777215, !dbg !5354
  br i1 %3, label %8, label %4, !dbg !5355

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5356
  call void @llvm.dbg.value(metadata i32 %5, metadata !5350, metadata !DIExpression()), !dbg !5351
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5357
  %7 = and i32 %6, -4, !dbg !5357
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5357
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5358
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5359
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5360
  br label %8, !dbg !5361

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5351
  ret i32 %9, !dbg !5362
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !5363 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5364
  ret void, !dbg !5365
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !5366 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5367
  ret i32 %1, !dbg !5368
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5369 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !5370
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5371
  ret void, !dbg !5372
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !5373 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5374
  %2 = or i32 %1, 15728640, !dbg !5374
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5374
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5375
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5376
  %4 = or i32 %3, 458752, !dbg !5376
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5376
  ret void, !dbg !5377
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !5378 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5379
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5380
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5381
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5382
  store volatile i32 270950400, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5383
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5384
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5385
  ret void, !dbg !5386
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5389, metadata !DIExpression()), !dbg !5390
  ret i32 0, !dbg !5391
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5442, metadata !DIExpression()), !dbg !5444
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5443, metadata !DIExpression()), !dbg !5444
  ret i32 0, !dbg !5445
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !5446 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5448, metadata !DIExpression()), !dbg !5449
  ret i32 1, !dbg !5450
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5451 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5455, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.value(metadata i32 %1, metadata !5456, metadata !DIExpression()), !dbg !5458
  call void @llvm.dbg.value(metadata i32 %2, metadata !5457, metadata !DIExpression()), !dbg !5458
  ret i32 0, !dbg !5459
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5464, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.value(metadata i32 %1, metadata !5465, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.value(metadata i32 %2, metadata !5466, metadata !DIExpression()), !dbg !5467
  ret i32 -1, !dbg !5468
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5473, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.value(metadata i8* %1, metadata !5474, metadata !DIExpression()), !dbg !5476
  call void @llvm.dbg.value(metadata i32 %2, metadata !5475, metadata !DIExpression()), !dbg !5476
  ret i32 0, !dbg !5477
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5480, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.value(metadata i8* %1, metadata !5481, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.value(metadata i32 %2, metadata !5482, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.value(metadata i32 0, metadata !5483, metadata !DIExpression()), !dbg !5484
  %4 = icmp sgt i32 %2, 0, !dbg !5485
  br i1 %4, label %5, label %14, !dbg !5488

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5483, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.value(metadata i8* %7, metadata !5481, metadata !DIExpression()), !dbg !5484
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5489
  call void @llvm.dbg.value(metadata i8* %8, metadata !5481, metadata !DIExpression()), !dbg !5484
  %9 = load i8, i8* %7, align 1, !dbg !5491
  %10 = zext i8 %9 to i32, !dbg !5491
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !5492
  %12 = add nuw nsw i32 %6, 1, !dbg !5493
  call void @llvm.dbg.value(metadata i32 %12, metadata !5483, metadata !DIExpression()), !dbg !5484
  %13 = icmp eq i32 %12, %2, !dbg !5485
  br i1 %13, label %14, label %5, !dbg !5488, !llvm.loop !5494

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5496
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !691 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !893, metadata !DIExpression()), !dbg !5497
  call void @llvm.dbg.value(metadata i32 %1, metadata !894, metadata !DIExpression()), !dbg !5497
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #16, !dbg !5498, !srcloc !5499
  call void @llvm.dbg.value(metadata i8* %3, metadata !896, metadata !DIExpression()), !dbg !5497
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5500
  %5 = icmp eq i8* %4, null, !dbg !5502
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5503
  call void @llvm.dbg.value(metadata i8* %6, metadata !895, metadata !DIExpression()), !dbg !5497
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5504
  %8 = icmp ult i8* %3, %7, !dbg !5506
  %9 = xor i1 %8, true, !dbg !5507
  %10 = or i1 %5, %9, !dbg !5507
  br i1 %10, label %11, label %13, !dbg !5507

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5508
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5507
  br label %13, !dbg !5507

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5508
  ret i8* %14, !dbg !5507
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5509 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5511, metadata !DIExpression()), !dbg !5512
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #15, !dbg !5513
  br label %3, !dbg !5514

3:                                                ; preds = %1, %3
  br label %3, !dbg !5514, !llvm.loop !5515
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5521, metadata !DIExpression()), !dbg !5523
  call void @llvm.dbg.value(metadata i32 %1, metadata !5522, metadata !DIExpression()), !dbg !5523
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.33, i32 0, i32 0), i32 noundef %1) #15, !dbg !5524
  ret i32 -1, !dbg !5525
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5526 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.34, i32 0, i32 0)) #15, !dbg !5531
  ret i32 0, !dbg !5532
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

!llvm.dbg.cu = !{!916, !920, !2, !85, !1001, !1046, !141, !195, !205, !1049, !241, !325, !1051, !426, !522, !1077, !631, !888, !899}
!llvm.ident = !{!1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080}
!llvm.module.flags = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halspim_isr", scope: !2, file: !3, line: 51, type: !78, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !77, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_spim.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!4 = !{!5, !51}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!52 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!79 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_spim.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !85, file: !86, line: 62, type: !131, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !129, globals: !130, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!87 = !{!88, !119, !124}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 55, baseType: !53, size: 32, elements: !90)
!89 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!120 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!121 = !{!122, !123}
!122 = !DIEnumerator(name: "eDirection_IN", value: 0)
!123 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 1209, baseType: !53, size: 32, elements: !126)
!125 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!142 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/spim.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!143 = !{!144, !149}
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 217, baseType: !53, size: 32, elements: !146)
!145 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!196 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!197 = !{!198, !64, !71, !62}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!200 = !{!193, !201}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !195, file: !196, line: 44, type: !73, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !205, file: !206, line: 54, type: !73, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !231, globals: !238, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!207 = !{!208, !214}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 71, baseType: !53, size: 32, elements: !210)
!209 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!210 = !{!211, !212, !213}
!211 = !DIEnumerator(name: "UART_PORT0", value: 0)
!212 = !DIEnumerator(name: "UART_PORT1", value: 1)
!213 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 129, baseType: !53, size: 32, elements: !216)
!215 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!242 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!243 = !{!244, !255, !274, !281}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 163, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!282 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!293 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!326 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!327 = !{!328, !5}
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !329, line: 152, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!341 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!427 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_spi_master.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!428 = !{!429, !437, !442, !447, !451, !455, !144, !459, !463}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 550, baseType: !7, size: 32, elements: !431)
!430 = !DIFile(filename: "../../../../../driver/chip/inc/hal_spi_master.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!431 = !{!432, !433, !434, !435, !436}
!432 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR", value: -4)
!433 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR_BUSY", value: -3)
!434 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR_PORT", value: -2)
!435 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_INVALID_PARAMETER", value: -1)
!436 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_OK", value: 0)
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 459, baseType: !53, size: 32, elements: !439)
!438 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!523 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!524 = !{!525, !533, !538, !554, !560, !564, !208, !214, !569}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 345, baseType: !7, size: 32, elements: !527)
!526 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!632 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/spi_master_polling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!692 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/spi_master_polling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
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
!889 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!890 = !{!697, !695}
!891 = !{!689}
!892 = !{!893, !894, !895, !896}
!893 = !DILocalVariable(name: "r", arg: 1, scope: !691, file: !692, line: 63, type: !698)
!894 = !DILocalVariable(name: "nbytes", arg: 2, scope: !691, file: !692, line: 63, type: !887)
!895 = !DILocalVariable(name: "prev_heap_end", scope: !691, file: !692, line: 67, type: !697)
!896 = !DILocalVariable(name: "stack", scope: !691, file: !692, line: 68, type: !697)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !899, file: !904, line: 4, type: !913, isLocal: false, isDefinition: true)
!899 = distinct !DICompileUnit(language: DW_LANG_C99, file: !900, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !901, splitDebugInlining: false, nameTableKind: None)
!900 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!901 = !{!897, !902, !908}
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !899, file: !904, line: 5, type: !905, isLocal: false, isDefinition: true)
!904 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 88, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 11)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !899, file: !904, line: 6, type: !910, isLocal: false, isDefinition: true)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 120, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 15)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 248, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 31)
!916 = distinct !DICompileUnit(language: DW_LANG_C99, file: !917, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !918, retainedTypes: !919, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!918 = !{!124}
!919 = !{!65, !67}
!920 = distinct !DICompileUnit(language: DW_LANG_C99, file: !921, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !922, retainedTypes: !1000, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!922 = !{!923}
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !924, line: 150, baseType: !53, size: 32, elements: !925)
!924 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!926 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!927 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!928 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!929 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!930 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!931 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!932 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!933 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!934 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!935 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!936 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!937 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!938 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!939 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!940 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!941 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!942 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!943 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!944 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!945 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!946 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!947 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!948 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!949 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!950 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!951 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!952 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!953 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!954 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!955 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!956 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!957 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!958 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!959 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!960 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!961 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!962 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!963 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!964 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!965 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!966 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!967 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!968 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!969 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!970 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!971 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!972 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!973 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!974 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!975 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!976 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!977 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!978 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!979 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!980 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!981 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!982 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!983 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!984 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!985 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!986 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!987 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!988 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!989 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!990 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!991 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!992 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!993 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!994 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!995 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!996 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!997 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!998 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!999 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!1000 = !{!65, !64}
!1001 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1002, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1003, splitDebugInlining: false, nameTableKind: None)
!1002 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!1003 = !{!1004, !1029}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !341, line: 418, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 395, size: 1120, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1006, file: !341, line: 397, baseType: !378, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1006, file: !341, line: 398, baseType: !72, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1006, file: !341, line: 399, baseType: !72, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1006, file: !341, line: 400, baseType: !72, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1006, file: !341, line: 401, baseType: !72, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1006, file: !341, line: 402, baseType: !72, size: 32, offset: 160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1006, file: !341, line: 403, baseType: !385, size: 96, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1006, file: !341, line: 404, baseType: !72, size: 32, offset: 288)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1006, file: !341, line: 405, baseType: !72, size: 32, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1006, file: !341, line: 406, baseType: !72, size: 32, offset: 352)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1006, file: !341, line: 407, baseType: !72, size: 32, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1006, file: !341, line: 408, baseType: !72, size: 32, offset: 416)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1006, file: !341, line: 409, baseType: !72, size: 32, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1006, file: !341, line: 410, baseType: !72, size: 32, offset: 480)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1006, file: !341, line: 411, baseType: !396, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1006, file: !341, line: 412, baseType: !378, size: 32, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1006, file: !341, line: 413, baseType: !378, size: 32, offset: 608)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1006, file: !341, line: 414, baseType: !402, size: 128, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1006, file: !341, line: 415, baseType: !406, size: 160, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1006, file: !341, line: 416, baseType: !410, size: 160, offset: 928)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1006, file: !341, line: 417, baseType: !72, size: 32, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !341, line: 378, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 363, size: 28704, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1031, file: !341, line: 365, baseType: !345, size: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1031, file: !341, line: 366, baseType: !349, size: 768, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1031, file: !341, line: 367, baseType: !345, size: 256, offset: 1024)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1031, file: !341, line: 368, baseType: !349, size: 768, offset: 1280)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1031, file: !341, line: 369, baseType: !345, size: 256, offset: 2048)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1031, file: !341, line: 370, baseType: !349, size: 768, offset: 2304)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1031, file: !341, line: 371, baseType: !345, size: 256, offset: 3072)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1031, file: !341, line: 372, baseType: !349, size: 768, offset: 3328)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1031, file: !341, line: 373, baseType: !345, size: 256, offset: 4096)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1031, file: !341, line: 374, baseType: !360, size: 1792, offset: 4352)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1031, file: !341, line: 375, baseType: !364, size: 1920, offset: 6144)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1031, file: !341, line: 376, baseType: !369, size: 20608, offset: 8064)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1031, file: !341, line: 377, baseType: !72, size: 32, offset: 28672)
!1046 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1047, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1048, splitDebugInlining: false, nameTableKind: None)
!1047 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!1048 = !{!88, !923}
!1049 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1050, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1050 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!1051 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1052, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1053, retainedTypes: !1072, splitDebugInlining: false, nameTableKind: None)
!1052 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!1053 = !{!1054, !463, !88, !1060, !144, !149, !1066, !119}
!1054 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 233, baseType: !7, size: 32, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059}
!1056 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1057 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1058 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1059 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1060 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 224, baseType: !7, size: 32, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065}
!1062 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1063 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1064 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1065 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1066 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 242, baseType: !53, size: 32, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071}
!1068 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1069 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1070 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1071 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1072 = !{!1073, !68, !1074, !163, !1075, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !89, line: 87, baseType: !88)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !145, line: 220, baseType: !144)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !145, line: 247, baseType: !1066)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !120, line: 60, baseType: !119)
!1077 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1078, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1079, splitDebugInlining: false, nameTableKind: None)
!1078 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/spi_master_polling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!1079 = !{!533, !538, !554, !560, !564, !463, !442, !447, !451, !455, !429, !437}
!1080 = !{!"Ubuntu clang version 14.0.6"}
!1081 = !{i32 7, !"Dwarf Version", i32 2}
!1082 = !{i32 2, !"Debug Info Version", i32 3}
!1083 = !{i32 1, !"wchar_size", i32 4}
!1084 = !{i32 1, !"min_enum_size", i32 4}
!1085 = !{i32 1, !"branch-target-enforcement", i32 0}
!1086 = !{i32 1, !"sign-return-address", i32 0}
!1087 = !{i32 1, !"sign-return-address-all", i32 0}
!1088 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1089 = !{i32 7, !"frame-pointer", i32 2}
!1090 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !917, file: !917, line: 54, type: !1091, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!170, !64, !69}
!1093 = !{!1094, !1095, !1096, !1098}
!1094 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1090, file: !917, line: 54, type: !64)
!1095 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1090, file: !917, line: 54, type: !69)
!1096 = !DILocalVariable(name: "no", scope: !1090, file: !917, line: 57, type: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !52, line: 60, baseType: !235)
!1098 = !DILocalVariable(name: "remainder", scope: !1090, file: !917, line: 58, type: !1097)
!1099 = !DILocation(line: 0, scope: !1090)
!1100 = !DILocation(line: 59, column: 19, scope: !1090)
!1101 = !DILocation(line: 60, column: 17, scope: !1090)
!1102 = !DILocation(line: 61, column: 5, scope: !1090)
!1103 = !DILocation(line: 65, column: 27, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !917, line: 65, column: 17)
!1105 = distinct !DILexicalBlock(scope: !1090, file: !917, line: 61, column: 17)
!1106 = !DILocation(line: 0, scope: !1104)
!1107 = !DILocation(line: 65, column: 17, scope: !1105)
!1108 = !DILocation(line: 66, column: 21, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !917, line: 65, column: 33)
!1110 = !DILocation(line: 67, column: 73, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !917, line: 66, column: 38)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !917, line: 66, column: 21)
!1113 = !DILocation(line: 67, column: 69, scope: !1111)
!1114 = !DILocation(line: 67, column: 66, scope: !1111)
!1115 = !DILocation(line: 68, column: 17, scope: !1111)
!1116 = !DILocation(line: 68, column: 28, scope: !1112)
!1117 = !DILocation(line: 69, column: 77, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !917, line: 68, column: 45)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !917, line: 68, column: 28)
!1120 = !DILocation(line: 70, column: 77, scope: !1118)
!1121 = !DILocation(line: 71, column: 17, scope: !1118)
!1122 = !DILocation(line: 72, column: 77, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !917, line: 71, column: 45)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !917, line: 71, column: 28)
!1125 = !DILocation(line: 73, column: 77, scope: !1123)
!1126 = !DILocation(line: 74, column: 17, scope: !1123)
!1127 = !DILocation(line: 75, column: 79, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !917, line: 74, column: 45)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !917, line: 74, column: 28)
!1130 = !DILocation(line: 76, column: 79, scope: !1128)
!1131 = !DILocation(line: 77, column: 17, scope: !1128)
!1132 = !DILocation(line: 78, column: 79, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !917, line: 77, column: 45)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !917, line: 77, column: 28)
!1135 = !DILocation(line: 79, column: 79, scope: !1133)
!1136 = !DILocation(line: 80, column: 17, scope: !1133)
!1137 = !DILocation(line: 81, column: 79, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !917, line: 80, column: 45)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !917, line: 80, column: 28)
!1140 = !DILocation(line: 82, column: 79, scope: !1138)
!1141 = !DILocation(line: 83, column: 17, scope: !1138)
!1142 = !DILocation(line: 85, column: 17, scope: !1109)
!1143 = !DILocation(line: 86, column: 13, scope: !1109)
!1144 = !DILocation(line: 88, column: 21, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1104, file: !917, line: 86, column: 20)
!1146 = !DILocation(line: 89, column: 72, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !917, line: 88, column: 38)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !917, line: 88, column: 21)
!1149 = !DILocation(line: 89, column: 66, scope: !1147)
!1150 = !DILocation(line: 90, column: 17, scope: !1147)
!1151 = !DILocation(line: 90, column: 28, scope: !1148)
!1152 = !DILocation(line: 91, column: 77, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !917, line: 90, column: 45)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !917, line: 90, column: 28)
!1155 = !DILocation(line: 92, column: 17, scope: !1153)
!1156 = !DILocation(line: 93, column: 77, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !917, line: 92, column: 45)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !917, line: 92, column: 28)
!1159 = !DILocation(line: 94, column: 17, scope: !1157)
!1160 = !DILocation(line: 95, column: 79, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !917, line: 94, column: 45)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !917, line: 94, column: 28)
!1163 = !DILocation(line: 96, column: 17, scope: !1161)
!1164 = !DILocation(line: 97, column: 79, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !917, line: 96, column: 45)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !917, line: 96, column: 28)
!1167 = !DILocation(line: 98, column: 17, scope: !1165)
!1168 = !DILocation(line: 99, column: 79, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !917, line: 98, column: 45)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !917, line: 98, column: 28)
!1171 = !DILocation(line: 100, column: 17, scope: !1169)
!1172 = !DILocation(line: 103, column: 17, scope: !1145)
!1173 = !DILocation(line: 109, column: 27, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1105, file: !917, line: 109, column: 17)
!1175 = !DILocation(line: 0, scope: !1174)
!1176 = !DILocation(line: 109, column: 17, scope: !1105)
!1177 = !DILocation(line: 110, column: 21, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !917, line: 109, column: 33)
!1179 = !DILocation(line: 111, column: 73, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !917, line: 110, column: 36)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !917, line: 110, column: 21)
!1182 = !DILocation(line: 111, column: 69, scope: !1180)
!1183 = !DILocation(line: 111, column: 66, scope: !1180)
!1184 = !DILocation(line: 112, column: 17, scope: !1180)
!1185 = !DILocation(line: 113, column: 79, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !917, line: 112, column: 24)
!1187 = !DILocation(line: 114, column: 79, scope: !1186)
!1188 = !DILocation(line: 117, column: 17, scope: !1178)
!1189 = !DILocation(line: 118, column: 13, scope: !1178)
!1190 = !DILocation(line: 120, column: 21, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1174, file: !917, line: 118, column: 20)
!1192 = !DILocation(line: 121, column: 72, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !917, line: 120, column: 36)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !917, line: 120, column: 21)
!1195 = !DILocation(line: 121, column: 66, scope: !1193)
!1196 = !DILocation(line: 122, column: 17, scope: !1193)
!1197 = !DILocation(line: 123, column: 79, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !917, line: 122, column: 24)
!1199 = !DILocation(line: 126, column: 17, scope: !1191)
!1200 = !DILocation(line: 133, column: 1, scope: !1090)
!1201 = distinct !DISubprogram(name: "halGPO_Write", scope: !917, file: !917, line: 136, type: !1091, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1202)
!1202 = !{!1203, !1204, !1205, !1206}
!1203 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1201, file: !917, line: 136, type: !64)
!1204 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1201, file: !917, line: 136, type: !69)
!1205 = !DILocalVariable(name: "no", scope: !1201, file: !917, line: 138, type: !1097)
!1206 = !DILocalVariable(name: "remainder", scope: !1201, file: !917, line: 139, type: !1097)
!1207 = !DILocation(line: 0, scope: !1201)
!1208 = !DILocation(line: 140, column: 19, scope: !1201)
!1209 = !DILocation(line: 141, column: 17, scope: !1201)
!1210 = !DILocation(line: 142, column: 5, scope: !1201)
!1211 = !DILocation(line: 145, column: 17, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !917, line: 145, column: 17)
!1213 = distinct !DILexicalBlock(scope: !1201, file: !917, line: 142, column: 17)
!1214 = !DILocation(line: 0, scope: !1212)
!1215 = !DILocation(line: 145, column: 17, scope: !1213)
!1216 = !DILocation(line: 146, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !917, line: 145, column: 29)
!1218 = !DILocation(line: 147, column: 13, scope: !1217)
!1219 = !DILocation(line: 148, column: 17, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !917, line: 147, column: 20)
!1221 = !DILocation(line: 153, column: 17, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !917, line: 153, column: 17)
!1223 = !DILocation(line: 0, scope: !1222)
!1224 = !DILocation(line: 153, column: 17, scope: !1213)
!1225 = !DILocation(line: 154, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !917, line: 153, column: 29)
!1227 = !DILocation(line: 155, column: 13, scope: !1226)
!1228 = !DILocation(line: 156, column: 17, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1222, file: !917, line: 155, column: 20)
!1230 = !DILocation(line: 163, column: 1, scope: !1201)
!1231 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !917, file: !917, line: 169, type: !1232, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!69, !64}
!1234 = !{!1235, !1236, !1237, !1238}
!1235 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1231, file: !917, line: 169, type: !64)
!1236 = !DILocalVariable(name: "no", scope: !1231, file: !917, line: 171, type: !1097)
!1237 = !DILocalVariable(name: "remainder", scope: !1231, file: !917, line: 172, type: !1097)
!1238 = !DILocalVariable(name: "dout", scope: !1231, file: !917, line: 175, type: !69)
!1239 = !DILocation(line: 0, scope: !1231)
!1240 = !DILocation(line: 173, column: 19, scope: !1231)
!1241 = !DILocation(line: 174, column: 17, scope: !1231)
!1242 = !DILocation(line: 177, column: 5, scope: !1231)
!1243 = !DILocation(line: 183, column: 13, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1231, file: !917, line: 177, column: 17)
!1245 = !DILocation(line: 0, scope: !1244)
!1246 = !DILocation(line: 187, column: 5, scope: !1231)
!1247 = !DILocation(line: 188, column: 1, scope: !1231)
!1248 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !917, file: !917, line: 189, type: !1232, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253}
!1250 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1248, file: !917, line: 189, type: !64)
!1251 = !DILocalVariable(name: "no", scope: !1248, file: !917, line: 191, type: !1097)
!1252 = !DILocalVariable(name: "remainder", scope: !1248, file: !917, line: 192, type: !1097)
!1253 = !DILocalVariable(name: "din", scope: !1248, file: !917, line: 195, type: !69)
!1254 = !DILocation(line: 0, scope: !1248)
!1255 = !DILocation(line: 193, column: 19, scope: !1248)
!1256 = !DILocation(line: 194, column: 17, scope: !1248)
!1257 = !DILocation(line: 196, column: 5, scope: !1248)
!1258 = !DILocation(line: 203, column: 13, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1248, file: !917, line: 196, column: 17)
!1260 = !DILocation(line: 0, scope: !1259)
!1261 = !DILocation(line: 208, column: 5, scope: !1248)
!1262 = !DILocation(line: 209, column: 1, scope: !1248)
!1263 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !917, file: !917, line: 210, type: !1232, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1264)
!1264 = !{!1265, !1266, !1267, !1268}
!1265 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1263, file: !917, line: 210, type: !64)
!1266 = !DILocalVariable(name: "no", scope: !1263, file: !917, line: 212, type: !1097)
!1267 = !DILocalVariable(name: "remainder", scope: !1263, file: !917, line: 213, type: !1097)
!1268 = !DILocalVariable(name: "outEnable", scope: !1263, file: !917, line: 216, type: !69)
!1269 = !DILocation(line: 0, scope: !1263)
!1270 = !DILocation(line: 214, column: 19, scope: !1263)
!1271 = !DILocation(line: 215, column: 17, scope: !1263)
!1272 = !DILocation(line: 218, column: 5, scope: !1263)
!1273 = !DILocation(line: 224, column: 13, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1263, file: !917, line: 218, column: 17)
!1275 = !DILocation(line: 0, scope: !1274)
!1276 = !DILocation(line: 228, column: 5, scope: !1263)
!1277 = !DILocation(line: 229, column: 1, scope: !1263)
!1278 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !917, file: !917, line: 232, type: !1279, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!170, !64}
!1281 = !{!1282, !1283, !1284}
!1282 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1278, file: !917, line: 232, type: !64)
!1283 = !DILocalVariable(name: "no", scope: !1278, file: !917, line: 234, type: !1097)
!1284 = !DILocalVariable(name: "remainder", scope: !1278, file: !917, line: 235, type: !1097)
!1285 = !DILocation(line: 0, scope: !1278)
!1286 = !DILocation(line: 236, column: 19, scope: !1278)
!1287 = !DILocation(line: 237, column: 17, scope: !1278)
!1288 = !DILocation(line: 238, column: 5, scope: !1278)
!1289 = !DILocation(line: 239, column: 5, scope: !1278)
!1290 = !DILocation(line: 241, column: 27, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !917, line: 241, column: 17)
!1292 = distinct !DILexicalBlock(scope: !1278, file: !917, line: 239, column: 17)
!1293 = !DILocation(line: 241, column: 17, scope: !1292)
!1294 = !DILocation(line: 241, column: 17, scope: !1291)
!1295 = !DILocation(line: 242, column: 17, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !917, line: 241, column: 34)
!1297 = !DILocation(line: 243, column: 13, scope: !1296)
!1298 = !DILocation(line: 243, column: 24, scope: !1291)
!1299 = !DILocation(line: 244, column: 73, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !917, line: 243, column: 41)
!1301 = distinct !DILexicalBlock(scope: !1291, file: !917, line: 243, column: 24)
!1302 = !DILocation(line: 245, column: 73, scope: !1300)
!1303 = !DILocation(line: 246, column: 13, scope: !1300)
!1304 = !DILocation(line: 247, column: 73, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !917, line: 246, column: 41)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !917, line: 246, column: 24)
!1307 = !DILocation(line: 248, column: 73, scope: !1305)
!1308 = !DILocation(line: 249, column: 13, scope: !1305)
!1309 = !DILocation(line: 250, column: 75, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !917, line: 249, column: 41)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !917, line: 249, column: 24)
!1312 = !DILocation(line: 251, column: 75, scope: !1310)
!1313 = !DILocation(line: 252, column: 13, scope: !1310)
!1314 = !DILocation(line: 253, column: 75, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !917, line: 252, column: 41)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !917, line: 252, column: 24)
!1317 = !DILocation(line: 254, column: 75, scope: !1315)
!1318 = !DILocation(line: 255, column: 13, scope: !1315)
!1319 = !DILocation(line: 256, column: 75, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !917, line: 255, column: 41)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !917, line: 255, column: 24)
!1322 = !DILocation(line: 257, column: 75, scope: !1320)
!1323 = !DILocation(line: 258, column: 13, scope: !1320)
!1324 = !DILocation(line: 261, column: 18, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1292, file: !917, line: 261, column: 17)
!1326 = !DILocation(line: 261, column: 17, scope: !1292)
!1327 = !DILocation(line: 262, column: 75, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !917, line: 261, column: 29)
!1329 = !DILocation(line: 263, column: 75, scope: !1328)
!1330 = !DILocation(line: 264, column: 13, scope: !1328)
!1331 = !DILocation(line: 265, column: 17, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !917, line: 264, column: 20)
!1333 = !DILocation(line: 272, column: 1, scope: !1278)
!1334 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !917, file: !917, line: 359, type: !1279, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1335)
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1334, file: !917, line: 359, type: !64)
!1337 = !DILocalVariable(name: "no", scope: !1334, file: !917, line: 362, type: !1097)
!1338 = !DILocalVariable(name: "remainder", scope: !1334, file: !917, line: 363, type: !1097)
!1339 = !DILocation(line: 0, scope: !1334)
!1340 = !DILocation(line: 364, column: 19, scope: !1334)
!1341 = !DILocation(line: 365, column: 17, scope: !1334)
!1342 = !DILocation(line: 367, column: 5, scope: !1334)
!1343 = !DILocation(line: 369, column: 27, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !917, line: 369, column: 17)
!1345 = distinct !DILexicalBlock(scope: !1334, file: !917, line: 367, column: 17)
!1346 = !DILocation(line: 369, column: 17, scope: !1345)
!1347 = !DILocation(line: 369, column: 17, scope: !1344)
!1348 = !DILocation(line: 370, column: 17, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1344, file: !917, line: 369, column: 34)
!1350 = !DILocation(line: 371, column: 13, scope: !1349)
!1351 = !DILocation(line: 371, column: 24, scope: !1344)
!1352 = !DILocation(line: 372, column: 73, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !917, line: 371, column: 41)
!1354 = distinct !DILexicalBlock(scope: !1344, file: !917, line: 371, column: 24)
!1355 = !DILocation(line: 373, column: 73, scope: !1353)
!1356 = !DILocation(line: 374, column: 13, scope: !1353)
!1357 = !DILocation(line: 375, column: 73, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !917, line: 374, column: 41)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !917, line: 374, column: 24)
!1360 = !DILocation(line: 376, column: 73, scope: !1358)
!1361 = !DILocation(line: 377, column: 13, scope: !1358)
!1362 = !DILocation(line: 378, column: 75, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !917, line: 377, column: 41)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !917, line: 377, column: 24)
!1365 = !DILocation(line: 379, column: 75, scope: !1363)
!1366 = !DILocation(line: 380, column: 13, scope: !1363)
!1367 = !DILocation(line: 381, column: 75, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !917, line: 380, column: 41)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !917, line: 380, column: 24)
!1370 = !DILocation(line: 382, column: 75, scope: !1368)
!1371 = !DILocation(line: 383, column: 13, scope: !1368)
!1372 = !DILocation(line: 384, column: 75, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !917, line: 383, column: 41)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !917, line: 383, column: 24)
!1375 = !DILocation(line: 385, column: 75, scope: !1373)
!1376 = !DILocation(line: 386, column: 13, scope: !1373)
!1377 = !DILocation(line: 389, column: 18, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1345, file: !917, line: 389, column: 17)
!1379 = !DILocation(line: 389, column: 17, scope: !1345)
!1380 = !DILocation(line: 390, column: 75, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !917, line: 389, column: 29)
!1382 = !DILocation(line: 391, column: 75, scope: !1381)
!1383 = !DILocation(line: 392, column: 13, scope: !1381)
!1384 = !DILocation(line: 393, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1378, file: !917, line: 392, column: 20)
!1386 = !DILocation(line: 401, column: 1, scope: !1334)
!1387 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !917, file: !917, line: 274, type: !1279, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1387, file: !917, line: 274, type: !64)
!1390 = !DILocalVariable(name: "no", scope: !1387, file: !917, line: 276, type: !1097)
!1391 = !DILocalVariable(name: "remainder", scope: !1387, file: !917, line: 277, type: !1097)
!1392 = !DILocation(line: 0, scope: !1387)
!1393 = !DILocation(line: 278, column: 19, scope: !1387)
!1394 = !DILocation(line: 279, column: 17, scope: !1387)
!1395 = !DILocation(line: 281, column: 5, scope: !1387)
!1396 = !DILocation(line: 283, column: 27, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !917, line: 283, column: 17)
!1398 = distinct !DILexicalBlock(scope: !1387, file: !917, line: 281, column: 17)
!1399 = !DILocation(line: 283, column: 17, scope: !1398)
!1400 = !DILocation(line: 283, column: 17, scope: !1397)
!1401 = !DILocation(line: 284, column: 17, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !917, line: 283, column: 34)
!1403 = !DILocation(line: 285, column: 13, scope: !1402)
!1404 = !DILocation(line: 285, column: 24, scope: !1397)
!1405 = !DILocation(line: 286, column: 73, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !917, line: 285, column: 41)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !917, line: 285, column: 24)
!1408 = !DILocation(line: 287, column: 73, scope: !1406)
!1409 = !DILocation(line: 288, column: 13, scope: !1406)
!1410 = !DILocation(line: 289, column: 73, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !917, line: 288, column: 41)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !917, line: 288, column: 24)
!1413 = !DILocation(line: 290, column: 73, scope: !1411)
!1414 = !DILocation(line: 291, column: 13, scope: !1411)
!1415 = !DILocation(line: 292, column: 75, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !917, line: 291, column: 41)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !917, line: 291, column: 24)
!1418 = !DILocation(line: 293, column: 75, scope: !1416)
!1419 = !DILocation(line: 294, column: 13, scope: !1416)
!1420 = !DILocation(line: 295, column: 75, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !917, line: 294, column: 41)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !917, line: 294, column: 24)
!1423 = !DILocation(line: 296, column: 75, scope: !1421)
!1424 = !DILocation(line: 297, column: 13, scope: !1421)
!1425 = !DILocation(line: 298, column: 75, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !917, line: 297, column: 41)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !917, line: 297, column: 24)
!1428 = !DILocation(line: 299, column: 75, scope: !1426)
!1429 = !DILocation(line: 300, column: 13, scope: !1426)
!1430 = !DILocation(line: 303, column: 18, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1398, file: !917, line: 303, column: 17)
!1432 = !DILocation(line: 303, column: 17, scope: !1398)
!1433 = !DILocation(line: 304, column: 75, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !917, line: 303, column: 29)
!1435 = !DILocation(line: 305, column: 75, scope: !1434)
!1436 = !DILocation(line: 306, column: 13, scope: !1434)
!1437 = !DILocation(line: 307, column: 17, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1431, file: !917, line: 306, column: 20)
!1439 = !DILocation(line: 314, column: 1, scope: !1387)
!1440 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !917, file: !917, line: 316, type: !1279, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1441)
!1441 = !{!1442, !1443, !1444}
!1442 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1440, file: !917, line: 316, type: !64)
!1443 = !DILocalVariable(name: "no", scope: !1440, file: !917, line: 318, type: !1097)
!1444 = !DILocalVariable(name: "remainder", scope: !1440, file: !917, line: 319, type: !1097)
!1445 = !DILocation(line: 0, scope: !1440)
!1446 = !DILocation(line: 320, column: 19, scope: !1440)
!1447 = !DILocation(line: 321, column: 17, scope: !1440)
!1448 = !DILocation(line: 322, column: 5, scope: !1440)
!1449 = !DILocation(line: 323, column: 5, scope: !1440)
!1450 = !DILocation(line: 325, column: 27, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !917, line: 325, column: 17)
!1452 = distinct !DILexicalBlock(scope: !1440, file: !917, line: 323, column: 17)
!1453 = !DILocation(line: 325, column: 17, scope: !1452)
!1454 = !DILocation(line: 325, column: 17, scope: !1451)
!1455 = !DILocation(line: 326, column: 17, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !917, line: 325, column: 34)
!1457 = !DILocation(line: 327, column: 13, scope: !1456)
!1458 = !DILocation(line: 327, column: 24, scope: !1451)
!1459 = !DILocation(line: 328, column: 73, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !917, line: 327, column: 41)
!1461 = distinct !DILexicalBlock(scope: !1451, file: !917, line: 327, column: 24)
!1462 = !DILocation(line: 329, column: 73, scope: !1460)
!1463 = !DILocation(line: 330, column: 13, scope: !1460)
!1464 = !DILocation(line: 331, column: 73, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !917, line: 330, column: 41)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !917, line: 330, column: 24)
!1467 = !DILocation(line: 332, column: 73, scope: !1465)
!1468 = !DILocation(line: 333, column: 13, scope: !1465)
!1469 = !DILocation(line: 334, column: 75, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !917, line: 333, column: 41)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !917, line: 333, column: 24)
!1472 = !DILocation(line: 335, column: 75, scope: !1470)
!1473 = !DILocation(line: 336, column: 13, scope: !1470)
!1474 = !DILocation(line: 337, column: 75, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !917, line: 336, column: 41)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !917, line: 336, column: 24)
!1477 = !DILocation(line: 338, column: 75, scope: !1475)
!1478 = !DILocation(line: 339, column: 13, scope: !1475)
!1479 = !DILocation(line: 340, column: 75, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !917, line: 339, column: 41)
!1481 = distinct !DILexicalBlock(scope: !1476, file: !917, line: 339, column: 24)
!1482 = !DILocation(line: 341, column: 75, scope: !1480)
!1483 = !DILocation(line: 342, column: 13, scope: !1480)
!1484 = !DILocation(line: 345, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1452, file: !917, line: 345, column: 17)
!1486 = !DILocation(line: 345, column: 17, scope: !1452)
!1487 = !DILocation(line: 346, column: 75, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !917, line: 345, column: 29)
!1489 = !DILocation(line: 347, column: 75, scope: !1488)
!1490 = !DILocation(line: 348, column: 13, scope: !1488)
!1491 = !DILocation(line: 349, column: 17, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1485, file: !917, line: 348, column: 20)
!1493 = !DILocation(line: 357, column: 1, scope: !1440)
!1494 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !917, file: !917, line: 404, type: !1091, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1495)
!1495 = !{!1496, !1497, !1498, !1499}
!1496 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1494, file: !917, line: 404, type: !64)
!1497 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1494, file: !917, line: 404, type: !69)
!1498 = !DILocalVariable(name: "no", scope: !1494, file: !917, line: 406, type: !1097)
!1499 = !DILocalVariable(name: "remainder", scope: !1494, file: !917, line: 407, type: !1097)
!1500 = !DILocation(line: 0, scope: !1494)
!1501 = !DILocation(line: 408, column: 19, scope: !1494)
!1502 = !DILocation(line: 409, column: 17, scope: !1494)
!1503 = !DILocation(line: 411, column: 5, scope: !1494)
!1504 = !DILocation(line: 413, column: 84, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1494, file: !917, line: 411, column: 17)
!1506 = !DILocation(line: 413, column: 70, scope: !1505)
!1507 = !DILocation(line: 413, column: 64, scope: !1505)
!1508 = !DILocation(line: 413, column: 61, scope: !1505)
!1509 = !DILocation(line: 414, column: 79, scope: !1505)
!1510 = !DILocation(line: 414, column: 83, scope: !1505)
!1511 = !DILocation(line: 414, column: 88, scope: !1505)
!1512 = !DILocation(line: 414, column: 61, scope: !1505)
!1513 = !DILocation(line: 415, column: 13, scope: !1505)
!1514 = !DILocation(line: 417, column: 27, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1505, file: !917, line: 417, column: 17)
!1516 = !DILocation(line: 417, column: 17, scope: !1505)
!1517 = !DILocation(line: 418, column: 88, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !917, line: 417, column: 33)
!1519 = !DILocation(line: 418, column: 74, scope: !1518)
!1520 = !DILocation(line: 418, column: 68, scope: !1518)
!1521 = !DILocation(line: 418, column: 65, scope: !1518)
!1522 = !DILocation(line: 419, column: 83, scope: !1518)
!1523 = !DILocation(line: 419, column: 87, scope: !1518)
!1524 = !DILocation(line: 419, column: 92, scope: !1518)
!1525 = !DILocation(line: 419, column: 65, scope: !1518)
!1526 = !DILocation(line: 420, column: 13, scope: !1518)
!1527 = !DILocation(line: 420, column: 24, scope: !1515)
!1528 = !DILocation(line: 421, column: 73, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !917, line: 420, column: 41)
!1530 = distinct !DILexicalBlock(scope: !1515, file: !917, line: 420, column: 24)
!1531 = !DILocation(line: 422, column: 91, scope: !1529)
!1532 = !DILocation(line: 422, column: 100, scope: !1529)
!1533 = !DILocation(line: 422, column: 73, scope: !1529)
!1534 = !DILocation(line: 423, column: 73, scope: !1529)
!1535 = !DILocation(line: 424, column: 13, scope: !1529)
!1536 = !DILocation(line: 425, column: 73, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !917, line: 424, column: 41)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !917, line: 424, column: 24)
!1539 = !DILocation(line: 426, column: 91, scope: !1537)
!1540 = !DILocation(line: 426, column: 100, scope: !1537)
!1541 = !DILocation(line: 426, column: 73, scope: !1537)
!1542 = !DILocation(line: 427, column: 73, scope: !1537)
!1543 = !DILocation(line: 428, column: 13, scope: !1537)
!1544 = !DILocation(line: 429, column: 75, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !917, line: 428, column: 41)
!1546 = distinct !DILexicalBlock(scope: !1538, file: !917, line: 428, column: 24)
!1547 = !DILocation(line: 430, column: 93, scope: !1545)
!1548 = !DILocation(line: 430, column: 102, scope: !1545)
!1549 = !DILocation(line: 430, column: 75, scope: !1545)
!1550 = !DILocation(line: 431, column: 75, scope: !1545)
!1551 = !DILocation(line: 432, column: 13, scope: !1545)
!1552 = !DILocation(line: 433, column: 75, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !917, line: 432, column: 41)
!1554 = distinct !DILexicalBlock(scope: !1546, file: !917, line: 432, column: 24)
!1555 = !DILocation(line: 434, column: 93, scope: !1553)
!1556 = !DILocation(line: 434, column: 102, scope: !1553)
!1557 = !DILocation(line: 434, column: 75, scope: !1553)
!1558 = !DILocation(line: 435, column: 75, scope: !1553)
!1559 = !DILocation(line: 436, column: 13, scope: !1553)
!1560 = !DILocation(line: 437, column: 75, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !917, line: 436, column: 41)
!1562 = distinct !DILexicalBlock(scope: !1554, file: !917, line: 436, column: 24)
!1563 = !DILocation(line: 438, column: 93, scope: !1561)
!1564 = !DILocation(line: 438, column: 102, scope: !1561)
!1565 = !DILocation(line: 438, column: 75, scope: !1561)
!1566 = !DILocation(line: 439, column: 75, scope: !1561)
!1567 = !DILocation(line: 440, column: 13, scope: !1561)
!1568 = !DILocation(line: 443, column: 18, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1505, file: !917, line: 443, column: 17)
!1570 = !DILocation(line: 443, column: 17, scope: !1505)
!1571 = !DILocation(line: 444, column: 75, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !917, line: 443, column: 29)
!1573 = !DILocation(line: 445, column: 93, scope: !1572)
!1574 = !DILocation(line: 445, column: 102, scope: !1572)
!1575 = !DILocation(line: 445, column: 75, scope: !1572)
!1576 = !DILocation(line: 446, column: 75, scope: !1572)
!1577 = !DILocation(line: 447, column: 13, scope: !1572)
!1578 = !DILocation(line: 448, column: 88, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1569, file: !917, line: 447, column: 20)
!1580 = !DILocation(line: 448, column: 74, scope: !1579)
!1581 = !DILocation(line: 448, column: 68, scope: !1579)
!1582 = !DILocation(line: 448, column: 65, scope: !1579)
!1583 = !DILocation(line: 449, column: 83, scope: !1579)
!1584 = !DILocation(line: 449, column: 87, scope: !1579)
!1585 = !DILocation(line: 449, column: 92, scope: !1579)
!1586 = !DILocation(line: 449, column: 65, scope: !1579)
!1587 = !DILocation(line: 453, column: 84, scope: !1505)
!1588 = !DILocation(line: 453, column: 70, scope: !1505)
!1589 = !DILocation(line: 453, column: 64, scope: !1505)
!1590 = !DILocation(line: 453, column: 61, scope: !1505)
!1591 = !DILocation(line: 454, column: 79, scope: !1505)
!1592 = !DILocation(line: 454, column: 83, scope: !1505)
!1593 = !DILocation(line: 454, column: 88, scope: !1505)
!1594 = !DILocation(line: 454, column: 61, scope: !1505)
!1595 = !DILocation(line: 455, column: 13, scope: !1505)
!1596 = !DILocation(line: 460, column: 1, scope: !1494)
!1597 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !917, file: !917, line: 463, type: !1598, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1601)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!170, !64, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!1601 = !{!1602, !1603, !1604, !1605, !1606}
!1602 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1597, file: !917, line: 463, type: !64)
!1603 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1597, file: !917, line: 463, type: !1600)
!1604 = !DILocalVariable(name: "no", scope: !1597, file: !917, line: 465, type: !1097)
!1605 = !DILocalVariable(name: "remainder", scope: !1597, file: !917, line: 466, type: !1097)
!1606 = !DILocalVariable(name: "temp", scope: !1597, file: !917, line: 467, type: !64)
!1607 = !DILocation(line: 0, scope: !1597)
!1608 = !DILocation(line: 468, column: 19, scope: !1597)
!1609 = !DILocation(line: 469, column: 17, scope: !1597)
!1610 = !DILocation(line: 471, column: 5, scope: !1597)
!1611 = !DILocation(line: 473, column: 20, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1597, file: !917, line: 471, column: 17)
!1613 = !DILocation(line: 474, column: 40, scope: !1612)
!1614 = !DILocation(line: 474, column: 26, scope: !1612)
!1615 = !DILocation(line: 474, column: 18, scope: !1612)
!1616 = !DILocation(line: 475, column: 40, scope: !1612)
!1617 = !DILocation(line: 475, column: 29, scope: !1612)
!1618 = !DILocation(line: 476, column: 13, scope: !1612)
!1619 = !DILocation(line: 478, column: 27, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !917, line: 478, column: 17)
!1621 = !DILocation(line: 478, column: 17, scope: !1612)
!1622 = !DILocation(line: 479, column: 24, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !917, line: 478, column: 33)
!1624 = !DILocation(line: 480, column: 44, scope: !1623)
!1625 = !DILocation(line: 480, column: 30, scope: !1623)
!1626 = !DILocation(line: 480, column: 22, scope: !1623)
!1627 = !DILocation(line: 481, column: 44, scope: !1623)
!1628 = !DILocation(line: 481, column: 33, scope: !1623)
!1629 = !DILocation(line: 482, column: 13, scope: !1623)
!1630 = !DILocation(line: 482, column: 24, scope: !1620)
!1631 = !DILocation(line: 483, column: 24, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !917, line: 482, column: 41)
!1633 = distinct !DILexicalBlock(scope: !1620, file: !917, line: 482, column: 24)
!1634 = !DILocation(line: 485, column: 53, scope: !1632)
!1635 = !DILocation(line: 485, column: 33, scope: !1632)
!1636 = !DILocation(line: 486, column: 13, scope: !1632)
!1637 = !DILocation(line: 487, column: 24, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !917, line: 486, column: 41)
!1639 = distinct !DILexicalBlock(scope: !1633, file: !917, line: 486, column: 24)
!1640 = !DILocation(line: 489, column: 53, scope: !1638)
!1641 = !DILocation(line: 489, column: 33, scope: !1638)
!1642 = !DILocation(line: 490, column: 13, scope: !1638)
!1643 = !DILocation(line: 491, column: 24, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !917, line: 490, column: 41)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !917, line: 490, column: 24)
!1646 = !DILocation(line: 493, column: 53, scope: !1644)
!1647 = !DILocation(line: 493, column: 33, scope: !1644)
!1648 = !DILocation(line: 494, column: 13, scope: !1644)
!1649 = !DILocation(line: 495, column: 24, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !917, line: 494, column: 41)
!1651 = distinct !DILexicalBlock(scope: !1645, file: !917, line: 494, column: 24)
!1652 = !DILocation(line: 497, column: 53, scope: !1650)
!1653 = !DILocation(line: 497, column: 33, scope: !1650)
!1654 = !DILocation(line: 498, column: 13, scope: !1650)
!1655 = !DILocation(line: 499, column: 24, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !917, line: 498, column: 41)
!1657 = distinct !DILexicalBlock(scope: !1651, file: !917, line: 498, column: 24)
!1658 = !DILocation(line: 501, column: 53, scope: !1656)
!1659 = !DILocation(line: 501, column: 33, scope: !1656)
!1660 = !DILocation(line: 502, column: 13, scope: !1656)
!1661 = !DILocation(line: 505, column: 18, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1612, file: !917, line: 505, column: 17)
!1663 = !DILocation(line: 505, column: 17, scope: !1612)
!1664 = !DILocation(line: 506, column: 24, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !917, line: 505, column: 29)
!1666 = !DILocation(line: 508, column: 53, scope: !1665)
!1667 = !DILocation(line: 508, column: 33, scope: !1665)
!1668 = !DILocation(line: 509, column: 13, scope: !1665)
!1669 = !DILocation(line: 510, column: 24, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1662, file: !917, line: 509, column: 20)
!1671 = !DILocation(line: 511, column: 44, scope: !1670)
!1672 = !DILocation(line: 511, column: 30, scope: !1670)
!1673 = !DILocation(line: 511, column: 22, scope: !1670)
!1674 = !DILocation(line: 512, column: 44, scope: !1670)
!1675 = !DILocation(line: 512, column: 33, scope: !1670)
!1676 = !DILocation(line: 516, column: 20, scope: !1612)
!1677 = !DILocation(line: 517, column: 40, scope: !1612)
!1678 = !DILocation(line: 517, column: 26, scope: !1612)
!1679 = !DILocation(line: 517, column: 18, scope: !1612)
!1680 = !DILocation(line: 518, column: 40, scope: !1612)
!1681 = !DILocation(line: 518, column: 29, scope: !1612)
!1682 = !DILocation(line: 519, column: 13, scope: !1612)
!1683 = !DILocation(line: 0, scope: !1612)
!1684 = !DILocation(line: 524, column: 1, scope: !1597)
!1685 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !917, file: !917, line: 526, type: !1686, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !1689)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !64, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !125, line: 1212, baseType: !124)
!1689 = !{!1690, !1691, !1692, !1693}
!1690 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1685, file: !917, line: 526, type: !64)
!1691 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1685, file: !917, line: 526, type: !1688)
!1692 = !DILocalVariable(name: "no", scope: !1685, file: !917, line: 529, type: !1097)
!1693 = !DILocalVariable(name: "remainder", scope: !1685, file: !917, line: 530, type: !1097)
!1694 = !DILocation(line: 0, scope: !1685)
!1695 = !DILocation(line: 531, column: 19, scope: !1685)
!1696 = !DILocation(line: 532, column: 17, scope: !1685)
!1697 = !DILocation(line: 534, column: 9, scope: !1685)
!1698 = !DILocation(line: 536, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !917, line: 534, column: 45)
!1700 = distinct !DILexicalBlock(scope: !1685, file: !917, line: 534, column: 9)
!1701 = !DILocation(line: 538, column: 56, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !917, line: 536, column: 21)
!1703 = !DILocation(line: 538, column: 53, scope: !1702)
!1704 = !DILocation(line: 538, column: 47, scope: !1702)
!1705 = !DILocation(line: 539, column: 17, scope: !1702)
!1706 = !DILocation(line: 541, column: 56, scope: !1702)
!1707 = !DILocation(line: 541, column: 53, scope: !1702)
!1708 = !DILocation(line: 541, column: 47, scope: !1702)
!1709 = !DILocation(line: 542, column: 17, scope: !1702)
!1710 = !DILocation(line: 548, column: 9, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !917, line: 547, column: 51)
!1712 = distinct !DILexicalBlock(scope: !1700, file: !917, line: 547, column: 16)
!1713 = !DILocation(line: 550, column: 57, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !917, line: 548, column: 21)
!1715 = !DILocation(line: 550, column: 54, scope: !1714)
!1716 = !DILocation(line: 550, column: 50, scope: !1714)
!1717 = !DILocation(line: 550, column: 47, scope: !1714)
!1718 = !DILocation(line: 551, column: 17, scope: !1714)
!1719 = !DILocation(line: 553, column: 57, scope: !1714)
!1720 = !DILocation(line: 553, column: 54, scope: !1714)
!1721 = !DILocation(line: 553, column: 50, scope: !1714)
!1722 = !DILocation(line: 553, column: 47, scope: !1714)
!1723 = !DILocation(line: 554, column: 17, scope: !1714)
!1724 = !DILocation(line: 560, column: 1, scope: !1685)
!1725 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !921, file: !921, line: 85, type: !1726, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !1730)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1728, !1729, !69}
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !52, line: 79, baseType: null)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !924, line: 225, baseType: !923)
!1730 = !{!1731, !1732, !1733}
!1731 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1725, file: !921, line: 85, type: !1729)
!1732 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1725, file: !921, line: 85, type: !69)
!1733 = !DILocalVariable(name: "temp", scope: !1725, file: !921, line: 87, type: !73)
!1734 = !DILocation(line: 0, scope: !1725)
!1735 = !DILocation(line: 88, column: 5, scope: !1725)
!1736 = !DILocation(line: 91, column: 20, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1725, file: !921, line: 88, column: 24)
!1738 = !DILocation(line: 92, column: 18, scope: !1737)
!1739 = !DILocation(line: 93, column: 66, scope: !1737)
!1740 = !DILocation(line: 93, column: 63, scope: !1737)
!1741 = !DILocation(line: 93, column: 56, scope: !1737)
!1742 = !DILocation(line: 94, column: 13, scope: !1737)
!1743 = !DILocation(line: 97, column: 20, scope: !1737)
!1744 = !DILocation(line: 98, column: 18, scope: !1737)
!1745 = !DILocation(line: 99, column: 67, scope: !1737)
!1746 = !DILocation(line: 99, column: 74, scope: !1737)
!1747 = !DILocation(line: 99, column: 64, scope: !1737)
!1748 = !DILocation(line: 99, column: 56, scope: !1737)
!1749 = !DILocation(line: 100, column: 13, scope: !1737)
!1750 = !DILocation(line: 103, column: 20, scope: !1737)
!1751 = !DILocation(line: 104, column: 18, scope: !1737)
!1752 = !DILocation(line: 105, column: 67, scope: !1737)
!1753 = !DILocation(line: 105, column: 74, scope: !1737)
!1754 = !DILocation(line: 105, column: 64, scope: !1737)
!1755 = !DILocation(line: 105, column: 56, scope: !1737)
!1756 = !DILocation(line: 106, column: 13, scope: !1737)
!1757 = !DILocation(line: 109, column: 20, scope: !1737)
!1758 = !DILocation(line: 110, column: 18, scope: !1737)
!1759 = !DILocation(line: 111, column: 67, scope: !1737)
!1760 = !DILocation(line: 111, column: 74, scope: !1737)
!1761 = !DILocation(line: 111, column: 64, scope: !1737)
!1762 = !DILocation(line: 111, column: 56, scope: !1737)
!1763 = !DILocation(line: 112, column: 13, scope: !1737)
!1764 = !DILocation(line: 115, column: 20, scope: !1737)
!1765 = !DILocation(line: 116, column: 18, scope: !1737)
!1766 = !DILocation(line: 117, column: 67, scope: !1737)
!1767 = !DILocation(line: 117, column: 74, scope: !1737)
!1768 = !DILocation(line: 117, column: 64, scope: !1737)
!1769 = !DILocation(line: 117, column: 56, scope: !1737)
!1770 = !DILocation(line: 118, column: 13, scope: !1737)
!1771 = !DILocation(line: 121, column: 20, scope: !1737)
!1772 = !DILocation(line: 122, column: 18, scope: !1737)
!1773 = !DILocation(line: 123, column: 67, scope: !1737)
!1774 = !DILocation(line: 123, column: 74, scope: !1737)
!1775 = !DILocation(line: 123, column: 64, scope: !1737)
!1776 = !DILocation(line: 123, column: 56, scope: !1737)
!1777 = !DILocation(line: 124, column: 13, scope: !1737)
!1778 = !DILocation(line: 127, column: 20, scope: !1737)
!1779 = !DILocation(line: 128, column: 18, scope: !1737)
!1780 = !DILocation(line: 129, column: 67, scope: !1737)
!1781 = !DILocation(line: 129, column: 74, scope: !1737)
!1782 = !DILocation(line: 129, column: 64, scope: !1737)
!1783 = !DILocation(line: 129, column: 56, scope: !1737)
!1784 = !DILocation(line: 130, column: 13, scope: !1737)
!1785 = !DILocation(line: 133, column: 20, scope: !1737)
!1786 = !DILocation(line: 134, column: 18, scope: !1737)
!1787 = !DILocation(line: 135, column: 67, scope: !1737)
!1788 = !DILocation(line: 135, column: 74, scope: !1737)
!1789 = !DILocation(line: 135, column: 64, scope: !1737)
!1790 = !DILocation(line: 135, column: 56, scope: !1737)
!1791 = !DILocation(line: 136, column: 13, scope: !1737)
!1792 = !DILocation(line: 139, column: 20, scope: !1737)
!1793 = !DILocation(line: 140, column: 18, scope: !1737)
!1794 = !DILocation(line: 141, column: 67, scope: !1737)
!1795 = !DILocation(line: 141, column: 64, scope: !1737)
!1796 = !DILocation(line: 141, column: 56, scope: !1737)
!1797 = !DILocation(line: 142, column: 13, scope: !1737)
!1798 = !DILocation(line: 145, column: 20, scope: !1737)
!1799 = !DILocation(line: 146, column: 18, scope: !1737)
!1800 = !DILocation(line: 147, column: 67, scope: !1737)
!1801 = !DILocation(line: 147, column: 74, scope: !1737)
!1802 = !DILocation(line: 147, column: 64, scope: !1737)
!1803 = !DILocation(line: 147, column: 56, scope: !1737)
!1804 = !DILocation(line: 148, column: 13, scope: !1737)
!1805 = !DILocation(line: 151, column: 20, scope: !1737)
!1806 = !DILocation(line: 152, column: 18, scope: !1737)
!1807 = !DILocation(line: 153, column: 67, scope: !1737)
!1808 = !DILocation(line: 153, column: 74, scope: !1737)
!1809 = !DILocation(line: 153, column: 64, scope: !1737)
!1810 = !DILocation(line: 153, column: 56, scope: !1737)
!1811 = !DILocation(line: 154, column: 13, scope: !1737)
!1812 = !DILocation(line: 157, column: 20, scope: !1737)
!1813 = !DILocation(line: 158, column: 18, scope: !1737)
!1814 = !DILocation(line: 159, column: 67, scope: !1737)
!1815 = !DILocation(line: 159, column: 74, scope: !1737)
!1816 = !DILocation(line: 159, column: 64, scope: !1737)
!1817 = !DILocation(line: 159, column: 56, scope: !1737)
!1818 = !DILocation(line: 160, column: 29, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1737, file: !921, line: 160, column: 17)
!1820 = !DILocation(line: 161, column: 17, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !921, line: 160, column: 60)
!1822 = !DILocation(line: 162, column: 13, scope: !1821)
!1823 = !DILocation(line: 166, column: 20, scope: !1737)
!1824 = !DILocation(line: 167, column: 18, scope: !1737)
!1825 = !DILocation(line: 168, column: 67, scope: !1737)
!1826 = !DILocation(line: 168, column: 74, scope: !1737)
!1827 = !DILocation(line: 168, column: 64, scope: !1737)
!1828 = !DILocation(line: 168, column: 56, scope: !1737)
!1829 = !DILocation(line: 169, column: 29, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1737, file: !921, line: 169, column: 17)
!1831 = !DILocation(line: 170, column: 17, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1830, file: !921, line: 169, column: 45)
!1833 = !DILocation(line: 171, column: 13, scope: !1832)
!1834 = !DILocation(line: 175, column: 20, scope: !1737)
!1835 = !DILocation(line: 176, column: 18, scope: !1737)
!1836 = !DILocation(line: 177, column: 67, scope: !1737)
!1837 = !DILocation(line: 177, column: 74, scope: !1737)
!1838 = !DILocation(line: 177, column: 64, scope: !1737)
!1839 = !DILocation(line: 177, column: 56, scope: !1737)
!1840 = !DILocation(line: 178, column: 19, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1737, file: !921, line: 178, column: 17)
!1842 = !DILocation(line: 178, column: 17, scope: !1737)
!1843 = !DILocation(line: 179, column: 17, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !921, line: 178, column: 30)
!1845 = !DILocation(line: 180, column: 13, scope: !1844)
!1846 = !DILocation(line: 184, column: 20, scope: !1737)
!1847 = !DILocation(line: 185, column: 18, scope: !1737)
!1848 = !DILocation(line: 186, column: 67, scope: !1737)
!1849 = !DILocation(line: 186, column: 74, scope: !1737)
!1850 = !DILocation(line: 186, column: 64, scope: !1737)
!1851 = !DILocation(line: 186, column: 56, scope: !1737)
!1852 = !DILocation(line: 187, column: 29, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1737, file: !921, line: 187, column: 17)
!1854 = !DILocation(line: 188, column: 17, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !921, line: 187, column: 45)
!1856 = !DILocation(line: 189, column: 13, scope: !1855)
!1857 = !DILocation(line: 193, column: 20, scope: !1737)
!1858 = !DILocation(line: 194, column: 18, scope: !1737)
!1859 = !DILocation(line: 195, column: 67, scope: !1737)
!1860 = !DILocation(line: 195, column: 74, scope: !1737)
!1861 = !DILocation(line: 195, column: 64, scope: !1737)
!1862 = !DILocation(line: 195, column: 56, scope: !1737)
!1863 = !DILocation(line: 196, column: 29, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1737, file: !921, line: 196, column: 17)
!1865 = !DILocation(line: 197, column: 17, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1864, file: !921, line: 196, column: 45)
!1867 = !DILocation(line: 198, column: 13, scope: !1866)
!1868 = !DILocation(line: 202, column: 20, scope: !1737)
!1869 = !DILocation(line: 203, column: 18, scope: !1737)
!1870 = !DILocation(line: 204, column: 67, scope: !1737)
!1871 = !DILocation(line: 204, column: 64, scope: !1737)
!1872 = !DILocation(line: 204, column: 56, scope: !1737)
!1873 = !DILocation(line: 205, column: 29, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1737, file: !921, line: 205, column: 17)
!1875 = !DILocation(line: 206, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1874, file: !921, line: 205, column: 45)
!1877 = !DILocation(line: 207, column: 13, scope: !1876)
!1878 = !DILocation(line: 211, column: 20, scope: !1737)
!1879 = !DILocation(line: 212, column: 18, scope: !1737)
!1880 = !DILocation(line: 213, column: 67, scope: !1737)
!1881 = !DILocation(line: 213, column: 74, scope: !1737)
!1882 = !DILocation(line: 213, column: 64, scope: !1737)
!1883 = !DILocation(line: 213, column: 56, scope: !1737)
!1884 = !DILocation(line: 214, column: 13, scope: !1737)
!1885 = !DILocation(line: 217, column: 20, scope: !1737)
!1886 = !DILocation(line: 218, column: 18, scope: !1737)
!1887 = !DILocation(line: 219, column: 67, scope: !1737)
!1888 = !DILocation(line: 219, column: 74, scope: !1737)
!1889 = !DILocation(line: 219, column: 64, scope: !1737)
!1890 = !DILocation(line: 219, column: 56, scope: !1737)
!1891 = !DILocation(line: 220, column: 13, scope: !1737)
!1892 = !DILocation(line: 223, column: 20, scope: !1737)
!1893 = !DILocation(line: 224, column: 18, scope: !1737)
!1894 = !DILocation(line: 225, column: 67, scope: !1737)
!1895 = !DILocation(line: 225, column: 74, scope: !1737)
!1896 = !DILocation(line: 225, column: 64, scope: !1737)
!1897 = !DILocation(line: 225, column: 56, scope: !1737)
!1898 = !DILocation(line: 226, column: 13, scope: !1737)
!1899 = !DILocation(line: 229, column: 20, scope: !1737)
!1900 = !DILocation(line: 230, column: 18, scope: !1737)
!1901 = !DILocation(line: 231, column: 67, scope: !1737)
!1902 = !DILocation(line: 231, column: 74, scope: !1737)
!1903 = !DILocation(line: 231, column: 64, scope: !1737)
!1904 = !DILocation(line: 231, column: 56, scope: !1737)
!1905 = !DILocation(line: 232, column: 13, scope: !1737)
!1906 = !DILocation(line: 235, column: 20, scope: !1737)
!1907 = !DILocation(line: 236, column: 18, scope: !1737)
!1908 = !DILocation(line: 237, column: 66, scope: !1737)
!1909 = !DILocation(line: 237, column: 73, scope: !1737)
!1910 = !DILocation(line: 237, column: 63, scope: !1737)
!1911 = !DILocation(line: 237, column: 56, scope: !1737)
!1912 = !DILocation(line: 238, column: 13, scope: !1737)
!1913 = !DILocation(line: 241, column: 20, scope: !1737)
!1914 = !DILocation(line: 242, column: 18, scope: !1737)
!1915 = !DILocation(line: 243, column: 67, scope: !1737)
!1916 = !DILocation(line: 243, column: 74, scope: !1737)
!1917 = !DILocation(line: 243, column: 64, scope: !1737)
!1918 = !DILocation(line: 243, column: 56, scope: !1737)
!1919 = !DILocation(line: 244, column: 13, scope: !1737)
!1920 = !DILocation(line: 247, column: 20, scope: !1737)
!1921 = !DILocation(line: 248, column: 18, scope: !1737)
!1922 = !DILocation(line: 249, column: 67, scope: !1737)
!1923 = !DILocation(line: 249, column: 74, scope: !1737)
!1924 = !DILocation(line: 249, column: 64, scope: !1737)
!1925 = !DILocation(line: 249, column: 56, scope: !1737)
!1926 = !DILocation(line: 250, column: 13, scope: !1737)
!1927 = !DILocation(line: 253, column: 20, scope: !1737)
!1928 = !DILocation(line: 254, column: 18, scope: !1737)
!1929 = !DILocation(line: 255, column: 67, scope: !1737)
!1930 = !DILocation(line: 255, column: 74, scope: !1737)
!1931 = !DILocation(line: 255, column: 64, scope: !1737)
!1932 = !DILocation(line: 255, column: 56, scope: !1737)
!1933 = !DILocation(line: 256, column: 13, scope: !1737)
!1934 = !DILocation(line: 259, column: 20, scope: !1737)
!1935 = !DILocation(line: 260, column: 18, scope: !1737)
!1936 = !DILocation(line: 261, column: 67, scope: !1737)
!1937 = !DILocation(line: 261, column: 74, scope: !1737)
!1938 = !DILocation(line: 261, column: 64, scope: !1737)
!1939 = !DILocation(line: 261, column: 56, scope: !1737)
!1940 = !DILocation(line: 262, column: 13, scope: !1737)
!1941 = !DILocation(line: 265, column: 20, scope: !1737)
!1942 = !DILocation(line: 266, column: 18, scope: !1737)
!1943 = !DILocation(line: 267, column: 67, scope: !1737)
!1944 = !DILocation(line: 267, column: 74, scope: !1737)
!1945 = !DILocation(line: 267, column: 64, scope: !1737)
!1946 = !DILocation(line: 267, column: 56, scope: !1737)
!1947 = !DILocation(line: 268, column: 13, scope: !1737)
!1948 = !DILocation(line: 271, column: 20, scope: !1737)
!1949 = !DILocation(line: 272, column: 18, scope: !1737)
!1950 = !DILocation(line: 273, column: 67, scope: !1737)
!1951 = !DILocation(line: 273, column: 74, scope: !1737)
!1952 = !DILocation(line: 273, column: 64, scope: !1737)
!1953 = !DILocation(line: 273, column: 56, scope: !1737)
!1954 = !DILocation(line: 274, column: 13, scope: !1737)
!1955 = !DILocation(line: 278, column: 1, scope: !1725)
!1956 = distinct !DISubprogram(name: "spim_irqhandler", scope: !3, file: !3, line: 52, type: !419, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1956, file: !3, line: 52, type: !337)
!1959 = !DILocalVariable(name: "reg", scope: !1956, file: !3, line: 54, type: !63)
!1960 = !DILocation(line: 0, scope: !1956)
!1961 = !DILocation(line: 54, column: 5, scope: !1956)
!1962 = !DILocation(line: 54, column: 21, scope: !1956)
!1963 = !DILocation(line: 56, column: 5, scope: !1956)
!1964 = !DILocation(line: 57, column: 11, scope: !1956)
!1965 = !DILocation(line: 57, column: 9, scope: !1956)
!1966 = !DILocation(line: 58, column: 11, scope: !1956)
!1967 = !DILocation(line: 58, column: 9, scope: !1956)
!1968 = !DILocation(line: 60, column: 1, scope: !1956)
!1969 = distinct !DISubprogram(name: "spim_isr_Register", scope: !3, file: !3, line: 62, type: !1970, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !78}
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "spim_isr", arg: 1, scope: !1969, file: !3, line: 62, type: !78)
!1974 = !DILocation(line: 0, scope: !1969)
!1975 = !DILocation(line: 64, column: 17, scope: !1969)
!1976 = !DILocation(line: 65, column: 1, scope: !1969)
!1977 = distinct !DISubprogram(name: "halSpim_init", scope: !3, file: !3, line: 75, type: !1978, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!170, !60, !60}
!1980 = !{!1981, !1982, !1983, !1984}
!1981 = !DILocalVariable(name: "setting", arg: 1, scope: !1977, file: !3, line: 75, type: !60)
!1982 = !DILocalVariable(name: "clock", arg: 2, scope: !1977, file: !3, line: 75, type: !60)
!1983 = !DILocalVariable(name: "reg", scope: !1977, file: !3, line: 78, type: !63)
!1984 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1977, file: !3, line: 79, type: !62)
!1985 = !DILocation(line: 0, scope: !1977)
!1986 = !DILocation(line: 78, column: 5, scope: !1977)
!1987 = !DILocation(line: 78, column: 21, scope: !1977)
!1988 = !DILocation(line: 80, column: 11, scope: !1977)
!1989 = !DILocation(line: 80, column: 9, scope: !1977)
!1990 = !DILocation(line: 81, column: 12, scope: !1977)
!1991 = !DILocation(line: 81, column: 16, scope: !1977)
!1992 = !DILocation(line: 81, column: 39, scope: !1977)
!1993 = !DILocation(line: 81, column: 9, scope: !1977)
!1994 = !DILocation(line: 83, column: 9, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 83, column: 9)
!1996 = !DILocation(line: 83, column: 13, scope: !1995)
!1997 = !DILocation(line: 83, column: 9, scope: !1977)
!1998 = !DILocation(line: 84, column: 9, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 83, column: 45)
!2000 = !DILocation(line: 85, column: 5, scope: !1999)
!2001 = !DILocation(line: 87, column: 38, scope: !1977)
!2002 = !DILocation(line: 89, column: 5, scope: !1977)
!2003 = !DILocation(line: 90, column: 5, scope: !1977)
!2004 = !DILocation(line: 92, column: 5, scope: !1977)
!2005 = !DILocation(line: 95, column: 5, scope: !1977)
!2006 = !DILocation(line: 96, column: 5, scope: !1977)
!2007 = !DILocation(line: 98, column: 1, scope: !1977)
!2008 = !DILocation(line: 97, column: 5, scope: !1977)
!2009 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2010, file: !2010, line: 176, type: !2011, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2010 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!73, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2015 = !{!2016}
!2016 = !DILocalVariable(name: "Register", arg: 1, scope: !2009, file: !2010, line: 176, type: !2013)
!2017 = !DILocation(line: 0, scope: !2009)
!2018 = !DILocation(line: 178, column: 12, scope: !2009)
!2019 = !DILocation(line: 178, column: 5, scope: !2009)
!2020 = distinct !DISubprogram(name: "spim_busy_wait", scope: !3, file: !3, line: 102, type: !2021, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!170}
!2023 = !{!2024}
!2024 = !DILocalVariable(name: "n", scope: !2020, file: !3, line: 104, type: !7)
!2025 = !DILocation(line: 0, scope: !2020)
!2026 = !DILocation(line: 105, column: 5, scope: !2020)
!2027 = !DILocation(line: 106, column: 14, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 106, column: 13)
!2029 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 105, column: 8)
!2030 = !DILocation(line: 106, column: 39, scope: !2028)
!2031 = !DILocation(line: 106, column: 55, scope: !2028)
!2032 = !DILocation(line: 106, column: 13, scope: !2029)
!2033 = !DILocation(line: 109, column: 14, scope: !2020)
!2034 = !DILocation(line: 109, column: 18, scope: !2020)
!2035 = !DILocation(line: 109, column: 5, scope: !2029)
!2036 = distinct !{!2036, !2026, !2037}
!2037 = !DILocation(line: 109, column: 21, scope: !2020)
!2038 = !DILocation(line: 113, column: 1, scope: !2020)
!2039 = distinct !DISubprogram(name: "spim_more_buf_trans_gpio", scope: !3, file: !3, line: 115, type: !2040, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!170, !2042, !2043, !1600, !2043, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 51, baseType: !53)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057}
!2047 = !DILocalVariable(name: "op_addr", arg: 1, scope: !2039, file: !3, line: 115, type: !2042)
!2048 = !DILocalVariable(name: "n_cmd_byte", arg: 2, scope: !2039, file: !3, line: 115, type: !2043)
!2049 = !DILocalVariable(name: "buf", arg: 3, scope: !2039, file: !3, line: 115, type: !1600)
!2050 = !DILocalVariable(name: "buf_cnt", arg: 4, scope: !2039, file: !3, line: 115, type: !2043)
!2051 = !DILocalVariable(name: "flag", arg: 5, scope: !2039, file: !3, line: 115, type: !2045)
!2052 = !DILocalVariable(name: "reg", scope: !2039, file: !3, line: 117, type: !64)
!2053 = !DILocalVariable(name: "i", scope: !2039, file: !3, line: 118, type: !7)
!2054 = !DILocalVariable(name: "q", scope: !2039, file: !3, line: 118, type: !7)
!2055 = !DILocalVariable(name: "r", scope: !2039, file: !3, line: 118, type: !7)
!2056 = !DILocalVariable(name: "rc", scope: !2039, file: !3, line: 119, type: !7)
!2057 = !DILabel(scope: !2039, name: "RET_MB_TRANS", file: !3, line: 187)
!2058 = !DILocation(line: 0, scope: !2039)
!2059 = !DILocation(line: 122, column: 5, scope: !2039)
!2060 = !DILocation(line: 124, column: 5, scope: !2039)
!2061 = !DILocation(line: 125, column: 5, scope: !2039)
!2062 = !DILocation(line: 128, column: 5, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 128, column: 5)
!2064 = !DILocation(line: 129, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 128, column: 29)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 128, column: 5)
!2067 = !DILocation(line: 128, column: 25, scope: !2066)
!2068 = !DILocation(line: 128, column: 19, scope: !2066)
!2069 = distinct !{!2069, !2062, !2070}
!2070 = !DILocation(line: 130, column: 5, scope: !2063)
!2071 = !DILocation(line: 133, column: 14, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 133, column: 9)
!2073 = !DILocation(line: 133, column: 9, scope: !2039)
!2074 = !DILocation(line: 134, column: 17, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 134, column: 13)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 133, column: 32)
!2077 = !DILocation(line: 134, column: 13, scope: !2076)
!2078 = !DILocation(line: 138, column: 23, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 138, column: 9)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 138, column: 9)
!2081 = !DILocation(line: 138, column: 9, scope: !2080)
!2082 = !DILocation(line: 140, column: 19, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 138, column: 39)
!2084 = !DILocation(line: 141, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 141, column: 17)
!2086 = !DILocation(line: 0, scope: !2083)
!2087 = !DILocation(line: 141, column: 17, scope: !2083)
!2088 = !DILocation(line: 142, column: 17, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 141, column: 25)
!2090 = !DILocation(line: 143, column: 13, scope: !2089)
!2091 = !DILocation(line: 145, column: 13, scope: !2083)
!2092 = !DILocation(line: 138, column: 35, scope: !2079)
!2093 = distinct !{!2093, !2081, !2094}
!2094 = !DILocation(line: 146, column: 9, scope: !2080)
!2095 = !DILocation(line: 150, column: 5, scope: !2039)
!2096 = !DILocation(line: 0, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 151, column: 9)
!2098 = !DILocation(line: 160, column: 5, scope: !2039)
!2099 = !DILocation(line: 162, column: 5, scope: !2039)
!2100 = !DILocation(line: 165, column: 9, scope: !2039)
!2101 = !DILocation(line: 172, column: 17, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 172, column: 13)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 171, column: 31)
!2104 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 171, column: 9)
!2105 = !DILocation(line: 172, column: 13, scope: !2103)
!2106 = !DILocation(line: 177, column: 23, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 177, column: 9)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 177, column: 9)
!2109 = !DILocation(line: 177, column: 9, scope: !2108)
!2110 = !DILocation(line: 180, column: 19, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 177, column: 39)
!2112 = !DILocation(line: 181, column: 44, scope: !2111)
!2113 = !DILocation(line: 181, column: 38, scope: !2111)
!2114 = !DILocation(line: 181, column: 26, scope: !2111)
!2115 = !DILocation(line: 181, column: 19, scope: !2111)
!2116 = !DILocation(line: 181, column: 24, scope: !2111)
!2117 = !DILocation(line: 177, column: 35, scope: !2107)
!2118 = distinct !{!2118, !2109, !2119}
!2119 = !DILocation(line: 182, column: 9, scope: !2108)
!2120 = !DILocation(line: 187, column: 1, scope: !2039)
!2121 = !DILocation(line: 189, column: 5, scope: !2039)
!2122 = !DILocation(line: 190, column: 5, scope: !2039)
!2123 = !DILocation(line: 191, column: 1, scope: !2039)
!2124 = distinct !DISubprogram(name: "gpio_direction", scope: !86, file: !86, line: 107, type: !2125, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!154, !1073, !1076}
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2124, file: !86, line: 107, type: !1073)
!2129 = !DILocalVariable(name: "direction", arg: 2, scope: !2124, file: !86, line: 107, type: !1076)
!2130 = !DILocation(line: 0, scope: !2124)
!2131 = !DILocation(line: 109, column: 45, scope: !2124)
!2132 = !DILocation(line: 109, column: 12, scope: !2124)
!2133 = !DILocation(line: 109, column: 5, scope: !2124)
!2134 = distinct !DISubprogram(name: "gpio_write", scope: !86, file: !86, line: 113, type: !2135, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!154, !1073, !163}
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2134, file: !86, line: 113, type: !1073)
!2139 = !DILocalVariable(name: "data", arg: 2, scope: !2134, file: !86, line: 113, type: !163)
!2140 = !DILocation(line: 0, scope: !2134)
!2141 = !DILocation(line: 115, column: 12, scope: !2134)
!2142 = !DILocation(line: 115, column: 5, scope: !2134)
!2143 = distinct !DISubprogram(name: "gpio_get_status", scope: !86, file: !86, line: 169, type: !2144, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2153)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2146, !1073}
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !120, line: 67, baseType: !2147)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 62, size: 64, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2152}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !2147, file: !120, line: 63, baseType: !73, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !2147, file: !120, line: 64, baseType: !163, size: 8, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !2147, file: !120, line: 65, baseType: !163, size: 8, offset: 40)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !2147, file: !120, line: 66, baseType: !163, size: 8, offset: 48)
!2153 = !{!2154, !2155}
!2154 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2143, file: !86, line: 169, type: !1073)
!2155 = !DILocalVariable(name: "p", scope: !2143, file: !86, line: 171, type: !2146)
!2156 = !DILocation(line: 0, scope: !2143)
!2157 = !DILocation(line: 171, column: 17, scope: !2143)
!2158 = !DILocation(line: 172, column: 7, scope: !2143)
!2159 = !DILocation(line: 172, column: 16, scope: !2143)
!2160 = !DILocation(line: 173, column: 20, scope: !2143)
!2161 = !DILocation(line: 173, column: 7, scope: !2143)
!2162 = !DILocation(line: 173, column: 18, scope: !2143)
!2163 = !DILocation(line: 174, column: 17, scope: !2143)
!2164 = !DILocation(line: 174, column: 7, scope: !2143)
!2165 = !DILocation(line: 174, column: 15, scope: !2143)
!2166 = !DILocation(line: 175, column: 18, scope: !2143)
!2167 = !DILocation(line: 175, column: 7, scope: !2143)
!2168 = !DILocation(line: 175, column: 16, scope: !2143)
!2169 = !DILocation(line: 176, column: 5, scope: !2143)
!2170 = distinct !DISubprogram(name: "gpio_PullUp", scope: !86, file: !86, line: 179, type: !2171, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!154, !1073}
!2173 = !{!2174, !2175}
!2174 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2170, file: !86, line: 179, type: !1073)
!2175 = !DILocalVariable(name: "ret", scope: !2170, file: !86, line: 181, type: !170)
!2176 = !DILocation(line: 0, scope: !2170)
!2177 = !DILocation(line: 182, column: 5, scope: !2170)
!2178 = !DILocation(line: 183, column: 11, scope: !2170)
!2179 = !DILocation(line: 184, column: 5, scope: !2170)
!2180 = distinct !DISubprogram(name: "gpio_PullDown", scope: !86, file: !86, line: 187, type: !2171, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2181)
!2181 = !{!2182, !2183}
!2182 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2180, file: !86, line: 187, type: !1073)
!2183 = !DILocalVariable(name: "ret", scope: !2180, file: !86, line: 189, type: !170)
!2184 = !DILocation(line: 0, scope: !2180)
!2185 = !DILocation(line: 190, column: 5, scope: !2180)
!2186 = !DILocation(line: 191, column: 11, scope: !2180)
!2187 = !DILocation(line: 192, column: 5, scope: !2180)
!2188 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !86, file: !86, line: 194, type: !2171, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2189)
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2188, file: !86, line: 194, type: !1073)
!2191 = !DILocalVariable(name: "ret", scope: !2188, file: !86, line: 196, type: !170)
!2192 = !DILocation(line: 0, scope: !2188)
!2193 = !DILocation(line: 197, column: 5, scope: !2188)
!2194 = !DILocation(line: 198, column: 11, scope: !2188)
!2195 = !DILocation(line: 199, column: 11, scope: !2188)
!2196 = !DILocation(line: 200, column: 5, scope: !2188)
!2197 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !86, file: !86, line: 202, type: !2135, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2198)
!2198 = !{!2199, !2200, !2201}
!2199 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2197, file: !86, line: 202, type: !1073)
!2200 = !DILocalVariable(name: "driving", arg: 2, scope: !2197, file: !86, line: 202, type: !163)
!2201 = !DILocalVariable(name: "ret", scope: !2197, file: !86, line: 204, type: !170)
!2202 = !DILocation(line: 0, scope: !2197)
!2203 = !DILocation(line: 205, column: 11, scope: !2197)
!2204 = !DILocation(line: 206, column: 5, scope: !2197)
!2205 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !86, file: !86, line: 209, type: !2206, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!154, !1073, !162}
!2208 = !{!2209, !2210, !2211}
!2209 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2205, file: !86, line: 209, type: !1073)
!2210 = !DILocalVariable(name: "driving", arg: 2, scope: !2205, file: !86, line: 209, type: !162)
!2211 = !DILocalVariable(name: "ret", scope: !2205, file: !86, line: 211, type: !170)
!2212 = !DILocation(line: 0, scope: !2205)
!2213 = !DILocation(line: 212, column: 11, scope: !2205)
!2214 = !DILocation(line: 213, column: 5, scope: !2205)
!2215 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !86, file: !86, line: 216, type: !81, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2216)
!2216 = !{!2217}
!2217 = !DILocalVariable(name: "i", scope: !2215, file: !86, line: 218, type: !73)
!2218 = !DILocation(line: 0, scope: !2215)
!2219 = !DILocation(line: 220, column: 5, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !86, line: 220, column: 5)
!2221 = !DILocation(line: 221, column: 40, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !86, line: 220, column: 78)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !86, line: 220, column: 5)
!2224 = !DILocation(line: 221, column: 29, scope: !2222)
!2225 = !DILocation(line: 221, column: 38, scope: !2222)
!2226 = !DILocation(line: 220, column: 74, scope: !2223)
!2227 = !DILocation(line: 220, column: 15, scope: !2223)
!2228 = distinct !{!2228, !2219, !2229}
!2229 = !DILocation(line: 222, column: 5, scope: !2220)
!2230 = !DILocation(line: 224, column: 1, scope: !2215)
!2231 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !86, file: !86, line: 226, type: !81, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2232)
!2232 = !{!2233}
!2233 = !DILocalVariable(name: "i", scope: !2231, file: !86, line: 228, type: !73)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 230, column: 5, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !86, line: 230, column: 5)
!2237 = !DILocation(line: 231, column: 71, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !86, line: 230, column: 78)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !86, line: 230, column: 5)
!2240 = !DILocation(line: 231, column: 9, scope: !2238)
!2241 = !DILocation(line: 231, column: 49, scope: !2238)
!2242 = !DILocation(line: 230, column: 74, scope: !2239)
!2243 = !DILocation(line: 230, column: 15, scope: !2239)
!2244 = distinct !{!2244, !2235, !2245}
!2245 = !DILocation(line: 233, column: 5, scope: !2236)
!2246 = !DILocation(line: 234, column: 1, scope: !2231)
!2247 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1002, file: !1002, line: 47, type: !2248, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !73}
!2250 = !{!2251}
!2251 = !DILocalVariable(name: "addr", arg: 1, scope: !2247, file: !1002, line: 47, type: !73)
!2252 = !DILocation(line: 0, scope: !2247)
!2253 = !DILocation(line: 49, column: 15, scope: !2247)
!2254 = !DILocation(line: 51, column: 5, scope: !2247)
!2255 = !{i64 2624}
!2256 = !DILocation(line: 52, column: 5, scope: !2247)
!2257 = !{i64 2651}
!2258 = !DILocation(line: 53, column: 1, scope: !2247)
!2259 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1002, file: !1002, line: 56, type: !2260, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !53}
!2262 = !{!2263}
!2263 = !DILocalVariable(name: "source", arg: 1, scope: !2259, file: !1002, line: 56, type: !53)
!2264 = !DILocation(line: 0, scope: !2259)
!2265 = !DILocation(line: 58, column: 16, scope: !2259)
!2266 = !DILocation(line: 59, column: 1, scope: !2259)
!2267 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1002, file: !1002, line: 61, type: !2268, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!73}
!2270 = !{!2271}
!2271 = !DILocalVariable(name: "mask", scope: !2267, file: !1002, line: 63, type: !73)
!2272 = !DILocation(line: 470, column: 3, scope: !2273, inlinedAt: !2277)
!2273 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2274, file: !2274, line: 466, type: !2268, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2275)
!2274 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!2275 = !{!2276}
!2276 = !DILocalVariable(name: "result", scope: !2273, file: !2274, line: 468, type: !73)
!2277 = distinct !DILocation(line: 64, column: 5, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2267, file: !1002, line: 64, column: 5)
!2279 = !{i64 302171}
!2280 = !DILocation(line: 0, scope: !2273, inlinedAt: !2277)
!2281 = !DILocation(line: 0, scope: !2267)
!2282 = !DILocation(line: 330, column: 3, scope: !2283, inlinedAt: !2285)
!2283 = distinct !DISubprogram(name: "__disable_irq", scope: !2274, file: !2274, line: 328, type: !81, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2284)
!2284 = !{}
!2285 = distinct !DILocation(line: 64, column: 5, scope: !2278)
!2286 = !{i64 298835}
!2287 = !DILocation(line: 65, column: 5, scope: !2267)
!2288 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1002, file: !1002, line: 68, type: !2248, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2289)
!2289 = !{!2290}
!2290 = !DILocalVariable(name: "mask", arg: 1, scope: !2288, file: !1002, line: 68, type: !73)
!2291 = !DILocation(line: 0, scope: !2288)
!2292 = !DILocalVariable(name: "priMask", arg: 1, scope: !2293, file: !2274, line: 481, type: !73)
!2293 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2274, file: !2274, line: 481, type: !2248, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1001, retainedNodes: !2294)
!2294 = !{!2292}
!2295 = !DILocation(line: 0, scope: !2293, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 70, column: 5, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2288, file: !1002, line: 70, column: 5)
!2298 = !DILocation(line: 483, column: 3, scope: !2293, inlinedAt: !2296)
!2299 = !{i64 302489}
!2300 = !DILocation(line: 71, column: 1, scope: !2288)
!2301 = distinct !DISubprogram(name: "pinmux_config", scope: !1047, file: !1047, line: 54, type: !2302, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!154, !1073, !73}
!2304 = !{!2305, !2306, !2307}
!2305 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2301, file: !1047, line: 54, type: !1073)
!2306 = !DILocalVariable(name: "function", arg: 2, scope: !2301, file: !1047, line: 54, type: !73)
!2307 = !DILocalVariable(name: "ePadIndex", scope: !2301, file: !1047, line: 56, type: !1729)
!2308 = !DILocation(line: 0, scope: !2301)
!2309 = !DILocation(line: 60, column: 5, scope: !2301)
!2310 = !DILocation(line: 205, column: 38, scope: !2301)
!2311 = !DILocation(line: 205, column: 5, scope: !2301)
!2312 = !DILocation(line: 207, column: 5, scope: !2301)
!2313 = !DILocation(line: 208, column: 1, scope: !2301)
!2314 = distinct !DISubprogram(name: "spim_Lisr", scope: !142, file: !142, line: 54, type: !81, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2284)
!2315 = !DILocation(line: 56, column: 15, scope: !2314)
!2316 = !DILocation(line: 57, column: 9, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !142, line: 57, column: 9)
!2318 = !DILocation(line: 57, column: 24, scope: !2317)
!2319 = !DILocation(line: 57, column: 33, scope: !2317)
!2320 = !DILocation(line: 57, column: 20, scope: !2317)
!2321 = !DILocation(line: 57, column: 9, scope: !2314)
!2322 = !DILocation(line: 58, column: 29, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2317, file: !142, line: 57, column: 39)
!2324 = !DILocation(line: 58, column: 9, scope: !2323)
!2325 = !DILocation(line: 59, column: 20, scope: !2323)
!2326 = !DILocation(line: 60, column: 5, scope: !2323)
!2327 = !DILocation(line: 61, column: 1, scope: !2314)
!2328 = distinct !DISubprogram(name: "spim_init", scope: !142, file: !142, line: 63, type: !2329, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!154, !73, !73}
!2331 = !{!2332, !2333, !2334}
!2332 = !DILocalVariable(name: "setting", arg: 1, scope: !2328, file: !142, line: 63, type: !73)
!2333 = !DILocalVariable(name: "clock", arg: 2, scope: !2328, file: !142, line: 63, type: !73)
!2334 = !DILocalVariable(name: "ret", scope: !2328, file: !142, line: 65, type: !170)
!2335 = !DILocation(line: 0, scope: !2328)
!2336 = !DILocation(line: 67, column: 5, scope: !2328)
!2337 = !DILocation(line: 69, column: 28, scope: !2328)
!2338 = !DILocation(line: 69, column: 5, scope: !2328)
!2339 = !DILocation(line: 70, column: 89, scope: !2328)
!2340 = !DILocation(line: 71, column: 11, scope: !2328)
!2341 = !DILocation(line: 72, column: 25, scope: !2328)
!2342 = !DILocation(line: 72, column: 5, scope: !2328)
!2343 = !DILocation(line: 73, column: 5, scope: !2328)
!2344 = !DILocation(line: 0, scope: !159)
!2345 = !DILocation(line: 110, column: 24, scope: !159)
!2346 = !DILocation(line: 110, column: 14, scope: !159)
!2347 = !DILocation(line: 111, column: 17, scope: !159)
!2348 = !DILocation(line: 113, column: 14, scope: !159)
!2349 = !DILocation(line: 114, column: 12, scope: !159)
!2350 = !DILocation(line: 116, column: 17, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !159, file: !142, line: 116, column: 9)
!2352 = !DILocation(line: 116, column: 9, scope: !159)
!2353 = !DILocation(line: 120, column: 17, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !159, file: !142, line: 120, column: 9)
!2355 = !DILocation(line: 120, column: 9, scope: !159)
!2356 = !DILocation(line: 126, column: 23, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !142, line: 126, column: 9)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !142, line: 126, column: 9)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !142, line: 124, column: 12)
!2360 = !DILocation(line: 126, column: 9, scope: !2358)
!2361 = !DILocation(line: 127, column: 23, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !142, line: 126, column: 40)
!2363 = !DILocation(line: 128, column: 19, scope: !2362)
!2364 = !DILocation(line: 126, column: 25, scope: !2357)
!2365 = distinct !{!2365, !2360, !2366}
!2366 = !DILocation(line: 129, column: 9, scope: !2358)
!2367 = !DILocation(line: 121, column: 19, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2354, file: !142, line: 120, column: 32)
!2369 = !DILocation(line: 122, column: 15, scope: !2368)
!2370 = !DILocation(line: 123, column: 9, scope: !2368)
!2371 = !DILocation(line: 127, column: 49, scope: !2362)
!2372 = !DILocation(line: 128, column: 74, scope: !2362)
!2373 = !DILocation(line: 128, column: 102, scope: !2362)
!2374 = !DILocation(line: 126, column: 36, scope: !2357)
!2375 = !DILocation(line: 131, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2359, file: !142, line: 131, column: 13)
!2377 = !DILocation(line: 0, scope: !2358)
!2378 = !DILocation(line: 131, column: 23, scope: !2376)
!2379 = !DILocation(line: 131, column: 13, scope: !2359)
!2380 = !DILocation(line: 132, column: 27, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !142, line: 132, column: 17)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !142, line: 131, column: 38)
!2383 = !DILocation(line: 132, column: 17, scope: !2382)
!2384 = !DILocation(line: 135, column: 49, scope: !2382)
!2385 = !DILocation(line: 135, column: 23, scope: !2382)
!2386 = !DILocation(line: 136, column: 19, scope: !2382)
!2387 = !DILocation(line: 137, column: 13, scope: !2382)
!2388 = !DILocation(line: 139, column: 49, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2376, file: !142, line: 138, column: 16)
!2390 = !DILocation(line: 139, column: 23, scope: !2389)
!2391 = !DILocation(line: 140, column: 70, scope: !2389)
!2392 = !DILocation(line: 140, column: 109, scope: !2389)
!2393 = !DILocation(line: 140, column: 134, scope: !2389)
!2394 = !DILocation(line: 140, column: 19, scope: !2389)
!2395 = !DILocation(line: 141, column: 13, scope: !2389)
!2396 = !DILocation(line: 144, column: 1, scope: !159)
!2397 = distinct !DISubprogram(name: "spim_fill_in_data", scope: !142, file: !142, line: 76, type: !2398, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!73, !162, !73, !73, !73}
!2400 = !{!2401, !2402, !2403, !2404, !2405}
!2401 = !DILocalVariable(name: "buf", arg: 1, scope: !2397, file: !142, line: 76, type: !162)
!2402 = !DILocalVariable(name: "write_buf_cnt", arg: 2, scope: !2397, file: !142, line: 76, type: !73)
!2403 = !DILocalVariable(name: "regVal", arg: 3, scope: !2397, file: !142, line: 76, type: !73)
!2404 = !DILocalVariable(name: "remainder", arg: 4, scope: !2397, file: !142, line: 76, type: !73)
!2405 = !DILocalVariable(name: "op_addr", scope: !2397, file: !142, line: 78, type: !73)
!2406 = !DILocation(line: 0, scope: !2397)
!2407 = !DILocation(line: 79, column: 16, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2397, file: !142, line: 79, column: 9)
!2409 = !DILocation(line: 79, column: 9, scope: !2397)
!2410 = !DILocation(line: 80, column: 13, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !142, line: 79, column: 44)
!2412 = !DILocation(line: 81, column: 46, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !142, line: 80, column: 29)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !142, line: 80, column: 13)
!2415 = !DILocation(line: 81, column: 30, scope: !2413)
!2416 = !DILocation(line: 81, column: 24, scope: !2413)
!2417 = !DILocation(line: 82, column: 9, scope: !2413)
!2418 = !DILocation(line: 83, column: 46, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !142, line: 82, column: 36)
!2420 = distinct !DILexicalBlock(scope: !2414, file: !142, line: 82, column: 20)
!2421 = !DILocation(line: 83, column: 30, scope: !2419)
!2422 = !DILocation(line: 83, column: 24, scope: !2419)
!2423 = !DILocation(line: 83, column: 79, scope: !2419)
!2424 = !DILocation(line: 83, column: 138, scope: !2419)
!2425 = !DILocation(line: 83, column: 88, scope: !2419)
!2426 = !DILocation(line: 83, column: 85, scope: !2419)
!2427 = !DILocation(line: 84, column: 9, scope: !2419)
!2428 = !DILocation(line: 85, column: 46, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !142, line: 84, column: 36)
!2430 = distinct !DILexicalBlock(scope: !2420, file: !142, line: 84, column: 20)
!2431 = !DILocation(line: 85, column: 30, scope: !2429)
!2432 = !DILocation(line: 85, column: 24, scope: !2429)
!2433 = !DILocation(line: 85, column: 79, scope: !2429)
!2434 = !DILocation(line: 85, column: 139, scope: !2429)
!2435 = !DILocation(line: 85, column: 89, scope: !2429)
!2436 = !DILocation(line: 85, column: 144, scope: !2429)
!2437 = !DILocation(line: 85, column: 86, scope: !2429)
!2438 = !DILocation(line: 85, column: 203, scope: !2429)
!2439 = !DILocation(line: 85, column: 153, scope: !2429)
!2440 = !DILocation(line: 85, column: 150, scope: !2429)
!2441 = !DILocation(line: 86, column: 9, scope: !2429)
!2442 = !DILocation(line: 87, column: 46, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !142, line: 86, column: 36)
!2444 = distinct !DILexicalBlock(scope: !2430, file: !142, line: 86, column: 20)
!2445 = !DILocation(line: 87, column: 30, scope: !2443)
!2446 = !DILocation(line: 87, column: 24, scope: !2443)
!2447 = !DILocation(line: 87, column: 79, scope: !2443)
!2448 = !DILocation(line: 87, column: 139, scope: !2443)
!2449 = !DILocation(line: 87, column: 89, scope: !2443)
!2450 = !DILocation(line: 87, column: 144, scope: !2443)
!2451 = !DILocation(line: 87, column: 86, scope: !2443)
!2452 = !DILocation(line: 87, column: 204, scope: !2443)
!2453 = !DILocation(line: 87, column: 154, scope: !2443)
!2454 = !DILocation(line: 87, column: 209, scope: !2443)
!2455 = !DILocation(line: 87, column: 151, scope: !2443)
!2456 = !DILocation(line: 87, column: 268, scope: !2443)
!2457 = !DILocation(line: 87, column: 218, scope: !2443)
!2458 = !DILocation(line: 87, column: 215, scope: !2443)
!2459 = !DILocation(line: 88, column: 9, scope: !2443)
!2460 = !DILocation(line: 90, column: 13, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2408, file: !142, line: 89, column: 12)
!2462 = !DILocation(line: 91, column: 46, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !142, line: 90, column: 29)
!2464 = distinct !DILexicalBlock(scope: !2461, file: !142, line: 90, column: 13)
!2465 = !DILocation(line: 91, column: 30, scope: !2463)
!2466 = !DILocation(line: 91, column: 24, scope: !2463)
!2467 = !DILocation(line: 92, column: 9, scope: !2463)
!2468 = !DILocation(line: 93, column: 46, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !142, line: 92, column: 36)
!2470 = distinct !DILexicalBlock(scope: !2464, file: !142, line: 92, column: 20)
!2471 = !DILocation(line: 93, column: 30, scope: !2469)
!2472 = !DILocation(line: 93, column: 24, scope: !2469)
!2473 = !DILocation(line: 93, column: 138, scope: !2469)
!2474 = !DILocation(line: 93, column: 88, scope: !2469)
!2475 = !DILocation(line: 93, column: 143, scope: !2469)
!2476 = !DILocation(line: 93, column: 85, scope: !2469)
!2477 = !DILocation(line: 94, column: 9, scope: !2469)
!2478 = !DILocation(line: 95, column: 46, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !142, line: 94, column: 36)
!2480 = distinct !DILexicalBlock(scope: !2470, file: !142, line: 94, column: 20)
!2481 = !DILocation(line: 95, column: 30, scope: !2479)
!2482 = !DILocation(line: 95, column: 24, scope: !2479)
!2483 = !DILocation(line: 95, column: 138, scope: !2479)
!2484 = !DILocation(line: 95, column: 88, scope: !2479)
!2485 = !DILocation(line: 95, column: 143, scope: !2479)
!2486 = !DILocation(line: 95, column: 85, scope: !2479)
!2487 = !DILocation(line: 95, column: 202, scope: !2479)
!2488 = !DILocation(line: 95, column: 152, scope: !2479)
!2489 = !DILocation(line: 95, column: 207, scope: !2479)
!2490 = !DILocation(line: 95, column: 149, scope: !2479)
!2491 = !DILocation(line: 96, column: 9, scope: !2479)
!2492 = !DILocation(line: 97, column: 46, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !142, line: 96, column: 36)
!2494 = distinct !DILexicalBlock(scope: !2480, file: !142, line: 96, column: 20)
!2495 = !DILocation(line: 97, column: 30, scope: !2493)
!2496 = !DILocation(line: 97, column: 24, scope: !2493)
!2497 = !DILocation(line: 97, column: 138, scope: !2493)
!2498 = !DILocation(line: 97, column: 88, scope: !2493)
!2499 = !DILocation(line: 97, column: 143, scope: !2493)
!2500 = !DILocation(line: 97, column: 85, scope: !2493)
!2501 = !DILocation(line: 97, column: 202, scope: !2493)
!2502 = !DILocation(line: 97, column: 152, scope: !2493)
!2503 = !DILocation(line: 97, column: 207, scope: !2493)
!2504 = !DILocation(line: 97, column: 149, scope: !2493)
!2505 = !DILocation(line: 97, column: 267, scope: !2493)
!2506 = !DILocation(line: 97, column: 217, scope: !2493)
!2507 = !DILocation(line: 97, column: 272, scope: !2493)
!2508 = !DILocation(line: 97, column: 214, scope: !2493)
!2509 = !DILocation(line: 98, column: 9, scope: !2493)
!2510 = !DILocation(line: 100, column: 5, scope: !2397)
!2511 = !DILocation(line: 0, scope: !178)
!2512 = !DILocation(line: 154, column: 24, scope: !178)
!2513 = !DILocation(line: 154, column: 14, scope: !178)
!2514 = !DILocation(line: 155, column: 27, scope: !178)
!2515 = !DILocation(line: 155, column: 17, scope: !178)
!2516 = !DILocation(line: 157, column: 18, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !178, file: !142, line: 157, column: 9)
!2518 = !DILocation(line: 157, column: 9, scope: !178)
!2519 = !DILocation(line: 158, column: 15, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !142, line: 157, column: 24)
!2521 = !DILocation(line: 159, column: 9, scope: !2520)
!2522 = !DILocation(line: 162, column: 9, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2517, file: !142, line: 160, column: 12)
!2524 = !DILocation(line: 163, column: 25, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !142, line: 163, column: 9)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !142, line: 163, column: 9)
!2527 = !DILocation(line: 163, column: 23, scope: !2525)
!2528 = !DILocation(line: 163, column: 9, scope: !2526)
!2529 = !DILocation(line: 164, column: 77, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !142, line: 163, column: 40)
!2531 = !DILocation(line: 164, column: 73, scope: !2530)
!2532 = !DILocation(line: 164, column: 19, scope: !2530)
!2533 = !DILocation(line: 163, column: 36, scope: !2525)
!2534 = distinct !{!2534, !2528, !2535}
!2535 = !DILocation(line: 165, column: 9, scope: !2526)
!2536 = !DILocation(line: 166, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2523, file: !142, line: 166, column: 13)
!2538 = !DILocation(line: 166, column: 23, scope: !2537)
!2539 = !DILocation(line: 166, column: 13, scope: !2523)
!2540 = !DILocation(line: 167, column: 84, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !142, line: 166, column: 29)
!2542 = !DILocation(line: 167, column: 73, scope: !2541)
!2543 = !DILocation(line: 167, column: 19, scope: !2541)
!2544 = !DILocation(line: 168, column: 9, scope: !2541)
!2545 = !DILocation(line: 0, scope: !2517)
!2546 = !DILocation(line: 171, column: 1, scope: !178)
!2547 = distinct !DISubprogram(name: "top_xtal_init", scope: !196, file: !196, line: 52, type: !81, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2548)
!2548 = !{!2549, !2550}
!2549 = !DILocalVariable(name: "u4RegVal", scope: !2547, file: !196, line: 54, type: !73)
!2550 = !DILocalVariable(name: "reg", scope: !2547, file: !196, line: 55, type: !61)
!2551 = !DILocation(line: 0, scope: !2547)
!2552 = !DILocation(line: 55, column: 25, scope: !2547)
!2553 = !DILocation(line: 56, column: 16, scope: !2547)
!2554 = !DILocation(line: 56, column: 23, scope: !2547)
!2555 = !DILocation(line: 58, column: 16, scope: !2547)
!2556 = !DILocation(line: 61, column: 5, scope: !2547)
!2557 = !DILocation(line: 59, column: 14, scope: !2547)
!2558 = !DILocation(line: 0, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2547, file: !196, line: 61, column: 18)
!2560 = !DILocation(line: 87, column: 38, scope: !2547)
!2561 = !DILocation(line: 88, column: 21, scope: !2547)
!2562 = !DILocation(line: 88, column: 19, scope: !2547)
!2563 = !DILocation(line: 89, column: 5, scope: !2547)
!2564 = !DILocation(line: 90, column: 17, scope: !2547)
!2565 = !DILocation(line: 90, column: 33, scope: !2547)
!2566 = !DILocation(line: 90, column: 5, scope: !2547)
!2567 = !DILocation(line: 91, column: 1, scope: !2547)
!2568 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !196, file: !196, line: 98, type: !2268, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2284)
!2569 = !DILocation(line: 100, column: 12, scope: !2568)
!2570 = !DILocation(line: 100, column: 5, scope: !2568)
!2571 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !196, file: !196, line: 108, type: !2268, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2284)
!2572 = !DILocation(line: 110, column: 12, scope: !2571)
!2573 = !DILocation(line: 110, column: 5, scope: !2571)
!2574 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !196, file: !196, line: 118, type: !81, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2575)
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "reg", scope: !2574, file: !196, line: 120, type: !72)
!2577 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2574, file: !196, line: 121, type: !71)
!2578 = !DILocation(line: 120, column: 5, scope: !2574)
!2579 = !DILocation(line: 120, column: 23, scope: !2574)
!2580 = !DILocation(line: 0, scope: !2574)
!2581 = !DILocation(line: 123, column: 11, scope: !2574)
!2582 = !DILocation(line: 123, column: 9, scope: !2574)
!2583 = !DILocation(line: 124, column: 12, scope: !2574)
!2584 = !DILocation(line: 124, column: 16, scope: !2574)
!2585 = !DILocation(line: 124, column: 39, scope: !2574)
!2586 = !DILocation(line: 124, column: 9, scope: !2574)
!2587 = !DILocation(line: 126, column: 9, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2574, file: !196, line: 126, column: 9)
!2589 = !DILocation(line: 126, column: 13, scope: !2588)
!2590 = !DILocation(line: 126, column: 9, scope: !2574)
!2591 = !DILocation(line: 127, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !196, line: 126, column: 47)
!2593 = !DILocation(line: 127, column: 13, scope: !2592)
!2594 = !DILocation(line: 128, column: 15, scope: !2592)
!2595 = !DILocation(line: 128, column: 19, scope: !2592)
!2596 = !DILocation(line: 128, column: 13, scope: !2592)
!2597 = !DILocation(line: 129, column: 15, scope: !2592)
!2598 = !DILocation(line: 129, column: 19, scope: !2592)
!2599 = !DILocation(line: 129, column: 13, scope: !2592)
!2600 = !DILocation(line: 130, column: 46, scope: !2592)
!2601 = !DILocation(line: 130, column: 9, scope: !2592)
!2602 = !DILocation(line: 132, column: 9, scope: !2592)
!2603 = !DILocation(line: 133, column: 19, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2592, file: !196, line: 132, column: 12)
!2605 = !DILocation(line: 133, column: 17, scope: !2604)
!2606 = !DILocation(line: 134, column: 19, scope: !2604)
!2607 = !DILocation(line: 134, column: 23, scope: !2604)
!2608 = !DILocation(line: 134, column: 17, scope: !2604)
!2609 = !DILocation(line: 135, column: 19, scope: !2592)
!2610 = !DILocation(line: 135, column: 18, scope: !2592)
!2611 = !DILocation(line: 135, column: 9, scope: !2604)
!2612 = distinct !{!2612, !2602, !2613}
!2613 = !DILocation(line: 135, column: 22, scope: !2592)
!2614 = !DILocation(line: 138, column: 1, scope: !2574)
!2615 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2010, file: !2010, line: 176, type: !2011, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2616)
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "Register", arg: 1, scope: !2615, file: !2010, line: 176, type: !2013)
!2618 = !DILocation(line: 0, scope: !2615)
!2619 = !DILocation(line: 178, column: 13, scope: !2615)
!2620 = !DILocation(line: 178, column: 12, scope: !2615)
!2621 = !DILocation(line: 178, column: 5, scope: !2615)
!2622 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2010, file: !2010, line: 171, type: !2623, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !2013, !73}
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "Register", arg: 1, scope: !2622, file: !2010, line: 171, type: !2013)
!2627 = !DILocalVariable(name: "Value", arg: 2, scope: !2622, file: !2010, line: 171, type: !73)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 173, column: 6, scope: !2622)
!2630 = !DILocation(line: 173, column: 36, scope: !2622)
!2631 = !DILocation(line: 174, column: 1, scope: !2622)
!2632 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !196, file: !196, line: 145, type: !2633, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{null, !163}
!2635 = !{!2636, !2637, !2638}
!2636 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2632, file: !196, line: 145, type: !163)
!2637 = !DILocalVariable(name: "reg", scope: !2632, file: !196, line: 147, type: !72)
!2638 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2632, file: !196, line: 148, type: !71)
!2639 = !DILocation(line: 0, scope: !2632)
!2640 = !DILocation(line: 147, column: 5, scope: !2632)
!2641 = !DILocation(line: 147, column: 23, scope: !2632)
!2642 = !DILocation(line: 150, column: 11, scope: !2632)
!2643 = !DILocation(line: 150, column: 9, scope: !2632)
!2644 = !DILocation(line: 151, column: 12, scope: !2632)
!2645 = !DILocation(line: 151, column: 16, scope: !2632)
!2646 = !DILocation(line: 151, column: 39, scope: !2632)
!2647 = !DILocation(line: 151, column: 9, scope: !2632)
!2648 = !DILocation(line: 153, column: 9, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2632, file: !196, line: 153, column: 9)
!2650 = !DILocation(line: 153, column: 13, scope: !2649)
!2651 = !DILocation(line: 153, column: 9, scope: !2632)
!2652 = !DILocation(line: 154, column: 15, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !196, line: 153, column: 45)
!2654 = !DILocation(line: 154, column: 13, scope: !2653)
!2655 = !DILocation(line: 155, column: 15, scope: !2653)
!2656 = !DILocation(line: 155, column: 19, scope: !2653)
!2657 = !DILocation(line: 155, column: 13, scope: !2653)
!2658 = !DILocation(line: 156, column: 15, scope: !2653)
!2659 = !DILocation(line: 156, column: 19, scope: !2653)
!2660 = !DILocation(line: 156, column: 13, scope: !2653)
!2661 = !DILocation(line: 157, column: 15, scope: !2653)
!2662 = !DILocation(line: 157, column: 13, scope: !2653)
!2663 = !DILocation(line: 158, column: 46, scope: !2653)
!2664 = !DILocation(line: 158, column: 9, scope: !2653)
!2665 = !DILocation(line: 160, column: 15, scope: !2653)
!2666 = !DILocation(line: 160, column: 13, scope: !2653)
!2667 = !DILocation(line: 161, column: 15, scope: !2653)
!2668 = !DILocation(line: 161, column: 19, scope: !2653)
!2669 = !DILocation(line: 161, column: 13, scope: !2653)
!2670 = !DILocation(line: 162, column: 15, scope: !2653)
!2671 = !DILocation(line: 162, column: 19, scope: !2653)
!2672 = !DILocation(line: 162, column: 13, scope: !2653)
!2673 = !DILocation(line: 163, column: 15, scope: !2653)
!2674 = !DILocation(line: 163, column: 19, scope: !2653)
!2675 = !DILocation(line: 163, column: 13, scope: !2653)
!2676 = !DILocation(line: 164, column: 46, scope: !2653)
!2677 = !DILocation(line: 164, column: 9, scope: !2653)
!2678 = !DILocation(line: 166, column: 9, scope: !2653)
!2679 = !DILocation(line: 167, column: 19, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2653, file: !196, line: 166, column: 12)
!2681 = !DILocation(line: 167, column: 17, scope: !2680)
!2682 = !DILocation(line: 168, column: 19, scope: !2680)
!2683 = !DILocation(line: 168, column: 23, scope: !2680)
!2684 = !DILocation(line: 168, column: 17, scope: !2680)
!2685 = !DILocation(line: 169, column: 19, scope: !2653)
!2686 = !DILocation(line: 169, column: 18, scope: !2653)
!2687 = !DILocation(line: 169, column: 9, scope: !2680)
!2688 = distinct !{!2688, !2678, !2689}
!2689 = !DILocation(line: 169, column: 22, scope: !2653)
!2690 = !DILocation(line: 171, column: 15, scope: !2653)
!2691 = !DILocation(line: 171, column: 13, scope: !2653)
!2692 = !DILocation(line: 172, column: 15, scope: !2653)
!2693 = !DILocation(line: 172, column: 19, scope: !2653)
!2694 = !DILocation(line: 172, column: 13, scope: !2653)
!2695 = !DILocation(line: 173, column: 15, scope: !2653)
!2696 = !DILocation(line: 173, column: 19, scope: !2653)
!2697 = !DILocation(line: 173, column: 13, scope: !2653)
!2698 = !DILocation(line: 174, column: 5, scope: !2653)
!2699 = !DILocation(line: 176, column: 11, scope: !2632)
!2700 = !DILocation(line: 176, column: 9, scope: !2632)
!2701 = !DILocation(line: 177, column: 9, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2632, file: !196, line: 177, column: 9)
!2703 = !DILocation(line: 0, scope: !2702)
!2704 = !DILocation(line: 177, column: 9, scope: !2632)
!2705 = !DILocation(line: 178, column: 19, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !196, line: 177, column: 17)
!2707 = !DILocation(line: 178, column: 13, scope: !2706)
!2708 = !DILocation(line: 179, column: 5, scope: !2706)
!2709 = !DILocation(line: 180, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2702, file: !196, line: 179, column: 12)
!2711 = !DILocation(line: 182, column: 42, scope: !2632)
!2712 = !DILocation(line: 182, column: 5, scope: !2632)
!2713 = !DILocation(line: 184, column: 1, scope: !2632)
!2714 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !196, file: !196, line: 191, type: !81, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2715)
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "reg", scope: !2714, file: !196, line: 193, type: !72)
!2717 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2714, file: !196, line: 194, type: !71)
!2718 = !DILocation(line: 193, column: 5, scope: !2714)
!2719 = !DILocation(line: 193, column: 23, scope: !2714)
!2720 = !DILocation(line: 0, scope: !2714)
!2721 = !DILocation(line: 196, column: 11, scope: !2714)
!2722 = !DILocation(line: 196, column: 9, scope: !2714)
!2723 = !DILocation(line: 197, column: 11, scope: !2714)
!2724 = !DILocation(line: 197, column: 15, scope: !2714)
!2725 = !DILocation(line: 197, column: 9, scope: !2714)
!2726 = !DILocation(line: 198, column: 11, scope: !2714)
!2727 = !DILocation(line: 198, column: 15, scope: !2714)
!2728 = !DILocation(line: 198, column: 9, scope: !2714)
!2729 = !DILocation(line: 199, column: 11, scope: !2714)
!2730 = !DILocation(line: 199, column: 9, scope: !2714)
!2731 = !DILocation(line: 200, column: 42, scope: !2714)
!2732 = !DILocation(line: 200, column: 5, scope: !2714)
!2733 = !DILocation(line: 202, column: 11, scope: !2714)
!2734 = !DILocation(line: 202, column: 9, scope: !2714)
!2735 = !DILocation(line: 203, column: 11, scope: !2714)
!2736 = !DILocation(line: 203, column: 15, scope: !2714)
!2737 = !DILocation(line: 203, column: 9, scope: !2714)
!2738 = !DILocation(line: 204, column: 11, scope: !2714)
!2739 = !DILocation(line: 204, column: 15, scope: !2714)
!2740 = !DILocation(line: 204, column: 9, scope: !2714)
!2741 = !DILocation(line: 205, column: 11, scope: !2714)
!2742 = !DILocation(line: 205, column: 9, scope: !2714)
!2743 = !DILocation(line: 206, column: 42, scope: !2714)
!2744 = !DILocation(line: 206, column: 5, scope: !2714)
!2745 = !DILocation(line: 209, column: 1, scope: !2714)
!2746 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !196, file: !196, line: 216, type: !81, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2747)
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "reg", scope: !2746, file: !196, line: 218, type: !72)
!2749 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2746, file: !196, line: 219, type: !71)
!2750 = !DILocation(line: 218, column: 5, scope: !2746)
!2751 = !DILocation(line: 218, column: 23, scope: !2746)
!2752 = !DILocation(line: 0, scope: !2746)
!2753 = !DILocation(line: 222, column: 11, scope: !2746)
!2754 = !DILocation(line: 222, column: 9, scope: !2746)
!2755 = !DILocation(line: 223, column: 11, scope: !2746)
!2756 = !DILocation(line: 223, column: 15, scope: !2746)
!2757 = !DILocation(line: 223, column: 9, scope: !2746)
!2758 = !DILocation(line: 224, column: 11, scope: !2746)
!2759 = !DILocation(line: 224, column: 9, scope: !2746)
!2760 = !DILocation(line: 225, column: 39, scope: !2746)
!2761 = !DILocation(line: 225, column: 5, scope: !2746)
!2762 = !DILocation(line: 228, column: 11, scope: !2746)
!2763 = !DILocation(line: 228, column: 9, scope: !2746)
!2764 = !DILocation(line: 229, column: 11, scope: !2746)
!2765 = !DILocation(line: 229, column: 15, scope: !2746)
!2766 = !DILocation(line: 229, column: 9, scope: !2746)
!2767 = !DILocation(line: 230, column: 11, scope: !2746)
!2768 = !DILocation(line: 230, column: 9, scope: !2746)
!2769 = !DILocation(line: 231, column: 39, scope: !2746)
!2770 = !DILocation(line: 231, column: 5, scope: !2746)
!2771 = !DILocation(line: 233, column: 5, scope: !2746)
!2772 = !DILocation(line: 233, column: 12, scope: !2746)
!2773 = !DILocation(line: 233, column: 19, scope: !2746)
!2774 = !DILocation(line: 233, column: 16, scope: !2746)
!2775 = distinct !{!2775, !2771, !2776}
!2776 = !DILocation(line: 233, column: 52, scope: !2746)
!2777 = !DILocation(line: 235, column: 21, scope: !2746)
!2778 = !DILocation(line: 235, column: 19, scope: !2746)
!2779 = !DILocation(line: 236, column: 5, scope: !2746)
!2780 = !DILocation(line: 237, column: 17, scope: !2746)
!2781 = !DILocation(line: 237, column: 33, scope: !2746)
!2782 = !DILocation(line: 237, column: 5, scope: !2746)
!2783 = !DILocation(line: 239, column: 1, scope: !2746)
!2784 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !196, file: !196, line: 246, type: !81, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2785)
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "reg", scope: !2784, file: !196, line: 248, type: !72)
!2787 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2784, file: !196, line: 249, type: !71)
!2788 = !DILocation(line: 248, column: 5, scope: !2784)
!2789 = !DILocation(line: 248, column: 23, scope: !2784)
!2790 = !DILocation(line: 0, scope: !2784)
!2791 = !DILocation(line: 252, column: 5, scope: !2784)
!2792 = !DILocation(line: 255, column: 11, scope: !2784)
!2793 = !DILocation(line: 255, column: 9, scope: !2784)
!2794 = !DILocation(line: 256, column: 11, scope: !2784)
!2795 = !DILocation(line: 256, column: 15, scope: !2784)
!2796 = !DILocation(line: 256, column: 9, scope: !2784)
!2797 = !DILocation(line: 257, column: 11, scope: !2784)
!2798 = !DILocation(line: 257, column: 15, scope: !2784)
!2799 = !DILocation(line: 257, column: 9, scope: !2784)
!2800 = !DILocation(line: 258, column: 39, scope: !2784)
!2801 = !DILocation(line: 258, column: 5, scope: !2784)
!2802 = !DILocation(line: 260, column: 5, scope: !2784)
!2803 = !DILocation(line: 260, column: 12, scope: !2784)
!2804 = !DILocation(line: 260, column: 19, scope: !2784)
!2805 = !DILocation(line: 260, column: 16, scope: !2784)
!2806 = distinct !{!2806, !2802, !2807}
!2807 = !DILocation(line: 260, column: 52, scope: !2784)
!2808 = !DILocation(line: 263, column: 11, scope: !2784)
!2809 = !DILocation(line: 263, column: 9, scope: !2784)
!2810 = !DILocation(line: 264, column: 11, scope: !2784)
!2811 = !DILocation(line: 264, column: 15, scope: !2784)
!2812 = !DILocation(line: 264, column: 9, scope: !2784)
!2813 = !DILocation(line: 265, column: 11, scope: !2784)
!2814 = !DILocation(line: 265, column: 15, scope: !2784)
!2815 = !DILocation(line: 265, column: 9, scope: !2784)
!2816 = !DILocation(line: 266, column: 39, scope: !2784)
!2817 = !DILocation(line: 266, column: 5, scope: !2784)
!2818 = !DILocation(line: 269, column: 11, scope: !2784)
!2819 = !DILocation(line: 269, column: 9, scope: !2784)
!2820 = !DILocation(line: 270, column: 11, scope: !2784)
!2821 = !DILocation(line: 270, column: 15, scope: !2784)
!2822 = !DILocation(line: 270, column: 9, scope: !2784)
!2823 = !DILocation(line: 271, column: 11, scope: !2784)
!2824 = !DILocation(line: 271, column: 15, scope: !2784)
!2825 = !DILocation(line: 271, column: 9, scope: !2784)
!2826 = !DILocation(line: 272, column: 39, scope: !2784)
!2827 = !DILocation(line: 272, column: 5, scope: !2784)
!2828 = !DILocation(line: 273, column: 19, scope: !2784)
!2829 = !DILocation(line: 274, column: 5, scope: !2784)
!2830 = !DILocation(line: 275, column: 17, scope: !2784)
!2831 = !DILocation(line: 275, column: 33, scope: !2784)
!2832 = !DILocation(line: 275, column: 5, scope: !2784)
!2833 = !DILocation(line: 277, column: 1, scope: !2784)
!2834 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !196, file: !196, line: 284, type: !81, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2835)
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "reg", scope: !2834, file: !196, line: 286, type: !72)
!2837 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2834, file: !196, line: 287, type: !71)
!2838 = !DILocation(line: 286, column: 5, scope: !2834)
!2839 = !DILocation(line: 286, column: 23, scope: !2834)
!2840 = !DILocation(line: 0, scope: !2834)
!2841 = !DILocation(line: 290, column: 5, scope: !2834)
!2842 = !DILocation(line: 293, column: 11, scope: !2834)
!2843 = !DILocation(line: 293, column: 9, scope: !2834)
!2844 = !DILocation(line: 294, column: 11, scope: !2834)
!2845 = !DILocation(line: 294, column: 15, scope: !2834)
!2846 = !DILocation(line: 294, column: 9, scope: !2834)
!2847 = !DILocation(line: 295, column: 11, scope: !2834)
!2848 = !DILocation(line: 295, column: 15, scope: !2834)
!2849 = !DILocation(line: 295, column: 9, scope: !2834)
!2850 = !DILocation(line: 296, column: 39, scope: !2834)
!2851 = !DILocation(line: 296, column: 5, scope: !2834)
!2852 = !DILocation(line: 298, column: 5, scope: !2834)
!2853 = !DILocation(line: 298, column: 12, scope: !2834)
!2854 = !DILocation(line: 298, column: 19, scope: !2834)
!2855 = !DILocation(line: 298, column: 16, scope: !2834)
!2856 = distinct !{!2856, !2852, !2857}
!2857 = !DILocation(line: 298, column: 52, scope: !2834)
!2858 = !DILocation(line: 301, column: 11, scope: !2834)
!2859 = !DILocation(line: 301, column: 9, scope: !2834)
!2860 = !DILocation(line: 302, column: 11, scope: !2834)
!2861 = !DILocation(line: 302, column: 15, scope: !2834)
!2862 = !DILocation(line: 302, column: 9, scope: !2834)
!2863 = !DILocation(line: 303, column: 11, scope: !2834)
!2864 = !DILocation(line: 303, column: 15, scope: !2834)
!2865 = !DILocation(line: 303, column: 9, scope: !2834)
!2866 = !DILocation(line: 304, column: 39, scope: !2834)
!2867 = !DILocation(line: 304, column: 5, scope: !2834)
!2868 = !DILocation(line: 307, column: 11, scope: !2834)
!2869 = !DILocation(line: 307, column: 9, scope: !2834)
!2870 = !DILocation(line: 308, column: 11, scope: !2834)
!2871 = !DILocation(line: 308, column: 15, scope: !2834)
!2872 = !DILocation(line: 308, column: 9, scope: !2834)
!2873 = !DILocation(line: 309, column: 11, scope: !2834)
!2874 = !DILocation(line: 309, column: 15, scope: !2834)
!2875 = !DILocation(line: 309, column: 9, scope: !2834)
!2876 = !DILocation(line: 310, column: 39, scope: !2834)
!2877 = !DILocation(line: 310, column: 5, scope: !2834)
!2878 = !DILocation(line: 311, column: 19, scope: !2834)
!2879 = !DILocation(line: 312, column: 5, scope: !2834)
!2880 = !DILocation(line: 313, column: 17, scope: !2834)
!2881 = !DILocation(line: 313, column: 33, scope: !2834)
!2882 = !DILocation(line: 313, column: 5, scope: !2834)
!2883 = !DILocation(line: 315, column: 1, scope: !2834)
!2884 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !196, file: !196, line: 323, type: !81, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2885)
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "reg", scope: !2884, file: !196, line: 325, type: !72)
!2887 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2884, file: !196, line: 326, type: !71)
!2888 = !DILocation(line: 325, column: 5, scope: !2884)
!2889 = !DILocation(line: 325, column: 23, scope: !2884)
!2890 = !DILocation(line: 0, scope: !2884)
!2891 = !DILocation(line: 329, column: 5, scope: !2884)
!2892 = !DILocation(line: 332, column: 11, scope: !2884)
!2893 = !DILocation(line: 332, column: 9, scope: !2884)
!2894 = !DILocation(line: 333, column: 11, scope: !2884)
!2895 = !DILocation(line: 333, column: 15, scope: !2884)
!2896 = !DILocation(line: 333, column: 9, scope: !2884)
!2897 = !DILocation(line: 334, column: 11, scope: !2884)
!2898 = !DILocation(line: 334, column: 9, scope: !2884)
!2899 = !DILocation(line: 335, column: 39, scope: !2884)
!2900 = !DILocation(line: 335, column: 5, scope: !2884)
!2901 = !DILocation(line: 337, column: 5, scope: !2884)
!2902 = !DILocation(line: 337, column: 12, scope: !2884)
!2903 = !DILocation(line: 337, column: 19, scope: !2884)
!2904 = !DILocation(line: 337, column: 16, scope: !2884)
!2905 = distinct !{!2905, !2901, !2906}
!2906 = !DILocation(line: 337, column: 52, scope: !2884)
!2907 = !DILocation(line: 340, column: 11, scope: !2884)
!2908 = !DILocation(line: 340, column: 9, scope: !2884)
!2909 = !DILocation(line: 341, column: 11, scope: !2884)
!2910 = !DILocation(line: 341, column: 15, scope: !2884)
!2911 = !DILocation(line: 341, column: 9, scope: !2884)
!2912 = !DILocation(line: 342, column: 11, scope: !2884)
!2913 = !DILocation(line: 342, column: 15, scope: !2884)
!2914 = !DILocation(line: 342, column: 9, scope: !2884)
!2915 = !DILocation(line: 343, column: 39, scope: !2884)
!2916 = !DILocation(line: 343, column: 5, scope: !2884)
!2917 = !DILocation(line: 344, column: 19, scope: !2884)
!2918 = !DILocation(line: 345, column: 5, scope: !2884)
!2919 = !DILocation(line: 346, column: 17, scope: !2884)
!2920 = !DILocation(line: 346, column: 33, scope: !2884)
!2921 = !DILocation(line: 346, column: 5, scope: !2884)
!2922 = !DILocation(line: 348, column: 1, scope: !2884)
!2923 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !196, file: !196, line: 353, type: !81, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2924)
!2924 = !{!2925, !2926}
!2925 = !DILocalVariable(name: "reg", scope: !2923, file: !196, line: 355, type: !63)
!2926 = !DILocalVariable(name: "pTopCfgHclk", scope: !2923, file: !196, line: 356, type: !62)
!2927 = !DILocation(line: 355, column: 5, scope: !2923)
!2928 = !DILocation(line: 355, column: 21, scope: !2923)
!2929 = !DILocation(line: 0, scope: !2923)
!2930 = !DILocation(line: 358, column: 11, scope: !2923)
!2931 = !DILocation(line: 358, column: 9, scope: !2923)
!2932 = !DILocation(line: 359, column: 11, scope: !2923)
!2933 = !DILocation(line: 359, column: 15, scope: !2923)
!2934 = !DILocation(line: 359, column: 9, scope: !2923)
!2935 = !DILocation(line: 360, column: 11, scope: !2923)
!2936 = !DILocation(line: 360, column: 9, scope: !2923)
!2937 = !DILocation(line: 361, column: 37, scope: !2923)
!2938 = !DILocation(line: 361, column: 5, scope: !2923)
!2939 = !DILocation(line: 362, column: 1, scope: !2923)
!2940 = distinct !DISubprogram(name: "getc", scope: !206, file: !206, line: 68, type: !2941, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!7}
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "rc", scope: !2940, file: !206, line: 71, type: !7)
!2945 = !DILocation(line: 71, column: 14, scope: !2940)
!2946 = !DILocation(line: 0, scope: !2940)
!2947 = !DILocation(line: 72, column: 5, scope: !2940)
!2948 = distinct !DISubprogram(name: "getc_nowait", scope: !206, file: !206, line: 80, type: !2941, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2949)
!2949 = !{!2950}
!2950 = !DILocalVariable(name: "c", scope: !2948, file: !206, line: 82, type: !575)
!2951 = !DILocation(line: 84, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !206, line: 84, column: 9)
!2953 = !DILocation(line: 84, column: 40, scope: !2952)
!2954 = !DILocation(line: 84, column: 9, scope: !2948)
!2955 = !DILocation(line: 85, column: 13, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !206, line: 84, column: 47)
!2957 = !DILocation(line: 86, column: 16, scope: !2956)
!2958 = !DILocation(line: 0, scope: !2948)
!2959 = !DILocation(line: 86, column: 9, scope: !2956)
!2960 = !DILocation(line: 0, scope: !2952)
!2961 = !DILocation(line: 90, column: 1, scope: !2948)
!2962 = distinct !DISubprogram(name: "uart_output_char", scope: !206, file: !206, line: 93, type: !2963, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2966)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2965, !70}
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !209, line: 75, baseType: !208)
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "port_no", arg: 1, scope: !2962, file: !206, line: 93, type: !2965)
!2968 = !DILocalVariable(name: "c", arg: 2, scope: !2962, file: !206, line: 93, type: !70)
!2969 = !DILocalVariable(name: "base", scope: !2962, file: !206, line: 95, type: !53)
!2970 = !DILocation(line: 0, scope: !2962)
!2971 = !DILocation(line: 95, column: 25, scope: !2962)
!2972 = !DILocation(line: 97, column: 5, scope: !2962)
!2973 = !DILocation(line: 97, column: 14, scope: !2962)
!2974 = !DILocation(line: 97, column: 42, scope: !2962)
!2975 = !DILocation(line: 97, column: 12, scope: !2962)
!2976 = distinct !{!2976, !2972, !2977}
!2977 = !DILocation(line: 98, column: 9, scope: !2962)
!2978 = !DILocation(line: 99, column: 35, scope: !2962)
!2979 = !DILocation(line: 99, column: 5, scope: !2962)
!2980 = !DILocation(line: 99, column: 33, scope: !2962)
!2981 = !DILocation(line: 102, column: 1, scope: !2962)
!2982 = distinct !DISubprogram(name: "uart_input_char", scope: !206, file: !206, line: 106, type: !2983, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!163, !2965}
!2985 = !{!2986, !2987, !2988}
!2986 = !DILocalVariable(name: "port_no", arg: 1, scope: !2982, file: !206, line: 106, type: !2965)
!2987 = !DILocalVariable(name: "base", scope: !2982, file: !206, line: 108, type: !53)
!2988 = !DILocalVariable(name: "c", scope: !2982, file: !206, line: 109, type: !575)
!2989 = !DILocation(line: 0, scope: !2982)
!2990 = !DILocation(line: 108, column: 25, scope: !2982)
!2991 = !DILocation(line: 111, column: 5, scope: !2982)
!2992 = !DILocation(line: 111, column: 14, scope: !2982)
!2993 = !DILocation(line: 111, column: 42, scope: !2982)
!2994 = !DILocation(line: 111, column: 12, scope: !2982)
!2995 = distinct !{!2995, !2991, !2996}
!2996 = !DILocation(line: 112, column: 9, scope: !2982)
!2997 = !DILocation(line: 114, column: 9, scope: !2982)
!2998 = !DILocation(line: 116, column: 5, scope: !2982)
!2999 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !206, file: !206, line: 120, type: !3000, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!73, !2965}
!3002 = !{!3003, !3004, !3005}
!3003 = !DILocalVariable(name: "port_no", arg: 1, scope: !2999, file: !206, line: 120, type: !2965)
!3004 = !DILocalVariable(name: "base", scope: !2999, file: !206, line: 122, type: !53)
!3005 = !DILocalVariable(name: "c", scope: !2999, file: !206, line: 123, type: !575)
!3006 = !DILocation(line: 0, scope: !2999)
!3007 = !DILocation(line: 122, column: 25, scope: !2999)
!3008 = !DILocation(line: 125, column: 9, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2999, file: !206, line: 125, column: 9)
!3010 = !DILocation(line: 125, column: 37, scope: !3009)
!3011 = !DILocation(line: 125, column: 9, scope: !2999)
!3012 = !DILocation(line: 126, column: 13, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !206, line: 125, column: 44)
!3014 = !DILocation(line: 127, column: 16, scope: !3013)
!3015 = !DILocation(line: 127, column: 9, scope: !3013)
!3016 = !DILocation(line: 0, scope: !3009)
!3017 = !DILocation(line: 131, column: 1, scope: !2999)
!3018 = distinct !DISubprogram(name: "halUART_HWInit", scope: !206, file: !206, line: 136, type: !3019, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !2965}
!3021 = !{!3022}
!3022 = !DILocalVariable(name: "u_port", arg: 1, scope: !3018, file: !206, line: 136, type: !2965)
!3023 = !DILocation(line: 0, scope: !3018)
!3024 = !DILocation(line: 139, column: 5, scope: !3018)
!3025 = !DILocation(line: 140, column: 9, scope: !3018)
!3026 = !DILocation(line: 153, column: 5, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !206, line: 147, column: 38)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !206, line: 147, column: 16)
!3029 = distinct !DILexicalBlock(scope: !3018, file: !206, line: 140, column: 9)
!3030 = !DILocation(line: 0, scope: !3029)
!3031 = !DILocation(line: 155, column: 1, scope: !3018)
!3032 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !206, file: !206, line: 158, type: !3033, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3037)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !2965, !73, !3035, !3035, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !74, line: 36, baseType: !3036)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !76, line: 57, baseType: !235)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3053, !3054}
!3038 = !DILocalVariable(name: "u_port", arg: 1, scope: !3032, file: !206, line: 158, type: !2965)
!3039 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3032, file: !206, line: 158, type: !73)
!3040 = !DILocalVariable(name: "databit", arg: 3, scope: !3032, file: !206, line: 158, type: !3035)
!3041 = !DILocalVariable(name: "parity", arg: 4, scope: !3032, file: !206, line: 158, type: !3035)
!3042 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3032, file: !206, line: 158, type: !3035)
!3043 = !DILocalVariable(name: "control_word", scope: !3032, file: !206, line: 160, type: !3035)
!3044 = !DILocalVariable(name: "UART_BASE", scope: !3032, file: !206, line: 161, type: !73)
!3045 = !DILocalVariable(name: "data", scope: !3032, file: !206, line: 162, type: !73)
!3046 = !DILocalVariable(name: "uart_lcr", scope: !3032, file: !206, line: 162, type: !73)
!3047 = !DILocalVariable(name: "high_speed_div", scope: !3032, file: !206, line: 162, type: !73)
!3048 = !DILocalVariable(name: "sample_count", scope: !3032, file: !206, line: 162, type: !73)
!3049 = !DILocalVariable(name: "sample_point", scope: !3032, file: !206, line: 162, type: !73)
!3050 = !DILocalVariable(name: "fraction", scope: !3032, file: !206, line: 162, type: !73)
!3051 = !DILocalVariable(name: "fraction_L_mapping", scope: !3032, file: !206, line: 163, type: !3052)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 176, elements: !906)
!3053 = !DILocalVariable(name: "fraction_M_mapping", scope: !3032, file: !206, line: 164, type: !3052)
!3054 = !DILocalVariable(name: "status", scope: !3032, file: !206, line: 165, type: !154)
!3055 = !DILocation(line: 0, scope: !3032)
!3056 = !DILocation(line: 163, column: 15, scope: !3032)
!3057 = !DILocation(line: 164, column: 15, scope: !3032)
!3058 = !DILocation(line: 166, column: 20, scope: !3032)
!3059 = !DILocation(line: 166, column: 18, scope: !3032)
!3060 = !DILocation(line: 168, column: 9, scope: !3032)
!3061 = !DILocation(line: 176, column: 5, scope: !3032)
!3062 = !DILocation(line: 176, column: 44, scope: !3032)
!3063 = !DILocation(line: 177, column: 16, scope: !3032)
!3064 = !DILocation(line: 178, column: 50, scope: !3032)
!3065 = !DILocation(line: 178, column: 38, scope: !3032)
!3066 = !DILocation(line: 179, column: 12, scope: !3032)
!3067 = !DILocation(line: 179, column: 25, scope: !3032)
!3068 = !DILocation(line: 180, column: 28, scope: !3032)
!3069 = !DILocation(line: 180, column: 34, scope: !3032)
!3070 = !DILocation(line: 182, column: 29, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3032, file: !206, line: 181, column: 5)
!3072 = !DILocation(line: 182, column: 46, scope: !3071)
!3073 = !DILocation(line: 183, column: 26, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3071, file: !206, line: 183, column: 13)
!3075 = !DILocation(line: 183, column: 13, scope: !3071)
!3076 = !DILocation(line: 192, column: 30, scope: !3032)
!3077 = !DILocation(line: 192, column: 35, scope: !3032)
!3078 = !DILocation(line: 192, column: 46, scope: !3032)
!3079 = !DILocation(line: 192, column: 74, scope: !3032)
!3080 = !DILocation(line: 192, column: 53, scope: !3032)
!3081 = !DILocation(line: 192, column: 80, scope: !3032)
!3082 = !DILocation(line: 193, column: 56, scope: !3032)
!3083 = !DILocation(line: 193, column: 5, scope: !3032)
!3084 = !DILocation(line: 193, column: 38, scope: !3032)
!3085 = !DILocation(line: 194, column: 57, scope: !3032)
!3086 = !DILocation(line: 194, column: 63, scope: !3032)
!3087 = !DILocation(line: 194, column: 5, scope: !3032)
!3088 = !DILocation(line: 194, column: 38, scope: !3032)
!3089 = !DILocation(line: 195, column: 5, scope: !3032)
!3090 = !DILocation(line: 195, column: 45, scope: !3032)
!3091 = !DILocation(line: 196, column: 5, scope: !3032)
!3092 = !DILocation(line: 196, column: 47, scope: !3032)
!3093 = !DILocation(line: 197, column: 46, scope: !3032)
!3094 = !DILocation(line: 197, column: 5, scope: !3032)
!3095 = !DILocation(line: 197, column: 44, scope: !3032)
!3096 = !DILocation(line: 198, column: 46, scope: !3032)
!3097 = !DILocation(line: 198, column: 5, scope: !3032)
!3098 = !DILocation(line: 198, column: 44, scope: !3032)
!3099 = !DILocation(line: 199, column: 38, scope: !3032)
!3100 = !DILocation(line: 200, column: 5, scope: !3032)
!3101 = !DILocation(line: 200, column: 38, scope: !3032)
!3102 = !DILocation(line: 202, column: 20, scope: !3032)
!3103 = !DILocation(line: 203, column: 18, scope: !3032)
!3104 = !DILocation(line: 205, column: 18, scope: !3032)
!3105 = !DILocation(line: 207, column: 18, scope: !3032)
!3106 = !DILocation(line: 208, column: 18, scope: !3032)
!3107 = !DILocation(line: 209, column: 5, scope: !3032)
!3108 = !DILocation(line: 213, column: 1, scope: !3032)
!3109 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !206, file: !206, line: 215, type: !3110, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3113)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !2965, !154, !3112}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!3113 = !{!3114, !3115, !3116}
!3114 = !DILocalVariable(name: "u_port", arg: 1, scope: !3109, file: !206, line: 215, type: !2965)
!3115 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3109, file: !206, line: 215, type: !154)
!3116 = !DILocalVariable(name: "length", arg: 3, scope: !3109, file: !206, line: 215, type: !3112)
!3117 = !DILocation(line: 0, scope: !3109)
!3118 = !DILocation(line: 217, column: 16, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3109, file: !206, line: 217, column: 9)
!3120 = !DILocation(line: 0, scope: !3119)
!3121 = !DILocation(line: 217, column: 9, scope: !3109)
!3122 = !DILocation(line: 218, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !206, line: 217, column: 31)
!3124 = !DILocation(line: 219, column: 23, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !206, line: 218, column: 20)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !206, line: 218, column: 13)
!3127 = !DILocation(line: 220, column: 9, scope: !3125)
!3128 = !DILocation(line: 221, column: 23, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !206, line: 220, column: 16)
!3130 = !DILocation(line: 221, column: 21, scope: !3129)
!3131 = !DILocation(line: 222, column: 24, scope: !3129)
!3132 = !DILocation(line: 222, column: 21, scope: !3129)
!3133 = !DILocation(line: 225, column: 13, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3119, file: !206, line: 224, column: 12)
!3135 = !DILocation(line: 226, column: 23, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !206, line: 225, column: 20)
!3137 = distinct !DILexicalBlock(scope: !3134, file: !206, line: 225, column: 13)
!3138 = !DILocation(line: 227, column: 9, scope: !3136)
!3139 = !DILocation(line: 228, column: 23, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !206, line: 227, column: 16)
!3141 = !DILocation(line: 228, column: 21, scope: !3140)
!3142 = !DILocation(line: 229, column: 24, scope: !3140)
!3143 = !DILocation(line: 229, column: 21, scope: !3140)
!3144 = !DILocation(line: 233, column: 5, scope: !3109)
!3145 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !206, file: !206, line: 236, type: !3146, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2965, !162, !73}
!3148 = !{!3149, !3150, !3151, !3152}
!3149 = !DILocalVariable(name: "u_port", arg: 1, scope: !3145, file: !206, line: 236, type: !2965)
!3150 = !DILocalVariable(name: "data", arg: 2, scope: !3145, file: !206, line: 236, type: !162)
!3151 = !DILocalVariable(name: "length", arg: 3, scope: !3145, file: !206, line: 236, type: !73)
!3152 = !DILocalVariable(name: "idx", scope: !3145, file: !206, line: 238, type: !64)
!3153 = !DILocation(line: 0, scope: !3145)
!3154 = !DILocation(line: 239, column: 23, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !206, line: 239, column: 5)
!3156 = distinct !DILexicalBlock(scope: !3145, file: !206, line: 239, column: 5)
!3157 = !DILocation(line: 239, column: 5, scope: !3156)
!3158 = !DILocation(line: 240, column: 13, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !206, line: 239, column: 40)
!3160 = !DILocation(line: 244, column: 9, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !206, line: 242, column: 42)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !206, line: 242, column: 20)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !206, line: 240, column: 13)
!3164 = !DILocation(line: 0, scope: !3163)
!3165 = !DILocation(line: 239, column: 36, scope: !3155)
!3166 = distinct !{!3166, !3157, !3167}
!3167 = !DILocation(line: 246, column: 5, scope: !3156)
!3168 = !DILocation(line: 249, column: 1, scope: !3145)
!3169 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !206, file: !206, line: 251, type: !3170, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3174)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !2965, !3172, !73}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!3174 = !{!3175, !3176, !3177, !3178}
!3175 = !DILocalVariable(name: "u_port", arg: 1, scope: !3169, file: !206, line: 251, type: !2965)
!3176 = !DILocalVariable(name: "data", arg: 2, scope: !3169, file: !206, line: 251, type: !3172)
!3177 = !DILocalVariable(name: "length", arg: 3, scope: !3169, file: !206, line: 251, type: !73)
!3178 = !DILocalVariable(name: "idx", scope: !3169, file: !206, line: 253, type: !64)
!3179 = !DILocation(line: 0, scope: !3169)
!3180 = !DILocation(line: 254, column: 23, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !206, line: 254, column: 5)
!3182 = distinct !DILexicalBlock(scope: !3169, file: !206, line: 254, column: 5)
!3183 = !DILocation(line: 254, column: 5, scope: !3182)
!3184 = !DILocation(line: 255, column: 13, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !206, line: 254, column: 40)
!3186 = !DILocation(line: 256, column: 61, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !206, line: 255, column: 35)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !206, line: 255, column: 13)
!3189 = !DILocation(line: 256, column: 59, scope: !3187)
!3190 = !DILocation(line: 257, column: 9, scope: !3187)
!3191 = !DILocation(line: 258, column: 61, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !206, line: 257, column: 42)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !206, line: 257, column: 20)
!3194 = !DILocation(line: 258, column: 59, scope: !3192)
!3195 = !DILocation(line: 259, column: 9, scope: !3192)
!3196 = !DILocation(line: 254, column: 36, scope: !3181)
!3197 = distinct !{!3197, !3183, !3198}
!3198 = !DILocation(line: 261, column: 5, scope: !3182)
!3199 = !DILocation(line: 264, column: 1, scope: !3169)
!3200 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !206, file: !206, line: 266, type: !3201, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !2965, !162, !73, !73}
!3203 = !{!3204, !3205, !3206, !3207}
!3204 = !DILocalVariable(name: "u_port", arg: 1, scope: !3200, file: !206, line: 266, type: !2965)
!3205 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3200, file: !206, line: 266, type: !162)
!3206 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3200, file: !206, line: 266, type: !73)
!3207 = !DILocalVariable(name: "threshold", arg: 4, scope: !3200, file: !206, line: 266, type: !73)
!3208 = !DILocation(line: 0, scope: !3200)
!3209 = !DILocation(line: 268, column: 9, scope: !3200)
!3210 = !DILocation(line: 274, column: 5, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !206, line: 271, column: 38)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !206, line: 271, column: 16)
!3213 = distinct !DILexicalBlock(scope: !3200, file: !206, line: 268, column: 9)
!3214 = !DILocation(line: 0, scope: !3213)
!3215 = !DILocation(line: 276, column: 1, scope: !3200)
!3216 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !206, file: !206, line: 278, type: !3217, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !2965, !162, !73, !73, !73, !73}
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225}
!3220 = !DILocalVariable(name: "u_port", arg: 1, scope: !3216, file: !206, line: 278, type: !2965)
!3221 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3216, file: !206, line: 278, type: !162)
!3222 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3216, file: !206, line: 278, type: !73)
!3223 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3216, file: !206, line: 278, type: !73)
!3224 = !DILocalVariable(name: "threshold", arg: 5, scope: !3216, file: !206, line: 278, type: !73)
!3225 = !DILocalVariable(name: "timeout", arg: 6, scope: !3216, file: !206, line: 278, type: !73)
!3226 = !DILocation(line: 0, scope: !3216)
!3227 = !DILocation(line: 280, column: 9, scope: !3216)
!3228 = !DILocation(line: 286, column: 5, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !206, line: 283, column: 38)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !206, line: 283, column: 16)
!3231 = distinct !DILexicalBlock(scope: !3216, file: !206, line: 280, column: 9)
!3232 = !DILocation(line: 0, scope: !3231)
!3233 = !DILocation(line: 288, column: 1, scope: !3216)
!3234 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !206, file: !206, line: 290, type: !3235, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !2965, !582}
!3237 = !{!3238, !3239}
!3238 = !DILocalVariable(name: "u_port", arg: 1, scope: !3234, file: !206, line: 290, type: !2965)
!3239 = !DILocalVariable(name: "func", arg: 2, scope: !3234, file: !206, line: 290, type: !582)
!3240 = !DILocation(line: 0, scope: !3234)
!3241 = !DILocation(line: 292, column: 9, scope: !3234)
!3242 = !DILocation(line: 296, column: 5, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !206, line: 294, column: 38)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !206, line: 294, column: 16)
!3245 = distinct !DILexicalBlock(scope: !3234, file: !206, line: 292, column: 9)
!3246 = !DILocation(line: 0, scope: !3245)
!3247 = !DILocation(line: 298, column: 1, scope: !3234)
!3248 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !206, file: !206, line: 300, type: !3235, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3249)
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "u_port", arg: 1, scope: !3248, file: !206, line: 300, type: !2965)
!3251 = !DILocalVariable(name: "func", arg: 2, scope: !3248, file: !206, line: 300, type: !582)
!3252 = !DILocation(line: 0, scope: !3248)
!3253 = !DILocation(line: 302, column: 9, scope: !3248)
!3254 = !DILocation(line: 306, column: 5, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !206, line: 304, column: 38)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !206, line: 304, column: 16)
!3257 = distinct !DILexicalBlock(scope: !3248, file: !206, line: 302, column: 9)
!3258 = !DILocation(line: 0, scope: !3257)
!3259 = !DILocation(line: 308, column: 1, scope: !3248)
!3260 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !206, file: !206, line: 310, type: !3019, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3261)
!3261 = !{!3262, !3263, !3264, !3265}
!3262 = !DILocalVariable(name: "u_port", arg: 1, scope: !3260, file: !206, line: 310, type: !2965)
!3263 = !DILocalVariable(name: "base", scope: !3260, file: !206, line: 312, type: !53)
!3264 = !DILocalVariable(name: "EFR", scope: !3260, file: !206, line: 313, type: !3035)
!3265 = !DILocalVariable(name: "LCR", scope: !3260, file: !206, line: 313, type: !3035)
!3266 = !DILocation(line: 0, scope: !3260)
!3267 = !DILocation(line: 312, column: 25, scope: !3260)
!3268 = !DILocation(line: 315, column: 11, scope: !3260)
!3269 = !DILocation(line: 317, column: 33, scope: !3260)
!3270 = !DILocation(line: 318, column: 11, scope: !3260)
!3271 = !DILocation(line: 320, column: 35, scope: !3260)
!3272 = !DILocation(line: 320, column: 33, scope: !3260)
!3273 = !DILocation(line: 322, column: 5, scope: !3260)
!3274 = !DILocation(line: 322, column: 39, scope: !3260)
!3275 = !DILocation(line: 324, column: 33, scope: !3260)
!3276 = !DILocation(line: 325, column: 5, scope: !3260)
!3277 = !DILocation(line: 325, column: 33, scope: !3260)
!3278 = !DILocation(line: 327, column: 35, scope: !3260)
!3279 = !DILocation(line: 327, column: 33, scope: !3260)
!3280 = !DILocation(line: 328, column: 1, scope: !3260)
!3281 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !206, file: !206, line: 330, type: !3282, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !2965, !163, !163, !163}
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3285 = !DILocalVariable(name: "u_port", arg: 1, scope: !3281, file: !206, line: 330, type: !2965)
!3286 = !DILocalVariable(name: "xon", arg: 2, scope: !3281, file: !206, line: 330, type: !163)
!3287 = !DILocalVariable(name: "xoff", arg: 3, scope: !3281, file: !206, line: 330, type: !163)
!3288 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3281, file: !206, line: 330, type: !163)
!3289 = !DILocalVariable(name: "base", scope: !3281, file: !206, line: 332, type: !53)
!3290 = !DILocalVariable(name: "EFR", scope: !3281, file: !206, line: 333, type: !3035)
!3291 = !DILocalVariable(name: "LCR", scope: !3281, file: !206, line: 333, type: !3035)
!3292 = !DILocation(line: 0, scope: !3281)
!3293 = !DILocation(line: 332, column: 25, scope: !3281)
!3294 = !DILocation(line: 335, column: 11, scope: !3281)
!3295 = !DILocation(line: 337, column: 33, scope: !3281)
!3296 = !DILocation(line: 338, column: 36, scope: !3281)
!3297 = !DILocation(line: 338, column: 5, scope: !3281)
!3298 = !DILocation(line: 338, column: 34, scope: !3281)
!3299 = !DILocation(line: 339, column: 5, scope: !3281)
!3300 = !DILocation(line: 339, column: 34, scope: !3281)
!3301 = !DILocation(line: 340, column: 37, scope: !3281)
!3302 = !DILocation(line: 340, column: 5, scope: !3281)
!3303 = !DILocation(line: 340, column: 35, scope: !3281)
!3304 = !DILocation(line: 341, column: 5, scope: !3281)
!3305 = !DILocation(line: 341, column: 35, scope: !3281)
!3306 = !DILocation(line: 343, column: 11, scope: !3281)
!3307 = !DILocation(line: 345, column: 35, scope: !3281)
!3308 = !DILocation(line: 345, column: 33, scope: !3281)
!3309 = !DILocation(line: 347, column: 35, scope: !3281)
!3310 = !DILocation(line: 347, column: 33, scope: !3281)
!3311 = !DILocation(line: 349, column: 43, scope: !3281)
!3312 = !DILocation(line: 349, column: 5, scope: !3281)
!3313 = !DILocation(line: 349, column: 41, scope: !3281)
!3314 = !DILocation(line: 350, column: 5, scope: !3281)
!3315 = !DILocation(line: 350, column: 39, scope: !3281)
!3316 = !DILocation(line: 351, column: 1, scope: !3281)
!3317 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !206, file: !206, line: 353, type: !3019, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DILocalVariable(name: "u_port", arg: 1, scope: !3317, file: !206, line: 353, type: !2965)
!3320 = !DILocalVariable(name: "base", scope: !3317, file: !206, line: 355, type: !53)
!3321 = !DILocalVariable(name: "LCR", scope: !3317, file: !206, line: 356, type: !3035)
!3322 = !DILocation(line: 0, scope: !3317)
!3323 = !DILocation(line: 355, column: 25, scope: !3317)
!3324 = !DILocation(line: 358, column: 11, scope: !3317)
!3325 = !DILocation(line: 360, column: 33, scope: !3317)
!3326 = !DILocation(line: 362, column: 5, scope: !3317)
!3327 = !DILocation(line: 362, column: 33, scope: !3317)
!3328 = !DILocation(line: 364, column: 33, scope: !3317)
!3329 = !DILocation(line: 366, column: 35, scope: !3317)
!3330 = !DILocation(line: 366, column: 33, scope: !3317)
!3331 = !DILocation(line: 367, column: 1, scope: !3317)
!3332 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !206, file: !206, line: 436, type: !3019, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3333)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "u_port", arg: 1, scope: !3332, file: !206, line: 436, type: !2965)
!3335 = !DILocalVariable(name: "base", scope: !3332, file: !206, line: 438, type: !53)
!3336 = !DILocation(line: 0, scope: !3332)
!3337 = !DILocation(line: 438, column: 25, scope: !3332)
!3338 = !DILocation(line: 440, column: 5, scope: !3332)
!3339 = !DILocation(line: 440, column: 33, scope: !3332)
!3340 = !DILocation(line: 441, column: 5, scope: !3332)
!3341 = !DILocation(line: 441, column: 33, scope: !3332)
!3342 = !DILocation(line: 442, column: 5, scope: !3332)
!3343 = !DILocation(line: 442, column: 34, scope: !3332)
!3344 = !DILocation(line: 443, column: 5, scope: !3332)
!3345 = !DILocation(line: 443, column: 35, scope: !3332)
!3346 = !DILocation(line: 445, column: 33, scope: !3332)
!3347 = !DILocation(line: 446, column: 5, scope: !3332)
!3348 = !DILocation(line: 446, column: 33, scope: !3332)
!3349 = !DILocation(line: 447, column: 5, scope: !3332)
!3350 = !DILocation(line: 447, column: 33, scope: !3332)
!3351 = !DILocation(line: 449, column: 33, scope: !3332)
!3352 = !DILocation(line: 450, column: 33, scope: !3332)
!3353 = !DILocation(line: 451, column: 33, scope: !3332)
!3354 = !DILocation(line: 453, column: 33, scope: !3332)
!3355 = !DILocation(line: 454, column: 33, scope: !3332)
!3356 = !DILocation(line: 455, column: 33, scope: !3332)
!3357 = !DILocation(line: 457, column: 33, scope: !3332)
!3358 = !DILocation(line: 458, column: 5, scope: !3332)
!3359 = !DILocation(line: 458, column: 33, scope: !3332)
!3360 = !DILocation(line: 459, column: 5, scope: !3332)
!3361 = !DILocation(line: 459, column: 39, scope: !3332)
!3362 = !DILocation(line: 460, column: 5, scope: !3332)
!3363 = !DILocation(line: 460, column: 40, scope: !3332)
!3364 = !DILocation(line: 461, column: 5, scope: !3332)
!3365 = !DILocation(line: 461, column: 42, scope: !3332)
!3366 = !DILocation(line: 462, column: 5, scope: !3332)
!3367 = !DILocation(line: 462, column: 42, scope: !3332)
!3368 = !DILocation(line: 463, column: 5, scope: !3332)
!3369 = !DILocation(line: 463, column: 35, scope: !3332)
!3370 = !DILocation(line: 464, column: 5, scope: !3332)
!3371 = !DILocation(line: 464, column: 41, scope: !3332)
!3372 = !DILocation(line: 465, column: 5, scope: !3332)
!3373 = !DILocation(line: 465, column: 39, scope: !3332)
!3374 = !DILocation(line: 466, column: 5, scope: !3332)
!3375 = !DILocation(line: 466, column: 38, scope: !3332)
!3376 = !DILocation(line: 467, column: 5, scope: !3332)
!3377 = !DILocation(line: 467, column: 42, scope: !3332)
!3378 = !DILocation(line: 468, column: 5, scope: !3332)
!3379 = !DILocation(line: 468, column: 45, scope: !3332)
!3380 = !DILocation(line: 469, column: 5, scope: !3332)
!3381 = !DILocation(line: 469, column: 39, scope: !3332)
!3382 = !DILocation(line: 470, column: 5, scope: !3332)
!3383 = !DILocation(line: 470, column: 39, scope: !3332)
!3384 = !DILocation(line: 471, column: 5, scope: !3332)
!3385 = !DILocation(line: 471, column: 42, scope: !3332)
!3386 = !DILocation(line: 472, column: 1, scope: !3332)
!3387 = distinct !DISubprogram(name: "uart_query_empty", scope: !206, file: !206, line: 474, type: !3019, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3388)
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "u_port", arg: 1, scope: !3387, file: !206, line: 474, type: !2965)
!3390 = !DILocalVariable(name: "base", scope: !3387, file: !206, line: 476, type: !53)
!3391 = !DILocation(line: 0, scope: !3387)
!3392 = !DILocation(line: 476, column: 25, scope: !3387)
!3393 = !DILocation(line: 478, column: 5, scope: !3387)
!3394 = !DILocation(line: 478, column: 14, scope: !3387)
!3395 = !DILocation(line: 478, column: 42, scope: !3387)
!3396 = !DILocation(line: 478, column: 12, scope: !3387)
!3397 = distinct !{!3397, !3393, !3398}
!3398 = !DILocation(line: 478, column: 50, scope: !3387)
!3399 = !DILocation(line: 479, column: 1, scope: !3387)
!3400 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1050, file: !1050, line: 64, type: !3401, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !731, !7, !731, null}
!3403 = !{!3404, !3405, !3406, !3407, !3416}
!3404 = !DILocalVariable(name: "func", arg: 1, scope: !3400, file: !1050, line: 64, type: !731)
!3405 = !DILocalVariable(name: "line", arg: 2, scope: !3400, file: !1050, line: 64, type: !7)
!3406 = !DILocalVariable(name: "message", arg: 3, scope: !3400, file: !1050, line: 64, type: !731)
!3407 = !DILocalVariable(name: "ap", scope: !3400, file: !1050, line: 66, type: !3408)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3409, line: 46, baseType: !3410)
!3409 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3411, line: 32, baseType: !3412)
!3411 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1050, baseType: !3413)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3414)
!3414 = !{!3415}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3413, file: !1050, line: 66, baseType: !68, size: 32)
!3416 = !DILocalVariable(name: "mask", scope: !3400, file: !1050, line: 68, type: !73)
!3417 = !DILocation(line: 0, scope: !3400)
!3418 = !DILocation(line: 66, column: 5, scope: !3400)
!3419 = !DILocation(line: 66, column: 13, scope: !3400)
!3420 = !DILocation(line: 68, column: 5, scope: !3400)
!3421 = !DILocation(line: 69, column: 5, scope: !3400)
!3422 = !DILocation(line: 71, column: 5, scope: !3400)
!3423 = !DILocation(line: 72, column: 5, scope: !3400)
!3424 = !DILocation(line: 73, column: 5, scope: !3400)
!3425 = !DILocation(line: 75, column: 37, scope: !3400)
!3426 = !DILocation(line: 75, column: 5, scope: !3400)
!3427 = !DILocation(line: 77, column: 1, scope: !3400)
!3428 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1050, file: !1050, line: 78, type: !3401, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434}
!3430 = !DILocalVariable(name: "func", arg: 1, scope: !3428, file: !1050, line: 78, type: !731)
!3431 = !DILocalVariable(name: "line", arg: 2, scope: !3428, file: !1050, line: 78, type: !7)
!3432 = !DILocalVariable(name: "message", arg: 3, scope: !3428, file: !1050, line: 78, type: !731)
!3433 = !DILocalVariable(name: "ap", scope: !3428, file: !1050, line: 80, type: !3408)
!3434 = !DILocalVariable(name: "mask", scope: !3428, file: !1050, line: 82, type: !73)
!3435 = !DILocation(line: 0, scope: !3428)
!3436 = !DILocation(line: 80, column: 5, scope: !3428)
!3437 = !DILocation(line: 80, column: 13, scope: !3428)
!3438 = !DILocation(line: 82, column: 5, scope: !3428)
!3439 = !DILocation(line: 83, column: 5, scope: !3428)
!3440 = !DILocation(line: 85, column: 5, scope: !3428)
!3441 = !DILocation(line: 86, column: 5, scope: !3428)
!3442 = !DILocation(line: 87, column: 5, scope: !3428)
!3443 = !DILocation(line: 89, column: 37, scope: !3428)
!3444 = !DILocation(line: 89, column: 5, scope: !3428)
!3445 = !DILocation(line: 91, column: 1, scope: !3428)
!3446 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1050, file: !1050, line: 92, type: !3401, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452}
!3448 = !DILocalVariable(name: "func", arg: 1, scope: !3446, file: !1050, line: 92, type: !731)
!3449 = !DILocalVariable(name: "line", arg: 2, scope: !3446, file: !1050, line: 92, type: !7)
!3450 = !DILocalVariable(name: "message", arg: 3, scope: !3446, file: !1050, line: 92, type: !731)
!3451 = !DILocalVariable(name: "ap", scope: !3446, file: !1050, line: 94, type: !3408)
!3452 = !DILocalVariable(name: "mask", scope: !3446, file: !1050, line: 96, type: !73)
!3453 = !DILocation(line: 0, scope: !3446)
!3454 = !DILocation(line: 94, column: 5, scope: !3446)
!3455 = !DILocation(line: 94, column: 13, scope: !3446)
!3456 = !DILocation(line: 96, column: 5, scope: !3446)
!3457 = !DILocation(line: 97, column: 5, scope: !3446)
!3458 = !DILocation(line: 99, column: 5, scope: !3446)
!3459 = !DILocation(line: 100, column: 5, scope: !3446)
!3460 = !DILocation(line: 101, column: 5, scope: !3446)
!3461 = !DILocation(line: 103, column: 37, scope: !3446)
!3462 = !DILocation(line: 103, column: 5, scope: !3446)
!3463 = !DILocation(line: 105, column: 1, scope: !3446)
!3464 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1050, file: !1050, line: 106, type: !3401, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470}
!3466 = !DILocalVariable(name: "func", arg: 1, scope: !3464, file: !1050, line: 106, type: !731)
!3467 = !DILocalVariable(name: "line", arg: 2, scope: !3464, file: !1050, line: 106, type: !7)
!3468 = !DILocalVariable(name: "message", arg: 3, scope: !3464, file: !1050, line: 106, type: !731)
!3469 = !DILocalVariable(name: "ap", scope: !3464, file: !1050, line: 108, type: !3408)
!3470 = !DILocalVariable(name: "mask", scope: !3464, file: !1050, line: 110, type: !73)
!3471 = !DILocation(line: 0, scope: !3464)
!3472 = !DILocation(line: 108, column: 5, scope: !3464)
!3473 = !DILocation(line: 108, column: 13, scope: !3464)
!3474 = !DILocation(line: 110, column: 5, scope: !3464)
!3475 = !DILocation(line: 111, column: 5, scope: !3464)
!3476 = !DILocation(line: 113, column: 5, scope: !3464)
!3477 = !DILocation(line: 114, column: 5, scope: !3464)
!3478 = !DILocation(line: 115, column: 5, scope: !3464)
!3479 = !DILocation(line: 117, column: 37, scope: !3464)
!3480 = !DILocation(line: 117, column: 5, scope: !3464)
!3481 = !DILocation(line: 119, column: 1, scope: !3464)
!3482 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1050, file: !1050, line: 121, type: !3483, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1049, retainedNodes: !3487)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !731, !7, !731, !3485, !7, null}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3487 = !{!3488, !3489, !3490, !3491, !3492}
!3488 = !DILocalVariable(name: "func", arg: 1, scope: !3482, file: !1050, line: 121, type: !731)
!3489 = !DILocalVariable(name: "line", arg: 2, scope: !3482, file: !1050, line: 121, type: !7)
!3490 = !DILocalVariable(name: "message", arg: 3, scope: !3482, file: !1050, line: 121, type: !731)
!3491 = !DILocalVariable(name: "data", arg: 4, scope: !3482, file: !1050, line: 121, type: !3485)
!3492 = !DILocalVariable(name: "length", arg: 5, scope: !3482, file: !1050, line: 121, type: !7)
!3493 = !DILocation(line: 0, scope: !3482)
!3494 = !DILocation(line: 123, column: 1, scope: !3482)
!3495 = distinct !DISubprogram(name: "hal_cache_init", scope: !242, file: !242, line: 53, type: !3496, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3499)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !245, line: 172, baseType: !244)
!3499 = !{!3500, !3502}
!3500 = !DILocalVariable(name: "region", scope: !3495, file: !242, line: 55, type: !3501)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !245, line: 204, baseType: !255)
!3502 = !DILocalVariable(name: "irq_flag", scope: !3495, file: !242, line: 56, type: !73)
!3503 = !DILocation(line: 59, column: 16, scope: !3495)
!3504 = !DILocation(line: 0, scope: !3495)
!3505 = !DILocation(line: 62, column: 9, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3495, file: !242, line: 62, column: 9)
!3507 = !{i8 0, i8 2}
!3508 = !DILocation(line: 62, column: 9, scope: !3495)
!3509 = !DILocation(line: 64, column: 9, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !242, line: 62, column: 39)
!3511 = !DILocation(line: 66, column: 9, scope: !3510)
!3512 = !DILocation(line: 69, column: 24, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3506, file: !242, line: 67, column: 12)
!3514 = !DILocation(line: 72, column: 9, scope: !3513)
!3515 = !DILocation(line: 77, column: 5, scope: !3495)
!3516 = !DILocation(line: 80, column: 22, scope: !3495)
!3517 = !DILocation(line: 81, column: 28, scope: !3495)
!3518 = !DILocation(line: 84, column: 19, scope: !3495)
!3519 = !DILocation(line: 85, column: 23, scope: !3495)
!3520 = !DILocation(line: 88, column: 5, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3495, file: !242, line: 88, column: 5)
!3522 = !DILocation(line: 90, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !242, line: 88, column: 81)
!3524 = distinct !DILexicalBlock(scope: !3521, file: !242, line: 88, column: 5)
!3525 = !DILocation(line: 90, column: 38, scope: !3523)
!3526 = !DILocation(line: 91, column: 9, scope: !3523)
!3527 = !DILocation(line: 91, column: 42, scope: !3523)
!3528 = !DILocation(line: 94, column: 45, scope: !3523)
!3529 = !DILocation(line: 94, column: 47, scope: !3523)
!3530 = !DILocation(line: 95, column: 49, scope: !3523)
!3531 = !DILocation(line: 95, column: 51, scope: !3523)
!3532 = !DILocation(line: 88, column: 77, scope: !3524)
!3533 = !DILocation(line: 88, column: 46, scope: !3524)
!3534 = distinct !{!3534, !3520, !3535}
!3535 = !DILocation(line: 96, column: 5, scope: !3521)
!3536 = !DILocation(line: 99, column: 1, scope: !3495)
!3537 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !242, file: !242, line: 327, type: !3496, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3538)
!3538 = !{!3539}
!3539 = !DILocalVariable(name: "irq_flag", scope: !3537, file: !242, line: 329, type: !73)
!3540 = !DILocation(line: 332, column: 16, scope: !3537)
!3541 = !DILocation(line: 0, scope: !3537)
!3542 = !DILocation(line: 335, column: 21, scope: !3537)
!3543 = !DILocation(line: 336, column: 21, scope: !3537)
!3544 = !DILocation(line: 339, column: 21, scope: !3537)
!3545 = !DILocation(line: 340, column: 21, scope: !3537)
!3546 = !DILocation(line: 434, column: 3, scope: !3547, inlinedAt: !3549)
!3547 = distinct !DISubprogram(name: "__ISB", scope: !3548, file: !3548, line: 432, type: !81, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2284)
!3548 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/spi_master_polling/GCC")
!3549 = distinct !DILocation(line: 343, column: 5, scope: !3537)
!3550 = !{i64 296584}
!3551 = !DILocation(line: 346, column: 5, scope: !3537)
!3552 = !DILocation(line: 348, column: 5, scope: !3537)
!3553 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !242, file: !242, line: 101, type: !3496, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3554)
!3554 = !{!3555}
!3555 = !DILocalVariable(name: "region", scope: !3553, file: !242, line: 103, type: !3501)
!3556 = !DILocation(line: 107, column: 5, scope: !3553)
!3557 = !DILocation(line: 110, column: 22, scope: !3553)
!3558 = !DILocation(line: 111, column: 28, scope: !3553)
!3559 = !DILocation(line: 114, column: 19, scope: !3553)
!3560 = !DILocation(line: 115, column: 23, scope: !3553)
!3561 = !DILocation(line: 0, scope: !3553)
!3562 = !DILocation(line: 118, column: 5, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3553, file: !242, line: 118, column: 5)
!3564 = !DILocation(line: 120, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !242, line: 118, column: 81)
!3566 = distinct !DILexicalBlock(scope: !3563, file: !242, line: 118, column: 5)
!3567 = !DILocation(line: 120, column: 38, scope: !3565)
!3568 = !DILocation(line: 121, column: 9, scope: !3565)
!3569 = !DILocation(line: 121, column: 42, scope: !3565)
!3570 = !DILocation(line: 124, column: 45, scope: !3565)
!3571 = !DILocation(line: 124, column: 47, scope: !3565)
!3572 = !DILocation(line: 125, column: 49, scope: !3565)
!3573 = !DILocation(line: 125, column: 51, scope: !3565)
!3574 = !DILocation(line: 118, column: 77, scope: !3566)
!3575 = !DILocation(line: 118, column: 46, scope: !3566)
!3576 = distinct !{!3576, !3562, !3577}
!3577 = !DILocation(line: 126, column: 5, scope: !3563)
!3578 = !DILocation(line: 129, column: 20, scope: !3553)
!3579 = !DILocation(line: 131, column: 5, scope: !3553)
!3580 = distinct !DISubprogram(name: "hal_cache_enable", scope: !242, file: !242, line: 134, type: !3496, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2284)
!3581 = !DILocation(line: 137, column: 45, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3580, file: !242, line: 137, column: 9)
!3583 = !DILocation(line: 137, column: 28, scope: !3582)
!3584 = !DILocation(line: 137, column: 9, scope: !3580)
!3585 = !DILocation(line: 142, column: 22, scope: !3580)
!3586 = !DILocation(line: 145, column: 28, scope: !3580)
!3587 = !DILocation(line: 145, column: 19, scope: !3580)
!3588 = !DILocation(line: 147, column: 5, scope: !3580)
!3589 = !DILocation(line: 0, scope: !3580)
!3590 = !DILocation(line: 148, column: 1, scope: !3580)
!3591 = distinct !DISubprogram(name: "hal_cache_disable", scope: !242, file: !242, line: 150, type: !3496, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3592)
!3592 = !{!3593}
!3593 = !DILocalVariable(name: "irq_flag", scope: !3591, file: !242, line: 152, type: !73)
!3594 = !DILocation(line: 155, column: 16, scope: !3591)
!3595 = !DILocation(line: 0, scope: !3591)
!3596 = !DILocation(line: 158, column: 16, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3591, file: !242, line: 158, column: 9)
!3598 = !DILocation(line: 158, column: 26, scope: !3597)
!3599 = !DILocation(line: 158, column: 9, scope: !3591)
!3600 = !DILocation(line: 160, column: 9, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3597, file: !242, line: 158, column: 49)
!3602 = !DILocation(line: 161, column: 5, scope: !3601)
!3603 = !DILocation(line: 164, column: 22, scope: !3591)
!3604 = !DILocation(line: 167, column: 28, scope: !3591)
!3605 = !DILocation(line: 167, column: 19, scope: !3591)
!3606 = !DILocation(line: 170, column: 5, scope: !3591)
!3607 = !DILocation(line: 172, column: 5, scope: !3591)
!3608 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !242, file: !242, line: 175, type: !3609, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3611)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!3498, !3501}
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "region", arg: 1, scope: !3608, file: !242, line: 175, type: !3501)
!3613 = !DILocation(line: 0, scope: !3608)
!3614 = !DILocation(line: 178, column: 16, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !242, line: 178, column: 9)
!3616 = !DILocation(line: 178, column: 9, scope: !3608)
!3617 = !DILocation(line: 183, column: 9, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3608, file: !242, line: 183, column: 9)
!3619 = !DILocation(line: 183, column: 38, scope: !3618)
!3620 = !DILocation(line: 183, column: 9, scope: !3608)
!3621 = !DILocation(line: 184, column: 38, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !242, line: 183, column: 62)
!3623 = !DILocation(line: 184, column: 32, scope: !3622)
!3624 = !DILocation(line: 190, column: 32, scope: !3608)
!3625 = !DILocation(line: 190, column: 23, scope: !3608)
!3626 = !DILocation(line: 192, column: 5, scope: !3608)
!3627 = !DILocation(line: 193, column: 1, scope: !3608)
!3628 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !242, file: !242, line: 195, type: !3609, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3629)
!3629 = !{!3630}
!3630 = !DILocalVariable(name: "region", arg: 1, scope: !3628, file: !242, line: 195, type: !3501)
!3631 = !DILocation(line: 0, scope: !3628)
!3632 = !DILocation(line: 198, column: 16, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3628, file: !242, line: 198, column: 9)
!3634 = !DILocation(line: 198, column: 9, scope: !3628)
!3635 = !DILocation(line: 203, column: 35, scope: !3628)
!3636 = !DILocation(line: 203, column: 31, scope: !3628)
!3637 = !DILocation(line: 203, column: 28, scope: !3628)
!3638 = !DILocation(line: 206, column: 32, scope: !3628)
!3639 = !DILocation(line: 206, column: 23, scope: !3628)
!3640 = !DILocation(line: 209, column: 41, scope: !3628)
!3641 = !DILocation(line: 209, column: 43, scope: !3628)
!3642 = !DILocation(line: 210, column: 45, scope: !3628)
!3643 = !DILocation(line: 210, column: 47, scope: !3628)
!3644 = !DILocation(line: 212, column: 5, scope: !3628)
!3645 = !DILocation(line: 213, column: 1, scope: !3628)
!3646 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !242, file: !242, line: 215, type: !3647, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3650)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!3498, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !245, line: 182, baseType: !274)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3646, file: !242, line: 215, type: !3649)
!3652 = !DILocation(line: 0, scope: !3646)
!3653 = !DILocation(line: 218, column: 20, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3646, file: !242, line: 218, column: 9)
!3655 = !DILocation(line: 218, column: 9, scope: !3646)
!3656 = !DILocation(line: 223, column: 22, scope: !3646)
!3657 = !DILocation(line: 224, column: 37, scope: !3646)
!3658 = !DILocation(line: 224, column: 22, scope: !3646)
!3659 = !DILocation(line: 227, column: 20, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3646, file: !242, line: 227, column: 9)
!3661 = !DILocation(line: 227, column: 9, scope: !3646)
!3662 = !DILocation(line: 228, column: 26, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3660, file: !242, line: 227, column: 43)
!3664 = !DILocation(line: 229, column: 5, scope: !3663)
!3665 = !DILocation(line: 232, column: 28, scope: !3646)
!3666 = !DILocation(line: 232, column: 19, scope: !3646)
!3667 = !DILocation(line: 234, column: 5, scope: !3646)
!3668 = !DILocation(line: 235, column: 1, scope: !3646)
!3669 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !242, file: !242, line: 237, type: !3670, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3679)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!3498, !3501, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !245, line: 222, baseType: !3675)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 219, size: 64, elements: !3676)
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3675, file: !245, line: 220, baseType: !73, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3675, file: !245, line: 221, baseType: !73, size: 32, offset: 32)
!3679 = !{!3680, !3681}
!3680 = !DILocalVariable(name: "region", arg: 1, scope: !3669, file: !242, line: 237, type: !3501)
!3681 = !DILocalVariable(name: "region_config", arg: 2, scope: !3669, file: !242, line: 237, type: !3672)
!3682 = !DILocation(line: 0, scope: !3669)
!3683 = !DILocation(line: 240, column: 16, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3669, file: !242, line: 240, column: 9)
!3685 = !DILocation(line: 240, column: 9, scope: !3669)
!3686 = !DILocation(line: 245, column: 23, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3669, file: !242, line: 245, column: 9)
!3688 = !DILocation(line: 245, column: 9, scope: !3669)
!3689 = !DILocation(line: 250, column: 24, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3669, file: !242, line: 250, column: 9)
!3691 = !DILocation(line: 250, column: 45, scope: !3690)
!3692 = !DILocation(line: 250, column: 9, scope: !3669)
!3693 = !DILocation(line: 251, column: 9, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3690, file: !242, line: 250, column: 81)
!3695 = !DILocation(line: 256, column: 24, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3669, file: !242, line: 256, column: 9)
!3697 = !DILocation(line: 256, column: 42, scope: !3696)
!3698 = !DILocation(line: 256, column: 9, scope: !3669)
!3699 = !DILocation(line: 257, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3696, file: !242, line: 256, column: 78)
!3701 = !DILocation(line: 262, column: 5, scope: !3669)
!3702 = !DILocation(line: 262, column: 34, scope: !3669)
!3703 = !DILocation(line: 263, column: 55, scope: !3669)
!3704 = !DILocation(line: 263, column: 93, scope: !3669)
!3705 = !DILocation(line: 263, column: 76, scope: !3669)
!3706 = !DILocation(line: 263, column: 5, scope: !3669)
!3707 = !DILocation(line: 263, column: 38, scope: !3669)
!3708 = !DILocation(line: 266, column: 34, scope: !3669)
!3709 = !DILocation(line: 269, column: 45, scope: !3669)
!3710 = !DILocation(line: 269, column: 41, scope: !3669)
!3711 = !DILocation(line: 269, column: 43, scope: !3669)
!3712 = !DILocation(line: 270, column: 49, scope: !3669)
!3713 = !DILocation(line: 270, column: 45, scope: !3669)
!3714 = !DILocation(line: 270, column: 47, scope: !3669)
!3715 = !DILocation(line: 272, column: 5, scope: !3669)
!3716 = !DILocation(line: 273, column: 1, scope: !3669)
!3717 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !242, file: !242, line: 275, type: !3718, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3720)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!3498, !73}
!3720 = !{!3721, !3722}
!3721 = !DILocalVariable(name: "address", arg: 1, scope: !3717, file: !242, line: 275, type: !73)
!3722 = !DILocalVariable(name: "irq_flag", scope: !3717, file: !242, line: 277, type: !73)
!3723 = !DILocation(line: 0, scope: !3717)
!3724 = !DILocation(line: 280, column: 17, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3717, file: !242, line: 280, column: 9)
!3726 = !DILocation(line: 280, column: 9, scope: !3717)
!3727 = !DILocation(line: 284, column: 16, scope: !3717)
!3728 = !DILocation(line: 287, column: 32, scope: !3717)
!3729 = !DILocation(line: 287, column: 21, scope: !3717)
!3730 = !DILocation(line: 288, column: 21, scope: !3717)
!3731 = !DILocation(line: 434, column: 3, scope: !3547, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 291, column: 5, scope: !3717)
!3733 = !DILocation(line: 294, column: 5, scope: !3717)
!3734 = !DILocation(line: 296, column: 5, scope: !3717)
!3735 = !DILocation(line: 297, column: 1, scope: !3717)
!3736 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !242, file: !242, line: 299, type: !3737, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!3498, !73, !73}
!3739 = !{!3740, !3741, !3742, !3743}
!3740 = !DILocalVariable(name: "address", arg: 1, scope: !3736, file: !242, line: 299, type: !73)
!3741 = !DILocalVariable(name: "length", arg: 2, scope: !3736, file: !242, line: 299, type: !73)
!3742 = !DILocalVariable(name: "irq_flag", scope: !3736, file: !242, line: 301, type: !73)
!3743 = !DILocalVariable(name: "end_address", scope: !3736, file: !242, line: 302, type: !73)
!3744 = !DILocation(line: 0, scope: !3736)
!3745 = !DILocation(line: 302, column: 36, scope: !3736)
!3746 = !DILocation(line: 305, column: 47, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3736, file: !242, line: 305, column: 9)
!3748 = !DILocation(line: 310, column: 16, scope: !3736)
!3749 = !DILocation(line: 313, column: 20, scope: !3736)
!3750 = !DILocation(line: 313, column: 5, scope: !3736)
!3751 = !DILocation(line: 314, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3736, file: !242, line: 313, column: 35)
!3753 = !DILocation(line: 315, column: 17, scope: !3752)
!3754 = distinct !{!3754, !3750, !3755}
!3755 = !DILocation(line: 316, column: 5, scope: !3736)
!3756 = !DILocation(line: 434, column: 3, scope: !3547, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 319, column: 5, scope: !3736)
!3758 = !DILocation(line: 322, column: 5, scope: !3736)
!3759 = !DILocation(line: 324, column: 5, scope: !3736)
!3760 = !DILocation(line: 325, column: 1, scope: !3736)
!3761 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !242, file: !242, line: 351, type: !3718, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3762)
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "address", arg: 1, scope: !3761, file: !242, line: 351, type: !73)
!3764 = !DILocalVariable(name: "irq_flag", scope: !3761, file: !242, line: 353, type: !73)
!3765 = !DILocation(line: 0, scope: !3761)
!3766 = !DILocation(line: 356, column: 17, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3761, file: !242, line: 356, column: 9)
!3768 = !DILocation(line: 356, column: 9, scope: !3761)
!3769 = !DILocation(line: 361, column: 16, scope: !3761)
!3770 = !DILocation(line: 364, column: 32, scope: !3761)
!3771 = !DILocation(line: 364, column: 21, scope: !3761)
!3772 = !DILocation(line: 365, column: 21, scope: !3761)
!3773 = !DILocation(line: 434, column: 3, scope: !3547, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 368, column: 5, scope: !3761)
!3775 = !DILocation(line: 371, column: 5, scope: !3761)
!3776 = !DILocation(line: 373, column: 5, scope: !3761)
!3777 = !DILocation(line: 374, column: 1, scope: !3761)
!3778 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !242, file: !242, line: 376, type: !3737, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3779)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DILocalVariable(name: "address", arg: 1, scope: !3778, file: !242, line: 376, type: !73)
!3781 = !DILocalVariable(name: "length", arg: 2, scope: !3778, file: !242, line: 376, type: !73)
!3782 = !DILocalVariable(name: "irq_flag", scope: !3778, file: !242, line: 378, type: !73)
!3783 = !DILocalVariable(name: "end_address", scope: !3778, file: !242, line: 379, type: !73)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 379, column: 36, scope: !3778)
!3786 = !DILocation(line: 382, column: 47, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3778, file: !242, line: 382, column: 9)
!3788 = !DILocation(line: 387, column: 16, scope: !3778)
!3789 = !DILocation(line: 390, column: 20, scope: !3778)
!3790 = !DILocation(line: 390, column: 5, scope: !3778)
!3791 = !DILocation(line: 391, column: 9, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3778, file: !242, line: 390, column: 35)
!3793 = !DILocation(line: 392, column: 17, scope: !3792)
!3794 = distinct !{!3794, !3790, !3795}
!3795 = !DILocation(line: 393, column: 5, scope: !3778)
!3796 = !DILocation(line: 434, column: 3, scope: !3547, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 396, column: 5, scope: !3778)
!3798 = !DILocation(line: 399, column: 5, scope: !3778)
!3799 = !DILocation(line: 401, column: 5, scope: !3778)
!3800 = !DILocation(line: 402, column: 1, scope: !3778)
!3801 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !242, file: !242, line: 404, type: !3496, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3802)
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "irq_flag", scope: !3801, file: !242, line: 406, type: !73)
!3804 = !DILocation(line: 409, column: 16, scope: !3801)
!3805 = !DILocation(line: 0, scope: !3801)
!3806 = !DILocation(line: 412, column: 21, scope: !3801)
!3807 = !DILocation(line: 413, column: 21, scope: !3801)
!3808 = !DILocation(line: 434, column: 3, scope: !3547, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 416, column: 5, scope: !3801)
!3810 = !DILocation(line: 419, column: 5, scope: !3801)
!3811 = !DILocation(line: 421, column: 5, scope: !3801)
!3812 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !242, file: !242, line: 424, type: !3813, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!322, !73}
!3815 = !{!3816, !3817}
!3816 = !DILocalVariable(name: "address", arg: 1, scope: !3812, file: !242, line: 424, type: !73)
!3817 = !DILocalVariable(name: "region", scope: !3812, file: !242, line: 426, type: !3501)
!3818 = !DILocation(line: 0, scope: !3812)
!3819 = !DILocation(line: 429, column: 18, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3812, file: !242, line: 429, column: 9)
!3821 = !DILocation(line: 429, column: 28, scope: !3820)
!3822 = !DILocation(line: 429, column: 9, scope: !3812)
!3823 = !DILocation(line: 435, column: 20, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !242, line: 435, column: 13)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !242, line: 433, column: 81)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !242, line: 433, column: 5)
!3827 = distinct !DILexicalBlock(scope: !3812, file: !242, line: 433, column: 5)
!3828 = !DILocation(line: 435, column: 41, scope: !3824)
!3829 = !DILocation(line: 435, column: 36, scope: !3824)
!3830 = !DILocation(line: 435, column: 13, scope: !3825)
!3831 = !DILocation(line: 436, column: 30, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !242, line: 436, column: 17)
!3833 = distinct !DILexicalBlock(scope: !3824, file: !242, line: 435, column: 53)
!3834 = !DILocation(line: 436, column: 59, scope: !3832)
!3835 = !DILocation(line: 436, column: 26, scope: !3832)
!3836 = !DILocation(line: 436, column: 85, scope: !3832)
!3837 = !DILocation(line: 436, column: 99, scope: !3832)
!3838 = !DILocation(line: 436, column: 97, scope: !3832)
!3839 = !DILocation(line: 436, column: 17, scope: !3833)
!3840 = !DILocation(line: 433, column: 77, scope: !3826)
!3841 = !DILocation(line: 433, column: 46, scope: !3826)
!3842 = !DILocation(line: 433, column: 5, scope: !3827)
!3843 = distinct !{!3843, !3842, !3844}
!3844 = !DILocation(line: 440, column: 5, scope: !3827)
!3845 = !DILocation(line: 442, column: 1, scope: !3812)
!3846 = distinct !DISubprogram(name: "hal_nvic_init", scope: !326, file: !326, line: 60, type: !3847, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2284)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!3849}
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !329, line: 158, baseType: !328)
!3850 = !DILocation(line: 62, column: 5, scope: !3846)
!3851 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !326, file: !326, line: 65, type: !3852, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!3849, !337}
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3851, file: !326, line: 65, type: !337)
!3856 = !DILocalVariable(name: "status", scope: !3851, file: !326, line: 67, type: !3849)
!3857 = !DILocation(line: 0, scope: !3851)
!3858 = !DILocation(line: 69, column: 40, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3851, file: !326, line: 69, column: 9)
!3860 = !DILocation(line: 73, column: 9, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3859, file: !326, line: 72, column: 12)
!3862 = !DILocation(line: 77, column: 5, scope: !3851)
!3863 = !DILocation(line: 78, column: 1, scope: !3851)
!3864 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !341, file: !341, line: 1494, type: !3865, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !338}
!3867 = !{!3868}
!3868 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3864, file: !341, line: 1494, type: !338)
!3869 = !DILocation(line: 0, scope: !3864)
!3870 = !DILocation(line: 1497, column: 91, scope: !3864)
!3871 = !DILocation(line: 1497, column: 61, scope: !3864)
!3872 = !DILocation(line: 1497, column: 40, scope: !3864)
!3873 = !DILocation(line: 1497, column: 3, scope: !3864)
!3874 = !DILocation(line: 1497, column: 46, scope: !3864)
!3875 = !DILocation(line: 1498, column: 1, scope: !3864)
!3876 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !326, file: !326, line: 80, type: !3852, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3877)
!3877 = !{!3878, !3879}
!3878 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3876, file: !326, line: 80, type: !337)
!3879 = !DILocalVariable(name: "status", scope: !3876, file: !326, line: 82, type: !3849)
!3880 = !DILocation(line: 0, scope: !3876)
!3881 = !DILocation(line: 84, column: 40, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3876, file: !326, line: 84, column: 9)
!3883 = !DILocation(line: 88, column: 9, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3882, file: !326, line: 87, column: 12)
!3885 = !DILocation(line: 92, column: 5, scope: !3876)
!3886 = !DILocation(line: 93, column: 1, scope: !3876)
!3887 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !341, file: !341, line: 1507, type: !3865, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3888)
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3887, file: !341, line: 1507, type: !338)
!3890 = !DILocation(line: 0, scope: !3887)
!3891 = !DILocation(line: 1509, column: 65, scope: !3887)
!3892 = !DILocation(line: 1509, column: 44, scope: !3887)
!3893 = !DILocation(line: 1509, column: 32, scope: !3887)
!3894 = !DILocation(line: 1509, column: 3, scope: !3887)
!3895 = !DILocation(line: 1509, column: 39, scope: !3887)
!3896 = !DILocation(line: 1510, column: 1, scope: !3887)
!3897 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !326, file: !326, line: 95, type: !3898, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3900)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!73, !337}
!3900 = !{!3901, !3902}
!3901 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3897, file: !326, line: 95, type: !337)
!3902 = !DILocalVariable(name: "ret", scope: !3897, file: !326, line: 97, type: !73)
!3903 = !DILocation(line: 0, scope: !3897)
!3904 = !DILocation(line: 99, column: 40, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3897, file: !326, line: 99, column: 9)
!3906 = !DILocation(line: 102, column: 15, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3905, file: !326, line: 101, column: 12)
!3908 = !DILocation(line: 105, column: 5, scope: !3897)
!3909 = !DILocation(line: 106, column: 1, scope: !3897)
!3910 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !341, file: !341, line: 1523, type: !3911, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!73, !338}
!3913 = !{!3914}
!3914 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3910, file: !341, line: 1523, type: !338)
!3915 = !DILocation(line: 0, scope: !3910)
!3916 = !DILocation(line: 1525, column: 51, scope: !3910)
!3917 = !DILocation(line: 1525, column: 23, scope: !3910)
!3918 = !DILocation(line: 1525, column: 83, scope: !3910)
!3919 = !DILocation(line: 1525, column: 22, scope: !3910)
!3920 = !DILocation(line: 1525, column: 3, scope: !3910)
!3921 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !326, file: !326, line: 108, type: !3852, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3922)
!3922 = !{!3923, !3924}
!3923 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3921, file: !326, line: 108, type: !337)
!3924 = !DILocalVariable(name: "status", scope: !3921, file: !326, line: 110, type: !3849)
!3925 = !DILocation(line: 0, scope: !3921)
!3926 = !DILocation(line: 112, column: 40, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3921, file: !326, line: 112, column: 9)
!3928 = !DILocation(line: 116, column: 9, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3927, file: !326, line: 115, column: 12)
!3930 = !DILocation(line: 120, column: 5, scope: !3921)
!3931 = !DILocation(line: 121, column: 1, scope: !3921)
!3932 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !341, file: !341, line: 1535, type: !3865, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3933)
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3932, file: !341, line: 1535, type: !338)
!3935 = !DILocation(line: 0, scope: !3932)
!3936 = !DILocation(line: 1537, column: 65, scope: !3932)
!3937 = !DILocation(line: 1537, column: 44, scope: !3932)
!3938 = !DILocation(line: 1537, column: 32, scope: !3932)
!3939 = !DILocation(line: 1537, column: 3, scope: !3932)
!3940 = !DILocation(line: 1537, column: 39, scope: !3932)
!3941 = !DILocation(line: 1538, column: 1, scope: !3932)
!3942 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !326, file: !326, line: 123, type: !3852, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3943)
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3942, file: !326, line: 123, type: !337)
!3945 = !DILocalVariable(name: "status", scope: !3942, file: !326, line: 125, type: !3849)
!3946 = !DILocation(line: 0, scope: !3942)
!3947 = !DILocation(line: 127, column: 40, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3942, file: !326, line: 127, column: 9)
!3949 = !DILocation(line: 131, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3948, file: !326, line: 130, column: 12)
!3951 = !DILocation(line: 135, column: 5, scope: !3942)
!3952 = !DILocation(line: 136, column: 1, scope: !3942)
!3953 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !341, file: !341, line: 1547, type: !3865, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3954)
!3954 = !{!3955}
!3955 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3953, file: !341, line: 1547, type: !338)
!3956 = !DILocation(line: 0, scope: !3953)
!3957 = !DILocation(line: 1549, column: 65, scope: !3953)
!3958 = !DILocation(line: 1549, column: 44, scope: !3953)
!3959 = !DILocation(line: 1549, column: 32, scope: !3953)
!3960 = !DILocation(line: 1549, column: 3, scope: !3953)
!3961 = !DILocation(line: 1549, column: 39, scope: !3953)
!3962 = !DILocation(line: 1550, column: 1, scope: !3953)
!3963 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !326, file: !326, line: 138, type: !3964, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!3849, !337, !73}
!3966 = !{!3967, !3968, !3969}
!3967 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3963, file: !326, line: 138, type: !337)
!3968 = !DILocalVariable(name: "priority", arg: 2, scope: !3963, file: !326, line: 138, type: !73)
!3969 = !DILocalVariable(name: "status", scope: !3963, file: !326, line: 140, type: !3849)
!3970 = !DILocation(line: 0, scope: !3963)
!3971 = !DILocation(line: 142, column: 40, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3963, file: !326, line: 142, column: 9)
!3973 = !DILocation(line: 146, column: 9, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3972, file: !326, line: 145, column: 12)
!3975 = !DILocation(line: 150, column: 5, scope: !3963)
!3976 = !DILocation(line: 151, column: 1, scope: !3963)
!3977 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !341, file: !341, line: 1577, type: !3978, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{null, !338, !73}
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3977, file: !341, line: 1577, type: !338)
!3982 = !DILocalVariable(name: "priority", arg: 2, scope: !3977, file: !341, line: 1577, type: !73)
!3983 = !DILocation(line: 0, scope: !3977)
!3984 = !DILocation(line: 1582, column: 34, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !341, line: 1581, column: 8)
!3986 = distinct !DILexicalBlock(scope: !3977, file: !341, line: 1579, column: 6)
!3987 = !DILocation(line: 1582, column: 5, scope: !3985)
!3988 = !DILocation(line: 1582, column: 32, scope: !3985)
!3989 = !DILocation(line: 1583, column: 1, scope: !3977)
!3990 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !326, file: !326, line: 153, type: !3898, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3991)
!3991 = !{!3992, !3993}
!3992 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3990, file: !326, line: 153, type: !337)
!3993 = !DILocalVariable(name: "ret", scope: !3990, file: !326, line: 155, type: !73)
!3994 = !DILocation(line: 0, scope: !3990)
!3995 = !DILocation(line: 157, column: 40, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3990, file: !326, line: 157, column: 9)
!3997 = !DILocation(line: 160, column: 15, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3996, file: !326, line: 159, column: 12)
!3999 = !DILocation(line: 163, column: 5, scope: !3990)
!4000 = !DILocation(line: 164, column: 1, scope: !3990)
!4001 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !341, file: !341, line: 1597, type: !3911, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4002)
!4002 = !{!4003}
!4003 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4001, file: !341, line: 1597, type: !338)
!4004 = !DILocation(line: 0, scope: !4001)
!4005 = !DILocation(line: 1603, column: 23, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4007, file: !341, line: 1602, column: 8)
!4007 = distinct !DILexicalBlock(scope: !4001, file: !341, line: 1600, column: 6)
!4008 = !DILocation(line: 1603, column: 60, scope: !4006)
!4009 = !DILocation(line: 1604, column: 1, scope: !4001)
!4010 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !326, file: !326, line: 173, type: !81, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2284)
!4011 = !DILocation(line: 175, column: 1, scope: !4010)
!4012 = distinct !DISubprogram(name: "isrC_main", scope: !326, file: !326, line: 178, type: !3847, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4013)
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "status", scope: !4012, file: !326, line: 180, type: !3849)
!4015 = !DILocalVariable(name: "irq_number", scope: !4012, file: !326, line: 181, type: !337)
!4016 = !DILocation(line: 0, scope: !4012)
!4017 = !DILocation(line: 188, column: 34, scope: !4012)
!4018 = !DILocation(line: 189, column: 24, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !326, line: 189, column: 9)
!4020 = !DILocation(line: 192, column: 48, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4019, file: !326, line: 192, column: 16)
!4022 = !DILocation(line: 192, column: 62, scope: !4021)
!4023 = !DILocation(line: 192, column: 16, scope: !4019)
!4024 = !DILocation(line: 194, column: 9, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4021, file: !326, line: 192, column: 71)
!4026 = !DILocation(line: 195, column: 9, scope: !4025)
!4027 = !DILocation(line: 197, column: 55, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4021, file: !326, line: 196, column: 12)
!4029 = !DILocation(line: 197, column: 41, scope: !4028)
!4030 = !DILocation(line: 197, column: 53, scope: !4028)
!4031 = !DILocation(line: 198, column: 41, scope: !4028)
!4032 = !DILocation(line: 198, column: 9, scope: !4028)
!4033 = !DILocation(line: 202, column: 5, scope: !4012)
!4034 = !DILocation(line: 203, column: 1, scope: !4012)
!4035 = distinct !DISubprogram(name: "get_current_irq", scope: !326, file: !326, line: 166, type: !2268, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4036)
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "irq_num", scope: !4035, file: !326, line: 168, type: !73)
!4038 = !DILocation(line: 168, column: 31, scope: !4035)
!4039 = !DILocation(line: 168, column: 36, scope: !4035)
!4040 = !DILocation(line: 0, scope: !4035)
!4041 = !DILocation(line: 169, column: 21, scope: !4035)
!4042 = !DILocation(line: 169, column: 5, scope: !4035)
!4043 = distinct !DISubprogram(name: "get_pending_irq", scope: !326, file: !326, line: 55, type: !2268, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2284)
!4044 = !DILocation(line: 57, column: 19, scope: !4043)
!4045 = !DILocation(line: 57, column: 51, scope: !4043)
!4046 = !DILocation(line: 57, column: 5, scope: !4043)
!4047 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !326, file: !326, line: 205, type: !4048, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4051)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!3849, !337, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !329, line: 175, baseType: !418)
!4051 = !{!4052, !4053, !4054}
!4052 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4047, file: !326, line: 205, type: !337)
!4053 = !DILocalVariable(name: "callback", arg: 2, scope: !4047, file: !326, line: 205, type: !4050)
!4054 = !DILocalVariable(name: "mask", scope: !4047, file: !326, line: 207, type: !73)
!4055 = !DILocation(line: 0, scope: !4047)
!4056 = !DILocation(line: 209, column: 24, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4047, file: !326, line: 209, column: 9)
!4058 = !DILocation(line: 213, column: 12, scope: !4047)
!4059 = !DILocation(line: 214, column: 5, scope: !4047)
!4060 = !DILocation(line: 215, column: 37, scope: !4047)
!4061 = !DILocation(line: 215, column: 51, scope: !4047)
!4062 = !DILocation(line: 216, column: 37, scope: !4047)
!4063 = !DILocation(line: 216, column: 49, scope: !4047)
!4064 = !DILocation(line: 217, column: 5, scope: !4047)
!4065 = !DILocation(line: 219, column: 5, scope: !4047)
!4066 = !DILocation(line: 220, column: 1, scope: !4047)
!4067 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !326, file: !326, line: 222, type: !4068, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!3849, !3112}
!4070 = !{!4071}
!4071 = !DILocalVariable(name: "mask", arg: 1, scope: !4067, file: !326, line: 222, type: !3112)
!4072 = !DILocation(line: 0, scope: !4067)
!4073 = !DILocation(line: 224, column: 13, scope: !4067)
!4074 = !DILocation(line: 224, column: 11, scope: !4067)
!4075 = !DILocation(line: 225, column: 5, scope: !4067)
!4076 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !326, file: !326, line: 228, type: !4077, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!3849, !73}
!4079 = !{!4080}
!4080 = !DILocalVariable(name: "mask", arg: 1, scope: !4076, file: !326, line: 228, type: !73)
!4081 = !DILocation(line: 0, scope: !4076)
!4082 = !DILocation(line: 230, column: 5, scope: !4076)
!4083 = !DILocation(line: 231, column: 5, scope: !4076)
!4084 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1052, file: !1052, line: 50, type: !4085, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4088)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!4087, !512, !163}
!4087 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !145, line: 238, baseType: !1054)
!4088 = !{!4089, !4090, !4091}
!4089 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4084, file: !1052, line: 50, type: !512)
!4090 = !DILocalVariable(name: "function_index", arg: 2, scope: !4084, file: !1052, line: 50, type: !163)
!4091 = !DILocalVariable(name: "ret_value", scope: !4084, file: !1052, line: 52, type: !154)
!4092 = !DILocation(line: 0, scope: !4084)
!4093 = !DILocation(line: 53, column: 18, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4084, file: !1052, line: 53, column: 9)
!4095 = !DILocation(line: 53, column: 9, scope: !4084)
!4096 = !DILocation(line: 57, column: 24, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4084, file: !1052, line: 57, column: 9)
!4098 = !DILocation(line: 57, column: 9, scope: !4084)
!4099 = !DILocation(line: 57, column: 9, scope: !4097)
!4100 = !DILocation(line: 60, column: 17, scope: !4084)
!4101 = !DILocation(line: 61, column: 12, scope: !4084)
!4102 = !DILocation(line: 61, column: 5, scope: !4084)
!4103 = !DILocation(line: 62, column: 1, scope: !4084)
!4104 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1052, file: !1052, line: 64, type: !4105, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4108)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!4107, !512}
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !145, line: 229, baseType: !1060)
!4108 = !{!4109}
!4109 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4104, file: !1052, line: 64, type: !512)
!4110 = !DILocation(line: 0, scope: !4104)
!4111 = !DILocation(line: 66, column: 5, scope: !4104)
!4112 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1052, file: !1052, line: 69, type: !4105, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4113)
!4113 = !{!4114}
!4114 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4112, file: !1052, line: 69, type: !512)
!4115 = !DILocation(line: 0, scope: !4112)
!4116 = !DILocation(line: 71, column: 5, scope: !4112)
!4117 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1052, file: !1052, line: 74, type: !4118, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4121)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!4107, !512, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 32)
!4121 = !{!4122, !4123, !4124}
!4122 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4117, file: !1052, line: 74, type: !512)
!4123 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4117, file: !1052, line: 74, type: !4120)
!4124 = !DILocalVariable(name: "status", scope: !4117, file: !1052, line: 76, type: !4125)
!4125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !120, line: 67, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 62, size: 64, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4126, file: !120, line: 63, baseType: !73, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4126, file: !120, line: 64, baseType: !163, size: 8, offset: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4126, file: !120, line: 65, baseType: !163, size: 8, offset: 40)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4126, file: !120, line: 66, baseType: !163, size: 8, offset: 48)
!4132 = !DILocation(line: 0, scope: !4117)
!4133 = !DILocation(line: 77, column: 14, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4117, file: !1052, line: 77, column: 9)
!4135 = !DILocation(line: 77, column: 9, scope: !4117)
!4136 = !DILocation(line: 81, column: 18, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4117, file: !1052, line: 81, column: 9)
!4138 = !DILocation(line: 81, column: 9, scope: !4117)
!4139 = !DILocation(line: 85, column: 14, scope: !4117)
!4140 = !DILocation(line: 86, column: 18, scope: !4117)
!4141 = !DILocation(line: 86, column: 16, scope: !4117)
!4142 = !DILocation(line: 87, column: 5, scope: !4117)
!4143 = !DILocation(line: 88, column: 1, scope: !4117)
!4144 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1052, file: !1052, line: 90, type: !4145, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!4107, !512, !1074}
!4147 = !{!4148, !4149, !4150}
!4148 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4144, file: !1052, line: 90, type: !512)
!4149 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4144, file: !1052, line: 90, type: !1074)
!4150 = !DILocalVariable(name: "ret_value", scope: !4144, file: !1052, line: 92, type: !154)
!4151 = !DILocation(line: 0, scope: !4144)
!4152 = !DILocation(line: 93, column: 18, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4144, file: !1052, line: 93, column: 9)
!4154 = !DILocation(line: 93, column: 9, scope: !4144)
!4155 = !DILocation(line: 97, column: 60, scope: !4144)
!4156 = !DILocation(line: 97, column: 17, scope: !4144)
!4157 = !DILocation(line: 98, column: 12, scope: !4144)
!4158 = !DILocation(line: 98, column: 5, scope: !4144)
!4159 = !DILocation(line: 99, column: 1, scope: !4144)
!4160 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1052, file: !1052, line: 101, type: !4118, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4161)
!4161 = !{!4162, !4163, !4164}
!4162 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4160, file: !1052, line: 101, type: !512)
!4163 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4160, file: !1052, line: 101, type: !4120)
!4164 = !DILocalVariable(name: "status", scope: !4160, file: !1052, line: 103, type: !4125)
!4165 = !DILocation(line: 0, scope: !4160)
!4166 = !DILocation(line: 104, column: 18, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4160, file: !1052, line: 104, column: 9)
!4168 = !DILocation(line: 104, column: 9, scope: !4160)
!4169 = !DILocation(line: 108, column: 14, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4160, file: !1052, line: 108, column: 9)
!4171 = !DILocation(line: 108, column: 9, scope: !4160)
!4172 = !DILocation(line: 112, column: 14, scope: !4160)
!4173 = !DILocation(line: 113, column: 18, scope: !4160)
!4174 = !DILocation(line: 113, column: 16, scope: !4160)
!4175 = !DILocation(line: 114, column: 5, scope: !4160)
!4176 = !DILocation(line: 115, column: 1, scope: !4160)
!4177 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1052, file: !1052, line: 117, type: !4178, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4181)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!4107, !512, !4180}
!4180 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !145, line: 213, baseType: !149)
!4181 = !{!4182, !4183, !4184}
!4182 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4177, file: !1052, line: 117, type: !512)
!4183 = !DILocalVariable(name: "direction", arg: 2, scope: !4177, file: !1052, line: 117, type: !4180)
!4184 = !DILocalVariable(name: "ret_value", scope: !4177, file: !1052, line: 119, type: !154)
!4185 = !DILocation(line: 0, scope: !4177)
!4186 = !DILocation(line: 120, column: 18, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4177, file: !1052, line: 120, column: 9)
!4188 = !DILocation(line: 120, column: 9, scope: !4177)
!4189 = !DILocation(line: 123, column: 17, scope: !4177)
!4190 = !DILocation(line: 125, column: 12, scope: !4177)
!4191 = !DILocation(line: 125, column: 5, scope: !4177)
!4192 = !DILocation(line: 126, column: 1, scope: !4177)
!4193 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1052, file: !1052, line: 128, type: !4194, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4197)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!4107, !512, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 32)
!4197 = !{!4198, !4199, !4200}
!4198 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4193, file: !1052, line: 128, type: !512)
!4199 = !DILocalVariable(name: "direction", arg: 2, scope: !4193, file: !1052, line: 128, type: !4196)
!4200 = !DILocalVariable(name: "status", scope: !4193, file: !1052, line: 131, type: !4125)
!4201 = !DILocation(line: 0, scope: !4193)
!4202 = !DILocation(line: 132, column: 18, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4193, file: !1052, line: 132, column: 9)
!4204 = !DILocation(line: 132, column: 9, scope: !4193)
!4205 = !DILocation(line: 136, column: 14, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4193, file: !1052, line: 136, column: 9)
!4207 = !DILocation(line: 136, column: 9, scope: !4193)
!4208 = !DILocation(line: 140, column: 14, scope: !4193)
!4209 = !DILocation(line: 141, column: 18, scope: !4193)
!4210 = !DILocation(line: 141, column: 16, scope: !4193)
!4211 = !DILocation(line: 142, column: 5, scope: !4193)
!4212 = !DILocation(line: 143, column: 1, scope: !4193)
!4213 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1052, file: !1052, line: 146, type: !4105, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4214)
!4214 = !{!4215, !4216}
!4215 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4213, file: !1052, line: 146, type: !512)
!4216 = !DILocalVariable(name: "status", scope: !4213, file: !1052, line: 148, type: !4125)
!4217 = !DILocation(line: 0, scope: !4213)
!4218 = !DILocation(line: 149, column: 18, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4213, file: !1052, line: 149, column: 9)
!4220 = !DILocation(line: 149, column: 9, scope: !4213)
!4221 = !DILocation(line: 153, column: 14, scope: !4213)
!4222 = !DILocation(line: 154, column: 76, scope: !4213)
!4223 = !DILocation(line: 154, column: 12, scope: !4213)
!4224 = !DILocation(line: 154, column: 5, scope: !4213)
!4225 = !DILocation(line: 155, column: 1, scope: !4213)
!4226 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1052, file: !1052, line: 157, type: !4105, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4227)
!4227 = !{!4228, !4229}
!4228 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4226, file: !1052, line: 157, type: !512)
!4229 = !DILocalVariable(name: "ret_value", scope: !4226, file: !1052, line: 159, type: !154)
!4230 = !DILocation(line: 0, scope: !4226)
!4231 = !DILocation(line: 160, column: 18, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4226, file: !1052, line: 160, column: 9)
!4233 = !DILocation(line: 160, column: 9, scope: !4226)
!4234 = !DILocation(line: 164, column: 17, scope: !4226)
!4235 = !DILocation(line: 165, column: 19, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4226, file: !1052, line: 165, column: 9)
!4237 = !DILocation(line: 165, column: 9, scope: !4226)
!4238 = !DILocation(line: 168, column: 17, scope: !4226)
!4239 = !DILocation(line: 169, column: 12, scope: !4226)
!4240 = !DILocation(line: 169, column: 5, scope: !4226)
!4241 = !DILocation(line: 170, column: 1, scope: !4226)
!4242 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1052, file: !1052, line: 172, type: !4105, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4243)
!4243 = !{!4244, !4245}
!4244 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4242, file: !1052, line: 172, type: !512)
!4245 = !DILocalVariable(name: "ret_value", scope: !4242, file: !1052, line: 174, type: !154)
!4246 = !DILocation(line: 0, scope: !4242)
!4247 = !DILocation(line: 175, column: 18, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4242, file: !1052, line: 175, column: 9)
!4249 = !DILocation(line: 175, column: 9, scope: !4242)
!4250 = !DILocation(line: 179, column: 17, scope: !4242)
!4251 = !DILocation(line: 180, column: 19, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4242, file: !1052, line: 180, column: 9)
!4253 = !DILocation(line: 180, column: 9, scope: !4242)
!4254 = !DILocation(line: 183, column: 17, scope: !4242)
!4255 = !DILocation(line: 184, column: 12, scope: !4242)
!4256 = !DILocation(line: 184, column: 5, scope: !4242)
!4257 = !DILocation(line: 185, column: 1, scope: !4242)
!4258 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1052, file: !1052, line: 187, type: !4105, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4259)
!4259 = !{!4260, !4261}
!4260 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4258, file: !1052, line: 187, type: !512)
!4261 = !DILocalVariable(name: "ret_value", scope: !4258, file: !1052, line: 189, type: !154)
!4262 = !DILocation(line: 0, scope: !4258)
!4263 = !DILocation(line: 191, column: 18, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4258, file: !1052, line: 191, column: 9)
!4265 = !DILocation(line: 191, column: 9, scope: !4258)
!4266 = !DILocation(line: 195, column: 17, scope: !4258)
!4267 = !DILocation(line: 196, column: 12, scope: !4258)
!4268 = !DILocation(line: 196, column: 5, scope: !4258)
!4269 = !DILocation(line: 197, column: 1, scope: !4258)
!4270 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1052, file: !1052, line: 200, type: !4271, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4273)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!4107, !512, !1075}
!4273 = !{!4274, !4275, !4276}
!4274 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4270, file: !1052, line: 200, type: !512)
!4275 = !DILocalVariable(name: "driving", arg: 2, scope: !4270, file: !1052, line: 200, type: !1075)
!4276 = !DILocalVariable(name: "ret_value", scope: !4270, file: !1052, line: 202, type: !154)
!4277 = !DILocation(line: 0, scope: !4270)
!4278 = !DILocation(line: 204, column: 18, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4270, file: !1052, line: 204, column: 9)
!4280 = !DILocation(line: 204, column: 9, scope: !4270)
!4281 = !DILocation(line: 208, column: 64, scope: !4270)
!4282 = !DILocation(line: 208, column: 17, scope: !4270)
!4283 = !DILocation(line: 210, column: 12, scope: !4270)
!4284 = !DILocation(line: 210, column: 5, scope: !4270)
!4285 = !DILocation(line: 211, column: 1, scope: !4270)
!4286 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1052, file: !1052, line: 214, type: !4287, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4290)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!4107, !512, !4289}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 32)
!4290 = !{!4291, !4292, !4293, !4294}
!4291 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4286, file: !1052, line: 214, type: !512)
!4292 = !DILocalVariable(name: "driving", arg: 2, scope: !4286, file: !1052, line: 214, type: !4289)
!4293 = !DILocalVariable(name: "ret_value", scope: !4286, file: !1052, line: 216, type: !154)
!4294 = !DILocalVariable(name: "value", scope: !4286, file: !1052, line: 217, type: !163)
!4295 = !DILocation(line: 0, scope: !4286)
!4296 = !DILocation(line: 217, column: 5, scope: !4286)
!4297 = !DILocation(line: 219, column: 18, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4286, file: !1052, line: 219, column: 9)
!4299 = !DILocation(line: 219, column: 9, scope: !4286)
!4300 = !DILocation(line: 223, column: 17, scope: !4286)
!4301 = !DILocation(line: 225, column: 44, scope: !4286)
!4302 = !DILocation(line: 225, column: 16, scope: !4286)
!4303 = !DILocation(line: 225, column: 14, scope: !4286)
!4304 = !DILocation(line: 227, column: 12, scope: !4286)
!4305 = !DILocation(line: 227, column: 5, scope: !4286)
!4306 = !DILocation(line: 228, column: 1, scope: !4286)
!4307 = distinct !DISubprogram(name: "hal_spi_master_init", scope: !427, file: !427, line: 132, type: !4308, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4313)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!4310, !4311, !4312}
!4310 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_status_t", file: !430, line: 556, baseType: !429)
!4311 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_port_t", file: !438, line: 462, baseType: !437)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319}
!4314 = !DILocalVariable(name: "master_port", arg: 1, scope: !4307, file: !427, line: 132, type: !4311)
!4315 = !DILocalVariable(name: "spi_config", arg: 2, scope: !4307, file: !427, line: 133, type: !4312)
!4316 = !DILocalVariable(name: "settings", scope: !4307, file: !427, line: 135, type: !73)
!4317 = !DILocalVariable(name: "ret_val", scope: !4307, file: !427, line: 136, type: !154)
!4318 = !DILocalVariable(name: "busy_status", scope: !4307, file: !427, line: 137, type: !4310)
!4319 = !DILocalVariable(name: "saved_mask", scope: !4320, file: !427, line: 150, type: !73)
!4320 = distinct !DILexicalBlock(scope: !4307, file: !427, line: 150, column: 5)
!4321 = !DILocation(line: 0, scope: !4307)
!4322 = !DILocation(line: 138, column: 10, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4307, file: !427, line: 138, column: 9)
!4324 = !DILocation(line: 138, column: 9, scope: !4307)
!4325 = !DILocation(line: 141, column: 14, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4307, file: !427, line: 141, column: 9)
!4327 = !DILocation(line: 141, column: 9, scope: !4307)
!4328 = !DILocation(line: 144, column: 22, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4307, file: !427, line: 144, column: 9)
!4330 = !DILocation(line: 144, column: 76, scope: !4329)
!4331 = !DILocation(line: 150, column: 5, scope: !4320)
!4332 = !DILocation(line: 0, scope: !4320)
!4333 = !DILocation(line: 150, column: 5, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4320, file: !427, line: 150, column: 5)
!4335 = !DILocation(line: 151, column: 9, scope: !4307)
!4336 = !DILocation(line: 150, column: 5, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !427, line: 150, column: 5)
!4338 = !DILocation(line: 154, column: 43, scope: !4307)
!4339 = !DILocation(line: 154, column: 5, scope: !4307)
!4340 = !DILocation(line: 156, column: 16, scope: !4307)
!4341 = !DILocation(line: 158, column: 65, scope: !4307)
!4342 = !DILocation(line: 158, column: 25, scope: !4307)
!4343 = !{i32 -2, i32 119999999}
!4344 = !DILocation(line: 157, column: 15, scope: !4307)
!4345 = !DILocation(line: 159, column: 17, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4307, file: !427, line: 159, column: 9)
!4347 = !DILocation(line: 159, column: 9, scope: !4307)
!4348 = !DILocation(line: 162, column: 5, scope: !4307)
!4349 = !DILocation(line: 163, column: 35, scope: !4307)
!4350 = !DILocation(line: 163, column: 5, scope: !4307)
!4351 = !DILocation(line: 169, column: 5, scope: !4307)
!4352 = !DILocation(line: 170, column: 1, scope: !4307)
!4353 = distinct !DISubprogram(name: "hal_spi_master_is_master_port_valid", scope: !427, file: !427, line: 60, type: !4354, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!322, !4311}
!4356 = !{!4357}
!4357 = !DILocalVariable(name: "master_port", arg: 1, scope: !4353, file: !427, line: 60, type: !4311)
!4358 = !DILocation(line: 0, scope: !4353)
!4359 = !DILocation(line: 62, column: 24, scope: !4353)
!4360 = !DILocation(line: 62, column: 5, scope: !4353)
!4361 = distinct !DISubprogram(name: "hal_spi_master_map_cs_pin", scope: !427, file: !427, line: 100, type: !4362, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!512, !503}
!4364 = !{!4365}
!4365 = !DILocalVariable(name: "slave_port", arg: 1, scope: !4361, file: !427, line: 100, type: !503)
!4366 = !DILocation(line: 0, scope: !4361)
!4367 = !DILocation(line: 103, column: 32, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4361, file: !427, line: 103, column: 9)
!4369 = !DILocation(line: 103, column: 9, scope: !4361)
!4370 = !DILocation(line: 104, column: 13, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4372, file: !427, line: 104, column: 13)
!4372 = distinct !DILexicalBlock(scope: !4368, file: !427, line: 103, column: 47)
!4373 = !DILocation(line: 104, column: 13, scope: !4372)
!4374 = !DILocation(line: 105, column: 31, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4371, file: !427, line: 104, column: 35)
!4376 = !DILocation(line: 106, column: 13, scope: !4375)
!4377 = !DILocation(line: 107, column: 9, scope: !4375)
!4378 = !DILocation(line: 107, column: 20, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4371, file: !427, line: 107, column: 20)
!4380 = !DILocation(line: 107, column: 20, scope: !4371)
!4381 = !DILocation(line: 108, column: 31, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !427, line: 107, column: 41)
!4383 = !DILocation(line: 109, column: 13, scope: !4382)
!4384 = !DILocation(line: 110, column: 9, scope: !4382)
!4385 = !DILocation(line: 111, column: 13, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4379, file: !427, line: 110, column: 16)
!4387 = !DILocation(line: 112, column: 31, scope: !4386)
!4388 = !DILocation(line: 115, column: 27, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4368, file: !427, line: 114, column: 12)
!4390 = !DILocation(line: 116, column: 9, scope: !4389)
!4391 = !DILocation(line: 118, column: 5, scope: !4361)
!4392 = distinct !DISubprogram(name: "hal_spi_master_build_settings", scope: !427, file: !427, line: 65, type: !4393, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!73, !4312}
!4395 = !{!4396, !4397}
!4396 = !DILocalVariable(name: "spi_config", arg: 1, scope: !4392, file: !427, line: 65, type: !4312)
!4397 = !DILocalVariable(name: "settings", scope: !4392, file: !427, line: 67, type: !73)
!4398 = !DILocation(line: 0, scope: !4392)
!4399 = !DILocation(line: 68, column: 47, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4392, file: !427, line: 68, column: 9)
!4401 = !DILocation(line: 68, column: 32, scope: !4400)
!4402 = !DILocation(line: 73, column: 49, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4392, file: !427, line: 73, column: 9)
!4404 = !DILocation(line: 73, column: 34, scope: !4403)
!4405 = !DILocation(line: 73, column: 9, scope: !4392)
!4406 = !DILocation(line: 78, column: 55, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4392, file: !427, line: 78, column: 9)
!4408 = !DILocation(line: 78, column: 40, scope: !4407)
!4409 = !DILocation(line: 78, column: 9, scope: !4392)
!4410 = !DILocation(line: 83, column: 52, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4392, file: !427, line: 83, column: 9)
!4412 = !DILocation(line: 83, column: 37, scope: !4411)
!4413 = !DILocation(line: 83, column: 9, scope: !4392)
!4414 = !DILocation(line: 88, column: 5, scope: !4392)
!4415 = !DILocation(line: 0, scope: !515)
!4416 = !DILocation(line: 97, column: 33, scope: !515)
!4417 = !DILocation(line: 97, column: 45, scope: !515)
!4418 = !DILocation(line: 97, column: 5, scope: !515)
!4419 = distinct !DISubprogram(name: "hal_spi_master_deinit", scope: !427, file: !427, line: 172, type: !4420, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4422)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!4310, !4311}
!4422 = !{!4423}
!4423 = !DILocalVariable(name: "master_port", arg: 1, scope: !4419, file: !427, line: 172, type: !4311)
!4424 = !DILocation(line: 0, scope: !4419)
!4425 = !DILocation(line: 174, column: 10, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4419, file: !427, line: 174, column: 9)
!4427 = !DILocation(line: 174, column: 9, scope: !4419)
!4428 = !DILocation(line: 177, column: 5, scope: !4419)
!4429 = !DILocation(line: 179, column: 5, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4419, file: !427, line: 179, column: 5)
!4431 = !DILocation(line: 184, column: 5, scope: !4419)
!4432 = !DILocation(line: 185, column: 1, scope: !4419)
!4433 = distinct !DISubprogram(name: "hal_spi_master_send_polling", scope: !427, file: !427, line: 188, type: !4434, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!4310, !4311, !162, !73}
!4436 = !{!4437, !4438, !4439, !4440}
!4437 = !DILocalVariable(name: "master_port", arg: 1, scope: !4433, file: !427, line: 188, type: !4311)
!4438 = !DILocalVariable(name: "data", arg: 2, scope: !4433, file: !427, line: 189, type: !162)
!4439 = !DILocalVariable(name: "size", arg: 3, scope: !4433, file: !427, line: 190, type: !73)
!4440 = !DILocalVariable(name: "ret_val", scope: !4433, file: !427, line: 192, type: !154)
!4441 = !DILocation(line: 0, scope: !4433)
!4442 = !DILocation(line: 193, column: 10, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4433, file: !427, line: 193, column: 9)
!4444 = !DILocation(line: 193, column: 9, scope: !4433)
!4445 = !DILocation(line: 196, column: 14, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4433, file: !427, line: 196, column: 9)
!4447 = !DILocation(line: 196, column: 9, scope: !4433)
!4448 = !DILocation(line: 201, column: 10, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4433, file: !427, line: 201, column: 9)
!4450 = !DILocation(line: 201, column: 35, scope: !4449)
!4451 = !DILocation(line: 201, column: 51, scope: !4449)
!4452 = !DILocation(line: 201, column: 9, scope: !4433)
!4453 = !DILocation(line: 204, column: 25, scope: !4433)
!4454 = !DILocation(line: 204, column: 5, scope: !4433)
!4455 = !DILocation(line: 208, column: 15, scope: !4433)
!4456 = !DILocation(line: 212, column: 25, scope: !4433)
!4457 = !DILocation(line: 212, column: 5, scope: !4433)
!4458 = !DILocation(line: 213, column: 12, scope: !4433)
!4459 = !DILocation(line: 213, column: 5, scope: !4433)
!4460 = !DILocation(line: 214, column: 1, scope: !4433)
!4461 = distinct !DISubprogram(name: "hal_spi_master_send_and_receive_polling", scope: !427, file: !427, line: 218, type: !4462, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4472)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!4310, !4311, !4464}
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_send_and_receive_config_t", file: !430, line: 616, baseType: !4466)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 611, size: 128, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !4466, file: !430, line: 612, baseType: !162, size: 32)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "send_length", scope: !4466, file: !430, line: 613, baseType: !73, size: 32, offset: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buffer", scope: !4466, file: !430, line: 614, baseType: !162, size: 32, offset: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "receive_length", scope: !4466, file: !430, line: 615, baseType: !73, size: 32, offset: 96)
!4472 = !{!4473, !4474, !4475}
!4473 = !DILocalVariable(name: "master_port", arg: 1, scope: !4461, file: !427, line: 218, type: !4311)
!4474 = !DILocalVariable(name: "spi_send_and_receive_config", arg: 2, scope: !4461, file: !427, line: 219, type: !4464)
!4475 = !DILocalVariable(name: "ret_val", scope: !4461, file: !427, line: 221, type: !154)
!4476 = !DILocation(line: 0, scope: !4461)
!4477 = !DILocation(line: 222, column: 10, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4461, file: !427, line: 222, column: 9)
!4479 = !DILocation(line: 222, column: 9, scope: !4461)
!4480 = !DILocation(line: 225, column: 47, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4461, file: !427, line: 225, column: 9)
!4482 = !DILocation(line: 225, column: 14, scope: !4481)
!4483 = !DILocation(line: 225, column: 9, scope: !4461)
!4484 = !DILocation(line: 228, column: 47, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4461, file: !427, line: 228, column: 9)
!4486 = !DILocation(line: 228, column: 14, scope: !4485)
!4487 = !DILocation(line: 228, column: 9, scope: !4461)
!4488 = !DILocation(line: 231, column: 38, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4461, file: !427, line: 231, column: 9)
!4490 = !DILocation(line: 231, column: 50, scope: !4489)
!4491 = !DILocation(line: 231, column: 9, scope: !4461)
!4492 = !DILocation(line: 234, column: 84, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4461, file: !427, line: 234, column: 9)
!4494 = !DILocation(line: 234, column: 52, scope: !4493)
!4495 = !DILocation(line: 234, column: 9, scope: !4461)
!4496 = !DILocation(line: 239, column: 10, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4461, file: !427, line: 239, column: 9)
!4498 = !DILocation(line: 239, column: 35, scope: !4497)
!4499 = !DILocation(line: 239, column: 51, scope: !4497)
!4500 = !DILocation(line: 239, column: 9, scope: !4461)
!4501 = !DILocation(line: 242, column: 25, scope: !4461)
!4502 = !DILocation(line: 242, column: 5, scope: !4461)
!4503 = !DILocation(line: 246, column: 25, scope: !4461)
!4504 = !DILocation(line: 247, column: 54, scope: !4461)
!4505 = !DILocation(line: 248, column: 54, scope: !4461)
!4506 = !DILocation(line: 248, column: 69, scope: !4461)
!4507 = !DILocation(line: 249, column: 54, scope: !4461)
!4508 = !DILocation(line: 249, column: 69, scope: !4461)
!4509 = !DILocation(line: 246, column: 15, scope: !4461)
!4510 = !DILocation(line: 253, column: 25, scope: !4461)
!4511 = !DILocation(line: 253, column: 5, scope: !4461)
!4512 = !DILocation(line: 255, column: 12, scope: !4461)
!4513 = !DILocation(line: 255, column: 5, scope: !4461)
!4514 = !DILocation(line: 256, column: 1, scope: !4461)
!4515 = distinct !DISubprogram(name: "hal_spi_build_op_addr", scope: !427, file: !427, line: 121, type: !4516, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4520)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!73, !4518}
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4520 = !{!4521, !4522, !4523}
!4521 = !DILocalVariable(name: "config", arg: 1, scope: !4515, file: !427, line: 121, type: !4518)
!4522 = !DILocalVariable(name: "op_addr", scope: !4515, file: !427, line: 123, type: !73)
!4523 = !DILocalVariable(name: "index", scope: !4515, file: !427, line: 124, type: !73)
!4524 = !DILocation(line: 0, scope: !4515)
!4525 = !DILocation(line: 126, column: 27, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !427, line: 126, column: 5)
!4527 = distinct !DILexicalBlock(scope: !4515, file: !427, line: 126, column: 5)
!4528 = !DILocation(line: 126, column: 5, scope: !4527)
!4529 = !DILocation(line: 127, column: 31, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4526, file: !427, line: 126, column: 59)
!4531 = !DILocation(line: 127, column: 89, scope: !4530)
!4532 = !DILocation(line: 127, column: 94, scope: !4530)
!4533 = !DILocation(line: 127, column: 56, scope: !4530)
!4534 = !DILocation(line: 127, column: 17, scope: !4530)
!4535 = !DILocation(line: 126, column: 55, scope: !4526)
!4536 = distinct !{!4536, !4528, !4537}
!4537 = !DILocation(line: 128, column: 5, scope: !4527)
!4538 = !DILocation(line: 129, column: 5, scope: !4515)
!4539 = distinct !DISubprogram(name: "hal_spi_master_get_running_status", scope: !427, file: !427, line: 259, type: !4540, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4544)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!4310, !4311, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_running_status_t", file: !430, line: 563, baseType: !459)
!4544 = !{!4545, !4546}
!4545 = !DILocalVariable(name: "master_port", arg: 1, scope: !4539, file: !427, line: 259, type: !4311)
!4546 = !DILocalVariable(name: "running_status", arg: 2, scope: !4539, file: !427, line: 260, type: !4542)
!4547 = !DILocation(line: 0, scope: !4539)
!4548 = !DILocation(line: 262, column: 10, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4539, file: !427, line: 262, column: 9)
!4550 = !DILocation(line: 262, column: 9, scope: !4539)
!4551 = !DILocation(line: 265, column: 14, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4539, file: !427, line: 265, column: 9)
!4553 = !DILocation(line: 265, column: 9, scope: !4539)
!4554 = !DILocation(line: 269, column: 10, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4539, file: !427, line: 269, column: 9)
!4556 = !DILocation(line: 0, scope: !4555)
!4557 = !DILocation(line: 275, column: 5, scope: !4539)
!4558 = !DILocation(line: 276, column: 1, scope: !4539)
!4559 = distinct !DISubprogram(name: "hal_uart_init", scope: !523, file: !523, line: 234, type: !4560, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4564)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!4562, !583, !4563}
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !526, line: 351, baseType: !525)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32)
!4564 = !{!4565, !4566}
!4565 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4559, file: !523, line: 234, type: !583)
!4566 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4559, file: !523, line: 234, type: !4563)
!4567 = !DILocation(line: 0, scope: !4559)
!4568 = !DILocation(line: 236, column: 10, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4559, file: !523, line: 236, column: 9)
!4570 = !DILocation(line: 236, column: 9, scope: !4559)
!4571 = !DILocation(line: 239, column: 41, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4559, file: !523, line: 239, column: 9)
!4573 = !DILocation(line: 239, column: 9, scope: !4559)
!4574 = !DILocation(line: 242, column: 5, scope: !4559)
!4575 = !DILocation(line: 243, column: 45, scope: !4559)
!4576 = !DILocation(line: 243, column: 12, scope: !4559)
!4577 = !DILocation(line: 244, column: 12, scope: !4559)
!4578 = !DILocation(line: 243, column: 5, scope: !4559)
!4579 = !DILocation(line: 245, column: 58, scope: !4559)
!4580 = !DILocation(line: 246, column: 30, scope: !4559)
!4581 = !{i32 0, i32 2}
!4582 = !DILocation(line: 246, column: 5, scope: !4559)
!4583 = !DILocation(line: 247, column: 5, scope: !4559)
!4584 = !DILocation(line: 249, column: 31, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4559, file: !523, line: 249, column: 9)
!4586 = !DILocation(line: 249, column: 28, scope: !4585)
!4587 = !DILocation(line: 261, column: 1, scope: !4559)
!4588 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !523, file: !523, line: 93, type: !4589, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4593)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!322, !583, !4591}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 32)
!4592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!4593 = !{!4594, !4595}
!4594 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4588, file: !523, line: 93, type: !583)
!4595 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4588, file: !523, line: 93, type: !4591)
!4596 = !DILocation(line: 0, scope: !4588)
!4597 = !DILocation(line: 95, column: 10, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4588, file: !523, line: 95, column: 9)
!4599 = !DILocation(line: 95, column: 9, scope: !4588)
!4600 = !DILocation(line: 101, column: 23, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4588, file: !523, line: 101, column: 9)
!4602 = !DILocation(line: 101, column: 32, scope: !4601)
!4603 = !DILocation(line: 101, column: 60, scope: !4601)
!4604 = !DILocation(line: 102, column: 27, scope: !4601)
!4605 = !DILocation(line: 102, column: 34, scope: !4601)
!4606 = !DILocation(line: 102, column: 58, scope: !4601)
!4607 = !DILocation(line: 103, column: 27, scope: !4601)
!4608 = !DILocation(line: 103, column: 36, scope: !4601)
!4609 = !DILocation(line: 103, column: 59, scope: !4601)
!4610 = !DILocation(line: 104, column: 27, scope: !4601)
!4611 = !DILocation(line: 104, column: 39, scope: !4601)
!4612 = !DILocation(line: 101, column: 9, scope: !4588)
!4613 = !DILocation(line: 109, column: 1, scope: !4588)
!4614 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !523, file: !523, line: 139, type: !4615, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4617)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!2965, !583}
!4617 = !{!4618}
!4618 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4614, file: !523, line: 139, type: !583)
!4619 = !DILocation(line: 0, scope: !4614)
!4620 = !DILocation(line: 141, column: 24, scope: !4614)
!4621 = !DILocation(line: 141, column: 12, scope: !4614)
!4622 = !DILocation(line: 141, column: 5, scope: !4614)
!4623 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !523, file: !523, line: 593, type: !4624, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4626)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!4562, !583, !4591}
!4626 = !{!4627, !4628}
!4627 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4623, file: !523, line: 593, type: !583)
!4628 = !DILocalVariable(name: "config", arg: 2, scope: !4623, file: !523, line: 593, type: !4591)
!4629 = !DILocation(line: 0, scope: !4623)
!4630 = !DILocation(line: 595, column: 10, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4623, file: !523, line: 595, column: 9)
!4632 = !DILocation(line: 595, column: 9, scope: !4623)
!4633 = !DILocation(line: 598, column: 45, scope: !4623)
!4634 = !DILocation(line: 598, column: 12, scope: !4623)
!4635 = !DILocation(line: 598, column: 59, scope: !4623)
!4636 = !DILocation(line: 598, column: 5, scope: !4623)
!4637 = !DILocation(line: 599, column: 23, scope: !4623)
!4638 = !DILocation(line: 600, column: 59, scope: !4623)
!4639 = !DILocation(line: 600, column: 23, scope: !4623)
!4640 = !DILocation(line: 601, column: 62, scope: !4623)
!4641 = !DILocation(line: 601, column: 23, scope: !4623)
!4642 = !DILocation(line: 602, column: 57, scope: !4623)
!4643 = !DILocation(line: 602, column: 23, scope: !4623)
!4644 = !DILocation(line: 603, column: 58, scope: !4623)
!4645 = !DILocation(line: 603, column: 23, scope: !4623)
!4646 = !DILocation(line: 599, column: 5, scope: !4623)
!4647 = !DILocation(line: 604, column: 5, scope: !4623)
!4648 = !DILocation(line: 605, column: 1, scope: !4623)
!4649 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !523, file: !523, line: 145, type: !4650, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!73, !598}
!4652 = !{!4653, !4654}
!4653 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4649, file: !523, line: 145, type: !598)
!4654 = !DILocalVariable(name: "baudrate_tbl", scope: !4649, file: !523, line: 147, type: !4655)
!4655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 416, elements: !4656)
!4656 = !{!4657}
!4657 = !DISubrange(count: 13)
!4658 = !DILocation(line: 0, scope: !4649)
!4659 = !DILocation(line: 147, column: 14, scope: !4649)
!4660 = !DILocation(line: 151, column: 12, scope: !4649)
!4661 = !DILocation(line: 151, column: 5, scope: !4649)
!4662 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !523, file: !523, line: 155, type: !4663, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4665)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!3035, !600}
!4665 = !{!4666, !4667}
!4666 = !DILocalVariable(name: "word_length", arg: 1, scope: !4662, file: !523, line: 155, type: !600)
!4667 = !DILocalVariable(name: "databit_tbl", scope: !4662, file: !523, line: 157, type: !4668)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 64, elements: !403)
!4669 = !DILocation(line: 0, scope: !4662)
!4670 = !DILocation(line: 157, column: 14, scope: !4662)
!4671 = !DILocation(line: 160, column: 12, scope: !4662)
!4672 = !DILocation(line: 160, column: 5, scope: !4662)
!4673 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !523, file: !523, line: 164, type: !4674, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4676)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!3035, !604}
!4676 = !{!4677, !4678}
!4677 = !DILocalVariable(name: "parity", arg: 1, scope: !4673, file: !523, line: 164, type: !604)
!4678 = !DILocalVariable(name: "parity_tbl", scope: !4673, file: !523, line: 166, type: !4679)
!4679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 80, elements: !407)
!4680 = !DILocation(line: 0, scope: !4673)
!4681 = !DILocation(line: 166, column: 14, scope: !4673)
!4682 = !DILocation(line: 169, column: 12, scope: !4673)
!4683 = !DILocation(line: 169, column: 5, scope: !4673)
!4684 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !523, file: !523, line: 173, type: !4685, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4687)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!3035, !602}
!4687 = !{!4688, !4689}
!4688 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4684, file: !523, line: 173, type: !602)
!4689 = !DILocalVariable(name: "stopbit_tbl", scope: !4684, file: !523, line: 175, type: !4690)
!4690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3035, size: 48, elements: !749)
!4691 = !DILocation(line: 0, scope: !4684)
!4692 = !DILocation(line: 175, column: 14, scope: !4684)
!4693 = !DILocation(line: 178, column: 12, scope: !4684)
!4694 = !DILocation(line: 178, column: 5, scope: !4684)
!4695 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !523, file: !523, line: 87, type: !4696, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4698)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!322, !583}
!4698 = !{!4699}
!4699 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4695, file: !523, line: 87, type: !583)
!4700 = !DILocation(line: 0, scope: !4695)
!4701 = !DILocation(line: 89, column: 23, scope: !4695)
!4702 = !DILocation(line: 89, column: 5, scope: !4695)
!4703 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !523, file: !523, line: 264, type: !4704, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!4562, !583}
!4706 = !{!4707}
!4707 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4703, file: !523, line: 264, type: !583)
!4708 = !DILocation(line: 0, scope: !4703)
!4709 = !DILocation(line: 266, column: 10, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !523, line: 266, column: 9)
!4711 = !DILocation(line: 266, column: 9, scope: !4703)
!4712 = !DILocation(line: 269, column: 41, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4703, file: !523, line: 269, column: 9)
!4714 = !DILocation(line: 269, column: 62, scope: !4713)
!4715 = !DILocation(line: 269, column: 9, scope: !4703)
!4716 = !DILocation(line: 272, column: 5, scope: !4703)
!4717 = !DILocation(line: 275, column: 22, scope: !4703)
!4718 = !DILocation(line: 275, column: 5, scope: !4703)
!4719 = !DILocation(line: 284, column: 5, scope: !4703)
!4720 = !DILocation(line: 286, column: 5, scope: !4703)
!4721 = !DILocation(line: 287, column: 1, scope: !4703)
!4722 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !523, file: !523, line: 290, type: !4723, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4725)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{null, !583, !575}
!4725 = !{!4726, !4727, !4728}
!4726 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4722, file: !523, line: 290, type: !583)
!4727 = !DILocalVariable(name: "byte", arg: 2, scope: !4722, file: !523, line: 290, type: !575)
!4728 = !DILocalVariable(name: "int_no", scope: !4722, file: !523, line: 292, type: !2965)
!4729 = !DILocation(line: 0, scope: !4722)
!4730 = !DILocation(line: 292, column: 26, scope: !4722)
!4731 = !DILocation(line: 294, column: 16, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4722, file: !523, line: 294, column: 9)
!4733 = !DILocation(line: 294, column: 9, scope: !4722)
!4734 = !DILocation(line: 295, column: 9, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !523, line: 294, column: 34)
!4736 = !DILocation(line: 296, column: 5, scope: !4735)
!4737 = !DILocation(line: 299, column: 1, scope: !4722)
!4738 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !523, file: !523, line: 302, type: !4739, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4741)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!73, !583, !3172, !73}
!4741 = !{!4742, !4743, !4744, !4745, !4746}
!4742 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4738, file: !523, line: 302, type: !583)
!4743 = !DILocalVariable(name: "data", arg: 2, scope: !4738, file: !523, line: 302, type: !3172)
!4744 = !DILocalVariable(name: "size", arg: 3, scope: !4738, file: !523, line: 302, type: !73)
!4745 = !DILocalVariable(name: "int_no", scope: !4738, file: !523, line: 304, type: !2965)
!4746 = !DILocalVariable(name: "index", scope: !4738, file: !523, line: 305, type: !73)
!4747 = !DILocation(line: 0, scope: !4738)
!4748 = !DILocation(line: 304, column: 26, scope: !4738)
!4749 = !DILocation(line: 307, column: 14, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4738, file: !523, line: 307, column: 9)
!4751 = !DILocation(line: 307, column: 9, scope: !4738)
!4752 = !DILocation(line: 313, column: 53, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !523, line: 312, column: 48)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !523, line: 312, column: 9)
!4755 = distinct !DILexicalBlock(scope: !4756, file: !523, line: 312, column: 9)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !523, line: 311, column: 33)
!4757 = distinct !DILexicalBlock(scope: !4738, file: !523, line: 311, column: 9)
!4758 = !DILocation(line: 313, column: 13, scope: !4753)
!4759 = !DILocation(line: 312, column: 44, scope: !4754)
!4760 = !DILocation(line: 312, column: 31, scope: !4754)
!4761 = !DILocation(line: 312, column: 9, scope: !4755)
!4762 = distinct !{!4762, !4761, !4763}
!4763 = !DILocation(line: 314, column: 9, scope: !4755)
!4764 = !DILocation(line: 318, column: 1, scope: !4738)
!4765 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !523, file: !523, line: 320, type: !4739, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4766)
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772}
!4767 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4765, file: !523, line: 320, type: !583)
!4768 = !DILocalVariable(name: "data", arg: 2, scope: !4765, file: !523, line: 320, type: !3172)
!4769 = !DILocalVariable(name: "size", arg: 3, scope: !4765, file: !523, line: 320, type: !73)
!4770 = !DILocalVariable(name: "actual_space", scope: !4765, file: !523, line: 322, type: !73)
!4771 = !DILocalVariable(name: "send_size", scope: !4765, file: !523, line: 322, type: !73)
!4772 = !DILocalVariable(name: "ch", scope: !4765, file: !523, line: 323, type: !4773)
!4773 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !215, line: 144, baseType: !214)
!4774 = !DILocation(line: 0, scope: !4765)
!4775 = !DILocation(line: 322, column: 5, scope: !4765)
!4776 = !DILocation(line: 328, column: 10, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4765, file: !523, line: 328, column: 9)
!4778 = !DILocation(line: 328, column: 9, scope: !4765)
!4779 = !DILocation(line: 332, column: 15, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4765, file: !523, line: 332, column: 9)
!4781 = !DILocation(line: 332, column: 24, scope: !4780)
!4782 = !DILocation(line: 335, column: 42, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4765, file: !523, line: 335, column: 9)
!4784 = !DILocation(line: 335, column: 9, scope: !4765)
!4785 = !DILocation(line: 349, column: 30, scope: !4765)
!4786 = !DILocation(line: 349, column: 5, scope: !4765)
!4787 = !DILocation(line: 350, column: 9, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4765, file: !523, line: 350, column: 9)
!4789 = !DILocation(line: 350, column: 22, scope: !4788)
!4790 = !DILocation(line: 355, column: 5, scope: !4765)
!4791 = !DILocation(line: 357, column: 22, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4765, file: !523, line: 357, column: 9)
!4793 = !DILocation(line: 357, column: 19, scope: !4792)
!4794 = !DILocation(line: 357, column: 9, scope: !4765)
!4795 = !DILocation(line: 358, column: 14, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4792, file: !523, line: 357, column: 36)
!4797 = !{i32 14, i32 18}
!4798 = !DILocation(line: 359, column: 9, scope: !4796)
!4799 = !DILocation(line: 360, column: 5, scope: !4796)
!4800 = !DILocation(line: 362, column: 1, scope: !4765)
!4801 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !523, file: !523, line: 191, type: !4802, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!4773, !2965, !322}
!4804 = !{!4805, !4806, !4807}
!4805 = !DILocalVariable(name: "port", arg: 1, scope: !4801, file: !523, line: 191, type: !2965)
!4806 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4801, file: !523, line: 191, type: !322)
!4807 = !DILocalVariable(name: "ch", scope: !4801, file: !523, line: 193, type: !4773)
!4808 = !DILocation(line: 0, scope: !4801)
!4809 = !DILocation(line: 195, column: 14, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4801, file: !523, line: 195, column: 9)
!4811 = !DILocation(line: 195, column: 9, scope: !4801)
!4812 = !DILocation(line: 209, column: 5, scope: !4801)
!4813 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !523, file: !523, line: 365, type: !4814, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4816)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!575, !583}
!4816 = !{!4817, !4818}
!4817 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4813, file: !523, line: 365, type: !583)
!4818 = !DILocalVariable(name: "int_no", scope: !4813, file: !523, line: 367, type: !2965)
!4819 = !DILocation(line: 0, scope: !4813)
!4820 = !DILocation(line: 367, column: 26, scope: !4813)
!4821 = !DILocation(line: 369, column: 16, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4813, file: !523, line: 369, column: 9)
!4823 = !DILocation(line: 369, column: 9, scope: !4813)
!4824 = !DILocation(line: 370, column: 22, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !523, line: 369, column: 33)
!4826 = !DILocation(line: 370, column: 9, scope: !4825)
!4827 = !DILocation(line: 0, scope: !4822)
!4828 = !DILocation(line: 375, column: 1, scope: !4813)
!4829 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !523, file: !523, line: 377, type: !4830, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4832)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!73, !583}
!4832 = !{!4833, !4834}
!4833 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4829, file: !523, line: 377, type: !583)
!4834 = !DILocalVariable(name: "int_no", scope: !4829, file: !523, line: 379, type: !2965)
!4835 = !DILocation(line: 0, scope: !4829)
!4836 = !DILocation(line: 379, column: 26, scope: !4829)
!4837 = !DILocation(line: 381, column: 16, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4829, file: !523, line: 381, column: 9)
!4839 = !DILocation(line: 381, column: 9, scope: !4829)
!4840 = !DILocation(line: 382, column: 16, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !523, line: 381, column: 33)
!4842 = !DILocation(line: 382, column: 9, scope: !4841)
!4843 = !DILocation(line: 0, scope: !4838)
!4844 = !DILocation(line: 387, column: 1, scope: !4829)
!4845 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !523, file: !523, line: 390, type: !4846, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!73, !583, !162, !73}
!4848 = !{!4849, !4850, !4851, !4852, !4853}
!4849 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4845, file: !523, line: 390, type: !583)
!4850 = !DILocalVariable(name: "buffer", arg: 2, scope: !4845, file: !523, line: 390, type: !162)
!4851 = !DILocalVariable(name: "size", arg: 3, scope: !4845, file: !523, line: 390, type: !73)
!4852 = !DILocalVariable(name: "int_no", scope: !4845, file: !523, line: 392, type: !2965)
!4853 = !DILocalVariable(name: "index", scope: !4845, file: !523, line: 393, type: !73)
!4854 = !DILocation(line: 0, scope: !4845)
!4855 = !DILocation(line: 392, column: 26, scope: !4845)
!4856 = !DILocation(line: 395, column: 16, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4845, file: !523, line: 395, column: 9)
!4858 = !DILocation(line: 395, column: 9, scope: !4845)
!4859 = !DILocation(line: 401, column: 38, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !523, line: 400, column: 48)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !523, line: 400, column: 9)
!4862 = distinct !DILexicalBlock(scope: !4863, file: !523, line: 400, column: 9)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !523, line: 399, column: 33)
!4864 = distinct !DILexicalBlock(scope: !4845, file: !523, line: 399, column: 9)
!4865 = !DILocation(line: 401, column: 13, scope: !4860)
!4866 = !DILocation(line: 401, column: 27, scope: !4860)
!4867 = !DILocation(line: 400, column: 44, scope: !4861)
!4868 = !DILocation(line: 400, column: 31, scope: !4861)
!4869 = !DILocation(line: 400, column: 9, scope: !4862)
!4870 = distinct !{!4870, !4869, !4871}
!4871 = !DILocation(line: 402, column: 9, scope: !4862)
!4872 = !DILocation(line: 406, column: 1, scope: !4845)
!4873 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !523, file: !523, line: 408, type: !4846, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4874)
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4880}
!4875 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4873, file: !523, line: 408, type: !583)
!4876 = !DILocalVariable(name: "buffer", arg: 2, scope: !4873, file: !523, line: 408, type: !162)
!4877 = !DILocalVariable(name: "size", arg: 3, scope: !4873, file: !523, line: 408, type: !73)
!4878 = !DILocalVariable(name: "actual_size", scope: !4873, file: !523, line: 410, type: !73)
!4879 = !DILocalVariable(name: "receive_size", scope: !4873, file: !523, line: 410, type: !73)
!4880 = !DILocalVariable(name: "ch", scope: !4873, file: !523, line: 411, type: !4773)
!4881 = !DILocation(line: 0, scope: !4873)
!4882 = !DILocation(line: 410, column: 5, scope: !4873)
!4883 = !DILocation(line: 413, column: 10, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4873, file: !523, line: 413, column: 9)
!4885 = !DILocation(line: 413, column: 9, scope: !4873)
!4886 = !DILocation(line: 417, column: 17, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4873, file: !523, line: 417, column: 9)
!4888 = !DILocation(line: 417, column: 26, scope: !4887)
!4889 = !DILocation(line: 421, column: 30, scope: !4873)
!4890 = !DILocation(line: 421, column: 5, scope: !4873)
!4891 = !DILocation(line: 422, column: 9, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4873, file: !523, line: 422, column: 9)
!4893 = !DILocation(line: 422, column: 21, scope: !4892)
!4894 = !DILocation(line: 427, column: 5, scope: !4873)
!4895 = !DILocation(line: 429, column: 25, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4873, file: !523, line: 429, column: 9)
!4897 = !DILocation(line: 429, column: 22, scope: !4896)
!4898 = !DILocation(line: 429, column: 9, scope: !4873)
!4899 = !DILocation(line: 430, column: 14, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4896, file: !523, line: 429, column: 38)
!4901 = !DILocation(line: 431, column: 9, scope: !4900)
!4902 = !DILocation(line: 432, column: 5, scope: !4900)
!4903 = !DILocation(line: 435, column: 1, scope: !4873)
!4904 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !523, file: !523, line: 438, type: !4830, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4905)
!4905 = !{!4906, !4907}
!4906 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4904, file: !523, line: 438, type: !583)
!4907 = !DILocalVariable(name: "length", scope: !4904, file: !523, line: 440, type: !73)
!4908 = !DILocation(line: 0, scope: !4904)
!4909 = !DILocation(line: 440, column: 5, scope: !4904)
!4910 = !DILocation(line: 440, column: 14, scope: !4904)
!4911 = !DILocation(line: 442, column: 10, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4904, file: !523, line: 442, column: 9)
!4913 = !DILocation(line: 442, column: 9, scope: !4904)
!4914 = !DILocation(line: 446, column: 30, scope: !4904)
!4915 = !DILocation(line: 446, column: 5, scope: !4904)
!4916 = !DILocation(line: 447, column: 12, scope: !4904)
!4917 = !DILocation(line: 447, column: 5, scope: !4904)
!4918 = !DILocation(line: 448, column: 1, scope: !4904)
!4919 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !523, file: !523, line: 451, type: !4830, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4920)
!4920 = !{!4921, !4922}
!4921 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4919, file: !523, line: 451, type: !583)
!4922 = !DILocalVariable(name: "length", scope: !4919, file: !523, line: 453, type: !73)
!4923 = !DILocation(line: 0, scope: !4919)
!4924 = !DILocation(line: 453, column: 5, scope: !4919)
!4925 = !DILocation(line: 453, column: 14, scope: !4919)
!4926 = !DILocation(line: 455, column: 10, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4919, file: !523, line: 455, column: 9)
!4928 = !DILocation(line: 455, column: 9, scope: !4919)
!4929 = !DILocation(line: 459, column: 30, scope: !4919)
!4930 = !DILocation(line: 459, column: 5, scope: !4919)
!4931 = !DILocation(line: 461, column: 12, scope: !4919)
!4932 = !DILocation(line: 461, column: 5, scope: !4919)
!4933 = !DILocation(line: 462, column: 1, scope: !4919)
!4934 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !523, file: !523, line: 543, type: !4935, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4937)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!4562, !583, !611, !68}
!4937 = !{!4938, !4939, !4940, !4941}
!4938 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4934, file: !523, line: 543, type: !583)
!4939 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4934, file: !523, line: 544, type: !611)
!4940 = !DILocalVariable(name: "user_data", arg: 3, scope: !4934, file: !523, line: 545, type: !68)
!4941 = !DILocalVariable(name: "ch", scope: !4934, file: !523, line: 547, type: !4773)
!4942 = !DILocation(line: 0, scope: !4934)
!4943 = !DILocation(line: 549, column: 10, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4934, file: !523, line: 549, column: 9)
!4945 = !DILocation(line: 549, column: 9, scope: !4934)
!4946 = !DILocation(line: 556, column: 53, scope: !4934)
!4947 = !DILocation(line: 556, column: 62, scope: !4934)
!4948 = !DILocation(line: 557, column: 53, scope: !4934)
!4949 = !DILocation(line: 557, column: 63, scope: !4934)
!4950 = !DILocation(line: 558, column: 37, scope: !4934)
!4951 = !DILocation(line: 558, column: 54, scope: !4934)
!4952 = !DILocation(line: 560, column: 39, scope: !4934)
!4953 = !DILocation(line: 561, column: 39, scope: !4934)
!4954 = !DILocation(line: 560, column: 5, scope: !4934)
!4955 = !DILocation(line: 562, column: 5, scope: !4934)
!4956 = !DILocation(line: 564, column: 44, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4934, file: !523, line: 564, column: 9)
!4958 = !DILocation(line: 564, column: 9, scope: !4934)
!4959 = !DILocation(line: 565, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !523, line: 564, column: 59)
!4961 = !DILocation(line: 566, column: 5, scope: !4960)
!4962 = !DILocation(line: 567, column: 9, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4957, file: !523, line: 566, column: 12)
!4964 = !DILocation(line: 569, column: 10, scope: !4934)
!4965 = !DILocation(line: 570, column: 5, scope: !4934)
!4966 = !DILocation(line: 578, column: 5, scope: !4934)
!4967 = !DILocation(line: 579, column: 1, scope: !4934)
!4968 = !DILocation(line: 0, scope: !579)
!4969 = !DILocation(line: 539, column: 12, scope: !579)
!4970 = !DILocation(line: 539, column: 5, scope: !579)
!4971 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !523, file: !523, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4972)
!4972 = !{!4973}
!4973 = !DILocalVariable(name: "callback_context", scope: !4974, file: !523, line: 514, type: !4976)
!4974 = distinct !DILexicalBlock(scope: !4975, file: !523, line: 513, column: 60)
!4975 = distinct !DILexicalBlock(scope: !4971, file: !523, line: 513, column: 9)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 32)
!4977 = !DILocation(line: 513, column: 42, scope: !4975)
!4978 = !DILocation(line: 513, column: 9, scope: !4971)
!4979 = !DILocation(line: 515, column: 39, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4974, file: !523, line: 515, column: 13)
!4981 = !DILocation(line: 515, column: 18, scope: !4980)
!4982 = !DILocation(line: 515, column: 13, scope: !4974)
!4983 = !DILocation(line: 516, column: 89, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4980, file: !523, line: 515, column: 49)
!4985 = !DILocation(line: 516, column: 13, scope: !4984)
!4986 = !DILocation(line: 517, column: 9, scope: !4984)
!4987 = !DILocation(line: 519, column: 32, scope: !4971)
!4988 = !DILocation(line: 519, column: 5, scope: !4971)
!4989 = !DILocation(line: 520, column: 1, scope: !4971)
!4990 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !523, file: !523, line: 523, type: !81, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4991)
!4991 = !{!4992}
!4992 = !DILocalVariable(name: "callback_context", scope: !4993, file: !523, line: 526, type: !4976)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !523, line: 525, column: 60)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !523, line: 525, column: 9)
!4995 = !DILocation(line: 525, column: 42, scope: !4994)
!4996 = !DILocation(line: 525, column: 9, scope: !4990)
!4997 = !DILocation(line: 527, column: 39, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4993, file: !523, line: 527, column: 13)
!4999 = !DILocation(line: 527, column: 18, scope: !4998)
!5000 = !DILocation(line: 527, column: 13, scope: !4993)
!5001 = !DILocation(line: 528, column: 89, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4998, file: !523, line: 527, column: 49)
!5003 = !DILocation(line: 528, column: 13, scope: !5002)
!5004 = !DILocation(line: 529, column: 9, scope: !5002)
!5005 = !DILocation(line: 531, column: 32, scope: !4990)
!5006 = !DILocation(line: 531, column: 5, scope: !4990)
!5007 = !DILocation(line: 532, column: 1, scope: !4990)
!5008 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !523, file: !523, line: 464, type: !5009, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5011)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !2965, !322}
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5018}
!5012 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5008, file: !523, line: 464, type: !2965)
!5013 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5008, file: !523, line: 464, type: !322)
!5014 = !DILocalVariable(name: "avail_size", scope: !5008, file: !523, line: 466, type: !73)
!5015 = !DILocalVariable(name: "avail_space", scope: !5008, file: !523, line: 466, type: !73)
!5016 = !DILocalVariable(name: "dma_config", scope: !5008, file: !523, line: 467, type: !5017)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 32)
!5018 = !DILocalVariable(name: "ch", scope: !5008, file: !523, line: 468, type: !4773)
!5019 = !DILocation(line: 0, scope: !5008)
!5020 = !DILocation(line: 466, column: 5, scope: !5008)
!5021 = !DILocation(line: 471, column: 9, scope: !5008)
!5022 = !DILocation(line: 472, column: 9, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !523, line: 471, column: 16)
!5024 = distinct !DILexicalBlock(scope: !5008, file: !523, line: 471, column: 9)
!5025 = !DILocation(line: 473, column: 13, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !523, line: 473, column: 13)
!5027 = !DILocation(line: 473, column: 39, scope: !5026)
!5028 = !DILocation(line: 473, column: 24, scope: !5026)
!5029 = !DILocation(line: 473, column: 13, scope: !5023)
!5030 = !DILocation(line: 478, column: 9, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5024, file: !523, line: 477, column: 12)
!5032 = !DILocation(line: 479, column: 13, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5031, file: !523, line: 479, column: 13)
!5034 = !DILocation(line: 479, column: 40, scope: !5033)
!5035 = !DILocation(line: 479, column: 77, scope: !5033)
!5036 = !DILocation(line: 479, column: 63, scope: !5033)
!5037 = !DILocation(line: 479, column: 25, scope: !5033)
!5038 = !DILocation(line: 479, column: 13, scope: !5031)
!5039 = !DILocation(line: 0, scope: !5024)
!5040 = !DILocation(line: 484, column: 1, scope: !5008)
!5041 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !523, file: !523, line: 486, type: !81, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5042)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "callback_context", scope: !5044, file: !523, line: 490, type: !4976)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !523, line: 489, column: 70)
!5045 = distinct !DILexicalBlock(scope: !5041, file: !523, line: 488, column: 9)
!5046 = !DILocation(line: 488, column: 43, scope: !5045)
!5047 = !DILocation(line: 488, column: 61, scope: !5045)
!5048 = !DILocation(line: 489, column: 14, scope: !5045)
!5049 = !DILocation(line: 489, column: 63, scope: !5045)
!5050 = !DILocation(line: 488, column: 9, scope: !5041)
!5051 = !DILocation(line: 491, column: 39, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5044, file: !523, line: 491, column: 13)
!5053 = !DILocation(line: 491, column: 18, scope: !5052)
!5054 = !DILocation(line: 491, column: 13, scope: !5044)
!5055 = !DILocation(line: 492, column: 88, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5052, file: !523, line: 491, column: 49)
!5057 = !DILocation(line: 492, column: 13, scope: !5056)
!5058 = !DILocation(line: 493, column: 9, scope: !5056)
!5059 = !DILocation(line: 495, column: 32, scope: !5041)
!5060 = !DILocation(line: 495, column: 5, scope: !5041)
!5061 = !DILocation(line: 496, column: 1, scope: !5041)
!5062 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !523, file: !523, line: 499, type: !81, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5063)
!5063 = !{!5064}
!5064 = !DILocalVariable(name: "callback_context", scope: !5065, file: !523, line: 503, type: !4976)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !523, line: 502, column: 70)
!5066 = distinct !DILexicalBlock(scope: !5062, file: !523, line: 501, column: 9)
!5067 = !DILocation(line: 501, column: 43, scope: !5066)
!5068 = !DILocation(line: 501, column: 61, scope: !5066)
!5069 = !DILocation(line: 502, column: 14, scope: !5066)
!5070 = !DILocation(line: 502, column: 63, scope: !5066)
!5071 = !DILocation(line: 501, column: 9, scope: !5062)
!5072 = !DILocation(line: 504, column: 39, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5065, file: !523, line: 504, column: 13)
!5074 = !DILocation(line: 504, column: 18, scope: !5073)
!5075 = !DILocation(line: 504, column: 13, scope: !5065)
!5076 = !DILocation(line: 505, column: 88, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5073, file: !523, line: 504, column: 49)
!5078 = !DILocation(line: 505, column: 13, scope: !5077)
!5079 = !DILocation(line: 506, column: 9, scope: !5077)
!5080 = !DILocation(line: 508, column: 32, scope: !5062)
!5081 = !DILocation(line: 508, column: 5, scope: !5062)
!5082 = !DILocation(line: 509, column: 1, scope: !5062)
!5083 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !523, file: !523, line: 582, type: !5084, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5086)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!4562, !583, !598}
!5086 = !{!5087, !5088}
!5087 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5083, file: !523, line: 582, type: !583)
!5088 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5083, file: !523, line: 582, type: !598)
!5089 = !DILocation(line: 0, scope: !5083)
!5090 = !DILocation(line: 584, column: 11, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5083, file: !523, line: 584, column: 9)
!5092 = !DILocation(line: 584, column: 46, scope: !5091)
!5093 = !DILocation(line: 588, column: 37, scope: !5083)
!5094 = !DILocation(line: 588, column: 50, scope: !5083)
!5095 = !DILocation(line: 588, column: 59, scope: !5083)
!5096 = !DILocation(line: 589, column: 12, scope: !5083)
!5097 = !DILocation(line: 589, column: 5, scope: !5083)
!5098 = !DILocation(line: 590, column: 1, scope: !5083)
!5099 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !523, file: !523, line: 608, type: !5100, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5104)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!4562, !583, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 32)
!5103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!5104 = !{!5105, !5106}
!5105 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5099, file: !523, line: 608, type: !583)
!5106 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5099, file: !523, line: 608, type: !5102)
!5107 = !DILocation(line: 0, scope: !5099)
!5108 = !DILocation(line: 610, column: 10, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5099, file: !523, line: 610, column: 9)
!5110 = !DILocation(line: 610, column: 9, scope: !5099)
!5111 = !DILocation(line: 614, column: 10, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5099, file: !523, line: 614, column: 9)
!5113 = !DILocation(line: 614, column: 9, scope: !5099)
!5114 = !DILocation(line: 618, column: 37, scope: !5099)
!5115 = !DILocation(line: 618, column: 56, scope: !5099)
!5116 = !DILocation(line: 619, column: 45, scope: !5099)
!5117 = !DILocation(line: 619, column: 12, scope: !5099)
!5118 = !DILocation(line: 620, column: 12, scope: !5099)
!5119 = !DILocation(line: 619, column: 5, scope: !5099)
!5120 = !DILocation(line: 621, column: 5, scope: !5099)
!5121 = !DILocation(line: 622, column: 5, scope: !5099)
!5122 = !DILocation(line: 623, column: 33, scope: !5099)
!5123 = !DILocation(line: 624, column: 50, scope: !5099)
!5124 = !DILocation(line: 625, column: 50, scope: !5099)
!5125 = !DILocation(line: 626, column: 50, scope: !5099)
!5126 = !DILocation(line: 627, column: 50, scope: !5099)
!5127 = !DILocation(line: 628, column: 33, scope: !5099)
!5128 = !DILocation(line: 623, column: 5, scope: !5099)
!5129 = !DILocation(line: 630, column: 50, scope: !5099)
!5130 = !DILocation(line: 631, column: 50, scope: !5099)
!5131 = !DILocation(line: 632, column: 50, scope: !5099)
!5132 = !DILocation(line: 629, column: 5, scope: !5099)
!5133 = !DILocation(line: 634, column: 5, scope: !5099)
!5134 = !DILocation(line: 635, column: 1, scope: !5099)
!5135 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !523, file: !523, line: 112, type: !5136, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5138)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{!322, !5102}
!5138 = !{!5139}
!5139 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5135, file: !523, line: 112, type: !5102)
!5140 = !DILocation(line: 0, scope: !5135)
!5141 = !DILocation(line: 114, column: 14, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5135, file: !523, line: 114, column: 9)
!5143 = !DILocation(line: 114, column: 9, scope: !5135)
!5144 = !DILocation(line: 117, column: 29, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5135, file: !523, line: 117, column: 9)
!5146 = !DILocation(line: 117, column: 14, scope: !5145)
!5147 = !DILocation(line: 117, column: 9, scope: !5135)
!5148 = !DILocation(line: 120, column: 21, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5135, file: !523, line: 120, column: 9)
!5150 = !DILocation(line: 120, column: 61, scope: !5149)
!5151 = !DILocation(line: 120, column: 47, scope: !5149)
!5152 = !DILocation(line: 120, column: 9, scope: !5135)
!5153 = !DILocation(line: 123, column: 61, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5135, file: !523, line: 123, column: 9)
!5155 = !DILocation(line: 123, column: 47, scope: !5154)
!5156 = !DILocation(line: 123, column: 9, scope: !5135)
!5157 = !DILocation(line: 126, column: 29, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5135, file: !523, line: 126, column: 9)
!5159 = !DILocation(line: 126, column: 14, scope: !5158)
!5160 = !DILocation(line: 126, column: 9, scope: !5135)
!5161 = !DILocation(line: 129, column: 21, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5135, file: !523, line: 129, column: 9)
!5163 = !DILocation(line: 129, column: 58, scope: !5162)
!5164 = !DILocation(line: 129, column: 44, scope: !5162)
!5165 = !DILocation(line: 129, column: 9, scope: !5135)
!5166 = !DILocation(line: 136, column: 1, scope: !5135)
!5167 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !523, file: !523, line: 182, type: !516, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5168)
!5168 = !{!5169, !5170}
!5169 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5167, file: !523, line: 182, type: !73)
!5170 = !DILocalVariable(name: "ticks_per_us", scope: !5167, file: !523, line: 184, type: !73)
!5171 = !DILocation(line: 0, scope: !5167)
!5172 = !DILocation(line: 186, column: 20, scope: !5167)
!5173 = !DILocation(line: 186, column: 39, scope: !5167)
!5174 = !DILocation(line: 188, column: 25, scope: !5167)
!5175 = !DILocation(line: 188, column: 5, scope: !5167)
!5176 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !523, file: !523, line: 637, type: !4704, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5177)
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5176, file: !523, line: 637, type: !583)
!5179 = !DILocalVariable(name: "int_no", scope: !5176, file: !523, line: 639, type: !2965)
!5180 = !DILocation(line: 0, scope: !5176)
!5181 = !DILocation(line: 641, column: 10, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5176, file: !523, line: 641, column: 9)
!5183 = !DILocation(line: 641, column: 9, scope: !5176)
!5184 = !DILocation(line: 645, column: 14, scope: !5176)
!5185 = !DILocation(line: 646, column: 5, scope: !5176)
!5186 = !DILocation(line: 648, column: 5, scope: !5176)
!5187 = !DILocation(line: 649, column: 1, scope: !5176)
!5188 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !523, file: !523, line: 651, type: !5189, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5191)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!4562, !583, !163, !163, !163}
!5191 = !{!5192, !5193, !5194, !5195, !5196}
!5192 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5188, file: !523, line: 651, type: !583)
!5193 = !DILocalVariable(name: "xon", arg: 2, scope: !5188, file: !523, line: 652, type: !163)
!5194 = !DILocalVariable(name: "xoff", arg: 3, scope: !5188, file: !523, line: 653, type: !163)
!5195 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5188, file: !523, line: 654, type: !163)
!5196 = !DILocalVariable(name: "int_no", scope: !5188, file: !523, line: 656, type: !2965)
!5197 = !DILocation(line: 0, scope: !5188)
!5198 = !DILocation(line: 658, column: 10, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5188, file: !523, line: 658, column: 9)
!5200 = !DILocation(line: 658, column: 9, scope: !5188)
!5201 = !DILocation(line: 662, column: 14, scope: !5188)
!5202 = !DILocation(line: 663, column: 5, scope: !5188)
!5203 = !DILocation(line: 665, column: 5, scope: !5188)
!5204 = !DILocation(line: 666, column: 1, scope: !5188)
!5205 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !523, file: !523, line: 668, type: !4704, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5206)
!5206 = !{!5207, !5208}
!5207 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5205, file: !523, line: 668, type: !583)
!5208 = !DILocalVariable(name: "int_no", scope: !5205, file: !523, line: 670, type: !2965)
!5209 = !DILocation(line: 0, scope: !5205)
!5210 = !DILocation(line: 672, column: 10, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5205, file: !523, line: 672, column: 9)
!5212 = !DILocation(line: 672, column: 9, scope: !5205)
!5213 = !DILocation(line: 676, column: 14, scope: !5205)
!5214 = !DILocation(line: 677, column: 5, scope: !5205)
!5215 = !DILocation(line: 679, column: 5, scope: !5205)
!5216 = !DILocation(line: 680, column: 1, scope: !5205)
!5217 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !523, file: !523, line: 683, type: !5218, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5220)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!4562, !583, !73}
!5220 = !{!5221, !5222}
!5221 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5217, file: !523, line: 683, type: !583)
!5222 = !DILocalVariable(name: "timeout", arg: 2, scope: !5217, file: !523, line: 683, type: !73)
!5223 = !DILocation(line: 0, scope: !5217)
!5224 = !DILocation(line: 685, column: 10, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5217, file: !523, line: 685, column: 9)
!5226 = !DILocation(line: 685, column: 9, scope: !5217)
!5227 = !DILocation(line: 689, column: 19, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5217, file: !523, line: 689, column: 9)
!5229 = !DILocation(line: 0, scope: !5228)
!5230 = !DILocation(line: 696, column: 1, scope: !5217)
!5231 = distinct !DISubprogram(name: "__io_putchar", scope: !1078, file: !1078, line: 62, type: !5232, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5234)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!7, !7}
!5234 = !{!5235}
!5235 = !DILocalVariable(name: "ch", arg: 1, scope: !5231, file: !1078, line: 62, type: !7)
!5236 = !DILocation(line: 0, scope: !5231)
!5237 = !DILocation(line: 69, column: 35, scope: !5231)
!5238 = !DILocation(line: 69, column: 5, scope: !5231)
!5239 = !DILocation(line: 70, column: 5, scope: !5231)
!5240 = distinct !DISubprogram(name: "main", scope: !1078, file: !1078, line: 172, type: !2941, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !2284)
!5241 = !DILocation(line: 175, column: 5, scope: !5240)
!5242 = !DILocation(line: 178, column: 5, scope: !5240)
!5243 = !DILocation(line: 319, column: 3, scope: !5244, inlinedAt: !5245)
!5244 = distinct !DISubprogram(name: "__enable_irq", scope: !2274, file: !2274, line: 317, type: !81, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !2284)
!5245 = distinct !DILocation(line: 181, column: 5, scope: !5240)
!5246 = !{i64 514396}
!5247 = !DILocation(line: 496, column: 3, scope: !5248, inlinedAt: !5249)
!5248 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2274, file: !2274, line: 494, type: !81, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !2284)
!5249 = distinct !DILocation(line: 182, column: 5, scope: !5240)
!5250 = !{i64 518671}
!5251 = !DILocation(line: 185, column: 5, scope: !5240)
!5252 = !DILocation(line: 187, column: 5, scope: !5240)
!5253 = !DILocation(line: 188, column: 5, scope: !5240)
!5254 = !DILocation(line: 191, column: 5, scope: !5240)
!5255 = !DILocation(line: 193, column: 5, scope: !5240)
!5256 = distinct !{!5256, !5255, !5257}
!5257 = !DILocation(line: 193, column: 14, scope: !5240)
!5258 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1078, file: !1078, line: 101, type: !81, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !2284)
!5259 = !DILocation(line: 103, column: 5, scope: !5258)
!5260 = !DILocation(line: 104, column: 1, scope: !5258)
!5261 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1078, file: !1078, line: 111, type: !81, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !2284)
!5262 = !DILocation(line: 114, column: 5, scope: !5261)
!5263 = !DILocation(line: 115, column: 1, scope: !5261)
!5264 = distinct !DISubprogram(name: "spim_send_data_polling_example", scope: !1078, file: !1078, line: 122, type: !81, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5265)
!5265 = !{!5266, !5268}
!5266 = !DILocalVariable(name: "send_data", scope: !5264, file: !1078, line: 124, type: !5267)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 16, elements: !397)
!5268 = !DILocalVariable(name: "spi_config", scope: !5264, file: !1078, line: 125, type: !5269)
!5269 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_config_t", file: !430, line: 580, baseType: !5270)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 574, size: 160, elements: !5271)
!5271 = !{!5272, !5273, !5274, !5275, !5276}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "clock_frequency", scope: !5270, file: !430, line: 575, baseType: !73, size: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "slave_port", scope: !5270, file: !430, line: 576, baseType: !503, size: 32, offset: 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "bit_order", scope: !5270, file: !430, line: 577, baseType: !505, size: 32, offset: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5270, file: !430, line: 578, baseType: !507, size: 32, offset: 96)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !5270, file: !430, line: 579, baseType: !509, size: 32, offset: 128)
!5277 = !DILocation(line: 124, column: 5, scope: !5264)
!5278 = !DILocation(line: 0, scope: !5264)
!5279 = !DILocation(line: 124, column: 13, scope: !5264)
!5280 = !DILocation(line: 125, column: 5, scope: !5264)
!5281 = !DILocation(line: 125, column: 29, scope: !5264)
!5282 = !DILocation(line: 127, column: 5, scope: !5264)
!5283 = !DILocation(line: 130, column: 5, scope: !5264)
!5284 = !DILocation(line: 131, column: 5, scope: !5264)
!5285 = !DILocation(line: 132, column: 5, scope: !5264)
!5286 = !DILocation(line: 133, column: 5, scope: !5264)
!5287 = !DILocation(line: 134, column: 5, scope: !5264)
!5288 = !DILocation(line: 135, column: 5, scope: !5264)
!5289 = !DILocation(line: 136, column: 5, scope: !5264)
!5290 = !DILocation(line: 137, column: 5, scope: !5264)
!5291 = !DILocation(line: 138, column: 5, scope: !5264)
!5292 = !DILocation(line: 141, column: 5, scope: !5264)
!5293 = !DILocation(line: 142, column: 16, scope: !5264)
!5294 = !DILocation(line: 142, column: 26, scope: !5264)
!5295 = !DILocation(line: 143, column: 16, scope: !5264)
!5296 = !DILocation(line: 143, column: 32, scope: !5264)
!5297 = !DILocation(line: 144, column: 16, scope: !5264)
!5298 = !DILocation(line: 144, column: 22, scope: !5264)
!5299 = !DILocation(line: 145, column: 16, scope: !5264)
!5300 = !DILocation(line: 145, column: 25, scope: !5264)
!5301 = !DILocation(line: 146, column: 16, scope: !5264)
!5302 = !DILocation(line: 146, column: 27, scope: !5264)
!5303 = !DILocation(line: 147, column: 37, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5264, file: !1078, line: 147, column: 9)
!5305 = !DILocation(line: 147, column: 34, scope: !5304)
!5306 = !DILocation(line: 147, column: 9, scope: !5264)
!5307 = !DILocation(line: 153, column: 37, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5264, file: !1078, line: 153, column: 9)
!5309 = !DILocation(line: 153, column: 34, scope: !5308)
!5310 = !DILocation(line: 153, column: 9, scope: !5264)
!5311 = !DILocation(line: 159, column: 5, scope: !5264)
!5312 = !DILocation(line: 160, column: 37, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5264, file: !1078, line: 160, column: 9)
!5314 = !DILocation(line: 160, column: 34, scope: !5313)
!5315 = !DILocation(line: 160, column: 9, scope: !5264)
!5316 = !DILocation(line: 164, column: 5, scope: !5264)
!5317 = !DILocation(line: 165, column: 5, scope: !5264)
!5318 = !DILocation(line: 166, column: 5, scope: !5264)
!5319 = !DILocation(line: 167, column: 5, scope: !5264)
!5320 = !DILocation(line: 170, column: 1, scope: !5264)
!5321 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1078, file: !1078, line: 78, type: !81, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5322)
!5322 = !{!5323}
!5323 = !DILocalVariable(name: "uart_config", scope: !5321, file: !1078, line: 80, type: !5324)
!5324 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !526, line: 378, baseType: !5325)
!5325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 373, size: 128, elements: !5326)
!5326 = !{!5327, !5328, !5329, !5330}
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5325, file: !526, line: 374, baseType: !598, size: 32)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5325, file: !526, line: 375, baseType: !600, size: 32, offset: 32)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5325, file: !526, line: 376, baseType: !602, size: 32, offset: 64)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5325, file: !526, line: 377, baseType: !604, size: 32, offset: 96)
!5331 = !DILocation(line: 80, column: 5, scope: !5321)
!5332 = !DILocation(line: 80, column: 23, scope: !5321)
!5333 = !DILocation(line: 83, column: 5, scope: !5321)
!5334 = !DILocation(line: 84, column: 5, scope: !5321)
!5335 = !DILocation(line: 85, column: 5, scope: !5321)
!5336 = !DILocation(line: 86, column: 5, scope: !5321)
!5337 = !DILocation(line: 89, column: 17, scope: !5321)
!5338 = !DILocation(line: 89, column: 26, scope: !5321)
!5339 = !DILocation(line: 90, column: 17, scope: !5321)
!5340 = !DILocation(line: 90, column: 29, scope: !5321)
!5341 = !DILocation(line: 91, column: 17, scope: !5321)
!5342 = !DILocation(line: 91, column: 26, scope: !5321)
!5343 = !DILocation(line: 92, column: 17, scope: !5321)
!5344 = !DILocation(line: 92, column: 24, scope: !5321)
!5345 = !DILocation(line: 93, column: 5, scope: !5321)
!5346 = !DILocation(line: 94, column: 1, scope: !5321)
!5347 = distinct !DISubprogram(name: "SysTick_Set", scope: !632, file: !632, line: 70, type: !516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !5348)
!5348 = !{!5349, !5350}
!5349 = !DILocalVariable(name: "ticks", arg: 1, scope: !5347, file: !632, line: 70, type: !73)
!5350 = !DILocalVariable(name: "val", scope: !5347, file: !632, line: 72, type: !73)
!5351 = !DILocation(line: 0, scope: !5347)
!5352 = !DILocation(line: 74, column: 16, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5347, file: !632, line: 74, column: 9)
!5354 = !DILocation(line: 74, column: 21, scope: !5353)
!5355 = !DILocation(line: 74, column: 9, scope: !5347)
!5356 = !DILocation(line: 78, column: 20, scope: !5347)
!5357 = !DILocation(line: 80, column: 19, scope: !5347)
!5358 = !DILocation(line: 83, column: 20, scope: !5347)
!5359 = !DILocation(line: 84, column: 20, scope: !5347)
!5360 = !DILocation(line: 86, column: 19, scope: !5347)
!5361 = !DILocation(line: 88, column: 5, scope: !5347)
!5362 = !DILocation(line: 89, column: 1, scope: !5347)
!5363 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !632, file: !632, line: 98, type: !81, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2284)
!5364 = !DILocation(line: 100, column: 28, scope: !5363)
!5365 = !DILocation(line: 101, column: 1, scope: !5363)
!5366 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !632, file: !632, line: 110, type: !2268, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2284)
!5367 = !DILocation(line: 112, column: 12, scope: !5366)
!5368 = !DILocation(line: 112, column: 5, scope: !5366)
!5369 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !632, file: !632, line: 122, type: !81, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2284)
!5370 = !DILocation(line: 124, column: 23, scope: !5369)
!5371 = !DILocation(line: 124, column: 21, scope: !5369)
!5372 = !DILocation(line: 125, column: 1, scope: !5369)
!5373 = distinct !DISubprogram(name: "SystemInit", scope: !632, file: !632, line: 136, type: !81, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2284)
!5374 = !DILocation(line: 140, column: 16, scope: !5373)
!5375 = !DILocation(line: 144, column: 16, scope: !5373)
!5376 = !DILocation(line: 147, column: 16, scope: !5373)
!5377 = !DILocation(line: 150, column: 1, scope: !5373)
!5378 = distinct !DISubprogram(name: "CachePreInit", scope: !632, file: !632, line: 158, type: !81, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2284)
!5379 = !DILocation(line: 161, column: 22, scope: !5378)
!5380 = !DILocation(line: 164, column: 21, scope: !5378)
!5381 = !DILocation(line: 167, column: 21, scope: !5378)
!5382 = !DILocation(line: 170, column: 29, scope: !5378)
!5383 = !DILocation(line: 171, column: 33, scope: !5378)
!5384 = !DILocation(line: 173, column: 28, scope: !5378)
!5385 = !DILocation(line: 178, column: 30, scope: !5378)
!5386 = !DILocation(line: 192, column: 1, scope: !5378)
!5387 = distinct !DISubprogram(name: "_close", scope: !692, file: !692, line: 11, type: !5232, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5388)
!5388 = !{!5389}
!5389 = !DILocalVariable(name: "file", arg: 1, scope: !5387, file: !692, line: 11, type: !7)
!5390 = !DILocation(line: 0, scope: !5387)
!5391 = !DILocation(line: 13, column: 5, scope: !5387)
!5392 = distinct !DISubprogram(name: "_fstat", scope: !692, file: !692, line: 16, type: !5393, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5441)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!7, !7, !5395}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 32)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5397, line: 27, size: 704, elements: !5398)
!5397 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5398 = !{!5399, !5402, !5405, !5408, !5411, !5414, !5417, !5418, !5421, !5431, !5432, !5433, !5436, !5439}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5396, file: !5397, line: 29, baseType: !5400, size: 16)
!5400 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !696, line: 161, baseType: !5401)
!5401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !738, line: 56, baseType: !713)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5396, file: !5397, line: 30, baseType: !5403, size: 16, offset: 16)
!5403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !696, line: 139, baseType: !5404)
!5404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !738, line: 75, baseType: !235)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5396, file: !5397, line: 31, baseType: !5406, size: 32, offset: 32)
!5406 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !696, line: 189, baseType: !5407)
!5407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !738, line: 90, baseType: !75)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5396, file: !5397, line: 32, baseType: !5409, size: 16, offset: 64)
!5409 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !696, line: 194, baseType: !5410)
!5410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !738, line: 209, baseType: !235)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5396, file: !5397, line: 33, baseType: !5412, size: 16, offset: 80)
!5412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !696, line: 165, baseType: !5413)
!5413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !738, line: 60, baseType: !235)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5396, file: !5397, line: 34, baseType: !5415, size: 16, offset: 96)
!5415 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !696, line: 169, baseType: !5416)
!5416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !738, line: 63, baseType: !235)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5396, file: !5397, line: 35, baseType: !5400, size: 16, offset: 112)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5396, file: !5397, line: 36, baseType: !5419, size: 32, offset: 128)
!5419 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !696, line: 157, baseType: !5420)
!5420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !738, line: 102, baseType: !756)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5396, file: !5397, line: 42, baseType: !5422, size: 128, offset: 192)
!5422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5423, line: 47, size: 128, elements: !5424)
!5423 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5424 = !{!5425, !5430}
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5422, file: !5423, line: 48, baseType: !5426, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5427, line: 42, baseType: !5428)
!5427 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !76, line: 200, baseType: !5429)
!5429 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5422, file: !5423, line: 49, baseType: !739, size: 32, offset: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5396, file: !5397, line: 43, baseType: !5422, size: 128, offset: 320)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5396, file: !5397, line: 44, baseType: !5422, size: 128, offset: 448)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5396, file: !5397, line: 45, baseType: !5434, size: 32, offset: 576)
!5434 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !696, line: 102, baseType: !5435)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !738, line: 34, baseType: !739)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5396, file: !5397, line: 46, baseType: !5437, size: 32, offset: 608)
!5437 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !696, line: 97, baseType: !5438)
!5438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !738, line: 30, baseType: !739)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5396, file: !5397, line: 48, baseType: !5440, size: 64, offset: 640)
!5440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 64, elements: !397)
!5441 = !{!5442, !5443}
!5442 = !DILocalVariable(name: "file", arg: 1, scope: !5392, file: !692, line: 16, type: !7)
!5443 = !DILocalVariable(name: "st", arg: 2, scope: !5392, file: !692, line: 16, type: !5395)
!5444 = !DILocation(line: 0, scope: !5392)
!5445 = !DILocation(line: 18, column: 5, scope: !5392)
!5446 = distinct !DISubprogram(name: "_isatty", scope: !692, file: !692, line: 22, type: !5232, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5447)
!5447 = !{!5448}
!5448 = !DILocalVariable(name: "file", arg: 1, scope: !5446, file: !692, line: 22, type: !7)
!5449 = !DILocation(line: 0, scope: !5446)
!5450 = !DILocation(line: 24, column: 5, scope: !5446)
!5451 = distinct !DISubprogram(name: "_lseek", scope: !692, file: !692, line: 27, type: !5452, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5454)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{!7, !7, !7, !7}
!5454 = !{!5455, !5456, !5457}
!5455 = !DILocalVariable(name: "file", arg: 1, scope: !5451, file: !692, line: 27, type: !7)
!5456 = !DILocalVariable(name: "ptr", arg: 2, scope: !5451, file: !692, line: 27, type: !7)
!5457 = !DILocalVariable(name: "dir", arg: 3, scope: !5451, file: !692, line: 27, type: !7)
!5458 = !DILocation(line: 0, scope: !5451)
!5459 = !DILocation(line: 29, column: 5, scope: !5451)
!5460 = distinct !DISubprogram(name: "_open", scope: !692, file: !692, line: 32, type: !5461, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5463)
!5461 = !DISubroutineType(types: !5462)
!5462 = !{!7, !731, !7, !7}
!5463 = !{!5464, !5465, !5466}
!5464 = !DILocalVariable(name: "name", arg: 1, scope: !5460, file: !692, line: 32, type: !731)
!5465 = !DILocalVariable(name: "flags", arg: 2, scope: !5460, file: !692, line: 32, type: !7)
!5466 = !DILocalVariable(name: "mode", arg: 3, scope: !5460, file: !692, line: 32, type: !7)
!5467 = !DILocation(line: 0, scope: !5460)
!5468 = !DILocation(line: 34, column: 5, scope: !5460)
!5469 = distinct !DISubprogram(name: "_read", scope: !692, file: !692, line: 37, type: !5470, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5472)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!7, !7, !697, !7}
!5472 = !{!5473, !5474, !5475}
!5473 = !DILocalVariable(name: "file", arg: 1, scope: !5469, file: !692, line: 37, type: !7)
!5474 = !DILocalVariable(name: "ptr", arg: 2, scope: !5469, file: !692, line: 37, type: !697)
!5475 = !DILocalVariable(name: "len", arg: 3, scope: !5469, file: !692, line: 37, type: !7)
!5476 = !DILocation(line: 0, scope: !5469)
!5477 = !DILocation(line: 39, column: 5, scope: !5469)
!5478 = distinct !DISubprogram(name: "_write", scope: !692, file: !692, line: 52, type: !5470, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5479)
!5479 = !{!5480, !5481, !5482, !5483}
!5480 = !DILocalVariable(name: "file", arg: 1, scope: !5478, file: !692, line: 52, type: !7)
!5481 = !DILocalVariable(name: "ptr", arg: 2, scope: !5478, file: !692, line: 52, type: !697)
!5482 = !DILocalVariable(name: "len", arg: 3, scope: !5478, file: !692, line: 52, type: !7)
!5483 = !DILocalVariable(name: "i", scope: !5478, file: !692, line: 54, type: !7)
!5484 = !DILocation(line: 0, scope: !5478)
!5485 = !DILocation(line: 56, column: 19, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5487, file: !692, line: 56, column: 5)
!5487 = distinct !DILexicalBlock(scope: !5478, file: !692, line: 56, column: 5)
!5488 = !DILocation(line: 56, column: 5, scope: !5487)
!5489 = !DILocation(line: 57, column: 26, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5486, file: !692, line: 56, column: 31)
!5491 = !DILocation(line: 57, column: 22, scope: !5490)
!5492 = !DILocation(line: 57, column: 9, scope: !5490)
!5493 = !DILocation(line: 56, column: 27, scope: !5486)
!5494 = distinct !{!5494, !5488, !5495}
!5495 = !DILocation(line: 58, column: 5, scope: !5487)
!5496 = !DILocation(line: 60, column: 5, scope: !5478)
!5497 = !DILocation(line: 0, scope: !691)
!5498 = !DILocation(line: 70, column: 5, scope: !691)
!5499 = !{i64 1109}
!5500 = !DILocation(line: 72, column: 14, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !691, file: !692, line: 72, column: 9)
!5502 = !DILocation(line: 72, column: 11, scope: !5501)
!5503 = !DILocation(line: 72, column: 9, scope: !691)
!5504 = !DILocation(line: 78, column: 32, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !691, file: !692, line: 78, column: 9)
!5506 = !DILocation(line: 78, column: 15, scope: !5505)
!5507 = !DILocation(line: 89, column: 1, scope: !691)
!5508 = !DILocation(line: 78, column: 9, scope: !691)
!5509 = distinct !DISubprogram(name: "_exit", scope: !692, file: !692, line: 91, type: !840, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5510)
!5510 = !{!5511}
!5511 = !DILocalVariable(name: "__status", arg: 1, scope: !5509, file: !692, line: 91, type: !7)
!5512 = !DILocation(line: 0, scope: !5509)
!5513 = !DILocation(line: 93, column: 5, scope: !5509)
!5514 = !DILocation(line: 94, column: 5, scope: !5509)
!5515 = distinct !{!5515, !5514, !5516}
!5516 = !DILocation(line: 96, column: 5, scope: !5509)
!5517 = distinct !DISubprogram(name: "_kill", scope: !692, file: !692, line: 100, type: !5518, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5520)
!5518 = !DISubroutineType(types: !5519)
!5519 = !{!7, !7, !7}
!5520 = !{!5521, !5522}
!5521 = !DILocalVariable(name: "pid", arg: 1, scope: !5517, file: !692, line: 100, type: !7)
!5522 = !DILocalVariable(name: "sig", arg: 2, scope: !5517, file: !692, line: 100, type: !7)
!5523 = !DILocation(line: 0, scope: !5517)
!5524 = !DILocation(line: 102, column: 5, scope: !5517)
!5525 = !DILocation(line: 103, column: 5, scope: !5517)
!5526 = distinct !DISubprogram(name: "_getpid", scope: !692, file: !692, line: 107, type: !5527, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !2284)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!5529}
!5529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !696, line: 174, baseType: !5530)
!5530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !738, line: 52, baseType: !7)
!5531 = !DILocation(line: 109, column: 5, scope: !5526)
!5532 = !DILocation(line: 110, column: 5, scope: !5526)
